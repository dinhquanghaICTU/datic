#ifndef __BUTTON_H__
#define __BUTTON_H__

#include "app_btn.h" 


typedef void (*button_callback_t)(int button_id, app_btn_event_t event);

void button_driver_init(void);
void button_register_callback(app_btn_event_t event, button_callback_t callback);

void button_gpio_init(uint32_t pin);
uint32_t button_read_level(uint32_t pin);



#endif //__BUTTON_H__