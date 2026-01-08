#ifndef __APP_CALLBACK_H__
#define __APP_CALLBACK_H__

#include <stdint.h>
#include <stdbool.h>
#include "../app_event/app_event.h"

void app_button_hold_callback(int pin, int event, void *data);
void app_button_press_callback(int pin, int event, void *data);
void app_wifi_connected_callback(void);
void app_wifi_disconnected_callback(void);
void app_wifi_connect_failed_callback(void);
void app_ble_config_done_callback(const char *ssid, const char *password);

/* Event queue functions */
void app_event_post(app_event_type_t type, void *data);
app_event_t *app_event_get_queue(void);
int *app_event_get_queue_head(void);
int *app_event_get_queue_tail(void);

/* Lock button control */
void app_callback_update_lock_button(bool locked);

#endif /* __APP_CALLBACK_H__ */
