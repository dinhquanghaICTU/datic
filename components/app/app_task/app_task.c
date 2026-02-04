#include "app_task.h"
#include <aos/kernel.h>
#include <FreeRTOS.h>
#include <task.h>
#include "blog.h"
#include "../wifi_if/wifi_if.h"
#include "../gpio/m_ble.h"
#include "../app_config/app_config.h"
#include "../mqtt_if/mqtt_if.h"
#include "../../hardware/led/led.h"
#include "../../hardware/relay/relay.h"
#include "../../third_party/lib_button/app_btn.h"
#include "../../hardware/common/hardware.h"
#include "../../middle/wifi_if/wifi_if.h"
#include "../../middle/mqtt_if/mqtt_if.h"
#include <bl_gpio.h>
#include <bl_sys.h>
#include <stdbool.h>
#include <string.h>
#include "../gpio/m_ble.h" 


static TaskHandle_t g_task_button_handle = NULL;
static TaskHandle_t g_task_led_handle = NULL;
static TaskHandle_t g_task_wifi_handle = NULL;
static TaskHandle_t g_task_main_handle = NULL;
static bool g_led_blink_enable = false;
uint8_t g_btn_filter_cnt = MIN_BTN_FILTER_CNT;

app_event_t g_event_queue[10];
int g_event_queue_head = 0;
int g_event_queue_tail = 0;
static bool g_lock_button = false;
static bool g_lock_button_loaded = false;

static app_state_machine_t g_state_machine = {
    .current_state = APP_STATE_INIT,
    .next_state = APP_STATE_INIT
};

static app_state_t state_init_handler(app_event_t *event);
static app_state_t state_check_flash_handler(app_event_t *event);
static app_state_t state_ble_config_handler(app_event_t *event);
static app_state_t state_wifi_connecting_handler(app_event_t *event);
static app_state_t state_wifi_connected_handler(app_event_t *event);
static app_state_t state_wifi_failed_handler(app_event_t *event);
static app_state_t state_ble_master_handler(app_event_t *event);

static app_state_handler_t state_handlers[APP_STATE_MAX] = {
    state_init_handler,
    state_check_flash_handler,
    state_ble_config_handler,
    state_wifi_connecting_handler,
    state_wifi_connected_handler,
    state_wifi_failed_handler,
    state_ble_master_handler
};

static uint32_t app_get_tick_ms(void)
{
    return aos_now_ms();
}

//create 3 task 
void app_task_init(void)
{
    xTaskCreate(app_task_button, "btn_task", APP_TASK_BUTTON_STACK_SIZE, NULL, APP_TASK_BUTTON_PRIORITY, &g_task_button_handle);  // task nút nhấn
    xTaskCreate(app_task_led, "led_task", APP_TASK_LED_STACK_SIZE, NULL, APP_TASK_LED_PRIORITY, &g_task_led_handle); // task led
    // xTaskCreate(app_task_wifi, "wifi_task", APP_TASK_WIFI_STACK_SIZE, NULL, APP_TASK_WIFI_PRIORITY, &g_task_wifi_handle);
    xTaskCreate(app_task_main, "main_task", APP_TASK_MAIN_STACK_SIZE, NULL, APP_TASK_MAIN_PRIORITY, &g_task_main_handle); // task chính là logic
}



/*
    config cho button sử dụng thư viện lib button
*/
void app_task_button(void *params)
{
    // config button call lib app_btn 
    app_btn_hw_config_t btn_config[1] = {0};
    app_btn_config_t btn_cfg = {0};
    
    btn_config[0].pin = BUTTON1;
    btn_config[0].idle_level = 1;
    btn_config[0].debounce_val = 0;
    btn_config[0].debounce_counter = 0;
    btn_config[0].last_state = 1;
    
    btn_cfg.config = btn_config;
    btn_cfg.btn_count = 1;
    btn_cfg.get_tick_cb = app_get_tick_ms;
    btn_cfg.btn_initialize = NULL;
    btn_cfg.btn_read = NULL;
    
    bl_gpio_enable_input(BUTTON1, 0, 0);
    btn_cfg.btn_read = (app_btn_get_level_cb)bl_gpio_input_get_value;
    
    app_btn_initialize(&btn_cfg); // init button


    //đăng kí callback nếu hold và press thì sẽ gọi lại xử lý bên trong  
    app_btn_register_callback(APP_BTN_EVT_HOLD, app_button_hold_callback, NULL); 
    app_btn_register_callback(APP_BTN_EVT_PRESSED, app_button_press_callback, NULL); 
    
    while (1) { // loop scan sleep 20ms
        app_btn_scan(NULL);
        aos_msleep(20);
    }
}

void app_task_led(void *params)
{
    led_init(); 
    while (1) { //loop check   
        if (wifi_if_is_connected()) { //if status wifi connect = true  led turn on 
            led_on();
            aos_msleep(1000);
        } else { // else led blink
            led_toggle();
            aos_msleep(500);
        }
    }
}

// void app_task_wifi(void *params)
// {
//     app_wifi_task(params);
// }

void app_task_main(void *params)
{
    wifi_config_t wifi_cfg;
    app_event_t event = {0};
    blog_debug("MAIN\r\n");
    app_state_init(); //init app state
    app_mqtt_init(); // mqtt init đang kí call back 
    
    {
        extern int app_config_load_relay_settings(uint8_t *default_state, bool *lock_button);
        extern void app_callback_update_lock_button(bool locked);
        
        uint8_t default_state = 0;
        bool lock_button = false;
        if (app_config_load_relay_settings(&default_state, &lock_button) == 0) {
            if (default_state) {
                relay_on();
            } else {
                relay_off();
            }
            app_callback_update_lock_button(lock_button); // save is status lock 
        }
    }
    
    event.type = APP_EVENT_NONE;
    app_state_process_event(&event); // triger change state -> app check flash 
    
    int wait_count = 0;
    while (!wifi_if_is_mgmr_ready() && wait_count < 100) { //check wifi ready by aos_post_event set flag
        aos_msleep(100);
        wait_count++;
    }
    
    if (wifi_if_is_mgmr_ready()) { // khi manager wifi redy rồi nó sẽ vào đây 
        if (app_config_has_wifi()) { 
            if (app_config_load_wifi(&wifi_cfg) == 0) {
                app_state_set_next(APP_STATE_WIFI_CONNECTING);
                event.type = APP_EVENT_NONE;
                app_state_process_event(&event);
                app_wifi_connect(wifi_cfg.ssid, wifi_cfg.password);
            } else {
                app_state_set_next(APP_STATE_CHECK_FLASH);
                event.type = APP_EVENT_NONE;
                app_state_process_event(&event);
            }
        } else {
            app_state_set_next(APP_STATE_CHECK_FLASH);
            event.type = APP_EVENT_NONE;
            app_state_process_event(&event);
        }
    }
    
    while (1) {
        extern app_event_t g_event_queue[10];
        extern int g_event_queue_head;
        extern int g_event_queue_tail;

        if (g_event_queue_head != g_event_queue_tail) {
            event = g_event_queue[g_event_queue_head];
            g_event_queue_head = (g_event_queue_head + 1) % 10;
        } else {
            event.type = APP_EVENT_NONE;
            event.data = NULL;
        }

        app_state_t current_state = app_state_get_current();
        
        if (event.type == APP_EVENT_MQTT_TOGGLE) {
            relay_toggle();
            if (mqtt_if_is_connected()) {
                uint8_t relay_state = relay_get_state();
                app_mqtt_publish_state(relay_state ? "ON" : "OFF");
            }
            event.type = APP_EVENT_NONE;
        } else if (event.type == APP_EVENT_MQTT_SET_ON) {
            relay_on();
            if (mqtt_if_is_connected()) {
                app_mqtt_publish_state("ON");
            }
            event.type = APP_EVENT_NONE;
        } else if (event.type == APP_EVENT_MQTT_SET_OFF) {
            relay_off();
            if (mqtt_if_is_connected()) {
                app_mqtt_publish_state("OFF");
            }
            event.type = APP_EVENT_NONE;
        } else if (event.type == APP_EVENT_RELAY_STATE_CHANGED) {
            if (mqtt_if_is_connected()) {
                uint8_t relay_state = relay_get_state();
                app_mqtt_publish_state(relay_state ? "ON" : "OFF");
            }
            event.type = APP_EVENT_NONE;
        }
        else if (event.type == APP_EVENT_MQTT_BLE_MASTER_START) {
            int ret = app_ble_master_init();
            if (ret != 0) {
                event.type = APP_EVENT_NONE;
                continue;
            }
            ret = app_ble_master_start();
            app_state_set_next(APP_STATE_BLE_MASTER);
            event.type = APP_EVENT_NONE;
        }
        else if (event.type == APP_EVENT_MQTT_BLE_MASTER_STOP) {
            blog_info("[APP] Stopping BLE Master...\r\n");
            app_ble_master_stop();
            app_state_set_next(APP_STATE_WIFI_CONNECTED);
            event.type = APP_EVENT_NONE;
        }
        else if (event.type == APP_EVENT_MQTT_BLE_MASTER_CONNECT) { // khi có event này bắt đầu khởi tạo chạy master 
            blog_info("[APP] BLE Master connect command...\r\n");
            app_ble_master_connect(NULL);  
            event.type = APP_EVENT_NONE;
        }
        else if (event.type == APP_EVENT_MQTT_BLE_MASTER_DISCONNECT) {
            blog_info("[APP] BLE Master disconnect command...\r\n");
            app_ble_master_disconnect();
            event.type = APP_EVENT_NONE;
        }
        
        switch (current_state) {
            case APP_STATE_CHECK_FLASH:// if flag s_wifi_mgmr_ready= false will idle wait cline hold btn
                break;
            case APP_STATE_BLE_CONFIG:  // vào case này 
                if (!app_ble_is_running()) { // check cờ nếu đang không bật ble
                    aos_msleep(200);
                    app_ble_start(); // chạy ble lên 
                }
                break;
            case APP_STATE_WIFI_CONNECTING:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                break;
            case APP_STATE_WIFI_CONNECTED: // loop check wifi connected thì sẽ vào mqtt 
                if (app_ble_is_running()) { // check và tắt ble nếu đang còn chạy 
                    app_ble_stop();
                }
                {
                    static bool mqtt_connect_attempted = false;
                    static uint32_t mqtt_last_attempt = 0;
                    uint32_t now = aos_now_ms();
                    
                    if (!mqtt_if_is_connected() && !mqtt_connect_attempted) { // check xem mqtt đã được connect chưa nếu chưa xét lại broker 
                        const char *mqtt_broker = "172.20.10.3";
                        app_mqtt_start(mqtt_broker, 1883, NULL); // bắt đầu chạy mqtt chờ call back khi đang init trên main  chờ process
                        mqtt_connect_attempted = true;
                        mqtt_last_attempt = now;
                    } else if (!mqtt_if_is_connected() && mqtt_connect_attempted) {
                        if (now - mqtt_last_attempt > 10000) {
                            const char *mqtt_broker = "172.20.10.3";
                            app_mqtt_start(mqtt_broker, 1883, NULL);
                            mqtt_last_attempt = now;
                        }
                    } else if (mqtt_if_is_connected()) {
                        mqtt_connect_attempted = false;
                    }
                }
                break;
            case APP_STATE_WIFI_FAILED:
                if (app_ble_is_running()) {
                    app_ble_stop();
                }
                break;
            case APP_STATE_BLE_MASTER:
                if (event.type == APP_EVENT_BUTTON_HOLD) {
                    app_ble_master_stop();
                    app_state_set_next(APP_STATE_BLE_CONFIG);
                    event.type = APP_EVENT_NONE;
                }
                break;
            default:
                break;
        }
        
        aos_msleep(100);
    }
}

void app_set_led_blink(bool enable)
{
    g_led_blink_enable = enable;
}


void app_event_post(app_event_type_t type, void *data)
{
    g_event_queue[g_event_queue_tail].type = type;
    g_event_queue[g_event_queue_tail].data = data;
    g_event_queue_tail = (g_event_queue_tail + 1) % 10;
}

void app_button_hold_callback(int pin, int event, void *data) // when hold 
{
    
    if (app_ble_is_running()) { //check xem ble đang run hay không nếu đang chạy tắt ble 
        app_ble_stop();
        aos_msleep(500);
    }
    
    wifi_if_disconnect(); // disconnect wifi 
    aos_msleep(2000);

    app_config_clear_wifi(); //erase flash ssid and pass
    
    app_event_t evt = {
        .type = APP_EVENT_BUTTON_HOLD,
        .data = NULL
    };
    /* 
    bắn event hold lên  lúc này index của cái APP_EVENT_BUTTON_HOLD = 1 -> nó sẽ ánh xạ sang con trỏ hàm này 
     state_check_flash_handler trả về với event APP_EVENT_BUTTON_HOLD state  sẽ là APP_STATE_BLE_CONFIG 
     nó sẽ loop ở while(1)
    */
     app_state_process_event(&evt); 
}

void app_button_press_callback(int pin, int event, void *data)
{
    
    if (!g_lock_button_loaded) {
        uint8_t dummy_state;
        app_config_load_relay_settings(&dummy_state, &g_lock_button);
        g_lock_button_loaded = true;
    }
    
    if (g_lock_button) {
        return;
    }
    
    relay_toggle();
    
    if (mqtt_if_is_connected()) {
        uint8_t relay_state = relay_get_state();
        app_mqtt_publish_state(relay_state ? "ON" : "OFF");
    }
    
    app_event_post(APP_EVENT_BUTTON_PRESS, NULL);
    app_event_post(APP_EVENT_RELAY_STATE_CHANGED, NULL);
}

void app_callback_update_lock_button(bool locked)
{
    g_lock_button = locked;
    g_lock_button_loaded = true;
}

void app_wifi_connected_callback(void)
{
    app_event_t evt = {
        .type = APP_EVENT_WIFI_CONNECTED, 
        .data = NULL
    };
    app_state_process_event(&evt);
}

void app_wifi_disconnected_callback(void) 
{
    app_event_t evt = {
        .type = APP_EVENT_WIFI_DISCONNECTED, 
        .data = NULL
    };
    app_state_process_event(&evt);
}

void app_wifi_connect_failed_callback(void)
{
    app_event_t evt = {.type = APP_EVENT_WIFI_CONNECT_FAILED, .data = NULL};
    app_state_process_event(&evt);
}

void app_ble_config_done_callback(const char *ssid, const char *password)
{
    app_event_t evt = {
        .type = APP_EVENT_BLE_CONFIG_DONE, 
        .data = NULL
    };
    app_state_process_event(&evt);
}

void app_state_init(void)
{
    blog_debug("init state\r\n");
    memset(&g_state_machine, 0, sizeof(app_state_machine_t));
    g_state_machine.current_state = APP_STATE_INIT;
    g_state_machine.next_state = APP_STATE_INIT;
}

app_state_t app_state_get_current(void)
{
    return g_state_machine.current_state;
}

app_state_t app_state_get_next(void)
{
    return g_state_machine.next_state;
}

void app_state_set_next(app_state_t next_state)
{
    g_state_machine.next_state = next_state;
}

/*
    - hàm xử lý event 
    + khi có event sẽ vào đây 
*/

app_state_t app_state_process_event(app_event_t *event)
{
    if (event == NULL) { // nếu event rỗng  thì trả về state hiện tại luôn 
        return g_state_machine.current_state;
    }
    
    if (g_state_machine.current_state >= APP_STATE_MAX) { //nếu state hiện tại mà vượt quá enum đã định nghĩa thì cũng trả về state hiện tại
        return g_state_machine.current_state;
    }
    /*
        - tạo ra 1 biến kiểu app_state_t để lấy ra index của sate tiếp theo
        VD : state hiện tại đang là APP_STATE_INIT= 0, vì inndex của init = 0  nó sẽ ánh xạ với mảng state_handlers
        và gọi đến con trỏ hàm state_init_handler
        + và khi vào con trỏ hàm kia nó sẽ trả về state APP_STATE_CHECK_FLASH
        +vậy state mới là APP_STATE_CHECK_FLASH
    */
    app_state_t new_state = state_handlers[g_state_machine.current_state](event); //kèm thao cả event 
    
    if (new_state != g_state_machine.current_state) { // nếu thấy khác 
        blog_info("State transition: %d -> %d\r\n", g_state_machine.current_state, new_state);
        g_state_machine.current_state = new_state; // gán state hiện tại bằn index của state mới
    }
    
    return g_state_machine.current_state; // sau khi trả về done sẽ check ở ngoài loop while(1) - swich key 
}

static app_state_t state_init_handler(app_event_t *event)
{
    (void)event;
    blog_info("State: INIT\r\n");
    return APP_STATE_CHECK_FLASH;
}

static app_state_t state_check_flash_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        
        blog_info("State: CHECK_FLASH -> BLE_CONFIG button hold\r\n");
        return APP_STATE_BLE_CONFIG; // trả về state này 
    }
    blog_info("State: CHECK_FLASH (waiting for button hold)\r\n");
    
    app_state_t next = g_state_machine.next_state;
    if (next == APP_STATE_INIT) {
        
        return APP_STATE_CHECK_FLASH;
    }
    return next;
}

static app_state_t state_ble_config_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BLE_CONFIG_DONE) {
        blog_info("State: BLE_CONFIG -> WIFI_CONNECTING\r\n");
        return APP_STATE_WIFI_CONNECTING;
    }
    return APP_STATE_BLE_CONFIG;
}

static app_state_t state_wifi_connecting_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        blog_info("State: WIFI_CONNECTING -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    } else if (event->type == APP_EVENT_WIFI_CONNECTED) {
        blog_info("State: WIFI_CONNECTING -> WIFI_CONNECTED\r\n");
        return APP_STATE_WIFI_CONNECTED;
    } else if (event->type == APP_EVENT_WIFI_CONNECT_FAILED) {
        blog_info("State: WIFI_CONNECTING -> WIFI_FAILED\r\n");
        return APP_STATE_WIFI_FAILED;
    }
    return APP_STATE_WIFI_CONNECTING;
}

static app_state_t state_wifi_connected_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        blog_info("State: WIFI_CONNECTED -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    } else if (event->type == APP_EVENT_WIFI_DISCONNECTED) {
        blog_info("State: WIFI_CONNECTED -> WIFI_CONNECTING\r\n");
        return APP_STATE_WIFI_CONNECTING;
    }
    return APP_STATE_WIFI_CONNECTED;
}

static app_state_t state_wifi_failed_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        blog_info("State: WIFI_FAILED -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    }
    return APP_STATE_WIFI_FAILED;
}

static app_state_t state_ble_master_handler(app_event_t *event)
{
    if (event->type == APP_EVENT_BUTTON_HOLD) {
        blog_info("State: BLE_MASTER -> BLE_CONFIG (button hold)\r\n");
        return APP_STATE_BLE_CONFIG;
    }
    blog_info("State: BLE_MASTER (scanning for ADV)\r\n");
    return APP_STATE_BLE_MASTER;
}


int app_run(void)
{
    blog_info("HNN RUN\r\n");
    // init led and relay
    led_init(); 
    relay_init();
    if (app_config_init() != 0) { // init easy flash
        blog_error(">>> Failed to init config\r\n");
        return -1;
    }
    if (wifi_if_init() != 0) { // init stack wifi, init filter 
        blog_error(">>> Failed to init WiFi\r\n");
        return -1;
    }
    app_wifi_set_connected_cb(app_wifi_connected_callback); //register callback  
    app_wifi_set_disconnected_cb(app_wifi_disconnected_callback);
    app_wifi_set_connect_failed_cb(app_wifi_connect_failed_callback);
    
    if (app_ble_init() != 0) { // đăng kí call back cho ble khi có đủ ssid vs pass nó tự gọi callback này 
        blog_error(">>> Failed to init BLE\r\n");
        return -1;
    }
    app_ble_set_config_done_cb(app_ble_config_done_callback); // đăng kí callback khi ble coonfig thành công
    
    app_task_init(); // khởi tạo task 
    
    return 0;
}



