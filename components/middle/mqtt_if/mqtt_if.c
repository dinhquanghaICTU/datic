#include "mqtt_if.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <FreeRTOS.h>
#include <task.h>
#include <lwip/sockets.h>
#include <lwip/netdb.h>
#include <lwip/tcp.h>
#include <lwip/ip_addr.h>
#include <errno.h>

static bool s_mqtt_connected = false;
static bool s_mqtt_connecting = false;
static mqtt_if_config_t s_mqtt_config = {0};
static int s_mqtt_socket = -1;
static mqtt_if_connected_cb_t s_connected_cb = NULL;
static mqtt_if_disconnected_cb_t s_disconnected_cb = NULL;
static mqtt_if_message_cb_t s_message_cb = NULL;
static TaskHandle_t s_mqtt_task_handle = NULL;

#define MQTT_DEFAULT_PORT 1883
#define MQTT_DEFAULT_KEEPALIVE 60
#define MQTT_RECV_BUFFER_SIZE 1024
#define MQTT_CONNECT     0x10
#define MQTT_CONNACK     0x20
#define MQTT_PUBLISH     0x30
#define MQTT_PUBACK      0x40
#define MQTT_SUBSCRIBE   0x82
#define MQTT_SUBACK      0x90
#define MQTT_PINGREQ     0xC0
#define MQTT_PINGRESP    0xD0
#define MQTT_DISCONNECT  0xE0
#define MQTT_CONNECT_FLAG_CLEAN_SESSION 0x02
#define MQTT_CONNECT_FLAG_USERNAME      0x80
#define MQTT_CONNECT_FLAG_PASSWORD      0x40

static int mqtt_encode_string(uint8_t *buf, const char *str)
{
    uint16_t len = strlen(str);
    buf[0] = (len >> 8) & 0xFF;
    buf[1] = len & 0xFF;
    memcpy(&buf[2], str, len);
    return len + 2;
}

static int mqtt_encode_remaining_length(uint8_t *buf, uint32_t length)
{
    int i = 0;
    do {
        uint8_t digit = length % 128;
        length /= 128;
        if (length > 0) {
            digit |= 0x80;
        }
        buf[i++] = digit;
    } while (length > 0);
    return i;
}

static int mqtt_send_connect(void)
{
    uint8_t packet[256];
    int pos = 0;
    
    packet[pos++] = MQTT_CONNECT;
    int rem_len_pos = pos;
    pos += 4;
    
    pos += mqtt_encode_string(&packet[pos], "MQTT");
    packet[pos++] = 0x04;
    
    uint8_t flags = MQTT_CONNECT_FLAG_CLEAN_SESSION;
    if (s_mqtt_config.username[0] != '\0') {
        flags |= MQTT_CONNECT_FLAG_USERNAME;
    }
    if (s_mqtt_config.password[0] != '\0') {
        flags |= MQTT_CONNECT_FLAG_PASSWORD;
    }
    packet[pos++] = flags;
    
    uint16_t keepalive = s_mqtt_config.keepalive > 0 ? s_mqtt_config.keepalive : MQTT_DEFAULT_KEEPALIVE;
    packet[pos++] = (keepalive >> 8) & 0xFF;
    packet[pos++] = keepalive & 0xFF;
    
    pos += mqtt_encode_string(&packet[pos], s_mqtt_config.client_id);
    
    if (s_mqtt_config.username[0] != '\0') {
        pos += mqtt_encode_string(&packet[pos], s_mqtt_config.username);
    }
    
    if (s_mqtt_config.password[0] != '\0') {
        pos += mqtt_encode_string(&packet[pos], s_mqtt_config.password);
    }
    
    uint32_t remaining_length = pos - rem_len_pos - 4;
    int rem_len_bytes = mqtt_encode_remaining_length(&packet[rem_len_pos], remaining_length);
    
    if (rem_len_bytes < 4) {
        memmove(&packet[rem_len_pos + rem_len_bytes], &packet[rem_len_pos + 4], remaining_length);
    }
    
    int total_len = rem_len_pos + rem_len_bytes + remaining_length;
    int sent = send(s_mqtt_socket, packet, total_len, 0);
    
    if (sent != total_len) {
        return -1;
    }
    
    return 0;
}

static int mqtt_send_subscribe(const char *topic)
{
    uint8_t packet[256];
    int pos = 0;
    
    packet[pos++] = MQTT_SUBSCRIBE;
    int vh_pos = 2;
    
    static uint16_t packet_id = 1;
    packet[vh_pos++] = (packet_id >> 8) & 0xFF;
    packet[vh_pos++] = packet_id & 0xFF;
    packet_id++;
    
    int topic_len = strlen(topic);
    packet[vh_pos++] = (topic_len >> 8) & 0xFF;
    packet[vh_pos++] = topic_len & 0xFF;
    memcpy(&packet[vh_pos], topic, topic_len);
    vh_pos += topic_len;
    
    packet[vh_pos++] = 0x01;
    
    uint32_t remaining_length = vh_pos - 2;
    int rem_len_bytes = mqtt_encode_remaining_length(&packet[1], remaining_length);
    
    if (rem_len_bytes > 1) {
        memmove(&packet[1 + rem_len_bytes], &packet[2], remaining_length);
    }
    
    int total_len = 1 + rem_len_bytes + remaining_length;
    int sent = send(s_mqtt_socket, packet, total_len, 0);
    
    if (sent != total_len) {
        return -1;
    }
    
    return 0;
}

static int mqtt_send_publish(const char *topic, const char *payload, int payload_len, bool retain)
{
    printf("================= send to toppic: %s ====payload: %s ===== payload len: %d \r\n", topic, payload , payload_len);
    uint8_t packet[512];
    int pos = 0;
    
    uint8_t fixed_header = MQTT_PUBLISH;
    if (retain) {
        fixed_header |= 0x01;
    }
    fixed_header |= 0x02;
    packet[pos++] = fixed_header;
    
    int rem_len_pos = pos;
    pos += 4;
    
    int topic_len = strlen(topic);
    packet[pos++] = (topic_len >> 8) & 0xFF;
    packet[pos++] = topic_len & 0xFF;
    memcpy(&packet[pos], topic, topic_len);
    pos += topic_len;
    
    static uint16_t pub_packet_id = 1;
    packet[pos++] = (pub_packet_id >> 8) & 0xFF;
    packet[pos++] = pub_packet_id & 0xFF;
    pub_packet_id++;
    
    if (payload && payload_len > 0) {
        memcpy(&packet[pos], payload, payload_len);
        pos += payload_len;
    }
    
    uint32_t remaining_length = pos - rem_len_pos - 4;
    int rem_len_bytes = mqtt_encode_remaining_length(&packet[rem_len_pos], remaining_length);
    
    if (rem_len_bytes < 4) {
        memmove(&packet[rem_len_pos + rem_len_bytes], &packet[rem_len_pos + 4], remaining_length);
    }
    
    int total_len = rem_len_pos + rem_len_bytes + remaining_length;
    int sent = send(s_mqtt_socket, packet, total_len, 0);
    
    if (sent != total_len) {
        return -1;
    }
    
    return 0;
}

static int mqtt_send_ping(void)
{
    uint8_t packet[2];
    packet[0] = MQTT_PINGREQ;
    packet[1] = 0x00;
    
    int sent = send(s_mqtt_socket, packet, 2, 0);
    if (sent != 2) {
        return -1;
    }
    return 0;
}

static void mqtt_parse_message(uint8_t *data, int len)
{
    if (len < 2) {
        return;
    }
    
    uint8_t packet_type = data[0] & 0xF0;
    
    switch (packet_type) {
        case MQTT_CONNACK:
            if (len >= 4 && data[3] == 0x00) {
                printf("===========================================connect mqtt oke ==================================\r\n");
                s_mqtt_connected = true;
                s_mqtt_connecting = false;
                if (s_connected_cb) {
                    s_connected_cb();
                }
            } else {
                s_mqtt_connecting = false;
            }
            break;
            
        case MQTT_PUBLISH: {
            int pos = 1;
            uint32_t remaining_length = 0;
            int multiplier = 1;
            uint8_t digit;
            do {
                if (pos >= len) return;
                digit = data[pos++];
                remaining_length += (digit & 0x7F) * multiplier;
                multiplier *= 128;
            } while ((digit & 0x80) != 0);
            
            if (pos + 2 > len) return;
            uint16_t topic_len = (data[pos] << 8) | data[pos + 1];
            pos += 2;
            
            if (pos + topic_len > len) return;
            char topic[128];
            if (topic_len < sizeof(topic)) {
                memcpy(topic, &data[pos], topic_len);
                topic[topic_len] = '\0';
                pos += topic_len;
            } else {
                return;
            }
            
            if ((data[0] & 0x06) == 0x02) {
                if (pos + 2 > len) {
                    return;
                }
                pos += 2;
            }
            
            int header_len = 1;
            int rem_len_bytes = (remaining_length < 128 ? 1 : remaining_length < 16384 ? 2 : remaining_length < 2097152 ? 3 : 4);
            header_len += rem_len_bytes;
            header_len += 2;
            header_len += topic_len;
            if ((data[0] & 0x06) == 0x02) {
                header_len += 2;
            }
            
            int payload_len = remaining_length - (header_len - 1 - rem_len_bytes);
            if (payload_len < 0) payload_len = 0;
            
            if (pos + payload_len <= len && payload_len > 0) {
                char payload[256];
                int copy_len = (payload_len < sizeof(payload) - 1) ? payload_len : (sizeof(payload) - 1);
                if (pos + copy_len <= len) {
                    memcpy(payload, &data[pos], copy_len);
                    payload[copy_len] = '\0';
                    
                    if (s_message_cb) {
                        s_message_cb(topic, payload, copy_len);
                    }
                }
            } else if (payload_len == 0) {
                if (s_message_cb) {
                    s_message_cb(topic, "", 0);
                }
            }
            break;
        }
        
        case MQTT_PINGRESP:
        case MQTT_SUBACK:
        case MQTT_PUBACK:
            break;
            
        default:
            break;
    }
}

static void mqtt_recv_task(void *params)
{
    (void)params;
    uint8_t buffer[MQTT_RECV_BUFFER_SIZE];
    uint32_t last_ping = 0;
    
    while (s_mqtt_socket >= 0) {
        if (s_mqtt_connected) {
            uint32_t now = aos_now_ms() / 1000;
            uint32_t keepalive = (s_mqtt_config.keepalive > 0 ? s_mqtt_config.keepalive : MQTT_DEFAULT_KEEPALIVE);
            if (last_ping == 0 || (now - last_ping >= keepalive)) {
                mqtt_send_ping();
                last_ping = now;
            }
        }
        
        fd_set read_fds;
        struct timeval timeout;
        FD_ZERO(&read_fds);
        if (s_mqtt_socket >= 0) {
            FD_SET(s_mqtt_socket, &read_fds);
        }
        timeout.tv_sec = 1;
        timeout.tv_usec = 0;
        
        int ret = select(s_mqtt_socket + 1, &read_fds, NULL, NULL, &timeout);
        if (ret > 0 && s_mqtt_socket >= 0 && FD_ISSET(s_mqtt_socket, &read_fds)) {
            int recv_len = recv(s_mqtt_socket, buffer, sizeof(buffer), 0);
            if (recv_len > 0) {
                mqtt_parse_message(buffer, recv_len);
            } else if (recv_len == 0) {
                s_mqtt_connected = false;
                s_mqtt_connecting = false;
                if (s_disconnected_cb) {
                    s_disconnected_cb();
                }
                break;
            } else {
                int err = errno;
                if (err == 0 || (err != EAGAIN && err != EWOULDBLOCK && err != EINTR)) {
                    s_mqtt_connected = false;
                    s_mqtt_connecting = false;
                    if (s_disconnected_cb) {
                        s_disconnected_cb();
                    }
                    break;
                }
            }
        } else if (ret < 0) {
            if (errno != EINTR) {
                break;
            }
        }
        
        aos_msleep(100);
    }
    
    s_mqtt_task_handle = NULL;
    vTaskDelete(NULL);
}

int mqtt_if_init(void)
{
    printf("=========================================== mqtt init oke ==================================\r\n");
    memset(&s_mqtt_config, 0, sizeof(s_mqtt_config));
    s_mqtt_config.port = MQTT_DEFAULT_PORT;
    s_mqtt_config.keepalive = MQTT_DEFAULT_KEEPALIVE;
    strcpy(s_mqtt_config.client_id, "device_");
    printf("=====================================clienid: %s ==== broker: %s ==== port:%d \r\n", s_mqtt_config.client_id,s_mqtt_config.broker, s_mqtt_config.port);
    return 0;
}

int mqtt_if_set_config(const mqtt_if_config_t *config)
{
    if (config == NULL) {
        return -1;
    }
    
    memcpy(&s_mqtt_config, config, sizeof(mqtt_if_config_t));
    
    if (s_mqtt_config.client_id[0] == '\0') {
        snprintf(s_mqtt_config.client_id, sizeof(s_mqtt_config.client_id), "device_%d", (int)aos_now_ms());
    }
    
    return 0;
}

int mqtt_if_connect(void)
{
    if (s_mqtt_connecting || s_mqtt_connected) {
        return -1;
    }
    
    if (s_mqtt_config.broker[0] == '\0') {
        return -1;
    }
    
    struct hostent *host = gethostbyname(s_mqtt_config.broker);
    if (host == NULL) {
        return -1;
    }
    
    s_mqtt_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (s_mqtt_socket < 0) {
        return -1;
    }
    
    struct sockaddr_in server_addr;
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_port = htons(s_mqtt_config.port);
    memcpy(&server_addr.sin_addr, host->h_addr_list[0], host->h_length);
    
    int connect_result = connect(s_mqtt_socket, (struct sockaddr *)&server_addr, sizeof(server_addr));
    if (connect_result < 0) {
        close(s_mqtt_socket);
        s_mqtt_socket = -1;
        return -1;
    }
    
    s_mqtt_connecting = true;
    
    if (mqtt_send_connect() < 0) {
        close(s_mqtt_socket);
        s_mqtt_socket = -1;
        s_mqtt_connecting = false;
        return -1;
    }
    
    if (s_mqtt_task_handle == NULL) {
        xTaskCreate(mqtt_recv_task, "mqtt_recv", 4096, NULL, 5, &s_mqtt_task_handle);
    }
    
    aos_msleep(1000);
    
    return 0;
}

int mqtt_if_disconnect(void)
{
    if (s_mqtt_socket < 0) {
        return 0;
    }
    
    uint8_t packet[2];
    packet[0] = MQTT_DISCONNECT;
    packet[1] = 0x00;
    send(s_mqtt_socket, packet, 2, 0);
    
    close(s_mqtt_socket);
    s_mqtt_socket = -1;
    s_mqtt_connected = false;
    s_mqtt_connecting = false;
    
    if (s_disconnected_cb) {
        s_disconnected_cb();
    }
    
    return 0;
}

bool mqtt_if_is_connected(void)
{
    return s_mqtt_connected;
}

int mqtt_if_subscribe(const char *topic)
{
    if (!s_mqtt_connected || topic == NULL) {
        return -1;
    }
    
    return mqtt_send_subscribe(topic);
}

int mqtt_if_unsubscribe(const char *topic)
{
    (void)topic;
    return 0;
}

int mqtt_if_publish(const char *topic, const char *payload, int payload_len, bool retain)
{
    if (!s_mqtt_connected || topic == NULL) {
        return -1;
    }
    
    if (payload_len < 0) {
        payload_len = strlen(payload);
    }
    
    return mqtt_send_publish(topic, payload, payload_len, retain);
}

void mqtt_if_set_connected_cb(mqtt_if_connected_cb_t cb)
{
    s_connected_cb = cb;
}

void mqtt_if_set_disconnected_cb(mqtt_if_disconnected_cb_t cb)
{
    s_disconnected_cb = cb;
}

void mqtt_if_set_message_cb(mqtt_if_message_cb_t cb)
{
    s_message_cb = cb;
}
