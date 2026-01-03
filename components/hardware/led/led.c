#include <bl_gpio.h>
#include <aos/kernel.h>   
#include <bl_sys.h>
#include <hosal_uart.h>
#include "hardware.h"


void led_init(void)
{
    printf(">>>>> this point\r\n");
    bl_gpio_enable_output(LED_STT, 0, 0);  
    bl_gpio_output_set(LED_STT, LED_STT_OFF);  
}

void led_on(void)
{
    printf(">>>>> led on\r\n");
    bl_gpio_output_set(LED_STT, LED_STT_ON);  
}

void led_off(void)
{
    printf(">>>>> led off\r\n");
    bl_gpio_output_set(LED_STT, LED_STT_OFF);  
}

void led_toggle(void)
{
    static uint8_t value = 0;
    bl_gpio_output_set(LED_STT, value);
    value = !value;
}

void led_blink(int times, int delay_ms)
{
    for(int i = 0; i < times; i++) {
        led_toggle();
        aos_msleep(delay_ms);
        led_toggle();
        aos_msleep(delay_ms);
    }
}
