#ifndef __MQTT_CMD_PARSER_H__
#define __MQTT_CMD_PARSER_H__

#include <stdint.h>
#include <stdbool.h>


typedef enum {
    MQTT_CMD_NONE = 0,
    MQTT_CMD_TOGGLE,
    MQTT_CMD_SET,
    MQTT_CMD_TIMER,
    MQTT_CMD_TIMER_CANCEL,
    MQTT_CMD_AUTO_TOGGLE_START,
    MQTT_CMD_AUTO_TOGGLE_STOP,
    MQTT_CMD_SETTINGS,
    MQTT_CMD_INVALID
} mqtt_cmd_type_t;


typedef enum {
    RELAY_STATE_OFF = 0,
    RELAY_STATE_ON = 1
} relay_state_t;


typedef enum {
    TIMER_ACTION_ON = 0,
    TIMER_ACTION_OFF = 1
} timer_action_t;


typedef struct {
    mqtt_cmd_type_t type;
    union {
        struct {
            relay_state_t state;  
        } set;
        struct {
            timer_action_t action; 
            uint32_t seconds;      
        } timer;
        struct {
            uint32_t interval;     
        } auto_toggle;
        struct {
            relay_state_t default_state;  
            bool lock_button;            
        } settings;
    } params;
} mqtt_cmd_t;


int mqtt_cmd_parse(const char *json_str, int json_len, mqtt_cmd_t *cmd);


const char *mqtt_cmd_type_to_string(mqtt_cmd_type_t type);

#endif //__MQTT_CMD_PARSER_H__
