	.file	"rc4.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.rc4_skip,"ax",@progbits
	.align	1
	.globl	rc4_skip
	.type	rc4_skip, @function
rc4_skip:
.LFB69:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/security/wpa_supplicant/src/crypto/rc4.c"
	.loc 1 25 1
	.cfi_startproc
.LVL0:
	.loc 1 26 2
	.loc 1 27 2
	.loc 1 28 2
	.loc 1 31 2
	.loc 1 31 14
	.loc 1 25 1 is_stmt 0
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	s0,268(sp)
	.cfi_offset 8, -4
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	mv	t1,a2
	.loc 1 31 9
	li	a5,0
	.loc 1 31 2
	li	a2,256
.LVL1:
.L2:
	.loc 1 32 3 is_stmt 1 discriminator 3
	.loc 1 32 8 is_stmt 0 discriminator 3
	addi	a6,s0,-272
	add	a6,a6,a5
	sb	a5,0(a6)
	.loc 1 31 23 is_stmt 1 discriminator 3
	.loc 1 31 24 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL2:
	.loc 1 31 14 is_stmt 1 discriminator 3
	.loc 1 31 2 is_stmt 0 discriminator 3
	bne	a5,a2,.L2
	addi	a5,s0,-272
.LVL3:
	.loc 1 34 7
	li	a7,0
	.loc 1 33 4
	li	a6,0
.L4:
.LVL4:
	.loc 1 36 3 is_stmt 1
	.loc 1 36 22 is_stmt 0
	add	a2,a0,a7
	.loc 1 36 13
	lbu	t3,0(a5)
	.loc 1 36 22
	lbu	a2,0(a2)
	.loc 1 37 7
	addi	a7,a7,1
.LVL5:
	.loc 1 36 17
	add	a2,a2,t3
	add	a6,a2,a6
.LVL6:
	.loc 1 36 5
	andi	a6,a6,255
.LVL7:
	.loc 1 37 3 is_stmt 1
	.loc 1 38 3
	.loc 1 38 6 is_stmt 0
	bltu	a7,a1,.L3
	.loc 1 39 9
	li	a7,0
.LVL8:
.L3:
	.loc 1 40 3 is_stmt 1 discriminator 2
.LBB2:
	.loc 1 40 8 discriminator 2
	.loc 1 40 21 discriminator 2
	.loc 1 40 29 is_stmt 0 discriminator 2
	addi	a2,s0,-16
	add	a2,a2,a6
	lbu	t4,-256(a2)
.LBE2:
	.loc 1 35 2 discriminator 2
	addi	a5,a5,1
.LVL9:
.LBB3:
	.loc 1 40 26 discriminator 2
	sb	t4,-1(a5)
	.loc 1 40 34 is_stmt 1 discriminator 2
	.loc 1 40 39 is_stmt 0 discriminator 2
	sb	t3,-256(a2)
.LBE3:
	.loc 1 40 51 is_stmt 1 discriminator 2
	.loc 1 35 23 discriminator 2
.LVL10:
	.loc 1 35 14 discriminator 2
	.loc 1 35 2 is_stmt 0 discriminator 2
	addi	a2,s0,-16
	bne	a2,a5,.L4
	.loc 1 45 9
	li	a2,0
	.loc 1 44 8
	li	a1,0
.LVL11:
	.loc 1 44 4
	li	a5,0
.LVL12:
.L5:
	.loc 1 45 14 is_stmt 1 discriminator 1
	.loc 1 45 2 is_stmt 0 discriminator 1
	bne	a2,t1,.L6
	add	a2,a3,a4
.LVL13:
.L7:
	.loc 1 53 14 is_stmt 1 discriminator 1
	.loc 1 53 2 is_stmt 0 discriminator 1
	bne	a3,a2,.L8
	.loc 1 60 2 is_stmt 1
	.loc 1 61 1 is_stmt 0
	lw	s0,268(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	li	a0,0
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L6:
	.cfi_restore_state
	.loc 1 46 3 is_stmt 1 discriminator 3
	.loc 1 46 10 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL15:
	.loc 1 47 13 discriminator 3
	addi	a0,s0,-16
	.loc 1 46 5 discriminator 3
	andi	a5,a5,255
.LVL16:
	.loc 1 47 3 is_stmt 1 discriminator 3
	.loc 1 47 13 is_stmt 0 discriminator 3
	add	a7,a0,a5
	lbu	a6,-256(a7)
	.loc 1 45 25 discriminator 3
	addi	a2,a2,1
.LVL17:
	.loc 1 47 10 discriminator 3
	add	a1,a6,a1
.LVL18:
	.loc 1 47 5 discriminator 3
	andi	a1,a1,255
.LVL19:
	.loc 1 48 3 is_stmt 1 discriminator 3
.LBB4:
	.loc 1 48 8 discriminator 3
	.loc 1 48 21 discriminator 3
	.loc 1 48 29 is_stmt 0 discriminator 3
	add	a0,a0,a1
	lbu	t3,-256(a0)
	.loc 1 48 26 discriminator 3
	sb	t3,-256(a7)
	.loc 1 48 34 is_stmt 1 discriminator 3
	.loc 1 48 39 is_stmt 0 discriminator 3
	sb	a6,-256(a0)
.LBE4:
	.loc 1 48 51 is_stmt 1 discriminator 3
	.loc 1 45 24 discriminator 3
.LVL20:
	j	.L5
.LVL21:
.L8:
	.loc 1 54 3 discriminator 3
	.loc 1 54 10 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL22:
	.loc 1 55 13 discriminator 3
	addi	a4,s0,-16
	.loc 1 54 5 discriminator 3
	andi	a5,a5,255
.LVL23:
	.loc 1 55 3 is_stmt 1 discriminator 3
	.loc 1 55 13 is_stmt 0 discriminator 3
	add	a0,a4,a5
	lbu	a4,-256(a0)
.LBB5:
	.loc 1 56 29 discriminator 3
	addi	a6,s0,-16
.LBE5:
	.loc 1 57 7 discriminator 3
	addi	a3,a3,1
.LVL24:
	.loc 1 55 10 discriminator 3
	add	a1,a4,a1
.LVL25:
	.loc 1 55 5 discriminator 3
	andi	a1,a1,255
.LVL26:
	.loc 1 56 3 is_stmt 1 discriminator 3
.LBB6:
	.loc 1 56 8 discriminator 3
	.loc 1 56 21 discriminator 3
	.loc 1 56 29 is_stmt 0 discriminator 3
	add	a6,a6,a1
	lbu	a7,-256(a6)
	.loc 1 56 26 discriminator 3
	sb	a7,-256(a0)
	.loc 1 56 34 is_stmt 1 discriminator 3
	.loc 1 56 39 is_stmt 0 discriminator 3
	sb	a4,-256(a6)
.LBE6:
	.loc 1 56 51 is_stmt 1 discriminator 3
	.loc 1 57 3 discriminator 3
.LVL27:
	.loc 1 57 29 is_stmt 0 discriminator 3
	lbu	a0,-256(a0)
	add	a4,a4,a0
.LVL28:
	andi	a4,a4,0xff
	.loc 1 57 14 discriminator 3
	addi	a0,s0,-16
	add	a4,a0,a4
	.loc 1 57 10 discriminator 3
	lbu	a4,-256(a4)
	lbu	a0,-1(a3)
	xor	a4,a4,a0
	sb	a4,-1(a3)
	.loc 1 53 28 is_stmt 1 discriminator 3
	j	.L7
	.cfi_endproc
.LFE69:
	.size	rc4_skip, .-rc4_skip
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ea
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7a
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6e
	.byte	0x5
	.string	"u32"
	.byte	0x5
	.byte	0x14
	.byte	0x12
	.4byte	0xa2
	.byte	0x5
	.string	"u8"
	.byte	0x5
	.byte	0x16
	.byte	0x11
	.4byte	0x96
	.byte	0x6
	.4byte	0xba
	.byte	0x7
	.byte	0x4
	.4byte	0xba
	.byte	0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.4byte	0x38
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x1db
	.byte	0x9
	.string	"key"
	.byte	0x1
	.byte	0x17
	.byte	0x14
	.4byte	0x1db
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x17
	.byte	0x20
	.4byte	0x25
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x17
	.byte	0x2f
	.4byte	0x25
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0xca
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x18
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST4
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	0xae
	.4byte	.LLST5
	.byte	0xb
	.string	"j"
	.byte	0x1
	.byte	0x1a
	.byte	0x9
	.4byte	0xae
	.4byte	.LLST6
	.byte	0xb
	.string	"k"
	.byte	0x1
	.byte	0x1a
	.byte	0xc
	.4byte	0xae
	.4byte	.LLST7
	.byte	0xc
	.string	"S"
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.4byte	0x1e1
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0xb
	.string	"pos"
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0xca
	.4byte	.LLST8
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST9
	.byte	0xe
	.4byte	.Ldebug_ranges0+0
	.4byte	0x1aa
	.byte	0xb
	.string	"t"
	.byte	0x1
	.byte	0x28
	.byte	0xb
	.4byte	0xba
	.4byte	.LLST10
	.byte	0
	.byte	0xf
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x1c6
	.byte	0xb
	.string	"t"
	.byte	0x1
	.byte	0x30
	.byte	0xb
	.4byte	0xba
	.4byte	.LLST11
	.byte	0
	.byte	0x10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0xb
	.string	"t"
	.byte	0x1
	.byte	0x38
	.byte	0xb
	.4byte	0xba
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc5
	.byte	0x11
	.4byte	0xba
	.byte	0x12
	.4byte	0x31
	.byte	0xff
	.byte	0
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
	.byte	0x5
	.byte	0x16
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
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x17
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x90,0x2
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8f,0x2
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21
	.4byte	.LFE69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7d
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x81
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28
	.4byte	.LFE69
	.2byte	0x3
	.byte	0x80
	.byte	0x80,0x7e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF3:
	.string	"__uint8_t"
.LASF2:
	.string	"size_t"
.LASF16:
	.string	"skip"
.LASF18:
	.string	"data_len"
.LASF23:
	.string	"rc4_skip"
.LASF17:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"kpos"
.LASF8:
	.string	"__uint32_t"
.LASF22:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/wpa_supplicant"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF10:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF21:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/security/wpa_supplicant/src/crypto/rc4.c"
.LASF5:
	.string	"short int"
.LASF15:
	.string	"keylen"
.LASF14:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF1:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
