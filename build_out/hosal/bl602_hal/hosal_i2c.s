	.file	"hosal_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	__udivdi3
	.section	.text.i2c_master_receive.constprop.0,"ax",@progbits
	.align	1
	.type	i2c_master_receive.constprop.0, @function
i2c_master_receive.constprop.0:
.LFB21:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_i2c.c"
	.loc 1 87 12
	.cfi_startproc
.LVL0:
	.loc 1 89 5
	.loc 1 90 5
	.loc 1 91 5
	.loc 1 92 5
	.loc 1 94 5
	.loc 1 87 12 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	s6,16(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 22, -32
	mv	s2,a0
	.loc 1 94 5
	li	a0,0
.LVL1:
	.loc 1 87 12
	mv	s3,a1
	.loc 1 94 5
	call	I2C_Disable
.LVL2:
	.loc 1 95 5 is_stmt 1
	mv	a2,s2
	li	a1,1
	li	a0,0
	call	I2C_Init
.LVL3:
	.loc 1 96 5
	li	a0,0
	call	I2C_Enable
.LVL4:
	.loc 1 98 5
	.loc 1 98 18 is_stmt 0
	call	bl_timer_now_us64
.LVL5:
	.loc 1 98 38
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL6:
	.loc 1 98 16
	mv	s4,a0
	mv	s5,a1
.LVL7:
	.loc 1 100 5 is_stmt 1
	.loc 1 89 13 is_stmt 0
	li	s1,0
	.loc 1 100 11
	li	s8,3
	.loc 1 101 21
	li	s7,1073782784
	.loc 1 103 16
	li	s9,-1
.LVL8:
.L2:
	.loc 1 100 11 is_stmt 1
	.loc 1 100 15 is_stmt 0
	lhu	a5,16(s2)
	.loc 1 100 26
	sub	a4,a5,s1
	.loc 1 100 11
	bgt	a4,s8,.L20
	.loc 1 115 5 is_stmt 1
	.loc 1 115 8 is_stmt 0
	bleu	a5,s1,.L14
	.loc 1 116 21
	li	s7,1073782784
	.loc 1 118 16
	li	s8,-1
.L19:
	.loc 1 116 15 is_stmt 1
	.loc 1 116 21 is_stmt 0
	lw	s6,900(s7)
	.loc 1 116 92
	srli	s6,s6,8
	andi	s6,s6,3
	.loc 1 116 15
	beq	s6,zero,.L11
	.loc 1 126 9 is_stmt 1
	.loc 1 126 14 is_stmt 0
	lw	a5,908(s7)
.LVL9:
	.loc 1 127 9 is_stmt 1
.L12:
	.loc 1 127 15
	lhu	a4,16(s2)
	bgtu	a4,s1,.L13
.LVL10:
.L14:
	.loc 1 136 12 is_stmt 0
	li	s1,-1
.LVL11:
.L23:
	.loc 1 134 11 is_stmt 1
	.loc 1 134 12 is_stmt 0
	li	a0,0
	call	I2C_IsBusy
.LVL12:
	.loc 1 134 11
	bne	a0,zero,.L16
	.loc 1 134 34
	call	I2C_TransferEndStatus
.LVL13:
	.loc 1 134 30
	beq	a0,zero,.L16
	.loc 1 145 5 is_stmt 1
	li	a0,0
	call	I2C_Disable
.LVL14:
	.loc 1 147 5
	.loc 1 147 12 is_stmt 0
	li	a0,0
	j	.L1
.LVL15:
.L6:
	.loc 1 102 13 is_stmt 1
	.loc 1 102 24 is_stmt 0
	call	bl_timer_now_us64
.LVL16:
	.loc 1 102 44
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL17:
	.loc 1 103 13 is_stmt 1
	.loc 1 103 16 is_stmt 0
	beq	s3,s9,.L20
	.loc 1 106 13 is_stmt 1
	.loc 1 106 27 is_stmt 0
	sub	a5,a0,s4
	sgtu	a0,a5,a0
.LVL18:
	sub	a1,a1,s5
	sub	a1,a1,a0
	.loc 1 106 16
	bgt	s6,a1,.L20
	bne	a1,zero,.L9
	bgtu	s3,a5,.L20
.LVL19:
.L9:
	.loc 1 107 17 is_stmt 1
	li	a0,0
	call	I2C_Disable
.LVL20:
	.loc 1 108 17
	.loc 1 108 24 is_stmt 0
	li	a0,-1
.L1:
	.loc 1 148 1
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
.LVL21:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL22:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL23:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L20:
	.cfi_restore_state
	.loc 1 101 15 is_stmt 1
	.loc 1 101 21 is_stmt 0
	lw	s6,900(s7)
	.loc 1 101 92
	srli	s6,s6,8
	andi	s6,s6,3
	.loc 1 101 15
	beq	s6,zero,.L6
	.loc 1 111 9 is_stmt 1
	.loc 1 112 29 is_stmt 0
	lw	a4,20(s2)
	.loc 1 111 14
	lw	a5,908(s7)
.LVL25:
	.loc 1 112 11 is_stmt 1
	.loc 1 112 29 is_stmt 0
	add	a4,a4,s1
	.loc 1 112 31
	sb	a5,0(a4)
	.loc 1 112 53 is_stmt 1
	.loc 1 112 74 is_stmt 0
	lw	a4,20(s2)
	.loc 1 112 95
	srli	a3,a5,8
	.loc 1 112 74
	add	a4,a4,s1
	.loc 1 112 76
	sb	a3,1(a4)
	.loc 1 112 103 is_stmt 1
	.loc 1 112 124 is_stmt 0
	lw	a4,20(s2)
	.loc 1 112 145
	srli	a3,a5,16
	.loc 1 112 196
	srli	a5,a5,24
.LVL26:
	.loc 1 112 124
	add	a4,a4,s1
	.loc 1 112 126
	sb	a3,2(a4)
	.loc 1 112 154 is_stmt 1
	.loc 1 112 175 is_stmt 0
	lw	a4,20(s2)
	add	a4,a4,s1
	.loc 1 113 11
	addi	s1,s1,4
.LVL27:
	.loc 1 112 177
	sb	a5,3(a4)
	.loc 1 112 206 is_stmt 1
	.loc 1 113 9
	.loc 1 113 11 is_stmt 0
	andi	s1,s1,0xff
.LVL28:
	j	.L2
.L11:
	.loc 1 117 13 is_stmt 1
	.loc 1 117 24 is_stmt 0
	call	bl_timer_now_us64
.LVL29:
	.loc 1 117 44
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL30:
	.loc 1 118 13 is_stmt 1
	.loc 1 118 16 is_stmt 0
	beq	s3,s8,.L19
	.loc 1 121 13 is_stmt 1
	.loc 1 121 27 is_stmt 0
	sub	a5,a0,s4
	sgtu	a0,a5,a0
.LVL31:
	sub	a1,a1,s5
	sub	a1,a1,a0
	.loc 1 121 16
	bgt	s6,a1,.L19
	bne	a1,zero,.L9
	bgtu	s3,a5,.L19
	j	.L9
.LVL32:
.L13:
	.loc 1 128 13 is_stmt 1
	.loc 1 128 26 is_stmt 0
	lw	a4,20(s2)
	add	a4,a4,s1
	.loc 1 130 14
	addi	s1,s1,1
.LVL33:
	.loc 1 128 26
	sb	a5,0(a4)
	.loc 1 129 13 is_stmt 1
	.loc 1 130 14 is_stmt 0
	andi	s1,s1,0xff
	.loc 1 129 18
	srli	a5,a5,8
.LVL34:
	.loc 1 130 13 is_stmt 1
	j	.L12
.LVL35:
.L16:
	.loc 1 135 9
	.loc 1 135 20 is_stmt 0
	call	bl_timer_now_us64
.LVL36:
	.loc 1 135 40
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL37:
	.loc 1 136 9 is_stmt 1
	.loc 1 136 12 is_stmt 0
	beq	s3,s1,.L23
	.loc 1 139 9 is_stmt 1
	.loc 1 139 23 is_stmt 0
	sub	a5,a0,s4
	sgtu	a0,a5,a0
.LVL38:
	sub	a1,a1,s5
	sub	a1,a1,a0
	.loc 1 139 12
	blt	a1,zero,.L23
	bne	a1,zero,.L9
	bgtu	s3,a5,.L23
	j	.L9
	.cfi_endproc
.LFE21:
	.size	i2c_master_receive.constprop.0, .-i2c_master_receive.constprop.0
	.section	.text.i2c_master_send.constprop.0,"ax",@progbits
	.align	1
	.type	i2c_master_send.constprop.0, @function
i2c_master_send.constprop.0:
.LFB20:
	.loc 1 27 12 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 34 5
	.loc 1 27 12 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	s4,24(sp)
	sw	s7,12(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	mv	s5,a0
	.loc 1 34 5
	li	a0,0
.LVL40:
	.loc 1 27 12
	mv	s1,a1
	.loc 1 34 5
	call	I2C_Disable
.LVL41:
	.loc 1 35 5 is_stmt 1
	mv	a2,s5
	li	a1,0
	li	a0,0
	call	I2C_Init
.LVL42:
	.loc 1 36 5
	li	a0,0
	call	I2C_Enable
.LVL43:
	.loc 1 38 5
	.loc 1 38 18 is_stmt 0
	call	bl_timer_now_us64
.LVL44:
	.loc 1 38 38
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL45:
	.loc 1 38 16
	mv	s2,a0
	mv	s3,a1
.LVL46:
	.loc 1 40 5 is_stmt 1
	.loc 1 30 14 is_stmt 0
	li	s6,0
	.loc 1 40 12
	li	a5,0
	.loc 1 43 25
	li	s8,1073782784
	.loc 1 45 20
	li	s9,-1
.LVL47:
.L27:
	.loc 1 40 17 is_stmt 1
	.loc 1 40 24 is_stmt 0
	lhu	a4,16(s5)
	.loc 1 40 5
	bltu	a5,a4,.L33
	.loc 1 57 5 is_stmt 1
	.loc 1 57 8 is_stmt 0
	andi	a4,a4,3
	beq	a4,zero,.L35
	.loc 1 58 21
	li	s5,1073782784
.LVL48:
	.loc 1 60 16
	li	s7,-1
.LVL49:
.L45:
	.loc 1 58 15 is_stmt 1
	.loc 1 58 21 is_stmt 0
	lw	s4,900(s5)
	.loc 1 58 92
	andi	s4,s4,3
	.loc 1 58 15
	beq	s4,zero,.L38
	.loc 1 68 9 is_stmt 1
	.loc 1 68 46 is_stmt 0
	sw	s6,904(s5)
.L35:
	.loc 1 73 12
	li	s4,-1
.L48:
	.loc 1 71 11 is_stmt 1
	.loc 1 71 12 is_stmt 0
	li	a0,0
	call	I2C_IsBusy
.LVL50:
	.loc 1 71 11
	bne	a0,zero,.L41
	.loc 1 71 34
	call	I2C_TransferEndStatus
.LVL51:
	.loc 1 71 30
	beq	a0,zero,.L41
	.loc 1 82 5 is_stmt 1
	li	a0,0
	call	I2C_Disable
.LVL52:
	.loc 1 84 5
	.loc 1 84 12 is_stmt 0
	li	a0,0
	j	.L26
.LVL53:
.L33:
	.loc 1 41 9 is_stmt 1
	.loc 1 41 27 is_stmt 0
	lw	a4,20(s5)
	.loc 1 41 38
	andi	a3,a5,3
	.loc 1 41 43
	slli	a3,a3,3
	.loc 1 41 27
	add	a4,a4,a5
	lbu	a4,0(a4)
	.loc 1 42 16
	addi	s4,a5,1
	.loc 1 42 25
	andi	a5,s4,3
.LVL54:
	.loc 1 41 31
	sll	a4,a4,a3
	.loc 1 41 14
	add	s6,s6,a4
.LVL55:
	.loc 1 42 9 is_stmt 1
	.loc 1 42 12 is_stmt 0
	bne	a5,zero,.L29
.L47:
	.loc 1 43 19 is_stmt 1
	.loc 1 43 25 is_stmt 0
	lw	s7,900(s8)
	.loc 1 43 96
	andi	s7,s7,3
	.loc 1 43 19
	beq	s7,zero,.L32
	.loc 1 53 13 is_stmt 1
	.loc 1 53 50 is_stmt 0
	sw	s6,904(s8)
	.loc 1 54 13 is_stmt 1
.LVL56:
	.loc 1 54 18 is_stmt 0
	li	s6,0
.LVL57:
.L29:
	.loc 1 40 36 is_stmt 1
	.loc 1 40 37 is_stmt 0
	andi	a5,s4,0xff
.LVL58:
	j	.L27
.LVL59:
.L32:
	.loc 1 44 17 is_stmt 1
	.loc 1 44 28 is_stmt 0
	call	bl_timer_now_us64
.LVL60:
	.loc 1 44 48
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL61:
	.loc 1 45 17 is_stmt 1
	.loc 1 45 20 is_stmt 0
	beq	s1,s9,.L47
	.loc 1 48 17 is_stmt 1
	.loc 1 48 31 is_stmt 0
	sub	a5,a0,s2
	sgtu	a0,a5,a0
.LVL62:
	sub	a1,a1,s3
	sub	a1,a1,a0
	.loc 1 48 20
	bgt	s7,a1,.L47
	bne	a1,zero,.L36
	bgtu	s1,a5,.L47
.LVL63:
.L36:
	.loc 1 49 21 is_stmt 1
	li	a0,0
	call	I2C_Disable
.LVL64:
	.loc 1 50 21
	.loc 1 50 28 is_stmt 0
	li	a0,-1
.L26:
	.loc 1 85 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL65:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL66:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
.LVL67:
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL68:
.L38:
	.cfi_restore_state
	.loc 1 59 13 is_stmt 1
	.loc 1 59 24 is_stmt 0
	call	bl_timer_now_us64
.LVL69:
	.loc 1 59 44
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL70:
	.loc 1 60 13 is_stmt 1
	.loc 1 60 16 is_stmt 0
	beq	s1,s7,.L45
	.loc 1 63 13 is_stmt 1
	.loc 1 63 27 is_stmt 0
	sub	a5,a0,s2
	sgtu	a0,a5,a0
.LVL71:
	sub	a1,a1,s3
	sub	a1,a1,a0
	.loc 1 63 16
	bgt	s4,a1,.L45
	bne	a1,zero,.L36
	bgtu	s1,a5,.L45
	j	.L36
.L41:
	.loc 1 72 9 is_stmt 1
	.loc 1 72 20 is_stmt 0
	call	bl_timer_now_us64
.LVL72:
	.loc 1 72 40
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL73:
	.loc 1 73 9 is_stmt 1
	.loc 1 73 12 is_stmt 0
	beq	s1,s4,.L48
	.loc 1 76 9 is_stmt 1
	.loc 1 76 23 is_stmt 0
	sub	a5,a0,s2
	sgtu	a0,a5,a0
.LVL74:
	sub	a1,a1,s3
	sub	a1,a1,a0
	.loc 1 76 12
	blt	a1,zero,.L48
	bne	a1,zero,.L36
	bgtu	s1,a5,.L48
	j	.L36
	.cfi_endproc
.LFE20:
	.size	i2c_master_send.constprop.0, .-i2c_master_send.constprop.0
	.section	.text.hosal_i2c_init,"ax",@progbits
	.align	1
	.globl	hosal_i2c_init
	.type	hosal_i2c_init, @function
hosal_i2c_init:
.LFB10:
	.loc 1 151 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 152 5
	.loc 1 154 5
	.loc 1 154 8 is_stmt 0
	beq	a0,zero,.L53
	.loc 1 151 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 154 20 discriminator 1
	lbu	a5,0(a0)
	mv	s1,a0
	.loc 1 156 16 discriminator 1
	li	a0,-1
.LVL76:
	.loc 1 154 20 discriminator 1
	bne	a5,zero,.L51
	.loc 1 159 5 is_stmt 1
	.loc 1 159 30 is_stmt 0
	lbu	a5,12(s1)
	.loc 1 162 5
	li	a2,2
	addi	a1,s0,-24
	.loc 1 159 30
	sw	a5,-24(s0)
	.loc 1 160 5 is_stmt 1
	.loc 1 160 30 is_stmt 0
	lbu	a5,13(s1)
	.loc 1 162 5
	li	a0,6
	.loc 1 160 30
	sw	a5,-20(s0)
	.loc 1 162 5 is_stmt 1
	call	GLB_GPIO_Func_Init
.LVL77:
	.loc 1 163 5
	lbu	a0,0(s1)
	call	I2C_Disable
.LVL78:
	.loc 1 164 5
	lw	a0,8(s1)
	li	a1,0
	call	i2c_set_freq
.LVL79:
	.loc 1 166 5
	.loc 1 166 12 is_stmt 0
	li	a0,0
.L51:
	.loc 1 167 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL80:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL81:
.L53:
	.loc 1 156 16
	li	a0,-1
.LVL82:
	.loc 1 167 1
	ret
	.cfi_endproc
.LFE10:
	.size	hosal_i2c_init, .-hosal_i2c_init
	.section	.text.hosal_i2c_master_send,"ax",@progbits
	.align	1
	.globl	hosal_i2c_master_send
	.type	hosal_i2c_master_send, @function
hosal_i2c_master_send:
.LFB11:
	.loc 1 171 1 is_stmt 1
	.cfi_startproc
.LVL83:
	.loc 1 172 5
	.loc 1 171 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 172 22
	sw	zero,-36(s0)
	sb	zero,-32(s0)
	sw	zero,-28(s0)
	.loc 1 181 5 is_stmt 1
	.loc 1 181 8 is_stmt 0
	beq	a0,zero,.L61
	.loc 1 183 16 discriminator 1
	li	a0,-1
.LVL84:
	.loc 1 181 20 discriminator 1
	beq	a2,zero,.L59
	.loc 1 181 36 discriminator 2
	beq	a3,zero,.L59
	mv	a5,a1
	.loc 1 190 12
	addi	a0,s0,-40
	mv	a1,a4
.LVL85:
	.loc 1 186 5 is_stmt 1
	.loc 1 186 28 is_stmt 0
	sb	a5,-40(s0)
	.loc 1 187 5 is_stmt 1
	.loc 1 187 23 is_stmt 0
	sw	a2,-20(s0)
	.loc 1 188 5 is_stmt 1
	.loc 1 188 27 is_stmt 0
	sh	a3,-24(s0)
	.loc 1 190 5 is_stmt 1
	.loc 1 190 12 is_stmt 0
	call	i2c_master_send.constprop.0
.LVL86:
.L59:
	.loc 1 191 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL87:
.L61:
	.cfi_restore_state
	.loc 1 183 16
	li	a0,-1
.LVL88:
	j	.L59
	.cfi_endproc
.LFE11:
	.size	hosal_i2c_master_send, .-hosal_i2c_master_send
	.section	.text.hosal_i2c_master_recv,"ax",@progbits
	.align	1
	.globl	hosal_i2c_master_recv
	.type	hosal_i2c_master_recv, @function
hosal_i2c_master_recv:
.LFB12:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 196 5
	.loc 1 195 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 196 22
	sw	zero,-36(s0)
	sb	zero,-32(s0)
	sw	zero,-28(s0)
	.loc 1 205 5 is_stmt 1
	.loc 1 205 8 is_stmt 0
	beq	a0,zero,.L67
	.loc 1 207 16 discriminator 1
	li	a0,-1
.LVL90:
	.loc 1 205 20 discriminator 1
	beq	a2,zero,.L65
	.loc 1 205 36 discriminator 2
	beq	a3,zero,.L65
	mv	a5,a1
	.loc 1 214 12
	addi	a0,s0,-40
	mv	a1,a4
.LVL91:
	.loc 1 210 5 is_stmt 1
	.loc 1 210 28 is_stmt 0
	sb	a5,-40(s0)
	.loc 1 211 5 is_stmt 1
	.loc 1 211 23 is_stmt 0
	sw	a2,-20(s0)
	.loc 1 212 5 is_stmt 1
	.loc 1 212 27 is_stmt 0
	sh	a3,-24(s0)
	.loc 1 214 5 is_stmt 1
	.loc 1 214 12 is_stmt 0
	call	i2c_master_receive.constprop.0
.LVL92:
.L65:
	.loc 1 215 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL93:
.L67:
	.cfi_restore_state
	.loc 1 207 16
	li	a0,-1
.LVL94:
	j	.L65
	.cfi_endproc
.LFE12:
	.size	hosal_i2c_master_recv, .-hosal_i2c_master_recv
	.section	.text.hosal_i2c_slave_send,"ax",@progbits
	.align	1
	.globl	hosal_i2c_slave_send
	.type	hosal_i2c_slave_send, @function
hosal_i2c_slave_send:
.LFB13:
	.loc 1 218 1 is_stmt 1
	.cfi_startproc
.LVL95:
	.loc 1 219 5
	.loc 1 220 9
	.loc 1 221 9
	.loc 1 218 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 227 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,-1
.LVL96:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	hosal_i2c_slave_send, .-hosal_i2c_slave_send
	.section	.text.hosal_i2c_slave_recv,"ax",@progbits
	.align	1
	.globl	hosal_i2c_slave_recv
	.type	hosal_i2c_slave_recv, @function
hosal_i2c_slave_recv:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	hosal_i2c_slave_recv, .-hosal_i2c_slave_recv
	.section	.text.hosal_i2c_mem_write,"ax",@progbits
	.align	1
	.globl	hosal_i2c_mem_write
	.type	hosal_i2c_mem_write, @function
hosal_i2c_mem_write:
.LFB15:
	.loc 1 244 1 is_stmt 1
	.cfi_startproc
.LVL97:
	.loc 1 245 5
	.loc 1 244 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	ra,76(sp)
	mv	s6,a1
	.loc 1 245 22
	lui	a1,%hi(.LANCHOR0)
.LVL98:
	.loc 1 244 1
	.cfi_offset 1, -4
	.loc 1 244 1
	mv	s7,a0
	mv	s5,a2
	.loc 1 245 22
	addi	a1,a1,%lo(.LANCHOR0)
	li	a2,24
.LVL99:
	addi	a0,s0,-72
.LVL100:
	.loc 1 244 1
	mv	s4,a3
	mv	s2,a4
	mv	s1,a5
	mv	s3,a6
	.loc 1 245 22
	call	memcpy
.LVL101:
	.loc 1 254 5 is_stmt 1
	.loc 1 256 16 is_stmt 0
	li	a0,-1
	.loc 1 254 8
	beq	s7,zero,.L75
	.loc 1 254 20 discriminator 1
	beq	s2,zero,.L75
	.loc 1 254 36 discriminator 2
	beq	s1,zero,.L75
	.loc 1 259 5 is_stmt 1
	.loc 1 265 12 is_stmt 0
	mv	a1,s3
	addi	a0,s0,-72
	.loc 1 259 28
	sb	s6,-72(s0)
	.loc 1 260 5 is_stmt 1
	.loc 1 260 26 is_stmt 0
	sw	s5,-60(s0)
	.loc 1 261 5 is_stmt 1
	.loc 1 261 30 is_stmt 0
	sb	s4,-64(s0)
	.loc 1 262 5 is_stmt 1
	.loc 1 262 23 is_stmt 0
	sw	s2,-52(s0)
	.loc 1 263 5 is_stmt 1
	.loc 1 263 27 is_stmt 0
	sh	s1,-56(s0)
	.loc 1 265 5 is_stmt 1
	.loc 1 265 12 is_stmt 0
	call	i2c_master_send.constprop.0
.LVL102:
.L75:
	.loc 1 266 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
.LVL103:
	lw	s3,60(sp)
	.cfi_restore 19
.LVL104:
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
.LVL105:
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
.LVL106:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	hosal_i2c_mem_write, .-hosal_i2c_mem_write
	.section	.text.hosal_i2c_mem_read,"ax",@progbits
	.align	1
	.globl	hosal_i2c_mem_read
	.type	hosal_i2c_mem_read, @function
hosal_i2c_mem_read:
.LFB16:
	.loc 1 271 1 is_stmt 1
	.cfi_startproc
.LVL107:
	.loc 1 272 5
	.loc 1 271 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	ra,76(sp)
	mv	s6,a1
	.loc 1 272 22
	lui	a1,%hi(.LANCHOR0)
.LVL108:
	.loc 1 271 1
	.cfi_offset 1, -4
	.loc 1 271 1
	mv	s7,a0
	mv	s5,a2
	.loc 1 272 22
	addi	a1,a1,%lo(.LANCHOR0)
	li	a2,24
.LVL109:
	addi	a0,s0,-72
.LVL110:
	.loc 1 271 1
	mv	s4,a3
	mv	s2,a4
	mv	s1,a5
	mv	s3,a6
	.loc 1 272 22
	call	memcpy
.LVL111:
	.loc 1 281 5 is_stmt 1
	.loc 1 283 16 is_stmt 0
	li	a0,-1
	.loc 1 281 8
	beq	s7,zero,.L81
	.loc 1 281 20 discriminator 1
	beq	s2,zero,.L81
	.loc 1 281 36 discriminator 2
	beq	s1,zero,.L81
	.loc 1 286 5 is_stmt 1
	.loc 1 292 12 is_stmt 0
	mv	a1,s3
	addi	a0,s0,-72
	.loc 1 286 28
	sb	s6,-72(s0)
	.loc 1 287 5 is_stmt 1
	.loc 1 287 26 is_stmt 0
	sw	s5,-60(s0)
	.loc 1 288 5 is_stmt 1
	.loc 1 288 30 is_stmt 0
	sb	s4,-64(s0)
	.loc 1 289 5 is_stmt 1
	.loc 1 289 23 is_stmt 0
	sw	s2,-52(s0)
	.loc 1 290 5 is_stmt 1
	.loc 1 290 27 is_stmt 0
	sh	s1,-56(s0)
	.loc 1 292 5 is_stmt 1
	.loc 1 292 12 is_stmt 0
	call	i2c_master_receive.constprop.0
.LVL112:
.L81:
	.loc 1 293 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
.LVL113:
	lw	s3,60(sp)
	.cfi_restore 19
.LVL114:
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
.LVL115:
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
.LVL116:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	hosal_i2c_mem_read, .-hosal_i2c_mem_read
	.section	.text.hosal_i2c_finalize,"ax",@progbits
	.align	1
	.globl	hosal_i2c_finalize
	.type	hosal_i2c_finalize, @function
hosal_i2c_finalize:
.LFB17:
	.loc 1 296 1 is_stmt 1
	.cfi_startproc
.LVL117:
	.loc 1 297 5
	.loc 1 297 8 is_stmt 0
	beq	a0,zero,.L89
	.loc 1 297 20 discriminator 1
	lbu	a5,0(a0)
	.loc 1 299 16 discriminator 1
	li	a0,-1
.LVL118:
	.loc 1 297 20 discriminator 1
	bne	a5,zero,.L92
	.loc 1 302 5 is_stmt 1
	.loc 1 296 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 302 5
	li	a0,0
	call	I2C_Disable
.LVL119:
	.loc 1 304 5 is_stmt 1
	.loc 1 305 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 304 12
	li	a0,0
	.loc 1 305 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL120:
.L89:
	.loc 1 299 16
	li	a0,-1
.LVL121:
	ret
.L92:
	.loc 1 305 1
	ret
	.cfi_endproc
.LFE17:
	.size	hosal_i2c_finalize, .-hosal_i2c_finalize
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	80
	.zero	3
	.word	0
	.byte	2
	.zero	3
	.word	0
	.half	0
	.zero	2
	.word	0
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_i2c.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_i2c.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_timer.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb1a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF101
	.byte	0xc
	.4byte	.LASF102
	.4byte	.LASF103
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x54
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x6c
	.byte	0x5
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x7f
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x92
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xca
	.byte	0x9
	.4byte	.LASF14
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xaf
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x39
	.byte	0xe
	.4byte	0xf1
	.byte	0x9
	.4byte	.LASF17
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3c
	.byte	0x2
	.4byte	0xd6
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x41
	.byte	0xe
	.4byte	0x118
	.byte	0x9
	.4byte	.LASF20
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0
	.byte	0xa
	.byte	0x18
	.byte	0x4
	.byte	0x74
	.byte	0x9
	.4byte	0x170
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x75
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x76
	.byte	0x11
	.4byte	0xca
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x77
	.byte	0xd
	.4byte	0x5b
	.byte	0x8
	.byte	0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x78
	.byte	0xe
	.4byte	0x86
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0x4
	.byte	0x79
	.byte	0xe
	.4byte	0x73
	.byte	0x10
	.byte	0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0x7a
	.byte	0xe
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x7b
	.byte	0x2
	.4byte	0x118
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x4c
	.byte	0x1
	.4byte	0x21b
	.byte	0x9
	.4byte	.LASF29
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9
	.4byte	.LASF31
	.byte	0x2
	.byte	0x9
	.4byte	.LASF32
	.byte	0x3
	.byte	0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x9
	.4byte	.LASF36
	.byte	0x7
	.byte	0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x9
	.4byte	.LASF38
	.byte	0x9
	.byte	0x9
	.4byte	.LASF39
	.byte	0xa
	.byte	0x9
	.4byte	.LASF40
	.byte	0xb
	.byte	0x9
	.4byte	.LASF41
	.byte	0xc
	.byte	0x9
	.4byte	.LASF42
	.byte	0xd
	.byte	0x9
	.4byte	.LASF43
	.byte	0xe
	.byte	0x9
	.4byte	.LASF44
	.byte	0xf
	.byte	0x9
	.4byte	.LASF45
	.byte	0x10
	.byte	0x9
	.4byte	.LASF46
	.byte	0x11
	.byte	0x9
	.4byte	.LASF47
	.byte	0x12
	.byte	0x9
	.4byte	.LASF48
	.byte	0x13
	.byte	0x9
	.4byte	.LASF49
	.byte	0x14
	.byte	0x9
	.4byte	.LASF50
	.byte	0x15
	.byte	0x9
	.4byte	.LASF51
	.byte	0x16
	.byte	0x9
	.4byte	.LASF52
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF53
	.byte	0x5
	.byte	0x65
	.byte	0x2
	.4byte	0x17c
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x71
	.byte	0x1
	.4byte	0x272
	.byte	0x9
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9
	.4byte	.LASF55
	.byte	0x2
	.byte	0x9
	.4byte	.LASF56
	.byte	0x4
	.byte	0x9
	.4byte	.LASF57
	.byte	0x6
	.byte	0x9
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9
	.4byte	.LASF59
	.byte	0x8
	.byte	0x9
	.4byte	.LASF60
	.byte	0x9
	.byte	0x9
	.4byte	.LASF61
	.byte	0xa
	.byte	0x9
	.4byte	.LASF62
	.byte	0xb
	.byte	0x9
	.4byte	.LASF63
	.byte	0xe
	.byte	0
	.byte	0xa
	.byte	0xc
	.byte	0x6
	.byte	0x21
	.byte	0x9
	.4byte	0x2bd
	.byte	0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0x86
	.byte	0
	.byte	0xb
	.4byte	.LASF65
	.byte	0x6
	.byte	0x23
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0xc
	.string	"scl"
	.byte	0x6
	.byte	0x24
	.byte	0xd
	.4byte	0x5b
	.byte	0x8
	.byte	0xc
	.string	"sda"
	.byte	0x6
	.byte	0x25
	.byte	0xd
	.4byte	0x5b
	.byte	0x9
	.byte	0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0x26
	.byte	0xd
	.4byte	0x5b
	.byte	0xa
	.byte	0
	.byte	0x4
	.4byte	.LASF67
	.byte	0x6
	.byte	0x27
	.byte	0x3
	.4byte	0x272
	.byte	0xa
	.byte	0x14
	.byte	0x6
	.byte	0x2c
	.byte	0x9
	.4byte	0x2fa
	.byte	0xb
	.4byte	.LASF68
	.byte	0x6
	.byte	0x2d
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0xb
	.4byte	.LASF69
	.byte	0x6
	.byte	0x2e
	.byte	0x18
	.4byte	0x2bd
	.byte	0x4
	.byte	0xb
	.4byte	.LASF70
	.byte	0x6
	.byte	0x2f
	.byte	0xb
	.4byte	0xa0
	.byte	0x10
	.byte	0
	.byte	0x4
	.4byte	.LASF71
	.byte	0x6
	.byte	0x30
	.byte	0x3
	.4byte	0x2c9
	.byte	0xd
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x127
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x342
	.byte	0xe
	.string	"i2c"
	.byte	0x1
	.2byte	0x127
	.byte	0x29
	.4byte	0x342
	.4byte	.LLST38
	.byte	0xf
	.4byte	.LVL119
	.4byte	0xaa8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2fa
	.byte	0xd
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x10c
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x42d
	.byte	0xe
	.string	"i2c"
	.byte	0x1
	.2byte	0x10c
	.byte	0x29
	.4byte	0x342
	.4byte	.LLST31
	.byte	0x11
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x10c
	.byte	0x37
	.4byte	0x73
	.4byte	.LLST32
	.byte	0x11
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x10c
	.byte	0x4a
	.4byte	0x86
	.4byte	.LLST33
	.byte	0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x10d
	.byte	0x23
	.4byte	0x73
	.4byte	.LLST34
	.byte	0x11
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x10d
	.byte	0x3b
	.4byte	0xa2
	.4byte	.LLST35
	.byte	0x11
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x10d
	.byte	0x4a
	.4byte	0x73
	.4byte	.LLST36
	.byte	0x11
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x10e
	.byte	0x23
	.4byte	0x86
	.4byte	.LLST37
	.byte	0x12
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x110
	.byte	0x16
	.4byte	0x170
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x13
	.4byte	.LVL111
	.4byte	0xab4
	.4byte	0x40e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb8,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0xf
	.4byte	.LVL112
	.4byte	0x828
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb8,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.4byte	0x753
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf1
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x509
	.byte	0x16
	.string	"i2c"
	.byte	0x1
	.byte	0xf1
	.byte	0x2a
	.4byte	0x342
	.4byte	.LLST24
	.byte	0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0xf1
	.byte	0x38
	.4byte	0x73
	.4byte	.LLST25
	.byte	0x17
	.4byte	.LASF75
	.byte	0x1
	.byte	0xf1
	.byte	0x4b
	.4byte	0x86
	.4byte	.LLST26
	.byte	0x17
	.4byte	.LASF76
	.byte	0x1
	.byte	0xf2
	.byte	0x24
	.4byte	0x73
	.4byte	.LLST27
	.byte	0x17
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf2
	.byte	0x42
	.4byte	0x509
	.4byte	.LLST28
	.byte	0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0xf2
	.byte	0x51
	.4byte	0x73
	.4byte	.LLST29
	.byte	0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0xf3
	.byte	0x24
	.4byte	0x86
	.4byte	.LLST30
	.byte	0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0xf5
	.byte	0x16
	.4byte	0x170
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x13
	.4byte	.LVL101
	.4byte	0xab4
	.4byte	0x4ea
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb8,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0xf
	.4byte	.LVL102
	.4byte	0x94f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb8,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.4byte	0x7c9
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x67
	.byte	0x19
	.4byte	.LASF104
	.byte	0x1
	.byte	0xe5
	.byte	0x5
	.4byte	0x25
	.4byte	0x550
	.byte	0x1a
	.string	"i2c"
	.byte	0x1
	.byte	0xe5
	.byte	0x2b
	.4byte	0x342
	.byte	0x1b
	.4byte	.LASF27
	.byte	0x1
	.byte	0xe5
	.byte	0x39
	.4byte	0xa2
	.byte	0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0xe5
	.byte	0x48
	.4byte	0x73
	.byte	0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0xe5
	.byte	0x57
	.4byte	0x86
	.byte	0
	.byte	0x1c
	.4byte	.LASF105
	.byte	0x1
	.byte	0xd9
	.byte	0x5
	.4byte	0x25
	.byte	0x1
	.4byte	0x592
	.byte	0x1a
	.string	"i2c"
	.byte	0x1
	.byte	0xd9
	.byte	0x2b
	.4byte	0x342
	.byte	0x1b
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd9
	.byte	0x3f
	.4byte	0x509
	.byte	0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd9
	.byte	0x4e
	.4byte	0x73
	.byte	0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0xd9
	.byte	0x5d
	.4byte	0x86
	.byte	0
	.byte	0x15
	.4byte	.LASF82
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x62a
	.byte	0x16
	.string	"i2c"
	.byte	0x1
	.byte	0xc1
	.byte	0x2c
	.4byte	0x342
	.4byte	.LLST18
	.byte	0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc1
	.byte	0x3a
	.4byte	0x73
	.4byte	.LLST19
	.byte	0x17
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc1
	.byte	0x4d
	.4byte	0xa2
	.4byte	.LLST20
	.byte	0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0xc2
	.byte	0x26
	.4byte	0x73
	.4byte	.LLST21
	.byte	0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0xc2
	.byte	0x35
	.4byte	0x86
	.4byte	.LLST22
	.byte	0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0xc4
	.byte	0x16
	.4byte	0x170
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xf
	.4byte	.LVL92
	.4byte	0x828
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x14
	.4byte	0x753
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa9
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c2
	.byte	0x16
	.string	"i2c"
	.byte	0x1
	.byte	0xa9
	.byte	0x2c
	.4byte	0x342
	.4byte	.LLST13
	.byte	0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0xa9
	.byte	0x3a
	.4byte	0x73
	.4byte	.LLST14
	.byte	0x17
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa9
	.byte	0x53
	.4byte	0x509
	.4byte	.LLST15
	.byte	0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0xaa
	.byte	0x26
	.4byte	0x73
	.4byte	.LLST16
	.byte	0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0xaa
	.byte	0x35
	.4byte	0x86
	.4byte	.LLST17
	.byte	0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0xac
	.byte	0x16
	.4byte	0x170
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xf
	.4byte	.LVL86
	.4byte	0x94f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x14
	.4byte	0x7c9
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0x96
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x732
	.byte	0x16
	.string	"i2c"
	.byte	0x1
	.byte	0x96
	.byte	0x25
	.4byte	0x342
	.4byte	.LLST12
	.byte	0x18
	.4byte	.LASF85
	.byte	0x1
	.byte	0x98
	.byte	0x13
	.4byte	0x732
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x13
	.4byte	.LVL77
	.4byte	0xabf
	.4byte	0x719
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1d
	.4byte	.LVL78
	.4byte	0xaa8
	.byte	0xf
	.4byte	.LVL79
	.4byte	0xacc
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x21b
	.4byte	0x742
	.byte	0x1f
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x20
	.4byte	.LASF91
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x7b2
	.byte	0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x57
	.byte	0x2b
	.4byte	0xf1
	.byte	0x1a
	.string	"cfg"
	.byte	0x1
	.byte	0x57
	.byte	0x44
	.4byte	0x7b2
	.byte	0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x57
	.byte	0x52
	.4byte	0x86
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0x59
	.byte	0xd
	.4byte	0x5b
	.byte	0x22
	.4byte	.LASF87
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	0x86
	.byte	0x22
	.4byte	.LASF88
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	0x86
	.byte	0x22
	.4byte	.LASF89
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.4byte	0x48
	.byte	0x22
	.4byte	.LASF90
	.byte	0x1
	.byte	0x5c
	.byte	0x19
	.4byte	0x48
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x170
	.byte	0x20
	.4byte	.LASF92
	.byte	0x1
	.byte	0x1b
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x828
	.byte	0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x1b
	.byte	0x28
	.4byte	0xf1
	.byte	0x1a
	.string	"cfg"
	.byte	0x1
	.byte	0x1b
	.byte	0x41
	.4byte	0x7b2
	.byte	0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1b
	.byte	0x4f
	.4byte	0x86
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	0x5b
	.byte	0x22
	.4byte	.LASF87
	.byte	0x1
	.byte	0x1e
	.byte	0xe
	.4byte	0x86
	.byte	0x22
	.4byte	.LASF88
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.4byte	0x86
	.byte	0x22
	.4byte	.LASF89
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.4byte	0x48
	.byte	0x22
	.4byte	.LASF90
	.byte	0x1
	.byte	0x20
	.byte	0x19
	.4byte	0x48
	.byte	0
	.byte	0x23
	.4byte	0x742
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x94f
	.byte	0x24
	.4byte	0x75f
	.4byte	.LLST0
	.byte	0x24
	.4byte	0x76b
	.4byte	.LLST1
	.byte	0x25
	.4byte	0x777
	.4byte	.LLST2
	.byte	0x25
	.4byte	0x781
	.4byte	.LLST3
	.byte	0x26
	.4byte	0x78d
	.4byte	0x4000a300
	.byte	0x25
	.4byte	0x799
	.4byte	.LLST4
	.byte	0x25
	.4byte	0x7a5
	.4byte	.LLST5
	.byte	0x27
	.4byte	0x753
	.byte	0
	.byte	0x13
	.4byte	.LVL2
	.4byte	0xaa8
	.4byte	0x893
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL3
	.4byte	0xad8
	.4byte	0x8b1
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL4
	.4byte	0xae4
	.4byte	0x8c4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL5
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL6
	.4byte	0xafc
	.byte	0x13
	.4byte	.LVL12
	.4byte	0xb05
	.4byte	0x8e9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL13
	.4byte	0xb11
	.byte	0x13
	.4byte	.LVL14
	.4byte	0xaa8
	.4byte	0x905
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL16
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL17
	.4byte	0xafc
	.byte	0x13
	.4byte	.LVL20
	.4byte	0xaa8
	.4byte	0x92a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL29
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL30
	.4byte	0xafc
	.byte	0x1d
	.4byte	.LVL36
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL37
	.4byte	0xafc
	.byte	0
	.byte	0x23
	.4byte	0x7b8
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xa76
	.byte	0x24
	.4byte	0x7d5
	.4byte	.LLST6
	.byte	0x24
	.4byte	0x7e1
	.4byte	.LLST7
	.byte	0x25
	.4byte	0x7ed
	.4byte	.LLST8
	.byte	0x25
	.4byte	0x7f7
	.4byte	.LLST9
	.byte	0x26
	.4byte	0x803
	.4byte	0x4000a300
	.byte	0x25
	.4byte	0x80f
	.4byte	.LLST10
	.byte	0x25
	.4byte	0x81b
	.4byte	.LLST11
	.byte	0x27
	.4byte	0x7c9
	.byte	0
	.byte	0x13
	.4byte	.LVL41
	.4byte	0xaa8
	.4byte	0x9ba
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL42
	.4byte	0xad8
	.4byte	0x9d8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL43
	.4byte	0xae4
	.4byte	0x9eb
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL44
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL45
	.4byte	0xafc
	.byte	0x13
	.4byte	.LVL50
	.4byte	0xb05
	.4byte	0xa10
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL51
	.4byte	0xb11
	.byte	0x13
	.4byte	.LVL52
	.4byte	0xaa8
	.4byte	0xa2c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL60
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL61
	.4byte	0xafc
	.byte	0x13
	.4byte	.LVL64
	.4byte	0xaa8
	.4byte	0xa51
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL69
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL70
	.4byte	0xafc
	.byte	0x1d
	.4byte	.LVL72
	.4byte	0xaf0
	.byte	0x1d
	.4byte	.LVL73
	.4byte	0xafc
	.byte	0
	.byte	0x23
	.4byte	0x550
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa8
	.byte	0x24
	.4byte	0x561
	.4byte	.LLST23
	.byte	0x28
	.4byte	0x56d
	.byte	0x1
	.byte	0x5b
	.byte	0x28
	.4byte	0x579
	.byte	0x1
	.byte	0x5c
	.byte	0x28
	.4byte	0x585
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0x29
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x4
	.byte	0xb0
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF106
	.4byte	.LASF107
	.byte	0xa
	.byte	0
	.byte	0x2b
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x277
	.byte	0xd
	.byte	0x29
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x8
	.byte	0x1a
	.byte	0x6
	.byte	0x29
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x4
	.byte	0xb5
	.byte	0x6
	.byte	0x29
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x4
	.byte	0xaf
	.byte	0x6
	.byte	0x29
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x9
	.byte	0x6
	.byte	0xa
	.byte	0x2c
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x29
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x4
	.byte	0xb6
	.byte	0xd
	.byte	0x29
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x4
	.byte	0xb7
	.byte	0xd
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
	.byte	0x5
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
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
	.byte	0x12
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST38:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL116
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL115
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL107
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL111-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL107
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL111-1
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL113
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL107
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL111-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL107
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL111-1
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL114
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL106
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL99
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL105
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL97
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL101-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL97
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL101-1
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL103
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL97
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL101-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL97
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL101-1
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL104
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92-1
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL92-1
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL89
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL92-1
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL83
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL86-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL83
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL83
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL86-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL8
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL24
	.4byte	.LFE21
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL63
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41-1
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL68
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL47
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	.LVL68
	.4byte	.LFE20
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"priv"
.LASF99:
	.string	"I2C_IsBusy"
.LASF63:
	.string	"GPIO_FUN_JTAG"
.LASF54:
	.string	"GPIO_FUN_SDIO"
.LASF108:
	.string	"__udivdi3"
.LASF22:
	.string	"slaveAddr"
.LASF97:
	.string	"I2C_Enable"
.LASF27:
	.string	"data"
.LASF21:
	.string	"I2C_READ"
.LASF76:
	.string	"mem_addr_size"
.LASF103:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF87:
	.string	"temp"
.LASF61:
	.string	"GPIO_FUN_ANALOG"
.LASF107:
	.string	"__builtin_memcpy"
.LASF20:
	.string	"I2C_WRITE"
.LASF56:
	.string	"GPIO_FUN_SPI"
.LASF4:
	.string	"long long int"
.LASF106:
	.string	"memcpy"
.LASF66:
	.string	"mode"
.LASF79:
	.string	"hosal_i2c_mem_write"
.LASF18:
	.string	"I2C_ID_MAX"
.LASF40:
	.string	"GLB_GPIO_PIN_11"
.LASF2:
	.string	"short int"
.LASF5:
	.string	"int64_t"
.LASF72:
	.string	"hosal_i2c_finalize"
.LASF64:
	.string	"address_width"
.LASF95:
	.string	"i2c_set_freq"
.LASF75:
	.string	"mem_addr"
.LASF44:
	.string	"GLB_GPIO_PIN_15"
.LASF26:
	.string	"dataSize"
.LASF45:
	.string	"GLB_GPIO_PIN_16"
.LASF6:
	.string	"uint8_t"
.LASF102:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_i2c.c"
.LASF24:
	.string	"subAddrSize"
.LASF104:
	.string	"hosal_i2c_slave_recv"
.LASF14:
	.string	"DISABLE"
.LASF69:
	.string	"config"
.LASF39:
	.string	"GLB_GPIO_PIN_10"
.LASF65:
	.string	"freq"
.LASF41:
	.string	"GLB_GPIO_PIN_12"
.LASF42:
	.string	"GLB_GPIO_PIN_13"
.LASF43:
	.string	"GLB_GPIO_PIN_14"
.LASF57:
	.string	"GPIO_FUN_I2C"
.LASF98:
	.string	"bl_timer_now_us64"
.LASF46:
	.string	"GLB_GPIO_PIN_17"
.LASF47:
	.string	"GLB_GPIO_PIN_18"
.LASF48:
	.string	"GLB_GPIO_PIN_19"
.LASF38:
	.string	"GLB_GPIO_PIN_9"
.LASF3:
	.string	"long int"
.LASF90:
	.string	"time_end"
.LASF11:
	.string	"long unsigned int"
.LASF105:
	.string	"hosal_i2c_slave_send"
.LASF28:
	.string	"I2C_Transfer_Cfg"
.LASF59:
	.string	"GPIO_FUN_PWM"
.LASF53:
	.string	"GLB_GPIO_Type"
.LASF7:
	.string	"unsigned char"
.LASF67:
	.string	"hosal_i2c_config_t"
.LASF23:
	.string	"stopEveryByte"
.LASF1:
	.string	"signed char"
.LASF88:
	.string	"I2Cx"
.LASF12:
	.string	"long long unsigned int"
.LASF94:
	.string	"GLB_GPIO_Func_Init"
.LASF10:
	.string	"uint32_t"
.LASF60:
	.string	"GPIO_FUN_EXT_PA"
.LASF8:
	.string	"uint16_t"
.LASF31:
	.string	"GLB_GPIO_PIN_2"
.LASF92:
	.string	"i2c_master_send"
.LASF32:
	.string	"GLB_GPIO_PIN_3"
.LASF33:
	.string	"GLB_GPIO_PIN_4"
.LASF73:
	.string	"hosal_i2c_mem_read"
.LASF50:
	.string	"GLB_GPIO_PIN_21"
.LASF51:
	.string	"GLB_GPIO_PIN_22"
.LASF35:
	.string	"GLB_GPIO_PIN_6"
.LASF36:
	.string	"GLB_GPIO_PIN_7"
.LASF58:
	.string	"GPIO_FUN_UART"
.LASF37:
	.string	"GLB_GPIO_PIN_8"
.LASF13:
	.string	"char"
.LASF62:
	.string	"GPIO_FUN_SWGPIO"
.LASF9:
	.string	"short unsigned int"
.LASF55:
	.string	"GPIO_FUN_FLASH"
.LASF77:
	.string	"size"
.LASF91:
	.string	"i2c_master_receive"
.LASF78:
	.string	"timeout"
.LASF49:
	.string	"GLB_GPIO_PIN_20"
.LASF84:
	.string	"hosal_i2c_init"
.LASF68:
	.string	"port"
.LASF89:
	.string	"time_start"
.LASF19:
	.string	"I2C_ID_Type"
.LASF29:
	.string	"GLB_GPIO_PIN_0"
.LASF71:
	.string	"hosal_i2c_dev_t"
.LASF30:
	.string	"GLB_GPIO_PIN_1"
.LASF83:
	.string	"hosal_i2c_master_send"
.LASF101:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF86:
	.string	"i2cNo"
.LASF93:
	.string	"I2C_Disable"
.LASF82:
	.string	"hosal_i2c_master_recv"
.LASF34:
	.string	"GLB_GPIO_PIN_5"
.LASF100:
	.string	"I2C_TransferEndStatus"
.LASF74:
	.string	"dev_addr"
.LASF16:
	.string	"BL_Fun_Type"
.LASF85:
	.string	"gpiopins"
.LASF52:
	.string	"GLB_GPIO_PIN_MAX"
.LASF25:
	.string	"subAddr"
.LASF81:
	.string	"i2c_cfg_send"
.LASF96:
	.string	"I2C_Init"
.LASF0:
	.string	"unsigned int"
.LASF80:
	.string	"i2c_cfg_recv"
.LASF15:
	.string	"ENABLE"
.LASF17:
	.string	"I2C0_ID"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
