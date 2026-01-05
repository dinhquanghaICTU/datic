	.file	"ble_conn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.on_disconnected.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	">>> Disconnected, reason %d \r\n"
	.align	2
.LC1:
	.string	">>> turn on adv"
	.section	.text.on_disconnected,"ax",@progbits
	.align	1
	.type	on_disconnected, @function
on_disconnected:
.LFB76:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_conn.c"
	.loc 1 58 1
	.cfi_startproc
.LVL0:
	.loc 1 59 6
	.loc 1 60 5
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 60 9
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 58 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 60 8
	bne	a5,zero,.L2
.LVL1:
.L5:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 9 is_stmt 0
	addi	a1,s0,-44
	mv	a0,s2
	call	bt_conn_get_info
.LVL2:
	.loc 1 66 8
	beq	a0,zero,.L7
.L1:
	.loc 1 79 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL3:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	.loc 1 61 9 is_stmt 1
	.loc 1 61 13 is_stmt 0
	jalr	a5
.LVL5:
	.loc 1 61 12
	beq	a0,zero,.L5
	j	.L1
.L7:
	.loc 1 70 5 is_stmt 1
	.loc 1 70 8 is_stmt 0
	lbu	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L1
.LVL6:
.LBB4:
.LBB5:
	.loc 1 74 5 is_stmt 1
	.loc 1 75 5 is_stmt 0
	lui	a0,%hi(.LC0)
	.loc 1 74 18
	lui	a5,%hi(.LANCHOR1)
	.loc 1 75 5
	mv	a1,s1
	addi	a0,a0,%lo(.LC0)
	.loc 1 74 18
	sw	zero,%lo(.LANCHOR1)(a5)
	.loc 1 75 5 is_stmt 1
	call	printf
.LVL7:
	.loc 1 76 5
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL8:
	.loc 1 77 5
	call	ble_adv_start
.LVL9:
	j	.L1
.LBE5:
.LBE4:
	.cfi_endproc
.LFE76:
	.size	on_disconnected, .-on_disconnected
	.section	.rodata.on_connected.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	">>> Connected\r\n"
	.align	2
.LC3:
	.string	">>> turn  off adv\r\n"
	.section	.text.on_connected,"ax",@progbits
	.align	1
	.type	on_connected, @function
on_connected:
.LFB75:
	.loc 1 32 1
	.cfi_startproc
.LVL10:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 34 9 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a5)
	.loc 1 32 1
	mv	s1,a0
	.loc 1 33 6 is_stmt 1
	.loc 1 34 5
	.loc 1 34 8 is_stmt 0
	bne	a5,zero,.L10
.LVL11:
.L13:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 9 is_stmt 0
	addi	a1,s0,-44
	mv	a0,s1
	call	bt_conn_get_info
.LVL12:
	.loc 1 40 8
	beq	a0,zero,.L15
.L9:
	.loc 1 54 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL13:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L10:
	.cfi_restore_state
	.loc 1 35 9 is_stmt 1
	.loc 1 35 13 is_stmt 0
	jalr	a5
.LVL15:
	.loc 1 35 12
	beq	a0,zero,.L13
	j	.L9
.L15:
	.loc 1 44 5 is_stmt 1
	.loc 1 44 8 is_stmt 0
	lbu	a4,-44(s0)
	li	a5,1
	bne	a4,a5,.L9
.LVL16:
.LBB8:
.LBB9:
	.loc 1 48 5 is_stmt 1
	.loc 1 49 5 is_stmt 0
	lui	a0,%hi(.LC2)
	.loc 1 48 18
	lui	a5,%hi(.LANCHOR1)
	.loc 1 49 5
	addi	a0,a0,%lo(.LC2)
	.loc 1 48 18
	sw	s1,%lo(.LANCHOR1)(a5)
	.loc 1 49 5 is_stmt 1
	call	printf
.LVL17:
	.loc 1 52 5
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL18:
	.loc 1 53 5
	call	ble_adv_stop
.LVL19:
	j	.L9
.LBE9:
.LBE8:
	.cfi_endproc
.LFE75:
	.size	on_connected, .-on_connected
	.section	.text.ble_conn_get_current,"ax",@progbits
	.align	1
	.globl	ble_conn_get_current
	.type	ble_conn_get_current, @function
ble_conn_get_current:
.LFB73:
	.loc 1 19 1
	.cfi_startproc
	.loc 1 20 5
	.loc 1 19 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 21 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	ble_conn_get_current, .-ble_conn_get_current
	.section	.text.ble_conn_register_callbacks,"ax",@progbits
	.align	1
	.globl	ble_conn_register_callbacks
	.type	ble_conn_register_callbacks, @function
ble_conn_register_callbacks:
.LFB74:
	.loc 1 24 82 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 25 5
	.loc 1 24 82 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 27 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 25 18
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 26 5 is_stmt 1
	.loc 1 26 21 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	a1,%lo(.LANCHOR0)(a5)
	.loc 1 27 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	ble_conn_register_callbacks, .-ble_conn_register_callbacks
	.section	.rodata.ble_conn_init.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	">>> init conn \r\n"
	.section	.text.ble_conn_init,"ax",@progbits
	.align	1
	.globl	ble_conn_init
	.type	ble_conn_init, @function
ble_conn_init:
.LFB77:
	.loc 1 118 1 is_stmt 1
	.cfi_startproc
	.loc 1 119 5
	.loc 1 118 1 is_stmt 0
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
	.loc 1 119 5
	lui	a0,%hi(.LC4)
	.loc 1 118 1
	.loc 1 119 5
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL21:
	.loc 1 120 5 is_stmt 1
	lui	a0,%hi(.LANCHOR3)
	addi	s1,a0,%lo(.LANCHOR3)
	addi	a0,a0,%lo(.LANCHOR3)
	call	bt_conn_cb_register
.LVL22:
	.loc 1 121 5
	.loc 1 123 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 121 26
	sw	zero,20(s1)
	.loc 1 123 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	ble_conn_init, .-ble_conn_init
	.section	.data.conn_callbacks,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	conn_callbacks, @object
	.size	conn_callbacks, 24
conn_callbacks:
	.word	on_connected
	.word	on_disconnected
	.zero	16
	.section	.sbss.current_conn,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	current_conn, @object
	.size	current_conn, 4
current_conn:
	.zero	4
	.section	.sbss.user_conn_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	user_conn_cb, @object
	.size	user_conn_cb, 4
user_conn_cb:
	.zero	4
	.section	.sbss.user_disconn_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	user_disconn_cb, @object
	.size	user_disconn_cb, 4
user_disconn_cb:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_conn.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_adv.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6be
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF77
	.byte	0xc
	.4byte	.LASF78
	.4byte	.LASF79
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x15
	.byte	0x17
	.4byte	0x46
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x16
	.byte	0x18
	.4byte	0x54
	.byte	0x5
	.4byte	.LASF19
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x36
	.byte	0x6
	.4byte	0xd3
	.byte	0x6
	.4byte	.LASF14
	.byte	0
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x40
	.byte	0x6
	.4byte	0x104
	.byte	0x6
	.4byte	.LASF21
	.byte	0
	.byte	0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6
	.4byte	.LASF23
	.byte	0x2
	.byte	0x6
	.4byte	.LASF24
	.byte	0x3
	.byte	0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x6
	.byte	0x6
	.byte	0x19
	.byte	0x9
	.4byte	0x11b
	.byte	0x8
	.string	"val"
	.byte	0x6
	.byte	0x1a
	.byte	0x7
	.4byte	0x11b
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x8a
	.4byte	0x12b
	.byte	0xa
	.4byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x1b
	.byte	0x3
	.4byte	0x104
	.byte	0xb
	.4byte	0x12b
	.byte	0x7
	.byte	0x7
	.byte	0x6
	.byte	0x1e
	.byte	0x9
	.4byte	0x15e
	.byte	0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1f
	.byte	0x7
	.4byte	0x8a
	.byte	0
	.byte	0x8
	.string	"a"
	.byte	0x6
	.byte	0x20
	.byte	0xc
	.4byte	0x12b
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x21
	.byte	0x3
	.4byte	0x13c
	.byte	0xb
	.4byte	0x15e
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF29
	.byte	0xd
	.byte	0x4
	.4byte	0x16a
	.byte	0x4
	.4byte	.LASF30
	.byte	0x7
	.byte	0x6
	.byte	0xf
	.4byte	0x188
	.byte	0xd
	.byte	0x4
	.4byte	0x18e
	.byte	0xe
	.4byte	0x25
	.4byte	0x1a2
	.byte	0xf
	.4byte	0x1a2
	.byte	0xf
	.4byte	0x7e
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x1a8
	.byte	0x10
	.4byte	.LASF55
	.byte	0x11
	.4byte	.LASF40
	.byte	0x8
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0x1ef
	.byte	0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x22
	.byte	0x8
	.4byte	0x96
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x23
	.byte	0x8
	.4byte	0x96
	.byte	0x2
	.byte	0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x24
	.byte	0x8
	.4byte	0x96
	.byte	0x4
	.byte	0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x25
	.byte	0x8
	.4byte	0x96
	.byte	0x6
	.byte	0
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x88
	.byte	0x6
	.4byte	0x21c
	.byte	0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6
	.4byte	.LASF36
	.byte	0x2
	.byte	0x6
	.4byte	.LASF37
	.byte	0x4
	.byte	0x6
	.4byte	.LASF38
	.byte	0x8
	.byte	0x6
	.4byte	.LASF39
	.byte	0xf
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.byte	0x18
	.byte	0x8
	.byte	0x97
	.byte	0x8
	.4byte	0x285
	.byte	0x8
	.string	"src"
	.byte	0x8
	.byte	0x99
	.byte	0x16
	.4byte	0x176
	.byte	0
	.byte	0x8
	.string	"dst"
	.byte	0x8
	.byte	0x9d
	.byte	0x16
	.4byte	0x176
	.byte	0x4
	.byte	0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x9f
	.byte	0x16
	.4byte	0x176
	.byte	0x8
	.byte	0xc
	.4byte	.LASF43
	.byte	0x8
	.byte	0xa1
	.byte	0x16
	.4byte	0x176
	.byte	0xc
	.byte	0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0xa2
	.byte	0x8
	.4byte	0x96
	.byte	0x10
	.byte	0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0xa3
	.byte	0x8
	.4byte	0x96
	.byte	0x12
	.byte	0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0xa4
	.byte	0x8
	.4byte	0x96
	.byte	0x14
	.byte	0
	.byte	0x11
	.4byte	.LASF45
	.byte	0x4
	.byte	0x8
	.byte	0xa8
	.byte	0x8
	.4byte	0x2a0
	.byte	0x8
	.string	"dst"
	.byte	0x8
	.byte	0xa9
	.byte	0x13
	.4byte	0x2a0
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x137
	.byte	0x13
	.byte	0x18
	.byte	0x8
	.byte	0xc2
	.byte	0x2
	.4byte	0x2c6
	.byte	0x14
	.string	"le"
	.byte	0x8
	.byte	0xc3
	.byte	0x1a
	.4byte	0x21c
	.byte	0x14
	.string	"br"
	.byte	0x8
	.byte	0xc5
	.byte	0x1a
	.4byte	0x285
	.byte	0
	.byte	0x11
	.4byte	.LASF46
	.byte	0x1c
	.byte	0x8
	.byte	0xbb
	.byte	0x8
	.4byte	0x300
	.byte	0xc
	.4byte	.LASF27
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x8a
	.byte	0
	.byte	0xc
	.4byte	.LASF47
	.byte	0x8
	.byte	0xbe
	.byte	0x7
	.4byte	0x8a
	.byte	0x1
	.byte	0x8
	.string	"id"
	.byte	0x8
	.byte	0xc0
	.byte	0x7
	.4byte	0x8a
	.byte	0x2
	.byte	0x15
	.4byte	0x2a6
	.byte	0x4
	.byte	0
	.byte	0x16
	.4byte	.LASF48
	.byte	0x18
	.byte	0x8
	.2byte	0x1ab
	.byte	0x8
	.4byte	0x363
	.byte	0x17
	.4byte	.LASF49
	.byte	0x8
	.2byte	0x1be
	.byte	0x9
	.4byte	0x37e
	.byte	0
	.byte	0x17
	.4byte	.LASF50
	.byte	0x8
	.2byte	0x1c8
	.byte	0x9
	.4byte	0x37e
	.byte	0x4
	.byte	0x17
	.4byte	.LASF51
	.byte	0x8
	.2byte	0x1df
	.byte	0x8
	.4byte	0x39e
	.byte	0x8
	.byte	0x17
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x1ec
	.byte	0x9
	.4byte	0x3be
	.byte	0xc
	.byte	0x17
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x1f8
	.byte	0x9
	.4byte	0x3d9
	.byte	0x10
	.byte	0x17
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x214
	.byte	0x15
	.4byte	0x3df
	.byte	0x14
	.byte	0
	.byte	0x18
	.4byte	0x373
	.byte	0xf
	.4byte	0x373
	.byte	0xf
	.4byte	0x8a
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x379
	.byte	0x10
	.4byte	.LASF55
	.byte	0xd
	.byte	0x4
	.4byte	0x363
	.byte	0xe
	.4byte	0x16f
	.4byte	0x398
	.byte	0xf
	.4byte	0x373
	.byte	0xf
	.4byte	0x398
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x1ad
	.byte	0xd
	.byte	0x4
	.4byte	0x384
	.byte	0x18
	.4byte	0x3be
	.byte	0xf
	.4byte	0x373
	.byte	0xf
	.4byte	0x96
	.byte	0xf
	.4byte	0x96
	.byte	0xf
	.4byte	0x96
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x3a4
	.byte	0x18
	.4byte	0x3d9
	.byte	0xf
	.4byte	0x373
	.byte	0xf
	.4byte	0x8a
	.byte	0xf
	.4byte	0x8a
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x3c4
	.byte	0xd
	.byte	0x4
	.4byte	0x300
	.byte	0x19
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.2byte	0x50e
	.byte	0x6
	.4byte	0x407
	.byte	0x6
	.4byte	.LASF56
	.byte	0
	.byte	0x6
	.4byte	.LASF57
	.byte	0x1
	.byte	0x6
	.4byte	.LASF58
	.byte	0x2
	.byte	0
	.byte	0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xd
	.byte	0x18
	.4byte	0x373
	.byte	0x5
	.byte	0x3
	.4byte	current_conn
	.byte	0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe
	.byte	0x16
	.4byte	0x17c
	.byte	0x5
	.byte	0x3
	.4byte	user_conn_cb
	.byte	0x1a
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf
	.byte	0x16
	.4byte	0x17c
	.byte	0x5
	.byte	0x3
	.4byte	user_disconn_cb
	.byte	0x1a
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6f
	.byte	0x1a
	.4byte	0x300
	.byte	0x5
	.byte	0x3
	.4byte	conn_callbacks
	.byte	0x1b
	.4byte	.LASF68
	.byte	0x1
	.byte	0x75
	.byte	0x6
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x48d
	.byte	0x1c
	.4byte	.LVL21
	.4byte	0x684
	.4byte	0x47c
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x1e
	.4byte	.LVL22
	.4byte	0x690
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF65
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.byte	0x1
	.4byte	0x4bf
	.byte	0x20
	.4byte	.LASF63
	.byte	0x1
	.byte	0x39
	.byte	0x2d
	.4byte	0x373
	.byte	0x20
	.4byte	.LASF64
	.byte	0x1
	.byte	0x39
	.byte	0x38
	.4byte	0x8a
	.byte	0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x3b
	.byte	0x1a
	.4byte	0x2c6
	.byte	0
	.byte	0x1f
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.byte	0x1
	.4byte	0x4f1
	.byte	0x20
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1f
	.byte	0x2a
	.4byte	0x373
	.byte	0x22
	.string	"err"
	.byte	0x1
	.byte	0x1f
	.byte	0x35
	.4byte	0x8a
	.byte	0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x21
	.byte	0x1a
	.4byte	0x2c6
	.byte	0
	.byte	0x1b
	.4byte	.LASF69
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x524
	.byte	0x23
	.4byte	.LASF70
	.byte	0x1
	.byte	0x18
	.byte	0x30
	.4byte	0x17c
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.4byte	.LASF71
	.byte	0x1
	.byte	0x18
	.byte	0x47
	.4byte	0x17c
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x24
	.4byte	.LASF80
	.byte	0x1
	.byte	0x12
	.byte	0x11
	.4byte	0x373
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.byte	0x25
	.4byte	0x48d
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x5e3
	.byte	0x26
	.4byte	0x49a
	.4byte	.LLST0
	.byte	0x26
	.4byte	0x4a6
	.4byte	.LLST1
	.byte	0x27
	.4byte	0x4b2
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x28
	.4byte	0x48d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.4byte	0x5cc
	.byte	0x29
	.4byte	0x49a
	.byte	0x1
	.byte	0x62
	.byte	0x29
	.4byte	0x4a6
	.byte	0x1
	.byte	0x59
	.byte	0x2a
	.4byte	0x4b2
	.byte	0x1c
	.4byte	.LVL7
	.4byte	0x684
	.4byte	0x5ab
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL8
	.4byte	0x684
	.4byte	0x5c2
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x2b
	.4byte	.LVL9
	.4byte	0x69d
	.byte	0
	.byte	0x1e
	.4byte	.LVL2
	.4byte	0x6a9
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0x4bf
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x684
	.byte	0x26
	.4byte	0x4cc
	.4byte	.LLST2
	.byte	0x26
	.4byte	0x4d8
	.4byte	.LLST3
	.byte	0x27
	.4byte	0x4e4
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x28
	.4byte	0x4bf
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x66d
	.byte	0x2c
	.4byte	0x4d8
	.byte	0x29
	.4byte	0x4cc
	.byte	0x1
	.byte	0x59
	.byte	0x2a
	.4byte	0x4e4
	.byte	0x1c
	.4byte	.LVL17
	.4byte	0x684
	.4byte	0x64c
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1c
	.4byte	.LVL18
	.4byte	0x684
	.4byte	0x663
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x2b
	.4byte	.LVL19
	.4byte	0x6b5
	.byte	0
	.byte	0x1e
	.4byte	.LVL12
	.4byte	0x6a9
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0xa
	.byte	0xc8
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x22e
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0xb
	.byte	0x6
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x8
	.byte	0xd0
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xb
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x17
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
	.byte	0x14
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
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE76
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
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
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"bt_addr_t"
.LASF21:
	.string	"_POLL_STATE_NOT_READY"
.LASF18:
	.string	"_POLL_NUM_TYPES"
.LASF65:
	.string	"on_disconnected"
.LASF60:
	.string	"user_conn_cb"
.LASF23:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF41:
	.string	"bt_conn_le_info"
.LASF3:
	.string	"short int"
.LASF57:
	.string	"BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING"
.LASF35:
	.string	"BT_CONN_TYPE_LE"
.LASF74:
	.string	"ble_adv_start"
.LASF56:
	.string	"BT_GATT_SUBSCRIBE_FLAG_VOLATILE"
.LASF75:
	.string	"bt_conn_get_info"
.LASF43:
	.string	"remote"
.LASF11:
	.string	"uint8_t"
.LASF59:
	.string	"current_conn"
.LASF32:
	.string	"interval_max"
.LASF48:
	.string	"bt_conn_cb"
.LASF61:
	.string	"user_disconn_cb"
.LASF63:
	.string	"conn"
.LASF80:
	.string	"ble_conn_get_current"
.LASF68:
	.string	"ble_conn_init"
.LASF78:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_conn.c"
.LASF79:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/ble"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF16:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF31:
	.string	"interval_min"
.LASF62:
	.string	"conn_callbacks"
.LASF5:
	.string	"long int"
.LASF38:
	.string	"BT_CONN_TYPE_ISO"
.LASF72:
	.string	"printf"
.LASF58:
	.string	"BT_GATT_SUBSCRIBE_NUM_FLAGS"
.LASF73:
	.string	"bt_conn_cb_register"
.LASF50:
	.string	"disconnected"
.LASF10:
	.string	"__uint8_t"
.LASF39:
	.string	"BT_CONN_TYPE_ALL"
.LASF15:
	.string	"_POLL_TYPE_SIGNAL"
.LASF40:
	.string	"bt_le_conn_param"
.LASF30:
	.string	"ble_conn_cb_t"
.LASF55:
	.string	"bt_conn"
.LASF2:
	.string	"unsigned char"
.LASF14:
	.string	"_POLL_TYPE_IGNORE"
.LASF1:
	.string	"signed char"
.LASF45:
	.string	"bt_conn_br_info"
.LASF36:
	.string	"BT_CONN_TYPE_BR"
.LASF27:
	.string	"type"
.LASF47:
	.string	"role"
.LASF42:
	.string	"local"
.LASF0:
	.string	"unsigned int"
.LASF64:
	.string	"reason"
.LASF24:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF4:
	.string	"short unsigned int"
.LASF9:
	.string	"char"
.LASF54:
	.string	"_next"
.LASF49:
	.string	"connected"
.LASF29:
	.string	"_Bool"
.LASF46:
	.string	"bt_conn_info"
.LASF76:
	.string	"ble_adv_stop"
.LASF52:
	.string	"le_param_updated"
.LASF34:
	.string	"timeout"
.LASF53:
	.string	"le_phy_updated"
.LASF6:
	.string	"long unsigned int"
.LASF66:
	.string	"on_connected"
.LASF22:
	.string	"_POLL_STATE_SIGNALED"
.LASF44:
	.string	"interval"
.LASF77:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF19:
	.string	"_poll_types_bits"
.LASF67:
	.string	"info"
.LASF12:
	.string	"u8_t"
.LASF69:
	.string	"ble_conn_register_callbacks"
.LASF13:
	.string	"u16_t"
.LASF28:
	.string	"bt_addr_le_t"
.LASF71:
	.string	"disconn_cb"
.LASF70:
	.string	"conn_cb"
.LASF20:
	.string	"_poll_states_bits"
.LASF25:
	.string	"_POLL_NUM_STATES"
.LASF37:
	.string	"BT_CONN_TYPE_SCO"
.LASF17:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF33:
	.string	"latency"
.LASF51:
	.string	"le_param_req"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
