#include "ble_master.h"

#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include "event_groups.h"
#include <semphr.h>
#include <bl_sys.h>

#include "bluetooth.h"
#include "hci_driver.h"
#include "hci_core.h"
#include "ble_lib_api.h"
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"

#include "user_config.h"
#include "event_driven.h"
#include "debugger.h"
#include "block_manager.h"

extern uint8_t axk_HalBleInit();
extern uint8_t axk_HalBleCentralDisconnect();
extern uint8_t axk_HalBleCentralStartScan(void);
extern uint8_t axk_HalBleCentralConnect(uint8_t *mac, uint8_t *uuid, uint8_t autoConnect);
extern int axk_HalBleCentralTTWrite(uint16_t len, uint8_t *data);

uint8_t master_stop_req = 0;

static ble_scan_info_t master_scan_tbl[MASTER_SCAN_MAX];
static int master_current_scan;
static uint8_t scan_le_addr[6];

static uint16_t target_device_id = 0x0002;

static TaskHandle_t master_task_handle;

static uint8_t slave_mac[6] = {0x88, 0x88, 0x88, 0x88, 0x88, 0x88};

static bool scan_data_cb(struct bt_data *data, void *user_data)
{
    ble_scan_info_t *info = user_data;
    u8_t len;

    switch (data->type) {
        case BT_DATA_NAME_SHORTENED:
            return true;

        case BT_DATA_NAME_COMPLETE:
            len = (data->data_len > NAME_LEN - 1)?(NAME_LEN - 1):(data->data_len);
            memcpy(info->name, data->data, len);
            return true;

        case BT_DATA_MANUFACTURER_DATA:
            if (data->data_len < 8) return true;

            uint16_t company_id = data->data[0] | (data->data[1] << 8);
            if (company_id != ADV_COMPANY_ID) return true;

            uint8_t magic   = data->data[2];
            uint8_t product = data->data[3];
            uint8_t msg     = data->data[4];
            uint16_t device_id = data->data[5] | (data->data[6] << 8);
            uint8_t state   = data->data[7];

            if (magic == ADV_MAGIC &&
                product == ADV_PRODUCT_RELAY &&
                msg == ADV_MSG_RELAY_STATE &&
                device_id == target_device_id) {

                info->is_target = true;
                return false; 
            }
            return true;
        default:
            return true;
    }
}

static void scan_device_found(const bt_addr_le_t *addr, s8_t rssi, u8_t evtype,
             struct net_buf_simple *buf)
{
    if (master_current_scan >= MASTER_SCAN_MAX) 
    {
        return ;
    }

    /* if the address recorded last is different from this */
    if (memcmp(scan_le_addr, addr->a.val, 6) != 0)
    {
        if (*(uint32_t *)scan_le_addr != 0) 
        {
            if (*(uint32_t *)scan_le_addr != 0) 
            {
                memcpy(master_scan_tbl[master_current_scan].mac, scan_le_addr, 6);
                master_current_scan++;
            }
        }
        
        /* record newer addr */
        memcpy(scan_le_addr, addr->a.val, 6);
    }

    /* parse ble name */
    bt_data_parse(buf, scan_data_cb, &master_scan_tbl[master_current_scan]);
    /* record rssi */
    master_scan_tbl[master_current_scan].rssi = rssi;
}

int ble_master_scan(uint32_t scan_time) {
    int ret;
    struct bt_le_scan_param scan_param;
    char scan_data[250];
    scan_param.type = BT_LE_SCAN_TYPE_ACTIVE;
    scan_param.filter_dup = BT_LE_SCAN_FILTER_DUPLICATE;
    scan_param.interval = 320;
    scan_param.window = 48;

    master_current_scan = 0;
    memset(scan_le_addr, 0, sizeof(scan_le_addr));
    memset(master_scan_tbl, 0, sizeof(master_scan_tbl));

    ret = bt_le_scan_start(&scan_param, scan_device_found);
    if (ret != 0)
    {
        debug_printf("[BLE][SCAN] ret:%d \r\n", ret);
        return -1;
    }

    vTaskDelay(scan_time / portTICK_PERIOD_MS);
    bt_le_scan_stop();

    for (int i = 0; i < master_current_scan; i++) {

        if ((master_scan_tbl[i].is_target))
        {
            ble_reverse_byte(master_scan_tbl[i].mac, 6);
            sprintf(scan_data,"mac:%02X%02X%02X%02X%02X%02X rssi:%i name: %s\r\n", 
                master_scan_tbl[i].mac[0],master_scan_tbl[i].mac[1],master_scan_tbl[i].mac[2],
                master_scan_tbl[i].mac[3],master_scan_tbl[i].mac[4],master_scan_tbl[i].mac[5],
                master_scan_tbl[i].rssi, master_scan_tbl[i].name);
            debug_printf(scan_data);
            debug_printf("DAY LA THIET BI TARGET HOP LE");
            axk_HalBleCentralConnect(master_scan_tbl[i].mac, NULL, BLE_MASTER_AUTOCONN_ENABLE);
            break;
        }
    }

    return 0;
}

int find_result;
static uint8_t *find_mac;
static uint16_t *find_uuid;
static bt_addr_le_t *find_target_addr;
static StaticSemaphore_t sem_found_buffer;
static SemaphoreHandle_t sem_found;
static bool find_data_cb(struct bt_data *data, void *user_data)
{
    u8_t len;
    uint16_t *uuid = user_data;

    switch (data->type) {
        case BT_DATA_UUID16_SOME:
        case BT_DATA_UUID16_ALL:
            len = data->data_len;
            if (len % 2 != 0) {
                /* invalid adv data, discard */
                debug_printf("[BLE] find invalid adv\r\n");
                return false;
            }
            uint16_t *p_uuid = (uint16_t *)(data->data);

            while (len >= 2) {
                if (*uuid == *find_uuid) {
                    *uuid = find_uuid;
                    return false;
                }
                p_uuid++;
                len -= 2;
            }
        default:
            return true;
    }
}

static void find_device_found(const bt_addr_le_t *addr, s8_t rssi, u8_t evtype,
             struct net_buf_simple *buf)
{
    uint8_t mac[6];
    uint16_t uuid = 0;

    if (find_uuid != NULL) {
        /* parse uuid */
        bt_data_parse(buf, find_data_cb, &uuid);
    }

    memcpy(mac, addr->a.val, 6);
    ble_reverse_byte(mac, 6);
    if (find_mac != NULL && memcmp(find_mac, mac, 6) != 0) {
        return ;
    }

    if (find_uuid != NULL && *find_uuid != uuid) {
        return ;
    }
    /* found target */
    debug_printf("[BLE] found target\r\n");
    memcpy(find_target_addr, addr, sizeof(bt_addr_le_t));
    find_result = 1;
    xSemaphoreGive(sem_found);
}

int ble_master_find_target(uint32_t scan_time, uint8_t *mac, uint16_t *uuid, bt_addr_le_t *target_addr)
{
    int ret;
    struct bt_le_scan_param scan_param;

    if (target_addr == NULL) {
        return -1;
    }

    if (mac == NULL && uuid == NULL) {
        return -1;
    }

    sem_found = xSemaphoreCreateBinaryStatic(&sem_found_buffer);
    if (sem_found == NULL )
    {
        debug_printf("[BLE] create sem faxkl \r\n");
        return -1;
    }

    find_mac = mac;
    find_uuid = uuid;
    find_target_addr = target_addr;

    scan_param.type = BT_LE_SCAN_TYPE_ACTIVE;
    scan_param.filter_dup = BT_LE_SCAN_FILTER_DUPLICATE;
    scan_param.interval = 320;
    scan_param.window = 120;

    find_result = 0;
    ret = bt_le_scan_start(&scan_param, find_device_found);
    if (ret != 0)
    {
        debug_printf("[BLE][FIND] ret:%d \r\n", ret);
        return -1;
    }
    xSemaphoreTake(sem_found, scan_time / portTICK_PERIOD_MS);

    bt_le_scan_stop();               

    vSemaphoreDelete(sem_found);     
    sem_found = NULL;

    if (find_result == 0) {
        debug_printf("[BLE] not found target\r\n");
        return -1;
    }
    return 0;
}



void ble_user_init(void)
{
  axk_HalBleInit();
  axk_HalBleCentralStartScan();                                          
}

static void proc_master(void *pvParameters)
{
    (void)pvParameters;
    ble_user_init();
    eventq_post(EVT_MASTER_STARTED, 0);
    xEventGroupSetBits(g_sys_eg_state, ST_BLE_RUNNING);
    while (!master_stop_req)
    {
        vTaskDelay(pdMS_TO_TICKS(10));
    }

    bt_le_scan_stop();
    axk_HalBleCentralDisconnect();
    axk_HalBleCentralConnect(NULL, NULL, 0);

    ble_master_deinit();
    bt_disable();

    master_task_handle = NULL;
    eventq_post(EVT_MASTER_STOPPED, 0);
    vTaskDelete(NULL);
    xEventGroupClearBits(g_sys_eg_state, ST_BLE_RUNNING);
}


void ble_start_master(void)
{
    EventBits_t bits = xEventGroupGetBits(g_sys_eg_state);
    if (bits & ST_BLE_RUNNING)
    {
        debug_printf("BLE RUNNING, IGNORE MASTER");
        return;
    }
    master_stop_req = 0;  
    debug_printf("MY BLE MASTER\r\n");
    bl_sys_init();
    xTaskCreate(proc_master, "proc_master", 1024, NULL, 15, &master_task_handle);
}

void ble_master_stop(void)
{
    if (master_task_handle == NULL) return;
    master_stop_req = 1;
}