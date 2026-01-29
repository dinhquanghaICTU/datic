	.file	"ccm_mode.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ccm_cbc_mac,"ax",@progbits
	.align	1
	.type	ccm_cbc_mac, @function
ccm_cbc_mac:
.LFB6:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ccm_mode.c"
	.loc 1 66 1
	.cfi_startproc
.LVL0:
	.loc 1 68 2
	.loc 1 70 2
	.loc 1 66 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 66 1
	mv	s1,a0
	mv	s4,a1
	mv	s2,a2
	mv	s5,a4
	mv	s3,a3
	.loc 1 70 5
	beq	a3,zero,.L2
	.loc 1 71 3 is_stmt 1
	.loc 1 71 8 is_stmt 0
	lbu	a4,0(a0)
.LVL1:
	.loc 1 71 26
	srli	a5,a2,8
	.loc 1 73 8
	addi	s2,a2,2
	.loc 1 71 8
	xor	a5,a5,a4
	sb	a5,0(a0)
	.loc 1 72 3 is_stmt 1
	.loc 1 72 8 is_stmt 0
	lbu	a5,1(a0)
	.loc 1 73 16
	li	s3,2
	.loc 1 72 8
	xor	a5,a2,a5
	sb	a5,1(a0)
	.loc 1 73 3 is_stmt 1
.LVL2:
	.loc 1 73 14
.L2:
	.loc 1 79 6 is_stmt 0
	mv	a5,s3
.LVL3:
.L5:
	.loc 1 78 8 is_stmt 1
	bltu	a5,s2,.L6
	.loc 1 84 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL4:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL5:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL6:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
.LVL7:
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L6:
	.cfi_restore_state
	.loc 1 79 3 is_stmt 1
	.loc 1 79 6 is_stmt 0
	addi	s6,a5,1
.LVL9:
	.loc 1 79 24
	andi	a3,a5,15
	.loc 1 79 27
	sub	a5,a5,s3
.LVL10:
	.loc 1 79 24
	add	a3,s1,a3
	.loc 1 79 27
	add	a5,s4,a5
	.loc 1 79 24
	lbu	a5,0(a5)
	lbu	a4,0(a3)
	xor	a5,a5,a4
	sb	a5,0(a3)
	.loc 1 80 3 is_stmt 1
	.loc 1 80 11 is_stmt 0
	andi	a5,s6,15
	.loc 1 80 6
	beq	a5,zero,.L3
	.loc 1 80 32 discriminator 1
	bne	s6,s2,.L4
.L3:
	.loc 1 81 4 is_stmt 1
	.loc 1 81 11 is_stmt 0
	mv	a2,s5
	mv	a1,s1
	mv	a0,s1
	call	tc_aes_encrypt
.LVL11:
.L4:
	.loc 1 79 6
	mv	a5,s6
	j	.L5
	.cfi_endproc
.LFE6:
	.size	ccm_cbc_mac, .-ccm_cbc_mac
	.section	.text.ccm_ctr_mode.constprop.0.isra.0,"ax",@progbits
	.align	1
	.type	ccm_ctr_mode.constprop.0.isra.0, @function
ccm_ctr_mode.constprop.0.isra.0:
.LFB13:
	.loc 1 93 12 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 97 2
	.loc 1 98 2
	.loc 1 99 2
	.loc 1 100 2
	.loc 1 103 2
	.loc 1 103 5 is_stmt 0
	beq	a0,zero,.L40
	.loc 1 93 12
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s3,60(sp)
	sw	ra,76(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	s3,a2
	.loc 1 103 27
	beq	a2,zero,.L15
	mv	s5,a5
	.loc 1 105 27
	beq	a5,zero,.L15
	mv	s7,a3
	.loc 1 106 35
	beq	a3,zero,.L15
	.loc 1 107 17
	beq	a1,zero,.L15
	.loc 1 108 18
	bne	a3,a1,.L15
.LBB4:
.LBB5:
	.loc 1 114 9
	li	a1,16
.LVL13:
	mv	s4,a0
	li	a3,16
.LVL14:
	mv	a2,a4
.LVL15:
	addi	a0,s0,-64
.LVL16:
	mv	s6,a4
.LVL17:
	.loc 1 114 2 is_stmt 1
	.loc 1 114 9 is_stmt 0
	call	_copy
.LVL18:
	.loc 1 117 2 is_stmt 1
	lhu	a1,-50(s0)
	.loc 1 118 9 is_stmt 0
	li	s2,0
	slli	s1,a1,8
	slli	a1,a1,16
	srli	a1,a1,16
	srli	a1,a1,8
	or	s1,s1,a1
	slli	s1,s1,16
	srli	s1,s1,16
.LVL19:
	.loc 1 118 2 is_stmt 1
	.loc 1 118 14
.L19:
	.loc 1 119 3
	.loc 1 119 10 is_stmt 0
	andi	s8,s2,15
	.loc 1 119 6
	bne	s8,zero,.L17
	.loc 1 120 4 is_stmt 1
	.loc 1 120 13 is_stmt 0
	addi	s1,s1,1
.LVL20:
	slli	s1,s1,16
	srli	s1,s1,16
.LVL21:
	.loc 1 121 4 is_stmt 1
	.loc 1 122 4
	.loc 1 121 14 is_stmt 0
	slli	a5,s1,8
	srli	a4,s1,8
	or	a5,a5,a4
	.loc 1 123 9
	mv	a2,s5
	addi	a1,s0,-64
	addi	a0,s0,-80
	.loc 1 121 14
	sh	a5,-50(s0)
	.loc 1 123 4 is_stmt 1
	.loc 1 123 9 is_stmt 0
	call	tc_aes_encrypt
.LVL22:
	.loc 1 123 7
	beq	a0,zero,.L15
.L17:
	.loc 1 128 3 is_stmt 1
.LVL23:
	.loc 1 128 18 is_stmt 0
	addi	a3,s0,-48
	.loc 1 128 38
	add	a5,s3,s2
	.loc 1 128 18
	add	s8,a3,s8
	.loc 1 128 10
	lbu	a5,0(a5)
	lbu	a3,-32(s8)
	add	a4,s4,s2
	.loc 1 118 25
	addi	s2,s2,1
.LVL24:
	.loc 1 128 10
	xor	a5,a5,a3
	sb	a5,0(a4)
	.loc 1 118 25 is_stmt 1
.LVL25:
	.loc 1 118 14
	.loc 1 118 2 is_stmt 0
	bne	s7,s2,.L19
	.loc 1 132 2 is_stmt 1
	.loc 1 132 10 is_stmt 0
	lbu	a5,-50(s0)
	sb	a5,14(s6)
	.loc 1 132 23 is_stmt 1
	.loc 1 132 31 is_stmt 0
	lbu	a5,-49(s0)
	sb	a5,15(s6)
	.loc 1 134 2 is_stmt 1
.LVL26:
.L15:
.LBE5:
.LBE4:
	.loc 1 135 1 is_stmt 0
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
.LVL27:
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
.LVL28:
.L40:
	ret
	.cfi_endproc
.LFE13:
	.size	ccm_ctr_mode.constprop.0.isra.0, .-ccm_ctr_mode.constprop.0.isra.0
	.section	.text.tc_ccm_config,"ax",@progbits
	.align	1
	.globl	tc_ccm_config
	.type	tc_ccm_config, @function
tc_ccm_config:
.LFB5:
	.loc 1 41 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 44 2
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 44 5
	beq	a0,zero,.L45
	mv	a5,a0
	.loc 1 47 10 discriminator 1
	li	a0,0
.LVL30:
	.loc 1 44 27 discriminator 1
	beq	a1,zero,.L43
	.loc 1 45 35
	beq	a2,zero,.L43
	.loc 1 48 9 is_stmt 1
	.loc 1 48 12 is_stmt 0
	li	a6,13
	bne	a3,a6,.L43
	.loc 1 50 9 is_stmt 1
	.loc 1 50 24 is_stmt 0
	addi	a3,a4,-4
.LVL31:
	.loc 1 50 12
	li	a6,12
	bgtu	a3,a6,.L43
	.loc 1 50 48 discriminator 1
	andi	a3,a4,1
	.loc 1 50 39 discriminator 1
	bne	a3,zero,.L43
	.loc 1 54 2 is_stmt 1
	.loc 1 54 10 is_stmt 0
	sw	a4,8(a5)
	.loc 1 55 2 is_stmt 1
	.loc 1 55 11 is_stmt 0
	sw	a1,0(a5)
	.loc 1 56 2 is_stmt 1
	.loc 1 56 11 is_stmt 0
	sw	a2,4(a5)
	.loc 1 58 2 is_stmt 1
	.loc 1 58 9 is_stmt 0
	li	a0,1
.LVL32:
.L43:
	.loc 1 59 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L45:
	.cfi_restore_state
	.loc 1 47 10
	li	a0,0
.LVL34:
	j	.L43
	.cfi_endproc
.LFE5:
	.size	tc_ccm_config, .-tc_ccm_config
	.section	.text.tc_ccm_generation_encryption,"ax",@progbits
	.align	1
	.globl	tc_ccm_generation_encryption
	.type	tc_ccm_generation_encryption, @function
tc_ccm_generation_encryption:
.LFB8:
	.loc 1 141 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 144 2
	.loc 1 144 5 is_stmt 0
	beq	a0,zero,.L64
	.loc 1 141 1 discriminator 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	s4,40(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	s4,a0
	mv	s2,a6
	.loc 1 151 10 discriminator 1
	li	a0,0
.LVL36:
	.loc 1 144 29 discriminator 1
	beq	a6,zero,.L52
	mv	s6,a2
	mv	s3,a3
	mv	s5,a4
	mv	s1,a5
	.loc 1 145 26
	beq	a5,zero,.L54
	.loc 1 146 15
	beq	a4,zero,.L52
	.loc 1 146 46 discriminator 1
	beq	a3,zero,.L55
.L62:
	.loc 1 151 10
	li	a0,0
	.loc 1 147 15
	beq	s6,zero,.L52
	.loc 1 147 54 discriminator 1
	li	a5,65536
.LVL37:
	addi	a5,a5,-257
	bgtu	s3,a5,.L52
.L55:
	.loc 1 148 20
	li	a5,65536
	.loc 1 151 10
	li	a0,0
	.loc 1 148 20
	bgeu	s1,a5,.L52
.L63:
	.loc 1 150 20
	lw	a5,8(s2)
	.loc 1 151 10
	li	a0,0
	.loc 1 150 17
	add	a4,a5,s1
.LVL38:
	.loc 1 149 21
	bgtu	a4,a1,.L52
	.loc 1 154 2 is_stmt 1
	.loc 1 155 2
	.loc 1 156 2
	.loc 1 161 2
	.loc 1 161 44 is_stmt 0
	addi	a5,a5,-2
	.loc 1 161 31
	snez	a3,s3
.LVL39:
	.loc 1 161 49
	srli	a5,a5,1
	.loc 1 161 31
	slli	a3,a3,6
	.loc 1 161 53
	slli	a5,a5,3
	.loc 1 161 31
	or	a5,a3,a5
	.loc 1 163 11
	lw	a1,4(s2)
.LVL40:
	.loc 1 161 60
	ori	a5,a5,1
	.loc 1 161 7
	sb	a5,-64(s0)
	.loc 1 162 2 is_stmt 1
.LVL41:
	.loc 1 162 14
	.loc 1 162 2 is_stmt 0
	li	a4,14
	.loc 1 162 9
	li	a5,1
.LVL42:
.L57:
	.loc 1 163 3 is_stmt 1 discriminator 3
	.loc 1 163 18 is_stmt 0 discriminator 3
	add	a3,a1,a5
	lbu	a2,-1(a3)
	.loc 1 163 8 discriminator 3
	addi	a3,s0,-64
	add	a3,a3,a5
	sb	a2,0(a3)
	.loc 1 162 23 is_stmt 1 discriminator 3
	addi	a5,a5,1
.LVL43:
	.loc 1 162 14 discriminator 3
	.loc 1 162 2 is_stmt 0 discriminator 3
	bne	a5,a4,.L57
	.loc 1 165 2 is_stmt 1
	.loc 1 166 2
	.loc 1 165 8 is_stmt 0
	slli	a4,s1,16
	srli	a4,a4,16
	.loc 1 169 9
	lw	a2,0(s2)
	.loc 1 165 8
	slli	a5,s1,8
.LVL44:
	srli	a4,a4,8
	or	a5,a5,a4
	.loc 1 169 9
	addi	a1,s0,-64
	addi	a0,s0,-48
	.loc 1 165 8
	sh	a5,-50(s0)
	.loc 1 169 2 is_stmt 1
	.loc 1 169 9 is_stmt 0
	call	tc_aes_encrypt
.LVL45:
	.loc 1 170 2 is_stmt 1
	.loc 1 170 5 is_stmt 0
	beq	s3,zero,.L58
	.loc 1 171 3 is_stmt 1
	lw	a4,0(s2)
	li	a3,1
	mv	a2,s3
	mv	a1,s6
	addi	a0,s0,-48
	call	ccm_cbc_mac
.LVL46:
.L58:
	.loc 1 173 2
	.loc 1 173 5 is_stmt 0
	beq	s1,zero,.L59
	.loc 1 174 3 is_stmt 1
	lw	a4,0(s2)
	li	a3,0
	mv	a2,s1
	mv	a1,s5
	addi	a0,s0,-48
	call	ccm_cbc_mac
.LVL47:
.L59:
	.loc 1 180 2
	.loc 1 180 7 is_stmt 0
	li	a5,1
	sb	a5,-64(s0)
	.loc 1 181 2 is_stmt 1
	.loc 1 184 2 is_stmt 0
	lw	a5,0(s2)
	addi	a4,s0,-64
	mv	a3,s1
	mv	a2,s5
	mv	a1,s1
	mv	a0,s4
	.loc 1 181 8
	sh	zero,-50(s0)
	.loc 1 184 2 is_stmt 1
	call	ccm_ctr_mode.constprop.0.isra.0
.LVL48:
	.loc 1 186 2
	.loc 1 189 9 is_stmt 0
	lw	a2,0(s2)
	addi	a1,s0,-64
	mv	a0,a1
	.loc 1 186 8
	sh	zero,-50(s0)
	.loc 1 189 2 is_stmt 1
	.loc 1 189 9 is_stmt 0
	call	tc_aes_encrypt
.LVL49:
	.loc 1 190 2 is_stmt 1
	.loc 1 191 2
	.loc 1 191 9 is_stmt 0
	li	a5,0
.LVL50:
.L60:
	.loc 1 191 14 is_stmt 1 discriminator 1
	.loc 1 191 2 is_stmt 0 discriminator 1
	lw	a4,8(s2)
	bgtu	a4,a5,.L61
	.loc 1 195 9
	li	a0,1
.LVL51:
.L52:
	.loc 1 196 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL52:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L61:
	.cfi_restore_state
	.loc 1 192 3 is_stmt 1 discriminator 3
	.loc 1 192 15 is_stmt 0 discriminator 3
	addi	a3,s0,-48
	.loc 1 192 22 discriminator 3
	addi	a2,s0,-64
	.loc 1 192 15 discriminator 3
	add	a3,a3,a5
	.loc 1 192 22 discriminator 3
	add	a2,a2,a5
	.loc 1 192 10 discriminator 3
	lbu	a3,0(a3)
	lbu	a2,0(a2)
	add	a4,a5,s1
	add	a4,s4,a4
	xor	a3,a3,a2
	sb	a3,0(a4)
	.loc 1 191 27 is_stmt 1 discriminator 3
	addi	a5,a5,1
.LVL54:
	j	.L60
.LVL55:
.L64:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.loc 1 151 10 is_stmt 0
	li	a0,0
.LVL56:
	.loc 1 196 1
	ret
.LVL57:
.L54:
	.cfi_def_cfa_register 8
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 146 46
	bne	a3,zero,.L62
	j	.L63
	.cfi_endproc
.LFE8:
	.size	tc_ccm_generation_encryption, .-tc_ccm_generation_encryption
	.section	.text.tc_ccm_decryption_verification,"ax",@progbits
	.align	1
	.globl	tc_ccm_decryption_verification
	.type	tc_ccm_decryption_verification, @function
tc_ccm_decryption_verification:
.LFB9:
	.loc 1 202 1 is_stmt 1
	.cfi_startproc
.LVL58:
	.loc 1 205 2
	.loc 1 205 5 is_stmt 0
	beq	a0,zero,.L99
	.loc 1 202 1 discriminator 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	s2,a5
	mv	s1,a6
	.loc 1 212 10 discriminator 1
	li	a5,0
.LVL59:
	.loc 1 205 29 discriminator 1
	beq	a6,zero,.L86
	mv	s4,a0
	mv	s5,a2
	mv	s3,a3
	mv	s6,a4
	.loc 1 206 29
	beq	s2,zero,.L88
	.loc 1 207 18
	beq	a4,zero,.L86
	.loc 1 207 49 discriminator 1
	beq	a3,zero,.L89
.L97:
	.loc 1 212 10
	li	a5,0
	.loc 1 208 18
	beq	s5,zero,.L86
	.loc 1 208 57 discriminator 1
	li	a4,65536
.LVL60:
	addi	a4,a4,-257
	bgtu	s3,a4,.L86
.L89:
	.loc 1 209 23
	li	a4,65536
	.loc 1 212 10
	li	a5,0
	.loc 1 209 23
	bgeu	s2,a4,.L86
.L98:
	.loc 1 211 19
	lw	a3,8(s1)
.LVL61:
	.loc 1 212 10
	li	a5,0
	.loc 1 211 19
	sub	a3,s2,a3
	.loc 1 210 24
	bgtu	a3,a1,.L86
	.loc 1 215 2 is_stmt 1
	.loc 1 216 2
	.loc 1 217 2
	.loc 1 222 2
	.loc 1 224 11 is_stmt 0
	lw	a0,4(s1)
.LVL62:
	.loc 1 222 7
	li	a5,1
	sb	a5,-64(s0)
	.loc 1 223 2 is_stmt 1
.LVL63:
	.loc 1 223 14
	.loc 1 223 2 is_stmt 0
	li	a4,14
.LVL64:
.L90:
	.loc 1 224 3 is_stmt 1 discriminator 3
	.loc 1 224 18 is_stmt 0 discriminator 3
	add	a2,a0,a5
	lbu	a1,-1(a2)
	.loc 1 224 8 discriminator 3
	addi	a2,s0,-64
	add	a2,a2,a5
	sb	a1,0(a2)
	.loc 1 223 22 is_stmt 1 discriminator 3
	addi	a5,a5,1
.LVL65:
	.loc 1 223 14 discriminator 3
	.loc 1 223 2 is_stmt 0 discriminator 3
	bne	a5,a4,.L90
	.loc 1 226 2 is_stmt 1
	.loc 1 229 2 is_stmt 0
	lw	a5,0(s1)
.LVL66:
	mv	a1,a3
	addi	a4,s0,-64
	mv	a2,s6
	mv	a0,s4
	.loc 1 226 8
	sh	zero,-50(s0)
	.loc 1 229 2 is_stmt 1
	call	ccm_ctr_mode.constprop.0.isra.0
.LVL67:
	.loc 1 231 2
	.loc 1 234 9 is_stmt 0
	lw	a2,0(s1)
	addi	a1,s0,-64
	mv	a0,a1
	.loc 1 231 8
	sh	zero,-50(s0)
	.loc 1 234 2 is_stmt 1
	.loc 1 234 9 is_stmt 0
	call	tc_aes_encrypt
.LVL68:
	.loc 1 235 2 is_stmt 1
	.loc 1 235 19 is_stmt 0
	lw	a3,8(s1)
	.loc 1 235 9
	li	a5,0
	.loc 1 236 29
	sub	a2,s2,a3
.LVL69:
.L91:
	.loc 1 235 14 is_stmt 1 discriminator 1
	.loc 1 235 2 is_stmt 0 discriminator 1
	bne	a3,a5,.L92
	.loc 1 242 2 is_stmt 1
	.loc 1 242 42 is_stmt 0
	addi	a3,a5,-2
	.loc 1 242 30
	snez	a4,s3
	.loc 1 242 47
	srli	a3,a3,1
	.loc 1 242 51
	slli	a3,a3,3
	.loc 1 242 30
	slli	a4,a4,6
	or	a4,a4,a3
	.loc 1 244 11
	lw	a6,4(s1)
	.loc 1 242 58
	ori	a4,a4,1
	.loc 1 242 7
	sb	a4,-64(s0)
	.loc 1 243 2 is_stmt 1
.LVL70:
	.loc 1 243 14
	.loc 1 243 2 is_stmt 0
	li	a3,14
	.loc 1 243 9
	li	a4,1
.LVL71:
.L94:
	.loc 1 244 3 is_stmt 1 discriminator 3
	.loc 1 244 18 is_stmt 0 discriminator 3
	add	a1,a6,a4
	lbu	a0,-1(a1)
	.loc 1 244 8 discriminator 3
	addi	a1,s0,-64
	add	a1,a1,a4
	sb	a0,0(a1)
	.loc 1 243 22 is_stmt 1 discriminator 3
	addi	a4,a4,1
.LVL72:
	.loc 1 243 14 discriminator 3
	.loc 1 243 2 is_stmt 0 discriminator 3
	bne	a4,a3,.L94
	.loc 1 246 2 is_stmt 1
	.loc 1 246 37 is_stmt 0
	srli	a2,a2,8
	.loc 1 246 10
	sb	a2,-50(s0)
	.loc 1 247 2 is_stmt 1
	.loc 1 250 9 is_stmt 0
	lw	a2,0(s1)
	addi	a1,s0,-64
	.loc 1 247 10
	sub	a5,s2,a5
	.loc 1 250 9
	mv	a0,a1
	.loc 1 247 8
	sb	a5,-49(s0)
	.loc 1 250 2 is_stmt 1
	.loc 1 250 9 is_stmt 0
	call	tc_aes_encrypt
.LVL73:
	.loc 1 251 2 is_stmt 1
	.loc 1 251 5 is_stmt 0
	beq	s3,zero,.L95
	.loc 1 252 3 is_stmt 1
	lw	a4,0(s1)
	li	a3,1
	mv	a2,s3
	mv	a1,s5
	addi	a0,s0,-64
	call	ccm_cbc_mac
.LVL74:
.L95:
	.loc 1 254 2
	.loc 1 254 5 is_stmt 0
	beq	s2,zero,.L96
	.loc 1 255 3 is_stmt 1
	lw	a2,8(s1)
	lw	a4,0(s1)
	li	a3,0
	sub	a2,s2,a2
	mv	a1,s4
	addi	a0,s0,-64
	call	ccm_cbc_mac
.LVL75:
.L96:
	.loc 1 259 2
	.loc 1 259 6 is_stmt 0
	lw	a2,8(s1)
	addi	a1,s0,-48
	addi	a0,s0,-64
	call	_compare
.LVL76:
	.loc 1 260 10
	li	a5,1
	.loc 1 259 5
	beq	a0,zero,.L86
	.loc 1 263 3 is_stmt 1
	lw	a2,8(s1)
	li	a1,0
	mv	a0,s4
	sub	a2,s2,a2
	call	_set
.LVL77:
	.loc 1 264 3
	.loc 1 264 10 is_stmt 0
	li	a5,0
.LVL78:
.L86:
	.loc 1 266 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL79:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL80:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL81:
.L92:
	.cfi_restore_state
	.loc 1 236 3 is_stmt 1 discriminator 3
	.loc 1 236 10 is_stmt 0 discriminator 3
	addi	a4,s0,-48
	add	a1,a4,a5
	.loc 1 236 47 discriminator 3
	addi	a0,s0,-64
	.loc 1 236 12 discriminator 3
	add	a4,a2,a5
	.loc 1 236 47 discriminator 3
	add	a0,a0,a5
	.loc 1 236 12 discriminator 3
	add	a4,s6,a4
	.loc 1 236 10 discriminator 3
	lbu	a4,0(a4)
	lbu	a0,0(a0)
	.loc 1 235 27 discriminator 3
	addi	a5,a5,1
.LVL82:
	.loc 1 236 10 discriminator 3
	xor	a4,a4,a0
	sb	a4,0(a1)
	.loc 1 235 27 is_stmt 1 discriminator 3
.LVL83:
	j	.L91
.LVL84:
.L99:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.loc 1 212 10 is_stmt 0
	li	a5,0
.LVL85:
	.loc 1 266 1
	mv	a0,a5
.LVL86:
	ret
.LVL87:
.L88:
	.cfi_def_cfa_register 8
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 207 49
	bne	a3,zero,.L97
	j	.L98
	.cfi_endproc
.LFE9:
	.size	tc_ccm_decryption_verification, .-tc_ccm_decryption_verification
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ccm_mode.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6b6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
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
	.4byte	.LASF5
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x65
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
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
	.4byte	.LASF12
	.byte	0xb0
	.byte	0x3
	.byte	0x40
	.byte	0x10
	.4byte	0xa3
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x41
	.byte	0xf
	.4byte	0xa3
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x81
	.4byte	0xb3
	.byte	0x9
	.4byte	0x81
	.byte	0x2b
	.byte	0
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x42
	.byte	0x4
	.4byte	0xc4
	.byte	0x4
	.4byte	0xb3
	.byte	0xa
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.4byte	.LASF13
	.byte	0xc
	.byte	0x4
	.byte	0x5b
	.byte	0x10
	.4byte	0xff
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x5c
	.byte	0x12
	.4byte	0xb3
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x5d
	.byte	0xb
	.4byte	0xff
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x5e
	.byte	0xf
	.4byte	0x81
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5f
	.byte	0x4
	.4byte	0x111
	.byte	0xa
	.byte	0x4
	.4byte	0xca
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.byte	0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc6
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x298
	.byte	0xc
	.string	"out"
	.byte	0x1
	.byte	0xc6
	.byte	0x2d
	.4byte	0xff
	.4byte	.LLST30
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0xc6
	.byte	0x3f
	.4byte	0x81
	.4byte	.LLST31
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc7
	.byte	0x17
	.4byte	0x298
	.4byte	.LLST32
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc8
	.byte	0x15
	.4byte	0x81
	.4byte	.LLST33
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0xc8
	.byte	0x2a
	.4byte	0x298
	.4byte	.LLST34
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc9
	.byte	0x15
	.4byte	0x81
	.4byte	.LLST35
	.byte	0xc
	.string	"c"
	.byte	0x1
	.byte	0xc9
	.byte	0x27
	.4byte	0x105
	.4byte	.LLST36
	.byte	0xe
	.string	"b"
	.byte	0x1
	.byte	0xd7
	.byte	0xa
	.4byte	0x29e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xe
	.string	"tag"
	.byte	0x1
	.byte	0xd8
	.byte	0xa
	.4byte	0x29e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST37
	.byte	0x10
	.4byte	.LVL67
	.4byte	0x580
	.4byte	0x1f0
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL68
	.4byte	0x689
	.4byte	0x20a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL73
	.4byte	0x689
	.4byte	0x224
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL74
	.4byte	0x48e
	.4byte	0x249
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
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
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL75
	.4byte	0x48e
	.4byte	0x268
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL76
	.4byte	0x695
	.4byte	0x282
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x12
	.4byte	.LVL77
	.4byte	0x6a1
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x4d
	.byte	0x8
	.4byte	0x41
	.4byte	0x2ae
	.byte	0x9
	.4byte	0x81
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x407
	.byte	0xc
	.string	"out"
	.byte	0x1
	.byte	0x89
	.byte	0x2b
	.4byte	0xff
	.4byte	.LLST22
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x89
	.byte	0x3d
	.4byte	0x81
	.4byte	.LLST23
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8a
	.byte	0x15
	.4byte	0x298
	.4byte	.LLST24
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8b
	.byte	0x13
	.4byte	0x81
	.4byte	.LLST25
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8b
	.byte	0x28
	.4byte	0x298
	.4byte	.LLST26
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8c
	.byte	0x13
	.4byte	0x81
	.4byte	.LLST27
	.byte	0xc
	.string	"c"
	.byte	0x1
	.byte	0x8c
	.byte	0x25
	.4byte	0x105
	.4byte	.LLST28
	.byte	0xe
	.string	"b"
	.byte	0x1
	.byte	0x9a
	.byte	0xa
	.4byte	0x29e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xe
	.string	"tag"
	.byte	0x1
	.byte	0x9b
	.byte	0xa
	.4byte	0x29e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST29
	.byte	0x10
	.4byte	.LVL45
	.4byte	0x689
	.4byte	0x37a
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
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL46
	.4byte	0x48e
	.4byte	0x39f
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
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL47
	.4byte	0x48e
	.4byte	0x3c4
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
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL48
	.4byte	0x580
	.4byte	0x3f0
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL49
	.4byte	0x689
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5d
	.byte	0xc
	.4byte	0x7a
	.byte	0x1
	.4byte	0x48e
	.byte	0x14
	.string	"out"
	.byte	0x1
	.byte	0x5d
	.byte	0x22
	.4byte	0xff
	.byte	0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5d
	.byte	0x34
	.4byte	0x81
	.byte	0x14
	.string	"in"
	.byte	0x1
	.byte	0x5d
	.byte	0x4b
	.4byte	0x298
	.byte	0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5e
	.byte	0x11
	.4byte	0x81
	.byte	0x14
	.string	"ctr"
	.byte	0x1
	.byte	0x5e
	.byte	0x21
	.4byte	0xff
	.byte	0x15
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5e
	.byte	0x3c
	.4byte	0xbf
	.byte	0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x61
	.byte	0xa
	.4byte	0x29e
	.byte	0x16
	.4byte	.LASF16
	.byte	0x1
	.byte	0x62
	.byte	0xa
	.4byte	0x29e
	.byte	0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x63
	.byte	0xb
	.4byte	0x59
	.byte	0x17
	.string	"i"
	.byte	0x1
	.byte	0x64
	.byte	0xf
	.4byte	0x81
	.byte	0
	.byte	0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x51d
	.byte	0xc
	.string	"T"
	.byte	0x1
	.byte	0x40
	.byte	0x22
	.4byte	0xff
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x40
	.byte	0x34
	.4byte	0x298
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x40
	.byte	0x47
	.4byte	0x81
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x41
	.byte	0x11
	.4byte	0x81
	.4byte	.LLST3
	.byte	0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x41
	.byte	0x27
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x44
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST5
	.byte	0x12
	.4byte	.LVL11
	.4byte	0x689
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
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0x27
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x580
	.byte	0xc
	.string	"c"
	.byte	0x1
	.byte	0x27
	.byte	0x1f
	.4byte	0x105
	.4byte	.LLST20
	.byte	0x19
	.4byte	.LASF15
	.byte	0x1
	.byte	0x27
	.byte	0x32
	.4byte	0xb3
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.byte	0x42
	.4byte	0xff
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x28
	.byte	0x12
	.4byte	0x81
	.4byte	.LLST21
	.byte	0x19
	.4byte	.LASF17
	.byte	0x1
	.byte	0x28
	.byte	0x25
	.4byte	0x81
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x1a
	.4byte	0x407
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x689
	.byte	0x1b
	.4byte	0x418
	.4byte	.LLST6
	.byte	0x1b
	.4byte	0x424
	.4byte	.LLST7
	.byte	0x1b
	.4byte	0x430
	.4byte	.LLST8
	.byte	0x1b
	.4byte	0x43b
	.4byte	.LLST9
	.byte	0x1b
	.4byte	0x447
	.4byte	.LLST10
	.byte	0x1b
	.4byte	0x453
	.4byte	.LLST11
	.byte	0x1c
	.4byte	0x45f
	.byte	0x1c
	.4byte	0x46b
	.byte	0x1c
	.4byte	0x477
	.byte	0x1c
	.4byte	0x483
	.byte	0x1d
	.4byte	0x407
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x5d
	.byte	0xc
	.byte	0x1b
	.4byte	0x424
	.4byte	.LLST12
	.byte	0x1b
	.4byte	0x453
	.4byte	.LLST13
	.byte	0x1b
	.4byte	0x447
	.4byte	.LLST14
	.byte	0x1b
	.4byte	0x43b
	.4byte	.LLST15
	.byte	0x1b
	.4byte	0x430
	.4byte	.LLST16
	.byte	0x1b
	.4byte	0x418
	.4byte	.LLST17
	.byte	0x1e
	.4byte	0x45f
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x1e
	.4byte	0x46b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1f
	.4byte	0x477
	.4byte	.LLST18
	.byte	0x1f
	.4byte	0x483
	.4byte	.LLST19
	.byte	0x10
	.4byte	.LVL18
	.4byte	0x6ad
	.4byte	0x66a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
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
	.byte	0x86
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL22
	.4byte	0x689
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x7f
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x3
	.byte	0x5d
	.byte	0x5
	.byte	0x20
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x73
	.byte	0x5
	.byte	0x20
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x47
	.byte	0x6
	.byte	0x20
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3d
	.byte	0xe
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
.LLST30:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL58
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL84
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL61
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL84
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL60
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL84
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL59
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL58
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL67-1
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL87
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0xb
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL55
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL55
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL55
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL37
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL35
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL45-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL55
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0xb
	.byte	0x84
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0xb
	.byte	0x84
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
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
.LLST21:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL12
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x8
	.byte	0x83
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x8
	.byte	0x84
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"tc_ccm_config"
.LASF40:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF26:
	.string	"tc_ccm_generation_encryption"
.LASF43:
	.string	"ccm_ctr_mode"
.LASF13:
	.string	"tc_ccm_mode_struct"
.LASF12:
	.string	"tc_aes_key_sched_struct"
.LASF11:
	.string	"TCAesKeySched_t"
.LASF21:
	.string	"associated_data"
.LASF17:
	.string	"mlen"
.LASF31:
	.string	"data"
.LASF32:
	.string	"dlen"
.LASF37:
	.string	"_compare"
.LASF4:
	.string	"unsigned char"
.LASF44:
	.string	"ccm_cbc_mac"
.LASF8:
	.string	"long unsigned int"
.LASF16:
	.string	"nonce"
.LASF7:
	.string	"short unsigned int"
.LASF35:
	.string	"nlen"
.LASF30:
	.string	"block_num"
.LASF28:
	.string	"inlen"
.LASF33:
	.string	"flag"
.LASF14:
	.string	"words"
.LASF10:
	.string	"unsigned int"
.LASF38:
	.string	"_set"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF20:
	.string	"olen"
.LASF25:
	.string	"tc_ccm_decryption_verification"
.LASF22:
	.string	"alen"
.LASF23:
	.string	"payload"
.LASF41:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/ccm_mode.c"
.LASF18:
	.string	"TCCcmMode_t"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"char"
.LASF6:
	.string	"uint16_t"
.LASF39:
	.string	"_copy"
.LASF1:
	.string	"short int"
.LASF29:
	.string	"buffer"
.LASF24:
	.string	"plen"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF27:
	.string	"outlen"
.LASF15:
	.string	"sched"
.LASF36:
	.string	"tc_aes_encrypt"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
