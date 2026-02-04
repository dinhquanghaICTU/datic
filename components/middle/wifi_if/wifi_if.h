#ifndef __WIFI_IF_H__
#define __WIFI_IF_H__

#include <stdbool.h>
#include <stdint.h>
#include "../app_config/app_config.h"


//register funcion pointer
typedef void (*wifi_if_connected_cb_t)(void);
typedef void (*wifi_if_disconnected_cb_t)(void);
typedef void (*wifi_if_connect_failed_cb_t)(void);

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


int wifi_if_init(void);
int wifi_if_connect(const char *ssid, const char *password);
int wifi_if_disconnect(void);
int wifi_if_disable(void);  
int wifi_if_enable(void);  
bool wifi_if_is_connected(void);
bool wifi_if_is_mgmr_ready(void);


void wifi_if_set_connected_cb(wifi_if_connected_cb_t cb);
void wifi_if_set_disconnected_cb(wifi_if_disconnected_cb_t cb);
void wifi_if_set_connect_failed_cb(wifi_if_connect_failed_cb_t cb);

#endif //__WIFI_IF_H__

