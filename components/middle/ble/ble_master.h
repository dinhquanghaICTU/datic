#ifndef __BLE_MASTER_H__
#define __BLE_MASTER_H__

#include <stdint.h>
#include "stdbool.h"
#include "bluetooth.h"
#include "ble_interface.h"

#define OS_CMP(s1, s2) (strcmp(s1, s2) == 0)
#define MASTER_SCAN_MAX 100
#define NAME_LEN        30

typedef enum {
    BLE_MASTER_AUTOCONN_DISABLE = 0x00, 
    BLE_MASTER_AUTOCONN_ENABLE = 0x01,  
    BLE_MASTER_AUTOCONN_FORCE = 0x02    
} ble_master_autoconn_t;

typedef struct
{
    bool is_target;
    int8_t rssi;
    uint8_t mac[6];
    char name[NAME_LEN];
} ble_scan_info_t;

typedef struct
{
    uint8_t svr[16];
    uint8_t tx[16];
    uint8_t rx[16];
} server_uuid_t;


struct bt_conn *ble_master_get_conn_cur(void);
int ble_master_regist_conn(ble_gatt_conn_cb_t cb);
int ble_master_regist_disconn(ble_gatt_conn_cb_t cb);
int ble_master_init();
int ble_master_deinit(void);
int ble_master_scan(uint32_t scan_time);
int ble_master_find_target(uint32_t scan_time, uint8_t *mac, uint16_t *uuid, bt_addr_le_t *target_addr);
void ble_start_master(void);
void ble_master_stop(void);


#endif //__BLE_MASTER_H__