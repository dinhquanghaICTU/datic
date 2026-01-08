#include "wifi_if.h"

#include <stdio.h>
#include <string.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <bl_wifi.h>
#include <hal_wifi.h>
#include <wifi_mgmr_ext.h>

/* Public state exposed via wifi_if_* getters */
static bool s_wifi_connected = false;
static bool s_wifi_connecting = false;
static bool s_wifi_mgmr_ready = false;

/* Callbacks to notify app layer */
static wifi_if_connected_cb_t s_connected_cb = NULL;
static wifi_if_disconnected_cb_t s_disconnected_cb = NULL;
static wifi_if_connect_failed_cb_t s_connect_failed_cb = NULL;

/* WiFi config, similar to SDK examples */
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
            /* DHCP should start automatically, but we log to track */
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
                /* Treat disconnect before IP as connect failed */
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

    /* Start WiFi firmware task as in SDK examples */
    hal_wifi_start_firmware_task();

    /* Trigger WiFi init event */
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

    /* Enable STA mode */
    wifi_interface = wifi_mgmr_sta_enable();

    /* Enable auto reconnect */
    wifi_mgmr_sta_autoconnect_enable();

    /* Connect with extended parameters */
    memset(&ext_param, 0, sizeof(ext_param));
    ext_param.psk = NULL;
    ext_param.ap_info.type = AP_INFO_TYPE_PRESIST;
    ext_param.ap_info.time_to_live = 5;
    ext_param.ap_info.band = 0;
    ext_param.ap_info.use_dhcp = 1;  /* Enable DHCP to obtain IP address */

    return wifi_mgmr_sta_connect_ext(wifi_interface, (char *)ssid, (char *)password, &ext_param);
}

int wifi_if_disconnect(void)
{
    /* Disable auto reconnect and disconnect */
    wifi_mgmr_sta_autoconnect_disable();
    wifi_mgmr_sta_disconnect();
    
    /* Force WiFi to idle state to stop retry */
    extern int wifi_mgmr_api_idle(void);
    wifi_mgmr_api_idle();
    
    s_wifi_connected = false;
    s_wifi_connecting = false;
    return 0;
}

int wifi_if_disable(void)
{
    printf("[WIFI_IF] Completely disabling WiFi STA to release radio for BLE\r\n");
    
    /* Disable auto reconnect at global level - this is critical to prevent retry */
    wifi_mgmr_sta_autoconnect_disable();
    
    /* Disconnect if connected or connecting */
    if (s_wifi_connected || s_wifi_connecting) {
        wifi_mgmr_sta_disconnect();
    }
    
    /* Force WiFi to idle state to stop retry */
    extern int wifi_mgmr_api_idle(void);
    wifi_mgmr_api_idle();
    
    /* Actually disable WiFi STA interface to release radio */
    /* This removes the interface and releases radio resources */
    /* Get interface by enabling it first (if not already enabled) */
    wifi_interface_t wifi_interface;
    wifi_interface = wifi_mgmr_sta_enable();  /* This will get existing interface or create new one */
    if (wifi_interface) {
        printf("[WIFI_IF] Disabling WiFi STA interface to release radio...\r\n");
        wifi_mgmr_sta_disable(&wifi_interface);
    } else {
        printf("[WIFI_IF] Warning: Could not get WiFi interface, may already be disabled\r\n");
    }
    
    s_wifi_connected = false;
    s_wifi_connecting = false;
    
    /* Wait longer for WiFi stack to fully release radio */
    printf("[WIFI_IF] Waiting for WiFi stack to fully release radio...\r\n");
    aos_msleep(3000);  // Increased delay for radio release
    
    printf("[WIFI_IF] WiFi STA disabled and radio should be released\r\n");
    return 0;
}

int wifi_if_enable(void)
{
    printf("[WIFI_IF] Re-enabling WiFi STA interface...\r\n");
    
    /* Re-enable WiFi STA interface (it was disabled by wifi_if_disable()) */
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
