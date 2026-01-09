#include "m_button.h"
#include "app_btn.h"
#include "hardware.h"

#include <stdint.h>

#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>
#include <timers.h>

#include "m_switch.h"
#include "m_led_stt.h"
#include "m_wifi.h"
#include "m_database.h"

static m_button_t s_button_obj;
uint32_t ignore_event_release[MAX_NUM_BUTTON] = {0};

#define EVENT_BTN_HOLD 1
#define EVENT_BTN_HOLD_SO_LONG 2

static const char *event_name[] = {"pressed", "release",
                                   "hold", "hold so long",
                                   "double click", "tripple click",
                                   "idle", "idle break", "invalid"};

extern int is_wifi_connected(void);
extern void req_send_offline_message(uint8_t src);

void on_button_event_cb(int button_pin, int event, void *data)
{
    if (button_pin == 0)
    {
        os_trace("Button %d, event %s\r\n", button_pin, event_name[event]);
    }

    switch (event)
    {
    case APP_BTN_EVT_PRESSED:
    {
        if (button_pin == 1) // sensor pin
        {
        }
    }
    break;

    case APP_BTN_EVT_RELEASED:
    {
        if (button_pin == 1) // sensor pin
        {
        }
        else
        {
            if (ignore_event_release[button_pin] == EVENT_BTN_HOLD)
            {
                req_send_offline_message(1);
                vTaskDelay(pdMS_TO_TICKS(1000));
                m_db_factory_reset_without_sync();
                start_smart_config();
                ignore_event_release[button_pin] = 0;
                return;
            }
            else if (ignore_event_release[button_pin] == EVENT_BTN_HOLD_SO_LONG)
            {
                req_send_offline_message(1);
                vTaskDelay(pdMS_TO_TICKS(1000));
                m_db_factory_reset_without_sync();
                start_apconfig();
                ignore_event_release[button_pin] = 0;
                return;
            }
        }
    }
    break;

    case APP_BTN_EVT_HOLD:
    {
        if (button_pin == 0)
        {
            /* factory reset database */
            set_led_stt_smart_config();
            ignore_event_release[button_pin] = EVENT_BTN_HOLD;
        }
    }
    break;

    case APP_BTN_EVT_HOLD_SO_LONG:
    {
        if (button_pin == 0)
        {
            if (ignore_event_release[button_pin] == EVENT_BTN_HOLD_SO_LONG)
                return;

            /* factory reset database */
            set_led_stt_ap_config();
            ignore_event_release[button_pin] = EVENT_BTN_HOLD_SO_LONG;
        }
    }
    break;

    case APP_BTN_EVT_DOUBLE_CLICK:
    {
        /* double click */
    }
    break;

    case APP_BTN_EVT_TRIPLE_CLICK:
    {
        /* triplle click */
    }
    break;

    default:
        break;
    }
}

static void m_button_config(void)
{
    static app_btn_hw_config_t m_hw_button_initialize_value[MAX_NUM_BUTTON];
    // for (uint32_t i = 0; i < MAX_NUM_BUTTON; i++)
    // {
    m_hw_button_initialize_value[0].idle_level = BTN_IDLE_LEVEL;
    m_hw_button_initialize_value[0].last_state = hw_btn_read(0);
    m_hw_button_initialize_value[0].pin = 0;

    m_hw_button_initialize_value[1].idle_level = 0;
    m_hw_button_initialize_value[1].last_state = hw_btn_read(1);
    m_hw_button_initialize_value[1].pin = 1;
    // }

    app_btn_config_t conf;
    conf.config = &m_hw_button_initialize_value[0];
    conf.btn_count = MAX_NUM_BUTTON;
    conf.get_tick_cb = sys_get_tick_ms;
    conf.btn_initialize = hw_button_config;
    conf.btn_read = hw_btn_read;

    app_btn_initialize(&conf);
    app_btn_register_callback(APP_BTN_EVT_PRESSED, on_button_event_cb, NULL);
    app_btn_register_callback(APP_BTN_EVT_RELEASED, on_button_event_cb, NULL);
    app_btn_register_callback(APP_BTN_EVT_HOLD, on_button_event_cb, NULL);
    app_btn_register_callback(APP_BTN_EVT_HOLD_SO_LONG, on_button_event_cb, NULL);
}

/* private */
static void button_scan_task(void *param)
{
    os_trace("button_scan_task\r\n");
    while (true)
    {
        m_switch_press_release_loop();
        m_switch_cyclic_timer_loop();
        led_stt_ota_loop();
        app_btn_scan(NULL);
        vTaskDelay(pdMS_TO_TICKS(50));
    }
}

/* public */
void m_button_init(void)
{
    m_button_config();

    os_trace("m_button_init: %ld\r\n", MAX_NUM_BUTTON);
    xTaskCreate(button_scan_task,  /* Function that implements the task. */
                "led_button_task", /* Text name for the task. */
                1024 * 3,          /* Stack size in words, not bytes. */
                NULL,              /* Parameter passed into the task. */
                4,                 /* Priority at which the task is created. */
                NULL);
}

m_button_t m_button_get_instace(void)
{
    return s_button_obj;
}