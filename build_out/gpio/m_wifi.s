	.file	"m_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.app_wifi_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[APP][WiFi] MGMR not ready, cannot connect\r\n"
	.section	.text.app_wifi_connect,"ax",@progbits
	.align	1
	.globl	app_wifi_connect
	.type	app_wifi_connect, @function
app_wifi_connect:
.LFB3:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/gpio/m_wifi.c"
	.loc 1 12 1
	.cfi_startproc
.LVL0:
	.loc 1 13 5
	.loc 1 13 8 is_stmt 0
	beq	a0,zero,.L13
	.loc 1 12 1 discriminator 1
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
	.loc 1 13 21 discriminator 1
	sw	a1,-20(s0)
	beq	a1,zero,.L1
	mv	s1,a0
	.loc 1 17 5 is_stmt 1
	.loc 1 17 10 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL1:
	.loc 1 17 8
	lw	a1,-20(s0)
	bne	a0,zero,.L5
	.loc 1 18 9 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL2:
	.loc 1 19 9
	.loc 1 19 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 19 12
	beq	a5,zero,.L1
	.loc 1 20 13 is_stmt 1
	jalr	a5
.LVL3:
.L1:
	.loc 1 26 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL4:
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,-1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L5:
	.cfi_restore_state
	.loc 1 25 5 is_stmt 1
	.loc 1 26 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 25 12
	mv	a0,s1
	.loc 1 26 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL6:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 25 12
	tail	wifi_if_connect
.LVL7:
.L13:
	.loc 1 26 1
	li	a0,-1
.LVL8:
	ret
	.cfi_endproc
.LFE3:
	.size	app_wifi_connect, .-app_wifi_connect
	.section	.text.app_wifi_set_connected_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_connected_cb
	.type	app_wifi_set_connected_cb, @function
app_wifi_set_connected_cb:
.LFB4:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 30 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 32 5
	tail	wifi_if_set_connected_cb
.LVL10:
	.cfi_endproc
.LFE4:
	.size	app_wifi_set_connected_cb, .-app_wifi_set_connected_cb
	.section	.text.app_wifi_set_disconnected_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_disconnected_cb
	.type	app_wifi_set_disconnected_cb, @function
app_wifi_set_disconnected_cb:
.LFB5:
	.loc 1 36 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 36 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 39 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 38 5
	tail	wifi_if_set_disconnected_cb
.LVL12:
	.cfi_endproc
.LFE5:
	.size	app_wifi_set_disconnected_cb, .-app_wifi_set_disconnected_cb
	.section	.text.app_wifi_set_connect_failed_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_connect_failed_cb
	.type	app_wifi_set_connect_failed_cb, @function
app_wifi_set_connect_failed_cb:
.LFB6:
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 43 5
	.loc 1 42 1 is_stmt 0
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
	.loc 1 43 25
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 44 5 is_stmt 1
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 44 5
	tail	wifi_if_set_connect_failed_cb
.LVL14:
	.cfi_endproc
.LFE6:
	.size	app_wifi_set_connect_failed_cb, .-app_wifi_set_connect_failed_cb
	.section	.text.app_wifi_task,"ax",@progbits
	.align	1
	.globl	app_wifi_task
	.type	app_wifi_task, @function
app_wifi_task:
.LFB7:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL15:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LVL16:
.L23:
	.loc 1 49 5 discriminator 1
	.loc 1 50 5 discriminator 1
	.loc 1 51 9 discriminator 1
	li	a0,1000
	call	aos_msleep
.LVL17:
	.loc 1 50 11 discriminator 1
	j	.L23
	.cfi_endproc
.LFE7:
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
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/gpio/m_wifi.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/gpio/../../middle/wifi_if/wifi_if.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x276
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
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
	.4byte	.LASF33
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
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x113
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2f
	.byte	0x1a
	.4byte	0xa9
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LVL17
	.4byte	0x224
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
	.byte	0x29
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x14a
	.byte	0xf
	.string	"cb"
	.byte	0x1
	.byte	0x29
	.byte	0x42
	.4byte	0x9d
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LVL14
	.4byte	0x231
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
	.byte	0x23
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x181
	.byte	0xf
	.string	"cb"
	.byte	0x1
	.byte	0x23
	.byte	0x3e
	.4byte	0x91
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LVL12
	.4byte	0x23d
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
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b8
	.byte	0xf
	.string	"cb"
	.byte	0x1
	.byte	0x1d
	.byte	0x38
	.4byte	0x7e
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LVL10
	.4byte	0x249
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
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x224
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb
	.byte	0x22
	.4byte	0xab
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb
	.byte	0x34
	.4byte	0xab
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x255
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x261
	.4byte	0x212
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x10
	.4byte	.LVL7
	.4byte	0x26d
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x207
	.byte	0xa
	.byte	0x15
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.byte	0x15
	.byte	0x6
	.byte	0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.byte	0x14
	.byte	0x6
	.byte	0x15
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0x13
	.byte	0x6
	.byte	0x15
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.byte	0x10
	.byte	0x5
	.byte	0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x15
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x4
	.byte	0xb
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
	.byte	0x96,0x42
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
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE3
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
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL7
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"app_wifi_connect_failed_cb_t"
.LASF30:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF23:
	.string	"aos_msleep"
.LASF17:
	.string	"app_wifi_set_connect_failed_cb"
.LASF24:
	.string	"wifi_if_set_connect_failed_cb"
.LASF4:
	.string	"unsigned char"
.LASF31:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/gpio/m_wifi.c"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF29:
	.string	"wifi_if_connect"
.LASF18:
	.string	"params"
.LASF26:
	.string	"wifi_if_set_connected_cb"
.LASF15:
	.string	"g_disconnected_cb"
.LASF27:
	.string	"wifi_if_is_mgmr_ready"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF33:
	.string	"g_connect_failed_cb"
.LASF16:
	.string	"app_wifi_task"
.LASF20:
	.string	"app_wifi_set_connected_cb"
.LASF3:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF28:
	.string	"printf"
.LASF34:
	.string	"app_wifi_connect"
.LASF11:
	.string	"app_wifi_connected_cb_t"
.LASF21:
	.string	"ssid"
.LASF1:
	.string	"short int"
.LASF14:
	.string	"g_connected_cb"
.LASF19:
	.string	"app_wifi_set_disconnected_cb"
.LASF2:
	.string	"long int"
.LASF12:
	.string	"app_wifi_disconnected_cb_t"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF25:
	.string	"wifi_if_set_disconnected_cb"
.LASF32:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/gpio"
.LASF22:
	.string	"password"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
