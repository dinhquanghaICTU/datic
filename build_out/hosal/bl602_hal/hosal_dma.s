	.file	"hosal_dma.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__dma_irq_process,"ax",@progbits
	.align	1
	.type	__dma_irq_process, @function
__dma_irq_process:
.LFB30:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_dma.c"
	.loc 1 19 1
	.cfi_startproc
.LVL0:
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 24 5
	.loc 1 25 5
	.loc 1 19 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s9,4(sp)
	sw	s10,0(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s8,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 24, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 29 12
	li	a5,1073790976
	lw	s1,4(a5)
	.loc 1 30 16
	lw	s8,12(a5)
	.loc 1 19 1
	mv	s6,a0
.LVL1:
	.loc 1 26 5 is_stmt 1
	.loc 1 27 5
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 32 13 is_stmt 0
	li	s2,0
	.loc 1 33 78
	li	s9,1
	.loc 1 39 24
	li	s3,1073790976
	.loc 1 45 39
	lui	s10,%hi(.LANCHOR0)
	.loc 1 45 50
	li	s7,12
.LVL2:
.L2:
	.loc 1 32 18 is_stmt 1 discriminator 1
	.loc 1 32 5 is_stmt 0 discriminator 1
	lw	a5,0(s6)
	bgt	a5,s2,.L8
	.loc 1 68 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL3:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL4:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
.LVL5:
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
.LVL6:
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L8:
	.cfi_restore_state
	.loc 1 33 9 is_stmt 1
	.loc 1 33 78 is_stmt 0
	sll	s4,s9,s2
.LVL8:
	.loc 1 34 9 is_stmt 1
	.loc 1 33 73 is_stmt 0
	and	a5,s4,s1
	.loc 1 34 81
	and	s5,s4,s8
	.loc 1 33 17
	andi	a5,a5,255
.LVL9:
	.loc 1 34 21
	andi	s5,s5,255
.LVL10:
	.loc 1 36 9 is_stmt 1
	.loc 1 36 11 is_stmt 0
	bne	a5,zero,.L3
.LVL11:
.L17:
	.loc 1 36 27 discriminator 1
	beq	s5,zero,.L4
.LVL12:
	.loc 1 54 17 is_stmt 1
	.loc 1 54 24 is_stmt 0
	lw	s1,16(s3)
.LVL13:
	.loc 1 55 17 is_stmt 1
	.loc 1 56 17
	.loc 1 57 17
	.loc 1 60 50 is_stmt 0
	mul	a5,s2,s7
	.loc 1 57 24
	or	s1,s4,s1
.LVL14:
	.loc 1 58 17 is_stmt 1
	.loc 1 58 72 is_stmt 0
	sw	s1,16(s3)
	.loc 1 60 17 is_stmt 1
	.loc 1 60 39 is_stmt 0
	lw	a4,%lo(.LANCHOR0)(s10)
	.loc 1 60 50
	lw	a4,4(a4)
	add	a5,a4,a5
	.loc 1 60 21
	lw	a4,4(a5)
.LVL15:
	.loc 1 61 17 is_stmt 1
	.loc 1 62 17
	.loc 1 62 20 is_stmt 0
	bne	a4,zero,.L5
.LVL16:
.L4:
	.loc 1 32 43 is_stmt 1 discriminator 2
	.loc 1 32 45 is_stmt 0 discriminator 2
	addi	s2,s2,1
.LVL17:
	j	.L2
.LVL18:
.L3:
	.loc 1 37 13 is_stmt 1
	.loc 1 39 17
	.loc 1 39 24 is_stmt 0
	lw	s1,8(s3)
.LVL19:
	.loc 1 40 17 is_stmt 1
	.loc 1 41 17
	.loc 1 42 17
	.loc 1 45 50 is_stmt 0
	mul	a5,s2,s7
.LVL20:
	.loc 1 42 24
	or	s1,s4,s1
.LVL21:
	.loc 1 43 17 is_stmt 1
	.loc 1 43 71 is_stmt 0
	sw	s1,8(s3)
	.loc 1 45 17 is_stmt 1
	.loc 1 45 39 is_stmt 0
	lw	a4,%lo(.LANCHOR0)(s10)
	.loc 1 45 50
	lw	a4,4(a4)
	add	a5,a4,a5
	.loc 1 45 21
	lw	a4,4(a5)
.LVL22:
	.loc 1 46 17 is_stmt 1
	.loc 1 47 17
	.loc 1 47 20 is_stmt 0
	beq	a4,zero,.L17
	.loc 1 48 21 is_stmt 1
	lw	a0,8(a5)
	li	a1,0
	jalr	a4
.LVL23:
	.loc 1 52 13
	j	.L17
.LVL24:
.L5:
	.loc 1 63 21
	lw	a0,8(a5)
	li	a1,1
	jalr	a4
.LVL25:
	j	.L4
	.cfi_endproc
.LFE30:
	.size	__dma_irq_process, .-__dma_irq_process
	.section	.text.hosal_dma_init,"ax",@progbits
	.align	1
	.globl	hosal_dma_init
	.type	hosal_dma_init, @function
hosal_dma_init:
.LFB31:
	.loc 1 76 1
	.cfi_startproc
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 78 9
	lui	s1,%hi(.LANCHOR0)
	.loc 1 78 8
	lw	a5,%lo(.LANCHOR0)(s1)
	bne	a5,zero,.L19
	.loc 1 82 24
	li	a1,1
	li	a0,12
	call	calloc
.LVL26:
	.loc 1 87 33
	li	a5,4
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 82 5 is_stmt 1
	.loc 1 82 24 is_stmt 0
	mv	s2,a0
	.loc 1 87 33
	sw	a5,0(a0)
	.loc 1 82 22
	sw	a0,0(s1)
	.loc 1 83 5 is_stmt 1
	.loc 1 84 9
	.loc 1 87 5
	.loc 1 88 5
	.loc 1 88 35 is_stmt 0
	li	a1,1
	li	a0,48
	call	calloc
.LVL27:
	.loc 1 88 33
	sw	a0,4(s2)
	.loc 1 89 5 is_stmt 1
	.loc 1 90 9
	.loc 1 92 5
	call	DMA_Enable
.LVL28:
	.loc 1 93 5
	.loc 1 93 12 is_stmt 0
	li	s2,0
.LVL29:
.L20:
	.loc 1 93 17 is_stmt 1 discriminator 1
	.loc 1 93 37 is_stmt 0 discriminator 1
	lw	a2,0(s1)
	.loc 1 93 5 discriminator 1
	lw	a5,0(a2)
	bgt	a5,s2,.L21
	.loc 1 97 5 is_stmt 1
	lui	a1,%hi(__dma_irq_process)
	li	a0,31
	addi	a1,a1,%lo(__dma_irq_process)
	call	bl_irq_register_with_ctx
.LVL30:
	.loc 1 98 5
	li	a0,31
	call	bl_irq_enable
.LVL31:
	.loc 1 99 5
.L19:
	.loc 1 100 1 is_stmt 0
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
.LVL32:
.L21:
	.cfi_restore_state
	.loc 1 94 9 is_stmt 1 discriminator 3
	andi	a0,s2,0xff
	sw	a0,-20(s0)
	call	DMA_Channel_Disable
.LVL33:
	.loc 1 95 9 discriminator 3
	lw	a0,-20(s0)
	li	a2,1
	li	a1,2
	call	DMA_IntMask
.LVL34:
	.loc 1 93 50 discriminator 3
	.loc 1 93 51 is_stmt 0 discriminator 3
	addi	s2,s2,1
.LVL35:
	j	.L20
	.cfi_endproc
.LFE31:
	.size	hosal_dma_init, .-hosal_dma_init
	.section	.text.hosal_dma_chan_request,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_request
	.type	hosal_dma_chan_request, @function
hosal_dma_chan_request:
.LFB32:
	.loc 1 108 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 109 5
	.loc 1 111 5
	.loc 1 113 5
	.loc 1 108 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 113 9
	lui	a5,%hi(.LANCHOR0)
	lw	a3,%lo(.LANCHOR0)(a5)
	.loc 1 115 16
	li	a0,-1
.LVL37:
	.loc 1 113 8
	beq	a3,zero,.L23
	.loc 1 118 37
	lw	a2,0(a3)
	.loc 1 118 12
	li	a0,0
	.loc 1 119 41
	li	a1,12
.L25:
.LVL38:
	.loc 1 118 17 is_stmt 1 discriminator 1
	.loc 1 118 5 is_stmt 0 discriminator 1
	bgt	a2,a0,.L27
	.loc 1 115 16
	li	a0,-1
.LVL39:
	j	.L23
.LVL40:
.L27:
	.loc 1 119 9 is_stmt 1
	.loc 1 119 41 is_stmt 0
	mul	a5,a0,a1
	lw	a4,4(a3)
	add	a5,a4,a5
	.loc 1 119 12
	lbu	a4,0(a5)
	bne	a4,zero,.L26
	.loc 1 120 13 is_stmt 1
	.loc 1 120 49 is_stmt 0
	li	a4,1
	sb	a4,0(a5)
	.loc 1 121 13 is_stmt 1
.LVL41:
.L23:
	.loc 1 125 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL42:
.L26:
	.cfi_restore_state
	.loc 1 118 50 is_stmt 1 discriminator 2
	.loc 1 118 51 is_stmt 0 discriminator 2
	addi	a0,a0,1
.LVL43:
	j	.L25
	.cfi_endproc
.LFE32:
	.size	hosal_dma_chan_request, .-hosal_dma_chan_request
	.section	.text.hosal_dma_chan_start,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_start
	.type	hosal_dma_chan_start, @function
hosal_dma_chan_start:
.LFB34:
	.loc 1 160 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 161 5
	.loc 1 161 8 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	beq	a5,zero,.L32
	.loc 1 166 5 is_stmt 1
	.loc 1 160 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 166 5
	andi	a0,a0,0xff
.LVL45:
	call	DMA_Channel_Enable
.LVL46:
	.loc 1 167 5 is_stmt 1
	.loc 1 168 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 167 12
	li	a0,0
	.loc 1 168 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL47:
.L32:
	.loc 1 163 16
	li	a0,-1
.LVL48:
	.loc 1 168 1
	ret
	.cfi_endproc
.LFE34:
	.size	hosal_dma_chan_start, .-hosal_dma_chan_start
	.section	.text.hosal_dma_chan_stop,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_stop
	.type	hosal_dma_chan_stop, @function
hosal_dma_chan_stop:
.LFB35:
	.loc 1 178 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 179 5
	.loc 1 179 8 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	beq	a5,zero,.L39
	.loc 1 178 1
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
	.loc 1 184 5 is_stmt 1
	call	bl_dma_int_clear
.LVL50:
	.loc 1 185 5
	andi	a0,s1,0xff
	call	DMA_Channel_Disable
.LVL51:
	.loc 1 186 5
	.loc 1 187 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL52:
	.loc 1 186 12
	li	a0,0
	.loc 1 187 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L39:
	.loc 1 181 16
	li	a0,-1
.LVL54:
	.loc 1 187 1
	ret
	.cfi_endproc
.LFE35:
	.size	hosal_dma_chan_stop, .-hosal_dma_chan_stop
	.section	.text.hosal_dma_chan_release,"ax",@progbits
	.align	1
	.globl	hosal_dma_chan_release
	.type	hosal_dma_chan_release, @function
hosal_dma_chan_release:
.LFB33:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 136 5
	.loc 1 135 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 136 9
	lui	s2,%hi(.LANCHOR0)
	.loc 1 135 1
	.loc 1 136 9
	addi	s2,s2,%lo(.LANCHOR0)
	lw	a5,0(s2)
	.loc 1 136 8
	beq	a5,zero,.L46
	.loc 1 141 8
	lw	a4,0(a5)
	mv	s1,a0
	.loc 1 141 5 is_stmt 1
	.loc 1 138 16 is_stmt 0
	li	a5,-1
	.loc 1 141 8
	blt	a4,a0,.L44
	.loc 1 144 5 is_stmt 1
	call	hosal_dma_chan_stop
.LVL56:
	.loc 1 145 5
	.loc 1 145 32 is_stmt 0
	li	a5,12
	mul	a5,s1,a5
	.loc 1 145 21
	lw	a3,0(s2)
	.loc 1 147 5
	andi	a0,s1,0xff
	li	a2,1
	.loc 1 145 44
	lw	a4,4(a3)
	.loc 1 147 5
	li	a1,0
	sw	a0,-20(s0)
	.loc 1 145 44
	add	a4,a4,a5
	sb	zero,0(a4)
	.loc 1 146 5 is_stmt 1
	.loc 1 146 48 is_stmt 0
	lw	a4,4(a3)
	add	a5,a4,a5
	sw	zero,4(a5)
	.loc 1 147 5 is_stmt 1
	call	DMA_IntMask
.LVL57:
	.loc 1 148 5
	lw	a0,-20(s0)
	li	a2,1
	li	a1,1
	call	DMA_IntMask
.LVL58:
	.loc 1 149 5
	.loc 1 149 12 is_stmt 0
	li	a5,0
.LVL59:
.L44:
	.loc 1 150 1
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
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL60:
.L46:
	.cfi_restore_state
	.loc 1 138 16
	li	a5,-1
	j	.L44
	.cfi_endproc
.LFE33:
	.size	hosal_dma_chan_release, .-hosal_dma_chan_release
	.section	.text.hosal_dma_irq_callback_set,"ax",@progbits
	.align	1
	.globl	hosal_dma_irq_callback_set
	.type	hosal_dma_irq_callback_set, @function
hosal_dma_irq_callback_set:
.LFB36:
	.loc 1 199 1 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 200 5
	.loc 1 200 9 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	lw	a3,%lo(.LANCHOR0)(a4)
	.loc 1 200 8
	beq	a3,zero,.L51
	.loc 1 204 8
	lw	a4,0(a3)
	mv	a5,a0
	.loc 1 204 5 is_stmt 1
	.loc 1 202 16 is_stmt 0
	li	a0,-1
.LVL62:
	.loc 1 204 8
	blt	a4,a5,.L54
	.loc 1 208 5 is_stmt 1
	.loc 1 208 32 is_stmt 0
	li	a4,12
	mul	a4,a5,a4
	.loc 1 199 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 208 48
	lw	a0,4(a3)
	add	a0,a0,a4
	sw	a1,4(a0)
	.loc 1 209 5 is_stmt 1
	.loc 1 209 45 is_stmt 0
	lw	a3,4(a3)
	.loc 1 210 5
	andi	a0,a5,0xff
	li	a1,0
.LVL63:
	.loc 1 209 45
	add	a4,a3,a4
	sw	a2,8(a4)
	.loc 1 210 5 is_stmt 1
	li	a2,0
.LVL64:
	sw	a0,-20(s0)
	call	DMA_IntMask
.LVL65:
	.loc 1 211 5
	lw	a0,-20(s0)
	li	a2,0
	li	a1,1
	call	DMA_IntMask
.LVL66:
	.loc 1 213 5
	.loc 1 214 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	.loc 1 213 12
	li	a0,0
	.loc 1 214 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL67:
.L51:
	.loc 1 202 16
	li	a0,-1
.LVL68:
	ret
.LVL69:
.L54:
	.loc 1 214 1
	ret
	.cfi_endproc
.LFE36:
	.size	hosal_dma_irq_callback_set, .-hosal_dma_irq_callback_set
	.section	.text.hosal_dma_finalize,"ax",@progbits
	.align	1
	.globl	hosal_dma_finalize
	.type	hosal_dma_finalize, @function
hosal_dma_finalize:
.LFB37:
	.loc 1 224 1 is_stmt 1
	.cfi_startproc
	.loc 1 225 5
	.loc 1 224 1 is_stmt 0
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
	.loc 1 225 9
	lui	s1,%hi(.LANCHOR0)
	.loc 1 224 1
	.loc 1 225 9
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 225 8
	lw	a5,0(s1)
	li	a0,-1
	beq	a5,zero,.L57
	.loc 1 230 5 is_stmt 1
	call	DMA_Disable
.LVL70:
	.loc 1 231 5
	li	a0,31
	call	bl_irq_disable
.LVL71:
	.loc 1 232 5
	lw	a0,0(s1)
	call	free
.LVL72:
	.loc 1 233 5
	.loc 1 233 12 is_stmt 0
	li	a0,0
.L57:
	.loc 1 234 1
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
.LFE37:
	.size	hosal_dma_finalize, .-hosal_dma_finalize
	.section	.sbss.gp_hosal_dma_dev,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gp_hosal_dma_dev, @object
	.size	gp_hosal_dma_dev, 4
gp_hosal_dma_dev:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_dma.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x783
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF130
	.byte	0xc
	.4byte	.LASF131
	.4byte	.LASF132
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
	.byte	0x21
	.byte	0x10
	.4byte	0x98
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x7
	.4byte	0xae
	.byte	0x8
	.4byte	0x83
	.byte	0x8
	.4byte	0x5b
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0xc
	.byte	0x3
	.byte	0x26
	.byte	0x8
	.4byte	0xe3
	.byte	0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x27
	.byte	0xd
	.4byte	0x41
	.byte	0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x28
	.byte	0x15
	.4byte	0x8c
	.byte	0x4
	.byte	0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x29
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0xc
	.byte	0x3
	.byte	0x2f
	.byte	0x10
	.4byte	0x118
	.byte	0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x118
	.byte	0x4
	.byte	0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0x32
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xae
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x33
	.byte	0x3
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF22
	.byte	0x3
	.byte	0x38
	.byte	0xd
	.4byte	0x75
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x41
	.byte	0xe
	.4byte	0x2e3
	.byte	0xc
	.4byte	.LASF23
	.byte	0x3
	.byte	0xc
	.4byte	.LASF24
	.byte	0x7
	.byte	0xc
	.4byte	.LASF25
	.byte	0xb
	.byte	0xc
	.4byte	.LASF26
	.byte	0xc
	.byte	0xc
	.4byte	.LASF27
	.byte	0x10
	.byte	0xc
	.4byte	.LASF28
	.byte	0x11
	.byte	0xc
	.4byte	.LASF29
	.byte	0x12
	.byte	0xc
	.4byte	.LASF30
	.byte	0x13
	.byte	0xc
	.4byte	.LASF31
	.byte	0x14
	.byte	0xc
	.4byte	.LASF32
	.byte	0x15
	.byte	0xc
	.4byte	.LASF33
	.byte	0x16
	.byte	0xc
	.4byte	.LASF34
	.byte	0x17
	.byte	0xc
	.4byte	.LASF35
	.byte	0x18
	.byte	0xc
	.4byte	.LASF36
	.byte	0x19
	.byte	0xc
	.4byte	.LASF37
	.byte	0x1a
	.byte	0xc
	.4byte	.LASF38
	.byte	0x1b
	.byte	0xc
	.4byte	.LASF39
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF40
	.byte	0x1d
	.byte	0xc
	.4byte	.LASF41
	.byte	0x1e
	.byte	0xc
	.4byte	.LASF42
	.byte	0x1f
	.byte	0xc
	.4byte	.LASF43
	.byte	0x20
	.byte	0xc
	.4byte	.LASF44
	.byte	0x21
	.byte	0xc
	.4byte	.LASF45
	.byte	0x22
	.byte	0xc
	.4byte	.LASF46
	.byte	0x23
	.byte	0xc
	.4byte	.LASF47
	.byte	0x24
	.byte	0xc
	.4byte	.LASF48
	.byte	0x25
	.byte	0xc
	.4byte	.LASF49
	.byte	0x26
	.byte	0xc
	.4byte	.LASF50
	.byte	0x27
	.byte	0xc
	.4byte	.LASF51
	.byte	0x28
	.byte	0xc
	.4byte	.LASF52
	.byte	0x29
	.byte	0xc
	.4byte	.LASF53
	.byte	0x2a
	.byte	0xc
	.4byte	.LASF54
	.byte	0x2b
	.byte	0xc
	.4byte	.LASF55
	.byte	0x2c
	.byte	0xc
	.4byte	.LASF56
	.byte	0x2d
	.byte	0xc
	.4byte	.LASF57
	.byte	0x2e
	.byte	0xc
	.4byte	.LASF58
	.byte	0x2f
	.byte	0xc
	.4byte	.LASF59
	.byte	0x30
	.byte	0xc
	.4byte	.LASF60
	.byte	0x31
	.byte	0xc
	.4byte	.LASF61
	.byte	0x32
	.byte	0xc
	.4byte	.LASF62
	.byte	0x33
	.byte	0xc
	.4byte	.LASF63
	.byte	0x34
	.byte	0xc
	.4byte	.LASF64
	.byte	0x35
	.byte	0xc
	.4byte	.LASF65
	.byte	0x36
	.byte	0xc
	.4byte	.LASF66
	.byte	0x37
	.byte	0xc
	.4byte	.LASF67
	.byte	0x38
	.byte	0xc
	.4byte	.LASF68
	.byte	0x39
	.byte	0xc
	.4byte	.LASF69
	.byte	0x3a
	.byte	0xc
	.4byte	.LASF70
	.byte	0x3b
	.byte	0xc
	.4byte	.LASF71
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF72
	.byte	0x3d
	.byte	0xc
	.4byte	.LASF73
	.byte	0x3e
	.byte	0xc
	.4byte	.LASF74
	.byte	0x3f
	.byte	0xc
	.4byte	.LASF75
	.byte	0x40
	.byte	0xc
	.4byte	.LASF76
	.byte	0x41
	.byte	0xc
	.4byte	.LASF77
	.byte	0x42
	.byte	0xc
	.4byte	.LASF78
	.byte	0x43
	.byte	0xc
	.4byte	.LASF79
	.byte	0x44
	.byte	0xc
	.4byte	.LASF80
	.byte	0x45
	.byte	0xc
	.4byte	.LASF81
	.byte	0x46
	.byte	0xc
	.4byte	.LASF82
	.byte	0x47
	.byte	0xc
	.4byte	.LASF83
	.byte	0x48
	.byte	0xc
	.4byte	.LASF84
	.byte	0x49
	.byte	0xc
	.4byte	.LASF85
	.byte	0x4a
	.byte	0xc
	.4byte	.LASF86
	.byte	0x4b
	.byte	0xc
	.4byte	.LASF87
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF88
	.byte	0x4d
	.byte	0xc
	.4byte	.LASF89
	.byte	0x4e
	.byte	0xc
	.4byte	.LASF90
	.byte	0x4f
	.byte	0xc
	.4byte	.LASF91
	.byte	0x50
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.4byte	0x2fe
	.byte	0xc
	.4byte	.LASF92
	.byte	0
	.byte	0xc
	.4byte	.LASF93
	.byte	0x1
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x77
	.byte	0xe
	.4byte	0x32b
	.byte	0xc
	.4byte	.LASF94
	.byte	0
	.byte	0xc
	.4byte	.LASF95
	.byte	0x1
	.byte	0xc
	.4byte	.LASF96
	.byte	0x2
	.byte	0xc
	.4byte	.LASF97
	.byte	0x3
	.byte	0xc
	.4byte	.LASF98
	.byte	0x4
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x82
	.byte	0xe
	.4byte	0x34c
	.byte	0xc
	.4byte	.LASF99
	.byte	0
	.byte	0xc
	.4byte	.LASF100
	.byte	0x1
	.byte	0xc
	.4byte	.LASF101
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	.LASF110
	.byte	0x1
	.byte	0x10
	.byte	0x19
	.4byte	0x35e
	.byte	0x5
	.byte	0x3
	.4byte	gp_hosal_dma_dev
	.byte	0x6
	.byte	0x4
	.4byte	0x11e
	.byte	0xe
	.4byte	.LASF102
	.byte	0x1
	.byte	0xdf
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a4
	.byte	0xf
	.4byte	.LVL70
	.4byte	0x6fd
	.byte	0x10
	.4byte	.LVL71
	.4byte	0x70a
	.4byte	0x39a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0xf
	.4byte	.LVL72
	.4byte	0x716
	.byte	0
	.byte	0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0xc6
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x42b
	.byte	0x12
	.4byte	.LASF104
	.byte	0x1
	.byte	0xc6
	.byte	0x31
	.4byte	0x12a
	.4byte	.LLST15
	.byte	0x13
	.string	"pfn"
	.byte	0x1
	.byte	0xc6
	.byte	0x47
	.4byte	0x8c
	.4byte	.LLST16
	.byte	0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc6
	.byte	0x52
	.4byte	0x83
	.4byte	.LLST17
	.byte	0x10
	.4byte	.LVL65
	.4byte	0x722
	.4byte	0x40e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.4byte	.LVL66
	.4byte	0x722
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF105
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x47a
	.byte	0x12
	.4byte	.LASF104
	.byte	0x1
	.byte	0xb1
	.byte	0x2a
	.4byte	0x12a
	.4byte	.LLST13
	.byte	0x10
	.4byte	.LVL50
	.4byte	0x72f
	.4byte	0x469
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL51
	.4byte	0x73b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF106
	.byte	0x1
	.byte	0x9f
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b6
	.byte	0x12
	.4byte	.LASF104
	.byte	0x1
	.byte	0x9f
	.byte	0x2b
	.4byte	0x12a
	.4byte	.LLST12
	.byte	0x14
	.4byte	.LVL46
	.4byte	0x748
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF107
	.byte	0x1
	.byte	0x86
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x531
	.byte	0x12
	.4byte	.LASF104
	.byte	0x1
	.byte	0x86
	.byte	0x2d
	.4byte	0x12a
	.4byte	.LLST14
	.byte	0x10
	.4byte	.LVL56
	.4byte	0x42b
	.4byte	0x4f4
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL57
	.4byte	0x722
	.4byte	0x514
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x14
	.4byte	.LVL58
	.4byte	0x722
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF108
	.byte	0x1
	.byte	0x6b
	.byte	0x12
	.4byte	0x12a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x56a
	.byte	0x12
	.4byte	.LASF109
	.byte	0x1
	.byte	0x6b
	.byte	0x2d
	.4byte	0x75
	.4byte	.LLST10
	.byte	0x15
	.string	"i"
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST11
	.byte	0
	.byte	0xe
	.4byte	.LASF111
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x62e
	.byte	0x15
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST9
	.byte	0x10
	.4byte	.LVL26
	.4byte	0x755
	.4byte	0x5aa
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x10
	.4byte	.LVL27
	.4byte	0x755
	.4byte	0x5c3
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xf
	.4byte	.LVL28
	.4byte	0x761
	.byte	0x10
	.4byte	.LVL30
	.4byte	0x76e
	.4byte	0x5e8
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	__dma_irq_process
	.byte	0
	.byte	0x10
	.4byte	.LVL31
	.4byte	0x77a
	.4byte	0x5fb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x10
	.4byte	.LVL33
	.4byte	0x73b
	.4byte	0x611
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x14
	.4byte	.LVL34
	.4byte	0x722
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0x6c
	.byte	0x94
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF133
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x6fd
	.byte	0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.byte	0x25
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x15
	.string	"ch"
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LASF112
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST2
	.byte	0x17
	.4byte	.LASF113
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST3
	.byte	0x17
	.4byte	.LASF114
	.byte	0x1
	.byte	0x17
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF116
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.4byte	0x75
	.byte	0x1
	.byte	0x65
	.byte	0x17
	.4byte	.LASF117
	.byte	0x1
	.byte	0x19
	.byte	0x16
	.4byte	0x35e
	.4byte	.LLST6
	.byte	0x15
	.string	"pfn"
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x8c
	.4byte	.LLST7
	.byte	0x17
	.4byte	.LASF118
	.byte	0x1
	.byte	0x1b
	.byte	0xb
	.4byte	0x83
	.4byte	.LLST8
	.byte	0x18
	.4byte	.LVL23
	.4byte	0x6f0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL25
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x13a
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x8
	.byte	0x5e
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x144
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x9
	.byte	0x2b
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x141
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x140
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x8
	.byte	0x5a
	.byte	0x7
	.byte	0x1a
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x139
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x7
	.byte	0x15
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x7
	.byte	0x3
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1a
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
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x2
	.byte	0x7e
	.byte	0x8
	.4byte	.LVL65-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56-1
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL32
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x9
	.byte	0x79
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x84
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x9
	.byte	0x79
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x84
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x84
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"DMA_CH_MAX"
.LASF132:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF31:
	.string	"SEC_BMX_ERR_IRQn"
.LASF125:
	.string	"DMA_Channel_Enable"
.LASF65:
	.string	"TIMER_WDT_IRQn"
.LASF102:
	.string	"hosal_dma_finalize"
.LASF29:
	.string	"L1C_BMX_ERR_IRQn"
.LASF16:
	.string	"hosal_dma_chan"
.LASF9:
	.string	"long long unsigned int"
.LASF127:
	.string	"DMA_Enable"
.LASF108:
	.string	"hosal_dma_chan_request"
.LASF121:
	.string	"free"
.LASF34:
	.string	"SDIO_IRQn"
.LASF119:
	.string	"DMA_Disable"
.LASF3:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF114:
	.string	"interr_val"
.LASF129:
	.string	"bl_irq_enable"
.LASF25:
	.string	"MEXT_IRQn"
.LASF15:
	.string	"p_arg"
.LASF67:
	.string	"RESERVED11"
.LASF68:
	.string	"RESERVED12"
.LASF69:
	.string	"RESERVED13"
.LASF70:
	.string	"RESERVED14"
.LASF72:
	.string	"RESERVED16"
.LASF73:
	.string	"RESERVED17"
.LASF74:
	.string	"RESERVED18"
.LASF75:
	.string	"RESERVED19"
.LASF2:
	.string	"long int"
.LASF107:
	.string	"hosal_dma_chan_release"
.LASF71:
	.string	"GPIO_INT0_IRQn"
.LASF52:
	.string	"GPADC_DMA_IRQn"
.LASF99:
	.string	"DMA_INT_TCOMPLETED"
.LASF59:
	.string	"I2C_IRQn"
.LASF17:
	.string	"hosal_dma_dev"
.LASF32:
	.string	"RF_TOP_INT0_IRQn"
.LASF76:
	.string	"RESERVED20"
.LASF93:
	.string	"MASK"
.LASF10:
	.string	"unsigned int"
.LASF81:
	.string	"WIFI_IRQn"
.LASF77:
	.string	"PDS_WAKEUP_IRQn"
.LASF8:
	.string	"long unsigned int"
.LASF106:
	.string	"hosal_dma_chan_start"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"hosal_dma_irq_t"
.LASF80:
	.string	"BOR_IRQn"
.LASF103:
	.string	"hosal_dma_irq_callback_set"
.LASF111:
	.string	"hosal_dma_init"
.LASF36:
	.string	"SEC_GMAC_IRQn"
.LASF117:
	.string	"dma_dev"
.LASF123:
	.string	"bl_dma_int_clear"
.LASF14:
	.string	"callback"
.LASF82:
	.string	"BZ_PHY_IRQn"
.LASF101:
	.string	"DMA_INT_ALL"
.LASF22:
	.string	"hosal_dma_chan_t"
.LASF19:
	.string	"used_chan"
.LASF56:
	.string	"UART0_IRQn"
.LASF92:
	.string	"UNMASK"
.LASF41:
	.string	"SEC_SHA_IRQn"
.LASF40:
	.string	"SEC_AES_IRQn"
.LASF94:
	.string	"DMA_CH0"
.LASF95:
	.string	"DMA_CH1"
.LASF96:
	.string	"DMA_CH2"
.LASF97:
	.string	"DMA_CH3"
.LASF100:
	.string	"DMA_INT_ERR"
.LASF120:
	.string	"bl_irq_disable"
.LASF110:
	.string	"gp_hosal_dma_dev"
.LASF23:
	.string	"MSOFT_IRQn"
.LASF61:
	.string	"PWM_IRQn"
.LASF42:
	.string	"DMA_ALL_IRQn"
.LASF89:
	.string	"MAC_PORT_TRG_IRQn"
.LASF87:
	.string	"MAC_TX_TRG_IRQn"
.LASF116:
	.string	"interr_flag"
.LASF20:
	.string	"priv"
.LASF57:
	.string	"UART1_IRQn"
.LASF13:
	.string	"used"
.LASF43:
	.string	"RESERVED0"
.LASF44:
	.string	"RESERVED1"
.LASF45:
	.string	"RESERVED2"
.LASF48:
	.string	"RESERVED3"
.LASF49:
	.string	"RESERVED4"
.LASF51:
	.string	"RESERVED5"
.LASF55:
	.string	"RESERVED6"
.LASF58:
	.string	"RESERVED7"
.LASF60:
	.string	"RESERVED8"
.LASF62:
	.string	"RESERVED9"
.LASF83:
	.string	"BLE_IRQn"
.LASF47:
	.string	"IRRX_IRQn"
.LASF38:
	.string	"SEC_PKA_IRQn"
.LASF4:
	.string	"unsigned char"
.LASF84:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF50:
	.string	"SF_CTRL_IRQn"
.LASF30:
	.string	"L1C_BMX_TO_IRQn"
.LASF1:
	.string	"short int"
.LASF46:
	.string	"IRTX_IRQn"
.LASF86:
	.string	"MAC_RX_TRG_IRQn"
.LASF109:
	.string	"flag"
.LASF128:
	.string	"bl_irq_register_with_ctx"
.LASF53:
	.string	"EFUSE_IRQn"
.LASF7:
	.string	"uint32_t"
.LASF28:
	.string	"BMX_TO_IRQn"
.LASF104:
	.string	"chan"
.LASF11:
	.string	"char"
.LASF24:
	.string	"MTIME_IRQn"
.LASF21:
	.string	"hosal_dma_dev_t"
.LASF112:
	.string	"intclr"
.LASF88:
	.string	"MAC_GEN_IRQn"
.LASF131:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_dma.c"
.LASF118:
	.string	"parg"
.LASF27:
	.string	"BMX_ERR_IRQn"
.LASF85:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF63:
	.string	"TIMER_CH0_IRQn"
.LASF37:
	.string	"SEC_CDET_IRQn"
.LASF33:
	.string	"RF_TOP_INT1_IRQn"
.LASF78:
	.string	"HBN_OUT0_IRQn"
.LASF130:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF66:
	.string	"RESERVED10"
.LASF90:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF122:
	.string	"DMA_IntMask"
.LASF91:
	.string	"IRQn_LAST"
.LASF126:
	.string	"calloc"
.LASF6:
	.string	"uint8_t"
.LASF26:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF133:
	.string	"__dma_irq_process"
.LASF39:
	.string	"SEC_TRNG_IRQn"
.LASF18:
	.string	"max_chans"
.LASF35:
	.string	"DMA_BMX_ERR_IRQn"
.LASF54:
	.string	"SPI_IRQn"
.LASF113:
	.string	"tmpval"
.LASF64:
	.string	"TIMER_CH1_IRQn"
.LASF105:
	.string	"hosal_dma_chan_stop"
.LASF79:
	.string	"HBN_OUT1_IRQn"
.LASF124:
	.string	"DMA_Channel_Disable"
.LASF115:
	.string	"tc_flag"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
