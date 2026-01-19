	.file	"hmac_prng.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.update,"ax",@progbits
	.align	1
	.type	update, @function
update:
.LFB2:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/hmac_prng.c"
	.loc 1 79 1
	.cfi_startproc
.LVL0:
	.loc 1 80 2
	.loc 1 79 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 84 32
	addi	s3,a0,240
	.loc 1 81 16
	li	a5,1
	.loc 1 79 1
	.loc 1 79 1
	mv	s6,a1
	mv	s7,a2
	.loc 1 84 2
	mv	a1,s3
.LVL1:
	li	a2,32
.LVL2:
	.loc 1 79 1
	mv	s1,a0
	mv	s4,a3
	mv	s5,a4
	.loc 1 81 16
	sb	a5,-49(s0)
	.loc 1 80 16
	sb	zero,-50(s0)
	.loc 1 81 2 is_stmt 1
	.loc 1 84 2
	call	tc_hmac_set_key
.LVL3:
	.loc 1 87 2
	.loc 1 87 8 is_stmt 0
	mv	a0,s1
	call	tc_hmac_init
.LVL4:
	.loc 1 88 2 is_stmt 1
	.loc 1 88 37 is_stmt 0
	addi	s2,s1,272
	.loc 1 88 8
	li	a2,32
	mv	a1,s2
	mv	a0,s1
	call	tc_hmac_update
.LVL5:
	.loc 1 89 2 is_stmt 1
	.loc 1 89 8 is_stmt 0
	li	a2,1
	addi	a1,s0,-50
	mv	a0,s1
	call	tc_hmac_update
.LVL6:
	.loc 1 91 2 is_stmt 1
	.loc 1 91 5 is_stmt 0
	beq	s6,zero,.L2
	.loc 1 91 11 discriminator 1
	beq	s7,zero,.L2
	.loc 1 92 3 is_stmt 1
	.loc 1 92 9 is_stmt 0
	mv	a2,s7
	mv	a1,s6
	mv	a0,s1
	call	tc_hmac_update
.LVL7:
.L2:
	.loc 1 93 2 is_stmt 1
	.loc 1 93 5 is_stmt 0
	beq	s4,zero,.L3
	.loc 1 93 22 discriminator 1
	beq	s5,zero,.L3
	.loc 1 94 3 is_stmt 1
	.loc 1 94 9 is_stmt 0
	mv	a2,s5
	mv	a1,s4
	mv	a0,s1
	call	tc_hmac_update
.LVL8:
.L3:
	.loc 1 96 2 is_stmt 1
	.loc 1 96 8 is_stmt 0
	mv	a2,s1
	li	a1,32
	mv	a0,s3
	call	tc_hmac_final
.LVL9:
	.loc 1 99 2 is_stmt 1
	.loc 1 99 8 is_stmt 0
	li	a2,32
	mv	a1,s3
	mv	a0,s1
	call	tc_hmac_set_key
.LVL10:
	.loc 1 102 2 is_stmt 1
	.loc 1 102 8 is_stmt 0
	mv	a0,s1
	call	tc_hmac_init
.LVL11:
	.loc 1 103 2 is_stmt 1
	.loc 1 103 8 is_stmt 0
	li	a2,32
	mv	a1,s2
	mv	a0,s1
	call	tc_hmac_update
.LVL12:
	.loc 1 104 2 is_stmt 1
	.loc 1 104 8 is_stmt 0
	mv	a2,s1
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final
.LVL13:
	.loc 1 106 2 is_stmt 1
	.loc 1 106 5 is_stmt 0
	beq	s6,zero,.L1
	.loc 1 106 16 discriminator 1
	beq	s7,zero,.L1
	.loc 1 110 2 is_stmt 1
	li	a2,32
	mv	a1,s3
	mv	a0,s1
	call	tc_hmac_set_key
.LVL14:
	.loc 1 113 2
	.loc 1 113 8 is_stmt 0
	mv	a0,s1
	call	tc_hmac_init
.LVL15:
	.loc 1 114 2 is_stmt 1
	.loc 1 114 8 is_stmt 0
	li	a2,32
	mv	a1,s2
	mv	a0,s1
	call	tc_hmac_update
.LVL16:
	.loc 1 115 2 is_stmt 1
	.loc 1 115 8 is_stmt 0
	li	a2,1
	addi	a1,s0,-49
	mv	a0,s1
	call	tc_hmac_update
.LVL17:
	.loc 1 116 2 is_stmt 1
	.loc 1 116 8 is_stmt 0
	mv	a2,s7
	mv	a1,s6
	mv	a0,s1
	call	tc_hmac_update
.LVL18:
	.loc 1 117 2 is_stmt 1
	.loc 1 117 5 is_stmt 0
	beq	s4,zero,.L7
	.loc 1 117 22 discriminator 1
	beq	s5,zero,.L7
	.loc 1 118 3 is_stmt 1
	.loc 1 118 9 is_stmt 0
	mv	a2,s5
	mv	a1,s4
	mv	a0,s1
	call	tc_hmac_update
.LVL19:
.L7:
	.loc 1 119 2 is_stmt 1
	.loc 1 119 8 is_stmt 0
	mv	a2,s1
	li	a1,32
	mv	a0,s3
	call	tc_hmac_final
.LVL20:
	.loc 1 122 2 is_stmt 1
	.loc 1 122 8 is_stmt 0
	li	a2,32
	mv	a1,s3
	mv	a0,s1
	call	tc_hmac_set_key
.LVL21:
	.loc 1 125 2 is_stmt 1
	.loc 1 125 8 is_stmt 0
	mv	a0,s1
	call	tc_hmac_init
.LVL22:
	.loc 1 126 2 is_stmt 1
	.loc 1 126 8 is_stmt 0
	li	a2,32
	mv	a1,s2
	mv	a0,s1
	call	tc_hmac_update
.LVL23:
	.loc 1 127 2 is_stmt 1
	.loc 1 127 8 is_stmt 0
	mv	a2,s1
	li	a1,32
	mv	a0,s2
	call	tc_hmac_final
.LVL24:
.L1:
	.loc 1 128 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL25:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL26:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL27:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL28:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL29:
	lw	s6,32(sp)
	.cfi_restore 22
.LVL30:
	lw	s7,28(sp)
	.cfi_restore 23
.LVL31:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	update, .-update
	.section	.text.tc_hmac_prng_init,"ax",@progbits
	.align	1
	.globl	tc_hmac_prng_init
	.type	tc_hmac_prng_init, @function
tc_hmac_prng_init:
.LFB3:
	.loc 1 133 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 136 2
	.loc 1 136 5 is_stmt 0
	beq	a0,zero,.L32
	.loc 1 133 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	s2,a1
	.loc 1 139 10
	li	a0,0
.LVL33:
	.loc 1 137 39
	beq	a1,zero,.L30
	mv	s3,a2
	.loc 1 143 2 is_stmt 1
	li	a1,0
.LVL34:
	li	a2,32
.LVL35:
	addi	a0,s1,240
	call	_set
.LVL36:
	.loc 1 144 2
	li	a2,32
	li	a1,1
	addi	a0,s1,272
	call	_set
.LVL37:
	.loc 1 146 2
	mv	a0,s1
	li	a4,0
	li	a3,0
	mv	a2,s3
	mv	a1,s2
	call	update
.LVL38:
	.loc 1 149 2
	.loc 1 151 9 is_stmt 0
	li	a0,1
	.loc 1 149 18
	sw	zero,304(s1)
	.loc 1 151 2 is_stmt 1
.LVL39:
.L30:
	.loc 1 152 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL40:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL41:
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL42:
.L32:
	.loc 1 139 10
	li	a0,0
.LVL43:
	.loc 1 152 1
	ret
	.cfi_endproc
.LFE3:
	.size	tc_hmac_prng_init, .-tc_hmac_prng_init
	.section	.text.tc_hmac_prng_reseed,"ax",@progbits
	.align	1
	.globl	tc_hmac_prng_reseed
	.type	tc_hmac_prng_reseed, @function
tc_hmac_prng_reseed:
.LFB4:
	.loc 1 159 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 162 2
	.loc 1 162 5 is_stmt 0
	beq	a0,zero,.L42
	.loc 1 166 10 discriminator 1
	li	a5,0
	.loc 1 162 31 discriminator 1
	beq	a1,zero,.L48
	.loc 1 164 25
	li	t3,31
	bleu	a2,t3,.L48
	.loc 1 159 1
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
	mv	s1,a0
	.loc 1 169 2 is_stmt 1
	.loc 1 169 5 is_stmt 0
	beq	a3,zero,.L40
	.loc 1 174 3 is_stmt 1
	.loc 1 174 6 is_stmt 0
	beq	a4,zero,.L38
.LVL45:
.L51:
	.loc 1 183 3
	call	update
.LVL46:
	.loc 1 187 2 is_stmt 1
	.loc 1 187 18 is_stmt 0
	li	a5,-1
	sw	a5,304(s1)
	.loc 1 189 2 is_stmt 1
	.loc 1 189 9 is_stmt 0
	li	a5,1
.L38:
	.loc 1 190 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL47:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL48:
.L40:
	.cfi_restore_state
	.loc 1 183 3 is_stmt 1
	li	a4,0
.LVL49:
	j	.L51
.LVL50:
.L42:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.loc 1 166 10 is_stmt 0
	li	a5,0
.L48:
	.loc 1 190 1
	mv	a0,a5
.LVL51:
	ret
	.cfi_endproc
.LFE4:
	.size	tc_hmac_prng_reseed, .-tc_hmac_prng_reseed
	.section	.text.tc_hmac_prng_generate,"ax",@progbits
	.align	1
	.globl	tc_hmac_prng_generate
	.type	tc_hmac_prng_generate, @function
tc_hmac_prng_generate:
.LFB5:
	.loc 1 193 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 194 2
	.loc 1 197 2
	.loc 1 197 5 is_stmt 0
	beq	a0,zero,.L57
	.loc 1 193 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	s3,a0
	mv	s1,a2
	.loc 1 201 10 discriminator 1
	li	a0,0
.LVL53:
	.loc 1 197 27 discriminator 1
	beq	a2,zero,.L52
	.loc 1 198 31
	addi	a5,a1,-1
	li	a4,524288
	mv	s2,a1
	bgeu	a5,a4,.L52
	.loc 1 202 9 is_stmt 1
	.loc 1 202 17 is_stmt 0
	lw	a5,304(a2)
	.loc 1 203 10
	li	a0,-1
	.loc 1 202 12
	beq	a5,zero,.L52
	.loc 1 206 2 is_stmt 1
	.loc 1 206 17 is_stmt 0
	addi	a5,a5,-1
	sw	a5,304(a2)
	.loc 1 208 2 is_stmt 1
	.loc 1 208 8
	.loc 1 210 33 is_stmt 0
	addi	s6,a2,240
	.loc 1 214 38
	addi	s5,a2,272
.LVL54:
.L56:
	.loc 1 210 3 is_stmt 1
	li	a2,32
	mv	a1,s6
	mv	a0,s1
	call	tc_hmac_set_key
.LVL55:
	.loc 1 213 3
	.loc 1 213 9 is_stmt 0
	mv	a0,s1
	call	tc_hmac_init
.LVL56:
	.loc 1 214 3 is_stmt 1
	.loc 1 214 9 is_stmt 0
	li	a2,32
	mv	a1,s5
	mv	a0,s1
	call	tc_hmac_update
.LVL57:
	.loc 1 215 3 is_stmt 1
	.loc 1 215 9 is_stmt 0
	mv	a2,s1
	li	a1,32
	mv	a0,s5
	call	tc_hmac_final
.LVL58:
	.loc 1 217 3 is_stmt 1
	.loc 1 217 13 is_stmt 0
	li	a5,32
	mv	s4,s2
	bleu	s2,a5,.L54
	li	s4,32
.L54:
.LVL59:
	.loc 1 219 3 is_stmt 1
	.loc 1 219 9 is_stmt 0
	mv	a0,s3
	mv	a3,s4
	mv	a2,s5
	mv	a1,s4
	call	_copy
.LVL60:
	.loc 1 221 3 is_stmt 1
	.loc 1 223 20 is_stmt 0
	li	a5,32
	.loc 1 221 7
	add	s3,s3,s4
.LVL61:
	.loc 1 222 3 is_stmt 1
	.loc 1 223 20 is_stmt 0
	bltu	s2,a5,.L62
	.loc 1 222 10
	addi	s2,s2,-32
.LVL62:
	.loc 1 208 8 is_stmt 1
	bne	s2,zero,.L56
.L62:
	.loc 1 227 2
	mv	a0,s1
	li	a4,0
	li	a3,0
	li	a2,0
	li	a1,0
	call	update
.LVL63:
	.loc 1 229 2
	.loc 1 229 9 is_stmt 0
	li	a0,1
.LVL64:
.L52:
	.loc 1 230 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL65:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL66:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL67:
.L57:
	.loc 1 201 10
	li	a0,0
.LVL68:
	.loc 1 230 1
	ret
	.cfi_endproc
.LFE5:
	.size	tc_hmac_prng_generate, .-tc_hmac_prng_generate
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/sha256.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/hmac.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/hmac_prng.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x797
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
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
	.byte	0x5
	.4byte	0x38
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
	.4byte	0x71
	.byte	0x5
	.4byte	0x60
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
	.4byte	0x92
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
	.4byte	0xda
	.byte	0x7
	.string	"iv"
	.byte	0x4
	.byte	0x48
	.byte	0xf
	.4byte	0xda
	.byte	0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0x49
	.byte	0xb
	.4byte	0x86
	.byte	0x20
	.byte	0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4a
	.byte	0xa
	.4byte	0xea
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
	.4byte	0xea
	.byte	0xa
	.4byte	0x38
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x60
	.4byte	0xfa
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
	.4byte	0x122
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4a
	.byte	0x20
	.4byte	0x99
	.byte	0
	.byte	0x7
	.string	"key"
	.byte	0x5
	.byte	0x4c
	.byte	0xa
	.4byte	0x122
	.byte	0x70
	.byte	0
	.byte	0x9
	.4byte	0x60
	.4byte	0x132
	.byte	0xa
	.4byte	0x38
	.byte	0x7f
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.2byte	0x138
	.byte	0x6
	.byte	0x50
	.byte	0x8
	.4byte	0x173
	.byte	0x7
	.string	"h"
	.byte	0x6
	.byte	0x52
	.byte	0x1e
	.4byte	0xfa
	.byte	0
	.byte	0x7
	.string	"key"
	.byte	0x6
	.byte	0x54
	.byte	0xa
	.4byte	0x173
	.byte	0xf0
	.byte	0xc
	.string	"v"
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x173
	.2byte	0x110
	.byte	0xd
	.4byte	.LASF19
	.byte	0x6
	.byte	0x58
	.byte	0xf
	.4byte	0x38
	.2byte	0x130
	.byte	0
	.byte	0x9
	.4byte	0x60
	.4byte	0x183
	.byte	0xa
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x5b
	.byte	0x25
	.4byte	0x18f
	.byte	0xe
	.byte	0x4
	.4byte	0x132
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2a
	.byte	0x1b
	.4byte	0x3f
	.byte	0x20
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.4byte	0x3f
	.4byte	0xffffffff
	.byte	0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x36
	.byte	0x1b
	.4byte	0x3f
	.4byte	0xffffffff
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3c
	.byte	0x1b
	.4byte	0x3f
	.4byte	0xffffffff
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x43
	.byte	0x1b
	.4byte	0x3f
	.4byte	0xffffffff
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x49
	.byte	0x1b
	.4byte	0x3f
	.4byte	0x80000
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc0
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x312
	.byte	0x12
	.string	"out"
	.byte	0x1
	.byte	0xc0
	.byte	0x24
	.4byte	0x312
	.4byte	.LLST13
	.byte	0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc0
	.byte	0x36
	.4byte	0x38
	.4byte	.LLST14
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc0
	.byte	0x4b
	.4byte	0x183
	.4byte	.LLST15
	.byte	0x14
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc2
	.byte	0xf
	.4byte	0x38
	.4byte	.LLST16
	.byte	0x15
	.4byte	.LVL55
	.4byte	0x752
	.4byte	0x273
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL56
	.4byte	0x75e
	.4byte	0x287
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL57
	.4byte	0x76a
	.4byte	0x2a7
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL58
	.4byte	0x776
	.4byte	0x2c7
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL60
	.4byte	0x782
	.4byte	0x2ed
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL63
	.4byte	0x443
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x60
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x38c
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9a
	.byte	0x26
	.4byte	0x183
	.4byte	.LLST8
	.byte	0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9b
	.byte	0x13
	.4byte	0x38c
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	0x38
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9d
	.byte	0x13
	.4byte	0x38c
	.4byte	.LLST11
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x9e
	.byte	0x11
	.4byte	0x38
	.4byte	.LLST12
	.byte	0x18
	.4byte	.LVL46
	.4byte	0x443
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x6c
	.byte	0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x82
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x443
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x82
	.byte	0x24
	.4byte	0x183
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x83
	.byte	0x18
	.4byte	0x38c
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0x84
	.byte	0x16
	.4byte	0x38
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LVL36
	.4byte	0x78e
	.4byte	0x3fc
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0xf0,0x1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL37
	.4byte	0x78e
	.4byte	0x41c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0x90,0x2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x17
	.4byte	.LVL38
	.4byte	0x443
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4e
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x752
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4e
	.byte	0x21
	.4byte	0x183
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4e
	.byte	0x36
	.4byte	0x38c
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4e
	.byte	0x49
	.4byte	0x38
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4e
	.byte	0x61
	.4byte	0x38c
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4e
	.byte	0x7f
	.4byte	0x38
	.4byte	.LLST4
	.byte	0x1a
	.4byte	.LASF44
	.byte	0x1
	.byte	0x50
	.byte	0x10
	.4byte	0x6c
	.byte	0x2
	.byte	0x91
	.byte	0x4e
	.byte	0x1a
	.4byte	.LASF45
	.byte	0x1
	.byte	0x51
	.byte	0x10
	.4byte	0x6c
	.byte	0x2
	.byte	0x91
	.byte	0x4f
	.byte	0x15
	.4byte	.LVL3
	.4byte	0x752
	.4byte	0x4e7
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL4
	.4byte	0x75e
	.4byte	0x4fb
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x76a
	.4byte	0x51b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL6
	.4byte	0x76a
	.4byte	0x53a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4e
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL7
	.4byte	0x76a
	.4byte	0x55a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL8
	.4byte	0x76a
	.4byte	0x57a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL9
	.4byte	0x776
	.4byte	0x59a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL10
	.4byte	0x752
	.4byte	0x5ba
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL11
	.4byte	0x75e
	.4byte	0x5ce
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL12
	.4byte	0x76a
	.4byte	0x5ee
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL13
	.4byte	0x776
	.4byte	0x60e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL14
	.4byte	0x752
	.4byte	0x62e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL15
	.4byte	0x75e
	.4byte	0x642
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL16
	.4byte	0x76a
	.4byte	0x662
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL17
	.4byte	0x76a
	.4byte	0x681
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4f
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL18
	.4byte	0x76a
	.4byte	0x6a1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL19
	.4byte	0x76a
	.4byte	0x6c1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL20
	.4byte	0x776
	.4byte	0x6e1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL21
	.4byte	0x752
	.4byte	0x701
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL22
	.4byte	0x75e
	.4byte	0x715
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL23
	.4byte	0x76a
	.4byte	0x735
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x17
	.4byte	.LVL24
	.4byte	0x776
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x5c
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x66
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x72
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0x85
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0x3d
	.byte	0xe
	.byte	0x1b
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x6
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL67
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-1
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL46-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0x82
	.byte	0xf0,0x7d
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0x83
	.byte	0x90,0x7e
	.byte	0x9f
	.4byte	.LVL27
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
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL30
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
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL31
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
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL28
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3-1
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL29
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
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
.LASF36:
	.string	"additionallen"
.LASF52:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF29:
	.string	"prng"
.LASF18:
	.string	"tc_hmac_prng_struct"
.LASF41:
	.string	"datalen"
.LASF12:
	.string	"bits_hashed"
.LASF54:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF24:
	.string	"MAX_PLEN"
.LASF27:
	.string	"MAX_OUT"
.LASF13:
	.string	"leftover"
.LASF10:
	.string	"uint64_t"
.LASF55:
	.string	"update"
.LASF22:
	.string	"MIN_SLEN"
.LASF40:
	.string	"data"
.LASF30:
	.string	"bufferlen"
.LASF9:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF5:
	.string	"size_t"
.LASF19:
	.string	"countdown"
.LASF45:
	.string	"separator1"
.LASF17:
	.string	"hash_state"
.LASF7:
	.string	"unsigned char"
.LASF42:
	.string	"additional_data"
.LASF2:
	.string	"short int"
.LASF37:
	.string	"tc_hmac_prng_init"
.LASF48:
	.string	"tc_hmac_update"
.LASF44:
	.string	"separator0"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"outlen"
.LASF51:
	.string	"_set"
.LASF11:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF20:
	.string	"TCHmacPrng_t"
.LASF26:
	.string	"MAX_GENS"
.LASF43:
	.string	"additional_datalen"
.LASF34:
	.string	"seedlen"
.LASF31:
	.string	"tc_hmac_prng_generate"
.LASF14:
	.string	"leftover_offset"
.LASF32:
	.string	"tc_hmac_prng_reseed"
.LASF47:
	.string	"tc_hmac_init"
.LASF4:
	.string	"long long int"
.LASF21:
	.string	"char"
.LASF46:
	.string	"tc_hmac_set_key"
.LASF23:
	.string	"MAX_SLEN"
.LASF50:
	.string	"_copy"
.LASF53:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/hmac_prng.c"
.LASF49:
	.string	"tc_hmac_final"
.LASF39:
	.string	"plen"
.LASF33:
	.string	"seed"
.LASF35:
	.string	"additional_input"
.LASF3:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF25:
	.string	"MAX_ALEN"
.LASF16:
	.string	"tc_hmac_state_struct"
.LASF38:
	.string	"personalization"
.LASF15:
	.string	"tc_sha256_state_struct"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
