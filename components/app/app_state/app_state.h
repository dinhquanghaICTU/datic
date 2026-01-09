#ifndef __APP_STATE_H__
#define __APP_STATE_H__

#include <stdint.h>
#include "../app_event/app_event.h"

typedef enum {
    APP_STATE_INIT = 0,
    APP_STATE_CHECK_FLASH,
    APP_STATE_BLE_CONFIG,
    APP_STATE_WIFI_CONNECTING,
    APP_STATE_WIFI_CONNECTED,
    APP_STATE_WIFI_FAILED,
    APP_STATE_MAX
} app_state_t;

typedef struct {
    app_state_t current_state;
    app_state_t next_state;
} app_state_machine_t;

typedef app_state_t (*app_state_handler_t)(app_event_t *event);

void app_state_init(void);
app_state_t app_state_get_current(void);
app_state_t app_state_get_next(void);
void app_state_set_next(app_state_t next_state);
app_state_t app_state_process_event(app_event_t *event);

#endif //__APP_STATE_H__

