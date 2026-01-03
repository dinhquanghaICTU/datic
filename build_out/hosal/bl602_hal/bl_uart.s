	.file	"bl_uart.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.uart_generic_notify_handler,"ax",@progbits
	.align	1
	.type	uart_generic_notify_handler, @function
uart_generic_notify_handler:
.LFB27:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.c"
	.loc 1 460 1
	.cfi_startproc
.LVL0:
	.loc 1 461 5
	.loc 1 462 5
	.loc 1 463 5
	.loc 1 464 5
	.loc 1 465 5
	.loc 1 460 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 465 14
	lui	a5,%hi(.LANCHOR0)
	.loc 1 460 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 465 14
	slli	a4,a0,2
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 460 1
	.loc 1 465 14
	add	a5,a5,a4
	lw	s4,0(a5)
.LVL1:
	.loc 1 467 5 is_stmt 1
	.loc 1 460 1 is_stmt 0
	mv	s1,a0
	.loc 1 467 12
	lw	s3,32(s4)
.LVL2:
	.loc 1 468 5 is_stmt 1
	.loc 1 468 13 is_stmt 0
	lw	s2,36(s4)
.LVL3:
	.loc 1 471 5 is_stmt 1
	.loc 1 471 20 is_stmt 0
	andi	a5,s3,1
	.loc 1 471 8
	beq	a5,zero,.L2
	.loc 1 471 57 discriminator 1
	andi	a5,s2,1
	.loc 1 471 41 discriminator 1
	bne	a5,zero,.L2
	.loc 1 473 9 is_stmt 1
	.loc 1 473 47 is_stmt 0
	li	a5,1
	sw	a5,40(s4)
.L2:
	.loc 1 477 5 is_stmt 1
	.loc 1 477 20 is_stmt 0
	andi	a5,s3,2
	.loc 1 477 8
	beq	a5,zero,.L4
	.loc 1 477 57 discriminator 1
	andi	a5,s2,2
	.loc 1 477 41 discriminator 1
	bne	a5,zero,.L4
	.loc 1 479 9 is_stmt 1
	.loc 1 479 47 is_stmt 0
	li	a5,2
	.loc 1 482 12
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	.loc 1 479 47
	sw	a5,40(s4)
	.loc 1 482 9 is_stmt 1
	.loc 1 482 12 is_stmt 0
	slli	a5,s1,4
	add	a5,a4,a5
	lw	a4,0(a5)
.LVL4:
	.loc 1 483 9 is_stmt 1
	.loc 1 485 9
	.loc 1 485 12 is_stmt 0
	beq	a4,zero,.L4
	.loc 1 488 13 is_stmt 1
	lw	a0,4(a5)
.LVL5:
	jalr	a4
.LVL6:
.L4:
	.loc 1 493 5
	.loc 1 493 20 is_stmt 0
	andi	a5,s3,4
	.loc 1 493 8
	beq	a5,zero,.L6
	.loc 1 493 57 discriminator 1
	andi	a5,s2,4
	.loc 1 493 41 discriminator 1
	bne	a5,zero,.L6
	.loc 1 496 9 is_stmt 1
	.loc 1 496 12 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	slli	a5,s1,4
	add	a5,a4,a5
	lw	a4,8(a5)
.LVL7:
	.loc 1 497 9 is_stmt 1
	.loc 1 499 9
	.loc 1 499 12 is_stmt 0
	beq	a4,zero,.L6
	.loc 1 502 13 is_stmt 1
	lw	a0,12(a5)
	jalr	a4
.LVL8:
.L6:
	.loc 1 507 5
	.loc 1 507 20 is_stmt 0
	andi	a5,s3,8
	.loc 1 507 8
	beq	a5,zero,.L7
	.loc 1 507 57 discriminator 1
	andi	a5,s2,8
	.loc 1 507 41 discriminator 1
	bne	a5,zero,.L7
	.loc 1 511 9 is_stmt 1
	.loc 1 511 12 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	slli	a5,s1,4
	add	a5,a4,a5
	lw	a4,0(a5)
.LVL9:
	.loc 1 512 9 is_stmt 1
	.loc 1 514 9
	.loc 1 514 12 is_stmt 0
	beq	a4,zero,.L7
	.loc 1 517 13 is_stmt 1
	lw	a0,4(a5)
	jalr	a4
.LVL10:
.L7:
	.loc 1 522 5
	.loc 1 522 20 is_stmt 0
	andi	a5,s3,16
	.loc 1 522 8
	beq	a5,zero,.L9
	.loc 1 522 57 discriminator 1
	andi	a5,s2,16
	.loc 1 522 41 discriminator 1
	bne	a5,zero,.L9
	.loc 1 524 9 is_stmt 1
	.loc 1 527 12 is_stmt 0
	lui	a0,%hi(.LANCHOR1)
	slli	s1,s1,4
	addi	a0,a0,%lo(.LANCHOR1)
	.loc 1 524 47
	li	a5,16
	.loc 1 527 12
	add	s1,a0,s1
	.loc 1 524 47
	sw	a5,40(s4)
	.loc 1 527 9 is_stmt 1
	.loc 1 527 12 is_stmt 0
	lw	a5,0(s1)
.LVL11:
	.loc 1 528 9 is_stmt 1
	.loc 1 530 9
	.loc 1 530 12 is_stmt 0
	beq	a5,zero,.L9
	.loc 1 533 13 is_stmt 1
	lw	a0,4(s1)
	jalr	a5
.LVL12:
.L9:
	.loc 1 538 5
	.loc 1 538 20 is_stmt 0
	andi	a5,s3,32
	.loc 1 538 8
	beq	a5,zero,.L1
	.loc 1 538 57 discriminator 1
	andi	a5,s2,32
	.loc 1 538 41 discriminator 1
	bne	a5,zero,.L1
	.loc 1 540 9 is_stmt 1
	.loc 1 540 47 is_stmt 0
	li	a5,32
	sw	a5,40(s4)
	.loc 1 544 5 is_stmt 1
	.loc 1 546 5
	.loc 1 549 5
	.loc 1 551 5
	.loc 1 553 5
.L1:
	.loc 1 554 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL13:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL14:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL15:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	uart_generic_notify_handler, .-uart_generic_notify_handler
	.section	.text.UART0_IRQHandler,"ax",@progbits
	.align	1
	.globl	UART0_IRQHandler
	.type	UART0_IRQHandler, @function
UART0_IRQHandler:
.LFB28:
	.loc 1 557 1 is_stmt 1
	.cfi_startproc
	.loc 1 558 5
	.loc 1 557 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 559 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 558 5
	li	a0,0
	.loc 1 559 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 558 5
	tail	uart_generic_notify_handler
.LVL16:
	.cfi_endproc
.LFE28:
	.size	UART0_IRQHandler, .-UART0_IRQHandler
	.section	.text.UART1_IRQHandler,"ax",@progbits
	.align	1
	.globl	UART1_IRQHandler
	.type	UART1_IRQHandler, @function
UART1_IRQHandler:
.LFB29:
	.loc 1 562 1 is_stmt 1
	.cfi_startproc
	.loc 1 563 5
	.loc 1 562 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 564 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 563 5
	li	a0,1
	.loc 1 564 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 563 5
	tail	uart_generic_notify_handler
.LVL17:
	.cfi_endproc
.LFE29:
	.size	UART1_IRQHandler, .-UART1_IRQHandler
	.section	.text.gpio_init,"ax",@progbits
	.align	1
	.type	gpio_init, @function
gpio_init:
.LFB8:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 38 5
	.loc 1 30 1 is_stmt 0
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
	sw	s8,24(sp)
	sw	s9,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 36 17
	li	a5,7
	sb	a5,-55(s0)
	.loc 1 39 18
	li	s3,2
	.loc 1 34 15
	li	a5,257
	.loc 1 30 1
	mv	s7,a0
	.loc 1 41 5
	addi	a0,s0,-56
.LVL19:
	.loc 1 30 1
	mv	s6,a1
	mv	s2,a3
	.loc 1 34 15
	sh	a5,-52(s0)
	.loc 1 30 1
	mv	s5,a2
	mv	s1,a4
	.loc 1 38 17
	sb	a2,-56(s0)
	.loc 1 39 5 is_stmt 1
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 39 18 is_stmt 0
	sh	s3,-54(s0)
	.loc 1 41 5
	call	GLB_GPIO_Init
.LVL20:
	.loc 1 43 5 is_stmt 1
	.loc 1 46 5 is_stmt 0
	addi	a0,s0,-56
	.loc 1 43 17
	sb	s6,-56(s0)
	.loc 1 44 5 is_stmt 1
	.loc 1 45 5
	.loc 1 44 18 is_stmt 0
	sh	s3,-54(s0)
	.loc 1 46 5 is_stmt 1
	.loc 1 48 25 is_stmt 0
	addi	s4,s2,-1
	.loc 1 46 5
	call	GLB_GPIO_Init
.LVL21:
	.loc 1 48 5 is_stmt 1
	.loc 1 48 25 is_stmt 0
	andi	s4,s4,0xff
	.loc 1 48 8
	li	a5,253
	bgtu	s4,a5,.L42
	.loc 1 50 9 is_stmt 1
	.loc 1 53 9 is_stmt 0
	addi	a0,s0,-56
	.loc 1 50 21
	sb	s2,-56(s0)
	.loc 1 51 9 is_stmt 1
	.loc 1 52 9
	.loc 1 51 22 is_stmt 0
	sh	s3,-54(s0)
	.loc 1 53 9 is_stmt 1
	call	GLB_GPIO_Init
.LVL22:
.L42:
	.loc 1 56 5
	.loc 1 56 25 is_stmt 0
	addi	s3,s1,-1
	andi	s3,s3,0xff
	.loc 1 56 8
	li	a5,253
	bgtu	s3,a5,.L43
	.loc 1 58 9 is_stmt 1
	.loc 1 59 22 is_stmt 0
	li	a5,2
	.loc 1 61 9
	addi	a0,s0,-56
	.loc 1 58 21
	sb	s1,-56(s0)
	.loc 1 59 9 is_stmt 1
	.loc 1 60 9
	.loc 1 59 22 is_stmt 0
	sh	a5,-54(s0)
	.loc 1 61 9 is_stmt 1
	call	GLB_GPIO_Init
.LVL23:
.L43:
	.loc 1 65 5
	.loc 1 65 8 is_stmt 0
	beq	s7,zero,.L47
	.loc 1 77 20
	li	s7,4
	.loc 1 76 20
	li	s8,5
	.loc 1 75 19
	li	s9,7
	.loc 1 74 19
	li	a1,6
.L44:
.LVL24:
	.loc 1 83 5 is_stmt 1
	andi	a0,s6,7
	call	GLB_UART_Fun_Sel
.LVL25:
	.loc 1 84 5
	mv	a1,s9
	andi	a0,s5,7
	call	GLB_UART_Fun_Sel
.LVL26:
	.loc 1 86 5
	.loc 1 86 8 is_stmt 0
	li	a5,253
	bgtu	s4,a5,.L45
	.loc 1 88 9 is_stmt 1
	mv	a1,s8
	andi	a0,s2,7
	call	GLB_UART_Fun_Sel
.LVL27:
.L45:
	.loc 1 90 5
	.loc 1 90 8 is_stmt 0
	li	a5,253
	bgtu	s3,a5,.L41
	.loc 1 92 9 is_stmt 1
	mv	a1,s7
	andi	a0,s1,7
	call	GLB_UART_Fun_Sel
.LVL28:
.L41:
	.loc 1 94 1 is_stmt 0
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
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
.LVL29:
	lw	s8,24(sp)
	.cfi_restore 24
.LVL30:
	lw	s9,20(sp)
	.cfi_restore 25
.LVL31:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L47:
	.cfi_restore_state
	.loc 1 70 20
	li	s7,0
	.loc 1 69 20
	li	s8,1
	.loc 1 68 19
	li	s9,3
	.loc 1 67 19
	li	a1,2
	j	.L44
	.cfi_endproc
.LFE8:
	.size	gpio_init, .-gpio_init
	.section	.text.bl_uart_init,"ax",@progbits
	.align	1
	.globl	bl_uart_init
	.type	bl_uart_init, @function
bl_uart_init:
.LFB9:
	.loc 1 97 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 98 5
	.loc 1 99 5
	.loc 1 101 5
	.loc 1 97 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	mv	s4,a1
	.loc 1 101 19
	lui	a1,%hi(.LANCHOR2)
.LVL33:
	addi	s2,a1,%lo(.LANCHOR2)
	.loc 1 97 1
	.loc 1 101 19
	addi	a1,a1,%lo(.LANCHOR2)
	.loc 1 97 1
	mv	s1,a0
	mv	s5,a2
	.loc 1 101 19
	addi	a0,s0,-84
.LVL34:
	li	a2,36
.LVL35:
	.loc 1 97 1
	mv	s3,a5
	mv	s6,a3
	mv	s7,a4
	.loc 1 101 19
	call	memcpy
.LVL36:
	.loc 1 113 5 is_stmt 1
	.loc 1 113 23 is_stmt 0
	addi	a1,s2,36
	li	a2,12
	addi	a0,s0,-96
	.loc 1 122 11
	lui	s2,%hi(.LANCHOR3)
	.loc 1 113 23
	call	memcpy
.LVL37:
	.loc 1 122 5 is_stmt 1
	.loc 1 122 11 is_stmt 0
	addi	s2,s2,%lo(.LANCHOR3)
	.loc 1 122 8
	lbu	a5,0(s2)
	bne	a5,zero,.L50
	.loc 1 124 9 is_stmt 1
	li	a2,3
	li	a1,1
	li	a0,1
	call	GLB_Set_UART_CLK
.LVL38:
	.loc 1 125 9
	.loc 1 125 23 is_stmt 0
	li	a5,1
	sb	a5,0(s2)
.L50:
	.loc 1 129 5 is_stmt 1
	mv	a4,s7
	mv	a3,s6
	mv	a2,s5
	mv	a1,s4
	mv	a0,s1
	call	gpio_init
.LVL39:
	.loc 1 131 5
	.loc 1 132 21 is_stmt 0
	li	a5,40001536
	addi	a5,a5,-1536
	.loc 1 135 5
	li	a2,1
	li	a1,8
	mv	a0,s1
	.loc 1 132 21
	sw	a5,-84(s0)
	.loc 1 131 22
	sw	s3,-80(s0)
	.loc 1 132 5 is_stmt 1
	.loc 1 135 5
	call	UART_IntMask
.LVL40:
	.loc 1 138 5
	li	a1,2
	mv	a0,s1
	call	UART_Disable
.LVL41:
	.loc 1 141 5
	addi	a1,s0,-84
	mv	a0,s1
	call	UART_Init
.LVL42:
	.loc 1 144 5
	li	a1,1
	mv	a0,s1
	call	UART_TxFreeRun
.LVL43:
	.loc 1 147 5
	addi	a1,s0,-96
	mv	a0,s1
	call	UART_FifoConfig
.LVL44:
	.loc 1 150 5
	mv	a0,s1
	li	a1,2
	call	UART_Enable
.LVL45:
	.loc 1 152 5
	.loc 1 153 1 is_stmt 0
	lw	ra,92(sp)
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
.LVL46:
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	li	a0,0
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_uart_init, .-bl_uart_init
	.section	.text.bl_uart_init_ex,"ax",@progbits
	.align	1
	.globl	bl_uart_init_ex
	.type	bl_uart_init_ex, @function
bl_uart_init_ex:
.LFB10:
	.loc 1 157 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 158 5
	.loc 1 159 5
	.loc 1 161 5
	.loc 1 157 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	mv	s8,a1
	.loc 1 161 19
	lui	a1,%hi(.LANCHOR2)
.LVL48:
	addi	s4,a1,%lo(.LANCHOR2)
	.loc 1 157 1
	.loc 1 161 19
	addi	a1,a1,%lo(.LANCHOR2)
	.loc 1 157 1
	mv	s1,a0
	mv	s9,a2
	.loc 1 161 19
	addi	a0,s0,-84
.LVL49:
	li	a2,36
.LVL50:
	.loc 1 157 1
	mv	s7,a5
	mv	s3,a3
	mv	s2,a4
	mv	s6,a6
	mv	s5,a7
	.loc 1 161 19
	call	memcpy
.LVL51:
	.loc 1 173 5 is_stmt 1
	.loc 1 173 23 is_stmt 0
	addi	a1,s4,36
	li	a2,12
	addi	a0,s0,-96
	.loc 1 182 11
	lui	s4,%hi(.LANCHOR4)
	.loc 1 173 23
	call	memcpy
.LVL52:
	.loc 1 182 5 is_stmt 1
	.loc 1 182 11 is_stmt 0
	addi	s4,s4,%lo(.LANCHOR4)
	.loc 1 182 8
	lbu	a5,0(s4)
	bne	a5,zero,.L53
	.loc 1 184 9 is_stmt 1
	li	a2,3
	li	a1,1
	li	a0,1
	call	GLB_Set_UART_CLK
.LVL53:
	.loc 1 185 9
	.loc 1 185 23 is_stmt 0
	li	a5,1
	sb	a5,0(s4)
.L53:
	.loc 1 189 5 is_stmt 1
	mv	a3,s3
	mv	a4,s2
	mv	a2,s9
	mv	a1,s8
	mv	a0,s1
	call	gpio_init
.LVL54:
	.loc 1 191 5
	.loc 1 192 21 is_stmt 0
	li	a5,40001536
	addi	a5,a5,-1536
	sw	a5,-84(s0)
	.loc 1 195 20
	lw	a5,0(s0)
	.loc 1 197 25
	addi	s3,s3,-1
	.loc 1 191 22
	sw	s7,-80(s0)
	.loc 1 192 5 is_stmt 1
	.loc 1 193 5
	.loc 1 195 20 is_stmt 0
	sw	a5,-68(s0)
	.loc 1 193 22
	sw	s6,-76(s0)
	.loc 1 194 5 is_stmt 1
	.loc 1 194 22 is_stmt 0
	sw	s5,-72(s0)
	.loc 1 195 5 is_stmt 1
	.loc 1 197 5
	.loc 1 197 8 is_stmt 0
	andi	s3,s3,0xff
	li	a5,253
	bgtu	s3,a5,.L54
	.loc 1 199 9 is_stmt 1
	.loc 1 199 32 is_stmt 0
	li	a5,1
	sw	a5,-64(s0)
.L54:
	.loc 1 201 5 is_stmt 1
	.loc 1 201 25 is_stmt 0
	addi	s2,s2,-1
	.loc 1 201 8
	andi	s2,s2,0xff
	li	a5,253
	bgtu	s2,a5,.L55
	.loc 1 203 9 is_stmt 1
	.loc 1 203 36 is_stmt 0
	li	a5,1
	sw	a5,-56(s0)
.L55:
	.loc 1 207 5 is_stmt 1
	li	a2,1
	li	a1,8
	mv	a0,s1
	call	UART_IntMask
.LVL55:
	.loc 1 210 5
	li	a1,2
	mv	a0,s1
	call	UART_Disable
.LVL56:
	.loc 1 213 5
	addi	a1,s0,-84
	mv	a0,s1
	call	UART_Init
.LVL57:
	.loc 1 216 5
	li	a1,1
	mv	a0,s1
	call	UART_TxFreeRun
.LVL58:
	.loc 1 219 5
	addi	a1,s0,-96
	mv	a0,s1
	call	UART_FifoConfig
.LVL59:
	.loc 1 222 5
	mv	a0,s1
	li	a1,2
	call	UART_Enable
.LVL60:
	.loc 1 224 5
	.loc 1 225 1 is_stmt 0
	lw	ra,92(sp)
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
	lw	s5,68(sp)
	.cfi_restore 21
.LVL61:
	lw	s6,64(sp)
	.cfi_restore 22
.LVL62:
	lw	s7,60(sp)
	.cfi_restore 23
.LVL63:
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	li	a0,0
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_uart_init_ex, .-bl_uart_init_ex
	.section	.text.bl_uart_data_send,"ax",@progbits
	.align	1
	.globl	bl_uart_data_send
	.type	bl_uart_data_send, @function
bl_uart_data_send:
.LFB11:
	.loc 1 229 1 is_stmt 1
	.cfi_startproc
.LVL64:
	.loc 1 230 5
	.loc 1 229 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 230 14
	lui	a5,%hi(.LANCHOR0)
	.loc 1 229 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 230 14
	slli	a4,a0,2
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 229 1
	.loc 1 230 14
	add	a5,a5,a4
	lw	s3,0(a5)
.LVL65:
	.loc 1 233 5 is_stmt 1
	.loc 1 229 1 is_stmt 0
	mv	s1,a0
	mv	s2,a1
.LVL66:
.L58:
	.loc 1 235 5 is_stmt 1 discriminator 1
	.loc 1 233 11 discriminator 1
	.loc 1 233 12 is_stmt 0 discriminator 1
	mv	a0,s1
	call	UART_GetTxFifoCount
.LVL67:
	.loc 1 233 11 discriminator 1
	beq	a0,zero,.L58
	.loc 1 237 5 is_stmt 1
	.loc 1 237 44 is_stmt 0
	sb	s2,136(s3)
	.loc 1 239 5 is_stmt 1
	.loc 1 240 1 is_stmt 0
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
.LVL68:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_uart_data_send, .-bl_uart_data_send
	.section	.text.bl_uart_data_recv,"ax",@progbits
	.align	1
	.globl	bl_uart_data_recv
	.type	bl_uart_data_recv, @function
bl_uart_data_recv:
.LFB12:
	.loc 1 243 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 244 5
	.loc 1 245 5
	.loc 1 243 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 245 14
	lui	a5,%hi(.LANCHOR0)
	.loc 1 243 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 245 14
	slli	a4,a0,2
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 243 1
	.loc 1 245 14
	add	a5,a5,a4
	lw	s1,0(a5)
.LVL70:
	.loc 1 248 5 is_stmt 1
	.loc 1 248 9 is_stmt 0
	call	UART_GetRxFifoCount
.LVL71:
	.loc 1 248 8
	beq	a0,zero,.L64
	.loc 1 250 9 is_stmt 1
	.loc 1 250 16 is_stmt 0
	lbu	a0,140(s1)
	andi	a0,a0,0xff
.LVL72:
.L62:
	.loc 1 258 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL73:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL74:
.L64:
	.cfi_restore_state
	.loc 1 254 13
	li	a0,-1
.LVL75:
	.loc 1 257 5 is_stmt 1
	.loc 1 257 12 is_stmt 0
	j	.L62
	.cfi_endproc
.LFE12:
	.size	bl_uart_data_recv, .-bl_uart_data_recv
	.section	.text.bl_uart_int_rx_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_enable
	.type	bl_uart_int_rx_enable, @function
bl_uart_int_rx_enable:
.LFB13:
	.loc 1 261 1 is_stmt 1
	.cfi_startproc
.LVL76:
	.loc 1 262 5
	.loc 1 261 1 is_stmt 0
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
	.loc 1 262 5
	li	a1,24
	.loc 1 261 1
	mv	s1,a0
	.loc 1 262 5
	call	UART_SetRxTimeoutValue
.LVL77:
	.loc 1 263 5 is_stmt 1
	li	a2,0
	li	a1,3
	mv	a0,s1
	call	UART_IntMask
.LVL78:
	.loc 1 264 5
	li	a2,0
	li	a1,1
	mv	a0,s1
	call	UART_IntMask
.LVL79:
	.loc 1 265 5
	mv	a0,s1
	li	a2,0
	li	a1,4
	call	UART_IntMask
.LVL80:
	.loc 1 266 5
	.loc 1 267 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_uart_int_rx_enable, .-bl_uart_int_rx_enable
	.section	.text.bl_uart_int_rx_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_disable
	.type	bl_uart_int_rx_disable, @function
bl_uart_int_rx_disable:
.LFB14:
	.loc 1 270 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 271 5
	.loc 1 270 1 is_stmt 0
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
	.loc 1 271 5
	li	a2,1
	li	a1,3
	.loc 1 270 1
	mv	s1,a0
	.loc 1 271 5
	call	UART_IntMask
.LVL82:
	.loc 1 272 5 is_stmt 1
	li	a2,1
	li	a1,1
	mv	a0,s1
	call	UART_IntMask
.LVL83:
	.loc 1 273 5
	mv	a0,s1
	li	a2,1
	li	a1,4
	call	UART_IntMask
.LVL84:
	.loc 1 274 5
	.loc 1 275 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_uart_int_rx_disable, .-bl_uart_int_rx_disable
	.section	.text.bl_uart_int_tx_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_enable
	.type	bl_uart_int_tx_enable, @function
bl_uart_int_tx_enable:
.LFB15:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 279 5
	.loc 1 278 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 279 5
	li	a2,0
	li	a1,2
	call	UART_IntMask
.LVL86:
	.loc 1 280 5 is_stmt 1
	.loc 1 281 1 is_stmt 0
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
.LFE15:
	.size	bl_uart_int_tx_enable, .-bl_uart_int_tx_enable
	.section	.text.bl_uart_int_tx_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_disable
	.type	bl_uart_int_tx_disable, @function
bl_uart_int_tx_disable:
.LFB16:
	.loc 1 284 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 1 285 5
	.loc 1 284 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 285 5
	li	a2,1
	li	a1,2
	call	UART_IntMask
.LVL88:
	.loc 1 286 5 is_stmt 1
	.loc 1 287 1 is_stmt 0
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
.LFE16:
	.size	bl_uart_int_tx_disable, .-bl_uart_int_tx_disable
	.section	.text.bl_uart_flush,"ax",@progbits
	.align	1
	.globl	bl_uart_flush
	.type	bl_uart_flush, @function
bl_uart_flush:
.LFB17:
	.loc 1 290 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 292 5
	.loc 1 290 1 is_stmt 0
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
	.loc 1 290 1
	mv	s1,a0
	.loc 1 292 11
	li	s2,32
.LVL90:
.L75:
	.loc 1 294 5 is_stmt 1 discriminator 1
	.loc 1 292 11 discriminator 1
	.loc 1 292 20 is_stmt 0 discriminator 1
	mv	a0,s1
	call	UART_GetTxFifoCount
.LVL91:
	.loc 1 292 11 discriminator 1
	bne	a0,s2,.L75
	.loc 1 296 11
	li	s2,1
.L76:
	.loc 1 298 5 is_stmt 1 discriminator 1
	.loc 1 296 11 discriminator 1
	.loc 1 296 12 is_stmt 0 discriminator 1
	mv	a0,s1
	call	UART_GetTxBusBusyStatus
.LVL92:
	.loc 1 296 11 discriminator 1
	beq	a0,s2,.L76
	.loc 1 300 5 is_stmt 1
	.loc 1 301 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	bl_uart_flush, .-bl_uart_flush
	.section	.text.bl_uart_getdefconfig,"ax",@progbits
	.align	1
	.globl	bl_uart_getdefconfig
	.type	bl_uart_getdefconfig, @function
bl_uart_getdefconfig:
.LFB18:
	.loc 1 304 1 is_stmt 1
	.cfi_startproc
.LVL93:
	.loc 1 305 5
	.loc 1 304 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 305 8
	beq	a1,zero,.L80
	.loc 1 311 5 is_stmt 1
	.loc 1 311 13 is_stmt 0
	sb	zero,0(a1)
.L80:
	.loc 1 312 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	bl_uart_getdefconfig, .-bl_uart_getdefconfig
	.section	.text.bl_uart_setconfig,"ax",@progbits
	.align	1
	.globl	bl_uart_setconfig
	.type	bl_uart_setconfig, @function
bl_uart_setconfig:
.LFB19:
	.loc 1 315 1 is_stmt 1
	.cfi_startproc
.LVL94:
	.loc 1 316 5
	.loc 1 315 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
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
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	mv	s3,a1
	.loc 1 316 19
	lui	a1,%hi(.LANCHOR2+48)
.LVL95:
	.loc 1 315 1
	.loc 1 315 1
	mv	s1,a0
	mv	s2,a2
	.loc 1 316 19
	addi	a1,a1,%lo(.LANCHOR2+48)
	li	a2,36
.LVL96:
	addi	a0,s0,-68
.LVL97:
	call	memcpy
.LVL98:
	.loc 1 329 5 is_stmt 1
	.loc 1 333 5 is_stmt 0
	li	a1,2
	mv	a0,s1
	.loc 1 329 22
	sw	s3,-64(s0)
	.loc 1 330 5 is_stmt 1
	.loc 1 330 20 is_stmt 0
	sw	s2,-52(s0)
	.loc 1 333 5 is_stmt 1
	call	UART_Disable
.LVL99:
	.loc 1 335 5
	addi	a1,s0,-68
	mv	a0,s1
	call	UART_Init
.LVL100:
	.loc 1 337 5
	li	a1,1
	mv	a0,s1
	call	UART_TxFreeRun
.LVL101:
	.loc 1 339 5
	mv	a0,s1
	li	a1,2
	call	UART_Enable
.LVL102:
	.loc 1 340 1 is_stmt 0
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
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	bl_uart_setconfig, .-bl_uart_setconfig
	.section	.text.bl_uart_setbaud,"ax",@progbits
	.align	1
	.globl	bl_uart_setbaud
	.type	bl_uart_setbaud, @function
bl_uart_setbaud:
.LFB20:
	.loc 1 343 1 is_stmt 1
	.cfi_startproc
.LVL105:
	.loc 1 344 5
	.loc 1 343 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 345 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 344 5
	li	a2,0
	.loc 1 345 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 344 5
	tail	bl_uart_setconfig
.LVL106:
	.cfi_endproc
.LFE20:
	.size	bl_uart_setbaud, .-bl_uart_setbaud
	.section	.text.bl_uart_int_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_enable
	.type	bl_uart_int_enable, @function
bl_uart_int_enable:
.LFB21:
	.loc 1 348 1 is_stmt 1
	.cfi_startproc
.LVL107:
	.loc 1 349 5
	.loc 1 348 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 349 5
	beq	a0,zero,.L91
	li	a4,1
	beq	a0,a4,.L92
	li	a0,-1
.LVL108:
.L90:
	.loc 1 374 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL109:
.L91:
	.cfi_restore_state
	.loc 1 353 9 is_stmt 1
	call	bl_uart_int_rx_enable
.LVL110:
	.loc 1 354 9
	li	a0,0
	call	bl_uart_int_tx_enable
.LVL111:
	.loc 1 355 9
	lui	a1,%hi(UART0_IRQHandler)
	li	a0,45
	addi	a1,a1,%lo(UART0_IRQHandler)
	call	bl_irq_register
.LVL112:
	.loc 1 356 9
	li	a0,45
.L95:
	.loc 1 364 9 is_stmt 0
	call	bl_irq_enable
.LVL113:
	.loc 1 366 5 is_stmt 1
	.loc 1 373 12 is_stmt 0
	li	a0,0
	.loc 1 366 5
	j	.L90
.LVL114:
.L92:
	.loc 1 361 9 is_stmt 1
	call	bl_uart_int_rx_enable
.LVL115:
	.loc 1 362 9
	li	a0,1
	call	bl_uart_int_tx_enable
.LVL116:
	.loc 1 363 9
	lui	a1,%hi(UART1_IRQHandler)
	li	a0,46
	addi	a1,a1,%lo(UART1_IRQHandler)
	call	bl_irq_register
.LVL117:
	.loc 1 364 9
	li	a0,46
	j	.L95
	.cfi_endproc
.LFE21:
	.size	bl_uart_int_enable, .-bl_uart_int_enable
	.section	.text.bl_uart_int_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_disable
	.type	bl_uart_int_disable, @function
bl_uart_int_disable:
.LFB22:
	.loc 1 377 1
	.cfi_startproc
.LVL118:
	.loc 1 378 5
	.loc 1 377 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 378 5
	beq	a0,zero,.L97
	li	a4,1
	beq	a0,a4,.L98
	li	a0,-1
.LVL119:
.L96:
	.loc 1 403 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL120:
.L97:
	.cfi_restore_state
	.loc 1 382 9 is_stmt 1
	call	bl_uart_int_rx_disable
.LVL121:
	.loc 1 383 9
	li	a0,0
	call	bl_uart_int_tx_disable
.LVL122:
	.loc 1 384 9
	lui	a1,%hi(UART0_IRQHandler)
	li	a0,45
	addi	a1,a1,%lo(UART0_IRQHandler)
	call	bl_irq_unregister
.LVL123:
	.loc 1 385 9
	li	a0,45
.L101:
	.loc 1 393 9 is_stmt 0
	call	bl_irq_disable
.LVL124:
	.loc 1 395 5 is_stmt 1
	.loc 1 402 12 is_stmt 0
	li	a0,0
	.loc 1 395 5
	j	.L96
.LVL125:
.L98:
	.loc 1 390 9 is_stmt 1
	call	bl_uart_int_rx_disable
.LVL126:
	.loc 1 391 9
	li	a0,1
	call	bl_uart_int_tx_disable
.LVL127:
	.loc 1 392 9
	lui	a1,%hi(UART1_IRQHandler)
	li	a0,46
	addi	a1,a1,%lo(UART1_IRQHandler)
	call	bl_irq_unregister
.LVL128:
	.loc 1 393 9
	li	a0,46
	j	.L101
	.cfi_endproc
.LFE22:
	.size	bl_uart_int_disable, .-bl_uart_int_disable
	.section	.text.bl_uart_int_rx_notify_register,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_notify_register
	.type	bl_uart_int_rx_notify_register, @function
bl_uart_int_rx_notify_register:
.LFB23:
	.loc 1 406 1
	.cfi_startproc
.LVL129:
	.loc 1 407 5
	.loc 1 406 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 407 8
	li	a5,1
	bgtu	a0,a5,.L104
	.loc 1 413 5 is_stmt 1
	.loc 1 413 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL130:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	a1,0(a0)
	.loc 1 414 5 is_stmt 1
	.loc 1 414 37 is_stmt 0
	sw	a2,4(a0)
	.loc 1 416 5 is_stmt 1
	.loc 1 416 12 is_stmt 0
	li	a0,0
.L102:
	.loc 1 417 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL131:
.L104:
	.cfi_restore_state
	.loc 1 410 16
	li	a0,-1
.LVL132:
	j	.L102
	.cfi_endproc
.LFE23:
	.size	bl_uart_int_rx_notify_register, .-bl_uart_int_rx_notify_register
	.section	.text.bl_uart_int_tx_notify_register,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_notify_register
	.type	bl_uart_int_tx_notify_register, @function
bl_uart_int_tx_notify_register:
.LFB24:
	.loc 1 420 1 is_stmt 1
	.cfi_startproc
.LVL133:
	.loc 1 421 5
	.loc 1 420 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 421 8
	li	a5,1
	bgtu	a0,a5,.L108
	.loc 1 427 5 is_stmt 1
	.loc 1 427 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL134:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	a1,8(a0)
	.loc 1 428 5 is_stmt 1
	.loc 1 428 37 is_stmt 0
	sw	a2,12(a0)
	.loc 1 430 5 is_stmt 1
	.loc 1 430 12 is_stmt 0
	li	a0,0
.L106:
	.loc 1 431 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL135:
.L108:
	.cfi_restore_state
	.loc 1 424 16
	li	a0,-1
.LVL136:
	j	.L106
	.cfi_endproc
.LFE24:
	.size	bl_uart_int_tx_notify_register, .-bl_uart_int_tx_notify_register
	.section	.text.bl_uart_int_rx_notify_unregister,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_notify_unregister
	.type	bl_uart_int_rx_notify_unregister, @function
bl_uart_int_rx_notify_unregister:
.LFB25:
	.loc 1 434 1 is_stmt 1
	.cfi_startproc
.LVL137:
	.loc 1 435 5
	.loc 1 434 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 435 8
	li	a5,1
	bgtu	a0,a5,.L112
	.loc 1 440 5 is_stmt 1
	.loc 1 440 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL138:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	zero,0(a0)
	.loc 1 441 5 is_stmt 1
	.loc 1 441 37 is_stmt 0
	sw	zero,4(a0)
	.loc 1 443 5 is_stmt 1
	.loc 1 443 12 is_stmt 0
	li	a0,0
.L110:
	.loc 1 444 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL139:
.L112:
	.cfi_restore_state
	.loc 1 438 16
	li	a0,-1
.LVL140:
	j	.L110
	.cfi_endproc
.LFE25:
	.size	bl_uart_int_rx_notify_unregister, .-bl_uart_int_rx_notify_unregister
	.section	.text.bl_uart_int_tx_notify_unregister,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_notify_unregister
	.type	bl_uart_int_tx_notify_unregister, @function
bl_uart_int_tx_notify_unregister:
.LFB26:
	.loc 1 447 1 is_stmt 1
	.cfi_startproc
.LVL141:
	.loc 1 448 5
	.loc 1 447 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 448 8
	li	a5,1
	bgtu	a0,a5,.L116
	.loc 1 453 5 is_stmt 1
	.loc 1 453 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL142:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	zero,8(a0)
	.loc 1 454 5 is_stmt 1
	.loc 1 454 37 is_stmt 0
	sw	zero,12(a0)
	.loc 1 456 5 is_stmt 1
	.loc 1 456 12 is_stmt 0
	li	a0,0
.L114:
	.loc 1 457 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL143:
.L116:
	.cfi_restore_state
	.loc 1 451 16
	li	a0,-1
.LVL144:
	j	.L114
	.cfi_endproc
.LFE26:
	.size	bl_uart_int_tx_notify_unregister, .-bl_uart_int_tx_notify_unregister
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
.LC0:
	.word	160000000
	.word	2000000
	.word	3
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
.LC1:
	.byte	16
	.byte	16
	.zero	2
	.word	0
	.word	0
.LC2:
	.word	40000000
	.word	2000000
	.word	3
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.bss.g_uart_notify_arg,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_uart_notify_arg, @object
	.size	g_uart_notify_arg, 32
g_uart_notify_arg:
	.zero	32
	.section	.sbss.uart_clk_init.0,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	uart_clk_init.0, @object
	.size	uart_clk_init.0, 1
uart_clk_init.0:
	.zero	1
	.section	.sbss.uart_clk_init.1,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	uart_clk_init.1, @object
	.size	uart_clk_init.1, 1
uart_clk_init.1:
	.zero	1
	.section	.srodata.uartAddr,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uartAddr, @object
	.size	uartAddr, 8
uartAddr:
	.word	1073782784
	.word	1073783040
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13b6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF219
	.byte	0xc
	.4byte	.LASF220
	.4byte	.LASF221
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x3
	.byte	0x41
	.byte	0xe
	.4byte	0x1d2
	.byte	0x3
	.4byte	.LASF0
	.byte	0x3
	.byte	0x3
	.4byte	.LASF1
	.byte	0x7
	.byte	0x3
	.4byte	.LASF2
	.byte	0xb
	.byte	0x3
	.4byte	.LASF3
	.byte	0xc
	.byte	0x3
	.4byte	.LASF4
	.byte	0x10
	.byte	0x3
	.4byte	.LASF5
	.byte	0x11
	.byte	0x3
	.4byte	.LASF6
	.byte	0x12
	.byte	0x3
	.4byte	.LASF7
	.byte	0x13
	.byte	0x3
	.4byte	.LASF8
	.byte	0x14
	.byte	0x3
	.4byte	.LASF9
	.byte	0x15
	.byte	0x3
	.4byte	.LASF10
	.byte	0x16
	.byte	0x3
	.4byte	.LASF11
	.byte	0x17
	.byte	0x3
	.4byte	.LASF12
	.byte	0x18
	.byte	0x3
	.4byte	.LASF13
	.byte	0x19
	.byte	0x3
	.4byte	.LASF14
	.byte	0x1a
	.byte	0x3
	.4byte	.LASF15
	.byte	0x1b
	.byte	0x3
	.4byte	.LASF16
	.byte	0x1c
	.byte	0x3
	.4byte	.LASF17
	.byte	0x1d
	.byte	0x3
	.4byte	.LASF18
	.byte	0x1e
	.byte	0x3
	.4byte	.LASF19
	.byte	0x1f
	.byte	0x3
	.4byte	.LASF20
	.byte	0x20
	.byte	0x3
	.4byte	.LASF21
	.byte	0x21
	.byte	0x3
	.4byte	.LASF22
	.byte	0x22
	.byte	0x3
	.4byte	.LASF23
	.byte	0x23
	.byte	0x3
	.4byte	.LASF24
	.byte	0x24
	.byte	0x3
	.4byte	.LASF25
	.byte	0x25
	.byte	0x3
	.4byte	.LASF26
	.byte	0x26
	.byte	0x3
	.4byte	.LASF27
	.byte	0x27
	.byte	0x3
	.4byte	.LASF28
	.byte	0x28
	.byte	0x3
	.4byte	.LASF29
	.byte	0x29
	.byte	0x3
	.4byte	.LASF30
	.byte	0x2a
	.byte	0x3
	.4byte	.LASF31
	.byte	0x2b
	.byte	0x3
	.4byte	.LASF32
	.byte	0x2c
	.byte	0x3
	.4byte	.LASF33
	.byte	0x2d
	.byte	0x3
	.4byte	.LASF34
	.byte	0x2e
	.byte	0x3
	.4byte	.LASF35
	.byte	0x2f
	.byte	0x3
	.4byte	.LASF36
	.byte	0x30
	.byte	0x3
	.4byte	.LASF37
	.byte	0x31
	.byte	0x3
	.4byte	.LASF38
	.byte	0x32
	.byte	0x3
	.4byte	.LASF39
	.byte	0x33
	.byte	0x3
	.4byte	.LASF40
	.byte	0x34
	.byte	0x3
	.4byte	.LASF41
	.byte	0x35
	.byte	0x3
	.4byte	.LASF42
	.byte	0x36
	.byte	0x3
	.4byte	.LASF43
	.byte	0x37
	.byte	0x3
	.4byte	.LASF44
	.byte	0x38
	.byte	0x3
	.4byte	.LASF45
	.byte	0x39
	.byte	0x3
	.4byte	.LASF46
	.byte	0x3a
	.byte	0x3
	.4byte	.LASF47
	.byte	0x3b
	.byte	0x3
	.4byte	.LASF48
	.byte	0x3c
	.byte	0x3
	.4byte	.LASF49
	.byte	0x3d
	.byte	0x3
	.4byte	.LASF50
	.byte	0x3e
	.byte	0x3
	.4byte	.LASF51
	.byte	0x3f
	.byte	0x3
	.4byte	.LASF52
	.byte	0x40
	.byte	0x3
	.4byte	.LASF53
	.byte	0x41
	.byte	0x3
	.4byte	.LASF54
	.byte	0x42
	.byte	0x3
	.4byte	.LASF55
	.byte	0x43
	.byte	0x3
	.4byte	.LASF56
	.byte	0x44
	.byte	0x3
	.4byte	.LASF57
	.byte	0x45
	.byte	0x3
	.4byte	.LASF58
	.byte	0x46
	.byte	0x3
	.4byte	.LASF59
	.byte	0x47
	.byte	0x3
	.4byte	.LASF60
	.byte	0x48
	.byte	0x3
	.4byte	.LASF61
	.byte	0x49
	.byte	0x3
	.4byte	.LASF62
	.byte	0x4a
	.byte	0x3
	.4byte	.LASF63
	.byte	0x4b
	.byte	0x3
	.4byte	.LASF64
	.byte	0x4c
	.byte	0x3
	.4byte	.LASF65
	.byte	0x4d
	.byte	0x3
	.4byte	.LASF66
	.byte	0x4e
	.byte	0x3
	.4byte	.LASF67
	.byte	0x4f
	.byte	0x3
	.4byte	.LASF68
	.byte	0x50
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF69
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF70
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF71
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF72
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF73
	.byte	0x5
	.4byte	.LASF76
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x206
	.byte	0x6
	.4byte	0x1f5
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF74
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF75
	.byte	0x5
	.4byte	.LASF77
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x225
	.byte	0x6
	.4byte	0x214
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF79
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x8
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF80
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x25e
	.byte	0x3
	.4byte	.LASF81
	.byte	0
	.byte	0x3
	.4byte	.LASF82
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF83
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x243
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x285
	.byte	0x3
	.4byte	.LASF84
	.byte	0
	.byte	0x9
	.string	"SET"
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x2a0
	.byte	0x3
	.4byte	.LASF85
	.byte	0
	.byte	0x3
	.4byte	.LASF86
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x2c1
	.byte	0x3
	.4byte	.LASF87
	.byte	0
	.byte	0x3
	.4byte	.LASF88
	.byte	0x1
	.byte	0x3
	.4byte	.LASF89
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF90
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x2a0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x2ee
	.byte	0x3
	.4byte	.LASF91
	.byte	0
	.byte	0x3
	.4byte	.LASF92
	.byte	0x1
	.byte	0x3
	.4byte	.LASF93
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x4b
	.byte	0xe
	.4byte	0x30f
	.byte	0x3
	.4byte	.LASF94
	.byte	0
	.byte	0x3
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3
	.4byte	.LASF96
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF97
	.byte	0x5
	.byte	0x4f
	.byte	0x2
	.4byte	0x2ee
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.4byte	0x342
	.byte	0x3
	.4byte	.LASF98
	.byte	0
	.byte	0x3
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3
	.4byte	.LASF100
	.byte	0x2
	.byte	0x3
	.4byte	.LASF101
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF102
	.byte	0x5
	.byte	0x59
	.byte	0x2
	.4byte	0x31b
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x5e
	.byte	0xe
	.4byte	0x375
	.byte	0x3
	.4byte	.LASF103
	.byte	0
	.byte	0x3
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3
	.4byte	.LASF105
	.byte	0x2
	.byte	0x3
	.4byte	.LASF106
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF107
	.byte	0x5
	.byte	0x63
	.byte	0x2
	.4byte	0x34e
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x68
	.byte	0xe
	.4byte	0x39c
	.byte	0x3
	.4byte	.LASF108
	.byte	0
	.byte	0x3
	.4byte	.LASF109
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF110
	.byte	0x5
	.byte	0x6b
	.byte	0x2
	.4byte	0x381
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x78
	.byte	0xe
	.4byte	0x3ed
	.byte	0x3
	.4byte	.LASF111
	.byte	0
	.byte	0x3
	.4byte	.LASF112
	.byte	0x1
	.byte	0x3
	.4byte	.LASF113
	.byte	0x2
	.byte	0x3
	.4byte	.LASF114
	.byte	0x3
	.byte	0x3
	.4byte	.LASF115
	.byte	0x4
	.byte	0x3
	.4byte	.LASF116
	.byte	0x5
	.byte	0x3
	.4byte	.LASF117
	.byte	0x6
	.byte	0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0x3
	.4byte	.LASF119
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x24
	.byte	0x5
	.byte	0x91
	.byte	0x9
	.4byte	0x46c
	.byte	0xb
	.4byte	.LASF120
	.byte	0x5
	.byte	0x92
	.byte	0xe
	.4byte	0x214
	.byte	0
	.byte	0xb
	.4byte	.LASF121
	.byte	0x5
	.byte	0x93
	.byte	0xe
	.4byte	0x214
	.byte	0x4
	.byte	0xb
	.4byte	.LASF122
	.byte	0x5
	.byte	0x94
	.byte	0x18
	.4byte	0x342
	.byte	0x8
	.byte	0xb
	.4byte	.LASF123
	.byte	0x5
	.byte	0x95
	.byte	0x18
	.4byte	0x375
	.byte	0xc
	.byte	0xb
	.4byte	.LASF124
	.byte	0x5
	.byte	0x96
	.byte	0x16
	.4byte	0x30f
	.byte	0x10
	.byte	0xb
	.4byte	.LASF125
	.byte	0x5
	.byte	0x97
	.byte	0x11
	.4byte	0x25e
	.byte	0x14
	.byte	0xb
	.4byte	.LASF126
	.byte	0x5
	.byte	0x98
	.byte	0x11
	.4byte	0x25e
	.byte	0x18
	.byte	0xb
	.4byte	.LASF127
	.byte	0x5
	.byte	0x99
	.byte	0x11
	.4byte	0x25e
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF128
	.byte	0x5
	.byte	0x9a
	.byte	0x1e
	.4byte	0x39c
	.byte	0x20
	.byte	0
	.byte	0x5
	.4byte	.LASF129
	.byte	0x5
	.byte	0x9b
	.byte	0x2
	.4byte	0x3ed
	.byte	0xa
	.byte	0xc
	.byte	0x5
	.byte	0xa0
	.byte	0x9
	.4byte	0x4b6
	.byte	0xb
	.4byte	.LASF130
	.byte	0x5
	.byte	0xa1
	.byte	0xd
	.4byte	0x1f5
	.byte	0
	.byte	0xb
	.4byte	.LASF131
	.byte	0x5
	.byte	0xa2
	.byte	0xd
	.4byte	0x1f5
	.byte	0x1
	.byte	0xb
	.4byte	.LASF132
	.byte	0x5
	.byte	0xa3
	.byte	0x11
	.4byte	0x25e
	.byte	0x4
	.byte	0xb
	.4byte	.LASF133
	.byte	0x5
	.byte	0xa4
	.byte	0x11
	.4byte	0x25e
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	.LASF134
	.byte	0x5
	.byte	0xa5
	.byte	0x2
	.4byte	0x478
	.byte	0xa
	.byte	0x6
	.byte	0x6
	.byte	0x7e
	.byte	0x9
	.4byte	0x51a
	.byte	0xb
	.4byte	.LASF135
	.byte	0x6
	.byte	0x80
	.byte	0xd
	.4byte	0x1f5
	.byte	0
	.byte	0xb
	.4byte	.LASF136
	.byte	0x6
	.byte	0x81
	.byte	0xd
	.4byte	0x1f5
	.byte	0x1
	.byte	0xb
	.4byte	.LASF137
	.byte	0x6
	.byte	0x82
	.byte	0xd
	.4byte	0x1f5
	.byte	0x2
	.byte	0xb
	.4byte	.LASF138
	.byte	0x6
	.byte	0x83
	.byte	0xd
	.4byte	0x1f5
	.byte	0x3
	.byte	0xb
	.4byte	.LASF139
	.byte	0x6
	.byte	0x84
	.byte	0xd
	.4byte	0x1f5
	.byte	0x4
	.byte	0xb
	.4byte	.LASF140
	.byte	0x6
	.byte	0x85
	.byte	0xd
	.4byte	0x1f5
	.byte	0x5
	.byte	0
	.byte	0x5
	.4byte	.LASF141
	.byte	0x6
	.byte	0x86
	.byte	0x2
	.4byte	0x4c2
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x7
	.byte	0x7e
	.byte	0xe
	.4byte	0x541
	.byte	0x3
	.4byte	.LASF142
	.byte	0
	.byte	0x3
	.4byte	.LASF143
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x8
	.byte	0xf6
	.byte	0xe
	.4byte	0x580
	.byte	0x3
	.4byte	.LASF144
	.byte	0
	.byte	0x3
	.4byte	.LASF145
	.byte	0x1
	.byte	0x3
	.4byte	.LASF146
	.byte	0x2
	.byte	0x3
	.4byte	.LASF147
	.byte	0x3
	.byte	0x3
	.4byte	.LASF148
	.byte	0x4
	.byte	0x3
	.4byte	.LASF149
	.byte	0x5
	.byte	0x3
	.4byte	.LASF150
	.byte	0x6
	.byte	0x3
	.4byte	.LASF151
	.byte	0x7
	.byte	0
	.byte	0x5
	.4byte	.LASF152
	.byte	0x8
	.byte	0xff
	.byte	0x2
	.4byte	0x541
	.byte	0x5
	.4byte	.LASF153
	.byte	0x9
	.byte	0x7
	.byte	0x10
	.4byte	0x598
	.byte	0xc
	.byte	0x4
	.4byte	0x59e
	.byte	0xd
	.4byte	0x5a9
	.byte	0xe
	.4byte	0x23a
	.byte	0
	.byte	0xf
	.4byte	0x220
	.4byte	0x5b9
	.byte	0x10
	.4byte	0x1d2
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	0x5a9
	.byte	0x11
	.4byte	.LASF159
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.4byte	0x5b9
	.byte	0x5
	.byte	0x3
	.4byte	uartAddr
	.byte	0x12
	.4byte	.LASF222
	.byte	0x10
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.4byte	0x612
	.byte	0xb
	.4byte	.LASF154
	.byte	0x1
	.byte	0x14
	.byte	0x16
	.4byte	0x58c
	.byte	0
	.byte	0xb
	.4byte	.LASF155
	.byte	0x1
	.byte	0x15
	.byte	0xb
	.4byte	0x23a
	.byte	0x4
	.byte	0xb
	.4byte	.LASF156
	.byte	0x1
	.byte	0x17
	.byte	0x16
	.4byte	0x58c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF157
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0x23a
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	.LASF158
	.byte	0x1
	.byte	0x19
	.byte	0x3
	.4byte	0x5d0
	.byte	0xf
	.4byte	0x612
	.4byte	0x62e
	.byte	0x10
	.4byte	0x1d2
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	.LASF160
	.byte	0x1
	.byte	0x1b
	.byte	0x19
	.4byte	0x61e
	.byte	0x5
	.byte	0x3
	.4byte	g_uart_notify_arg
	.byte	0x13
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x231
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x667
	.byte	0x14
	.4byte	.LVL17
	.4byte	0x68e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x22c
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x68e
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x68e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1cb
	.byte	0x14
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x70a
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x1cb
	.byte	0x38
	.4byte	0x1f5
	.4byte	.LLST0
	.byte	0x18
	.string	"cb"
	.byte	0x1
	.2byte	0x1cd
	.byte	0x16
	.4byte	0x58c
	.4byte	.LLST1
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.2byte	0x1ce
	.byte	0xb
	.4byte	0x23a
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST3
	.byte	0x19
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1d0
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST4
	.byte	0x19
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1d1
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST5
	.byte	0
	.byte	0x1a
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1be
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x753
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x1be
	.byte	0x2e
	.4byte	0x1f5
	.4byte	.LLST50
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x1be
	.byte	0x43
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x1be
	.byte	0x4d
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1b1
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x79c
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x1b1
	.byte	0x2e
	.4byte	0x1f5
	.4byte	.LLST49
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x1b1
	.byte	0x43
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x1b1
	.byte	0x4d
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1a3
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e5
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x1a3
	.byte	0x2c
	.4byte	0x1f5
	.4byte	.LLST48
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x1a3
	.byte	0x41
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x1a3
	.byte	0x4b
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x195
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x82e
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x195
	.byte	0x2c
	.4byte	0x1f5
	.4byte	.LLST47
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x195
	.byte	0x41
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x195
	.byte	0x4b
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x178
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x8d1
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x178
	.byte	0x21
	.4byte	0x1f5
	.4byte	.LLST46
	.byte	0x1c
	.4byte	.LVL121
	.4byte	0xbaf
	.byte	0x1d
	.4byte	.LVL122
	.4byte	0xb2f
	.4byte	0x875
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL123
	.4byte	0x12d5
	.4byte	0x892
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART0_IRQHandler
	.byte	0
	.byte	0x1c
	.4byte	.LVL124
	.4byte	0x12e1
	.byte	0x1c
	.4byte	.LVL126
	.4byte	0xbaf
	.byte	0x1d
	.4byte	.LVL127
	.4byte	0xb2f
	.4byte	0x8b7
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL128
	.4byte	0x12d5
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART1_IRQHandler
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x15b
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x974
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x15b
	.byte	0x20
	.4byte	0x1f5
	.4byte	.LLST45
	.byte	0x1c
	.4byte	.LVL110
	.4byte	0xc31
	.byte	0x1d
	.4byte	.LVL111
	.4byte	0xb6f
	.4byte	0x918
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL112
	.4byte	0x12ed
	.4byte	0x935
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART0_IRQHandler
	.byte	0
	.byte	0x1c
	.4byte	.LVL113
	.4byte	0x12f9
	.byte	0x1c
	.4byte	.LVL115
	.4byte	0xc31
	.byte	0x1d
	.4byte	.LVL116
	.4byte	0xb6f
	.4byte	0x95a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL117
	.4byte	0x12ed
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART1_IRQHandler
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x156
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x9c3
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x156
	.byte	0x1e
	.4byte	0x1f5
	.4byte	.LLST43
	.byte	0x1f
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x156
	.byte	0x2b
	.4byte	0x214
	.4byte	.LLST44
	.byte	0x14
	.4byte	.LVL106
	.4byte	0x9c3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x13a
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa4
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x13a
	.byte	0x20
	.4byte	0x1f5
	.4byte	.LLST40
	.byte	0x1f
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x13a
	.byte	0x2d
	.4byte	0x214
	.4byte	.LLST41
	.byte	0x1f
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x13a
	.byte	0x48
	.4byte	0x30f
	.4byte	.LLST42
	.byte	0x20
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x13c
	.byte	0x13
	.4byte	0x46c
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x1d
	.4byte	.LVL98
	.4byte	0x1305
	.4byte	0xa41
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2+48
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x1d
	.4byte	.LVL99
	.4byte	0x1310
	.4byte	0xa5a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1d
	.4byte	.LVL100
	.4byte	0x131d
	.4byte	0xa75
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL101
	.4byte	0x132a
	.4byte	0xa8e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL102
	.4byte	0x1337
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x12f
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xad9
	.byte	0x1b
	.string	"id"
	.byte	0x1
	.2byte	0x12f
	.byte	0x23
	.4byte	0x1f5
	.byte	0x1
	.byte	0x5a
	.byte	0x21
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x12f
	.byte	0x30
	.4byte	0xad9
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x1f5
	.byte	0x1a
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x121
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xb2f
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x121
	.byte	0x1b
	.4byte	0x1f5
	.4byte	.LLST39
	.byte	0x1d
	.4byte	.LVL91
	.4byte	0x1344
	.4byte	0xb1e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL92
	.4byte	0x1351
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x11b
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6f
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x11b
	.byte	0x24
	.4byte	0x1f5
	.4byte	.LLST38
	.byte	0x1e
	.4byte	.LVL88
	.4byte	0x135e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x115
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xbaf
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x115
	.byte	0x23
	.4byte	0x1f5
	.4byte	.LLST37
	.byte	0x1e
	.4byte	.LVL86
	.4byte	0x135e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x10d
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xc31
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x10d
	.byte	0x24
	.4byte	0x1f5
	.4byte	.LLST36
	.byte	0x1d
	.4byte	.LVL82
	.4byte	0x135e
	.4byte	0xbf8
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL83
	.4byte	0x135e
	.4byte	0xc16
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL84
	.4byte	0x135e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x104
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xccc
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x104
	.byte	0x23
	.4byte	0x1f5
	.4byte	.LLST35
	.byte	0x1d
	.4byte	.LVL77
	.4byte	0x136b
	.4byte	0xc75
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL78
	.4byte	0x135e
	.4byte	0xc93
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL79
	.4byte	0x135e
	.4byte	0xcb1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL80
	.4byte	0x135e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF183
	.byte	0x1
	.byte	0xf2
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xd1f
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0xf2
	.byte	0x1f
	.4byte	0x1f5
	.4byte	.LLST32
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0xf4
	.byte	0x9
	.4byte	0x233
	.4byte	.LLST33
	.byte	0x25
	.4byte	.LASF165
	.byte	0x1
	.byte	0xf5
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST34
	.byte	0x1c
	.4byte	.LVL71
	.4byte	0x1378
	.byte	0
	.byte	0x22
	.4byte	.LASF184
	.byte	0x1
	.byte	0xe4
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xd79
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0xe4
	.byte	0x1f
	.4byte	0x1f5
	.4byte	.LLST29
	.byte	0x26
	.4byte	.LASF185
	.byte	0x1
	.byte	0xe4
	.byte	0x2b
	.4byte	0x1f5
	.4byte	.LLST30
	.byte	0x25
	.4byte	.LASF165
	.byte	0x1
	.byte	0xe6
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST31
	.byte	0x1e
	.4byte	.LVL67
	.4byte	0x1344
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF186
	.byte	0x1
	.byte	0x9b
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xf89
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0x9b
	.byte	0x1d
	.4byte	0x1f5
	.4byte	.LLST21
	.byte	0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x9b
	.byte	0x29
	.4byte	0x1f5
	.4byte	.LLST22
	.byte	0x26
	.4byte	.LASF188
	.byte	0x1
	.byte	0x9b
	.byte	0x39
	.4byte	0x1f5
	.4byte	.LLST23
	.byte	0x26
	.4byte	.LASF189
	.byte	0x1
	.byte	0x9b
	.byte	0x49
	.4byte	0x1f5
	.4byte	.LLST24
	.byte	0x26
	.4byte	.LASF190
	.byte	0x1
	.byte	0x9b
	.byte	0x5a
	.4byte	0x1f5
	.4byte	.LLST25
	.byte	0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x9b
	.byte	0x6c
	.4byte	0x214
	.4byte	.LLST26
	.byte	0x26
	.4byte	.LASF122
	.byte	0x1
	.byte	0x9c
	.byte	0x28
	.4byte	0x342
	.4byte	.LLST27
	.byte	0x26
	.4byte	.LASF123
	.byte	0x1
	.byte	0x9c
	.byte	0x45
	.4byte	0x375
	.4byte	.LLST28
	.byte	0x27
	.4byte	.LASF124
	.byte	0x1
	.byte	0x9c
	.byte	0x60
	.4byte	0x30f
	.byte	0x2
	.byte	0x91
	.byte	0
	.byte	0x11
	.4byte	.LASF191
	.byte	0x1
	.byte	0x9e
	.byte	0x14
	.4byte	0x1f5
	.byte	0x5
	.byte	0x3
	.4byte	uart_clk_init.0
	.byte	0x28
	.4byte	.LASF192
	.byte	0x1
	.byte	0x9f
	.byte	0x13
	.4byte	0x201
	.byte	0x3
	.byte	0x11
	.4byte	.LASF193
	.byte	0x1
	.byte	0xa1
	.byte	0x13
	.4byte	0x46c
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x11
	.4byte	.LASF194
	.byte	0x1
	.byte	0xad
	.byte	0x17
	.4byte	0x4b6
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x1d
	.4byte	.LVL51
	.4byte	0x1305
	.4byte	0xe81
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x1d
	.4byte	.LVL52
	.4byte	0x1305
	.4byte	0xea4
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2+36
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1d
	.4byte	.LVL53
	.4byte	0x1385
	.4byte	0xec1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1d
	.4byte	.LVL54
	.4byte	0x116a
	.4byte	0xeed
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL55
	.4byte	0x135e
	.4byte	0xf0b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL56
	.4byte	0x1310
	.4byte	0xf24
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1d
	.4byte	.LVL57
	.4byte	0x131d
	.4byte	0xf3f
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL58
	.4byte	0x132a
	.4byte	0xf58
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL59
	.4byte	0x1392
	.4byte	0xf73
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x1e
	.4byte	.LVL60
	.4byte	0x1337
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF195
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x116a
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0x60
	.byte	0x1a
	.4byte	0x1f5
	.4byte	.LLST15
	.byte	0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x60
	.byte	0x26
	.4byte	0x1f5
	.4byte	.LLST16
	.byte	0x26
	.4byte	.LASF188
	.byte	0x1
	.byte	0x60
	.byte	0x36
	.4byte	0x1f5
	.4byte	.LLST17
	.byte	0x26
	.4byte	.LASF189
	.byte	0x1
	.byte	0x60
	.byte	0x46
	.4byte	0x1f5
	.4byte	.LLST18
	.byte	0x26
	.4byte	.LASF190
	.byte	0x1
	.byte	0x60
	.byte	0x57
	.4byte	0x1f5
	.4byte	.LLST19
	.byte	0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x60
	.byte	0x69
	.4byte	0x214
	.4byte	.LLST20
	.byte	0x11
	.4byte	.LASF191
	.byte	0x1
	.byte	0x62
	.byte	0x14
	.4byte	0x1f5
	.byte	0x5
	.byte	0x3
	.4byte	uart_clk_init.1
	.byte	0x28
	.4byte	.LASF192
	.byte	0x1
	.byte	0x63
	.byte	0x13
	.4byte	0x201
	.byte	0x3
	.byte	0x11
	.4byte	.LASF193
	.byte	0x1
	.byte	0x65
	.byte	0x13
	.4byte	0x46c
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x11
	.4byte	.LASF194
	.byte	0x1
	.byte	0x71
	.byte	0x17
	.4byte	0x4b6
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x1d
	.4byte	.LVL36
	.4byte	0x1305
	.4byte	0x1062
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xac,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x1d
	.4byte	.LVL37
	.4byte	0x1305
	.4byte	0x1085
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2+36
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1d
	.4byte	.LVL38
	.4byte	0x1385
	.4byte	0x10a2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1d
	.4byte	.LVL39
	.4byte	0x116a
	.4byte	0x10ce
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL40
	.4byte	0x135e
	.4byte	0x10ec
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL41
	.4byte	0x1310
	.4byte	0x1105
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1d
	.4byte	.LVL42
	.4byte	0x131d
	.4byte	0x1120
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL43
	.4byte	0x132a
	.4byte	0x1139
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL44
	.4byte	0x1392
	.4byte	0x1154
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x1e
	.4byte	.LVL45
	.4byte	0x1337
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF197
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x12d5
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0x1d
	.byte	0x1f
	.4byte	0x1f5
	.4byte	.LLST6
	.byte	0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x1d
	.byte	0x2b
	.4byte	0x1f5
	.4byte	.LLST7
	.byte	0x26
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1d
	.byte	0x3b
	.4byte	0x1f5
	.4byte	.LLST8
	.byte	0x26
	.4byte	.LASF189
	.byte	0x1
	.byte	0x1d
	.byte	0x4b
	.4byte	0x1f5
	.4byte	.LLST9
	.byte	0x26
	.4byte	.LASF190
	.byte	0x1
	.byte	0x1d
	.byte	0x5c
	.4byte	0x1f5
	.4byte	.LLST10
	.byte	0x2a
	.string	"cfg"
	.byte	0x1
	.byte	0x1f
	.byte	0x17
	.4byte	0x51a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x25
	.4byte	.LASF198
	.byte	0x1
	.byte	0x20
	.byte	0x1b
	.4byte	0x580
	.4byte	.LLST11
	.byte	0x25
	.4byte	.LASF199
	.byte	0x1
	.byte	0x20
	.byte	0x26
	.4byte	0x580
	.4byte	.LLST12
	.byte	0x25
	.4byte	.LASF200
	.byte	0x1
	.byte	0x20
	.byte	0x31
	.4byte	0x580
	.4byte	.LLST13
	.byte	0x25
	.4byte	.LASF201
	.byte	0x1
	.byte	0x20
	.byte	0x3d
	.4byte	0x580
	.4byte	.LLST14
	.byte	0x1d
	.4byte	.LVL20
	.4byte	0x139f
	.4byte	0x1232
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL21
	.4byte	0x139f
	.4byte	0x1246
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL22
	.4byte	0x139f
	.4byte	0x125a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL23
	.4byte	0x139f
	.4byte	0x126e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL25
	.4byte	0x13ac
	.4byte	0x1284
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x86
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0
	.byte	0x1d
	.4byte	.LVL26
	.4byte	0x13ac
	.4byte	0x12a0
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x85
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL27
	.4byte	0x13ac
	.4byte	0x12bc
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x82
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL28
	.4byte	0x13ac
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xa
	.byte	0x17
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xa
	.byte	0x4
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0xa
	.byte	0x16
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xa
	.byte	0x3
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF223
	.4byte	.LASF224
	.byte	0xb
	.byte	0
	.byte	0x2d
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x5
	.2byte	0x11a
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x5
	.2byte	0x115
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x5
	.2byte	0x122
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x119
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x5
	.2byte	0x12d
	.byte	0x9
	.byte	0x2d
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x5
	.2byte	0x130
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x5
	.2byte	0x126
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x5
	.2byte	0x11d
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x5
	.2byte	0x12e
	.byte	0x9
	.byte	0x2d
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x238
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x5
	.2byte	0x117
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x276
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x26f
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
	.byte	0x3
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x1b
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
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0xb
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
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	g_uart_notify_arg+4
	.byte	0x22
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	g_uart_notify_arg+12
	.byte	0x22
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	g_uart_notify_arg+4
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL132
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121-1
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110-1
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL104
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL103
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL69
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL75
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL51-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL51-1
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL63
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL51-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL62
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL51-1
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL61
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36-1
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL46
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF221:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF98:
	.string	"UART_DATABITS_5"
.LASF99:
	.string	"UART_DATABITS_6"
.LASF100:
	.string	"UART_DATABITS_7"
.LASF101:
	.string	"UART_DATABITS_8"
.LASF220:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.c"
.LASF8:
	.string	"SEC_BMX_ERR_IRQn"
.LASF116:
	.string	"UART_INT_PCE"
.LASF217:
	.string	"GLB_GPIO_Init"
.LASF171:
	.string	"bl_uart_int_enable"
.LASF42:
	.string	"TIMER_WDT_IRQn"
.LASF207:
	.string	"UART_Init"
.LASF62:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF97:
	.string	"UART_Parity_Type"
.LASF148:
	.string	"GLB_UART_SIG_FUN_UART1_RTS"
.LASF6:
	.string	"L1C_BMX_ERR_IRQn"
.LASF110:
	.string	"UART_ByteBitInverse_Type"
.LASF29:
	.string	"GPADC_DMA_IRQn"
.LASF184:
	.string	"bl_uart_data_send"
.LASF196:
	.string	"uart_generic_notify_handler"
.LASF72:
	.string	"long int"
.LASF81:
	.string	"DISABLE"
.LASF210:
	.string	"UART_GetTxFifoCount"
.LASF169:
	.string	"bl_uart_int_rx_notify_register"
.LASF83:
	.string	"BL_Fun_Type"
.LASF155:
	.string	"rx_cb_arg"
.LASF12:
	.string	"DMA_BMX_ERR_IRQn"
.LASF11:
	.string	"SDIO_IRQn"
.LASF112:
	.string	"UART_INT_RX_END"
.LASF160:
	.string	"g_uart_notify_arg"
.LASF70:
	.string	"signed char"
.LASF127:
	.string	"rtsSoftwareControl"
.LASF205:
	.string	"bl_irq_enable"
.LASF173:
	.string	"baud"
.LASF79:
	.string	"long long unsigned int"
.LASF175:
	.string	"baudrate"
.LASF14:
	.string	"SEC_CDET_IRQn"
.LASF165:
	.string	"UARTx"
.LASF45:
	.string	"RESERVED12"
.LASF46:
	.string	"RESERVED13"
.LASF47:
	.string	"RESERVED14"
.LASF49:
	.string	"RESERVED16"
.LASF50:
	.string	"RESERVED17"
.LASF51:
	.string	"RESERVED18"
.LASF52:
	.string	"RESERVED19"
.LASF214:
	.string	"UART_GetRxFifoCount"
.LASF48:
	.string	"GPIO_INT0_IRQn"
.LASF144:
	.string	"GLB_UART_SIG_FUN_UART0_RTS"
.LASF223:
	.string	"memcpy"
.LASF82:
	.string	"ENABLE"
.LASF73:
	.string	"long long int"
.LASF209:
	.string	"UART_Enable"
.LASF94:
	.string	"UART_PARITY_NONE"
.LASF186:
	.string	"bl_uart_init_ex"
.LASF154:
	.string	"rx_cb"
.LASF117:
	.string	"UART_INT_TX_FER"
.LASF111:
	.string	"UART_INT_TX_END"
.LASF75:
	.string	"short unsigned int"
.LASF124:
	.string	"parity"
.LASF106:
	.string	"UART_STOPBITS_2"
.LASF134:
	.string	"UART_FifoCfg_Type"
.LASF36:
	.string	"I2C_IRQn"
.LASF9:
	.string	"RF_TOP_INT0_IRQn"
.LASF213:
	.string	"UART_SetRxTimeoutValue"
.LASF53:
	.string	"RESERVED20"
.LASF177:
	.string	"bl_uart_getdefconfig"
.LASF86:
	.string	"MASK"
.LASF13:
	.string	"SEC_GMAC_IRQn"
.LASF88:
	.string	"UART1_ID"
.LASF69:
	.string	"unsigned int"
.LASF58:
	.string	"WIFI_IRQn"
.LASF151:
	.string	"GLB_UART_SIG_FUN_UART1_RXD"
.LASF200:
	.string	"cts_sigfun"
.LASF105:
	.string	"UART_STOPBITS_1_5"
.LASF78:
	.string	"long unsigned int"
.LASF212:
	.string	"UART_IntMask"
.LASF102:
	.string	"UART_DataBits_Type"
.LASF118:
	.string	"UART_INT_RX_FER"
.LASF185:
	.string	"data"
.LASF218:
	.string	"GLB_UART_Fun_Sel"
.LASF204:
	.string	"bl_irq_register"
.LASF57:
	.string	"BOR_IRQn"
.LASF181:
	.string	"bl_uart_int_rx_disable"
.LASF157:
	.string	"tx_cb_arg"
.LASF10:
	.string	"RF_TOP_INT1_IRQn"
.LASF182:
	.string	"bl_uart_int_rx_enable"
.LASF122:
	.string	"dataBits"
.LASF202:
	.string	"bl_irq_unregister"
.LASF92:
	.string	"UART_RX"
.LASF211:
	.string	"UART_GetTxBusBusyStatus"
.LASF59:
	.string	"BZ_PHY_IRQn"
.LASF158:
	.string	"bl_uart_notify_t"
.LASF133:
	.string	"rxFifoDmaEnable"
.LASF224:
	.string	"__builtin_memcpy"
.LASF129:
	.string	"UART_CFG_Type"
.LASF89:
	.string	"UART_ID_MAX"
.LASF140:
	.string	"smtCtrl"
.LASF33:
	.string	"UART0_IRQn"
.LASF121:
	.string	"baudRate"
.LASF85:
	.string	"UNMASK"
.LASF166:
	.string	"bl_uart_int_tx_notify_unregister"
.LASF153:
	.string	"cb_uart_notify_t"
.LASF18:
	.string	"SEC_SHA_IRQn"
.LASF17:
	.string	"SEC_AES_IRQn"
.LASF139:
	.string	"drive"
.LASF156:
	.string	"tx_cb"
.LASF113:
	.string	"UART_INT_TX_FIFO_REQ"
.LASF54:
	.string	"PDS_WAKEUP_IRQn"
.LASF189:
	.string	"cts_pin"
.LASF203:
	.string	"bl_irq_disable"
.LASF135:
	.string	"gpioPin"
.LASF95:
	.string	"UART_PARITY_ODD"
.LASF103:
	.string	"UART_STOPBITS_0_5"
.LASF0:
	.string	"MSOFT_IRQn"
.LASF120:
	.string	"uartClk"
.LASF190:
	.string	"rts_pin"
.LASF192:
	.string	"uart_div"
.LASF19:
	.string	"DMA_ALL_IRQn"
.LASF149:
	.string	"GLB_UART_SIG_FUN_UART1_CTS"
.LASF66:
	.string	"MAC_PORT_TRG_IRQn"
.LASF126:
	.string	"rxDeglitch"
.LASF161:
	.string	"UART1_IRQHandler"
.LASF107:
	.string	"UART_StopBits_Type"
.LASF108:
	.string	"UART_LSB_FIRST"
.LASF199:
	.string	"rx_sigfun"
.LASF162:
	.string	"UART0_IRQHandler"
.LASF138:
	.string	"pullType"
.LASF164:
	.string	"maskVal"
.LASF114:
	.string	"UART_INT_RX_FIFO_REQ"
.LASF20:
	.string	"RESERVED0"
.LASF21:
	.string	"RESERVED1"
.LASF22:
	.string	"RESERVED2"
.LASF25:
	.string	"RESERVED3"
.LASF26:
	.string	"RESERVED4"
.LASF32:
	.string	"RESERVED6"
.LASF84:
	.string	"RESET"
.LASF188:
	.string	"rx_pin"
.LASF39:
	.string	"RESERVED9"
.LASF60:
	.string	"BLE_IRQn"
.LASF24:
	.string	"IRRX_IRQn"
.LASF15:
	.string	"SEC_PKA_IRQn"
.LASF74:
	.string	"unsigned char"
.LASF61:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF137:
	.string	"gpioMode"
.LASF27:
	.string	"SF_CTRL_IRQn"
.LASF87:
	.string	"UART0_ID"
.LASF176:
	.string	"UartCfg"
.LASF23:
	.string	"IRTX_IRQn"
.LASF195:
	.string	"bl_uart_init"
.LASF172:
	.string	"bl_uart_setbaud"
.LASF170:
	.string	"bl_uart_int_disable"
.LASF63:
	.string	"MAC_RX_TRG_IRQn"
.LASF91:
	.string	"UART_TX"
.LASF125:
	.string	"ctsFlowControl"
.LASF2:
	.string	"MEXT_IRQn"
.LASF30:
	.string	"EFUSE_IRQn"
.LASF180:
	.string	"bl_uart_int_tx_enable"
.LASF147:
	.string	"GLB_UART_SIG_FUN_UART0_RXD"
.LASF168:
	.string	"bl_uart_int_tx_notify_register"
.LASF174:
	.string	"bl_uart_setconfig"
.LASF163:
	.string	"tmpVal"
.LASF215:
	.string	"GLB_Set_UART_CLK"
.LASF28:
	.string	"RESERVED5"
.LASF132:
	.string	"txFifoDmaEnable"
.LASF77:
	.string	"uint32_t"
.LASF109:
	.string	"UART_MSB_FIRST"
.LASF37:
	.string	"RESERVED8"
.LASF193:
	.string	"uartCfg"
.LASF34:
	.string	"UART1_IRQn"
.LASF5:
	.string	"BMX_TO_IRQn"
.LASF80:
	.string	"char"
.LASF222:
	.string	"bl_uart_notify"
.LASF1:
	.string	"MTIME_IRQn"
.LASF183:
	.string	"bl_uart_data_recv"
.LASF123:
	.string	"stopBits"
.LASF65:
	.string	"MAC_GEN_IRQn"
.LASF71:
	.string	"short int"
.LASF136:
	.string	"gpioFun"
.LASF96:
	.string	"UART_PARITY_EVEN"
.LASF167:
	.string	"bl_uart_int_rx_notify_unregister"
.LASF4:
	.string	"BMX_ERR_IRQn"
.LASF104:
	.string	"UART_STOPBITS_1"
.LASF40:
	.string	"TIMER_CH0_IRQn"
.LASF130:
	.string	"txFifoDmaThreshold"
.LASF152:
	.string	"GLB_UART_SIG_FUN_Type"
.LASF38:
	.string	"PWM_IRQn"
.LASF55:
	.string	"HBN_OUT0_IRQn"
.LASF219:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF35:
	.string	"RESERVED7"
.LASF43:
	.string	"RESERVED10"
.LASF44:
	.string	"RESERVED11"
.LASF67:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF216:
	.string	"UART_FifoConfig"
.LASF90:
	.string	"UART_ID_Type"
.LASF179:
	.string	"bl_uart_int_tx_disable"
.LASF187:
	.string	"tx_pin"
.LASF68:
	.string	"IRQn_LAST"
.LASF159:
	.string	"uartAddr"
.LASF128:
	.string	"byteBitInverse"
.LASF198:
	.string	"tx_sigfun"
.LASF76:
	.string	"uint8_t"
.LASF197:
	.string	"gpio_init"
.LASF191:
	.string	"uart_clk_init"
.LASF3:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF64:
	.string	"MAC_TX_TRG_IRQn"
.LASF131:
	.string	"rxFifoDmaThreshold"
.LASF115:
	.string	"UART_INT_RTO"
.LASF16:
	.string	"SEC_TRNG_IRQn"
.LASF208:
	.string	"UART_TxFreeRun"
.LASF145:
	.string	"GLB_UART_SIG_FUN_UART0_CTS"
.LASF143:
	.string	"HBN_UART_CLK_160M"
.LASF119:
	.string	"UART_INT_ALL"
.LASF206:
	.string	"UART_Disable"
.LASF31:
	.string	"SPI_IRQn"
.LASF7:
	.string	"L1C_BMX_TO_IRQn"
.LASF201:
	.string	"rts_sigfun"
.LASF41:
	.string	"TIMER_CH1_IRQn"
.LASF194:
	.string	"fifoCfg"
.LASF146:
	.string	"GLB_UART_SIG_FUN_UART0_TXD"
.LASF142:
	.string	"HBN_UART_CLK_FCLK"
.LASF56:
	.string	"HBN_OUT1_IRQn"
.LASF93:
	.string	"UART_TXRX"
.LASF178:
	.string	"bl_uart_flush"
.LASF150:
	.string	"GLB_UART_SIG_FUN_UART1_TXD"
.LASF141:
	.string	"GLB_GPIO_Cfg_Type"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
