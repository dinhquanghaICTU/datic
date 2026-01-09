#ifndef __APP_MQTT_H__
#define __APP_MQTT_H__

#include <stdbool.h>


int app_mqtt_init(void);


int app_mqtt_start(const char *broker, int port, const char *client_id);


int app_mqtt_stop(void);


bool app_mqtt_is_connected(void);


int app_mqtt_publish_state(const char *state);


const char *app_mqtt_get_command_topic(void);


const char *app_mqtt_get_state_topic(void);

#endif //__APP_MQTT_H__

