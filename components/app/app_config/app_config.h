#ifndef __APP_CONFIG_H__
#define __APP_CONFIG_H__

#include <stdint.h>
#include <stdbool.h>

#define WIFI_SSID_MAX_LEN 32
#define WIFI_PASSWORD_MAX_LEN 64
#define FLASH_KEY_SSID "wifi_ssid"
#define FLASH_KEY_PASSWORD "wifi_pass"
#define FLASH_KEY_RELAY_DEFAULT_STATE "relay_def"
#define FLASH_KEY_RELAY_LOCK_BUTTON "relay_lock"

typedef struct {
    char ssid[WIFI_SSID_MAX_LEN + 1];
    char password[WIFI_PASSWORD_MAX_LEN + 1];
    bool is_valid;
} wifi_config_t;

int app_config_init(void);
int app_config_load_wifi(wifi_config_t *config);
int app_config_save_wifi(const char *ssid, const char *password);
int app_config_clear_wifi(void);
bool app_config_has_wifi(void);

/* Relay settings */
int app_config_save_relay_settings(uint8_t default_state, bool lock_button);
int app_config_load_relay_settings(uint8_t *default_state, bool *lock_button);

#endif /* __APP_CONFIG_H__ */
