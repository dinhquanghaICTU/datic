#ifndef __BLE_INTERFACE_H__
#define __BLE_INTERFACE_H__

#include <stdint.h>

#include "work_q.h"

#include "bluetooth.h"


#define ADV_COMPANY_ID   0xF55F   
#define ADV_MAGIC        0xA1
#define ADV_PRODUCT_RELAY 0x01
#define ADV_MSG_RELAY_STATE 0x01
#define ADV_DEVICE_ID    0x0001   


struct bt_conn;

typedef int (*ble_gatt_conn_cb_t)(struct bt_conn *conn, uint8_t code);
typedef void (*ble_config_done_cb_t)(const char *ssid, const char *password);

void ble_reverse_byte(uint8_t *arr, uint32_t size);
void ble_set_config_done_cb(ble_config_done_cb_t cb);
int ble_server_init();
int ble_server_deinit(void);
void ble_stack_start(void);

struct bt_conn *ble_get_conn_cur(void);
int ble_regist_conn(ble_gatt_conn_cb_t cb);
int ble_regist_disconn(ble_gatt_conn_cb_t cb);
int ble_slave_init();
int ble_slave_deinit(void);
int ble_salve_adv();
int ble_adv_start(void);  
int ble_adv_stop(void);  
void apps_ble_stop();
void apps_ble_start();
uint8_t BleSetMtu();



void ble_scan_start(void);

void handle_ble_scan(void);


#endif //__BLE_INTERFACE_H__


