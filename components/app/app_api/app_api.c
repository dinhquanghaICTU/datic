#include "app_api.h"
#include <stdio.h>
#include "blog.h"
#include "../app_config/app_config.h"
#include "../app_wifi/app_wifi.h"
#include "../app_ble/app_ble.h"
#include "../app_task/app_task.h"
#include "../app_callback/app_callback.h"
#include "../../hardware/led/led.h"
#include "../../hardware/relay/relay.h"

int app_run(void)
{
    blog_info("APP RUN\r\n");
    led_init();
    relay_init();
    if (app_config_init() != 0) {
        blog_error(">>> Failed to init config\r\n");
        return -1;
    }
    if (app_wifi_init() != 0) {
        blog_error(">>> Failed to init WiFi\r\n");
        return -1;
    }
    app_wifi_set_connected_cb(app_wifi_connected_callback);
    app_wifi_set_disconnected_cb(app_wifi_disconnected_callback);
    app_wifi_set_connect_failed_cb(app_wifi_connect_failed_callback);
    
    if (app_ble_init() != 0) {
        blog_error(">>> Failed to init BLE\r\n");
        return -1;
    }
    app_ble_set_config_done_cb(app_ble_config_done_callback);
    
    app_task_init();
    
    return 0;
}
