	.file	"ctr_mode.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.tc_ctr_mode,"ax",@progbits
	.align	1
	.globl	tc_ctr_mode
	.type	tc_ctr_mode, @function
tc_ctr_mode:
.LFB2:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ctr_mode.c"
	.loc 1 39 1
	.cfi_startproc
.LVL0:
	.loc 1 41 2
	.loc 1 42 2
	.loc 1 43 2
	.loc 1 44 2
	.loc 1 47 2
	.loc 1 47 5 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 54 10
	li	a0,0
.LVL1:
	.loc 1 85 1
	ret
.LVL2:
.L4:
	.cfi_def_cfa_register 8
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 54 10
	li	a0,0
.L1:
	.loc 1 85 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L2:
	.loc 1 39 1 discriminator 1
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s5,52(sp)
	sw	ra,76(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	.cfi_offset 8, -8
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	s5,a2
	.loc 1 47 27 discriminator 1
	beq	a2,zero,.L4
	mv	s2,a4
	.loc 1 48 26
	beq	a4,zero,.L4
	mv	s7,a5
	.loc 1 49 27
	beq	a5,zero,.L4
	mv	s4,a3
	.loc 1 50 35
	beq	a3,zero,.L4
	.loc 1 51 17
	beq	a1,zero,.L4
	.loc 1 52 18
	bne	a3,a1,.L4
	mv	s6,a0
	.loc 1 58 2 is_stmt 1
	.loc 1 58 8 is_stmt 0
	li	a3,16
.LVL4:
	mv	a2,a4
.LVL5:
	li	a1,16
.LVL6:
	addi	a0,s0,-64
.LVL7:
	call	_copy
.LVL8:
	.loc 1 61 2 is_stmt 1
	.loc 1 61 40 is_stmt 0
	lbu	a5,-51(s0)
	.loc 1 61 20
	lbu	s1,-52(s0)
	.loc 1 63 9
	li	s3,0
	.loc 1 61 45
	slli	a5,a5,16
	.loc 1 61 25
	slli	s1,s1,24
	.loc 1 61 32
	or	s1,s1,a5
	.loc 1 62 32
	lbu	a5,-49(s0)
	.loc 1 62 24
	or	s1,s1,a5
	.loc 1 62 13
	lbu	a5,-50(s0)
	.loc 1 62 18
	slli	a5,a5,8
	.loc 1 62 24
	or	s1,s1,a5
.LVL9:
	.loc 1 63 2 is_stmt 1
	.loc 1 63 14
.L6:
	.loc 1 64 3
	.loc 1 64 10 is_stmt 0
	andi	s8,s3,15
	.loc 1 64 6
	bne	s8,zero,.L5
	.loc 1 66 4 is_stmt 1
	.loc 1 66 8 is_stmt 0
	mv	a2,s7
	addi	a1,s0,-64
	addi	a0,s0,-80
	call	tc_aes_encrypt
.LVL10:
	.loc 1 66 7
	beq	a0,zero,.L4
	.loc 1 67 5 is_stmt 1
	.loc 1 67 14 is_stmt 0
	addi	s1,s1,1
.LVL11:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 37 is_stmt 0
	srli	a5,s1,24
	.loc 1 70 15
	slli	a4,s1,16
	.loc 1 68 17
	sb	a5,-52(s0)
	.loc 1 69 5 is_stmt 1
	.loc 1 70 15 is_stmt 0
	srli	a4,a4,16
	.loc 1 69 37
	srli	a5,s1,16
	.loc 1 69 17
	sb	a5,-51(s0)
	.loc 1 70 5 is_stmt 1
	.loc 1 71 5
	.loc 1 70 15 is_stmt 0
	srli	a4,a4,8
	slli	a5,s1,8
	or	a5,a5,a4
	sh	a5,-50(s0)
.L5:
	.loc 1 77 3 is_stmt 1 discriminator 2
.LVL12:
	.loc 1 77 18 is_stmt 0 discriminator 2
	addi	a3,s0,-48
	.loc 1 77 36 discriminator 2
	add	a5,s5,s3
	.loc 1 77 18 discriminator 2
	add	s8,a3,s8
	.loc 1 77 10 discriminator 2
	lbu	a5,0(a5)
	lbu	a3,-32(s8)
	add	a4,s6,s3
	.loc 1 63 25 discriminator 2
	addi	s3,s3,1
.LVL13:
	.loc 1 77 10 discriminator 2
	xor	a5,a5,a3
	sb	a5,0(a4)
	.loc 1 63 25 is_stmt 1 discriminator 2
.LVL14:
	.loc 1 63 14 discriminator 2
	.loc 1 63 2 is_stmt 0 discriminator 2
	bne	s4,s3,.L6
	.loc 1 81 2 is_stmt 1
	.loc 1 81 10 is_stmt 0
	lbu	a5,-52(s0)
	.loc 1 84 9
	li	a0,1
	.loc 1 81 10
	sb	a5,12(s2)
	.loc 1 81 23 is_stmt 1
	.loc 1 81 31 is_stmt 0
	lbu	a5,-51(s0)
	sb	a5,13(s2)
	.loc 1 82 2 is_stmt 1
	.loc 1 82 10 is_stmt 0
	lbu	a5,-50(s0)
	sb	a5,14(s2)
	.loc 1 82 23 is_stmt 1
	.loc 1 82 31 is_stmt 0
	lbu	a5,-49(s0)
	sb	a5,15(s2)
	.loc 1 84 2 is_stmt 1
	.loc 1 84 9 is_stmt 0
	j	.L1
	.cfi_endproc
.LFE2:
	.size	tc_ctr_mode, .-tc_ctr_mode
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ec
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
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
	.4byte	.LASF23
	.byte	0xb0
	.byte	0x3
	.byte	0x40
	.byte	0x10
	.4byte	0x97
	.byte	0x7
	.4byte	.LASF24
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
	.4byte	.LASF25
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bb
	.byte	0xc
	.string	"out"
	.byte	0x1
	.byte	0x25
	.byte	0x1a
	.4byte	0x1bb
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x25
	.byte	0x2c
	.4byte	0x75
	.4byte	.LLST1
	.byte	0xc
	.string	"in"
	.byte	0x1
	.byte	0x25
	.byte	0x43
	.4byte	0x1c1
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x26
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST3
	.byte	0xc
	.string	"ctr"
	.byte	0x1
	.byte	0x26
	.byte	0x20
	.4byte	0x1bb
	.4byte	.LLST4
	.byte	0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x26
	.byte	0x3b
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x29
	.byte	0xa
	.4byte	0x1c7
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2a
	.byte	0xa
	.4byte	0x1c7
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2b
	.byte	0xf
	.4byte	0x75
	.byte	0x1
	.byte	0x59
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LVL8
	.4byte	0x1d7
	.4byte	0x19d
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x1e3
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
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
	.4byte	0x1d7
	.byte	0x9
	.4byte	0x75
	.byte	0xf
	.byte	0
	.byte	0x13
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.byte	0x13
	.4byte	.LASF19
	.4byte	.LASF19
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
	.byte	0x1
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x86
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
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
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x85
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL8-1
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8-1
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x63
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF10:
	.string	"TCAesKeySched_t"
.LASF23:
	.string	"tc_aes_key_sched_struct"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF16:
	.string	"nonce"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"tc_aes_encrypt"
.LASF13:
	.string	"inlen"
.LASF25:
	.string	"tc_ctr_mode"
.LASF24:
	.string	"words"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF21:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ctr_mode.c"
.LASF3:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF18:
	.string	"_copy"
.LASF1:
	.string	"short int"
.LASF15:
	.string	"buffer"
.LASF2:
	.string	"long int"
.LASF17:
	.string	"block_num"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"outlen"
.LASF14:
	.string	"sched"
.LASF22:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
