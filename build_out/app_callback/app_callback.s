	.file	"app_callback.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_button_hold_callback,"ax",@progbits
	.align	1
	.globl	app_button_hold_callback
	.type	app_button_hold_callback, @function
app_button_hold_callback:
.LFB5:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/app_callback.c"
	.loc 1 25 1
	.cfi_startproc
.LVL0:
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 25 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 32 9
	call	app_ble_is_running
.LVL1:
	.loc 1 32 8
	beq	a0,zero,.L2
	.loc 1 33 9 is_stmt 1
	call	app_ble_stop
.LVL2:
	.loc 1 34 9
	li	a0,500
	call	aos_msleep
.LVL3:
.L2:
	.loc 1 37 5
	call	app_wifi_disconnect
.LVL4:
	.loc 1 38 5
	li	a0,2000
	call	aos_msleep
.LVL5:
	.loc 1 39 5
	call	app_config_clear_wifi
.LVL6:
	.loc 1 41 5
	.loc 1 41 17 is_stmt 0
	li	a5,1
	.loc 1 42 5
	addi	a0,s0,-24
	.loc 1 41 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 42 5 is_stmt 1
	call	app_state_process_event
.LVL7:
	.loc 1 43 1 is_stmt 0
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
	.section	.text.app_button_press_callback,"ax",@progbits
	.align	1
	.globl	app_button_press_callback
	.type	app_button_press_callback, @function
app_button_press_callback:
.LFB6:
	.loc 1 46 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 47 5
	.loc 1 48 5
	.loc 1 49 5
	.loc 1 51 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 51 5
	call	relay_toggle
.LVL9:
	.loc 1 53 5 is_stmt 1
.LBB4:
.LBB5:
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 21 24 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 21 46
	lw	a5,0(a4)
	.loc 1 21 51
	li	a3,10
	.loc 1 21 46
	addi	a5,a5,1
	.loc 1 21 51
	rem	a5,a5,a3
	.loc 1 21 24
	sw	a5,0(a4)
.LVL10:
.LBE5:
.LBE4:
	.loc 1 54 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	app_button_press_callback, .-app_button_press_callback
	.section	.text.app_wifi_connected_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_connected_callback
	.type	app_wifi_connected_callback, @function
app_wifi_connected_callback:
.LFB7:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
	.loc 1 58 5
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 58 17
	li	a5,3
	.loc 1 59 5
	addi	a0,s0,-24
	.loc 1 58 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 59 5 is_stmt 1
	call	app_state_process_event
.LVL11:
	.loc 1 60 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	app_wifi_connected_callback, .-app_wifi_connected_callback
	.section	.text.app_wifi_disconnected_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_disconnected_callback
	.type	app_wifi_disconnected_callback, @function
app_wifi_disconnected_callback:
.LFB8:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
	.loc 1 64 5
	.loc 1 63 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 64 17
	li	a5,4
	.loc 1 65 5
	addi	a0,s0,-24
	.loc 1 64 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 65 5 is_stmt 1
	call	app_state_process_event
.LVL12:
	.loc 1 66 1 is_stmt 0
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
	.size	app_wifi_disconnected_callback, .-app_wifi_disconnected_callback
	.section	.text.app_wifi_connect_failed_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_connect_failed_callback
	.type	app_wifi_connect_failed_callback, @function
app_wifi_connect_failed_callback:
.LFB9:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
	.loc 1 70 5
	.loc 1 69 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 70 17
	li	a5,5
	.loc 1 71 5
	addi	a0,s0,-24
	.loc 1 70 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 71 5 is_stmt 1
	call	app_state_process_event
.LVL13:
	.loc 1 72 1 is_stmt 0
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
	.size	app_wifi_connect_failed_callback, .-app_wifi_connect_failed_callback
	.section	.text.app_ble_config_done_callback,"ax",@progbits
	.align	1
	.globl	app_ble_config_done_callback
	.type	app_ble_config_done_callback, @function
app_ble_config_done_callback:
.LFB10:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 76 5
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 75 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 78 17
	li	a5,6
	.loc 1 79 5
	addi	a0,s0,-24
.LVL15:
	.loc 1 78 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 79 5 is_stmt 1
	call	app_state_process_event
.LVL16:
	.loc 1 80 1 is_stmt 0
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
	.size	app_ble_config_done_callback, .-app_ble_config_done_callback
	.section	.sbss.g_event_queue_tail,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_event_queue_tail, @object
	.size	g_event_queue_tail, 4
g_event_queue_tail:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_state/../app_event/app_event.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_state/app_state.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../../hardware/relay/relay.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_ble/app_ble.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_wifi/app_wifi.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/../app_wifi/../app_config/app_config.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3dd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF42
	.byte	0xc
	.4byte	.LASF43
	.4byte	.LASF44
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x6d
	.byte	0x6
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x2
	.byte	0x6
	.byte	0xe
	.4byte	0xc4
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0x8
	.4byte	.LASF17
	.byte	0x7
	.byte	0x8
	.4byte	.LASF18
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x2
	.byte	0x10
	.byte	0x3
	.4byte	0x7f
	.byte	0xa
	.byte	0x8
	.byte	0x2
	.byte	0x12
	.byte	0x9
	.4byte	0xf4
	.byte	0xb
	.4byte	.LASF19
	.byte	0x2
	.byte	0x13
	.byte	0x16
	.4byte	0xc4
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x2
	.byte	0x14
	.byte	0xb
	.4byte	0x6b
	.byte	0x4
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x2
	.byte	0x15
	.byte	0x3
	.4byte	0xd0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.byte	0xc
	.4byte	0xf4
	.4byte	0x117
	.byte	0xd
	.4byte	0x64
	.byte	0x9
	.byte	0
	.byte	0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0xd
	.byte	0x14
	.4byte	0x107
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x5d
	.byte	0
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.4byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	g_event_queue_tail
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x198
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4a
	.byte	0x2f
	.4byte	0x79
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4a
	.byte	0x41
	.4byte	0x79
	.4byte	.LLST9
	.byte	0x13
	.string	"evt"
	.byte	0x1
	.byte	0x4e
	.byte	0x11
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x38b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ce
	.byte	0x13
	.string	"evt"
	.byte	0x1
	.byte	0x46
	.byte	0x11
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LVL13
	.4byte	0x38b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x204
	.byte	0x13
	.string	"evt"
	.byte	0x1
	.byte	0x40
	.byte	0x11
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LVL12
	.4byte	0x38b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x23a
	.byte	0x13
	.string	"evt"
	.byte	0x1
	.byte	0x3a
	.byte	0x11
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LVL11
	.4byte	0x38b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b1
	.byte	0x16
	.string	"pin"
	.byte	0x1
	.byte	0x2d
	.byte	0x24
	.4byte	0x5d
	.4byte	.LLST3
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2d
	.byte	0x2d
	.4byte	0x5d
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2d
	.byte	0x3a
	.4byte	0x6b
	.4byte	.LLST5
	.byte	0x17
	.4byte	0x365
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x35
	.byte	0x5
	.4byte	0x2a7
	.byte	0x18
	.4byte	0x372
	.4byte	.LLST6
	.byte	0x18
	.4byte	0x37e
	.4byte	.LLST7
	.byte	0
	.byte	0x19
	.4byte	.LVL9
	.4byte	0x397
	.byte	0
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x365
	.byte	0x16
	.string	"pin"
	.byte	0x1
	.byte	0x18
	.byte	0x23
	.4byte	0x5d
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x18
	.byte	0x2c
	.4byte	0x5d
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x18
	.byte	0x39
	.4byte	0x6b
	.4byte	.LLST2
	.byte	0x13
	.string	"evt"
	.byte	0x1
	.byte	0x29
	.byte	0x11
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x19
	.4byte	.LVL1
	.4byte	0x3a3
	.byte	0x19
	.4byte	.LVL2
	.4byte	0x3af
	.byte	0x1a
	.4byte	.LVL3
	.4byte	0x3bb
	.4byte	0x32d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x19
	.4byte	.LVL4
	.4byte	0x3c8
	.byte	0x1a
	.4byte	.LVL5
	.4byte	0x3bb
	.4byte	0x34b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x3d4
	.byte	0x14
	.4byte	.LVL7
	.4byte	0x38b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.byte	0x1
	.4byte	0x38b
	.byte	0x1c
	.4byte	.LASF19
	.byte	0x1
	.byte	0x11
	.byte	0x2d
	.4byte	0xc4
	.byte	0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0x11
	.byte	0x39
	.4byte	0x6b
	.byte	0
	.byte	0x1d
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x3
	.byte	0x1c
	.byte	0xd
	.byte	0x1d
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.byte	0x9
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x11
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x10
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x207
	.byte	0xa
	.byte	0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0xe
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x8
	.byte	0x15
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
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"app_ble_stop"
.LASF42:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF21:
	.string	"app_event_type_t"
.LASF10:
	.string	"APP_EVENT_NONE"
.LASF2:
	.string	"long int"
.LASF17:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF32:
	.string	"app_button_press_callback"
.LASF41:
	.string	"app_config_clear_wifi"
.LASF39:
	.string	"aos_msleep"
.LASF46:
	.string	"app_event_post"
.LASF31:
	.string	"app_wifi_connected_callback"
.LASF20:
	.string	"data"
.LASF13:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF40:
	.string	"app_wifi_disconnect"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF44:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_callback"
.LASF4:
	.string	"unsigned char"
.LASF15:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF45:
	.string	"g_event_queue"
.LASF24:
	.string	"g_event_queue_head"
.LASF14:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF33:
	.string	"event"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF35:
	.string	"app_state_process_event"
.LASF28:
	.string	"app_ble_config_done_callback"
.LASF22:
	.string	"app_event_t"
.LASF36:
	.string	"relay_toggle"
.LASF16:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF3:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF12:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF19:
	.string	"type"
.LASF26:
	.string	"ssid"
.LASF1:
	.string	"short int"
.LASF30:
	.string	"app_wifi_disconnected_callback"
.LASF37:
	.string	"app_ble_is_running"
.LASF43:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_callback/app_callback.c"
.LASF34:
	.string	"app_button_hold_callback"
.LASF11:
	.string	"APP_EVENT_BUTTON_HOLD"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"app_wifi_connect_failed_callback"
.LASF25:
	.string	"g_event_queue_tail"
.LASF18:
	.string	"APP_EVENT_MAX"
.LASF23:
	.string	"_Bool"
.LASF27:
	.string	"password"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
