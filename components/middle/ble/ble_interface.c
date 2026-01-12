#include "ble_interface.h"

#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <semphr.h>
#include <aos/kernel.h>



#include "hci_core.h"
#include "hci_driver.h"
#include "ble_lib_api.h"
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"


#define BT_ADDR_LE_STR_LEN  30


#define WIFI_CONFIG_SERVICE_UUID BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x55535343, 0xfe7d, 0x4ae5, 0x8fa9, 0x9fafd205e455))

#define WIFI_CONFIG_CHAR_SSID_UUID BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x49535343, 0x8841, 0x43f4, 0xa8d4, 0xecbe34729bb3))

#define WIFI_CONFIG_CHAR_PASS_UUID BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x49535343, 0x1e4d, 0x4bd9, 0xba61, 0x23c647249616))

#define WIFI_SSID_MAX_LEN 32
#define WIFI_PASSWORD_MAX_LEN 64

static struct bt_conn *conn_cur;
ble_gatt_conn_cb_t conn_cb;
ble_gatt_conn_cb_t disconn_cb;
ble_config_done_cb_t config_done_cb = NULL;


static char temp_ssid[WIFI_SSID_MAX_LEN + 1] = {0};
static char temp_password[WIFI_PASSWORD_MAX_LEN + 1] = {0};
static bool has_ssid = false;
static bool has_password = false;


static bool s_ble_enabled = false;
static bool s_ble_service_registered = false;

#define ble_slave_name "HNN_intern"

static const struct bt_data salve_adv[] = {
    BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    BT_DATA(BT_DATA_NAME_COMPLETE, ble_slave_name, sizeof(ble_slave_name) - 1),
};

static ssize_t ble_ssid_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                                   const void *buf, u16_t len, u16_t offset, u8_t flags);
static ssize_t ble_password_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                                      const void *buf, u16_t len, u16_t offset, u8_t flags);
static void ble_ccc_cfg_changed(const struct bt_gatt_attr *attr, u16_t value);
static void check_and_save_config(void);

static struct bt_gatt_attr wifi_config_server[] = {
    BT_GATT_PRIMARY_SERVICE(WIFI_CONFIG_SERVICE_UUID),
    BT_GATT_CHARACTERISTIC(WIFI_CONFIG_CHAR_SSID_UUID,
                           BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                           BT_GATT_PERM_WRITE, NULL, ble_ssid_write_val, NULL),
    BT_GATT_CHARACTERISTIC(WIFI_CONFIG_CHAR_PASS_UUID,
                           BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                           BT_GATT_PERM_WRITE, NULL, ble_password_write_val, NULL),
};

static struct bt_gatt_service wifi_config_service = BT_GATT_SERVICE(wifi_config_server);

static ssize_t ble_ssid_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                                   const void *buf, u16_t len, u16_t offset, u8_t flags)
{
    (void)conn;
    (void)attr;
    (void)flags;



    bt_addr_le_t *test_mac;

    char addr [BT_ADDR_LE_STR_LEN];
    test_mac = bt_conn_get_dst(conn);
    if (!test_mac)
    {
        printf(" ===============================================================no seach Mac==================== \r\n"); 
        return 0;
    }

    bt_addr_le_to_str(test_mac, addr, sizeof(addr));
    printf("==========================================Mac : %s==============================\r\n",addr );    


    if (len == 0) {
        return BT_GATT_ERR(BT_ATT_ERR_INVALID_ATTRIBUTE_LEN);
    }

    
    if (offset == 0) {
        memset(temp_ssid, 0, sizeof(temp_ssid));
        has_ssid = false;
    }

    
    if (offset + len > WIFI_SSID_MAX_LEN) {
        printf("[BLE] Invalid SSID length: offset=%d, len=%d, total=%d\r\n", offset, len, offset + len);
        return BT_GATT_ERR(BT_ATT_ERR_INVALID_ATTRIBUTE_LEN);
    }

    
    memcpy(temp_ssid + offset, buf, len);
    temp_ssid[offset + len] = '\0';  
    has_ssid = true;

    printf("[BLE] Received SSID chunk: offset=%d, len=%d, total=%s\r\n", offset, len, temp_ssid);

    
    
    check_and_save_config();

    return len;
}

static ssize_t ble_password_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                                      const void *buf, u16_t len, u16_t offset, u8_t flags)
{
    (void)conn;
    (void)attr;
    (void)flags;

    if (len == 0) {
        return BT_GATT_ERR(BT_ATT_ERR_INVALID_ATTRIBUTE_LEN);
    }

    
    if (offset == 0) {
        memset(temp_password, 0, sizeof(temp_password));
        has_password = false;
    }

    if (offset + len > WIFI_PASSWORD_MAX_LEN) {
        printf("[BLE] Invalid password length: offset=%d, len=%d, total=%d\r\n", offset, len, offset + len);
        return BT_GATT_ERR(BT_ATT_ERR_INVALID_ATTRIBUTE_LEN);
    }

    
    memcpy(temp_password + offset, buf, len);
    temp_password[offset + len] = '\0';  
    has_password = true;

    printf("[BLE] Received password chunk: offset=%d, len=%d, total=%s\r\n", offset, len, temp_password);

    
    check_and_save_config();

    return len;
}

static void check_and_save_config(void)
{
    if (has_ssid && has_password && config_done_cb) {
        printf("[BLE] Both SSID and password received, saving config...\r\n");
        
        
        config_done_cb(temp_ssid, temp_password);
        
        
        memset(temp_ssid, 0, sizeof(temp_ssid));
        memset(temp_password, 0, sizeof(temp_password));
        has_ssid = false;
        has_password = false;
    }
}

static void ble_ccc_cfg_changed(const struct bt_gatt_attr *attr, u16_t value)
{
    const char *str = "disabled";

    if (value == BT_GATT_CCC_NOTIFY) {
        str = "notify";
    } else if (value == BT_GATT_CCC_INDICATE) {
        str = "indicate";
    }

    printf("[BLE] ccc change %s\r\n", str);
}

static void _connected(struct bt_conn *conn, u8_t err)
{
    printf("[BLE] _connected callback called, err=%d\r\n", err);

        
}

static void _disconnected(struct bt_conn *conn, u8_t reason)
{
    
    printf("[BLE] _disconnected callback called, reason=%d\r\n", reason);
    
    
    conn_cur = NULL;
}

static bool _le_param_req(struct bt_conn *conn, struct bt_le_conn_param *param)
{
    
    return true;
}

// static void _le_param_updated(struct bt_conn *conn, u16_t interval,
//                               u16_t latency, u16_t timeout)
// {
    
// }

// static void _le_phy_updated(struct bt_conn *conn, u8_t tx_phy, u8_t rx_phy)
// {
    
// }

// static struct bt_conn_cb conn_callbacks = {
//     .connected = _connected,
//     .disconnected = _disconnected,
//     .le_param_req = _le_param_req,
//     .le_param_updated = _le_param_updated,
//     .le_phy_updated = _le_phy_updated,
// };

static void ble_disconnect_all(struct bt_conn *conn, void *data)
{
    if (conn->state == BT_CONN_CONNECTED) {
        printf("[BLE] disconn id:%d\r\n", conn->id);
        bt_conn_disconnect(conn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
    }
}

static void _ble_mtu_changed_cb(struct bt_conn *conn, int mtu)
{
    
    if (conn) {
        printf("[BLE] mtu updated:%d\r\n", mtu);
    }
}

struct bt_conn *ble_get_conn_cur(void)
{
    return conn_cur;
}

int ble_regist_conn(ble_gatt_conn_cb_t cb)
{
    conn_cb = cb;
    return 0;
}

int ble_regist_disconn(ble_gatt_conn_cb_t cb)
{
    disconn_cb = cb;
    return 0;
}

// static int ble_salve_conn_cb(struct bt_conn *conn, uint8_t code)
// {
//     struct bt_le_conn_param param = {
//         .interval_min = 24,
//         .interval_max = 24,
//         .latency = 0,
//         .timeout = 600,
//     };
//     bt_conn_le_param_update(conn, &param);
//     return 0;



// }

static int ble_salve_disconn_cb(struct bt_conn *conn, uint8_t code)
{
    if (set_adv_enable(true)) {
        printf("[BLE] Restart adv fail.\r\n");
    } else {
        printf("[BLE] Restart adv success.\r\n");
    }
    return 0;
}

int ble_salve_adv()
{
    int err = bt_le_adv_start(BT_LE_ADV_CONN, salve_adv, ARRAY_SIZE(salve_adv), NULL, 0);
    if (err) {
        printf("[BLE] adv fail(err %d)\r\n", err);
        return -1;
    }
    return 0;
}

int ble_adv_start(void)
{
    if (!s_ble_enabled) {
        return -1;
    }
    
    bt_le_adv_stop();
    aos_msleep(100);
    
    int err = bt_le_adv_start(BT_LE_ADV_CONN, salve_adv, ARRAY_SIZE(salve_adv), NULL, 0);
    if (err) {
        return -1;
    }
    return 0;
}

int ble_adv_stop(void)
{
    bt_le_adv_stop();
    return 0;
}

static void bt_enable_cb(int err)
{
    printf("[BLE] bt_enable_cb called with err=%d\r\n", err);
    if (!err) {
        s_ble_enabled = true;
        printf("[BLE] BLE stack enabled successfully\r\n");
        bt_addr_le_t bt_addr;
        bt_get_local_public_address(&bt_addr);
        bt_addr.a.val[5] = 0x88;
        bt_addr.a.val[4] = 0x88;
        bt_addr.a.val[3] = 0x88;
        bt_addr.a.val[2] = 0x88;
        bt_addr.a.val[1] = 0x88;
        bt_addr.a.val[0] = 0x88;
        printf("BD_ADDR:(MSB)%02x:%02x:%02x:%02x:%02x:%02x(LSB)\r\n",
               bt_addr.a.val[5], bt_addr.a.val[4], bt_addr.a.val[3],
               bt_addr.a.val[2], bt_addr.a.val[1], bt_addr.a.val[0]);
    } else {
        s_ble_enabled = false;
        printf("[BLE] bt_enable failed: %d\r\n", err);
    }

    
}

void ble_reverse_byte(uint8_t *arr, uint32_t size)
{
    for (uint32_t i = 0; i < size / 2; i++) {
        uint8_t tmp = arr[i];
        arr[i] = arr[size - 1 - i];
        arr[size - 1 - i] = tmp;
    }
}

void ble_set_config_done_cb(ble_config_done_cb_t cb)
{
    config_done_cb = cb;
}

// static void exchange_func(struct bt_conn *conn, u8_t err,
//                           struct bt_gatt_exchange_params *params)
// {
//     if (conn) {
//         printf("[BLE] Exchange %s MTU Size =%d\r\n",
//                err == 0U ? "successful" : "failed",
//                bt_gatt_get_mtu(conn));
//     }
// }

// static struct bt_gatt_exchange_params exchange_params;

// uint8_t BleSetMtu()
// {
//     if (!conn_cur) {
//         return 1;
//     }
//     exchange_params.func = exchange_func;
//     int ret = bt_gatt_exchange_mtu(conn_cur, &exchange_params);
//     return ret == 0 ? 0 : 1;
// }

int ble_slave_init()
{
    
    
    

    ble_server_init();
    ble_salve_adv();

    return 0;
}

int ble_slave_deinit(void)
{
    bt_le_adv_stop();
    ble_regist_conn(NULL);
    ble_regist_disconn(NULL);

    return 0;
}

int ble_server_init()
{
    
    memset(temp_ssid, 0, sizeof(temp_ssid));
    memset(temp_password, 0, sizeof(temp_password));
    has_ssid = false;
    has_password = false;

    
    if (s_ble_service_registered) {
        printf("[BLE] Service already registered, unregistering first...\r\n");
        bt_gatt_service_unregister(&wifi_config_service);
        s_ble_service_registered = false;
        aos_msleep(100); 
    }

    
    int wait_count = 0;
    while (!s_ble_enabled && wait_count < 50) { 
        aos_msleep(100);
        wait_count++;
    }

    if (!s_ble_enabled) {
        printf("[BLE] BLE stack not enabled, cannot register service\r\n");
        return -1;
    }

    int ret = bt_gatt_service_register(&wifi_config_service);
    if (ret) {
        printf("[BLE] Failed to register WiFi config service: %d\r\n", ret);
        s_ble_service_registered = false;
    } else {
        printf("[BLE] WiFi config service registered\r\n");
        s_ble_service_registered = true;
    }
    return ret;
}

int ble_server_deinit(void)
{
    
    memset(temp_ssid, 0, sizeof(temp_ssid));
    memset(temp_password, 0, sizeof(temp_password));
    has_ssid = false;
    has_password = false;

    if (s_ble_service_registered) {
        int ret = bt_gatt_service_unregister(&wifi_config_service);
        s_ble_service_registered = false;
        return ret;
    }
    return 0;
}

void ble_stack_start(void)
{
    
    s_ble_enabled = false;
    printf("[BLE] Resetting BLE enabled flag\r\n");

    
    printf("[BLE] Initializing BLE controller...\r\n");
    ble_controller_init(configMAX_PRIORITIES - 1);
    
    
    printf("[BLE] Initializing HCI driver...\r\n");
    hci_driver_init();
    
    printf("[BLE] Calling bt_enable()...\r\n");
    bt_enable(bt_enable_cb);
    printf("[BLE] bt_enable() called, waiting for callback...\r\n");
}

void apps_ble_start()
{
    
    if (s_ble_enabled) {
        printf("[BLE] Warning: BLE still marked as enabled, forcing stop first...\r\n");
        
        s_ble_enabled = false;
        aos_msleep(1000); 
    }
    
    
    
    printf("[BLE] Waiting for radio to be free...\r\n");
    aos_msleep(3000);  
    
    printf("[BLE] Starting BLE stack...\r\n");
    ble_stack_start();
    
    
    int wait_count = 0;
    while (!s_ble_enabled && wait_count < 150) { 
        aos_msleep(100);
        wait_count++;
        if (wait_count % 20 == 0) {
            printf("[BLE] Still waiting for BLE stack to enable... (%d/15s)\r\n", wait_count / 10);
        }
    }
    
    if (!s_ble_enabled) {
        printf("[BLE] BLE stack enable timeout after %d attempts, cannot start BLE\r\n", wait_count);
        printf("[BLE] This may be due to WiFi stack still holding the radio\r\n");
        return;
    }
    
    printf("[BLE] BLE stack enabled, initializing slave...\r\n");
    ble_slave_init();
    
    
    
    
    
    
}

void apps_ble_stop()
{
    printf("[BLE] Stopping BLE...\r\n");
    
    
    s_ble_enabled = false;
    s_ble_service_registered = false;
    
    ble_slave_deinit();

    bt_conn_foreach(BT_CONN_TYPE_ALL, ble_disconnect_all, NULL);

    int disconn_cnt = 0;
    while (le_check_valid_conn() && disconn_cnt++ < 10) {
        printf("[BLE] wait for ble_disconnect_all\r\n");
        vTaskDelay(pdMS_TO_TICKS(500));
        disconn_cnt++;
    }
    
    
    bt_disable();
    
    
    aos_msleep(1000);
    
    
    extern void ble_controller_deinit(void);
    ble_controller_deinit();
    printf("[BLE] BLE controller deinitialized\r\n");
    
    
    aos_msleep(500);
    
    printf("[BLE] BLE stopped\r\n");
}

