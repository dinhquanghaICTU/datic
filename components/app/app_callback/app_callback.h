#ifndef __APP_CALLBACK_H__
#define __APP_CALLBACK_H__

#include <stdint.h>

void app_button_hold_callback(int pin, int event, void *data);
void app_button_press_callback(int pin, int event, void *data);
void app_wifi_connected_callback(void);
void app_wifi_disconnected_callback(void);
void app_wifi_connect_failed_callback(void);
void app_ble_config_done_callback(const char *ssid, const char *password);

#endif /* __APP_CALLBACK_H__ */
