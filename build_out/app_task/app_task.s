	.file	"app_task.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_task_button,"ax",@progbits
	.align	1
	.globl	app_task_button
	.type	app_task_button, @function
app_task_button:
.LFB6:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
	.loc 1 44 1
	.cfi_startproc
.LVL0:
	.loc 1 45 5
	.loc 1 47 5
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 50 23
	li	a5,4
	.loc 1 47 25
	sw	zero,-48(s0)
	.loc 1 48 22
	sw	zero,-32(s0)
	.loc 1 50 23
	sw	a5,-52(s0)
	.loc 1 51 30
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 54 30
	sb	a5,-48(s0)
	.loc 1 57 23
	sb	a5,-32(s0)
	.loc 1 58 25
	lui	a5,%hi(app_get_tick_ms)
	.loc 1 56 20
	addi	a4,s0,-52
	.loc 1 58 25
	addi	a5,a5,%lo(app_get_tick_ms)
	.loc 1 62 5
	li	a2,0
	li	a1,0
	li	a0,4
.LVL1:
	.loc 1 56 20
	sw	a4,-36(s0)
	.loc 1 58 25
	sw	a5,-28(s0)
	.loc 1 47 25
	sw	zero,-40(s0)
	.loc 1 48 5 is_stmt 1
	.loc 1 48 22 is_stmt 0
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	.loc 1 50 5 is_stmt 1
	.loc 1 51 5
	.loc 1 52 5
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 56 5
	.loc 1 57 5
	.loc 1 58 5
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 62 5
	call	bl_gpio_enable_input
.LVL2:
	.loc 1 63 5
	.loc 1 63 22 is_stmt 0
	lui	a5,%hi(bl_gpio_input_get_value)
	addi	a5,a5,%lo(bl_gpio_input_get_value)
	.loc 1 65 5
	addi	a0,s0,-36
	.loc 1 63 22
	sw	a5,-20(s0)
	.loc 1 65 5 is_stmt 1
	call	app_btn_initialize
.LVL3:
	.loc 1 66 5
	lui	a1,%hi(app_button_hold_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_hold_callback)
	li	a0,2
	call	app_btn_register_callback
.LVL4:
	.loc 1 67 5
	lui	a1,%hi(app_button_press_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_press_callback)
	li	a0,0
	call	app_btn_register_callback
.LVL5:
.L2:
	.loc 1 69 5 discriminator 1
	.loc 1 70 9 discriminator 1
	li	a0,0
	call	app_btn_scan
.LVL6:
	.loc 1 71 9 discriminator 1
	li	a0,20
	call	aos_msleep
.LVL7:
	.loc 1 69 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE6:
	.size	app_task_button, .-app_task_button
	.section	.text.app_get_tick_ms,"ax",@progbits
	.align	1
	.type	app_get_tick_ms, @function
app_get_tick_ms:
.LFB4:
	.loc 1 31 1
	.cfi_startproc
	.loc 1 32 5
	.loc 1 31 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 32 12
	call	aos_now_ms
.LVL8:
	.loc 1 33 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	app_get_tick_ms, .-app_get_tick_ms
	.section	.text.app_task_led,"ax",@progbits
	.align	1
	.globl	app_task_led
	.type	app_task_led, @function
app_task_led:
.LFB7:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 77 5
	.loc 1 79 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 79 5
	call	led_init
.LVL10:
.L7:
	.loc 1 81 5 is_stmt 1
	.loc 1 82 9
	.loc 1 82 13 is_stmt 0
	call	app_wifi_is_connected
.LVL11:
	.loc 1 82 12
	beq	a0,zero,.L8
	.loc 1 83 13 is_stmt 1
	call	led_on
.LVL12:
	.loc 1 84 13
	li	a0,1000
.L11:
	.loc 1 87 13 is_stmt 0
	call	aos_msleep
.LVL13:
	j	.L7
.L8:
	.loc 1 86 13 is_stmt 1
	call	led_toggle
.LVL14:
	.loc 1 87 13
	li	a0,500
	j	.L11
	.cfi_endproc
.LFE7:
	.size	app_task_led, .-app_task_led
	.section	.text.app_task_wifi,"ax",@progbits
	.align	1
	.globl	app_task_wifi
	.type	app_task_wifi, @function
app_task_wifi:
.LFB8:
	.loc 1 93 1
	.cfi_startproc
.LVL15:
	.loc 1 94 5
	.loc 1 96 5
	.loc 1 93 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 97 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 96 5
	tail	app_wifi_task
.LVL16:
	.cfi_endproc
.LFE8:
	.size	app_task_wifi, .-app_task_wifi
	.section	.text.app_task_main,"ax",@progbits
	.align	1
	.globl	app_task_main
	.type	app_task_main, @function
app_task_main:
.LFB9:
	.loc 1 100 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 101 5
	.loc 1 103 5
	.loc 1 104 5
	.loc 1 100 1 is_stmt 0
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	.loc 1 104 17
	sw	zero,-124(s0)
	sw	zero,-120(s0)
	.loc 1 106 5 is_stmt 1
	call	app_state_init
.LVL18:
	.loc 1 108 5
	.loc 1 109 5 is_stmt 0
	addi	a0,s0,-124
	.loc 1 108 16
	sw	zero,-124(s0)
	.loc 1 109 5 is_stmt 1
	.loc 1 112 11 is_stmt 0
	li	s1,101
	.loc 1 109 5
	call	app_state_process_event
.LVL19:
	.loc 1 111 5 is_stmt 1
	.loc 1 112 5
.L15:
	.loc 1 112 11
	.loc 1 112 13 is_stmt 0
	call	app_wifi_is_mgmr_ready
.LVL20:
	.loc 1 112 11
	bne	a0,zero,.L16
	.loc 1 112 38 discriminator 1
	addi	s1,s1,-1
.LVL21:
	bne	s1,zero,.L17
.LVL22:
.L16:
	.loc 1 117 5 is_stmt 1
	.loc 1 117 9 is_stmt 0
	call	app_wifi_is_mgmr_ready
.LVL23:
	.loc 1 117 8
	beq	a0,zero,.L18
	.loc 1 118 9 is_stmt 1
	.loc 1 118 13 is_stmt 0
	call	app_config_has_wifi
.LVL24:
	.loc 1 118 12
	beq	a0,zero,.L19
	.loc 1 119 13 is_stmt 1
	.loc 1 119 17 is_stmt 0
	addi	a0,s0,-116
	call	app_config_load_wifi
.LVL25:
	.loc 1 119 16
	bne	a0,zero,.L19
	.loc 1 120 17 is_stmt 1
	li	a0,3
	call	app_state_set_next
.LVL26:
	.loc 1 121 17
	.loc 1 122 17 is_stmt 0
	addi	a0,s0,-124
	.loc 1 121 28
	sw	zero,-124(s0)
	.loc 1 122 17 is_stmt 1
	call	app_state_process_event
.LVL27:
	.loc 1 123 17
	addi	a1,s0,-83
	addi	a0,s0,-116
	call	app_wifi_connect
.LVL28:
.L18:
.LBB2:
	.loc 1 138 9 is_stmt 0
	li	s1,2
.L25:
.LBE2:
	.loc 1 135 5 is_stmt 1
.LBB3:
	.loc 1 136 9
	.loc 1 136 37 is_stmt 0
	call	app_state_get_current
.LVL29:
	.loc 1 138 9 is_stmt 1
	beq	a0,s1,.L20
	addi	a0,a0,-3
.LVL30:
	bgtu	a0,s1,.L21
	.loc 1 150 17
	.loc 1 150 21 is_stmt 0
	call	app_ble_is_running
.LVL31:
	.loc 1 150 20
	beq	a0,zero,.L21
	.loc 1 151 21 is_stmt 1
	call	app_ble_stop
.LVL32:
	j	.L21
.LVL33:
.L17:
.LBE3:
	.loc 1 113 9
	li	a0,100
	call	aos_msleep
.LVL34:
	.loc 1 114 9
	j	.L15
.LVL35:
.L19:
	.loc 1 125 17
	li	a0,1
	call	app_state_set_next
.LVL36:
	.loc 1 126 17
	.loc 1 127 17 is_stmt 0
	addi	a0,s0,-124
	.loc 1 126 28
	sw	zero,-124(s0)
	.loc 1 127 17 is_stmt 1
	call	app_state_process_event
.LVL37:
	j	.L18
.LVL38:
.L20:
.LBB4:
	.loc 1 143 17
	.loc 1 143 22 is_stmt 0
	call	app_ble_is_running
.LVL39:
	.loc 1 143 20
	bne	a0,zero,.L21
	.loc 1 144 21 is_stmt 1
	li	a0,200
	call	aos_msleep
.LVL40:
	.loc 1 145 21
	call	app_ble_start
.LVL41:
.L21:
	.loc 1 171 9
	li	a0,100
	call	aos_msleep
.LVL42:
.LBE4:
	.loc 1 135 11
	.loc 1 135 15 is_stmt 0
	j	.L25
	.cfi_endproc
.LFE9:
	.size	app_task_main, .-app_task_main
	.section	.rodata.app_task_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"btn_task"
	.align	2
.LC1:
	.string	"led_task"
	.align	2
.LC2:
	.string	"wifi_task"
	.align	2
.LC3:
	.string	"main_task"
	.section	.text.app_task_init,"ax",@progbits
	.align	1
	.globl	app_task_init
	.type	app_task_init, @function
app_task_init:
.LFB5:
	.loc 1 36 1 is_stmt 1
	.cfi_startproc
	.loc 1 37 5
	.loc 1 36 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 37 5
	lui	a5,%hi(.LANCHOR0)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 36 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 37 5
	li	a2,4096
	lui	a1,%hi(.LC0)
	lui	a0,%hi(app_task_button)
	.loc 1 36 1
	.loc 1 37 5
	addi	a5,a5,%lo(.LANCHOR0)
	li	a4,5
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(app_task_button)
	call	xTaskCreate
.LVL43:
	.loc 1 38 5 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(app_task_led)
	addi	a5,a5,%lo(.LANCHOR1)
	li	a4,4
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(app_task_led)
	call	xTaskCreate
.LVL44:
	.loc 1 39 5
	lui	a5,%hi(.LANCHOR2)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(app_task_wifi)
	addi	a5,a5,%lo(.LANCHOR2)
	li	a4,3
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(app_task_wifi)
	call	xTaskCreate
.LVL45:
	.loc 1 40 5
	.loc 1 41 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 40 5
	lui	a5,%hi(.LANCHOR3)
	lui	a1,%hi(.LC3)
	lui	a0,%hi(app_task_main)
	.loc 1 41 1
	.loc 1 40 5
	addi	a5,a5,%lo(.LANCHOR3)
	li	a4,2
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(app_task_main)
	.loc 1 41 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 40 5
	tail	xTaskCreate
.LVL46:
	.cfi_endproc
.LFE5:
	.size	app_task_init, .-app_task_init
	.section	.text.app_set_led_blink,"ax",@progbits
	.align	1
	.globl	app_set_led_blink
	.type	app_set_led_blink, @function
app_set_led_blink:
.LFB10:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 177 5
	.loc 1 176 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 178 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	app_set_led_blink, .-app_set_led_blink
	.globl	g_btn_filter_cnt
	.section	.sbss.g_task_button_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_task_button_handle, @object
	.size	g_task_button_handle, 4
g_task_button_handle:
	.zero	4
	.section	.sbss.g_task_led_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_task_led_handle, @object
	.size	g_task_led_handle, 4
g_task_led_handle:
	.zero	4
	.section	.sbss.g_task_main_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_task_main_handle, @object
	.size	g_task_main_handle, 4
g_task_main_handle:
	.zero	4
	.section	.sbss.g_task_wifi_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_task_wifi_handle, @object
	.size	g_task_wifi_handle, 4
g_task_wifi_handle:
	.zero	4
	.section	.sdata.g_btn_filter_cnt,"aw"
	.type	g_btn_filter_cnt, @object
	.size	g_btn_filter_cnt, 1
g_btn_filter_cnt:
	.byte	1
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_wifi/../app_config/app_config.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/../app_event/app_event.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/app_state.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_ble/app_ble.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_wifi/app_wifi.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/led/led.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8c9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0x98
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x7
	.4byte	.LASF106
	.byte	0x8
	.byte	0x63
	.byte	0x4
	.byte	0xc
	.byte	0x9
	.4byte	0xd4
	.byte	0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd
	.byte	0xa
	.4byte	0xd4
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0xe
	.byte	0xa
	.4byte	0xe4
	.byte	0x21
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0xf
	.byte	0x9
	.4byte	0xf4
	.byte	0x62
	.byte	0
	.byte	0xa
	.4byte	0x85
	.4byte	0xe4
	.byte	0xb
	.4byte	0x7c
	.byte	0x20
	.byte	0
	.byte	0xa
	.4byte	0x85
	.4byte	0xf4
	.byte	0xb
	.4byte	0x7c
	.byte	0x40
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x10
	.byte	0x3
	.4byte	0xa3
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x6
	.byte	0xe
	.4byte	0x14c
	.byte	0xd
	.4byte	.LASF18
	.byte	0
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0xd
	.4byte	.LASF20
	.byte	0x2
	.byte	0xd
	.4byte	.LASF21
	.byte	0x3
	.byte	0xd
	.4byte	.LASF22
	.byte	0x4
	.byte	0xd
	.4byte	.LASF23
	.byte	0x5
	.byte	0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0xd
	.4byte	.LASF25
	.byte	0x7
	.byte	0xd
	.4byte	.LASF26
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x10
	.byte	0x3
	.4byte	0x107
	.byte	0x8
	.byte	0x8
	.byte	0x5
	.byte	0x12
	.byte	0x9
	.4byte	0x17c
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x13
	.byte	0x16
	.4byte	0x14c
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x14
	.byte	0xb
	.4byte	0x83
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x15
	.byte	0x3
	.4byte	0x158
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x7
	.byte	0xe
	.4byte	0x1c1
	.byte	0xd
	.4byte	.LASF31
	.byte	0
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd
	.4byte	.LASF33
	.byte	0x2
	.byte	0xd
	.4byte	.LASF34
	.byte	0x3
	.byte	0xd
	.4byte	.LASF35
	.byte	0x4
	.byte	0xd
	.4byte	.LASF36
	.byte	0x5
	.byte	0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0xf
	.byte	0x3
	.4byte	0x188
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x21
	.byte	0x1
	.4byte	0x212
	.byte	0xd
	.4byte	.LASF39
	.byte	0
	.byte	0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd
	.4byte	.LASF41
	.byte	0x2
	.byte	0xd
	.4byte	.LASF42
	.byte	0x3
	.byte	0xd
	.4byte	.LASF43
	.byte	0x4
	.byte	0xd
	.4byte	.LASF44
	.byte	0x5
	.byte	0xd
	.4byte	.LASF45
	.byte	0x6
	.byte	0xd
	.4byte	.LASF46
	.byte	0x7
	.byte	0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x10
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.4byte	0x25d
	.byte	0xe
	.string	"pin"
	.byte	0x7
	.byte	0x2f
	.byte	0xe
	.4byte	0x5b
	.byte	0
	.byte	0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0x31
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0x32
	.byte	0xd
	.4byte	0x41
	.byte	0xc
	.byte	0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0x33
	.byte	0xd
	.4byte	0x41
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x34
	.byte	0x3
	.4byte	0x212
	.byte	0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x36
	.byte	0x14
	.4byte	0x275
	.byte	0x6
	.byte	0x4
	.4byte	0x27b
	.byte	0xf
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x37
	.byte	0x10
	.4byte	0x28c
	.byte	0x6
	.byte	0x4
	.4byte	0x292
	.byte	0x10
	.4byte	0x29d
	.byte	0x11
	.4byte	0x5b
	.byte	0
	.byte	0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0x38
	.byte	0x14
	.4byte	0x2a9
	.byte	0x6
	.byte	0x4
	.4byte	0x2af
	.byte	0x12
	.4byte	0x5b
	.4byte	0x2be
	.byte	0x11
	.4byte	0x5b
	.byte	0
	.byte	0x8
	.byte	0x14
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.4byte	0x309
	.byte	0x9
	.4byte	.LASF56
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.4byte	0x309
	.byte	0
	.byte	0x9
	.4byte	.LASF57
	.byte	0x7
	.byte	0x3d
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0x9
	.4byte	.LASF58
	.byte	0x7
	.byte	0x3e
	.byte	0x19
	.4byte	0x269
	.byte	0x8
	.byte	0x9
	.4byte	.LASF59
	.byte	0x7
	.byte	0x3f
	.byte	0x1b
	.4byte	0x280
	.byte	0xc
	.byte	0x9
	.4byte	.LASF60
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.4byte	0x29d
	.byte	0x10
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x25d
	.byte	0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0x41
	.byte	0x3
	.4byte	0x2be
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x15
	.byte	0x15
	.4byte	0x8c
	.byte	0x5
	.byte	0x3
	.4byte	g_task_button_handle
	.byte	0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x16
	.byte	0x15
	.4byte	0x8c
	.byte	0x5
	.byte	0x3
	.4byte	g_task_led_handle
	.byte	0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x17
	.byte	0x15
	.4byte	0x8c
	.byte	0x5
	.byte	0x3
	.4byte	g_task_wifi_handle
	.byte	0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x18
	.byte	0x15
	.4byte	0x8c
	.byte	0x5
	.byte	0x3
	.4byte	g_task_main_handle
	.byte	0x14
	.4byte	.LASF107
	.byte	0x1
	.byte	0x1a
	.byte	0xc
	.4byte	0xf4
	.byte	0x15
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	g_btn_filter_cnt
	.byte	0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0xaf
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a6
	.byte	0x17
	.4byte	.LASF68
	.byte	0x1
	.byte	0xaf
	.byte	0x1c
	.4byte	0xf4
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x63
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x532
	.byte	0x18
	.4byte	.LASF69
	.byte	0x1
	.byte	0x63
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x67
	.byte	0x13
	.4byte	0xfb
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x13
	.4byte	.LASF71
	.byte	0x1
	.byte	0x68
	.byte	0x11
	.4byte	0x17c
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x19
	.4byte	.LASF72
	.byte	0x1
	.byte	0x6f
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x467
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0x88
	.byte	0x15
	.4byte	0x1c1
	.4byte	.LLST5
	.byte	0x1b
	.4byte	.LVL29
	.4byte	0x7b5
	.byte	0x1b
	.4byte	.LVL31
	.4byte	0x7c1
	.byte	0x1b
	.4byte	.LVL32
	.4byte	0x7cd
	.byte	0x1b
	.4byte	.LVL39
	.4byte	0x7c1
	.byte	0x1c
	.4byte	.LVL40
	.4byte	0x7d9
	.4byte	0x44d
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0x1b
	.4byte	.LVL41
	.4byte	0x7e6
	.byte	0x1e
	.4byte	.LVL42
	.4byte	0x7d9
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL18
	.4byte	0x7f2
	.byte	0x1c
	.4byte	.LVL19
	.4byte	0x7fe
	.4byte	0x485
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x84,0x7f
	.byte	0
	.byte	0x1b
	.4byte	.LVL20
	.4byte	0x80a
	.byte	0x1b
	.4byte	.LVL23
	.4byte	0x80a
	.byte	0x1b
	.4byte	.LVL24
	.4byte	0x816
	.byte	0x1c
	.4byte	.LVL25
	.4byte	0x822
	.4byte	0x4b5
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x8c,0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL26
	.4byte	0x82e
	.4byte	0x4c8
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1c
	.4byte	.LVL27
	.4byte	0x7fe
	.4byte	0x4dd
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x84,0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL28
	.4byte	0x83a
	.4byte	0x4f9
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x8c,0x7f
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xad,0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL34
	.4byte	0x7d9
	.4byte	0x50d
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x1c
	.4byte	.LVL36
	.4byte	0x82e
	.4byte	0x520
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL37
	.4byte	0x7fe
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x84,0x7f
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5c
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x56a
	.byte	0x18
	.4byte	.LASF69
	.byte	0x1
	.byte	0x5c
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.LVL16
	.4byte	0x846
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF75
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x5be
	.byte	0x18
	.4byte	.LASF69
	.byte	0x1
	.byte	0x4b
	.byte	0x19
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x1b
	.4byte	.LVL10
	.4byte	0x852
	.byte	0x1b
	.4byte	.LVL11
	.4byte	0x85e
	.byte	0x1b
	.4byte	.LVL12
	.4byte	0x86a
	.byte	0x1b
	.4byte	.LVL13
	.4byte	0x7d9
	.byte	0x1b
	.4byte	.LVL14
	.4byte	0x876
	.byte	0
	.byte	0x16
	.4byte	.LASF76
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x686
	.byte	0x18
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2b
	.byte	0x1c
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF77
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.4byte	0x686
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x13
	.4byte	.LASF78
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.4byte	0x30f
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1c
	.4byte	.LVL2
	.4byte	0x882
	.4byte	0x61f
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL3
	.4byte	0x88e
	.4byte	0x633
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	.LVL4
	.4byte	0x89a
	.4byte	0x64b
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL5
	.4byte	0x89a
	.4byte	0x663
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL6
	.4byte	0x8a6
	.4byte	0x676
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL7
	.4byte	0x7d9
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	0x25d
	.4byte	0x696
	.byte	0xb
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x791
	.byte	0x1c
	.4byte	.LVL43
	.4byte	0x8b2
	.4byte	0x6e6
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_button
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x1d
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL44
	.4byte	0x8b2
	.4byte	0x720
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_led
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0x1d
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x1c
	.4byte	.LVL45
	.4byte	0x8b2
	.4byte	0x75a
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_wifi
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0x1d
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x1f
	.4byte	.LVL46
	.4byte	0x8b2
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_main
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x32
	.byte	0x1d
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1e
	.byte	0x11
	.4byte	0x5b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b5
	.byte	0x1b
	.4byte	.LVL8
	.4byte	0x8bf
	.byte	0
	.byte	0x21
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.byte	0x19
	.byte	0xd
	.byte	0x21
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x8
	.byte	0x11
	.byte	0x5
	.byte	0x21
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x8
	.byte	0x10
	.byte	0x5
	.byte	0x22
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x207
	.byte	0xa
	.byte	0x21
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.byte	0xf
	.byte	0x5
	.byte	0x21
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x6
	.byte	0x18
	.byte	0x6
	.byte	0x21
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x6
	.byte	0x1c
	.byte	0xd
	.byte	0x21
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xa
	.byte	0x12
	.byte	0x5
	.byte	0x21
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.byte	0x16
	.byte	0x5
	.byte	0x21
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.byte	0x13
	.byte	0x5
	.byte	0x21
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.byte	0x1b
	.byte	0x6
	.byte	0x21
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0xd
	.byte	0x5
	.byte	0x21
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xa
	.byte	0x16
	.byte	0x6
	.byte	0x21
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xb
	.byte	0x5
	.byte	0x6
	.byte	0x21
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xa
	.byte	0x11
	.byte	0x5
	.byte	0x21
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.byte	0x6
	.byte	0x6
	.byte	0x21
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.byte	0x8
	.byte	0x6
	.byte	0x21
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xc
	.byte	0x10
	.byte	0x5
	.byte	0x21
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x7
	.byte	0x4b
	.byte	0x6
	.byte	0x21
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x7
	.byte	0x59
	.byte	0x6
	.byte	0x21
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x7
	.byte	0x51
	.byte	0x6
	.byte	0x22
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x14a
	.byte	0xd
	.byte	0x22
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x1ef
	.byte	0xf
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x3
	.byte	0x7a
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"app_wifi_is_mgmr_ready"
.LASF40:
	.string	"APP_BTN_EVT_RELEASED"
.LASF100:
	.string	"app_btn_scan"
.LASF83:
	.string	"aos_msleep"
.LASF39:
	.string	"APP_BTN_EVT_PRESSED"
.LASF49:
	.string	"idle_level"
.LASF58:
	.string	"get_tick_cb"
.LASF73:
	.string	"current_state"
.LASF1:
	.string	"short int"
.LASF13:
	.string	"ssid"
.LASF35:
	.string	"APP_STATE_WIFI_CONNECTED"
.LASF12:
	.string	"TaskHandle_t"
.LASF67:
	.string	"app_task_main"
.LASF54:
	.string	"app_btn_initialize_cb"
.LASF14:
	.string	"password"
.LASF45:
	.string	"APP_BTN_EVT_IDLE"
.LASF22:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF88:
	.string	"app_config_has_wifi"
.LASF98:
	.string	"app_btn_initialize"
.LASF93:
	.string	"led_init"
.LASF81:
	.string	"app_ble_is_running"
.LASF56:
	.string	"config"
.LASF85:
	.string	"app_state_init"
.LASF27:
	.string	"app_event_type_t"
.LASF34:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF47:
	.string	"APP_BTN_EVT_MAX"
.LASF68:
	.string	"enable"
.LASF80:
	.string	"app_state_get_current"
.LASF24:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF78:
	.string	"btn_cfg"
.LASF89:
	.string	"app_config_load_wifi"
.LASF55:
	.string	"app_btn_get_level_cb"
.LASF23:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF57:
	.string	"btn_count"
.LASF96:
	.string	"led_toggle"
.LASF102:
	.string	"aos_now_ms"
.LASF104:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
.LASF3:
	.string	"long long int"
.LASF97:
	.string	"bl_gpio_enable_input"
.LASF42:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF36:
	.string	"APP_STATE_WIFI_FAILED"
.LASF107:
	.string	"g_led_blink_enable"
.LASF31:
	.string	"APP_STATE_INIT"
.LASF41:
	.string	"APP_BTN_EVT_HOLD"
.LASF106:
	.string	"tskTaskControlBlock"
.LASF108:
	.string	"g_btn_filter_cnt"
.LASF48:
	.string	"last_state"
.LASF69:
	.string	"params"
.LASF92:
	.string	"app_wifi_task"
.LASF70:
	.string	"wifi_cfg"
.LASF43:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF91:
	.string	"app_wifi_connect"
.LASF4:
	.string	"unsigned char"
.LASF109:
	.string	"app_get_tick_ms"
.LASF60:
	.string	"btn_read"
.LASF53:
	.string	"app_btn_get_tick_cb"
.LASF0:
	.string	"signed char"
.LASF84:
	.string	"app_ble_start"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint32_t"
.LASF82:
	.string	"app_ble_stop"
.LASF10:
	.string	"unsigned int"
.LASF61:
	.string	"app_btn_config_t"
.LASF65:
	.string	"g_task_main_handle"
.LASF17:
	.string	"wifi_config_t"
.LASF33:
	.string	"APP_STATE_BLE_CONFIG"
.LASF59:
	.string	"btn_initialize"
.LASF76:
	.string	"app_task_button"
.LASF5:
	.string	"short unsigned int"
.LASF20:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF52:
	.string	"app_btn_hw_config_t"
.LASF90:
	.string	"app_state_set_next"
.LASF79:
	.string	"app_task_init"
.LASF11:
	.string	"char"
.LASF62:
	.string	"g_task_button_handle"
.LASF2:
	.string	"long int"
.LASF28:
	.string	"type"
.LASF72:
	.string	"wait_count"
.LASF37:
	.string	"APP_STATE_MAX"
.LASF16:
	.string	"_Bool"
.LASF101:
	.string	"xTaskCreate"
.LASF29:
	.string	"data"
.LASF63:
	.string	"g_task_led_handle"
.LASF105:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_task"
.LASF50:
	.string	"debounce_val"
.LASF38:
	.string	"app_state_t"
.LASF94:
	.string	"app_wifi_is_connected"
.LASF71:
	.string	"event"
.LASF8:
	.string	"long unsigned int"
.LASF21:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF77:
	.string	"btn_config"
.LASF18:
	.string	"APP_EVENT_NONE"
.LASF25:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF103:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF99:
	.string	"app_btn_register_callback"
.LASF32:
	.string	"APP_STATE_CHECK_FLASH"
.LASF44:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF86:
	.string	"app_state_process_event"
.LASF6:
	.string	"uint8_t"
.LASF46:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF75:
	.string	"app_task_led"
.LASF95:
	.string	"led_on"
.LASF15:
	.string	"is_valid"
.LASF26:
	.string	"APP_EVENT_MAX"
.LASF30:
	.string	"app_event_t"
.LASF51:
	.string	"debounce_counter"
.LASF66:
	.string	"app_set_led_blink"
.LASF19:
	.string	"APP_EVENT_BUTTON_HOLD"
.LASF74:
	.string	"app_task_wifi"
.LASF64:
	.string	"g_task_wifi_handle"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
