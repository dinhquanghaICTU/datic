	.file	"utils.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._copy,"ax",@progbits
	.align	1
	.globl	_copy
	.type	_copy, @function
_copy:
.LFB2:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/utils.c"
	.loc 1 42 1
	.cfi_startproc
.LVL0:
	.loc 1 43 2
	.loc 1 42 1 is_stmt 0
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
	.loc 1 47 10
	li	s1,0
	.loc 1 43 5
	bgtu	a3,a1,.L2
	mv	a1,a2
.LVL1:
	.loc 1 44 9
	mv	a2,a3
.LVL2:
	mv	s1,a3
	.loc 1 44 3 is_stmt 1
	.loc 1 44 9 is_stmt 0
	call	memcpy
.LVL3:
	.loc 1 45 3 is_stmt 1
.L2:
	.loc 1 49 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	_copy, .-_copy
	.section	.text._set,"ax",@progbits
	.align	1
	.globl	_set
	.type	_set, @function
_set:
.LFB3:
	.loc 1 52 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 53 2
	.loc 1 52 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 54 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 53 8
	tail	memset
.LVL5:
	.cfi_endproc
.LFE3:
	.size	_set, .-_set
	.section	.text._double_byte,"ax",@progbits
	.align	1
	.globl	_double_byte
	.type	_double_byte, @function
_double_byte:
.LFB4:
	.loc 1 60 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 61 2
	.loc 1 61 17 is_stmt 0
	srli	a5,a0,7
	li	a4,27
	mul	a5,a5,a4
	.loc 1 60 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 62 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 61 12
	slli	a0,a0,1
.LVL7:
	.loc 1 62 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 61 17
	xor	a0,a5,a0
	.loc 1 62 1
	andi	a0,a0,0xff
	jr	ra
	.cfi_endproc
.LFE4:
	.size	_double_byte, .-_double_byte
	.section	.text._compare,"ax",@progbits
	.align	1
	.globl	_compare
	.type	_compare, @function
_compare:
.LFB5:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 66 2
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a4,a0
.LVL9:
	.loc 1 67 2 is_stmt 1
	.loc 1 68 2
	.loc 1 70 2
.LBB2:
	.loc 1 70 7
.LBE2:
	.loc 1 65 1 is_stmt 0
.LBB3:
	.loc 1 70 20
	li	a5,0
.LBE3:
	.loc 1 68 10
	li	a0,0
.LVL10:
.L10:
.LBB4:
	.loc 1 70 27 is_stmt 1 discriminator 1
	.loc 1 70 2 is_stmt 0 discriminator 1
	bne	a5,a2,.L11
.LBE4:
	.loc 1 73 2 is_stmt 1
	.loc 1 74 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L11:
	.cfi_restore_state
.LBB5:
	.loc 1 71 3 is_stmt 1 discriminator 3
	.loc 1 71 18 is_stmt 0 discriminator 3
	add	a3,a4,a5
	.loc 1 71 29 discriminator 3
	add	a6,a1,a5
	.loc 1 71 10 discriminator 3
	lbu	a3,0(a3)
	lbu	a6,0(a6)
	.loc 1 70 38 discriminator 3
	addi	a5,a5,1
.LVL11:
	.loc 1 71 10 discriminator 3
	xor	a3,a3,a6
	or	a0,a0,a3
.LVL12:
	andi	a0,a0,0xff
.LVL13:
	.loc 1 70 37 is_stmt 1 discriminator 3
	j	.L10
.LBE5:
	.cfi_endproc
.LFE5:
	.size	_compare, .-_compare
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x236
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0x28
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
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.4byte	0x41
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
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x75
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x116
	.byte	0x8
	.string	"a"
	.byte	0x1
	.byte	0x40
	.byte	0x1d
	.4byte	0x116
	.4byte	.LLST8
	.byte	0x9
	.string	"b"
	.byte	0x1
	.byte	0x40
	.byte	0x2f
	.4byte	0x116
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x40
	.byte	0x39
	.4byte	0x7c
	.byte	0x1
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x42
	.byte	0x11
	.4byte	0x116
	.4byte	.LLST9
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x43
	.byte	0x11
	.4byte	0x116
	.byte	0x1
	.byte	0x5b
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x44
	.byte	0xa
	.4byte	0x41
	.4byte	.LLST10
	.byte	0xd
	.4byte	.Ldebug_ranges0+0
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x46
	.byte	0x14
	.4byte	0x75
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x4d
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x145
	.byte	0x8
	.string	"a"
	.byte	0x1
	.byte	0x3b
	.byte	0x1e
	.4byte	0x41
	.4byte	.LLST7
	.byte	0
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a3
	.byte	0x8
	.string	"to"
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.4byte	0x88
	.4byte	.LLST4
	.byte	0x8
	.string	"val"
	.byte	0x1
	.byte	0x33
	.byte	0x1d
	.4byte	0x41
	.4byte	.LLST5
	.byte	0x8
	.string	"len"
	.byte	0x1
	.byte	0x33
	.byte	0x2f
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x11
	.4byte	.LVL5
	.4byte	0x221
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x75
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x21b
	.byte	0x8
	.string	"to"
	.byte	0x1
	.byte	0x28
	.byte	0x1d
	.4byte	0x21b
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x28
	.byte	0x2e
	.4byte	0x75
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x29
	.byte	0x15
	.4byte	0x116
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.byte	0x29
	.byte	0x28
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x22d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x41
	.byte	0x15
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x15
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1f
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0xb
	.byte	0x1
	.byte	0x55
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE2
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"from"
.LASF24:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF13:
	.string	"tempa"
.LASF14:
	.string	"tempb"
.LASF26:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF17:
	.string	"_double_byte"
.LASF16:
	.string	"_compare"
.LASF12:
	.string	"size"
.LASF25:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/utils.c"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF10:
	.string	"size_t"
.LASF4:
	.string	"unsigned char"
.LASF22:
	.string	"memset"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF15:
	.string	"result"
.LASF21:
	.string	"from_len"
.LASF19:
	.string	"to_len"
.LASF27:
	.string	"_set"
.LASF3:
	.string	"long long int"
.LASF23:
	.string	"memcpy"
.LASF18:
	.string	"_copy"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
