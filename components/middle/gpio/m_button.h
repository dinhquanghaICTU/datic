#ifndef _M_BUTTON_H_
#define _M_BUTTON_H_
#include <stdint.h>

typedef void (*p_btn_config_t)(uint32_t index);
typedef uint32_t (*p_btn_read_t)(uint32_t index);
typedef uint32_t (*p_get_tick_ms_t)(void);
typedef void (*p_btn_timer_init_t)(void);

typedef struct {
/* properties */
    uint32_t _btn_max_number_channel;
    uint32_t _btn_idle_level;

/* method */
    p_btn_config_t _button_conf_cb;
    p_btn_read_t _button_read_cb;
    p_btn_timer_init_t _button_timer_init_cb;
    p_get_tick_ms_t _button_get_tick_ms_cb;
} m_button_t;

/* need call from hardware at start-up */
void m_button_init(void);
m_button_t m_button_get_instace(void);

#endif /* _M_BUTTON_H_ */