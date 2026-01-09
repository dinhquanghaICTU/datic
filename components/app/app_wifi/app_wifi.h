#ifndef __APP_WIFI_H__
#define __APP_WIFI_H__

#include <stdint.h>
#include <stdbool.h>
#include "../app_config/app_config.h"

typedef void (*app_wifi_connected_cb_t)(void);
typedef void (*app_wifi_disconnected_cb_t)(void);
typedef void (*app_wifi_connect_failed_cb_t)(void);

int app_wifi_init(void);
int app_wifi_connect(const char *ssid, const char *password);
int app_wifi_disconnect(void);
int app_wifi_disable(void);  
int app_wifi_enable(void);   
bool app_wifi_is_connected(void);
bool app_wifi_is_mgmr_ready(void);
void app_wifi_set_connected_cb(app_wifi_connected_cb_t cb);
void app_wifi_set_disconnected_cb(app_wifi_disconnected_cb_t cb);
void app_wifi_set_connect_failed_cb(app_wifi_connect_failed_cb_t cb);
void app_wifi_task(void *params);

#endif // __APP_WIFI_H__
