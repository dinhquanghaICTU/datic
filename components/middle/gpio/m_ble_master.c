#include "m_ble_master.h"
#include "../../middle/ble/ble_interface.h"  // Include này có work_q.h và ADV_* defines
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

// Include BLE headers (same order as ble_master.c và ble_central_api.c)
// Không cần include work_q.h vì đã có trong ble_interface.h
#include "hci_driver.h"
// #include "hci_core.h"
#include "conn.h"  // For bt_conn_disconnect, bt_conn_foreach, etc.

#include "../../middle/ble/ble_master.h"

// External variables
extern unsigned char bleuart_connect_status;
extern struct bt_conn *pconn;

// Define ble_uart_dev (UART device for BLE communication)
hosal_uart_dev_t ble_uart_dev = {
    .config = {
        .uart_id = 1,
        .tx_pin = 16, // TXD GPIO
        .rx_pin = 7,  // RXD GPIO
        .cts_pin = 255,
        .rts_pin = 255,
        .baud_rate = 115200,
        .data_width = HOSAL_DATA_WIDTH_8BIT,
        .parity = HOSAL_NO_PARITY,
        .stop_bits = HOSAL_STOP_BITS_1,
        .mode = HOSAL_UART_MODE_POLL,
    },
};

// Define bleuart_printf function (used by ble_central_api.c)
void bleuart_printf(char *buf)
{
    if (buf != NULL) {
        hosal_uart_send(&ble_uart_dev, buf, strlen(buf));
    }
}

// External functions from ble_central_api.c
extern uint8_t axk_HalBleInit(void);
extern uint8_t axk_HalBleCentralStartScan(void);
extern uint8_t axk_HalBleCentralConnect(uint8_t *mac, uint8_t *uuid, uint8_t autoConnect);
extern int axk_HalBleCentralTTWrite(uint16_t len, uint8_t *data);

// External functions from ble_common_api.c
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
static bool s_ble_master_api_init = false;  // Track if ble_master_init() was called

static bool adv_parse_cb(struct bt_data *data, void *user_data)
{
    int8_t rssi = *(int8_t *)user_data;
    bt_addr_le_t *addr = (bt_addr_le_t *)((uint8_t *)user_data + sizeof(int8_t));

    if (data->type != BT_DATA_MANUFACTURER_DATA) {
        return true; 
    }

    // Format: Company ID (2) + "addruntitle" (11) + "HNN" (3) + touchpad1 (1) + touchpad2 (1) + touchpad3 (1) = 19 bytes
    if (data->data_len < 19) {
        return true;
    }

    const uint8_t *p = data->data;
    
    // Parse Company ID
    uint16_t company_id = p[0] | (p[1] << 8);
    if (company_id != 0x0211) {
        return true;  
    }

    // Check magic string "addruntitle" (11 bytes) at offset 2
    if (data->data_len < 13) {
        return true;
    }
    
    if (memcmp(&p[2], "addruntitle", 11) != 0) {
        return true;
    }

    // Check product "HNN" (3 bytes) at offset 13
    if (data->data_len < 16) {
        return true;
    }
    
    if (memcmp(&p[13], "HNN", 3) != 0) {
        return true;
    }

    // Parse touchpad values
    (void)p[16]; // touchpad1 - unused
    uint8_t touchpad2 = p[17];  // This is the state (touchpad2): 1=ON, 0=OFF
    (void)p[18]; // touchpad3 - unused
    
    // Check if this is the same device (by MAC address - compare original, not reversed)
    bool is_same_device = s_slave_mac_found && 
                          (memcmp(s_found_slave_mac, addr->a.val, 6) == 0);
    
    // Log first time found (only once)
    if (!s_slave_mac_found || !is_same_device) {
        // Store MAC address (original format for comparison)
        memcpy(s_found_slave_mac, addr->a.val, 6);
        
        s_slave_mac_found = true;
        s_relay_current_state = touchpad2;  // Initialize current state

        // Display MAC in reversed format (for readability)
        uint8_t mac_display[6];
        memcpy(mac_display, addr->a.val, 6);
        ble_reverse_byte(mac_display, 6);
        
        printf("[BLE_MASTER] [FOUND] Target device! MAC: %02X:%02X:%02X:%02X:%02X:%02X, RSSI=%d, touchpad2(state)=%d\r\n",
               mac_display[0], mac_display[1], mac_display[2],
               mac_display[3], mac_display[4], mac_display[5],
               rssi, touchpad2);
        fflush(stdout);
        
        // Set relay to initial state (1=ON, 0=OFF)
        if (touchpad2 == 1) {
            relay_on();
        } else {
            relay_off();
        }
        
        return false;  // Stop parsing
    }
    
    // Only process when touchpad2 (state) changes (for same device)
    if (touchpad2 != s_relay_current_state) {
        printf("[BLE_MASTER] [STATE CHANGE] touchpad2: %d -> %d, ", 
               s_relay_current_state, touchpad2);
        
        // Set relay based on state: 1=ON, 0=OFF
        if (touchpad2 == 1) {
            relay_on();
            printf("RELAY ON\r\n");
        } else {
            relay_off();
            printf("RELAY OFF\r\n");
        }
        fflush(stdout);
        
        s_relay_current_state = touchpad2;
        
        // Notify callback
        if (s_adv_state_cb) {
            s_adv_state_cb(touchpad2, rssi);
        }
    }
    
    return false;  // Stop parsing, found what we need
}


static void scan_adv_device_found(const bt_addr_le_t *addr,
                                   int8_t rssi,
                                   uint8_t type,
                                   struct net_buf_simple *ad)
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
    // Optimized scan parameters to reduce CPU usage and avoid interfering with MQTT
    // interval = 0x400 (1024 * 0.625ms = 640ms) - scan every 640ms
    // window = 0x30 (48 * 0.625ms = 30ms) - scan for 30ms each interval
    // This gives ~4.7% duty cycle instead of 100%, much less CPU intensive
    struct bt_le_scan_param scan_param = {
        .type       = BT_LE_SCAN_TYPE_PASSIVE,
        .filter_dup = BT_LE_SCAN_FILTER_DUPLICATE,
        .interval   = 0x400,  // 640ms interval (was 0x50 = 50ms)
        .window     = 0x30,   // 30ms window (was 0x50 = 50ms)
    };
    
    int ret = bt_le_scan_start(&scan_param, scan_adv_device_found);
    if (ret) {
        printf("[BLE_MASTER] ERROR: Scan start failed: %d\r\n", ret);
        fflush(stdout);
        vTaskDelete(NULL);
        return;
    }
    
    while (s_ble_master_running && s_current_mode == BLE_MASTER_MODE_SCAN_ADV) {
        // Longer delay to reduce task switching overhead
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

// Removed unused ble_master_connect_init_task - logic moved directly into app_ble_master_connect



int app_ble_master_init(void)
{
    
    // int uart_ret = hosal_uart_init(&ble_uart_dev);

    memset(s_found_slave_mac, 0, 6);
    s_slave_mac_found = false;
    

    return 0;
}

int app_ble_master_start(void)
{
    if (s_ble_master_running) {
        return 0;
    }
    
    
    // Don't disable WiFi when scanning ADV - allow MQTT to work
    // WiFi will be disabled only when connecting to slave device
    s_wifi_was_connected = wifi_if_is_connected();
    
    if (!s_ble_master_stack_started) {
        ble_stack_start();
        
        int wait_count = 0;
        while (!ble_is_enabled() && wait_count < 150) {
            aos_msleep(100);
            wait_count++;
        }
        
        if (!ble_is_enabled()) {
            printf("[BLE_MASTER] ERROR: BLE stack not enabled after timeout!\r\n");
            fflush(stdout);
            return -1;
        }
        
        s_ble_master_stack_started = true;
    }
    
    
    s_slave_mac_found = false;
    memset(s_found_slave_mac, 0, 6);
    
    
    s_current_mode = BLE_MASTER_MODE_SCAN_ADV;
    s_ble_master_running = true;
    
    xTaskCreate(
        ble_master_scan_adv_task,
        "ble_scan_adv",
        1024,
        NULL,
        10,  // Lower priority to avoid interfering with MQTT/WiFi
        &s_ble_scan_task_handle
    );
    return 0;
}

int app_ble_master_connect(const uint8_t *slave_mac)
{
    if (!s_ble_master_running) {
        blog_error("[BLE_MASTER] Not running\r\n");
        return -1;
    }
    
    if (s_current_mode == BLE_MASTER_MODE_CONNECT) {
        blog_warn("[BLE_MASTER] Already in CONNECT mode\r\n");
        return 0;
    }
    
    
    if (slave_mac) {
        memcpy(s_found_slave_mac, slave_mac, 6);
        s_slave_mac_found = true;
        blog_info("[BLE_MASTER] Using provided MAC\r\n");
    }
    
    
    if (!s_slave_mac_found) {
        blog_error("[BLE_MASTER] No MAC found! Please wait for scan to find device first\r\n");
        return -1;
    }
    
    // Print MAC address (reversed for display)
    uint8_t mac_display[6];
    memcpy(mac_display, s_found_slave_mac, 6);
    ble_reverse_byte(mac_display, 6);
    // Stop scan task first
    if (s_ble_scan_task_handle) {
        vTaskDelete(s_ble_scan_task_handle);
        s_ble_scan_task_handle = NULL;
    }
    
    bt_le_scan_stop();
    aos_msleep(500);
    
    s_current_mode = BLE_MASTER_MODE_CONNECT;
    
    // Don't call axk_HalBleInit() - it will call ble_stack_start() again and cause crash
    // BLE stack is already running, just need to ensure ble_master_init() is called
    // Only call it once
    if (!s_ble_master_api_init) {
        extern int ble_master_init(void);
        int ret = ble_master_init();
        if (ret == 0) {
            s_ble_master_api_init = true;
        }
        
        extern void axk_HalBleRegisterCallbacks(void);
        axk_HalBleRegisterCallbacks();
    }
    
    // Use the original vendor's connection function - it will:
    // 1. Scan for the device (ble_master_find_target) to verify it's still there
    // 2. Create connection with proper parameters
    // 3. Wait for connection complete via semaphore
    // 4. Set up auto-reconnect if needed
    
    // Reverse MAC for axk_HalBleCentralConnect (it expects reversed format)
    uint8_t mac_reversed[6];
    memcpy(mac_reversed, s_found_slave_mac, 6);
    ble_reverse_byte(mac_reversed, 6);
    
    uint8_t ret = axk_HalBleCentralConnect(mac_reversed, NULL, BLE_MASTER_AUTOCONN_DISABLE);
    
    if (ret != 0 && ret != 1) {
        printf("[BLE_MASTER] Connection failed, ret=%d\r\n", ret);
        fflush(stdout);
        // Fall back to scan mode
        s_current_mode = BLE_MASTER_MODE_SCAN_ADV;
        xTaskCreate(
            ble_master_scan_adv_task,
            "ble_scan_adv",
            1024,
            NULL,
            14,
            &s_ble_scan_task_handle
        );
    }
    
    // Create UART task for data passthrough (will be used when connected)
    xTaskCreate(
        ble_master_uart_task,
        "ble_uart",
        1024,
        NULL,
        15,
        &s_ble_uart_task_handle
    );
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
        10,  // Lower priority to avoid interfering with MQTT/WiFi
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