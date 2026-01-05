#include "ble_conn.h"
#include "ble_config.h"
#include "ble_adv.h"
#include "conn.h"
#include "gatt.h"
#include <stdio.h>
#include "ble_adv.h"

#include <aos/kernel.h>
#include <bl_sys.h>
#include <hosal_uart.h>

static struct bt_conn *current_conn = NULL;
static ble_conn_cb_t user_conn_cb = NULL;
static ble_conn_cb_t user_disconn_cb = NULL;

// cho nay la bt conn
struct bt_conn* ble_conn_get_current(void)
{
    return current_conn;
};


void ble_conn_register_callbacks(ble_conn_cb_t conn_cb, ble_conn_cb_t disconn_cb){
    user_conn_cb = conn_cb;
    user_disconn_cb = disconn_cb;
}


// note use struct "bt_conn_info" -> info
static void on_connected(struct bt_conn *conn, u8_t err)
{
     struct bt_conn_info info;
    if (user_conn_cb) {
        if (user_conn_cb(conn, err) != 0) {
            return;
        }
    }

    if (bt_conn_get_info(conn, &info) != 0){
        return;
    }

    if (info.type != BT_CONN_TYPE_LE) {
        return;
    }

    current_conn = conn;
    printf(">>> Connected\r\n");
    // ble_conn_set_mtu();

    printf (">>> turn  off adv\r\n");
    ble_adv_stop();
}


static void on_disconnected(struct bt_conn *conn, u8_t reason)
{
     struct bt_conn_info info;
    if (user_disconn_cb) {
        if (user_disconn_cb(conn, reason) != 0) {
            return;
        }
    }

    if (bt_conn_get_info(conn, &info) != 0){
        return;
    }

    if (info.type != BT_CONN_TYPE_LE) {
        return;
    }

    current_conn = NULL;
    printf(">>> Disconnected, reason %d \r\n", reason);
    printf (">>> turn on adv");
    ble_adv_start();
    
}


// static void exchange_mtu_callback(struct bt_conn *conn, u8_t err, struct bt_gatt_exchange_params *params)
// {
//     if (conn) {
//         printf("[BLE] MTU exchange %s, size=%d\r\n", 
//                err == 0 ? "OK" : "FAIL", bt_gatt_get_mtu(conn));
//     }
// }

// static struct bt_gatt_exchange_params mtu_exchange_params;

// uint8_t ble_conn_set_mtu(void)
// {
//     if (current_conn == NULL) {
//         return 1;
//     }

//     mtu_exchange_params.func = exchange_mtu_callback;
//     if (bt_gatt_exchange_mtu(current_conn, &mtu_exchange_params) != 0) {
//         return 1;
//     }
//     return 0;
// }


// static void on_mtu_changed(struct bt_conn *conn, int mtu)
// {
//     printf(" MTU  %d\r\n", mtu);
// }

static struct bt_conn_cb conn_callbacks = {
    .connected = on_connected,
    .disconnected = on_disconnected,
    // .le_param_updated = on_le_param_updated,
};

void ble_conn_init(void)
{
    printf( ">>> init conn \r\n");
    bt_conn_cb_register(&conn_callbacks);
    conn_callbacks._next = NULL; 
    // bt_gatt_register_mtu_callback(on_mtu_changed);
}


