	.file	"app_state.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.state_init_handler,"ax",@progbits
	.align	1
	.type	state_init_handler, @function
state_init_handler:
.LFB9:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_state/app_state.c"
	.loc 1 69 1
	.cfi_startproc
.LVL0:
	.loc 1 70 5
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 69 1 is_stmt 0
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
	li	a0,1
.LVL1:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	state_init_handler, .-state_init_handler
	.section	.text.state_check_flash_handler,"ax",@progbits
	.align	1
	.type	state_check_flash_handler, @function
state_check_flash_handler:
.LFB10:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 77 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 77 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 80 16
	li	a0,2
.LVL3:
	.loc 1 77 8
	beq	a4,a5,.L3
	.loc 1 82 5 is_stmt 1
	.loc 1 84 5
.LVL4:
	.loc 1 85 5
	.loc 1 84 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0+4)
	lw	a0,%lo(.LANCHOR0+4)(a5)
	bne	a0,zero,.L3
	li	a0,1
.LVL5:
.L3:
	.loc 1 90 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	state_check_flash_handler, .-state_check_flash_handler
	.section	.text.state_ble_config_handler,"ax",@progbits
	.align	1
	.type	state_ble_config_handler, @function
state_ble_config_handler:
.LFB11:
	.loc 1 93 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 94 5
	.loc 1 93 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 94 8
	lw	a4,0(a0)
	li	a5,6
	.loc 1 96 16
	li	a0,3
.LVL7:
	.loc 1 94 8
	beq	a4,a5,.L8
	.loc 1 98 12
	li	a0,2
.L8:
	.loc 1 99 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	state_ble_config_handler, .-state_ble_config_handler
	.section	.text.state_wifi_connecting_handler,"ax",@progbits
	.align	1
	.type	state_wifi_connecting_handler, @function
state_wifi_connecting_handler:
.LFB12:
	.loc 1 102 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 103 5
	.loc 1 102 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 103 14
	lw	a0,0(a0)
.LVL9:
	.loc 1 103 8
	li	a5,1
	beq	a0,a5,.L14
	.loc 1 107 12 is_stmt 1
	.loc 1 107 15 is_stmt 0
	li	a5,3
	beq	a0,a5,.L15
	.loc 1 110 12 is_stmt 1
	.loc 1 110 15 is_stmt 0
	li	a5,5
	bne	a0,a5,.L16
.L12:
	.loc 1 115 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L14:
	.cfi_restore_state
	.loc 1 106 16
	li	a0,2
	j	.L12
.L15:
	.loc 1 109 16
	li	a0,4
	j	.L12
.L16:
	.loc 1 114 12
	li	a0,3
	j	.L12
	.cfi_endproc
.LFE12:
	.size	state_wifi_connecting_handler, .-state_wifi_connecting_handler
	.section	.text.state_wifi_connected_handler,"ax",@progbits
	.align	1
	.type	state_wifi_connected_handler, @function
state_wifi_connected_handler:
.LFB13:
	.loc 1 118 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 119 5
	.loc 1 118 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 119 14
	lw	a5,0(a0)
	.loc 1 119 8
	li	a4,1
	.loc 1 121 16
	li	a0,2
.LVL11:
	.loc 1 119 8
	beq	a5,a4,.L18
	.loc 1 122 12 is_stmt 1
	.loc 1 126 12 is_stmt 0
	li	a0,4
	.loc 1 122 15
	bne	a5,a0,.L18
	.loc 1 124 16
	li	a0,3
.L18:
	.loc 1 127 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	state_wifi_connected_handler, .-state_wifi_connected_handler
	.section	.text.state_wifi_failed_handler,"ax",@progbits
	.align	1
	.type	state_wifi_failed_handler, @function
state_wifi_failed_handler:
.LFB14:
	.loc 1 130 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 131 5
	.loc 1 130 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 131 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 133 16
	li	a0,2
.LVL13:
	.loc 1 131 8
	beq	a4,a5,.L23
	.loc 1 135 12
	li	a0,5
.L23:
	.loc 1 136 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	state_wifi_failed_handler, .-state_wifi_failed_handler
	.section	.text.app_state_init,"ax",@progbits
	.align	1
	.globl	app_state_init
	.type	app_state_init, @function
app_state_init:
.LFB4:
	.loc 1 27 1 is_stmt 1
	.cfi_startproc
	.loc 1 28 5
	.loc 1 27 1 is_stmt 0
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
	.loc 1 28 5
	lui	a0,%hi(.LANCHOR0)
	.loc 1 27 1
	.loc 1 28 5
	addi	s1,a0,%lo(.LANCHOR0)
	li	a2,8
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR0)
	call	memset
.LVL14:
	.loc 1 29 5 is_stmt 1
	.loc 1 31 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 29 35
	sw	zero,0(s1)
	.loc 1 30 5 is_stmt 1
	.loc 1 30 32 is_stmt 0
	sw	zero,4(s1)
	.loc 1 31 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	app_state_init, .-app_state_init
	.section	.text.app_state_get_current,"ax",@progbits
	.align	1
	.globl	app_state_get_current
	.type	app_state_get_current, @function
app_state_get_current:
.LFB5:
	.loc 1 34 1 is_stmt 1
	.cfi_startproc
	.loc 1 35 5
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 36 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	app_state_get_current, .-app_state_get_current
	.section	.text.app_state_get_next,"ax",@progbits
	.align	1
	.globl	app_state_get_next
	.type	app_state_get_next, @function
app_state_get_next:
.LFB6:
	.loc 1 39 1 is_stmt 1
	.cfi_startproc
	.loc 1 40 5
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 41 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR0+4)
	lw	a0,%lo(.LANCHOR0+4)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	app_state_get_next, .-app_state_get_next
	.section	.text.app_state_set_next,"ax",@progbits
	.align	1
	.globl	app_state_set_next
	.type	app_state_set_next, @function
app_state_set_next:
.LFB7:
	.loc 1 44 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 45 5
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 46 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 45 32
	lui	a5,%hi(.LANCHOR0+4)
	sw	a0,%lo(.LANCHOR0+4)(a5)
	.loc 1 46 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	app_state_set_next, .-app_state_set_next
	.section	.text.app_state_process_event,"ax",@progbits
	.align	1
	.globl	app_state_process_event
	.type	app_state_process_event, @function
app_state_process_event:
.LFB8:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 50 5
	.loc 1 49 1 is_stmt 0
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
	.loc 1 51 31
	lui	s1,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(s1)
	.loc 1 50 8
	beq	a0,zero,.L35
	.loc 1 54 5 is_stmt 1
	.loc 1 54 8 is_stmt 0
	li	a4,5
	bgtu	a5,a4,.L35
	.loc 1 58 43
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 58 29
	lw	a5,0(a5)
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 58 5 is_stmt 1
	.loc 1 58 29 is_stmt 0
	jalr	a5
.LVL17:
	.loc 1 60 5 is_stmt 1
	.loc 1 60 8 is_stmt 0
	lw	a5,0(s1)
	beq	a5,a0,.L37
	.loc 1 61 9 is_stmt 1
	.loc 1 62 9
	.loc 1 62 39 is_stmt 0
	sw	a0,0(s1)
.L37:
	.loc 1 65 5 is_stmt 1
	.loc 1 65 27 is_stmt 0
	lw	a5,0(s1)
.LVL18:
.L35:
	.loc 1 66 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	app_state_process_event, .-app_state_process_event
	.section	.rodata.state_handlers,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	state_handlers, @object
	.size	state_handlers, 24
state_handlers:
	.word	state_init_handler
	.word	state_check_flash_handler
	.word	state_ble_config_handler
	.word	state_wifi_connecting_handler
	.word	state_wifi_connected_handler
	.word	state_wifi_failed_handler
	.section	.sbss.g_state_machine,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_state_machine, @object
	.size	g_state_machine, 8
g_state_machine:
	.zero	8
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_state/../app_event/app_event.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_state/app_state.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3aa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
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
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x2
	.byte	0x6
	.byte	0xe
	.4byte	0xb0
	.byte	0x5
	.4byte	.LASF9
	.byte	0
	.byte	0x5
	.4byte	.LASF10
	.byte	0x1
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0x5
	.4byte	.LASF15
	.byte	0x6
	.byte	0x5
	.4byte	.LASF16
	.byte	0x7
	.byte	0x5
	.4byte	.LASF17
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0x10
	.byte	0x3
	.4byte	0x6b
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x12
	.byte	0x9
	.4byte	0xe0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x2
	.byte	0x13
	.byte	0x16
	.4byte	0xb0
	.byte	0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x2
	.byte	0x14
	.byte	0xb
	.4byte	0xe0
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x6
	.4byte	.LASF21
	.byte	0x2
	.byte	0x15
	.byte	0x3
	.4byte	0xbc
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x3
	.byte	0x7
	.byte	0xe
	.4byte	0x127
	.byte	0x5
	.4byte	.LASF22
	.byte	0
	.byte	0x5
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5
	.4byte	.LASF24
	.byte	0x2
	.byte	0x5
	.4byte	.LASF25
	.byte	0x3
	.byte	0x5
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5
	.4byte	.LASF27
	.byte	0x5
	.byte	0x5
	.4byte	.LASF28
	.byte	0x6
	.byte	0
	.byte	0x6
	.4byte	.LASF29
	.byte	0x3
	.byte	0xf
	.byte	0x3
	.4byte	0xee
	.byte	0x7
	.byte	0x8
	.byte	0x3
	.byte	0x11
	.byte	0x9
	.4byte	0x157
	.byte	0x8
	.4byte	.LASF30
	.byte	0x3
	.byte	0x12
	.byte	0x11
	.4byte	0x127
	.byte	0
	.byte	0x8
	.4byte	.LASF31
	.byte	0x3
	.byte	0x13
	.byte	0x11
	.4byte	0x127
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF32
	.byte	0x3
	.byte	0x14
	.byte	0x3
	.4byte	0x133
	.byte	0x6
	.4byte	.LASF33
	.byte	0x3
	.byte	0x16
	.byte	0x17
	.4byte	0x16f
	.byte	0xa
	.byte	0x4
	.4byte	0x175
	.byte	0xb
	.4byte	0x127
	.4byte	0x184
	.byte	0xc
	.4byte	0x184
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xe2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF34
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5
	.byte	0x1c
	.4byte	0x157
	.byte	0x5
	.byte	0x3
	.4byte	g_state_machine
	.byte	0xe
	.4byte	0x163
	.4byte	0x1b3
	.byte	0xf
	.4byte	0x64
	.byte	0x5
	.byte	0
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x11
	.byte	0x1c
	.4byte	0x1a3
	.byte	0x5
	.byte	0x3
	.4byte	state_handlers
	.byte	0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x81
	.byte	0x14
	.4byte	0x127
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f0
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x81
	.byte	0x3b
	.4byte	0x184
	.4byte	.LLST6
	.byte	0
	.byte	0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x75
	.byte	0x14
	.4byte	0x127
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x21b
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x75
	.byte	0x3e
	.4byte	0x184
	.4byte	.LLST5
	.byte	0
	.byte	0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x65
	.byte	0x14
	.4byte	0x127
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x246
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x65
	.byte	0x3f
	.4byte	0x184
	.4byte	.LLST4
	.byte	0
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.4byte	0x127
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x271
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x5c
	.byte	0x3a
	.4byte	0x184
	.4byte	.LLST3
	.byte	0
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4b
	.byte	0x14
	.4byte	0x127
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ac
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4b
	.byte	0x3b
	.4byte	0x184
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x54
	.byte	0x11
	.4byte	0x127
	.4byte	.LLST2
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x44
	.byte	0x14
	.4byte	0x127
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d7
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x44
	.byte	0x34
	.4byte	0x184
	.4byte	.LLST0
	.byte	0
	.byte	0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x127
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x31f
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x30
	.byte	0x32
	.4byte	0x184
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3a
	.byte	0x11
	.4byte	0x127
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LVL17
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x344
	.byte	0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.byte	0x25
	.4byte	0x127
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x127
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	0x127
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a1
	.byte	0x19
	.4byte	.LVL14
	.4byte	0x3a1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x4
	.byte	0x21
	.byte	0x8
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
	.byte	0x5
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x3
	.4byte	g_state_machine+4
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB14
	.4byte	.LFE14
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"APP_STATE_BLE_CONFIG"
.LASF22:
	.string	"APP_STATE_INIT"
.LASF43:
	.string	"next"
.LASF45:
	.string	"new_state"
.LASF50:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF20:
	.string	"app_event_type_t"
.LASF9:
	.string	"APP_EVENT_NONE"
.LASF16:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF26:
	.string	"APP_STATE_WIFI_CONNECTED"
.LASF42:
	.string	"state_check_flash_handler"
.LASF35:
	.string	"g_state_machine"
.LASF25:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF31:
	.string	"next_state"
.LASF47:
	.string	"app_state_get_current"
.LASF48:
	.string	"app_state_set_next"
.LASF14:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF23:
	.string	"APP_STATE_CHECK_FLASH"
.LASF19:
	.string	"data"
.LASF37:
	.string	"state_wifi_failed_handler"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF44:
	.string	"state_init_handler"
.LASF29:
	.string	"app_state_t"
.LASF4:
	.string	"unsigned char"
.LASF54:
	.string	"memset"
.LASF36:
	.string	"state_handlers"
.LASF28:
	.string	"APP_STATE_MAX"
.LASF30:
	.string	"current_state"
.LASF13:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF39:
	.string	"event"
.LASF52:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_state"
.LASF8:
	.string	"unsigned int"
.LASF38:
	.string	"state_wifi_connected_handler"
.LASF7:
	.string	"long long unsigned int"
.LASF40:
	.string	"state_wifi_connecting_handler"
.LASF33:
	.string	"app_state_handler_t"
.LASF41:
	.string	"state_ble_config_handler"
.LASF27:
	.string	"APP_STATE_WIFI_FAILED"
.LASF21:
	.string	"app_event_t"
.LASF15:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF3:
	.string	"long long int"
.LASF46:
	.string	"app_state_get_next"
.LASF34:
	.string	"char"
.LASF11:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF12:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF18:
	.string	"type"
.LASF1:
	.string	"short int"
.LASF51:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_state/app_state.c"
.LASF2:
	.string	"long int"
.LASF17:
	.string	"APP_EVENT_MAX"
.LASF10:
	.string	"APP_EVENT_BUTTON_HOLD"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"app_state_process_event"
.LASF32:
	.string	"app_state_machine_t"
.LASF49:
	.string	"app_state_init"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
