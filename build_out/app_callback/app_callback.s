	.file	"app_callback.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_event_post,"ax",@progbits
	.align	1
	.globl	app_event_post
	.type	app_event_post, @function
app_event_post:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/app_callback.c"
	.loc 1 23 1
	.cfi_startproc
.LVL0:
	.loc 1 24 5
	.loc 1 23 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 24 38
	lui	a3,%hi(.LANCHOR0)
	.cfi_offset 8, -4
	.loc 1 23 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 24 38
	addi	a3,a3,%lo(.LANCHOR0)
	lw	a5,0(a3)
	.loc 1 24 44
	lui	a4,%hi(g_event_queue)
	addi	a4,a4,%lo(g_event_queue)
	slli	a2,a5,3
	add	a4,a4,a2
	sw	a0,0(a4)
	.loc 1 25 5 is_stmt 1
	.loc 1 25 44 is_stmt 0
	sw	a1,4(a4)
	.loc 1 26 5 is_stmt 1
	.loc 1 26 46 is_stmt 0
	addi	a5,a5,1
	.loc 1 26 51
	li	a4,10
	rem	a5,a5,a4
	.loc 1 26 24
	sw	a5,0(a3)
	.loc 1 27 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	app_event_post, .-app_event_post
	.section	.text.app_button_hold_callback,"ax",@progbits
	.align	1
	.globl	app_button_hold_callback
	.type	app_button_hold_callback, @function
app_button_hold_callback:
.LFB5:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 35 5
	.loc 1 37 5
	.loc 1 30 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 37 9
	call	app_ble_is_running
.LVL2:
	.loc 1 37 8
	beq	a0,zero,.L4
	.loc 1 38 9 is_stmt 1
	call	app_ble_stop
.LVL3:
	.loc 1 39 9
	li	a0,500
	call	aos_msleep
.LVL4:
.L4:
	.loc 1 42 5
	call	app_wifi_disconnect
.LVL5:
	.loc 1 43 5
	li	a0,2000
	call	aos_msleep
.LVL6:
	.loc 1 44 5
	call	app_config_clear_wifi
.LVL7:
	.loc 1 46 5
	.loc 1 46 17 is_stmt 0
	li	a5,1
	.loc 1 47 5
	addi	a0,s0,-24
	.loc 1 46 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 47 5 is_stmt 1
	call	app_state_process_event
.LVL8:
	.loc 1 48 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	app_button_hold_callback, .-app_button_hold_callback
	.section	.rodata.app_button_press_callback.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ON"
	.align	2
.LC1:
	.string	"OFF"
	.align	2
.LC2:
	.string	"[APP] Button is locked, ignoring press\r\n"
	.section	.text.app_button_press_callback,"ax",@progbits
	.align	1
	.globl	app_button_press_callback
	.type	app_button_press_callback, @function
app_button_press_callback:
.LFB6:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 52 5
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 57 5
	.loc 1 51 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 57 9
	lui	s1,%hi(.LANCHOR1)
	.loc 1 51 1
	.loc 1 57 9
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 57 8
	lbu	a5,0(s1)
	lui	s2,%hi(.LANCHOR2)
	bne	a5,zero,.L10
.LBB2:
	.loc 1 58 9 is_stmt 1
	.loc 1 59 9
	addi	a1,s2,%lo(.LANCHOR2)
.LVL10:
	addi	a0,s0,-17
.LVL11:
	call	app_config_load_relay_settings
.LVL12:
	.loc 1 60 9
	.loc 1 60 30 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
.L10:
.LBE2:
	.loc 1 63 5 is_stmt 1
	.loc 1 63 8 is_stmt 0
	lbu	a5,%lo(.LANCHOR2)(s2)
	beq	a5,zero,.L11
	.loc 1 64 9 is_stmt 1
	.loc 1 78 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	.loc 1 64 9
	lui	a0,%hi(.LC2)
	.loc 1 78 1
	.loc 1 64 9
	addi	a0,a0,%lo(.LC2)
	.loc 1 78 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 64 9
	tail	printf
.LVL13:
.L11:
	.cfi_restore_state
	.loc 1 68 5 is_stmt 1
	call	relay_toggle
.LVL14:
	.loc 1 71 5
	.loc 1 71 9 is_stmt 0
	call	app_mqtt_is_connected
.LVL15:
	.loc 1 71 8
	beq	a0,zero,.L12
.LBB3:
	.loc 1 72 9 is_stmt 1
	.loc 1 72 31 is_stmt 0
	call	relay_get_state
.LVL16:
	.loc 1 73 9 is_stmt 1
	bne	a0,zero,.L14
	lui	a0,%hi(.LC1)
.LVL17:
	addi	a0,a0,%lo(.LC1)
.L13:
	.loc 1 73 9 is_stmt 0 discriminator 4
	call	app_mqtt_publish_state
.LVL18:
.L12:
.LBE3:
	.loc 1 76 5 is_stmt 1
	li	a1,0
	li	a0,2
	call	app_event_post
.LVL19:
	.loc 1 77 5
	.loc 1 78 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	.loc 1 77 5
	li	a1,0
	.loc 1 78 1
	.loc 1 77 5
	li	a0,11
	.loc 1 78 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 77 5
	tail	app_event_post
.LVL20:
.L14:
	.cfi_restore_state
.LBB4:
	.loc 1 73 9
	lui	a0,%hi(.LC0)
.LVL21:
	addi	a0,a0,%lo(.LC0)
	j	.L13
.LBE4:
	.cfi_endproc
.LFE6:
	.size	app_button_press_callback, .-app_button_press_callback
	.section	.rodata.app_callback_update_lock_button.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"LOCKED"
	.align	2
.LC4:
	.string	"UNLOCKED"
	.align	2
.LC5:
	.string	"[APP] Lock button updated: %s\r\n"
	.section	.text.app_callback_update_lock_button,"ax",@progbits
	.align	1
	.globl	app_callback_update_lock_button
	.type	app_callback_update_lock_button, @function
app_callback_update_lock_button:
.LFB7:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 83 5
	.loc 1 82 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 83 19
	lui	a5,%hi(.LANCHOR2)
	sb	a0,%lo(.LANCHOR2)(a5)
	.loc 1 84 5 is_stmt 1
	.loc 1 84 26 is_stmt 0
	li	a4,1
	lui	a5,%hi(.LANCHOR1)
	sb	a4,%lo(.LANCHOR1)(a5)
	.loc 1 85 5 is_stmt 1
	bne	a0,zero,.L21
	lui	a1,%hi(.LC4)
	addi	a1,a1,%lo(.LC4)
.L20:
	.loc 1 86 1 is_stmt 0 discriminator 4
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 85 5 discriminator 4
	lui	a0,%hi(.LC5)
.LVL23:
	addi	a0,a0,%lo(.LC5)
	.loc 1 86 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 85 5 discriminator 4
	tail	printf
.LVL24:
.L21:
	.cfi_restore_state
	.loc 1 85 5
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	j	.L20
	.cfi_endproc
.LFE7:
	.size	app_callback_update_lock_button, .-app_callback_update_lock_button
	.section	.text.app_wifi_connected_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_connected_callback
	.type	app_wifi_connected_callback, @function
app_wifi_connected_callback:
.LFB8:
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
	.loc 1 90 5
	.loc 1 89 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 90 17
	li	a5,3
	.loc 1 91 5
	addi	a0,s0,-24
	.loc 1 90 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 91 5 is_stmt 1
	call	app_state_process_event
.LVL25:
	.loc 1 92 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	app_wifi_connected_callback, .-app_wifi_connected_callback
	.section	.text.app_wifi_disconnected_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_disconnected_callback
	.type	app_wifi_disconnected_callback, @function
app_wifi_disconnected_callback:
.LFB9:
	.loc 1 95 1 is_stmt 1
	.cfi_startproc
	.loc 1 96 5
	.loc 1 95 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 96 17
	li	a5,4
	.loc 1 97 5
	addi	a0,s0,-24
	.loc 1 96 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 97 5 is_stmt 1
	call	app_state_process_event
.LVL26:
	.loc 1 98 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	app_wifi_disconnected_callback, .-app_wifi_disconnected_callback
	.section	.text.app_wifi_connect_failed_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_connect_failed_callback
	.type	app_wifi_connect_failed_callback, @function
app_wifi_connect_failed_callback:
.LFB10:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
	.loc 1 102 5
	.loc 1 101 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 102 17
	li	a5,5
	.loc 1 103 5
	addi	a0,s0,-24
	.loc 1 102 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 103 5 is_stmt 1
	call	app_state_process_event
.LVL27:
	.loc 1 104 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	app_wifi_connect_failed_callback, .-app_wifi_connect_failed_callback
	.section	.text.app_ble_config_done_callback,"ax",@progbits
	.align	1
	.globl	app_ble_config_done_callback
	.type	app_ble_config_done_callback, @function
app_ble_config_done_callback:
.LFB11:
	.loc 1 107 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 108 5
	.loc 1 109 5
	.loc 1 110 5
	.loc 1 107 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 110 17
	li	a5,6
	.loc 1 111 5
	addi	a0,s0,-24
.LVL29:
	.loc 1 110 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 111 5 is_stmt 1
	call	app_state_process_event
.LVL30:
	.loc 1 112 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	app_ble_config_done_callback, .-app_ble_config_done_callback
	.globl	g_event_queue_tail
	.globl	g_event_queue_head
	.comm	g_event_queue,80,4
	.section	.sbss.g_event_queue_head,"aw",@nobits
	.align	2
	.type	g_event_queue_head, @object
	.size	g_event_queue_head, 4
g_event_queue_head:
	.zero	4
	.section	.sbss.g_event_queue_tail,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_event_queue_tail, @object
	.size	g_event_queue_tail, 4
g_event_queue_tail:
	.zero	4
	.section	.sbss.g_lock_button,"aw",@nobits
	.set	.LANCHOR2,. + 0
	.type	g_lock_button, @object
	.size	g_lock_button, 1
g_lock_button:
	.zero	1
	.section	.sbss.g_lock_button_loaded,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	g_lock_button_loaded, @object
	.size	g_lock_button_loaded, 1
g_lock_button_loaded:
	.zero	1
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_event/app_event.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_state/app_state.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_wifi/../app_config/app_config.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../../hardware/relay/relay.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_mqtt/app_mqtt.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_ble/app_ble.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_wifi/app_wifi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x53a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	.LASF22
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x3
	.byte	0x6
	.byte	0xe
	.4byte	0xd4
	.byte	0x6
	.4byte	.LASF9
	.byte	0
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x6
	.4byte	.LASF15
	.byte	0x6
	.byte	0x6
	.4byte	.LASF16
	.byte	0x7
	.byte	0x6
	.4byte	.LASF17
	.byte	0x8
	.byte	0x6
	.4byte	.LASF18
	.byte	0x9
	.byte	0x6
	.4byte	.LASF19
	.byte	0xa
	.byte	0x6
	.4byte	.LASF20
	.byte	0xb
	.byte	0x6
	.4byte	.LASF21
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x14
	.byte	0x3
	.4byte	0x77
	.byte	0x7
	.byte	0x8
	.byte	0x3
	.byte	0x16
	.byte	0x9
	.4byte	0x104
	.byte	0x8
	.4byte	.LASF24
	.byte	0x3
	.byte	0x17
	.byte	0x16
	.4byte	0xd4
	.byte	0
	.byte	0x8
	.4byte	.LASF25
	.byte	0x3
	.byte	0x18
	.byte	0xb
	.4byte	0x104
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x19
	.byte	0x3
	.4byte	0xe0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.byte	0xa
	.4byte	0x112
	.byte	0xb
	.byte	0x4
	.4byte	0x119
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.byte	0xc
	.4byte	0x106
	.4byte	0x13b
	.byte	0xd
	.4byte	0x70
	.byte	0x9
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	0x12b
	.byte	0x5
	.byte	0x3
	.4byte	g_event_queue
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	g_event_queue_head
	.byte	0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	g_event_queue_tail
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x13
	.byte	0xc
	.4byte	0x124
	.byte	0x5
	.byte	0x3
	.4byte	g_lock_button
	.byte	0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.4byte	0x124
	.byte	0x5
	.byte	0x3
	.4byte	g_lock_button_loaded
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1eb
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6a
	.byte	0x2f
	.4byte	0x11e
	.4byte	.LLST8
	.byte	0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6a
	.byte	0x41
	.4byte	0x11e
	.4byte	.LLST9
	.byte	0x12
	.string	"evt"
	.byte	0x1
	.byte	0x6e
	.byte	0x11
	.4byte	0x106
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LVL30
	.4byte	0x4ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x221
	.byte	0x12
	.string	"evt"
	.byte	0x1
	.byte	0x66
	.byte	0x11
	.4byte	0x106
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LVL27
	.4byte	0x4ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x257
	.byte	0x12
	.string	"evt"
	.byte	0x1
	.byte	0x60
	.byte	0x11
	.4byte	0x106
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LVL26
	.4byte	0x4ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x58
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x28d
	.byte	0x12
	.string	"evt"
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	0x106
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LVL25
	.4byte	0x4ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c7
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x51
	.byte	0x2a
	.4byte	0x124
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LVL24
	.4byte	0x4b8
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c5
	.byte	0x16
	.string	"pin"
	.byte	0x1
	.byte	0x32
	.byte	0x24
	.4byte	0x69
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x32
	.byte	0x2d
	.4byte	0x69
	.4byte	.LLST4
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x32
	.byte	0x3a
	.4byte	0x104
	.4byte	.LLST5
	.byte	0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x343
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3a
	.byte	0x11
	.4byte	0x41
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x13
	.4byte	.LVL12
	.4byte	0x4c4
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x6f
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.4byte	0x36f
	.byte	0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0x41
	.4byte	.LLST6
	.byte	0x1a
	.4byte	.LVL16
	.4byte	0x4d0
	.byte	0x1a
	.4byte	.LVL18
	.4byte	0x4dc
	.byte	0
	.byte	0x1b
	.4byte	.LVL13
	.4byte	0x4b8
	.4byte	0x386
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1a
	.4byte	.LVL14
	.4byte	0x4e8
	.byte	0x1a
	.4byte	.LVL15
	.4byte	0x4f4
	.byte	0x1c
	.4byte	.LVL19
	.4byte	0x479
	.4byte	0x3b0
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL20
	.4byte	0x479
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3b
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x479
	.byte	0x16
	.string	"pin"
	.byte	0x1
	.byte	0x1d
	.byte	0x23
	.4byte	0x69
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF43
	.byte	0x1
	.byte	0x1d
	.byte	0x2c
	.4byte	0x69
	.4byte	.LLST1
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1d
	.byte	0x39
	.4byte	0x104
	.4byte	.LLST2
	.byte	0x12
	.string	"evt"
	.byte	0x1
	.byte	0x2e
	.byte	0x11
	.4byte	0x106
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x1a
	.4byte	.LVL2
	.4byte	0x500
	.byte	0x1a
	.4byte	.LVL3
	.4byte	0x50c
	.byte	0x1c
	.4byte	.LVL4
	.4byte	0x518
	.4byte	0x441
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x1a
	.4byte	.LVL5
	.4byte	0x525
	.byte	0x1c
	.4byte	.LVL6
	.4byte	0x518
	.4byte	0x45f
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x1a
	.4byte	.LVL7
	.4byte	0x531
	.byte	0x13
	.4byte	.LVL8
	.4byte	0x4ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ac
	.byte	0x1d
	.4byte	.LASF24
	.byte	0x1
	.byte	0x16
	.byte	0x26
	.4byte	0xd4
	.byte	0x1
	.byte	0x5a
	.byte	0x1d
	.4byte	.LASF25
	.byte	0x1
	.byte	0x16
	.byte	0x32
	.4byte	0x104
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x1e
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x4
	.byte	0x1c
	.byte	0xd
	.byte	0x1e
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0xa
	.byte	0x9
	.byte	0x1e
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.byte	0x13
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.byte	0x9
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0x10
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x9
	.byte	0x11
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.byte	0x10
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xa
	.2byte	0x207
	.byte	0xa
	.byte	0x1e
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xb
	.byte	0xe
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.byte	0x17
	.byte	0x5
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x34
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
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
	.byte	0x1e
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
	.byte	0x1f
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
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x5
	.byte	0x3
	.4byte	g_lock_button
	.4byte	.LVL24-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF40:
	.string	"app_callback_update_lock_button"
.LASF53:
	.string	"relay_toggle"
.LASF1:
	.string	"short int"
.LASF34:
	.string	"ssid"
.LASF31:
	.string	"g_event_queue_tail"
.LASF35:
	.string	"password"
.LASF13:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF43:
	.string	"event"
.LASF55:
	.string	"app_ble_is_running"
.LASF23:
	.string	"app_event_type_t"
.LASF37:
	.string	"app_wifi_connect_failed_callback"
.LASF26:
	.string	"app_event_t"
.LASF15:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF58:
	.string	"app_wifi_disconnect"
.LASF36:
	.string	"app_ble_config_done_callback"
.LASF14:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF52:
	.string	"app_mqtt_publish_state"
.LASF3:
	.string	"long long int"
.LASF2:
	.string	"long int"
.LASF44:
	.string	"dummy_state"
.LASF30:
	.string	"g_event_queue_head"
.LASF49:
	.string	"printf"
.LASF18:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF61:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/app_callback.c"
.LASF4:
	.string	"unsigned char"
.LASF54:
	.string	"app_mqtt_is_connected"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF57:
	.string	"aos_msleep"
.LASF56:
	.string	"app_ble_stop"
.LASF47:
	.string	"app_event_post"
.LASF42:
	.string	"app_button_press_callback"
.LASF51:
	.string	"relay_get_state"
.LASF33:
	.string	"g_lock_button_loaded"
.LASF50:
	.string	"app_config_load_relay_settings"
.LASF5:
	.string	"short unsigned int"
.LASF11:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF29:
	.string	"g_event_queue"
.LASF27:
	.string	"char"
.LASF41:
	.string	"locked"
.LASF24:
	.string	"type"
.LASF28:
	.string	"_Bool"
.LASF25:
	.string	"data"
.LASF20:
	.string	"APP_EVENT_RELAY_STATE_CHANGED"
.LASF6:
	.string	"long unsigned int"
.LASF12:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF9:
	.string	"APP_EVENT_NONE"
.LASF16:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF48:
	.string	"app_state_process_event"
.LASF22:
	.string	"uint8_t"
.LASF19:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF38:
	.string	"app_wifi_disconnected_callback"
.LASF62:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_callback"
.LASF39:
	.string	"app_wifi_connected_callback"
.LASF46:
	.string	"app_button_hold_callback"
.LASF8:
	.string	"unsigned int"
.LASF45:
	.string	"relay_state"
.LASF59:
	.string	"app_config_clear_wifi"
.LASF32:
	.string	"g_lock_button"
.LASF21:
	.string	"APP_EVENT_MAX"
.LASF10:
	.string	"APP_EVENT_BUTTON_HOLD"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
