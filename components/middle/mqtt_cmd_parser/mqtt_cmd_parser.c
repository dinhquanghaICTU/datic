#include "mqtt_cmd_parser.h"
#include "../../third_party/jmnsn/jsmn.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stddef.h>

#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <semphr.h>
#include <aos/kernel.h>

#define MAX_TOKENS 64


static int json_str_eq(const char *json, jsmntok_t *tok, const char *key)
{
    if (tok->type == JSMN_STRING && 
        (int)strlen(key) == tok->end - tok->start &&
        strncmp(json + tok->start, key, tok->end - tok->start) == 0) {
        return 0;
    }
    return -1;
}


static int json_get_string_value(const char *json, jsmntok_t *tokens, int num_tokens, 
                                 const char *key, char *buf, int buf_size)
{
    for (int i = 1; i < num_tokens; i++) {
        if (json_str_eq(json, &tokens[i], key) == 0) {

            if (i + 1 < num_tokens && tokens[i + 1].type == JSMN_STRING) {
                int len = tokens[i + 1].end - tokens[i + 1].start;
                if (len < buf_size) {
                    memcpy(buf, json + tokens[i + 1].start, len);
                    buf[len] = '\0';
                    return len;
                }
            }
            break;
        }
    }
    return -1;
}


static int json_get_int_value(const char *json, jsmntok_t *tokens, int num_tokens, 
                              const char *key, int *value)
{
    for (int i = 1; i < num_tokens; i++) {
        if (json_str_eq(json, &tokens[i], key) == 0) {

            if (i + 1 < num_tokens && tokens[i + 1].type == JSMN_PRIMITIVE) {
                char num_str[32];
                int len = tokens[i + 1].end - tokens[i + 1].start;
                if (len < sizeof(num_str)) {
                    memcpy(num_str, json + tokens[i + 1].start, len);
                    num_str[len] = '\0';
                    *value = atoi(num_str);
                    return 0;
                }
            }
            break;
        }
    }
    return -1;
}


static int json_get_bool_value(const char *json, jsmntok_t *tokens, int num_tokens, 
                               const char *key, bool *value)
{
    for (int i = 1; i < num_tokens; i++) {
        if (json_str_eq(json, &tokens[i], key) == 0) {

            if (i + 1 < num_tokens && tokens[i + 1].type == JSMN_PRIMITIVE) {
                int len = tokens[i + 1].end - tokens[i + 1].start;
                if (len == 4 && strncmp(json + tokens[i + 1].start, "true", 4) == 0) {
                    *value = true;
                    return 0;
                } else if (len == 5 && strncmp(json + tokens[i + 1].start, "false", 5) == 0) {
                    *value = false;
                    return 0;
                }
            }
            break;
        }
    }
    return -1;
}

int mqtt_cmd_parse(const char *json_str, int json_len, mqtt_cmd_t *cmd)
{
   printf("====================== resspont recive : %s \r\n============================",json_str);
    if (json_str == NULL || cmd == NULL) {
        return -1;
    }

    memset(cmd, 0, sizeof(mqtt_cmd_t));
    cmd->type = MQTT_CMD_INVALID;


    jsmn_parser parser;
    jsmntok_t tokens[MAX_TOKENS];
    
    jsmn_init(&parser);
    int num_tokens = jsmn_parse(&parser, json_str, json_len, tokens, MAX_TOKENS);
    
    if (num_tokens < 0) {
        printf("[MQTT_CMD] JSON parse error: %d\r\n", num_tokens);
        return -1;
    }
    
    if (num_tokens < 1 || tokens[0].type != JSMN_OBJECT) {
        printf("MQTT_CMD] Expected JSON object\r\n");
        return -1;
    }


    char cmd_str[32];
    if (json_get_string_value(json_str, tokens, num_tokens, "command", cmd_str, sizeof(cmd_str)) < 0) {
        printf("[MQTT_CMD] Missing 'command' field\r\n");
        return -1;
    }


    if (strcmp(cmd_str, "TOGGLE") == 0) {
        cmd->type = MQTT_CMD_TOGGLE;
    } else if (strcmp(cmd_str, "SET") == 0) {
        cmd->type = MQTT_CMD_SET;
        

        char state_str[16];
        if (json_get_string_value(json_str, tokens, num_tokens, "state", state_str, sizeof(state_str)) >= 0) {
            if (strcmp(state_str, "ON") == 0) {
                
                cmd->params.set.state = RELAY_STATE_ON;
            } else if (strcmp(state_str, "OFF") == 0) {
                
                cmd->params.set.state = RELAY_STATE_OFF;
            } else {
                printf("MQTT_CMD] Invalid state: %s\r\n", state_str);
                return -1;
            }
        } else {
            printf("[MQTT_CMD] Missing 'state' field for SET command\r\n");
            return -1;
        }
    } else if (strcmp(cmd_str, "TIMER") == 0) {
        cmd->type = MQTT_CMD_TIMER;
        

        char action_str[16];
        if (json_get_string_value(json_str, tokens, num_tokens, "action", action_str, sizeof(action_str)) >= 0) {
            if (strcmp(action_str, "ON") == 0) {
                cmd->params.timer.action = TIMER_ACTION_ON;
            } else if (strcmp(action_str, "OFF") == 0) {
                cmd->params.timer.action = TIMER_ACTION_OFF;
            } else {
                printf("[MQTT_CMD] Invalid action: %s\r\n", action_str);
                return -1;
            }
        } else {
            printf("[MQTT_CMD] Missing 'action' field for TIMER command\r\n");
            return -1;
        }

        int seconds = 0;
        if (json_get_int_value(json_str, tokens, num_tokens, "seconds", &seconds) >= 0) {
            cmd->params.timer.seconds = (uint32_t)seconds;
        } else {
            printf("[MQTT_CMD] Missing 'seconds' field for TIMER command\r\n");
            return -1;
        }
    } else if (strcmp(cmd_str, "TIMER_CANCEL") == 0) {
        cmd->type = MQTT_CMD_TIMER_CANCEL;
    } else if (strcmp(cmd_str, "AUTO_TOGGLE_START") == 0) {
        cmd->type = MQTT_CMD_AUTO_TOGGLE_START;

        int interval = 0;
        if (json_get_int_value(json_str, tokens, num_tokens, "interval", &interval) >= 0) {
            cmd->params.auto_toggle.interval = (uint32_t)interval;
        } else {
            printf("[MQTT_CMD] Missing 'interval' field for AUTO_TOGGLE_START command\r\n");
            return -1;
        }
    } else if (strcmp(cmd_str, "AUTO_TOGGLE_STOP") == 0) {
        cmd->type = MQTT_CMD_AUTO_TOGGLE_STOP;
    } else if (strcmp(cmd_str, "SETTINGS") == 0) {
        cmd->type = MQTT_CMD_SETTINGS;
        

        char default_state_str[16];
        if (json_get_string_value(json_str, tokens, num_tokens, "defaultState", default_state_str, sizeof(default_state_str)) >= 0) {
            if (strcmp(default_state_str, "ON") == 0) {
                cmd->params.settings.default_state = RELAY_STATE_ON;
            } else if (strcmp(default_state_str, "OFF") == 0) {
                cmd->params.settings.default_state = RELAY_STATE_OFF;
            }
        }
        

        bool lock_button = false;
        json_get_bool_value(json_str, tokens, num_tokens, "lockButton", &lock_button);
        cmd->params.settings.lock_button = lock_button;
    } else {
        printf("[MQTT_CMD] Unknown command: %s\r\n", cmd_str);
        return -1;
    }

    return 0;
}

const char *mqtt_cmd_type_to_string(mqtt_cmd_type_t type)
{
    switch (type) {
        case MQTT_CMD_NONE:
            return "NONE";
        case MQTT_CMD_TOGGLE:
            return "TOGGLE";
        case MQTT_CMD_SET:
            return "SET";
        case MQTT_CMD_TIMER:
            return "TIMER";
        case MQTT_CMD_TIMER_CANCEL:
            return "TIMER_CANCEL";
        case MQTT_CMD_AUTO_TOGGLE_START:
            return "AUTO_TOGGLE_START";
        case MQTT_CMD_AUTO_TOGGLE_STOP:
            return "AUTO_TOGGLE_STOP";
        case MQTT_CMD_SETTINGS:
            return "SETTINGS";
        case MQTT_CMD_INVALID:
        default:
            return "INVALID";
    }
}
