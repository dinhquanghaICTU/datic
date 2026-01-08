# Component Makefile for Middle Layer Components

## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS += .

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS +=

## Sub-components in the middle layer
COMPONENT_SUBMODULES := ble event_drivent state_machine wifi_if mqtt_if mqtt_cmd_parser
