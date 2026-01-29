	.file	"bl602_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ADC_Reset,"ax",@progbits
	.align	1
	.globl	ADC_Reset
	.type	ADC_Reset, @function
ADC_Reset:
.LFB8:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c"
	.loc 1 107 1
	.cfi_startproc
	.loc 1 108 5
	.loc 1 111 5
	.loc 1 107 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 111 11
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL0:
	.loc 1 112 5 is_stmt 1
	.loc 1 112 74 is_stmt 0
	ori	a3,a5,4
	.loc 1 112 61
	sw	a3,-1780(a4)
	.loc 1 113 6 is_stmt 1
 #APP
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 29
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 52
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 75
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 98
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 121
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 144
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 167
# 113 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 113 191
	.loc 1 114 5
	.loc 1 114 74 is_stmt 0
 #NO_APP
	andi	a5,a5,-5
.LVL1:
	.loc 1 114 61
	sw	a5,-1780(a4)
	.loc 1 115 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	ADC_Reset, .-ADC_Reset
	.section	.text.ADC_Enable,"ax",@progbits
	.align	1
	.globl	ADC_Enable
	.type	ADC_Enable, @function
ADC_Enable:
.LFB9:
	.loc 1 126 1 is_stmt 1
	.cfi_startproc
	.loc 1 127 5
	.loc 1 129 5
	.loc 1 126 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 129 11
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL2:
	.loc 1 130 5 is_stmt 1
	.loc 1 130 11 is_stmt 0
	ori	a5,a5,1
.LVL3:
	.loc 1 131 5 is_stmt 1
	.loc 1 131 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 132 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	ADC_Enable, .-ADC_Enable
	.section	.text.ADC_Disable,"ax",@progbits
	.align	1
	.globl	ADC_Disable
	.type	ADC_Disable, @function
ADC_Disable:
.LFB10:
	.loc 1 143 1 is_stmt 1
	.cfi_startproc
	.loc 1 144 5
	.loc 1 146 5
	.loc 1 143 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 146 11
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL4:
	.loc 1 147 5 is_stmt 1
	.loc 1 147 11 is_stmt 0
	andi	a5,a5,-2
.LVL5:
	.loc 1 148 5 is_stmt 1
	.loc 1 148 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 149 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	ADC_Disable, .-ADC_Disable
	.section	.text.ADC_Channel_Config,"ax",@progbits
	.align	1
	.globl	ADC_Channel_Config
	.type	ADC_Channel_Config, @function
ADC_Channel_Config:
.LFB12:
	.loc 1 243 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 244 5
	.loc 1 245 5
	.loc 1 247 5
	.loc 1 248 5
	.loc 1 251 5
	.loc 1 243 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 251 11
	li	a5,1073807360
	.cfi_offset 8, -4
	.loc 1 243 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 251 11
	addi	a5,a5,-1792
	lw	a4,12(a5)
.LVL7:
	.loc 1 252 5 is_stmt 1
	.loc 1 252 23 is_stmt 0
	li	a3,-8192
	addi	a3,a3,255
	and	a4,a4,a3
.LVL8:
	.loc 1 253 5 is_stmt 1
	.loc 1 252 77 is_stmt 0
	slli	a0,a0,8
.LVL9:
	.loc 1 252 11
	or	a0,a0,a4
.LVL10:
	.loc 1 253 23
	andi	a0,a0,-249
.LVL11:
	.loc 1 253 77
	slli	a1,a1,3
.LVL12:
	.loc 1 253 11
	or	a0,a1,a0
.LVL13:
	.loc 1 254 5 is_stmt 1
	.loc 1 254 61 is_stmt 0
	sw	a0,12(a5)
	.loc 1 257 5 is_stmt 1
	.loc 1 257 12 is_stmt 0
	lw	a4,16(a5)
.LVL14:
	.loc 1 258 5 is_stmt 1
	.loc 1 258 80 is_stmt 0
	slli	a2,a2,1
.LVL15:
	.loc 1 258 25
	andi	a4,a4,-3
.LVL16:
	.loc 1 258 12
	or	a2,a2,a4
.LVL17:
	.loc 1 259 5 is_stmt 1
	.loc 1 259 12 is_stmt 0
	li	a4,-33554432
	addi	a4,a4,-1
	and	a2,a2,a4
.LVL18:
	.loc 1 260 5 is_stmt 1
	.loc 1 260 61 is_stmt 0
	sw	a2,16(a5)
	.loc 1 262 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	ADC_Channel_Config, .-ADC_Channel_Config
	.section	.text.ADC_Scan_Channel_Config,"ax",@progbits
	.align	1
	.globl	ADC_Scan_Channel_Config
	.type	ADC_Scan_Channel_Config, @function
ADC_Scan_Channel_Config:
.LFB13:
	.loc 1 276 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 277 5
	.loc 1 278 5
	.loc 1 280 5
	.loc 1 283 5
	.loc 1 284 5
	.loc 1 276 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 284 7
	li	a4,5
	.loc 1 284 18
	mv	a5,a2
	.loc 1 284 7
	bleu	a2,a4,.L10
	li	a5,6
.L10:
.LVL20:
	.loc 1 288 5 is_stmt 1
	.loc 1 288 11 is_stmt 0
	li	a4,1073807360
	lw	a4,-1768(a4)
.LVL21:
	.loc 1 289 5 is_stmt 1
	.loc 1 289 10 is_stmt 0
	li	a6,0
	li	t4,5
	.loc 1 290 30
	li	t5,31
.LVL22:
.L11:
	.loc 1 289 13 is_stmt 1 discriminator 1
	.loc 1 289 5 is_stmt 0 discriminator 1
	bne	a6,a5,.L12
	.loc 1 293 5 is_stmt 1
	.loc 1 293 61 is_stmt 0
	li	a6,1073807360
.LVL23:
	sw	a4,-1768(a6)
	.loc 1 295 5 is_stmt 1
	.loc 1 295 11 is_stmt 0
	lw	a6,-1760(a6)
.LVL24:
	.loc 1 296 5 is_stmt 1
	.loc 1 296 10 is_stmt 0
	li	a4,0
	li	t4,5
	.loc 1 297 30
	li	t5,31
.LVL25:
.L13:
	.loc 1 296 13 is_stmt 1 discriminator 1
	.loc 1 296 5 is_stmt 0 discriminator 1
	bne	a4,a5,.L14
	.loc 1 300 5 is_stmt 1
	.loc 1 300 61 is_stmt 0
	li	a5,1073807360
.LVL26:
	sw	a6,-1760(a5)
	.loc 1 303 5 is_stmt 1
	.loc 1 303 7 is_stmt 0
	bleu	a2,a4,.L15
	.loc 1 304 9 is_stmt 1
	.loc 1 304 15 is_stmt 0
	lw	a6,-1764(a5)
.LVL27:
	.loc 1 305 9 is_stmt 1
	slli	t3,a4,2
	add	a0,a0,t3
.LVL28:
	.loc 1 305 14 is_stmt 0
	li	a7,0
	.loc 1 305 29
	sub	a4,a2,a4
	li	t5,5
	.loc 1 306 34
	li	t6,31
.LVL29:
.L16:
	.loc 1 305 17 is_stmt 1 discriminator 1
	.loc 1 305 9 is_stmt 0 discriminator 1
	bgtu	a4,a7,.L17
	.loc 1 309 9 is_stmt 1
	.loc 1 309 65 is_stmt 0
	li	a5,1073807360
	sw	a6,-1764(a5)
	.loc 1 311 9 is_stmt 1
	.loc 1 311 15 is_stmt 0
	lw	a0,-1756(a5)
.LVL30:
	.loc 1 312 9 is_stmt 1
	add	a1,a1,t3
.LVL31:
	.loc 1 312 14 is_stmt 0
	li	a6,0
	li	t3,5
	.loc 1 313 34
	li	t4,31
.LVL32:
.L18:
	.loc 1 312 17 is_stmt 1 discriminator 1
	.loc 1 312 9 is_stmt 0 discriminator 1
	bne	a4,a6,.L19
	.loc 1 316 9 is_stmt 1
	.loc 1 316 65 is_stmt 0
	li	a5,1073807360
	sw	a0,-1756(a5)
.LVL33:
.L15:
	.loc 1 320 5 is_stmt 1
	.loc 1 320 11 is_stmt 0
	li	a1,1073807360
	lw	a4,-1776(a1)
.LVL34:
	.loc 1 321 5 is_stmt 1
	.loc 1 322 5
	.loc 1 323 5
	.loc 1 322 82 is_stmt 0
	addi	a5,a2,-1
	li	a2,-31457280
.LVL35:
	addi	a2,a2,-1
	and	a2,a4,a2
	.loc 1 322 85
	slli	a5,a5,21
	or	a5,a5,a2
	andi	a5,a5,-3
	.loc 1 323 78
	slli	a3,a3,1
.LVL36:
	or	a5,a5,a3
.LVL37:
	.loc 1 324 5 is_stmt 1
	.loc 1 324 11 is_stmt 0
	li	a4,33685504
.LVL38:
	or	a5,a5,a4
.LVL39:
	.loc 1 325 5 is_stmt 1
	.loc 1 325 61 is_stmt 0
	sw	a5,-1776(a1)
	.loc 1 326 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL40:
.L12:
	.cfi_restore_state
	.loc 1 290 9 is_stmt 1 discriminator 3
	mul	t3,a6,t4
	.loc 1 290 30 is_stmt 0 discriminator 3
	sll	t1,t5,t3
	.loc 1 290 24 discriminator 3
	not	t1,t1
	.loc 1 290 15 discriminator 3
	and	a4,t1,a4
.LVL41:
	.loc 1 291 9 is_stmt 1 discriminator 3
	.loc 1 291 27 is_stmt 0 discriminator 3
	slli	t1,a6,2
	add	t1,a0,t1
	.loc 1 291 30 discriminator 3
	lw	a7,0(t1)
	.loc 1 289 24 discriminator 3
	addi	a6,a6,1
.LVL42:
	.loc 1 291 30 discriminator 3
	sll	a7,a7,t3
	.loc 1 291 15 discriminator 3
	or	a4,a7,a4
.LVL43:
	.loc 1 289 23 is_stmt 1 discriminator 3
	j	.L11
.LVL44:
.L14:
	.loc 1 297 9 discriminator 3
	mul	t3,a4,t4
	.loc 1 297 30 is_stmt 0 discriminator 3
	sll	t1,t5,t3
	.loc 1 297 24 discriminator 3
	not	t1,t1
	.loc 1 297 15 discriminator 3
	and	a6,t1,a6
.LVL45:
	.loc 1 298 9 is_stmt 1 discriminator 3
	.loc 1 298 27 is_stmt 0 discriminator 3
	slli	t1,a4,2
	add	t1,a1,t1
	.loc 1 298 30 discriminator 3
	lw	a7,0(t1)
	.loc 1 296 24 discriminator 3
	addi	a4,a4,1
.LVL46:
	.loc 1 298 30 discriminator 3
	sll	a7,a7,t3
	.loc 1 298 15 discriminator 3
	or	a6,a7,a6
.LVL47:
	.loc 1 296 23 is_stmt 1 discriminator 3
	j	.L13
.LVL48:
.L17:
	.loc 1 306 13 discriminator 3
	mul	t4,a7,t5
	.loc 1 307 42 is_stmt 0 discriminator 3
	lw	a5,0(a0)
	.loc 1 305 39 discriminator 3
	addi	a7,a7,1
.LVL49:
	addi	a0,a0,4
	.loc 1 306 34 discriminator 3
	sll	t1,t6,t4
	.loc 1 306 28 discriminator 3
	not	t1,t1
	.loc 1 306 19 discriminator 3
	and	a6,t1,a6
.LVL50:
	.loc 1 307 13 is_stmt 1 discriminator 3
	.loc 1 307 42 is_stmt 0 discriminator 3
	sll	a5,a5,t4
	.loc 1 307 19 discriminator 3
	or	a6,a5,a6
.LVL51:
	.loc 1 305 38 is_stmt 1 discriminator 3
	j	.L16
.LVL52:
.L19:
	.loc 1 313 13 discriminator 3
	mul	t1,a6,t3
	.loc 1 314 42 is_stmt 0 discriminator 3
	lw	a5,0(a1)
	.loc 1 312 39 discriminator 3
	addi	a6,a6,1
.LVL53:
	addi	a1,a1,4
	.loc 1 313 34 discriminator 3
	sll	a7,t4,t1
	.loc 1 313 28 discriminator 3
	not	a7,a7
	.loc 1 313 19 discriminator 3
	and	a0,a7,a0
.LVL54:
	.loc 1 314 13 is_stmt 1 discriminator 3
	.loc 1 314 42 is_stmt 0 discriminator 3
	sll	a5,a5,t1
	.loc 1 314 19 discriminator 3
	or	a0,a5,a0
.LVL55:
	.loc 1 312 38 is_stmt 1 discriminator 3
	j	.L18
	.cfi_endproc
.LFE13:
	.size	ADC_Scan_Channel_Config, .-ADC_Scan_Channel_Config
	.section	.text.ADC_Start,"ax",@progbits
	.align	1
	.globl	ADC_Start
	.type	ADC_Start, @function
ADC_Start:
.LFB14:
	.loc 1 337 1
	.cfi_startproc
	.loc 1 338 5
	.loc 1 341 5
	.loc 1 337 1 is_stmt 0
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
	.loc 1 341 11
	li	s1,1073807360
	.loc 1 337 1
	.loc 1 341 11
	addi	s1,s1,-1792
	lw	a5,12(s1)
.LVL56:
	.loc 1 342 5 is_stmt 1
	.loc 1 345 5 is_stmt 0
	li	a0,100
	.loc 1 342 11
	andi	a5,a5,-3
.LVL57:
	.loc 1 343 5 is_stmt 1
	.loc 1 343 61 is_stmt 0
	sw	a5,12(s1)
	.loc 1 345 5 is_stmt 1
	call	BL602_Delay_US
.LVL58:
	.loc 1 348 5
	.loc 1 348 11 is_stmt 0
	lw	a5,12(s1)
.LVL59:
	.loc 1 349 5 is_stmt 1
	.loc 1 349 11 is_stmt 0
	ori	a5,a5,2
.LVL60:
	.loc 1 350 5 is_stmt 1
	.loc 1 350 61 is_stmt 0
	sw	a5,12(s1)
	.loc 1 352 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	ADC_Start, .-ADC_Start
	.section	.text.ADC_Stop,"ax",@progbits
	.align	1
	.globl	ADC_Stop
	.type	ADC_Stop, @function
ADC_Stop:
.LFB15:
	.loc 1 363 1 is_stmt 1
	.cfi_startproc
	.loc 1 364 5
	.loc 1 367 5
	.loc 1 363 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 367 11
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL61:
	.loc 1 368 5 is_stmt 1
	.loc 1 368 11 is_stmt 0
	andi	a5,a5,-3
.LVL62:
	.loc 1 369 5 is_stmt 1
	.loc 1 369 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 370 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	ADC_Stop, .-ADC_Stop
	.section	.text.ADC_FIFO_Cfg,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Cfg
	.type	ADC_FIFO_Cfg, @function
ADC_FIFO_Cfg:
.LFB16:
	.loc 1 381 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 382 5
	.loc 1 385 5
	.loc 1 392 5
	.loc 1 381 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 392 11
	li	a4,1073750016
	lw	a5,0(a4)
.LVL64:
	.loc 1 393 5 is_stmt 1
	.loc 1 393 23 is_stmt 0
	li	a3,-12582912
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL65:
	.loc 1 396 5 is_stmt 1
	.loc 1 393 95 is_stmt 0
	lw	a5,0(a0)
	slli	a5,a5,22
	.loc 1 393 11
	or	a5,a5,a3
.LVL66:
	.loc 1 396 11
	lw	a3,4(a0)
	.loc 1 396 23
	andi	a5,a5,-2
.LVL67:
	.loc 1 396 11
	or	a5,a5,a3
.LVL68:
	.loc 1 398 5 is_stmt 1
	.loc 1 398 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 401 5 is_stmt 1
	.loc 1 401 11 is_stmt 0
	lw	a5,0(a4)
.LVL69:
	.loc 1 402 5 is_stmt 1
	.loc 1 402 11 is_stmt 0
	ori	a5,a5,2
.LVL70:
	.loc 1 403 5 is_stmt 1
	.loc 1 403 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 405 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	ADC_FIFO_Cfg, .-ADC_FIFO_Cfg
	.section	.text.ADC_Get_FIFO_Count,"ax",@progbits
	.align	1
	.globl	ADC_Get_FIFO_Count
	.type	ADC_Get_FIFO_Count, @function
ADC_Get_FIFO_Count:
.LFB17:
	.loc 1 416 1 is_stmt 1
	.cfi_startproc
	.loc 1 417 5
	.loc 1 419 5
	.loc 1 416 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 419 11
	li	a5,1073750016
	lw	a0,0(a5)
.LVL71:
	.loc 1 421 5 is_stmt 1
	.loc 1 422 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 421 57
	srli	a0,a0,16
.LVL72:
	.loc 1 422 1
	andi	a0,a0,63
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	ADC_Get_FIFO_Count, .-ADC_Get_FIFO_Count
	.section	.text.ADC_FIFO_Is_Full,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Is_Full
	.type	ADC_FIFO_Is_Full, @function
ADC_FIFO_Is_Full:
.LFB18:
	.loc 1 433 1 is_stmt 1
	.cfi_startproc
	.loc 1 434 5
	.loc 1 436 5
	.loc 1 433 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 436 11
	li	a5,1073750016
	lw	a0,0(a5)
.LVL73:
	.loc 1 438 5 is_stmt 1
	.loc 1 443 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 438 7
	srli	a0,a0,3
.LVL74:
	.loc 1 443 1
	andi	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	ADC_FIFO_Is_Full, .-ADC_FIFO_Is_Full
	.section	.text.ADC_FIFO_Is_Empty,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Is_Empty
	.type	ADC_FIFO_Is_Empty, @function
ADC_FIFO_Is_Empty:
.LFB19:
	.loc 1 454 1 is_stmt 1
	.cfi_startproc
	.loc 1 455 5
	.loc 1 457 5
	.loc 1 454 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 457 11
	li	a5,1073750016
	lw	a0,0(a5)
.LVL75:
	.loc 1 459 5 is_stmt 1
	.loc 1 464 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 459 7
	srli	a0,a0,2
.LVL76:
	xori	a0,a0,1
	.loc 1 464 1
	andi	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	ADC_FIFO_Is_Empty, .-ADC_FIFO_Is_Empty
	.section	.text.ADC_Read_FIFO,"ax",@progbits
	.align	1
	.globl	ADC_Read_FIFO
	.type	ADC_Read_FIFO, @function
ADC_Read_FIFO:
.LFB20:
	.loc 1 478 1 is_stmt 1
	.cfi_startproc
	.loc 1 479 5
	.loc 1 481 5
	.loc 1 478 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 484 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 481 11
	li	a5,1073750016
	lw	a0,4(a5)
.LVL77:
	.loc 1 483 5 is_stmt 1
	.loc 1 484 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	ADC_Read_FIFO, .-ADC_Read_FIFO
	.globl	__floatsidf
	.globl	__muldf3
	.globl	__extendsfdf2
	.globl	__truncdfsf2
	.section	.text.ADC_Parse_Result,"ax",@progbits
	.align	1
	.globl	ADC_Parse_Result
	.type	ADC_Parse_Result, @function
ADC_Parse_Result:
.LFB21:
	.loc 1 497 1 is_stmt 1
	.cfi_startproc
.LVL78:
	.loc 1 498 5
	.loc 1 499 5
	.loc 1 500 5
	.loc 1 501 5
	.loc 1 502 5
	.loc 1 503 5
	.loc 1 505 5
	.loc 1 507 5
	.loc 1 497 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,104(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	fsw	fs0,44(sp)
	fsw	fs1,40(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 40, -68
	.cfi_offset 41, -72
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	.loc 1 507 23
	lui	a3,%hi(.LANCHOR0)
	.loc 1 497 1
	.loc 1 507 23
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 497 1
	mv	a5,a2
	.loc 1 507 7
	lw	a2,0(a3)
.LVL79:
	.loc 1 497 1
	mv	a4,a0
	.loc 1 507 7
	beq	a2,zero,.L54
	.loc 1 508 9 is_stmt 1
	.loc 1 508 12 is_stmt 0
	flw	fs1,8(a3)
.LVL80:
.L38:
	.loc 1 511 5 is_stmt 1
	.loc 1 511 12 is_stmt 0
	li	a3,1073807360
	lw	s1,-1776(a3)
.LVL81:
	.loc 1 512 5 is_stmt 1
	.loc 1 512 12 is_stmt 0
	lw	a3,-1772(a3)
.LVL82:
	.loc 1 513 5 is_stmt 1
	.loc 1 513 59 is_stmt 0
	srli	s1,s1,2
.LVL83:
	.loc 1 514 58
	srli	a2,a3,2
	.loc 1 516 62
	andi	a3,a3,8
.LVL84:
	.loc 1 513 13
	andi	s1,s1,7
.LVL85:
	.loc 1 514 5 is_stmt 1
	.loc 1 514 12 is_stmt 0
	andi	a2,a2,1
.LVL86:
	.loc 1 516 5 is_stmt 1
	.loc 1 516 7 is_stmt 0
	bne	a3,zero,.L55
	.loc 1 517 12
	lui	a3,%hi(.LC2)
	flw	fs0,%lo(.LC2)(a3)
.L39:
.LVL87:
	.loc 1 519 5 is_stmt 1
	slli	a1,a1,2
.LVL88:
	.loc 1 519 7 is_stmt 0
	beq	a2,zero,.L40
	.loc 1 551 21
	addi	a3,s1,-2
	mv	s3,a5
	add	a5,a4,a1
.LVL89:
	sw	a5,-84(s0)
	andi	a5,a3,-3
	.loc 1 553 47
	lui	a3,%hi(.LC8)
	lw	a6,%lo(.LC8+4)(a3)
	.loc 1 551 21
	sw	a5,-96(s0)
	.loc 1 553 47
	lw	a5,%lo(.LC8)(a3)
	.loc 1 550 47
	lui	a3,%hi(.LC7)
	lw	s4,%lo(.LC7)(a3)
	lw	s5,%lo(.LC7+4)(a3)
	.loc 1 547 47
	lui	a3,%hi(.LC6)
	lw	s6,%lo(.LC6)(a3)
	lw	s7,%lo(.LC6+4)(a3)
	.loc 1 552 58
	li	s8,65536
	.loc 1 549 67
	li	s9,16384
	.loc 1 546 67
	li	s10,4096
	mv	s2,a4
	.loc 1 552 58
	addi	s8,s8,-1
	.loc 1 553 47
	sw	a5,-104(s0)
	sw	a6,-100(s0)
	.loc 1 549 67
	addi	s9,s9,-1
	.loc 1 546 67
	addi	s10,s10,-1
.LVL90:
.L41:
	.loc 1 535 17 is_stmt 1 discriminator 1
	.loc 1 535 9 is_stmt 0 discriminator 1
	lw	a5,-84(s0)
	beq	s2,a5,.L37
	.loc 1 536 13 is_stmt 1
.LVL91:
	.loc 1 537 13
	.loc 1 537 40 is_stmt 0
	lw	a3,0(s2)
	.loc 1 540 25
	li	a5,32768
	.loc 1 536 17
	li	s11,0
	.loc 1 537 40
	srli	a3,a3,21
	.loc 1 537 30
	sb	a3,0(s3)
	.loc 1 538 13 is_stmt 1
	.loc 1 538 41 is_stmt 0
	lhu	a3,2(s2)
	.loc 1 538 46
	andi	a3,a3,31
	.loc 1 538 30
	sb	a3,1(s3)
	.loc 1 540 13 is_stmt 1
	.loc 1 540 22 is_stmt 0
	lw	a3,0(s2)
	.loc 1 540 25
	and	a2,a3,a5
	.loc 1 540 15
	beq	a2,zero,.L47
	.loc 1 541 17 is_stmt 1
	.loc 1 542 17
	.loc 1 542 27 is_stmt 0
	neg	a3,a3
	sw	a3,0(s2)
	.loc 1 543 17 is_stmt 1
.LVL92:
	.loc 1 543 21 is_stmt 0
	li	s11,1
.LVL93:
.L47:
	.loc 1 545 13 is_stmt 1
	.loc 1 545 15 is_stmt 0
	bne	s1,zero,.L48
	.loc 1 546 17 is_stmt 1
	.loc 1 546 67 is_stmt 0
	lw	a3,0(s2)
	srli	a3,a3,4
	and	a3,a3,s10
	.loc 1 546 71
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	.loc 1 546 33
	fcvt.wu.s a0,fa5,rtz
	.loc 1 546 32
	sh	a0,2(s3)
	.loc 1 547 17 is_stmt 1
	.loc 1 547 47 is_stmt 0
	and	a0,a0,s8
	call	__floatsidf
.LVL94:
	mv	a2,s6
	mv	a3,s7
.L63:
	.loc 1 553 47
	call	__muldf3
.LVL95:
	.loc 1 553 55
	fmv.s	fa0,fs0
	.loc 1 553 47
	sw	a0,-108(s0)
	sw	a1,-88(s0)
	.loc 1 553 55
	call	__extendsfdf2
.LVL96:
	lw	a7,-108(s0)
	lw	a6,-88(s0)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a7
	mv	a1,a6
	call	__muldf3
.LVL97:
	call	__truncdfsf2
.LVL98:
	fsw	fa0,4(s3)
.L49:
	.loc 1 555 13 is_stmt 1
	.loc 1 555 15 is_stmt 0
	beq	s11,zero,.L51
	.loc 1 556 17 is_stmt 1
	.loc 1 556 34 is_stmt 0
	flw	fa5,4(s3)
	fneg.s	fa5,fa5
	.loc 1 556 32
	fsw	fa5,4(s3)
.L51:
	.loc 1 535 23 is_stmt 1 discriminator 2
	addi	s3,s3,8
	addi	s2,s2,4
	j	.L41
.LVL99:
.L54:
	.loc 1 505 11 is_stmt 0
	lui	a3,%hi(.LC0)
	flw	fs1,%lo(.LC0)(a3)
	j	.L38
.LVL100:
.L55:
	.loc 1 502 11
	lui	a3,%hi(.LC1)
	flw	fs0,%lo(.LC1)(a3)
	j	.L39
.LVL101:
.L40:
	.loc 1 531 47
	lui	a3,%hi(.LC5)
	mv	s3,a5
	add	a5,a4,a1
.LVL102:
	lw	a6,%lo(.LC5+4)(a3)
	sw	a5,-84(s0)
	lw	a5,%lo(.LC5)(a3)
	.loc 1 528 47
	lui	a3,%hi(.LC4)
	lw	s4,%lo(.LC4)(a3)
	lw	s5,%lo(.LC4+4)(a3)
	.loc 1 525 47
	lui	a3,%hi(.LC3)
	lw	s6,%lo(.LC3)(a3)
	lw	s7,%lo(.LC3+4)(a3)
	.loc 1 529 21
	addi	s9,s1,-2
	.loc 1 530 58
	li	s8,65536
	.loc 1 527 67
	li	s10,16384
	.loc 1 524 67
	li	s11,4096
	mv	s2,a4
	.loc 1 529 21
	andi	s9,s9,-3
	.loc 1 530 58
	addi	s8,s8,-1
	.loc 1 531 47
	sw	a5,-96(s0)
	sw	a6,-92(s0)
	.loc 1 527 67
	addi	s10,s10,-1
	.loc 1 524 67
	addi	s11,s11,-1
.LVL103:
.L42:
	.loc 1 520 17 is_stmt 1 discriminator 1
	.loc 1 520 9 is_stmt 0 discriminator 1
	lw	a5,-84(s0)
	bne	a5,s2,.L46
.LVL104:
.L37:
	.loc 1 560 1
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
.LVL105:
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
	lw	s10,64(sp)
	.cfi_restore 26
	lw	s11,60(sp)
	.cfi_restore 27
	flw	fs0,44(sp)
	.cfi_restore 40
.LVL106:
	flw	fs1,40(sp)
	.cfi_restore 41
.LVL107:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL108:
.L46:
	.cfi_restore_state
	.loc 1 521 13 is_stmt 1
	.loc 1 521 40 is_stmt 0
	lw	a3,0(s2)
	.loc 1 522 30
	li	a5,-1
	sb	a5,1(s3)
	.loc 1 521 40
	srli	a3,a3,21
	.loc 1 521 30
	sb	a3,0(s3)
	.loc 1 522 13 is_stmt 1
	.loc 1 523 13
	.loc 1 523 15 is_stmt 0
	bne	s1,zero,.L43
	.loc 1 524 17 is_stmt 1
	.loc 1 524 67 is_stmt 0
	lw	a3,0(s2)
	srli	a3,a3,4
	and	a3,a3,s11
	.loc 1 524 71
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	.loc 1 524 33
	fcvt.wu.s a0,fa5,rtz
	.loc 1 524 32
	sh	a0,2(s3)
	.loc 1 525 17 is_stmt 1
	.loc 1 525 47 is_stmt 0
	and	a0,a0,s8
	call	__floatsidf
.LVL109:
	mv	a2,s6
	mv	a3,s7
.L62:
	.loc 1 531 47
	call	__muldf3
.LVL110:
	.loc 1 531 55
	fmv.s	fa0,fs0
	.loc 1 531 47
	sw	a0,-88(s0)
	sw	a1,-104(s0)
	.loc 1 531 55
	call	__extendsfdf2
.LVL111:
	lw	a7,-88(s0)
	lw	a6,-104(s0)
	mv	a2,a0
	mv	a3,a1
	mv	a0,a7
	mv	a1,a6
	call	__muldf3
.LVL112:
	call	__truncdfsf2
.LVL113:
	fsw	fa0,4(s3)
.L44:
	.loc 1 520 23 is_stmt 1 discriminator 2
	addi	s2,s2,4
	addi	s3,s3,8
	j	.L42
.L43:
	.loc 1 526 19
	.loc 1 526 21 is_stmt 0
	li	a5,1
	bne	s1,a5,.L45
	.loc 1 527 17 is_stmt 1
	.loc 1 527 67 is_stmt 0
	lw	a3,0(s2)
	srli	a3,a3,2
	and	a3,a3,s10
	.loc 1 527 71
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	.loc 1 527 33
	fcvt.wu.s a0,fa5,rtz
	.loc 1 527 32
	sh	a0,2(s3)
	.loc 1 528 17 is_stmt 1
	.loc 1 528 47 is_stmt 0
	and	a0,a0,s8
	call	__floatsidf
.LVL114:
	mv	a2,s4
	mv	a3,s5
	j	.L62
.L45:
	.loc 1 529 19 is_stmt 1
	.loc 1 529 21 is_stmt 0
	bne	s9,zero,.L44
	.loc 1 530 17 is_stmt 1
	.loc 1 530 58 is_stmt 0
	lw	a3,0(s2)
	and	a3,a3,s8
	.loc 1 530 66
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	.loc 1 530 33
	fcvt.wu.s a0,fa5,rtz
	.loc 1 530 32
	sh	a0,2(s3)
	.loc 1 531 17 is_stmt 1
	.loc 1 531 47 is_stmt 0
	and	a0,a0,s8
	call	__floatsidf
.LVL115:
	lw	a2,-96(s0)
	lw	a3,-92(s0)
	j	.L62
.LVL116:
.L48:
	.loc 1 548 19 is_stmt 1
	.loc 1 548 21 is_stmt 0
	li	a5,1
	bne	s1,a5,.L50
	.loc 1 549 17 is_stmt 1
	.loc 1 549 67 is_stmt 0
	lw	a3,0(s2)
	srli	a3,a3,2
	and	a3,a3,s9
	.loc 1 549 71
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	.loc 1 549 33
	fcvt.wu.s a0,fa5,rtz
	.loc 1 549 32
	sh	a0,2(s3)
	.loc 1 550 17 is_stmt 1
	.loc 1 550 47 is_stmt 0
	and	a0,a0,s8
	call	__floatsidf
.LVL117:
	mv	a2,s4
	mv	a3,s5
	j	.L63
.L50:
	.loc 1 551 19 is_stmt 1
	.loc 1 551 21 is_stmt 0
	lw	a5,-96(s0)
	bne	a5,zero,.L49
	.loc 1 552 17 is_stmt 1
	.loc 1 552 58 is_stmt 0
	lw	a3,0(s2)
	and	a3,a3,s8
	.loc 1 552 66
	fcvt.s.w	fa5,a3
	fdiv.s	fa5,fa5,fs1
	.loc 1 552 33
	fcvt.wu.s a0,fa5,rtz
	.loc 1 552 32
	sh	a0,2(s3)
	.loc 1 553 17 is_stmt 1
	.loc 1 553 47 is_stmt 0
	and	a0,a0,s8
	call	__floatsidf
.LVL118:
	lw	a2,-104(s0)
	lw	a3,-100(s0)
	j	.L63
	.cfi_endproc
.LFE21:
	.size	ADC_Parse_Result, .-ADC_Parse_Result
	.section	.text.ADC_IntMask,"ax",@progbits
	.align	1
	.globl	ADC_IntMask
	.type	ADC_IntMask, @function
ADC_IntMask:
.LFB22:
	.loc 1 572 1 is_stmt 1
	.cfi_startproc
.LVL119:
	.loc 1 573 5
	.loc 1 576 5
	.loc 1 577 5
	.loc 1 579 5
	.loc 1 572 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,5
	bgtu	a0,a5,.L64
	lui	a5,%hi(.L67)
	addi	a5,a5,%lo(.L67)
	slli	a0,a0,2
.LVL120:
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.ADC_IntMask,"a",@progbits
	.align	2
	.align	2
.L67:
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L66
	.section	.text.ADC_IntMask
.L72:
	.loc 1 582 13 is_stmt 1
	.loc 1 582 19 is_stmt 0
	li	a5,1073807360
	lw	a4,-1748(a5)
.LVL121:
	.loc 1 583 13 is_stmt 1
	.loc 1 588 23 is_stmt 0
	ori	a5,a4,512
	.loc 1 583 15
	bne	a1,zero,.L76
	.loc 1 585 17 is_stmt 1
	.loc 1 585 23 is_stmt 0
	andi	a5,a4,-513
.LVL122:
	.loc 1 590 13 is_stmt 1
.L76:
	.loc 1 601 13
	.loc 1 601 69 is_stmt 0
	li	a4,1073807360
	sw	a5,-1748(a4)
	.loc 1 602 13 is_stmt 1
.LVL123:
.L64:
	.loc 1 666 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L71:
	.cfi_restore_state
	.loc 1 593 13 is_stmt 1
	.loc 1 593 19 is_stmt 0
	li	a5,1073807360
	lw	a4,-1748(a5)
.LVL124:
	.loc 1 594 13 is_stmt 1
	.loc 1 599 23 is_stmt 0
	ori	a5,a4,256
	.loc 1 594 15
	bne	a1,zero,.L76
	.loc 1 596 17 is_stmt 1
	.loc 1 596 23 is_stmt 0
	andi	a5,a4,-257
.LVL125:
	j	.L76
.LVL126:
.L70:
	.loc 1 604 13 is_stmt 1
	.loc 1 604 19 is_stmt 0
	li	a5,1073750016
	lw	a5,0(a5)
.LVL127:
	.loc 1 605 13 is_stmt 1
	.loc 1 607 23 is_stmt 0
	li	a4,-16384
	.loc 1 605 15
	beq	a1,zero,.L87
	.loc 1 610 17 is_stmt 1
	.loc 1 610 23 is_stmt 0
	li	a4,16384
.L86:
	.loc 1 632 23
	or	a5,a5,a4
.LVL128:
	j	.L82
.LVL129:
.L69:
	.loc 1 615 13 is_stmt 1
	.loc 1 615 19 is_stmt 0
	li	a5,1073750016
	lw	a5,0(a5)
.LVL130:
	.loc 1 616 13 is_stmt 1
	.loc 1 618 23 is_stmt 0
	li	a4,-8192
	.loc 1 616 15
	beq	a1,zero,.L87
	.loc 1 621 17 is_stmt 1
	.loc 1 621 23 is_stmt 0
	li	a4,8192
	j	.L86
.LVL131:
.L68:
	.loc 1 626 13 is_stmt 1
	.loc 1 626 19 is_stmt 0
	li	a5,1073750016
	lw	a5,0(a5)
.LVL132:
	.loc 1 627 13 is_stmt 1
	.loc 1 627 15 is_stmt 0
	bne	a1,zero,.L81
	.loc 1 629 17 is_stmt 1
	.loc 1 629 23 is_stmt 0
	li	a4,-4096
.L87:
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL133:
.L82:
	.loc 1 634 13 is_stmt 1
	.loc 1 634 67 is_stmt 0
	li	a4,1073750016
.LVL134:
.L85:
	.loc 1 660 17 is_stmt 1
	.loc 1 660 71 is_stmt 0
	sw	a5,0(a4)
	.loc 1 666 1
	j	.L64
.L81:
	.loc 1 632 17 is_stmt 1
	.loc 1 632 23 is_stmt 0
	li	a4,4096
	j	.L86
.LVL135:
.L66:
	.loc 1 637 13 is_stmt 1
	.loc 1 639 23 is_stmt 0
	li	a5,1073754112
	lw	a5,-1748(a5)
	.loc 1 637 15
	bne	a1,zero,.L83
	.loc 1 639 17 is_stmt 1
.LVL136:
	.loc 1 640 17
	.loc 1 641 17
	.loc 1 641 23 is_stmt 0
	andi	a5,a5,-769
.LVL137:
	.loc 1 642 17 is_stmt 1
	.loc 1 642 73 is_stmt 0
	li	a4,1073807360
	sw	a5,-1748(a4)
	.loc 1 644 17 is_stmt 1
	.loc 1 644 23 is_stmt 0
	li	a3,1073750016
	lw	a5,0(a3)
.LVL138:
	.loc 1 645 17 is_stmt 1
	.loc 1 646 17
	.loc 1 647 17
	.loc 1 647 23 is_stmt 0
	li	a4,-28672
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL139:
	.loc 1 648 17 is_stmt 1
	.loc 1 648 71 is_stmt 0
	sw	a5,0(a3)
	j	.L64
.LVL140:
.L83:
	.loc 1 651 17 is_stmt 1
	.loc 1 652 17
	.loc 1 653 17
	.loc 1 653 23 is_stmt 0
	ori	a5,a5,768
.LVL141:
	.loc 1 654 17 is_stmt 1
	.loc 1 654 73 is_stmt 0
	li	a4,1073807360
	sw	a5,-1748(a4)
	.loc 1 656 17 is_stmt 1
	.loc 1 656 23 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL142:
	.loc 1 657 17 is_stmt 1
	.loc 1 658 17
	.loc 1 659 17
	.loc 1 659 23 is_stmt 0
	li	a3,28672
	or	a5,a5,a3
.LVL143:
	j	.L85
	.cfi_endproc
.LFE22:
	.size	ADC_IntMask, .-ADC_IntMask
	.section	.text.ADC_IntClr,"ax",@progbits
	.align	1
	.globl	ADC_IntClr
	.type	ADC_IntClr, @function
ADC_IntClr:
.LFB23:
	.loc 1 677 1 is_stmt 1
	.cfi_startproc
.LVL144:
	.loc 1 678 5
	.loc 1 681 5
	.loc 1 683 5
	.loc 1 677 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,5
	bgtu	a0,a5,.L88
	lui	a5,%hi(.L91)
	addi	a5,a5,%lo(.L91)
	slli	a0,a0,2
.LVL145:
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.ADC_IntClr,"a",@progbits
	.align	2
	.align	2
.L91:
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L90
	.section	.text.ADC_IntClr
.L96:
	.loc 1 686 13 is_stmt 1
	.loc 1 686 19 is_stmt 0
	li	a5,1073807360
	addi	a5,a5,-1792
	lw	a4,44(a5)
.LVL146:
	.loc 1 687 13 is_stmt 1
	.loc 1 687 19 is_stmt 0
	andi	a4,a4,-33
.LVL147:
	.loc 1 688 13 is_stmt 1
	.loc 1 688 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 690 13 is_stmt 1
	.loc 1 690 19 is_stmt 0
	ori	a4,a4,32
.LVL148:
	.loc 1 691 13 is_stmt 1
	.loc 1 691 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 694 13 is_stmt 1
	.loc 1 694 19 is_stmt 0
	lw	a4,44(a5)
.LVL149:
	.loc 1 695 13 is_stmt 1
	.loc 1 695 19 is_stmt 0
	andi	a4,a4,-33
.LVL150:
	.loc 1 696 13 is_stmt 1
.L99:
	.loc 1 710 13
	.loc 1 710 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 712 13 is_stmt 1
.LVL151:
.L88:
	.loc 1 795 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L95:
	.cfi_restore_state
	.loc 1 700 13 is_stmt 1
	.loc 1 700 19 is_stmt 0
	li	a5,1073807360
	addi	a5,a5,-1792
	lw	a4,44(a5)
.LVL152:
	.loc 1 701 13 is_stmt 1
	.loc 1 701 19 is_stmt 0
	andi	a4,a4,-17
.LVL153:
	.loc 1 702 13 is_stmt 1
	.loc 1 702 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 704 13 is_stmt 1
	.loc 1 704 19 is_stmt 0
	ori	a4,a4,16
.LVL154:
	.loc 1 705 13 is_stmt 1
	.loc 1 705 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 708 13 is_stmt 1
	.loc 1 708 19 is_stmt 0
	lw	a4,44(a5)
.LVL155:
	.loc 1 709 13 is_stmt 1
	.loc 1 709 19 is_stmt 0
	andi	a4,a4,-17
.LVL156:
	j	.L99
.L94:
	.loc 1 714 13 is_stmt 1
	.loc 1 714 19 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL157:
	.loc 1 715 13 is_stmt 1
	.loc 1 715 19 is_stmt 0
	andi	a5,a5,-1025
.LVL158:
	.loc 1 716 13 is_stmt 1
	.loc 1 716 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 718 13 is_stmt 1
	.loc 1 718 19 is_stmt 0
	ori	a5,a5,1024
.LVL159:
	.loc 1 719 13 is_stmt 1
	.loc 1 719 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 722 13 is_stmt 1
	.loc 1 722 19 is_stmt 0
	lw	a5,0(a4)
.LVL160:
	.loc 1 723 13 is_stmt 1
	.loc 1 723 19 is_stmt 0
	andi	a5,a5,-1025
.LVL161:
	.loc 1 724 13 is_stmt 1
.L98:
	.loc 1 788 13
	.loc 1 788 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 791 13 is_stmt 1
	.loc 1 795 1 is_stmt 0
	j	.L88
.LVL162:
.L93:
	.loc 1 728 13 is_stmt 1
	.loc 1 728 19 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL163:
	.loc 1 729 13 is_stmt 1
	.loc 1 729 19 is_stmt 0
	andi	a5,a5,-513
.LVL164:
	.loc 1 730 13 is_stmt 1
	.loc 1 730 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 732 13 is_stmt 1
	.loc 1 732 19 is_stmt 0
	ori	a5,a5,512
.LVL165:
	.loc 1 733 13 is_stmt 1
	.loc 1 733 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 736 13 is_stmt 1
	.loc 1 736 19 is_stmt 0
	lw	a5,0(a4)
.LVL166:
	.loc 1 737 13 is_stmt 1
	.loc 1 737 19 is_stmt 0
	andi	a5,a5,-513
.LVL167:
	.loc 1 738 13 is_stmt 1
	j	.L98
.LVL168:
.L92:
	.loc 1 742 13
	.loc 1 742 19 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL169:
	.loc 1 743 13 is_stmt 1
	.loc 1 743 19 is_stmt 0
	andi	a5,a5,-257
.LVL170:
	.loc 1 744 13 is_stmt 1
	.loc 1 744 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 746 13 is_stmt 1
	.loc 1 746 19 is_stmt 0
	ori	a5,a5,256
.LVL171:
	.loc 1 747 13 is_stmt 1
	.loc 1 747 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 750 13 is_stmt 1
	.loc 1 750 19 is_stmt 0
	lw	a5,0(a4)
.LVL172:
	.loc 1 751 13 is_stmt 1
	.loc 1 751 19 is_stmt 0
	andi	a5,a5,-257
.LVL173:
	.loc 1 752 13 is_stmt 1
	j	.L98
.LVL174:
.L90:
	.loc 1 756 13
	.loc 1 756 19 is_stmt 0
	li	a5,1073807360
	addi	a5,a5,-1792
	lw	a4,44(a5)
.LVL175:
	.loc 1 757 13 is_stmt 1
	.loc 1 758 13
	.loc 1 758 19 is_stmt 0
	andi	a4,a4,-49
.LVL176:
	.loc 1 759 13 is_stmt 1
	.loc 1 759 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 761 13 is_stmt 1
.LVL177:
	.loc 1 762 13
	.loc 1 762 19 is_stmt 0
	ori	a4,a4,48
.LVL178:
	.loc 1 763 13 is_stmt 1
	.loc 1 763 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 766 13 is_stmt 1
	.loc 1 766 19 is_stmt 0
	lw	a4,44(a5)
.LVL179:
	.loc 1 767 13 is_stmt 1
	.loc 1 768 13
	.loc 1 768 19 is_stmt 0
	andi	a4,a4,-49
.LVL180:
	.loc 1 769 13 is_stmt 1
	.loc 1 769 69 is_stmt 0
	sw	a4,44(a5)
	.loc 1 772 13 is_stmt 1
	.loc 1 772 19 is_stmt 0
	li	a4,1073750016
.LVL181:
	lw	a5,0(a4)
.LVL182:
	.loc 1 773 13 is_stmt 1
	.loc 1 774 13
	.loc 1 775 13
	.loc 1 775 19 is_stmt 0
	andi	a5,a5,-1793
.LVL183:
	.loc 1 776 13 is_stmt 1
	.loc 1 776 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 778 13 is_stmt 1
.LVL184:
	.loc 1 779 13
	.loc 1 780 13
	.loc 1 780 19 is_stmt 0
	ori	a5,a5,1792
.LVL185:
	.loc 1 781 13 is_stmt 1
	.loc 1 781 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 784 13 is_stmt 1
	.loc 1 784 19 is_stmt 0
	lw	a5,0(a4)
.LVL186:
	.loc 1 785 13 is_stmt 1
	.loc 1 786 13
	.loc 1 787 13
	.loc 1 787 19 is_stmt 0
	andi	a5,a5,-1793
.LVL187:
	j	.L98
	.cfi_endproc
.LFE23:
	.size	ADC_IntClr, .-ADC_IntClr
	.section	.text.ADC_GetIntStatus,"ax",@progbits
	.align	1
	.globl	ADC_GetIntStatus
	.type	ADC_GetIntStatus, @function
ADC_GetIntStatus:
.LFB24:
	.loc 1 806 1 is_stmt 1
	.cfi_startproc
.LVL188:
	.loc 1 807 5
	.loc 1 808 5
	.loc 1 811 5
	.loc 1 813 5
	.loc 1 806 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,4
	bgtu	a0,a5,.L108
	lui	a5,%hi(.L103)
	addi	a5,a5,%lo(.L103)
	slli	a0,a0,2
.LVL189:
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.ADC_GetIntStatus,"a",@progbits
	.align	2
	.align	2
.L103:
	.word	.L107
	.word	.L106
	.word	.L105
	.word	.L104
	.word	.L102
	.section	.text.ADC_GetIntStatus
.L107:
	.loc 1 816 13 is_stmt 1
	.loc 1 816 19 is_stmt 0
	li	a5,1073807360
	lw	a0,-1748(a5)
.LVL190:
	.loc 1 817 13 is_stmt 1
	.loc 1 817 62 is_stmt 0
	srli	a0,a0,1
.LVL191:
.L110:
	.loc 1 833 65
	andi	a0,a0,1
.LVL192:
	.loc 1 834 13 is_stmt 1
.L100:
	.loc 1 842 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL193:
.L106:
	.cfi_restore_state
	.loc 1 820 13 is_stmt 1
	.loc 1 820 19 is_stmt 0
	li	a5,1073807360
	lw	a0,-1748(a5)
.LVL194:
	.loc 1 821 13 is_stmt 1
	j	.L110
.LVL195:
.L105:
	.loc 1 824 13
	.loc 1 824 19 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL196:
	.loc 1 825 13 is_stmt 1
	.loc 1 825 65 is_stmt 0
	srli	a0,a0,6
.LVL197:
	j	.L110
.L104:
	.loc 1 828 13 is_stmt 1
	.loc 1 828 19 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL198:
	.loc 1 829 13 is_stmt 1
	.loc 1 829 65 is_stmt 0
	srli	a0,a0,5
.LVL199:
	j	.L110
.L102:
	.loc 1 832 13 is_stmt 1
	.loc 1 832 19 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL200:
	.loc 1 833 13 is_stmt 1
	.loc 1 833 65 is_stmt 0
	srli	a0,a0,4
.LVL201:
	j	.L110
.LVL202:
.L108:
	.loc 1 806 1
	li	a0,0
.LVL203:
	.loc 1 841 5 is_stmt 1
	.loc 1 841 12 is_stmt 0
	j	.L100
	.cfi_endproc
.LFE24:
	.size	ADC_GetIntStatus, .-ADC_GetIntStatus
	.section	.text.ADC_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	ADC_Int_Callback_Install
	.type	ADC_Int_Callback_Install, @function
ADC_Int_Callback_Install:
.LFB25:
	.loc 1 854 1 is_stmt 1
	.cfi_startproc
.LVL204:
	.loc 1 856 5
	.loc 1 858 5
	.loc 1 854 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 859 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	ADC_Int_Callback_Install, .-ADC_Int_Callback_Install
	.section	.text.ADC_Vbat_Enable,"ax",@progbits
	.align	1
	.globl	ADC_Vbat_Enable
	.type	ADC_Vbat_Enable, @function
ADC_Vbat_Enable:
.LFB26:
	.loc 1 917 1 is_stmt 1
	.cfi_startproc
	.loc 1 918 5
	.loc 1 920 5
	.loc 1 917 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 920 11
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL205:
	.loc 1 921 5 is_stmt 1
	.loc 1 921 11 is_stmt 0
	ori	a5,a5,16
.LVL206:
	.loc 1 922 5 is_stmt 1
	.loc 1 922 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 923 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	ADC_Vbat_Enable, .-ADC_Vbat_Enable
	.section	.text.ADC_Vbat_Disable,"ax",@progbits
	.align	1
	.globl	ADC_Vbat_Disable
	.type	ADC_Vbat_Disable, @function
ADC_Vbat_Disable:
.LFB27:
	.loc 1 934 1 is_stmt 1
	.cfi_startproc
	.loc 1 935 5
	.loc 1 937 5
	.loc 1 934 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 937 11
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL207:
	.loc 1 938 5 is_stmt 1
	.loc 1 938 11 is_stmt 0
	andi	a5,a5,-17
.LVL208:
	.loc 1 939 5 is_stmt 1
	.loc 1 939 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 940 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	ADC_Vbat_Disable, .-ADC_Vbat_Disable
	.section	.text.ADC_Tsen_Init,"ax",@progbits
	.align	1
	.globl	ADC_Tsen_Init
	.type	ADC_Tsen_Init, @function
ADC_Tsen_Init:
.LFB28:
	.loc 1 951 1 is_stmt 1
	.cfi_startproc
.LVL209:
	.loc 1 952 5
	.loc 1 954 5
	.loc 1 957 5
	.loc 1 951 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 957 11
	li	a5,1073807360
	.cfi_offset 8, -4
	.loc 1 951 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 957 11
	addi	a5,a5,-1792
	lw	a3,12(a5)
.LVL210:
	.loc 1 959 5 is_stmt 1
	.loc 1 961 5
	.loc 1 963 5
	.loc 1 963 11 is_stmt 0
	li	a4,-2013265920
	addi	a4,a4,-1
	and	a3,a3,a4
.LVL211:
	.loc 1 965 5 is_stmt 1
	.loc 1 965 11 is_stmt 0
	li	a4,262144
	or	a3,a3,a4
.LVL212:
	.loc 1 966 5 is_stmt 1
	.loc 1 966 61 is_stmt 0
	sw	a3,12(a5)
	.loc 1 969 5 is_stmt 1
	.loc 1 969 11 is_stmt 0
	lw	a4,20(a5)
.LVL213:
	.loc 1 971 5 is_stmt 1
	.loc 1 973 5
	.loc 1 975 5
	.loc 1 977 5
	.loc 1 979 5
	.loc 1 981 5
	.loc 1 983 5
	.loc 1 985 5
	.loc 1 987 5
	li	a3,264503296
	addi	a3,a3,-33
	and	a4,a4,a3
.LVL214:
	.loc 1 981 79 is_stmt 0
	slli	a0,a0,5
.LVL215:
	or	a4,a4,a0
	li	a0,-24576
	addi	a0,a0,127
	.loc 1 987 11
	li	a3,536870912
	addi	a3,a3,320
	and	a4,a4,a0
	or	a4,a4,a3
.LVL216:
	.loc 1 989 5 is_stmt 1
	.loc 1 989 61 is_stmt 0
	sw	a4,20(a5)
	.loc 1 992 5 is_stmt 1
	.loc 1 992 11 is_stmt 0
	lw	a4,16(a5)
.LVL217:
	.loc 1 994 5 is_stmt 1
	.loc 1 994 12 is_stmt 0
	li	a3,67108864
	or	a4,a4,a3
.LVL218:
	.loc 1 995 5 is_stmt 1
	.loc 1 995 61 is_stmt 0
	sw	a4,16(a5)
	.loc 1 1001 5 is_stmt 1
	.loc 1 1001 12 is_stmt 0
	lw	a4,12(a5)
.LVL219:
	.loc 1 1002 5 is_stmt 1
	.loc 1 1002 12 is_stmt 0
	li	a3,524288
	or	a4,a4,a3
.LVL220:
	.loc 1 1003 5 is_stmt 1
	.loc 1 1003 61 is_stmt 0
	sw	a4,12(a5)
	.loc 1 1004 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	ADC_Tsen_Init, .-ADC_Tsen_Init
	.section	.text.ADC_SET_TSVBE_LOW,"ax",@progbits
	.align	1
	.globl	ADC_SET_TSVBE_LOW
	.type	ADC_SET_TSVBE_LOW, @function
ADC_SET_TSVBE_LOW:
.LFB31:
	.loc 1 1151 1 is_stmt 1
	.cfi_startproc
	.loc 1 1152 5
	.loc 1 1153 5
	.loc 1 1151 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1153 11
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL221:
	.loc 1 1154 5 is_stmt 1
	.loc 1 1154 11 is_stmt 0
	slli	a5,a5,1
.LVL222:
	srli	a5,a5,1
.LVL223:
	.loc 1 1155 5 is_stmt 1
	.loc 1 1155 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 1156 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	ADC_SET_TSVBE_LOW, .-ADC_SET_TSVBE_LOW
	.section	.text.ADC_SET_TSVBE_HIGH,"ax",@progbits
	.align	1
	.globl	ADC_SET_TSVBE_HIGH
	.type	ADC_SET_TSVBE_HIGH, @function
ADC_SET_TSVBE_HIGH:
.LFB32:
	.loc 1 1167 1 is_stmt 1
	.cfi_startproc
	.loc 1 1168 5
	.loc 1 1169 5
	.loc 1 1167 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1169 11
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL224:
	.loc 1 1170 5 is_stmt 1
	.loc 1 1170 11 is_stmt 0
	li	a3,-2147483648
	or	a5,a5,a3
.LVL225:
	.loc 1 1171 5 is_stmt 1
	.loc 1 1171 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 1172 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	ADC_SET_TSVBE_HIGH, .-ADC_SET_TSVBE_HIGH
	.section	.text.TSEN_Get_V_Error,"ax",@progbits
	.align	1
	.globl	TSEN_Get_V_Error
	.type	TSEN_Get_V_Error, @function
TSEN_Get_V_Error:
.LFB29:
	.loc 1 1016 1 is_stmt 1
	.cfi_startproc
	.loc 1 1017 5
.LVL226:
	.loc 1 1018 5
	.loc 1 1019 5
	.loc 1 1016 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 1025 12
	li	a4,1073750016
	.loc 1 1019 14
	sw	zero,-44(s0)
	.loc 1 1020 5 is_stmt 1
	.loc 1 1021 5
	.loc 1 1022 5
.LVL227:
	.loc 1 1025 5
	.loc 1 1025 12 is_stmt 0
	lw	a5,0(a4)
.LVL228:
	.loc 1 1026 5 is_stmt 1
	.loc 1 1026 12 is_stmt 0
	ori	a5,a5,2
.LVL229:
	.loc 1 1027 5 is_stmt 1
	.loc 1 1027 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 1029 5 is_stmt 1
	call	ADC_SET_TSVBE_LOW
.LVL230:
	.loc 1 1031 5
	call	ADC_Start
.LVL231:
	.loc 1 1032 5
.L124:
	.loc 1 1033 9 discriminator 1
	.loc 1 1032 11 discriminator 1
	.loc 1 1032 12 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL232:
	.loc 1 1032 11 discriminator 1
	beq	a0,zero,.L124
	.loc 1 1034 5 is_stmt 1
.LBB10:
.LBB11:
	.loc 1 479 5
	.loc 1 481 5
.LBE11:
.LBE10:
	.loc 1 1035 35 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
	addi	s3,s1,%lo(.LANCHOR0)
	lw	s4,0(s3)
.LBB13:
.LBB12:
	.loc 1 481 11
	li	s2,1073750016
	lw	a5,4(s2)
.LVL233:
	.loc 1 483 5 is_stmt 1
.LBE12:
.LBE13:
	.loc 1 1037 5 is_stmt 0
	addi	a2,s0,-40
	li	a1,1
	addi	a0,s0,-44
	.loc 1 1038 39
	andi	s4,s4,255
	.loc 1 1034 12
	sw	a5,-44(s0)
	.loc 1 1035 5 is_stmt 1
.LVL234:
	.loc 1 1036 5
	.loc 1 1036 39 is_stmt 0
	sw	zero,0(s3)
	.loc 1 1037 5 is_stmt 1
	call	ADC_Parse_Result
.LVL235:
	.loc 1 1038 5
	.loc 1 1038 39 is_stmt 0
	sw	s4,0(s3)
	.loc 1 1039 5 is_stmt 1
	.loc 1 1042 12 is_stmt 0
	lw	a5,0(s2)
	.loc 1 1039 8
	lhu	s3,-38(s0)
.LVL236:
	.loc 1 1042 5 is_stmt 1
	.loc 1 1043 5
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 1043 12 is_stmt 0
	ori	a5,a5,2
.LVL237:
	.loc 1 1044 5 is_stmt 1
	.loc 1 1044 59 is_stmt 0
	sw	a5,0(s2)
	.loc 1 1047 5 is_stmt 1
	call	ADC_SET_TSVBE_HIGH
.LVL238:
	.loc 1 1049 5
	call	ADC_Start
.LVL239:
	.loc 1 1050 5
.L125:
	.loc 1 1051 9 discriminator 1
	.loc 1 1050 11 discriminator 1
	.loc 1 1050 12 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL240:
	.loc 1 1050 11 discriminator 1
	beq	a0,zero,.L125
	.loc 1 1052 5 is_stmt 1
.LBB14:
.LBB15:
	.loc 1 479 5
	.loc 1 481 5
	.loc 1 481 11 is_stmt 0
	li	a5,1073750016
	lw	a5,4(a5)
.LVL241:
	.loc 1 483 5 is_stmt 1
.LBE15:
.LBE14:
	.loc 1 1053 35 is_stmt 0
	lw	s2,0(s1)
	.loc 1 1055 5
	addi	a0,s0,-44
	addi	a2,s0,-40
	li	a1,1
	.loc 1 1052 12
	sw	a5,-44(s0)
	.loc 1 1053 5 is_stmt 1
.LVL242:
	.loc 1 1054 5
	.loc 1 1054 39 is_stmt 0
	sw	zero,0(s1)
	.loc 1 1055 5 is_stmt 1
	call	ADC_Parse_Result
.LVL243:
	.loc 1 1056 5
	.loc 1 1057 8 is_stmt 0
	lhu	a0,-38(s0)
	.loc 1 1062 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	.loc 1 1056 39
	andi	s2,s2,255
.LVL244:
	sw	s2,0(s1)
	.loc 1 1057 5 is_stmt 1
.LVL245:
	.loc 1 1059 5
	.loc 1 1061 5
	.loc 1 1062 1 is_stmt 0
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	sub	a0,s3,a0
.LVL246:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL247:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	TSEN_Get_V_Error, .-TSEN_Get_V_Error
	.globl	__subdf3
	.globl	__adddf3
	.section	.sclock_rlt_code./home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c1073,"ax",@progbits
	.align	1
	.globl	ADC_Trim_TSEN
	.type	ADC_Trim_TSEN, @function
ADC_Trim_TSEN:
.LFB30:
	.loc 1 1074 1 is_stmt 1
	.cfi_startproc
.LVL248:
	.loc 1 1075 5
	.loc 1 1076 5
	.loc 1 1077 5
	.loc 1 1078 5
	.loc 1 1079 5
	.loc 1 1081 5
	.loc 1 1074 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s3,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s4,40(sp)
	fsw	fs0,28(sp)
	fsw	fs1,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 40, -36
	.cfi_offset 41, -40
	.loc 1 1074 1
	mv	s3,a0
	.loc 1 1081 5
	addi	a0,s0,-52
.LVL249:
	call	EF_Ctrl_Read_TSEN_Trim
.LVL250:
	.loc 1 1083 5 is_stmt 1
	.loc 1 1083 8 is_stmt 0
	lw	a0,-52(s0)
	li	a5,8192
	and	a5,a5,a0
	.loc 1 1083 7
	bne	a5,zero,.L132
.L134:
	.loc 1 1139 12
	li	s1,1
.LVL251:
.L131:
	.loc 1 1140 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL252:
	lw	s4,40(sp)
	.cfi_restore 20
	flw	fs0,28(sp)
	.cfi_restore 40
	flw	fs1,24(sp)
	.cfi_restore 41
	mv	a0,s1
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL253:
.L132:
	.cfi_restore_state
	.loc 1 1084 9 is_stmt 1
	.loc 1 1084 70 is_stmt 0
	li	s2,4096
	addi	s2,s2,-1
	.loc 1 1084 16
	srli	s1,a0,12
	.loc 1 1084 70
	and	a0,a0,s2
	.loc 1 1084 42
	slli	a0,a0,16
	li	a1,12
	srli	a0,a0,16
	.loc 1 1084 16
	andi	s1,s1,1
	.loc 1 1084 42
	call	EF_Ctrl_Get_Trim_Parity
.LVL254:
	.loc 1 1084 11
	bne	s1,a0,.L134
	.loc 1 1086 13 is_stmt 1
	.loc 1 1088 13
	.loc 1 1088 32 is_stmt 0
	lw	a5,-52(s0)
	.loc 1 1090 46
	li	s1,16384
	.loc 1 1088 32
	and	s2,a5,s2
	.loc 1 1088 26
	sh	s2,0(s3)
	.loc 1 1090 13 is_stmt 1
	.loc 1 1090 46 is_stmt 0
	and	s1,s1,a5
	.loc 1 1090 15
	bne	s1,zero,.L137
	.loc 1 1096 17 is_stmt 1
	.loc 1 1096 24 is_stmt 0
	li	a3,1073807360
	lw	a5,-1780(a3)
.LVL255:
	.loc 1 1097 17 is_stmt 1
	.loc 1 1097 24 is_stmt 0
	li	a4,-524288
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL256:
	.loc 1 1098 17 is_stmt 1
	.loc 1 1098 73 is_stmt 0
	sw	a5,-1780(a3)
	.loc 1 1100 17 is_stmt 1
	.loc 1 1100 37
	.loc 1 1076 14 is_stmt 0
	li	s2,0
	.loc 1 1098 73
	li	s4,50
.LVL257:
.L135:
	.loc 1 1101 21 is_stmt 1 discriminator 3
	.loc 1 1100 17 is_stmt 0 discriminator 3
	addi	s4,s4,-1
.LVL258:
	.loc 1 1101 36 discriminator 3
	call	TSEN_Get_V_Error
.LVL259:
	.loc 1 1100 17 discriminator 3
	andi	s4,s4,0xff
	.loc 1 1101 33 discriminator 3
	add	s2,s2,a0
.LVL260:
	.loc 1 1100 54 is_stmt 1 discriminator 3
	.loc 1 1100 37 discriminator 3
	.loc 1 1100 17 is_stmt 0 discriminator 3
	bne	s4,zero,.L135
	.loc 1 1104 17 is_stmt 1
.LVL261:
	.loc 1 1106 17
	.loc 1 1107 17
	.loc 1 1104 29 is_stmt 0
	li	a5,50
	divu	s2,s2,a5
.LVL262:
	.loc 1 1112 24
	li	a4,1073807360
	lw	a5,-1780(a4)
	.loc 1 1113 24
	li	a3,524288
	.loc 1 1114 73
	li	s4,50
	.loc 1 1113 24
	or	a5,a5,a3
	.loc 1 1114 73
	sw	a5,-1780(a4)
	.loc 1 1107 20
	fcvt.s.w	fs1,s2
.LVL263:
	.loc 1 1109 17 is_stmt 1
	.loc 1 1112 17
	.loc 1 1113 17
	.loc 1 1114 17
	.loc 1 1116 17
	.loc 1 1116 37
	.loc 1 1109 29 is_stmt 0
	li	s2,0
.LVL264:
.L136:
	.loc 1 1117 21 is_stmt 1 discriminator 3
	.loc 1 1116 17 is_stmt 0 discriminator 3
	addi	s4,s4,-1
.LVL265:
	.loc 1 1117 36 discriminator 3
	call	TSEN_Get_V_Error
.LVL266:
	.loc 1 1116 17 discriminator 3
	andi	s4,s4,0xff
	.loc 1 1117 33 discriminator 3
	add	s2,s2,a0
.LVL267:
	.loc 1 1116 54 is_stmt 1 discriminator 3
	.loc 1 1116 37 discriminator 3
	.loc 1 1116 17 is_stmt 0 discriminator 3
	bne	s4,zero,.L136
	.loc 1 1120 17 is_stmt 1
.LVL268:
	.loc 1 1122 17
	.loc 1 1123 17
	.loc 1 1125 17
	.loc 1 1126 17
	.loc 1 1126 19 is_stmt 0
	lhu	a5,0(s3)
	fcvt.s.wu	fs0,a5
.LVL269:
	.loc 1 1128 17 is_stmt 1
	.loc 1 1130 17
	.loc 1 1132 17
	.loc 1 1120 29 is_stmt 0
	li	a5,50
	divu	s2,s2,a5
.LVL270:
	.loc 1 1128 28
	fcvt.s.w	fa0,s2
	call	__extendsfdf2
.LVL271:
	.loc 1 1128 44
	fmv.s	fa0,fs1
	.loc 1 1128 28
	mv	s4,a0
	mv	s2,a1
.LVL272:
	.loc 1 1128 44
	call	__extendsfdf2
.LVL273:
	lui	a5,%hi(.LC9)
	lw	a2,%lo(.LC9)(a5)
	lw	a3,%lo(.LC9+4)(a5)
	call	__muldf3
.LVL274:
	mv	a2,a0
	mv	a3,a1
	.loc 1 1128 28
	mv	a0,s4
	mv	a1,s2
	call	__subdf3
.LVL275:
	.loc 1 1128 65
	fmv.s	fa0,fs0
	.loc 1 1128 28
	mv	s4,a0
	mv	s2,a1
	.loc 1 1128 65
	call	__extendsfdf2
.LVL276:
	lui	a5,%hi(.LC10)
	lw	a2,%lo(.LC10)(a5)
	lw	a3,%lo(.LC10+4)(a5)
	call	__muldf3
.LVL277:
	mv	a2,a0
	mv	a3,a1
	.loc 1 1128 50
	mv	a0,s4
	mv	a1,s2
	call	__adddf3
.LVL278:
	.loc 1 1128 69
	lui	a5,%hi(.LC11)
	lw	a2,%lo(.LC11)(a5)
	lw	a3,%lo(.LC11+4)(a5)
	call	__adddf3
.LVL279:
	.loc 1 1128 23
	call	__truncdfsf2
.LVL280:
	.loc 1 1132 38
	fadd.s	fa0,fa0,fs0
	.loc 1 1132 30
	fcvt.wu.s a5,fa0,rtz
	sh	a5,0(s3)
	j	.L131
.LVL281:
.L137:
	.loc 1 1135 20
	li	s1,0
	j	.L131
	.cfi_endproc
.LFE30:
	.size	ADC_Trim_TSEN, .-ADC_Trim_TSEN
	.globl	__divdf3
	.section	.text.TSEN_Get_Temp,"ax",@progbits
	.align	1
	.globl	TSEN_Get_Temp
	.type	TSEN_Get_Temp, @function
TSEN_Get_Temp:
.LFB33:
	.loc 1 1183 1 is_stmt 1
	.cfi_startproc
.LVL282:
	.loc 1 1184 5
	.loc 1 1185 5
	.loc 1 1186 5
	.loc 1 1183 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 1192 12
	li	a4,1073750016
	.loc 1 1186 14
	sw	zero,-44(s0)
	.loc 1 1187 5 is_stmt 1
	.loc 1 1188 5
	.loc 1 1189 5
.LVL283:
	.loc 1 1192 5
	.loc 1 1192 12 is_stmt 0
	lw	a5,0(a4)
.LVL284:
	.loc 1 1193 5 is_stmt 1
	.loc 1 1183 1 is_stmt 0
	mv	s2,a0
	.loc 1 1193 12
	ori	a5,a5,2
.LVL285:
	.loc 1 1194 5 is_stmt 1
	.loc 1 1194 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 1196 5 is_stmt 1
	call	ADC_SET_TSVBE_LOW
.LVL286:
	.loc 1 1198 5
	call	ADC_Start
.LVL287:
	.loc 1 1199 5
.L142:
	.loc 1 1200 9 discriminator 1
	.loc 1 1199 11 discriminator 1
	.loc 1 1199 12 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL288:
	.loc 1 1199 11 discriminator 1
	beq	a0,zero,.L142
	.loc 1 1201 5 is_stmt 1
.LBB16:
.LBB17:
	.loc 1 479 5
	.loc 1 481 5
.LBE17:
.LBE16:
	.loc 1 1203 35 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
	addi	s4,s1,%lo(.LANCHOR0)
	lw	s5,0(s4)
.LBB19:
.LBB18:
	.loc 1 481 11
	li	s3,1073750016
	lw	a5,4(s3)
.LVL289:
	.loc 1 483 5 is_stmt 1
.LBE18:
.LBE19:
	.loc 1 1205 5 is_stmt 0
	addi	a2,s0,-40
	li	a1,1
	addi	a0,s0,-44
	.loc 1 1206 39
	andi	s5,s5,255
	.loc 1 1201 12
	sw	a5,-44(s0)
	.loc 1 1203 5 is_stmt 1
.LVL290:
	.loc 1 1204 5
	.loc 1 1204 39 is_stmt 0
	sw	zero,0(s4)
	.loc 1 1205 5 is_stmt 1
	call	ADC_Parse_Result
.LVL291:
	.loc 1 1206 5
	.loc 1 1206 39 is_stmt 0
	sw	s5,0(s4)
	.loc 1 1207 5 is_stmt 1
	.loc 1 1210 12 is_stmt 0
	lw	a5,0(s3)
	.loc 1 1207 16
	lhu	s4,-38(s0)
.LVL292:
	.loc 1 1210 5 is_stmt 1
	.loc 1 1211 5
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 1211 12 is_stmt 0
	ori	a5,a5,2
.LVL293:
	.loc 1 1212 5 is_stmt 1
	.loc 1 1212 59 is_stmt 0
	sw	a5,0(s3)
	.loc 1 1215 5 is_stmt 1
	call	ADC_SET_TSVBE_HIGH
.LVL294:
	.loc 1 1217 5
	call	ADC_Start
.LVL295:
	.loc 1 1218 5
.L143:
	.loc 1 1219 9 discriminator 1
	.loc 1 1218 11 discriminator 1
	.loc 1 1218 12 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL296:
	.loc 1 1218 11 discriminator 1
	beq	a0,zero,.L143
	.loc 1 1220 5 is_stmt 1
.LBB20:
.LBB21:
	.loc 1 479 5
	.loc 1 481 5
	.loc 1 481 11 is_stmt 0
	li	a5,1073750016
	lw	a5,4(a5)
.LVL297:
	.loc 1 483 5 is_stmt 1
.LBE21:
.LBE20:
	.loc 1 1221 35 is_stmt 0
	lw	s3,0(s1)
	.loc 1 1223 5
	addi	a2,s0,-40
	li	a1,1
	addi	a0,s0,-44
	.loc 1 1220 12
	sw	a5,-44(s0)
	.loc 1 1221 5 is_stmt 1
.LVL298:
	.loc 1 1222 5
	.loc 1 1222 39 is_stmt 0
	sw	zero,0(s1)
	.loc 1 1223 5 is_stmt 1
	call	ADC_Parse_Result
.LVL299:
	.loc 1 1224 5
	.loc 1 1225 16 is_stmt 0
	lhu	a5,-38(s0)
	.loc 1 1224 39
	andi	s3,s3,255
.LVL300:
	sw	s3,0(s1)
	.loc 1 1225 5 is_stmt 1
.LVL301:
	.loc 1 1227 5
	fcvt.s.wu	fa4,s4
	fcvt.s.wu	fa5,a5
	fcvt.s.wu	fa0,s2
	lui	s1,%hi(.LC12)
	.loc 1 1227 8 is_stmt 0
	bleu	s4,a5,.L144
	.loc 1 1229 9 is_stmt 1
	.loc 1 1229 28 is_stmt 0
	fsub.s	fa5,fa4,fa5
.L151:
	.loc 1 1233 41
	fsub.s	fa0,fa5,fa0
	call	__extendsfdf2
.LVL302:
	.loc 1 1233 63
	lw	a2,%lo(.LC12)(s1)
	lw	a3,%lo(.LC12+4)(s1)
	call	__divdf3
.LVL303:
	.loc 1 1233 14
	call	__truncdfsf2
.LVL304:
	.loc 1 1236 5 is_stmt 1
	.loc 1 1237 1 is_stmt 0
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
.LVL305:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL306:
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL307:
.L144:
	.cfi_restore_state
	.loc 1 1233 9 is_stmt 1
	.loc 1 1233 28 is_stmt 0
	fsub.s	fa5,fa5,fa4
	j	.L151
	.cfi_endproc
.LFE33:
	.size	TSEN_Get_Temp, .-TSEN_Get_Temp
	.section	.text.ADC_Mic_Init,"ax",@progbits
	.align	1
	.globl	ADC_Mic_Init
	.type	ADC_Mic_Init, @function
ADC_Mic_Init:
.LFB34:
	.loc 1 1249 1 is_stmt 1
	.cfi_startproc
.LVL308:
	.loc 1 1250 5
	.loc 1 1252 5
	.loc 1 1253 5
	.loc 1 1254 5
	.loc 1 1255 5
	.loc 1 1256 5
	.loc 1 1257 5
	.loc 1 1258 5
	.loc 1 1259 5
	.loc 1 1261 5
	.loc 1 1249 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1261 13
	li	a5,1073807360
	lw	a2,-1772(a5)
.LVL309:
	.loc 1 1263 5 is_stmt 1
	.loc 1 1263 12 is_stmt 0
	lw	a3,-1780(a5)
.LVL310:
	.loc 1 1264 5 is_stmt 1
	.loc 1 1264 25 is_stmt 0
	li	a5,-8388608
	addi	a5,a5,-1
	and	a5,a3,a5
.LVL311:
	.loc 1 1265 5 is_stmt 1
	.loc 1 1264 101 is_stmt 0
	lw	a3,0(a0)
	.loc 1 1249 1
	mv	a4,a0
	.loc 1 1264 101
	slli	a3,a3,23
	.loc 1 1264 12
	or	a3,a3,a5
.LVL312:
	.loc 1 1265 25
	li	a5,-6291456
	addi	a5,a5,-1
	and	a3,a3,a5
.LVL313:
	.loc 1 1266 5 is_stmt 1
	.loc 1 1265 102 is_stmt 0
	lw	a5,4(a0)
	slli	a5,a5,21
	.loc 1 1265 12
	or	a5,a5,a3
.LVL314:
	.loc 1 1266 25
	li	a3,-1048576
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL315:
	.loc 1 1267 5 is_stmt 1
	.loc 1 1266 99 is_stmt 0
	lw	a5,8(a0)
	slli	a5,a5,20
	.loc 1 1266 12
	or	a5,a5,a3
.LVL316:
	.loc 1 1267 25
	li	a3,-524288
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL317:
	.loc 1 1268 5 is_stmt 1
	.loc 1 1267 99 is_stmt 0
	lw	a3,12(a0)
	slli	a3,a3,19
	.loc 1 1267 12
	or	a3,a3,a5
.LVL318:
	.loc 1 1268 25
	li	a5,-262144
	addi	a5,a5,-1
	and	a5,a3,a5
.LVL319:
	.loc 1 1269 5 is_stmt 1
	.loc 1 1268 96 is_stmt 0
	lw	a3,16(a0)
	slli	a3,a3,18
	.loc 1 1268 12
	or	a3,a3,a5
.LVL320:
	.loc 1 1269 25
	li	a5,-65536
	addi	a5,a5,-1
	and	a3,a3,a5
.LVL321:
	.loc 1 1269 107
	lw	a5,20(a0)
	.loc 1 1271 59
	lw	a0,24(a0)
.LVL322:
	.loc 1 1269 107
	slli	a5,a5,16
	.loc 1 1269 12
	or	a5,a5,a3
.LVL323:
	.loc 1 1271 5 is_stmt 1
	.loc 1 1271 20 is_stmt 0
	li	a3,8192
	and	a3,a2,a3
	.loc 1 1271 7
	beq	a3,zero,.L153
	.loc 1 1271 42 discriminator 1
	li	a3,1
	beq	a0,a3,.L152
.L153:
	.loc 1 1275 9 is_stmt 1
	.loc 1 1275 29 is_stmt 0
	li	a3,-32768
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL324:
	.loc 1 1278 5 is_stmt 1
	.loc 1 1275 103 is_stmt 0
	slli	a5,a0,15
	.loc 1 1278 25
	li	a0,-16384
.LVL325:
	addi	a0,a0,-1
	.loc 1 1275 16
	or	a5,a5,a3
.LVL326:
	.loc 1 1278 25
	and	a5,a5,a0
.LVL327:
	.loc 1 1278 100
	lw	a0,28(a4)
	.loc 1 1280 61
	li	a4,1073807360
.LVL328:
	.loc 1 1278 100
	slli	a0,a0,14
	.loc 1 1278 12
	or	a5,a0,a5
.LVL329:
	.loc 1 1280 5 is_stmt 1
	.loc 1 1280 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 1282 5 is_stmt 1
	.loc 1 1282 12 is_stmt 0
	li	a0,0
.L152:
	.loc 1 1284 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	ADC_Mic_Init, .-ADC_Mic_Init
	.section	.text.ADC_MIC_Bias_Enable,"ax",@progbits
	.align	1
	.globl	ADC_MIC_Bias_Enable
	.type	ADC_MIC_Bias_Enable, @function
ADC_MIC_Bias_Enable:
.LFB35:
	.loc 1 1296 1 is_stmt 1
	.cfi_startproc
	.loc 1 1297 5
	.loc 1 1299 5
	.loc 1 1296 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1299 11
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL330:
	.loc 1 1300 5 is_stmt 1
	.loc 1 1300 11 is_stmt 0
	li	a3,16384
	or	a5,a5,a3
.LVL331:
	.loc 1 1301 5 is_stmt 1
	.loc 1 1301 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 1302 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	ADC_MIC_Bias_Enable, .-ADC_MIC_Bias_Enable
	.section	.text.ADC_MIC_Bias_Disable,"ax",@progbits
	.align	1
	.globl	ADC_MIC_Bias_Disable
	.type	ADC_MIC_Bias_Disable, @function
ADC_MIC_Bias_Disable:
.LFB36:
	.loc 1 1314 1 is_stmt 1
	.cfi_startproc
	.loc 1 1315 5
	.loc 1 1317 5
	.loc 1 1314 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 1317 11
	li	a3,1073807360
	lw	a5,-1780(a3)
.LVL332:
	.loc 1 1318 5 is_stmt 1
	.loc 1 1318 11 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL333:
	.loc 1 1319 5 is_stmt 1
	.loc 1 1319 61 is_stmt 0
	sw	a5,-1780(a3)
	.loc 1 1320 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	ADC_MIC_Bias_Disable, .-ADC_MIC_Bias_Disable
	.section	.sclock_rlt_code./home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c1331,"ax",@progbits
	.align	1
	.globl	ADC_Gain_Trim
	.type	ADC_Gain_Trim, @function
ADC_Gain_Trim:
.LFB37:
	.loc 1 1332 1 is_stmt 1
	.cfi_startproc
	.loc 1 1333 5
	.loc 1 1334 5
	.loc 1 1336 5
	.loc 1 1332 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.loc 1 1336 5
	addi	a0,s0,-36
	.loc 1 1332 1
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 1336 5
	call	EF_Ctrl_Read_ADC_Gain_Trim
.LVL334:
	.loc 1 1338 5 is_stmt 1
	.loc 1 1338 8 is_stmt 0
	lw	a0,-36(s0)
	li	a5,8192
	and	a5,a5,a0
	.loc 1 1338 7
	bne	a5,zero,.L164
.L166:
	.loc 1 1359 12
	li	a0,1
.L163:
	.loc 1 1360 1
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
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L164:
	.cfi_restore_state
	.loc 1 1339 9 is_stmt 1
	.loc 1 1339 65 is_stmt 0
	li	s2,4096
	addi	s3,s2,-1
	.loc 1 1339 16
	srli	s1,a0,12
	.loc 1 1339 65
	and	a0,a0,s3
	.loc 1 1339 37
	slli	a0,a0,16
	li	a1,12
	srli	a0,a0,16
	.loc 1 1339 16
	andi	s1,s1,1
	.loc 1 1339 37
	call	EF_Ctrl_Get_Trim_Parity
.LVL335:
	.loc 1 1339 11
	bne	s1,a0,.L166
	.loc 1 1340 13 is_stmt 1
	.loc 1 1340 48 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	li	a5,1
	sw	a5,0(s1)
	.loc 1 1341 13 is_stmt 1
	.loc 1 1341 51 is_stmt 0
	lw	a5,-36(s0)
	.loc 1 1343 15
	addi	s2,s2,-2048
	lui	s5,%hi(.LC6)
	.loc 1 1341 51
	and	a5,a5,s3
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 1341 45
	sh	a5,4(s1)
	.loc 1 1342 13 is_stmt 1
.LVL336:
	.loc 1 1343 13
	.loc 1 1343 15 is_stmt 0
	and	s2,a5,s2
	lui	s4,%hi(.LC13)
	beq	s2,zero,.L167
	.loc 1 1344 17 is_stmt 1
.LVL337:
	.loc 1 1345 17
	.loc 1 1345 21 is_stmt 0
	neg	a5,a5
.LVL338:
	.loc 1 1346 17 is_stmt 1
	.loc 1 1348 17
	.loc 1 1346 21 is_stmt 0
	and	a5,a5,s3
.LVL339:
	.loc 1 1348 43
	fcvt.s.w	fa0,a5
	call	__extendsfdf2
.LVL340:
	.loc 1 1348 53
	lw	a2,%lo(.LC6)(s5)
	lw	a3,%lo(.LC6+4)(s5)
	call	__muldf3
.LVL341:
	.loc 1 1348 41
	lw	a2,%lo(.LC13)(s4)
	lw	a3,%lo(.LC13+4)(s4)
	call	__adddf3
.LVL342:
.L169:
	.loc 1 1351 41
	call	__truncdfsf2
.LVL343:
	fsw	fa0,8(s1)
	.loc 1 1355 20
	li	a0,0
	j	.L163
.LVL344:
.L167:
	.loc 1 1351 17 is_stmt 1
	.loc 1 1351 43 is_stmt 0
	fcvt.s.wu	fa0,a5
	call	__extendsfdf2
.LVL345:
	.loc 1 1351 53
	lw	a2,%lo(.LC6)(s5)
	lw	a3,%lo(.LC6+4)(s5)
	call	__muldf3
.LVL346:
	mv	a2,a0
	mv	a3,a1
	.loc 1 1351 41
	lw	a0,%lo(.LC13)(s4)
	lw	a1,%lo(.LC13+4)(s4)
	call	__subdf3
.LVL347:
	j	.L169
	.cfi_endproc
.LFE37:
	.size	ADC_Gain_Trim, .-ADC_Gain_Trim
	.section	.text.ADC_Init,"ax",@progbits
	.align	1
	.globl	ADC_Init
	.type	ADC_Init, @function
ADC_Init:
.LFB11:
	.loc 1 161 1 is_stmt 1
	.cfi_startproc
.LVL348:
	.loc 1 162 5
	.loc 1 163 5
	.loc 1 164 5
	.loc 1 166 5
	.loc 1 167 5
	.loc 1 168 5
	.loc 1 169 5
	.loc 1 170 5
	.loc 1 171 5
	.loc 1 172 5
	.loc 1 173 5
	.loc 1 174 5
	.loc 1 175 5
	.loc 1 176 5
	.loc 1 179 5
	.loc 1 161 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 179 12
	li	a1,1073807360
	lw	a5,-1776(a1)
.LVL349:
	.loc 1 180 5 is_stmt 1
	.loc 1 180 25 is_stmt 0
	li	a4,-1610612736
	addi	a4,a4,-1
	and	a4,a5,a4
.LVL350:
	.loc 1 181 5 is_stmt 1
	.loc 1 180 86 is_stmt 0
	lw	a5,0(a0)
	.loc 1 187 25
	li	a2,-131072
	.loc 1 188 87
	lw	a3,40(a0)
	.loc 1 180 86
	slli	a5,a5,29
	.loc 1 180 12
	or	a5,a5,a4
.LVL351:
	.loc 1 181 25
	li	a4,-402653184
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL352:
	.loc 1 182 5 is_stmt 1
	.loc 1 183 5
	.loc 1 184 5
	.loc 1 185 5
	.loc 1 181 86 is_stmt 0
	lw	a4,4(a0)
	.loc 1 188 87
	slli	a3,a3,2
	.loc 1 181 86
	slli	a4,a4,27
	.loc 1 181 12
	or	a4,a4,a5
	.loc 1 185 25
	li	a5,-133955584
.LVL353:
	addi	a5,a5,-1
	and	a5,a4,a5
.LVL354:
	.loc 1 186 5 is_stmt 1
	.loc 1 187 5
	.loc 1 185 86 is_stmt 0
	lw	a4,8(a0)
	slli	a4,a4,18
	.loc 1 185 12
	or	a4,a4,a5
	.loc 1 187 25
	addi	a5,a2,-2
.LVL355:
	and	a4,a4,a5
.LVL356:
	.loc 1 188 5 is_stmt 1
	.loc 1 187 12 is_stmt 0
	lw	a5,44(a0)
	or	a4,a4,a5
.LVL357:
	.loc 1 188 25
	andi	a4,a4,-29
.LVL358:
	.loc 1 188 12
	or	a4,a3,a4
.LVL359:
	.loc 1 189 5 is_stmt 1
	.loc 1 189 61 is_stmt 0
	sw	a4,-1776(a1)
	.loc 1 190 6 is_stmt 1
 #APP
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 29
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 52
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 75
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 98
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 121
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 144
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 167
# 190 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 190 191
	.loc 1 193 5
	.loc 1 193 12 is_stmt 0
 #NO_APP
	lw	a4,-1772(a1)
.LVL360:
	.loc 1 194 5 is_stmt 1
	.loc 1 195 5
	.loc 1 195 77 is_stmt 0
	lw	a3,12(a0)
	.loc 1 195 25
	li	a5,-2113929216
	addi	a5,a5,-1
	and	a5,a4,a5
.LVL361:
	.loc 1 196 5 is_stmt 1
	.loc 1 196 77 is_stmt 0
	lw	a1,16(a0)
.LVL362:
	.loc 1 195 85
	slli	a4,a3,25
	.loc 1 195 12
	or	a4,a4,a5
.LVL363:
	.loc 1 196 25
	li	a5,-29360128
	addi	a5,a5,-1
	and	a4,a4,a5
.LVL364:
	.loc 1 197 5 is_stmt 1
	.loc 1 196 85 is_stmt 0
	slli	a5,a1,22
	.loc 1 196 12
	or	a5,a5,a4
.LVL365:
	.loc 1 197 25
	addi	a4,a2,-1
	and	a4,a5,a4
.LVL366:
	.loc 1 200 5 is_stmt 1
	.loc 1 197 87 is_stmt 0
	lw	a5,24(a0)
	or	a3,a3,a1
	slli	a5,a5,17
	.loc 1 197 12
	or	a5,a5,a4
.LVL367:
	.loc 1 201 29
	li	a4,-98304
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL368:
	.loc 1 201 16
	li	a4,65536
	.loc 1 200 39
	bne	a3,zero,.L176
	.loc 1 203 9 is_stmt 1
	.loc 1 203 16 is_stmt 0
	li	a4,32768
.L176:
	or	a5,a5,a4
.LVL369:
	.loc 1 206 5 is_stmt 1
	.loc 1 206 12 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1
	and	a4,a5,a4
.LVL370:
	.loc 1 207 5 is_stmt 1
	.loc 1 207 39 is_stmt 0
	beq	a3,zero,.L173
	.loc 1 208 9 is_stmt 1
	.loc 1 208 16 is_stmt 0
	li	a5,8192
	or	a5,a4,a5
.LVL371:
.L174:
	.loc 1 213 5 is_stmt 1
	.loc 1 214 5
	.loc 1 215 5
	.loc 1 216 5
	.loc 1 214 82 is_stmt 0
	lw	a4,28(a0)
	.loc 1 216 25
	li	a3,-8192
	addi	a3,a3,127
	.loc 1 214 82
	slli	a4,a4,7
.LVL372:
	.loc 1 216 25
	and	a5,a5,a3
.LVL373:
	or	a5,a4,a5
	.loc 1 215 83
	lw	a4,32(a0)
	.loc 1 216 25
	andi	a5,a5,-13
	.loc 1 222 27
	li	a3,-65536
	.loc 1 215 83
	slli	a4,a4,3
	.loc 1 216 25
	or	a5,a5,a4
	li	a4,4096
	or	a5,a5,a4
	.loc 1 216 88
	lw	a4,36(a0)
	slli	a4,a4,2
	.loc 1 216 12
	or	a5,a4,a5
.LVL374:
	.loc 1 218 5 is_stmt 1
	.loc 1 218 61 is_stmt 0
	li	a4,1073807360
.LVL375:
	sw	a5,-1772(a4)
.LVL376:
	.loc 1 221 5 is_stmt 1
	.loc 1 221 13 is_stmt 0
	lw	a5,-1736(a4)
.LVL377:
	.loc 1 222 5 is_stmt 1
	.loc 1 222 27 is_stmt 0
	and	a3,a5,a3
	.loc 1 222 96
	lh	a5,48(a0)
.LVL378:
	.loc 1 222 13
	or	a5,a5,a3
.LVL379:
	.loc 1 223 5 is_stmt 1
	.loc 1 223 61 is_stmt 0
	sw	a5,-1736(a4)
.LVL380:
	.loc 1 229 5 is_stmt 1
	.loc 1 230 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 229 5
	tail	ADC_Gain_Trim
.LVL381:
.L173:
	.cfi_restore_state
	.loc 1 210 9 is_stmt 1
	.loc 1 210 16 is_stmt 0
	li	a4,-24576
.LVL382:
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL383:
	j	.L174
	.cfi_endproc
.LFE11:
	.size	ADC_Init, .-ADC_Init
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1065353216
	.align	2
.LC1:
	.word	1073741824
	.align	2
.LC2:
	.word	1078774989
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC3:
	.word	0
	.word	1060110336
	.align	3
.LC4:
	.word	0
	.word	1058013184
	.align	3
.LC5:
	.word	0
	.word	1055916032
	.align	3
.LC6:
	.word	0
	.word	1061158912
	.align	3
.LC7:
	.word	0
	.word	1059061760
	.align	3
.LC8:
	.word	0
	.word	1056964608
	.align	3
.LC9:
	.word	-972099360
	.word	1073091221
	.align	3
.LC10:
	.word	406569858
	.word	1071139415
	.align	3
.LC11:
	.word	0
	.word	1079115776
	.align	3
.LC12:
	.word	1855425872
	.word	1075774226
	.align	3
.LC13:
	.word	0
	.word	1072693248
	.section	.data.adcGainCoeffCal,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adcGainCoeffCal, @object
	.size	adcGainCoeffCal, 12
adcGainCoeffCal:
	.word	0
	.half	0
	.zero	2
	.word	1065353216
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1443
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF252
	.byte	0xc
	.4byte	.LASF253
	.4byte	.LASF254
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x60
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x81
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x94
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0xa7
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xde
	.byte	0x7
	.4byte	.LASF17
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xbd
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0x105
	.byte	0x7
	.4byte	.LASF21
	.byte	0
	.byte	0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x24
	.byte	0x2
	.4byte	0xea
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0x12c
	.byte	0x7
	.4byte	.LASF24
	.byte	0
	.byte	0x8
	.string	"SET"
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF25
	.byte	0x3
	.byte	0x2d
	.byte	0x2
	.4byte	0x111
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.4byte	0x153
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.byte	0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x3
	.byte	0x36
	.byte	0x2
	.4byte	0x138
	.byte	0x4
	.4byte	.LASF29
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.4byte	0xb5
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x3a
	.byte	0xe
	.4byte	0x20a
	.byte	0x7
	.4byte	.LASF30
	.byte	0
	.byte	0x7
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7
	.4byte	.LASF32
	.byte	0x2
	.byte	0x7
	.4byte	.LASF33
	.byte	0x3
	.byte	0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x7
	.4byte	.LASF35
	.byte	0x5
	.byte	0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x7
	.4byte	.LASF37
	.byte	0x7
	.byte	0x7
	.4byte	.LASF38
	.byte	0x8
	.byte	0x7
	.4byte	.LASF39
	.byte	0x9
	.byte	0x7
	.4byte	.LASF40
	.byte	0xa
	.byte	0x7
	.4byte	.LASF41
	.byte	0xb
	.byte	0x7
	.4byte	.LASF42
	.byte	0xc
	.byte	0x7
	.4byte	.LASF43
	.byte	0xd
	.byte	0x7
	.4byte	.LASF44
	.byte	0xe
	.byte	0x7
	.4byte	.LASF45
	.byte	0xf
	.byte	0x7
	.4byte	.LASF46
	.byte	0x10
	.byte	0x7
	.4byte	.LASF47
	.byte	0x11
	.byte	0x7
	.4byte	.LASF48
	.byte	0x12
	.byte	0x7
	.4byte	.LASF49
	.byte	0x13
	.byte	0x7
	.4byte	.LASF50
	.byte	0x14
	.byte	0x7
	.4byte	.LASF51
	.byte	0x15
	.byte	0x7
	.4byte	.LASF52
	.byte	0x16
	.byte	0x7
	.4byte	.LASF53
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF54
	.byte	0x4
	.byte	0x53
	.byte	0x2
	.4byte	0x16b
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x58
	.byte	0xe
	.4byte	0x23d
	.byte	0x7
	.4byte	.LASF55
	.byte	0
	.byte	0x7
	.4byte	.LASF56
	.byte	0x1
	.byte	0x7
	.4byte	.LASF57
	.byte	0x2
	.byte	0x7
	.4byte	.LASF58
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF59
	.byte	0x4
	.byte	0x5d
	.byte	0x2
	.4byte	0x216
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x270
	.byte	0x7
	.4byte	.LASF60
	.byte	0
	.byte	0x7
	.4byte	.LASF61
	.byte	0x1
	.byte	0x7
	.4byte	.LASF62
	.byte	0x2
	.byte	0x7
	.4byte	.LASF63
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF64
	.byte	0x4
	.byte	0x67
	.byte	0x2
	.4byte	0x249
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x6c
	.byte	0xe
	.4byte	0x2bb
	.byte	0x7
	.4byte	.LASF65
	.byte	0
	.byte	0x7
	.4byte	.LASF66
	.byte	0x1
	.byte	0x7
	.4byte	.LASF67
	.byte	0x2
	.byte	0x7
	.4byte	.LASF68
	.byte	0x3
	.byte	0x7
	.4byte	.LASF69
	.byte	0x4
	.byte	0x7
	.4byte	.LASF70
	.byte	0x5
	.byte	0x7
	.4byte	.LASF71
	.byte	0x6
	.byte	0x7
	.4byte	.LASF72
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF73
	.byte	0x4
	.byte	0x75
	.byte	0x2
	.4byte	0x27c
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x88
	.byte	0xe
	.4byte	0x300
	.byte	0x7
	.4byte	.LASF74
	.byte	0
	.byte	0x7
	.4byte	.LASF75
	.byte	0x1
	.byte	0x7
	.4byte	.LASF76
	.byte	0x2
	.byte	0x7
	.4byte	.LASF77
	.byte	0x3
	.byte	0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0x7
	.4byte	.LASF79
	.byte	0x5
	.byte	0x7
	.4byte	.LASF80
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF81
	.byte	0x4
	.byte	0x90
	.byte	0x2
	.4byte	0x2c7
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x95
	.byte	0xe
	.4byte	0x327
	.byte	0x7
	.4byte	.LASF82
	.byte	0
	.byte	0x7
	.4byte	.LASF83
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF84
	.byte	0x4
	.byte	0x98
	.byte	0x2
	.4byte	0x30c
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0x9d
	.byte	0xe
	.4byte	0x35a
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
	.byte	0x4
	.4byte	.LASF89
	.byte	0x4
	.byte	0xa2
	.byte	0x2
	.4byte	0x333
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xa7
	.byte	0xe
	.4byte	0x38d
	.byte	0x7
	.4byte	.LASF90
	.byte	0
	.byte	0x7
	.4byte	.LASF91
	.byte	0x1
	.byte	0x7
	.4byte	.LASF92
	.byte	0x2
	.byte	0x7
	.4byte	.LASF93
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF94
	.byte	0x4
	.byte	0xac
	.byte	0x2
	.4byte	0x366
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xb1
	.byte	0xe
	.4byte	0x3b4
	.byte	0x7
	.4byte	.LASF95
	.byte	0
	.byte	0x7
	.4byte	.LASF96
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF97
	.byte	0x4
	.byte	0xb4
	.byte	0x2
	.4byte	0x399
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xb9
	.byte	0xe
	.4byte	0x3db
	.byte	0x7
	.4byte	.LASF98
	.byte	0
	.byte	0x7
	.4byte	.LASF99
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF100
	.byte	0x4
	.byte	0xbc
	.byte	0x2
	.4byte	0x3c0
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xc1
	.byte	0xe
	.4byte	0x402
	.byte	0x7
	.4byte	.LASF101
	.byte	0
	.byte	0x7
	.4byte	.LASF102
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF103
	.byte	0x4
	.byte	0xc4
	.byte	0x2
	.4byte	0x3e7
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xc9
	.byte	0xe
	.4byte	0x43b
	.byte	0x7
	.4byte	.LASF104
	.byte	0
	.byte	0x7
	.4byte	.LASF105
	.byte	0x1
	.byte	0x7
	.4byte	.LASF106
	.byte	0x2
	.byte	0x7
	.4byte	.LASF107
	.byte	0x3
	.byte	0x7
	.4byte	.LASF108
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF109
	.byte	0x4
	.byte	0xcf
	.byte	0x2
	.4byte	0x40e
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xd4
	.byte	0xe
	.4byte	0x462
	.byte	0x7
	.4byte	.LASF110
	.byte	0
	.byte	0x7
	.4byte	.LASF111
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF112
	.byte	0x4
	.byte	0xd7
	.byte	0x2
	.4byte	0x447
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xdc
	.byte	0xe
	.4byte	0x495
	.byte	0x7
	.4byte	.LASF113
	.byte	0
	.byte	0x7
	.4byte	.LASF114
	.byte	0x1
	.byte	0x7
	.4byte	.LASF115
	.byte	0x2
	.byte	0x7
	.4byte	.LASF116
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF117
	.byte	0x4
	.byte	0xe1
	.byte	0x2
	.4byte	0x46e
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.byte	0xe6
	.byte	0xe
	.4byte	0x4bc
	.byte	0x7
	.4byte	.LASF118
	.byte	0
	.byte	0x7
	.4byte	.LASF119
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF120
	.byte	0x4
	.byte	0xe9
	.byte	0x2
	.4byte	0x4a1
	.byte	0x9
	.byte	0x20
	.byte	0x4
	.byte	0xee
	.byte	0x9
	.4byte	0x53a
	.byte	0xa
	.4byte	.LASF121
	.byte	0x4
	.byte	0xef
	.byte	0x1a
	.4byte	0x462
	.byte	0
	.byte	0xa
	.4byte	.LASF122
	.byte	0x4
	.byte	0xf0
	.byte	0x18
	.4byte	0x495
	.byte	0x4
	.byte	0xa
	.4byte	.LASF123
	.byte	0x4
	.byte	0xf1
	.byte	0x17
	.4byte	0x4bc
	.byte	0x8
	.byte	0xa
	.4byte	.LASF124
	.byte	0x4
	.byte	0xf2
	.byte	0x17
	.4byte	0x4bc
	.byte	0xc
	.byte	0xa
	.4byte	.LASF125
	.byte	0x4
	.byte	0xf3
	.byte	0x11
	.4byte	0x105
	.byte	0x10
	.byte	0xa
	.4byte	.LASF126
	.byte	0x4
	.byte	0xf4
	.byte	0x11
	.4byte	0x105
	.byte	0x14
	.byte	0xa
	.4byte	.LASF127
	.byte	0x4
	.byte	0xf5
	.byte	0x11
	.4byte	0x105
	.byte	0x18
	.byte	0xa
	.4byte	.LASF128
	.byte	0x4
	.byte	0xf6
	.byte	0x11
	.4byte	0x105
	.byte	0x1c
	.byte	0
	.byte	0x4
	.4byte	.LASF129
	.byte	0x4
	.byte	0xf7
	.byte	0x2
	.4byte	0x4c8
	.byte	0x9
	.byte	0x34
	.byte	0x4
	.byte	0xfc
	.byte	0x9
	.4byte	0x603
	.byte	0xa
	.4byte	.LASF130
	.byte	0x4
	.byte	0xfd
	.byte	0x16
	.4byte	0x23d
	.byte	0
	.byte	0xa
	.4byte	.LASF131
	.byte	0x4
	.byte	0xfe
	.byte	0x16
	.4byte	0x270
	.byte	0x4
	.byte	0xa
	.4byte	.LASF132
	.byte	0x4
	.byte	0xff
	.byte	0x12
	.4byte	0x2bb
	.byte	0x8
	.byte	0xb
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x100
	.byte	0x17
	.4byte	0x300
	.byte	0xc
	.byte	0xb
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x101
	.byte	0x17
	.4byte	0x300
	.byte	0x10
	.byte	0xb
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x102
	.byte	0x17
	.4byte	0x35a
	.byte	0x14
	.byte	0xb
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x103
	.byte	0x17
	.4byte	0x327
	.byte	0x18
	.byte	0xc
	.string	"vcm"
	.byte	0x4
	.2byte	0x104
	.byte	0x16
	.4byte	0x38d
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x105
	.byte	0x13
	.4byte	0x3db
	.byte	0x20
	.byte	0xb
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x106
	.byte	0x18
	.4byte	0x402
	.byte	0x24
	.byte	0xb
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x107
	.byte	0x19
	.4byte	0x43b
	.byte	0x28
	.byte	0xb
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x108
	.byte	0x11
	.4byte	0x105
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x109
	.byte	0xd
	.4byte	0x54
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x10a
	.byte	0x2
	.4byte	0x546
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.2byte	0x10f
	.byte	0x9
	.4byte	0x653
	.byte	0xb
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x110
	.byte	0xc
	.4byte	0x41
	.byte	0
	.byte	0xb
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x111
	.byte	0xc
	.4byte	0x41
	.byte	0x1
	.byte	0xb
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x112
	.byte	0xe
	.4byte	0x88
	.byte	0x2
	.byte	0xb
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x113
	.byte	0xb
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x114
	.byte	0x2
	.4byte	0x610
	.byte	0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.2byte	0x119
	.byte	0xe
	.4byte	0x688
	.byte	0x7
	.4byte	.LASF148
	.byte	0
	.byte	0x7
	.4byte	.LASF149
	.byte	0x1
	.byte	0x7
	.4byte	.LASF150
	.byte	0x2
	.byte	0x7
	.4byte	.LASF151
	.byte	0x3
	.byte	0
	.byte	0xd
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x11e
	.byte	0x2
	.4byte	0x660
	.byte	0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.2byte	0x123
	.byte	0xe
	.4byte	0x6c9
	.byte	0x7
	.4byte	.LASF153
	.byte	0
	.byte	0x7
	.4byte	.LASF154
	.byte	0x1
	.byte	0x7
	.4byte	.LASF155
	.byte	0x2
	.byte	0x7
	.4byte	.LASF156
	.byte	0x3
	.byte	0x7
	.4byte	.LASF157
	.byte	0x4
	.byte	0x7
	.4byte	.LASF158
	.byte	0x5
	.byte	0
	.byte	0xd
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x12a
	.byte	0x2
	.4byte	0x695
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.2byte	0x12f
	.byte	0x9
	.4byte	0x6fd
	.byte	0xb
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x130
	.byte	0x1d
	.4byte	0x688
	.byte	0
	.byte	0xb
	.4byte	.LASF161
	.byte	0x4
	.2byte	0x131
	.byte	0x11
	.4byte	0x105
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF162
	.byte	0x4
	.2byte	0x132
	.byte	0x2
	.4byte	0x6d6
	.byte	0xe
	.byte	0xc
	.byte	0x4
	.2byte	0x137
	.byte	0x9
	.4byte	0x73f
	.byte	0xb
	.4byte	.LASF163
	.byte	0x4
	.2byte	0x138
	.byte	0x11
	.4byte	0x105
	.byte	0
	.byte	0xb
	.4byte	.LASF164
	.byte	0x4
	.2byte	0x139
	.byte	0xe
	.4byte	0x88
	.byte	0x4
	.byte	0xc
	.string	"coe"
	.byte	0x4
	.2byte	0x13a
	.byte	0xb
	.4byte	0x2c
	.byte	0x8
	.byte	0
	.byte	0xd
	.4byte	.LASF165
	.byte	0x4
	.2byte	0x13b
	.byte	0x2
	.4byte	0x70a
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.byte	0x98
	.byte	0x9
	.4byte	0x7a6
	.byte	0x10
	.4byte	.LASF166
	.byte	0x5
	.byte	0x99
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x10
	.4byte	.LASF167
	.byte	0x5
	.byte	0x9a
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0x10
	.4byte	.LASF168
	.byte	0x5
	.byte	0x9b
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.byte	0x10
	.4byte	.LASF169
	.byte	0x5
	.byte	0x9c
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.byte	0x10
	.4byte	.LASF170
	.byte	0x5
	.byte	0x9d
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF171
	.byte	0x5
	.byte	0x9e
	.byte	0x2
	.4byte	0x74c
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.byte	0xa3
	.byte	0x9
	.4byte	0x7fc
	.byte	0x10
	.4byte	.LASF172
	.byte	0x5
	.byte	0xa4
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x10
	.4byte	.LASF173
	.byte	0x5
	.byte	0xa5
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0x10
	.4byte	.LASF174
	.byte	0x5
	.byte	0xa6
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.byte	0x10
	.4byte	.LASF170
	.byte	0x5
	.byte	0xa7
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF175
	.byte	0x5
	.byte	0xa8
	.byte	0x2
	.4byte	0x7b2
	.byte	0x11
	.4byte	0x818
	.4byte	0x818
	.byte	0x12
	.4byte	0x33
	.byte	0x4
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x15f
	.byte	0x14
	.4byte	.LASF216
	.byte	0x1
	.byte	0x43
	.byte	0x1b
	.4byte	0x808
	.byte	0x15
	.4byte	.LASF176
	.byte	0x1
	.byte	0x44
	.byte	0x1c
	.4byte	0x73f
	.byte	0x5
	.byte	0x3
	.4byte	adcGainCoeffCal
	.byte	0x16
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x533
	.byte	0xb7
	.4byte	0xde
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x8df
	.byte	0x17
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x535
	.byte	0x1f
	.4byte	0x7fc
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"tmp"
	.byte	0x1
	.2byte	0x536
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST61
	.byte	0x19
	.4byte	.LVL334
	.4byte	0x13d4
	.4byte	0x88c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LVL335
	.4byte	0x13e1
	.4byte	0x89f
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1b
	.4byte	.LVL340
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL341
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL342
	.4byte	0x1400
	.byte	0x1b
	.4byte	.LVL343
	.4byte	0x1409
	.byte	0x1b
	.4byte	.LVL345
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL346
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL347
	.4byte	0x1412
	.byte	0
	.byte	0x1c
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x521
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x906
	.byte	0x17
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x523
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x1c
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x50f
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x92d
	.byte	0x17
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x511
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x16
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x4e0
	.byte	0xd
	.4byte	0xde
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x97c
	.byte	0x1d
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x4e0
	.byte	0x29
	.4byte	0x97c
	.4byte	.LLST58
	.byte	0x1e
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x4e2
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST59
	.byte	0x1e
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x4e2
	.byte	0x18
	.4byte	0x9b
	.4byte	.LLST60
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x53a
	.byte	0x16
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x49e
	.byte	0x7
	.4byte	0x2c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0xaed
	.byte	0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x49e
	.byte	0x1e
	.4byte	0x9b
	.4byte	.LLST52
	.byte	0x18
	.string	"v0"
	.byte	0x1
	.2byte	0x4a0
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST53
	.byte	0x18
	.string	"v1"
	.byte	0x1
	.2byte	0x4a0
	.byte	0x16
	.4byte	0x9b
	.4byte	.LLST54
	.byte	0x1e
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x4a1
	.byte	0xb
	.4byte	0x2c
	.4byte	.LLST55
	.byte	0x17
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x4a2
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x17
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x4a3
	.byte	0x15
	.4byte	0x653
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x4a4
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST56
	.byte	0x1e
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x4a5
	.byte	0xd
	.4byte	0x75
	.4byte	.LLST57
	.byte	0x1f
	.4byte	0x10a3
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x4b1
	.byte	0xe
	.4byte	0xa42
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x21
	.4byte	0x10b5
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x10a3
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.2byte	0x4c4
	.byte	0xe
	.4byte	0xa5d
	.byte	0x21
	.4byte	0x10b5
	.byte	0
	.byte	0x1b
	.4byte	.LVL286
	.4byte	0xb14
	.byte	0x1b
	.4byte	.LVL287
	.4byte	0x11af
	.byte	0x1b
	.4byte	.LVL288
	.4byte	0x111d
	.byte	0x19
	.4byte	.LVL291
	.4byte	0xf48
	.4byte	0xa97
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0
	.byte	0x1b
	.4byte	.LVL294
	.4byte	0xaed
	.byte	0x1b
	.4byte	.LVL295
	.4byte	0x11af
	.byte	0x1b
	.4byte	.LVL296
	.4byte	0x111d
	.byte	0x19
	.4byte	.LVL299
	.4byte	0xf48
	.4byte	0xad1
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0
	.byte	0x1b
	.4byte	.LVL302
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL303
	.4byte	0x141b
	.byte	0x1b
	.4byte	.LVL304
	.4byte	0x1409
	.byte	0
	.byte	0x1c
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x48e
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0xb14
	.byte	0x17
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x490
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x1c
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x47e
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3d
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x480
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST38
	.byte	0
	.byte	0x16
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x431
	.byte	0xb7
	.4byte	0xde
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0xc77
	.byte	0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x431
	.byte	0xd0
	.4byte	0xc77
	.4byte	.LLST44
	.byte	0x1e
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x433
	.byte	0xd
	.4byte	0x75
	.4byte	.LLST45
	.byte	0x1e
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x434
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST46
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x435
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST47
	.byte	0x18
	.string	"A1"
	.byte	0x1
	.2byte	0x436
	.byte	0xb
	.4byte	0x2c
	.4byte	.LLST48
	.byte	0x18
	.string	"A2"
	.byte	0x1
	.2byte	0x436
	.byte	0x12
	.4byte	0x2c
	.4byte	.LLST49
	.byte	0x18
	.string	"C"
	.byte	0x1
	.2byte	0x436
	.byte	0x19
	.4byte	0x2c
	.4byte	.LLST50
	.byte	0x1e
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x436
	.byte	0x1f
	.4byte	0x2c
	.4byte	.LLST51
	.byte	0x17
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x437
	.byte	0x24
	.4byte	0x7a6
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x19
	.4byte	.LVL250
	.4byte	0x1424
	.4byte	0xc00
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4c
	.byte	0
	.byte	0x19
	.4byte	.LVL254
	.4byte	0x13e1
	.4byte	0xc13
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1b
	.4byte	.LVL259
	.4byte	0xc7d
	.byte	0x1b
	.4byte	.LVL266
	.4byte	0xc7d
	.byte	0x1b
	.4byte	.LVL271
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL273
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL274
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL275
	.4byte	0x1412
	.byte	0x1b
	.4byte	.LVL276
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL277
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL278
	.4byte	0x1400
	.byte	0x1b
	.4byte	.LVL279
	.4byte	0x1400
	.byte	0x1b
	.4byte	.LVL280
	.4byte	0x1409
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x88
	.byte	0x16
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x3f7
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xdb8
	.byte	0x18
	.string	"v0"
	.byte	0x1
	.2byte	0x3f9
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST39
	.byte	0x18
	.string	"v1"
	.byte	0x1
	.2byte	0x3f9
	.byte	0x16
	.4byte	0x9b
	.4byte	.LLST40
	.byte	0x1e
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x3fa
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST41
	.byte	0x17
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x3fb
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x17
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x3fc
	.byte	0x15
	.4byte	0x653
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x3fd
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST42
	.byte	0x1e
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x3fe
	.byte	0xd
	.4byte	0x75
	.4byte	.LLST43
	.byte	0x1f
	.4byte	0x10a3
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x40a
	.byte	0xe
	.4byte	0xd2c
	.byte	0x20
	.4byte	.Ldebug_ranges0+0
	.byte	0x21
	.4byte	0x10b5
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x10a3
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.2byte	0x41c
	.byte	0xe
	.4byte	0xd47
	.byte	0x21
	.4byte	0x10b5
	.byte	0
	.byte	0x1b
	.4byte	.LVL230
	.4byte	0xb14
	.byte	0x1b
	.4byte	.LVL231
	.4byte	0x11af
	.byte	0x1b
	.4byte	.LVL232
	.4byte	0x111d
	.byte	0x19
	.4byte	.LVL235
	.4byte	0xf48
	.4byte	0xd81
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0
	.byte	0x1b
	.4byte	.LVL238
	.4byte	0xaed
	.byte	0x1b
	.4byte	.LVL239
	.4byte	0x11af
	.byte	0x1b
	.4byte	.LVL240
	.4byte	0x111d
	.byte	0x23
	.4byte	.LVL243
	.4byte	0xf48
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x3b6
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xdf2
	.byte	0x1d
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x3b6
	.byte	0x26
	.4byte	0x3b4
	.4byte	.LLST36
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x3b8
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST37
	.byte	0
	.byte	0x1c
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x3a5
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xe19
	.byte	0x17
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x3a7
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x1c
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x394
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0xe40
	.byte	0x17
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x396
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x1c
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x355
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xe76
	.byte	0x24
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x355
	.byte	0x2c
	.4byte	0x6c9
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x355
	.byte	0x46
	.4byte	0x818
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x16
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x325
	.byte	0xd
	.4byte	0x12c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xec5
	.byte	0x1d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x325
	.byte	0x2b
	.4byte	0x6c9
	.4byte	.LLST33
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x327
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST34
	.byte	0x1e
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x328
	.byte	0x11
	.4byte	0x12c
	.4byte	.LLST35
	.byte	0
	.byte	0x1c
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x2a4
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xeff
	.byte	0x1d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x2a4
	.byte	0x1e
	.4byte	0x6c9
	.4byte	.LLST31
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x2a6
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST32
	.byte	0
	.byte	0x1c
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x23b
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xf48
	.byte	0x1d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x23b
	.byte	0x1f
	.4byte	0x6c9
	.4byte	.LLST29
	.byte	0x24
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x23b
	.byte	0x35
	.4byte	0x153
	.byte	0x1
	.byte	0x5b
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x23d
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST30
	.byte	0
	.byte	0x1c
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x1f0
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x1097
	.byte	0x1d
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x1f0
	.byte	0x21
	.4byte	0x1097
	.4byte	.LLST18
	.byte	0x25
	.string	"len"
	.byte	0x1
	.2byte	0x1f0
	.byte	0x31
	.4byte	0x9b
	.4byte	.LLST19
	.byte	0x1d
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1f0
	.byte	0x46
	.4byte	0x109d
	.4byte	.LLST20
	.byte	0x18
	.string	"neg"
	.byte	0x1
	.2byte	0x1f2
	.byte	0xd
	.4byte	0x75
	.4byte	.LLST21
	.byte	0x1e
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1f3
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST22
	.byte	0x1e
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1f3
	.byte	0x18
	.4byte	0x9b
	.4byte	.LLST23
	.byte	0x1e
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x1f4
	.byte	0x19
	.4byte	0x43b
	.4byte	.LLST24
	.byte	0x1e
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x1f5
	.byte	0x18
	.4byte	0x402
	.4byte	.LLST25
	.byte	0x18
	.string	"ref"
	.byte	0x1
	.2byte	0x1f6
	.byte	0xb
	.4byte	0x2c
	.4byte	.LLST26
	.byte	0x18
	.string	"i"
	.byte	0x1
	.2byte	0x1f7
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST27
	.byte	0x18
	.string	"coe"
	.byte	0x1
	.2byte	0x1f9
	.byte	0xb
	.4byte	0x2c
	.4byte	.LLST28
	.byte	0x1b
	.4byte	.LVL94
	.4byte	0x1431
	.byte	0x1b
	.4byte	.LVL95
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL96
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL97
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL98
	.4byte	0x1409
	.byte	0x1b
	.4byte	.LVL109
	.4byte	0x1431
	.byte	0x1b
	.4byte	.LVL110
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL111
	.4byte	0x13ee
	.byte	0x1b
	.4byte	.LVL112
	.4byte	0x13f7
	.byte	0x1b
	.4byte	.LVL113
	.4byte	0x1409
	.byte	0x1b
	.4byte	.LVL114
	.4byte	0x1431
	.byte	0x1b
	.4byte	.LVL115
	.4byte	0x1431
	.byte	0x1b
	.4byte	.LVL117
	.4byte	0x1431
	.byte	0x1b
	.4byte	.LVL118
	.4byte	0x1431
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x9b
	.byte	0x13
	.byte	0x4
	.4byte	0x653
	.byte	0x26
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x1dd
	.byte	0xa
	.4byte	0x9b
	.byte	0x1
	.4byte	0x10c3
	.byte	0x27
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1df
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.byte	0x16
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1c5
	.byte	0xd
	.4byte	0x12c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x10f0
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1c7
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST17
	.byte	0
	.byte	0x16
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1b0
	.byte	0xd
	.4byte	0x12c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x111d
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1b2
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0
	.byte	0x16
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x19f
	.byte	0x9
	.4byte	0x75
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x114a
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1a1
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0
	.byte	0x1c
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x17c
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x1182
	.byte	0x24
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x17c
	.byte	0x26
	.4byte	0x1182
	.byte	0x1
	.byte	0x5a
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x17e
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST14
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x6fd
	.byte	0x1c
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x16a
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x11af
	.byte	0x17
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x16c
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x1c
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x150
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x11e8
	.byte	0x1e
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x152
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST13
	.byte	0x23
	.4byte	.LVL58
	.4byte	0x143a
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x113
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x1275
	.byte	0x1d
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x113
	.byte	0x2c
	.4byte	0x1275
	.4byte	.LLST6
	.byte	0x1d
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x113
	.byte	0x46
	.4byte	0x1275
	.4byte	.LLST7
	.byte	0x1d
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x113
	.byte	0x5a
	.4byte	0x75
	.4byte	.LLST8
	.byte	0x1d
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x113
	.byte	0x71
	.4byte	0x105
	.4byte	.LLST9
	.byte	0x1e
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x115
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST10
	.byte	0x18
	.string	"i"
	.byte	0x1
	.2byte	0x115
	.byte	0x15
	.4byte	0x9b
	.4byte	.LLST11
	.byte	0x1e
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x116
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x20a
	.byte	0x28
	.4byte	.LASF231
	.byte	0x1
	.byte	0xf2
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x12e2
	.byte	0x29
	.4byte	.LASF232
	.byte	0x1
	.byte	0xf2
	.byte	0x27
	.4byte	0x20a
	.4byte	.LLST1
	.byte	0x29
	.4byte	.LASF233
	.byte	0x1
	.byte	0xf2
	.byte	0x3b
	.4byte	0x20a
	.4byte	.LLST2
	.byte	0x29
	.4byte	.LASF229
	.byte	0x1
	.byte	0xf2
	.byte	0x4d
	.4byte	0x105
	.4byte	.LLST3
	.byte	0x2a
	.4byte	.LASF223
	.byte	0x1
	.byte	0xf4
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0x2a
	.4byte	.LASF234
	.byte	0x1
	.byte	0xf5
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST5
	.byte	0
	.byte	0x28
	.4byte	.LASF235
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1342
	.byte	0x2b
	.string	"cfg"
	.byte	0x1
	.byte	0xa0
	.byte	0x1d
	.4byte	0x1342
	.4byte	.LLST62
	.byte	0x2a
	.4byte	.LASF234
	.byte	0x1
	.byte	0xa2
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST63
	.byte	0x2a
	.4byte	.LASF236
	.byte	0x1
	.byte	0xa3
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST64
	.byte	0x2a
	.4byte	.LASF237
	.byte	0x1
	.byte	0xa4
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST65
	.byte	0x2c
	.4byte	.LVL381
	.4byte	0x83c
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x603
	.byte	0x28
	.4byte	.LASF238
	.byte	0x1
	.byte	0x8e
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x136d
	.byte	0x15
	.4byte	.LASF178
	.byte	0x1
	.byte	0x90
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x28
	.4byte	.LASF239
	.byte	0x1
	.byte	0x7d
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1392
	.byte	0x15
	.4byte	.LASF178
	.byte	0x1
	.byte	0x7f
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x28
	.4byte	.LASF240
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x13b9
	.byte	0x2a
	.4byte	.LASF223
	.byte	0x1
	.byte	0x6c
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0
	.byte	0x2d
	.4byte	0x10a3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x13d4
	.byte	0x2e
	.4byte	0x10b5
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2f
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x5
	.2byte	0x12e
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x5
	.2byte	0x128
	.byte	0x9
	.byte	0x30
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x30
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x30
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x30
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x30
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x30
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0x2f
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x5
	.2byte	0x12d
	.byte	0x6
	.byte	0x30
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x31
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x3
	.byte	0x87
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST61:
	.4byte	.LVL336
	.4byte	.LVL337
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL339
	.4byte	.LVL340-1
	.2byte	0x10
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x1f
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LVL345-1
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL308
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL322
	.4byte	.LVL328
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL328
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL308
	.4byte	.LVL310
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x47
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL312
	.4byte	.LVL313
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL313
	.4byte	.LVL314
	.2byte	0x9
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x45
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x9
	.byte	0x7a
	.byte	0x8
	.byte	0x6
	.byte	0x44
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL317
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x9
	.byte	0x7a
	.byte	0xc
	.byte	0x6
	.byte	0x43
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x9
	.byte	0x7a
	.byte	0x10
	.byte	0x6
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL320
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x3f
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x9
	.byte	0x7e
	.byte	0x18
	.byte	0x6
	.byte	0x3f
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x9
	.byte	0x7e
	.byte	0x18
	.byte	0x6
	.byte	0x3f
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x18
	.byte	0x6
	.byte	0x3f
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL309
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL282
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL286-1
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL305
	.4byte	.LVL307
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL282
	.4byte	.LVL292
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL306
	.2byte	0x7
	.byte	0x84
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LFE33
	.2byte	0x7
	.byte	0x84
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL282
	.4byte	.LVL301
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL302-1
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LFE33
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL282
	.4byte	.LVL304
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL304
	.4byte	.LVL307
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL307
	.4byte	.LFE33
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL284
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL292
	.4byte	.LVL294-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL283
	.4byte	.LVL290
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL298
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL223
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL249
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL257
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x6
	.byte	0x8
	.byte	0x32
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x6
	.byte	0x8
	.byte	0x32
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL257
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0xc
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0x8
	.byte	0x32
	.byte	0xf7
	.byte	0x33
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0xc
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0x8
	.byte	0x32
	.byte	0xf7
	.byte	0x33
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL281
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL281
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL253
	.4byte	.LVL263
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL263
	.4byte	.LVL281
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.4byte	.LVL281
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL253
	.4byte	.LVL268
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL268
	.4byte	.LVL270
	.2byte	0x10
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0x8
	.byte	0x32
	.byte	0xf7
	.byte	0x33
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x7
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL253
	.4byte	.LVL269
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL269
	.4byte	.LVL281
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL281
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL253
	.4byte	.LVL269
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x44
	.byte	0xf5
	.byte	0x28
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.4byte	0x183bc382
	.4byte	0x3fd84a57
	.byte	0x1e
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0x8
	.byte	0x32
	.byte	0xf7
	.byte	0x33
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf5
	.byte	0x29
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.4byte	0xc60ef0e0
	.4byte	0x3ff61295
	.byte	0x1e
	.byte	0x1c
	.byte	0x22
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.4byte	0
	.4byte	0x40520000
	.byte	0x22
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x3b
	.byte	0xf5
	.byte	0x28
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.4byte	0x183bc382
	.4byte	0x3fd84a57
	.byte	0x1e
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf5
	.byte	0x29
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.4byte	0xc60ef0e0
	.4byte	0x3ff61295
	.byte	0x1e
	.byte	0x1c
	.byte	0x22
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.4byte	0
	.4byte	0x40520000
	.byte	0x22
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LFE30
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL226
	.4byte	.LVL236
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL226
	.4byte	.LVL245
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL226
	.4byte	.LVL245
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL228
	.4byte	.LVL230-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL236
	.4byte	.LVL238-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL227
	.4byte	.LVL234
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL209
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0xa
	.byte	0x7d
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0xff,0x78
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x18
	.byte	0x7e
	.byte	0
	.byte	0xc
	.4byte	0xfc3ffdf
	.byte	0x1a
	.byte	0x7a
	.byte	0
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0xb
	.2byte	0xbe7f
	.byte	0x1a
	.byte	0xc
	.4byte	0x20000140
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL216
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL189
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL203
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL188
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL152
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL157
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL163
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL169
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xdf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xdf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x7f
	.byte	0x2c
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xf9ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x600
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xf9ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xfdff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0x9fff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x200
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x6000
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL78
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL78
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL88
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL79
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL90
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL103
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL78
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL99
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL85
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL108
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL78
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x40000000
	.4byte	.LVL87
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x40000000
	.4byte	.LVL101
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL108
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL78
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3f800000
	.4byte	.LVL80
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3f800000
	.4byte	.LVL100
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.4byte	.LVL108
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x90
	.byte	0x29
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x46
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL59
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x17
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x70
	.byte	0x1a
	.byte	0x7c
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x18
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x70
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1e
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x70
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x1c
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xfd
	.byte	0x1a
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL44
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL52
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x80
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x81
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x80
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL348
	.4byte	.LVL381-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL381-1
	.4byte	.LVL381
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL381
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL349
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL350
	.4byte	.LVL351
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x4d
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL351
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL352
	.4byte	.LVL353
	.2byte	0xf
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x4b
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0xff,0x40
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL354
	.4byte	.LVL355
	.2byte	0xe
	.byte	0x7a
	.byte	0x8
	.byte	0x6
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0x77
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL357
	.2byte	0x7
	.byte	0x7a
	.byte	0x2c
	.byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL357
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL359
	.4byte	.LVL360
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL360
	.4byte	.LVL362
	.2byte	0x3
	.byte	0x7b
	.byte	0x90,0x72
	.4byte	.LVL362
	.4byte	.LVL375
	.2byte	0x5
	.byte	0xc
	.4byte	0x4000f910
	.4byte	.LVL375
	.4byte	.LVL376
	.2byte	0x3
	.byte	0x7e
	.byte	0x90,0x72
	.4byte	.LVL381
	.4byte	.LFE11
	.2byte	0x5
	.byte	0xc
	.4byte	0x4000f910
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL360
	.4byte	.LVL361
	.2byte	0xa
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0xff,0x78
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL361
	.4byte	.LVL363
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x49
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL363
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL364
	.4byte	.LVL365
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x46
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL366
	.4byte	.LVL367
	.2byte	0x9
	.byte	0x7a
	.byte	0x18
	.byte	0x6
	.byte	0x41
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL367
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1a
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe07f
	.byte	0x1a
	.byte	0x7a
	.byte	0x1c
	.byte	0x6
	.byte	0x37
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xf7
	.byte	0x1a
	.byte	0x7a
	.byte	0x20
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x21
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x17
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe07f
	.byte	0x1a
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9
	.byte	0xf7
	.byte	0x1a
	.byte	0x7a
	.byte	0x20
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x21
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL374
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL377
	.4byte	.LVL380
	.2byte	0x3
	.byte	0x7e
	.byte	0x94,0x72
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL383
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL379
	.4byte	.LVL381-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x104
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
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
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF128:
	.string	"micBiasEn"
.LASF161:
	.string	"dmaEn"
.LASF213:
	.string	"orgVal"
.LASF4:
	.string	"int8_t"
.LASF223:
	.string	"regCmd"
.LASF64:
	.string	"ADC_V11_SEL_Type"
.LASF118:
	.string	"ADC_MIC_MODE_SINGLE"
.LASF244:
	.string	"__muldf3"
.LASF156:
	.string	"ADC_INT_FIFO_OVERRUN"
.LASF182:
	.string	"ADC_Mic_Init"
.LASF28:
	.string	"BL_Mask_Type"
.LASF125:
	.string	"dwaEn"
.LASF160:
	.string	"fifoThreshold"
.LASF42:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF43:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF185:
	.string	"TSEN_Get_Temp"
.LASF75:
	.string	"ADC_PGA_GAIN_1"
.LASF76:
	.string	"ADC_PGA_GAIN_2"
.LASF77:
	.string	"ADC_PGA_GAIN_4"
.LASF78:
	.string	"ADC_PGA_GAIN_8"
.LASF220:
	.string	"ADC_FIFO_Cfg"
.LASF54:
	.string	"ADC_Chan_Type"
.LASF136:
	.string	"biasSel"
.LASF30:
	.string	"ADC_CHAN0"
.LASF31:
	.string	"ADC_CHAN1"
.LASF32:
	.string	"ADC_CHAN2"
.LASF33:
	.string	"ADC_CHAN3"
.LASF34:
	.string	"ADC_CHAN4"
.LASF35:
	.string	"ADC_CHAN5"
.LASF36:
	.string	"ADC_CHAN6"
.LASF37:
	.string	"ADC_CHAN7"
.LASF38:
	.string	"ADC_CHAN8"
.LASF39:
	.string	"ADC_CHAN9"
.LASF168:
	.string	"tsenRefcodeCornerEn"
.LASF234:
	.string	"regCfg1"
.LASF236:
	.string	"regCfg2"
.LASF239:
	.string	"ADC_Enable"
.LASF190:
	.string	"result"
.LASF183:
	.string	"tmpVal1"
.LASF184:
	.string	"tmpVal2"
.LASF57:
	.string	"ADC_V18_SEL_1P82V"
.LASF47:
	.string	"ADC_CHAN_DCTEST"
.LASF7:
	.string	"long int"
.LASF95:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF119:
	.string	"ADC_MIC_MODE_DIFF"
.LASF108:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF107:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF148:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF149:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF150:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF132:
	.string	"clkDiv"
.LASF82:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF246:
	.string	"__truncdfsf2"
.LASF154:
	.string	"ADC_INT_NEG_SATURATION"
.LASF97:
	.string	"ADC_TSEN_MOD_Type"
.LASF172:
	.string	"adcGainCoeff"
.LASF3:
	.string	"signed char"
.LASF9:
	.string	"uint8_t"
.LASF151:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF166:
	.string	"tsenRefcodeCorner"
.LASF106:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF193:
	.string	"ADC_SET_TSVBE_LOW"
.LASF194:
	.string	"ADC_Trim_TSEN"
.LASF10:
	.string	"unsigned char"
.LASF147:
	.string	"ADC_Result_Type"
.LASF207:
	.string	"ADC_GetIntStatus"
.LASF124:
	.string	"mic2Mode"
.LASF48:
	.string	"ADC_CHAN_VABT_HALF"
.LASF90:
	.string	"ADC_PGA_VCM_1V"
.LASF138:
	.string	"inputMode"
.LASF218:
	.string	"ADC_FIFO_Is_Full"
.LASF251:
	.string	"BL602_Delay_US"
.LASF145:
	.string	"value"
.LASF16:
	.string	"char"
.LASF254:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/bl602_std"
.LASF202:
	.string	"ADC_Vbat_Disable"
.LASF109:
	.string	"ADC_Data_Width_Type"
.LASF79:
	.string	"ADC_PGA_GAIN_16"
.LASF112:
	.string	"ADC_MICBOOST_DB_Type"
.LASF101:
	.string	"ADC_INPUT_SINGLE_END"
.LASF221:
	.string	"fifoCfg"
.LASF211:
	.string	"intMask"
.LASF222:
	.string	"ADC_Stop"
.LASF40:
	.string	"ADC_CHAN10"
.LASF41:
	.string	"ADC_CHAN11"
.LASF120:
	.string	"ADC_MIC_MODE_Type"
.LASF210:
	.string	"ADC_IntMask"
.LASF74:
	.string	"ADC_PGA_GAIN_NONE"
.LASF250:
	.string	"__floatsidf"
.LASF105:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF245:
	.string	"__adddf3"
.LASF228:
	.string	"scanLength"
.LASF99:
	.string	"ADC_VREF_2V"
.LASF83:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF137:
	.string	"vref"
.LASF116:
	.string	"ADC_PGA2_GAIN_12DB"
.LASF80:
	.string	"ADC_PGA_GAIN_32"
.LASF58:
	.string	"ADC_V18_SEL_1P92V"
.LASF237:
	.string	"regCalib"
.LASF175:
	.string	"Efuse_ADC_Gain_Coeff_Type"
.LASF200:
	.string	"ADC_Tsen_Init"
.LASF157:
	.string	"ADC_INT_ADC_READY"
.LASF242:
	.string	"EF_Ctrl_Get_Trim_Parity"
.LASF123:
	.string	"mic1Mode"
.LASF249:
	.string	"EF_Ctrl_Read_TSEN_Trim"
.LASF187:
	.string	"tsen_offset"
.LASF204:
	.string	"ADC_Int_Callback_Install"
.LASF133:
	.string	"gain1"
.LASF134:
	.string	"gain2"
.LASF26:
	.string	"UNMASK"
.LASF139:
	.string	"resWidth"
.LASF140:
	.string	"offsetCalibEn"
.LASF14:
	.string	"long unsigned int"
.LASF62:
	.string	"ADC_V11_SEL_1P18V"
.LASF252:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF104:
	.string	"ADC_DATA_WIDTH_12"
.LASF203:
	.string	"ADC_Vbat_Enable"
.LASF103:
	.string	"ADC_SIG_INPUT_Type"
.LASF89:
	.string	"ADC_CHOP_MOD_Type"
.LASF230:
	.string	"dealLen"
.LASF198:
	.string	"TSEN_Get_V_Error"
.LASF177:
	.string	"trim"
.LASF189:
	.string	"regVal"
.LASF18:
	.string	"ERROR"
.LASF179:
	.string	"ADC_MIC_Bias_Disable"
.LASF243:
	.string	"__extendsfdf2"
.LASF84:
	.string	"ADC_BIAS_SEL_Type"
.LASF192:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF174:
	.string	"adcGainCoeffEn"
.LASF164:
	.string	"adcgainCoeffVal"
.LASF8:
	.string	"long long int"
.LASF143:
	.string	"posChan"
.LASF0:
	.string	"double"
.LASF195:
	.string	"average_index"
.LASF130:
	.string	"v18Sel"
.LASF23:
	.string	"BL_Fun_Type"
.LASF20:
	.string	"BL_Err_Type"
.LASF51:
	.string	"ADC_CHAN_SENP1"
.LASF50:
	.string	"ADC_CHAN_SENP2"
.LASF49:
	.string	"ADC_CHAN_SENP3"
.LASF121:
	.string	"micboostDb"
.LASF214:
	.string	"dataType"
.LASF96:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF227:
	.string	"negChList"
.LASF1:
	.string	"float"
.LASF53:
	.string	"ADC_CHAN_GND"
.LASF131:
	.string	"v11Sel"
.LASF233:
	.string	"negCh"
.LASF63:
	.string	"ADC_V11_SEL_1P26V"
.LASF238:
	.string	"ADC_Disable"
.LASF2:
	.string	"unsigned int"
.LASF201:
	.string	"tsenMod"
.LASF205:
	.string	"intType"
.LASF171:
	.string	"Efuse_TSEN_Refcode_Corner_Type"
.LASF135:
	.string	"chopMode"
.LASF212:
	.string	"ADC_Parse_Result"
.LASF122:
	.string	"micPga2Gain"
.LASF226:
	.string	"posChList"
.LASF240:
	.string	"ADC_Reset"
.LASF219:
	.string	"ADC_Get_FIFO_Count"
.LASF68:
	.string	"ADC_CLK_DIV_12"
.LASF69:
	.string	"ADC_CLK_DIV_16"
.LASF88:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF110:
	.string	"ADC_MICBOOST_DB_16DB"
.LASF70:
	.string	"ADC_CLK_DIV_20"
.LASF19:
	.string	"TIMEOUT"
.LASF71:
	.string	"ADC_CLK_DIV_24"
.LASF21:
	.string	"DISABLE"
.LASF159:
	.string	"ADC_INT_Type"
.LASF253:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c"
.LASF241:
	.string	"EF_Ctrl_Read_ADC_Gain_Trim"
.LASF72:
	.string	"ADC_CLK_DIV_32"
.LASF158:
	.string	"ADC_INT_ALL"
.LASF215:
	.string	"sigType"
.LASF65:
	.string	"ADC_CLK_DIV_1"
.LASF66:
	.string	"ADC_CLK_DIV_4"
.LASF113:
	.string	"ADC_PGA2_GAIN_0DB"
.LASF67:
	.string	"ADC_CLK_DIV_8"
.LASF197:
	.string	"delta"
.LASF15:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF247:
	.string	"__subdf3"
.LASF216:
	.string	"adcIntCbfArra"
.LASF232:
	.string	"posCh"
.LASF180:
	.string	"ADC_MIC_Bias_Enable"
.LASF229:
	.string	"contEn"
.LASF87:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF17:
	.string	"SUCCESS"
.LASF199:
	.string	"v_error"
.LASF206:
	.string	"cbFun"
.LASF55:
	.string	"ADC_V18_SEL_1P62V"
.LASF162:
	.string	"ADC_FIFO_Cfg_Type"
.LASF231:
	.string	"ADC_Channel_Config"
.LASF24:
	.string	"RESET"
.LASF59:
	.string	"ADC_V18_SEL_Type"
.LASF100:
	.string	"ADC_VREF_Type"
.LASF52:
	.string	"ADC_CHAN_SENP0"
.LASF45:
	.string	"ADC_CHAN_TSEN_N"
.LASF44:
	.string	"ADC_CHAN_TSEN_P"
.LASF152:
	.string	"ADC_FIFO_Threshold_Type"
.LASF98:
	.string	"ADC_VREF_3P2V"
.LASF176:
	.string	"adcGainCoeffCal"
.LASF94:
	.string	"ADC_PGA_VCM_Type"
.LASF117:
	.string	"ADC_PGA2_GAIN_Type"
.LASF115:
	.string	"ADC_PGA2_GAIN_N6DB"
.LASF91:
	.string	"ADC_PGA_VCM_1P2V"
.LASF85:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF25:
	.string	"BL_Sts_Type"
.LASF186:
	.string	"adc_mic_config"
.LASF142:
	.string	"ADC_CFG_Type"
.LASF248:
	.string	"__divdf3"
.LASF209:
	.string	"ADC_IntClr"
.LASF27:
	.string	"MASK"
.LASF224:
	.string	"ADC_Start"
.LASF6:
	.string	"short int"
.LASF144:
	.string	"negChan"
.LASF111:
	.string	"ADC_MICBOOST_DB_32DB"
.LASF163:
	.string	"adcGainCoeffEnable"
.LASF5:
	.string	"int16_t"
.LASF153:
	.string	"ADC_INT_POS_SATURATION"
.LASF235:
	.string	"ADC_Init"
.LASF22:
	.string	"ENABLE"
.LASF141:
	.string	"offsetCalibVal"
.LASF225:
	.string	"ADC_Scan_Channel_Config"
.LASF129:
	.string	"ADC_MIC_Type"
.LASF92:
	.string	"ADC_PGA_VCM_1P4V"
.LASF173:
	.string	"adcGainCoeffParity"
.LASF169:
	.string	"tsenRefcodeCornerVersion"
.LASF196:
	.string	"v_error_sum"
.LASF102:
	.string	"ADC_INPUT_DIFF"
.LASF165:
	.string	"ADC_Gain_Coeff_Type"
.LASF127:
	.string	"micPgaEn"
.LASF155:
	.string	"ADC_INT_FIFO_UNDERRUN"
.LASF114:
	.string	"ADC_PGA2_GAIN_6DB"
.LASF73:
	.string	"ADC_CLK_Type"
.LASF255:
	.string	"ADC_Read_FIFO"
.LASF208:
	.string	"bitStatus"
.LASF13:
	.string	"uint32_t"
.LASF86:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF170:
	.string	"reserved"
.LASF93:
	.string	"ADC_PGA_VCM_1P6V"
.LASF191:
	.string	"gainCalEnabled"
.LASF12:
	.string	"short unsigned int"
.LASF167:
	.string	"tsenRefcodeCornerParity"
.LASF56:
	.string	"ADC_V18_SEL_1P72V"
.LASF81:
	.string	"ADC_PGA_GAIN_Type"
.LASF217:
	.string	"ADC_FIFO_Is_Empty"
.LASF181:
	.string	"ADC_Gain_Trim"
.LASF46:
	.string	"ADC_CHAN_VREF"
.LASF146:
	.string	"volt"
.LASF60:
	.string	"ADC_V11_SEL_1P0V"
.LASF188:
	.string	"temp"
.LASF29:
	.string	"intCallback_Type"
.LASF178:
	.string	"tmpVal"
.LASF61:
	.string	"ADC_V11_SEL_1P1V"
.LASF126:
	.string	"micboostBypassEn"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
