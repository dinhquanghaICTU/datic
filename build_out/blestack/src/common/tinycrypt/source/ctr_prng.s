	.file	"ctr_prng.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.tc_ctr_prng_update,"ax",@progbits
	.align	1
	.type	tc_ctr_prng_update, @function
tc_ctr_prng_update:
.LFB3:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ctr_prng.c"
	.loc 1 75 1
	.cfi_startproc
.LVL0:
	.loc 1 76 2
	.loc 1 76 5 is_stmt 0
	beq	a0,zero,.L15
	.loc 1 75 1
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	ra,92(sp)
	sw	s2,80(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	s4,a1
.LBB15:
.LBB16:
.LBB17:
	.loc 1 79 16
	li	s3,0
.LBB18:
	.loc 1 83 17
	li	s7,32
	addi	s9,a0,15
	li	s8,16
	.loc 1 93 10
	addi	s5,a0,16
.LBE18:
	.loc 1 82 9
	li	s6,31
.LVL1:
.L6:
.LBB27:
	.loc 1 83 4 is_stmt 1
	.loc 1 83 17 is_stmt 0
	sub	s2,s7,s3
.LVL2:
	.loc 1 84 4 is_stmt 1
	.loc 1 87 4
.LBB19:
.LBB20:
	.loc 1 55 2
	.loc 1 56 2
.LBB21:
.LBB22:
	.loc 1 57 17
	mv	a4,s9
.LVL3:
.L4:
	.loc 1 58 4
	.loc 1 58 8 is_stmt 0
	lbu	a5,0(a4)
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 58 7
	sb	a5,0(a4)
	bne	a5,zero,.L3
.LVL4:
	.loc 1 57 17 is_stmt 1
	.loc 1 57 3 is_stmt 0
	addi	a5,a4,-1
	bne	s1,a4,.L8
.LVL5:
.L3:
.LBE22:
.LBE21:
.LBE20:
.LBE19:
	.loc 1 90 4 is_stmt 1
	bleu	s2,s8,.L5
	li	s2,16
.LVL6:
.L5:
	.loc 1 93 4
	.loc 1 93 10 is_stmt 0
	mv	a2,s5
	mv	a1,s1
	addi	a0,s0,-96
	call	tc_aes_encrypt
.LVL7:
	.loc 1 96 4 is_stmt 1
	addi	a5,s0,-80
	add	a0,a5,s3
	mv	a2,s2
	addi	a1,s0,-96
	.loc 1 98 8 is_stmt 0
	add	s3,s3,s2
.LVL8:
	.loc 1 96 4
	call	memcpy
.LVL9:
	.loc 1 98 4 is_stmt 1
.LBE27:
	.loc 1 82 9
	bleu	s3,s6,.L6
	addi	a4,s0,-80
.LBB28:
	.loc 1 104 11 is_stmt 0
	li	a5,0
	.loc 1 104 4
	li	a2,32
.L7:
.LVL10:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 28 is_stmt 0
	add	a3,s4,a5
	.loc 1 105 13
	lbu	a1,0(a4)
	lbu	a3,0(a3)
	.loc 1 104 35
	addi	a5,a5,1
.LVL11:
	.loc 1 104 4
	addi	a4,a4,1
	.loc 1 105 13
	xor	a3,a3,a1
	sb	a3,-1(a4)
	.loc 1 104 34 is_stmt 1
.LVL12:
	.loc 1 104 17
	.loc 1 104 4 is_stmt 0
	bne	a5,a2,.L7
.LBE28:
	.loc 1 110 3 is_stmt 1
	.loc 1 110 9 is_stmt 0
	addi	a1,s0,-80
	mv	a0,s5
	call	tc_aes128_set_encrypt_key
.LVL13:
	.loc 1 113 3 is_stmt 1
	addi	a1,s0,-64
	mv	a0,s1
	li	a2,16
	call	memcpy
.LVL14:
.LBE17:
.LBE16:
.LBE15:
	.loc 1 115 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
.LVL15:
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
.LVL16:
	lw	s5,68(sp)
	.cfi_restore 21
.LVL17:
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
.LVL18:
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L8:
	.cfi_restore_state
.LBB32:
.LBB31:
.LBB30:
.LBB29:
.LBB26:
.LBB25:
.LBB24:
.LBB23:
	mv	a4,a5
.LVL20:
	j	.L4
.LVL21:
.L15:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	ret
.LBE23:
.LBE24:
.LBE25:
.LBE26:
.LBE29:
.LBE30:
.LBE31:
.LBE32:
	.cfi_endproc
.LFE3:
	.size	tc_ctr_prng_update, .-tc_ctr_prng_update
	.section	.text.tc_ctr_prng_init,"ax",@progbits
	.align	1
	.globl	tc_ctr_prng_init
	.type	tc_ctr_prng_init, @function
tc_ctr_prng_init:
.LFB4:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 123 2
	.loc 1 124 2
	.loc 1 125 2
	.loc 1 122 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	ra,108(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.loc 1 122 1
	mv	s1,a0
	mv	s3,a1
	mv	s5,a2
	.loc 1 125 10
	li	a1,0
.LVL23:
	li	a2,28
.LVL24:
	addi	a0,s0,-92
.LVL25:
	.loc 1 122 1
	mv	s4,a3
	mv	s2,a4
	.loc 1 125 10
	sw	zero,-96(s0)
	call	memset
.LVL26:
	.loc 1 126 2 is_stmt 1
	.loc 1 127 2
	.loc 1 127 10 is_stmt 0
	sw	zero,-112(s0)
	sw	zero,-108(s0)
	sw	zero,-104(s0)
	sw	zero,-100(s0)
	.loc 1 129 2 is_stmt 1
	.loc 1 129 5 is_stmt 0
	beq	s4,zero,.L19
.LBB33:
	.loc 1 131 3 is_stmt 1
.LVL27:
	.loc 1 132 3
	.loc 1 137 3
	li	a5,32
	mv	a2,s2
	bleu	s2,a5,.L20
	li	a2,32
.L20:
	mv	a1,s4
	addi	a0,s0,-96
	call	memcpy
.LVL28:
.L19:
.LBE33:
	.loc 1 140 2
	.loc 1 123 6 is_stmt 0
	li	a0,0
	.loc 1 140 5
	beq	s1,zero,.L18
	.loc 1 140 17 discriminator 1
	beq	s3,zero,.L18
	.loc 1 140 35 discriminator 2
	li	a5,31
	bleu	s5,a5,.L18
	.loc 1 142 3 is_stmt 1
	li	a2,32
	mv	a1,s3
	addi	a0,s0,-64
	call	memcpy
.LVL29:
	.loc 1 143 3
	.loc 1 143 16
	addi	a4,s0,-64
	.loc 1 143 10 is_stmt 0
	li	a5,0
	.loc 1 143 3
	li	a2,32
.LVL30:
.L22:
	.loc 1 144 4 is_stmt 1 discriminator 3
	.loc 1 144 43 is_stmt 0 discriminator 3
	addi	a3,s0,-96
	add	a3,a3,a5
	.loc 1 144 21 discriminator 3
	lbu	a1,0(a4)
	lbu	a3,0(a3)
	.loc 1 143 43 discriminator 3
	addi	a5,a5,1
.LVL31:
	.loc 1 143 3 discriminator 3
	addi	a4,a4,1
	.loc 1 144 21 discriminator 3
	xor	a3,a3,a1
	sb	a3,-1(a4)
	.loc 1 143 42 is_stmt 1 discriminator 3
.LVL32:
	.loc 1 143 16 discriminator 3
	.loc 1 143 3 is_stmt 0 discriminator 3
	bne	a5,a2,.L22
	.loc 1 148 3 is_stmt 1
	.loc 1 148 9 is_stmt 0
	addi	a1,s0,-112
	addi	a0,s1,16
	call	tc_aes128_set_encrypt_key
.LVL33:
	.loc 1 151 3 is_stmt 1
	li	a2,16
	li	a1,0
	mv	a0,s1
	call	memset
.LVL34:
	.loc 1 154 3
	mv	a0,s1
	addi	a1,s0,-64
	call	tc_ctr_prng_update
.LVL35:
	.loc 1 157 3
	.loc 1 157 20 is_stmt 0
	li	a4,1
	li	a5,0
	sw	a4,192(s1)
	sw	a5,196(s1)
	.loc 1 159 3 is_stmt 1
.LVL36:
	.loc 1 159 10 is_stmt 0
	li	a0,1
.LVL37:
.L18:
	.loc 1 162 1
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
.LVL38:
	lw	s2,96(sp)
	.cfi_restore 18
.LVL39:
	lw	s3,92(sp)
	.cfi_restore 19
.LVL40:
	lw	s4,88(sp)
	.cfi_restore 20
.LVL41:
	lw	s5,84(sp)
	.cfi_restore 21
.LVL42:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	tc_ctr_prng_init, .-tc_ctr_prng_init
	.section	.text.tc_ctr_prng_reseed,"ax",@progbits
	.align	1
	.globl	tc_ctr_prng_reseed
	.type	tc_ctr_prng_reseed, @function
tc_ctr_prng_reseed:
.LFB5:
	.loc 1 169 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 170 2
	.loc 1 171 2
	.loc 1 172 2
	.loc 1 169 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	ra,92(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.loc 1 169 1
	mv	s2,a0
	mv	s4,a1
	mv	s5,a2
	mv	s3,a3
	.loc 1 172 10
	li	a2,28
.LVL44:
	li	a1,0
.LVL45:
	addi	a0,s0,-92
.LVL46:
	.loc 1 169 1
	mv	s1,a4
	.loc 1 172 10
	sw	zero,-96(s0)
	call	memset
.LVL47:
	.loc 1 173 2 is_stmt 1
	.loc 1 175 2
	.loc 1 175 5 is_stmt 0
	beq	s3,zero,.L32
.LBB34:
	.loc 1 177 3 is_stmt 1
.LVL48:
	.loc 1 178 3
	.loc 1 183 3
	li	a5,32
	mv	a2,s1
	bleu	s1,a5,.L33
	li	a2,32
.L33:
	mv	a1,s3
	addi	a0,s0,-96
	call	memcpy
.LVL49:
.L32:
.LBE34:
	.loc 1 186 2
	.loc 1 187 2
	.loc 1 171 6 is_stmt 0
	li	a0,0
	.loc 1 187 5
	beq	s2,zero,.L31
	.loc 1 187 17 discriminator 1
	li	a5,31
	bleu	s5,a5,.L31
	.loc 1 189 3 is_stmt 1
	li	a2,32
	mv	a1,s4
	addi	a0,s0,-64
	call	memcpy
.LVL50:
	.loc 1 190 3
	.loc 1 190 16
	addi	a4,s0,-64
	.loc 1 190 10 is_stmt 0
	li	a5,0
	.loc 1 190 3
	li	a2,32
.LVL51:
.L35:
	.loc 1 191 4 is_stmt 1 discriminator 3
	.loc 1 191 44 is_stmt 0 discriminator 3
	addi	a3,s0,-96
	add	a3,a3,a5
	.loc 1 191 21 discriminator 3
	lbu	a1,0(a4)
	lbu	a3,0(a3)
	.loc 1 190 43 discriminator 3
	addi	a5,a5,1
.LVL52:
	.loc 1 190 3 discriminator 3
	addi	a4,a4,1
	.loc 1 191 21 discriminator 3
	xor	a3,a3,a1
	sb	a3,-1(a4)
	.loc 1 190 42 is_stmt 1 discriminator 3
.LVL53:
	.loc 1 190 16 discriminator 3
	.loc 1 190 3 is_stmt 0 discriminator 3
	bne	a5,a2,.L35
	.loc 1 195 3 is_stmt 1
	mv	a0,s2
	addi	a1,s0,-64
	call	tc_ctr_prng_update
.LVL54:
	.loc 1 198 3
	.loc 1 198 20 is_stmt 0
	li	a4,1
	li	a5,0
	sw	a4,192(s2)
	sw	a5,196(s2)
	.loc 1 200 3 is_stmt 1
.LVL55:
	.loc 1 200 10 is_stmt 0
	li	a0,1
.LVL56:
.L31:
	.loc 1 203 1
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
.LVL57:
	lw	s2,80(sp)
	.cfi_restore 18
.LVL58:
	lw	s3,76(sp)
	.cfi_restore 19
.LVL59:
	lw	s4,72(sp)
	.cfi_restore 20
.LVL60:
	lw	s5,68(sp)
	.cfi_restore 21
.LVL61:
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	tc_ctr_prng_reseed, .-tc_ctr_prng_reseed
	.section	.text.tc_ctr_prng_generate,"ax",@progbits
	.align	1
	.globl	tc_ctr_prng_generate
	.type	tc_ctr_prng_generate, @function
tc_ctr_prng_generate:
.LFB6:
	.loc 1 210 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 212 2
	.loc 1 215 2
	.loc 1 217 2
	.loc 1 219 2
	.loc 1 219 5 is_stmt 0
	beq	a0,zero,.L53
	.loc 1 210 1 discriminator 1
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s4,72(sp)
	sw	ra,92(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	s4,a3
	.loc 1 217 15 discriminator 1
	li	a0,0
.LVL63:
	.loc 1 219 17 discriminator 1
	beq	a3,zero,.L44
	.loc 1 219 31 discriminator 2
	li	a5,65536
	mv	s3,a4
	bgeu	a4,a5,.L44
	.loc 1 221 3 is_stmt 1
	.loc 1 221 6 is_stmt 0
	lw	a4,196(s1)
.LVL64:
	bgtu	a4,a5,.L56
	mv	s5,a1
	mv	s2,a2
	bne	a4,a5,.L58
	lw	a5,192(s1)
	bne	a5,zero,.L56
.L58:
.LBB42:
	.loc 1 224 4 is_stmt 1
	.loc 1 224 12 is_stmt 0
	li	a2,28
.LVL65:
	li	a1,0
.LVL66:
	addi	a0,s0,-76
	sw	zero,-80(s0)
	call	memset
.LVL67:
	.loc 1 225 4 is_stmt 1
	.loc 1 225 7 is_stmt 0
	beq	s5,zero,.L46
.LBB43:
	.loc 1 227 5 is_stmt 1
.LVL68:
	.loc 1 228 5
	.loc 1 231 5
	li	a5,32
	mv	a2,s2
	bleu	s2,a5,.L47
.LVL69:
	li	a2,32
.LVL70:
.L47:
	mv	a1,s5
	addi	a0,s0,-80
	call	memcpy
.LVL71:
	.loc 1 232 5
	addi	a1,s0,-80
	mv	a0,s1
	call	tc_ctr_prng_update
.LVL72:
.L46:
.LBE43:
.LBB44:
.LBB45:
.LBB46:
.LBB47:
.LBB48:
	li	s8,0
	addi	s5,s1,15
.LVL73:
.LBE48:
.LBE47:
.LBE46:
.LBE45:
	.loc 1 247 11 is_stmt 0
	addi	s6,s1,16
	li	s7,16
.LVL74:
.L48:
.LBE44:
	.loc 1 239 10 is_stmt 1
	bltu	s8,s3,.L52
	.loc 1 259 4
	mv	a0,s1
	addi	a1,s0,-80
	call	tc_ctr_prng_update
.LVL75:
	.loc 1 262 4
	.loc 1 262 20 is_stmt 0
	addi	s1,s1,128
.LVL76:
	lw	a5,64(s1)
	lw	a3,68(s1)
	.loc 1 265 11
	li	a0,1
	.loc 1 262 20
	addi	a4,a5,1
	sltu	a5,a4,a5
	add	a5,a5,a3
	sw	a4,64(s1)
	sw	a5,68(s1)
	.loc 1 265 4 is_stmt 1
.LVL77:
.L44:
.LBE42:
	.loc 1 269 2
	.loc 1 270 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
.LVL78:
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL79:
.L52:
	.cfi_restore_state
.LBB58:
.LBB57:
	.loc 1 240 5 is_stmt 1
	.loc 1 240 18 is_stmt 0
	sub	s2,s3,s8
.LVL80:
	.loc 1 241 5 is_stmt 1
	.loc 1 244 5
.LBB55:
.LBB53:
	.loc 1 55 2
	.loc 1 56 2
.LBB51:
.LBB49:
	.loc 1 57 17
	mv	a4,s5
.LVL81:
.L50:
	.loc 1 58 4
	.loc 1 58 8 is_stmt 0
	lbu	a5,0(a4)
	addi	a5,a5,1
	andi	a5,a5,0xff
	.loc 1 58 7
	sb	a5,0(a4)
	bne	a5,zero,.L49
.LVL82:
	.loc 1 57 17 is_stmt 1
	.loc 1 57 3 is_stmt 0
	addi	a5,a4,-1
	bne	s1,a4,.L57
.LVL83:
.L49:
.LBE49:
.LBE51:
.LBE53:
.LBE55:
	.loc 1 247 5 is_stmt 1
	.loc 1 247 11 is_stmt 0
	mv	a2,s6
	mv	a1,s1
	addi	a0,s0,-96
	call	tc_aes_encrypt
.LVL84:
	.loc 1 250 5 is_stmt 1
	bleu	s2,s7,.L51
	li	s2,16
.LVL85:
.L51:
	.loc 1 253 5
	add	a0,s4,s8
	mv	a2,s2
	addi	a1,s0,-96
	call	memcpy
.LVL86:
	.loc 1 255 5
	.loc 1 255 9 is_stmt 0
	add	s8,s8,s2
.LVL87:
	j	.L48
.LVL88:
.L57:
.LBB56:
.LBB54:
.LBB52:
.LBB50:
	mv	a4,a5
.LVL89:
	j	.L50
.LVL90:
.L53:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
.LBE50:
.LBE52:
.LBE54:
.LBE56:
.LBE57:
.LBE58:
	.loc 1 217 15
	li	a0,0
.LVL91:
	.loc 1 269 2 is_stmt 1
	.loc 1 270 1 is_stmt 0
	ret
.LVL92:
.L56:
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
	.loc 1 222 11
	li	a0,-1
	j	.L44
	.cfi_endproc
.LFE6:
	.size	tc_ctr_prng_generate, .-tc_ctr_prng_generate
	.section	.text.tc_ctr_prng_uninstantiate,"ax",@progbits
	.align	1
	.globl	tc_ctr_prng_uninstantiate
	.type	tc_ctr_prng_uninstantiate, @function
tc_ctr_prng_uninstantiate:
.LFB7:
	.loc 1 273 1 is_stmt 1
	.cfi_startproc
.LVL93:
	.loc 1 274 2
	.loc 1 274 5 is_stmt 0
	beq	a0,zero,.L72
	.loc 1 273 1
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
	.loc 1 275 3 is_stmt 1
	li	a2,176
	li	a1,0
	addi	a0,a0,16
.LVL94:
	call	memset
.LVL95:
	.loc 1 276 3
	mv	a0,s1
	li	a2,16
	li	a1,0
	call	memset
.LVL96:
	.loc 1 277 3
	.loc 1 277 20 is_stmt 0
	li	a5,0
	li	a6,0
	sw	a5,192(s1)
	sw	a6,196(s1)
	.loc 1 279 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL97:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL98:
.L72:
	ret
	.cfi_endproc
.LFE7:
	.size	tc_ctr_prng_uninstantiate, .-tc_ctr_prng_uninstantiate
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ctr_prng.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8a3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0xb8
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
	.4byte	0x78
	.byte	0x4
	.4byte	0x67
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
	.byte	0x4
	.4byte	0x86
	.byte	0x6
	.4byte	.LASF46
	.byte	0xb0
	.byte	0x4
	.byte	0x40
	.byte	0x10
	.4byte	0xad
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x41
	.byte	0xf
	.4byte	0xad
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x86
	.4byte	0xbd
	.byte	0x9
	.4byte	0x86
	.byte	0x2b
	.byte	0
	.byte	0xa
	.byte	0xc8
	.byte	0x3
	.byte	0x46
	.byte	0x9
	.4byte	0xec
	.byte	0xb
	.string	"V"
	.byte	0x3
	.byte	0x48
	.byte	0xa
	.4byte	0xec
	.byte	0
	.byte	0xb
	.string	"key"
	.byte	0x3
	.byte	0x4b
	.byte	0x21
	.4byte	0x92
	.byte	0x10
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x4e
	.byte	0xb
	.4byte	0x67
	.byte	0xc0
	.byte	0
	.byte	0x8
	.4byte	0x41
	.4byte	0xfc
	.byte	0x9
	.4byte	0x86
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x4f
	.byte	0x3
	.4byte	0xbd
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x110
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x171
	.byte	0xd
	.string	"ctx"
	.byte	0x1
	.2byte	0x110
	.byte	0x34
	.4byte	0x177
	.4byte	.LLST36
	.byte	0xe
	.4byte	.LVL95
	.4byte	0x86b
	.4byte	0x156
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xb0
	.byte	0
	.byte	0x10
	.4byte	.LVL96
	.4byte	0x86b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0xfc
	.byte	0x4
	.4byte	0x171
	.byte	0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0xcd
	.byte	0x5
	.4byte	0x7f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x38e
	.byte	0x13
	.string	"ctx"
	.byte	0x1
	.byte	0xcd
	.byte	0x2e
	.4byte	0x177
	.4byte	.LLST24
	.byte	0x14
	.4byte	.LASF15
	.byte	0x1
	.byte	0xce
	.byte	0x1a
	.4byte	0x394
	.4byte	.LLST25
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0xcf
	.byte	0x11
	.4byte	0x86
	.4byte	.LLST26
	.byte	0x13
	.string	"out"
	.byte	0x1
	.byte	0xd0
	.byte	0x14
	.4byte	0x39f
	.4byte	.LLST27
	.byte	0x14
	.4byte	.LASF17
	.byte	0x1
	.byte	0xd1
	.byte	0x11
	.4byte	0x86
	.4byte	.LLST28
	.byte	0x15
	.4byte	.LASF18
	.byte	0x1
	.byte	0xd4
	.byte	0x18
	.4byte	0x73
	.8byte	0x1000000000000
	.byte	0x16
	.4byte	.LASF19
	.byte	0x1
	.byte	0xd7
	.byte	0x1c
	.4byte	0x8d
	.4byte	0x10000
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd9
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST29
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x19
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe0
	.byte	0xc
	.4byte	0x3a4
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0xee
	.byte	0x11
	.4byte	0x86
	.4byte	.LLST30
	.byte	0x1b
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.4byte	0x28f
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0xe3
	.byte	0x12
	.4byte	0x86
	.4byte	.LLST31
	.byte	0xe
	.4byte	.LVL71
	.4byte	0x877
	.4byte	0x277
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL72
	.4byte	0x66e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x7f
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x356
	.byte	0x17
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf0
	.byte	0x12
	.4byte	0x86
	.4byte	.LLST32
	.byte	0x19
	.4byte	.LASF23
	.byte	0x1
	.byte	0xf1
	.byte	0xd
	.4byte	0xec
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x1d
	.4byte	0x6d8
	.4byte	.LBB45
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.4byte	0x314
	.byte	0x1e
	.4byte	0x6f1
	.4byte	.LLST33
	.byte	0x1e
	.4byte	0x6e5
	.4byte	.LLST34
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1f
	.4byte	0x6fd
	.byte	0x20
	.4byte	0x6d8
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.byte	0x21
	.4byte	0x6f1
	.byte	0x21
	.4byte	0x6e5
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x22
	.4byte	0x6fd
	.4byte	.LLST35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL84
	.4byte	0x883
	.4byte	0x335
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL86
	.4byte	0x877
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x88
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL67
	.4byte	0x88f
	.4byte	0x375
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb4,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x10
	.4byte	.LVL75
	.4byte	0x66e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x7f
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0x4d
	.byte	0x4
	.4byte	0x38e
	.byte	0x11
	.byte	0x4
	.4byte	0x41
	.byte	0x4
	.4byte	0x399
	.byte	0x8
	.4byte	0x41
	.4byte	0x3b4
	.byte	0x9
	.4byte	0x86
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa4
	.byte	0x5
	.4byte	0x7f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f3
	.byte	0x13
	.string	"ctx"
	.byte	0x1
	.byte	0xa4
	.byte	0x2c
	.4byte	0x177
	.4byte	.LLST16
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa5
	.byte	0x1a
	.4byte	0x394
	.4byte	.LLST17
	.byte	0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa6
	.byte	0x11
	.4byte	0x86
	.4byte	.LLST18
	.byte	0x14
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa7
	.byte	0x1a
	.4byte	0x394
	.4byte	.LLST19
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa8
	.byte	0x11
	.4byte	0x86
	.4byte	.LLST20
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST21
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0xab
	.byte	0x6
	.4byte	0x7f
	.4byte	.LLST22
	.byte	0x19
	.4byte	.LASF21
	.byte	0x1
	.byte	0xac
	.byte	0xa
	.4byte	0x3a4
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0xad
	.byte	0xa
	.4byte	0x3a4
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x23
	.4byte	.LASF29
	.byte	0x1
	.byte	0xba
	.byte	0xf
	.4byte	0x86
	.byte	0x20
	.byte	0x1b
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.4byte	0x49d
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0xb1
	.byte	0x10
	.4byte	0x86
	.4byte	.LLST23
	.byte	0x10
	.4byte	.LVL49
	.4byte	0x877
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL47
	.4byte	0x88f
	.4byte	0x4bc
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa4,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0xe
	.4byte	.LVL50
	.4byte	0x877
	.4byte	0x4dc
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LVL54
	.4byte	0x66e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x75
	.byte	0x5
	.4byte	0x7f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x66e
	.byte	0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x75
	.byte	0x2a
	.4byte	0x177
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x76
	.byte	0x1e
	.4byte	0x394
	.4byte	.LLST9
	.byte	0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x77
	.byte	0x15
	.4byte	0x86
	.4byte	.LLST10
	.byte	0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0x78
	.byte	0x1e
	.4byte	0x394
	.4byte	.LLST11
	.byte	0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x79
	.byte	0x15
	.4byte	0x86
	.4byte	.LLST12
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7b
	.byte	0x6
	.4byte	0x7f
	.4byte	.LLST13
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.byte	0x7c
	.byte	0xf
	.4byte	0x86
	.4byte	.LLST14
	.byte	0x19
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7d
	.byte	0xa
	.4byte	0x3a4
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7e
	.byte	0xa
	.4byte	0x3a4
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7f
	.byte	0xa
	.4byte	0xec
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x1b
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x5df
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0x83
	.byte	0x10
	.4byte	0x86
	.4byte	.LLST15
	.byte	0x10
	.4byte	.LVL28
	.4byte	0x877
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL26
	.4byte	0x88f
	.4byte	0x5fe
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa4,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0xe
	.4byte	.LVL29
	.4byte	0x877
	.4byte	0x61e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0xe
	.4byte	.LVL33
	.4byte	0x89a
	.4byte	0x639
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x90,0x7f
	.byte	0
	.byte	0xe
	.4byte	.LVL34
	.4byte	0x86b
	.4byte	0x657
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL35
	.4byte	0x66e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4a
	.byte	0xd
	.byte	0x1
	.4byte	0x6d8
	.byte	0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x4a
	.byte	0x34
	.4byte	0x177
	.byte	0x26
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4a
	.byte	0x4f
	.4byte	0x394
	.byte	0x27
	.byte	0x28
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4e
	.byte	0xb
	.4byte	0x3a4
	.byte	0x29
	.string	"len"
	.byte	0x1
	.byte	0x4f
	.byte	0x10
	.4byte	0x86
	.byte	0x2a
	.4byte	0x6ca
	.byte	0x28
	.4byte	.LASF22
	.byte	0x1
	.byte	0x53
	.byte	0x11
	.4byte	0x86
	.byte	0x28
	.4byte	.LASF23
	.byte	0x1
	.byte	0x54
	.byte	0xc
	.4byte	0xec
	.byte	0
	.byte	0x27
	.byte	0x29
	.string	"i"
	.byte	0x1
	.byte	0x67
	.byte	0x11
	.4byte	0x86
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF38
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.byte	0x1
	.4byte	0x708
	.byte	0x25
	.string	"arr"
	.byte	0x1
	.byte	0x35
	.byte	0x1c
	.4byte	0x399
	.byte	0x25
	.string	"len"
	.byte	0x1
	.byte	0x35
	.byte	0x30
	.4byte	0x86
	.byte	0x29
	.string	"i"
	.byte	0x1
	.byte	0x37
	.byte	0xf
	.4byte	0x86
	.byte	0
	.byte	0x2b
	.4byte	0x66e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x86b
	.byte	0x1e
	.4byte	0x67b
	.4byte	.LLST0
	.byte	0x1e
	.4byte	0x687
	.4byte	.LLST1
	.byte	0x20
	.4byte	0x66e
	.4byte	.LBB15
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4a
	.byte	0xd
	.byte	0x21
	.4byte	0x687
	.byte	0x21
	.4byte	0x67b
	.byte	0x2c
	.4byte	0x693
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2d
	.4byte	0x694
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x22
	.4byte	0x6a0
	.4byte	.LLST2
	.byte	0x2e
	.4byte	0x6ac
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x816
	.byte	0x22
	.4byte	0x6b1
	.4byte	.LLST3
	.byte	0x2d
	.4byte	0x6bd
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x1d
	.4byte	0x6d8
	.4byte	.LBB19
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.4byte	0x7dd
	.byte	0x1e
	.4byte	0x6f1
	.4byte	.LLST4
	.byte	0x1e
	.4byte	0x6e5
	.4byte	.LLST5
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1f
	.4byte	0x6fd
	.byte	0x20
	.4byte	0x6d8
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.byte	0x21
	.4byte	0x6f1
	.byte	0x21
	.4byte	0x6e5
	.byte	0x18
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x22
	.4byte	0x6fd
	.4byte	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL7
	.4byte	0x883
	.4byte	0x7fe
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL9
	.4byte	0x877
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x6ca
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.4byte	0x831
	.byte	0x22
	.4byte	0x6cb
	.4byte	.LLST7
	.byte	0
	.byte	0xe
	.4byte	.LVL13
	.4byte	0x89a
	.4byte	0x84c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x10
	.4byte	.LVL14
	.4byte	0x877
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x30
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.byte	0x30
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x4
	.byte	0x5d
	.byte	0x5
	.byte	0x31
	.4byte	.LASF39
	.4byte	.LASF48
	.byte	0x6
	.byte	0
	.byte	0x30
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x4
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
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x7
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
	.byte	0x1c
	.byte	0x6
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST36:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x86
	.byte	0x70
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL73
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL74
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL67-1
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL90
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL64
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL92
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL62
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x16
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x16
	.byte	0x7c
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x16
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL58
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL60
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL61
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL43
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL47-1
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL59
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47-1
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL43
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x16
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL40
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL42
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL26-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL41
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x16
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x20
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x85
	.byte	0x70
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x89
	.byte	0x71
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL21
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"tc_aes128_set_encrypt_key"
.LASF25:
	.string	"tc_ctr_prng_reseed"
.LASF16:
	.string	"additionallen"
.LASF28:
	.string	"seed_material"
.LASF43:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF22:
	.string	"blocklen"
.LASF23:
	.string	"output_block"
.LASF24:
	.string	"tc_ctr_prng_generate"
.LASF46:
	.string	"tc_aes_key_sched_struct"
.LASF10:
	.string	"unsigned int"
.LASF8:
	.string	"uint64_t"
.LASF35:
	.string	"providedData"
.LASF19:
	.string	"MAX_BYTES_PER_REQ"
.LASF4:
	.string	"unsigned char"
.LASF13:
	.string	"TCCtrPrng_t"
.LASF48:
	.string	"__builtin_memset"
.LASF6:
	.string	"long unsigned int"
.LASF36:
	.string	"temp"
.LASF5:
	.string	"short unsigned int"
.LASF21:
	.string	"additional_input_buf"
.LASF41:
	.string	"tc_aes_encrypt"
.LASF39:
	.string	"memset"
.LASF12:
	.string	"reseedCount"
.LASF33:
	.string	"personalization_buf"
.LASF37:
	.string	"tc_ctr_prng_update"
.LASF11:
	.string	"words"
.LASF47:
	.string	"tc_ctr_prng_uninstantiate"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint8_t"
.LASF20:
	.string	"result"
.LASF29:
	.string	"seedlen"
.LASF3:
	.string	"long long int"
.LASF44:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ctr_prng.c"
.LASF17:
	.string	"outlen"
.LASF27:
	.string	"entropyLen"
.LASF1:
	.string	"short int"
.LASF32:
	.string	"pLen"
.LASF34:
	.string	"zeroArr"
.LASF40:
	.string	"memcpy"
.LASF26:
	.string	"entropy"
.LASF15:
	.string	"additional_input"
.LASF2:
	.string	"long int"
.LASF14:
	.string	"char"
.LASF30:
	.string	"tc_ctr_prng_init"
.LASF0:
	.string	"signed char"
.LASF45:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF18:
	.string	"MAX_REQS_BEFORE_RESEED"
.LASF31:
	.string	"personalization"
.LASF38:
	.string	"arrInc"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
