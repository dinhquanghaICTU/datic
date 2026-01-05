#ifndef __BLE_CONN_H__
#define __BLE_CONN_H__

#include "bluetooth.h"

typedef int (*ble_conn_cb_t)(struct bt_conn *conn, uint8_t err);
struct bt_conn* ble_conn_get_current(void);
void ble_conn_register_callbacks(ble_conn_cb_t conn_cb, ble_conn_cb_t disconn_cb);
void ble_conn_init(void);

uint8_t ble_conn_set_mtu(void);

#endif //__BLE_CONN_H__