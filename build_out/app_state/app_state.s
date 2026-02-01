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
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_state/app_state.c"
	.loc 1 72 1
	.cfi_startproc
.LVL0:
	.loc 1 73 5
	.loc 1 74 5
	.loc 1 75 5
	.loc 1 72 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 76 1
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
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 80 5
	.loc 1 79 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 80 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 83 16
	li	a0,2
.LVL3:
	.loc 1 80 8
	beq	a4,a5,.L3
	.loc 1 85 5 is_stmt 1
	.loc 1 87 5
.LVL4:
	.loc 1 88 5
	.loc 1 87 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0+4)
	lw	a0,%lo(.LANCHOR0+4)(a5)
	bne	a0,zero,.L3
	li	a0,1
.LVL5:
.L3:
	.loc 1 93 1
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
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 97 5
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 97 8
	lw	a4,0(a0)
	li	a5,6
	.loc 1 99 16
	li	a0,3
.LVL7:
	.loc 1 97 8
	beq	a4,a5,.L8
	.loc 1 101 12
	li	a0,2
.L8:
	.loc 1 102 1
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
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 106 5
	.loc 1 105 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 106 14
	lw	a0,0(a0)
.LVL9:
	.loc 1 106 8
	li	a5,1
	beq	a0,a5,.L14
	.loc 1 110 12 is_stmt 1
	.loc 1 110 15 is_stmt 0
	li	a5,3
	beq	a0,a5,.L15
	.loc 1 113 12 is_stmt 1
	.loc 1 113 15 is_stmt 0
	li	a5,5
	bne	a0,a5,.L16
.L12:
	.loc 1 118 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L14:
	.cfi_restore_state
	.loc 1 109 16
	li	a0,2
	j	.L12
.L15:
	.loc 1 112 16
	li	a0,4
	j	.L12
.L16:
	.loc 1 117 12
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
	.loc 1 121 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 122 5
	.loc 1 121 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 122 14
	lw	a5,0(a0)
	.loc 1 122 8
	li	a4,1
	.loc 1 124 16
	li	a0,2
.LVL11:
	.loc 1 122 8
	beq	a5,a4,.L18
	.loc 1 125 12 is_stmt 1
	.loc 1 129 12 is_stmt 0
	li	a0,4
	.loc 1 125 15
	bne	a5,a0,.L18
	.loc 1 127 16
	li	a0,3
.L18:
	.loc 1 130 1
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
	.loc 1 133 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 134 5
	.loc 1 133 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 134 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 136 16
	li	a0,2
.LVL13:
	.loc 1 134 8
	beq	a4,a5,.L23
	.loc 1 138 12
	li	a0,5
.L23:
	.loc 1 139 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	state_wifi_failed_handler, .-state_wifi_failed_handler
	.section	.text.state_ble_master_handler,"ax",@progbits
	.align	1
	.type	state_ble_master_handler, @function
state_ble_master_handler:
.LFB15:
	.loc 1 142 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 143 5
	.loc 1 142 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 143 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 145 16
	li	a0,2
.LVL15:
	.loc 1 143 8
	beq	a4,a5,.L27
	.loc 1 148 12
	li	a0,6
.L27:
	.loc 1 149 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	state_ble_master_handler, .-state_ble_master_handler
	.section	.text.app_state_init,"ax",@progbits
	.align	1
	.globl	app_state_init
	.type	app_state_init, @function
app_state_init:
.LFB4:
	.loc 1 29 1 is_stmt 1
	.cfi_startproc
	.loc 1 30 5
	.loc 1 31 5
	.loc 1 29 1 is_stmt 0
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
	.loc 1 31 5
	lui	a0,%hi(.LANCHOR0)
	.loc 1 29 1
	.loc 1 31 5
	addi	s1,a0,%lo(.LANCHOR0)
	li	a2,8
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR0)
	call	memset
.LVL16:
	.loc 1 32 5 is_stmt 1
	.loc 1 34 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 32 35
	sw	zero,0(s1)
	.loc 1 33 5 is_stmt 1
	.loc 1 33 32 is_stmt 0
	sw	zero,4(s1)
	.loc 1 34 1
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
	.loc 1 37 1 is_stmt 1
	.cfi_startproc
	.loc 1 38 5
	.loc 1 37 1 is_stmt 0
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
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
	.loc 1 43 5
	.loc 1 42 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 44 1
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
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 48 5
	.loc 1 47 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 49 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 48 32
	lui	a5,%hi(.LANCHOR0+4)
	sw	a0,%lo(.LANCHOR0+4)(a5)
	.loc 1 49 1
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
	.loc 1 52 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 53 5
	.loc 1 52 1 is_stmt 0
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
	.loc 1 54 31
	lui	s1,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(s1)
	.loc 1 53 8
	beq	a0,zero,.L39
	.loc 1 57 5 is_stmt 1
	.loc 1 57 8 is_stmt 0
	li	a4,6
	bgtu	a5,a4,.L39
	.loc 1 61 43
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 61 29
	lw	a5,0(a5)
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 61 5 is_stmt 1
	.loc 1 61 29 is_stmt 0
	jalr	a5
.LVL19:
	.loc 1 63 5 is_stmt 1
	.loc 1 63 8 is_stmt 0
	lw	a5,0(s1)
	beq	a5,a0,.L41
	.loc 1 64 9 is_stmt 1
	.loc 1 65 9
	.loc 1 65 39 is_stmt 0
	sw	a0,0(s1)
.L41:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 27 is_stmt 0
	lw	a5,0(s1)
.LVL20:
.L39:
	.loc 1 69 1
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
	.size	state_handlers, 28
state_handlers:
	.word	state_init_handler
	.word	state_check_flash_handler
	.word	state_ble_config_handler
	.word	state_wifi_connecting_handler
	.word	state_wifi_connected_handler
	.word	state_wifi_failed_handler
	.word	state_ble_master_handler
	.section	.sbss.g_state_machine,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_state_machine, @object
	.size	g_state_machine, 8
g_state_machine:
	.zero	8
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_state/../app_event/app_event.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_state/app_state.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x40b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
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
	.4byte	0xe0
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
	.byte	0x5
	.4byte	.LASF18
	.byte	0x9
	.byte	0x5
	.4byte	.LASF19
	.byte	0xa
	.byte	0x5
	.4byte	.LASF20
	.byte	0xb
	.byte	0x5
	.4byte	.LASF21
	.byte	0xc
	.byte	0x5
	.4byte	.LASF22
	.byte	0xd
	.byte	0x5
	.4byte	.LASF23
	.byte	0xe
	.byte	0x5
	.4byte	.LASF24
	.byte	0xf
	.byte	0x5
	.4byte	.LASF25
	.byte	0x10
	.byte	0
	.byte	0x6
	.4byte	.LASF28
	.byte	0x2
	.byte	0x18
	.byte	0x3
	.4byte	0x6b
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x1a
	.byte	0x9
	.4byte	0x110
	.byte	0x8
	.4byte	.LASF26
	.byte	0x2
	.byte	0x1b
	.byte	0x16
	.4byte	0xe0
	.byte	0
	.byte	0x8
	.4byte	.LASF27
	.byte	0x2
	.byte	0x1c
	.byte	0xb
	.4byte	0x110
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x6
	.4byte	.LASF29
	.byte	0x2
	.byte	0x1d
	.byte	0x3
	.4byte	0xec
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x3
	.byte	0x7
	.byte	0xe
	.4byte	0x15d
	.byte	0x5
	.4byte	.LASF30
	.byte	0
	.byte	0x5
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5
	.4byte	.LASF32
	.byte	0x2
	.byte	0x5
	.4byte	.LASF33
	.byte	0x3
	.byte	0x5
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5
	.4byte	.LASF35
	.byte	0x5
	.byte	0x5
	.4byte	.LASF36
	.byte	0x6
	.byte	0x5
	.4byte	.LASF37
	.byte	0x7
	.byte	0
	.byte	0x6
	.4byte	.LASF38
	.byte	0x3
	.byte	0x10
	.byte	0x3
	.4byte	0x11e
	.byte	0x7
	.byte	0x8
	.byte	0x3
	.byte	0x12
	.byte	0x9
	.4byte	0x18d
	.byte	0x8
	.4byte	.LASF39
	.byte	0x3
	.byte	0x13
	.byte	0x11
	.4byte	0x15d
	.byte	0
	.byte	0x8
	.4byte	.LASF40
	.byte	0x3
	.byte	0x14
	.byte	0x11
	.4byte	0x15d
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF41
	.byte	0x3
	.byte	0x15
	.byte	0x3
	.4byte	0x169
	.byte	0x6
	.4byte	.LASF42
	.byte	0x3
	.byte	0x17
	.byte	0x17
	.4byte	0x1a5
	.byte	0xa
	.byte	0x4
	.4byte	0x1ab
	.byte	0xb
	.4byte	0x15d
	.4byte	0x1ba
	.byte	0xc
	.4byte	0x1ba
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x112
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF43
	.byte	0xd
	.4byte	.LASF44
	.byte	0x1
	.byte	0x5
	.byte	0x1c
	.4byte	0x18d
	.byte	0x5
	.byte	0x3
	.4byte	g_state_machine
	.byte	0xe
	.4byte	0x199
	.4byte	0x1e9
	.byte	0xf
	.4byte	0x64
	.byte	0x6
	.byte	0
	.byte	0xd
	.4byte	.LASF45
	.byte	0x1
	.byte	0x12
	.byte	0x1c
	.4byte	0x1d9
	.byte	0x5
	.byte	0x3
	.4byte	state_handlers
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8d
	.byte	0x14
	.4byte	0x15d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x226
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8d
	.byte	0x3a
	.4byte	0x1ba
	.4byte	.LLST7
	.byte	0
	.byte	0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x84
	.byte	0x14
	.4byte	0x15d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x251
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x84
	.byte	0x3b
	.4byte	0x1ba
	.4byte	.LLST6
	.byte	0
	.byte	0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x78
	.byte	0x14
	.4byte	0x15d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x27c
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x78
	.byte	0x3e
	.4byte	0x1ba
	.4byte	.LLST5
	.byte	0
	.byte	0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x68
	.byte	0x14
	.4byte	0x15d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a7
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x68
	.byte	0x3f
	.4byte	0x1ba
	.4byte	.LLST4
	.byte	0
	.byte	0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5f
	.byte	0x14
	.4byte	0x15d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d2
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x5f
	.byte	0x3a
	.4byte	0x1ba
	.4byte	.LLST3
	.byte	0
	.byte	0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x4e
	.byte	0x14
	.4byte	0x15d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x30d
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4e
	.byte	0x3b
	.4byte	0x1ba
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.byte	0x57
	.byte	0x11
	.4byte	0x15d
	.4byte	.LLST2
	.byte	0
	.byte	0x10
	.4byte	.LASF54
	.byte	0x1
	.byte	0x47
	.byte	0x14
	.4byte	0x15d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x338
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x47
	.byte	0x34
	.4byte	0x1ba
	.4byte	.LLST0
	.byte	0
	.byte	0x13
	.4byte	.LASF63
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0x15d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x380
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0x33
	.byte	0x32
	.4byte	0x1ba
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.4byte	0x15d
	.4byte	.LLST9
	.byte	0x14
	.4byte	.LVL19
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
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a5
	.byte	0x17
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2e
	.byte	0x25
	.4byte	0x15d
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.4byte	0x15d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	0x15d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x402
	.byte	0x19
	.4byte	.LVL16
	.4byte	0x402
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
	.4byte	.LASF64
	.4byte	.LASF64
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
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
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
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB15
	.4byte	.LFE15
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
.LASF56:
	.string	"app_state_get_next"
.LASF17:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF51:
	.string	"state_ble_config_handler"
.LASF39:
	.string	"current_state"
.LASF40:
	.string	"next_state"
.LASF21:
	.string	"APP_EVENT_MQTT_BLE_MASTER_START"
.LASF34:
	.string	"APP_STATE_WIFI_CONNECTED"
.LASF27:
	.string	"data"
.LASF50:
	.string	"state_wifi_connecting_handler"
.LASF13:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF48:
	.string	"event"
.LASF1:
	.string	"short int"
.LASF59:
	.string	"app_state_init"
.LASF28:
	.string	"app_event_type_t"
.LASF33:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF49:
	.string	"state_wifi_connected_handler"
.LASF57:
	.string	"app_state_get_current"
.LASF15:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF14:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF37:
	.string	"APP_STATE_MAX"
.LASF3:
	.string	"long long int"
.LASF64:
	.string	"memset"
.LASF47:
	.string	"state_wifi_failed_handler"
.LASF30:
	.string	"APP_STATE_INIT"
.LASF52:
	.string	"state_check_flash_handler"
.LASF18:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF24:
	.string	"APP_EVENT_MQTT_BLE_MASTER_DISCONNECT"
.LASF20:
	.string	"APP_EVENT_RELAY_STATE_CHANGED"
.LASF62:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/app_state"
.LASF22:
	.string	"APP_EVENT_MQTT_BLE_MASTER_STOP"
.LASF4:
	.string	"unsigned char"
.LASF61:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_state/app_state.c"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF26:
	.string	"type"
.LASF8:
	.string	"unsigned int"
.LASF32:
	.string	"APP_STATE_BLE_CONFIG"
.LASF44:
	.string	"g_state_machine"
.LASF5:
	.string	"short unsigned int"
.LASF11:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF58:
	.string	"app_state_set_next"
.LASF43:
	.string	"char"
.LASF2:
	.string	"long int"
.LASF23:
	.string	"APP_EVENT_MQTT_BLE_MASTER_CONNECT"
.LASF55:
	.string	"new_state"
.LASF38:
	.string	"app_state_t"
.LASF6:
	.string	"long unsigned int"
.LASF45:
	.string	"state_handlers"
.LASF36:
	.string	"APP_STATE_BLE_MASTER"
.LASF12:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF41:
	.string	"app_state_machine_t"
.LASF9:
	.string	"APP_EVENT_NONE"
.LASF16:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF42:
	.string	"app_state_handler_t"
.LASF31:
	.string	"APP_STATE_CHECK_FLASH"
.LASF63:
	.string	"app_state_process_event"
.LASF35:
	.string	"APP_STATE_WIFI_FAILED"
.LASF54:
	.string	"state_init_handler"
.LASF19:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF46:
	.string	"state_ble_master_handler"
.LASF25:
	.string	"APP_EVENT_MAX"
.LASF29:
	.string	"app_event_t"
.LASF53:
	.string	"next"
.LASF10:
	.string	"APP_EVENT_BUTTON_HOLD"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
