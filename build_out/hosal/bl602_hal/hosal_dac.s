	.file	"hosal_dac.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.dac_dma_irq_handler,"ax",@progbits
	.align	1
	.globl	dac_dma_irq_handler
	.type	dac_dma_irq_handler, @function
dac_dma_irq_handler:
.LFB13:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_dac.c"
	.loc 1 189 1
	.cfi_startproc
.LVL0:
	.loc 1 190 5
	.loc 1 192 5
	.loc 1 194 5
	.loc 1 189 1 is_stmt 0
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
	.loc 1 189 1
	mv	s1,a0
	.loc 1 194 8
	bne	a1,zero,.L2
	.loc 1 195 9 is_stmt 1
	.loc 1 195 16 is_stmt 0
	lw	a5,16(a0)
	.loc 1 195 12
	beq	a5,zero,.L2
	.loc 1 196 13 is_stmt 1
	lw	a0,24(a0)
.LVL1:
	jalr	a5
.LVL2:
.L2:
	.loc 1 199 9
	.loc 1 202 5
	.loc 1 202 19 is_stmt 0
	lw	a0,28(s1)
	.loc 1 202 8
	beq	a0,zero,.L1
	.loc 1 203 9 is_stmt 1
	call	vPortFree
.LVL3:
	.loc 1 204 9
	.loc 1 204 19 is_stmt 0
	sw	zero,28(s1)
.L1:
	.loc 1 206 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL4:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	dac_dma_irq_handler, .-dac_dma_irq_handler
	.section	.text.hosal_dac_init,"ax",@progbits
	.align	1
	.globl	hosal_dac_init
	.type	hosal_dac_init, @function
hosal_dac_init:
.LFB8:
	.loc 1 25 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 26 5
	.loc 1 28 5
	.loc 1 25 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	ra,44(sp)
	.loc 1 28 23
	lui	a5,%hi(.LC0)
	.loc 1 25 1
	.cfi_offset 1, -4
	.loc 1 28 23
	addi	a5,a5,%lo(.LC0)
	lw	a4,0(a5)
	lhu	a5,4(a5)
	.loc 1 37 27
	lui	a1,%hi(.LANCHOR0)
	.loc 1 25 1
	mv	s1,a0
	.loc 1 37 27
	li	a2,24
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,s0,-40
.LVL6:
	.loc 1 28 23
	sw	a4,-48(s0)
	sh	a5,-44(s0)
	.loc 1 37 5 is_stmt 1
	.loc 1 37 27 is_stmt 0
	call	memcpy
.LVL7:
	.loc 1 46 5 is_stmt 1
	.loc 1 46 8 is_stmt 0
	bne	s1,zero,.L12
.L14:
	.loc 1 48 16
	li	a0,-1
.L11:
	.loc 1 87 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL8:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L12:
	.cfi_restore_state
	.loc 1 46 20 discriminator 1
	lbu	a5,0(s1)
	bne	a5,zero,.L14
	.loc 1 51 5 is_stmt 1
	.loc 1 51 19 is_stmt 0
	li	a5,-1
	sw	a5,20(s1)
	.loc 1 52 5 is_stmt 1
	.loc 1 62 8 is_stmt 0
	lbu	a5,8(s1)
	.loc 1 52 15
	sw	zero,28(s1)
	.loc 1 53 5 is_stmt 1
	.loc 1 53 13 is_stmt 0
	sw	zero,16(s1)
	.loc 1 54 5 is_stmt 1
	.loc 1 54 14 is_stmt 0
	sw	zero,24(s1)
	.loc 1 56 5 is_stmt 1
.LVL10:
	.loc 1 58 5
	.loc 1 62 5
	.loc 1 62 8 is_stmt 0
	li	a4,14
	bne	a5,a4,.L15
	.loc 1 63 9 is_stmt 1
	.loc 1 63 26 is_stmt 0
	sb	a5,-48(s0)
	.loc 1 64 9 is_stmt 1
.L15:
	.loc 1 67 5
	.loc 1 67 28 is_stmt 0
	lw	a5,12(s1)
	.loc 1 67 8
	li	a4,8192
	addi	a4,a4,-192
	bne	a5,a4,.L16
	.loc 1 68 9 is_stmt 1
	.loc 1 68 21 is_stmt 0
	li	a5,3
.L20:
	.loc 1 74 21
	sw	a5,-28(s0)
.L17:
	.loc 1 80 5 is_stmt 1
	.loc 1 80 32 is_stmt 0
	lbu	a5,4(s1)
	.loc 1 82 5
	addi	a0,s0,-48
	.loc 1 80 32
	sw	a5,-24(s0)
	.loc 1 82 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL11:
	.loc 1 83 5
	addi	a0,s0,-40
	call	GLB_GPIP_DAC_Init
.LVL12:
	.loc 1 84 5
	li	a2,64
	li	a1,0
	li	a0,1
	call	GLB_Set_DAC_CLK
.LVL13:
	.loc 1 86 5
	.loc 1 86 12 is_stmt 0
	li	a0,0
	j	.L11
.LVL14:
.L16:
	.loc 1 69 12 is_stmt 1
	.loc 1 69 15 is_stmt 0
	li	a4,16384
	addi	a4,a4,-384
	bne	a5,a4,.L18
	.loc 1 70 9 is_stmt 1
	.loc 1 70 21 is_stmt 0
	li	a5,1
	j	.L20
.L18:
	.loc 1 71 12 is_stmt 1
	.loc 1 71 15 is_stmt 0
	li	a4,32768
	addi	a4,a4,-768
	beq	a5,a4,.L17
	.loc 1 73 12 is_stmt 1
	.loc 1 73 15 is_stmt 0
	li	a4,512000
	bne	a5,a4,.L14
	.loc 1 74 9 is_stmt 1
	.loc 1 74 21 is_stmt 0
	li	a5,4
	j	.L20
	.cfi_endproc
.LFE8:
	.size	hosal_dac_init, .-hosal_dac_init
	.section	.text.hosal_dac_start,"ax",@progbits
	.align	1
	.globl	hosal_dac_start
	.type	hosal_dac_start, @function
hosal_dac_start:
.LFB9:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 91 5
	.loc 1 90 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	.cfi_offset 18, -16
	.loc 1 91 33
	lui	s2,%hi(.LANCHOR0)
	.loc 1 90 1
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 91 33
	addi	s2,s2,%lo(.LANCHOR0)
	li	a2,16
	addi	a1,s2,24
	.loc 1 90 1
	.loc 1 90 1
	mv	s1,a0
	.loc 1 91 33
	addi	a0,s0,-48
.LVL16:
	call	memcpy
.LVL17:
	.loc 1 98 5 is_stmt 1
	.loc 1 98 33 is_stmt 0
	li	a2,16
	addi	a1,s2,40
	addi	a0,s0,-32
	call	memcpy
.LVL18:
	.loc 1 105 5 is_stmt 1
	.loc 1 107 16 is_stmt 0
	li	a0,-1
	.loc 1 105 8
	beq	s1,zero,.L21
	.loc 1 105 20 discriminator 1
	lbu	a5,0(s1)
	.loc 1 107 16 discriminator 1
	li	a0,-1
	.loc 1 105 20 discriminator 1
	bne	a5,zero,.L21
	.loc 1 110 5 is_stmt 1
	.loc 1 110 39 is_stmt 0
	lw	a5,8(s1)
	.loc 1 110 8
	li	a4,13
	bne	a5,a4,.L23
	.loc 1 111 9 is_stmt 1
	li	a0,0
	call	GPIP_Set_DAC_ChanA_SRC_SEL
.LVL19:
.L24:
	.loc 1 115 6
	.loc 1 117 5
	addi	a0,s0,-48
	call	GLB_GPIP_DAC_Set_ChanA_Config
.LVL20:
	.loc 1 118 5
	addi	a0,s0,-32
	call	GLB_GPIP_DAC_Set_ChanB_Config
.LVL21:
	.loc 1 120 5
	.loc 1 120 12 is_stmt 0
	li	a0,0
.L21:
	.loc 1 121 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL22:
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L23:
	.cfi_restore_state
	.loc 1 112 12 is_stmt 1
	.loc 1 112 15 is_stmt 0
	li	a4,14
	bne	a5,a4,.L24
	.loc 1 113 9 is_stmt 1
	li	a0,0
	call	GPIP_Set_DAC_ChanB_SRC_SEL
.LVL24:
	j	.L24
	.cfi_endproc
.LFE9:
	.size	hosal_dac_start, .-hosal_dac_start
	.section	.text.hosal_dac_set_value,"ax",@progbits
	.align	1
	.globl	hosal_dac_set_value
	.type	hosal_dac_set_value, @function
hosal_dac_set_value:
.LFB10:
	.loc 1 124 1
	.cfi_startproc
.LVL25:
	.loc 1 125 5
	.loc 1 126 5
	.loc 1 128 5
	.loc 1 124 1 is_stmt 0
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
	.loc 1 130 16
	li	s1,-1
	.loc 1 128 8
	beq	a0,zero,.L28
	.loc 1 128 20 discriminator 1
	lbu	a5,0(a0)
	.loc 1 130 16 discriminator 1
	li	s1,-1
	.loc 1 128 20 discriminator 1
	bne	a5,zero,.L28
	.loc 1 128 56 discriminator 3
	li	a5,-200704
	addi	a5,a5,704
	li	a4,1601536
	add	a5,a1,a5
	addi	a4,a4,-1536
	bgtu	a5,a4,.L28
	.loc 1 133 5 is_stmt 1
.LVL26:
	.loc 1 134 5
	.loc 1 136 5
	.loc 1 136 34 is_stmt 0
	lui	a5,%hi(.LC7)
	flw	fa3,%lo(.LC7)(a5)
	lui	a5,%hi(.LC8)
	flw	fa4,%lo(.LC8)(a5)
	.loc 1 136 30
	fcvt.s.w	fa5,a1
	.loc 1 139 39
	lw	a4,8(a0)
	.loc 1 139 8
	li	a3,13
	.loc 1 136 34
	fmadd.s	fa5,fa5,fa3,fa4
	.loc 1 136 12
	fcvt.wu.s a5,fa5,rtz
.LVL27:
	.loc 1 139 5 is_stmt 1
	.loc 1 139 8 is_stmt 0
	bne	a4,a3,.L30
	.loc 1 140 9 is_stmt 1
	slli	a0,a5,16
.LVL28:
	srli	a0,a0,16
	call	GLB_DAC_Set_ChanA_Value
.LVL29:
	.loc 1 146 12 is_stmt 0
	li	s1,0
.LVL30:
.L28:
	.loc 1 147 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL31:
.L30:
	.cfi_restore_state
	.loc 1 141 12 is_stmt 1
	.loc 1 141 15 is_stmt 0
	li	a3,14
	.loc 1 146 12
	li	s1,0
	.loc 1 141 15
	bne	a4,a3,.L28
	.loc 1 142 9 is_stmt 1
	slli	a0,a5,16
.LVL32:
	srli	a0,a0,16
	call	GLB_DAC_Set_ChanB_Value
.LVL33:
	j	.L28
	.cfi_endproc
.LFE10:
	.size	hosal_dac_set_value, .-hosal_dac_set_value
	.section	.text.hosal_dac_get_value,"ax",@progbits
	.align	1
	.globl	hosal_dac_get_value
	.type	hosal_dac_get_value, @function
hosal_dac_get_value:
.LFB11:
	.loc 1 150 1
	.cfi_startproc
.LVL34:
	.loc 1 151 5
	.loc 1 152 5
	.loc 1 154 5
	.loc 1 150 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 154 8
	beq	a0,zero,.L40
	.loc 1 154 20 discriminator 1
	lbu	a5,0(a0)
	mv	a4,a0
	.loc 1 156 16 discriminator 1
	li	a0,-1
.LVL35:
	.loc 1 154 20 discriminator 1
	bne	a5,zero,.L36
	.loc 1 159 5 is_stmt 1
	.loc 1 159 16 is_stmt 0
	li	a5,1073741824
	.loc 1 161 39
	lw	a4,8(a4)
.LVL36:
	.loc 1 159 16
	lw	a5,788(a5)
.LVL37:
	.loc 1 161 5 is_stmt 1
	.loc 1 161 8 is_stmt 0
	li	a3,13
	bne	a4,a3,.L38
	.loc 1 162 9 is_stmt 1
	.loc 1 162 66 is_stmt 0
	srli	a5,a5,16
.LVL38:
.L43:
	.loc 1 164 9 is_stmt 1
	.loc 1 164 17 is_stmt 0
	andi	a5,a5,1023
.LVL39:
	j	.L39
.L38:
	.loc 1 163 12 is_stmt 1
	.loc 1 163 15 is_stmt 0
	li	a3,14
	beq	a4,a3,.L43
.L39:
	.loc 1 166 6 is_stmt 1
	.loc 1 168 5
.LVL40:
	.loc 1 169 5
	.loc 1 170 5
	.loc 1 170 20 is_stmt 0
	fcvt.s.w	fa5,a5
	.loc 1 170 30
	lui	a5,%hi(.LC9)
.LVL41:
	flw	fa3,%lo(.LC9)(a5)
	lui	a5,%hi(.LC10)
	flw	fa4,%lo(.LC10)(a5)
	fmadd.s	fa5,fa5,fa3,fa4
	.loc 1 170 10
	fcvt.w.s a0,fa5,rtz
.LVL42:
	.loc 1 172 5 is_stmt 1
.L36:
	.loc 1 173 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL43:
.L40:
	.cfi_restore_state
	.loc 1 156 16
	li	a0,-1
.LVL44:
	j	.L36
	.cfi_endproc
.LFE11:
	.size	hosal_dac_get_value, .-hosal_dac_get_value
	.section	.text.hosal_dac_stop,"ax",@progbits
	.align	1
	.globl	hosal_dac_stop
	.type	hosal_dac_stop, @function
hosal_dac_stop:
.LFB12:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 177 5
	.loc 1 177 8 is_stmt 0
	beq	a0,zero,.L46
	.loc 1 177 20 discriminator 1
	lbu	a5,0(a0)
	.loc 1 179 16 discriminator 1
	li	a0,-1
.LVL46:
	.loc 1 177 20 discriminator 1
	bne	a5,zero,.L49
	.loc 1 182 5 is_stmt 1
	.loc 1 176 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 182 5
	call	GPIP_DAC_ChanA_Disable
.LVL47:
	.loc 1 183 5 is_stmt 1
	call	GPIP_DAC_ChanB_Disable
.LVL48:
	.loc 1 185 5
	.loc 1 186 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 185 12
	li	a0,0
	.loc 1 186 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL49:
.L46:
	.loc 1 179 16
	li	a0,-1
.LVL50:
	ret
.L49:
	.loc 1 186 1
	ret
	.cfi_endproc
.LFE12:
	.size	hosal_dac_stop, .-hosal_dac_stop
	.section	.text.hosal_dac_dma_cb_reg,"ax",@progbits
	.align	1
	.globl	hosal_dac_dma_cb_reg
	.type	hosal_dac_dma_cb_reg, @function
hosal_dac_dma_cb_reg:
.LFB14:
	.loc 1 209 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 210 5
	.loc 1 209 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 210 8
	beq	a0,zero,.L54
	.loc 1 215 5 is_stmt 1
	.loc 1 215 13 is_stmt 0
	sw	a1,16(a0)
	.loc 1 216 5 is_stmt 1
	.loc 1 216 14 is_stmt 0
	sw	a2,24(a0)
	.loc 1 218 5 is_stmt 1
	.loc 1 218 12 is_stmt 0
	li	a0,0
.LVL52:
.L52:
	.loc 1 219 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L54:
	.cfi_restore_state
	.loc 1 212 16
	li	a0,-1
.LVL54:
	j	.L52
	.cfi_endproc
.LFE14:
	.size	hosal_dac_dma_cb_reg, .-hosal_dac_dma_cb_reg
	.section	.text.hosal_dac_dma_start,"ax",@progbits
	.align	1
	.globl	hosal_dac_dma_start
	.type	hosal_dac_dma_start, @function
hosal_dac_dma_start:
.LFB15:
	.loc 1 222 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 223 5
	.loc 1 224 5
	.loc 1 225 5
	.loc 1 226 5
	.loc 1 227 5
	.loc 1 229 5
	.loc 1 222 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s4,56(sp)
	.cfi_offset 20, -24
	.loc 1 229 33
	lui	s4,%hi(.LANCHOR0)
	.loc 1 222 1
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	.loc 1 229 33
	addi	s4,s4,%lo(.LANCHOR0)
	.loc 1 222 1
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 222 1
	mv	s1,a0
	mv	s3,a1
	mv	s2,a2
	.loc 1 229 33
	addi	a1,s4,56
.LVL56:
	li	a2,16
.LVL57:
	addi	a0,s0,-64
.LVL58:
	call	memcpy
.LVL59:
	.loc 1 236 5 is_stmt 1
	.loc 1 236 33 is_stmt 0
	li	a2,16
	addi	a1,s4,72
	addi	a0,s0,-48
	call	memcpy
.LVL60:
	.loc 1 243 5 is_stmt 1
	.loc 1 243 22 is_stmt 0
	li	a5,1
	sw	a5,-76(s0)
	li	a5,23
	sw	zero,-72(s0)
	sw	a5,-68(s0)
	.loc 1 249 5 is_stmt 1
	.loc 1 249 8 is_stmt 0
	bne	s1,zero,.L57
.LVL61:
.L59:
	.loc 1 251 16
	li	a0,-1
.L56:
	.loc 1 337 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
.LVL62:
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
.LVL63:
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL64:
.L57:
	.cfi_restore_state
	.loc 1 249 20 discriminator 1
	beq	s3,zero,.L59
	.loc 1 249 36 discriminator 2
	beq	s2,zero,.L59
	.loc 1 249 48 discriminator 3
	lbu	a5,0(s1)
	bne	a5,zero,.L59
	.loc 1 254 5 is_stmt 1
	.loc 1 254 8 is_stmt 0
	lbu	a5,4(s1)
	bne	a5,zero,.L60
.L63:
	.loc 1 262 5 is_stmt 1
	lw	a0,20(s1)
	.loc 1 267 15 is_stmt 0
	andi	s4,s2,2047
	.loc 1 266 11
	srli	s6,s2,13
	.loc 1 262 5
	call	hosal_dma_chan_stop
.LVL65:
	.loc 1 263 5 is_stmt 1
	lw	a0,20(s1)
	lui	a1,%hi(dac_dma_irq_handler)
	mv	a2,s1
	addi	a1,a1,%lo(dac_dma_irq_handler)
	call	hosal_dma_irq_callback_set
.LVL66:
	.loc 1 266 5
	.loc 1 267 5
	.loc 1 269 5
	.loc 1 269 8 is_stmt 0
	bne	s4,zero,.L61
.L62:
	.loc 1 273 5 is_stmt 1
.LVL67:
	.loc 1 274 5
	.loc 1 275 5
	.loc 1 276 5
	.loc 1 277 5
	.loc 1 278 5
	.loc 1 280 5
	.loc 1 280 56 is_stmt 0
	slli	s2,s6,4
.LVL68:
	.loc 1 280 17
	mv	a0,s2
	call	pvPortMalloc
.LVL69:
	mv	s5,a0
.LVL70:
	.loc 1 281 5 is_stmt 1
	mv	a2,s2
	li	a1,0
	call	memset
.LVL71:
	.loc 1 283 5
	.loc 1 283 15 is_stmt 0
	sw	s5,28(s1)
	.loc 1 285 5 is_stmt 1
	.loc 1 285 8 is_stmt 0
	beq	s5,zero,.L59
	.loc 1 292 34
	li	a1,4096
	.loc 1 310 34
	li	a0,1073750016
	.loc 1 311 30
	li	a6,-33554432
	.loc 1 285 8
	mv	a4,s5
	.loc 1 290 12
	li	a3,0
	.loc 1 294 28
	addi	a7,s6,-1
	.loc 1 292 34
	addi	a1,a1,-2048
	.loc 1 295 38
	mv	t1,s4
	.loc 1 310 34
	addi	a0,a0,72
	.loc 1 311 30
	li	t3,71827456
	addi	a6,a6,-1
	li	t4,33554432
.LVL72:
.L64:
	.loc 1 290 17 is_stmt 1 discriminator 1
	.loc 1 290 5 is_stmt 0 discriminator 1
	bne	a3,s6,.L67
	.loc 1 317 5 is_stmt 1
	.loc 1 317 30 is_stmt 0
	add	s2,s5,s2
	sw	zero,-8(s2)
	.loc 1 319 5 is_stmt 1
	lbu	a0,20(s1)
	addi	a1,s0,-76
	call	DMA_LLI_Init
.LVL73:
	.loc 1 321 5
	lw	a0,20(s1)
	call	hosal_dma_chan_start
.LVL74:
	.loc 1 322 5
	lbu	a0,20(s1)
	mv	a1,s5
	call	DMA_LLI_Update
.LVL75:
	.loc 1 324 5
	.loc 1 324 39 is_stmt 0
	lw	a5,8(s1)
	.loc 1 324 8
	li	a4,13
	bne	a5,a4,.L68
	.loc 1 326 9 is_stmt 1
	li	a0,1
	call	GPIP_Set_DAC_ChanA_SRC_SEL
.LVL76:
.L69:
	.loc 1 329 12
	.loc 1 331 5
	addi	a0,s0,-64
	call	GLB_GPIP_DAC_Set_ChanA_Config
.LVL77:
	.loc 1 332 5
	addi	a0,s0,-48
	call	GLB_GPIP_DAC_Set_ChanB_Config
.LVL78:
	.loc 1 333 5
	li	a0,0
	call	GPIP_Set_DAC_DMA_TX_FORMAT_SEL
.LVL79:
	.loc 1 334 5
	call	GPIP_Set_DAC_DMA_TX_Enable
.LVL80:
	.loc 1 336 5
	.loc 1 336 12 is_stmt 0
	li	a0,0
.LVL81:
	j	.L56
.LVL82:
.L60:
	.loc 1 254 32 discriminator 1
	lw	a5,20(s1)
	bge	a5,zero,.L63
	.loc 1 255 9 is_stmt 1
	.loc 1 255 25 is_stmt 0
	li	a0,0
	call	hosal_dma_chan_request
.LVL83:
	.loc 1 255 23
	sw	a0,20(s1)
	.loc 1 256 9 is_stmt 1
	.loc 1 256 12 is_stmt 0
	bge	a0,zero,.L63
	j	.L59
.LVL84:
.L61:
	.loc 1 270 9 is_stmt 1
	.loc 1 270 15 is_stmt 0
	addi	s6,s6,1
.LVL85:
	j	.L62
.LVL86:
.L67:
	.loc 1 291 9 is_stmt 1
	.loc 1 292 34 is_stmt 0
	mv	a2,a1
	.loc 1 291 12
	beq	s4,zero,.L65
	.loc 1 294 13 is_stmt 1
	.loc 1 294 16 is_stmt 0
	bne	a3,a7,.L65
	.loc 1 295 17 is_stmt 1
	.loc 1 295 38 is_stmt 0
	mv	a2,t1
.LVL87:
.L65:
	.loc 1 301 9 is_stmt 1
	.loc 1 307 9
	.loc 1 308 9
	.loc 1 309 9
	.loc 1 309 33 is_stmt 0
	slli	a5,a3,13
	add	a5,s3,a5
	sw	a5,0(a4)
	.loc 1 310 9 is_stmt 1
	.loc 1 301 12 is_stmt 0
	sub	a5,a3,a7
	seqz	a5,a5
	.loc 1 311 30
	or	a2,a2,t3
.LVL88:
	slli	a5,a5,31
	or	a5,a5,a2
	lw	a2,12(a4)
	and	a5,a5,a6
	.loc 1 310 34
	sw	a0,4(a4)
	.loc 1 311 9 is_stmt 1
	.loc 1 311 30 is_stmt 0
	and	a2,t4,a2
	or	a5,a5,a2
	sw	a5,12(a4)
	.loc 1 312 9 is_stmt 1
	.loc 1 312 12 is_stmt 0
	beq	a3,zero,.L66
	.loc 1 313 13 is_stmt 1
	.loc 1 313 36 is_stmt 0
	sw	a4,-8(a4)
.L66:
	.loc 1 290 28 is_stmt 1 discriminator 2
	.loc 1 290 29 is_stmt 0 discriminator 2
	addi	a3,a3,1
.LVL89:
	addi	a4,a4,16
	j	.L64
.LVL90:
.L68:
	.loc 1 327 12 is_stmt 1
	.loc 1 327 15 is_stmt 0
	li	a4,14
	bne	a5,a4,.L69
	.loc 1 328 9 is_stmt 1
	li	a0,4
	call	GPIP_Set_DAC_ChanB_SRC_SEL
.LVL91:
	j	.L69
	.cfi_endproc
.LFE15:
	.size	hosal_dac_dma_start, .-hosal_dac_dma_start
	.section	.text.hosal_dac_dma_stop,"ax",@progbits
	.align	1
	.globl	hosal_dac_dma_stop
	.type	hosal_dac_dma_stop, @function
hosal_dac_dma_stop:
.LFB16:
	.loc 1 340 1
	.cfi_startproc
.LVL92:
	.loc 1 341 5
	.loc 1 340 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 343 16
	li	s2,-1
	.loc 1 341 8
	beq	a0,zero,.L85
	.loc 1 341 20 discriminator 1
	lbu	a5,0(a0)
	mv	s1,a0
	.loc 1 343 16 discriminator 1
	li	s2,-1
	.loc 1 341 20 discriminator 1
	bne	a5,zero,.L85
	.loc 1 346 5 is_stmt 1
	call	GPIP_DAC_ChanA_Disable
.LVL93:
	.loc 1 347 5
	call	GPIP_DAC_ChanB_Disable
.LVL94:
	.loc 1 349 5
	.loc 1 349 8 is_stmt 0
	lbu	a5,4(s1)
	.loc 1 354 12
	li	s2,0
	.loc 1 349 8
	beq	a5,zero,.L85
	.loc 1 350 9 is_stmt 1
	call	GPIP_Set_DAC_DMA_TX_Disable
.LVL95:
	.loc 1 351 9
	lw	a0,20(s1)
	call	hosal_dma_chan_stop
.LVL96:
.L85:
	.loc 1 355 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	hosal_dac_dma_stop, .-hosal_dac_dma_stop
	.section	.text.hosal_dac_finalize,"ax",@progbits
	.align	1
	.globl	hosal_dac_finalize
	.type	hosal_dac_finalize, @function
hosal_dac_finalize:
.LFB17:
	.loc 1 358 1 is_stmt 1
	.cfi_startproc
.LVL97:
	.loc 1 359 5
	.loc 1 358 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 361 16
	li	s2,-1
	.loc 1 359 8
	beq	a0,zero,.L92
	.loc 1 359 20 discriminator 1
	lbu	a5,0(a0)
	mv	s1,a0
	.loc 1 361 16 discriminator 1
	li	s2,-1
	.loc 1 359 20 discriminator 1
	bne	a5,zero,.L92
	.loc 1 364 5 is_stmt 1
	.loc 1 364 19 is_stmt 0
	lw	a0,28(a0)
.LVL98:
	.loc 1 364 8
	beq	a0,zero,.L94
	.loc 1 365 9 is_stmt 1
	call	vPortFree
.LVL99:
	.loc 1 366 9
	.loc 1 366 19 is_stmt 0
	sw	zero,28(s1)
.L94:
	.loc 1 369 5 is_stmt 1
	.loc 1 369 12 is_stmt 0
	lw	a0,20(s1)
	.loc 1 374 12
	li	s2,0
	.loc 1 369 8
	blt	a0,zero,.L92
	.loc 1 370 9 is_stmt 1
	call	hosal_dma_chan_release
.LVL100:
	.loc 1 371 9
	.loc 1 371 23 is_stmt 0
	li	a5,-1
	sw	a5,20(s1)
.LVL101:
.L92:
	.loc 1 375 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	hosal_dac_finalize, .-hosal_dac_finalize
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC7:
	.word	975674299
	.align	2
.LC8:
	.word	-1023426560
	.align	2
.LC9:
	.word	1153663200
	.align	2
.LC10:
	.word	1212370944
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC1:
	.word	0
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
.LC2:
	.word	1
	.word	1
	.word	1
	.word	0
.LC3:
	.word	1
	.word	1
	.word	1
	.word	0
.LC4:
	.word	1
	.word	1
	.word	1
	.word	1
.LC5:
	.word	1
	.word	1
	.word	1
	.word	4
	.section	.srodata,"a"
	.align	2
.LC0:
	.byte	13
	.byte	10
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dac.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dac.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 8 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 9 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 10 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 11 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 12 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xddf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF185
	.byte	0xc
	.4byte	.LASF186
	.4byte	.LASF187
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x38
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1e
	.byte	0x10
	.4byte	0xa4
	.byte	0x6
	.byte	0x4
	.4byte	0xaa
	.byte	0x7
	.4byte	0xb5
	.byte	0x8
	.4byte	0x83
	.byte	0
	.byte	0x9
	.byte	0xc
	.byte	0x4
	.byte	0x23
	.byte	0x9
	.4byte	0xe6
	.byte	0xa
	.4byte	.LASF14
	.byte	0x4
	.byte	0x24
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0xb
	.string	"pin"
	.byte	0x4
	.byte	0x25
	.byte	0xe
	.4byte	0x5b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x26
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x27
	.byte	0x3
	.4byte	0xb5
	.byte	0x9
	.byte	0x20
	.byte	0x4
	.byte	0x2c
	.byte	0x9
	.4byte	0x149
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2e
	.byte	0x18
	.4byte	0xe6
	.byte	0x4
	.byte	0xb
	.string	"cb"
	.byte	0x4
	.byte	0x2f
	.byte	0x14
	.4byte	0x98
	.byte	0x10
	.byte	0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x30
	.byte	0x16
	.4byte	0x8c
	.byte	0x14
	.byte	0xb
	.string	"arg"
	.byte	0x4
	.byte	0x31
	.byte	0xb
	.4byte	0x83
	.byte	0x18
	.byte	0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x32
	.byte	0xb
	.4byte	0x83
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x33
	.byte	0x3
	.4byte	0xf2
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x21
	.byte	0x1
	.4byte	0x170
	.byte	0xd
	.4byte	.LASF22
	.byte	0
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x24
	.byte	0x2
	.4byte	0x155
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x3b
	.byte	0xe
	.4byte	0x197
	.byte	0xd
	.4byte	.LASF25
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3e
	.byte	0x2
	.4byte	0x17c
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x6f
	.byte	0xe
	.4byte	0x1d6
	.byte	0xd
	.4byte	.LASF28
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0xd
	.4byte	.LASF30
	.byte	0x2
	.byte	0xd
	.4byte	.LASF31
	.byte	0x3
	.byte	0xd
	.4byte	.LASF32
	.byte	0x4
	.byte	0xd
	.4byte	.LASF33
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x76
	.byte	0x2
	.4byte	0x1a3
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x7b
	.byte	0xe
	.4byte	0x209
	.byte	0xd
	.4byte	.LASF35
	.byte	0
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd
	.4byte	.LASF37
	.byte	0x2
	.byte	0xd
	.4byte	.LASF38
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x80
	.byte	0x2
	.4byte	0x1e2
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x85
	.byte	0xe
	.4byte	0x242
	.byte	0xd
	.4byte	.LASF40
	.byte	0
	.byte	0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0xd
	.4byte	.LASF42
	.byte	0x2
	.byte	0xd
	.4byte	.LASF43
	.byte	0x3
	.byte	0xd
	.4byte	.LASF44
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x8b
	.byte	0x2
	.4byte	0x215
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x90
	.byte	0xe
	.4byte	0x26f
	.byte	0xd
	.4byte	.LASF46
	.byte	0
	.byte	0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0xd
	.4byte	.LASF48
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF49
	.byte	0x6
	.byte	0x94
	.byte	0x2
	.4byte	0x24e
	.byte	0x9
	.byte	0x18
	.byte	0x6
	.byte	0x99
	.byte	0x9
	.4byte	0x2d3
	.byte	0xa
	.4byte	.LASF50
	.byte	0x6
	.byte	0x9a
	.byte	0x1a
	.4byte	0x197
	.byte	0
	.byte	0xa
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9b
	.byte	0x11
	.4byte	0x170
	.byte	0x4
	.byte	0xa
	.4byte	.LASF52
	.byte	0x6
	.byte	0x9c
	.byte	0x11
	.4byte	0x170
	.byte	0x8
	.byte	0xb
	.string	"mod"
	.byte	0x6
	.byte	0x9d
	.byte	0x17
	.4byte	0x242
	.byte	0xc
	.byte	0xa
	.4byte	.LASF53
	.byte	0x6
	.byte	0x9e
	.byte	0x11
	.4byte	0x170
	.byte	0x10
	.byte	0xa
	.4byte	.LASF54
	.byte	0x6
	.byte	0x9f
	.byte	0x21
	.4byte	0x26f
	.byte	0x14
	.byte	0
	.byte	0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa0
	.byte	0x2
	.4byte	0x27b
	.byte	0x9
	.byte	0x10
	.byte	0x6
	.byte	0xa5
	.byte	0x9
	.4byte	0x31d
	.byte	0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa6
	.byte	0x11
	.4byte	0x170
	.byte	0
	.byte	0xa
	.4byte	.LASF57
	.byte	0x6
	.byte	0xa7
	.byte	0x11
	.4byte	0x170
	.byte	0x4
	.byte	0xa
	.4byte	.LASF58
	.byte	0x6
	.byte	0xa8
	.byte	0x11
	.4byte	0x170
	.byte	0x8
	.byte	0xb
	.string	"src"
	.byte	0x6
	.byte	0xa9
	.byte	0x1d
	.4byte	0x209
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF59
	.byte	0x6
	.byte	0xaa
	.byte	0x2
	.4byte	0x2df
	.byte	0x9
	.byte	0x10
	.byte	0x6
	.byte	0xaf
	.byte	0x9
	.4byte	0x367
	.byte	0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0xb0
	.byte	0x11
	.4byte	0x170
	.byte	0
	.byte	0xa
	.4byte	.LASF57
	.byte	0x6
	.byte	0xb1
	.byte	0x11
	.4byte	0x170
	.byte	0x4
	.byte	0xa
	.4byte	.LASF58
	.byte	0x6
	.byte	0xb2
	.byte	0x11
	.4byte	0x170
	.byte	0x8
	.byte	0xb
	.string	"src"
	.byte	0x6
	.byte	0xb3
	.byte	0x1d
	.4byte	0x1d6
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF60
	.byte	0x6
	.byte	0xb4
	.byte	0x2
	.4byte	0x329
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x4c
	.byte	0x1
	.4byte	0x412
	.byte	0xd
	.4byte	.LASF61
	.byte	0
	.byte	0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd
	.4byte	.LASF63
	.byte	0x2
	.byte	0xd
	.4byte	.LASF64
	.byte	0x3
	.byte	0xd
	.4byte	.LASF65
	.byte	0x4
	.byte	0xd
	.4byte	.LASF66
	.byte	0x5
	.byte	0xd
	.4byte	.LASF67
	.byte	0x6
	.byte	0xd
	.4byte	.LASF68
	.byte	0x7
	.byte	0xd
	.4byte	.LASF69
	.byte	0x8
	.byte	0xd
	.4byte	.LASF70
	.byte	0x9
	.byte	0xd
	.4byte	.LASF71
	.byte	0xa
	.byte	0xd
	.4byte	.LASF72
	.byte	0xb
	.byte	0xd
	.4byte	.LASF73
	.byte	0xc
	.byte	0xd
	.4byte	.LASF74
	.byte	0xd
	.byte	0xd
	.4byte	.LASF75
	.byte	0xe
	.byte	0xd
	.4byte	.LASF76
	.byte	0xf
	.byte	0xd
	.4byte	.LASF77
	.byte	0x10
	.byte	0xd
	.4byte	.LASF78
	.byte	0x11
	.byte	0xd
	.4byte	.LASF79
	.byte	0x12
	.byte	0xd
	.4byte	.LASF80
	.byte	0x13
	.byte	0xd
	.4byte	.LASF81
	.byte	0x14
	.byte	0xd
	.4byte	.LASF82
	.byte	0x15
	.byte	0xd
	.4byte	.LASF83
	.byte	0x16
	.byte	0xd
	.4byte	.LASF84
	.byte	0x17
	.byte	0
	.byte	0x9
	.byte	0x6
	.byte	0x7
	.byte	0x7e
	.byte	0x9
	.4byte	0x46a
	.byte	0xa
	.4byte	.LASF85
	.byte	0x7
	.byte	0x80
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0xa
	.4byte	.LASF86
	.byte	0x7
	.byte	0x81
	.byte	0xd
	.4byte	0x41
	.byte	0x1
	.byte	0xa
	.4byte	.LASF87
	.byte	0x7
	.byte	0x82
	.byte	0xd
	.4byte	0x41
	.byte	0x2
	.byte	0xa
	.4byte	.LASF88
	.byte	0x7
	.byte	0x83
	.byte	0xd
	.4byte	0x41
	.byte	0x3
	.byte	0xa
	.4byte	.LASF89
	.byte	0x7
	.byte	0x84
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0xa
	.4byte	.LASF90
	.byte	0x7
	.byte	0x85
	.byte	0xd
	.4byte	0x41
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF91
	.byte	0x7
	.byte	0x86
	.byte	0x2
	.4byte	0x412
	.byte	0xe
	.4byte	.LASF188
	.byte	0x4
	.byte	0x8
	.2byte	0x4c1
	.byte	0x10
	.4byte	0x53c
	.byte	0xf
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x4c2
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0xf
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x4c3
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0xf
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x4c4
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0xf
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x4c5
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0xf
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x4c6
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0xf
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x4c7
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0xf
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x4c8
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x10
	.string	"SI"
	.byte	0x8
	.2byte	0x4c9
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x10
	.string	"DI"
	.byte	0x8
	.2byte	0x4ca
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0xf
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x4cb
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0x10
	.string	"I"
	.byte	0x8
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x9
	.byte	0x49
	.byte	0xe
	.4byte	0x55d
	.byte	0xd
	.4byte	.LASF100
	.byte	0
	.byte	0xd
	.4byte	.LASF101
	.byte	0x1
	.byte	0xd
	.4byte	.LASF102
	.byte	0x2
	.byte	0
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x584
	.byte	0xd
	.4byte	.LASF103
	.byte	0
	.byte	0xd
	.4byte	.LASF104
	.byte	0x1
	.byte	0xd
	.4byte	.LASF105
	.byte	0x2
	.byte	0xd
	.4byte	.LASF106
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF107
	.byte	0x9
	.byte	0x57
	.byte	0x2
	.4byte	0x55d
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x9
	.byte	0x5c
	.byte	0xe
	.4byte	0x5b7
	.byte	0xd
	.4byte	.LASF108
	.byte	0
	.byte	0xd
	.4byte	.LASF109
	.byte	0x1
	.byte	0xd
	.4byte	.LASF110
	.byte	0x2
	.byte	0xd
	.4byte	.LASF111
	.byte	0x3
	.byte	0
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x9
	.byte	0x66
	.byte	0xe
	.4byte	0x608
	.byte	0xd
	.4byte	.LASF112
	.byte	0
	.byte	0xd
	.4byte	.LASF113
	.byte	0x1
	.byte	0xd
	.4byte	.LASF114
	.byte	0x2
	.byte	0xd
	.4byte	.LASF115
	.byte	0x3
	.byte	0xd
	.4byte	.LASF116
	.byte	0x6
	.byte	0xd
	.4byte	.LASF117
	.byte	0x7
	.byte	0xd
	.4byte	.LASF118
	.byte	0xa
	.byte	0xd
	.4byte	.LASF119
	.byte	0xb
	.byte	0xd
	.4byte	.LASF120
	.byte	0x16
	.byte	0xd
	.4byte	.LASF121
	.byte	0x17
	.byte	0xd
	.4byte	.LASF122
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF123
	.byte	0x9
	.byte	0x72
	.byte	0x2
	.4byte	0x5b7
	.byte	0x9
	.byte	0x10
	.byte	0x9
	.byte	0xb0
	.byte	0x9
	.4byte	0x652
	.byte	0xa
	.4byte	.LASF124
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0x5b
	.byte	0
	.byte	0xa
	.4byte	.LASF125
	.byte	0x9
	.byte	0xb2
	.byte	0xe
	.4byte	0x5b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF126
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.byte	0xa
	.4byte	.LASF127
	.byte	0x9
	.byte	0xb4
	.byte	0x1c
	.4byte	0x476
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0xb5
	.byte	0x2
	.4byte	0x614
	.byte	0x9
	.byte	0xc
	.byte	0x9
	.byte	0xba
	.byte	0x9
	.4byte	0x68f
	.byte	0xb
	.string	"dir"
	.byte	0x9
	.byte	0xbb
	.byte	0x18
	.4byte	0x584
	.byte	0
	.byte	0xa
	.4byte	.LASF129
	.byte	0x9
	.byte	0xbc
	.byte	0x19
	.4byte	0x608
	.byte	0x4
	.byte	0xa
	.4byte	.LASF130
	.byte	0x9
	.byte	0xbd
	.byte	0x19
	.4byte	0x608
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF131
	.byte	0x9
	.byte	0xbe
	.byte	0x2
	.4byte	0x65e
	.byte	0x6
	.byte	0x4
	.4byte	0x652
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0xa
	.byte	0xc7
	.byte	0xe
	.4byte	0x6bc
	.byte	0xd
	.4byte	.LASF132
	.byte	0
	.byte	0xd
	.4byte	.LASF133
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x165
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x6fb
	.byte	0x12
	.string	"dac"
	.byte	0x1
	.2byte	0x165
	.byte	0x29
	.4byte	0x6fb
	.4byte	.LLST26
	.byte	0x13
	.4byte	.LVL99
	.4byte	0xca7
	.byte	0x13
	.4byte	.LVL100
	.4byte	0xcb3
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x149
	.byte	0x11
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x153
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x752
	.byte	0x12
	.string	"dac"
	.byte	0x1
	.2byte	0x153
	.byte	0x29
	.4byte	0x6fb
	.4byte	.LLST25
	.byte	0x13
	.4byte	.LVL93
	.4byte	0xcbf
	.byte	0x13
	.4byte	.LVL94
	.4byte	0xccc
	.byte	0x13
	.4byte	.LVL95
	.4byte	0xcd9
	.byte	0x13
	.4byte	.LVL96
	.4byte	0xce6
	.byte	0
	.byte	0x14
	.4byte	.LASF136
	.byte	0x1
	.byte	0xdd
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x95c
	.byte	0x15
	.string	"dac"
	.byte	0x1
	.byte	0xdd
	.byte	0x2a
	.4byte	0x6fb
	.4byte	.LLST17
	.byte	0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0xdd
	.byte	0x39
	.4byte	0x95c
	.4byte	.LLST18
	.byte	0x16
	.4byte	.LASF138
	.byte	0x1
	.byte	0xdd
	.byte	0x48
	.4byte	0x5b
	.4byte	.LLST19
	.byte	0x17
	.string	"i"
	.byte	0x1
	.byte	0xdf
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST20
	.byte	0x18
	.4byte	.LASF139
	.byte	0x1
	.byte	0xe0
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST21
	.byte	0x18
	.4byte	.LASF140
	.byte	0x1
	.byte	0xe1
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST22
	.byte	0x18
	.4byte	.LASF141
	.byte	0x1
	.byte	0xe2
	.byte	0x1c
	.4byte	0x476
	.4byte	.LLST23
	.byte	0x18
	.4byte	.LASF142
	.byte	0x1
	.byte	0xe3
	.byte	0x18
	.4byte	0x69b
	.4byte	.LLST24
	.byte	0x19
	.4byte	.LASF143
	.byte	0x1
	.byte	0xe5
	.byte	0x21
	.4byte	0x31d
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x19
	.4byte	.LASF144
	.byte	0x1
	.byte	0xec
	.byte	0x21
	.4byte	0x367
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x19
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf3
	.byte	0x16
	.4byte	0x68f
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x1a
	.4byte	.LVL59
	.4byte	0xcf2
	.4byte	0x837
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0x38
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL60
	.4byte	0xcf2
	.4byte	0x857
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x84
	.byte	0xc8,0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL65
	.4byte	0xce6
	.byte	0x1a
	.4byte	.LVL66
	.4byte	0xcfd
	.4byte	0x87d
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	dac_dma_irq_handler
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL69
	.4byte	0xd09
	.4byte	0x891
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL71
	.4byte	0xd15
	.4byte	0x8b0
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL73
	.4byte	0xd21
	.4byte	0x8c5
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x13
	.4byte	.LVL74
	.4byte	0xd2e
	.byte	0x1a
	.4byte	.LVL75
	.4byte	0xd3a
	.4byte	0x8e2
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL76
	.4byte	0xd47
	.4byte	0x8f5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1a
	.4byte	.LVL77
	.4byte	0xd54
	.4byte	0x909
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL78
	.4byte	0xd61
	.4byte	0x91d
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x1a
	.4byte	.LVL79
	.4byte	0xd6e
	.4byte	0x930
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL80
	.4byte	0xd7b
	.byte	0x1a
	.4byte	.LVL83
	.4byte	0xd88
	.4byte	0x94c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL91
	.4byte	0xd94
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x5b
	.byte	0x14
	.4byte	.LASF146
	.byte	0x1
	.byte	0xd0
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x9a9
	.byte	0x15
	.string	"dac"
	.byte	0x1
	.byte	0xd0
	.byte	0x2b
	.4byte	0x6fb
	.4byte	.LLST16
	.byte	0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0xd0
	.byte	0x3f
	.4byte	0x98
	.byte	0x1
	.byte	0x5b
	.byte	0x1e
	.string	"arg"
	.byte	0x1
	.byte	0xd0
	.byte	0x4f
	.4byte	0x83
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1f
	.4byte	.LASF189
	.byte	0x1
	.byte	0xbc
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x9f9
	.byte	0x16
	.4byte	.LASF148
	.byte	0x1
	.byte	0xbc
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LASF149
	.byte	0x1
	.byte	0xbc
	.byte	0x30
	.4byte	0x5b
	.4byte	.LLST1
	.byte	0x17
	.string	"dac"
	.byte	0x1
	.byte	0xbe
	.byte	0x16
	.4byte	0x6fb
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LVL3
	.4byte	0xca7
	.byte	0
	.byte	0x14
	.4byte	.LASF150
	.byte	0x1
	.byte	0xaf
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xa36
	.byte	0x15
	.string	"dac"
	.byte	0x1
	.byte	0xaf
	.byte	0x25
	.4byte	0x6fb
	.4byte	.LLST15
	.byte	0x13
	.4byte	.LVL47
	.4byte	0xcbf
	.byte	0x13
	.4byte	.LVL48
	.4byte	0xccc
	.byte	0
	.byte	0x14
	.4byte	.LASF151
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xa99
	.byte	0x15
	.string	"dac"
	.byte	0x1
	.byte	0x95
	.byte	0x2a
	.4byte	0x6fb
	.4byte	.LLST11
	.byte	0x18
	.4byte	.LASF152
	.byte	0x1
	.byte	0x97
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST12
	.byte	0x20
	.4byte	.LASF137
	.byte	0x1
	.byte	0x97
	.byte	0x12
	.4byte	0x75
	.byte	0x17
	.string	"k"
	.byte	0x1
	.byte	0x98
	.byte	0xb
	.4byte	0xa99
	.4byte	.LLST13
	.byte	0x17
	.string	"b"
	.byte	0x1
	.byte	0x98
	.byte	0xe
	.4byte	0xa99
	.4byte	.LLST14
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF153
	.byte	0x14
	.4byte	.LASF154
	.byte	0x1
	.byte	0x7b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xb19
	.byte	0x15
	.string	"dac"
	.byte	0x1
	.byte	0x7b
	.byte	0x2a
	.4byte	0x6fb
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LASF137
	.byte	0x1
	.byte	0x7b
	.byte	0x38
	.4byte	0x5b
	.4byte	.LLST7
	.byte	0x17
	.string	"k"
	.byte	0x1
	.byte	0x7d
	.byte	0xb
	.4byte	0xa99
	.4byte	.LLST8
	.byte	0x17
	.string	"b"
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.4byte	0xa99
	.4byte	.LLST9
	.byte	0x18
	.4byte	.LASF155
	.byte	0x1
	.byte	0x7e
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LVL29
	.4byte	0xda1
	.byte	0x13
	.4byte	.LVL33
	.4byte	0xdae
	.byte	0
	.byte	0x14
	.4byte	.LASF156
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xbea
	.byte	0x15
	.string	"dac"
	.byte	0x1
	.byte	0x59
	.byte	0x26
	.4byte	0x6fb
	.4byte	.LLST5
	.byte	0x19
	.4byte	.LASF143
	.byte	0x1
	.byte	0x5b
	.byte	0x21
	.4byte	0x31d
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x19
	.4byte	.LASF144
	.byte	0x1
	.byte	0x62
	.byte	0x21
	.4byte	0x367
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x1a
	.4byte	.LVL17
	.4byte	0xcf2
	.4byte	0xb80
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0x18
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL18
	.4byte	0xcf2
	.4byte	0xb9f
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0x28
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0xd47
	.4byte	0xbb2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL20
	.4byte	0xd54
	.4byte	0xbc6
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x1a
	.4byte	.LVL21
	.4byte	0xd61
	.4byte	0xbda
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0
	.byte	0x1c
	.4byte	.LVL24
	.4byte	0xd94
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF157
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xca7
	.byte	0x15
	.string	"dac"
	.byte	0x1
	.byte	0x18
	.byte	0x25
	.4byte	0x6fb
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LASF158
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST4
	.byte	0x19
	.4byte	.LASF159
	.byte	0x1
	.byte	0x1c
	.byte	0x17
	.4byte	0x46a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x19
	.4byte	.LASF160
	.byte	0x1
	.byte	0x25
	.byte	0x1b
	.4byte	0x2d3
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1a
	.4byte	.LVL7
	.4byte	0xcf2
	.4byte	0xc64
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1a
	.4byte	.LVL11
	.4byte	0xdbb
	.4byte	0xc78
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x1a
	.4byte	.LVL12
	.4byte	0xdc8
	.4byte	0xc8c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0
	.byte	0x1c
	.4byte	.LVL13
	.4byte	0xdd5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xb
	.byte	0x94
	.byte	0x6
	.byte	0x21
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x3
	.byte	0x51
	.byte	0x5
	.byte	0x22
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x6
	.2byte	0x10d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x6
	.2byte	0x10b
	.byte	0x6
	.byte	0x22
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x6
	.2byte	0x110
	.byte	0x6
	.byte	0x21
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x3
	.byte	0x63
	.byte	0x5
	.byte	0x23
	.4byte	.LASF190
	.4byte	.LASF191
	.byte	0xd
	.byte	0
	.byte	0x21
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x3
	.byte	0x6e
	.byte	0x5
	.byte	0x21
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xb
	.byte	0x91
	.byte	0x7
	.byte	0x21
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.byte	0x22
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x142
	.byte	0x6
	.byte	0x21
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x3
	.byte	0x5a
	.byte	0x5
	.byte	0x22
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x143
	.byte	0x6
	.byte	0x22
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x6
	.2byte	0x108
	.byte	0x6
	.byte	0x22
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x6
	.2byte	0x113
	.byte	0x6
	.byte	0x22
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x6
	.2byte	0x114
	.byte	0x6
	.byte	0x22
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x6
	.2byte	0x10e
	.byte	0x6
	.byte	0x22
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x6
	.2byte	0x10f
	.byte	0x6
	.byte	0x21
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x3
	.byte	0x48
	.byte	0x12
	.byte	0x22
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x6
	.2byte	0x107
	.byte	0x6
	.byte	0x22
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x6
	.2byte	0x115
	.byte	0x6
	.byte	0x22
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x6
	.2byte	0x116
	.byte	0x6
	.byte	0x22
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xa
	.2byte	0x276
	.byte	0xd
	.byte	0x22
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x6
	.2byte	0x112
	.byte	0xd
	.byte	0x22
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xa
	.2byte	0x263
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xd
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xd
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x1b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x22
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
	.byte	0x23
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
.LLST26:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL101
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL96
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL68
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL86
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL84
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL73-1
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL90
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL67
	.4byte	.LVL81
	.2byte	0x27
	.byte	0x9d
	.byte	0xc
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x9d
	.byte	0x1
	.byte	0
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x27
	.byte	0x9d
	.byte	0xc
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x9d
	.byte	0x1
	.byte	0
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x38
	.byte	0x5c
	.byte	0x9d
	.byte	0xc
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x29
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x37
	.byte	0x9d
	.byte	0xc
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x29
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x37
	.byte	0x9d
	.byte	0xc
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x31
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x7d
	.byte	0x7f
	.byte	0x81
	.byte	0
	.byte	0x29
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.4byte	.LVL90
	.4byte	.LFE15
	.2byte	0x27
	.byte	0x9d
	.byte	0xc
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x32
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x1
	.byte	0
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x30
	.byte	0x9f
	.byte	0x9d
	.byte	0x3
	.byte	0
	.byte	0x9d
	.byte	0x1
	.byte	0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-1
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL86
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE14
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE13
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
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x44c380e0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x48435000
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-1
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3a279bbb
	.4byte	.LVL31
	.4byte	.LFE10
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3a279bbb
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0xc2ffc000
	.4byte	.LVL31
	.4byte	.LFE10
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0xc2ffc000
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x79
	.byte	0x8
	.4byte	.LVL14
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x79
	.byte	0x8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
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
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
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
.LASF139:
	.string	"count"
.LASF4:
	.string	"unsigned char"
.LASF107:
	.string	"DMA_Trans_Dir_Type"
.LASF182:
	.string	"GLB_GPIO_Init"
.LASF188:
	.string	"DMA_Control_Reg"
.LASF151:
	.string	"hosal_dac_get_value"
.LASF175:
	.string	"GLB_GPIP_DAC_Set_ChanB_Config"
.LASF38:
	.string	"GPIP_DAC_ChanA_SRC_SIN_GEN"
.LASF148:
	.string	"p_arg"
.LASF92:
	.string	"TransferSize"
.LASF53:
	.string	"dmaEn"
.LASF150:
	.string	"hosal_dac_stop"
.LASF114:
	.string	"DMA_REQ_UART1_RX"
.LASF80:
	.string	"GLB_GPIO_PIN_19"
.LASF88:
	.string	"pullType"
.LASF22:
	.string	"DISABLE"
.LASF115:
	.string	"DMA_REQ_UART1_TX"
.LASF177:
	.string	"GPIP_Set_DAC_DMA_TX_Enable"
.LASF9:
	.string	"long long unsigned int"
.LASF137:
	.string	"data"
.LASF90:
	.string	"smtCtrl"
.LASF174:
	.string	"GLB_GPIP_DAC_Set_ChanA_Config"
.LASF176:
	.string	"GPIP_Set_DAC_DMA_TX_FORMAT_SEL"
.LASF21:
	.string	"hosal_dac_dev_t"
.LASF35:
	.string	"GPIP_DAC_ChanA_SRC_REG"
.LASF68:
	.string	"GLB_GPIO_PIN_7"
.LASF3:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF59:
	.string	"GLB_GPIP_DAC_ChanA_Cfg_Type"
.LASF60:
	.string	"GLB_GPIP_DAC_ChanB_Cfg_Type"
.LASF108:
	.string	"DMA_BURST_SIZE_1"
.LASF109:
	.string	"DMA_BURST_SIZE_4"
.LASF110:
	.string	"DMA_BURST_SIZE_8"
.LASF172:
	.string	"DMA_LLI_Update"
.LASF2:
	.string	"long int"
.LASF113:
	.string	"DMA_REQ_UART0_TX"
.LASF123:
	.string	"DMA_Periph_Req_Type"
.LASF26:
	.string	"GLB_DAC_REF_SEL_EXTERNAL"
.LASF156:
	.string	"hosal_dac_start"
.LASF162:
	.string	"hosal_dma_chan_release"
.LASF10:
	.string	"unsigned int"
.LASF190:
	.string	"memcpy"
.LASF23:
	.string	"ENABLE"
.LASF145:
	.string	"lli_cfg"
.LASF179:
	.string	"GPIP_Set_DAC_ChanB_SRC_SEL"
.LASF101:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF96:
	.string	"DWidth"
.LASF180:
	.string	"GLB_DAC_Set_ChanA_Value"
.LASF71:
	.string	"GLB_GPIO_PIN_10"
.LASF72:
	.string	"GLB_GPIO_PIN_11"
.LASF73:
	.string	"GLB_GPIO_PIN_12"
.LASF74:
	.string	"GLB_GPIO_PIN_13"
.LASF75:
	.string	"GLB_GPIO_PIN_14"
.LASF76:
	.string	"GLB_GPIO_PIN_15"
.LASF77:
	.string	"GLB_GPIO_PIN_16"
.LASF78:
	.string	"GLB_GPIO_PIN_17"
.LASF79:
	.string	"GLB_GPIO_PIN_18"
.LASF146:
	.string	"hosal_dac_dma_cb_reg"
.LASF45:
	.string	"GPIP_DAC_MOD_Type"
.LASF52:
	.string	"resetChanB"
.LASF116:
	.string	"DMA_REQ_I2C_RX"
.LASF28:
	.string	"GPIP_DAC_ChanB_SRC_REG"
.LASF163:
	.string	"GPIP_DAC_ChanA_Disable"
.LASF168:
	.string	"pvPortMalloc"
.LASF105:
	.string	"DMA_TRNS_P2M"
.LASF106:
	.string	"DMA_TRNS_P2P"
.LASF17:
	.string	"port"
.LASF56:
	.string	"chanCovtEn"
.LASF27:
	.string	"GLB_DAC_Ref_Sel_Type"
.LASF173:
	.string	"GPIP_Set_DAC_ChanA_SRC_SEL"
.LASF165:
	.string	"GPIP_Set_DAC_DMA_TX_Disable"
.LASF183:
	.string	"GLB_GPIP_DAC_Init"
.LASF94:
	.string	"DBSize"
.LASF8:
	.string	"long unsigned int"
.LASF143:
	.string	"chA_cfg"
.LASF30:
	.string	"GPIP_DAC_ChanB_SRC_DMA_WITH_FILTER"
.LASF127:
	.string	"dmaCtrl"
.LASF81:
	.string	"GLB_GPIO_PIN_20"
.LASF82:
	.string	"GLB_GPIO_PIN_21"
.LASF83:
	.string	"GLB_GPIO_PIN_22"
.LASF171:
	.string	"hosal_dma_chan_start"
.LASF138:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF167:
	.string	"hosal_dma_irq_callback_set"
.LASF54:
	.string	"dmaFmt"
.LASF189:
	.string	"dac_dma_irq_handler"
.LASF166:
	.string	"hosal_dma_chan_stop"
.LASF147:
	.string	"callback"
.LASF14:
	.string	"dma_enable"
.LASF132:
	.string	"GLB_DAC_CLK_32M"
.LASF191:
	.string	"__builtin_memcpy"
.LASF161:
	.string	"vPortFree"
.LASF12:
	.string	"hosal_dma_chan_t"
.LASF134:
	.string	"hosal_dac_finalize"
.LASF157:
	.string	"hosal_dac_init"
.LASF42:
	.string	"GPIP_DAC_MOD_RESERVE"
.LASF32:
	.string	"GPIP_DAC_ChanB_SRC_A"
.LASF99:
	.string	"Prot"
.LASF44:
	.string	"GPIP_DAC_MOD_512K"
.LASF98:
	.string	"reserved_25"
.LASF100:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF89:
	.string	"drive"
.LASF55:
	.string	"GLB_GPIP_DAC_Cfg_Type"
.LASF186:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_dac.c"
.LASF85:
	.string	"gpioPin"
.LASF33:
	.string	"GPIP_DAC_ChanB_SRC_INVERSE_A"
.LASF117:
	.string	"DMA_REQ_I2C_TX"
.LASF19:
	.string	"dma_chan"
.LASF142:
	.string	"plli_list"
.LASF57:
	.string	"outputEn"
.LASF51:
	.string	"resetChanA"
.LASF95:
	.string	"SWidth"
.LASF20:
	.string	"priv"
.LASF126:
	.string	"nextLLI"
.LASF130:
	.string	"dstPeriph"
.LASF31:
	.string	"GPIP_DAC_ChanB_SRC_SIN_GEN"
.LASF118:
	.string	"DMA_REQ_SPI_RX"
.LASF41:
	.string	"GPIP_DAC_MOD_16K"
.LASF125:
	.string	"destDmaAddr"
.LASF50:
	.string	"refSel"
.LASF58:
	.string	"chanEn"
.LASF120:
	.string	"DMA_REQ_GPADC0"
.LASF121:
	.string	"DMA_REQ_GPADC1"
.LASF24:
	.string	"BL_Fun_Type"
.LASF87:
	.string	"gpioMode"
.LASF124:
	.string	"srcDmaAddr"
.LASF1:
	.string	"short int"
.LASF84:
	.string	"GLB_GPIO_PIN_MAX"
.LASF184:
	.string	"GLB_Set_DAC_CLK"
.LASF93:
	.string	"SBSize"
.LASF97:
	.string	"SLargerD"
.LASF170:
	.string	"DMA_LLI_Init"
.LASF36:
	.string	"GPIP_DAC_ChanA_SRC_DMA"
.LASF34:
	.string	"GPIP_DAC_ChanB_SRC_Type"
.LASF40:
	.string	"GPIP_DAC_MOD_32K"
.LASF140:
	.string	"remainder"
.LASF136:
	.string	"hosal_dac_dma_start"
.LASF7:
	.string	"uint32_t"
.LASF133:
	.string	"GLB_DAC_CLK_XCLK"
.LASF153:
	.string	"float"
.LASF11:
	.string	"char"
.LASF181:
	.string	"GLB_DAC_Set_ChanB_Value"
.LASF16:
	.string	"hosal_dac_config_t"
.LASF18:
	.string	"config"
.LASF129:
	.string	"srcPeriph"
.LASF152:
	.string	"tmp_val"
.LASF160:
	.string	"dac_cfg"
.LASF6:
	.string	"uint8_t"
.LASF149:
	.string	"flag"
.LASF61:
	.string	"GLB_GPIO_PIN_0"
.LASF62:
	.string	"GLB_GPIO_PIN_1"
.LASF63:
	.string	"GLB_GPIO_PIN_2"
.LASF64:
	.string	"GLB_GPIO_PIN_3"
.LASF65:
	.string	"GLB_GPIO_PIN_4"
.LASF66:
	.string	"GLB_GPIO_PIN_5"
.LASF67:
	.string	"GLB_GPIO_PIN_6"
.LASF154:
	.string	"hosal_dac_set_value"
.LASF69:
	.string	"GLB_GPIO_PIN_8"
.LASF70:
	.string	"GLB_GPIO_PIN_9"
.LASF103:
	.string	"DMA_TRNS_M2M"
.LASF43:
	.string	"GPIP_DAC_MOD_8K"
.LASF104:
	.string	"DMA_TRNS_M2P"
.LASF25:
	.string	"GLB_DAC_REF_SEL_INTERNAL"
.LASF158:
	.string	"dac_pin"
.LASF111:
	.string	"DMA_BURST_SIZE_16"
.LASF185:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF29:
	.string	"GPIP_DAC_ChanB_SRC_DMA"
.LASF119:
	.string	"DMA_REQ_SPI_TX"
.LASF49:
	.string	"GPIP_DAC_DMA_TX_FORMAT_Type"
.LASF169:
	.string	"memset"
.LASF159:
	.string	"gpio_cfg"
.LASF15:
	.string	"freq"
.LASF131:
	.string	"DMA_LLI_Cfg_Type"
.LASF128:
	.string	"DMA_LLI_Ctrl_Type"
.LASF135:
	.string	"hosal_dac_dma_stop"
.LASF46:
	.string	"GPIP_DAC_DMA_FORMAT_0"
.LASF47:
	.string	"GPIP_DAC_DMA_FORMAT_1"
.LASF48:
	.string	"GPIP_DAC_DMA_FORMAT_2"
.LASF178:
	.string	"hosal_dma_chan_request"
.LASF86:
	.string	"gpioFun"
.LASF112:
	.string	"DMA_REQ_UART0_RX"
.LASF155:
	.string	"y_data"
.LASF37:
	.string	"GPIP_DAC_ChanA_SRC_DMA_WITH_FILTER"
.LASF122:
	.string	"DMA_REQ_NONE"
.LASF102:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF187:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF141:
	.string	"dmactrl"
.LASF13:
	.string	"hosal_dac_cb_t"
.LASF39:
	.string	"GPIP_DAC_ChanA_SRC_Type"
.LASF144:
	.string	"chB_cfg"
.LASF164:
	.string	"GPIP_DAC_ChanB_Disable"
.LASF91:
	.string	"GLB_GPIO_Cfg_Type"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
