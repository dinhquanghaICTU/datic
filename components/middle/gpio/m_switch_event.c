#include "m_switch.h"
#include "hardware.h"
#include "m_database.h"

static cyclic_event_switch_t cyclic_timer_arr;
static uint32_t old_time_toggle = 0;

/************** START CONTROL SWITCH WITH CYCLIC TIMER **************/
uint8_t start_cylcic_timer(switch_action_t action, uint32_t time_act1,
                           uint32_t time_act2, uint32_t time_stamp)
{
    uint8_t channel_index = (action - 1) / 2;

    if (channel_index >= m_db_get_number_channel())
    {
        os_trace("%s out of range number channel\r\n", __func__);
        return 0;
    }

    if (cyclic_timer_arr.time_stamp && cyclic_timer_arr.time_stamp == time_stamp)
    {
        os_trace("%s same timestamp\r\n", __func__);
        return 0;
    }
    cyclic_timer_arr.time_stamp = time_stamp;

    if (action % 2 == 0)
    { /* off */
        cyclic_timer_arr.time_on = time_act2;
        cyclic_timer_arr.time_off = time_act1;
    }
    else
    { /* on */
        cyclic_timer_arr.time_on = time_act1;
        cyclic_timer_arr.time_off = time_act2;
    }

    m_control_switch(action, 2, 0, true, false);
    old_time_toggle = sys_get_tick_ms();
    cyclic_timer_arr.enable = 1;

    return 1;
}

void stop_cylcic_timer(uint32_t channel_index)
{
    uint8_t index = channel_index - 1;
    os_trace("stop_cylcic_timer %d\r\n", index);

    cyclic_timer_arr.enable = 0;
    cyclic_timer_arr.time_on = 0;
    cyclic_timer_arr.time_off = 0;
}

/* just use for reset factory database */
void clear_cyclic_timer(void)
{
    os_trace("clear_cyclic_timer - number channel: %d\r\n", m_db_get_number_channel());

    /* start from 1 because mobie app also start from at this point */
    for (uint8_t i = 1; i <= m_db_get_number_channel(); i++)
        stop_cylcic_timer(i);
}

void m_switch_cyclic_timer_loop(void)
{
    uint32_t current_tick = 0;
    uint8_t current_state;
    uint32_t time_diff = 0;

    /* loop for checking event switch controlled by user */
    if (cyclic_timer_arr.enable)
    {
        current_tick = sys_get_tick_ms();
        if (old_time_toggle <= current_tick)
        {
            time_diff = current_tick - old_time_toggle;
        }
        else
        {
            time_diff = UINT32_MAX - old_time_toggle + current_tick;
        }

        current_state = m_control_get_status_switch(0) % 2 ? CH1_ON : CH1_OFF;
        switch (current_state)
        {
        case CH1_ON:
        {
            if (time_diff > cyclic_timer_arr.time_on * 1000)
            {
                m_control_switch(CH2_OFF, 2, 0, true, false);
                old_time_toggle = sys_get_tick_ms();
                os_trace("Change from On -> Off, Time On was expired: %ld\r\n", cyclic_timer_arr.time_on);
            }
        }
        break;

        case CH1_OFF:
        {
            if (time_diff > pdMS_TO_TICKS(cyclic_timer_arr.time_off * 1000))
            {

                m_control_switch(CH2_ON, 2, 0, true, false);
                old_time_toggle = sys_get_tick_ms();
                os_trace("Change from Off -> On, Time Off was expired: %ld\r\n", cyclic_timer_arr.time_off);
            }
        }
        break;

        default:
            break;
        }
    }
}

/************************* handler release switch api ****************************/
/* this function use button's get_tick_ms() for check timer out of release switch if it's configured.
 * This function will be call from button_task for polling.
 */
static uint32_t ms_tick_control_switch;
static uint8_t user_control_switch_event;

void set_user_trigger_press_event(uint8_t channel_index, bool set_event, uint32_t action)
{

    if (channel_index >= m_db_get_number_channel())
        return;

    if (!set_event)
        return;

    ms_tick_control_switch = sys_get_tick_ms();

    uint32_t mode = m_sw_db_get_release_mode();
    if (mode == 0)
        return;

    user_control_switch_event = 1;
}

void m_switch_press_release_loop(void)
{
    static uint32_t time_diff_release = 0;
    uint32_t time_event = 0;
    uint32_t current_state = 0;
    uint32_t mode;

    /* loop for checking event switch controlled by user */
    time_diff_release = sys_get_tick_ms() - ms_tick_control_switch;
    time_event = m_sw_db_get_time_release() * 1000; /* s -> ms */

    if (user_control_switch_event && time_diff_release > time_event)
    {
        user_control_switch_event = 0;
        mode = m_sw_db_get_release_mode();
        current_state = (m_control_get_status_switch(0) % 2) ? 1 : 2;

        os_trace("release mode/state [%ld:%ld]\r\n", mode, current_state);

        if (mode == MODE_BOTH)
        {
            m_toggle_switch(1, 3, true, false);
        }
        else
        {
            if (current_state == mode)
            {
                m_toggle_switch(1, 3, true, false);
            }
        }
    }
}
