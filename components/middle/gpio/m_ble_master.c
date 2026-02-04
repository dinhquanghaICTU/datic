#include "m_ble_master.h"
#include "../../middle/ble/ble_interface.h"  
#include "../../middle/wifi_if/wifi_if.h"
#include "../../middle/gpio/m_wifi.h"
#include "../../hardware/relay/relay.h"
#include <FreeRTOS.h>
#include <task.h>
#include <aos/kernel.h>
#include <string.h>
#include "blog.h"
#include <hosal_uart.h>
#include <bluetooth.h>
#include "hci_driver.h"
#include "conn.h"  
#include "../../middle/ble/ble_master.h"

extern unsigned char bleuart_connect_status;
extern struct bt_conn *pconn;

hosal_uart_dev_t ble_uart_dev = {
    .config = {
        .uart_id = 1,
        .tx_pin = 16, 
        .rx_pin = 7,  
        .cts_pin = 255,
        .rts_pin = 255,
        .baud_rate = 115200,
        .data_width = HOSAL_DATA_WIDTH_8BIT,
        .parity = HOSAL_NO_PARITY,
        .stop_bits = HOSAL_STOP_BITS_1,
        .mode = HOSAL_UART_MODE_POLL,
    },
};


void bleuart_printf(char *buf)
{
    if (buf != NULL) {
        hosal_uart_send(&ble_uart_dev, buf, strlen(buf));
    }
}

extern uint8_t axk_HalBleInit(void);
extern uint8_t axk_HalBleCentralStartScan(void);
extern uint8_t axk_HalBleCentralConnect(uint8_t *mac, uint8_t *uuid, uint8_t autoConnect);
extern int axk_HalBleCentralTTWrite(uint16_t len, uint8_t *data);

extern void axk_HalBleRegisterCallbacks(void);

static bool s_ble_master_running = false;
static bool s_ble_master_stack_started = false;
static ble_master_mode_t s_current_mode = BLE_MASTER_MODE_SCAN_ADV;
static TaskHandle_t s_ble_uart_task_handle = NULL;
static TaskHandle_t s_ble_scan_task_handle = NULL;


static uint8_t s_found_slave_mac[6] = {0};
static bool s_slave_mac_found = false;  


static app_ble_master_rx_cb_t s_rx_cb = NULL;
static app_ble_master_conn_cb_t s_conn_cb = NULL;
static app_ble_master_adv_state_cb_t s_adv_state_cb = NULL;


static uint8_t s_relay_current_state = 0;
static bool s_wifi_was_connected = false;
static bool s_ble_master_api_init = false;  

static bool adv_parse_cb(struct bt_data *data, void *user_data)
{
    int8_t rssi = *(int8_t *)user_data;
    bt_addr_le_t *addr = (bt_addr_le_t *)((uint8_t *)user_data + sizeof(int8_t));

    if (data->type != BT_DATA_MANUFACTURER_DATA) {
        return true; 
    }
    
    if (data->data_len < 19) {
        return true;
    }

    const uint8_t *p = data->data;
    
    uint16_t company_id = p[0] | (p[1] << 8);
    if (company_id != 0x0211) {
        return true;  
    }

    if (data->data_len < 13) {
        return true;
    }
    
    if (memcmp(&p[2], "addruntitle", 11) != 0) {
        return true;
    }
    
    if (data->data_len < 16) {
        return true;
    }
    
    if (memcmp(&p[13], "HNN", 3) != 0) {
        return true;
    }

    (void)p[16]; 
    uint8_t touchpad2 = p[17];  
    (void)p[18]; 
    bool is_same_device = s_slave_mac_found &&(memcmp(s_found_slave_mac, addr->a.val, 6) == 0);
    if (!s_slave_mac_found || !is_same_device) {      
        memcpy(s_found_slave_mac, addr->a.val, 6);
        s_slave_mac_found = true;
        s_relay_current_state = touchpad2;          
        uint8_t mac_display[6];
        memcpy(mac_display, addr->a.val, 6);
        ble_reverse_byte(mac_display, 6);
        // printf("[BLE_MASTER] [FOUND] Target device! MAC: %02X:%02X:%02X:%02X:%02X:%02X, RSSI=%d, touchpad2(state)=%d\r\n",mac_display[0], mac_display[1], mac_display[2],mac_display[3], mac_display[4], mac_display[5],rssi, touchpad2);
        // fflush(stdout);     
        if (touchpad2 == 1) {
            relay_on();
        } else {
            relay_off();
        }
        
        return false;  
    }
    
    if (touchpad2 != s_relay_current_state) {
        // printf("[BLE_MASTER] [STATE CHANGE] touchpad2: %d -> %d, ", s_relay_current_state, touchpad2);
        if (touchpad2 == 1) {
            relay_on();
            printf("RELAY ON\r\n");
        } else {
            relay_off();
            printf("RELAY OFF\r\n");
        }
        fflush(stdout);
        s_relay_current_state = touchpad2;
        if (s_adv_state_cb) {
            s_adv_state_cb(touchpad2, rssi);
        }
    }
    
    return false; 
}


static void scan_adv_device_found(const bt_addr_le_t *addr,int8_t rssi,uint8_t type,struct net_buf_simple *ad)
{
    struct {
        int8_t rssi;
        bt_addr_le_t addr;
    } user_data;
    
    user_data.rssi = rssi;
    memcpy(&user_data.addr, addr, sizeof(bt_addr_le_t));
    
    bt_data_parse(ad, adv_parse_cb, &user_data);
}


static void ble_master_scan_adv_task(void *params)
{
    struct bt_le_scan_param scan_param = {
        .type       = BT_LE_SCAN_TYPE_PASSIVE,
        .filter_dup = BT_LE_SCAN_FILTER_DUPLICATE,
        .interval   = 0x400,  
        .window     = 0x30,   
    };
    
    int ret = bt_le_scan_start(&scan_param, scan_adv_device_found);
    if (ret) {
        vTaskDelete(NULL);
        return;
    }
    
    while (s_ble_master_running && s_current_mode == BLE_MASTER_MODE_SCAN_ADV) {
        
        vTaskDelay(pdMS_TO_TICKS(2000));
    }
    
    bt_le_scan_stop();
    
    vTaskDelete(NULL);
}

static void ble_master_uart_task(void *params)
{
    char data[250];
    int ret, rep;
    
    blog_info("[BLE_MASTER] UART task started (CONNECT mode)\r\n");
    
    while (s_ble_master_running && s_current_mode == BLE_MASTER_MODE_CONNECT) {
        ret = hosal_uart_receive(&ble_uart_dev, data, sizeof(data));
        
        if (ret > 0) {
            if (bleuart_connect_status == 1) {
                rep = axk_HalBleCentralTTWrite(ret, (uint8_t *)data);
                if (rep < 0) {
                    blog_error("[BLE_MASTER] Send failed: %d\r\n", rep);
                }
            } else {
                blog_warn("[BLE_MASTER] Not connected\r\n");
            }
        }
        
        vTaskDelay(pdMS_TO_TICKS(100));
    }
    
    blog_info("[BLE_MASTER] UART task stopped\r\n");
    vTaskDelete(NULL);
}

int app_ble_master_init(void)
{
    memset(s_found_slave_mac, 0, 6);
    s_slave_mac_found = false;

    return 0;
}

int app_ble_master_start(void)
{
    if (s_ble_master_running) {
        return 0;
    }
    s_wifi_was_connected = wifi_if_is_connected();
    
    if (!s_ble_master_stack_started) {
        ble_stack_start();
        
        int wait_count = 0;
        while (!ble_is_enabled() && wait_count < 150) {
            aos_msleep(100);
            wait_count++;
        }
        
        if (!ble_is_enabled()) {
            return -1;
        }
        
        s_ble_master_stack_started = true;
    }

    s_slave_mac_found = false;
    memset(s_found_slave_mac, 0, 6);
    s_current_mode = BLE_MASTER_MODE_SCAN_ADV;
    s_ble_master_running = true;
    
    xTaskCreate(ble_master_scan_adv_task,"ble_scan_adv",1024,NULL,10,&s_ble_scan_task_handle);
    return 0;
}

int app_ble_master_connect(const uint8_t *slave_mac)
{
    if (!s_ble_master_running) {
        blog_error("[BLE_MASTER] Not running\r\n");
        return -1;
    }
    
    if (s_current_mode == BLE_MASTER_MODE_CONNECT) {
        return 0;
    }
    
    
    if (slave_mac) {
        memcpy(s_found_slave_mac, slave_mac, 6);
        s_slave_mac_found = true;
    }
    
    if (!s_slave_mac_found) {
        return -1;
    }
    
    uint8_t mac_display[6];
    memcpy(mac_display, s_found_slave_mac, 6);
    ble_reverse_byte(mac_display, 6);
    
    if (s_ble_scan_task_handle) {
        vTaskDelete(s_ble_scan_task_handle);
        s_ble_scan_task_handle = NULL;
    }
    
    bt_le_scan_stop();
    aos_msleep(500);
    
    s_current_mode = BLE_MASTER_MODE_CONNECT;
    
    if (!s_ble_master_api_init) {
        extern int ble_master_init(void);
        int ret = ble_master_init();
        if (ret == 0) {
            s_ble_master_api_init = true;
        }
        
        extern void axk_HalBleRegisterCallbacks(void);
        axk_HalBleRegisterCallbacks();
    }
    
    uint8_t mac_reversed[6];
    memcpy(mac_reversed, s_found_slave_mac, 6);
    ble_reverse_byte(mac_reversed, 6);
    
    uint8_t ret = axk_HalBleCentralConnect(mac_reversed, NULL, BLE_MASTER_AUTOCONN_DISABLE);
    
    if (ret != 0 && ret != 1) {
        printf("[BLE_MASTER] Connection failed, ret=%d\r\n", ret);
        fflush(stdout);
        
        s_current_mode = BLE_MASTER_MODE_SCAN_ADV;
        xTaskCreate(ble_master_scan_adv_task,"ble_scan_adv",1024,NULL,14,&s_ble_scan_task_handle);
    }
    xTaskCreate(ble_master_uart_task,"ble_uart",1024,NULL,15,&s_ble_uart_task_handle);
    return 0;
}

int app_ble_master_disconnect(void)
{
    if (!s_ble_master_running) {
        return 0;
    }
    
    if (s_current_mode != BLE_MASTER_MODE_CONNECT) {
        blog_warn("[BLE_MASTER] Not in CONNECT mode\r\n");
        return 0;
    }
    
    blog_info("[BLE_MASTER] Disconnecting and switching to SCAN_ADV mode...\r\n");
    
    
    if (pconn != NULL) {
        bt_conn_disconnect(pconn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
        aos_msleep(500);
    }
    
    
    bt_le_scan_stop();
    
    
    ble_master_deinit();
    
    
    if (s_ble_uart_task_handle) {
        vTaskDelete(s_ble_uart_task_handle);
        s_ble_uart_task_handle = NULL;
    }
    
    
    s_current_mode = BLE_MASTER_MODE_SCAN_ADV;
    
    
    xTaskCreate(
        ble_master_scan_adv_task,
        "ble_scan_adv",
        1024,
        NULL,
        10,  
        &s_ble_scan_task_handle
    );
    
    blog_info("[BLE_MASTER] Switched back to SCAN_ADV mode (MAC still saved)\r\n");
    return 0;
}

int app_ble_master_stop(void)
{
    if (!s_ble_master_running) {
        return 0;
    }
    
    blog_info("[BLE_MASTER] Stopping...\r\n");
    
    
    if (s_current_mode == BLE_MASTER_MODE_CONNECT) {
        if (pconn != NULL) {
            bt_conn_disconnect(pconn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
        }
        bt_le_scan_stop();
        ble_master_deinit();
    }
    
    
    if (s_ble_uart_task_handle) {
        vTaskDelete(s_ble_uart_task_handle);
    }
    if (s_ble_scan_task_handle) {
        vTaskDelete(s_ble_scan_task_handle);
    }
    
    
    apps_ble_stop();
    aos_msleep(1000);
    
    
    if (s_wifi_was_connected) {
        wifi_if_enable();
        aos_msleep(2000);
    }
    
    s_ble_master_running = false;
    s_ble_master_stack_started = false;
    s_current_mode = BLE_MASTER_MODE_SCAN_ADV;
    
    
    blog_info("[BLE_MASTER] Stopped\r\n");
    return 0;
}

bool app_ble_master_is_running(void)
{
    return s_ble_master_running;
}

ble_master_mode_t app_ble_master_get_mode(void)
{
    return s_current_mode;
}

bool app_ble_master_is_connected(void)
{
    return (s_current_mode == BLE_MASTER_MODE_CONNECT && 
            bleuart_connect_status == 1);
}


bool app_ble_master_get_found_mac(uint8_t *mac_out)
{
    if (!s_slave_mac_found || mac_out == NULL) {
        return false;
    }
    memcpy(mac_out, s_found_slave_mac, 6);
    return true;
}

int app_ble_master_send_data(const uint8_t *data, uint16_t len)
{
    if (s_current_mode != BLE_MASTER_MODE_CONNECT) {
        blog_error("[BLE_MASTER] Not in CONNECT mode\r\n");
        return -1;
    }
    
    if (!app_ble_master_is_connected()) {
        blog_error("[BLE_MASTER] Not connected\r\n");
        return -1;
    }
    
    return axk_HalBleCentralTTWrite(len, (uint8_t *)data);
}

void app_ble_master_set_rx_cb(app_ble_master_rx_cb_t cb)
{
    s_rx_cb = cb;
}

void app_ble_master_set_conn_cb(app_ble_master_conn_cb_t cb)
{
    s_conn_cb = cb;
}

void app_ble_master_set_adv_state_cb(app_ble_master_adv_state_cb_t cb)
{
    s_adv_state_cb = cb;
}