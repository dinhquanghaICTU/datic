// #include "m_app_api.h"
// #include "blog.h"
// #include <bl_sys.h>
// #include <hosal_uart.h>
// #include <aos/kernel.h>
// #include <lwip/tcpip.h>
// #include "ble_interface.h"
// #include "ble_master.h"

// hosal_uart_dev_t uart_dev_log = {
//     .config = {
//         .uart_id = 0,
//         .tx_pin = 16, 
//         .rx_pin = 7,  
//         .cts_pin = 255,
//         .rts_pin = 255,
//         .baud_rate = 115200,
//         .data_width = HOSAL_DATA_WIDTH_8BIT,
//         .parity = HOSAL_NO_PARITY,
//         .stop_bits = HOSAL_STOP_BITS_1,
//         .mode = HOSAL_UART_MODE_POLL,
//     },
// };


// void main(void)
// {
//     bl_sys_init();
    
//     hosal_uart_init(&uart_dev_log);
    
//     blog_info("System starting\r\n");
    

//     blog_info("Starting TCP/IP Stack\r\n");
//     tcpip_init(NULL, NULL);
    

//     aos_msleep(100);
    
//     app_run();
    
//     blog_info("Main loop started\r\n");
    
//     while (1) {
//         aos_msleep(1000);
//     }
// }


#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <vfs.h>
#include <aos/kernel.h>
#include <aos/yloop.h>
#include <event_device.h>
#include <cli.h>

#include <lwip/tcpip.h>
#include <lwip/sockets.h>
#include <lwip/netdb.h>
#include <lwip/tcp.h>
#include <lwip/err.h>
#include <netutils/netutils.h>

#include <bl602_glb.h>
#include <bl602_hbn.h>

#include <bl_uart.h>
#include <bl_chip.h>
#include <bl_sec.h>
#include <bl_cks.h>
#include <bl_irq.h>
#include <bl_dma.h>
#include <bl_adc.h>
#include <bl_timer.h>
#include <bl_gpio_cli.h>
#include <bl_wdt_cli.h>
// #include <hal_uart.h>
#include <hal_sys.h>
#include <hal_gpio.h>
#include <hal_boot2.h>
#include <hal_board.h>
#include <looprt.h>
#include <loopset.h>
#include <bl_sys_time.h>
#include <bl_sys_ota.h>
#include <bl_romfs.h>
#include <fdt.h>
#include <bl_sys.h>
#include <bl_timer.h>
#include <easyflash.h>
#include <bl60x_fw_api.h>
#include <utils_log.h>
#include <libfdt.h>
#include <blog.h>
// #include <ble_cli_cmds.h>
#include <hosal_uart.h>
#include "ble_master.h"
#include "hardware.h"        // BUTTON1, LED1, v.v.
#include <bl_gpio.h>
#include "../components/third_party/lib_button/app_btn.h"
#include "../components/hardware/led/led.h"

/*填写从机mac地址*/
static uint8_t slave_mac[6] = {0x88, 0x88, 0x88, 0x88, 0x88, 0x88};

#define OS_CMP(s1, s2) (strcmp(s1, s2) == 0)
extern unsigned char bleuart_connect_status;
extern uint8_t axk_HalBleInit();
extern uint8_t axk_HalBleCentralStartScan(void);
extern uint8_t axk_HalBleCentralConnect(uint8_t *mac, uint8_t *uuid, uint8_t autoConnect);
extern int axk_HalBleCentralTTWrite(uint16_t len, uint8_t *data);
hosal_uart_dev_t ble_uart_dev = {
    .config = {
        .uart_id = 1,
        .tx_pin = 16, // TXD GPIO
        .rx_pin = 7,  // RXD GPIO
        .cts_pin = 255,
        .rts_pin = 255,
        .baud_rate = 115200,
        .data_width = HOSAL_DATA_WIDTH_8BIT,
        .parity = HOSAL_NO_PARITY,
        .stop_bits = HOSAL_STOP_BITS_1,
        .mode = HOSAL_UART_MODE_POLL,
    },
};

void bleuart_printf(char *buf)
{
  hosal_uart_send(&ble_uart_dev, buf, strlen(buf));
}

void ble_user_init(void)
{
  axk_HalBleInit();
  axk_HalBleCentralStartScan();                                          // 扫描周围的蓝牙设备
  axk_HalBleCentralConnect(slave_mac, NULL, BLE_MASTER_AUTOCONN_ENABLE); // 通过MAC地址和UUID指定连接从机,开启自动重连
}

int str2hex(char *pbuf, int len)
{
  int i = 0;
  for (i = 0; i < len; i++)
  {
    if (((pbuf[i] >= '0') && (pbuf[i] <= '9')) || ((pbuf[i] >= 'A') && (pbuf[i] <= 'F')) || ((pbuf[i] >= 'a') && (pbuf[i] <= 'f')))
    {
      if ((pbuf[i] >= '0') && (pbuf[i] <= '9'))
      {
        pbuf[i] -= '0';
      }
      else if (((pbuf[i] >= 'A') && (pbuf[i] <= 'F')))
      {
        pbuf[i] -= 'A';
        pbuf[i] += 0x0A;
      }
      else
      {
        pbuf[i] -= 'a';
        pbuf[i] += 0x0A;
      }

      if (i % 2)
      {
        pbuf[i / 2] = (pbuf[i - 1] << 4) | pbuf[i];
      }
    }
    else
    {
      return -1;
    }
  }

  return 0;
}

static void ble_loop_proc(void *pvParameters)
{
  char data[250];
  int ret, rep;
  ble_user_init();
  while (1)
  {
    /* Uart receive poll */
    ret = hosal_uart_receive(&ble_uart_dev, data, sizeof(data));
    if (ret > 0)
    { /* Uart send poll */
      // hosal_uart_send(&ble_uart_dev, data, ret);
      if (bleuart_connect_status == 1)
      {
        rep = axk_HalBleCentralTTWrite(ret, (uint8_t *)data);
        if (rep >= 0)
        {
          // hosal_uart_send(&ble_uart_dev, data, ret);//
        }
        else if (rep == -1)
        {
          bleuart_printf("ble status error!\r\n");
        }
        else if (rep == -2)
        {
          bleuart_printf("ble data len error!\r\n");
        }
        else if (rep == -3)
        {
          bleuart_printf("ble data null!\r\n");
        }
        else
        {
          bleuart_printf("ble send fail!\r\n");
        }
      }
      else
        bleuart_printf("no ble connect!\r\n");
    }
    vTaskDelay(100);
  }
  vTaskDelete(NULL);
}


static void master_button_press_callback(int pin, int event, void *data)
{
    static bool s_remote_led_on = false;
    extern unsigned char bleuart_connect_status;

    bleuart_printf("[BTN] PRESSED, connect_status=");
    char buf[20];
    sprintf(buf, "%d\r\n", bleuart_connect_status);
    bleuart_printf(buf);

    if (bleuart_connect_status == 1) {
        const char *cmd = s_remote_led_on ? "turn off" : "turn on";
        bleuart_printf("[BTN] Writing LED cmd to TB03F\r\n");
  
        ble_master_write_led_cmd(cmd, 0);
        s_remote_led_on = !s_remote_led_on;
    } else {
        bleuart_printf("[BTN] BLE not connected, skip write\r\n");
    }


    led_toggle();
    bleuart_printf("[BTN] LED local toggled\r\n");
}

static uint32_t app_get_tick_ms(void)
{
    return aos_now_ms();
}


static void master_button_task(void *params)
{
    app_btn_hw_config_t btn_config[1] = {0};
    app_btn_config_t btn_cfg = {0};
    
    btn_config[0].pin = BUTTON1;
    btn_config[0].idle_level = 1;
    btn_config[0].debounce_val = 0;
    btn_config[0].debounce_counter = 0;
    btn_config[0].last_state = 1;
    
    btn_cfg.config = btn_config;
    btn_cfg.btn_count = 1;
    btn_cfg.get_tick_cb = app_get_tick_ms;
    btn_cfg.btn_initialize = NULL;
    btn_cfg.btn_read = NULL;
    
    bl_gpio_enable_input(BUTTON1, 0, 0);
    btn_cfg.btn_read = (app_btn_get_level_cb)bl_gpio_input_get_value;
    
    app_btn_initialize(&btn_cfg);
    extern void master_button_press_callback(int pin, int event, void *data);
    app_btn_register_callback(APP_BTN_EVT_PRESSED, master_button_press_callback, NULL);
    
    while (1) {
        app_btn_scan(NULL);
        aos_msleep(20);
    }
}




static void uart_init(void)
{
  hosal_uart_init(&ble_uart_dev);
}




void main()
{
  uart_init();
  bleuart_printf("MY BLE MASTER\r\n");
  bl_sys_init(); 
  led_init();    
  xTaskCreate(ble_loop_proc, "ble master", 1024, NULL, 15, NULL);
  xTaskCreate(master_button_task, "btn_task", 1024, NULL, 14, NULL);

}
