#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>

#include <aos/kernel.h>
#include <bl_sys.h>
#include <hosal_uart.h>

#include "bluetooth.h"
#include "conn.h"
#include "hci_driver.h"
#include "hci_core.h"
#include "ble_lib_api.h"

#include "ble_config.h"
#include "ble_adv.h"
#include "ble_interface.h"
#include "ble_conn.h"
#include "ble_gatt.h"


//must config mac for ble_adv
static void bt_enable_cb(int err)
{
    if (!err)
    {
        bt_addr_le_t bt_addr;
        bt_get_local_public_address(&bt_addr);
        bt_addr.a.val[5] = 0x88;
        bt_addr.a.val[4] = 0x88;
        bt_addr.a.val[3] = 0x88;
        bt_addr.a.val[2] = 0x88;
        bt_addr.a.val[1] = 0x88;
        bt_addr.a.val[0] = 0x88;
        printf(">>>MAC: %02x:%02x:%02x:%02x:%02x:%02x \r\n",
               bt_addr.a.val[5], bt_addr.a.val[4], bt_addr.a.val[3], bt_addr.a.val[2], bt_addr.a.val[1], bt_addr.a.val[0]);
    }
}

//enable stack for ble
void ble_stack_init(void)
{
    
    ble_controller_init(configMAX_PRIORITIES - 1);
    
    
    hci_driver_init();
    bt_enable(bt_enable_cb);
    
}

void ble_test_adv(void)
{   
       ble_stack_init();
    // ble_test_adv();
    
    if (ble_adv_start() == 0) {
        printf(">>> Device name: %s\r\n", BLE_DEVICE_NAME);
        ble_conn_init();
        ble_wifi_init();
    } 
    
}