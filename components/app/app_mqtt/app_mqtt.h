#ifndef __APP_MQTT_H__
#define __APP_MQTT_H__

#include <stdbool.h>

/* Initialize MQTT app layer */
int app_mqtt_init(void);

/* Start MQTT connection (called after WiFi connected) */
int app_mqtt_start(const char *broker, int port, const char *client_id);

/* Stop MQTT connection */
int app_mqtt_stop(void);

/* Check if MQTT is connected */
bool app_mqtt_is_connected(void);

/* Publish relay state */
int app_mqtt_publish_state(const char *state);

/* Get command topic */
const char *app_mqtt_get_command_topic(void);

/* Get state topic */
const char *app_mqtt_get_state_topic(void);

#endif /* __APP_MQTT_H__ */
