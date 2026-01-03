# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/ble/blecontroller_602_std $(BL60X_SDK_PATH)/components/network/ble/blecontroller_602_std/include $(BL60X_SDK_PATH)/components/network/ble/blecontroller/ble_inc
COMPONENT_LDFLAGS +=   -L$(BL60X_SDK_PATH)/components/network/ble/blecontroller_602_std/lib -lblecontroller_602_std 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/network/ble/blecontroller_602_std/lib/libblecontroller_602_std.a
component-blecontroller_602_std-build: 
