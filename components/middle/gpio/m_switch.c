#include "m_switch.h"
#include "hardware.h"

#include <stdint.h>

#include "m_button.h"
#include "m_mqtt.h"
#include "system_typedef.h"
#include "m_database.h"

m_switch_state_t m_control_get_status_switch(uint8_t index)
{
    uint8_t status_pin = hw_read_switch_pin(index);

    if (status_pin)
    {
        return CH2_ON;
    }

    return CH2_OFF;
}

/**
 * Public API. Call this function to control switch
 */
uint8_t m_control_switch(uint32_t action, uint32_t act_id, uint32_t uid, bool respond, bool set_even_release)
{
    uint8_t channel_index = (action - 1) / 2;
    state_t state = (action % 2) ? HIGH : LOW;

    // os_trace("m_control_switch: %d, %d\r\n", channel_index, state);

    if (channel_index > m_db_get_number_channel())
    {
        os_trace("channel out of index, %d/%d\r\n", channel_index, m_db_get_number_channel());
        return 0;
    }

    hw_write_switch_pin(channel_index, state);

    if (m_radar_db_get_control_output() == 2)
    {
        set_user_trigger_press_event(channel_index, set_even_release, action);
        m_sw_db_set_current_state(action);
    }

    /* respond server here */
    if (respond && uid == 0)
    {
        char respond_msg[256];
        memset(respond_msg, 0, sizeof(respond_msg));
        sprintf(respond_msg, "{\"%s\":%d, \"action\":%ld,"
                             "\"u\":%ld, \"act_id\": %d}",
                m_db_get_dev_type(), 0, action, uid, act_id);
        m_mqtt_publish(respond_msg, strlen(respond_msg));
    }

    return 1;
}

/* use for Button or Press-Release action */
uint8_t m_toggle_switch(uint32_t index, uint32_t act_id, bool respond, bool set_even_release)
{
    uint8_t pin_value = hw_read_switch_pin(index);

    // os_trace("m_toggle_switch %d: %d\r\n", index, pin_value);

    /* control switch one */
    if (index == APP_SWITCH_ONE)
    {
        if (pin_value)
        {
            return m_control_switch(CH1_OFF, act_id, 0, respond, set_even_release);
        }
        else
        {
            return m_control_switch(CH1_ON, act_id, 0, respond, set_even_release);
        }
    }

    /* control switch two */
    else if (index == APP_SWITCH_TWO)
    {
        if (pin_value)
        {
            return m_control_switch(CH2_OFF, act_id, 0, respond, set_even_release);
        }
        else
        {
            return m_control_switch(CH2_ON, act_id, 0, respond, set_even_release);
        }
    }

    /* control switch three */
    else if (index == APP_SWITCH_THREE)
    {
        if (pin_value)
        {
            return m_control_switch(CH3_OFF, act_id, 0, respond, set_even_release);
        }
        else
        {
            return m_control_switch(CH3_ON, act_id, 0, respond, set_even_release);
        }
    }

    /* control switch four three */
    else if (index == APP_SWITCH_FOUR)
    {
        if (pin_value)
        {
            return m_control_switch(CH4_OFF, act_id, 0, respond, set_even_release);
        }
        else
        {
            return m_control_switch(CH4_ON, act_id, 0, respond, set_even_release);
        }
    }

    return 0;
}

static void control_switch_default_state(void)
{
    uint8_t mode;
    uint8_t state = LED_STT_OFF;
    uint8_t channel = 1;

    os_trace("reason_reset: %u\r\n", m_db_get_reset_reason());
    if (m_db_get_reset_reason() != 0)
    {
        state = m_sw_db_get_current_state();
        os_trace("current_state - %d : %s\r\n", channel, state ? "ON" : "OFF");
        m_control_switch(state, 0, 1998, false, false);
        m_db_set_reset_reason(0);
        return;
    }

    if (m_radar_db_get_control_output() == ENABLE_CONTROL_OUTPUT)
    {
        m_control_switch(CH2_OFF, 0, 1998, false, false);
        return;
    }

    mode = m_sw_db_get_default_state();
    switch (mode)
    {
    case SWITCH_TWO_KEEP_OLD_STATE:
        state = m_sw_db_get_current_state();
        break;
    case SWITCH_TWO_DEFAULT_ON:
        state = CH2_ON;
        break;
    case SWITCH_TWO_DEFAULT_OFF:
        state = CH2_OFF;
        break;
    default:
        break;
    }

    m_control_switch(state, 0, 1998, false, false);
    state = m_control_get_status_switch(channel);
    m_sw_db_set_current_state(state);
}

/************************* public api ****************************/
void m_switch_init(void)
{
    os_trace("m_switch_init: %ld\r\n", m_db_get_number_channel());

    uint32_t i = 0;
    for (i = 0; i < m_db_get_number_channel(); i++)
        hw_switch_cfg(i);

    control_switch_default_state();
}
