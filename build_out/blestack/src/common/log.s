	.file	"log.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bt_hex_real,"ax",@progbits
	.align	1
	.globl	bt_hex_real
	.type	bt_hex_real, @function
bt_hex_real:
.LFB67:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.c"
	.loc 1 23 1
	.cfi_startproc
.LVL0:
	.loc 1 24 2
	.loc 1 28 2
	.loc 1 30 2
	.loc 1 31 2
	.loc 1 33 2
	.loc 1 23 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 6
	li	a4,63
	.loc 1 23 1
	mv	a5,a0
	.loc 1 33 6
	bleu	a1,a4,.L2
	li	a1,63
.LVL1:
.L2:
	.loc 1 35 2 is_stmt 1
	lui	a0,%hi(.LANCHOR0)
.LVL2:
	.loc 1 36 19 is_stmt 0
	lui	a2,%hi(.LANCHOR1)
	addi	a3,a0,%lo(.LANCHOR0)
	add	a7,a5,a1
	addi	a6,a0,%lo(.LANCHOR0)
	addi	a2,a2,%lo(.LANCHOR1)
.LVL3:
.L3:
	.loc 1 35 14 is_stmt 1 discriminator 1
	.loc 1 35 2 is_stmt 0 discriminator 1
	bne	a5,a7,.L4
	.loc 1 40 2 is_stmt 1
	.loc 1 40 13 is_stmt 0
	slli	a1,a1,1
.LVL4:
	add	a1,a6,a1
	sb	zero,0(a1)
	.loc 1 42 2 is_stmt 1
	.loc 1 43 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	a0,a0,%lo(.LANCHOR0)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L4:
	.cfi_restore_state
	.loc 1 36 3 is_stmt 1 discriminator 3
	.loc 1 36 25 is_stmt 0 discriminator 3
	lbu	a4,0(a5)
	addi	a3,a3,2
	addi	a5,a5,1
.LVL6:
	srli	a4,a4,4
	.loc 1 36 19 discriminator 3
	add	a4,a2,a4
	.loc 1 36 14 discriminator 3
	lbu	a4,0(a4)
	sb	a4,-2(a3)
	.loc 1 37 3 is_stmt 1 discriminator 3
	.loc 1 37 29 is_stmt 0 discriminator 3
	lbu	a4,-1(a5)
	andi	a4,a4,15
	.loc 1 37 23 discriminator 3
	add	a4,a2,a4
	.loc 1 37 18 discriminator 3
	lbu	a4,0(a4)
	sb	a4,-1(a3)
	.loc 1 35 23 is_stmt 1 discriminator 3
.LVL7:
	j	.L3
	.cfi_endproc
.LFE67:
	.size	bt_hex_real, .-bt_hex_real
	.section	.rodata.bt_addr_str_real.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%02X:%02X:%02X:%02X:%02X:%02X"
	.section	.text.bt_addr_str_real,"ax",@progbits
	.align	1
	.globl	bt_addr_str_real
	.type	bt_addr_str_real, @function
bt_addr_str_real:
.LFB68:
	.loc 1 46 1
	.cfi_startproc
.LVL8:
	.loc 1 47 2
	.loc 1 49 2
.LBB4:
.LBB5:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
	.loc 2 740 2
.LBE5:
.LBE4:
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB7:
.LBB6:
	.loc 2 740 9
	lbu	a5,0(a0)
	lui	s1,%hi(.LANCHOR2)
	lui	a2,%hi(.LC0)
	sw	a5,0(sp)
	lbu	a7,1(a0)
	lbu	a6,2(a0)
	lbu	a5,3(a0)
	lbu	a4,4(a0)
	lbu	a3,5(a0)
	addi	a2,a2,%lo(.LC0)
	addi	a0,s1,%lo(.LANCHOR2)
.LVL9:
	li	a1,18
	call	snprintf
.LVL10:
.LBE6:
.LBE7:
	.loc 1 51 2 is_stmt 1
	.loc 1 52 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	a0,s1,%lo(.LANCHOR2)
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	bt_addr_str_real, .-bt_addr_str_real
	.section	.rodata.bt_addr_le_str_real.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"public"
	.align	2
.LC2:
	.string	"random"
	.align	2
.LC3:
	.string	"public-id"
	.align	2
.LC4:
	.string	"random-id"
	.align	2
.LC5:
	.string	"0x%02x"
	.align	2
.LC6:
	.string	"%02X:%02X:%02X:%02X:%02X:%02X (%s)"
	.section	.text.bt_addr_le_str_real,"ax",@progbits
	.align	1
	.globl	bt_addr_le_str_real
	.type	bt_addr_le_str_real, @function
bt_addr_le_str_real:
.LFB69:
	.loc 1 55 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 56 2
	.loc 1 58 2
.LBB10:
.LBB11:
	.loc 2 758 2
	.loc 2 760 2
.LBE11:
.LBE10:
	.loc 1 55 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s3,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
.LBB15:
.LBB12:
	.loc 2 760 14
	lbu	a3,0(a0)
	.loc 2 760 2
	li	a5,2
.LBE12:
.LBE15:
	.loc 1 55 1
	mv	s1,a0
	addi	s2,s0,-44
.LBB16:
.LBB13:
	.loc 2 760 2
	beq	a3,a5,.L9
	bgtu	a3,a5,.L10
	bne	a3,zero,.L16
	.loc 2 762 3 is_stmt 1
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
.L19:
	.loc 2 765 3 is_stmt 0
	mv	a0,s2
.LVL12:
	call	strcpy
.LVL13:
	.loc 2 766 3 is_stmt 1
.L15:
	.loc 2 778 2
	.loc 2 778 9 is_stmt 0
	lbu	a5,1(s1)
	lbu	a7,2(s1)
	lbu	a6,3(s1)
	sw	a5,0(sp)
	lbu	a4,5(s1)
	lbu	a5,4(s1)
	lbu	a3,6(s1)
	lui	s3,%hi(.LANCHOR3)
	lui	a2,%hi(.LC6)
	sw	s2,4(sp)
	addi	a0,s3,%lo(.LANCHOR3)
	addi	a2,a2,%lo(.LC6)
	li	a1,30
	call	snprintf
.LVL14:
.LBE13:
.LBE16:
	.loc 1 60 2 is_stmt 1
	.loc 1 61 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL15:
	lw	s2,48(sp)
	.cfi_restore 18
	addi	a0,s3,%lo(.LANCHOR3)
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L10:
	.cfi_restore_state
.LBB17:
.LBB14:
	.loc 2 760 2
	li	a5,3
	beq	a3,a5,.L13
	.loc 2 774 3 is_stmt 1
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
	li	a1,10
	mv	a0,s2
	call	snprintf
.LVL17:
	.loc 2 775 3
	j	.L15
.L16:
	.loc 2 765 3
	lui	a1,%hi(.LC2)
	addi	a1,a1,%lo(.LC2)
	j	.L19
.L9:
	.loc 2 768 3
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	j	.L19
.L13:
	.loc 2 771 3
	lui	a1,%hi(.LC4)
	addi	a1,a1,%lo(.LC4)
	j	.L19
.LBE14:
.LBE17:
	.cfi_endproc
.LFE69:
	.size	bt_addr_le_str_real, .-bt_addr_le_str_real
	.section	.bss.str.0,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	str.0, @object
	.size	str.0, 30
str.0:
	.zero	30
	.section	.bss.str.1,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	str.1, @object
	.size	str.1, 18
str.1:
	.zero	18
	.section	.bss.str.2,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	str.2, @object
	.size	str.2, 128
str.2:
	.zero	128
	.section	.rodata.hex.3,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	hex.3, @object
	.size	hex.3, 17
hex.3:
	.string	"0123456789abcdef"
	.text
.Letext0:
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3f1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.byte	0x17
	.4byte	0x5b
	.byte	0x5
	.4byte	0x77
	.byte	0x6
	.byte	0x4
	.4byte	0x8e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.4byte	0x8e
	.byte	0x6
	.byte	0x4
	.4byte	0x95
	.byte	0x7
	.byte	0x6
	.byte	0x5
	.byte	0x19
	.byte	0x9
	.4byte	0xb7
	.byte	0x8
	.string	"val"
	.byte	0x5
	.byte	0x1a
	.byte	0x7
	.4byte	0xb7
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x77
	.4byte	0xc7
	.byte	0xa
	.4byte	0x38
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x1b
	.byte	0x3
	.4byte	0xa0
	.byte	0x5
	.4byte	0xc7
	.byte	0x7
	.byte	0x7
	.byte	0x5
	.byte	0x1e
	.byte	0x9
	.4byte	0xfa
	.byte	0xb
	.4byte	.LASF13
	.byte	0x5
	.byte	0x1f
	.byte	0x7
	.4byte	0x77
	.byte	0
	.byte	0x8
	.string	"a"
	.byte	0x5
	.byte	0x20
	.byte	0xc
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x21
	.byte	0x3
	.4byte	0xd8
	.byte	0x5
	.4byte	0xfa
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.byte	0x6
	.byte	0x4
	.4byte	0x83
	.byte	0x6
	.byte	0x4
	.4byte	0x106
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.4byte	0x9a
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f3
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x36
	.byte	0x35
	.4byte	0x118
	.4byte	.LLST8
	.byte	0xe
	.string	"str"
	.byte	0x1
	.byte	0x38
	.byte	0xe
	.4byte	0x1f3
	.byte	0x5
	.byte	0x3
	.4byte	str.0
	.byte	0xf
	.4byte	0x34a
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x3a
	.byte	0x2
	.byte	0x10
	.4byte	0x369
	.4byte	.LLST9
	.byte	0x10
	.4byte	0x376
	.4byte	.LLST10
	.byte	0x10
	.4byte	0x35c
	.4byte	.LLST11
	.byte	0x11
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x12
	.4byte	0x383
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x13
	.4byte	.LVL13
	.4byte	0x3db
	.4byte	0x1a6
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL14
	.4byte	0x3e7
	.4byte	0x1d2
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x4e
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x14
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL17
	.4byte	0x3e7
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x8e
	.4byte	0x203
	.byte	0xa
	.4byte	0x38
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.4byte	0x9a
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x1
	.byte	0x9c
	.4byte	0x28d
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2d
	.byte	0x2f
	.4byte	0x28d
	.4byte	.LLST4
	.byte	0xe
	.string	"str"
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x293
	.byte	0x5
	.byte	0x3
	.4byte	str.1
	.byte	0xf
	.4byte	0x3a1
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x31
	.byte	0x2
	.byte	0x10
	.4byte	0x3c0
	.4byte	.LLST5
	.byte	0x10
	.4byte	0x3cd
	.4byte	.LLST6
	.byte	0x10
	.4byte	0x3b3
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LVL10
	.4byte	0x3e7
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x42
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd3
	.byte	0x9
	.4byte	0x8e
	.4byte	0x2a3
	.byte	0xa
	.4byte	0x38
	.byte	0x11
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x9a
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x1
	.byte	0x9c
	.4byte	0x31e
	.byte	0x16
	.string	"buf"
	.byte	0x1
	.byte	0x16
	.byte	0x25
	.4byte	0x31e
	.4byte	.LLST0
	.byte	0x16
	.string	"len"
	.byte	0x1
	.byte	0x16
	.byte	0x31
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0xe
	.string	"hex"
	.byte	0x1
	.byte	0x18
	.byte	0x14
	.4byte	0x335
	.byte	0x5
	.byte	0x3
	.4byte	hex.3
	.byte	0xe
	.string	"str"
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.4byte	0x33a
	.byte	0x5
	.byte	0x3
	.4byte	str.2
	.byte	0x17
	.string	"b"
	.byte	0x1
	.byte	0x1e
	.byte	0xe
	.4byte	0x112
	.4byte	.LLST2
	.byte	0x17
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x324
	.byte	0x18
	.byte	0x9
	.4byte	0x95
	.4byte	0x335
	.byte	0xa
	.4byte	0x38
	.byte	0x10
	.byte	0
	.byte	0x5
	.4byte	0x325
	.byte	0x9
	.4byte	0x8e
	.4byte	0x34a
	.byte	0xa
	.4byte	0x38
	.byte	0x7f
	.byte	0
	.byte	0x19
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x2f3
	.byte	0x13
	.4byte	0x25
	.byte	0x3
	.4byte	0x391
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x2f3
	.byte	0x39
	.4byte	0x118
	.byte	0x1b
	.string	"str"
	.byte	0x2
	.2byte	0x2f3
	.byte	0x45
	.4byte	0x88
	.byte	0x1b
	.string	"len"
	.byte	0x2
	.2byte	0x2f4
	.byte	0x10
	.4byte	0x2c
	.byte	0x1c
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x2f6
	.byte	0x7
	.4byte	0x391
	.byte	0
	.byte	0x9
	.4byte	0x8e
	.4byte	0x3a1
	.byte	0xa
	.4byte	0x38
	.byte	0x9
	.byte	0
	.byte	0x19
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x2e2
	.byte	0x13
	.4byte	0x25
	.byte	0x3
	.4byte	0x3db
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x2e2
	.byte	0x33
	.4byte	0x28d
	.byte	0x1b
	.string	"str"
	.byte	0x2
	.2byte	0x2e2
	.byte	0x3f
	.4byte	0x88
	.byte	0x1b
	.string	"len"
	.byte	0x2
	.2byte	0x2e2
	.byte	0x4b
	.4byte	0x2c
	.byte	0
	.byte	0x1d
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x6
	.byte	0x26
	.byte	0x7
	.byte	0x1e
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x10a
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
	.byte	0xe
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x34
	.byte	0
	.byte	0x31
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x18
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
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
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x5
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
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
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
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x3
	.4byte	str.0
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE69
	.2byte	0x6
	.byte	0x3
	.4byte	str.0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x4e
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE69
	.2byte	0x2
	.byte	0x4e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x3
	.4byte	str.1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x42
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LFE67
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
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
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"bt_addr_t"
.LASF9:
	.string	"size_t"
.LASF24:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF18:
	.string	"addr"
.LASF23:
	.string	"snprintf"
.LASF6:
	.string	"short unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF19:
	.string	"bt_hex_real"
.LASF22:
	.string	"strcpy"
.LASF7:
	.string	"long unsigned int"
.LASF14:
	.string	"bt_addr_le_t"
.LASF20:
	.string	"bt_addr_le_to_str"
.LASF16:
	.string	"bt_addr_le_str_real"
.LASF17:
	.string	"bt_addr_str_real"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"char"
.LASF10:
	.string	"u8_t"
.LASF4:
	.string	"long long int"
.LASF13:
	.string	"type"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.c"
.LASF3:
	.string	"long int"
.LASF21:
	.string	"bt_addr_to_str"
.LASF1:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF8:
	.string	"long long unsigned int"
.LASF26:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
