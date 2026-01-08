	.file	"app_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_wifi_init,"ax",@progbits
	.align	1
	.globl	app_wifi_init
	.type	app_wifi_init, @function
app_wifi_init:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_wifi/app_wifi.c"
	.loc 1 11 1
	.cfi_startproc
	.loc 1 12 5
	.loc 1 11 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 13 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 12 12
	tail	wifi_if_init
.LVL0:
	.cfi_endproc
.LFE3:
	.size	app_wifi_init, .-app_wifi_init
	.section	.rodata.app_wifi_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[APP][WiFi] MGMR not ready, cannot connect\r\n"
	.section	.text.app_wifi_connect,"ax",@progbits
	.align	1
	.globl	app_wifi_connect
	.type	app_wifi_connect, @function
app_wifi_connect:
.LFB4:
	.loc 1 16 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 17 5
	.loc 1 17 8 is_stmt 0
	beq	a0,zero,.L15
	.loc 1 16 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 17 21 discriminator 1
	sw	a1,-20(s0)
	beq	a1,zero,.L3
	mv	s1,a0
	.loc 1 21 5 is_stmt 1
	.loc 1 21 10 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL2:
	.loc 1 21 8
	lw	a1,-20(s0)
	bne	a0,zero,.L7
	.loc 1 22 9 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL3:
	.loc 1 23 9
	.loc 1 23 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 23 12
	beq	a5,zero,.L3
	.loc 1 24 13 is_stmt 1
	jalr	a5
.LVL4:
.L3:
	.loc 1 30 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL5:
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,-1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L7:
	.cfi_restore_state
	.loc 1 29 5 is_stmt 1
	.loc 1 30 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 29 12
	mv	a0,s1
	.loc 1 30 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL7:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 29 12
	tail	wifi_if_connect
.LVL8:
.L15:
	.loc 1 30 1
	li	a0,-1
.LVL9:
	ret
	.cfi_endproc
.LFE4:
	.size	app_wifi_connect, .-app_wifi_connect
	.section	.text.app_wifi_disconnect,"ax",@progbits
	.align	1
	.globl	app_wifi_disconnect
	.type	app_wifi_disconnect, @function
app_wifi_disconnect:
.LFB5:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
	.loc 1 34 5
	.loc 1 33 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 35 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 34 12
	tail	wifi_if_disconnect
.LVL10:
	.cfi_endproc
.LFE5:
	.size	app_wifi_disconnect, .-app_wifi_disconnect
	.section	.text.app_wifi_disable,"ax",@progbits
	.align	1
	.globl	app_wifi_disable
	.type	app_wifi_disable, @function
app_wifi_disable:
.LFB6:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
	.loc 1 39 5
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 40 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 39 12
	tail	wifi_if_disable
.LVL11:
	.cfi_endproc
.LFE6:
	.size	app_wifi_disable, .-app_wifi_disable
	.section	.text.app_wifi_enable,"ax",@progbits
	.align	1
	.globl	app_wifi_enable
	.type	app_wifi_enable, @function
app_wifi_enable:
.LFB7:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
	.loc 1 44 5
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 45 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 44 12
	tail	wifi_if_enable
.LVL12:
	.cfi_endproc
.LFE7:
	.size	app_wifi_enable, .-app_wifi_enable
	.section	.text.app_wifi_is_connected,"ax",@progbits
	.align	1
	.globl	app_wifi_is_connected
	.type	app_wifi_is_connected, @function
app_wifi_is_connected:
.LFB8:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
	.loc 1 49 5
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 50 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 49 12
	tail	wifi_if_is_connected
.LVL13:
	.cfi_endproc
.LFE8:
	.size	app_wifi_is_connected, .-app_wifi_is_connected
	.section	.text.app_wifi_is_mgmr_ready,"ax",@progbits
	.align	1
	.globl	app_wifi_is_mgmr_ready
	.type	app_wifi_is_mgmr_ready, @function
app_wifi_is_mgmr_ready:
.LFB9:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
	.loc 1 54 5
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 55 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 54 12
	tail	wifi_if_is_mgmr_ready
.LVL14:
	.cfi_endproc
.LFE9:
	.size	app_wifi_is_mgmr_ready, .-app_wifi_is_mgmr_ready
	.section	.text.app_wifi_set_connected_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_connected_cb
	.type	app_wifi_set_connected_cb, @function
app_wifi_set_connected_cb:
.LFB10:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 61 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 60 5
	tail	wifi_if_set_connected_cb
.LVL16:
	.cfi_endproc
.LFE10:
	.size	app_wifi_set_connected_cb, .-app_wifi_set_connected_cb
	.section	.text.app_wifi_set_disconnected_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_disconnected_cb
	.type	app_wifi_set_disconnected_cb, @function
app_wifi_set_disconnected_cb:
.LFB11:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 65 5
	.loc 1 66 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 67 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 66 5
	tail	wifi_if_set_disconnected_cb
.LVL18:
	.cfi_endproc
.LFE11:
	.size	app_wifi_set_disconnected_cb, .-app_wifi_set_disconnected_cb
	.section	.text.app_wifi_set_connect_failed_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_connect_failed_cb
	.type	app_wifi_set_connect_failed_cb, @function
app_wifi_set_connect_failed_cb:
.LFB12:
	.loc 1 70 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 71 5
	.loc 1 70 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 73 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 71 25
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 72 5 is_stmt 1
	.loc 1 73 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 72 5
	tail	wifi_if_set_connect_failed_cb
.LVL20:
	.cfi_endproc
.LFE12:
	.size	app_wifi_set_connect_failed_cb, .-app_wifi_set_connect_failed_cb
	.section	.text.app_wifi_task,"ax",@progbits
	.align	1
	.globl	app_wifi_task
	.type	app_wifi_task, @function
app_wifi_task:
.LFB13:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL21:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LVL22:
.L35:
	.loc 1 77 5 discriminator 1
	.loc 1 78 5 discriminator 1
	.loc 1 79 9 discriminator 1
	li	a0,1000
	call	aos_msleep
.LVL23:
	.loc 1 78 11 discriminator 1
	j	.L35
	.cfi_endproc
.LFE13:
	.size	app_wifi_task, .-app_wifi_task
	.section	.sbss.g_connect_failed_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_connect_failed_cb, @object
	.size	g_connect_failed_cb, 4
g_connect_failed_cb:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_wifi/app_wifi.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_wifi/../../middle/wifi_if/wifi_if.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x38a
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	0x6b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x10
	.4byte	0x8a
	.byte	0x6
	.byte	0x4
	.4byte	0x90
	.byte	0x7
	.byte	0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x9
	.byte	0x10
	.4byte	0x8a
	.byte	0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0xa
	.byte	0x10
	.4byte	0x8a
	.byte	0x8
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x72
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x6
	.byte	0x20
	.4byte	0x7e
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x7
	.byte	0x23
	.4byte	0x91
	.byte	0xa
	.4byte	.LASF45
	.byte	0x1
	.byte	0x8
	.byte	0x25
	.4byte	0x9d
	.byte	0x5
	.byte	0x3
	.4byte	g_connect_failed_cb
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x113
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4b
	.byte	0x1a
	.4byte	0xa9
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LVL23
	.4byte	0x2fc
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x45
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x14a
	.byte	0xf
	.string	"cb"
	.byte	0x1
	.byte	0x45
	.byte	0x42
	.4byte	0x9d
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LVL20
	.4byte	0x309
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x181
	.byte	0xf
	.string	"cb"
	.byte	0x1
	.byte	0x3f
	.byte	0x3e
	.4byte	0x91
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LVL18
	.4byte	0x315
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x39
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b8
	.byte	0xf
	.string	"cb"
	.byte	0x1
	.byte	0x39
	.byte	0x38
	.4byte	0x7e
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LVL16
	.4byte	0x321
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x77
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1dc
	.byte	0x12
	.4byte	.LVL14
	.4byte	0x32d
	.byte	0
	.byte	0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x77
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x200
	.byte	0x12
	.4byte	.LVL13
	.4byte	0x339
	.byte	0
	.byte	0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x224
	.byte	0x12
	.4byte	.LVL12
	.4byte	0x345
	.byte	0
	.byte	0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x248
	.byte	0x12
	.4byte	.LVL11
	.4byte	0x351
	.byte	0
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x26c
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x35d
	.byte	0
	.byte	0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d8
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf
	.byte	0x22
	.4byte	0xab
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf
	.byte	0x34
	.4byte	0xab
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LVL2
	.4byte	0x32d
	.byte	0x15
	.4byte	.LVL3
	.4byte	0x369
	.4byte	0x2c6
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x10
	.4byte	.LVL8
	.4byte	0x375
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fc
	.byte	0x12
	.4byte	.LVL0
	.4byte	0x381
	.byte	0
	.byte	0x16
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x207
	.byte	0xa
	.byte	0x17
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x4
	.byte	0x15
	.byte	0x6
	.byte	0x17
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x4
	.byte	0x14
	.byte	0x6
	.byte	0x17
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.byte	0x13
	.byte	0x6
	.byte	0x17
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.byte	0x10
	.byte	0x5
	.byte	0x17
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0xf
	.byte	0x5
	.byte	0x17
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.byte	0xe
	.byte	0x5
	.byte	0x17
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x4
	.byte	0xd
	.byte	0x5
	.byte	0x17
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x4
	.byte	0xc
	.byte	0x5
	.byte	0x17
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x17
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x4
	.byte	0xb
	.byte	0x5
	.byte	0x17
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x4
	.byte	0xa
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE4
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
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
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
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF24:
	.string	"app_wifi_disable"
.LASF13:
	.string	"app_wifi_connect_failed_cb_t"
.LASF22:
	.string	"app_wifi_is_connected"
.LASF25:
	.string	"app_wifi_disconnect"
.LASF30:
	.string	"aos_msleep"
.LASF17:
	.string	"app_wifi_set_connect_failed_cb"
.LASF31:
	.string	"wifi_if_set_connect_failed_cb"
.LASF4:
	.string	"unsigned char"
.LASF21:
	.string	"app_wifi_is_mgmr_ready"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF40:
	.string	"wifi_if_connect"
.LASF38:
	.string	"wifi_if_disconnect"
.LASF18:
	.string	"params"
.LASF36:
	.string	"wifi_if_enable"
.LASF41:
	.string	"wifi_if_init"
.LASF33:
	.string	"wifi_if_set_connected_cb"
.LASF15:
	.string	"g_disconnected_cb"
.LASF34:
	.string	"wifi_if_is_mgmr_ready"
.LASF8:
	.string	"unsigned int"
.LASF29:
	.string	"app_wifi_init"
.LASF7:
	.string	"long long unsigned int"
.LASF45:
	.string	"g_connect_failed_cb"
.LASF35:
	.string	"wifi_if_is_connected"
.LASF16:
	.string	"app_wifi_task"
.LASF20:
	.string	"app_wifi_set_connected_cb"
.LASF37:
	.string	"wifi_if_disable"
.LASF44:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_wifi"
.LASF3:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF39:
	.string	"printf"
.LASF26:
	.string	"app_wifi_connect"
.LASF11:
	.string	"app_wifi_connected_cb_t"
.LASF27:
	.string	"ssid"
.LASF1:
	.string	"short int"
.LASF14:
	.string	"g_connected_cb"
.LASF19:
	.string	"app_wifi_set_disconnected_cb"
.LASF2:
	.string	"long int"
.LASF43:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_wifi/app_wifi.c"
.LASF12:
	.string	"app_wifi_disconnected_cb_t"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF32:
	.string	"wifi_if_set_disconnected_cb"
.LASF23:
	.string	"app_wifi_enable"
.LASF28:
	.string	"password"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
