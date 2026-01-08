#include "app_callback.h"
#include <stdio.h>
#include <aos/kernel.h>
#include "blog.h"
#include "../app_state/app_state.h"
#include "../app_event/app_event.h"
#include "../app_wifi/app_wifi.h"
#include "../app_ble/app_ble.h"
#include "../app_config/app_config.h"
#include "../../hardware/relay/relay.h"
#include "../../third_party/lib_button/app_btn.h"

static app_event_t g_event_queue[10];
static int g_event_queue_head = 0;
static int g_event_queue_tail = 0;

static void app_event_post(app_event_type_t type, void *data)
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
    
    blog_info("Button hold - entering BLE config\r\n");
    
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
    
    relay_toggle();
    
    app_event_post(APP_EVENT_BUTTON_PRESS, NULL);
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
