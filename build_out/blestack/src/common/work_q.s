	.file	"work_q.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.k_work_submit_to_queue,"ax",@progbits
	.align	1
	.type	k_work_submit_to_queue, @function
k_work_submit_to_queue:
.LFB68:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/work_q.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 29 5
	.loc 1 28 1 is_stmt 0
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
	mv	s1,a1
.LVL1:
.LBB4:
.LBB5:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
	.loc 2 370 2 is_stmt 1
	.loc 2 371 2
	.loc 2 373 2
.LBE5:
.LBE4:
	.loc 1 28 1 is_stmt 0
	.loc 1 28 1
	mv	s2,a0
.LBB7:
.LBB6:
	.loc 2 373 8
	li	a1,1
.LVL2:
	addi	a0,s1,8
.LVL3:
	call	atomic_or
.LVL4:
	.loc 2 375 2 is_stmt 1
	.loc 2 375 14 is_stmt 0
	andi	a0,a0,1
.LBE6:
.LBE7:
	.loc 1 29 8
	bne	a0,zero,.L1
	.loc 1 30 9 is_stmt 1
	.loc 1 36 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 30 9
	mv	a1,s1
	mv	a0,s2
	.loc 1 36 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL5:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL6:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 30 9
	tail	k_queue_append
.LVL7:
.L1:
	.cfi_restore_state
	.loc 1 36 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL8:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE68:
	.size	k_work_submit_to_queue, .-k_work_submit_to_queue
	.section	.text.work_timeout,"ax",@progbits
	.align	1
	.type	work_timeout, @function
work_timeout:
.LFB73:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 92 2
	.loc 1 90 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 92 53
	call	k_timer_get_id
.LVL11:
	.loc 1 93 2 is_stmt 1
	.loc 1 93 4 is_stmt 0
	lw	a5,12(a0)
	beq	a5,zero,.L4
	mv	s1,a0
	.loc 1 98 2 is_stmt 1
.LVL12:
.LBB10:
.LBB11:
	.loc 2 331 2
	.loc 2 331 21 is_stmt 0
	addi	a0,a0,8
.LVL13:
	call	atomic_get
.LVL14:
	.loc 2 333 2 is_stmt 1
	.loc 2 333 19 is_stmt 0
	srai	a0,a0,1
	.loc 2 333 12
	andi	a0,a0,1
.LBE11:
.LBE10:
	.loc 1 98 4
	bne	a0,zero,.L6
	.loc 1 99 6 is_stmt 1
	lw	a0,12(s1)
	mv	a1,s1
	call	k_work_submit_to_queue
.LVL15:
	.loc 1 101 6
	.loc 1 101 16 is_stmt 0
	sw	zero,12(s1)
.LVL16:
.L4:
	.loc 1 108 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L6:
	.cfi_restore_state
	.loc 1 105 3 is_stmt 1
	addi	a0,s1,16
	call	k_timer_reset
.LVL18:
	.loc 1 106 3
	.loc 1 108 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 106 3
	lw	a0,12(s1)
	.loc 1 108 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 106 3
	mv	a1,s1
	.loc 1 108 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL19:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 106 3
	tail	k_work_submit_to_queue
.LVL20:
	.cfi_endproc
.LFE73:
	.size	work_timeout, .-work_timeout
	.section	.text.work_queue_main,"ax",@progbits
	.align	1
	.type	work_queue_main, @function
work_queue_main:
.LFB69:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
.LVL21:
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
	.loc 1 56 16 is_stmt 0
	lui	s2,%hi(g_work_queue_main)
.LVL22:
.L13:
	.loc 1 52 5 is_stmt 1
	.loc 1 53 5
	.loc 1 55 5
	.loc 1 56 9
	.loc 1 56 16 is_stmt 0
	li	a1,-1
	addi	a0,s2,%lo(g_work_queue_main)
	call	k_queue_get
.LVL23:
	mv	s1,a0
.LVL24:
	.loc 1 58 9 is_stmt 1
.LBB14:
.LBB15:
	.loc 2 349 2
	.loc 2 350 2
	.loc 2 352 2
	.loc 2 352 8 is_stmt 0
	li	a1,-2
	addi	a0,a0,8
.LVL25:
	call	atomic_and
.LVL26:
	.loc 2 354 2 is_stmt 1
	.loc 2 354 14 is_stmt 0
	andi	a0,a0,1
.LBE15:
.LBE14:
	.loc 1 58 12
	beq	a0,zero,.L12
	.loc 1 59 13 is_stmt 1
	lw	a5,4(s1)
	mv	a0,s1
	jalr	a5
.LVL27:
.L12:
	.loc 1 62 9
	call	k_yield
.LVL28:
	.loc 1 55 11
	.loc 1 56 14 is_stmt 0
	j	.L13
	.cfi_endproc
.LFE69:
	.size	work_queue_main, .-work_queue_main
	.section	.rodata.k_work_q_start.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"work_q_thread"
	.section	.text.k_work_q_start,"ax",@progbits
	.align	1
	.globl	k_work_q_start
	.type	k_work_q_start, @function
k_work_q_start:
.LFB70:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
	.loc 1 68 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 68 5
	lui	a0,%hi(g_work_queue_main)
	.loc 1 67 1
	.loc 1 68 5
	li	a1,20
	addi	a0,a0,%lo(g_work_queue_main)
	call	k_queue_init
.LVL29:
	.loc 1 69 5 is_stmt 1
	.loc 1 72 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 69 12
	lui	a3,%hi(work_queue_main)
	lui	a1,%hi(.LC0)
	lui	a0,%hi(work_q_thread)
	.loc 1 72 1
	.loc 1 69 12
	li	a4,30
	addi	a3,a3,%lo(work_queue_main)
	li	a2,1536
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(work_q_thread)
	.loc 1 72 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 69 12
	tail	k_thread_create
.LVL30:
	.cfi_endproc
.LFE70:
	.size	k_work_q_start, .-k_work_q_start
	.section	.text.k_work_init,"ax",@progbits
	.align	1
	.globl	k_work_init
	.type	k_work_init, @function
k_work_init:
.LFB71:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 77 5
	.loc 1 76 1 is_stmt 0
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
	.loc 1 76 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 77 7
	bne	a0,zero,.L21
	.loc 1 77 25 is_stmt 1 discriminator 1
	call	user_vAssertCalled
.LVL32:
.L21:
	.loc 1 79 2
	addi	a0,s1,8
	call	atomic_clear
.LVL33:
	.loc 1 80 5
	.loc 1 82 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 80 19
	sw	s2,4(s1)
	.loc 1 81 5 is_stmt 1
	.loc 1 82 1 is_stmt 0
	li	a0,0
	lw	s1,4(sp)
	.cfi_restore 9
.LVL34:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL35:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	k_work_init, .-k_work_init
	.section	.text.k_work_submit,"ax",@progbits
	.align	1
	.globl	k_work_submit
	.type	k_work_submit, @function
k_work_submit:
.LFB72:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 86 5
	.loc 1 85 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 87 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 85 1
	mv	a1,a0
	.loc 1 86 5
	lui	a0,%hi(g_work_queue_main)
.LVL37:
	.loc 1 87 1
	.loc 1 86 5
	addi	a0,a0,%lo(g_work_queue_main)
	.loc 1 87 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 86 5
	tail	k_work_submit_to_queue
.LVL38:
	.cfi_endproc
.LFE72:
	.size	k_work_submit, .-k_work_submit
	.section	.text.k_delayed_work_init,"ax",@progbits
	.align	1
	.globl	k_delayed_work_init
	.type	k_delayed_work_init, @function
k_delayed_work_init:
.LFB74:
	.loc 1 111 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 112 5
	.loc 1 111 1 is_stmt 0
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
	.loc 1 111 1
	mv	s1,a0
	.loc 1 112 7
	bne	a0,zero,.L26
	sw	a1,-20(s0)
	.loc 1 112 25 is_stmt 1 discriminator 1
	call	user_vAssertCalled
.LVL40:
	lw	a1,-20(s0)
.LVL41:
.L26:
	.loc 1 114 5
	mv	a0,s1
	call	k_work_init
.LVL42:
	.loc 1 115 5
	lui	a1,%hi(work_timeout)
	mv	a2,s1
	addi	a0,s1,16
	addi	a1,a1,%lo(work_timeout)
	call	k_timer_init
.LVL43:
	.loc 1 116 5
	.loc 1 117 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	.loc 1 116 18
	sw	zero,12(s1)
	.loc 1 117 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL44:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	k_delayed_work_init, .-k_delayed_work_init
	.section	.text.k_delayed_work_cancel,"ax",@progbits
	.align	1
	.globl	k_delayed_work_cancel
	.type	k_delayed_work_cancel, @function
k_delayed_work_cancel:
.LFB78:
	.loc 1 171 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 172 5
	.loc 1 174 5
.LBB18:
.LBB19:
	.loc 2 331 2
.LBE19:
.LBE18:
	.loc 1 171 1 is_stmt 0
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
	.loc 1 171 1
	mv	s1,a0
.LBB21:
.LBB20:
	.loc 2 331 21
	addi	a0,a0,8
.LVL46:
	call	atomic_get
.LVL47:
	.loc 2 333 2 is_stmt 1
	.loc 2 333 12 is_stmt 0
	andi	s2,a0,1
.LVL48:
.LBE20:
.LBE21:
	.loc 1 174 8
	bne	s2,zero,.L30
	.loc 1 179 5 is_stmt 1
	.loc 1 179 8 is_stmt 0
	lw	a5,12(s1)
	beq	a5,zero,.L31
	.loc 1 184 5 is_stmt 1
	addi	a0,s1,16
	call	k_timer_stop
.LVL49:
	.loc 1 185 5
	.loc 1 185 18 is_stmt 0
	sw	zero,12(s1)
	.loc 1 186 5 is_stmt 1
	.loc 1 186 25 is_stmt 0
	sw	zero,28(s1)
	.loc 1 187 5 is_stmt 1
	.loc 1 187 26 is_stmt 0
	sw	zero,32(s1)
.LVL50:
.L28:
	.loc 1 191 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL51:
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL52:
.L30:
	.cfi_restore_state
	.loc 1 175 13
	li	s2,-119
	j	.L28
.L31:
.L29:
.LVL53:
	.loc 1 190 5 is_stmt 1
	.loc 1 180 13 is_stmt 0
	li	s2,-22
	.loc 1 190 12
	j	.L28
	.cfi_endproc
.LFE78:
	.size	k_delayed_work_cancel, .-k_delayed_work_cancel
	.section	.text.k_delayed_work_submit_to_queue.constprop.0,"ax",@progbits
	.align	1
	.type	k_delayed_work_submit_to_queue.constprop.0, @function
k_delayed_work_submit_to_queue.constprop.0:
.LFB86:
	.loc 1 119 12 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 1 123 5
	.loc 1 126 5
	.loc 1 119 12 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 126 13
	lw	a4,12(a0)
	.loc 1 119 12
	mv	s1,a0
	lui	s2,%hi(g_work_queue_main)
	.loc 1 126 8
	bne	a4,zero,.L34
.LVL55:
.L38:
	.loc 1 140 5 is_stmt 1
	.loc 1 140 8 is_stmt 0
	beq	a1,zero,.L35
	.loc 1 147 3 is_stmt 1
	addi	a0,s1,16
	.loc 1 148 16 is_stmt 0
	addi	s2,s2,%lo(g_work_queue_main)
	.loc 1 147 3
	call	k_timer_start
.LVL56:
	.loc 1 148 3 is_stmt 1
	.loc 1 148 16 is_stmt 0
	sw	s2,12(s1)
	j	.L42
.LVL57:
.L34:
.L37:
	sw	a1,-20(s0)
	.loc 1 126 22
	addi	a3,s2,%lo(g_work_queue_main)
	.loc 1 127 13
	li	a5,-112
	.loc 1 126 22
	bne	a4,a3,.L33
	.loc 1 132 5 is_stmt 1
	.loc 1 133 9
	.loc 1 133 15 is_stmt 0
	call	k_delayed_work_cancel
.LVL58:
	.loc 1 135 12
	lw	a1,-20(s0)
	.loc 1 133 15
	mv	a5,a0
.LVL59:
	.loc 1 135 9 is_stmt 1
	.loc 1 135 12 is_stmt 0
	bge	a0,zero,.L38
.LVL60:
.L33:
	.loc 1 155 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL61:
	lw	s2,16(sp)
	.cfi_restore 18
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL62:
.L35:
	.cfi_restore_state
	.loc 1 142 9 is_stmt 1
	mv	a1,s1
	addi	a0,s2,%lo(g_work_queue_main)
	call	k_work_submit_to_queue
.LVL63:
	.loc 1 143 9
	.loc 1 143 22 is_stmt 0
	sw	zero,12(s1)
.L42:
	.loc 1 151 6
	li	a5,0
	j	.L33
	.cfi_endproc
.LFE86:
	.size	k_delayed_work_submit_to_queue.constprop.0, .-k_delayed_work_submit_to_queue.constprop.0
	.section	.text.k_delayed_work_submit_periodic,"ax",@progbits
	.align	1
	.globl	k_delayed_work_submit_periodic
	.type	k_delayed_work_submit_periodic, @function
k_delayed_work_submit_periodic:
.LFB77:
	.loc 1 165 1 is_stmt 1
	.cfi_startproc
.LVL64:
	.loc 1 166 2
.LBB24:
.LBB25:
	.loc 2 409 2
	.loc 2 411 2
.LBE25:
.LBE24:
	.loc 1 165 1 is_stmt 0
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
	.loc 1 165 1
	mv	s1,a0
	mv	s2,a1
.LBB27:
.LBB26:
	.loc 2 411 2
	addi	a0,a0,8
.LVL65:
	li	a1,2
.LVL66:
	call	atomic_or
.LVL67:
.LBE26:
.LBE27:
	.loc 1 167 2 is_stmt 1
	.loc 1 168 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 167 9
	mv	a1,s2
	mv	a0,s1
	.loc 1 168 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL68:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL69:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 167 9
	tail	k_delayed_work_submit_to_queue.constprop.0
.LVL70:
	.cfi_endproc
.LFE77:
	.size	k_delayed_work_submit_periodic, .-k_delayed_work_submit_periodic
	.section	.text.k_delayed_work_submit,"ax",@progbits
	.align	1
	.globl	k_delayed_work_submit
	.type	k_delayed_work_submit, @function
k_delayed_work_submit:
.LFB76:
	.loc 1 158 1 is_stmt 1
	.cfi_startproc
.LVL71:
	.loc 1 159 2
.LBB30:
.LBB31:
	.loc 2 391 2
	.loc 2 393 2
.LBE31:
.LBE30:
	.loc 1 158 1 is_stmt 0
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
	.loc 1 158 1
	mv	s1,a0
	mv	s2,a1
.LBB33:
.LBB32:
	.loc 2 393 2
	addi	a0,a0,8
.LVL72:
	li	a1,-3
.LVL73:
	call	atomic_and
.LVL74:
.LBE32:
.LBE33:
	.loc 1 160 2 is_stmt 1
	.loc 1 161 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 160 9
	mv	a1,s2
	mv	a0,s1
	.loc 1 161 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL75:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL76:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 160 9
	tail	k_delayed_work_submit_to_queue.constprop.0
.LVL77:
	.cfi_endproc
.LFE76:
	.size	k_delayed_work_submit, .-k_delayed_work_submit
	.section	.text.k_delayed_work_remaining_get,"ax",@progbits
	.align	1
	.globl	k_delayed_work_remaining_get
	.type	k_delayed_work_remaining_get, @function
k_delayed_work_remaining_get:
.LFB79:
	.loc 1 194 1 is_stmt 1
	.cfi_startproc
.LVL78:
	.loc 1 195 5
	.loc 1 196 5
	.loc 1 198 5
	.loc 1 198 8 is_stmt 0
	beq	a0,zero,.L50
	.loc 1 202 5 is_stmt 1
.LVL79:
	.loc 1 203 5
	.loc 1 194 1 is_stmt 0
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
	.loc 1 203 19
	lw	s1,28(a0)
	.loc 1 203 50
	lw	s2,32(a0)
	.loc 1 203 32
	call	k_now_ms
.LVL80:
	.loc 1 204 5 is_stmt 1
	.loc 1 203 29 is_stmt 0
	add	s1,s1,s2
.LVL81:
	sub	a0,s1,a0
.LVL82:
	bge	a0,zero,.L47
	li	a0,0
.LVL83:
.L47:
	.loc 1 208 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL84:
.L50:
	.loc 1 199 16
	li	a0,0
.LVL85:
	.loc 1 208 1
	ret
	.cfi_endproc
.LFE79:
	.size	k_delayed_work_remaining_get, .-k_delayed_work_remaining_get
	.section	.text.k_delayed_work_del_timer,"ax",@progbits
	.align	1
	.globl	k_delayed_work_del_timer
	.type	k_delayed_work_del_timer, @function
k_delayed_work_del_timer:
.LFB80:
	.loc 1 211 1 is_stmt 1
	.cfi_startproc
.LVL86:
	.loc 1 212 5
	.loc 1 212 7 is_stmt 0
	beq	a0,zero,.L64
	.loc 1 211 1 discriminator 1
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
	.loc 1 212 20 discriminator 1
	lw	a5,16(a0)
	mv	s1,a0
	beq	a5,zero,.L55
	.loc 1 215 5 is_stmt 1
	addi	a0,a0,16
.LVL87:
	call	k_timer_delete
.LVL88:
	.loc 1 216 5
	.loc 1 216 27 is_stmt 0
	sw	zero,16(s1)
.L55:
	.loc 1 217 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL89:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL90:
.L64:
	ret
	.cfi_endproc
.LFE80:
	.size	k_delayed_work_del_timer, .-k_delayed_work_del_timer
	.section	.text.k_delayed_work_free,"ax",@progbits
	.align	1
	.globl	k_delayed_work_free
	.type	k_delayed_work_free, @function
k_delayed_work_free:
.LFB81:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
.LVL91:
	.loc 1 222 5
	.loc 1 224 5
.LBB36:
.LBB37:
	.loc 2 331 2
.LBE37:
.LBE36:
	.loc 1 221 1 is_stmt 0
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
	.loc 1 221 1
	mv	s1,a0
.LBB39:
.LBB38:
	.loc 2 331 21
	addi	a0,a0,8
.LVL92:
	call	atomic_get
.LVL93:
	.loc 2 333 2 is_stmt 1
	.loc 2 333 12 is_stmt 0
	andi	s2,a0,1
.LVL94:
.LBE38:
.LBE39:
	.loc 1 224 8
	bne	s2,zero,.L69
	.loc 1 229 2 is_stmt 1
	mv	a0,s1
	call	k_delayed_work_del_timer
.LVL95:
	.loc 1 230 5
	.loc 1 230 18 is_stmt 0
	sw	zero,12(s1)
	.loc 1 231 5 is_stmt 1
	.loc 1 231 25 is_stmt 0
	sw	zero,28(s1)
	.loc 1 232 5 is_stmt 1
	.loc 1 232 26 is_stmt 0
	sw	zero,32(s1)
.LVL96:
.L67:
	.loc 1 236 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL97:
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL98:
.L69:
	.cfi_restore_state
.L68:
	.loc 1 235 5 is_stmt 1
	.loc 1 225 13 is_stmt 0
	li	s2,-119
	.loc 1 235 12
	j	.L67
	.cfi_endproc
.LFE81:
	.size	k_delayed_work_free, .-k_delayed_work_free
	.comm	g_work_queue_main,12,4
	.comm	work_q_thread,4,4
	.text
.Letext0:
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd09
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ldebug_ranges0+0x78
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x3f
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x12
	.byte	0x11
	.4byte	0x33
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.byte	0x1e
	.byte	0x2
	.4byte	0xb1
	.byte	0x6
	.4byte	.LASF12
	.byte	0x5
	.byte	0x1f
	.byte	0x12
	.4byte	0xcb
	.byte	0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0x20
	.byte	0x12
	.4byte	0xcb
	.byte	0
	.byte	0x7
	.4byte	.LASF21
	.byte	0x8
	.byte	0x5
	.byte	0x1d
	.byte	0x8
	.4byte	0xcb
	.byte	0x8
	.4byte	0x8f
	.byte	0
	.byte	0x8
	.4byte	0xd1
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xb1
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.byte	0x22
	.byte	0x2
	.4byte	0xf3
	.byte	0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x23
	.byte	0x12
	.4byte	0xcb
	.byte	0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x24
	.byte	0x12
	.4byte	0xcb
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x28
	.byte	0x17
	.4byte	0xb1
	.byte	0xa
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0xb
	.byte	0x4
	.byte	0x6
	.byte	0x15
	.byte	0x9
	.4byte	0x11f
	.byte	0xc
	.string	"hdl"
	.byte	0x6
	.byte	0x16
	.byte	0xb
	.4byte	0xff
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x17
	.byte	0x3
	.4byte	0x108
	.byte	0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1d
	.byte	0x12
	.4byte	0x11f
	.byte	0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1e
	.byte	0x12
	.4byte	0x5b
	.byte	0x7
	.4byte	.LASF22
	.byte	0xc
	.byte	0x6
	.byte	0x36
	.byte	0x8
	.4byte	0x16b
	.byte	0xc
	.string	"hdl"
	.byte	0x6
	.byte	0x37
	.byte	0xf
	.4byte	0xff
	.byte	0
	.byte	0xd
	.4byte	.LASF23
	.byte	0x6
	.byte	0x38
	.byte	0x15
	.4byte	0xf3
	.byte	0x4
	.byte	0
	.byte	0x7
	.4byte	.LASF24
	.byte	0xc
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x186
	.byte	0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x63
	.byte	0x18
	.4byte	0x143
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa4
	.byte	0x10
	.4byte	0x192
	.byte	0x9
	.byte	0x4
	.4byte	0x198
	.byte	0xe
	.4byte	0x1a3
	.byte	0xf
	.4byte	0xff
	.byte	0
	.byte	0x7
	.4byte	.LASF27
	.byte	0x14
	.byte	0x6
	.byte	0xa6
	.byte	0x10
	.4byte	0x1f2
	.byte	0xd
	.4byte	.LASF28
	.byte	0x6
	.byte	0xa7
	.byte	0x10
	.4byte	0x12b
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x6
	.byte	0xa8
	.byte	0x17
	.4byte	0x186
	.byte	0x4
	.byte	0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0xa9
	.byte	0xb
	.4byte	0xff
	.byte	0x8
	.byte	0xd
	.4byte	.LASF31
	.byte	0x6
	.byte	0xaa
	.byte	0xe
	.4byte	0x5b
	.byte	0xc
	.byte	0xd
	.4byte	.LASF32
	.byte	0x6
	.byte	0xab
	.byte	0xe
	.4byte	0x5b
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0xac
	.byte	0x3
	.4byte	0x1a3
	.byte	0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x6
	.byte	0xd9
	.byte	0x8
	.4byte	0x219
	.byte	0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0xda
	.byte	0xd
	.4byte	0x137
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF36
	.byte	0x2
	.byte	0x12
	.byte	0xd
	.4byte	0x75
	.byte	0x10
	.4byte	0x219
	.byte	0x3
	.4byte	.LASF37
	.byte	0x2
	.byte	0x13
	.byte	0x12
	.4byte	0x219
	.byte	0x7
	.4byte	.LASF38
	.byte	0xc
	.byte	0x7
	.byte	0x7
	.byte	0x8
	.4byte	0x251
	.byte	0xd
	.4byte	.LASF39
	.byte	0x7
	.byte	0x8
	.byte	0x13
	.4byte	0x16b
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF40
	.byte	0x24
	.byte	0x7
	.byte	0x2d
	.byte	0x8
	.4byte	0x286
	.byte	0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2e
	.byte	0x13
	.4byte	0x2ca
	.byte	0
	.byte	0xd
	.4byte	.LASF42
	.byte	0x7
	.byte	0x2f
	.byte	0x16
	.4byte	0x30f
	.byte	0xc
	.byte	0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0x30
	.byte	0xf
	.4byte	0x1f2
	.byte	0x10
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x251
	.byte	0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x12
	.byte	0x6
	.4byte	0x2a7
	.byte	0x12
	.4byte	.LASF43
	.byte	0
	.byte	0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x7
	.byte	0x18
	.byte	0x10
	.4byte	0x2b3
	.byte	0x9
	.byte	0x4
	.4byte	0x2b9
	.byte	0xe
	.4byte	0x2c4
	.byte	0xf
	.4byte	0x2c4
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x2ca
	.byte	0x7
	.4byte	.LASF46
	.byte	0xc
	.byte	0x7
	.byte	0x19
	.byte	0x8
	.4byte	0x2ff
	.byte	0xd
	.4byte	.LASF47
	.byte	0x7
	.byte	0x1a
	.byte	0xb
	.4byte	0xff
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1b
	.byte	0x16
	.4byte	0x2a7
	.byte	0x4
	.byte	0xd
	.4byte	.LASF48
	.byte	0x7
	.byte	0x1c
	.byte	0xe
	.4byte	0x2ff
	.byte	0x8
	.byte	0
	.byte	0x13
	.4byte	0x219
	.4byte	0x30f
	.byte	0x14
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x236
	.byte	0x15
	.4byte	.LASF54
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x8
	.byte	0x36
	.byte	0x6
	.4byte	0x346
	.byte	0x12
	.4byte	.LASF49
	.byte	0
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0x12
	.4byte	.LASF51
	.byte	0x2
	.byte	0x12
	.4byte	.LASF52
	.byte	0x3
	.byte	0x12
	.4byte	.LASF53
	.byte	0x4
	.byte	0
	.byte	0x15
	.4byte	.LASF55
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x8
	.byte	0x40
	.byte	0x6
	.4byte	0x377
	.byte	0x12
	.4byte	.LASF56
	.byte	0
	.byte	0x12
	.4byte	.LASF57
	.byte	0x1
	.byte	0x12
	.4byte	.LASF58
	.byte	0x2
	.byte	0x12
	.4byte	.LASF59
	.byte	0x3
	.byte	0x12
	.4byte	.LASF60
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF61
	.byte	0x16
	.4byte	.LASF62
	.byte	0x1
	.byte	0x13
	.byte	0x11
	.4byte	0x1fe
	.byte	0x5
	.byte	0x3
	.4byte	work_q_thread
	.byte	0x16
	.4byte	.LASF63
	.byte	0x1
	.byte	0x17
	.byte	0x11
	.4byte	0x236
	.byte	0x5
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0xdc
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x43f
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xdc
	.byte	0x30
	.4byte	0x286
	.4byte	.LLST40
	.byte	0x19
	.string	"err"
	.byte	0x1
	.byte	0xde
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST41
	.byte	0x1a
	.4byte	.LASF68
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.4byte	.L68
	.byte	0x1b
	.4byte	0xb85
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xe0
	.byte	0x9
	.4byte	0x42e
	.byte	0x1c
	.4byte	0xba4
	.4byte	.LLST42
	.byte	0x1c
	.4byte	0xb97
	.4byte	.LLST43
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1e
	.4byte	0xbb1
	.4byte	.LLST44
	.byte	0x1f
	.4byte	.LVL93
	.4byte	0xc3f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL95
	.4byte	0x43f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF73
	.byte	0x1
	.byte	0xd2
	.byte	0x6
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x476
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xd2
	.byte	0x36
	.4byte	0x286
	.4byte	.LLST39
	.byte	0x1f
	.4byte	.LVL88
	.4byte	0xc4b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0xc1
	.byte	0x7
	.4byte	0x83
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ca
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc1
	.byte	0x3b
	.4byte	0x286
	.4byte	.LLST36
	.byte	0x22
	.4byte	.LASF66
	.byte	0x1
	.byte	0xc3
	.byte	0xd
	.4byte	0x33
	.4byte	.LLST37
	.byte	0x22
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc4
	.byte	0x10
	.4byte	0x4ca
	.4byte	.LLST38
	.byte	0x23
	.4byte	.LVL80
	.4byte	0xc57
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x1f2
	.byte	0x17
	.4byte	.LASF67
	.byte	0x1
	.byte	0xaa
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x56d
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xaa
	.byte	0x32
	.4byte	0x286
	.4byte	.LLST18
	.byte	0x19
	.string	"err"
	.byte	0x1
	.byte	0xac
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST19
	.byte	0x1a
	.4byte	.LASF68
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	.L29
	.byte	0x1b
	.4byte	0xb85
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xae
	.byte	0x9
	.4byte	0x55c
	.byte	0x1c
	.4byte	0xba4
	.4byte	.LLST20
	.byte	0x1c
	.4byte	0xb97
	.4byte	.LLST21
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1e
	.4byte	0xbb1
	.4byte	.LLST22
	.byte	0x1f
	.4byte	.LVL47
	.4byte	0xc3f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL49
	.4byte	0xc64
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa4
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x616
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa4
	.byte	0x3b
	.4byte	0x286
	.4byte	.LLST26
	.byte	0x18
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa4
	.byte	0x47
	.4byte	0x83
	.4byte	.LLST27
	.byte	0x1b
	.4byte	0xa85
	.4byte	.LBB24
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xa6
	.byte	0x2
	.4byte	0x5f2
	.byte	0x1c
	.4byte	0xaa0
	.4byte	.LLST28
	.byte	0x1c
	.4byte	0xa93
	.4byte	.LLST29
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1e
	.4byte	0xaad
	.4byte	.LLST30
	.byte	0x1f
	.4byte	.LVL67
	.4byte	0xc70
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL70
	.4byte	0xbc5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x25
	.4byte	0x6d1
	.byte	0x5
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF71
	.byte	0x1
	.byte	0x9d
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c0
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x9d
	.byte	0x32
	.4byte	0x286
	.4byte	.LLST31
	.byte	0x18
	.4byte	.LASF72
	.byte	0x1
	.byte	0x9d
	.byte	0x41
	.4byte	0x5b
	.4byte	.LLST32
	.byte	0x1b
	.4byte	0xac1
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x9f
	.byte	0x2
	.4byte	0x69c
	.byte	0x1c
	.4byte	0xadc
	.4byte	.LLST33
	.byte	0x1c
	.4byte	0xacf
	.4byte	.LLST34
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1e
	.4byte	0xae9
	.4byte	.LLST35
	.byte	0x1f
	.4byte	.LVL74
	.4byte	0xc7c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xfd
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL77
	.4byte	0xbc5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x25
	.4byte	0x6d1
	.byte	0x5
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF85
	.byte	0x1
	.byte	0x77
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0x70a
	.byte	0x27
	.4byte	.LASF42
	.byte	0x1
	.byte	0x77
	.byte	0x3c
	.4byte	0x30f
	.byte	0x27
	.4byte	.LASF41
	.byte	0x1
	.byte	0x78
	.byte	0x20
	.4byte	0x286
	.byte	0x27
	.4byte	.LASF72
	.byte	0x1
	.byte	0x79
	.byte	0x12
	.4byte	0x5b
	.byte	0x28
	.string	"err"
	.byte	0x1
	.byte	0x7b
	.byte	0x9
	.4byte	0x75
	.byte	0x29
	.4byte	.LASF109
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.byte	0
	.byte	0x21
	.4byte	.LASF74
	.byte	0x1
	.byte	0x6e
	.byte	0x6
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x77d
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x6e
	.byte	0x31
	.4byte	0x286
	.4byte	.LLST16
	.byte	0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6e
	.byte	0x48
	.4byte	0x2a7
	.4byte	.LLST17
	.byte	0x23
	.4byte	.LVL40
	.4byte	0xc88
	.byte	0x2a
	.4byte	.LVL42
	.4byte	0x875
	.4byte	0x75d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL43
	.4byte	0xc94
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	work_timeout
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x59
	.byte	0xd
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x834
	.byte	0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x59
	.byte	0x20
	.4byte	0xff
	.4byte	.LLST5
	.byte	0x19
	.string	"w"
	.byte	0x1
	.byte	0x5c
	.byte	0x19
	.4byte	0x286
	.4byte	.LLST6
	.byte	0x2c
	.4byte	0xb85
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x62
	.byte	0x6
	.4byte	0x7ed
	.byte	0x1c
	.4byte	0xba4
	.4byte	.LLST7
	.byte	0x1c
	.4byte	0xb97
	.4byte	.LLST8
	.byte	0x2d
	.4byte	0xbb1
	.byte	0x1f
	.4byte	.LVL14
	.4byte	0xc3f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL11
	.4byte	0xca0
	.4byte	0x802
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2a
	.4byte	.LVL15
	.4byte	0x9e6
	.4byte	0x816
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL18
	.4byte	0xcac
	.4byte	0x82a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.byte	0
	.byte	0x2e
	.4byte	.LVL20
	.4byte	0x9e6
	.byte	0
	.byte	0x21
	.4byte	.LASF75
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x1
	.byte	0x9c
	.4byte	0x875
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x54
	.byte	0x23
	.4byte	0x2c4
	.4byte	.LLST15
	.byte	0x24
	.4byte	.LVL38
	.4byte	0x9e6
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF76
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c9
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4b
	.byte	0x20
	.4byte	0x2c4
	.4byte	.LLST13
	.byte	0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4b
	.byte	0x37
	.4byte	0x2a7
	.4byte	.LLST14
	.byte	0x23
	.4byte	.LVL32
	.4byte	0xc88
	.byte	0x1f
	.4byte	.LVL33
	.4byte	0xcb8
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x931
	.byte	0x2a
	.4byte	.LVL29
	.4byte	0xcc4
	.4byte	0x8ff
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x24
	.4byte	.LVL30
	.4byte	0xcd0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	work_q_thread
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x600
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	work_queue_main
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF79
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x9e6
	.byte	0x2f
	.string	"p1"
	.byte	0x1
	.byte	0x32
	.byte	0x23
	.4byte	0xff
	.4byte	.LLST9
	.byte	0x30
	.4byte	.LASF41
	.byte	0x1
	.byte	0x34
	.byte	0x14
	.4byte	0x2c4
	.byte	0x1
	.byte	0x59
	.byte	0x2c
	.4byte	0xb3e
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.4byte	0x9af
	.byte	0x1c
	.4byte	0xb5d
	.4byte	.LLST10
	.byte	0x1c
	.4byte	0xb50
	.4byte	.LLST11
	.byte	0x1e
	.4byte	0xb6a
	.4byte	.LLST12
	.byte	0x2d
	.4byte	0xb77
	.byte	0x1f
	.4byte	.LVL26
	.4byte	0xc7c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL23
	.4byte	0xcdc
	.4byte	0x9cc
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x31
	.4byte	.LVL27
	.4byte	0x9dc
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL28
	.4byte	0xce8
	.byte	0
	.byte	0x2b
	.4byte	.LASF80
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x1
	.byte	0x9c
	.4byte	0xa85
	.byte	0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1a
	.byte	0x35
	.4byte	0x30f
	.4byte	.LLST0
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1b
	.byte	0x33
	.4byte	0x2c4
	.4byte	.LLST1
	.byte	0x1b
	.4byte	0xaf7
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1d
	.byte	0xa
	.4byte	0xa6c
	.byte	0x1c
	.4byte	0xb16
	.4byte	.LLST2
	.byte	0x1c
	.4byte	0xb09
	.4byte	.LLST3
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0
	.byte	0x1e
	.4byte	0xb23
	.4byte	.LLST4
	.byte	0x2d
	.4byte	0xb30
	.byte	0x1f
	.4byte	.LVL4
	.4byte	0xc70
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL7
	.4byte	0xcf4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x197
	.byte	0x14
	.byte	0x3
	.4byte	0xabb
	.byte	0x33
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x197
	.byte	0x2d
	.4byte	0xabb
	.byte	0x34
	.string	"bit"
	.byte	0x2
	.2byte	0x197
	.byte	0x39
	.4byte	0x75
	.byte	0x35
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x199
	.byte	0xf
	.4byte	0x22a
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x219
	.byte	0x32
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x185
	.byte	0x14
	.byte	0x3
	.4byte	0xaf7
	.byte	0x33
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x185
	.byte	0x2f
	.4byte	0xabb
	.byte	0x34
	.string	"bit"
	.byte	0x2
	.2byte	0x185
	.byte	0x3b
	.4byte	0x75
	.byte	0x35
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x187
	.byte	0xf
	.4byte	0x22a
	.byte	0
	.byte	0x36
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x170
	.byte	0x13
	.4byte	0x75
	.byte	0x3
	.4byte	0xb3e
	.byte	0x33
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x170
	.byte	0x35
	.4byte	0xabb
	.byte	0x34
	.string	"bit"
	.byte	0x2
	.2byte	0x170
	.byte	0x41
	.4byte	0x75
	.byte	0x35
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x172
	.byte	0xf
	.4byte	0x22a
	.byte	0x37
	.string	"old"
	.byte	0x2
	.2byte	0x173
	.byte	0xf
	.4byte	0x22a
	.byte	0
	.byte	0x36
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x15b
	.byte	0x13
	.4byte	0x75
	.byte	0x3
	.4byte	0xb85
	.byte	0x33
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x15b
	.byte	0x37
	.4byte	0xabb
	.byte	0x34
	.string	"bit"
	.byte	0x2
	.2byte	0x15b
	.byte	0x43
	.4byte	0x75
	.byte	0x35
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x15d
	.byte	0xf
	.4byte	0x22a
	.byte	0x37
	.string	"old"
	.byte	0x2
	.2byte	0x15e
	.byte	0xf
	.4byte	0x22a
	.byte	0
	.byte	0x36
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x149
	.byte	0x13
	.4byte	0x75
	.byte	0x3
	.4byte	0xbbf
	.byte	0x33
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x149
	.byte	0x33
	.4byte	0xbbf
	.byte	0x34
	.string	"bit"
	.byte	0x2
	.2byte	0x149
	.byte	0x3f
	.4byte	0x75
	.byte	0x37
	.string	"val"
	.byte	0x2
	.2byte	0x14b
	.byte	0xf
	.4byte	0x22a
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x225
	.byte	0x38
	.4byte	0x6c0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x1
	.byte	0x9c
	.4byte	0xc3f
	.byte	0x1c
	.4byte	0x6dd
	.4byte	.LLST23
	.byte	0x1c
	.4byte	0x6e9
	.4byte	.LLST24
	.byte	0x1e
	.4byte	0x6f5
	.4byte	.LLST25
	.byte	0x39
	.4byte	0x701
	.4byte	.L37
	.byte	0x3a
	.4byte	0x6d1
	.byte	0x6
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0x9f
	.byte	0x2a
	.4byte	.LVL56
	.4byte	0xd00
	.4byte	0xc1c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x10
	.byte	0
	.byte	0x23
	.4byte	.LVL58
	.4byte	0x4d0
	.byte	0x1f
	.4byte	.LVL63
	.4byte	0x9e6
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	g_work_queue_main
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x2
	.byte	0x93
	.byte	0x15
	.byte	0x3b
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.byte	0xc6
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x111
	.byte	0xb
	.byte	0x3b
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x6
	.byte	0xc0
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x2
	.byte	0xd5
	.byte	0x15
	.byte	0x3b
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x2
	.byte	0xff
	.byte	0x15
	.byte	0x3b
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x9
	.byte	0x58
	.byte	0xd
	.byte	0x3b
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x6
	.byte	0xb1
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x6
	.byte	0xb3
	.byte	0x7
	.byte	0x3b
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x6
	.byte	0xbb
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x2
	.byte	0xc0
	.byte	0x15
	.byte	0x3b
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x6
	.byte	0x3f
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x6
	.byte	0xeb
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.byte	0x3b
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x6
	.byte	0xf6
	.byte	0x5
	.byte	0x3b
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x6
	.byte	0x41
	.byte	0x6
	.byte	0x3b
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x6
	.byte	0xb9
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
	.byte	0x17
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
	.byte	0x6
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
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
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
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x26
	.byte	0
	.byte	0x49
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0xa
	.byte	0
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3b
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
	.byte	0x3c
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
.LLST40:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
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
	.4byte	.LFE81
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL91
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE81
	.2byte	0x3
	.byte	0x9
	.byte	0x89
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x7a
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL94
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE80
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL78
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80-1
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x9
	.byte	0x79
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x3
	.byte	0x7a
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL80-1
	.4byte	.LVL84
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE78
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE78
	.2byte	0x3
	.byte	0x9
	.byte	0xea
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x7a
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47-1
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70-1
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x7a
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL75
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL77-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x7a
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40-1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL41
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x7a
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35
	.4byte	.LFE71
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL9
	.4byte	.LFE68
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
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LFE68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x7b
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE86
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58-1
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL60
	.4byte	.LFE86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF109:
	.string	"done"
.LASF56:
	.string	"_POLL_STATE_NOT_READY"
.LASF53:
	.string	"_POLL_NUM_TYPES"
.LASF73:
	.string	"k_delayed_work_del_timer"
.LASF41:
	.string	"work"
.LASF47:
	.string	"_reserved"
.LASF58:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF91:
	.string	"k_now_ms"
.LASF32:
	.string	"start_ms"
.LASF81:
	.string	"target"
.LASF15:
	.string	"prev"
.LASF1:
	.string	"short int"
.LASF96:
	.string	"k_timer_init"
.LASF26:
	.string	"k_timer_handler_t"
.LASF11:
	.string	"s32_t"
.LASF35:
	.string	"task"
.LASF9:
	.string	"long long unsigned int"
.LASF100:
	.string	"k_queue_init"
.LASF72:
	.string	"delay"
.LASF43:
	.string	"K_WORK_STATE_PENDING"
.LASF29:
	.string	"handler"
.LASF40:
	.string	"k_delayed_work"
.LASF62:
	.string	"work_q_thread"
.LASF12:
	.string	"head"
.LASF28:
	.string	"timer"
.LASF67:
	.string	"k_delayed_work_cancel"
.LASF34:
	.string	"k_thread"
.LASF89:
	.string	"atomic_get"
.LASF102:
	.string	"k_queue_get"
.LASF18:
	.string	"bl_hdl_t"
.LASF105:
	.string	"k_timer_start"
.LASF94:
	.string	"atomic_and"
.LASF88:
	.string	"atomic_test_bit"
.LASF3:
	.string	"long long int"
.LASF74:
	.string	"k_delayed_work_init"
.LASF33:
	.string	"k_timer_t"
.LASF108:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF2:
	.string	"long int"
.LASF78:
	.string	"work_timeout"
.LASF92:
	.string	"k_timer_stop"
.LASF37:
	.string	"atomic_val_t"
.LASF70:
	.string	"period"
.LASF23:
	.string	"poll_events"
.LASF50:
	.string	"_POLL_TYPE_SIGNAL"
.LASF44:
	.string	"K_WORK_STATE_PERIODIC"
.LASF16:
	.string	"sys_dlist_t"
.LASF75:
	.string	"k_work_submit"
.LASF14:
	.string	"tail"
.LASF86:
	.string	"atomic_test_and_set_bit"
.LASF4:
	.string	"unsigned char"
.LASF51:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF21:
	.string	"_dnode"
.LASF69:
	.string	"k_delayed_work_submit_periodic"
.LASF98:
	.string	"k_timer_reset"
.LASF49:
	.string	"_POLL_TYPE_IGNORE"
.LASF97:
	.string	"k_timer_get_id"
.LASF0:
	.string	"signed char"
.LASF48:
	.string	"flags"
.LASF65:
	.string	"k_delayed_work_remaining_get"
.LASF7:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF25:
	.string	"_queue"
.LASF59:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF30:
	.string	"args"
.LASF84:
	.string	"atomic_clear_bit"
.LASF38:
	.string	"k_work_q"
.LASF24:
	.string	"k_fifo"
.LASF107:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/work_q.c"
.LASF27:
	.string	"k_timer"
.LASF103:
	.string	"k_yield"
.LASF5:
	.string	"short unsigned int"
.LASF39:
	.string	"fifo"
.LASF17:
	.string	"char"
.LASF68:
	.string	"exit"
.LASF104:
	.string	"k_queue_append"
.LASF6:
	.string	"int32_t"
.LASF80:
	.string	"k_work_submit_to_queue"
.LASF63:
	.string	"g_work_queue_main"
.LASF61:
	.string	"_Bool"
.LASF77:
	.string	"k_work_q_start"
.LASF83:
	.string	"atomic_set_bit"
.LASF90:
	.string	"k_timer_delete"
.LASF45:
	.string	"k_work_handler_t"
.LASF71:
	.string	"k_delayed_work_submit"
.LASF79:
	.string	"work_queue_main"
.LASF8:
	.string	"long unsigned int"
.LASF46:
	.string	"k_work"
.LASF95:
	.string	"user_vAssertCalled"
.LASF87:
	.string	"atomic_test_and_clear_bit"
.LASF57:
	.string	"_POLL_STATE_SIGNALED"
.LASF76:
	.string	"k_work_init"
.LASF101:
	.string	"k_thread_create"
.LASF54:
	.string	"_poll_types_bits"
.LASF82:
	.string	"mask"
.LASF93:
	.string	"atomic_or"
.LASF64:
	.string	"k_delayed_work_free"
.LASF19:
	.string	"bl_timer_t"
.LASF55:
	.string	"_poll_states_bits"
.LASF85:
	.string	"k_delayed_work_submit_to_queue"
.LASF42:
	.string	"work_q"
.LASF22:
	.string	"k_queue"
.LASF99:
	.string	"atomic_clear"
.LASF60:
	.string	"_POLL_NUM_STATES"
.LASF20:
	.string	"_task_t"
.LASF106:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF66:
	.string	"remain"
.LASF52:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF31:
	.string	"timeout"
.LASF13:
	.string	"next"
.LASF36:
	.string	"atomic_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
