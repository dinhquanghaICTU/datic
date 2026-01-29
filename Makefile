PROJECT_NAME := datic

# Get the directory where this Makefile is located
MAKEFILE_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
PROJECT_PATH := $(abspath $(MAKEFILE_DIR))
PROJECT_BOARD := evb
export PROJECT_PATH PROJECT_BOARD

BLECONTROLLER_LIBS := std m0s1 m0s1s
BLECONTROLLER_LIB_DEFAULT := std
BLECONTROLLER_LIB_PREFIX := blecontroller_602_

-include ./proj_config.mk

#CONFIG_TOOLPREFIX :=

BL60X_SDK_PATH := $(abspath $(PROJECT_PATH)/..)
$(info SDK PATH: $(BL60X_SDK_PATH))
export BL60X_SDK_PATH

COMPONENTS_NETWORK := sntp dns_server
COMPONENTS_BLSYS   := bltime blfdt blmtd blota bloop loopadc looprt loopset
COMPONENTS_VFS     := romfs

ifeq ($(CONFIG_BLECONTROLLER_LIB),all)
COMPONENTS_BLECONTROLLER := $(addprefix $(BLECONTROLLER_LIB_PREFIX), $(BLECONTROLLER_LIBS))
else
ifeq ($(findstring $(CONFIG_BLECONTROLLER_LIB), $(BLECONTROLLER_LIBS)),)
COMPONENTS_BLECONTROLLER := $(addprefix $(BLECONTROLLER_LIB_PREFIX), $(BLECONTROLLER_LIB_DEFAULT))
else
COMPONENTS_BLECONTROLLER := $(addprefix $(BLECONTROLLER_LIB_PREFIX), $(CONFIG_BLECONTROLLER_LIB))
endif
endif

ifeq ($(CONFIG_BT_TL),1)
COMPONENTS_BLE     := $(COMPONENTS_BLECONTROLLER)
else
COMPONENTS_BLE     := $(COMPONENTS_BLECONTROLLER) blestack blecontroller
endif

INCLUDE_COMPONENTS += freertos_riscv_ram bl602 ble602_hal bl602_std newlibc wifi wifi_manager wpa_supplicant bl602_os_adapter wifi_hosal hosal mbedtls_lts lwip lwip_dhcpd vfs yloop utils cli netutils blog blog_testc blcrypto_suite
INCLUDE_COMPONENTS += easyflash4 coredump
INCLUDE_COMPONENTS += $(COMPONENTS_NETWORK)
INCLUDE_COMPONENTS += $(COMPONENTS_BLSYS)
INCLUDE_COMPONENTS += $(COMPONENTS_VFS)
INCLUDE_COMPONENTS += $(PROJECT_NAME)
INCLUDE_COMPONENTS += bl_os_adapter cjson
INCLUDE_COMPONENTS += rfparam_adapter_tmp
INCLUDE_COMPONENTS += hardware/common
INCLUDE_COMPONENTS += hardware/led
INCLUDE_COMPONENTS += hardware/relay
INCLUDE_COMPONENTS += middle/state_machine/led_state
INCLUDE_COMPONENTS += middle/state_machine/relay_state
INCLUDE_COMPONENTS += middle/ble
INCLUDE_COMPONENTS += middle/wifi_if
INCLUDE_COMPONENTS += middle/mqtt_if
INCLUDE_COMPONENTS += middle/mqtt_cmd_parser
INCLUDE_COMPONENTS += middle/mqtt
INCLUDE_COMPONENTS += hardware/button
INCLUDE_COMPONENTS += third_party/lib_button
INCLUDE_COMPONENTS += third_party/jmnsn

INCLUDE_COMPONENTS += app/app_state
INCLUDE_COMPONENTS += app/app_event
INCLUDE_COMPONENTS += app/app_task
INCLUDE_COMPONENTS += app/app_callback
INCLUDE_COMPONENTS += app/app_config

INCLUDE_COMPONENTS += gpio

ifeq ($(CONFIG_BT),1)
INCLUDE_COMPONENTS += $(COMPONENTS_BLE)
ifeq ($(CONFIG_BT_MESH),1)
INCLUDE_COMPONENTS += blemesh
endif

# Export BLE configs to CFLAGS
CFLAGS += -DCONFIG_BT=$(CONFIG_BT)
CFLAGS += -DCONFIG_BT_CENTRAL=$(CONFIG_BT_CENTRAL)
CFLAGS += -DCONFIG_BT_PERIPHERAL=$(CONFIG_BT_PERIPHERAL)
CFLAGS += -DCONFIG_BT_CONN=$(CONFIG_BT_CONN)

# Set defaults if not defined in proj_config.mk
ifeq ($(CONFIG_BT_MAX_PAIRED),)
CONFIG_BT_MAX_PAIRED := 1
endif
ifeq ($(CONFIG_BT_ID_MAX),)
CONFIG_BT_ID_MAX := 1
endif
ifeq ($(CONFIG_BT_GATT_CCC_MAX),)
CONFIG_BT_GATT_CCC_MAX := 1
endif
ifeq ($(CONFIG_NET_BUF_USER_DATA_SIZE),)
CONFIG_NET_BUF_USER_DATA_SIZE := 4
endif

# Export BLE configuration defines
CFLAGS += -DCONFIG_BT_MAX_PAIRED=$(CONFIG_BT_MAX_PAIRED)
CFLAGS += -DCONFIG_BT_ID_MAX=$(CONFIG_BT_ID_MAX)
CFLAGS += -DCONFIG_BT_GATT_CCC_MAX=$(CONFIG_BT_GATT_CCC_MAX)
CFLAGS += -DBT_GATT_CCC_MAX=$(CONFIG_BT_GATT_CCC_MAX)
CFLAGS += -DCFG_CON=1
CFLAGS += -DCONFIG_NET_BUF_USER_DATA_SIZE=$(CONFIG_NET_BUF_USER_DATA_SIZE)

# Fix debug_printf undefined
CFLAGS += -Ddebug_printf=printf

# Fix struct k_work incomplete type - add include path for work_q.h
CFLAGS += -I$(BL60X_SDK_PATH)/components/network/ble/blestack/src/common/include

$(info ========================================)
$(info BLE Configuration:)
$(info   MAX_PAIRED=$(CONFIG_BT_MAX_PAIRED))
$(info   ID_MAX=$(CONFIG_BT_ID_MAX))
$(info   CCC_MAX=$(CONFIG_BT_GATT_CCC_MAX))
$(info   NET_BUF_USER_DATA=$(CONFIG_NET_BUF_USER_DATA_SIZE))
$(info ========================================)
endif

include $(BL60X_SDK_PATH)/make_scripts_riscv/project.mk