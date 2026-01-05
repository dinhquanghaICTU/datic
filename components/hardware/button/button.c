#include <aos/kernel.h>
#include <bl_sys.h>
#include <hosal_uart.h>
#include "button.h"
#include "hardware.h"      
#include "app_btn.h"
#include <aos/kernel.h>
#include <blog.h>
#include "bl_gpio.h"

uint8_t g_btn_filter_cnt = 8;
static button_callback_t user_callbacks[APP_BTN_EVT_MAX] = {0};

app_btn_hw_config_t btn_hw_config[1] = {
    {.pin = BUTTON1, .idle_level = 1, .debounce_val = 0, .debounce_counter = 0}
};


uint32_t button_get_tick_ms(void) {
    return (uint32_t)aos_now_ms();
}

app_btn_config_t btn_config={
    .config = btn_hw_config,
    .btn_count = 1,
    .get_tick_cb = button_get_tick_ms,
    .btn_initialize = button_gpio_init,
    .btn_read = button_read_level
};


void button_gpio_init(uint32_t pin) {
    bl_gpio_enable_input(pin, 1, 0);  
}


uint32_t button_read_level(uint32_t pin) {
    return bl_gpio_input_get_value(pin);
}


static int pin_to_button_id(uint32_t pin) {
    return (pin == BUTTON1) ? 0 : -1;
}

static void internal_button_callback(int pin, int lib_event, void *data) {
    int button_id = pin_to_button_id(pin);
    
    if (button_id < 0) return;
    
    blog_info("Button %d event: %d", button_id, lib_event);
    
    
    if (user_callbacks[lib_event]) {
        user_callbacks[lib_event](button_id, (app_btn_event_t)lib_event);
    }
}


static void button_scan_task(void *param) {
    blog_info("Button scan task started");
    
    while(1) {
        app_btn_scan(NULL);  
        aos_msleep(20);      
    }
}

void button_driver_init(void) {
    blog_info("Initializing button driver...");
    
    
    app_btn_initialize(&btn_config);
    app_btn_register_callback(APP_BTN_EVT_PRESSED, internal_button_callback, NULL);
    app_btn_register_callback(APP_BTN_EVT_HOLD, internal_button_callback, NULL);
    aos_task_new_ext(NULL, "btn_scan", button_scan_task, NULL, 2048, 5);
    
    blog_info("Button driver initialized");
}

void button_register_callback(app_btn_event_t event, button_callback_t callback) {
    user_callbacks[event] = callback;
    blog_info("Registered callback for event %d", event);
}

