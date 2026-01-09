#include "app_mqtt.h"
#include "../../middle/mqtt_if/mqtt_if.h"
#include "../../middle/mqtt_cmd_parser/mqtt_cmd_parser.h"
#include "../app_event/app_event.h"
#include "../app_callback/app_callback.h"
#include "../app_config/app_config.h"
#include "../../hardware/relay/relay.h"
#include <stdio.h>
#include <string.h>
#include "blog.h"
#include <aos/kernel.h>

extern void app_event_post(app_event_type_t type, void *data);

#define MQTT_TOPIC_PREFIX "device/relay01"
#define MQTT_TOPIC_COMMAND "/command"
#define MQTT_TOPIC_STATE "/state"

static char s_command_topic[128];
static char s_state_topic[128];
static char s_topic_prefix[64] = MQTT_TOPIC_PREFIX;

static void mqtt_message_handler(const char *topic, const char *payload, int payload_len)
{
    if (strstr(topic, MQTT_TOPIC_COMMAND) != NULL) {
        mqtt_cmd_t cmd;
        if (mqtt_cmd_parse(payload, payload_len, &cmd) == 0) {
            switch (cmd.type) {
                case MQTT_CMD_TOGGLE:
                    app_event_post(APP_EVENT_MQTT_TOGGLE, NULL);
                    break;
                case MQTT_CMD_SET:
                    if (cmd.params.set.state == RELAY_STATE_ON) {
                        app_event_post(APP_EVENT_MQTT_SET_ON, NULL);
                    } else {
                        app_event_post(APP_EVENT_MQTT_SET_OFF, NULL);
                    }
                    break;
                case MQTT_CMD_SETTINGS:
                    {
                        uint8_t default_state = (cmd.params.settings.default_state == RELAY_STATE_ON) ? 1 : 0;
                        app_config_save_relay_settings(default_state, cmd.params.settings.lock_button);
                        extern void app_callback_update_lock_button(bool locked);
                        app_callback_update_lock_button(cmd.params.settings.lock_button);
                    }
                    break;
                case MQTT_CMD_TIMER:
                case MQTT_CMD_TIMER_CANCEL:
                case MQTT_CMD_AUTO_TOGGLE_START:
                case MQTT_CMD_AUTO_TOGGLE_STOP:
                    break;
                default:
                    break;
            }
        }
    }
}

static void mqtt_connected_handler(void)
{
    mqtt_if_subscribe(s_command_topic);
    uint8_t relay_state = relay_get_state();
    app_mqtt_publish_state(relay_state ? "ON" : "OFF");
}

static void mqtt_disconnected_handler(void)
{
}

int app_mqtt_init(void)
{
    mqtt_if_init();
    mqtt_if_set_connected_cb(mqtt_connected_handler);
    mqtt_if_set_disconnected_cb(mqtt_disconnected_handler);
    mqtt_if_set_message_cb(mqtt_message_handler);
    
    snprintf(s_command_topic, sizeof(s_command_topic), "%s%s", s_topic_prefix, MQTT_TOPIC_COMMAND);
    snprintf(s_state_topic, sizeof(s_state_topic), "%s%s", s_topic_prefix, MQTT_TOPIC_STATE);
    
    return 0;
}

int app_mqtt_start(const char *broker, int port, const char *client_id)
{
    if (broker == NULL) {
        return -1;
    }
    
    mqtt_if_config_t config = {0};
    strncpy(config.broker, broker, sizeof(config.broker) - 1);
    config.port = port > 0 ? port : 1883;
    
    if (client_id) {
        strncpy(config.client_id, client_id, sizeof(config.client_id) - 1);
    } else {
        snprintf(config.client_id, sizeof(config.client_id), "device_%d", (int)aos_now_ms());
    }
    
    config.keepalive = 60;
    mqtt_if_set_config(&config);
    return mqtt_if_connect();
}

int app_mqtt_stop(void)
{
    return mqtt_if_disconnect();
}

bool app_mqtt_is_connected(void)
{
    blog_debug("connected\r\ns");
    return mqtt_if_is_connected();
}

int app_mqtt_publish_state(const char *state)
{
    if (!mqtt_if_is_connected() || state == NULL) {
        return -1;
    }
    return mqtt_if_publish(s_state_topic, state, strlen(state), true);
}

const char *app_mqtt_get_command_topic(void)
{
    return s_command_topic;
}

const char *app_mqtt_get_state_topic(void)
{
    return s_state_topic;
}
