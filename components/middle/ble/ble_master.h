#ifndef __BLE_MASTER_H__
#define __BLE_MASTER_H__

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
#include "ble_interface.h"
#include "conn.h"
#include "gatt.h"
#include "hci_driver.h"


#define TARGET_DEVICE_NAME      "HNN_intern"  


#define MAX_SERVICES            10
#define MAX_CHARS_PER_SERVICE   10

typedef struct {
    struct bt_uuid_16 uuid;
    uint16_t handle;
    uint8_t properties;
} char_info_t;

typedef struct {
    struct bt_uuid_16 uuid;
    uint16_t start_handle;
    uint16_t end_handle;
    char_info_t chars[MAX_CHARS_PER_SERVICE];
    uint8_t char_count;
} service_info_t;

typedef struct {
    service_info_t services[MAX_SERVICES];
    uint8_t service_count;
} discover_result_t;


#define SERVICE_UUID_VAL        0x180F
#define CHAR_WRITE_UUID_VAL     0x2A19
#define CHAR_READ_UUID_VAL      0x2A1A
#define CHAR_NOTIFY_UUID_VAL    0x2A1B


#define SCAN_INTERVAL           320     
#define SCAN_WINDOW             48      


#define CONN_INTERVAL_MIN       0x0018  
#define CONN_INTERVAL_MAX       0x0028  
#define CONN_LATENCY            0
#define CONN_TIMEOUT            400     

void ble_master_init(void);


int ble_start_scan(void);


int ble_stop_scan(void);


void test_ble_master(void);


int connect(bt_addr_le_t *addr);


#endif //__BLE_MASTER_H__