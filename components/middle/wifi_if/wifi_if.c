#include "wifi_if.h"

#include <stdio.h>
#include <string.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <bl_wifi.h>
#include <hal_wifi.h>
#include <wifi_mgmr_ext.h>


static bool s_wifi_connected = false;
static bool s_wifi_connecting = false;
static bool s_wifi_mgmr_ready = false;


static wifi_if_connected_cb_t s_connected_cb = NULL;
static wifi_if_disconnected_cb_t s_disconnected_cb = NULL;
static wifi_if_connect_failed_cb_t s_connect_failed_cb = NULL;


static wifi_conf_t s_wifi_conf = {
    .country_code = "VN",
    .channel_nums = 0,
};

static void wifi_event_handler(input_event_t *event, void *private_data)
{
    (void)private_data;

    if (event->type != EV_WIFI) {
        return;
    }

    switch (event->code) {
        case CODE_WIFI_ON_INIT_DONE:
            printf("[WIFI_IF] WiFi INIT DONE, starting background\r\n");
            wifi_mgmr_start_background(&s_wifi_conf);
            break;

        case CODE_WIFI_ON_MGMR_DONE:
            printf("[WIFI_IF] WiFi MGMR DONE\r\n");
            s_wifi_mgmr_ready = true;
            break;

        case CODE_WIFI_ON_GOT_IP:
            printf("[WIFI_IF] WiFi connected and got IP\r\n");
            s_wifi_connected = true;
            s_wifi_connecting = false;
            if (s_connected_cb) {
                s_connected_cb();
            }
            break;

        case CODE_WIFI_ON_CONNECTED:
            printf("[WIFI_IF] WiFi connected (no IP yet), waiting for DHCP...\r\n");
            
            break;

        case CODE_WIFI_ON_CONNECTING:
            printf("[WIFI_IF] WiFi connecting...\r\n");
            s_wifi_connecting = true;
            break;

        case CODE_WIFI_ON_DISCONNECT: {
            printf("[WIFI_IF] WiFi disconnected\r\n");
            bool was_connected = s_wifi_connected;
            s_wifi_connected = false;
            s_wifi_connecting = false;

            if (was_connected) {
                if (s_disconnected_cb) {
                    s_disconnected_cb();
                }
            } else {
                
                if (s_connect_failed_cb) {
                    s_connect_failed_cb();
                }
            }
            break;
        }

        default:
            break;
    }
}

int wifi_if_init(void)
{
    static uint8_t wifi_init_done = 0;

    if (wifi_init_done) {
        printf("[WIFI_IF] WiFi already initialized\r\n");
        return 0;
    }

    wifi_init_done = 1;
    printf("[WIFI_IF] Initializing WiFi...\r\n");

    aos_register_event_filter(EV_WIFI, wifi_event_handler, NULL);

    
    hal_wifi_start_firmware_task();

    
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    return 0;
}

int wifi_if_connect(const char *ssid, const char *password)
{
    wifi_interface_t wifi_interface;
    struct ap_connect_adv ext_param = {0};

    if (ssid == NULL || password == NULL) {
        return -1;
    }

    if (s_wifi_connecting) {
        printf("[WIFI_IF] WiFi already connecting\r\n");
        return -1;
    }

    if (!s_wifi_mgmr_ready) {
        printf("[WIFI_IF] WiFi MGMR not ready, cannot connect yet\r\n");
        s_wifi_connecting = false;
        return -1;
    }

    printf("[WIFI_IF] Connecting to WiFi: %s\r\n", ssid);
    s_wifi_connecting = true;

    
    wifi_interface = wifi_mgmr_sta_enable();

    
    wifi_mgmr_sta_autoconnect_enable();

    
    memset(&ext_param, 0, sizeof(ext_param));
    ext_param.psk = NULL;
    ext_param.ap_info.type = AP_INFO_TYPE_PRESIST;
    ext_param.ap_info.time_to_live = 5;
    ext_param.ap_info.band = 0;
    ext_param.ap_info.use_dhcp = 1;  

    return wifi_mgmr_sta_connect_ext(wifi_interface, (char *)ssid, (char *)password, &ext_param);
}

int wifi_if_disconnect(void)
{
    
    wifi_mgmr_sta_autoconnect_disable();
    wifi_mgmr_sta_disconnect();
    
    
    extern int wifi_mgmr_api_idle(void);
    wifi_mgmr_api_idle();
    
    s_wifi_connected = false;
    s_wifi_connecting = false;
    return 0;
}

int wifi_if_disable(void)
{
    printf("[WIFI_IF] Completely disabling WiFi STA to release radio for BLE\r\n");
    
    
    wifi_mgmr_sta_autoconnect_disable();
    
    
    if (s_wifi_connected || s_wifi_connecting) {
        wifi_mgmr_sta_disconnect();
    }
    
    
    extern int wifi_mgmr_api_idle(void);
    wifi_mgmr_api_idle();
    
    
    
    
    wifi_interface_t wifi_interface;
    wifi_interface = wifi_mgmr_sta_enable();  
    if (wifi_interface) {
        printf("[WIFI_IF] Disabling WiFi STA interface to release radio...\r\n");
        wifi_mgmr_sta_disable(&wifi_interface);
    } else {
        printf("[WIFI_IF] Warning: Could not get WiFi interface, may already be disabled\r\n");
    }
    
    s_wifi_connected = false;
    s_wifi_connecting = false;
    
    
    printf("[WIFI_IF] Waiting for WiFi stack to fully release radio...\r\n");
    aos_msleep(3000);  
    
    printf("[WIFI_IF] WiFi STA disabled and radio should be released\r\n");
    return 0;
}

int wifi_if_enable(void)
{
    printf("[WIFI_IF] Re-enabling WiFi STA interface...\r\n");
    
    
    wifi_interface_t wifi_interface;
    wifi_interface = wifi_mgmr_sta_enable();
    
    if (wifi_interface) {
        printf("[WIFI_IF] WiFi STA interface re-enabled\r\n");
    } else {
        printf("[WIFI_IF] Warning: Failed to re-enable WiFi STA interface\r\n");
    }
    
    return 0;
}

bool wifi_if_is_connected(void)
{
    return s_wifi_connected;
}

bool wifi_if_is_mgmr_ready(void)
{
    return s_wifi_mgmr_ready;
}

void wifi_if_set_connected_cb(wifi_if_connected_cb_t cb)
{
    s_connected_cb = cb;
}

void wifi_if_set_disconnected_cb(wifi_if_disconnected_cb_t cb)
{
    s_disconnected_cb = cb;
}

void wifi_if_set_connect_failed_cb(wifi_if_connect_failed_cb_t cb)
{
    s_connect_failed_cb = cb;
}
