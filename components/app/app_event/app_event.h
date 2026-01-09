#ifndef __APP_EVENT_H__
#define __APP_EVENT_H__

#include <stdint.h>

typedef enum {
    APP_EVENT_NONE = 0,
    APP_EVENT_BUTTON_HOLD,
    APP_EVENT_BUTTON_PRESS,
    APP_EVENT_WIFI_CONNECTED,
    APP_EVENT_WIFI_DISCONNECTED,
    APP_EVENT_WIFI_CONNECT_FAILED,
    APP_EVENT_BLE_CONFIG_DONE,
    APP_EVENT_BLE_CONFIG_TIMEOUT,
    APP_EVENT_MQTT_TOGGLE,
    APP_EVENT_MQTT_SET_ON,
    APP_EVENT_MQTT_SET_OFF,
    APP_EVENT_RELAY_STATE_CHANGED,
    APP_EVENT_MAX
} app_event_type_t;

typedef struct {
    app_event_type_t type;
    void *data;
} app_event_t;

#endif //__APP_EVENT_H__
