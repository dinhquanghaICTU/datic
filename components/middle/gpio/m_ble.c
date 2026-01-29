#include "m_ble.h"
#include "../../middle/wifi_if/wifi_if.h"
#include "../../middle/ble/ble_interface.h"
#include "../app_config/app_config.h"
#include "../gpio/m_wifi.h"
#include "../app_state/app_state.h"
#include "../app_event/app_event.h"
#include <stdio.h>
#include <string.h>
#include <aos/kernel.h>
#include "ble_master.h"

static app_ble_config_done_cb_t g_config_done_cb = NULL;
static bool g_ble_running = false;
static bool g_ble_stack_started = false;
static bool g_ble_adv_running = false;


static bool ble_slave = false;
static void ble_config_done_handler(const char *ssid, const char *password)
{
    if (app_config_save_wifi(ssid, password) == 0) {
        if (g_config_done_cb) {
            g_config_done_cb(ssid, password);
        }
        app_ble_stop();
        app_wifi_connect(ssid, password);
        app_state_set_next(APP_STATE_WIFI_CONNECTING);
        app_event_t event = {
            .type = APP_EVENT_BLE_CONFIG_DONE,
            .data = NULL
        };
        app_state_process_event(&event);
    }
}

int app_ble_init(void)
{
    ble_set_config_done_cb(ble_config_done_handler);
    return 0;
}

int app_ble_start(void)
{
    wifi_if_disconnect();
    aos_msleep(2000);
    
    if (!g_ble_stack_started) {
        apps_ble_start();
        aos_msleep(1000);
        // ble_scan_start();
        // ble_master_scan(200000);
        g_ble_stack_started = true;
    }
    
    if (ble_adv_start() == 0) {
        g_ble_adv_running = true;
        g_ble_running = true;
        return 0;
    }
    
    return -1;
}

int app_ble_stop(void)
{
    if (!g_ble_adv_running) {
        return 0;
    }
    ble_adv_stop();
    g_ble_adv_running = false;
    g_ble_running = false;
    return 0;
}

bool app_ble_is_running(void)
{
    return g_ble_running;
}

void app_ble_set_config_done_cb(app_ble_config_done_cb_t cb)
{
    g_config_done_cb = cb;
}
