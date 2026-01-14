#ifndef __APP_BLE_H__
#define __APP_BLE_H__

#include <stdint.h>
#include <stdbool.h>

#define BLE_CONFIG_SERVICE_UUID    0x0001
#define BLE_CONFIG_CHAR_SSID_UUID  0x0002
#define BLE_CONFIG_CHAR_PASS_UUID  0x0003
#define BLE_CONFIG_CHAR_SAVE_UUID  0x0004

typedef void (*app_ble_config_done_cb_t)(const char *ssid, const char *password);

int app_ble_init(void);
int app_ble_start(void);
int app_ble_stop(void);
bool app_ble_is_running(void);
void app_ble_set_config_done_cb(app_ble_config_done_cb_t cb);

#endif /* __APP_BLE_H__ */
