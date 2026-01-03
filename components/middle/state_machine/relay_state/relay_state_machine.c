#include "relay_state_machine.h"
#include <aos/kernel.h>   
#include <bl_sys.h>
#include <hosal_uart.h>

static relay_ctx_t relay_ctx;

static const relay_ctx_t relay_table[]={
    {RELAY_EVENT_ON, RELAY_STATE_OFF , RELAY_STATE_ON, relay_on},
    {RELAY_EVENT_OFF,RELAY_STATE_ON,RELAY_STATE_OFF, relay_off},
};

void relay_state_init(void){    
    printf(">>> init relay\r\n");
    relay_init();
    relay_handle_event(RELAY_EVENT_OFF);
}

void relay_handle_event(relay_event_t event){
    for(int i = 0; i < sizeof(relay_table)/sizeof(relay_table[0]); i++){
        if(relay_table[i].event == event && relay_table[i].current_state == relay_ctx.current_state){
            relay_table[i].action();
            relay_ctx.current_state = relay_table[i].next_state;
            break;
        }
        
    }
}