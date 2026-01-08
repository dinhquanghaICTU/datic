# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/platform/hosal $(BL60X_SDK_PATH)/components/platform/hosal/include $(BL60X_SDK_PATH)/components/platform/hosal/sec_common $(BL60X_SDK_PATH)/components/platform/hosal/bl602_hal $(BL60X_SDK_PATH)/components/platform/hosal/platform_hal $(BL60X_SDK_PATH)/components/network/wifi/include $(BL60X_SDK_PATH)/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals $(BL60X_SDK_PATH)/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc $(BL60X_SDK_PATH)/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include $(BL60X_SDK_PATH)/components/platform/soc/bl602/bl602_std/BSP_Common/platform $(BL60X_SDK_PATH)/components/platform/hosal/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/hosal -lhosal 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += hosal
component-hosal-build: 
