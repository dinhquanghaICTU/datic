#include "ble_adv.h"
#include "ble_config.h"
#include "bluetooth.h"

#include <aos/kernel.h>
#include <bl_sys.h>
#include <hosal_uart.h>

static const struct bt_data adv_data[]=
{
    BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    BT_DATA(BT_DATA_NAME_COMPLETE, BLE_DEVICE_NAME, sizeof(BLE_DEVICE_NAME) - 1),
};


int ble_adv_start(void){
    int err= bt_le_adv_start (BT_LE_ADV_CONN,adv_data,ARRAY_SIZE(adv_data), NULL, 0);
    if (err){
        printf(">>>> have err %d\r\n",err);
        return -1;
    }
    printf(">>> start done \r\n");
    return 0;
}

int ble_adv_stop(void){
    printf(">>> stop done\r\n");
    return bt_le_adv_stop();
}