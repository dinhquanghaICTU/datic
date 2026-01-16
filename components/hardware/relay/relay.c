#include <stdio.h>
#include <bl_gpio.h>
#include <aos/kernel.h>
#include <bl_sys.h>
#include "hardware.h"
#include "relay.h"

static uint8_t s_relay_state = RELAY_OFF;

void relay_init(void){
    bl_gpio_enable_output(RELAY , 0, 0 );
    s_relay_state = RELAY_OFF;
    bl_gpio_output_set(RELAY, s_relay_state);
}

void relay_on(void){
    s_relay_state = RELAY_ON;
    bl_gpio_output_set(RELAY, s_relay_state);
       
}

void relay_off(void){
    s_relay_state = RELAY_OFF;
    bl_gpio_output_set(RELAY, s_relay_state);
}

void relay_toggle(void){
    s_relay_state = !s_relay_state;
    bl_gpio_output_set(RELAY, s_relay_state);
}

uint8_t relay_get_state(void){
    return (s_relay_state == RELAY_ON) ? 1 : 0;
}
