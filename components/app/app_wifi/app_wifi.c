#include "app_wifi.h"
#include "../../middle/wifi_if/wifi_if.h"
#include <stdio.h>
#include <aos/kernel.h>

static app_wifi_connected_cb_t g_connected_cb = NULL;
static app_wifi_disconnected_cb_t g_disconnected_cb = NULL;
static app_wifi_connect_failed_cb_t g_connect_failed_cb = NULL;

int app_wifi_init(void)
{
    return wifi_if_init();
}

int app_wifi_connect(const char *ssid, const char *password)
{
    if (ssid == NULL || password == NULL) {
        return -1;
    }

    if (!wifi_if_is_mgmr_ready()) {
        printf("[APP][WiFi] MGMR not ready, cannot connect\r\n");
        if (g_connect_failed_cb) {
            g_connect_failed_cb();
        }
        return -1;
    }

    return wifi_if_connect(ssid, password);
}

int app_wifi_disconnect(void)
{
    return wifi_if_disconnect();
}

int app_wifi_disable(void)
{
    return wifi_if_disable();
}

int app_wifi_enable(void)
{
    return wifi_if_enable();
}

bool app_wifi_is_connected(void)
{
    return wifi_if_is_connected();
}

bool app_wifi_is_mgmr_ready(void)
{
    return wifi_if_is_mgmr_ready();
}

void app_wifi_set_connected_cb(app_wifi_connected_cb_t cb)
{
    g_connected_cb = cb;
    wifi_if_set_connected_cb(cb);
}

void app_wifi_set_disconnected_cb(app_wifi_disconnected_cb_t cb)
{
    g_disconnected_cb = cb;
    wifi_if_set_disconnected_cb(cb);
}

void app_wifi_set_connect_failed_cb(app_wifi_connect_failed_cb_t cb)
{
    g_connect_failed_cb = cb;
    wifi_if_set_connect_failed_cb(cb);
}

void app_wifi_task(void *params)
{
    (void)params;
    while (1) {
        aos_msleep(1000);
    }
}
