#ifndef __MQTT_CMD_PARSER_H__
#define __MQTT_CMD_PARSER_H__

#include <stdint.h>
#include <stdbool.h>

/* MQTT Command Types */
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

/* Relay State */
typedef enum {
    RELAY_STATE_OFF = 0,
    RELAY_STATE_ON = 1
} relay_state_t;

/* Timer Action */
typedef enum {
    TIMER_ACTION_ON = 0,
    TIMER_ACTION_OFF = 1
} timer_action_t;

/* MQTT Command Structure */
typedef struct {
    mqtt_cmd_type_t type;
    union {
        struct {
            relay_state_t state;  /* For SET command */
        } set;
        struct {
            timer_action_t action; /* ON or OFF */
            uint32_t seconds;      /* Timer duration */
        } timer;
        struct {
            uint32_t interval;     /* Auto toggle interval in seconds */
        } auto_toggle;
        struct {
            relay_state_t default_state;  /* Default state on power on */
            bool lock_button;            /* Lock physical button */
        } settings;
    } params;
} mqtt_cmd_t;

/* Parse MQTT command from JSON string */
int mqtt_cmd_parse(const char *json_str, int json_len, mqtt_cmd_t *cmd);

/* Get command type string for logging */
const char *mqtt_cmd_type_to_string(mqtt_cmd_type_t type);

#endif /* __MQTT_CMD_PARSER_H__ */
