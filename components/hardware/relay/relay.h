#ifndef __RELAY_H__
#define __RELAY_H__

#include <stdint.h>

void relay_init(void);
void relay_on(void);
void relay_off(void);
void relay_toggle(void);
uint8_t relay_get_state(void);

#endif //__RELAY_H__