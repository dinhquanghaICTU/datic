	.file	"m_ble.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_ble_init,"ax",@progbits
	.align	1
	.globl	app_ble_init
	.type	app_ble_init, @function
app_ble_init:
.LFB68:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/gpio/m_ble.c"
	.loc 1 37 1
	.cfi_startproc
	.loc 1 38 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 38 5
	lui	a0,%hi(ble_config_done_handler)
	.loc 1 37 1
	.loc 1 38 5
	addi	a0,a0,%lo(ble_config_done_handler)
	call	ble_set_config_done_cb
.LVL0:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	app_ble_init, .-app_ble_init
	.section	.text.app_ble_start,"ax",@progbits
	.align	1
	.globl	app_ble_start
	.type	app_ble_start, @function
app_ble_start:
.LFB69:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
	.loc 1 44 5
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 44 5
	call	wifi_if_disconnect
.LVL1:
	.loc 1 45 5 is_stmt 1
	li	a0,2000
	.loc 1 47 9 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
	.loc 1 45 5
	call	aos_msleep
.LVL2:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 9 is_stmt 0
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 47 8
	lbu	a5,0(s1)
	bne	a5,zero,.L4
	.loc 1 48 9 is_stmt 1
	call	apps_ble_start
.LVL3:
	.loc 1 49 9
	li	a0,1000
	call	aos_msleep
.LVL4:
	.loc 1 50 9
	call	ble_scan_start
.LVL5:
	.loc 1 51 9
	.loc 1 51 29 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
.L4:
	.loc 1 54 5 is_stmt 1
	.loc 1 54 9 is_stmt 0
	call	ble_adv_start
.LVL6:
	.loc 1 54 8
	bne	a0,zero,.L6
	.loc 1 55 9 is_stmt 1
	.loc 1 55 27 is_stmt 0
	li	a5,1
	lui	a4,%hi(.LANCHOR1)
	sb	a5,%lo(.LANCHOR1)(a4)
	.loc 1 56 9 is_stmt 1
	.loc 1 56 23 is_stmt 0
	lui	a4,%hi(.LANCHOR2)
	sb	a5,%lo(.LANCHOR2)(a4)
	.loc 1 57 9 is_stmt 1
.L3:
	.loc 1 61 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L6:
	.cfi_restore_state
	.loc 1 60 12
	li	a0,-1
	j	.L3
	.cfi_endproc
.LFE69:
	.size	app_ble_start, .-app_ble_start
	.section	.text.app_ble_stop,"ax",@progbits
	.align	1
	.globl	app_ble_stop
	.type	app_ble_stop, @function
app_ble_stop:
.LFB70:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
	.loc 1 65 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 65 9
	lui	s1,%hi(.LANCHOR1)
	.loc 1 64 1
	.loc 1 65 9
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 65 8
	lbu	a5,0(s1)
	beq	a5,zero,.L9
.LBB5:
.LBB6:
	.loc 1 68 5 is_stmt 1
	call	ble_adv_stop
.LVL7:
	.loc 1 69 5
	.loc 1 70 19 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	.loc 1 69 23
	sb	zero,0(s1)
	.loc 1 70 5 is_stmt 1
	.loc 1 70 19 is_stmt 0
	sb	zero,%lo(.LANCHOR2)(a5)
	.loc 1 71 5 is_stmt 1
.L9:
.LBE6:
.LBE5:
	.loc 1 72 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	app_ble_stop, .-app_ble_stop
	.section	.text.ble_config_done_handler,"ax",@progbits
	.align	1
	.type	ble_config_done_handler, @function
ble_config_done_handler:
.LFB67:
	.loc 1 20 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 21 5
	.loc 1 20 1 is_stmt 0
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
	.loc 1 20 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 21 9
	call	app_config_save_wifi
.LVL9:
	.loc 1 21 8
	bne	a0,zero,.L14
.LVL10:
.LBB10:
.LBB11:
.LBB12:
	.loc 1 22 9 is_stmt 1
	.loc 1 22 13 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a5,%lo(.LANCHOR3)(a5)
	.loc 1 22 12
	beq	a5,zero,.L16
	.loc 1 23 13 is_stmt 1
	mv	a1,s2
	mv	a0,s1
	jalr	a5
.LVL11:
.L16:
	.loc 1 25 9
	call	app_ble_stop
.LVL12:
	.loc 1 26 9
	mv	a1,s2
	mv	a0,s1
	call	app_wifi_connect
.LVL13:
	.loc 1 27 9
	li	a0,3
	call	app_state_set_next
.LVL14:
	.loc 1 28 9
	.loc 1 28 21 is_stmt 0
	li	a5,6
	.loc 1 32 9
	addi	a0,s0,-24
	.loc 1 28 21
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 32 9 is_stmt 1
	call	app_state_process_event
.LVL15:
.L14:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 34 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL16:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL17:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE67:
	.size	ble_config_done_handler, .-ble_config_done_handler
	.section	.text.app_ble_is_running,"ax",@progbits
	.align	1
	.globl	app_ble_is_running
	.type	app_ble_is_running, @function
app_ble_is_running:
.LFB71:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
	.loc 1 76 5
	.loc 1 75 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 77 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR2)
	lbu	a0,%lo(.LANCHOR2)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	app_ble_is_running, .-app_ble_is_running
	.section	.text.app_ble_set_config_done_cb,"ax",@progbits
	.align	1
	.globl	app_ble_set_config_done_cb
	.type	app_ble_set_config_done_cb, @function
app_ble_set_config_done_cb:
.LFB72:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 81 5
	.loc 1 80 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 82 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 81 22
	lui	a5,%hi(.LANCHOR3)
	sw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 82 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	app_ble_set_config_done_cb, .-app_ble_set_config_done_cb
	.section	.sbss.g_ble_adv_running,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	g_ble_adv_running, @object
	.size	g_ble_adv_running, 1
g_ble_adv_running:
	.zero	1
	.section	.sbss.g_ble_running,"aw",@nobits
	.set	.LANCHOR2,. + 0
	.type	g_ble_running, @object
	.size	g_ble_running, 1
g_ble_running:
	.zero	1
	.section	.sbss.g_ble_stack_started,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	g_ble_stack_started, @object
	.size	g_ble_stack_started, 1
g_ble_stack_started:
	.zero	1
	.section	.sbss.g_config_done_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_config_done_cb, @object
	.size	g_config_done_cb, 4
g_config_done_cb:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/gpio/m_ble.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_config/../app_state/../app_event/app_event.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_config/../app_state/app_state.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/gpio/../../middle/wifi_if/wifi_if.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/gpio/../../middle/ble/ble_interface.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/gpio/../gpio/m_wifi.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_config/../app_config/app_config.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4c8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF68
	.byte	0xc
	.4byte	.LASF69
	.4byte	.LASF70
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
	.4byte	.LASF36
	.byte	0x3
	.byte	0xc
	.byte	0x10
	.4byte	0x77
	.byte	0x5
	.byte	0x4
	.4byte	0x7d
	.byte	0x6
	.4byte	0x8d
	.byte	0x7
	.4byte	0x8d
	.byte	0x7
	.4byte	0x8d
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x9a
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x8
	.4byte	0x93
	.byte	0x9
	.byte	0x4
	.byte	0xa
	.4byte	.LASF15
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x2
	.byte	0x36
	.byte	0x6
	.4byte	0xd2
	.byte	0xb
	.4byte	.LASF10
	.byte	0
	.byte	0xb
	.4byte	.LASF11
	.byte	0x1
	.byte	0xb
	.4byte	.LASF12
	.byte	0x2
	.byte	0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x2
	.byte	0x40
	.byte	0x6
	.4byte	0x103
	.byte	0xb
	.4byte	.LASF17
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb
	.4byte	.LASF19
	.byte	0x2
	.byte	0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.4byte	0x167
	.byte	0xb
	.4byte	.LASF23
	.byte	0
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb
	.4byte	.LASF25
	.byte	0x2
	.byte	0xb
	.4byte	.LASF26
	.byte	0x3
	.byte	0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0xb
	.4byte	.LASF32
	.byte	0x9
	.byte	0xb
	.4byte	.LASF33
	.byte	0xa
	.byte	0xb
	.4byte	.LASF34
	.byte	0xb
	.byte	0xb
	.4byte	.LASF35
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF37
	.byte	0x4
	.byte	0x14
	.byte	0x3
	.4byte	0x10a
	.byte	0xd
	.byte	0x8
	.byte	0x4
	.byte	0x16
	.byte	0x9
	.4byte	0x197
	.byte	0xe
	.4byte	.LASF38
	.byte	0x4
	.byte	0x17
	.byte	0x16
	.4byte	0x167
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.byte	0x4
	.byte	0x18
	.byte	0xb
	.4byte	0x9f
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF40
	.byte	0x4
	.byte	0x19
	.byte	0x3
	.4byte	0x173
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x5
	.byte	0x7
	.byte	0xe
	.4byte	0x1dc
	.byte	0xb
	.4byte	.LASF41
	.byte	0
	.byte	0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0xb
	.4byte	.LASF43
	.byte	0x2
	.byte	0xb
	.4byte	.LASF44
	.byte	0x3
	.byte	0xb
	.4byte	.LASF45
	.byte	0x4
	.byte	0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0
	.byte	0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc
	.byte	0x21
	.4byte	0x6b
	.byte	0x5
	.byte	0x3
	.4byte	g_config_done_cb
	.byte	0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd
	.byte	0xc
	.4byte	0x103
	.byte	0x5
	.byte	0x3
	.4byte	g_ble_running
	.byte	0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x103
	.byte	0x5
	.byte	0x3
	.4byte	g_ble_stack_started
	.byte	0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.4byte	0x103
	.byte	0x5
	.byte	0x3
	.4byte	g_ble_adv_running
	.byte	0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x12
	.byte	0xc
	.4byte	0x103
	.byte	0
	.byte	0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0x4f
	.byte	0x6
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x1
	.byte	0x9c
	.4byte	0x255
	.byte	0x12
	.string	"cb"
	.byte	0x1
	.byte	0x4f
	.byte	0x3a
	.4byte	0x6b
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x13
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.4byte	0x103
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0x5d
	.byte	0x1
	.byte	0x15
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e1
	.byte	0x16
	.4byte	.LVL1
	.4byte	0x446
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x452
	.4byte	0x2b0
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x45f
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x452
	.4byte	0x2ce
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x46b
	.byte	0x16
	.4byte	.LVL6
	.4byte	0x477
	.byte	0
	.byte	0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x1
	.byte	0x9c
	.4byte	0x30f
	.byte	0x19
	.4byte	.LVL0
	.4byte	0x483
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	ble_config_done_handler
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF74
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.byte	0x1
	.4byte	0x343
	.byte	0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x13
	.byte	0x31
	.4byte	0x8d
	.byte	0x1b
	.4byte	.LASF56
	.byte	0x1
	.byte	0x13
	.byte	0x43
	.4byte	0x8d
	.byte	0x1c
	.byte	0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x1c
	.byte	0x15
	.4byte	0x197
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x26b
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x371
	.byte	0x1f
	.4byte	0x26b
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.byte	0x16
	.4byte	.LVL7
	.4byte	0x48f
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x30f
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x1
	.byte	0x9c
	.4byte	0x446
	.byte	0x20
	.4byte	0x31c
	.4byte	.LLST0
	.byte	0x20
	.4byte	0x328
	.4byte	.LLST1
	.byte	0x21
	.4byte	0x30f
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.4byte	0x42f
	.byte	0x20
	.4byte	0x328
	.4byte	.LLST2
	.byte	0x20
	.4byte	0x31c
	.4byte	.LLST3
	.byte	0x22
	.4byte	0x334
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x23
	.4byte	0x335
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x24
	.4byte	.LVL11
	.4byte	0x3e7
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL12
	.4byte	0x26b
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x49b
	.4byte	0x40a
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL14
	.4byte	0x4a7
	.4byte	0x41d
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x19
	.4byte	.LVL15
	.4byte	0x4b3
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL9
	.4byte	0x4bf
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc
	.byte	0x5
	.byte	0x26
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x207
	.byte	0xa
	.byte	0x25
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x8
	.byte	0x49
	.byte	0x6
	.byte	0x25
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x8
	.byte	0x4e
	.byte	0x6
	.byte	0x25
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x8
	.byte	0x46
	.byte	0x5
	.byte	0x25
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x8
	.byte	0x3b
	.byte	0x6
	.byte	0x25
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x8
	.byte	0x47
	.byte	0x5
	.byte	0x25
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x9
	.byte	0xd
	.byte	0x5
	.byte	0x25
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x5
	.byte	0x1b
	.byte	0x6
	.byte	0x25
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x5
	.byte	0x1c
	.byte	0xd
	.byte	0x25
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0xa
	.byte	0x16
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
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xe
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
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x1f
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
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
.LLST0:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"_POLL_STATE_NOT_READY"
.LASF14:
	.string	"_POLL_NUM_TYPES"
.LASF58:
	.string	"aos_msleep"
.LASF54:
	.string	"app_ble_init"
.LASF60:
	.string	"ble_scan_start"
.LASF1:
	.string	"short int"
.LASF55:
	.string	"ssid"
.LASF45:
	.string	"APP_STATE_WIFI_CONNECTED"
.LASF61:
	.string	"ble_adv_start"
.LASF56:
	.string	"password"
.LASF27:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF75:
	.string	"event"
.LASF72:
	.string	"app_ble_is_running"
.LASF37:
	.string	"app_event_type_t"
.LASF44:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF40:
	.string	"app_event_t"
.LASF29:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF70:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/gpio"
.LASF48:
	.string	"g_config_done_cb"
.LASF28:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF47:
	.string	"APP_STATE_MAX"
.LASF3:
	.string	"long long int"
.LASF51:
	.string	"g_ble_adv_running"
.LASF46:
	.string	"APP_STATE_WIFI_FAILED"
.LASF19:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF2:
	.string	"long int"
.LASF52:
	.string	"ble_slave"
.LASF11:
	.string	"_POLL_TYPE_SIGNAL"
.LASF32:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF34:
	.string	"APP_EVENT_RELAY_STATE_CHANGED"
.LASF64:
	.string	"app_wifi_connect"
.LASF4:
	.string	"unsigned char"
.LASF12:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF50:
	.string	"g_ble_stack_started"
.LASF10:
	.string	"_POLL_TYPE_IGNORE"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"app_ble_start"
.LASF7:
	.string	"long long unsigned int"
.LASF41:
	.string	"APP_STATE_INIT"
.LASF38:
	.string	"type"
.LASF73:
	.string	"app_ble_stop"
.LASF8:
	.string	"unsigned int"
.LASF59:
	.string	"apps_ble_start"
.LASF43:
	.string	"APP_STATE_BLE_CONFIG"
.LASF57:
	.string	"wifi_if_disconnect"
.LASF67:
	.string	"app_config_save_wifi"
.LASF5:
	.string	"short unsigned int"
.LASF25:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF65:
	.string	"app_state_set_next"
.LASF9:
	.string	"char"
.LASF31:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF22:
	.string	"_Bool"
.LASF63:
	.string	"ble_adv_stop"
.LASF39:
	.string	"data"
.LASF20:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF6:
	.string	"long unsigned int"
.LASF26:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF18:
	.string	"_POLL_STATE_SIGNALED"
.LASF23:
	.string	"APP_EVENT_NONE"
.LASF30:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF68:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF15:
	.string	"_poll_types_bits"
.LASF49:
	.string	"g_ble_running"
.LASF42:
	.string	"APP_STATE_CHECK_FLASH"
.LASF66:
	.string	"app_state_process_event"
.LASF33:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF62:
	.string	"ble_set_config_done_cb"
.LASF16:
	.string	"_poll_states_bits"
.LASF74:
	.string	"ble_config_done_handler"
.LASF21:
	.string	"_POLL_NUM_STATES"
.LASF36:
	.string	"app_ble_config_done_cb_t"
.LASF69:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/gpio/m_ble.c"
.LASF13:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF71:
	.string	"app_ble_set_config_done_cb"
.LASF35:
	.string	"APP_EVENT_MAX"
.LASF24:
	.string	"APP_EVENT_BUTTON_HOLD"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
