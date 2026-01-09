#ifndef CONTROL_H__
#define CONTROL_H__

#include <stdint.h>
#include <string.h>
#include <stdbool.h>

#include "system_typedef.h"

#define APP_MAX_CHANNEL_SUPPORT 4

typedef enum
{
	APP_SWITCH_ONE = 0,
	APP_SWITCH_TWO = 1,
	APP_SWITCH_THREE = 2,
	APP_SWITCH_FOUR = 3
} app_switch_pos_t;

typedef switch_action_t m_switch_state_t;

typedef enum
{
	UNLOCK = 0,
	LOCK
} m_switch_lock_t;

typedef enum
{
	SWITCH_ONE_KEEP_OLD_STATE = 0,
	SWITCH_ONE_DEFAULT_ON = 1,
	SWITCH_ONE_DEFAULT_OFF = 2,

	SWITCH_TWO_KEEP_OLD_STATE = 3,
	SWITCH_TWO_DEFAULT_ON = 4,
	SWITCH_TWO_DEFAULT_OFF = 5,

	SWITCH_THREE_KEEP_OLD_STATE = 6,
	SWITCH_THREE_DEFAULT_ON = 7,
	SWITCH_THREE_DEFAULT_OFF = 8,

	SWITCH_FOUR_KEEP_OLD_STATE = 9,
	SWITCH_FOUR_DEFAULT_ON = 10,
	SWITCH_FOUR_DEFAULT_OFF = 11

} m_state_default_switch_t;

typedef enum
{
	OS_NOT_RESET_DEFAULT = 0,
	OS_RESET_DEFAULT_BY_BTN = 1,
	OS_RESET_DEFAULT_BY_SERVER = 2
} app_reset_src_t;

typedef struct
{
	m_state_default_switch_t default_state;
	m_switch_state_t current_state;
	m_switch_lock_t channel_lock_state;
	uint32_t time_release;
	uint32_t release_mode;
} m_switch_info_t;

/* need call from hardware at start-up */
void m_switch_init(void);

m_switch_state_t m_control_get_status_switch(uint8_t index);

uint8_t m_control_switch(uint32_t action, uint32_t act_id, uint32_t uid,
						 bool respond, bool set_even_release);

uint8_t m_toggle_switch(uint32_t index, uint32_t act_id,
						bool respond, bool set_even_release);

/******************* SWITCH EVENT HANDLER ******************/
typedef enum
{
	NOT_USE = 0,
	MODE_ON = 1,
	MODE_OFF = 2,
	MODE_BOTH = 3
} press_release_mode_t;

typedef struct
{
	uint8_t enable;
	uint32_t time_stamp;
	uint32_t time_on;
	uint32_t time_off;
} cyclic_event_switch_t;

uint8_t start_cylcic_timer(switch_action_t action, uint32_t time_act1, uint32_t time_act2, uint32_t time_stamp);
void stop_cylcic_timer(uint32_t channel_index);
void set_user_trigger_press_event(uint8_t channel_index, bool set_event, uint32_t action);
void m_switch_cyclic_timer_loop(void);
void m_switch_press_release_loop(void);

#endif /* CONTROL_H__ */
