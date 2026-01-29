	.file	"hmac.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.rekey,"ax",@progbits
	.align	1
	.type	rekey, @function
rekey:
.LFB2:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/hmac.c"
	.loc 1 38 1
	.cfi_startproc
.LVL0:
	.loc 1 39 2
	.loc 1 40 2
	.loc 1 41 2
	.loc 1 43 2
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	add	a2,a0,a2
.LVL1:
	.loc 1 43 2
	mv	a5,a0
.LVL2:
.L2:
	.loc 1 43 14 is_stmt 1 discriminator 1
	.loc 1 43 2 is_stmt 0 discriminator 1
	bne	a5,a2,.L3
	.loc 1 47 2
	li	a4,63
	.loc 1 48 10
	li	a2,54
	.loc 1 48 37
	li	a1,92
.LVL3:
.L4:
	.loc 1 47 9 is_stmt 1 discriminator 1
	.loc 1 47 2 is_stmt 0 discriminator 1
	sub	a3,a5,a0
	bleu	a3,a4,.L5
	.loc 1 50 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L3:
	.cfi_restore_state
	.loc 1 44 3 is_stmt 1 discriminator 3
	.loc 1 44 10 is_stmt 0 discriminator 3
	lbu	a4,0(a1)
	addi	a5,a5,1
.LVL4:
	addi	a1,a1,1
	xori	a4,a4,54
	sb	a4,-1(a5)
	.loc 1 45 3 is_stmt 1 discriminator 3
	.loc 1 45 17 is_stmt 0 discriminator 3
	lbu	a4,-1(a1)
	xori	a4,a4,92
	sb	a4,63(a5)
	.loc 1 43 28 is_stmt 1 discriminator 3
.LVL5:
	j	.L2
.LVL6:
.L5:
	.loc 1 48 3 discriminator 2
	.loc 1 48 10 is_stmt 0 discriminator 2
	sb	a2,0(a5)
	.loc 1 48 23 is_stmt 1 discriminator 2
	.loc 1 48 37 is_stmt 0 discriminator 2
	sb	a1,64(a5)
	.loc 1 47 19 is_stmt 1 discriminator 2
.LVL7:
	addi	a5,a5,1
.LVL8:
	j	.L4
	.cfi_endproc
.LFE2:
	.size	rekey, .-rekey
	.section	.text.tc_hmac_set_key,"ax",@progbits
	.align	1
	.globl	tc_hmac_set_key
	.type	tc_hmac_set_key, @function
tc_hmac_set_key:
.LFB3:
	.loc 1 54 1
	.cfi_startproc
.LVL9:
	.loc 1 56 2
	.loc 1 56 5 is_stmt 0
	beq	a0,zero,.L10
	.loc 1 54 1 discriminator 1
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sw	s0,328(sp)
	sw	s3,316(sp)
	sw	ra,332(sp)
	sw	s1,324(sp)
	sw	s2,320(sp)
	sw	s4,312(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	mv	s3,a1
	.loc 1 59 10 discriminator 1
	li	a5,0
	.loc 1 56 31 discriminator 1
	beq	a1,zero,.L7
	mv	s2,a2
	.loc 1 57 33
	beq	a2,zero,.L7
	.loc 1 65 5
	li	a5,64
	mv	s1,a0
	.loc 1 62 2 is_stmt 1
	.loc 1 63 2
	.loc 1 65 2
	.loc 1 81 12 is_stmt 0
	addi	s4,a0,112
	.loc 1 65 5
	bgtu	a2,a5,.L9
	.loc 1 73 3 is_stmt 1
	.loc 1 73 9 is_stmt 0
	addi	a0,s0,-272
.LVL10:
	call	tc_sha256_init
.LVL11:
	.loc 1 74 3 is_stmt 1
	.loc 1 74 9 is_stmt 0
	mv	a2,s2
	addi	a1,s0,-336
	addi	a0,s0,-272
	call	tc_sha256_update
.LVL12:
	.loc 1 77 3 is_stmt 1
	.loc 1 77 9 is_stmt 0
	addi	a1,s0,-272
	addi	a0,s0,-128
	call	tc_sha256_final
.LVL13:
	.loc 1 81 3 is_stmt 1
	mv	a2,s2
	mv	a1,s3
.LVL14:
.L17:
	.loc 1 87 3 is_stmt 0
	mv	a0,s4
	call	rekey
.LVL15:
	.loc 1 92 9
	li	a5,1
.LVL16:
.L7:
	.loc 1 93 1
	lw	ra,332(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	lw	s1,324(sp)
	.cfi_restore 9
	lw	s2,320(sp)
	.cfi_restore 18
	lw	s3,316(sp)
	.cfi_restore 19
.LVL17:
	lw	s4,312(sp)
	.cfi_restore 20
	mv	a0,a5
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L9:
	.cfi_restore_state
	.loc 1 83 3 is_stmt 1
	.loc 1 83 9 is_stmt 0
	call	tc_sha256_init
.LVL19:
	.loc 1 84 3 is_stmt 1
	.loc 1 84 9 is_stmt 0
	mv	a2,s2
	mv	a1,s3
	mv	a0,s1
	call	tc_sha256_update
.LVL20:
	.loc 1 85 3 is_stmt 1
	.loc 1 85 9 is_stmt 0
	addi	s2,s1,144
.LVL21:
	mv	a1,s1
	mv	a0,s2
	call	tc_sha256_final
.LVL22:
	.loc 1 87 3 is_stmt 1
	li	a2,32
	mv	a1,s2
	j	.L17
.LVL23:
.L10:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.loc 1 59 10 is_stmt 0
	li	a5,0
	.loc 1 93 1
	mv	a0,a5
.LVL24:
	ret
	.cfi_endproc
.LFE3:
	.size	tc_hmac_set_key, .-tc_hmac_set_key
	.section	.text.tc_hmac_init,"ax",@progbits
	.align	1
	.globl	tc_hmac_init
	.type	tc_hmac_init, @function
tc_hmac_init:
.LFB4:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 99 2
	.loc 1 99 5 is_stmt 0
	beq	a0,zero,.L20
	.loc 1 96 1
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
	mv	s1,a0
	.loc 1 103 3 is_stmt 1
	.loc 1 103 10 is_stmt 0
	call	tc_sha256_init
.LVL26:
	.loc 1 104 3 is_stmt 1
	.loc 1 104 10 is_stmt 0
	addi	a1,s1,112
	mv	a0,s1
	li	a2,64
	call	tc_sha256_update
.LVL27:
	.loc 1 106 2 is_stmt 1
	.loc 1 107 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL28:
	.loc 1 106 9
	li	a0,1
	.loc 1 107 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L20:
	.loc 1 100 10
	li	a0,0
.LVL30:
	.loc 1 107 1
	ret
	.cfi_endproc
.LFE4:
	.size	tc_hmac_init, .-tc_hmac_init
	.section	.text.tc_hmac_update,"ax",@progbits
	.align	1
	.globl	tc_hmac_update
	.type	tc_hmac_update, @function
tc_hmac_update:
.LFB5:
	.loc 1 112 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 115 2
	.loc 1 115 5 is_stmt 0
	beq	a0,zero,.L27
	.loc 1 119 2 is_stmt 1
	.loc 1 112 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 119 8
	call	tc_sha256_update
.LVL32:
	.loc 1 121 2 is_stmt 1
	.loc 1 122 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 121 9
	li	a0,1
	.loc 1 122 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L27:
	.loc 1 116 10
	li	a0,0
.LVL34:
	.loc 1 122 1
	ret
	.cfi_endproc
.LFE5:
	.size	tc_hmac_update, .-tc_hmac_update
	.section	.text.tc_hmac_final,"ax",@progbits
	.align	1
	.globl	tc_hmac_final
	.type	tc_hmac_final, @function
tc_hmac_final:
.LFB6:
	.loc 1 125 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 128 2
	.loc 1 128 5 is_stmt 0
	beq	a0,zero,.L34
	.loc 1 128 27 discriminator 1
	li	a4,32
	.loc 1 131 10 discriminator 1
	li	a5,0
	.loc 1 128 27 discriminator 1
	bne	a1,a4,.L38
	.loc 1 125 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s1,a2
	.loc 1 129 21
	beq	a2,zero,.L32
	.loc 1 134 9
	mv	a1,a2
.LVL36:
	mv	s2,a0
	.loc 1 134 2 is_stmt 1
	.loc 1 134 9 is_stmt 0
	call	tc_sha256_final
.LVL37:
	.loc 1 136 2 is_stmt 1
	.loc 1 136 8 is_stmt 0
	mv	a0,s1
	call	tc_sha256_init
.LVL38:
	.loc 1 137 2 is_stmt 1
	.loc 1 137 8 is_stmt 0
	li	a2,64
	addi	a1,s1,176
	mv	a0,s1
	call	tc_sha256_update
.LVL39:
	.loc 1 140 2 is_stmt 1
	.loc 1 140 8 is_stmt 0
	li	a2,32
	mv	a1,s2
	mv	a0,s1
	call	tc_sha256_update
.LVL40:
	.loc 1 141 2 is_stmt 1
	.loc 1 141 8 is_stmt 0
	mv	a1,s1
	mv	a0,s2
	call	tc_sha256_final
.LVL41:
	.loc 1 144 2 is_stmt 1
	li	a2,240
	li	a1,0
	mv	a0,s1
	call	_set
.LVL42:
	.loc 1 146 2
	.loc 1 146 9 is_stmt 0
	li	a5,1
.LVL43:
.L32:
	.loc 1 147 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL44:
	lw	s2,0(sp)
	.cfi_restore 18
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L34:
	.loc 1 131 10
	li	a5,0
.L38:
	.loc 1 147 1
	mv	a0,a5
.LVL46:
	ret
	.cfi_endproc
.LFE6:
	.size	tc_hmac_final, .-tc_hmac_final
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/sha256.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/hmac.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4ce
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6c
	.byte	0x5
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0x8d
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x6
	.4byte	.LASF15
	.byte	0x70
	.byte	0x4
	.byte	0x47
	.byte	0x8
	.4byte	0xd5
	.byte	0x7
	.string	"iv"
	.byte	0x4
	.byte	0x48
	.byte	0xf
	.4byte	0xd5
	.byte	0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0x49
	.byte	0xb
	.4byte	0x81
	.byte	0x20
	.byte	0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4a
	.byte	0xa
	.4byte	0xe5
	.byte	0x28
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4b
	.byte	0x9
	.4byte	0x2c
	.byte	0x68
	.byte	0
	.byte	0x9
	.4byte	0x38
	.4byte	0xe5
	.byte	0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5b
	.4byte	0xf5
	.byte	0xa
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0xf0
	.byte	0x5
	.byte	0x48
	.byte	0x8
	.4byte	0x11d
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4a
	.byte	0x20
	.4byte	0x94
	.byte	0
	.byte	0x7
	.string	"key"
	.byte	0x5
	.byte	0x4c
	.byte	0xa
	.4byte	0x11d
	.byte	0x70
	.byte	0
	.byte	0x9
	.4byte	0x5b
	.4byte	0x12d
	.byte	0xa
	.4byte	0x38
	.byte	0x7f
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x4e
	.byte	0x26
	.4byte	0x139
	.byte	0xb
	.byte	0x4
	.4byte	0xf5
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7c
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x235
	.byte	0xd
	.string	"tag"
	.byte	0x1
	.byte	0x7c
	.byte	0x1c
	.4byte	0x235
	.4byte	.LLST10
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7c
	.byte	0x2e
	.4byte	0x38
	.4byte	.LLST11
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x7c
	.byte	0x44
	.4byte	0x12d
	.4byte	.LLST12
	.byte	0xf
	.4byte	.LVL37
	.4byte	0x4a1
	.4byte	0x1aa
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL38
	.4byte	0x4ad
	.4byte	0x1be
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL39
	.4byte	0x4b9
	.4byte	0x1df
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x79
	.byte	0xb0,0x1
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL40
	.4byte	0x4b9
	.4byte	0x1ff
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0xf
	.4byte	.LVL41
	.4byte	0x4a1
	.4byte	0x219
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL42
	.4byte	0x4c5
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x5b
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6d
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a5
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x6d
	.byte	0x22
	.4byte	0x12d
	.4byte	.LLST7
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6e
	.byte	0x12
	.4byte	0x2a5
	.4byte	.LLST8
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x6f
	.byte	0x13
	.4byte	0x38
	.4byte	.LLST9
	.byte	0x11
	.4byte	.LVL32
	.4byte	0x4b9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x2ab
	.byte	0x12
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x308
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x5f
	.byte	0x20
	.4byte	0x12d
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LVL26
	.4byte	0x4ad
	.4byte	0x2ea
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL27
	.4byte	0x4b9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x79
	.byte	0xf0,0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x419
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.byte	0x34
	.byte	0x23
	.4byte	0x12d
	.4byte	.LLST3
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0x34
	.byte	0x37
	.4byte	0x419
	.4byte	.LLST4
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x35
	.byte	0x14
	.4byte	0x38
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3e
	.byte	0x10
	.4byte	0x42f
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3f
	.byte	0x1e
	.4byte	0xf5
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0xf
	.4byte	.LVL11
	.4byte	0x4ad
	.4byte	0x387
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf0,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x4b9
	.4byte	0x3a9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf0,0x7d
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x7d
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL13
	.4byte	0x4a1
	.4byte	0x3c5
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xf0,0x7d
	.byte	0
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x434
	.4byte	0x3d9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL19
	.4byte	0x4ad
	.byte	0xf
	.4byte	.LVL20
	.4byte	0x4b9
	.4byte	0x402
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL22
	.4byte	0x4a1
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x67
	.byte	0x9
	.4byte	0x67
	.4byte	0x42f
	.byte	0xa
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.byte	0x5
	.4byte	0x41f
	.byte	0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a1
	.byte	0x16
	.string	"key"
	.byte	0x1
	.byte	0x25
	.byte	0x1c
	.4byte	0x235
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x25
	.byte	0x30
	.4byte	0x419
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x25
	.byte	0x46
	.4byte	0x38
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.4byte	0x67
	.byte	0x36
	.byte	0x17
	.4byte	.LASF32
	.byte	0x1
	.byte	0x28
	.byte	0x10
	.4byte	0x67
	.byte	0x5c
	.byte	0x18
	.string	"i"
	.byte	0x1
	.byte	0x29
	.byte	0xf
	.4byte	0x38
	.4byte	.LLST2
	.byte	0
	.byte	0x19
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.byte	0x7b
	.byte	0x5
	.byte	0x19
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.byte	0x57
	.byte	0x5
	.byte	0x19
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x69
	.byte	0x5
	.byte	0x19
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x47
	.byte	0x6
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37-1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL23
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"size_t"
.LASF31:
	.string	"inner_pad"
.LASF37:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF12:
	.string	"bits_hashed"
.LASF38:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/hmac.c"
.LASF13:
	.string	"leftover"
.LASF10:
	.string	"uint64_t"
.LASF30:
	.string	"new_key"
.LASF23:
	.string	"data"
.LASF11:
	.string	"long long unsigned int"
.LASF7:
	.string	"unsigned char"
.LASF40:
	.string	"rekey"
.LASF9:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF21:
	.string	"tc_hmac_final"
.LASF28:
	.string	"dummy_key"
.LASF17:
	.string	"hash_state"
.LASF34:
	.string	"tc_sha256_init"
.LASF33:
	.string	"tc_sha256_final"
.LASF22:
	.string	"tc_hmac_update"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"_set"
.LASF32:
	.string	"outer_pad"
.LASF6:
	.string	"uint8_t"
.LASF15:
	.string	"tc_sha256_state_struct"
.LASF35:
	.string	"tc_sha256_update"
.LASF27:
	.string	"key_size"
.LASF14:
	.string	"leftover_offset"
.LASF25:
	.string	"tc_hmac_init"
.LASF4:
	.string	"long long int"
.LASF19:
	.string	"char"
.LASF26:
	.string	"tc_hmac_set_key"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"data_length"
.LASF29:
	.string	"dummy_state"
.LASF3:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF39:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF16:
	.string	"tc_hmac_state_struct"
.LASF18:
	.string	"TCHmacState_t"
.LASF20:
	.string	"taglen"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
