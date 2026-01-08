# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(PROJECT_PATH)/components/third_party/jmnsn $(PROJECT_PATH)/components/third_party/jmnsn/include $(PROJECT_PATH)/components/third_party/jmnsn
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/jmnsn -ljmnsn 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += $(PROJECT_PATH)/components/third_party/jmnsn/ble $(PROJECT_PATH)/components/third_party/jmnsn/event_drivent $(PROJECT_PATH)/components/third_party/jmnsn/state_machine
COMPONENT_LIBRARIES += jmnsn
component-jmnsn-build: 
