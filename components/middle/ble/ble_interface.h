#ifndef __BLE_INTERFACE_H__
#define __BLE_INTERFACE_H__

#include <stdint.h>


#ifndef CONFIG_NET_BUF_USER_DATA_SIZE
#define CONFIG_NET_BUF_USER_DATA_SIZE 0
#endif

#ifndef CONFIG_BT_ID_MAX
#define CONFIG_BT_ID_MAX 1
#endif

#ifndef CONFIG_BT_MAX_PAIRED
#define CONFIG_BT_MAX_PAIRED 0
#endif

#ifndef CONFIG_BT_CONN
#define CONFIG_BT_CONN 1
#endif

#ifndef CFG_CON
#define CFG_CON CONFIG_BT_CONN
#endif

#ifndef CONFIG_BT_MAX_CONN
#define CONFIG_BT_MAX_CONN CFG_CON
#endif

#ifndef CONFIG_BT_GATT_CCC_MAX
#define CONFIG_BT_GATT_CCC_MAX CONFIG_BT_MAX_CONN
#endif


#ifndef BFLB_BLE
#define BFLB_BLE 1
#endif


#include "work_q.h"

#include "bluetooth.h"


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

#endif //__BLE_INTERFACE_H__


