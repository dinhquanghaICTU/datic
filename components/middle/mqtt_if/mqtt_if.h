#ifndef __MQTT_IF_H__
#define __MQTT_IF_H__

#include <stdbool.h>


typedef void (*mqtt_if_connected_cb_t)(void);
typedef void (*mqtt_if_disconnected_cb_t)(void);
typedef void (*mqtt_if_message_cb_t)(const char *topic, const char *payload, int payload_len);


typedef struct {
    char broker[128];      
    int port;              
    char client_id[64];    
    char username[64];     
    char password[64];     
    int keepalive;         
} mqtt_if_config_t;


int mqtt_if_init(void);


int mqtt_if_set_config(const mqtt_if_config_t *config);


int mqtt_if_connect(void);


int mqtt_if_disconnect(void);


bool mqtt_if_is_connected(void);


int mqtt_if_subscribe(const char *topic);


int mqtt_if_unsubscribe(const char *topic);


int mqtt_if_publish(const char *topic, const char *payload, int payload_len, bool retain);


void mqtt_if_set_connected_cb(mqtt_if_connected_cb_t cb);
void mqtt_if_set_disconnected_cb(mqtt_if_disconnected_cb_t cb);
void mqtt_if_set_message_cb(mqtt_if_message_cb_t cb);

#endif //__MQTT_IF_H__
