
/*************** New handler ****************/
#include "m_led_stt.h"
#include "hardware.h"
#include "system_typedef.h"

#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>
#include <timers.h>

#define TWO_PULSE_COUNT 2
#define FOUR_PULSE_COUNT 4

static m_led_stt_t s_led_stt_obj;
static TimerHandle_t xTimers;
static uint16_t timeline_status[] = {200, 200, 200, 200, 200, 200, 200, 200};

static void m_start_timer(uint32_t time_ms);
static void m_stop_timer(void);

static void vTimerCallback(TimerHandle_t xTimer)
{
    hw_toggle_led_stt();
    s_led_stt_obj.led_handle_count = (s_led_stt_obj.led_handle_count + 1) % s_led_stt_obj.max_number_handle;
    m_stop_timer();
    m_start_timer(timeline_status[s_led_stt_obj.led_handle_count]);
}

static void m_start_timer(uint32_t time_ms)
{
    if (xTimers != NULL)
    {
        xTimerChangePeriod(xTimers, pdMS_TO_TICKS(time_ms), 10);
        xTimerStart(xTimers, 10);
    }
}

static void m_stop_timer(void)
{
    if (xTimers != NULL)
    {
        xTimerStop(xTimers, 10);
    }
}

void set_led_stt_smart_config(void)
{
    if (s_led_stt_obj.led_stt_type != LED_STYLE_SMARTCONFIG)
    {
        os_trace("set_led_stt_smart_config\r\n");
        /* Stop timer */
        m_stop_timer();

        /* set time */
        timeline_status[0] = timeline_status[1] = 200;
        s_led_stt_obj.led_handle_count = 0;
        s_led_stt_obj.max_number_handle = TWO_PULSE_COUNT;
        s_led_stt_obj.led_stt_type = LED_STYLE_SMARTCONFIG;

        /* start timer */
        m_start_timer(timeline_status[0]);
    }
}

void set_led_stt_ap_config(void)
{
    if (s_led_stt_obj.led_stt_type != LED_STYLE_APCONFIG)
    {
        os_trace("set_led_stt_ap_config\r\n");
        /* Stop timer */
        m_stop_timer();

        /* turn led off */
        hw_led_stt_off();

        /* set time */
        timeline_status[0] = 500;
        timeline_status[1] = timeline_status[2] = timeline_status[3] = 200;
        s_led_stt_obj.led_handle_count = 0;
        s_led_stt_obj.max_number_handle = FOUR_PULSE_COUNT;
        s_led_stt_obj.led_stt_type = LED_STYLE_APCONFIG;

        /* start timer */
        m_start_timer(timeline_status[0]);
    }
}

void set_led_stt_update_ota(void)
{
    if (s_led_stt_obj.led_stt_type != LED_STYLE_UPDATE)
    {
        os_trace("set_led_stt_update_ota\r\n");
        /* Stop timer */
        m_stop_timer();

        /* turn led off */
        hw_led_stt_off();

        // /* set time */
        // timeline_status[0] = timeline_status[1] = 500;
        // s_led_stt_obj.led_handle_count = 0;
        // s_led_stt_obj.max_number_handle = TWO_PULSE_COUNT;
        s_led_stt_obj.led_stt_type = LED_STYLE_UPDATE;

        /* start timer */
        // m_start_timer(timeline_status[0]);
    }
}

void led_stt_ota_loop(void)
{
    uint32_t time_toggle = 0;
    if (s_led_stt_obj.led_stt_type == LED_STYLE_UPDATE)
    {
        if (sys_get_tick_ms() - time_toggle > 500)
        {
            hw_toggle_led_stt();
            time_toggle = sys_get_tick_ms();
        }
    }
}

void set_led_stt_not_config(void)
{
    os_trace("%s\r\n", __func__);

    if (s_led_stt_obj.led_stt_type != LED_STYLE_NOT_CONFIGURED)
    {
        /* Stop timer */
        m_stop_timer();

        /* turn led off */
        hw_led_stt_off();

        /* set time */
        timeline_status[0] = 5000;
        timeline_status[1] = 200;
        s_led_stt_obj.led_handle_count = 0;
        s_led_stt_obj.max_number_handle = TWO_PULSE_COUNT;
        s_led_stt_obj.led_stt_type = LED_STYLE_NOT_CONFIGURED;

        /* start timer */
        m_start_timer(timeline_status[0]);
    }
}

void set_led_stt_disconnect_mqtt(void)
{
    os_trace("%s\r\n", __func__);

    if (s_led_stt_obj.led_stt_type != LED_STYLE_MQTT_DISCONN)
    {
        /* Stop timer */
        m_stop_timer();

        /* turn led off */
        hw_led_stt_off();

        /* set time */
        timeline_status[0] = 5000;
        timeline_status[1] = 200;
        s_led_stt_obj.led_handle_count = 0;
        s_led_stt_obj.max_number_handle = TWO_PULSE_COUNT;
        s_led_stt_obj.led_stt_type = LED_STYLE_MQTT_DISCONN;

        /* start timer */
        m_start_timer(timeline_status[0]);
    }
}

void set_led_stt_device_active(void)
{
    os_trace("%s\r\n", __func__);

    if (s_led_stt_obj.led_stt_type != LED_STYLE_ON)
    {
        m_stop_timer();
        hw_led_stt_on();
        s_led_stt_obj.led_stt_type = LED_STYLE_ON;
    }

}

/* public */
void m_led_stt_init(void)
{
    /* harware dependen */
    s_led_stt_obj.led_stt_type = LED_STYLE_UNDEFINED;
    s_led_stt_obj.max_number_handle = TWO_PULSE_COUNT;
    s_led_stt_obj.led_handle_count = 0;

    /* GPIO Leds init */
    hw_led_stt_cfg();
    hw_led_radar_cfg();

    /* init timer handler led */
    xTimers = xTimerCreate("timer_handler_led_stt",
                           pdMS_TO_TICKS(1),
                           pdTRUE,
                           (void *)0,
                           vTimerCallback);

    /* set time */
    timeline_status[0] = timeline_status[1] = 2000;
    s_led_stt_obj.led_handle_count = 0;
    s_led_stt_obj.max_number_handle = TWO_PULSE_COUNT;
    hw_led_stt_on();

    /* start timer */
    m_start_timer(timeline_status[0]);
}
