#include "m_app_callback.h"
#include "../../middle/wifi_if/wifi_if.h"
#include "../../middle/mqtt_if/mqtt_if.h"
#include <stdio.h>
#include <aos/kernel.h>
#include "blog.h"
#include "../app_state/app_state.h"
#include "../app_event/app_event.h"
#include "../gpio/m_wifi.h"
#include "../gpio/m_ble.h"
#include "../app_config/app_config.h"
#include "../gpio/m_mqtt.h"
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
    
    if (app_ble_is_running()) {
        app_ble_stop();
        aos_msleep(500);
    }
    
    wifi_if_disconnect();
    aos_msleep(2000);
    app_config_clear_wifi();
    
    app_event_t evt = {.type = APP_EVENT_BUTTON_HOLD, .data = NULL};
    app_state_process_event(&evt);
}

void app_button_press_callback(int pin, int event, void *data)
{
    
    if (!g_lock_button_loaded) {
        uint8_t dummy_state;
        app_config_load_relay_settings(&dummy_state, &g_lock_button);
        g_lock_button_loaded = true;
    }
    
    if (g_lock_button) {
        return;
    }
    
    relay_toggle();
    
    if (mqtt_if_is_connected()) {
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
