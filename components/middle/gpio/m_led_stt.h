#ifndef _LED_DRV_H_
#define _LED_DRV_H_

#include <stdint.h>

/********************** New handler ***********************/
typedef enum
{
   LED_STYLE_UNDEFINED = -1,
   LED_STYLE_NOT_CONFIGURED = 0,
   LED_STYLE_NORMAL = 1,
   LED_STYLE_SMARTCONFIG = 2,
   LED_STYLE_APCONFIG = 3,
   LED_STYLE_ON = 4,
   LED_STYLE_OFF = 5,
   LED_STYLE_UPDATE = 6,
   LED_STYLE_MQTT_DISCONN,
} led_stt_type_t;

typedef struct
{
   /* properties */
   uint8_t led_handle_count;
   uint8_t max_number_handle;
   led_stt_type_t led_stt_type;
} m_led_stt_t;


void set_led_stt_smart_config(void);

void set_led_stt_ap_config(void);

void set_led_stt_update_ota(void);

void led_stt_ota_loop(void);

void set_led_stt_not_config(void);

void set_led_stt_disconnect_mqtt(void);

void set_led_stt_device_active(void);

void m_led_stt_init(void);


#endif /* _LED_DRV_H_ */