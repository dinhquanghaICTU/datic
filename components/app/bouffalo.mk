# Component Makefile for App Layer Components

## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += .

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS +=

## Sub-components in the app layer
COMPONENT_SUBMODULES := app_api app_ble app_callback app_config app_event app_mqtt app_state app_task app_wifi
