#include "app_task.h"
#include <aos/kernel.h>
#include <FreeRTOS.h>
#include <task.h>
#include "blog.h"
#include "../app_callback/app_callback.h"
#include "../app_wifi/app_wifi.h"
#include "../app_ble/app_ble.h"
#include "../app_state/app_state.h"
#include "../app_event/app_event.h"
#include "../app_config/app_config.h"
#include "../../hardware/led/led.h"
#include "../../hardware/relay/relay.h"
#include "../../third_party/lib_button/app_btn.h"
#include "../../hardware/common/hardware.h"
#include <bl_gpio.h>
#include <bl_sys.h>
#include <stdbool.h>
#include <string.h>

static TaskHandle_t g_task_button_handle = NULL;
static TaskHandle_t g_task_led_handle = NULL;
static TaskHandle_t g_task_wifi_handle = NULL;
static TaskHandle_t g_task_main_handle = NULL;

static bool g_led_blink_enable = false;

uint8_t g_btn_filter_cnt = MIN_BTN_FILTER_CNT;

static uint32_t app_get_tick_ms(void)
{
    return aos_now_ms();
}

void app_task_init(void)
{
    xTaskCreate(app_task_button, "btn_task", APP_TASK_BUTTON_STACK_SIZE, NULL, APP_TASK_BUTTON_PRIORITY, &g_task_button_handle);
    xTaskCreate(app_task_led, "led_task", APP_TASK_LED_STACK_SIZE, NULL, APP_TASK_LED_PRIORITY, &g_task_led_handle);
    xTaskCreate(app_task_wifi, "wifi_task", APP_TASK_WIFI_STACK_SIZE, NULL, APP_TASK_WIFI_PRIORITY, &g_task_wifi_handle);
    xTaskCreate(app_task_main, "main_task", APP_TASK_MAIN_STACK_SIZE, NULL, APP_TASK_MAIN_PRIORITY, &g_task_main_handle);
}

void app_task_button(void *params)
{
    (void)params;
    
    app_btn_hw_config_t btn_config[1] = {0};
    app_btn_config_t btn_cfg = {0};
    
    btn_config[0].pin = BUTTON1;
    btn_config[0].idle_level = 1;
    btn_config[0].debounce_val = 0;
    btn_config[0].debounce_counter = 0;
    btn_config[0].last_state = 1;
    
    btn_cfg.config = btn_config;
    btn_cfg.btn_count = 1;
    btn_cfg.get_tick_cb = app_get_tick_ms;
    btn_cfg.btn_initialize = NULL;
    btn_cfg.btn_read = NULL;
    
    bl_gpio_enable_input(BUTTON1, 0, 0);
    btn_cfg.btn_read = (app_btn_get_level_cb)bl_gpio_input_get_value;
    
    app_btn_initialize(&btn_cfg);
    app_btn_register_callback(APP_BTN_EVT_HOLD, app_button_hold_callback, NULL);
    app_btn_register_callback(APP_BTN_EVT_PRESSED, app_button_press_callback, NULL);
    
    while (1) {
        app_btn_scan(NULL);
        aos_msleep(20);
    }
}

void app_task_led(void *params)
{
    (void)params;
    
    led_init();
    
    while (1) {
        if (app_wifi_is_connected()) {
            led_on();
            aos_msleep(1000);
        } else {
            led_toggle();
            aos_msleep(500);
        }
    }
}

void app_task_wifi(void *params)
{
    (void)params;
    
    app_wifi_task(params);
}

void app_task_main(void *params)
{
    (void)params;
    
    wifi_config_t wifi_cfg;
    app_event_t event = {0};
    
    app_state_init();
    
    event.type = APP_EVENT_NONE;
    app_state_process_event(&event);
    
    int wait_count = 0;
    while (!app_wifi_is_mgmr_ready() && wait_count < 100) {
        aos_msleep(100);
        wait_count++;
    }
    
    if (app_wifi_is_mgmr_ready()) {
        if (app_config_has_wifi()) {
            if (app_config_load_wifi(&wifi_cfg) == 0) {
                app_state_set_next(APP_STATE_WIFI_CONNECTING);
                event.type = APP_EVENT_NONE;
                app_state_process_event(&event);
                app_wifi_connect(wifi_cfg.ssid, wifi_cfg.password);
            } else {
                app_state_set_next(APP_STATE_CHECK_FLASH);
                event.type = APP_EVENT_NONE;
                app_state_process_event(&event);
            }
        } else {
            app_state_set_next(APP_STATE_CHECK_FLASH);
            event.type = APP_EVENT_NONE;
            app_state_process_event(&event);
        }
    }
    while (1) {
        app_state_t current_state = app_state_get_current();
        
        switch (current_state) {
            case APP_STATE_CHECK_FLASH:
                break;
                
            case APP_STATE_BLE_CONFIG:
                if (!app_ble_is_running()) {
                    aos_msleep(200);
                    app_ble_start();
                }
                break;
                
            case APP_STATE_WIFI_CONNECTING:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                break;
                
            case APP_STATE_WIFI_CONNECTED:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                break;
                
            case APP_STATE_WIFI_FAILED:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                break;
                
            default:
                break;
        }
        
        aos_msleep(100);
    }
}

void app_set_led_blink(bool enable)
{
    g_led_blink_enable = enable;
}
