#ifndef __LED_STATE_MACHINE_H__
#define __LED_STATE_MACHINE_H__

typedef enum {
    LED_STATE_ON = 0,
    LED_STATE_OFF,
}led_state_t;

typedef enum {
    LED_EVENT_ON, 
    LED_EVENT_OFF,
}led_event_t;

typedef void (*action_led_t) (void);

typedef struct 
{
    led_event_t event;
    led_state_t current_state;
    led_state_t next_state;
    action_led_t action;
}led_ctx_t;

void led_state_init(void);
void led_handle_action(led_event_t event);

#endif //__LED_STATE_MACHINE_H__