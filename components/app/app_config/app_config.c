#include "app_config.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <easyflash.h>

int app_config_init(void)
{
    easyflash_init();
    return 0;
}

int app_config_load_wifi(wifi_config_t *config)
{
    size_t len;
    
    if (config == NULL) {
        return -1;
    }
    
    memset(config, 0, sizeof(wifi_config_t));
    
    len = ef_get_env_blob(FLASH_KEY_SSID, config->ssid, WIFI_SSID_MAX_LEN, NULL);
    if (len > 0 && len <= WIFI_SSID_MAX_LEN) {
        config->ssid[len] = '\0';
    } else {
        return -1;
    }
    
    len = ef_get_env_blob(FLASH_KEY_PASSWORD, config->password, WIFI_PASSWORD_MAX_LEN, NULL);
    if (len > 0 && len <= WIFI_PASSWORD_MAX_LEN) {
        config->password[len] = '\0';
        config->is_valid = true;
        return 0;
    }
    
    return -1;
}

int app_config_save_wifi(const char *ssid, const char *password)
{
    if (ssid == NULL || password == NULL) {
        return -1;
    }
    
    if (strlen(ssid) > WIFI_SSID_MAX_LEN || strlen(password) > WIFI_PASSWORD_MAX_LEN) {
        return -1;
    }
    
    ef_set_env_blob(FLASH_KEY_SSID, ssid, strlen(ssid));
    ef_set_env_blob(FLASH_KEY_PASSWORD, password, strlen(password));
    ef_save_env();
    
    return 0;
}

int app_config_clear_wifi(void)
{
    ef_del_env(FLASH_KEY_SSID);
    ef_del_env(FLASH_KEY_PASSWORD);
    ef_save_env();
    return 0;
}

bool app_config_has_wifi(void)
{
    size_t len_ssid, len_pass;
    char ssid[WIFI_SSID_MAX_LEN + 1];
    char password[WIFI_PASSWORD_MAX_LEN + 1];
    
    len_ssid = ef_get_env_blob(FLASH_KEY_SSID, ssid, WIFI_SSID_MAX_LEN, NULL);
    len_pass = ef_get_env_blob(FLASH_KEY_PASSWORD, password, WIFI_PASSWORD_MAX_LEN, NULL);
    
    return (len_ssid > 0 && len_ssid <= WIFI_SSID_MAX_LEN && 
            len_pass > 0 && len_pass <= WIFI_PASSWORD_MAX_LEN);
}

int app_config_save_relay_settings(uint8_t default_state, bool lock_button)
{
    char state_str[4];
    char lock_str[4];
    
    snprintf(state_str, sizeof(state_str), "%d", default_state);
    snprintf(lock_str, sizeof(lock_str), "%d", lock_button ? 1 : 0);
    
    ef_set_env(FLASH_KEY_RELAY_DEFAULT_STATE, state_str);
    ef_set_env(FLASH_KEY_RELAY_LOCK_BUTTON, lock_str);
    ef_save_env();
    
    return 0;
}

int app_config_load_relay_settings(uint8_t *default_state, bool *lock_button)
{
    char state_str[4];
    char lock_str[4];
    size_t len;
    
    if (default_state == NULL || lock_button == NULL) {
        return -1;
    }
    
    len = ef_get_env_blob(FLASH_KEY_RELAY_DEFAULT_STATE, state_str, sizeof(state_str) - 1, NULL);
    if (len > 0 && len < sizeof(state_str)) {
        state_str[len] = '\0';
        *default_state = (uint8_t)atoi(state_str);
    } else {
        *default_state = 0;
    }
    
    len = ef_get_env_blob(FLASH_KEY_RELAY_LOCK_BUTTON, lock_str, sizeof(lock_str) - 1, NULL);
    if (len > 0 && len < sizeof(lock_str)) {
        lock_str[len] = '\0';
        *lock_button = (atoi(lock_str) != 0);
    } else {
        *lock_button = false;
    }
    
    return 0;
}
