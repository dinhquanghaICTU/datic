#include "ble_master.h"
#include "bluetooth.h"
#include "ble_interface.h"
#include "conn.h"

#include <bl_sys.h>
#include <hosal_uart.h>
#include <aos/kernel.h>


static struct bt_conn *conn_mater_cur;



static bool adv_parse_cb(struct bt_data *data, void *user_data)
{
    char name[32];
    int err;
    

    if (data->type == BT_DATA_NAME_COMPLETE ||
        data->type == BT_DATA_NAME_SHORTENED) {

        memcpy(name, data->data, data->data_len);
        name[data->data_len] = '\0';
        printf(" %s \r\n", name);

        if (strcmp(name, TARGET_DEVICE_NAME) == 0) {
            const bt_addr_le_t *addr = user_data;
            printf("find target device done: %s \r\n ", name);
            err= connect(addr);
            if(err == -1){
                 printf("Connect failed err %d\r\n", err);
            }
            ble_stop_scan();
            return true; 
        }
    }
    return true;
}

int connect(bt_addr_le_t *addr){
    static struct bt_le_conn_param conn_param_bl = {
    .interval_min = 0x0018, 
    .interval_max = 0x0028, 
    .latency = 0,
    .timeout = 400,         
    };
    char mac [BT_ADDR_LE_STR_LEN];

    int err = bt_conn_create_le(addr,&conn_param_bl);

    if (err) {
        printf("Connect failed err %d\r\n", err);
        return -1;
    }  
    bt_addr_le_to_str(addr, mac, sizeof(mac));
    printf("Connected! %s\r\n", mac);

    // ble_get_conn_master_cur();
    return 0;
}


// struct bt_conn *ble_get_conn_master_cur()
// {
//     return conn_mater_cur;
// }


static void device_found(const bt_addr_le_t *addr, int8_t rssi,
                        uint8_t type, struct net_buf_simple *ad)
{
    // char addr_str[BT_ADDR_LE_STR_LEN];
    // bt_addr_le_to_str(addr, addr_str, sizeof(addr_str));
    
    // printf("Device found: %s RSSI %d \r\n", addr_str, rssi);
    bt_data_parse(ad, adv_parse_cb, (void *)addr);
    

}

int ble_start_scan(void)
{
    int err;
    
    struct bt_le_scan_param scan_param ;
    scan_param.type = BT_LE_SCAN_TYPE_ACTIVE;
    scan_param.filter_dup = BT_LE_SCAN_FILTER_DUPLICATE;
    scan_param.interval = 320;
    scan_param.window = 48;
    

    err = bt_le_scan_start(&scan_param, device_found);
    if (err) {
        printf("Start scan failed (err %d)", err);
        return err;
    }

    printf("Scanning started");
    return 0;
}

int ble_stop_scan(){
    int err;
    err= bt_le_scan_stop();
    if(err){
        printf("stop scan fail %d\r\n", err);
        return err;
    }
    printf("stop done\r\n");
    return 0;
}


// static struct bt_gatt_discover_params discover_params = {
//     .uuid = &write_uuid.uuid,
//     .func = discover_func,
//     .start_handle = 0x0001,
//     .end_handle = 0xFFFF,
//     .type = BT_GATT_DISCOVER_CHARACTERISTIC,
// };


// int ble_discover_services(void)
// {
//     int err;

//     if (!default_conn) {
//         printf("Not connected\r\n");
//         return -1;
//     }

//     discover_params.uuid = &service_uuid.uuid;
//     discover_params.func = discover_func;
//     discover_params.start_handle = BT_ATT_FIRST_ATTRIBUTE_HANDLE;
//     discover_params.end_handle = BT_ATT_LAST_ATTRIBUTE_HANDLE;
//     discover_params.type = BT_GATT_DISCOVER_CHARACTERISTIC;

//     err = bt_gatt_discover(default_conn, &discover_params);
//     if (err) {
//         printf("Discover failed (err %d)\r\n", err);
//         return err;
//     }

//     printf("Discovering...\r\n");
//     return 0;
// }



void test_ble_master(void){
    
    // ble_stack_start();
    // ble_regist_conn(ble_master_conn_cb);
    ble_start_scan();
    
}