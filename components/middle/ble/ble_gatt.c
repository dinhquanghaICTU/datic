#include "ble_gatt.h"
#include <string.h>
#include "bluetooth.h"
#include "ble_config.h"
#include "gatt.h"
#include "ble_conn.h"


static char wifi_ssid[33];
static char wifi_pass[65];
static bool ssid_received = false;
static bool pass_received = false;

static struct bt_conn  *current_conn = NULL;


static ssize_t wifi_ssid_write_cb (struct bt_conn *conn,
                                  const struct bt_gatt_attr *attr,
                                  const void *buf, u16_t len,
                                  u16_t offset, u8_t flags);

static void wifi_status_ccc_changed(const struct bt_gatt_attr *attr, u16_t value);



static ssize_t wifi_pass_write_cb (struct bt_conn *conn,
                                  const struct bt_gatt_attr *attr,
                                  const void *buf, u16_t len,
                                  u16_t offset, u8_t flags);

void ble_wifi_notify_status(wifi_status_t status);

static struct bt_gatt_attr ble_gatt_attrs[] =
{
    BT_GATT_PRIMARY_SERVICE(UUID_WIFI_SERVICE), //add service

    BT_GATT_CHARACTERISTIC(UUID_WIFI_SSID_RX,BT_GATT_CHRC_WRITE,BT_GATT_PERM_WRITE,NULL, wifi_ssid_write_cb, NULL),
    BT_GATT_CHARACTERISTIC(UUID_WIFI_PASS_RX,BT_GATT_CHRC_WRITE,BT_GATT_PERM_WRITE,NULL, wifi_pass_write_cb, NULL),
    BT_GATT_CHARACTERISTIC(UUID_WIFI_STATUS_TX,BT_GATT_CHRC_NOTIFY,BT_GATT_PERM_NONE, NULL, NULL, NULL),
    BT_GATT_CCC(wifi_status_ccc_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),
};
static struct bt_gatt_service ble_wifi_service = BT_GATT_SERVICE(ble_gatt_attrs);

void ble_wifi_init(void){
    
    memset(wifi_ssid, 0, sizeof(wifi_ssid));
    memset(wifi_pass, 0, sizeof(wifi_pass));
    ssid_received = false;
    pass_received = false;
    bt_gatt_service_register(&ble_wifi_service);
    printf(">>> init gatt done\r\n");
}



static void wifi_status_ccc_changed(const struct bt_gatt_attr *attr, u16_t value)
{
    if (value == BT_GATT_CCC_NOTIFY) {
        printf("[BLE] Notify enabled\r\n");
        ble_wifi_notify_status(WIFI_STATUS_IDLE);
    }
}

static ssize_t wifi_ssid_write_cb (struct bt_conn *conn,
                                  const struct bt_gatt_attr *attr,
                                  const void *buf, u16_t len,
                                  u16_t offset, u8_t flags)
{
    if(len >= sizeof(wifi_ssid)){
        ble_wifi_notify_status(BLE_FULL_BUFF);
    }
    else{
        memcpy(wifi_ssid, buf, len);
        wifi_ssid[len] = '\0';    
        ssid_received = true;
        printf("[DATA] %s , len: %d\r\n",wifi_ssid, len);

    }
    return len;

}

static ssize_t wifi_pass_write_cb (struct bt_conn *conn,
                                  const struct bt_gatt_attr *attr,
                                  const void *buf, u16_t len,
                                  u16_t offset, u8_t flags)
{
    if(len >= sizeof(wifi_pass)){
        ble_wifi_notify_status(BLE_FULL_BUFF);
    }
    else{
        memcpy(wifi_pass, buf, len);
        wifi_pass[len] = '\0';    
        ssid_received = true;
        printf("[DATA] %s , len: %d\r\n",wifi_pass, len);

    }
    return len;

}


void ble_wifi_notify_status(wifi_status_t status){
    if(!current_conn){
        return;
    }
    bt_gatt_notify(current_conn, &ble_gatt_attrs[6], &status, sizeof(status));
}

bool ble_wifi_is_config_ready(void){
    if(ssid_received && pass_received){
        printf(">>> wifi connected\r\n");
        ble_wifi_notify_status(WIFI_STATUS_CONNECTED);
        return true;
    }
    else {
        printf(">>> please check ssid and password \r\n");
        ble_wifi_notify_status(WIFI_STATUS_FAILED);
        return false;
    }
}

const char* ble_wifi_get_ssid(void){
    return wifi_ssid;

}

const char* ble_wifi_get_pass(void){
        return wifi_pass;
}

