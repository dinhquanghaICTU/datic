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
    blog_info("=== IoT App Starting ===\r\n");
    
    // Initialize hardware
    led_init();
    relay_init();
    
    // Initialize config (flash storage)
    if (app_config_init() != 0) {
        blog_error("Failed to initialize config\r\n");
        return -1;
    }
    
    // Initialize WiFi
    if (app_wifi_init() != 0) {
        blog_error("Failed to initialize WiFi\r\n");
        return -1;
    }
    
    // Set WiFi callbacks
    app_wifi_set_connected_cb(app_wifi_connected_callback);
    app_wifi_set_disconnected_cb(app_wifi_disconnected_callback);
    app_wifi_set_connect_failed_cb(app_wifi_connect_failed_callback);
    
    // Initialize BLE
    if (app_ble_init() != 0) {
        blog_error("Failed to initialize BLE\r\n");
        return -1;
    }
    
    // Set BLE callback
    app_ble_set_config_done_cb(app_ble_config_done_callback);
    
    // Initialize and start tasks
    app_task_init();
    
    blog_info("=== IoT App Started ===\r\n");
    
    return 0;
}
