
#include <stdio.h>
#include <aos/kernel.h>
#include <bl_sys.h>
#include <hosal_uart.h>
#include "led_state_machine.h"
#include "relay_state_machine.h"
#include "ble_adv.h"



hosal_uart_dev_t uart_dev_log = {
    .config = {
        .uart_id = 0,
        .tx_pin = 16, 
        .rx_pin = 7,  
        .cts_pin = 255,
        .rts_pin = 255,
        .baud_rate = 115200,
        .data_width = HOSAL_DATA_WIDTH_8BIT,
        .parity = HOSAL_NO_PARITY,
        .stop_bits = HOSAL_STOP_BITS_1,
        .mode = HOSAL_UART_MODE_POLL,
    },
};

int main(void)
{
    bl_sys_init();
    hosal_uart_init(&uart_dev_log);

    led_state_init();
    relay_state_init();


    printf("DATiC BLE Device Started\r\n");
    printf("LED and Relay control via BLE enabled\r\n");

    printf(">>> check init \r\n");
    ble_slave_init();

    while (1)
    {

        aos_msleep(1000);
    }

}
