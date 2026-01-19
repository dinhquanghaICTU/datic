	.file	"cmac_mode.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.gf_double,"ax",@progbits
	.align	1
	.globl	gf_double
	.type	gf_double, @function
gf_double:
.LFB2:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/cmac_mode.c"
	.loc 1 79 1
	.cfi_startproc
.LVL0:
	.loc 1 82 2
	.loc 1 79 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 85 10
	lb	a5,0(a1)
	.loc 1 82 11
	addi	a4,a1,15
.LVL1:
	.loc 1 85 2 is_stmt 1
	.loc 1 87 6 is_stmt 0
	addi	a0,a0,15
.LVL2:
	.loc 1 85 10
	srai	a5,a5,31
	andi	a5,a5,135
.LVL3:
	.loc 1 87 2 is_stmt 1
.L4:
	.loc 1 88 2
	.loc 1 89 3
	.loc 1 89 13 is_stmt 0
	lbu	a3,0(a4)
	.loc 1 89 7
	addi	a0,a0,-1
.LVL4:
	.loc 1 89 16
	slli	a3,a3,1
	.loc 1 89 22
	xor	a5,a3,a5
.LVL5:
	.loc 1 89 10
	sb	a5,1(a0)
	.loc 1 90 3 is_stmt 1
	.loc 1 90 6 is_stmt 0
	beq	a4,a1,.L1
	.loc 1 93 3 is_stmt 1
	.loc 1 93 9 is_stmt 0
	lbu	a5,0(a4)
	.loc 1 93 13
	addi	a4,a4,-1
.LVL6:
	.loc 1 93 9
	srli	a5,a5,7
.LVL7:
	.loc 1 88 8 is_stmt 1
	.loc 1 89 10 is_stmt 0
	j	.L4
.LVL8:
.L1:
	.loc 1 95 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	gf_double, .-gf_double
	.section	.text.tc_cmac_erase,"ax",@progbits
	.align	1
	.globl	tc_cmac_erase
	.type	tc_cmac_erase, @function
tc_cmac_erase:
.LFB4:
	.loc 1 126 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 127 2
	.loc 1 127 5 is_stmt 0
	beq	a0,zero,.L9
.LBB4:
.LBB5:
	.loc 1 132 2 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 126 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB8:
.LBB6:
	.loc 1 132 2
	li	a2,88
	li	a1,0
	call	_set
.LVL10:
	.loc 1 134 2 is_stmt 1
.LBE6:
.LBE8:
	.loc 1 135 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
.LBB9:
.LBB7:
	.loc 1 132 2
	li	a0,1
.LBE7:
.LBE9:
	.loc 1 135 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L9:
	.loc 1 128 10
	li	a0,0
.LVL12:
	.loc 1 135 1
	ret
	.cfi_endproc
.LFE4:
	.size	tc_cmac_erase, .-tc_cmac_erase
	.section	.text.tc_cmac_init,"ax",@progbits
	.align	1
	.globl	tc_cmac_init
	.type	tc_cmac_init, @function
tc_cmac_init:
.LFB5:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 140 2
	.loc 1 140 5 is_stmt 0
	beq	a0,zero,.L16
	.loc 1 138 1
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
.LBB12:
.LBB13:
	.loc 1 145 2
	li	a2,16
	li	a1,0
	mv	s1,a0
.LVL14:
	.loc 1 145 2 is_stmt 1
	call	_set
.LVL15:
	.loc 1 148 2
	addi	a0,s1,48
	li	a2,16
	li	a1,0
	call	_set
.LVL16:
	.loc 1 149 2
	.loc 1 152 15 is_stmt 0
	li	a4,0
	li	a5,65536
	.loc 1 149 21
	sw	zero,68(s1)
	.loc 1 152 2 is_stmt 1
	.loc 1 152 15 is_stmt 0
	sw	a4,80(s1)
	sw	a5,84(s1)
	.loc 1 154 2 is_stmt 1
.LVL17:
.LBE13:
.LBE12:
	.loc 1 155 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL18:
.LBB15:
.LBB14:
	.loc 1 152 15
	li	a0,1
.LBE14:
.LBE15:
	.loc 1 155 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L16:
	.loc 1 141 10
	li	a0,0
.LVL20:
	.loc 1 155 1
	ret
	.cfi_endproc
.LFE5:
	.size	tc_cmac_init, .-tc_cmac_init
	.section	.text.tc_cmac_setup,"ax",@progbits
	.align	1
	.globl	tc_cmac_setup
	.type	tc_cmac_setup, @function
tc_cmac_setup:
.LFB3:
	.loc 1 98 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 101 2
	.loc 1 101 5 is_stmt 0
	beq	a0,zero,.L23
	.loc 1 98 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	s3,a1
	.loc 1 103 10 discriminator 1
	li	a5,0
	.loc 1 101 29 discriminator 1
	beq	a1,zero,.L21
	mv	s2,a2
	.loc 1 107 2 is_stmt 1
	li	a1,0
.LVL22:
	li	a2,88
.LVL23:
	mv	s1,a0
	call	_set
.LVL24:
	.loc 1 108 2
	.loc 1 111 2 is_stmt 0
	mv	a1,s3
	.loc 1 108 11
	sw	s2,72(s1)
	.loc 1 111 2 is_stmt 1
	mv	a0,s2
	call	tc_aes128_set_encrypt_key
.LVL25:
	.loc 1 114 2
	li	a2,16
	li	a1,0
	mv	a0,s1
	call	_set
.LVL26:
	.loc 1 115 2
	lw	a2,72(s1)
	mv	a1,s1
	mv	a0,s1
	call	tc_aes_encrypt
.LVL27:
	.loc 1 116 2
	.loc 1 116 14 is_stmt 0
	addi	s2,s1,16
.LVL28:
	.loc 1 116 2
	mv	a1,s1
	mv	a0,s2
	call	gf_double
.LVL29:
	.loc 1 117 2 is_stmt 1
	mv	a1,s2
	addi	a0,s1,32
	call	gf_double
.LVL30:
	.loc 1 120 2
	mv	a0,s1
	call	tc_cmac_init
.LVL31:
	.loc 1 122 2
	.loc 1 122 9 is_stmt 0
	li	a5,1
.LVL32:
.L21:
	.loc 1 123 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL33:
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L23:
	.loc 1 103 10
	li	a5,0
	.loc 1 123 1
	mv	a0,a5
.LVL35:
	ret
	.cfi_endproc
.LFE3:
	.size	tc_cmac_setup, .-tc_cmac_setup
	.section	.text.tc_cmac_update,"ax",@progbits
	.align	1
	.globl	tc_cmac_update
	.type	tc_cmac_update, @function
tc_cmac_update:
.LFB6:
	.loc 1 158 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 159 2
	.loc 1 162 2
	.loc 1 162 5 is_stmt 0
	beq	a0,zero,.L39
	.loc 1 158 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	s2,a2
	.loc 1 165 2 is_stmt 1
	.loc 1 165 5 is_stmt 0
	bne	a2,zero,.L31
.LVL37:
.L55:
.LBB16:
	.loc 1 186 4 is_stmt 1
	.loc 1 186 11 is_stmt 0
	li	a0,1
.L29:
.LBE16:
	.loc 1 220 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL38:
.L31:
	.cfi_restore_state
	mv	s1,a0
	mv	s3,a1
	.loc 1 168 2 is_stmt 1
	.loc 1 163 10 is_stmt 0
	li	a0,0
.LVL39:
	.loc 1 168 5
	beq	a1,zero,.L29
	.loc 1 172 2 is_stmt 1
	.loc 1 172 7 is_stmt 0
	lw	a5,80(s1)
	lw	a4,84(s1)
	.loc 1 172 5
	or	a3,a5,a4
	beq	a3,zero,.L29
	.loc 1 176 2 is_stmt 1
	.loc 1 176 14 is_stmt 0
	addi	a3,a5,-1
	.loc 1 178 7
	lw	s5,68(s1)
	.loc 1 176 14
	seqz	a5,a5
	sub	a5,a4,a5
	sw	a3,80(s1)
	sw	a5,84(s1)
	.loc 1 178 2 is_stmt 1
	.loc 1 178 5 is_stmt 0
	beq	s5,zero,.L33
.LBB17:
	.loc 1 180 3 is_stmt 1
	.loc 1 180 10 is_stmt 0
	li	s4,16
	.loc 1 184 4
	addi	a0,s5,48
	.loc 1 180 10
	sub	s4,s4,s5
.LVL40:
	.loc 1 182 3 is_stmt 1
	.loc 1 184 4 is_stmt 0
	add	a0,s1,a0
	.loc 1 182 6
	bgeu	a2,s4,.L34
	.loc 1 184 4 is_stmt 1
	mv	a3,a2
	mv	a2,a1
.LVL41:
	mv	a1,s2
.LVL42:
	call	_copy
.LVL43:
	.loc 1 185 4
	.loc 1 185 23 is_stmt 0
	lw	a3,68(s1)
	add	s2,a3,s2
.LVL44:
.L56:
	sw	s2,68(s1)
	j	.L55
.LVL45:
.L34:
	.loc 1 189 3 is_stmt 1
	mv	a3,s4
	mv	a2,a1
.LVL46:
	mv	a1,s4
.LVL47:
	call	_copy
.LVL48:
	.loc 1 193 3
	addi	s2,s2,-16
.LVL49:
	.loc 1 193 15 is_stmt 0
	add	s2,s2,s5
.LVL50:
	.loc 1 194 3 is_stmt 1
	.loc 1 194 8 is_stmt 0
	add	s3,s3,s4
.LVL51:
	.loc 1 195 3 is_stmt 1
	.loc 1 195 22 is_stmt 0
	sw	zero,68(s1)
	.loc 1 197 3 is_stmt 1
.LVL52:
	.loc 1 197 15
	mv	a5,s1
	addi	a3,s1,16
.LVL53:
.L35:
	.loc 1 198 4 discriminator 3
	.loc 1 198 13 is_stmt 0 discriminator 3
	lbu	a4,0(a5)
	lbu	a2,48(a5)
	.loc 1 197 3 discriminator 3
	addi	a5,a5,1
.LVL54:
	.loc 1 198 13 discriminator 3
	xor	a4,a4,a2
	sb	a4,-1(a5)
	.loc 1 197 30 is_stmt 1 discriminator 3
.LVL55:
	.loc 1 197 15 discriminator 3
	.loc 1 197 3 is_stmt 0 discriminator 3
	bne	a3,a5,.L35
	.loc 1 200 3 is_stmt 1
	lw	a2,72(s1)
	mv	a1,s1
	mv	a0,s1
	call	tc_aes_encrypt
.LVL56:
.L33:
	add	s3,s3,s2
.LBE17:
	.loc 1 204 8 is_stmt 0
	li	s4,16
.L36:
	sub	a2,s3,s2
.LVL57:
	.loc 1 204 8 is_stmt 1
	bgtu	s2,s4,.L42
	.loc 1 213 2
	.loc 1 213 5 is_stmt 0
	beq	s2,zero,.L55
	.loc 1 215 3 is_stmt 1
	mv	a3,s2
	mv	a1,s2
	addi	a0,s1,48
	call	_copy
.LVL58:
	.loc 1 216 3
	j	.L56
.LVL59:
.L42:
	.loc 1 205 10 is_stmt 0
	li	a5,0
.L37:
.LVL60:
	.loc 1 206 4 is_stmt 1 discriminator 3
	add	a3,s1,a5
	.loc 1 206 20 is_stmt 0 discriminator 3
	add	a4,a2,a5
	.loc 1 206 13 discriminator 3
	lbu	a4,0(a4)
	lbu	a1,0(a3)
	.loc 1 205 30 discriminator 3
	addi	a5,a5,1
.LVL61:
	.loc 1 206 13 discriminator 3
	xor	a4,a4,a1
	sb	a4,0(a3)
	.loc 1 205 30 is_stmt 1 discriminator 3
.LVL62:
	.loc 1 205 15 discriminator 3
	.loc 1 205 3 is_stmt 0 discriminator 3
	bne	a5,s4,.L37
	.loc 1 208 3 is_stmt 1
	lw	a2,72(s1)
.LVL63:
	mv	a1,s1
	mv	a0,s1
	call	tc_aes_encrypt
.LVL64:
	.loc 1 209 3
	.loc 1 210 3
	.loc 1 210 15 is_stmt 0
	addi	s2,s2,-16
.LVL65:
	j	.L36
.LVL66:
.L39:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.loc 1 163 10
	li	a0,0
.LVL67:
	.loc 1 220 1
	ret
	.cfi_endproc
.LFE6:
	.size	tc_cmac_update, .-tc_cmac_update
	.section	.text.tc_cmac_final,"ax",@progbits
	.align	1
	.globl	tc_cmac_final
	.type	tc_cmac_final, @function
tc_cmac_final:
.LFB7:
	.loc 1 223 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 224 2
	.loc 1 225 2
	.loc 1 228 2
	.loc 1 228 5 is_stmt 0
	beq	a0,zero,.L62
	.loc 1 223 1 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s2,a0
	mv	s1,a1
	.loc 1 230 10 discriminator 1
	li	a0,0
.LVL69:
	.loc 1 228 27 discriminator 1
	beq	a1,zero,.L57
	.loc 1 233 2 is_stmt 1
	.loc 1 233 7 is_stmt 0
	lw	a5,68(a1)
	.loc 1 233 5
	li	a2,16
	bne	a5,a2,.L59
	.loc 1 235 3 is_stmt 1
	.loc 1 235 5 is_stmt 0
	addi	a2,a1,16
.LVL70:
.L60:
	.loc 1 244 2 is_stmt 1
	.loc 1 244 14
	mv	a5,s1
	.loc 1 244 9 is_stmt 0
	li	a3,0
	.loc 1 244 2
	li	a1,16
.LVL71:
.L61:
	.loc 1 245 3 is_stmt 1 discriminator 3
	.loc 1 245 12 is_stmt 0 discriminator 3
	lbu	a4,0(a5)
	lbu	a0,48(a5)
	.loc 1 244 2 discriminator 3
	addi	a5,a5,1
	.loc 1 245 12 discriminator 3
	xor	a4,a4,a0
	.loc 1 245 33 discriminator 3
	add	a0,a2,a3
	.loc 1 245 12 discriminator 3
	lbu	a0,0(a0)
	.loc 1 244 29 discriminator 3
	addi	a3,a3,1
.LVL72:
	.loc 1 245 12 discriminator 3
	xor	a4,a4,a0
	sb	a4,-1(a5)
	.loc 1 244 29 is_stmt 1 discriminator 3
.LVL73:
	.loc 1 244 14 discriminator 3
	.loc 1 244 2 is_stmt 0 discriminator 3
	bne	a3,a1,.L61
	.loc 1 248 2 is_stmt 1
	lw	a2,72(s1)
.LVL74:
	mv	a1,s1
	mv	a0,s2
	call	tc_aes_encrypt
.LVL75:
	.loc 1 251 2
	mv	a0,s1
	call	tc_cmac_erase
.LVL76:
	.loc 1 253 2
	.loc 1 253 9 is_stmt 0
	li	a0,1
.L57:
	.loc 1 254 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL77:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL78:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL79:
.L59:
	.cfi_restore_state
.LBB18:
	.loc 1 238 3 is_stmt 1
	.loc 1 240 3
	.loc 1 240 8 is_stmt 0
	addi	a0,a5,48
	.loc 1 240 3
	sub	a2,a2,a5
	li	a1,0
	add	a0,s1,a0
	call	_set
.LVL80:
	.loc 1 241 3 is_stmt 1
	.loc 1 241 35 is_stmt 0
	lw	a5,68(s1)
	li	a4,-128
	.loc 1 242 5
	addi	a2,s1,32
	.loc 1 241 35
	add	a5,s1,a5
	sb	a4,48(a5)
	.loc 1 242 3 is_stmt 1
.LVL81:
	j	.L60
.LVL82:
.L62:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
.LBE18:
	.loc 1 230 10 is_stmt 0
	li	a0,0
.LVL83:
	.loc 1 254 1
	ret
	.cfi_endproc
.LFE7:
	.size	tc_cmac_final, .-tc_cmac_final
	.globl	gf_wrap
	.section	.srodata.gf_wrap,"a"
	.type	gf_wrap, @object
	.size	gf_wrap, 1
gf_wrap:
	.byte	-121
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/cmac_mode.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5d7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ldebug_ranges0+0x50
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
	.4byte	.LASF7
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
	.byte	0x4
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x7d
	.byte	0x4
	.4byte	0x6c
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.4byte	.LASF13
	.byte	0xb0
	.byte	0x3
	.byte	0x40
	.byte	0x10
	.4byte	0xad
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x41
	.byte	0xf
	.4byte	0xad
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x8b
	.4byte	0xbd
	.byte	0x9
	.4byte	0x8b
	.byte	0x2b
	.byte	0
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x42
	.byte	0x4
	.4byte	0xc9
	.byte	0xa
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x8b
	.byte	0x6
	.4byte	.LASF14
	.byte	0x58
	.byte	0x5
	.byte	0x70
	.byte	0x10
	.4byte	0x14e
	.byte	0xb
	.string	"iv"
	.byte	0x5
	.byte	0x72
	.byte	0xa
	.4byte	0x14e
	.byte	0
	.byte	0xb
	.string	"K1"
	.byte	0x5
	.byte	0x74
	.byte	0xa
	.4byte	0x14e
	.byte	0x10
	.byte	0xb
	.string	"K2"
	.byte	0x5
	.byte	0x76
	.byte	0xa
	.4byte	0x14e
	.byte	0x20
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x78
	.byte	0xa
	.4byte	0x14e
	.byte	0x30
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x7a
	.byte	0xf
	.4byte	0x8b
	.byte	0x40
	.byte	0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x7c
	.byte	0xf
	.4byte	0x8b
	.byte	0x44
	.byte	0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7e
	.byte	0x12
	.4byte	0xbd
	.byte	0x48
	.byte	0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x80
	.byte	0xb
	.4byte	0x6c
	.byte	0x50
	.byte	0
	.byte	0x8
	.4byte	0x41
	.4byte	0x15e
	.byte	0x9
	.4byte	0x8b
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x81
	.byte	0x4
	.4byte	0x16a
	.byte	0xa
	.byte	0x4
	.4byte	0xdb
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x27
	.byte	0x17
	.4byte	0x78
	.8byte	0x1000000000000
	.byte	0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0x43
	.byte	0x15
	.4byte	0x59
	.byte	0x5
	.byte	0x3
	.4byte	gf_wrap
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0xde
	.byte	0x5
	.4byte	0x84
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x249
	.byte	0xf
	.string	"tag"
	.byte	0x1
	.byte	0xde
	.byte	0x1c
	.4byte	0x249
	.4byte	.LLST13
	.byte	0xf
	.string	"s"
	.byte	0x1
	.byte	0xde
	.byte	0x2f
	.4byte	0x15e
	.4byte	.LLST14
	.byte	0x10
	.string	"k"
	.byte	0x1
	.byte	0xe0
	.byte	0xb
	.4byte	0x249
	.4byte	.LLST15
	.byte	0x10
	.string	"i"
	.byte	0x1
	.byte	0xe1
	.byte	0xf
	.4byte	0x8b
	.4byte	.LLST16
	.byte	0x11
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x21e
	.byte	0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0xee
	.byte	0xa
	.4byte	0xcf
	.4byte	.LLST17
	.byte	0x13
	.4byte	.LVL80
	.4byte	0x5aa
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL75
	.4byte	0x5b6
	.4byte	0x238
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL76
	.4byte	0x382
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x41
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9d
	.byte	0x5
	.4byte	0x84
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x360
	.byte	0xf
	.string	"s"
	.byte	0x1
	.byte	0x9d
	.byte	0x22
	.4byte	0x15e
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9d
	.byte	0x34
	.4byte	0x360
	.4byte	.LLST9
	.byte	0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9d
	.byte	0x41
	.4byte	0xcf
	.4byte	.LLST10
	.byte	0x10
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.byte	0xf
	.4byte	0x8b
	.4byte	.LLST11
	.byte	0x17
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x320
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0xb4
	.byte	0xa
	.4byte	0xcf
	.4byte	.LLST12
	.byte	0x15
	.4byte	.LVL43
	.4byte	0x5c2
	.4byte	0x2e9
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL48
	.4byte	0x5c2
	.4byte	0x309
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL56
	.4byte	0x5b6
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL58
	.4byte	0x5c2
	.4byte	0x349
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL64
	.4byte	0x5b6
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x4d
	.byte	0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.4byte	0x84
	.byte	0x1
	.4byte	0x382
	.byte	0x19
	.string	"s"
	.byte	0x1
	.byte	0x89
	.byte	0x20
	.4byte	0x15e
	.byte	0
	.byte	0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7d
	.byte	0x5
	.4byte	0x84
	.byte	0x1
	.4byte	0x39e
	.byte	0x19
	.string	"s"
	.byte	0x1
	.byte	0x7d
	.byte	0x21
	.4byte	0x15e
	.byte	0
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x61
	.byte	0x5
	.4byte	0x84
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x49c
	.byte	0xf
	.string	"s"
	.byte	0x1
	.byte	0x61
	.byte	0x21
	.4byte	0x15e
	.4byte	.LLST5
	.byte	0xf
	.string	"key"
	.byte	0x1
	.byte	0x61
	.byte	0x33
	.4byte	0x360
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LASF19
	.byte	0x1
	.byte	0x61
	.byte	0x48
	.4byte	0xbd
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LVL24
	.4byte	0x5aa
	.4byte	0x405
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.byte	0x15
	.4byte	.LVL25
	.4byte	0x5ce
	.4byte	0x41f
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL26
	.4byte	0x5aa
	.4byte	0x43d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x15
	.4byte	.LVL27
	.4byte	0x5b6
	.4byte	0x457
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL29
	.4byte	0x49c
	.4byte	0x471
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL30
	.4byte	0x49c
	.4byte	0x48b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x20
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL31
	.4byte	0x366
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ec
	.byte	0xf
	.string	"out"
	.byte	0x1
	.byte	0x4e
	.byte	0x19
	.4byte	0x249
	.4byte	.LLST0
	.byte	0x1b
	.string	"in"
	.byte	0x1
	.byte	0x4e
	.byte	0x27
	.4byte	0x249
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.string	"x"
	.byte	0x1
	.byte	0x52
	.byte	0xb
	.4byte	0x249
	.byte	0x1
	.byte	0x5e
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x55
	.byte	0xa
	.4byte	0x41
	.4byte	.LLST1
	.byte	0
	.byte	0x1d
	.4byte	0x382
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x53b
	.byte	0x1e
	.4byte	0x393
	.4byte	.LLST2
	.byte	0x1f
	.4byte	0x382
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7d
	.byte	0x5
	.byte	0x20
	.4byte	0x393
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x5aa
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x366
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x5aa
	.byte	0x1e
	.4byte	0x377
	.4byte	.LLST3
	.byte	0x1f
	.4byte	0x366
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.byte	0x1e
	.4byte	0x377
	.4byte	.LLST4
	.byte	0x15
	.4byte	.LVL15
	.4byte	0x5aa
	.4byte	0x58e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL16
	.4byte	0x5aa
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x47
	.byte	0x6
	.byte	0x21
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x3
	.byte	0x5d
	.byte	0x5
	.byte	0x21
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.byte	0xe
	.byte	0x21
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x3
	.byte	0x4f
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
	.byte	0x1c
	.byte	0x7
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x3
	.byte	0x7d
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x5
	.byte	0x40
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL58-1
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x82
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL66
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL45
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x7a
	.byte	0x71
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"tc_cmac_final"
.LASF12:
	.string	"size_t"
.LASF11:
	.string	"TCAesKeySched_t"
.LASF26:
	.string	"tc_cmac_update"
.LASF24:
	.string	"remaining"
.LASF13:
	.string	"tc_aes_key_sched_struct"
.LASF16:
	.string	"leftover"
.LASF8:
	.string	"uint64_t"
.LASF17:
	.string	"keyid"
.LASF33:
	.string	"carry"
.LASF27:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF41:
	.string	"gf_wrap"
.LASF35:
	.string	"tc_aes_encrypt"
.LASF30:
	.string	"tc_cmac_init"
.LASF1:
	.string	"short int"
.LASF34:
	.string	"_set"
.LASF15:
	.string	"words"
.LASF21:
	.string	"TCCmacState_t"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"tc_cmac_struct"
.LASF9:
	.string	"long long unsigned int"
.LASF31:
	.string	"tc_cmac_erase"
.LASF37:
	.string	"tc_aes128_set_encrypt_key"
.LASF23:
	.string	"MAX_CALLS"
.LASF18:
	.string	"leftover_offset"
.LASF7:
	.string	"uint8_t"
.LASF3:
	.string	"long long int"
.LASF22:
	.string	"char"
.LASF42:
	.string	"gf_double"
.LASF36:
	.string	"_copy"
.LASF20:
	.string	"countdown"
.LASF28:
	.string	"data_length"
.LASF2:
	.string	"long int"
.LASF39:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/cmac_mode.c"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"remaining_space"
.LASF38:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF19:
	.string	"sched"
.LASF40:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF32:
	.string	"tc_cmac_setup"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
