#include "m_app_api.h"
#include "blog.h"
#include <bl_sys.h>
#include <hosal_uart.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include "ble_interface.h"
#include "ble_master.h"


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


void main(void)
{
    bl_sys_init();
    
    hosal_uart_init(&uart_dev_log);
    
    blog_info("System starting\r\n");
    

    blog_info("Starting TCP/IP Stack\r\n");
    tcpip_init(NULL, NULL);
    

    aos_msleep(100);
    
    app_run();
    
    blog_info("Main loop started\r\n");
    
    while (1) {
        aos_msleep(1000);
    }
}
