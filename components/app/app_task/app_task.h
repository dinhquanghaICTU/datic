#ifndef __APP_TASK_H__
#define __APP_TASK_H__

#include <stdint.h>
#include <stdbool.h>

#define APP_TASK_BUTTON_STACK_SIZE 2048
#define APP_TASK_LED_STACK_SIZE 1024
#define APP_TASK_WIFI_STACK_SIZE 4096
#define APP_TASK_MAIN_STACK_SIZE 4096

#define APP_TASK_BUTTON_PRIORITY 5
#define APP_TASK_LED_PRIORITY 4
#define APP_TASK_WIFI_PRIORITY 3
#define APP_TASK_MAIN_PRIORITY 2


typedef enum {
    APP_STATE_INIT = 0,
    APP_STATE_CHECK_FLASH,
    APP_STATE_BLE_CONFIG,
    APP_STATE_WIFI_CONNECTING,
    APP_STATE_WIFI_CONNECTED,
    APP_STATE_WIFI_FAILED,
    APP_STATE_BLE_MASTER,
    APP_STATE_MAX
} app_state_t;

typedef enum {
    APP_EVENT_NONE = 0,
    APP_EVENT_BUTTON_HOLD,
    APP_EVENT_BUTTON_PRESS,
    APP_EVENT_WIFI_CONNECTED,
    APP_EVENT_WIFI_DISCONNECTED,
    APP_EVENT_WIFI_CONNECT_FAILED,
    APP_EVENT_BLE_CONFIG_DONE,
    APP_EVENT_BLE_CONFIG_TIMEOUT,
    APP_EVENT_MQTT_TOGGLE,
    APP_EVENT_MQTT_SET_ON,
    APP_EVENT_MQTT_SET_OFF,
    APP_EVENT_RELAY_STATE_CHANGED,
    APP_EVENT_MQTT_BLE_MASTER_START,      
    APP_EVENT_MQTT_BLE_MASTER_STOP,       
    APP_EVENT_MQTT_BLE_MASTER_CONNECT,    
    APP_EVENT_MQTT_BLE_MASTER_DISCONNECT,
    APP_EVENT_MAX
} app_event_type_t;

typedef struct {
    app_event_type_t type;
    void *data;
} app_event_t;

typedef struct {
    app_state_t current_state;
    app_state_t next_state;
} app_state_machine_t;

typedef app_state_t (*app_state_handler_t)(app_event_t *event);

void app_state_init(void);
app_state_t app_state_get_current(void);
app_state_t app_state_get_next(void);
void app_state_set_next(app_state_t next_state);
app_state_t app_state_process_event(app_event_t *event);

void app_task_init(void);
void app_task_button(void *params);
void app_task_led(void *params);
void app_task_wifi(void *params);
void app_task_main(void *params);
void app_set_led_blink(bool enable);

void app_button_hold_callback(int pin, int event, void *data);
void app_button_press_callback(int pin, int event, void *data);
void app_wifi_connected_callback(void);
void app_wifi_disconnected_callback(void);
void app_wifi_connect_failed_callback(void);
void app_ble_config_done_callback(const char *ssid, const char *password);

void app_event_post(app_event_type_t type, void *data);
app_event_t *app_event_get_queue(void);
int *app_event_get_queue_head(void);
int *app_event_get_queue_tail(void);


void app_callback_update_lock_button(bool locked);
int app_run(void);

#endif /* __APP_TASK_H__ */
