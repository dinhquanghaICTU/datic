# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(PROJECT_PATH)/components/middle/ble $(PROJECT_PATH)/components/middle/ble/include $(PROJECT_PATH)/components/middle/ble $(PROJECT_PATH)/components/network/ble/blestack/src/include $(PROJECT_PATH)/components/network/ble/blestack/src/common/include $(PROJECT_PATH)/components/network/ble/blestack/src/host $(PROJECT_PATH)/components/network/ble/blestack/src/include/drivers $(PROJECT_PATH)/components/platform/soc/bl702/bl702_std/MCU_Common/device
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/ble -lble 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += ble
component-ble-build: component-blestack-build
