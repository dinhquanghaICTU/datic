#ifndef __MQTT_IF_H__
#define __MQTT_IF_H__

#include <stdbool.h>

/* MQTT callback types */
typedef void (*mqtt_if_connected_cb_t)(void);
typedef void (*mqtt_if_disconnected_cb_t)(void);
typedef void (*mqtt_if_message_cb_t)(const char *topic, const char *payload, int payload_len);

/* MQTT configuration */
typedef struct {
    char broker[128];      /* MQTT broker address (e.g., "192.168.1.100") */
    int port;              /* MQTT broker port (default: 1883) */
    char client_id[64];    /* MQTT client ID */
    char username[64];     /* Optional username */
    char password[64];     /* Optional password */
    int keepalive;         /* Keepalive interval in seconds (default: 60) */
} mqtt_if_config_t;

/* Initialize MQTT interface */
int mqtt_if_init(void);

/* Set MQTT configuration */
int mqtt_if_set_config(const mqtt_if_config_t *config);

/* Connect to MQTT broker */
int mqtt_if_connect(void);

/* Disconnect from MQTT broker */
int mqtt_if_disconnect(void);

/* Check if MQTT is connected */
bool mqtt_if_is_connected(void);

/* Subscribe to a topic */
int mqtt_if_subscribe(const char *topic);

/* Unsubscribe from a topic */
int mqtt_if_unsubscribe(const char *topic);

/* Publish a message */
int mqtt_if_publish(const char *topic, const char *payload, int payload_len, bool retain);

/* Set callbacks */
void mqtt_if_set_connected_cb(mqtt_if_connected_cb_t cb);
void mqtt_if_set_disconnected_cb(mqtt_if_disconnected_cb_t cb);
void mqtt_if_set_message_cb(mqtt_if_message_cb_t cb);

#endif /* __MQTT_IF_H__ */
