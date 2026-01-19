	.file	"bl_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.type	adc_data_update, @function
adc_data_update:
.LFB37:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_adc.c"
	.loc 1 255 1
	.cfi_startproc
	.loc 1 256 5
	.loc 1 258 5
	.loc 1 255 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 258 14
	li	a0,1
	call	bl_dma_find_ctx_by_channel
.LVL0:
	.loc 1 259 5 is_stmt 1
	.loc 1 259 8 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 264 5 is_stmt 1
	.loc 1 264 8 is_stmt 0
	lw	a4,12(a0)
	.loc 1 265 73
	lw	a5,8(a0)
	.loc 1 264 8
	bne	a4,zero,.L4
	.loc 1 265 9 is_stmt 1
	.loc 1 265 30 is_stmt 0
	lw	a5,4(a5)
	sw	a5,4(a0)
	.loc 1 266 9 is_stmt 1
	.loc 1 266 26 is_stmt 0
	li	a5,1
	sw	a5,12(a0)
.L5:
	.loc 1 272 5 is_stmt 1
	.loc 1 272 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 272 8
	beq	a5,zero,.L1
	.loc 1 273 9 is_stmt 1
	.loc 1 277 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 273 16
	lw	a2,20(a0)
	lw	a1,4(a0)
	.loc 1 277 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 273 16
	lw	a0,0(a0)
.LVL1:
	.loc 1 277 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 273 16
	jr	a5
.LVL2:
.L4:
	.cfi_restore_state
	.loc 1 268 9 is_stmt 1
	.loc 1 268 30 is_stmt 0
	lw	a5,20(a5)
	.loc 1 269 26
	sw	zero,12(a0)
	.loc 1 268 30
	sw	a5,4(a0)
	.loc 1 269 9 is_stmt 1
	j	.L5
.L1:
	.loc 1 277 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	adc_data_update, .-adc_data_update
	.section	.text.ADC_Clock_Init,"ax",@progbits
	.align	1
	.globl	ADC_Clock_Init
	.type	ADC_Clock_Init, @function
ADC_Clock_Init:
.LFB30:
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 48 5
	.loc 1 47 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 50 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 47 1
	mv	a2,a0
	.loc 1 48 5
	li	a1,0
	.loc 1 50 1
	.loc 1 48 5
	li	a0,1
.LVL4:
	.loc 1 50 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 48 5
	tail	GLB_Set_ADC_CLK
.LVL5:
	.cfi_endproc
.LFE30:
	.size	ADC_Clock_Init, .-ADC_Clock_Init
	.section	.text.TSEN_Calibration,"ax",@progbits
	.align	1
	.globl	TSEN_Calibration
	.type	TSEN_Calibration, @function
TSEN_Calibration:
.LFB31:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
	.loc 1 54 5
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 54 5
	call	ADC_SET_TSVBE_LOW
.LVL6:
	.loc 1 55 5 is_stmt 1
	call	ADC_Start
.LVL7:
	.loc 1 56 5
	li	a0,100
	call	BL602_Delay_MS
.LVL8:
	.loc 1 57 5
.L14:
	.loc 1 57 37 discriminator 1
	.loc 1 57 10 discriminator 1
	.loc 1 57 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL9:
	.loc 1 57 10 discriminator 1
	beq	a0,zero,.L14
	.loc 1 58 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL10:
	.loc 1 60 5
	call	ADC_SET_TSVBE_HIGH
.LVL11:
	.loc 1 61 5
	call	ADC_Start
.LVL12:
	.loc 1 62 5
	li	a0,100
	call	BL602_Delay_MS
.LVL13:
	.loc 1 63 5
.L15:
	.loc 1 63 37 discriminator 1
	.loc 1 63 10 discriminator 1
	.loc 1 63 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL14:
	.loc 1 63 10 discriminator 1
	beq	a0,zero,.L15
	.loc 1 64 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL15:
	.loc 1 66 5
	.loc 1 67 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 66 5
	tail	ADC_SET_TSVBE_LOW
.LVL16:
	.cfi_endproc
.LFE31:
	.size	TSEN_Calibration, .-TSEN_Calibration
	.section	.text.test_adc_init,"ax",@progbits
	.align	1
	.globl	test_adc_init
	.type	test_adc_init, @function
test_adc_init:
.LFB33:
	.loc 1 124 1 is_stmt 1
	.cfi_startproc
	.loc 1 125 5
	.loc 1 124 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 125 5
	li	a0,2
	call	ADC_Clock_Init
.LVL17:
	.loc 1 127 5 is_stmt 1
	call	ADC_Reset
.LVL18:
	.loc 1 129 5
	call	ADC_Disable
.LVL19:
	.loc 1 130 5
	call	ADC_Enable
.LVL20:
	.loc 1 132 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL21:
	.loc 1 133 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL22:
	.loc 1 134 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL23:
	.loc 1 136 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL24:
	.loc 1 137 5
	call	TSEN_Calibration
.LVL25:
	.loc 1 139 5
	.loc 1 140 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	test_adc_init, .-test_adc_init
	.globl	__extendsfdf2
	.globl	__divdf3
	.globl	__truncdfsf2
	.section	.text.test_adc_get,"ax",@progbits
	.align	1
	.globl	test_adc_get
	.type	test_adc_get, @function
test_adc_get:
.LFB34:
	.loc 1 143 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 144 5
	.loc 1 145 5
	.loc 1 143 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	fsw	fs0,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 40, -36
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 172 21
	lui	a5,%hi(.LC1)
	flw	fs0,%lo(.LC1)(a5)
	.loc 1 173 31
	lui	a5,%hi(.LC2)
	lw	s4,%lo(.LC2)(a5)
	lw	s5,%lo(.LC2+4)(a5)
	.loc 1 143 1
	mv	s2,a0
	.loc 1 145 14
	sw	zero,-60(s0)
	.loc 1 146 5 is_stmt 1
.LVL27:
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 150 5
	.loc 1 150 17
	.loc 1 147 19 is_stmt 0
	li	s6,0
	.loc 1 147 14
	li	s3,0
	.loc 1 150 12
	li	s1,0
.LVL28:
.L30:
	.loc 1 151 9 is_stmt 1
	call	ADC_Start
.LVL29:
	.loc 1 153 9
.L24:
	.loc 1 153 14
	.loc 1 153 15 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL30:
	.loc 1 153 14
	beq	a0,zero,.L25
.L28:
	.loc 1 158 9 is_stmt 1
	.loc 1 159 13
	.loc 1 159 22 is_stmt 0
	call	ADC_Read_FIFO
.LVL31:
	.loc 1 159 20
	sw	a0,-60(s0)
	.loc 1 160 13 is_stmt 1
	addi	a2,s0,-56
	li	a1,1
	addi	a0,s0,-60
	call	ADC_Parse_Result
.LVL32:
	.loc 1 162 13
	lhu	a5,-54(s0)
	.loc 1 162 15 is_stmt 0
	bne	s1,zero,.L26
	.loc 1 163 17 is_stmt 1
	.loc 1 163 20 is_stmt 0
	mv	s3,a5
.LVL33:
.L27:
	.loc 1 167 16 is_stmt 1
	.loc 1 167 17 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL34:
	.loc 1 167 9
	bne	a0,zero,.L28
	.loc 1 169 9 is_stmt 1
	.loc 1 169 12 is_stmt 0
	beq	s1,zero,.L29
	.loc 1 170 13 is_stmt 1
	.loc 1 170 35 is_stmt 0
	fcvt.s.wu	fa5,s6
	.loc 1 170 23
	fcvt.s.w	fa0,s3
	.loc 1 170 21
	fsub.s	fa0,fa0,fa5
.LVL35:
	.loc 1 172 13 is_stmt 1
	.loc 1 173 13
	.loc 1 173 31 is_stmt 0
	fsub.s	fa0,fa0,fs0
.LVL36:
	call	__extendsfdf2
.LVL37:
	mv	a2,s4
	mv	a3,s5
	call	__divdf3
.LVL38:
	.loc 1 176 13 is_stmt 1
	.loc 1 173 21 is_stmt 0
	call	__truncdfsf2
.LVL39:
	.loc 1 176 20
	fcvt.w.s a5,fa0,rtz
	sh	a5,0(s2)
	.loc 1 178 9 is_stmt 1
	.loc 1 181 13
	call	ADC_SET_TSVBE_LOW
.LVL40:
.L31:
	.loc 1 150 24 discriminator 2
	.loc 1 150 17 discriminator 2
	.loc 1 150 5 is_stmt 0 discriminator 2
	beq	s1,zero,.L32
	.loc 1 185 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL41:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL42:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL43:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
.LVL44:
	flw	fs0,28(sp)
	.cfi_restore 40
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L32:
	.cfi_restore_state
	li	s1,1
.LVL46:
	j	.L30
.LVL47:
.L25:
.LBB4:
	.loc 1 154 13 is_stmt 1
	.loc 1 155 13
	li	a0,1
	call	aos_msleep
.LVL48:
	j	.L24
.L26:
.LBE4:
	.loc 1 165 17
	.loc 1 165 20 is_stmt 0
	mv	s6,a5
.LVL49:
	j	.L27
.L29:
	.loc 1 178 9 is_stmt 1
	.loc 1 179 13
	call	ADC_SET_TSVBE_HIGH
.LVL50:
	j	.L31
	.cfi_endproc
.LFE34:
	.size	test_adc_get, .-test_adc_get
	.section	.text.test_adc_test,"ax",@progbits
	.align	1
	.globl	test_adc_test
	.type	test_adc_test, @function
test_adc_test:
.LFB35:
	.loc 1 188 1
	.cfi_startproc
	.loc 1 189 5
.LBB7:
.LBB8:
	.loc 1 71 2
	.loc 1 72 2
.LBE8:
.LBE7:
	.loc 1 188 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	s2,16(sp)
	.cfi_offset 18, -16
.LBB11:
.LBB9:
	.loc 1 72 11
	sw	zero,-28(s0)
	.loc 1 73 5 is_stmt 1
.LVL51:
	.loc 1 74 5
	.loc 1 75 5
	.loc 1 77 5
	call	ADC_Reset
.LVL52:
	.loc 1 79 5
	call	ADC_Disable
.LVL53:
	.loc 1 80 5
	call	ADC_Enable
.LVL54:
	.loc 1 82 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL55:
	.loc 1 83 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL56:
	.loc 1 84 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL57:
	.loc 1 86 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL58:
	.loc 1 87 5
	.loc 1 89 7 is_stmt 0
	li	s1,0
	.loc 1 87 5
	call	TSEN_Calibration
.LVL59:
	.loc 1 89 2 is_stmt 1
	.loc 1 89 10
	.loc 1 89 2 is_stmt 0
	li	s2,40
.LVL60:
.L41:
	.loc 1 90 3 is_stmt 1
	call	ADC_Start
.LVL61:
	.loc 1 92 3
.L37:
	.loc 1 92 35
	.loc 1 92 8
	.loc 1 92 9 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL62:
	.loc 1 92 8
	beq	a0,zero,.L37
.L38:
	.loc 1 94 3 is_stmt 1
	.loc 1 95 4
	.loc 1 95 13 is_stmt 0
	call	ADC_Read_FIFO
.LVL63:
	.loc 1 95 11
	sw	a0,-28(s0)
	.loc 1 96 4 is_stmt 1
	addi	a2,s0,-24
	li	a1,1
	addi	a0,s0,-28
	call	ADC_Parse_Result
.LVL64:
	.loc 1 98 13
	.loc 1 101 17
	.loc 1 103 9
	.loc 1 103 10 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL65:
	.loc 1 103 3
	bne	a0,zero,.L38
	.loc 1 105 9 is_stmt 1
	.loc 1 109 13
	.loc 1 111 13
	.loc 1 113 9
	.loc 1 113 11 is_stmt 0
	andi	a5,s1,1
	bne	a5,zero,.L39
	.loc 1 114 13 is_stmt 1
	call	ADC_SET_TSVBE_HIGH
.LVL66:
.L40:
	.loc 1 118 3
	.loc 1 89 16 is_stmt 0
	addi	s1,s1,1
.LVL67:
	.loc 1 118 3
	li	a0,500
	.loc 1 89 16
	andi	s1,s1,0xff
	.loc 1 118 3
	call	BL602_Delay_MS
.LVL68:
	.loc 1 89 15 is_stmt 1
	.loc 1 89 10
	.loc 1 89 2 is_stmt 0
	bne	s1,s2,.L41
.LVL69:
.LBE9:
.LBE11:
	.loc 1 190 5 is_stmt 1
	.loc 1 191 1 is_stmt 0
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
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL70:
.L39:
	.cfi_restore_state
.LBB12:
.LBB10:
	.loc 1 116 13 is_stmt 1
	call	ADC_SET_TSVBE_LOW
.LVL71:
	j	.L40
.LBE10:
.LBE12:
	.cfi_endproc
.LFE35:
	.size	test_adc_test, .-test_adc_test
	.section	.text.bl_tsen_adc_get,"ax",@progbits
	.align	1
	.globl	bl_tsen_adc_get
	.type	bl_tsen_adc_get, @function
bl_tsen_adc_get:
.LFB36:
	.loc 1 194 1
	.cfi_startproc
.LVL72:
	.loc 1 195 5
	.loc 1 196 5
	.loc 1 198 5
	.loc 1 194 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	ra,92(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 1 198 16
	lui	s2,%hi(.LANCHOR2)
	.loc 1 194 1
	.loc 1 198 8
	lhu	a4,%lo(.LANCHOR2)(s2)
	li	a5,65536
	addi	a5,a5,-1
	.loc 1 194 1
	mv	s1,a0
	addi	s3,s2,%lo(.LANCHOR2)
	.loc 1 198 8
	bne	a4,a5,.L48
.LBB13:
	.loc 1 199 9 is_stmt 1
	.loc 1 200 22 is_stmt 0
	lui	a1,%hi(.LANCHOR3)
.LVL73:
	li	a2,52
	addi	a1,a1,%lo(.LANCHOR3)
	addi	a0,s0,-84
.LVL74:
	.loc 1 199 21
	sh	zero,0(s3)
	.loc 1 200 9 is_stmt 1
	.loc 1 200 22 is_stmt 0
	call	memcpy
.LVL75:
	.loc 1 217 9 is_stmt 1
	.loc 1 222 9 is_stmt 0
	li	a2,7
	li	a1,0
	li	a0,1
	.loc 1 217 27
	sw	zero,-92(s0)
	sw	zero,-88(s0)
	.loc 1 222 9 is_stmt 1
	call	GLB_Set_ADC_CLK
.LVL76:
	.loc 1 224 9
	call	ADC_Disable
.LVL77:
	.loc 1 225 9
	call	ADC_Enable
.LVL78:
	.loc 1 227 9
	call	ADC_Reset
.LVL79:
	.loc 1 229 9
	addi	a0,s0,-84
	call	ADC_Init
.LVL80:
	.loc 1 230 9
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL81:
	.loc 1 231 9
	li	a0,0
	call	ADC_Tsen_Init
.LVL82:
	.loc 1 233 9
	addi	a0,s0,-92
	call	ADC_FIFO_Cfg
.LVL83:
	.loc 1 235 9
	.loc 1 235 13 is_stmt 0
	addi	a0,s2,%lo(.LANCHOR2)
	call	ADC_Trim_TSEN
.LVL84:
	.loc 1 238 13 is_stmt 1
.L48:
.LBE13:
	.loc 1 241 5
	.loc 1 241 11 is_stmt 0
	lhu	a0,0(s3)
	call	TSEN_Get_Temp
.LVL85:
	.loc 1 242 5 is_stmt 1
	.loc 1 243 9
	.loc 1 246 5
	.loc 1 246 8 is_stmt 0
	beq	s1,zero,.L49
	.loc 1 247 9 is_stmt 1
	.loc 1 247 17 is_stmt 0
	fcvt.w.s a5,fa0,rtz
	sh	a5,0(s1)
.L49:
	.loc 1 250 5 is_stmt 1
	.loc 1 251 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
.LVL86:
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	li	a0,0
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	bl_tsen_adc_get, .-bl_tsen_adc_get
	.section	.text.bl_adc_freq_init,"ax",@progbits
	.align	1
	.globl	bl_adc_freq_init
	.type	bl_adc_freq_init, @function
bl_adc_freq_init:
.LFB38:
	.loc 1 282 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 1 283 5
	.loc 1 284 5
	.loc 1 285 5
	.loc 1 287 5
	.loc 1 282 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 290 19
	li	a5,1
	.loc 1 287 8
	bne	a0,zero,.L55
	li	a5,12
.L55:
.LVL88:
	.loc 1 293 5 is_stmt 1
	.loc 1 293 39 is_stmt 0
	li	a4,1280
	mul	a5,a5,a4
.LVL89:
	.loc 1 293 17
	li	a4,96002048
	addi	a4,a4,-2048
	divu	a5,a4,a5
.LVL90:
	.loc 1 294 5 is_stmt 1
	.loc 1 294 9 is_stmt 0
	divu	a2,a5,a1
.LVL91:
	.loc 1 295 5 is_stmt 1
	.loc 1 295 15 is_stmt 0
	addi	a3,a2,1
	.loc 1 295 20
	mul	a4,a3,a1
	.loc 1 295 27
	sub	a4,a4,a5
	.loc 1 295 8
	remu	a5,a5,a1
.LVL92:
	bgeu	a4,a5,.L56
	.loc 1 296 13
	mv	a2,a3
.LVL93:
.L56:
	.loc 1 299 5 is_stmt 1
	li	a5,64
	bleu	a2,a5,.L57
	li	a2,64
.LVL94:
.L57:
	.loc 1 307 5
	.loc 1 309 5
	li	a5,3
	bgeu	a2,a5,.L58
	li	a2,3
.LVL95:
.L58:
	addi	a2,a2,-1
	andi	a2,a2,0xff
	li	a1,0
.LVL96:
	li	a0,1
.LVL97:
	call	GLB_Set_ADC_CLK
.LVL98:
	.loc 1 311 5
	.loc 1 312 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	bl_adc_freq_init, .-bl_adc_freq_init
	.section	.text.bl_adc_dma_init,"ax",@progbits
	.align	1
	.globl	bl_adc_dma_init
	.type	bl_adc_dma_init, @function
bl_adc_dma_init:
.LFB41:
	.loc 1 395 1 is_stmt 1
	.cfi_startproc
.LVL99:
	.loc 1 396 5
	.loc 1 397 5
	.loc 1 398 5
	.loc 1 399 5
	.loc 1 401 5
	.loc 1 401 8 is_stmt 0
	bne	a1,zero,.L64
	.loc 1 404 16
	li	a0,-1
.LVL100:
	.loc 1 447 1
	ret
.LVL101:
.L66:
	.cfi_def_cfa_register 8
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 404 16
	li	a0,-1
.L63:
	.loc 1 447 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL102:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL103:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL104:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL105:
.L64:
	.loc 1 395 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	s5,a0
	.loc 1 407 14
	li	a0,28
.LVL106:
	mv	s4,a1
	.loc 1 407 5 is_stmt 1
	.loc 1 407 14 is_stmt 0
	call	pvPortMalloc
.LVL107:
	mv	s2,a0
.LVL108:
	.loc 1 408 5 is_stmt 1
	.loc 1 408 8 is_stmt 0
	beq	a0,zero,.L66
	.loc 1 414 5 is_stmt 1
	.loc 1 414 14 is_stmt 0
	li	a0,32
.LVL109:
	call	pvPortMalloc
.LVL110:
	mv	s1,a0
.LVL111:
	.loc 1 415 5 is_stmt 1
	.loc 1 415 8 is_stmt 0
	beq	a0,zero,.L66
	.loc 1 421 5 is_stmt 1
	.loc 1 421 14 is_stmt 0
	slli	a0,s4,3
	call	pvPortMalloc
.LVL112:
	mv	s3,a0
.LVL113:
	.loc 1 422 5 is_stmt 1
	.loc 1 422 8 is_stmt 0
	beq	a0,zero,.L66
	.loc 1 428 5 is_stmt 1
	.loc 1 428 16 is_stmt 0
	li	a5,2
	sw	a5,-44(s0)
	.loc 1 429 5 is_stmt 1
	.loc 1 431 5 is_stmt 0
	li	a0,1
.LVL114:
	.loc 1 429 22
	li	a5,22
	sw	a5,-40(s0)
	.loc 1 430 5 is_stmt 1
	.loc 1 430 22 is_stmt 0
	sw	zero,-36(s0)
	.loc 1 431 5 is_stmt 1
	call	DMA_Channel_Disable
.LVL115:
	.loc 1 433 5
.LBB16:
.LBB17:
	.loc 1 368 5
	.loc 1 370 5
	.loc 1 371 5
	.loc 1 372 5
	.loc 1 373 5
	.loc 1 374 5
	.loc 1 375 5
	.loc 1 376 5
	.loc 1 377 5
	.loc 1 378 5
	.loc 1 379 5
	.loc 1 381 5
	.loc 1 383 35 is_stmt 0
	addi	a5,s1,16
	.loc 1 383 23
	sw	a5,8(s1)
	.loc 1 384 22
	slli	a5,s4,20
	li	a4,-2008547328
	srli	a5,a5,20
	or	a5,a5,a4
	lw	a4,12(s1)
	li	a3,33554432
	.loc 1 381 26
	li	a2,1073750016
	.loc 1 384 22
	and	a4,a3,a4
	or	a4,a5,a4
	sw	a4,12(s1)
	.loc 1 389 22
	lw	a4,28(s1)
	.loc 1 381 26
	addi	a2,a2,4
	.loc 1 382 27
	sw	s3,4(s1)
	.loc 1 389 22
	and	a3,a3,a4
	or	a5,a5,a3
	.loc 1 387 39
	addi	s3,s3,48
.LVL116:
	.loc 1 381 26
	sw	a2,0(s1)
	.loc 1 382 5 is_stmt 1
	.loc 1 383 5
	.loc 1 384 5
	.loc 1 386 5
	.loc 1 386 26 is_stmt 0
	sw	a2,16(s1)
	.loc 1 387 5 is_stmt 1
	.loc 1 389 22 is_stmt 0
	sw	a5,28(s1)
.LBE17:
.LBE16:
	.loc 1 434 5
	addi	a1,s0,-44
	li	a0,1
.LBB19:
.LBB18:
	.loc 1 387 27
	sw	s3,20(s1)
	.loc 1 388 5 is_stmt 1
	.loc 1 388 23 is_stmt 0
	sw	s1,24(s1)
	.loc 1 389 5 is_stmt 1
	.loc 1 391 5
.LVL117:
.LBE18:
.LBE19:
	.loc 1 434 5
	call	DMA_LLI_Init
.LVL118:
	.loc 1 435 5
	mv	a1,s1
	li	a0,1
	call	DMA_LLI_Update
.LVL119:
	.loc 1 437 5
	.loc 1 444 5 is_stmt 0
	lui	a1,%hi(adc_data_update)
	.loc 1 437 18
	sw	s5,0(s2)
	.loc 1 438 5 is_stmt 1
	.loc 1 438 21 is_stmt 0
	sw	s1,8(s2)
	.loc 1 439 5 is_stmt 1
	.loc 1 439 22 is_stmt 0
	sw	zero,12(s2)
	.loc 1 440 5 is_stmt 1
	.loc 1 440 29 is_stmt 0
	sw	zero,16(s2)
	.loc 1 441 5 is_stmt 1
	.loc 1 441 26 is_stmt 0
	sw	zero,4(s2)
	.loc 1 442 5 is_stmt 1
	.loc 1 442 23 is_stmt 0
	sw	s4,20(s2)
	.loc 1 443 5 is_stmt 1
	.loc 1 443 16 is_stmt 0
	sw	zero,24(s2)
	.loc 1 444 5 is_stmt 1
	mv	a3,s2
	li	a2,0
	addi	a1,a1,%lo(adc_data_update)
	li	a0,1
	call	bl_dma_irq_register
.LVL120:
	.loc 1 446 5
	.loc 1 446 12 is_stmt 0
	li	a0,0
	j	.L63
	.cfi_endproc
.LFE41:
	.size	bl_adc_dma_init, .-bl_adc_dma_init
	.section	.text.bl_adc_start,"ax",@progbits
	.align	1
	.globl	bl_adc_start
	.type	bl_adc_start, @function
bl_adc_start:
.LFB42:
	.loc 1 450 1 is_stmt 1
	.cfi_startproc
	.loc 1 451 5
	.loc 1 450 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 451 5
	li	a2,1
	li	a1,2
	li	a0,1
	call	DMA_IntMask
.LVL121:
	.loc 1 452 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,1
	call	DMA_IntMask
.LVL122:
	.loc 1 453 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	DMA_IntMask
.LVL123:
	.loc 1 455 5
	call	ADC_Start
.LVL124:
	.loc 1 456 5
	call	DMA_Enable
.LVL125:
	.loc 1 457 5
	li	a0,1
	call	DMA_Channel_Enable
.LVL126:
	.loc 1 459 5
	.loc 1 460 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	bl_adc_start, .-bl_adc_start
	.section	.text.bl_adc_gpio_init,"ax",@progbits
	.align	1
	.globl	bl_adc_gpio_init
	.type	bl_adc_gpio_init, @function
bl_adc_gpio_init:
.LFB43:
	.loc 1 463 1 is_stmt 1
	.cfi_startproc
.LVL127:
	.loc 1 464 5
	.loc 1 463 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 464 19
	sw	a0,-20(s0)
	.loc 1 466 5 is_stmt 1
	addi	a1,s0,-20
	li	a2,1
	li	a0,10
.LVL128:
	call	GLB_GPIO_Func_Init
.LVL129:
	.loc 1 468 5
	.loc 1 469 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	bl_adc_gpio_init, .-bl_adc_gpio_init
	.section	.text.bl_adc_parse_data,"ax",@progbits
	.align	1
	.globl	bl_adc_parse_data
	.type	bl_adc_parse_data, @function
bl_adc_parse_data:
.LFB45:
	.loc 1 482 1 is_stmt 1
	.cfi_startproc
.LVL130:
	.loc 1 483 5
	.loc 1 484 5
	.loc 1 486 5
	.loc 1 482 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 486 12
	li	a4,0
.LVL131:
.L84:
	.loc 1 486 17 is_stmt 1 discriminator 1
	.loc 1 486 5 is_stmt 0 discriminator 1
	blt	a4,a1,.L88
	.loc 1 499 12
	li	a0,-1
.LVL132:
	j	.L83
.LVL133:
.L88:
	.loc 1 487 9 is_stmt 1
	.loc 1 487 17 is_stmt 0
	slli	a5,a4,2
	add	a5,a0,a5
	lw	a5,0(a5)
	.loc 1 487 21
	srli	a6,a5,21
	.loc 1 487 12
	bne	a6,a2,.L85
	.loc 1 488 13 is_stmt 1
	li	a0,65536
.LVL134:
	addi	a0,a0,-1
	.loc 1 489 22 is_stmt 0
	and	a0,a5,a0
	.loc 1 488 16
	bne	a3,zero,.L86
.L83:
	.loc 1 500 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L86:
	.cfi_restore_state
	.loc 1 492 17 is_stmt 1
.LBB20:
.LBB21:
	.loc 1 473 5
	.loc 1 475 5
	.loc 1 476 5
	.loc 1 476 16 is_stmt 0
	li	a5,4096
	addi	a5,a5,-896
	mul	a0,a0,a5
.LVL135:
	.loc 1 478 5 is_stmt 1
	.loc 1 476 9 is_stmt 0
	srli	a0,a0,16
.LVL136:
.LBE21:
.LBE20:
	.loc 1 494 17 is_stmt 1
	.loc 1 494 24 is_stmt 0
	j	.L83
.LVL137:
.L85:
	.loc 1 486 32 is_stmt 1 discriminator 2
	.loc 1 486 33 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL138:
	j	.L84
	.cfi_endproc
.LFE45:
	.size	bl_adc_parse_data, .-bl_adc_parse_data
	.section	.text.bl_adc_get_channel_by_gpio,"ax",@progbits
	.align	1
	.globl	bl_adc_get_channel_by_gpio
	.type	bl_adc_get_channel_by_gpio, @function
bl_adc_get_channel_by_gpio:
.LFB46:
	.loc 1 503 1 is_stmt 1
	.cfi_startproc
.LVL139:
	.loc 1 504 5
	.loc 1 506 5
	.loc 1 503 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 506 8
	li	a4,4
	beq	a0,a4,.L92
	mv	a5,a0
	.loc 1 508 12 is_stmt 1
	.loc 1 508 15 is_stmt 0
	li	a4,5
	.loc 1 509 17
	li	a0,4
.LVL140:
	.loc 1 508 15
	beq	a5,a4,.L90
	.loc 1 510 12 is_stmt 1
	.loc 1 510 15 is_stmt 0
	li	a4,6
	.loc 1 511 17
	li	a0,5
	.loc 1 510 15
	beq	a5,a4,.L90
	.loc 1 512 12 is_stmt 1
	.loc 1 512 15 is_stmt 0
	li	a4,9
	.loc 1 513 17
	li	a0,7
	.loc 1 512 15
	beq	a5,a4,.L90
	.loc 1 514 12 is_stmt 1
	.loc 1 514 15 is_stmt 0
	li	a4,10
	.loc 1 515 17
	li	a0,9
	.loc 1 514 15
	beq	a5,a4,.L90
	.loc 1 516 12 is_stmt 1
	.loc 1 516 15 is_stmt 0
	li	a4,11
	.loc 1 517 17
	li	a0,10
	.loc 1 516 15
	beq	a5,a4,.L90
	.loc 1 518 12 is_stmt 1
	.loc 1 518 15 is_stmt 0
	li	a4,12
	.loc 1 519 17
	li	a0,0
	.loc 1 518 15
	beq	a5,a4,.L90
	.loc 1 520 12 is_stmt 1
	.loc 1 520 15 is_stmt 0
	li	a4,13
	.loc 1 521 17
	li	a0,3
	.loc 1 520 15
	beq	a5,a4,.L90
.LVL141:
.LBB24:
.LBB25:
	.loc 1 522 12 is_stmt 1
	.loc 1 522 15 is_stmt 0
	li	a4,14
	.loc 1 523 17
	li	a0,2
	.loc 1 522 15
	beq	a5,a4,.L90
	.loc 1 524 12 is_stmt 1
	.loc 1 524 15 is_stmt 0
	li	a4,15
	.loc 1 525 17
	li	a0,11
	.loc 1 524 15
	beq	a5,a4,.L90
	.loc 1 527 16
	li	a0,-1
.LVL142:
.L90:
.LBE25:
.LBE24:
	.loc 1 531 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL143:
.L92:
	.cfi_restore_state
	.loc 1 507 17
	li	a0,1
.LVL144:
	j	.L90
	.cfi_endproc
.LFE46:
	.size	bl_adc_get_channel_by_gpio, .-bl_adc_get_channel_by_gpio
	.section	.text.bl_adc_init,"ax",@progbits
	.align	1
	.globl	bl_adc_init
	.type	bl_adc_init, @function
bl_adc_init:
.LFB39:
	.loc 1 315 1 is_stmt 1
	.cfi_startproc
.LVL145:
	.loc 1 316 5
	.loc 1 317 5
	.loc 1 318 5
	.loc 1 319 5
	.loc 1 320 5
	.loc 1 321 5
	.loc 1 322 5
	.loc 1 324 5
	.loc 1 315 1 is_stmt 0
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s1,164(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	s2,160(sp)
	.cfi_offset 18, -16
	.loc 1 325 18
	li	a4,1
	.loc 1 324 18
	li	a5,2
	.loc 1 325 18
	sw	a4,-64(s0)
	.loc 1 326 18
	li	a4,5
	.loc 1 315 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 324 18
	sw	a5,-68(s0)
	.loc 1 325 5 is_stmt 1
	.loc 1 326 5
	.loc 1 326 18 is_stmt 0
	sw	a4,-60(s0)
	.loc 1 327 5 is_stmt 1
	.loc 1 334 20 is_stmt 0
	sw	a5,-28(s0)
	.loc 1 327 17
	sw	zero,-56(s0)
	.loc 1 328 5 is_stmt 1
	.loc 1 328 17 is_stmt 0
	sw	zero,-52(s0)
	.loc 1 329 5 is_stmt 1
	.loc 1 329 20 is_stmt 0
	sw	zero,-48(s0)
	.loc 1 330 5 is_stmt 1
	.loc 1 330 19 is_stmt 0
	sw	zero,-44(s0)
	.loc 1 331 5 is_stmt 1
	.loc 1 331 15 is_stmt 0
	sw	zero,-40(s0)
	.loc 1 332 5 is_stmt 1
	.loc 1 332 16 is_stmt 0
	sw	zero,-36(s0)
	.loc 1 333 5 is_stmt 1
	.loc 1 333 21 is_stmt 0
	sw	zero,-32(s0)
	.loc 1 334 5 is_stmt 1
	.loc 1 335 5
	.loc 1 335 25 is_stmt 0
	sw	zero,-24(s0)
	.loc 1 336 5 is_stmt 1
	.loc 1 336 26 is_stmt 0
	sh	zero,-20(s0)
	.loc 1 338 5 is_stmt 1
	call	ADC_Disable
.LVL146:
	.loc 1 339 5
	call	ADC_Enable
.LVL147:
	.loc 1 340 5
	call	ADC_Reset
.LVL148:
	.loc 1 342 5
	addi	a0,s0,-68
	call	ADC_Init
.LVL149:
	.loc 1 344 5
	.loc 1 344 8 is_stmt 0
	bne	s1,zero,.L104
	addi	a4,s0,-164
	addi	a5,s0,-116
	.loc 1 347 34
	li	a2,23
	.loc 1 345 9
	li	a3,12
.LVL150:
.L105:
	.loc 1 346 13 is_stmt 1 discriminator 3
	.loc 1 346 34 is_stmt 0 discriminator 3
	sw	s1,0(a4)
	.loc 1 347 13 is_stmt 1 discriminator 3
	.loc 1 347 34 is_stmt 0 discriminator 3
	sw	a2,0(a5)
	.loc 1 345 29 is_stmt 1 discriminator 3
	.loc 1 345 30 is_stmt 0 discriminator 3
	addi	s1,s1,1
.LVL151:
	.loc 1 345 21 is_stmt 1 discriminator 3
	.loc 1 345 9 is_stmt 0 discriminator 3
	addi	a4,a4,4
	addi	a5,a5,4
	bne	s1,a3,.L105
.LVL152:
.L106:
	.loc 1 357 5 is_stmt 1
	andi	a2,s1,0xff
	addi	a1,s0,-116
	addi	a0,s0,-164
	li	a3,1
	call	ADC_Scan_Channel_Config
.LVL153:
	.loc 1 359 5
	.loc 1 361 5 is_stmt 0
	addi	a0,s0,-172
	.loc 1 360 24
	li	a5,1
	.loc 1 359 32
	sw	zero,-172(s0)
	.loc 1 360 5 is_stmt 1
	.loc 1 360 24 is_stmt 0
	sw	a5,-168(s0)
	.loc 1 361 5 is_stmt 1
	call	ADC_FIFO_Cfg
.LVL154:
	.loc 1 363 5
	.loc 1 364 1 is_stmt 0
	lw	ra,172(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	lw	s1,164(sp)
	.cfi_restore 9
.LVL155:
	lw	s2,160(sp)
	.cfi_restore 18
.LVL156:
	li	a0,0
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.LVL157:
.L104:
	.cfi_restore_state
	.loc 1 352 9 is_stmt 1
	.loc 1 352 16 is_stmt 0
	mv	a0,s2
	call	bl_adc_get_channel_by_gpio
.LVL158:
	.loc 1 353 9 is_stmt 1
	.loc 1 354 30 is_stmt 0
	li	a5,23
	.loc 1 353 30
	sw	a0,-164(s0)
	.loc 1 354 9 is_stmt 1
	.loc 1 354 30 is_stmt 0
	sw	a5,-116(s0)
	.loc 1 355 9 is_stmt 1
.LVL159:
	.loc 1 355 21 is_stmt 0
	li	s1,1
.LVL160:
	j	.L106
	.cfi_endproc
.LFE39:
	.size	bl_adc_init, .-bl_adc_init
	.globl	adcFifoCfg
	.globl	adcCfg
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	1158733824
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	1855425872
	.word	1075774226
	.section	.rodata
	.align	2
	.set	.LANCHOR3,. + 0
.LC0:
	.word	2
	.word	1
	.word	7
	.word	1
	.word	1
	.word	2
	.word	0
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.half	0
	.zero	2
	.section	.data.adcCfg,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adcCfg, @object
	.size	adcCfg, 52
adcCfg:
	.word	2
	.word	1
	.word	4
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.half	0
	.zero	2
	.section	.sbss.adcFifoCfg,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	adcFifoCfg, @object
	.size	adcFifoCfg, 8
adcFifoCfg:
	.zero	8
	.section	.sdata.tsen_offset.0,"aw"
	.align	1
	.set	.LANCHOR2,. + 0
	.type	tsen_offset.0, @object
	.size	tsen_offset.0, 2
tsen_offset.0:
	.half	-1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 8 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 9 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 10 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_adc.h"
	.file 11 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 12 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_dma.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16e4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF302
	.byte	0xc
	.4byte	.LASF303
	.4byte	.LASF304
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x60
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x73
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x86
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x99
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0xac
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x7a
	.byte	0x4
	.4byte	.LASF22
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x8d
	.byte	0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0xa0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x133
	.byte	0x7
	.4byte	.LASF24
	.byte	0
	.byte	0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x14e
	.byte	0x7
	.4byte	.LASF27
	.byte	0
	.byte	0x7
	.4byte	.LASF28
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF29
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x133
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x175
	.byte	0x7
	.4byte	.LASF30
	.byte	0
	.byte	0x7
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x5
	.byte	0x4c
	.byte	0x1
	.4byte	0x214
	.byte	0x7
	.4byte	.LASF32
	.byte	0
	.byte	0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7
	.4byte	.LASF34
	.byte	0x2
	.byte	0x7
	.4byte	.LASF35
	.byte	0x3
	.byte	0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x7
	.4byte	.LASF37
	.byte	0x5
	.byte	0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x7
	.4byte	.LASF39
	.byte	0x7
	.byte	0x7
	.4byte	.LASF40
	.byte	0x8
	.byte	0x7
	.4byte	.LASF41
	.byte	0x9
	.byte	0x7
	.4byte	.LASF42
	.byte	0xa
	.byte	0x7
	.4byte	.LASF43
	.byte	0xb
	.byte	0x7
	.4byte	.LASF44
	.byte	0xc
	.byte	0x7
	.4byte	.LASF45
	.byte	0xd
	.byte	0x7
	.4byte	.LASF46
	.byte	0xe
	.byte	0x7
	.4byte	.LASF47
	.byte	0xf
	.byte	0x7
	.4byte	.LASF48
	.byte	0x10
	.byte	0x7
	.4byte	.LASF49
	.byte	0x11
	.byte	0x7
	.4byte	.LASF50
	.byte	0x12
	.byte	0x7
	.4byte	.LASF51
	.byte	0x13
	.byte	0x7
	.4byte	.LASF52
	.byte	0x14
	.byte	0x7
	.4byte	.LASF53
	.byte	0x15
	.byte	0x7
	.4byte	.LASF54
	.byte	0x16
	.byte	0x7
	.4byte	.LASF55
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF56
	.byte	0x5
	.byte	0x65
	.byte	0x2
	.4byte	0x175
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x5
	.byte	0x71
	.byte	0x1
	.4byte	0x26b
	.byte	0x7
	.4byte	.LASF57
	.byte	0x1
	.byte	0x7
	.4byte	.LASF58
	.byte	0x2
	.byte	0x7
	.4byte	.LASF59
	.byte	0x4
	.byte	0x7
	.4byte	.LASF60
	.byte	0x6
	.byte	0x7
	.4byte	.LASF61
	.byte	0x7
	.byte	0x7
	.4byte	.LASF62
	.byte	0x8
	.byte	0x7
	.4byte	.LASF63
	.byte	0x9
	.byte	0x7
	.4byte	.LASF64
	.byte	0xa
	.byte	0x7
	.4byte	.LASF65
	.byte	0xb
	.byte	0x7
	.4byte	.LASF66
	.byte	0xe
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x6
	.byte	0xbf
	.byte	0xe
	.4byte	0x286
	.byte	0x7
	.4byte	.LASF67
	.byte	0
	.byte	0x7
	.4byte	.LASF68
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF218
	.byte	0x4
	.byte	0x7
	.2byte	0x4c1
	.byte	0x10
	.4byte	0x34c
	.byte	0x9
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x4c2
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x9
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x4c3
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0x9
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x4c4
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0x9
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x4c5
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0x9
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x4c6
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x4c7
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x4c8
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0xa
	.string	"SI"
	.byte	0x7
	.2byte	0x4c9
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0xa
	.string	"DI"
	.byte	0x7
	.2byte	0x4ca
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x9
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x4cb
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0xa
	.string	"I"
	.byte	0x7
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x106
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x8
	.byte	0x49
	.byte	0xe
	.4byte	0x36d
	.byte	0x7
	.4byte	.LASF77
	.byte	0
	.byte	0x7
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7
	.4byte	.LASF79
	.byte	0x2
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x8
	.byte	0x52
	.byte	0xe
	.4byte	0x394
	.byte	0x7
	.4byte	.LASF80
	.byte	0
	.byte	0x7
	.4byte	.LASF81
	.byte	0x1
	.byte	0x7
	.4byte	.LASF82
	.byte	0x2
	.byte	0x7
	.4byte	.LASF83
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF84
	.byte	0x8
	.byte	0x57
	.byte	0x2
	.4byte	0x36d
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x8
	.byte	0x5c
	.byte	0xe
	.4byte	0x3c7
	.byte	0x7
	.4byte	.LASF85
	.byte	0
	.byte	0x7
	.4byte	.LASF86
	.byte	0x1
	.byte	0x7
	.4byte	.LASF87
	.byte	0x2
	.byte	0x7
	.4byte	.LASF88
	.byte	0x3
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x8
	.byte	0x66
	.byte	0xe
	.4byte	0x418
	.byte	0x7
	.4byte	.LASF89
	.byte	0
	.byte	0x7
	.4byte	.LASF90
	.byte	0x1
	.byte	0x7
	.4byte	.LASF91
	.byte	0x2
	.byte	0x7
	.4byte	.LASF92
	.byte	0x3
	.byte	0x7
	.4byte	.LASF93
	.byte	0x6
	.byte	0x7
	.4byte	.LASF94
	.byte	0x7
	.byte	0x7
	.4byte	.LASF95
	.byte	0xa
	.byte	0x7
	.4byte	.LASF96
	.byte	0xb
	.byte	0x7
	.4byte	.LASF97
	.byte	0x16
	.byte	0x7
	.4byte	.LASF98
	.byte	0x17
	.byte	0x7
	.4byte	.LASF99
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF100
	.byte	0x8
	.byte	0x72
	.byte	0x2
	.4byte	0x3c7
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x8
	.byte	0x82
	.byte	0xe
	.4byte	0x445
	.byte	0x7
	.4byte	.LASF101
	.byte	0
	.byte	0x7
	.4byte	.LASF102
	.byte	0x1
	.byte	0x7
	.4byte	.LASF103
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x10
	.byte	0x8
	.byte	0xb0
	.byte	0x9
	.4byte	0x483
	.byte	0xc
	.4byte	.LASF104
	.byte	0x8
	.byte	0xb1
	.byte	0xe
	.4byte	0x106
	.byte	0
	.byte	0xc
	.4byte	.LASF105
	.byte	0x8
	.byte	0xb2
	.byte	0xe
	.4byte	0x106
	.byte	0x4
	.byte	0xc
	.4byte	.LASF106
	.byte	0x8
	.byte	0xb3
	.byte	0xe
	.4byte	0x106
	.byte	0x8
	.byte	0xc
	.4byte	.LASF107
	.byte	0x8
	.byte	0xb4
	.byte	0x1c
	.4byte	0x286
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF108
	.byte	0x8
	.byte	0xb5
	.byte	0x2
	.4byte	0x445
	.byte	0xb
	.byte	0xc
	.byte	0x8
	.byte	0xba
	.byte	0x9
	.4byte	0x4c0
	.byte	0xd
	.string	"dir"
	.byte	0x8
	.byte	0xbb
	.byte	0x18
	.4byte	0x394
	.byte	0
	.byte	0xc
	.4byte	.LASF109
	.byte	0x8
	.byte	0xbc
	.byte	0x19
	.4byte	0x418
	.byte	0x4
	.byte	0xc
	.4byte	.LASF110
	.byte	0x8
	.byte	0xbd
	.byte	0x19
	.4byte	0x418
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF111
	.byte	0x8
	.byte	0xbe
	.byte	0x2
	.4byte	0x48f
	.byte	0xe
	.byte	0x4
	.4byte	0x483
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0x3a
	.byte	0xe
	.4byte	0x571
	.byte	0x7
	.4byte	.LASF112
	.byte	0
	.byte	0x7
	.4byte	.LASF113
	.byte	0x1
	.byte	0x7
	.4byte	.LASF114
	.byte	0x2
	.byte	0x7
	.4byte	.LASF115
	.byte	0x3
	.byte	0x7
	.4byte	.LASF116
	.byte	0x4
	.byte	0x7
	.4byte	.LASF117
	.byte	0x5
	.byte	0x7
	.4byte	.LASF118
	.byte	0x6
	.byte	0x7
	.4byte	.LASF119
	.byte	0x7
	.byte	0x7
	.4byte	.LASF120
	.byte	0x8
	.byte	0x7
	.4byte	.LASF121
	.byte	0x9
	.byte	0x7
	.4byte	.LASF122
	.byte	0xa
	.byte	0x7
	.4byte	.LASF123
	.byte	0xb
	.byte	0x7
	.4byte	.LASF124
	.byte	0xc
	.byte	0x7
	.4byte	.LASF125
	.byte	0xd
	.byte	0x7
	.4byte	.LASF126
	.byte	0xe
	.byte	0x7
	.4byte	.LASF127
	.byte	0xf
	.byte	0x7
	.4byte	.LASF128
	.byte	0x10
	.byte	0x7
	.4byte	.LASF129
	.byte	0x11
	.byte	0x7
	.4byte	.LASF130
	.byte	0x12
	.byte	0x7
	.4byte	.LASF131
	.byte	0x13
	.byte	0x7
	.4byte	.LASF132
	.byte	0x14
	.byte	0x7
	.4byte	.LASF133
	.byte	0x15
	.byte	0x7
	.4byte	.LASF134
	.byte	0x16
	.byte	0x7
	.4byte	.LASF135
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF136
	.byte	0x9
	.byte	0x53
	.byte	0x2
	.4byte	0x4d2
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0x58
	.byte	0xe
	.4byte	0x5a4
	.byte	0x7
	.4byte	.LASF137
	.byte	0
	.byte	0x7
	.4byte	.LASF138
	.byte	0x1
	.byte	0x7
	.4byte	.LASF139
	.byte	0x2
	.byte	0x7
	.4byte	.LASF140
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF141
	.byte	0x9
	.byte	0x5d
	.byte	0x2
	.4byte	0x57d
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0x62
	.byte	0xe
	.4byte	0x5d7
	.byte	0x7
	.4byte	.LASF142
	.byte	0
	.byte	0x7
	.4byte	.LASF143
	.byte	0x1
	.byte	0x7
	.4byte	.LASF144
	.byte	0x2
	.byte	0x7
	.4byte	.LASF145
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF146
	.byte	0x9
	.byte	0x67
	.byte	0x2
	.4byte	0x5b0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0x6c
	.byte	0xe
	.4byte	0x622
	.byte	0x7
	.4byte	.LASF147
	.byte	0
	.byte	0x7
	.4byte	.LASF148
	.byte	0x1
	.byte	0x7
	.4byte	.LASF149
	.byte	0x2
	.byte	0x7
	.4byte	.LASF150
	.byte	0x3
	.byte	0x7
	.4byte	.LASF151
	.byte	0x4
	.byte	0x7
	.4byte	.LASF152
	.byte	0x5
	.byte	0x7
	.4byte	.LASF153
	.byte	0x6
	.byte	0x7
	.4byte	.LASF154
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF155
	.byte	0x9
	.byte	0x75
	.byte	0x2
	.4byte	0x5e3
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0x88
	.byte	0xe
	.4byte	0x667
	.byte	0x7
	.4byte	.LASF156
	.byte	0
	.byte	0x7
	.4byte	.LASF157
	.byte	0x1
	.byte	0x7
	.4byte	.LASF158
	.byte	0x2
	.byte	0x7
	.4byte	.LASF159
	.byte	0x3
	.byte	0x7
	.4byte	.LASF160
	.byte	0x4
	.byte	0x7
	.4byte	.LASF161
	.byte	0x5
	.byte	0x7
	.4byte	.LASF162
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF163
	.byte	0x9
	.byte	0x90
	.byte	0x2
	.4byte	0x62e
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0x95
	.byte	0xe
	.4byte	0x68e
	.byte	0x7
	.4byte	.LASF164
	.byte	0
	.byte	0x7
	.4byte	.LASF165
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF166
	.byte	0x9
	.byte	0x98
	.byte	0x2
	.4byte	0x673
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0x9d
	.byte	0xe
	.4byte	0x6c1
	.byte	0x7
	.4byte	.LASF167
	.byte	0
	.byte	0x7
	.4byte	.LASF168
	.byte	0x1
	.byte	0x7
	.4byte	.LASF169
	.byte	0x2
	.byte	0x7
	.4byte	.LASF170
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF171
	.byte	0x9
	.byte	0xa2
	.byte	0x2
	.4byte	0x69a
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0xa7
	.byte	0xe
	.4byte	0x6f4
	.byte	0x7
	.4byte	.LASF172
	.byte	0
	.byte	0x7
	.4byte	.LASF173
	.byte	0x1
	.byte	0x7
	.4byte	.LASF174
	.byte	0x2
	.byte	0x7
	.4byte	.LASF175
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF176
	.byte	0x9
	.byte	0xac
	.byte	0x2
	.4byte	0x6cd
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0x71b
	.byte	0x7
	.4byte	.LASF177
	.byte	0
	.byte	0x7
	.4byte	.LASF178
	.byte	0x1
	.byte	0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0xb9
	.byte	0xe
	.4byte	0x736
	.byte	0x7
	.4byte	.LASF179
	.byte	0
	.byte	0x7
	.4byte	.LASF180
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF181
	.byte	0x9
	.byte	0xbc
	.byte	0x2
	.4byte	0x71b
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0xc1
	.byte	0xe
	.4byte	0x75d
	.byte	0x7
	.4byte	.LASF182
	.byte	0
	.byte	0x7
	.4byte	.LASF183
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF184
	.byte	0x9
	.byte	0xc4
	.byte	0x2
	.4byte	0x742
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.byte	0xc9
	.byte	0xe
	.4byte	0x796
	.byte	0x7
	.4byte	.LASF185
	.byte	0
	.byte	0x7
	.4byte	.LASF186
	.byte	0x1
	.byte	0x7
	.4byte	.LASF187
	.byte	0x2
	.byte	0x7
	.4byte	.LASF188
	.byte	0x3
	.byte	0x7
	.4byte	.LASF189
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF190
	.byte	0x9
	.byte	0xcf
	.byte	0x2
	.4byte	0x769
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.byte	0xfc
	.byte	0x9
	.4byte	0x85f
	.byte	0xc
	.4byte	.LASF191
	.byte	0x9
	.byte	0xfd
	.byte	0x16
	.4byte	0x5a4
	.byte	0
	.byte	0xc
	.4byte	.LASF192
	.byte	0x9
	.byte	0xfe
	.byte	0x16
	.4byte	0x5d7
	.byte	0x4
	.byte	0xc
	.4byte	.LASF193
	.byte	0x9
	.byte	0xff
	.byte	0x12
	.4byte	0x622
	.byte	0x8
	.byte	0xf
	.4byte	.LASF194
	.byte	0x9
	.2byte	0x100
	.byte	0x17
	.4byte	0x667
	.byte	0xc
	.byte	0xf
	.4byte	.LASF195
	.byte	0x9
	.2byte	0x101
	.byte	0x17
	.4byte	0x667
	.byte	0x10
	.byte	0xf
	.4byte	.LASF196
	.byte	0x9
	.2byte	0x102
	.byte	0x17
	.4byte	0x6c1
	.byte	0x14
	.byte	0xf
	.4byte	.LASF197
	.byte	0x9
	.2byte	0x103
	.byte	0x17
	.4byte	0x68e
	.byte	0x18
	.byte	0x10
	.string	"vcm"
	.byte	0x9
	.2byte	0x104
	.byte	0x16
	.4byte	0x6f4
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF198
	.byte	0x9
	.2byte	0x105
	.byte	0x13
	.4byte	0x736
	.byte	0x20
	.byte	0xf
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x106
	.byte	0x18
	.4byte	0x75d
	.byte	0x24
	.byte	0xf
	.4byte	.LASF200
	.byte	0x9
	.2byte	0x107
	.byte	0x19
	.4byte	0x796
	.byte	0x28
	.byte	0xf
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x108
	.byte	0x11
	.4byte	0x14e
	.byte	0x2c
	.byte	0xf
	.4byte	.LASF202
	.byte	0x9
	.2byte	0x109
	.byte	0xd
	.4byte	0xe2
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x10a
	.byte	0x2
	.4byte	0x7a2
	.byte	0x12
	.byte	0x8
	.byte	0x9
	.2byte	0x10f
	.byte	0x9
	.4byte	0x8af
	.byte	0xf
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x110
	.byte	0xc
	.4byte	0xca
	.byte	0
	.byte	0xf
	.4byte	.LASF205
	.byte	0x9
	.2byte	0x111
	.byte	0xc
	.4byte	0xca
	.byte	0x1
	.byte	0xf
	.4byte	.LASF206
	.byte	0x9
	.2byte	0x112
	.byte	0xe
	.4byte	0xee
	.byte	0x2
	.byte	0xf
	.4byte	.LASF207
	.byte	0x9
	.2byte	0x113
	.byte	0xb
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x11
	.4byte	.LASF208
	.byte	0x9
	.2byte	0x114
	.byte	0x2
	.4byte	0x86c
	.byte	0x13
	.byte	0x7
	.byte	0x4
	.4byte	0x3a
	.byte	0x9
	.2byte	0x119
	.byte	0xe
	.4byte	0x8e4
	.byte	0x7
	.4byte	.LASF209
	.byte	0
	.byte	0x7
	.4byte	.LASF210
	.byte	0x1
	.byte	0x7
	.4byte	.LASF211
	.byte	0x2
	.byte	0x7
	.4byte	.LASF212
	.byte	0x3
	.byte	0
	.byte	0x11
	.4byte	.LASF213
	.byte	0x9
	.2byte	0x11e
	.byte	0x2
	.4byte	0x8bc
	.byte	0x12
	.byte	0x8
	.byte	0x9
	.2byte	0x12f
	.byte	0x9
	.4byte	0x918
	.byte	0xf
	.4byte	.LASF214
	.byte	0x9
	.2byte	0x130
	.byte	0x1d
	.4byte	0x8e4
	.byte	0
	.byte	0xf
	.4byte	.LASF215
	.byte	0x9
	.2byte	0x131
	.byte	0x11
	.4byte	0x14e
	.byte	0x4
	.byte	0
	.byte	0x11
	.4byte	.LASF216
	.byte	0x9
	.2byte	0x132
	.byte	0x2
	.4byte	0x8f1
	.byte	0x4
	.4byte	.LASF217
	.byte	0xa
	.byte	0x7
	.byte	0x10
	.4byte	0x931
	.byte	0xe
	.byte	0x4
	.4byte	0x937
	.byte	0x14
	.4byte	0x94c
	.byte	0x15
	.4byte	0x2c
	.byte	0x15
	.4byte	0x94c
	.byte	0x15
	.4byte	0x106
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x106
	.byte	0x16
	.4byte	.LASF219
	.byte	0x1c
	.byte	0xa
	.byte	0x8
	.byte	0x10
	.4byte	0x9ba
	.byte	0xc
	.4byte	.LASF220
	.byte	0xa
	.byte	0x9
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0xc
	.4byte	.LASF221
	.byte	0xa
	.byte	0xa
	.byte	0xf
	.4byte	0x94c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF222
	.byte	0xa
	.byte	0xb
	.byte	0xb
	.4byte	0xc1
	.byte	0x8
	.byte	0xc
	.4byte	.LASF223
	.byte	0xa
	.byte	0xc
	.byte	0x9
	.4byte	0x2c
	.byte	0xc
	.byte	0xc
	.4byte	.LASF224
	.byte	0xa
	.byte	0xd
	.byte	0xe
	.4byte	0x106
	.byte	0x10
	.byte	0xc
	.4byte	.LASF225
	.byte	0xa
	.byte	0xe
	.byte	0xe
	.4byte	0x106
	.byte	0x14
	.byte	0xd
	.string	"cb"
	.byte	0xa
	.byte	0xf
	.byte	0x11
	.4byte	0x925
	.byte	0x18
	.byte	0
	.byte	0x4
	.4byte	.LASF226
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.4byte	0x952
	.byte	0x17
	.4byte	.LASF227
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0x85f
	.byte	0x5
	.byte	0x3
	.4byte	adcCfg
	.byte	0x17
	.4byte	.LASF228
	.byte	0x1
	.byte	0x29
	.byte	0x13
	.4byte	0x918
	.byte	0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.byte	0x18
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x1f6
	.byte	0x5
	.4byte	0x2c
	.byte	0x1
	.4byte	0xa17
	.byte	0x19
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1f6
	.byte	0x24
	.4byte	0x2c
	.byte	0x1a
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1f8
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0x1b
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1e1
	.byte	0x9
	.4byte	0xfa
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0xaad
	.byte	0x1c
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x1e1
	.byte	0x25
	.4byte	0x94c
	.4byte	.LLST26
	.byte	0x1d
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x1e1
	.byte	0x2f
	.4byte	0x2c
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x1e1
	.byte	0x3e
	.4byte	0x2c
	.byte	0x1
	.byte	0x5c
	.byte	0x1d
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1e1
	.byte	0x4b
	.4byte	0x2c
	.byte	0x1
	.byte	0x5d
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x1e3
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST27
	.byte	0x1f
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1e4
	.byte	0xd
	.4byte	0xfa
	.4byte	.LLST28
	.byte	0x20
	.4byte	0xaad
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x1ec
	.byte	0x18
	.byte	0x21
	.4byte	0xabf
	.byte	0x22
	.4byte	0xacc
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x1d7
	.byte	0x11
	.4byte	0x106
	.byte	0x1
	.4byte	0xada
	.byte	0x19
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1d7
	.byte	0x28
	.4byte	0x106
	.byte	0x24
	.string	"val"
	.byte	0x1
	.2byte	0x1d9
	.byte	0xe
	.4byte	0x106
	.byte	0
	.byte	0x1b
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1ce
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xb31
	.byte	0x1c
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1ce
	.byte	0x1a
	.4byte	0x2c
	.4byte	.LLST25
	.byte	0x25
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1d0
	.byte	0x13
	.4byte	0x214
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x26
	.4byte	.LVL129
	.4byte	0x154d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x1c1
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xbc5
	.byte	0x28
	.4byte	.LVL121
	.4byte	0x155a
	.4byte	0xb69
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x28
	.4byte	.LVL122
	.4byte	0x155a
	.4byte	0xb86
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL123
	.4byte	0x155a
	.4byte	0xba3
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL124
	.4byte	0x1567
	.byte	0x29
	.4byte	.LVL125
	.4byte	0x1574
	.byte	0x26
	.4byte	.LVL126
	.4byte	0x1581
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x18a
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0xd25
	.byte	0x1c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x18a
	.byte	0x19
	.4byte	0x2c
	.4byte	.LLST18
	.byte	0x1c
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x18a
	.byte	0x28
	.4byte	0x106
	.4byte	.LLST19
	.byte	0x25
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x18c
	.byte	0x18
	.4byte	0x4cc
	.byte	0x1
	.byte	0x59
	.byte	0x1f
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x18d
	.byte	0xf
	.4byte	0x94c
	.4byte	.LLST20
	.byte	0x25
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x18e
	.byte	0x16
	.4byte	0x4c0
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x1f
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x18f
	.byte	0x10
	.4byte	0xd25
	.4byte	.LLST21
	.byte	0x2a
	.4byte	0xd2b
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x1b1
	.byte	0x5
	.4byte	0xc7f
	.byte	0x2b
	.4byte	0xd53
	.4byte	.LLST22
	.byte	0x2b
	.4byte	0xd46
	.4byte	.LLST23
	.byte	0x2b
	.4byte	0xd39
	.4byte	.LLST24
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x22
	.4byte	0xd60
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL107
	.4byte	0x158e
	.4byte	0xc92
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x28
	.4byte	.LVL110
	.4byte	0x158e
	.4byte	0xca6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x28
	.4byte	.LVL112
	.4byte	0x158e
	.4byte	0xcbc
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x84
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0x28
	.4byte	.LVL115
	.4byte	0x159a
	.4byte	0xccf
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x28
	.4byte	.LVL118
	.4byte	0x15a7
	.4byte	0xce8
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x28
	.4byte	.LVL119
	.4byte	0x15b4
	.4byte	0xd01
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL120
	.4byte	0x15c1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adc_data_update
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x9ba
	.byte	0x2d
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x16e
	.byte	0xd
	.byte	0x1
	.4byte	0xd6e
	.byte	0x19
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x16e
	.byte	0x31
	.4byte	0x4cc
	.byte	0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x16e
	.byte	0x43
	.4byte	0x94c
	.byte	0x19
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x16e
	.byte	0x51
	.4byte	0x106
	.byte	0x1a
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x170
	.byte	0x1c
	.4byte	0x286
	.byte	0
	.byte	0x1b
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x13a
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0xe9b
	.byte	0x1c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x13a
	.byte	0x15
	.4byte	0x2c
	.4byte	.LLST31
	.byte	0x1c
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x13a
	.byte	0x1f
	.4byte	0x2c
	.4byte	.LLST32
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x13c
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST33
	.byte	0x25
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x13d
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x5a
	.byte	0x1f
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x13e
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST34
	.byte	0x25
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x13f
	.byte	0x12
	.4byte	0x85f
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x25
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x140
	.byte	0x13
	.4byte	0xe9b
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x25
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x141
	.byte	0x13
	.4byte	0xe9b
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x25
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x142
	.byte	0x17
	.4byte	0x918
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x29
	.4byte	.LVL146
	.4byte	0x15cd
	.byte	0x29
	.4byte	.LVL147
	.4byte	0x15da
	.byte	0x29
	.4byte	.LVL148
	.4byte	0x15e7
	.byte	0x28
	.4byte	.LVL149
	.4byte	0x15f4
	.4byte	0xe4e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x28
	.4byte	.LVL153
	.4byte	0x1601
	.4byte	0xe75
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xdc,0x7e
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x8c,0x7f
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x28
	.4byte	.LVL154
	.4byte	0x160e
	.4byte	0xe8a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xd4,0x7e
	.byte	0
	.byte	0x26
	.4byte	.LVL158
	.4byte	0x9ea
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x571
	.4byte	0xeab
	.byte	0x30
	.4byte	0x3a
	.byte	0xb
	.byte	0
	.byte	0x1b
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x119
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0xf30
	.byte	0x1c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x119
	.byte	0x1a
	.4byte	0x2c
	.4byte	.LLST13
	.byte	0x1c
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x119
	.byte	0x29
	.4byte	0x106
	.4byte	.LLST14
	.byte	0x1e
	.string	"div"
	.byte	0x1
	.2byte	0x11b
	.byte	0xe
	.4byte	0x106
	.4byte	.LLST15
	.byte	0x1f
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x11c
	.byte	0xe
	.4byte	0x106
	.4byte	.LLST16
	.byte	0x1f
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x11d
	.byte	0xe
	.4byte	0x106
	.4byte	.LLST17
	.byte	0x26
	.4byte	.LVL98
	.4byte	0x161b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF307
	.byte	0x1
	.byte	0xfe
	.byte	0xd
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0xf67
	.byte	0x1f
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x100
	.byte	0x10
	.4byte	0xd25
	.4byte	.LLST0
	.byte	0x26
	.4byte	.LVL0
	.4byte	0x1628
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF256
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x10c1
	.byte	0x33
	.4byte	.LASF257
	.byte	0x1
	.byte	0xc1
	.byte	0x1e
	.4byte	0x10c1
	.4byte	.LLST10
	.byte	0x33
	.4byte	.LASF258
	.byte	0x1
	.byte	0xc1
	.byte	0x2c
	.4byte	0xd6
	.4byte	.LLST11
	.byte	0x34
	.4byte	.LASF259
	.byte	0x1
	.byte	0xc3
	.byte	0x15
	.4byte	0xee
	.byte	0x5
	.byte	0x3
	.4byte	tsen_offset.0
	.byte	0x35
	.string	"val"
	.byte	0x1
	.byte	0xc4
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST12
	.byte	0x36
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x10b7
	.byte	0x34
	.4byte	.LASF227
	.byte	0x1
	.byte	0xc8
	.byte	0x16
	.4byte	0x85f
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x34
	.4byte	.LASF228
	.byte	0x1
	.byte	0xd9
	.byte	0x1b
	.4byte	0x918
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x28
	.4byte	.LVL75
	.4byte	0x1634
	.4byte	0x1014
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xac,0x7f
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x28
	.4byte	.LVL76
	.4byte	0x161b
	.4byte	0x1031
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x29
	.4byte	.LVL77
	.4byte	0x15cd
	.byte	0x29
	.4byte	.LVL78
	.4byte	0x15da
	.byte	0x29
	.4byte	.LVL79
	.4byte	0x15e7
	.byte	0x28
	.4byte	.LVL80
	.4byte	0x15f4
	.4byte	0x1061
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xac,0x7f
	.byte	0
	.byte	0x28
	.4byte	.LVL81
	.4byte	0x163f
	.4byte	0x107e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL82
	.4byte	0x164c
	.4byte	0x1091
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL83
	.4byte	0x160e
	.4byte	0x10a6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x26
	.4byte	.LVL84
	.4byte	0x1659
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL85
	.4byte	0x1666
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0xe2
	.byte	0x32
	.4byte	.LASF260
	.byte	0x1
	.byte	0xbb
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x121a
	.byte	0x37
	.4byte	0x13ee
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xbd
	.byte	0x5
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0
	.byte	0x38
	.4byte	0x13fb
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x38
	.4byte	0x1407
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x39
	.4byte	0x1413
	.4byte	.LLST7
	.byte	0x39
	.4byte	0x141d
	.4byte	.LLST8
	.byte	0x39
	.4byte	0x1428
	.4byte	.LLST8
	.byte	0x3a
	.4byte	0x1433
	.byte	0x4
	.4byte	0
	.byte	0x29
	.4byte	.LVL52
	.4byte	0x15e7
	.byte	0x29
	.4byte	.LVL53
	.4byte	0x15cd
	.byte	0x29
	.4byte	.LVL54
	.4byte	0x15da
	.byte	0x28
	.4byte	.LVL55
	.4byte	0x15f4
	.4byte	0x115d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x28
	.4byte	.LVL56
	.4byte	0x163f
	.4byte	0x117a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL57
	.4byte	0x164c
	.4byte	0x118d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL58
	.4byte	0x160e
	.4byte	0x11a4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x29
	.4byte	.LVL59
	.4byte	0x1440
	.byte	0x29
	.4byte	.LVL61
	.4byte	0x1567
	.byte	0x29
	.4byte	.LVL62
	.4byte	0x1673
	.byte	0x29
	.4byte	.LVL63
	.4byte	0x1680
	.byte	0x28
	.4byte	.LVL64
	.4byte	0x168d
	.4byte	0x11e7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0x29
	.4byte	.LVL65
	.4byte	0x1673
	.byte	0x29
	.4byte	.LVL66
	.4byte	0x169a
	.byte	0x28
	.4byte	.LVL68
	.4byte	0x16a7
	.4byte	0x120e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x29
	.4byte	.LVL71
	.4byte	0x16b3
	.byte	0
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF261
	.byte	0x1
	.byte	0x8e
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x133e
	.byte	0x3b
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.byte	0x1b
	.4byte	0x10c1
	.4byte	.LLST2
	.byte	0x34
	.4byte	.LASF262
	.byte	0x1
	.byte	0x90
	.byte	0x15
	.4byte	0x8af
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x34
	.4byte	.LASF263
	.byte	0x1
	.byte	0x91
	.byte	0xe
	.4byte	0x106
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x35
	.string	"i"
	.byte	0x1
	.byte	0x92
	.byte	0xd
	.4byte	0xd6
	.4byte	.LLST3
	.byte	0x35
	.string	"v0"
	.byte	0x1
	.byte	0x93
	.byte	0xe
	.4byte	0x106
	.4byte	.LLST4
	.byte	0x35
	.string	"v1"
	.byte	0x1
	.byte	0x93
	.byte	0x13
	.4byte	0x106
	.4byte	.LLST5
	.byte	0x3c
	.4byte	.LASF264
	.byte	0x1
	.byte	0x94
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x36
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x12cd
	.byte	0x3d
	.4byte	.LASF298
	.byte	0x1
	.byte	0x9a
	.byte	0x19
	.4byte	0x12bd
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x26
	.4byte	.LVL48
	.4byte	0x16c0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL29
	.4byte	0x1567
	.byte	0x29
	.4byte	.LVL30
	.4byte	0x1673
	.byte	0x29
	.4byte	.LVL31
	.4byte	0x1680
	.byte	0x28
	.4byte	.LVL32
	.4byte	0x168d
	.4byte	0x1307
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.byte	0
	.byte	0x29
	.4byte	.LVL34
	.4byte	0x1673
	.byte	0x29
	.4byte	.LVL37
	.4byte	0x16cc
	.byte	0x29
	.4byte	.LVL38
	.4byte	0x16d5
	.byte	0x29
	.4byte	.LVL39
	.4byte	0x16de
	.byte	0x29
	.4byte	.LVL40
	.4byte	0x16b3
	.byte	0x29
	.4byte	.LVL50
	.4byte	0x169a
	.byte	0
	.byte	0x32
	.4byte	.LASF265
	.byte	0x1
	.byte	0x7b
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x13ee
	.byte	0x28
	.4byte	.LVL17
	.4byte	0x14d0
	.4byte	0x136b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x29
	.4byte	.LVL18
	.4byte	0x15e7
	.byte	0x29
	.4byte	.LVL19
	.4byte	0x15cd
	.byte	0x29
	.4byte	.LVL20
	.4byte	0x15da
	.byte	0x28
	.4byte	.LVL21
	.4byte	0x15f4
	.4byte	0x139d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x28
	.4byte	.LVL22
	.4byte	0x163f
	.4byte	0x13ba
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL23
	.4byte	0x164c
	.4byte	0x13cd
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL24
	.4byte	0x160e
	.4byte	0x13e4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x29
	.4byte	.LVL25
	.4byte	0x1440
	.byte	0
	.byte	0x3e
	.4byte	.LASF267
	.byte	0x1
	.byte	0x45
	.byte	0xd
	.byte	0x1
	.4byte	0x1440
	.byte	0x3f
	.4byte	.LASF262
	.byte	0x1
	.byte	0x47
	.byte	0x12
	.4byte	0x8af
	.byte	0x3f
	.4byte	.LASF263
	.byte	0x1
	.byte	0x48
	.byte	0xb
	.4byte	0x106
	.byte	0x40
	.string	"i"
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.4byte	0xd6
	.byte	0x40
	.string	"v0"
	.byte	0x1
	.byte	0x4a
	.byte	0xe
	.4byte	0x106
	.byte	0x40
	.string	"v1"
	.byte	0x1
	.byte	0x4a
	.byte	0x13
	.4byte	0x106
	.byte	0x3f
	.4byte	.LASF264
	.byte	0x1
	.byte	0x4b
	.byte	0xb
	.4byte	0x25
	.byte	0
	.byte	0x41
	.4byte	.LASF268
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x14d0
	.byte	0x29
	.4byte	.LVL6
	.4byte	0x16b3
	.byte	0x29
	.4byte	.LVL7
	.4byte	0x1567
	.byte	0x28
	.4byte	.LVL8
	.4byte	0x16a7
	.4byte	0x147c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x29
	.4byte	.LVL9
	.4byte	0x1673
	.byte	0x29
	.4byte	.LVL10
	.4byte	0x1680
	.byte	0x29
	.4byte	.LVL11
	.4byte	0x169a
	.byte	0x29
	.4byte	.LVL12
	.4byte	0x1567
	.byte	0x28
	.4byte	.LVL13
	.4byte	0x16a7
	.4byte	0x14b4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x29
	.4byte	.LVL14
	.4byte	0x1673
	.byte	0x29
	.4byte	.LVL15
	.4byte	0x1680
	.byte	0x42
	.4byte	.LVL16
	.4byte	0x16b3
	.byte	0
	.byte	0x41
	.4byte	.LASF269
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x150b
	.byte	0x3b
	.string	"div"
	.byte	0x1
	.byte	0x2e
	.byte	0x1d
	.4byte	0xd6
	.4byte	.LLST1
	.byte	0x43
	.4byte	.LVL5
	.4byte	0x161b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x44
	.4byte	0x9ea
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x154d
	.byte	0x2b
	.4byte	0x9fc
	.4byte	.LLST29
	.byte	0x22
	.4byte	0xa09
	.byte	0x20
	.4byte	0x9ea
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.2byte	0x1f6
	.byte	0x5
	.byte	0x2b
	.4byte	0x9fc
	.4byte	.LLST30
	.byte	0x22
	.4byte	0xa09
	.byte	0
	.byte	0
	.byte	0x45
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0x6
	.2byte	0x277
	.byte	0xd
	.byte	0x45
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0x8
	.2byte	0x144
	.byte	0x6
	.byte	0x45
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0x9
	.2byte	0x1fc
	.byte	0x6
	.byte	0x45
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0x8
	.2byte	0x139
	.byte	0x6
	.byte	0x45
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0x8
	.2byte	0x140
	.byte	0x6
	.byte	0x46
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0xb
	.byte	0x91
	.byte	0x7
	.byte	0x45
	.4byte	.LASF276
	.4byte	.LASF276
	.byte	0x8
	.2byte	0x141
	.byte	0x6
	.byte	0x45
	.4byte	.LASF277
	.4byte	.LASF277
	.byte	0x8
	.2byte	0x142
	.byte	0x6
	.byte	0x45
	.4byte	.LASF278
	.4byte	.LASF278
	.byte	0x8
	.2byte	0x143
	.byte	0x6
	.byte	0x46
	.4byte	.LASF279
	.4byte	.LASF279
	.byte	0xc
	.byte	0x2e
	.byte	0x5
	.byte	0x45
	.4byte	.LASF280
	.4byte	.LASF280
	.byte	0x9
	.2byte	0x1f8
	.byte	0x6
	.byte	0x45
	.4byte	.LASF281
	.4byte	.LASF281
	.byte	0x9
	.2byte	0x1f7
	.byte	0x6
	.byte	0x45
	.4byte	.LASF282
	.4byte	.LASF282
	.byte	0x9
	.2byte	0x1f6
	.byte	0x6
	.byte	0x45
	.4byte	.LASF283
	.4byte	.LASF283
	.byte	0x9
	.2byte	0x1f9
	.byte	0x6
	.byte	0x45
	.4byte	.LASF284
	.4byte	.LASF284
	.byte	0x9
	.2byte	0x1fb
	.byte	0x6
	.byte	0x45
	.4byte	.LASF285
	.4byte	.LASF285
	.byte	0x9
	.2byte	0x1fe
	.byte	0x6
	.byte	0x45
	.4byte	.LASF286
	.4byte	.LASF286
	.byte	0x6
	.2byte	0x262
	.byte	0xd
	.byte	0x46
	.4byte	.LASF287
	.4byte	.LASF287
	.byte	0xc
	.byte	0x31
	.byte	0x7
	.byte	0x47
	.4byte	.LASF308
	.4byte	.LASF309
	.byte	0xd
	.byte	0
	.byte	0x45
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x9
	.2byte	0x1fa
	.byte	0x6
	.byte	0x45
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x20b
	.byte	0x6
	.byte	0x45
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x20f
	.byte	0xd
	.byte	0x45
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0x9
	.2byte	0x212
	.byte	0x7
	.byte	0x45
	.4byte	.LASF292
	.4byte	.LASF292
	.byte	0x9
	.2byte	0x1ff
	.byte	0x9
	.byte	0x45
	.4byte	.LASF293
	.4byte	.LASF293
	.byte	0x9
	.2byte	0x202
	.byte	0xa
	.byte	0x45
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0x9
	.2byte	0x203
	.byte	0x6
	.byte	0x45
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0x9
	.2byte	0x20a
	.byte	0x6
	.byte	0x46
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x4
	.byte	0x88
	.byte	0x6
	.byte	0x45
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x9
	.2byte	0x209
	.byte	0x6
	.byte	0x46
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0x1
	.byte	0x9a
	.byte	0x19
	.byte	0x48
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0x48
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0x48
	.4byte	.LASF301
	.4byte	.LASF301
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x13
	.byte	0x1
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
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
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
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
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
	.byte	0x1f
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x24
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x44
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
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
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
	.byte	0x48
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
.LLST26:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL129-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	.LVL129-1
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107-1
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL116
	.4byte	.LVL118-1
	.2byte	0x2
	.byte	0x79
	.byte	0x4
	.4byte	.LVL118-1
	.4byte	.LFE41
	.2byte	0x3
	.byte	0x83
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x79
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL145
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146-1
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL150
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL160
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL145
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL146-1
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL159
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL87
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL87
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x15
	.byte	0x7c
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x33
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL72
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL85
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL51
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL51
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL45
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL45
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0xc
	.byte	0xf5
	.byte	0x2a
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x13
	.byte	0x83
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf5
	.byte	0x2f
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL37-1
	.4byte	.LVL38
	.2byte	0x16
	.byte	0x83
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x86
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x6
	.byte	0xf5
	.byte	0xa
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF162:
	.string	"ADC_PGA_GAIN_32"
.LASF25:
	.string	"ERROR"
.LASF67:
	.string	"GLB_ADC_CLK_96M"
.LASF212:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF246:
	.string	"chan"
.LASF146:
	.string	"ADC_V11_SEL_Type"
.LASF249:
	.string	"pos_chlist_single"
.LASF176:
	.string	"ADC_PGA_VCM_Type"
.LASF56:
	.string	"GLB_GPIO_Type"
.LASF104:
	.string	"srcDmaAddr"
.LASF231:
	.string	"raw_flag"
.LASF277:
	.string	"DMA_LLI_Init"
.LASF64:
	.string	"GPIO_FUN_ANALOG"
.LASF174:
	.string	"ADC_PGA_VCM_1P4V"
.LASF270:
	.string	"GLB_GPIO_Func_Init"
.LASF179:
	.string	"ADC_VREF_3P2V"
.LASF215:
	.string	"dmaEn"
.LASF11:
	.string	"__int32_t"
.LASF199:
	.string	"inputMode"
.LASF60:
	.string	"GPIO_FUN_I2C"
.LASF150:
	.string	"ADC_CLK_DIV_12"
.LASF151:
	.string	"ADC_CLK_DIV_16"
.LASF302:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF251:
	.string	"adc_fifo_cfg"
.LASF278:
	.string	"DMA_LLI_Update"
.LASF247:
	.string	"channel_num"
.LASF144:
	.string	"ADC_V11_SEL_1P18V"
.LASF293:
	.string	"ADC_Read_FIFO"
.LASF220:
	.string	"mode"
.LASF309:
	.string	"__builtin_memcpy"
.LASF243:
	.string	"pstctx"
.LASF99:
	.string	"DMA_REQ_NONE"
.LASF234:
	.string	"bl_adc_parse_data"
.LASF132:
	.string	"ADC_CHAN_SENP2"
.LASF20:
	.string	"int16_t"
.LASF252:
	.string	"bl_adc_freq_init"
.LASF255:
	.string	"mode_freq"
.LASF152:
	.string	"ADC_CLK_DIV_20"
.LASF292:
	.string	"ADC_Get_FIFO_Count"
.LASF153:
	.string	"ADC_CLK_DIV_24"
.LASF182:
	.string	"ADC_INPUT_SINGLE_END"
.LASF240:
	.string	"pstlli"
.LASF69:
	.string	"TransferSize"
.LASF115:
	.string	"ADC_CHAN3"
.LASF59:
	.string	"GPIO_FUN_SPI"
.LASF61:
	.string	"GPIO_FUN_UART"
.LASF254:
	.string	"source_freq"
.LASF175:
	.string	"ADC_PGA_VCM_1P6V"
.LASF23:
	.string	"uint32_t"
.LASF18:
	.string	"int8_t"
.LASF184:
	.string	"ADC_SIG_INPUT_Type"
.LASF122:
	.string	"ADC_CHAN10"
.LASF237:
	.string	"bl_adc_start"
.LASF110:
	.string	"dstPeriph"
.LASF106:
	.string	"nextLLI"
.LASF0:
	.string	"float"
.LASF265:
	.string	"test_adc_init"
.LASF134:
	.string	"ADC_CHAN_SENP0"
.LASF133:
	.string	"ADC_CHAN_SENP1"
.LASF202:
	.string	"offsetCalibVal"
.LASF131:
	.string	"ADC_CHAN_SENP3"
.LASF271:
	.string	"DMA_IntMask"
.LASF154:
	.string	"ADC_CLK_DIV_32"
.LASF262:
	.string	"result"
.LASF16:
	.string	"long long unsigned int"
.LASF229:
	.string	"parr"
.LASF66:
	.string	"GPIO_FUN_JTAG"
.LASF135:
	.string	"ADC_CHAN_GND"
.LASF171:
	.string	"ADC_CHOP_MOD_Type"
.LASF283:
	.string	"ADC_Init"
.LASF101:
	.string	"DMA_INT_TCOMPLETED"
.LASF105:
	.string	"destDmaAddr"
.LASF97:
	.string	"DMA_REQ_GPADC0"
.LASF98:
	.string	"DMA_REQ_GPADC1"
.LASF78:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF282:
	.string	"ADC_Reset"
.LASF275:
	.string	"pvPortMalloc"
.LASF263:
	.string	"regVal"
.LASF75:
	.string	"reserved_25"
.LASF272:
	.string	"ADC_Start"
.LASF206:
	.string	"value"
.LASF86:
	.string	"DMA_BURST_SIZE_4"
.LASF226:
	.string	"adc_ctx_t"
.LASF294:
	.string	"ADC_Parse_Result"
.LASF139:
	.string	"ADC_V18_SEL_1P82V"
.LASF225:
	.string	"data_size"
.LASF158:
	.string	"ADC_PGA_GAIN_2"
.LASF304:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF73:
	.string	"DWidth"
.LASF306:
	.string	"adc_calc_data"
.LASF76:
	.string	"Prot"
.LASF47:
	.string	"GLB_GPIO_PIN_15"
.LASF51:
	.string	"GLB_GPIO_PIN_19"
.LASF142:
	.string	"ADC_V11_SEL_1P0V"
.LASF253:
	.string	"freq"
.LASF300:
	.string	"__divdf3"
.LASF233:
	.string	"gpio_num"
.LASF72:
	.string	"SWidth"
.LASF70:
	.string	"SBSize"
.LASF9:
	.string	"__uint16_t"
.LASF301:
	.string	"__truncdfsf2"
.LASF145:
	.string	"ADC_V11_SEL_1P26V"
.LASF147:
	.string	"ADC_CLK_DIV_1"
.LASF155:
	.string	"ADC_CLK_Type"
.LASF260:
	.string	"test_adc_test"
.LASF91:
	.string	"DMA_REQ_UART1_RX"
.LASF149:
	.string	"ADC_CLK_DIV_8"
.LASF204:
	.string	"posChan"
.LASF24:
	.string	"SUCCESS"
.LASF17:
	.string	"char"
.LASF27:
	.string	"DISABLE"
.LASF190:
	.string	"ADC_Data_Width_Type"
.LASF156:
	.string	"ADC_PGA_GAIN_NONE"
.LASF244:
	.string	"dma_ctrl_reg"
.LASF143:
	.string	"ADC_V11_SEL_1P1V"
.LASF288:
	.string	"ADC_Channel_Config"
.LASF71:
	.string	"DBSize"
.LASF180:
	.string	"ADC_VREF_2V"
.LASF261:
	.string	"test_adc_get"
.LASF2:
	.string	"unsigned int"
.LASF58:
	.string	"GPIO_FUN_FLASH"
.LASF241:
	.string	"llibuf"
.LASF19:
	.string	"uint8_t"
.LASF219:
	.string	"adc_ctx"
.LASF62:
	.string	"GPIO_FUN_PWM"
.LASF157:
	.string	"ADC_PGA_GAIN_1"
.LASF65:
	.string	"GPIO_FUN_SWGPIO"
.LASF30:
	.string	"UNMASK"
.LASF159:
	.string	"ADC_PGA_GAIN_4"
.LASF203:
	.string	"ADC_CFG_Type"
.LASF160:
	.string	"ADC_PGA_GAIN_8"
.LASF200:
	.string	"resWidth"
.LASF112:
	.string	"ADC_CHAN0"
.LASF113:
	.string	"ADC_CHAN1"
.LASF114:
	.string	"ADC_CHAN2"
.LASF181:
	.string	"ADC_VREF_Type"
.LASF116:
	.string	"ADC_CHAN4"
.LASF117:
	.string	"ADC_CHAN5"
.LASF118:
	.string	"ADC_CHAN6"
.LASF119:
	.string	"ADC_CHAN7"
.LASF120:
	.string	"ADC_CHAN8"
.LASF121:
	.string	"ADC_CHAN9"
.LASF198:
	.string	"vref"
.LASF222:
	.string	"adc_lli"
.LASF267:
	.string	"ADC_tsen_case"
.LASF239:
	.string	"data_num"
.LASF63:
	.string	"GPIO_FUN_EXT_PA"
.LASF15:
	.string	"long long int"
.LASF189:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF26:
	.string	"TIMEOUT"
.LASF193:
	.string	"clkDiv"
.LASF186:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF223:
	.string	"lli_flag"
.LASF274:
	.string	"DMA_Channel_Enable"
.LASF273:
	.string	"DMA_Enable"
.LASF100:
	.string	"DMA_Periph_Req_Type"
.LASF290:
	.string	"ADC_Trim_TSEN"
.LASF276:
	.string	"DMA_Channel_Disable"
.LASF137:
	.string	"ADC_V18_SEL_1P62V"
.LASF256:
	.string	"bl_tsen_adc_get"
.LASF7:
	.string	"__int16_t"
.LASF218:
	.string	"DMA_Control_Reg"
.LASF188:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF92:
	.string	"DMA_REQ_UART1_TX"
.LASF307:
	.string	"adc_data_update"
.LASF124:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF125:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF126:
	.string	"ADC_CHAN_TSEN_P"
.LASF109:
	.string	"srcPeriph"
.LASF165:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF299:
	.string	"__extendsfdf2"
.LASF183:
	.string	"ADC_INPUT_DIFF"
.LASF42:
	.string	"GLB_GPIO_PIN_10"
.LASF43:
	.string	"GLB_GPIO_PIN_11"
.LASF44:
	.string	"GLB_GPIO_PIN_12"
.LASF45:
	.string	"GLB_GPIO_PIN_13"
.LASF46:
	.string	"GLB_GPIO_PIN_14"
.LASF248:
	.string	"adccfg"
.LASF48:
	.string	"GLB_GPIO_PIN_16"
.LASF49:
	.string	"GLB_GPIO_PIN_17"
.LASF50:
	.string	"GLB_GPIO_PIN_18"
.LASF187:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF285:
	.string	"ADC_FIFO_Cfg"
.LASF169:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF4:
	.string	"__int8_t"
.LASF170:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF232:
	.string	"data"
.LASF185:
	.string	"ADC_DATA_WIDTH_12"
.LASF141:
	.string	"ADC_V18_SEL_Type"
.LASF57:
	.string	"GPIO_FUN_SDIO"
.LASF21:
	.string	"uint16_t"
.LASF196:
	.string	"chopMode"
.LASF108:
	.string	"DMA_LLI_Ctrl_Type"
.LASF111:
	.string	"DMA_LLI_Cfg_Type"
.LASF230:
	.string	"channel"
.LASF68:
	.string	"GLB_ADC_CLK_XCLK"
.LASF52:
	.string	"GLB_GPIO_PIN_20"
.LASF53:
	.string	"GLB_GPIO_PIN_21"
.LASF54:
	.string	"GLB_GPIO_PIN_22"
.LASF148:
	.string	"ADC_CLK_DIV_4"
.LASF201:
	.string	"offsetCalibEn"
.LASF77:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF238:
	.string	"bl_adc_dma_init"
.LASF8:
	.string	"short int"
.LASF269:
	.string	"ADC_Clock_Init"
.LASF12:
	.string	"long int"
.LASF80:
	.string	"DMA_TRNS_M2M"
.LASF81:
	.string	"DMA_TRNS_M2P"
.LASF32:
	.string	"GLB_GPIO_PIN_0"
.LASF33:
	.string	"GLB_GPIO_PIN_1"
.LASF34:
	.string	"GLB_GPIO_PIN_2"
.LASF35:
	.string	"GLB_GPIO_PIN_3"
.LASF36:
	.string	"GLB_GPIO_PIN_4"
.LASF37:
	.string	"GLB_GPIO_PIN_5"
.LASF38:
	.string	"GLB_GPIO_PIN_6"
.LASF39:
	.string	"GLB_GPIO_PIN_7"
.LASF40:
	.string	"GLB_GPIO_PIN_8"
.LASF41:
	.string	"GLB_GPIO_PIN_9"
.LASF257:
	.string	"temp"
.LASF250:
	.string	"neg_chlist_single"
.LASF140:
	.string	"ADC_V18_SEL_1P92V"
.LASF177:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF107:
	.string	"dmaCtrl"
.LASF208:
	.string	"ADC_Result_Type"
.LASF295:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF138:
	.string	"ADC_V18_SEL_1P72V"
.LASF31:
	.string	"MASK"
.LASF259:
	.string	"tsen_offset"
.LASF127:
	.string	"ADC_CHAN_TSEN_N"
.LASF178:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF166:
	.string	"ADC_BIAS_SEL_Type"
.LASF5:
	.string	"__uint8_t"
.LASF164:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF245:
	.string	"bl_adc_init"
.LASF123:
	.string	"ADC_CHAN11"
.LASF224:
	.string	"chan_init_table"
.LASF207:
	.string	"volt"
.LASF213:
	.string	"ADC_FIFO_Threshold_Type"
.LASF130:
	.string	"ADC_CHAN_VABT_HALF"
.LASF168:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF28:
	.string	"ENABLE"
.LASF85:
	.string	"DMA_BURST_SIZE_1"
.LASF93:
	.string	"DMA_REQ_I2C_RX"
.LASF14:
	.string	"long unsigned int"
.LASF102:
	.string	"DMA_INT_ERR"
.LASF192:
	.string	"v11Sel"
.LASF286:
	.string	"GLB_Set_ADC_CLK"
.LASF87:
	.string	"DMA_BURST_SIZE_8"
.LASF22:
	.string	"int32_t"
.LASF103:
	.string	"DMA_INT_ALL"
.LASF298:
	.string	"aos_msleep"
.LASF163:
	.string	"ADC_PGA_GAIN_Type"
.LASF29:
	.string	"BL_Fun_Type"
.LASF136:
	.string	"ADC_Chan_Type"
.LASF289:
	.string	"ADC_Tsen_Init"
.LASF296:
	.string	"BL602_Delay_MS"
.LASF89:
	.string	"DMA_REQ_UART0_RX"
.LASF191:
	.string	"v18Sel"
.LASF6:
	.string	"unsigned char"
.LASF13:
	.string	"__uint32_t"
.LASF216:
	.string	"ADC_FIFO_Cfg_Type"
.LASF128:
	.string	"ADC_CHAN_VREF"
.LASF297:
	.string	"ADC_SET_TSVBE_LOW"
.LASF88:
	.string	"DMA_BURST_SIZE_16"
.LASF242:
	.string	"llicfg"
.LASF161:
	.string	"ADC_PGA_GAIN_16"
.LASF55:
	.string	"GLB_GPIO_PIN_MAX"
.LASF291:
	.string	"TSEN_Get_Temp"
.LASF217:
	.string	"bl_adc_cb_t"
.LASF236:
	.string	"adc_pin"
.LASF82:
	.string	"DMA_TRNS_P2M"
.LASF83:
	.string	"DMA_TRNS_P2P"
.LASF280:
	.string	"ADC_Disable"
.LASF84:
	.string	"DMA_Trans_Dir_Type"
.LASF228:
	.string	"adcFifoCfg"
.LASF197:
	.string	"biasSel"
.LASF227:
	.string	"adcCfg"
.LASF221:
	.string	"channel_data"
.LASF235:
	.string	"bl_adc_gpio_init"
.LASF205:
	.string	"negChan"
.LASF284:
	.string	"ADC_Scan_Channel_Config"
.LASF3:
	.string	"signed char"
.LASF303:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_adc.c"
.LASF10:
	.string	"short unsigned int"
.LASF94:
	.string	"DMA_REQ_I2C_TX"
.LASF258:
	.string	"log_flag"
.LASF266:
	.string	"adc_dma_lli_init"
.LASF308:
	.string	"memcpy"
.LASF305:
	.string	"bl_adc_get_channel_by_gpio"
.LASF194:
	.string	"gain1"
.LASF195:
	.string	"gain2"
.LASF129:
	.string	"ADC_CHAN_DCTEST"
.LASF268:
	.string	"TSEN_Calibration"
.LASF1:
	.string	"double"
.LASF79:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF173:
	.string	"ADC_PGA_VCM_1P2V"
.LASF90:
	.string	"DMA_REQ_UART0_TX"
.LASF74:
	.string	"SLargerD"
.LASF209:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF210:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF211:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF167:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF95:
	.string	"DMA_REQ_SPI_RX"
.LASF287:
	.string	"bl_dma_find_ctx_by_channel"
.LASF214:
	.string	"fifoThreshold"
.LASF172:
	.string	"ADC_PGA_VCM_1V"
.LASF96:
	.string	"DMA_REQ_SPI_TX"
.LASF264:
	.string	"v_error"
.LASF279:
	.string	"bl_dma_irq_register"
.LASF281:
	.string	"ADC_Enable"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
