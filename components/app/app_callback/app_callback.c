#include "app_callback.h"
#include <stdio.h>
#include <aos/kernel.h>
#include "blog.h"
#include "../app_state/app_state.h"
#include "../app_event/app_event.h"
#include "../app_wifi/app_wifi.h"
#include "../app_ble/app_ble.h"
#include "../app_config/app_config.h"
#include "../app_mqtt/app_mqtt.h"
#include "../../hardware/relay/relay.h"
#include "../../third_party/lib_button/app_btn.h"

app_event_t g_event_queue[10];
int g_event_queue_head = 0;
int g_event_queue_tail = 0;
static bool g_lock_button = false;
static bool g_lock_button_loaded = false;

void app_event_post(app_event_type_t type, void *data)
{
    g_event_queue[g_event_queue_tail].type = type;
    g_event_queue[g_event_queue_tail].data = data;
    g_event_queue_tail = (g_event_queue_tail + 1) % 10;
}

void app_button_hold_callback(int pin, int event, void *data)
{
    (void)pin;
    (void)event;
    (void)data;
    
    if (app_ble_is_running()) {
        app_ble_stop();
        aos_msleep(500);
    }
    
    app_wifi_disconnect();
    aos_msleep(2000);
    app_config_clear_wifi();
    
    app_event_t evt = {.type = APP_EVENT_BUTTON_HOLD, .data = NULL};
    app_state_process_event(&evt);
}

void app_button_press_callback(int pin, int event, void *data)
{
    (void)pin;
    (void)event;
    (void)data;
    
    if (!g_lock_button_loaded) {
        uint8_t dummy_state;
        app_config_load_relay_settings(&dummy_state, &g_lock_button);
        g_lock_button_loaded = true;
    }
    
    if (g_lock_button) {
        return;
    }
    
    relay_toggle();
    
    if (app_mqtt_is_connected()) {
        uint8_t relay_state = relay_get_state();
        app_mqtt_publish_state(relay_state ? "ON" : "OFF");
    }
    
    app_event_post(APP_EVENT_BUTTON_PRESS, NULL);
    app_event_post(APP_EVENT_RELAY_STATE_CHANGED, NULL);
}

void app_callback_update_lock_button(bool locked)
{
    g_lock_button = locked;
    g_lock_button_loaded = true;
}

void app_wifi_connected_callback(void)
{
    app_event_t evt = {.type = APP_EVENT_WIFI_CONNECTED, .data = NULL};
    app_state_process_event(&evt);
}

void app_wifi_disconnected_callback(void)
{
    app_event_t evt = {.type = APP_EVENT_WIFI_DISCONNECTED, .data = NULL};
    app_state_process_event(&evt);
}

void app_wifi_connect_failed_callback(void)
{
    app_event_t evt = {.type = APP_EVENT_WIFI_CONNECT_FAILED, .data = NULL};
    app_state_process_event(&evt);
}

void app_ble_config_done_callback(const char *ssid, const char *password)
{
    (void)ssid;
    (void)password;
    app_event_t evt = {.type = APP_EVENT_BLE_CONFIG_DONE, .data = NULL};
    app_state_process_event(&evt);
}
