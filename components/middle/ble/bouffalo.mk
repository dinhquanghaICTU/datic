
COMPONENT_SRCS += ble_adv.c
COMPONENT_SRCS += ble_interface.c
COMPONENT_SRCS += ble_conn.c
COMPONENT_SRCS += ble_gatt.c


COMPONENT_ADD_INCLUDEDIRS += .
COMPONENT_ADD_INCLUDEDIRS += ../../../components/network/ble/blestack/src/include
COMPONENT_ADD_INCLUDEDIRS += ../../../components/network/ble/blestack/src/common/include
COMPONENT_ADD_INCLUDEDIRS += ../../../components/network/ble/blestack/src/host
COMPONENT_ADD_INCLUDEDIRS += ../../../components/network/ble/blestack/src/include/drivers
COMPONENT_ADD_INCLUDEDIRS += ../../../components/platform/soc/bl702/bl702_std/MCU_Common/device
COMPONENT_PRIV_INCLUDEDIRS +=

## Component dependencies
COMPONENT_DEPENDS += blestack

## BLE Configuration defines needed for blestack headers


# chu config cai nakhi khoi tao stack
CPPFLAGS += -DCONFIG_NET_BUF_USER_DATA_SIZE=4
CPPFLAGS += -DCONFIG_BT_ID_MAX=1
CPPFLAGS += -DCONFIG_BT_MAX_PAIRED=0
CPPFLAGS += -DCONFIG_BT_GATT_CCC_MAX=1
CPPFLAGS += -DCONFIG_BT_CONN=1
CPPFLAGS += -DCONFIG_BT=1
CPPFLAGS += -DCONFIG_BT_CENTRAL=1
CPPFLAGS += -DCONFIG_BT_OBSERVER=1
CPPFLAGS += -DCONFIG_BT_PERIPHERAL=1
CPPFLAGS += -DBFLB_BLE


#conn can co cai nay chu y 
CPPFLAGS += -DCFG_CON=1





#chu y them dependent
