	.file	"hosal_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.adc_parse_data.constprop.0.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"hosal_adc.c"
	.align	2
.LC4:
	.string	"ERROR "
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] error!\r\n"
	.section	.text.adc_parse_data.constprop.0,"ax",@progbits
	.align	1
	.type	adc_parse_data.constprop.0, @function
adc_parse_data.constprop.0:
.LFB36:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_adc.c"
	.loc 1 446 12
	.cfi_startproc
.LVL0:
	.loc 1 452 17
	.loc 1 446 12 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	addi	a4,a0,44
.LVL1:
.L4:
	.loc 1 453 9 is_stmt 1
	.loc 1 453 21 is_stmt 0
	lw	a5,0(a0)
	srli	a5,a5,21
	.loc 1 453 12
	bne	a5,a1,.L2
	.loc 1 454 13 is_stmt 1
	addi	a2,s0,-24
	li	a1,1
.LVL2:
	call	ADC_Parse_Result
.LVL3:
	.loc 1 455 13
	.loc 1 455 32 is_stmt 0
	lui	a5,%hi(.LC2)
	flw	fa5,-20(s0)
	flw	fa4,%lo(.LC2)(a5)
	fmul.s	fa5,fa5,fa4
	.loc 1 455 18
	fcvt.w.s a0,fa5,rtz
.LVL4:
	.loc 1 457 13 is_stmt 1
.L1:
	.loc 1 462 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L2:
	.cfi_restore_state
	.loc 1 452 32 is_stmt 1
	.loc 1 452 17
	.loc 1 452 5 is_stmt 0
	addi	a0,a0,4
	bne	a0,a4,.L4
.LVL6:
.LBB4:
.LBB5:
	.loc 1 460 5 is_stmt 1
	.loc 1 460 10
	.loc 1 460 12
	.loc 1 460 59 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL7:
	.loc 1 460 12
	beq	a0,zero,.L5
	.loc 1 460 86
	call	xTaskGetTickCountFromISR
.LVL8:
.L9:
	.loc 1 460 115
	mv	a1,a0
	.loc 1 460 12
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	li	a4,460
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	call	bl_printk
.LVL9:
	.loc 1 460 168 is_stmt 1
	.loc 1 460 177
	.loc 1 461 5
	.loc 1 460 12 is_stmt 0
	li	a0,-1
	j	.L1
.LVL10:
.L5:
	.loc 1 460 115
	call	xTaskGetTickCount
.LVL11:
	j	.L9
.LBE5:
.LBE4:
	.cfi_endproc
.LFE36:
	.size	adc_parse_data.constprop.0, .-adc_parse_data.constprop.0
	.globl	__extendsfdf2
	.globl	__divdf3
	.globl	__fixdfsi
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.globl	adc_data_update
	.type	adc_data_update, @function
adc_data_update:
.LFB10:
	.loc 1 83 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 84 5
	.loc 1 85 5
	.loc 1 83 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 85 22
	lw	s1,32(a0)
.LVL13:
	.loc 1 87 5 is_stmt 1
	.loc 1 87 8 is_stmt 0
	lw	a4,12(s1)
	.loc 1 88 73
	lw	a5,4(s1)
	.loc 1 87 8
	bne	a4,zero,.L11
	.loc 1 88 9 is_stmt 1
	.loc 1 88 87 is_stmt 0
	lw	a5,4(a5)
	.loc 1 89 26
	li	a4,1
	sw	a4,12(s1)
	.loc 1 92 12
	lbu	a4,32(s1)
	.loc 1 88 30
	sw	a5,0(s1)
	.loc 1 89 9 is_stmt 1
	.loc 1 92 9
	.loc 1 92 12 is_stmt 0
	bne	a4,zero,.L12
.LBB12:
.LBB13:
	.loc 1 56 19
	li	a4,65536
	addi	a1,a5,44
.LVL14:
	.loc 1 52 14
	li	a3,0
	.loc 1 55 12
	li	a0,14
.LVL15:
	.loc 1 56 19
	addi	a4,a4,-1
.L14:
.LVL16:
	.loc 1 55 9 is_stmt 1
	.loc 1 55 33 is_stmt 0
	lw	a2,0(a5)
	.loc 1 55 37
	srli	a6,a2,21
	.loc 1 55 12
	bne	a6,a0,.L13
	.loc 1 56 13 is_stmt 1
	.loc 1 56 19 is_stmt 0
	and	a3,a2,a4
.LVL17:
.L13:
	.loc 1 54 25 is_stmt 1
	.loc 1 54 17
	.loc 1 54 5 is_stmt 0
	addi	a5,a5,4
	bne	a1,a5,.L14
	.loc 1 60 5 is_stmt 1
	.loc 1 61 9
	.loc 1 61 25 is_stmt 0
	sw	a3,16(s1)
.LVL18:
.LBE13:
.LBE12:
	.loc 1 94 13 is_stmt 1
	call	ADC_SET_TSVBE_HIGH
.LVL19:
.L12:
	.loc 1 97 9
	.loc 1 97 12 is_stmt 0
	lbu	a4,32(s1)
	li	a5,1
	bne	a4,a5,.L15
	lw	a5,0(s1)
.LBB14:
.LBB15:
	.loc 1 56 19
	li	a3,65536
	.loc 1 52 14
	li	a4,0
	addi	a1,a5,44
	.loc 1 55 12
	li	a0,14
	.loc 1 56 19
	addi	a3,a3,-1
.L17:
.LVL20:
	.loc 1 55 9 is_stmt 1
	.loc 1 55 33 is_stmt 0
	lw	a2,0(a5)
	.loc 1 55 37
	srli	a6,a2,21
	.loc 1 55 12
	bne	a6,a0,.L16
	.loc 1 56 13 is_stmt 1
	.loc 1 56 19 is_stmt 0
	and	a4,a2,a3
.LVL21:
.L16:
	.loc 1 54 25 is_stmt 1
	.loc 1 54 17
	.loc 1 54 5 is_stmt 0
	addi	a5,a5,4
.LVL22:
	bne	a1,a5,.L17
	.loc 1 60 5 is_stmt 1
	.loc 1 63 9
.LBE15:
.LBE14:
.LBB17:
.LBB18:
	.loc 1 71 8 is_stmt 0
	lhu	a5,16(s1)
.LVL23:
	.loc 1 75 56
	lhu	a3,24(s1)
.LBE18:
.LBE17:
.LBB21:
.LBB16:
	.loc 1 63 25
	sw	a4,20(s1)
.LVL24:
.LBE16:
.LBE21:
	.loc 1 99 13 is_stmt 1
.LBB22:
.LBB19:
	.loc 1 69 5
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 74 5
	.loc 1 75 43 is_stmt 0
	fcvt.s.w	fa5,a4
	.loc 1 75 31
	fcvt.s.w	fa4,a5
	.loc 1 75 56
	fcvt.s.wu	fa0,a3
	lui	s2,%hi(.LC6)
	.loc 1 74 8
	bleu	a5,a4,.L18
	.loc 1 75 9 is_stmt 1
	.loc 1 75 41 is_stmt 0
	fsub.s	fa5,fa4,fa5
.L24:
	.loc 1 77 54
	fsub.s	fa0,fa5,fa0
	call	__extendsfdf2
.LVL25:
	.loc 1 77 86
	lw	a2,%lo(.LC6)(s2)
	lw	a3,%lo(.LC6+4)(s2)
	call	__divdf3
.LVL26:
	.loc 1 77 27
	call	__fixdfsi
.LVL27:
	sw	a0,28(s1)
.LVL28:
.LBE19:
.LBE22:
	.loc 1 100 13 is_stmt 1
	call	ADC_SET_TSVBE_LOW
.LVL29:
.L15:
	.loc 1 102 9
	.loc 1 102 29 is_stmt 0
	lbu	a5,32(s1)
	seqz	a5,a5
	sb	a5,32(s1)
.L10:
	.loc 1 109 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL30:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL31:
.L18:
	.cfi_restore_state
.LBB23:
.LBB20:
	.loc 1 77 9 is_stmt 1
	.loc 1 77 41 is_stmt 0
	fsub.s	fa5,fa5,fa4
	j	.L24
.LVL32:
.L11:
.LBE20:
.LBE23:
	.loc 1 106 9 is_stmt 1
	.loc 1 106 30 is_stmt 0
	lw	a5,20(a5)
	.loc 1 107 26
	sw	zero,12(s1)
	.loc 1 106 30
	sw	a5,0(s1)
	.loc 1 107 9 is_stmt 1
	.loc 1 109 1 is_stmt 0
	j	.L10
	.cfi_endproc
.LFE10:
	.size	adc_data_update, .-adc_data_update
	.section	.rodata.hosal_adc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] gpio %d can not used as adc\r\n"
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] read efuse data failed\r\n"
	.align	2
.LC9:
	.string	"INFO  "
	.align	2
.LC10:
	.string	"[%10u][%s: %s:%4d] offset = %d\r\n"
	.align	2
.LC11:
	.string	"[%10u][%s: %s:%4d] ADC freq: %ldHz. div:%lu\r\n"
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] not support continue mode!\r\n"
	.section	.text.hosal_adc_init,"ax",@progbits
	.align	1
	.globl	hosal_adc_init
	.type	hosal_adc_init, @function
hosal_adc_init:
.LFB20:
	.loc 1 465 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 466 5
	.loc 1 467 5
	.loc 1 468 5
	.loc 1 469 5
	.loc 1 471 5
	.loc 1 471 8 is_stmt 0
	bne	a0,zero,.L26
	.loc 1 473 16
	li	a0,-1
.LVL34:
	.loc 1 523 1
	ret
.LVL35:
.L26:
	.loc 1 465 1
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	s0,200(sp)
	sw	s1,196(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	s3,188(sp)
	sw	ra,204(sp)
	sw	s2,192(sp)
	sw	s4,184(sp)
	sw	s5,180(sp)
	sw	s6,176(sp)
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 477 37
	lw	s2,8(a0)
.LBB41:
.LBB42:
	.loc 1 115 19
	lui	s3,%hi(.LANCHOR0)
.LBE42:
.LBE41:
	.loc 1 476 23
	lw	s4,4(a0)
	mv	s1,a0
	.loc 1 476 5 is_stmt 1
.LVL36:
	.loc 1 477 5
.LBB46:
.LBB43:
	.loc 1 115 19 is_stmt 0
	li	a2,40
	addi	a1,s3,%lo(.LANCHOR0)
	addi	a0,s0,-84
.LVL37:
.LBE43:
.LBE46:
	.loc 1 477 9
	sw	s2,-196(s0)
	.loc 1 480 5 is_stmt 1
.LVL38:
.LBB47:
.LBB44:
	.loc 1 113 5
	.loc 1 115 5
	.loc 1 115 19 is_stmt 0
	call	memcpy
.LVL39:
	.loc 1 123 5 is_stmt 1
	.loc 1 123 17
	addi	a5,s0,-84
	addi	a4,s0,-44
.LVL40:
.L29:
	.loc 1 124 9
	.loc 1 124 12 is_stmt 0
	lw	a3,0(a5)
	beq	s2,a3,.L28
	.loc 1 123 25 is_stmt 1
	.loc 1 123 17
	.loc 1 123 5 is_stmt 0
	addi	a5,a5,4
	bne	a5,a4,.L29
	.loc 1 129 5 is_stmt 1
	.loc 1 129 10
	.loc 1 129 12
	.loc 1 129 80 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL41:
	.loc 1 129 12
	beq	a0,zero,.L30
	.loc 1 129 107
	call	xTaskGetTickCountFromISR
.LVL42:
.L70:
	.loc 1 129 136
	mv	a1,a0
	.loc 1 129 12
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC7)
	mv	a5,s2
	li	a4,129
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL43:
	.loc 1 129 194 is_stmt 1
	.loc 1 129 203
	.loc 1 131 5
.LBE44:
.LBE47:
	.loc 1 481 5
.L75:
	.loc 1 516 192 discriminator 4
	.loc 1 516 201 discriminator 4
	.loc 1 517 9 discriminator 4
	.loc 1 517 16 is_stmt 0 discriminator 4
	li	a0,-1
	j	.L25
.LVL44:
.L30:
.LBB48:
.LBB45:
	.loc 1 129 136
	call	xTaskGetTickCount
.LVL45:
	j	.L70
.L28:
.LVL46:
.LBE45:
.LBE48:
	.loc 1 481 5 is_stmt 1
	.loc 1 486 5
	.loc 1 486 33 is_stmt 0
	li	a0,44
	call	pvPortMalloc
.LVL47:
	mv	s2,a0
.LVL48:
	.loc 1 487 5 is_stmt 1
	.loc 1 487 8 is_stmt 0
	beq	a0,zero,.L75
	.loc 1 492 5 is_stmt 1
	li	a2,44
	li	a1,0
	call	memset
.LVL49:
	.loc 1 493 5
	.loc 1 495 8 is_stmt 0
	lw	a5,12(s1)
	.loc 1 493 15
	sw	s2,32(s1)
	.loc 1 495 5 is_stmt 1
	.loc 1 495 8 is_stmt 0
	bne	a5,zero,.L33
.LBB49:
	.loc 1 496 9 is_stmt 1
	.loc 1 496 23 is_stmt 0
	addi	a5,s4,-27
	.loc 1 496 12
	li	a4,313
	bgtu	a5,a4,.L75
	.loc 1 501 9 is_stmt 1
	.loc 1 502 9
.LVL50:
.LBB50:
.LBB51:
	.loc 1 396 5
	.loc 1 401 5
	.loc 1 401 18 is_stmt 0
	addi	a1,s3,%lo(.LANCHOR0)
	li	a2,52
	addi	a1,a1,40
	addi	a0,s0,-84
	call	memcpy
.LVL51:
	.loc 1 417 5 is_stmt 1
	.loc 1 422 5 is_stmt 0
	li	a2,7
	li	a1,0
	li	a0,1
	.loc 1 417 23
	sw	zero,-128(s0)
	sw	zero,-124(s0)
	.loc 1 422 5 is_stmt 1
	call	GLB_Set_ADC_CLK
.LVL52:
	.loc 1 424 5
	call	ADC_Disable
.LVL53:
	.loc 1 425 5
	call	ADC_Enable
.LVL54:
	.loc 1 427 5
	call	ADC_Reset
.LVL55:
	.loc 1 429 5
	addi	a0,s0,-84
	call	ADC_Init
.LVL56:
	.loc 1 430 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL57:
	.loc 1 431 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL58:
	.loc 1 433 5
	addi	a0,s0,-128
	call	ADC_FIFO_Cfg
.LVL59:
	.loc 1 435 5
	.loc 1 435 9 is_stmt 0
	addi	a0,s0,-198
.LVL60:
	call	ADC_Trim_TSEN
.LVL61:
	.loc 1 435 8
	li	a5,1
	lui	s5,%hi(.LC3)
	lui	s6,%hi(.LC9)
	bne	a0,a5,.L35
	.loc 1 436 9 is_stmt 1
	.loc 1 436 14
	.loc 1 436 16
	.loc 1 436 79 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL62:
	.loc 1 436 16
	beq	a0,zero,.L36
	.loc 1 436 106
	call	xTaskGetTickCountFromISR
.LVL63:
.L71:
	.loc 1 436 135
	mv	a1,a0
	.loc 1 436 16
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC8)
	li	a4,436
	addi	a3,s5,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL64:
	.loc 1 436 188 is_stmt 1
	.loc 1 436 197
	.loc 1 437 9
.L38:
.LBE51:
.LBE50:
	.loc 1 503 9
	.loc 1 503 29 is_stmt 0
	lhu	a5,-198(s0)
.LBB53:
.LBB54:
	.loc 1 187 19
	li	s3,1
.LBE54:
.LBE53:
	.loc 1 503 29
	sh	a5,24(s2)
	.loc 1 504 9 is_stmt 1
	call	ADC_Stop
.LVL65:
	.loc 1 508 9
	li	a2,1
	addi	a1,s0,-196
	li	a0,10
	call	GLB_GPIO_Func_Init
.LVL66:
	.loc 1 511 9
.LBB57:
.LBB55:
	.loc 1 180 5
	.loc 1 181 5
	.loc 1 182 5
	.loc 1 184 5
	.loc 1 184 8 is_stmt 0
	lw	a5,12(s1)
	bne	a5,zero,.L41
	.loc 1 185 19
	li	s3,11
.L41:
.LVL67:
	.loc 1 190 5 is_stmt 1
	.loc 1 190 40 is_stmt 0
	li	a5,4096
	addi	a5,a5,1024
	mul	s3,s3,a5
.LVL68:
	.loc 1 190 17
	li	a5,96002048
	addi	a5,a5,-2048
	divu	s3,a5,s3
.LVL69:
	.loc 1 192 5 is_stmt 1
	.loc 1 192 9 is_stmt 0
	divu	s2,s3,s4
.LVL70:
	.loc 1 193 5 is_stmt 1
	.loc 1 193 15 is_stmt 0
	addi	a4,s2,1
	.loc 1 193 20
	mul	a5,s4,a4
	.loc 1 193 8
	remu	s4,s3,s4
.LVL71:
	.loc 1 193 27
	sub	a5,a5,s3
	.loc 1 193 8
	bgeu	a5,s4,.L42
	.loc 1 194 13
	mv	s2,a4
.LVL72:
.L42:
	.loc 1 197 5 is_stmt 1
	li	a5,64
	bleu	s2,a5,.L43
	li	s2,64
.LVL73:
.L43:
	.loc 1 203 5
	.loc 1 213 5
	.loc 1 213 10
	.loc 1 213 12
	.loc 1 213 77 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL74:
	.loc 1 213 12
	beq	a0,zero,.L44
	.loc 1 213 104
	call	xTaskGetTickCountFromISR
.LVL75:
.L73:
	.loc 1 213 12
	divu	a5,s3,s2
	.loc 1 213 133
	mv	a1,a0
	.loc 1 213 12
	lui	a0,%hi(.LC11)
	mv	a6,s2
	li	a4,213
	addi	a3,s5,%lo(.LC3)
	addi	a2,s6,%lo(.LC9)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL76:
	.loc 1 213 217 is_stmt 1
	.loc 1 213 226
	.loc 1 215 5
	addi	a2,s2,-1
	andi	a2,a2,0xff
	li	a1,0
	li	a0,1
	call	GLB_Set_ADC_CLK
.LVL77:
.LBE55:
.LBE57:
	.loc 1 512 9
.LBB58:
.LBB59:
	.loc 1 304 5
	.loc 1 306 5
	.loc 1 306 13 is_stmt 0
	lui	a1,%hi(.LANCHOR0)
	addi	a1,a1,%lo(.LANCHOR0)
	li	a2,11
	addi	a1,a1,92
	addi	a0,s0,-184
	call	memcpy
.LVL78:
	.loc 1 310 5 is_stmt 1
	.loc 1 320 18 is_stmt 0
	li	a3,5
	.loc 1 310 29
	lw	s3,12(s1)
.LVL79:
	.loc 1 311 5 is_stmt 1
	.loc 1 319 18 is_stmt 0
	li	a5,1
	.loc 1 318 18
	li	a4,2
	.loc 1 320 18
	sw	a3,-76(s0)
	.loc 1 321 20
	li	a3,4
	.loc 1 318 18
	sw	a4,-84(s0)
	.loc 1 319 18
	sw	a5,-80(s0)
	.loc 1 321 20
	sw	a3,-44(s0)
	.loc 1 327 21
	sw	a5,-72(s0)
	.loc 1 328 21
	sw	a5,-68(s0)
	.loc 1 311 19
	lw	s2,8(s1)
.LVL80:
	.loc 1 313 5 is_stmt 1
	.loc 1 314 5
	.loc 1 315 5
	.loc 1 316 5
	.loc 1 318 5
	.loc 1 319 5
	.loc 1 320 5
	.loc 1 321 5
	.loc 1 324 5
	.loc 1 328 9
	.loc 1 324 8 is_stmt 0
	bne	s3,zero,.L46
	.loc 1 327 9 is_stmt 1
	.loc 1 329 9
	.loc 1 329 24 is_stmt 0
	sw	a5,-64(s0)
.L47:
	.loc 1 342 5 is_stmt 1
	.loc 1 343 15 is_stmt 0
	li	a5,1
	sw	a5,-56(s0)
	.loc 1 346 16
	sw	a5,-52(s0)
	.loc 1 342 19
	sw	zero,-60(s0)
	.loc 1 343 5 is_stmt 1
	.loc 1 346 5
	.loc 1 351 5
	.loc 1 351 21 is_stmt 0
	sw	zero,-48(s0)
	.loc 1 352 5 is_stmt 1
	.loc 1 352 25 is_stmt 0
	sw	zero,-40(s0)
	.loc 1 353 5 is_stmt 1
	.loc 1 353 26 is_stmt 0
	sh	zero,-36(s0)
	.loc 1 355 5 is_stmt 1
	call	ADC_Disable
.LVL81:
	.loc 1 356 5
	call	ADC_Enable
.LVL82:
	.loc 1 357 5
	call	ADC_Reset
.LVL83:
	.loc 1 359 5
	addi	a0,s0,-84
	call	ADC_Init
.LVL84:
	.loc 1 361 5
	.loc 1 361 8 is_stmt 0
	bne	s3,zero,.L48
	addi	a4,s0,-172
	addi	a3,s0,-128
	.loc 1 362 16
	li	a5,0
	mv	a0,a4
	.loc 1 364 34
	li	a1,23
	.loc 1 362 9
	li	a2,11
.L49:
.LVL85:
	.loc 1 363 13 is_stmt 1
	.loc 1 363 49 is_stmt 0
	addi	a6,s0,-184
	add	a6,a6,a5
	lbu	a6,0(a6)
	.loc 1 364 34
	sw	a1,0(a3)
	.loc 1 362 30
	addi	a5,a5,1
.LVL86:
	.loc 1 363 49
	sw	a6,0(a4)
	.loc 1 363 53 is_stmt 1
	.loc 1 364 13
	.loc 1 362 29
.LVL87:
	.loc 1 362 21
	.loc 1 362 9 is_stmt 0
	addi	a3,a3,4
	addi	a4,a4,4
	bne	a5,a2,.L49
	.loc 1 367 9 is_stmt 1
	li	a3,1
	li	a2,11
	addi	a1,s0,-128
	call	ADC_Scan_Channel_Config
.LVL88:
.L50:
	.loc 1 375 5
	.loc 1 376 24 is_stmt 0
	li	a5,1
	.loc 1 377 5
	addi	a0,s0,-192
	.loc 1 376 24
	sw	a5,-188(s0)
	.loc 1 375 32
	sw	zero,-192(s0)
	.loc 1 376 5 is_stmt 1
	.loc 1 377 5
	call	ADC_FIFO_Cfg
.LVL89:
	.loc 1 379 5
	call	ADC_SET_TSVBE_LOW
.LVL90:
.LBE59:
.LBE58:
	.loc 1 513 9
.LBB65:
.LBB66:
	.loc 1 246 5
	.loc 1 247 5
	.loc 1 248 5
	.loc 1 249 5
	.loc 1 257 21 is_stmt 0
	li	a0,0
	.loc 1 249 22
	lw	s3,32(s1)
.LVL91:
	.loc 1 251 5 is_stmt 1
	.loc 1 257 5
	.loc 1 257 21 is_stmt 0
	call	hosal_dma_chan_request
.LVL92:
	.loc 1 257 19
	sw	a0,20(s1)
	.loc 1 259 5 is_stmt 1
	.loc 1 259 14 is_stmt 0
	li	a0,32
	call	pvPortMalloc
.LVL93:
	mv	s2,a0
.LVL94:
	.loc 1 260 5 is_stmt 1
	.loc 1 260 8 is_stmt 0
	beq	a0,zero,.L53
	.loc 1 266 5 is_stmt 1
	.loc 1 266 14 is_stmt 0
	li	a0,88
.LVL95:
	call	pvPortMalloc
.LVL96:
	mv	s4,a0
.LVL97:
	.loc 1 267 5 is_stmt 1
	.loc 1 267 8 is_stmt 0
	beq	a0,zero,.L53
	.loc 1 273 5 is_stmt 1
	.loc 1 276 5 is_stmt 0
	lbu	a0,20(s1)
.LVL98:
	.loc 1 273 16
	li	a5,2
	sw	a5,-84(s0)
	.loc 1 274 5 is_stmt 1
	.loc 1 274 22 is_stmt 0
	li	a5,22
	sw	a5,-80(s0)
	.loc 1 275 5 is_stmt 1
	.loc 1 275 22 is_stmt 0
	sw	zero,-76(s0)
	.loc 1 276 5 is_stmt 1
	call	DMA_Channel_Disable
.LVL99:
	.loc 1 278 5
.LBB67:
.LBB68:
	.loc 1 220 5
	.loc 1 222 5
	.loc 1 223 5
	.loc 1 224 5
	.loc 1 225 5
	.loc 1 226 5
	.loc 1 227 5
	.loc 1 228 5
	.loc 1 229 5
	.loc 1 230 5
	.loc 1 231 5
	.loc 1 233 5
	.loc 1 236 22 is_stmt 0
	lw	a4,12(s2)
	.loc 1 235 35
	addi	a5,s2,16
	.loc 1 235 23
	sw	a5,8(s2)
	.loc 1 236 22
	li	a3,-2008547328
	li	a5,33554432
	addi	a3,a3,11
	and	a4,a5,a4
	or	a4,a4,a3
	sw	a4,12(s2)
	.loc 1 239 39
	addi	a4,s4,44
	.loc 1 239 27
	sw	a4,20(s2)
	.loc 1 241 22
	lw	a4,28(s2)
	.loc 1 233 26
	li	a2,1073750016
	addi	a2,a2,4
	.loc 1 241 22
	and	a5,a5,a4
	or	a5,a5,a3
	.loc 1 233 26
	sw	a2,0(s2)
	.loc 1 234 5 is_stmt 1
	.loc 1 238 26 is_stmt 0
	sw	a2,16(s2)
	.loc 1 241 22
	sw	a5,28(s2)
	.loc 1 234 27
	sw	s4,4(s2)
	.loc 1 235 5 is_stmt 1
	.loc 1 236 5
	.loc 1 238 5
	.loc 1 239 5
	.loc 1 240 5
	.loc 1 240 23 is_stmt 0
	sw	s2,24(s2)
	.loc 1 241 5 is_stmt 1
.LVL100:
.LBE68:
.LBE67:
	.loc 1 279 5
	lbu	a0,20(s1)
	addi	a1,s0,-84
	call	DMA_LLI_Init
.LVL101:
	.loc 1 280 5
	lbu	a0,20(s1)
	mv	a1,s2
	call	DMA_LLI_Update
.LVL102:
	.loc 1 282 5
	.loc 1 287 23 is_stmt 0
	li	a5,11
	.loc 1 282 20
	sw	s4,8(s3)
	.loc 1 283 5 is_stmt 1
	.loc 1 283 21 is_stmt 0
	sw	s2,4(s3)
	.loc 1 284 5 is_stmt 1
	.loc 1 284 22 is_stmt 0
	sw	zero,12(s3)
	.loc 1 285 5 is_stmt 1
	.loc 1 285 29 is_stmt 0
	sw	zero,36(s3)
	.loc 1 286 5 is_stmt 1
	.loc 1 286 26 is_stmt 0
	sw	zero,0(s3)
	.loc 1 287 5 is_stmt 1
	.loc 1 287 23 is_stmt 0
	sw	a5,40(s3)
	.loc 1 290 5 is_stmt 1
	.loc 1 290 23 is_stmt 0
	sw	zero,28(s3)
	.loc 1 291 5 is_stmt 1
	.loc 1 291 21 is_stmt 0
	sw	zero,16(s3)
	.loc 1 292 5 is_stmt 1
	.loc 1 292 21 is_stmt 0
	sw	zero,20(s3)
	.loc 1 293 5 is_stmt 1
	.loc 1 293 23 is_stmt 0
	sb	zero,32(s3)
	.loc 1 296 5 is_stmt 1
	lw	a0,20(s1)
	lui	a1,%hi(adc_data_update)
	mv	a2,s1
	addi	a1,a1,%lo(adc_data_update)
	call	hosal_dma_irq_callback_set
.LVL103:
	.loc 1 298 5
.L53:
.LBE66:
.LBE65:
	.loc 1 514 9
.LBB69:
.LBB70:
	.loc 1 384 5
	lbu	s2,20(s1)
	li	a2,1
	li	a1,2
	mv	a0,s2
	call	DMA_IntMask
.LVL104:
	.loc 1 385 5
	li	a2,0
	li	a1,0
	mv	a0,s2
	call	DMA_IntMask
.LVL105:
	.loc 1 386 5
	li	a2,0
	li	a1,1
	mv	a0,s2
	call	DMA_IntMask
.LVL106:
	.loc 1 388 5
	call	ADC_Start
.LVL107:
	.loc 1 389 5
	call	DMA_Enable
.LVL108:
	.loc 1 390 5
	mv	a0,s2
	call	DMA_Channel_Enable
.LVL109:
.LBE70:
.LBE69:
.LBE49:
	.loc 1 520 5
	.loc 1 520 14 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	s1,%lo(.LANCHOR2)(a5)
	.loc 1 522 5 is_stmt 1
	.loc 1 522 12 is_stmt 0
	li	a0,0
.LVL110:
.L25:
	.loc 1 523 1
	lw	ra,204(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	lw	s1,196(sp)
	.cfi_restore 9
.LVL111:
	lw	s2,192(sp)
	.cfi_restore 18
	lw	s3,188(sp)
	.cfi_restore 19
	lw	s4,184(sp)
	.cfi_restore 20
	lw	s5,180(sp)
	.cfi_restore 21
	lw	s6,176(sp)
	.cfi_restore 22
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
.LVL112:
.L36:
	.cfi_restore_state
.LBB74:
.LBB71:
.LBB52:
	.loc 1 436 135
	call	xTaskGetTickCount
.LVL113:
	j	.L71
.L35:
	.loc 1 439 9 is_stmt 1
	.loc 1 439 14
	.loc 1 439 16
	.loc 1 439 68 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL114:
	.loc 1 439 16
	beq	a0,zero,.L39
	.loc 1 439 95
	call	xTaskGetTickCountFromISR
.LVL115:
.L72:
	.loc 1 439 16
	lhu	a5,-198(s0)
	.loc 1 439 124
	mv	a1,a0
	.loc 1 439 16
	lui	a0,%hi(.LC10)
	li	a4,439
	addi	a3,s5,%lo(.LC3)
	addi	a2,s6,%lo(.LC9)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL116:
	.loc 1 439 191 is_stmt 1
	.loc 1 439 200
	.loc 1 442 5
	.loc 1 442 12 is_stmt 0
	j	.L38
.L39:
	.loc 1 439 124
	call	xTaskGetTickCount
.LVL117:
	j	.L72
.LVL118:
.L44:
.LBE52:
.LBE71:
.LBB72:
.LBB56:
	.loc 1 213 133
	call	xTaskGetTickCount
.LVL119:
	j	.L73
.LVL120:
.L46:
.LBE56:
.LBE72:
.LBB73:
.LBB64:
	.loc 1 337 9 is_stmt 1
	.loc 1 339 9
	.loc 1 339 24 is_stmt 0
	sw	a4,-64(s0)
	j	.L47
.L48:
	.loc 1 370 9 is_stmt 1
.LVL121:
.LBB60:
.LBB61:
	.loc 1 136 5
	.loc 1 138 5
	addi	a4,s2,-4
	li	a5,11
.LBE61:
.LBE60:
	.loc 1 361 8 is_stmt 0
	li	a0,-1
	bgtu	a4,a5,.L51
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	add	a5,a5,a4
	lb	a0,0(a5)
.L51:
.LVL122:
.LBB63:
.LBB62:
	.loc 1 175 5 is_stmt 1
.LBE62:
.LBE63:
	.loc 1 371 9
	li	a2,1
	li	a1,23
	call	ADC_Channel_Config
.LVL123:
	.loc 1 372 9
	li	a0,0
	call	ADC_Mic_Init
.LVL124:
	j	.L50
.LVL125:
.L33:
.LBE64:
.LBE73:
.LBE74:
	.loc 1 516 9
	.loc 1 516 14
	.loc 1 516 16
	.loc 1 516 83 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL126:
	.loc 1 516 16
	beq	a0,zero,.L55
	.loc 1 516 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL127:
.L74:
	.loc 1 516 139 discriminator 2
	mv	a1,a0
	.loc 1 516 16 discriminator 2
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC13)
	li	a4,516
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL128:
	j	.L75
.L55:
	.loc 1 516 139 discriminator 2
	call	xTaskGetTickCount
.LVL129:
	j	.L74
	.cfi_endproc
.LFE20:
	.size	hosal_adc_init, .-hosal_adc_init
	.section	.text.hosal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_add_channel
	.type	hosal_adc_add_channel, @function
hosal_adc_add_channel:
.LFB21:
	.loc 1 526 1 is_stmt 1
	.cfi_startproc
.LVL130:
	.loc 1 527 5
	.loc 1 526 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 535 8
	li	a5,11
	.loc 1 527 22
	lw	s2,32(a0)
.LVL131:
	.loc 1 528 5 is_stmt 1
	.loc 1 530 5
	.loc 1 535 5
	.loc 1 535 8 is_stmt 0
	bgtu	a1,a5,.L78
	.loc 1 540 9
	lw	a5,8(a0)
	mv	s1,a1
	.loc 1 540 5 is_stmt 1
	.loc 1 541 5 is_stmt 0
	li	a2,1
	addi	a1,s0,-20
.LVL132:
	li	a0,10
.LVL133:
	.loc 1 540 9
	sw	a5,-20(s0)
	.loc 1 541 5 is_stmt 1
	call	GLB_GPIO_Func_Init
.LVL134:
	.loc 1 543 5
	.loc 1 543 34 is_stmt 0
	li	a1,1
	sll	a1,a1,s1
	.loc 1 543 29
	lw	s1,36(s2)
.LVL135:
	.loc 1 545 12
	li	a0,0
	.loc 1 543 29
	or	s1,s1,a1
	sw	s1,36(s2)
	.loc 1 545 5 is_stmt 1
.L76:
	.loc 1 546 1 is_stmt 0
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
.LVL136:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL137:
.L78:
	.cfi_restore_state
	.loc 1 537 16
	li	a0,-1
.LVL138:
	j	.L76
	.cfi_endproc
.LFE21:
	.size	hosal_adc_add_channel, .-hosal_adc_add_channel
	.section	.text.hosal_adc_remove_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_remove_channel
	.type	hosal_adc_remove_channel, @function
hosal_adc_remove_channel:
.LFB22:
	.loc 1 549 1 is_stmt 1
	.cfi_startproc
.LVL139:
	.loc 1 550 5
	.loc 1 549 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 557 8
	li	a5,11
	.loc 1 550 22
	lw	a4,32(a0)
.LVL140:
	.loc 1 552 5 is_stmt 1
	.loc 1 557 5
	.loc 1 559 16 is_stmt 0
	li	a0,-1
.LVL141:
	.loc 1 557 8
	bgtu	a1,a5,.L80
	.loc 1 562 5 is_stmt 1
	.loc 1 562 36 is_stmt 0
	li	a5,1
	sll	a1,a5,a1
.LVL142:
	.loc 1 562 29
	lw	a5,36(a4)
	.loc 1 562 32
	not	a1,a1
	.loc 1 564 12
	li	a0,0
	.loc 1 562 29
	and	a1,a5,a1
	sw	a1,36(a4)
	.loc 1 564 5 is_stmt 1
.L80:
	.loc 1 565 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	hosal_adc_remove_channel, .-hosal_adc_remove_channel
	.section	.text.hosal_adc_add_reference_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_add_reference_channel
	.type	hosal_adc_add_reference_channel, @function
hosal_adc_add_reference_channel:
.LFB23:
	.loc 1 568 1 is_stmt 1
	.cfi_startproc
.LVL143:
	.loc 1 569 5
	.loc 1 568 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 572 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 569 23
	lui	a5,%hi(.LANCHOR3)
	sw	a1,%lo(.LANCHOR3)(a5)
	.loc 1 570 5 is_stmt 1
	.loc 1 570 23 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	fsw	fa0,%lo(.LANCHOR4)(a5)
	.loc 1 571 5 is_stmt 1
	.loc 1 572 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 571 12
	tail	hosal_adc_add_channel
.LVL144:
	.cfi_endproc
.LFE23:
	.size	hosal_adc_add_reference_channel, .-hosal_adc_add_reference_channel
	.section	.text.hosal_adc_remove_reference_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_remove_reference_channel
	.type	hosal_adc_remove_reference_channel, @function
hosal_adc_remove_reference_channel:
.LFB24:
	.loc 1 575 1 is_stmt 1
	.cfi_startproc
.LVL145:
	.loc 1 576 5
	.loc 1 575 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 576 14
	lui	a5,%hi(.LANCHOR3)
	.cfi_offset 8, -4
	.loc 1 575 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 576 14
	addi	a5,a5,%lo(.LANCHOR3)
	.loc 1 577 23
	li	a4,-1
	.loc 1 576 14
	lw	a1,0(a5)
.LVL146:
	.loc 1 577 5 is_stmt 1
	.loc 1 577 23 is_stmt 0
	sw	a4,0(a5)
	.loc 1 578 5 is_stmt 1
	.loc 1 579 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 578 12
	tail	hosal_adc_remove_channel
.LVL147:
	.cfi_endproc
.LFE24:
	.size	hosal_adc_remove_reference_channel, .-hosal_adc_remove_reference_channel
	.section	.text.hosal_adc_device_get,"ax",@progbits
	.align	1
	.globl	hosal_adc_device_get
	.type	hosal_adc_device_get, @function
hosal_adc_device_get:
.LFB25:
	.loc 1 582 1 is_stmt 1
	.cfi_startproc
	.loc 1 583 5
	.loc 1 582 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 589 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR2)
	lw	a0,%lo(.LANCHOR2)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	hosal_adc_device_get, .-hosal_adc_device_get
	.section	.text.hosal_adc_value_get,"ax",@progbits
	.align	1
	.globl	hosal_adc_value_get
	.type	hosal_adc_value_get, @function
hosal_adc_value_get:
.LFB26:
	.loc 1 592 1 is_stmt 1
	.cfi_startproc
.LVL148:
	.loc 1 593 5
	.loc 1 594 5
	.loc 1 592 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 601 8
	li	a5,11
	.loc 1 594 22
	lw	s4,32(a0)
.LVL149:
	.loc 1 596 5 is_stmt 1
	.loc 1 601 5
	.loc 1 601 8 is_stmt 0
	bleu	a1,a5,.L91
.LVL150:
.L93:
	.loc 1 603 16
	li	s1,-1
.L90:
	.loc 1 635 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL151:
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL152:
.L91:
	.cfi_restore_state
	.loc 1 606 25
	lw	a4,36(s4)
	.loc 1 606 13
	li	a5,1
	sll	a5,a5,a1
	.loc 1 606 25
	and	a5,a5,a4
	mv	s3,a1
	.loc 1 606 5 is_stmt 1
	.loc 1 606 8 is_stmt 0
	beq	a5,zero,.L93
	.loc 1 611 5 is_stmt 1
	.loc 1 611 8 is_stmt 0
	lw	a5,0(s4)
	beq	a5,zero,.L93
	mv	s2,a2
	mv	s5,a2
	.loc 1 616 11
	li	s6,-1
.LVL153:
.L94:
	.loc 1 616 11 is_stmt 1
	.loc 1 616 19 is_stmt 0
	lw	a0,0(s4)
	mv	a1,s3
	call	adc_parse_data.constprop.0
.LVL154:
	mv	s1,a0
.LVL155:
	.loc 1 616 11
	beq	a0,s6,.L95
	.loc 1 623 5 is_stmt 1
	.loc 1 623 32 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	.loc 1 623 8
	lw	a3,%lo(.LANCHOR3)(a5)
	li	a4,11
	addi	s3,a5,%lo(.LANCHOR3)
.LVL156:
	.loc 1 624 15
	li	s5,-1
.LVL157:
	.loc 1 623 8
	bgtu	a3,a4,.L90
.LVL158:
.L96:
	.loc 1 624 15 is_stmt 1
	.loc 1 624 29 is_stmt 0
	lw	a1,0(s3)
	lw	a0,0(s4)
	call	adc_parse_data.constprop.0
.LVL159:
	.loc 1 624 15
	beq	a0,s5,.L97
	.loc 1 631 9 is_stmt 1
	.loc 1 631 26 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	fcvt.s.w	fa5,s1
	flw	fa4,%lo(.LANCHOR4)(a5)
	fmul.s	fa5,fa5,fa4
	.loc 1 631 46
	fcvt.s.w	fa4,a0
	fdiv.s	fa5,fa5,fa4
	.loc 1 631 16
	fcvt.w.s s1,fa5,rtz
.LVL160:
	j	.L90
.LVL161:
.L95:
	.loc 1 617 9 is_stmt 1
	.loc 1 617 12 is_stmt 0
	beq	s5,zero,.L93
	.loc 1 620 9 is_stmt 1
	li	a0,1
	call	vTaskDelay
.LVL162:
	addi	s5,s5,-1
.LVL163:
	j	.L94
.LVL164:
.L97:
	.loc 1 625 13
	.loc 1 625 16 is_stmt 0
	beq	s2,zero,.L93
	.loc 1 628 13 is_stmt 1
	li	a0,1
.LVL165:
	call	vTaskDelay
.LVL166:
	addi	s2,s2,-1
.LVL167:
	j	.L96
	.cfi_endproc
.LFE26:
	.size	hosal_adc_value_get, .-hosal_adc_value_get
	.section	.text.hosal_adc_tsen_value_get,"ax",@progbits
	.align	1
	.globl	hosal_adc_tsen_value_get
	.type	hosal_adc_tsen_value_get, @function
hosal_adc_tsen_value_get:
.LFB27:
	.loc 1 639 1
	.cfi_startproc
.LVL168:
	.loc 1 640 5
	.loc 1 642 5
	.loc 1 639 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
.LVL169:
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 642 18
	lw	a5,32(a0)
	.loc 1 643 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	a0,28(a5)
.LVL170:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	hosal_adc_tsen_value_get, .-hosal_adc_tsen_value_get
	.section	.rodata.hosal_adc_sample_cb_reg.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"[%10u][%s: %s:%4d] not support now!\r\n"
	.section	.text.hosal_adc_sample_cb_reg,"ax",@progbits
	.align	1
	.globl	hosal_adc_sample_cb_reg
	.type	hosal_adc_sample_cb_reg, @function
hosal_adc_sample_cb_reg:
.LFB28:
	.loc 1 647 1 is_stmt 1
	.cfi_startproc
.LVL171:
	.loc 1 648 5
	.loc 1 648 10
	.loc 1 648 12
	.loc 1 647 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 648 69
	call	xPortIsInsideInterrupt
.LVL172:
	.loc 1 648 12
	beq	a0,zero,.L115
	.loc 1 648 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL173:
.L118:
	.loc 1 648 125 discriminator 2
	mv	a1,a0
	.loc 1 648 12 discriminator 2
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	li	a4,648
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	call	bl_printk
.LVL174:
	.loc 1 648 178 is_stmt 1 discriminator 2
	.loc 1 648 187 discriminator 2
	.loc 1 649 5 discriminator 2
	.loc 1 650 1 is_stmt 0 discriminator 2
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L115:
	.cfi_restore_state
	.loc 1 648 125 discriminator 2
	call	xTaskGetTickCount
.LVL175:
	j	.L118
	.cfi_endproc
.LFE28:
	.size	hosal_adc_sample_cb_reg, .-hosal_adc_sample_cb_reg
	.section	.text.hosal_adc_start,"ax",@progbits
	.align	1
	.globl	hosal_adc_start
	.type	hosal_adc_start, @function
hosal_adc_start:
.LFB29:
	.loc 1 653 1 is_stmt 1
	.cfi_startproc
.LVL176:
	.loc 1 654 5
	.loc 1 654 10
	.loc 1 654 12
	.loc 1 653 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 654 69
	call	xPortIsInsideInterrupt
.LVL177:
	.loc 1 654 12
	beq	a0,zero,.L120
	.loc 1 654 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL178:
.L123:
	.loc 1 654 125 discriminator 2
	mv	a1,a0
	.loc 1 654 12 discriminator 2
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	li	a4,654
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	call	bl_printk
.LVL179:
	.loc 1 654 178 is_stmt 1 discriminator 2
	.loc 1 654 187 discriminator 2
	.loc 1 655 5 discriminator 2
	.loc 1 656 1 is_stmt 0 discriminator 2
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L120:
	.cfi_restore_state
	.loc 1 654 125 discriminator 2
	call	xTaskGetTickCount
.LVL180:
	j	.L123
	.cfi_endproc
.LFE29:
	.size	hosal_adc_start, .-hosal_adc_start
	.section	.text.hosal_adc_stop,"ax",@progbits
	.align	1
	.globl	hosal_adc_stop
	.type	hosal_adc_stop, @function
hosal_adc_stop:
.LFB30:
	.loc 1 659 1 is_stmt 1
	.cfi_startproc
.LVL181:
	.loc 1 660 4
	.loc 1 659 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 661 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
.LVL182:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	hosal_adc_stop, .-hosal_adc_stop
	.section	.text.hosal_adc_finalize,"ax",@progbits
	.align	1
	.globl	hosal_adc_finalize
	.type	hosal_adc_finalize, @function
hosal_adc_finalize:
.LFB31:
	.loc 1 664 1 is_stmt 1
	.cfi_startproc
.LVL183:
	.loc 1 665 5
	.loc 1 664 1 is_stmt 0
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
	sw	s2,0(sp)
	.cfi_offset 18, -16
	.loc 1 665 22
	lw	s2,32(a0)
.LVL184:
	.loc 1 667 5 is_stmt 1
	.loc 1 672 5
	.loc 1 664 1 is_stmt 0
	mv	s1,a0
	.loc 1 672 5
	lw	a0,8(s2)
.LVL185:
	call	vPortFree
.LVL186:
	.loc 1 673 5 is_stmt 1
	lw	a0,4(s2)
	call	vPortFree
.LVL187:
	.loc 1 674 5
	mv	a0,s2
	call	vPortFree
.LVL188:
	.loc 1 675 5
	call	ADC_Stop
.LVL189:
	.loc 1 676 5
	lw	a0,20(s1)
	call	hosal_dma_chan_stop
.LVL190:
	.loc 1 677 5
	lw	a0,20(s1)
	call	hosal_dma_chan_release
.LVL191:
	.loc 1 679 5
	.loc 1 680 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL192:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL193:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	hosal_adc_finalize, .-hosal_adc_finalize
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC2:
	.word	1148846080
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC6:
	.word	1855425872
	.word	1075774226
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	4
	.word	5
	.word	6
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
.LC1:
	.word	2
	.word	1
	.word	7
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.half	0
	.zero	2
.LC12:
	.string	""
	.ascii	"\001\002\003\004\005\007\t\n\013\016"
	.section	.rodata.CSWTCH.37,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.37, @object
	.size	CSWTCH.37, 12
CSWTCH.37:
	.byte	1
	.byte	4
	.byte	5
	.byte	-1
	.byte	-1
	.byte	7
	.byte	9
	.byte	10
	.byte	0
	.byte	3
	.byte	2
	.byte	11
	.section	.sbss.pgdevice,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	pgdevice, @object
	.size	pgdevice, 4
pgdevice:
	.zero	4
	.section	.sdata.adc_refer_channel,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	adc_refer_channel, @object
	.size	adc_refer_channel, 4
adc_refer_channel:
	.word	-1
	.section	.sdata.adc_refer_voltage,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	adc_refer_voltage, @object
	.size	adc_refer_voltage, 4
adc_refer_voltage:
	.word	1065353216
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_log.h"
	.file 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1def
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF338
	.byte	0xc
	.4byte	.LASF339
	.4byte	.LASF340
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x7f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x92
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0xa5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0x4
	.4byte	0xc9
	.byte	0x7
	.4byte	0xd4
	.byte	0x8
	.4byte	0xba
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x4c
	.byte	0x1
	.4byte	0x173
	.byte	0xa
	.4byte	.LASF17
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa
	.4byte	.LASF19
	.byte	0x2
	.byte	0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0xa
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0xa
	.4byte	.LASF26
	.byte	0x9
	.byte	0xa
	.4byte	.LASF27
	.byte	0xa
	.byte	0xa
	.4byte	.LASF28
	.byte	0xb
	.byte	0xa
	.4byte	.LASF29
	.byte	0xc
	.byte	0xa
	.4byte	.LASF30
	.byte	0xd
	.byte	0xa
	.4byte	.LASF31
	.byte	0xe
	.byte	0xa
	.4byte	.LASF32
	.byte	0xf
	.byte	0xa
	.4byte	.LASF33
	.byte	0x10
	.byte	0xa
	.4byte	.LASF34
	.byte	0x11
	.byte	0xa
	.4byte	.LASF35
	.byte	0x12
	.byte	0xa
	.4byte	.LASF36
	.byte	0x13
	.byte	0xa
	.4byte	.LASF37
	.byte	0x14
	.byte	0xa
	.4byte	.LASF38
	.byte	0x15
	.byte	0xa
	.4byte	.LASF39
	.byte	0x16
	.byte	0xa
	.4byte	.LASF40
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF41
	.byte	0x3
	.byte	0x65
	.byte	0x2
	.4byte	0xd4
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x71
	.byte	0x1
	.4byte	0x1ca
	.byte	0xa
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa
	.4byte	.LASF43
	.byte	0x2
	.byte	0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0xa
	.4byte	.LASF48
	.byte	0x9
	.byte	0xa
	.4byte	.LASF49
	.byte	0xa
	.byte	0xa
	.4byte	.LASF50
	.byte	0xb
	.byte	0xa
	.4byte	.LASF51
	.byte	0xe
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x1eb
	.byte	0xa
	.4byte	.LASF52
	.byte	0
	.byte	0xa
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa
	.4byte	.LASF54
	.byte	0x2
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x206
	.byte	0xa
	.4byte	.LASF55
	.byte	0
	.byte	0xa
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF57
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x1eb
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x22d
	.byte	0xa
	.4byte	.LASF58
	.byte	0
	.byte	0xa
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x3a
	.byte	0xe
	.4byte	0x2cc
	.byte	0xa
	.4byte	.LASF60
	.byte	0
	.byte	0xa
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa
	.4byte	.LASF62
	.byte	0x2
	.byte	0xa
	.4byte	.LASF63
	.byte	0x3
	.byte	0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0xa
	.4byte	.LASF65
	.byte	0x5
	.byte	0xa
	.4byte	.LASF66
	.byte	0x6
	.byte	0xa
	.4byte	.LASF67
	.byte	0x7
	.byte	0xa
	.4byte	.LASF68
	.byte	0x8
	.byte	0xa
	.4byte	.LASF69
	.byte	0x9
	.byte	0xa
	.4byte	.LASF70
	.byte	0xa
	.byte	0xa
	.4byte	.LASF71
	.byte	0xb
	.byte	0xa
	.4byte	.LASF72
	.byte	0xc
	.byte	0xa
	.4byte	.LASF73
	.byte	0xd
	.byte	0xa
	.4byte	.LASF74
	.byte	0xe
	.byte	0xa
	.4byte	.LASF75
	.byte	0xf
	.byte	0xa
	.4byte	.LASF76
	.byte	0x10
	.byte	0xa
	.4byte	.LASF77
	.byte	0x11
	.byte	0xa
	.4byte	.LASF78
	.byte	0x12
	.byte	0xa
	.4byte	.LASF79
	.byte	0x13
	.byte	0xa
	.4byte	.LASF80
	.byte	0x14
	.byte	0xa
	.4byte	.LASF81
	.byte	0x15
	.byte	0xa
	.4byte	.LASF82
	.byte	0x16
	.byte	0xa
	.4byte	.LASF83
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF84
	.byte	0x5
	.byte	0x53
	.byte	0x2
	.4byte	0x22d
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x58
	.byte	0xe
	.4byte	0x2ff
	.byte	0xa
	.4byte	.LASF85
	.byte	0
	.byte	0xa
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa
	.4byte	.LASF87
	.byte	0x2
	.byte	0xa
	.4byte	.LASF88
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF89
	.byte	0x5
	.byte	0x5d
	.byte	0x2
	.4byte	0x2d8
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x62
	.byte	0xe
	.4byte	0x332
	.byte	0xa
	.4byte	.LASF90
	.byte	0
	.byte	0xa
	.4byte	.LASF91
	.byte	0x1
	.byte	0xa
	.4byte	.LASF92
	.byte	0x2
	.byte	0xa
	.4byte	.LASF93
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF94
	.byte	0x5
	.byte	0x67
	.byte	0x2
	.4byte	0x30b
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x6c
	.byte	0xe
	.4byte	0x37d
	.byte	0xa
	.4byte	.LASF95
	.byte	0
	.byte	0xa
	.4byte	.LASF96
	.byte	0x1
	.byte	0xa
	.4byte	.LASF97
	.byte	0x2
	.byte	0xa
	.4byte	.LASF98
	.byte	0x3
	.byte	0xa
	.4byte	.LASF99
	.byte	0x4
	.byte	0xa
	.4byte	.LASF100
	.byte	0x5
	.byte	0xa
	.4byte	.LASF101
	.byte	0x6
	.byte	0xa
	.4byte	.LASF102
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF103
	.byte	0x5
	.byte	0x75
	.byte	0x2
	.4byte	0x33e
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x88
	.byte	0xe
	.4byte	0x3c2
	.byte	0xa
	.4byte	.LASF104
	.byte	0
	.byte	0xa
	.4byte	.LASF105
	.byte	0x1
	.byte	0xa
	.4byte	.LASF106
	.byte	0x2
	.byte	0xa
	.4byte	.LASF107
	.byte	0x3
	.byte	0xa
	.4byte	.LASF108
	.byte	0x4
	.byte	0xa
	.4byte	.LASF109
	.byte	0x5
	.byte	0xa
	.4byte	.LASF110
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF111
	.byte	0x5
	.byte	0x90
	.byte	0x2
	.4byte	0x389
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x95
	.byte	0xe
	.4byte	0x3e9
	.byte	0xa
	.4byte	.LASF112
	.byte	0
	.byte	0xa
	.4byte	.LASF113
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF114
	.byte	0x5
	.byte	0x98
	.byte	0x2
	.4byte	0x3ce
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x9d
	.byte	0xe
	.4byte	0x41c
	.byte	0xa
	.4byte	.LASF115
	.byte	0
	.byte	0xa
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa
	.4byte	.LASF117
	.byte	0x2
	.byte	0xa
	.4byte	.LASF118
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF119
	.byte	0x5
	.byte	0xa2
	.byte	0x2
	.4byte	0x3f5
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0xa7
	.byte	0xe
	.4byte	0x44f
	.byte	0xa
	.4byte	.LASF120
	.byte	0
	.byte	0xa
	.4byte	.LASF121
	.byte	0x1
	.byte	0xa
	.4byte	.LASF122
	.byte	0x2
	.byte	0xa
	.4byte	.LASF123
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF124
	.byte	0x5
	.byte	0xac
	.byte	0x2
	.4byte	0x428
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0xb1
	.byte	0xe
	.4byte	0x476
	.byte	0xa
	.4byte	.LASF125
	.byte	0
	.byte	0xa
	.4byte	.LASF126
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0xb9
	.byte	0xe
	.4byte	0x491
	.byte	0xa
	.4byte	.LASF127
	.byte	0
	.byte	0xa
	.4byte	.LASF128
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF129
	.byte	0x5
	.byte	0xbc
	.byte	0x2
	.4byte	0x476
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0xc1
	.byte	0xe
	.4byte	0x4b8
	.byte	0xa
	.4byte	.LASF130
	.byte	0
	.byte	0xa
	.4byte	.LASF131
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF132
	.byte	0x5
	.byte	0xc4
	.byte	0x2
	.4byte	0x49d
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0xc9
	.byte	0xe
	.4byte	0x4f1
	.byte	0xa
	.4byte	.LASF133
	.byte	0
	.byte	0xa
	.4byte	.LASF134
	.byte	0x1
	.byte	0xa
	.4byte	.LASF135
	.byte	0x2
	.byte	0xa
	.4byte	.LASF136
	.byte	0x3
	.byte	0xa
	.4byte	.LASF137
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF138
	.byte	0x5
	.byte	0xcf
	.byte	0x2
	.4byte	0x4c4
	.byte	0xb
	.byte	0x34
	.byte	0x5
	.byte	0xfc
	.byte	0x9
	.4byte	0x5ba
	.byte	0xc
	.4byte	.LASF139
	.byte	0x5
	.byte	0xfd
	.byte	0x16
	.4byte	0x2ff
	.byte	0
	.byte	0xc
	.4byte	.LASF140
	.byte	0x5
	.byte	0xfe
	.byte	0x16
	.4byte	0x332
	.byte	0x4
	.byte	0xc
	.4byte	.LASF141
	.byte	0x5
	.byte	0xff
	.byte	0x12
	.4byte	0x37d
	.byte	0x8
	.byte	0xd
	.4byte	.LASF142
	.byte	0x5
	.2byte	0x100
	.byte	0x17
	.4byte	0x3c2
	.byte	0xc
	.byte	0xd
	.4byte	.LASF143
	.byte	0x5
	.2byte	0x101
	.byte	0x17
	.4byte	0x3c2
	.byte	0x10
	.byte	0xd
	.4byte	.LASF144
	.byte	0x5
	.2byte	0x102
	.byte	0x17
	.4byte	0x41c
	.byte	0x14
	.byte	0xd
	.4byte	.LASF145
	.byte	0x5
	.2byte	0x103
	.byte	0x17
	.4byte	0x3e9
	.byte	0x18
	.byte	0xe
	.string	"vcm"
	.byte	0x5
	.2byte	0x104
	.byte	0x16
	.4byte	0x44f
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x105
	.byte	0x13
	.4byte	0x491
	.byte	0x20
	.byte	0xd
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x106
	.byte	0x18
	.4byte	0x4b8
	.byte	0x24
	.byte	0xd
	.4byte	.LASF148
	.byte	0x5
	.2byte	0x107
	.byte	0x19
	.4byte	0x4f1
	.byte	0x28
	.byte	0xd
	.4byte	.LASF149
	.byte	0x5
	.2byte	0x108
	.byte	0x11
	.4byte	0x206
	.byte	0x2c
	.byte	0xd
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x109
	.byte	0xd
	.4byte	0x46
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LASF151
	.byte	0x5
	.2byte	0x10a
	.byte	0x2
	.4byte	0x4fd
	.byte	0x10
	.byte	0x8
	.byte	0x5
	.2byte	0x10f
	.byte	0x9
	.4byte	0x60a
	.byte	0xd
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x110
	.byte	0xc
	.4byte	0x33
	.byte	0
	.byte	0xd
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x111
	.byte	0xc
	.4byte	0x33
	.byte	0x1
	.byte	0xd
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x112
	.byte	0xe
	.4byte	0x86
	.byte	0x2
	.byte	0xd
	.4byte	.LASF155
	.byte	0x5
	.2byte	0x113
	.byte	0xb
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0xf
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x114
	.byte	0x2
	.4byte	0x5c7
	.byte	0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.2byte	0x119
	.byte	0xe
	.4byte	0x63f
	.byte	0xa
	.4byte	.LASF157
	.byte	0
	.byte	0xa
	.4byte	.LASF158
	.byte	0x1
	.byte	0xa
	.4byte	.LASF159
	.byte	0x2
	.byte	0xa
	.4byte	.LASF160
	.byte	0x3
	.byte	0
	.byte	0xf
	.4byte	.LASF161
	.byte	0x5
	.2byte	0x11e
	.byte	0x2
	.4byte	0x617
	.byte	0x10
	.byte	0x8
	.byte	0x5
	.2byte	0x12f
	.byte	0x9
	.4byte	0x673
	.byte	0xd
	.4byte	.LASF162
	.byte	0x5
	.2byte	0x130
	.byte	0x1d
	.4byte	0x63f
	.byte	0
	.byte	0xd
	.4byte	.LASF163
	.byte	0x5
	.2byte	0x131
	.byte	0x11
	.4byte	0x206
	.byte	0x4
	.byte	0
	.byte	0xf
	.4byte	.LASF164
	.byte	0x5
	.2byte	0x132
	.byte	0x2
	.4byte	0x64c
	.byte	0x12
	.4byte	.LASF232
	.byte	0x4
	.byte	0x6
	.2byte	0x4c1
	.byte	0x10
	.4byte	0x746
	.byte	0x13
	.4byte	.LASF165
	.byte	0x6
	.2byte	0x4c2
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x13
	.4byte	.LASF166
	.byte	0x6
	.2byte	0x4c3
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0x13
	.4byte	.LASF167
	.byte	0x6
	.2byte	0x4c4
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0x13
	.4byte	.LASF168
	.byte	0x6
	.2byte	0x4c5
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0x13
	.4byte	.LASF169
	.byte	0x6
	.2byte	0x4c6
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0x13
	.4byte	.LASF170
	.byte	0x6
	.2byte	0x4c7
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x13
	.4byte	.LASF171
	.byte	0x6
	.2byte	0x4c8
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x14
	.string	"SI"
	.byte	0x6
	.2byte	0x4c9
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x14
	.string	"DI"
	.byte	0x6
	.2byte	0x4ca
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x13
	.4byte	.LASF172
	.byte	0x6
	.2byte	0x4cb
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0x14
	.string	"I"
	.byte	0x6
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x49
	.byte	0xe
	.4byte	0x767
	.byte	0xa
	.4byte	.LASF173
	.byte	0
	.byte	0xa
	.4byte	.LASF174
	.byte	0x1
	.byte	0xa
	.4byte	.LASF175
	.byte	0x2
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x52
	.byte	0xe
	.4byte	0x78e
	.byte	0xa
	.4byte	.LASF176
	.byte	0
	.byte	0xa
	.4byte	.LASF177
	.byte	0x1
	.byte	0xa
	.4byte	.LASF178
	.byte	0x2
	.byte	0xa
	.4byte	.LASF179
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF180
	.byte	0x7
	.byte	0x57
	.byte	0x2
	.4byte	0x767
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x5c
	.byte	0xe
	.4byte	0x7c1
	.byte	0xa
	.4byte	.LASF181
	.byte	0
	.byte	0xa
	.4byte	.LASF182
	.byte	0x1
	.byte	0xa
	.4byte	.LASF183
	.byte	0x2
	.byte	0xa
	.4byte	.LASF184
	.byte	0x3
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x66
	.byte	0xe
	.4byte	0x812
	.byte	0xa
	.4byte	.LASF185
	.byte	0
	.byte	0xa
	.4byte	.LASF186
	.byte	0x1
	.byte	0xa
	.4byte	.LASF187
	.byte	0x2
	.byte	0xa
	.4byte	.LASF188
	.byte	0x3
	.byte	0xa
	.4byte	.LASF189
	.byte	0x6
	.byte	0xa
	.4byte	.LASF190
	.byte	0x7
	.byte	0xa
	.4byte	.LASF191
	.byte	0xa
	.byte	0xa
	.4byte	.LASF192
	.byte	0xb
	.byte	0xa
	.4byte	.LASF193
	.byte	0x16
	.byte	0xa
	.4byte	.LASF194
	.byte	0x17
	.byte	0xa
	.4byte	.LASF195
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF196
	.byte	0x7
	.byte	0x72
	.byte	0x2
	.4byte	0x7c1
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x82
	.byte	0xe
	.4byte	0x83f
	.byte	0xa
	.4byte	.LASF197
	.byte	0
	.byte	0xa
	.4byte	.LASF198
	.byte	0x1
	.byte	0xa
	.4byte	.LASF199
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x10
	.byte	0x7
	.byte	0xb0
	.byte	0x9
	.4byte	0x87d
	.byte	0xc
	.4byte	.LASF200
	.byte	0x7
	.byte	0xb1
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0xc
	.4byte	.LASF201
	.byte	0x7
	.byte	0xb2
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.byte	0xc
	.4byte	.LASF202
	.byte	0x7
	.byte	0xb3
	.byte	0xe
	.4byte	0x99
	.byte	0x8
	.byte	0xc
	.4byte	.LASF203
	.byte	0x7
	.byte	0xb4
	.byte	0x1c
	.4byte	0x680
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF204
	.byte	0x7
	.byte	0xb5
	.byte	0x2
	.4byte	0x83f
	.byte	0xb
	.byte	0xc
	.byte	0x7
	.byte	0xba
	.byte	0x9
	.4byte	0x8ba
	.byte	0x15
	.string	"dir"
	.byte	0x7
	.byte	0xbb
	.byte	0x18
	.4byte	0x78e
	.byte	0
	.byte	0xc
	.4byte	.LASF205
	.byte	0x7
	.byte	0xbc
	.byte	0x19
	.4byte	0x812
	.byte	0x4
	.byte	0xc
	.4byte	.LASF206
	.byte	0x7
	.byte	0xbd
	.byte	0x19
	.4byte	0x812
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF207
	.byte	0x7
	.byte	0xbe
	.byte	0x2
	.4byte	0x889
	.byte	0x6
	.byte	0x4
	.4byte	0x87d
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.byte	0xbf
	.byte	0xe
	.4byte	0x8e7
	.byte	0xa
	.4byte	.LASF208
	.byte	0
	.byte	0xa
	.4byte	.LASF209
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF210
	.byte	0x9
	.byte	0x38
	.byte	0xd
	.4byte	0xb3
	.byte	0x16
	.4byte	.LASF341
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x1d
	.byte	0xe
	.4byte	0x924
	.byte	0xa
	.4byte	.LASF211
	.byte	0
	.byte	0xa
	.4byte	.LASF212
	.byte	0x1
	.byte	0xa
	.4byte	.LASF213
	.byte	0x2
	.byte	0xa
	.4byte	.LASF214
	.byte	0x3
	.byte	0xa
	.4byte	.LASF215
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF216
	.byte	0xa
	.byte	0x23
	.byte	0x3
	.4byte	0x8f3
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0x30
	.byte	0xe
	.4byte	0x94b
	.byte	0xa
	.4byte	.LASF217
	.byte	0
	.byte	0xa
	.4byte	.LASF218
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF219
	.byte	0xa
	.byte	0x33
	.byte	0x3
	.4byte	0x930
	.byte	0xb
	.byte	0x10
	.byte	0xa
	.byte	0x38
	.byte	0x9
	.4byte	0x995
	.byte	0xc
	.4byte	.LASF220
	.byte	0xa
	.byte	0x39
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0x15
	.string	"pin"
	.byte	0xa
	.byte	0x3a
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.byte	0xc
	.4byte	.LASF221
	.byte	0xa
	.byte	0x3b
	.byte	0x1d
	.4byte	0x94b
	.byte	0x8
	.byte	0xc
	.4byte	.LASF222
	.byte	0xa
	.byte	0x3c
	.byte	0xd
	.4byte	0x73
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF223
	.byte	0xa
	.byte	0x3d
	.byte	0x3
	.4byte	0x957
	.byte	0x3
	.4byte	.LASF224
	.byte	0xa
	.byte	0x45
	.byte	0x10
	.4byte	0xc3
	.byte	0xb
	.byte	0x24
	.byte	0xa
	.byte	0x4a
	.byte	0x9
	.4byte	0xa04
	.byte	0xc
	.4byte	.LASF225
	.byte	0xa
	.byte	0x4b
	.byte	0xd
	.4byte	0x73
	.byte	0
	.byte	0xc
	.4byte	.LASF226
	.byte	0xa
	.byte	0x4c
	.byte	0x18
	.4byte	0x995
	.byte	0x4
	.byte	0xc
	.4byte	.LASF227
	.byte	0xa
	.byte	0x4d
	.byte	0x16
	.4byte	0x8e7
	.byte	0x14
	.byte	0x15
	.string	"cb"
	.byte	0xa
	.byte	0x4e
	.byte	0x15
	.4byte	0x9a1
	.byte	0x18
	.byte	0xc
	.4byte	.LASF228
	.byte	0xa
	.byte	0x4f
	.byte	0xb
	.4byte	0xba
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF229
	.byte	0xa
	.byte	0x50
	.byte	0xb
	.4byte	0xba
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF230
	.byte	0xa
	.byte	0x51
	.byte	0x3
	.4byte	0x9ad
	.byte	0x3
	.4byte	.LASF231
	.byte	0xa
	.byte	0x59
	.byte	0x10
	.4byte	0xa1c
	.byte	0x6
	.byte	0x4
	.4byte	0xa22
	.byte	0x7
	.4byte	0xa37
	.byte	0x8
	.4byte	0x924
	.byte	0x8
	.4byte	0xba
	.byte	0x8
	.4byte	0x99
	.byte	0
	.byte	0x17
	.4byte	.LASF233
	.byte	0x2c
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0xad4
	.byte	0xc
	.4byte	.LASF234
	.byte	0x1
	.byte	0x1c
	.byte	0xf
	.4byte	0xad4
	.byte	0
	.byte	0xc
	.4byte	.LASF235
	.byte	0x1
	.byte	0x1d
	.byte	0xb
	.4byte	0xba
	.byte	0x4
	.byte	0xc
	.4byte	.LASF236
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.4byte	0xba
	.byte	0x8
	.byte	0xc
	.4byte	.LASF237
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0xb3
	.byte	0xc
	.byte	0xc
	.4byte	.LASF238
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0x99
	.byte	0x10
	.byte	0xc
	.4byte	.LASF239
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0x99
	.byte	0x14
	.byte	0xc
	.4byte	.LASF240
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0x86
	.byte	0x18
	.byte	0xc
	.4byte	.LASF241
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0xb3
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF242
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	0x73
	.byte	0x20
	.byte	0xc
	.4byte	.LASF243
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0x99
	.byte	0x24
	.byte	0xc
	.4byte	.LASF244
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x99
	.byte	0x28
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x99
	.byte	0x3
	.4byte	.LASF245
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.4byte	0xa37
	.byte	0x18
	.4byte	.LASF246
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0xaf8
	.byte	0x5
	.byte	0x3
	.4byte	pgdevice
	.byte	0x6
	.byte	0x4
	.4byte	0xa04
	.byte	0x18
	.4byte	.LASF247
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	adc_refer_channel
	.byte	0x18
	.4byte	.LASF248
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	adc_refer_voltage
	.byte	0x19
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x297
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0xba1
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x297
	.byte	0x29
	.4byte	0xaf8
	.4byte	.LLST70
	.byte	0x1b
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x299
	.byte	0x16
	.4byte	0xba1
	.4byte	.LLST71
	.byte	0x1c
	.4byte	.LVL186
	.4byte	0x1c0e
	.byte	0x1c
	.4byte	.LVL187
	.4byte	0x1c0e
	.byte	0x1d
	.4byte	.LVL188
	.4byte	0x1c0e
	.4byte	0xb85
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL189
	.4byte	0x1c1a
	.byte	0x1c
	.4byte	.LVL190
	.4byte	0x1c27
	.byte	0x1c
	.4byte	.LVL191
	.4byte	0x1c33
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xada
	.byte	0x19
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x292
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd4
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x292
	.byte	0x25
	.4byte	0xaf8
	.4byte	.LLST69
	.byte	0
	.byte	0x19
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x28c
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xc6e
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x28c
	.byte	0x26
	.4byte	0xaf8
	.4byte	.LLST66
	.byte	0x1f
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x28c
	.byte	0x31
	.4byte	0xba
	.4byte	.LLST67
	.byte	0x1f
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x28c
	.byte	0x40
	.4byte	0x99
	.4byte	.LLST68
	.byte	0x1c
	.4byte	.LVL177
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL178
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL179
	.4byte	0x1c58
	.4byte	0xc64
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x28e
	.byte	0
	.byte	0x1c
	.4byte	.LVL180
	.4byte	0x1c64
	.byte	0
	.byte	0x19
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x286
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xcf6
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x286
	.byte	0x2e
	.4byte	0xaf8
	.4byte	.LLST64
	.byte	0x1a
	.string	"cb"
	.byte	0x1
	.2byte	0x286
	.byte	0x42
	.4byte	0xa10
	.4byte	.LLST65
	.byte	0x1c
	.4byte	.LVL172
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL173
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL174
	.4byte	0x1c58
	.4byte	0xcec
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x288
	.byte	0
	.byte	0x1c
	.4byte	.LVL175
	.4byte	0x1c64
	.byte	0
	.byte	0x19
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x27e
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xd34
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x27e
	.byte	0x2f
	.4byte	0xaf8
	.4byte	.LLST62
	.byte	0x1b
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x280
	.byte	0x16
	.4byte	0xba1
	.4byte	.LLST63
	.byte	0
	.byte	0x19
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x24f
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0xe19
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x24f
	.byte	0x2a
	.4byte	0xaf8
	.4byte	.LLST55
	.byte	0x1f
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x24f
	.byte	0x38
	.4byte	0x99
	.4byte	.LLST56
	.byte	0x1f
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x24f
	.byte	0x4a
	.4byte	0x99
	.4byte	.LLST57
	.byte	0x20
	.string	"val"
	.byte	0x1
	.2byte	0x251
	.byte	0x9
	.4byte	0xb3
	.4byte	.LLST58
	.byte	0x1b
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x251
	.byte	0x13
	.4byte	0xb3
	.4byte	.LLST59
	.byte	0x1b
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x251
	.byte	0x23
	.4byte	0xb3
	.4byte	.LLST60
	.byte	0x1b
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x252
	.byte	0x16
	.4byte	0xba1
	.4byte	.LLST61
	.byte	0x1d
	.4byte	.LVL154
	.4byte	0x1b2c
	.4byte	0xde1
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x21
	.4byte	0x1703
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0x1d
	.4byte	.LVL159
	.4byte	0x1b2c
	.4byte	0xdf6
	.byte	0x21
	.4byte	0x1703
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0x1d
	.4byte	.LVL162
	.4byte	0x1c71
	.4byte	0xe09
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x22
	.4byte	.LVL166
	.4byte	0x1c71
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x245
	.byte	0x12
	.4byte	0xaf8
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.byte	0x19
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x23e
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xe7f
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x23e
	.byte	0x39
	.4byte	0xaf8
	.4byte	.LLST53
	.byte	0x1b
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x240
	.byte	0xe
	.4byte	0x99
	.4byte	.LLST54
	.byte	0x24
	.4byte	.LVL147
	.4byte	0xee6
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x237
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xee6
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x237
	.byte	0x36
	.4byte	0xaf8
	.4byte	.LLST50
	.byte	0x1f
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x237
	.byte	0x44
	.4byte	0x99
	.4byte	.LLST51
	.byte	0x1f
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x237
	.byte	0x59
	.4byte	0x2c
	.4byte	.LLST52
	.byte	0x24
	.4byte	.LVL144
	.4byte	0xf33
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x224
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xf33
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x224
	.byte	0x2f
	.4byte	0xaf8
	.4byte	.LLST48
	.byte	0x1f
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x224
	.byte	0x3d
	.4byte	0x99
	.4byte	.LLST49
	.byte	0x25
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x226
	.byte	0x16
	.4byte	0xba1
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x19
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x20d
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xfac
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x20d
	.byte	0x2c
	.4byte	0xaf8
	.4byte	.LLST45
	.byte	0x1f
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x20d
	.byte	0x3a
	.4byte	0x99
	.4byte	.LLST46
	.byte	0x1b
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x20f
	.byte	0x16
	.4byte	0xba1
	.4byte	.LLST47
	.byte	0x26
	.string	"pin"
	.byte	0x1
	.2byte	0x210
	.byte	0x13
	.4byte	0x173
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x22
	.4byte	.LVL134
	.4byte	0x1c7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1d0
	.byte	0x5
	.4byte	0xb3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x16e4
	.byte	0x1a
	.string	"adc"
	.byte	0x1
	.2byte	0x1d0
	.byte	0x25
	.4byte	0xaf8
	.4byte	.LLST17
	.byte	0x20
	.string	"res"
	.byte	0x1
	.2byte	0x1d2
	.byte	0x9
	.4byte	0xb3
	.4byte	.LLST18
	.byte	0x1b
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x1d3
	.byte	0x9
	.4byte	0xb3
	.4byte	.LLST19
	.byte	0x26
	.string	"pin"
	.byte	0x1
	.2byte	0x1d4
	.byte	0x13
	.4byte	0x173
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x1b
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x1d5
	.byte	0x16
	.4byte	0xba1
	.4byte	.LLST20
	.byte	0x27
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x15ba
	.byte	0x25
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x1f5
	.byte	0x12
	.4byte	0x86
	.byte	0x3
	.byte	0x91
	.byte	0xba,0x7e
	.byte	0x28
	.4byte	0x1743
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x1f6
	.byte	0x9
	.4byte	0x11d0
	.byte	0x29
	.4byte	0x1755
	.4byte	.LLST23
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x2b
	.4byte	0x1762
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x2b
	.4byte	0x176f
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x1d
	.4byte	.LVL51
	.4byte	0x1c8b
	.4byte	0x1091
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x23
	.byte	0x28
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x1d
	.4byte	.LVL52
	.4byte	0x1c96
	.4byte	0x10ae
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x1c
	.4byte	.LVL53
	.4byte	0x1ca3
	.byte	0x1c
	.4byte	.LVL54
	.4byte	0x1cb0
	.byte	0x1c
	.4byte	.LVL55
	.4byte	0x1cbd
	.byte	0x1d
	.4byte	.LVL56
	.4byte	0x1cca
	.4byte	0x10de
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL57
	.4byte	0x1cd7
	.4byte	0x10fb
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL58
	.4byte	0x1ce4
	.4byte	0x110e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL59
	.4byte	0x1cf1
	.4byte	0x1123
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL61
	.4byte	0x1cfe
	.4byte	0x1138
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xba,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL62
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL63
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL64
	.4byte	0x1c58
	.4byte	0x117a
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x1b4
	.byte	0
	.byte	0x1c
	.4byte	.LVL113
	.4byte	0x1c64
	.byte	0x1c
	.4byte	.LVL114
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL115
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL116
	.4byte	0x1c58
	.4byte	0x11c5
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x1b7
	.byte	0
	.byte	0x1c
	.4byte	.LVL117
	.4byte	0x1c64
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x18e6
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x1ff
	.byte	0x9
	.4byte	0x1296
	.byte	0x29
	.4byte	0x18ff
	.4byte	.LLST24
	.byte	0x29
	.4byte	0x18f3
	.4byte	.LLST25
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x2c
	.4byte	0x190b
	.4byte	.LLST26
	.byte	0x2c
	.4byte	0x1917
	.4byte	.LLST27
	.byte	0x2c
	.4byte	0x1923
	.4byte	.LLST28
	.byte	0x1c
	.4byte	.LVL74
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL75
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL76
	.4byte	0x1c58
	.4byte	0x126d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xd5
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0xb
	.byte	0x83
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL77
	.4byte	0x1c96
	.4byte	0x128b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL119
	.4byte	0x1c64
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x179f
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x200
	.byte	0x9
	.4byte	0x13f1
	.byte	0x29
	.4byte	0x17ad
	.4byte	.LLST29
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x2c
	.4byte	0x17ba
	.4byte	.LLST30
	.byte	0x2c
	.4byte	0x17c5
	.4byte	.LLST31
	.byte	0x2b
	.4byte	0x17d2
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0x2c
	.4byte	0x17df
	.4byte	.LLST32
	.byte	0x2c
	.4byte	0x17ec
	.4byte	.LLST33
	.byte	0x2b
	.4byte	0x17f9
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x2b
	.4byte	0x1806
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7e
	.byte	0x2b
	.4byte	0x1813
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x2b
	.4byte	0x1820
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x28
	.4byte	0x1930
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x172
	.byte	0x10
	.4byte	0x1338
	.byte	0x29
	.4byte	0x1941
	.4byte	.LLST34
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x2c
	.4byte	0x194d
	.4byte	.LLST35
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL78
	.4byte	0x1c8b
	.4byte	0x135b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0+92
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0x1c
	.4byte	.LVL81
	.4byte	0x1ca3
	.byte	0x1c
	.4byte	.LVL82
	.4byte	0x1cb0
	.byte	0x1c
	.4byte	.LVL83
	.4byte	0x1cbd
	.byte	0x1d
	.4byte	.LVL84
	.4byte	0x1cca
	.4byte	0x138b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL88
	.4byte	0x1d0b
	.4byte	0x13aa
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3b
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL89
	.4byte	0x1cf1
	.4byte	0x13bf
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x1c
	.4byte	.LVL90
	.4byte	0x1d18
	.byte	0x1d
	.4byte	.LVL123
	.4byte	0x1cd7
	.4byte	0x13e0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x22
	.4byte	.LVL124
	.4byte	0x1d25
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0x184e
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.2byte	0x201
	.byte	0x9
	.4byte	0x14f9
	.byte	0x29
	.4byte	0x186b
	.4byte	.LLST36
	.byte	0x29
	.4byte	0x185f
	.4byte	.LLST37
	.byte	0x2c
	.4byte	0x1877
	.4byte	.LLST38
	.byte	0x2c
	.4byte	0x1883
	.4byte	.LLST39
	.byte	0x2b
	.4byte	0x188f
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x2c
	.4byte	0x189b
	.4byte	.LLST40
	.byte	0x2d
	.4byte	0x18a8
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.2byte	0x116
	.byte	0x5
	.4byte	0x1472
	.byte	0x29
	.4byte	0x18cd
	.4byte	.LLST41
	.byte	0x29
	.4byte	0x18c1
	.4byte	.LLST42
	.byte	0x29
	.4byte	0x18b5
	.4byte	.LLST43
	.byte	0x2e
	.4byte	0x18d9
	.byte	0
	.byte	0x1d
	.4byte	.LVL92
	.4byte	0x1d32
	.4byte	0x1485
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL93
	.4byte	0x1d3e
	.4byte	0x1499
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x1d
	.4byte	.LVL96
	.4byte	0x1d3e
	.4byte	0x14ad
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.byte	0x1c
	.4byte	.LVL99
	.4byte	0x1d4a
	.byte	0x1d
	.4byte	.LVL101
	.4byte	0x1d57
	.4byte	0x14cb
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL102
	.4byte	0x1d64
	.4byte	0x14df
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL103
	.4byte	0x1d71
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adc_data_update
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0x1783
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.2byte	0x202
	.byte	0x9
	.4byte	0x1594
	.byte	0x29
	.4byte	0x1791
	.4byte	.LLST44
	.byte	0x1d
	.4byte	.LVL104
	.4byte	0x1d7d
	.4byte	0x1535
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL105
	.4byte	0x1d7d
	.4byte	0x1553
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL106
	.4byte	0x1d7d
	.4byte	0x1571
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL107
	.4byte	0x1d8a
	.byte	0x1c
	.4byte	.LVL108
	.4byte	0x1d97
	.byte	0x22
	.4byte	.LVL109
	.4byte	0x1da4
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL65
	.4byte	0x1c1a
	.byte	0x22
	.4byte	.LVL66
	.4byte	0x1c7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7e
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x195a
	.4byte	.LBB41
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x1e0
	.byte	0xb
	.4byte	0x1665
	.byte	0x29
	.4byte	0x196b
	.4byte	.LLST21
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x2c
	.4byte	0x1977
	.4byte	.LLST22
	.byte	0x2b
	.4byte	0x1981
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x1d
	.4byte	.LVL39
	.4byte	0x1c8b
	.4byte	0x1613
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x1c
	.4byte	.LVL41
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL42
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL43
	.4byte	0x1c58
	.4byte	0x165a
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x81
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL45
	.4byte	0x1c64
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL47
	.4byte	0x1d3e
	.4byte	0x1679
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x1d
	.4byte	.LVL49
	.4byte	0x1db1
	.4byte	0x1698
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x1c
	.4byte	.LVL126
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL127
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL128
	.4byte	0x1c58
	.4byte	0x16da
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x204
	.byte	0
	.byte	0x1c
	.4byte	.LVL129
	.4byte	0x1c64
	.byte	0
	.byte	0x2f
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x1be
	.byte	0xc
	.4byte	0xb3
	.byte	0x1
	.4byte	0x1743
	.byte	0x30
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x1be
	.byte	0x25
	.4byte	0xad4
	.byte	0x30
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1be
	.byte	0x2f
	.4byte	0xb3
	.byte	0x30
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x1be
	.byte	0x3e
	.4byte	0xb3
	.byte	0x31
	.string	"i"
	.byte	0x1
	.2byte	0x1c0
	.byte	0x9
	.4byte	0xb3
	.byte	0x32
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x1c1
	.byte	0xd
	.4byte	0x59
	.byte	0x32
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x1c2
	.byte	0x15
	.4byte	0x60a
	.byte	0
	.byte	0x2f
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x18a
	.byte	0xc
	.4byte	0xb3
	.byte	0x1
	.4byte	0x177d
	.byte	0x30
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x18a
	.byte	0x2a
	.4byte	0x177d
	.byte	0x32
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x191
	.byte	0x12
	.4byte	0x5ba
	.byte	0x32
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x1a1
	.byte	0x17
	.4byte	0x673
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x86
	.byte	0x33
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x17e
	.byte	0xd
	.byte	0x1
	.4byte	0x179f
	.byte	0x30
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x17e
	.byte	0x2c
	.4byte	0x8e7
	.byte	0
	.byte	0x33
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x12e
	.byte	0xd
	.byte	0x1
	.4byte	0x182e
	.byte	0x34
	.string	"adc"
	.byte	0x1
	.2byte	0x12e
	.byte	0x27
	.4byte	0xaf8
	.byte	0x31
	.string	"i"
	.byte	0x1
	.2byte	0x130
	.byte	0x9
	.4byte	0xb3
	.byte	0x32
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x130
	.byte	0xc
	.4byte	0xb3
	.byte	0x32
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x132
	.byte	0xd
	.4byte	0x182e
	.byte	0x32
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x136
	.byte	0x1d
	.4byte	0x94b
	.byte	0x31
	.string	"pin"
	.byte	0x1
	.2byte	0x137
	.byte	0x13
	.4byte	0x173
	.byte	0x32
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x139
	.byte	0x12
	.4byte	0x5ba
	.byte	0x32
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x13a
	.byte	0x13
	.4byte	0x183e
	.byte	0x32
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x13b
	.byte	0x13
	.4byte	0x183e
	.byte	0x32
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x13c
	.byte	0x17
	.4byte	0x673
	.byte	0
	.byte	0x35
	.4byte	0x73
	.4byte	0x183e
	.byte	0x36
	.4byte	0x25
	.byte	0xa
	.byte	0
	.byte	0x35
	.4byte	0x2cc
	.4byte	0x184e
	.byte	0x36
	.4byte	0x25
	.byte	0xa
	.byte	0
	.byte	0x37
	.4byte	.LASF285
	.byte	0x1
	.byte	0xf4
	.byte	0xc
	.4byte	0xb3
	.byte	0x1
	.4byte	0x18a8
	.byte	0x38
	.string	"adc"
	.byte	0x1
	.byte	0xf4
	.byte	0x2a
	.4byte	0xaf8
	.byte	0x39
	.4byte	.LASF286
	.byte	0x1
	.byte	0xf4
	.byte	0x38
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF287
	.byte	0x1
	.byte	0xf6
	.byte	0x18
	.4byte	0x8c6
	.byte	0x3a
	.4byte	.LASF236
	.byte	0x1
	.byte	0xf7
	.byte	0xf
	.4byte	0xad4
	.byte	0x3a
	.4byte	.LASF288
	.byte	0x1
	.byte	0xf8
	.byte	0x16
	.4byte	0x8ba
	.byte	0x3a
	.4byte	.LASF249
	.byte	0x1
	.byte	0xf9
	.byte	0x16
	.4byte	0xba1
	.byte	0
	.byte	0x3b
	.4byte	.LASF289
	.byte	0x1
	.byte	0xda
	.byte	0xd
	.byte	0x1
	.4byte	0x18e6
	.byte	0x39
	.4byte	.LASF287
	.byte	0x1
	.byte	0xda
	.byte	0x31
	.4byte	0x8c6
	.byte	0x38
	.string	"buf"
	.byte	0x1
	.byte	0xda
	.byte	0x43
	.4byte	0xad4
	.byte	0x39
	.4byte	.LASF286
	.byte	0x1
	.byte	0xda
	.byte	0x51
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF290
	.byte	0x1
	.byte	0xdc
	.byte	0x1c
	.4byte	0x680
	.byte	0
	.byte	0x3b
	.4byte	.LASF291
	.byte	0x1
	.byte	0xb2
	.byte	0xd
	.byte	0x1
	.4byte	0x1930
	.byte	0x39
	.4byte	.LASF221
	.byte	0x1
	.byte	0xb2
	.byte	0x33
	.4byte	0x94b
	.byte	0x39
	.4byte	.LASF269
	.byte	0x1
	.byte	0xb2
	.byte	0x42
	.4byte	0x99
	.byte	0x3c
	.string	"div"
	.byte	0x1
	.byte	0xb4
	.byte	0xe
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF292
	.byte	0x1
	.byte	0xb5
	.byte	0xe
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF293
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0x37
	.4byte	.LASF294
	.byte	0x1
	.byte	0x86
	.byte	0xc
	.4byte	0xb3
	.byte	0x1
	.4byte	0x195a
	.byte	0x38
	.string	"pin"
	.byte	0x1
	.byte	0x86
	.byte	0x32
	.4byte	0x173
	.byte	0x3a
	.4byte	.LASF258
	.byte	0x1
	.byte	0x88
	.byte	0x9
	.4byte	0xb3
	.byte	0
	.byte	0x37
	.4byte	.LASF295
	.byte	0x1
	.byte	0x6f
	.byte	0xc
	.4byte	0xb3
	.byte	0x1
	.4byte	0x198e
	.byte	0x38
	.string	"pin"
	.byte	0x1
	.byte	0x6f
	.byte	0x2f
	.4byte	0x173
	.byte	0x3c
	.string	"i"
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.4byte	0xb3
	.byte	0x3a
	.4byte	.LASF296
	.byte	0x1
	.byte	0x73
	.byte	0x13
	.4byte	0x198e
	.byte	0
	.byte	0x35
	.4byte	0x173
	.4byte	0x199e
	.byte	0x36
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x3d
	.4byte	.LASF343
	.byte	0x1
	.byte	0x52
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ac0
	.byte	0x3e
	.4byte	.LASF228
	.byte	0x1
	.byte	0x52
	.byte	0x1d
	.4byte	0xba
	.4byte	.LLST6
	.byte	0x3e
	.4byte	.LASF297
	.byte	0x1
	.byte	0x52
	.byte	0x2d
	.4byte	0x99
	.4byte	.LLST7
	.byte	0x3f
	.string	"adc"
	.byte	0x1
	.byte	0x54
	.byte	0x16
	.4byte	0xaf8
	.4byte	.LLST8
	.byte	0x40
	.4byte	.LASF249
	.byte	0x1
	.byte	0x55
	.byte	0x16
	.4byte	0xba1
	.4byte	.LLST9
	.byte	0x41
	.4byte	0x1af0
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x5d
	.byte	0xd
	.4byte	0x1a25
	.byte	0x42
	.4byte	0x1b09
	.byte	0x42
	.4byte	0x1afd
	.byte	0x2c
	.4byte	0x1b15
	.4byte	.LLST10
	.byte	0x2c
	.4byte	0x1b1f
	.4byte	.LLST11
	.byte	0
	.byte	0x43
	.4byte	0x1af0
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x62
	.byte	0xd
	.4byte	0x1a5c
	.byte	0x42
	.4byte	0x1b09
	.byte	0x42
	.4byte	0x1afd
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0
	.byte	0x2c
	.4byte	0x1b15
	.4byte	.LLST12
	.byte	0x2c
	.4byte	0x1b1f
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0x43
	.4byte	0x1ac0
	.4byte	.LBB17
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x63
	.byte	0xd
	.4byte	0x1aad
	.byte	0x29
	.4byte	0x1acd
	.4byte	.LLST14
	.byte	0x2a
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2c
	.4byte	0x1ad9
	.4byte	.LLST15
	.byte	0x2c
	.4byte	0x1ae4
	.4byte	.LLST16
	.byte	0x1c
	.4byte	.LVL25
	.4byte	0x1dbd
	.byte	0x1c
	.4byte	.LVL26
	.4byte	0x1dc6
	.byte	0x1c
	.4byte	.LVL27
	.4byte	0x1dcf
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL19
	.4byte	0x1dd8
	.byte	0x1c
	.4byte	.LVL29
	.4byte	0x1d18
	.byte	0
	.byte	0x3b
	.4byte	.LASF298
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.byte	0x1
	.4byte	0x1af0
	.byte	0x39
	.4byte	.LASF249
	.byte	0x1
	.byte	0x43
	.byte	0x30
	.4byte	0xba1
	.byte	0x3c
	.string	"v0"
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0x99
	.byte	0x3c
	.string	"v1"
	.byte	0x1
	.byte	0x45
	.byte	0x12
	.4byte	0x99
	.byte	0
	.byte	0x3b
	.4byte	.LASF299
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.4byte	0x1b2c
	.byte	0x39
	.4byte	.LASF249
	.byte	0x1
	.byte	0x31
	.byte	0x2c
	.4byte	0xba1
	.byte	0x39
	.4byte	.LASF297
	.byte	0x1
	.byte	0x31
	.byte	0x3c
	.4byte	0x73
	.byte	0x3c
	.string	"i"
	.byte	0x1
	.byte	0x33
	.byte	0xe
	.4byte	0x86
	.byte	0x3a
	.4byte	.LASF154
	.byte	0x1
	.byte	0x34
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0x44
	.4byte	0x16e4
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c0e
	.byte	0x29
	.4byte	0x16f6
	.4byte	.LLST0
	.byte	0x29
	.4byte	0x1710
	.4byte	.LLST1
	.byte	0x2c
	.4byte	0x171d
	.4byte	.LLST2
	.byte	0x2e
	.4byte	0x1728
	.byte	0x2b
	.4byte	0x1735
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x45
	.4byte	0x1703
	.byte	0xb
	.byte	0x2d
	.4byte	0x16e4
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x1be
	.byte	0xc
	.4byte	0x1bf8
	.byte	0x29
	.4byte	0x16f6
	.4byte	.LLST3
	.byte	0x29
	.4byte	0x1703
	.4byte	.LLST4
	.byte	0x29
	.4byte	0x1710
	.4byte	.LLST5
	.byte	0x2e
	.4byte	0x171d
	.byte	0x2e
	.4byte	0x1728
	.byte	0x2e
	.4byte	0x1735
	.byte	0x1c
	.4byte	.LVL7
	.4byte	0x1c3f
	.byte	0x1c
	.4byte	.LVL8
	.4byte	0x1c4b
	.byte	0x1d
	.4byte	.LVL9
	.4byte	0x1c58
	.4byte	0x1bee
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x1cc
	.byte	0
	.byte	0x1c
	.4byte	.LVL11
	.4byte	0x1c64
	.byte	0
	.byte	0x22
	.4byte	.LVL3
	.4byte	0x1de5
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0xb
	.byte	0xf
	.byte	0x6
	.byte	0x47
	.4byte	.LASF301
	.4byte	.LASF301
	.byte	0x5
	.2byte	0x1fd
	.byte	0x6
	.byte	0x46
	.4byte	.LASF302
	.4byte	.LASF302
	.byte	0x9
	.byte	0x63
	.byte	0x5
	.byte	0x46
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0x9
	.byte	0x51
	.byte	0x5
	.byte	0x46
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0xc
	.byte	0x98
	.byte	0xc
	.byte	0x47
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0xd
	.2byte	0x558
	.byte	0xc
	.byte	0x46
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0xe
	.byte	0x81
	.byte	0x6
	.byte	0x47
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0xd
	.2byte	0x547
	.byte	0xc
	.byte	0x47
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0xd
	.2byte	0x2f6
	.byte	0x6
	.byte	0x47
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0x8
	.2byte	0x277
	.byte	0xd
	.byte	0x48
	.4byte	.LASF344
	.4byte	.LASF345
	.byte	0x10
	.byte	0
	.byte	0x47
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0x8
	.2byte	0x262
	.byte	0xd
	.byte	0x47
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x5
	.2byte	0x1f8
	.byte	0x6
	.byte	0x47
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0x5
	.2byte	0x1f7
	.byte	0x6
	.byte	0x47
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x5
	.2byte	0x1f6
	.byte	0x6
	.byte	0x47
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x5
	.2byte	0x1f9
	.byte	0x6
	.byte	0x47
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0x5
	.2byte	0x1fa
	.byte	0x6
	.byte	0x47
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x5
	.2byte	0x20b
	.byte	0x6
	.byte	0x47
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0x5
	.2byte	0x1fe
	.byte	0x6
	.byte	0x47
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x5
	.2byte	0x20f
	.byte	0xd
	.byte	0x47
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x5
	.2byte	0x1fb
	.byte	0x6
	.byte	0x47
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x5
	.2byte	0x209
	.byte	0x6
	.byte	0x47
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0x5
	.2byte	0x20c
	.byte	0xd
	.byte	0x46
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0x9
	.byte	0x48
	.byte	0x12
	.byte	0x46
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0xb
	.byte	0xc
	.byte	0x8
	.byte	0x47
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0x7
	.2byte	0x141
	.byte	0x6
	.byte	0x47
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0x7
	.2byte	0x142
	.byte	0x6
	.byte	0x47
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0x7
	.2byte	0x143
	.byte	0x6
	.byte	0x46
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0x9
	.byte	0x6e
	.byte	0x5
	.byte	0x47
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0x7
	.2byte	0x144
	.byte	0x6
	.byte	0x47
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0x5
	.2byte	0x1fc
	.byte	0x6
	.byte	0x47
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0x7
	.2byte	0x139
	.byte	0x6
	.byte	0x47
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0x7
	.2byte	0x140
	.byte	0x6
	.byte	0x46
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0xf
	.byte	0x21
	.byte	0x8
	.byte	0x49
	.4byte	.LASF333
	.4byte	.LASF333
	.byte	0x49
	.4byte	.LASF334
	.4byte	.LASF334
	.byte	0x49
	.4byte	.LASF335
	.4byte	.LASF335
	.byte	0x47
	.4byte	.LASF336
	.4byte	.LASF336
	.byte	0x5
	.2byte	0x20a
	.byte	0x6
	.byte	0x47
	.4byte	.LASF337
	.4byte	.LASF337
	.byte	0x5
	.2byte	0x203
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x17
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
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
	.byte	0x5
	.byte	0x39
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
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x49
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
.LLST70:
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL185
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL192
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL184
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL182
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL176
	.4byte	.LVL177-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL177-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL176
	.4byte	.LVL177-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL177-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL176
	.4byte	.LVL177-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL177-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL171
	.4byte	.LVL172-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL172-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL171
	.4byte	.LVL172-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL172-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL170
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x7a
	.byte	0x20
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL156
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL164
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL153
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x3
	.byte	0x85
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL161
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL158
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL153
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL152
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL145
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147-1
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL144-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL144-1
	.4byte	.LFE23
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x2a
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL131
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL137
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL125
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49-1
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL125
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL50
	.4byte	.LVL60
	.2byte	0x4
	.byte	0x91
	.byte	0xba,0x7e
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0x91
	.byte	0xba,0x7e
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x4
	.byte	0x91
	.byte	0xba,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66
	.4byte	.LVL74-1
	.2byte	0x2
	.byte	0x79
	.byte	0xc
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL69
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL80
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL90
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL90
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL91
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x2
	.byte	0x79
	.byte	0x14
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x6
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0xb
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x6
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0xd
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x6
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x3
	.byte	0x7e
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL3-1
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE36
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"ADC_PGA_GAIN_32"
.LASF53:
	.string	"ERROR"
.LASF208:
	.string	"GLB_ADC_CLK_96M"
.LASF160:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF262:
	.string	"hosal_adc_remove_reference_channel"
.LASF266:
	.string	"hosal_adc_remove_channel"
.LASF277:
	.string	"chan"
.LASF242:
	.string	"tsen_flag"
.LASF16:
	.string	"char"
.LASF274:
	.string	"adc_tsen_offset_get"
.LASF282:
	.string	"pos_chlist_single"
.LASF124:
	.string	"ADC_PGA_VCM_Type"
.LASF41:
	.string	"GLB_GPIO_Type"
.LASF200:
	.string	"srcDmaAddr"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"GPIO_FUN_ANALOG"
.LASF122:
	.string	"ADC_PGA_VCM_1P4V"
.LASF246:
	.string	"pgdevice"
.LASF309:
	.string	"GLB_GPIO_Func_Init"
.LASF127:
	.string	"ADC_VREF_3P2V"
.LASF163:
	.string	"dmaEn"
.LASF147:
	.string	"inputMode"
.LASF45:
	.string	"GPIO_FUN_I2C"
.LASF98:
	.string	"ADC_CLK_DIV_12"
.LASF99:
	.string	"ADC_CLK_DIV_16"
.LASF218:
	.string	"HOSAL_ADC_CONTINUE"
.LASF338:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF284:
	.string	"adc_fifo_cfg"
.LASF273:
	.string	"adc_parse_data"
.LASF256:
	.string	"hosal_adc_tsen_value_get"
.LASF326:
	.string	"DMA_LLI_Update"
.LASF92:
	.string	"ADC_V11_SEL_1P18V"
.LASF221:
	.string	"mode"
.LASF345:
	.string	"__builtin_memcpy"
.LASF249:
	.string	"pstctx"
.LASF195:
	.string	"DMA_REQ_NONE"
.LASF80:
	.string	"ADC_CHAN_SENP2"
.LASF293:
	.string	"mode_freq"
.LASF100:
	.string	"ADC_CLK_DIV_20"
.LASF101:
	.string	"ADC_CLK_DIV_24"
.LASF130:
	.string	"ADC_INPUT_SINGLE_END"
.LASF131:
	.string	"ADC_INPUT_DIFF"
.LASF287:
	.string	"pstlli"
.LASF165:
	.string	"TransferSize"
.LASF63:
	.string	"ADC_CHAN3"
.LASF44:
	.string	"GPIO_FUN_SPI"
.LASF223:
	.string	"hosal_adc_config_t"
.LASF292:
	.string	"source_freq"
.LASF123:
	.string	"ADC_PGA_VCM_1P6V"
.LASF13:
	.string	"uint32_t"
.LASF3:
	.string	"int8_t"
.LASF255:
	.string	"hosal_adc_sample_cb_reg"
.LASF132:
	.string	"ADC_SIG_INPUT_Type"
.LASF26:
	.string	"GLB_GPIO_PIN_9"
.LASF171:
	.string	"reserved_25"
.LASF206:
	.string	"dstPeriph"
.LASF202:
	.string	"nextLLI"
.LASF1:
	.string	"float"
.LASF82:
	.string	"ADC_CHAN_SENP0"
.LASF81:
	.string	"ADC_CHAN_SENP1"
.LASF150:
	.string	"offsetCalibVal"
.LASF79:
	.string	"ADC_CHAN_SENP3"
.LASF335:
	.string	"__fixdfsi"
.LASF306:
	.string	"bl_printk"
.LASF248:
	.string	"adc_refer_voltage"
.LASF46:
	.string	"GPIO_FUN_UART"
.LASF4:
	.string	"int16_t"
.LASF102:
	.string	"ADC_CLK_DIV_32"
.LASF272:
	.string	"result"
.LASF15:
	.string	"long long unsigned int"
.LASF305:
	.string	"xTaskGetTickCountFromISR"
.LASF271:
	.string	"parr"
.LASF51:
	.string	"GPIO_FUN_JTAG"
.LASF83:
	.string	"ADC_CHAN_GND"
.LASF119:
	.string	"ADC_CHOP_MOD_Type"
.LASF314:
	.string	"ADC_Init"
.LASF265:
	.string	"refer_voltage"
.LASF197:
	.string	"DMA_INT_TCOMPLETED"
.LASF201:
	.string	"destDmaAddr"
.LASF291:
	.string	"adc_freq_init"
.LASF193:
	.string	"DMA_REQ_GPADC0"
.LASF194:
	.string	"DMA_REQ_GPADC1"
.LASF174:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF313:
	.string	"ADC_Reset"
.LASF323:
	.string	"pvPortMalloc"
.LASF325:
	.string	"DMA_LLI_Init"
.LASF329:
	.string	"ADC_Start"
.LASF154:
	.string	"value"
.LASF182:
	.string	"DMA_BURST_SIZE_4"
.LASF337:
	.string	"ADC_Parse_Result"
.LASF87:
	.string	"ADC_V18_SEL_1P82V"
.LASF244:
	.string	"data_size"
.LASF106:
	.string	"ADC_PGA_GAIN_2"
.LASF270:
	.string	"offset"
.LASF169:
	.string	"DWidth"
.LASF88:
	.string	"ADC_V18_SEL_1P92V"
.LASF172:
	.string	"Prot"
.LASF252:
	.string	"hosal_adc_start"
.LASF324:
	.string	"DMA_Channel_Disable"
.LASF32:
	.string	"GLB_GPIO_PIN_15"
.LASF94:
	.string	"ADC_V11_SEL_Type"
.LASF36:
	.string	"GLB_GPIO_PIN_19"
.LASF90:
	.string	"ADC_V11_SEL_1P0V"
.LASF220:
	.string	"sampling_freq"
.LASF269:
	.string	"freq"
.LASF334:
	.string	"__divdf3"
.LASF308:
	.string	"vTaskDelay"
.LASF168:
	.string	"SWidth"
.LASF166:
	.string	"SBSize"
.LASF93:
	.string	"ADC_V11_SEL_1P26V"
.LASF95:
	.string	"ADC_CLK_DIV_1"
.LASF103:
	.string	"ADC_CLK_Type"
.LASF96:
	.string	"ADC_CLK_DIV_4"
.LASF187:
	.string	"DMA_REQ_UART1_RX"
.LASF229:
	.string	"priv"
.LASF97:
	.string	"ADC_CLK_DIV_8"
.LASF152:
	.string	"posChan"
.LASF52:
	.string	"SUCCESS"
.LASF307:
	.string	"xTaskGetTickCount"
.LASF303:
	.string	"hosal_dma_chan_release"
.LASF210:
	.string	"hosal_dma_chan_t"
.LASF55:
	.string	"DISABLE"
.LASF138:
	.string	"ADC_Data_Width_Type"
.LASF104:
	.string	"ADC_PGA_GAIN_NONE"
.LASF290:
	.string	"dma_ctrl_reg"
.LASF91:
	.string	"ADC_V11_SEL_1P1V"
.LASF227:
	.string	"dma_chan"
.LASF315:
	.string	"ADC_Channel_Config"
.LASF340:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF299:
	.string	"update_tsen_v"
.LASF167:
	.string	"DBSize"
.LASF128:
	.string	"ADC_VREF_2V"
.LASF43:
	.string	"GPIO_FUN_FLASH"
.LASF236:
	.string	"llibuf"
.LASF9:
	.string	"uint8_t"
.LASF233:
	.string	"adc_ctx"
.LASF47:
	.string	"GPIO_FUN_PWM"
.LASF105:
	.string	"ADC_PGA_GAIN_1"
.LASF50:
	.string	"GPIO_FUN_SWGPIO"
.LASF58:
	.string	"UNMASK"
.LASF107:
	.string	"ADC_PGA_GAIN_4"
.LASF151:
	.string	"ADC_CFG_Type"
.LASF108:
	.string	"ADC_PGA_GAIN_8"
.LASF148:
	.string	"resWidth"
.LASF60:
	.string	"ADC_CHAN0"
.LASF61:
	.string	"ADC_CHAN1"
.LASF62:
	.string	"ADC_CHAN2"
.LASF129:
	.string	"ADC_VREF_Type"
.LASF64:
	.string	"ADC_CHAN4"
.LASF65:
	.string	"ADC_CHAN5"
.LASF66:
	.string	"ADC_CHAN6"
.LASF67:
	.string	"ADC_CHAN7"
.LASF68:
	.string	"ADC_CHAN8"
.LASF69:
	.string	"ADC_CHAN9"
.LASF146:
	.string	"vref"
.LASF235:
	.string	"adc_lli"
.LASF286:
	.string	"data_num"
.LASF48:
	.string	"GPIO_FUN_EXT_PA"
.LASF8:
	.string	"long long int"
.LASF137:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF54:
	.string	"TIMEOUT"
.LASF141:
	.string	"clkDiv"
.LASF134:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF237:
	.string	"lli_flag"
.LASF278:
	.string	"adc_dma_start"
.LASF331:
	.string	"DMA_Channel_Enable"
.LASF330:
	.string	"DMA_Enable"
.LASF196:
	.string	"DMA_Periph_Req_Type"
.LASF318:
	.string	"ADC_Trim_TSEN"
.LASF279:
	.string	"adc_init"
.LASF321:
	.string	"ADC_Mic_Init"
.LASF85:
	.string	"ADC_V18_SEL_1P62V"
.LASF232:
	.string	"DMA_Control_Reg"
.LASF136:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF188:
	.string	"DMA_REQ_UART1_TX"
.LASF332:
	.string	"memset"
.LASF238:
	.string	"tsen_v0"
.LASF239:
	.string	"tsen_v1"
.LASF142:
	.string	"gain1"
.LASF254:
	.string	"size"
.LASF285:
	.string	"adc_dma_init"
.LASF72:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF73:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF74:
	.string	"ADC_CHAN_TSEN_P"
.LASF205:
	.string	"srcPeriph"
.LASF113:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF333:
	.string	"__extendsfdf2"
.LASF304:
	.string	"xPortIsInsideInterrupt"
.LASF27:
	.string	"GLB_GPIO_PIN_10"
.LASF28:
	.string	"GLB_GPIO_PIN_11"
.LASF29:
	.string	"GLB_GPIO_PIN_12"
.LASF30:
	.string	"GLB_GPIO_PIN_13"
.LASF31:
	.string	"GLB_GPIO_PIN_14"
.LASF281:
	.string	"adccfg"
.LASF33:
	.string	"GLB_GPIO_PIN_16"
.LASF34:
	.string	"GLB_GPIO_PIN_17"
.LASF35:
	.string	"GLB_GPIO_PIN_18"
.LASF135:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF317:
	.string	"ADC_FIFO_Cfg"
.LASF117:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF118:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF253:
	.string	"data"
.LASF133:
	.string	"ADC_DATA_WIDTH_12"
.LASF89:
	.string	"ADC_V18_SEL_Type"
.LASF216:
	.string	"hosal_adc_event_t"
.LASF59:
	.string	"MASK"
.LASF251:
	.string	"hosal_adc_stop"
.LASF11:
	.string	"uint16_t"
.LASF144:
	.string	"chopMode"
.LASF204:
	.string	"DMA_LLI_Ctrl_Type"
.LASF207:
	.string	"DMA_LLI_Cfg_Type"
.LASF258:
	.string	"channel"
.LASF209:
	.string	"GLB_ADC_CLK_XCLK"
.LASF341:
	.string	"__ADC_INT_EVENTS__"
.LASF37:
	.string	"GLB_GPIO_PIN_20"
.LASF38:
	.string	"GLB_GPIO_PIN_21"
.LASF39:
	.string	"GLB_GPIO_PIN_22"
.LASF10:
	.string	"unsigned char"
.LASF149:
	.string	"offsetCalibEn"
.LASF226:
	.string	"config"
.LASF173:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF5:
	.string	"short int"
.LASF214:
	.string	"HOSAL_ADC_INT_DMA_TRC"
.LASF215:
	.string	"HOSAL_ADC_INT_DMA_TRE"
.LASF213:
	.string	"HOSAL_ADC_INT_DMA_TRH"
.LASF7:
	.string	"long int"
.LASF217:
	.string	"HOSAL_ADC_ONE_SHOT"
.LASF267:
	.string	"hosal_adc_add_channel"
.LASF176:
	.string	"DMA_TRNS_M2M"
.LASF177:
	.string	"DMA_TRNS_M2P"
.LASF17:
	.string	"GLB_GPIO_PIN_0"
.LASF18:
	.string	"GLB_GPIO_PIN_1"
.LASF19:
	.string	"GLB_GPIO_PIN_2"
.LASF20:
	.string	"GLB_GPIO_PIN_3"
.LASF21:
	.string	"GLB_GPIO_PIN_4"
.LASF22:
	.string	"GLB_GPIO_PIN_5"
.LASF23:
	.string	"GLB_GPIO_PIN_6"
.LASF24:
	.string	"GLB_GPIO_PIN_7"
.LASF25:
	.string	"GLB_GPIO_PIN_8"
.LASF247:
	.string	"adc_refer_channel"
.LASF283:
	.string	"neg_chlist_single"
.LASF257:
	.string	"hosal_adc_value_get"
.LASF297:
	.string	"flag"
.LASF125:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF203:
	.string	"dmaCtrl"
.LASF156:
	.string	"ADC_Result_Type"
.LASF222:
	.string	"sample_resolution"
.LASF336:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF86:
	.string	"ADC_V18_SEL_1P72V"
.LASF300:
	.string	"vPortFree"
.LASF140:
	.string	"v11Sel"
.LASF240:
	.string	"tsen_offset"
.LASF280:
	.string	"channel_table"
.LASF75:
	.string	"ADC_CHAN_TSEN_N"
.LASF126:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF114:
	.string	"ADC_BIAS_SEL_Type"
.LASF260:
	.string	"refer_val"
.LASF241:
	.string	"tsen_data"
.LASF112:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF219:
	.string	"hosal_adc_sample_mode_t"
.LASF70:
	.string	"ADC_CHAN10"
.LASF71:
	.string	"ADC_CHAN11"
.LASF243:
	.string	"chan_init_table"
.LASF155:
	.string	"volt"
.LASF161:
	.string	"ADC_FIFO_Threshold_Type"
.LASF264:
	.string	"hosal_adc_add_reference_channel"
.LASF224:
	.string	"hosal_adc_irq_t"
.LASF78:
	.string	"ADC_CHAN_VABT_HALF"
.LASF116:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF228:
	.string	"p_arg"
.LASF145:
	.string	"biasSel"
.LASF56:
	.string	"ENABLE"
.LASF339:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_adc.c"
.LASF181:
	.string	"DMA_BURST_SIZE_1"
.LASF189:
	.string	"DMA_REQ_I2C_RX"
.LASF14:
	.string	"long unsigned int"
.LASF198:
	.string	"DMA_INT_ERR"
.LASF322:
	.string	"hosal_dma_chan_request"
.LASF310:
	.string	"GLB_Set_ADC_CLK"
.LASF183:
	.string	"DMA_BURST_SIZE_8"
.LASF245:
	.string	"hosal_adc_ctx_t"
.LASF263:
	.string	"refer_channel"
.LASF301:
	.string	"ADC_Stop"
.LASF6:
	.string	"int32_t"
.LASF199:
	.string	"DMA_INT_ALL"
.LASF225:
	.string	"port"
.LASF111:
	.string	"ADC_PGA_GAIN_Type"
.LASF57:
	.string	"BL_Fun_Type"
.LASF84:
	.string	"ADC_Chan_Type"
.LASF316:
	.string	"ADC_Tsen_Init"
.LASF327:
	.string	"hosal_dma_irq_callback_set"
.LASF185:
	.string	"DMA_REQ_UART0_RX"
.LASF139:
	.string	"v18Sel"
.LASF268:
	.string	"hosal_adc_init"
.LASF298:
	.string	"update_tsen_value"
.LASF164:
	.string	"ADC_FIFO_Cfg_Type"
.LASF302:
	.string	"hosal_dma_chan_stop"
.LASF259:
	.string	"timeout"
.LASF76:
	.string	"ADC_CHAN_VREF"
.LASF320:
	.string	"ADC_SET_TSVBE_LOW"
.LASF184:
	.string	"DMA_BURST_SIZE_16"
.LASF288:
	.string	"llicfg"
.LASF109:
	.string	"ADC_PGA_GAIN_16"
.LASF40:
	.string	"GLB_GPIO_PIN_MAX"
.LASF178:
	.string	"DMA_TRNS_P2M"
.LASF211:
	.string	"HOSAL_ADC_INT_OV"
.LASF179:
	.string	"DMA_TRNS_P2P"
.LASF311:
	.string	"ADC_Disable"
.LASF180:
	.string	"DMA_Trans_Dir_Type"
.LASF276:
	.string	"adcFifoCfg"
.LASF275:
	.string	"adcCfg"
.LASF234:
	.string	"channel_data"
.LASF153:
	.string	"negChan"
.LASF319:
	.string	"ADC_Scan_Channel_Config"
.LASF2:
	.string	"signed char"
.LASF12:
	.string	"short unsigned int"
.LASF190:
	.string	"DMA_REQ_I2C_TX"
.LASF328:
	.string	"DMA_IntMask"
.LASF289:
	.string	"adc_dma_lli_init"
.LASF344:
	.string	"memcpy"
.LASF212:
	.string	"HOSAL_ADC_INT_EOS"
.LASF143:
	.string	"gain2"
.LASF295:
	.string	"adc_check_gpio_valid"
.LASF77:
	.string	"ADC_CHAN_DCTEST"
.LASF175:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF121:
	.string	"ADC_PGA_VCM_1P2V"
.LASF250:
	.string	"hosal_adc_finalize"
.LASF231:
	.string	"hosal_adc_cb_t"
.LASF296:
	.string	"gpio_arr"
.LASF343:
	.string	"adc_data_update"
.LASF186:
	.string	"DMA_REQ_UART0_TX"
.LASF170:
	.string	"SLargerD"
.LASF157:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF158:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF294:
	.string	"adc_get_channel_by_gpio"
.LASF159:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF115:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF191:
	.string	"DMA_REQ_SPI_RX"
.LASF162:
	.string	"fifoThreshold"
.LASF342:
	.string	"hosal_adc_device_get"
.LASF42:
	.string	"GPIO_FUN_SDIO"
.LASF120:
	.string	"ADC_PGA_VCM_1V"
.LASF192:
	.string	"DMA_REQ_SPI_TX"
.LASF312:
	.string	"ADC_Enable"
.LASF261:
	.string	"refer_timeout"
.LASF230:
	.string	"hosal_adc_dev_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
