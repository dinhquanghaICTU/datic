	.file	"ecc_dh.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.uECC_make_key_with_d,"ax",@progbits
	.align	1
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB2:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dh.c"
	.loc 1 76 1
	.cfi_startproc
.LVL0:
	.loc 1 78 2
	.loc 1 79 2
	.loc 1 84 2
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	s0,120(sp)
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sw	s1,116(sp)
	sw	s2,112(sp)
	sw	s3,108(sp)
	sw	s4,104(sp)
	sw	ra,124(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 84 2
	addi	s2,s0,-128
	.loc 1 76 1
	.loc 1 76 1
	mv	s3,a0
	mv	s4,a1
	.loc 1 84 2
	mv	a0,s2
.LVL1:
	.loc 1 76 1
	mv	a1,a2
.LVL2:
	.loc 1 84 2
	li	a2,32
.LVL3:
	.loc 1 76 1
	mv	s1,a3
	.loc 1 84 2
	call	memcpy
.LVL4:
	.loc 1 87 2 is_stmt 1
	.loc 1 87 6 is_stmt 0
	mv	a2,s1
	mv	a1,s2
	addi	a0,s0,-96
	call	EccPoint_compute_public_key
.LVL5:
	.loc 1 87 5
	beq	a0,zero,.L3
	.loc 1 90 3 is_stmt 1
	.loc 1 91 19 is_stmt 0
	lh	a5,2(s1)
	.loc 1 90 3
	li	a1,8
	mv	a2,s2
	.loc 1 91 32
	addi	a5,a5,7
	.loc 1 90 3
	div	a1,a5,a1
	mv	a0,s4
	call	uECC_vli_nativeToBytes
.LVL6:
	.loc 1 93 3 is_stmt 1
	lb	a1,1(s1)
	addi	a2,s0,-96
	mv	a0,s3
	call	uECC_vli_nativeToBytes
.LVL7:
	.loc 1 96 3
	.loc 1 98 27 is_stmt 0
	lb	a2,0(s1)
	.loc 1 96 44
	lb	a1,1(s1)
	.loc 1 96 3
	addi	a5,s0,-96
	.loc 1 98 20
	slli	a2,a2,2
	.loc 1 96 3
	add	a2,a5,a2
	add	a0,s3,a1
	call	uECC_vli_nativeToBytes
.LVL8:
	.loc 1 101 3 is_stmt 1
.LBB4:
.LBB5:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.loc 2 91 3
	.loc 2 91 10 is_stmt 0
	li	a2,32
	li	a1,0
	mv	a0,s2
	call	memset
.LVL9:
	.loc 2 93 3 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 103 10 is_stmt 0
	li	a0,1
.LVL10:
.L1:
	.loc 1 106 1
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s1,116(sp)
	.cfi_restore 9
.LVL11:
	lw	s2,112(sp)
	.cfi_restore 18
	lw	s3,108(sp)
	.cfi_restore 19
.LVL12:
	lw	s4,104(sp)
	.cfi_restore 20
.LVL13:
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L3:
	.cfi_restore_state
	.loc 1 105 9
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE2:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.section	.text.uECC_make_key,"ax",@progbits
	.align	1
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB3:
	.loc 1 109 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 111 2
	.loc 1 112 2
	.loc 1 113 2
	.loc 1 114 2
	.loc 1 116 2
	.loc 1 116 18
	.loc 1 109 1 is_stmt 0
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	s0,200(sp)
	sw	s1,196(sp)
	sw	s2,192(sp)
	sw	s3,188(sp)
	sw	s4,184(sp)
	sw	s5,180(sp)
	sw	s6,176(sp)
	sw	s7,172(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	ra,204(sp)
	.cfi_offset 1, -4
	.loc 1 109 1
	mv	s3,a0
	mv	s5,a1
	mv	s1,a2
	li	s4,64
.LBB9:
	.loc 1 125 83
	li	s6,32
	.loc 1 125 41
	addi	s7,a2,36
	.loc 1 125 3
	addi	s2,s0,-208
.LVL16:
.L9:
	.loc 1 118 3 is_stmt 1
	.loc 1 118 36 is_stmt 0
	call	uECC_get_rng
.LVL17:
	mv	a5,a0
.LVL18:
	.loc 1 119 3 is_stmt 1
	.loc 1 119 6 is_stmt 0
	beq	a0,zero,.L6
	.loc 1 120 5 discriminator 1
	li	a1,64
	addi	a0,s0,-176
.LVL19:
	jalr	a5
.LVL20:
	.loc 1 119 21 discriminator 1
	beq	a0,zero,.L6
	.loc 1 125 3 is_stmt 1
	.loc 1 125 53 is_stmt 0
	lh	a3,2(s1)
	.loc 1 125 3
	mv	a2,s7
	addi	a1,s0,-176
	.loc 1 125 66
	addi	a3,a3,31
	.loc 1 125 83
	div	a3,a3,s6
	.loc 1 125 3
	mv	a0,s2
	slli	a3,a3,24
	srai	a3,a3,24
	call	uECC_vli_mmod
.LVL21:
	.loc 1 128 3 is_stmt 1
	.loc 1 128 7 is_stmt 0
	mv	a2,s1
	mv	a1,s2
	addi	a0,s0,-112
	call	EccPoint_compute_public_key
.LVL22:
	.loc 1 128 6
	beq	a0,zero,.L7
	.loc 1 131 4 is_stmt 1
	.loc 1 132 20 is_stmt 0
	lh	a5,2(s1)
	.loc 1 131 4
	li	a1,8
	mv	a2,s2
	.loc 1 132 33
	addi	a5,a5,7
	.loc 1 131 4
	div	a1,a5,a1
	mv	a0,s5
	call	uECC_vli_nativeToBytes
.LVL23:
	.loc 1 134 4 is_stmt 1
	lb	a1,1(s1)
	addi	a2,s0,-112
	mv	a0,s3
	call	uECC_vli_nativeToBytes
.LVL24:
	.loc 1 137 4
	.loc 1 139 28 is_stmt 0
	lb	a2,0(s1)
	.loc 1 137 45
	lb	a1,1(s1)
	.loc 1 137 4
	addi	a5,s0,-112
	.loc 1 139 21
	slli	a2,a2,2
	.loc 1 137 4
	add	a2,a5,a2
	add	a0,s3,a1
	call	uECC_vli_nativeToBytes
.LVL25:
	.loc 1 142 4 is_stmt 1
.LBB10:
.LBB11:
	.loc 2 91 3
	.loc 2 91 10 is_stmt 0
	li	a2,32
	li	a1,0
	mv	a0,s2
	call	memset
.LVL26:
	.loc 2 93 3 is_stmt 1
.LBE11:
.LBE10:
	.loc 1 144 17 is_stmt 0
	li	a0,1
.LVL27:
.L5:
.LBE9:
	.loc 1 148 1
	lw	ra,204(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	lw	s1,196(sp)
	.cfi_restore 9
.LVL28:
	lw	s2,192(sp)
	.cfi_restore 18
	lw	s3,188(sp)
	.cfi_restore 19
.LVL29:
	lw	s4,184(sp)
	.cfi_restore 20
	lw	s5,180(sp)
	.cfi_restore 21
.LVL30:
	lw	s6,176(sp)
	.cfi_restore 22
	lw	s7,172(sp)
	.cfi_restore 23
.LVL31:
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
.LVL32:
.L7:
	.cfi_restore_state
	.loc 1 116 30 is_stmt 1 discriminator 2
	.loc 1 116 18 discriminator 2
	.loc 1 116 2 is_stmt 0 discriminator 2
	addi	s4,s4,-1
.LVL33:
	bne	s4,zero,.L9
.LVL34:
.L6:
.LBB12:
	.loc 1 121 18
	li	a0,0
	j	.L5
.LBE12:
	.cfi_endproc
.LFE3:
	.size	uECC_make_key, .-uECC_make_key
	.section	.text.uECC_shared_secret,"ax",@progbits
	.align	1
	.globl	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
.LFB4:
	.loc 1 152 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 154 2
	.loc 1 155 2
	.loc 1 157 2
	.loc 1 158 2
	.loc 1 152 1 is_stmt 0
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	sw	s1,180(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sw	s2,176(sp)
	sw	s3,172(sp)
	sw	s5,164(sp)
	sw	s6,160(sp)
	sw	s4,168(sp)
	sw	s7,156(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.loc 1 168 18
	lh	a5,2(a3)
	.loc 1 152 1
	mv	s6,a2
	.loc 1 166 2
	li	a2,8
.LVL36:
	.loc 1 168 31
	addi	a5,a5,7
	.loc 1 166 2
	div	a2,a5,a2
	.loc 1 162 14
	lb	s4,1(a3)
	.loc 1 158 15
	addi	s2,s0,-176
	.loc 1 152 1
	mv	s5,a0
	.loc 1 158 15
	addi	s3,s0,-144
	.loc 1 166 2
	mv	a0,s2
.LVL37:
	.loc 1 152 1
	mv	s1,a3
	.loc 1 161 14
	lb	s7,0(a3)
	.loc 1 158 15
	sw	s2,-184(s0)
	sw	s3,-180(s0)
	.loc 1 159 2 is_stmt 1
.LVL38:
	.loc 1 160 2
	.loc 1 161 2
	.loc 1 162 2
	.loc 1 163 2
	.loc 1 166 2
	call	uECC_vli_bytesToNative
.LVL39:
	.loc 1 169 2
	mv	a2,s4
	mv	a1,s5
	addi	a0,s0,-112
	call	uECC_vli_bytesToNative
.LVL40:
	.loc 1 172 2
	addi	a5,s0,-112
	.loc 1 172 33 is_stmt 0
	slli	a0,s7,2
	.loc 1 172 2
	add	a1,s5,s4
	add	a0,a5,a0
	mv	a2,s4
	call	uECC_vli_bytesToNative
.LVL41:
	.loc 1 178 2 is_stmt 1
	.loc 1 178 10 is_stmt 0
	mv	a3,s1
	mv	a2,s3
	mv	a1,s2
	mv	a0,s2
	call	regularize_k
.LVL42:
	.loc 1 182 2 is_stmt 1
	.loc 1 190 2
	.loc 1 190 75 is_stmt 0
	lhu	a4,2(s1)
	.loc 1 190 37
	seqz	a1,a0
	.loc 1 190 36
	addi	a5,s0,-48
	slli	a1,a1,2
	add	a1,a5,a1
	.loc 1 190 2
	lw	a2,-136(a1)
	.loc 1 190 75
	addi	a4,a4,1
	.loc 1 190 2
	addi	a1,s0,-112
	slli	a4,a4,16
	mv	a5,s1
	srai	a4,a4,16
	li	a3,0
	mv	a0,a1
.LVL43:
	call	EccPoint_mult
.LVL44:
	.loc 1 193 2 is_stmt 1
	addi	a2,s0,-112
	mv	a1,s4
	mv	a0,s6
	call	uECC_vli_nativeToBytes
.LVL45:
	.loc 1 194 2
	.loc 1 194 7 is_stmt 0
	mv	a1,s1
	addi	a0,s0,-112
	call	EccPoint_isZero
.LVL46:
.LBB19:
.LBB20:
	.loc 2 91 10
	addi	s4,s0,-184
.LVL47:
.LBE20:
.LBE19:
	.loc 1 194 7
	mv	s1,a0
.LVL48:
.LDL1:
	.loc 1 198 2 is_stmt 1
.LBB22:
.LBB21:
	.loc 2 91 3
	.loc 2 91 10 is_stmt 0
	li	a2,8
	li	a1,0
	mv	a0,s4
	call	memset
.LVL49:
	.loc 2 93 3 is_stmt 1
.LVL50:
.LBE21:
.LBE22:
	.loc 1 199 2
.LBB23:
.LBB24:
	.loc 2 91 3
	.loc 2 91 10 is_stmt 0
	li	a2,32
	li	a1,0
	mv	a0,s3
	call	memset
.LVL51:
	.loc 2 93 3 is_stmt 1
.LVL52:
.LBE24:
.LBE23:
	.loc 1 200 2
.LBB25:
.LBB26:
	.loc 2 91 3
	.loc 2 91 10 is_stmt 0
	li	a2,32
	li	a1,0
	mv	a0,s2
	call	memset
.LVL53:
	.loc 2 93 3 is_stmt 1
.LVL54:
.LBE26:
.LBE25:
	.loc 1 202 2
	.loc 1 203 1 is_stmt 0
	lw	ra,188(sp)
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	lw	s2,176(sp)
	.cfi_restore 18
	lw	s3,172(sp)
	.cfi_restore 19
	lw	s4,168(sp)
	.cfi_restore 20
	lw	s5,164(sp)
	.cfi_restore 21
.LVL55:
	lw	s6,160(sp)
	.cfi_restore 22
.LVL56:
	lw	s7,156(sp)
	.cfi_restore 23
.LVL57:
	seqz	a0,s1
	lw	s1,180(sp)
	.cfi_restore 9
.LVL58:
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.text
.Letext0:
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x87c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x44
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6a
	.byte	0x4
	.4byte	0x59
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x59
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x5a
	.byte	0x11
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5e
	.byte	0x16
	.4byte	0x8d
	.byte	0x4
	.4byte	0xac
	.byte	0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x6f
	.byte	0x25
	.4byte	0xc9
	.byte	0x6
	.byte	0x4
	.4byte	0x157
	.byte	0x7
	.4byte	.LASF53
	.byte	0xb0
	.byte	0x4
	.byte	0x70
	.byte	0x8
	.4byte	0x157
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x71
	.byte	0xf
	.4byte	0x94
	.byte	0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x72
	.byte	0xf
	.4byte	0x94
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x73
	.byte	0xe
	.4byte	0xa0
	.byte	0x2
	.byte	0x9
	.string	"p"
	.byte	0x4
	.byte	0x74
	.byte	0xf
	.4byte	0x15c
	.byte	0x4
	.byte	0x9
	.string	"n"
	.byte	0x4
	.byte	0x75
	.byte	0xf
	.4byte	0x15c
	.byte	0x24
	.byte	0x9
	.string	"G"
	.byte	0x4
	.byte	0x76
	.byte	0xf
	.4byte	0x16c
	.byte	0x44
	.byte	0x9
	.string	"b"
	.byte	0x4
	.byte	0x77
	.byte	0xf
	.4byte	0x15c
	.byte	0x84
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x78
	.byte	0xa
	.4byte	0x19c
	.byte	0xa4
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7a
	.byte	0xa
	.4byte	0x1bd
	.byte	0xa8
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7b
	.byte	0xa
	.4byte	0x1d3
	.byte	0xac
	.byte	0
	.byte	0x4
	.4byte	0xcf
	.byte	0xa
	.4byte	0xac
	.4byte	0x16c
	.byte	0xb
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	0xac
	.4byte	0x17c
	.byte	0xb
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.byte	0xc
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0xbd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xac
	.byte	0x6
	.byte	0x4
	.4byte	0x17c
	.byte	0xc
	.4byte	0x1b7
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x1b7
	.byte	0xd
	.4byte	0xbd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb8
	.byte	0x6
	.byte	0x4
	.4byte	0x1a2
	.byte	0xc
	.4byte	0x1d3
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1c3
	.byte	0xe
	.4byte	.LASF24
	.byte	0x4
	.byte	0xa1
	.byte	0x22
	.4byte	0x157
	.byte	0x2
	.4byte	.LASF22
	.byte	0x4
	.byte	0xe1
	.byte	0xe
	.4byte	0x1f1
	.byte	0x6
	.byte	0x4
	.4byte	0x1f7
	.byte	0xf
	.4byte	0x86
	.4byte	0x20b
	.byte	0xd
	.4byte	0x20b
	.byte	0xd
	.4byte	0x8d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x59
	.byte	0x10
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x47
	.byte	0x1a
	.4byte	0x1e5
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x96
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e3
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x96
	.byte	0x27
	.4byte	0x4e3
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x96
	.byte	0x42
	.4byte	0x4e3
	.4byte	.LLST16
	.byte	0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x97
	.byte	0x13
	.4byte	0x20b
	.4byte	.LLST17
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x97
	.byte	0x26
	.4byte	0xbd
	.4byte	.LLST18
	.byte	0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9b
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x14
	.string	"tmp"
	.byte	0x1
	.byte	0x9d
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x14
	.string	"p2"
	.byte	0x1
	.byte	0x9e
	.byte	0xf
	.4byte	0x4e9
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9f
	.byte	0xf
	.4byte	0x196
	.byte	0
	.byte	0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa0
	.byte	0xe
	.4byte	0xac
	.4byte	.LLST19
	.byte	0x16
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa1
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST20
	.byte	0x16
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa2
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST21
	.byte	0x17
	.string	"r"
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.4byte	0x86
	.4byte	.LLST22
	.byte	0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.4byte	.LDL1
	.byte	0x19
	.4byte	0x7cf
	.4byte	.LBB19
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xc6
	.byte	0x2
	.4byte	0x360
	.byte	0x1a
	.4byte	0x7e7
	.4byte	.LLST23
	.byte	0x1a
	.4byte	0x7f3
	.4byte	.LLST24
	.byte	0x1a
	.4byte	0x7dc
	.4byte	.LLST25
	.byte	0x1b
	.4byte	.LVL49
	.4byte	0x800
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x7cf
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0xc7
	.byte	0x2
	.4byte	0x3ab
	.byte	0x1a
	.4byte	0x7e7
	.4byte	.LLST26
	.byte	0x1a
	.4byte	0x7f3
	.4byte	.LLST27
	.byte	0x1a
	.4byte	0x7dc
	.4byte	.LLST28
	.byte	0x1b
	.4byte	.LVL51
	.4byte	0x800
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x7cf
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0xc8
	.byte	0x2
	.4byte	0x3f6
	.byte	0x1a
	.4byte	0x7e7
	.4byte	.LLST29
	.byte	0x1a
	.4byte	0x7f3
	.4byte	.LLST30
	.byte	0x1a
	.4byte	0x7dc
	.4byte	.LLST31
	.byte	0x1b
	.4byte	.LVL53
	.4byte	0x800
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL39
	.4byte	0x80c
	.4byte	0x411
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x1e
	.4byte	.LVL40
	.4byte	0x80c
	.4byte	0x432
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL41
	.4byte	0x80c
	.4byte	0x45d
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.byte	0x87
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x70
	.byte	0x1c
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x85
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL42
	.4byte	0x819
	.4byte	0x483
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL44
	.4byte	0x826
	.4byte	0x4aa
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0x1c
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL45
	.4byte	0x833
	.4byte	0x4cb
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0
	.byte	0x1b
	.4byte	.LVL46
	.4byte	0x840
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x65
	.byte	0xa
	.4byte	0x196
	.4byte	0x4f9
	.byte	0xb
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6c
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x685
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6c
	.byte	0x1c
	.4byte	0x20b
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6c
	.byte	0x31
	.4byte	0x20b
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6c
	.byte	0x49
	.4byte	0xbd
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6f
	.byte	0xe
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x70
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x71
	.byte	0xe
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0x72
	.byte	0xe
	.4byte	0xac
	.4byte	.LLST10
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0
	.byte	0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x76
	.byte	0x15
	.4byte	0x1e5
	.4byte	.LLST11
	.byte	0x1d
	.4byte	0x7cf
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x8e
	.byte	0x4
	.4byte	0x5e3
	.byte	0x1a
	.4byte	0x7e7
	.4byte	.LLST12
	.byte	0x1a
	.4byte	0x7f3
	.4byte	.LLST13
	.byte	0x1a
	.4byte	0x7dc
	.4byte	.LLST14
	.byte	0x1b
	.4byte	.LVL26
	.4byte	0x800
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL17
	.4byte	0x84d
	.byte	0x21
	.4byte	.LVL20
	.4byte	0x603
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xd0,0x7e
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x1e
	.4byte	.LVL21
	.4byte	0x859
	.4byte	0x624
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xd0,0x7e
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL22
	.4byte	0x866
	.4byte	0x645
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL23
	.4byte	0x833
	.4byte	0x65f
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL24
	.4byte	0x833
	.4byte	0x67a
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0
	.byte	0x20
	.4byte	.LVL25
	.4byte	0x833
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x7c9
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4a
	.byte	0x23
	.4byte	0x20b
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4a
	.byte	0x38
	.4byte	0x20b
	.4byte	.LLST1
	.byte	0x22
	.string	"d"
	.byte	0x1
	.byte	0x4b
	.byte	0x13
	.4byte	0x7c9
	.4byte	.LLST2
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4b
	.byte	0x21
	.4byte	0xbd
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4f
	.byte	0xe
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x1d
	.4byte	0x7cf
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.4byte	0x748
	.byte	0x1a
	.4byte	0x7e7
	.4byte	.LLST4
	.byte	0x1a
	.4byte	0x7f3
	.4byte	.LLST5
	.byte	0x1a
	.4byte	0x7dc
	.4byte	.LLST6
	.byte	0x1b
	.4byte	.LVL9
	.4byte	0x800
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL4
	.4byte	0x873
	.4byte	0x769
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x1e
	.4byte	.LVL5
	.4byte	0x866
	.4byte	0x78a
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0x833
	.4byte	0x7a4
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL7
	.4byte	0x833
	.4byte	0x7bf
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x20
	.4byte	.LVL8
	.4byte	0x833
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8d
	.byte	0x23
	.4byte	.LASF55
	.byte	0x2
	.byte	0x59
	.byte	0x14
	.byte	0x3
	.4byte	0x800
	.byte	0x24
	.string	"to"
	.byte	0x2
	.byte	0x59
	.byte	0x26
	.4byte	0x211
	.byte	0x24
	.string	"val"
	.byte	0x2
	.byte	0x59
	.byte	0x32
	.4byte	0x59
	.byte	0x24
	.string	"len"
	.byte	0x2
	.byte	0x59
	.byte	0x44
	.4byte	0x8d
	.byte	0
	.byte	0x25
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x26
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x21a
	.byte	0x6
	.byte	0x26
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x120
	.byte	0xd
	.byte	0x26
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x12e
	.byte	0x6
	.byte	0x26
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x211
	.byte	0x6
	.byte	0x26
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x140
	.byte	0xd
	.byte	0x25
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x4
	.byte	0xf3
	.byte	0x13
	.byte	0x26
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x18e
	.byte	0x6
	.byte	0x26
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x114
	.byte	0xd
	.byte	0x25
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL55
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL56
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39-1
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL48
	.4byte	.LVL58
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x87
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x8
	.byte	0x41
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
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
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"uECC_vli_mmod"
.LASF15:
	.string	"uECC_Curve"
.LASF44:
	.string	"uECC_vli_nativeToBytes"
.LASF10:
	.string	"long long unsigned int"
.LASF31:
	.string	"_private"
.LASF1:
	.string	"int16_t"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF45:
	.string	"EccPoint_isZero"
.LASF32:
	.string	"initial_Z"
.LASF4:
	.string	"long int"
.LASF42:
	.string	"regularize_k"
.LASF49:
	.string	"memcpy"
.LASF53:
	.string	"uECC_Curve_t"
.LASF25:
	.string	"g_rng_function"
.LASF11:
	.string	"unsigned int"
.LASF13:
	.string	"bitcount_t"
.LASF9:
	.string	"long unsigned int"
.LASF46:
	.string	"uECC_get_rng"
.LASF16:
	.string	"num_words"
.LASF8:
	.string	"short unsigned int"
.LASF35:
	.string	"uECC_make_key"
.LASF18:
	.string	"num_n_bits"
.LASF38:
	.string	"rng_function"
.LASF28:
	.string	"secret"
.LASF22:
	.string	"uECC_RNG_Function"
.LASF39:
	.string	"uECC_make_key_with_d"
.LASF21:
	.string	"mmod_fast"
.LASF51:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dh.c"
.LASF41:
	.string	"uECC_vli_bytesToNative"
.LASF33:
	.string	"carry"
.LASF20:
	.string	"x_side"
.LASF54:
	.string	"clear_and_out"
.LASF7:
	.string	"unsigned char"
.LASF37:
	.string	"tries"
.LASF3:
	.string	"short int"
.LASF43:
	.string	"EccPoint_mult"
.LASF14:
	.string	"uECC_word_t"
.LASF23:
	.string	"char"
.LASF26:
	.string	"public_key"
.LASF55:
	.string	"_set_secure"
.LASF24:
	.string	"curve_secp256r1"
.LASF0:
	.string	"int8_t"
.LASF17:
	.string	"num_bytes"
.LASF50:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF19:
	.string	"double_jacobian"
.LASF40:
	.string	"memset"
.LASF34:
	.string	"uECC_shared_secret"
.LASF6:
	.string	"uint8_t"
.LASF36:
	.string	"_random"
.LASF29:
	.string	"curve"
.LASF48:
	.string	"EccPoint_compute_public_key"
.LASF27:
	.string	"private_key"
.LASF12:
	.string	"wordcount_t"
.LASF52:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF30:
	.string	"_public"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
