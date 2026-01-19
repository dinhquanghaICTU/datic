	.file	"cbc_mode.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.tc_cbc_mode_encrypt,"ax",@progbits
	.align	1
	.globl	tc_cbc_mode_encrypt
	.type	tc_cbc_mode_encrypt, @function
tc_cbc_mode_encrypt:
.LFB2:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/cbc_mode.c"
	.loc 1 40 1
	.cfi_startproc
.LVL0:
	.loc 1 42 2
	.loc 1 43 2
	.loc 1 46 2
	.loc 1 46 5 is_stmt 0
	beq	a0,zero,.L5
	.loc 1 40 1 discriminator 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	s2,a2
	.loc 1 54 10 discriminator 1
	li	a0,0
.LVL1:
	.loc 1 46 27 discriminator 1
	beq	a2,zero,.L1
	mv	s4,a5
	.loc 1 47 32
	beq	a5,zero,.L1
	mv	s3,a3
	.loc 1 48 35
	beq	a3,zero,.L1
	.loc 1 49 17
	beq	a1,zero,.L1
	or	a5,a3,a1
.LVL2:
	andi	a5,a5,15
	.loc 1 51 31
	bne	a5,zero,.L1
	.loc 1 53 22
	addi	a5,a3,16
	.loc 1 52 32
	bne	a5,a1,.L1
	mv	a2,a4
.LVL3:
	.loc 1 58 2 is_stmt 1
	.loc 1 58 8 is_stmt 0
	li	a3,16
.LVL4:
	li	a1,16
.LVL5:
	addi	a0,s0,-48
	sw	a4,-52(s0)
	call	_copy
.LVL6:
	.loc 1 60 2 is_stmt 1
	.loc 1 60 8 is_stmt 0
	lw	a2,-52(s0)
	mv	a0,s1
	li	a3,16
	li	a1,16
	call	_copy
.LVL7:
	.loc 1 61 2 is_stmt 1
	.loc 1 61 6 is_stmt 0
	addi	s1,s1,16
.LVL8:
	.loc 1 63 2 is_stmt 1
	.loc 1 63 18
	add	s3,s2,s3
.LVL9:
	.loc 1 63 13 is_stmt 0
	li	a4,0
	.loc 1 65 6
	li	s5,16
.LVL10:
.L4:
	.loc 1 64 3 is_stmt 1
	.loc 1 64 15 is_stmt 0
	addi	a5,s0,-32
	add	a3,a5,a4
	lbu	a5,-16(a3)
	lbu	a2,0(s2)
	addi	a4,a4,1
.LVL11:
	.loc 1 64 21
	addi	s2,s2,1
.LVL12:
	.loc 1 64 15
	xor	a5,a5,a2
	sb	a5,-16(a3)
	.loc 1 65 3 is_stmt 1
	.loc 1 65 6 is_stmt 0
	bne	a4,s5,.L3
	.loc 1 66 4 is_stmt 1
	.loc 1 66 10 is_stmt 0
	addi	a1,s0,-48
	mv	a2,s4
	mv	a0,a1
	call	tc_aes_encrypt
.LVL13:
	.loc 1 67 4 is_stmt 1
	.loc 1 67 10 is_stmt 0
	mv	a0,s1
	li	a3,16
	addi	a2,s0,-48
	li	a1,16
	call	_copy
.LVL14:
	.loc 1 69 4 is_stmt 1
	.loc 1 69 8 is_stmt 0
	addi	s1,s1,16
.LVL15:
	.loc 1 70 4 is_stmt 1
	.loc 1 70 6 is_stmt 0
	li	a4,0
.LVL16:
.L3:
	.loc 1 63 29 is_stmt 1 discriminator 2
	.loc 1 63 18 discriminator 2
	.loc 1 63 2 is_stmt 0 discriminator 2
	bne	s3,s2,.L4
	.loc 1 74 9
	li	a0,1
.LVL17:
.L1:
	.loc 1 75 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL18:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL19:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L5:
	.loc 1 54 10
	li	a0,0
.LVL21:
	.loc 1 75 1
	ret
	.cfi_endproc
.LFE2:
	.size	tc_cbc_mode_encrypt, .-tc_cbc_mode_encrypt
	.section	.text.tc_cbc_mode_decrypt,"ax",@progbits
	.align	1
	.globl	tc_cbc_mode_decrypt
	.type	tc_cbc_mode_decrypt, @function
tc_cbc_mode_decrypt:
.LFB3:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 82 2
	.loc 1 83 2
	.loc 1 84 2
	.loc 1 87 2
	.loc 1 87 5 is_stmt 0
	beq	a0,zero,.L22
	.loc 1 80 1 discriminator 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	s4,a0
	mv	s3,a2
	.loc 1 95 10 discriminator 1
	li	a0,0
.LVL23:
	.loc 1 87 27 discriminator 1
	beq	a2,zero,.L18
	mv	s5,a5
	.loc 1 88 32
	beq	a5,zero,.L18
	.loc 1 89 35
	beq	a3,zero,.L18
	mv	s2,a1
	.loc 1 90 17
	beq	a1,zero,.L18
	or	a6,a3,a1
	andi	a6,a6,15
	.loc 1 92 31
	bne	a6,zero,.L18
	.loc 1 93 32
	bne	a3,a1,.L18
	mv	s6,a4
	.loc 1 104 9
	li	s1,0
.LVL24:
.L21:
	.loc 1 105 3 is_stmt 1
	.loc 1 105 10 is_stmt 0
	andi	a5,s1,15
	.loc 1 105 6
	bne	a5,zero,.L20
	.loc 1 106 4 is_stmt 1
	.loc 1 106 10 is_stmt 0
	mv	a1,s3
	mv	a2,s5
	addi	a0,s0,-48
	call	tc_aes_decrypt
.LVL25:
	.loc 1 107 4 is_stmt 1
	.loc 1 107 7 is_stmt 0
	addi	s3,s3,16
.LVL26:
	.loc 1 108 4 is_stmt 1
	.loc 1 108 6 is_stmt 0
	li	a6,0
.LVL27:
.L20:
	.loc 1 110 3 is_stmt 1 discriminator 2
	.loc 1 110 18 is_stmt 0 discriminator 2
	addi	a3,s0,-32
	.loc 1 110 26 discriminator 2
	add	a5,s6,s1
	.loc 1 110 20 discriminator 2
	addi	a2,a6,1
.LVL28:
	.loc 1 110 18 discriminator 2
	add	a6,a3,a6
	.loc 1 110 10 discriminator 2
	lbu	a5,0(a5)
	lbu	a3,-16(a6)
	add	a4,s4,s1
	.loc 1 104 30 discriminator 2
	addi	s1,s1,1
.LVL29:
	.loc 1 110 10 discriminator 2
	xor	a5,a5,a3
	sb	a5,0(a4)
	.loc 1 104 30 is_stmt 1 discriminator 2
.LVL30:
	.loc 1 104 18 discriminator 2
	.loc 1 104 2 is_stmt 0 discriminator 2
	bne	s2,s1,.L29
	.loc 1 113 9
	li	a0,1
.LVL31:
.L18:
	.loc 1 114 1
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
	lw	s3,28(sp)
	.cfi_restore 19
.LVL32:
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L29:
	.cfi_restore_state
	.loc 1 110 20
	mv	a6,a2
	j	.L21
.LVL34:
.L22:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.loc 1 95 10
	li	a0,0
.LVL35:
	.loc 1 114 1
	ret
	.cfi_endproc
.LFE3:
	.size	tc_cbc_mode_decrypt, .-tc_cbc_mode_decrypt
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x300
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
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
	.byte	0x6
	.4byte	.LASF24
	.byte	0xb0
	.byte	0x3
	.byte	0x40
	.byte	0x10
	.4byte	0x97
	.byte	0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x41
	.byte	0xf
	.4byte	0x97
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x75
	.4byte	0xa7
	.byte	0x9
	.4byte	0x75
	.byte	0x2b
	.byte	0
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x42
	.byte	0x4
	.4byte	0xb8
	.byte	0x4
	.4byte	0xa7
	.byte	0xa
	.byte	0x4
	.4byte	0x7c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x193
	.byte	0xc
	.string	"out"
	.byte	0x1
	.byte	0x4d
	.byte	0x22
	.4byte	0x193
	.4byte	.LLST8
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x4d
	.byte	0x34
	.4byte	0x75
	.4byte	.LLST9
	.byte	0xc
	.string	"in"
	.byte	0x1
	.byte	0x4d
	.byte	0x4b
	.4byte	0x199
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4e
	.byte	0x15
	.4byte	0x75
	.4byte	.LLST11
	.byte	0xc
	.string	"iv"
	.byte	0x1
	.byte	0x4e
	.byte	0x2b
	.4byte	0x199
	.4byte	.LLST12
	.byte	0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4f
	.byte	0x1e
	.4byte	0xb3
	.4byte	.LLST13
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x52
	.byte	0xa
	.4byte	0x19f
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xf
	.string	"p"
	.byte	0x1
	.byte	0x53
	.byte	0x11
	.4byte	0x199
	.4byte	.LLST14
	.byte	0xf
	.string	"n"
	.byte	0x1
	.byte	0x54
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST15
	.byte	0xf
	.string	"m"
	.byte	0x1
	.byte	0x54
	.byte	0x12
	.4byte	0x75
	.4byte	.LLST16
	.byte	0x10
	.4byte	.LVL25
	.4byte	0x2df
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x41
	.byte	0xa
	.byte	0x4
	.4byte	0x4d
	.byte	0x8
	.4byte	0x41
	.4byte	0x1af
	.byte	0x9
	.4byte	0x75
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x2df
	.byte	0xc
	.string	"out"
	.byte	0x1
	.byte	0x25
	.byte	0x22
	.4byte	0x193
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x25
	.byte	0x34
	.4byte	0x75
	.4byte	.LLST1
	.byte	0xc
	.string	"in"
	.byte	0x1
	.byte	0x25
	.byte	0x4b
	.4byte	0x199
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x26
	.byte	0x15
	.4byte	0x75
	.4byte	.LLST3
	.byte	0xc
	.string	"iv"
	.byte	0x1
	.byte	0x26
	.byte	0x2b
	.4byte	0x199
	.4byte	.LLST4
	.byte	0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.byte	0x1e
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2a
	.byte	0xa
	.4byte	0x19f
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xf
	.string	"n"
	.byte	0x1
	.byte	0x2b
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST6
	.byte	0xf
	.string	"m"
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x2eb
	.4byte	0x277
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x4c
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x2eb
	.4byte	0x29c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x4c
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL13
	.4byte	0x2f7
	.4byte	0x2bc
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL14
	.4byte	0x2eb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7b
	.byte	0x5
	.byte	0x13
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.byte	0x13
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x3
	.byte	0x5d
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0xc
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x86
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL9
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6-1
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x78
	.byte	0x4c
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"tc_aes_decrypt"
.LASF21:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF10:
	.string	"TCAesKeySched_t"
.LASF24:
	.string	"tc_aes_key_sched_struct"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF20:
	.string	"tc_aes_encrypt"
.LASF13:
	.string	"inlen"
.LASF17:
	.string	"tc_cbc_mode_encrypt"
.LASF25:
	.string	"words"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF22:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/cbc_mode.c"
.LASF3:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF12:
	.string	"outlen"
.LASF19:
	.string	"_copy"
.LASF1:
	.string	"short int"
.LASF15:
	.string	"buffer"
.LASF2:
	.string	"long int"
.LASF16:
	.string	"tc_cbc_mode_decrypt"
.LASF0:
	.string	"signed char"
.LASF14:
	.string	"sched"
.LASF23:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
