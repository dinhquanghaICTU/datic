	.file	"bl_irq.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_irq_enable,"ax",@progbits
	.align	1
	.globl	bl_irq_enable
	.type	bl_irq_enable, @function
bl_irq_enable:
.LFB8:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.c"
	.loc 1 18 1
	.cfi_startproc
.LVL0:
	.loc 1 19 5
	.loc 1 18 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 19 47
	li	a5,41943040
	.loc 1 18 1
	sw	s0,12(sp)
	.loc 1 19 47
	addi	a5,a5,1024
	.cfi_offset 8, -4
	.loc 1 18 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 19 47
	add	a0,a0,a5
.LVL1:
	.loc 1 19 57
	li	a5,1
	sb	a5,0(a0)
	.loc 1 20 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_irq_enable, .-bl_irq_enable
	.section	.text.bl_irq_disable,"ax",@progbits
	.align	1
	.globl	bl_irq_disable
	.type	bl_irq_disable, @function
bl_irq_disable:
.LFB9:
	.loc 1 23 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 24 5
	.loc 1 23 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 24 47
	li	a5,41943040
	.loc 1 23 1
	sw	s0,12(sp)
	.loc 1 24 47
	addi	a5,a5,1024
	.cfi_offset 8, -4
	.loc 1 23 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 24 47
	add	a0,a0,a5
.LVL3:
	.loc 1 24 57
	sb	zero,0(a0)
	.loc 1 25 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_irq_disable, .-bl_irq_disable
	.section	.text.bl_irq_pending_set,"ax",@progbits
	.align	1
	.globl	bl_irq_pending_set
	.type	bl_irq_pending_set, @function
bl_irq_pending_set:
.LFB10:
	.loc 1 28 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 29 5
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 29 47
	li	a5,41943040
	.cfi_offset 8, -4
	.loc 1 28 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 29 47
	add	a0,a0,a5
.LVL5:
	.loc 1 29 57
	li	a5,1
	sb	a5,0(a0)
	.loc 1 30 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_irq_pending_set, .-bl_irq_pending_set
	.section	.text.bl_irq_pending_clear,"ax",@progbits
	.align	1
	.globl	bl_irq_pending_clear
	.type	bl_irq_pending_clear, @function
bl_irq_pending_clear:
.LFB11:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 34 5
	.loc 1 33 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 34 47
	li	a5,41943040
	.cfi_offset 8, -4
	.loc 1 33 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 34 47
	add	a0,a0,a5
.LVL7:
	.loc 1 34 57
	sb	zero,0(a0)
	.loc 1 35 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_irq_pending_clear, .-bl_irq_pending_clear
	.section	.text.bl_irq_exception_trigger,"ax",@progbits
	.align	1
	.globl	bl_irq_exception_trigger
	.type	bl_irq_exception_trigger, @function
bl_irq_exception_trigger:
.LFB12:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 39 5
	.loc 1 39 31
	.loc 1 41 5
	li	a5,2
	bgtu	a0,a5,.L10
	bne	a0,zero,.L11
	ret
.L10:
	li	a5,3
	beq	a0,a5,.L13
	ret
.L11:
	.loc 1 49 13
	.loc 1 49 29 is_stmt 0
	li	a5,305418240
	addi	a5,a5,1656
	sw	a5,0(a1)
	.loc 1 51 9 is_stmt 1
	ret
.L13:
.LBB13:
	.loc 1 59 13
	.loc 1 60 13
	.loc 1 61 13
.LBE13:
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LVL9:
.LBB14:
	.loc 1 63 13 is_stmt 1
.LBE14:
	.loc 1 38 1 is_stmt 0
.LBB15:
	.loc 1 61 23
	addi	a5,s0,-20
.LVL10:
.LBE15:
	.loc 1 72 1
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB16:
	.loc 1 63 13
	jr	a5
.LVL11:
.LBE16:
	.cfi_endproc
.LFE12:
	.size	bl_irq_exception_trigger, .-bl_irq_exception_trigger
	.section	.text.bl_irq_default,"ax",@progbits
	.align	1
	.globl	bl_irq_default
	.type	bl_irq_default, @function
bl_irq_default:
.LFB13:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.L17:
	.loc 1 76 5 discriminator 1
	.loc 1 78 5 discriminator 1
	.loc 1 76 11 discriminator 1
	j	.L17
	.cfi_endproc
.LFE13:
	.size	bl_irq_default, .-bl_irq_default
	.section	.text.bl_irq_register_with_ctx,"ax",@progbits
	.align	1
	.globl	bl_irq_register_with_ctx
	.type	bl_irq_register_with_ctx, @function
bl_irq_register_with_ctx:
.LFB15:
	.loc 1 97 1
	.cfi_startproc
.LVL12:
	.loc 1 98 5
.LBB23:
.LBB24:
	.loc 1 88 5
.LBE24:
.LBE23:
	.loc 1 97 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB26:
.LBB25:
	.loc 1 88 8
	li	a5,79
	bleu	a0,a5,.L20
.L21:
	.loc 1 89 9 is_stmt 1
	.loc 1 90 9
	.loc 1 92 9
	.loc 1 90 15
	j	.L21
.L20:
.LVL13:
.LBE25:
.LBE26:
	.loc 1 99 5
	.loc 1 103 10
	.loc 1 106 5
	.loc 1 106 8 is_stmt 0
	beq	a1,zero,.L19
.LVL14:
.LBB27:
.LBB28:
	.loc 1 111 5 is_stmt 1
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	slli	a4,a0,2
	.loc 1 112 33 is_stmt 0
	add	a4,a5,a4
	addi	a0,a0,80
.LVL15:
	.loc 1 113 33
	slli	a0,a0,2
.LVL16:
	.loc 1 112 33
	sw	a1,0(a4)
	.loc 1 113 9 is_stmt 1
	.loc 1 113 33 is_stmt 0
	add	a0,a5,a0
	.loc 1 111 8
	bne	a2,zero,.L23
	.loc 1 112 9 is_stmt 1
	.loc 1 113 33 is_stmt 0
	sw	zero,0(a0)
.LVL17:
.L19:
.LBE28:
.LBE27:
	.loc 1 122 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L23:
	.cfi_restore_state
.LBB30:
.LBB29:
	.loc 1 116 9 is_stmt 1
	.loc 1 117 33 is_stmt 0
	sw	a2,0(a0)
.LVL19:
	j	.L19
.LBE29:
.LBE30:
	.cfi_endproc
.LFE15:
	.size	bl_irq_register_with_ctx, .-bl_irq_register_with_ctx
	.section	.text.bl_irq_ctx_get,"ax",@progbits
	.align	1
	.globl	bl_irq_ctx_get
	.type	bl_irq_ctx_get, @function
bl_irq_ctx_get:
.LFB16:
	.loc 1 125 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 126 5
.LBB31:
.LBB32:
	.loc 1 88 5
.LBE32:
.LBE31:
	.loc 1 125 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB34:
.LBB33:
	.loc 1 88 8
	li	a5,79
	bleu	a0,a5,.L29
.L30:
	.loc 1 89 9 is_stmt 1
	.loc 1 90 9
	.loc 1 92 9
	.loc 1 90 15
	j	.L30
.L29:
.LVL21:
.LBE33:
.LBE34:
	.loc 1 127 5
	.loc 1 127 27 is_stmt 0
	addi	a0,a0,80
.LVL22:
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	slli	a0,a0,2
.LVL23:
	add	a0,a5,a0
	.loc 1 127 10
	lw	a5,0(a0)
	.loc 1 130 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 127 10
	sw	a5,0(a1)
	.loc 1 129 5 is_stmt 1
	.loc 1 130 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	bl_irq_ctx_get, .-bl_irq_ctx_get
	.section	.text.bl_irq_register,"ax",@progbits
	.align	1
	.globl	bl_irq_register
	.type	bl_irq_register, @function
bl_irq_register:
.LFB17:
	.loc 1 133 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 134 5
	.loc 1 133 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 135 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 134 5
	li	a2,0
	.loc 1 135 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 134 5
	tail	bl_irq_register_with_ctx
.LVL25:
	.cfi_endproc
.LFE17:
	.size	bl_irq_register, .-bl_irq_register
	.section	.text.bl_irq_unregister,"ax",@progbits
	.align	1
	.globl	bl_irq_unregister
	.type	bl_irq_unregister, @function
bl_irq_unregister:
.LFB18:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 139 5
.LBB35:
.LBB36:
	.loc 1 88 5
.LBE36:
.LBE35:
	.loc 1 138 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB38:
.LBB37:
	.loc 1 88 8
	li	a5,79
	bleu	a0,a5,.L35
.L36:
	.loc 1 89 9 is_stmt 1
	.loc 1 90 9
	.loc 1 92 9
	.loc 1 90 15
	j	.L36
.L35:
.LVL27:
.LBE37:
.LBE38:
	.loc 1 140 5
	.loc 1 141 5
	.loc 1 142 5
	.loc 1 142 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	slli	a0,a0,2
.LVL28:
	addi	a5,a5,%lo(.LANCHOR0)
	add	a0,a5,a0
	sw	zero,0(a0)
	.loc 1 143 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	bl_irq_unregister, .-bl_irq_unregister
	.section	.text.interrupt_entry,"ax",@progbits
	.align	1
	.globl	interrupt_entry
	.type	interrupt_entry, @function
interrupt_entry:
.LFB19:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 146 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 148 12
	slli	a0,a0,5
.LVL30:
	.cfi_offset 8, -4
	.loc 1 146 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 148 12
	srli	a0,a0,5
.LVL31:
	.loc 1 149 5 is_stmt 1
	.loc 1 149 8 is_stmt 0
	li	a5,79
	bgtu	a0,a5,.L39
	.loc 1 150 9 is_stmt 1
	.loc 1 150 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	slli	a4,a0,2
	add	a4,a5,a4
	lw	a4,0(a4)
.LVL32:
	.loc 1 152 5 is_stmt 1
	.loc 1 152 8 is_stmt 0
	beq	a4,zero,.L39
	.loc 1 153 9 is_stmt 1
	.loc 1 153 28 is_stmt 0
	addi	a0,a0,80
.LVL33:
	slli	a0,a0,2
.LVL34:
	add	a0,a5,a0
	lw	a0,0(a0)
	.loc 1 153 12
	beq	a0,zero,.L40
	.loc 1 154 12 is_stmt 1
	.loc 1 170 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 154 13
	jr	a4
.LVL35:
.L40:
	.cfi_restore_state
	.loc 1 157 13 is_stmt 1
	.loc 1 170 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 157 14
	jr	a4
.LVL36:
.L39:
	.cfi_restore_state
.L43:
	.loc 1 165 10 is_stmt 1 discriminator 1
	.loc 1 166 9 discriminator 1
	.loc 1 168 9 discriminator 1
	.loc 1 166 15 discriminator 1
	j	.L43
	.cfi_endproc
.LFE19:
	.size	interrupt_entry, .-interrupt_entry
	.section	.rodata.exception_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Exception Entry--->>>\r\n"
	.align	2
.LC1:
	.string	"  msg: Instruction address misaligned\r\n"
	.align	2
.LC2:
	.string	"  msg: Instruction access fault\r\n"
	.align	2
.LC3:
	.string	"  msg: Illegal instruction\r\n"
	.align	2
.LC4:
	.string	"  msg: Breakpoint\r\n"
	.align	2
.LC5:
	.string	"  msg: Load address misaligned\r\n"
	.align	2
.LC6:
	.string	"  msg: Load access fault\r\n"
	.align	2
.LC7:
	.string	"  msg: Store/AMO access misaligned\r\n"
	.align	2
.LC8:
	.string	"  msg: Store/AMO access fault\r\n"
	.align	2
.LC9:
	.string	"  msg: Environment call from U-mode\r\n"
	.align	2
.LC10:
	.string	"  msg: Environment call from S-mode\r\n"
	.align	2
.LC11:
	.string	"  msg: Reserved\r\n"
	.align	2
.LC12:
	.string	"  msg: Environment call from M-mode\r\n"
	.align	2
.LC13:
	.string	"  msg: Instruction page fault\r\n"
	.align	2
.LC14:
	.string	"  msg: Load page fault\r\n"
	.align	2
.LC15:
	.string	"  msg: Store/AMO page fault\r\n"
	.align	2
.LC16:
	.string	"  msg: Reserved default exception\r\n"
	.section	.text.exception_entry,"ax",@progbits
	.align	1
	.globl	exception_entry
	.type	exception_entry, @function
exception_entry:
.LFB22:
	.loc 1 345 1
	.cfi_startproc
.LVL37:
	.loc 1 346 5
	.loc 1 345 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	ra,28(sp)
	.loc 1 346 19
	li	a5,11
	.loc 1 345 1
	.cfi_offset 1, -4
	.loc 1 346 19
	sw	a5,-20(s0)
	.loc 1 353 5 is_stmt 1
	.loc 1 353 8 is_stmt 0
	li	a4,4
.LVL38:
	.loc 1 353 17
	andi	a5,a0,1023
	.loc 1 345 1
	mv	s1,a0
	mv	a2,a1
.LVL39:
	mv	s2,a3
	.loc 1 353 8
	bne	a5,a4,.L46
	.loc 1 354 9 is_stmt 1
	mv	a1,a0
.LVL40:
	mv	a0,a3
.LVL41:
	call	misaligned_load_trap
.LVL42:
.L45:
	.loc 1 390 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL43:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL44:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L46:
	.cfi_restore_state
	.loc 1 355 12 is_stmt 1
	.loc 1 355 15 is_stmt 0
	li	a4,6
	bne	a5,a4,.L48
	.loc 1 356 9 is_stmt 1
	mv	a1,a0
.LVL46:
	mv	a0,a3
	call	misaligned_store_trap
.LVL47:
	j	.L45
.LVL48:
.L48:
	.loc 1 358 9
	.loc 1 324 3
	.loc 1 327 43
	.loc 1 332 66
	.loc 1 335 52
	.loc 1 339 66
	.loc 1 341 68
	.loc 1 359 9
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	puts
.LVL49:
	.loc 1 364 10
	.loc 1 365 9
.LBB42:
.LBB43:
	.loc 1 174 5
	.loc 1 175 5
.LBE43:
.LBE42:
	.loc 1 365 9 is_stmt 0
	slli	s1,s1,16
.LVL50:
	srli	s1,s1,16
	li	a5,15
	bgtu	s1,a5,.L49
	lui	a5,%hi(.L51)
	addi	a5,a5,%lo(.L51)
	slli	s1,s1,2
	add	s1,s1,a5
	lw	a5,0(s1)
	jr	a5
	.section	.rodata.exception_entry,"a",@progbits
	.align	2
	.align	2
.L51:
	.word	.L65
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L58
	.word	.L57
	.word	.L56
	.word	.L52
	.word	.L55
	.word	.L54
	.word	.L53
	.word	.L52
	.word	.L50
	.section	.text.exception_entry
.L65:
.LBB46:
.LBB44:
	.loc 1 179 13 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
.L69:
	.loc 1 268 13 is_stmt 0
	call	puts
.LVL51:
.LBE44:
.LBE46:
	.loc 1 367 9 is_stmt 1
	lui	a0,%hi(puts)
	mv	a1,s2
	addi	a0,a0,%lo(puts)
	call	backtrace_now_task
.LVL52:
	.loc 1 369 9
	li	a0,4096
	addi	a0,a0,904
	call	bl_wdt_init
.LVL53:
	.loc 1 371 9
	li	a2,1
	addi	a1,s0,-20
	li	a0,14
	call	GLB_GPIO_Func_Init
.LVL54:
	.loc 1 372 9
	.loc 1 372 13 is_stmt 0
	li	a5,12
	.loc 1 373 9
	li	a2,1
	addi	a1,s0,-20
	li	a0,14
	.loc 1 372 13
	sw	a5,-20(s0)
	.loc 1 373 9 is_stmt 1
	call	GLB_GPIO_Func_Init
.LVL55:
	.loc 1 374 9
	.loc 1 374 13 is_stmt 0
	li	a5,14
	.loc 1 375 9
	li	a2,1
	addi	a1,s0,-20
	li	a0,14
	.loc 1 374 13
	sw	a5,-20(s0)
	.loc 1 375 9 is_stmt 1
	call	GLB_GPIO_Func_Init
.LVL56:
	.loc 1 376 9
	.loc 1 376 13 is_stmt 0
	li	a5,17
	.loc 1 377 9
	li	a2,1
	addi	a1,s0,-20
	li	a0,14
.LBB47:
	.loc 1 385 13
	lui	s1,%hi(_sp_main)
.LBE47:
	.loc 1 376 13
	sw	a5,-20(s0)
	.loc 1 377 9 is_stmt 1
.LBB48:
	.loc 1 385 13 is_stmt 0
	addi	s1,s1,%lo(_sp_main)
.LBE48:
	.loc 1 377 9
	call	GLB_GPIO_Func_Init
.LVL57:
.L67:
	.loc 1 379 9 is_stmt 1 discriminator 1
.LBB49:
	.loc 1 383 13 discriminator 1
	.loc 1 385 13 discriminator 1
 #APP
# 385 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.c" 1
	add sp, x0, s1
# 0 "" 2
	.loc 1 386 13 discriminator 1
 #NO_APP
	call	bl_coredump_run
.LVL58:
.LBE49:
	.loc 1 379 15 discriminator 1
	j	.L67
.LVL59:
.L64:
.LBB50:
.LBB45:
	.loc 1 185 13
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	j	.L69
.L63:
	.loc 1 191 13
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	j	.L69
.L62:
	.loc 1 197 13
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	j	.L69
.L61:
	.loc 1 203 13
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	j	.L69
.L60:
	.loc 1 209 13
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	j	.L69
.L59:
	.loc 1 215 13
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	j	.L69
.L58:
	.loc 1 221 13
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	j	.L69
.L57:
	.loc 1 227 13
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	j	.L69
.L56:
	.loc 1 233 13
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	j	.L69
.L52:
	.loc 1 240 13
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	j	.L69
.L55:
	.loc 1 246 13
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	j	.L69
.L54:
	.loc 1 252 13
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	j	.L69
.L53:
	.loc 1 258 13
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	j	.L69
.L50:
	.loc 1 264 13
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	j	.L69
.L49:
	.loc 1 268 13
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	j	.L69
.LBE45:
.LBE50:
	.cfi_endproc
.LFE22:
	.size	exception_entry, .-exception_entry
	.section	.rodata.bl_irq_init.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"[IRQ] Clearing and Disable all the pending IRQ...\r\n"
	.section	.text.bl_irq_init,"ax",@progbits
	.align	1
	.globl	bl_irq_init
	.type	bl_irq_init, @function
bl_irq_init:
.LFB23:
	.loc 1 393 1
	.cfi_startproc
	.loc 1 394 5
	.loc 1 396 5
	.loc 1 393 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 396 5
	lui	a0,%hi(.LC17)
	.loc 1 393 1
	.loc 1 396 5
	addi	a0,a0,%lo(.LC17)
	call	puts
.LVL60:
	.loc 1 399 5 is_stmt 1
	.loc 1 399 28
	.loc 1 399 14 is_stmt 0
	li	a5,41943040
	addi	a4,a5,1024
	.loc 1 399 5
	addi	a5,a5,1152
.LVL61:
.L71:
	.loc 1 400 9 is_stmt 1 discriminator 3
	.loc 1 400 24 is_stmt 0 discriminator 3
	sb	zero,0(a4)
	.loc 1 399 52 is_stmt 1 discriminator 3
	.loc 1 399 55 is_stmt 0 discriminator 3
	addi	a4,a4,1
.LVL62:
	.loc 1 399 28 is_stmt 1 discriminator 3
	.loc 1 399 5 is_stmt 0 discriminator 3
	bne	a4,a5,.L71
	.loc 1 403 14
	li	a5,41943040
	.loc 1 403 5
	addi	a4,a5,128
.LVL63:
.L72:
	.loc 1 404 9 is_stmt 1 discriminator 3
	.loc 1 404 24 is_stmt 0 discriminator 3
	sb	zero,0(a5)
	.loc 1 403 52 is_stmt 1 discriminator 3
	.loc 1 403 55 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL64:
	.loc 1 403 28 is_stmt 1 discriminator 3
	.loc 1 403 5 is_stmt 0 discriminator 3
	bne	a5,a4,.L72
	.loc 1 406 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	bl_irq_init, .-bl_irq_init
	.section	.text.bl_irq_save,"ax",@progbits
	.align	1
	.globl	bl_irq_save
	.type	bl_irq_save, @function
bl_irq_save:
.LFB24:
	.loc 1 409 1 is_stmt 1
	.cfi_startproc
	.loc 1 410 5
	.loc 1 413 5
	.loc 1 409 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 413 5
	li	a0,8
 #APP
# 413 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.c" 1
	csrrc a0, mstatus, a0
# 0 "" 2
.LVL65:
	.loc 1 414 5 is_stmt 1
	.loc 1 415 1 is_stmt 0
 #NO_APP
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	bl_irq_save, .-bl_irq_save
	.section	.text.bl_irq_restore,"ax",@progbits
	.align	1
	.globl	bl_irq_restore
	.type	bl_irq_restore, @function
bl_irq_restore:
.LFB25:
	.loc 1 418 1 is_stmt 1
	.cfi_startproc
.LVL66:
	.loc 1 419 5
	.loc 1 418 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 419 5
 #APP
# 419 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.c" 1
	csrw mstatus, a0
# 0 "" 2
	.loc 1 422 1
 #NO_APP
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	bl_irq_restore, .-bl_irq_restore
	.section	.bss.handler_list,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	handler_list, @object
	.size	handler_list, 640
handler_list:
	.zero	640
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/coredump/inc/bl_coredump.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/panic/panic.h"
	.file 8 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_wdt.h"
	.file 9 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7e6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF90
	.byte	0xc
	.4byte	.LASF91
	.4byte	.LASF92
	.4byte	.Ldebug_ranges0+0xc8
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x56
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x97
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x3
	.byte	0x5
	.byte	0xe
	.4byte	0xc6
	.byte	0x9
	.4byte	.LASF13
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0xa
	.byte	0x3
	.4byte	0x9f
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x4c
	.byte	0x1
	.4byte	0x171
	.byte	0x9
	.4byte	.LASF18
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x9
	.4byte	.LASF20
	.byte	0x2
	.byte	0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x9
	.4byte	.LASF25
	.byte	0x7
	.byte	0x9
	.4byte	.LASF26
	.byte	0x8
	.byte	0x9
	.4byte	.LASF27
	.byte	0x9
	.byte	0x9
	.4byte	.LASF28
	.byte	0xa
	.byte	0x9
	.4byte	.LASF29
	.byte	0xb
	.byte	0x9
	.4byte	.LASF30
	.byte	0xc
	.byte	0x9
	.4byte	.LASF31
	.byte	0xd
	.byte	0x9
	.4byte	.LASF32
	.byte	0xe
	.byte	0x9
	.4byte	.LASF33
	.byte	0xf
	.byte	0x9
	.4byte	.LASF34
	.byte	0x10
	.byte	0x9
	.4byte	.LASF35
	.byte	0x11
	.byte	0x9
	.4byte	.LASF36
	.byte	0x12
	.byte	0x9
	.4byte	.LASF37
	.byte	0x13
	.byte	0x9
	.4byte	.LASF38
	.byte	0x14
	.byte	0x9
	.4byte	.LASF39
	.byte	0x15
	.byte	0x9
	.4byte	.LASF40
	.byte	0x16
	.byte	0x9
	.4byte	.LASF41
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF42
	.byte	0x4
	.byte	0x65
	.byte	0x2
	.4byte	0xd2
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x71
	.byte	0x1
	.4byte	0x1c8
	.byte	0x9
	.4byte	.LASF43
	.byte	0x1
	.byte	0x9
	.4byte	.LASF44
	.byte	0x2
	.byte	0x9
	.4byte	.LASF45
	.byte	0x4
	.byte	0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x9
	.4byte	.LASF50
	.byte	0xa
	.byte	0x9
	.4byte	.LASF51
	.byte	0xb
	.byte	0x9
	.4byte	.LASF52
	.byte	0xe
	.byte	0
	.byte	0xa
	.4byte	0x91
	.4byte	0x1de
	.byte	0xb
	.4byte	0x7c
	.byte	0x1
	.byte	0xb
	.4byte	0x7c
	.byte	0x4f
	.byte	0
	.byte	0xc
	.4byte	.LASF53
	.byte	0x1
	.byte	0x51
	.byte	0xf
	.4byte	0x1c8
	.byte	0x5
	.byte	0x3
	.4byte	handler_list
	.byte	0xd
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1a1
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x217
	.byte	0xe
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1a1
	.byte	0x19
	.4byte	0x75
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xf
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x198
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x242
	.byte	0x10
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x19a
	.byte	0xe
	.4byte	0x5b
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xd
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x188
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x27e
	.byte	0x11
	.string	"ptr"
	.byte	0x1
	.2byte	0x18a
	.byte	0xe
	.4byte	0x5b
	.4byte	.LLST26
	.byte	0x12
	.4byte	.LVL60
	.4byte	0x792
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x158
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x432
	.byte	0x14
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x158
	.byte	0x1f
	.4byte	0x5b
	.4byte	.LLST20
	.byte	0x14
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x158
	.byte	0x30
	.4byte	0x5b
	.4byte	.LLST21
	.byte	0x14
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x158
	.byte	0x3f
	.4byte	0x5b
	.4byte	.LLST22
	.byte	0x14
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x158
	.byte	0x51
	.4byte	0x432
	.4byte	.LLST23
	.byte	0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x158
	.byte	0x62
	.4byte	0x432
	.4byte	.LLST24
	.byte	0x15
	.string	"pin"
	.byte	0x1
	.2byte	0x15a
	.byte	0x13
	.4byte	0x171
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x16
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0x31a
	.byte	0x17
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x17f
	.byte	0x1e
	.4byte	0x83
	.byte	0x18
	.4byte	.LVL58
	.4byte	0x79e
	.byte	0
	.byte	0x19
	.4byte	0x45a
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x16d
	.byte	0x9
	.4byte	0x342
	.byte	0x1a
	.4byte	0x467
	.4byte	.LLST25
	.byte	0x18
	.4byte	.LVL51
	.4byte	0x792
	.byte	0
	.byte	0x1b
	.4byte	.LVL42
	.4byte	0x7aa
	.4byte	0x363
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x1b
	.4byte	.LVL47
	.4byte	0x7b7
	.4byte	0x37d
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL49
	.4byte	0x792
	.4byte	0x394
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL52
	.4byte	0x7c4
	.4byte	0x3a8
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL53
	.4byte	0x7d0
	.4byte	0x3bd
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x1b
	.4byte	.LVL54
	.4byte	0x7dc
	.4byte	0x3db
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1b
	.4byte	.LVL55
	.4byte	0x7dc
	.4byte	0x3f9
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1b
	.4byte	.LVL56
	.4byte	0x7dc
	.4byte	0x417
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x12
	.4byte	.LVL57
	.4byte	0x7dc
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x83
	.byte	0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x120
	.byte	0xd
	.byte	0x1
	.4byte	0x454
	.byte	0x1d
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x120
	.byte	0x28
	.4byte	0x454
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7c
	.byte	0x1e
	.4byte	.LASF65
	.byte	0x1
	.byte	0xac
	.byte	0xd
	.byte	0x1
	.4byte	0x474
	.byte	0x1f
	.4byte	.LASF66
	.byte	0x1
	.byte	0xac
	.byte	0x30
	.4byte	0x5b
	.byte	0
	.byte	0x20
	.4byte	.LASF95
	.byte	0x1
	.byte	0x91
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ab
	.byte	0x21
	.4byte	.LASF59
	.byte	0x1
	.byte	0x91
	.byte	0x1f
	.4byte	0x5b
	.4byte	.LLST18
	.byte	0x22
	.4byte	.LASF67
	.byte	0x1
	.byte	0x93
	.byte	0xb
	.4byte	0x8f
	.4byte	.LLST19
	.byte	0
	.byte	0x23
	.4byte	.LASF68
	.byte	0x1
	.byte	0x89
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x4fa
	.byte	0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x89
	.byte	0x1c
	.4byte	0x75
	.4byte	.LLST16
	.byte	0x24
	.4byte	.LASF67
	.byte	0x1
	.byte	0x89
	.byte	0x2a
	.4byte	0x8f
	.byte	0x1
	.byte	0x5b
	.byte	0x25
	.4byte	0x5d5
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x8b
	.byte	0x5
	.byte	0x1a
	.4byte	0x5e2
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF70
	.byte	0x1
	.byte	0x84
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x54e
	.byte	0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x84
	.byte	0x1a
	.4byte	0x75
	.4byte	.LLST14
	.byte	0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x84
	.byte	0x28
	.4byte	0x8f
	.4byte	.LLST15
	.byte	0x26
	.4byte	.LVL25
	.4byte	0x5a3
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7c
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x59d
	.byte	0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x7c
	.byte	0x19
	.4byte	0x75
	.4byte	.LLST12
	.byte	0x27
	.string	"ctx"
	.byte	0x1
	.byte	0x7c
	.byte	0x28
	.4byte	0x59d
	.byte	0x1
	.byte	0x5b
	.byte	0x25
	.4byte	0x5d5
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x7e
	.byte	0x5
	.byte	0x1a
	.4byte	0x5e2
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8f
	.byte	0x28
	.4byte	.LASF96
	.byte	0x1
	.byte	0x60
	.byte	0x6
	.byte	0x1
	.4byte	0x5d5
	.byte	0x1f
	.4byte	.LASF69
	.byte	0x1
	.byte	0x60
	.byte	0x23
	.4byte	0x75
	.byte	0x1f
	.4byte	.LASF67
	.byte	0x1
	.byte	0x60
	.byte	0x31
	.4byte	0x8f
	.byte	0x29
	.string	"ctx"
	.byte	0x1
	.byte	0x60
	.byte	0x40
	.4byte	0x8f
	.byte	0
	.byte	0x1e
	.4byte	.LASF72
	.byte	0x1
	.byte	0x56
	.byte	0x14
	.byte	0x3
	.4byte	0x5ef
	.byte	0x1f
	.4byte	.LASF69
	.byte	0x1
	.byte	0x56
	.byte	0x27
	.4byte	0x75
	.byte	0
	.byte	0x2a
	.4byte	.LASF97
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.byte	0x23
	.4byte	.LASF73
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x681
	.byte	0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0x25
	.byte	0x37
	.4byte	0xc6
	.4byte	.LLST4
	.byte	0x2b
	.string	"ptr"
	.byte	0x1
	.byte	0x25
	.byte	0x43
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0x2c
	.string	"val"
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0x5b
	.4byte	0x12345678
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0
	.byte	0xc
	.4byte	.LASF75
	.byte	0x1
	.byte	0x3b
	.byte	0x16
	.4byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x3
	.4byte	.LASF76
	.byte	0x1
	.byte	0x3c
	.byte	0x1c
	.4byte	0x91
	.byte	0x22
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3d
	.byte	0x17
	.4byte	0x65b
	.4byte	.LLST6
	.byte	0x2e
	.4byte	.LVL11
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF78
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x6a8
	.byte	0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0x20
	.byte	0x28
	.4byte	0x7c
	.4byte	.LLST3
	.byte	0
	.byte	0x23
	.4byte	.LASF80
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x6cf
	.byte	0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0x1b
	.byte	0x26
	.4byte	0x7c
	.4byte	.LLST2
	.byte	0
	.byte	0x23
	.4byte	.LASF81
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6f6
	.byte	0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0x16
	.byte	0x22
	.4byte	0x7c
	.4byte	.LLST1
	.byte	0
	.byte	0x23
	.4byte	.LASF82
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x71d
	.byte	0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0x11
	.byte	0x21
	.4byte	0x7c
	.4byte	.LLST0
	.byte	0
	.byte	0x2f
	.4byte	0x5a3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x792
	.byte	0x1a
	.4byte	0x5b0
	.4byte	.LLST7
	.byte	0x30
	.4byte	0x5bc
	.byte	0x1
	.byte	0x5b
	.byte	0x30
	.4byte	0x5c8
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.4byte	0x5d5
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x62
	.byte	0x5
	.4byte	0x765
	.byte	0x1a
	.4byte	0x5e2
	.4byte	.LLST8
	.byte	0
	.byte	0x25
	.4byte	0x5a3
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x60
	.byte	0x6
	.byte	0x1a
	.4byte	0x5c8
	.4byte	.LLST9
	.byte	0x1a
	.4byte	0x5bc
	.4byte	.LLST10
	.byte	0x1a
	.4byte	0x5b0
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x5
	.byte	0xdd
	.byte	0x5
	.byte	0x32
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x6
	.byte	0x8
	.byte	0x6
	.byte	0x33
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x111
	.byte	0xd
	.byte	0x33
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x112
	.byte	0xd
	.byte	0x32
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x7
	.byte	0x6
	.byte	0x5
	.byte	0x32
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x8
	.byte	0x3
	.byte	0x5
	.byte	0x33
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x277
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
	.byte	0
	.byte	0x27
	.byte	0x19
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x2
	.byte	0x18
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x5
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
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x1
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
	.byte	0x2e
	.byte	0
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
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x93,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
.LLST26:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0xc
	.4byte	0x2800400
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL63
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL37
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42-1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL47-1
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49-1
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL38
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x7
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE22
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0x7a
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x35
	.byte	0x24
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0x7a
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11-1
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0x80,0x80,0x6c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE10
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0x80,0x80,0x6c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE9
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0xf8,0xff,0x6b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE8
	.2byte	0x6
	.byte	0x7a
	.byte	0x80,0xf8,0xff,0x6b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0x7a
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0x7a
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
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
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF91:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.c"
.LASF13:
	.string	"BL_IRQ_EXCEPTION_TYPE_LOAD_MISALIGN"
.LASF50:
	.string	"GPIO_FUN_ANALOG"
.LASF87:
	.string	"backtrace_now_task"
.LASF95:
	.string	"interrupt_entry"
.LASF88:
	.string	"bl_wdt_init"
.LASF81:
	.string	"bl_irq_disable"
.LASF9:
	.string	"long long unsigned int"
.LASF70:
	.string	"bl_irq_register"
.LASF45:
	.string	"GPIO_FUN_SPI"
.LASF67:
	.string	"handler"
.LASF29:
	.string	"GLB_GPIO_PIN_11"
.LASF14:
	.string	"BL_IRQ_EXCEPTION_TYPE_STORE_MISALIGN"
.LASF32:
	.string	"GLB_GPIO_PIN_14"
.LASF33:
	.string	"GLB_GPIO_PIN_15"
.LASF15:
	.string	"BL_IRQ_EXCEPTION_TYPE_ACCESS_ILLEGAL"
.LASF64:
	.string	"registerdump"
.LASF6:
	.string	"uint8_t"
.LASF94:
	.string	"_sp_main"
.LASF11:
	.string	"uintptr_t"
.LASF83:
	.string	"puts"
.LASF7:
	.string	"uint32_t"
.LASF41:
	.string	"GLB_GPIO_PIN_MAX"
.LASF1:
	.string	"short int"
.LASF69:
	.string	"irqnum"
.LASF28:
	.string	"GLB_GPIO_PIN_10"
.LASF43:
	.string	"GPIO_FUN_SDIO"
.LASF30:
	.string	"GLB_GPIO_PIN_12"
.LASF31:
	.string	"GLB_GPIO_PIN_13"
.LASF17:
	.string	"BL_IRQ_EXCEPTION_TYPE_T"
.LASF46:
	.string	"GPIO_FUN_I2C"
.LASF34:
	.string	"GLB_GPIO_PIN_16"
.LASF35:
	.string	"GLB_GPIO_PIN_17"
.LASF36:
	.string	"GLB_GPIO_PIN_18"
.LASF37:
	.string	"GLB_GPIO_PIN_19"
.LASF82:
	.string	"bl_irq_enable"
.LASF73:
	.string	"bl_irq_exception_trigger"
.LASF2:
	.string	"long int"
.LASF76:
	.string	"ins_ptr_t"
.LASF79:
	.string	"source"
.LASF75:
	.string	"fun_val"
.LASF48:
	.string	"GPIO_FUN_PWM"
.LASF84:
	.string	"bl_coredump_run"
.LASF42:
	.string	"GLB_GPIO_Type"
.LASF4:
	.string	"unsigned char"
.LASF77:
	.string	"func"
.LASF85:
	.string	"misaligned_load_trap"
.LASF86:
	.string	"misaligned_store_trap"
.LASF60:
	.string	"mepc"
.LASF0:
	.string	"signed char"
.LASF58:
	.string	"flags"
.LASF68:
	.string	"bl_irq_unregister"
.LASF78:
	.string	"bl_irq_pending_clear"
.LASF74:
	.string	"type"
.LASF49:
	.string	"GPIO_FUN_EXT_PA"
.LASF19:
	.string	"GLB_GPIO_PIN_1"
.LASF20:
	.string	"GLB_GPIO_PIN_2"
.LASF57:
	.string	"exception_entry"
.LASF21:
	.string	"GLB_GPIO_PIN_3"
.LASF66:
	.string	"code"
.LASF22:
	.string	"GLB_GPIO_PIN_4"
.LASF38:
	.string	"GLB_GPIO_PIN_20"
.LASF39:
	.string	"GLB_GPIO_PIN_21"
.LASF40:
	.string	"GLB_GPIO_PIN_22"
.LASF24:
	.string	"GLB_GPIO_PIN_6"
.LASF63:
	.string	"tasksp"
.LASF25:
	.string	"GLB_GPIO_PIN_7"
.LASF47:
	.string	"GPIO_FUN_UART"
.LASF26:
	.string	"GLB_GPIO_PIN_8"
.LASF16:
	.string	"BL_IRQ_EXCEPTION_TYPE_ILLEGAL_INSTRUCTION"
.LASF27:
	.string	"GLB_GPIO_PIN_9"
.LASF12:
	.string	"char"
.LASF92:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF51:
	.string	"GPIO_FUN_SWGPIO"
.LASF5:
	.string	"short unsigned int"
.LASF44:
	.string	"GPIO_FUN_FLASH"
.LASF53:
	.string	"handler_list"
.LASF10:
	.string	"unsigned int"
.LASF8:
	.string	"long unsigned int"
.LASF55:
	.string	"bl_irq_restore"
.LASF18:
	.string	"GLB_GPIO_PIN_0"
.LASF90:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF54:
	.string	"oldstat"
.LASF3:
	.string	"long long int"
.LASF23:
	.string	"GLB_GPIO_PIN_5"
.LASF56:
	.string	"bl_irq_init"
.LASF71:
	.string	"bl_irq_ctx_get"
.LASF96:
	.string	"bl_irq_register_with_ctx"
.LASF72:
	.string	"_irq_num_check"
.LASF89:
	.string	"GLB_GPIO_Func_Init"
.LASF80:
	.string	"bl_irq_pending_set"
.LASF93:
	.string	"bl_irq_save"
.LASF97:
	.string	"bl_irq_default"
.LASF52:
	.string	"GPIO_FUN_JTAG"
.LASF65:
	.string	"__dump_exception_code_str"
.LASF62:
	.string	"regs"
.LASF59:
	.string	"mcause"
.LASF61:
	.string	"mtval"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
