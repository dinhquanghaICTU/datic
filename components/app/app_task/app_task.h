#ifndef __APP_TASK_H__
#define __APP_TASK_H__

#include <stdint.h>
#include <stdbool.h>

#define APP_TASK_BUTTON_STACK_SIZE 2048
#define APP_TASK_LED_STACK_SIZE 1024
#define APP_TASK_WIFI_STACK_SIZE 4096
#define APP_TASK_MAIN_STACK_SIZE 4096

#define APP_TASK_BUTTON_PRIORITY 5
#define APP_TASK_LED_PRIORITY 4
#define APP_TASK_WIFI_PRIORITY 3
#define APP_TASK_MAIN_PRIORITY 2

void app_task_init(void);
void app_task_button(void *params);
void app_task_led(void *params);
void app_task_wifi(void *params);
void app_task_main(void *params);
void app_set_led_blink(bool enable);

#endif /* __APP_TASK_H__ */
