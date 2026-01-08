#include "app_state.h"
#include "blog.h"
#include <string.h>

static app_state_machine_t g_state_machine = {
    .current_state = APP_STATE_INIT,
    .next_state = APP_STATE_INIT
};

static app_state_t state_init_handler(app_event_t *event);
static app_state_t state_check_flash_handler(app_event_t *event);
static app_state_t state_ble_config_handler(app_event_t *event);
static app_state_t state_wifi_connecting_handler(app_event_t *event);
static app_state_t state_wifi_connected_handler(app_event_t *event);
static app_state_t state_wifi_failed_handler(app_event_t *event);

static app_state_handler_t state_handlers[APP_STATE_MAX] = {
    state_init_handler,
    state_check_flash_handler,
    state_ble_config_handler,
    state_wifi_connecting_handler,
    state_wifi_connected_handler,
    state_wifi_failed_handler
};

void app_state_init(void)
{
    memset(&g_state_machine, 0, sizeof(app_state_machine_t));
    g_state_machine.current_state = APP_STATE_INIT;
    g_state_machine.next_state = APP_STATE_INIT;
}

app_state_t app_state_get_current(void)
{
    return g_state_machine.current_state;
}

app_state_t app_state_get_next(void)
{
    return g_state_machine.next_state;
}

void app_state_set_next(app_state_t next_state)
{
    g_state_machine.next_state = next_state;
}

app_state_t app_state_process_event(app_event_t *event)
{
    if (event == NULL) {
        return g_state_machine.current_state;
    }
    
    if (g_state_machine.current_state >= APP_STATE_MAX) {
        return g_state_machine.current_state;
    }
    
    app_state_t new_state = state_handlers[g_state_machine.current_state](event);
    
    if (new_state != g_state_machine.current_state) {
        blog_info("State transition: %d -> %d\r\n", g_state_machine.current_state, new_state);
        g_state_machine.current_state = new_state;
    }
    
    return g_state_machine.current_state;
}

static app_state_t state_init_handler(app_event_t *event)
{
    (void)event;
    blog_info("State: INIT\r\n");
    return APP_STATE_CHECK_FLASH;
}

static app_state_t state_check_flash_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        /* User holds button while in CHECK_FLASH: enter BLE config mode */
        blog_info("State: CHECK_FLASH -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    }
    blog_info("State: CHECK_FLASH (waiting for button hold)\r\n");
    // Next state is set by main task based on flash check result
    app_state_t next = g_state_machine.next_state;
    if (next == APP_STATE_INIT) {
        // Stay in CHECK_FLASH if next state not set (waiting for button hold)
        return APP_STATE_CHECK_FLASH;
    }
    return next;
}

static app_state_t state_ble_config_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BLE_CONFIG_DONE) {
        blog_info("State: BLE_CONFIG -> WIFI_CONNECTING\r\n");
        return APP_STATE_WIFI_CONNECTING;
    }
    return APP_STATE_BLE_CONFIG;
}

static app_state_t state_wifi_connecting_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        /* User holds button while connecting: give priority to BLE config */
        blog_info("State: WIFI_CONNECTING -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    } else if (event->type == APP_EVENT_WIFI_CONNECTED) {
        blog_info("State: WIFI_CONNECTING -> WIFI_CONNECTED\r\n");
        return APP_STATE_WIFI_CONNECTED;
    } else if (event->type == APP_EVENT_WIFI_CONNECT_FAILED) {
        blog_info("State: WIFI_CONNECTING -> WIFI_FAILED\r\n");
        return APP_STATE_WIFI_FAILED;
    }
    return APP_STATE_WIFI_CONNECTING;
}

static app_state_t state_wifi_connected_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        blog_info("State: WIFI_CONNECTED -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    } else if (event->type == APP_EVENT_WIFI_DISCONNECTED) {
        blog_info("State: WIFI_CONNECTED -> WIFI_CONNECTING\r\n");
        return APP_STATE_WIFI_CONNECTING;
    }
    return APP_STATE_WIFI_CONNECTED;
}

static app_state_t state_wifi_failed_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        blog_info("State: WIFI_FAILED -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    }
    return APP_STATE_WIFI_FAILED;
}
