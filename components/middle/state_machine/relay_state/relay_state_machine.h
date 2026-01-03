#ifndef __RELAY_STATE_MACHINE__
#define __RELAY_STATE_MACHINE__

#include "relay.h"

typedef enum {
    RELAY_EVENT_ON,
    RELAY_EVENT_OFF,
}relay_event_t;

typedef enum {
    RELAY_STATE_ON,
    RELAY_STATE_OFF,
}relay_state_t;


typedef void (*relay_action_t) (void);

typedef struct 
{
    relay_event_t event;
    relay_state_t current_state;
    relay_state_t next_state;
    relay_action_t action;
}relay_ctx_t;



void relay_state_init(void);
void relay_handle_event(relay_event_t event);



#endif //__RELAY_STATE_MACHINE__