#include "led_state_machine.h"
#include "led.h"
#include <aos/kernel.h>   
#include <bl_sys.h>
#include <hosal_uart.h>

static led_ctx_t led_state;

static const led_ctx_t led_table[]={
    {LED_EVENT_ON, LED_STATE_OFF, LED_STATE_ON, led_on},
    {LED_EVENT_OFF, LED_STATE_ON, LED_STATE_OFF, led_off},
    
};

void led_state_init(void){
    printf(">>>> da init \r\n");
    led_init();
    led_state.current_state = LED_STATE_OFF;
}

void led_handle_action(led_event_t event){
    for(int i = 0; i < sizeof(led_table)/sizeof(led_table[0]); i++){
        if(led_table[i].event == event && led_table[i].current_state == led_state.current_state){
            led_table[i].action();
            led_state.current_state = led_table[i].next_state;
            break;
        }
    }
}