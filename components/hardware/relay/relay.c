#include <bl_gpio.h>
#include <aos/kernel.h>   
#include <bl_sys.h>
#include <hosal_uart.h>
#include "hardware.h"
#include "relay.h"


void relay_init(void){
    bl_gpio_enable_output(RELAY , 0, 0 );
    bl_gpio_output_set(RELAY, RELAY_OFF);
}

void relay_on(void){
    bl_gpio_output_set(RELAY, RELAY_ON);   
}

void relay_off(void){
    bl_gpio_output_set(RELAY, RELAY_OFF);
}