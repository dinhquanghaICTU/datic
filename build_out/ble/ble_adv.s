	.file	"ble_adv.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.ble_adv_start.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	">>>> have err %d\r\n"
	.align	2
.LC1:
	.string	">>> start done \r\n"
	.section	.text.ble_adv_start,"ax",@progbits
	.align	1
	.globl	ble_adv_start
	.type	ble_adv_start, @function
ble_adv_start:
.LFB67:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_adv.c"
	.loc 1 16 24
	.cfi_startproc
	.loc 1 17 5
	.loc 1 16 24 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 17 58
	li	a5,10485760
	.loc 1 16 24
	.loc 1 17 58
	addi	a5,a5,256
	.loc 1 17 14
	lui	a1,%hi(.LANCHOR0)
	.loc 1 17 58
	sw	a5,-24(s0)
	.loc 1 17 14
	addi	a1,a1,%lo(.LANCHOR0)
	.loc 1 17 58
	li	a5,240
	.loc 1 17 14
	li	a4,0
	li	a3,0
	li	a2,2
	addi	a0,s0,-24
	.loc 1 17 58
	sh	a5,-20(s0)
	.loc 1 17 14
	call	bt_le_adv_start
.LVL0:
	mv	a1,a0
.LVL1:
	.loc 1 18 5 is_stmt 1
	.loc 1 18 8 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 19 9 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL2:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL3:
	.loc 1 20 9
	.loc 1 20 16 is_stmt 0
	li	a1,-1
.L1:
	.loc 1 24 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	mv	a0,a1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L2:
	.cfi_restore_state
	sw	a0,-36(s0)
	.loc 1 22 5 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL5:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL6:
	lw	a1,-36(s0)
	.loc 1 23 5
	.loc 1 23 12 is_stmt 0
	j	.L1
	.cfi_endproc
.LFE67:
	.size	ble_adv_start, .-ble_adv_start
	.section	.rodata.ble_adv_stop.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	">>> stop done\r\n"
	.section	.text.ble_adv_stop,"ax",@progbits
	.align	1
	.globl	ble_adv_stop
	.type	ble_adv_stop, @function
ble_adv_stop:
.LFB68:
	.loc 1 26 23 is_stmt 1
	.cfi_startproc
	.loc 1 27 5
	.loc 1 26 23 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 27 5
	lui	a0,%hi(.LC2)
	.loc 1 26 23
	.loc 1 27 5
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL7:
	.loc 1 28 5 is_stmt 1
	.loc 1 29 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 28 12
	tail	bt_le_adv_stop
.LVL8:
	.cfi_endproc
.LFE68:
	.size	ble_adv_stop, .-ble_adv_stop
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"HNN_intern"
	.section	.rodata.adv_data,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adv_data, @object
	.size	adv_data, 16
adv_data:
	.byte	1
	.byte	1
	.zero	2
	.word	__compound_literal.1
	.byte	9
	.byte	10
	.zero	2
	.word	.LC3
	.section	.sdata.__compound_literal.1,"aw"
	.align	2
	.type	__compound_literal.1, @object
	.size	__compound_literal.1, 1
__compound_literal.1:
	.byte	6
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2c9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
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
	.4byte	.LASF10
	.byte	0x2
	.byte	0x15
	.byte	0x17
	.4byte	0x41
	.byte	0x5
	.4byte	0x72
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x16
	.byte	0x18
	.4byte	0x48
	.byte	0x6
	.4byte	.LASF17
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x3
	.byte	0x36
	.byte	0x6
	.4byte	0xc0
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF18
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x3
	.byte	0x40
	.byte	0x6
	.4byte	0xf1
	.byte	0x7
	.4byte	.LASF19
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7
	.4byte	.LASF21
	.byte	0x2
	.byte	0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.byte	0x8
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4
	.byte	0xd6
	.byte	0x8
	.4byte	0x12d
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd7
	.byte	0x7
	.4byte	0x72
	.byte	0
	.byte	0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0xd8
	.byte	0x7
	.4byte	0x72
	.byte	0x1
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0xd9
	.byte	0xe
	.4byte	0x132
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	0xf8
	.byte	0xa
	.byte	0x4
	.4byte	0x7e
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x4
	.byte	0xf9
	.byte	0x6
	.4byte	0x17d
	.byte	0x7
	.4byte	.LASF28
	.byte	0
	.byte	0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7
	.4byte	.LASF30
	.byte	0x2
	.byte	0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x7
	.4byte	.LASF32
	.byte	0x8
	.byte	0x7
	.4byte	.LASF33
	.byte	0x10
	.byte	0x7
	.4byte	.LASF34
	.byte	0x20
	.byte	0x7
	.4byte	.LASF35
	.byte	0x40
	.byte	0x7
	.4byte	.LASF36
	.byte	0x80
	.byte	0
	.byte	0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4
	.2byte	0x131
	.byte	0x8
	.4byte	0x1c3
	.byte	0xd
	.string	"id"
	.byte	0x4
	.2byte	0x133
	.byte	0x7
	.4byte	0x72
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x136
	.byte	0x7
	.4byte	0x72
	.byte	0x1
	.byte	0xe
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x139
	.byte	0x8
	.4byte	0x83
	.byte	0x2
	.byte	0xe
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x13c
	.byte	0x8
	.4byte	0x83
	.byte	0x4
	.byte	0
	.byte	0xf
	.4byte	0x12d
	.4byte	0x1d3
	.byte	0x10
	.4byte	0x64
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	0x1c3
	.byte	0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9
	.byte	0x1d
	.4byte	0x1d3
	.byte	0x5
	.byte	0x3
	.4byte	adv_data
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x1
	.byte	0x9c
	.4byte	0x225
	.byte	0x13
	.4byte	.LVL7
	.4byte	0x2a6
	.4byte	0x21b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x2b2
	.byte	0
	.byte	0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x10
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a6
	.byte	0x16
	.string	"err"
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LVL0
	.4byte	0x2bf
	.4byte	0x27b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL3
	.4byte	0x2a6
	.4byte	0x292
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x17
	.4byte	.LVL6
	.4byte	0x2a6
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x19
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x192
	.byte	0x5
	.byte	0x19
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x17a
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE67
	.2byte	0x2
	.byte	0x78
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"_poll_states_bits"
.LASF43:
	.string	"ble_adv_start"
.LASF34:
	.string	"BT_LE_ADV_OPT_DIR_ADDR_RPA"
.LASF15:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF48:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF21:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF28:
	.string	"BT_LE_ADV_OPT_NONE"
.LASF30:
	.string	"BT_LE_ADV_OPT_ONE_TIME"
.LASF8:
	.string	"unsigned int"
.LASF39:
	.string	"options"
.LASF26:
	.string	"data_len"
.LASF33:
	.string	"BT_LE_ADV_OPT_DIR_MODE_LOW_DUTY"
.LASF50:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/ble"
.LASF27:
	.string	"data"
.LASF7:
	.string	"long long unsigned int"
.LASF14:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF4:
	.string	"unsigned char"
.LASF44:
	.string	"adv_data"
.LASF22:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF20:
	.string	"_POLL_STATE_SIGNALED"
.LASF5:
	.string	"short unsigned int"
.LASF32:
	.string	"BT_LE_ADV_OPT_USE_NAME"
.LASF29:
	.string	"BT_LE_ADV_OPT_CONNECTABLE"
.LASF42:
	.string	"ble_adv_stop"
.LASF17:
	.string	"_poll_types_bits"
.LASF6:
	.string	"long unsigned int"
.LASF1:
	.string	"short int"
.LASF35:
	.string	"BT_LE_ADV_OPT_FILTER_SCAN_REQ"
.LASF37:
	.string	"bt_data"
.LASF16:
	.string	"_POLL_NUM_TYPES"
.LASF47:
	.string	"bt_le_adv_start"
.LASF11:
	.string	"u16_t"
.LASF23:
	.string	"_POLL_NUM_STATES"
.LASF9:
	.string	"char"
.LASF10:
	.string	"u8_t"
.LASF38:
	.string	"bt_le_adv_param"
.LASF3:
	.string	"long long int"
.LASF13:
	.string	"_POLL_TYPE_SIGNAL"
.LASF46:
	.string	"bt_le_adv_stop"
.LASF45:
	.string	"printf"
.LASF25:
	.string	"type"
.LASF49:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_adv.c"
.LASF41:
	.string	"interval_max"
.LASF36:
	.string	"BT_LE_ADV_OPT_FILTER_CONN"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"_POLL_STATE_NOT_READY"
.LASF24:
	.string	"_Bool"
.LASF12:
	.string	"_POLL_TYPE_IGNORE"
.LASF40:
	.string	"interval_min"
.LASF31:
	.string	"BT_LE_ADV_OPT_USE_IDENTITY"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
