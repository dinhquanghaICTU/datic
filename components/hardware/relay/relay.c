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
    printf(">>> relay on\r\n");
    bl_gpio_output_set(RELAY, RELAY_ON);   
}

void relay_off(void){
    printf(">>> relay off\r\n");
    bl_gpio_output_set(RELAY, RELAY_OFF);
}

void relay_toggle(void){
    printf(">>> relay toggle\r\n");
    static uint8_t relay_state = RELAY_OFF;
    relay_state = !relay_state;
    bl_gpio_output_set(RELAY, relay_state);
}

uint8_t relay_get_state(void){
    // Read current GPIO state
    return bl_gpio_input_get_value(RELAY);
}