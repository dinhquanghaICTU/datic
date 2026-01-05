#ifndef __BLE_GATT_H__
#define __BLE_GATT_H__
#include <stdbool.h>


typedef enum {
    WIFI_STATUS_CONNECTING = 1,
    WIFI_STATUS_CONNECTED  = 2,
    WIFI_STATUS_FAILED     = 3,
    BLE_FULL_BUFF = 4,
    WIFI_STATUS_IDLE,
} wifi_status_t;


void ble_wifi_init(void);
void ble_wifi_notify_status(wifi_status_t status);
bool ble_wifi_is_config_ready(void);
const char* ble_wifi_get_ssid(void);
const char* ble_wifi_get_pass(void);



#endif //__BLE_GATT_H__