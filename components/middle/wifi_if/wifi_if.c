#include "wifi_if.h"

#include <stdio.h>
#include <string.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <bl_wifi.h>
#include <hal_wifi.h>
#include <wifi_mgmr_ext.h>


static bool s_wifi_connected = false;
static bool s_wifi_connecting = false;
static bool s_wifi_mgmr_ready = false;

static app_wifi_connected_cb_t g_connected_cb = NULL;
static app_wifi_disconnected_cb_t g_disconnected_cb = NULL;
static app_wifi_connect_failed_cb_t g_connect_failed_cb = NULL;

static wifi_if_connected_cb_t s_connected_cb = NULL;
static wifi_if_disconnected_cb_t s_disconnected_cb = NULL;
static wifi_if_connect_failed_cb_t s_connect_failed_cb = NULL;


static wifi_conf_t s_wifi_conf = {
    .country_code = "VN",
    .channel_nums = 0,
};

static void wifi_event_handler(input_event_t *event, void *private_data)
{
    (void)private_data;

    if (event->type != EV_WIFI) {
        return;
    }

    switch (event->code) {
        case CODE_WIFI_ON_INIT_DONE: // code init done
            printf("[WIFI_IF] WiFi INIT DONE\r\n");
            wifi_mgmr_start_background(&s_wifi_conf); 
            break;

        case CODE_WIFI_ON_MGMR_DONE: // code  khởi tạo manager  wifi station done
            printf("[WIFI_IF] WiFi MGMR DONE\r\n");
            s_wifi_mgmr_ready = true;
            break;

        case CODE_WIFI_ON_GOT_IP:  // trả về khi đã nhận được ip  từ dhcp cấp 
            printf("[WIFI_IF] WiFi connected and got IP\r\n");
            s_wifi_connected = true;
            s_wifi_connecting = false;
            if (s_connected_cb) {
                s_connected_cb();
            }
            break;

        case CODE_WIFI_ON_CONNECTED: // báo connect thành công 
            printf("[WIFI_IF] WiFi connected (no IP yet), waiting for DHCP...\r\n");
            
            break;

        case CODE_WIFI_ON_CONNECTING: // báo đang connect 
            printf("[WIFI_IF] WiFi connecting...\r\n");
            s_wifi_connecting = true;
            break;

        case CODE_WIFI_ON_DISCONNECT: { // báo đã ngắt kết nối
            printf("[WIFI_IF] WiFi disconnected\r\n");
            bool was_connected = s_wifi_connected;
            s_wifi_connected = false;
            s_wifi_connecting = false;

            if (was_connected) {
                if (s_disconnected_cb) {
                    s_disconnected_cb();
                }
            } else {
                
                if (s_connect_failed_cb) {
                    s_connect_failed_cb();
                }
            }
            break;
        }

        default:
            break;
    }
}

int wifi_if_init(void)
{
    static uint8_t wifi_init_done = 0;

    if (wifi_init_done) {
        return 0;
    }

    wifi_init_done = 1;
    printf("[WIFI_IF] Initializing WiFi...\r\n");

    aos_register_event_filter(EV_WIFI, wifi_event_handler, NULL); //when have event about code is "EV_WIFI" call callback - wifi_event_handler

    
    hal_wifi_start_firmware_task(); // runing wifi stack api for buffalo

    
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0); //send event nontify "wifi init done" call fun wifi_event_handler

    return 0;
}

int wifi_if_connect(const char *ssid, const char *password)
{
    wifi_interface_t wifi_interface;
    struct ap_connect_adv ext_param = {0};

    if (ssid == NULL || password == NULL) {
        return -1;
    }

    if (s_wifi_connecting) { // check nếu đã conneting từ truowvs nó sẽ báo lỗi 
        printf("[WIFI_IF] WiFi already connecting\r\n");
        return -1;
    }

    if (!s_wifi_mgmr_ready) { // nếu chưa khởi tạo wifi manager station báo lỗi 
        printf("[WIFI_IF] WiFi MGMR not ready, cannot connect yet\r\n");
        s_wifi_connecting = false;
        return -1;
    }

    printf("[WIFI_IF] Connecting to WiFi: %s\r\n", ssid);
    s_wifi_connecting = true; // set cờ s_wifi_connecting = true

    
    wifi_interface = wifi_mgmr_sta_enable(); // lấy lại status của khởi tạo manager station  

    
    wifi_mgmr_sta_autoconnect_enable(); // bật auto connect nếu rớt mạng tự connect lại 

    
    memset(&ext_param, 0, sizeof(ext_param)); //xóa cấu hình và set lại 
    ext_param.psk = NULL; //Không truyền PSK đã hash sẵn, tự tính sẵn từ lúc truyền pass
    ext_param.ap_info.type = AP_INFO_TYPE_PRESIST; //Lưu thông tin AP vào storage
    ext_param.ap_info.time_to_live = 5;// TTL = thời gian sống của record AP.
    ext_param.ap_info.band = 0; // tự chọn mode Auto 2.4GHZ||5GHZ mà wb2 chỉ hỗ trợ 2.4GHZ nên auto cũng tự vào 2.4GHZ
    ext_param.ap_info.use_dhcp = 1;  //Router sẽ cấp IP tự động

    /*
         bắt đầu kết nối tới AP vs cấu hình đã cho và chờ conback từ yloop gọi tới báo kết nối thành công 
         khi đã init wifi_if_init và đăng kí callback EV_WIFI, wifi_event_handler nó sẽ trả về theo code 

    */
    return wifi_mgmr_sta_connect_ext(wifi_interface, (char *)ssid, (char *)password, &ext_param); 
}

int wifi_if_disconnect(void)
{
    
    wifi_mgmr_sta_autoconnect_disable(); // tắt manager station quản lý wifi 
    wifi_mgmr_sta_disconnect();
    
    
    extern int wifi_mgmr_api_idle(void);
    wifi_mgmr_api_idle(); // trả về trạng thái idle cho manager station
    
    s_wifi_connected = false; // set cờ trạng thái về false
    s_wifi_connecting = false;
    return 0;
}

int wifi_if_disable(void)
{
    printf("[WIFI_IF] Completely disabling WiFi STA to release radio for BLE\r\n");
    
    
    wifi_mgmr_sta_autoconnect_disable();
    
    
    if (s_wifi_connected || s_wifi_connecting) {
        wifi_mgmr_sta_disconnect();
    }
    
    
    extern int wifi_mgmr_api_idle(void);
    wifi_mgmr_api_idle();
    
    
    
    
    wifi_interface_t wifi_interface;
    wifi_interface = wifi_mgmr_sta_enable();  
    if (wifi_interface) {
        printf("[WIFI_IF] Disabling WiFi STA interface to release radio...\r\n");
        wifi_mgmr_sta_disable(&wifi_interface);
    } else {
        printf("[WIFI_IF] Warning: Could not get WiFi interface, may already be disabled\r\n");
    }
    
    s_wifi_connected = false;
    s_wifi_connecting = false;
    
    
    printf("[WIFI_IF] Waiting for WiFi stack to fully release radio...\r\n");
    aos_msleep(3000);  
    
    printf("[WIFI_IF] WiFi STA disabled and radio should be released\r\n");
    return 0;
}

int wifi_if_enable(void)
{
    printf("[WIFI_IF] Re-enabling WiFi STA interface...\r\n");
    
    
    wifi_interface_t wifi_interface;
    wifi_interface = wifi_mgmr_sta_enable();
    
    if (wifi_interface) {
        printf("[WIFI_IF] WiFi STA interface re-enabled\r\n");
    } else {
        printf("[WIFI_IF] Warning: Failed to re-enable WiFi STA interface\r\n");
    }
    
    return 0;
}

bool wifi_if_is_connected(void)
{
    return s_wifi_connected;
}

bool wifi_if_is_mgmr_ready(void)
{
    return s_wifi_mgmr_ready;
}

void wifi_if_set_connected_cb(wifi_if_connected_cb_t cb)
{
    s_connected_cb = cb; // save call back in interface 
}

void wifi_if_set_disconnected_cb(wifi_if_disconnected_cb_t cb)
{
    s_disconnected_cb = cb;
}

void wifi_if_set_connect_failed_cb(wifi_if_connect_failed_cb_t cb)
{
    s_connect_failed_cb = cb;
}

int app_wifi_connect(const char *ssid, const char *password)
{
    if (ssid == NULL || password == NULL) { // nếu không có ssid vs pass báo error
        return -1;
    }

    if (!wifi_if_is_mgmr_ready()) { // check cờ này s_wifi_mgmr_ready nếu manager station chưa sẵn sàn 
        printf("[APP][WiFi] MGMR not ready, cannot connect\r\n"); // báo lỗi
        if (g_connect_failed_cb) {
            g_connect_failed_cb();
        }
        return -1;
    }

    return wifi_if_connect(ssid, password);  // trả về kết quả connect 
}


void app_wifi_set_connected_cb(app_wifi_connected_cb_t cb)
{
    g_connected_cb = cb; //save call back is variable, affter will call callback for value is poiter funcion
    wifi_if_set_connected_cb(cb); // send down wifi_if register for callback interface 
}

void app_wifi_set_disconnected_cb(app_wifi_disconnected_cb_t cb)
{
    g_disconnected_cb = cb;
    wifi_if_set_disconnected_cb(cb);
}

void app_wifi_set_connect_failed_cb(app_wifi_connect_failed_cb_t cb)
{
    g_connect_failed_cb = cb;
    wifi_if_set_connect_failed_cb(cb);
}