#
# "middle/ble" component makefile
#

# Include BLE common definitions
include $(BL60X_SDK_PATH)/components/network/ble/ble_common.mk

# Source files
APP_SRCS += ble_interface.c
APP_SRCS += ble_master.c
APP_SRCS += ble_central_api.c
APP_SRCS += ble_common_api.c

# Include directories
APP_INCS += .

# Fix struct k_work incomplete type
CPPFLAGS += -I$(BL60X_SDK_PATH)/components/network/ble/blestack/src/common/include
CPPFLAGS += -I$(BL60X_SDK_PATH)/components/network/ble/blestack/src/include
CPPFLAGS += -I$(BL60X_SDK_PATH)/components/network/ble/blestack/src/kernel/include

# Export BLE configuration defines
CPPFLAGS += -DCONFIG_BT_MAX_PAIRED=1
CPPFLAGS += -DCONFIG_BT_ID_MAX=1
CPPFLAGS += -DCONFIG_BT_GATT_CCC_MAX=1
CPPFLAGS += -DBT_GATT_CCC_MAX=1
CPPFLAGS += -DCONFIG_NET_BUF_USER_DATA_SIZE=4
CPPFLAGS += -Ddebug_printf=printf