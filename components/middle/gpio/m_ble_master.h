#ifndef __APP_BLE_MASTER_H__
#define __APP_BLE_MASTER_H__

#include <stdint.h>
#include <stdbool.h>

typedef enum {
    BLE_MASTER_MODE_SCAN_ADV = 0,  
    BLE_MASTER_MODE_CONNECT         
} ble_master_mode_t;

typedef void (*app_ble_master_rx_cb_t)(const uint8_t *data, uint16_t len);
typedef void (*app_ble_master_conn_cb_t)(bool connected);
typedef void (*app_ble_master_adv_state_cb_t)(uint8_t relay_state, int8_t rssi);

int app_ble_master_init(void);
int app_ble_master_start(void);
int app_ble_master_stop(void);
int app_ble_master_connect(const uint8_t *slave_mac);
int app_ble_master_disconnect(void);
bool app_ble_master_is_running(void);
ble_master_mode_t app_ble_master_get_mode(void);
bool app_ble_master_is_connected(void);
bool app_ble_master_get_found_mac(uint8_t *mac_out);
int app_ble_master_send_data(const uint8_t *data, uint16_t len);
void app_ble_master_set_rx_cb(app_ble_master_rx_cb_t cb);
void app_ble_master_set_conn_cb(app_ble_master_conn_cb_t cb);
void app_ble_master_set_adv_state_cb(app_ble_master_adv_state_cb_t cb);

#endif // __APP_BLE_MASTER_H__