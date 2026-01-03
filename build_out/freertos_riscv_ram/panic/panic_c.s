	.file	"panic_c.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.backtrace_riscv.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"=== backtrace start ===\r\n"
	.align	2
.LC1:
	.string	"backtrace: INVALID!!!\r\n"
	.align	2
.LC2:
	.string	"=== backtrace end ===\r\n\r\n"
	.align	2
.LC3:
	.string	"backtrace: %p\r\n"
	.align	2
.LC4:
	.string	"backtrace: %p   <--- TRAP\r\n"
	.align	2
.LC5:
	.string	"backtrace nested...\r\n"
	.section	.text.backtrace_riscv,"ax",@progbits
	.align	1
	.globl	backtrace_riscv
	.type	backtrace_riscv, @function
backtrace_riscv:
.LFB5:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/panic/panic_c.c"
	.loc 1 90 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s6,16(sp)
	sw	s9,4(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 25, -44
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 94 30 is_stmt 0
	lui	s6,%hi(.LANCHOR0)
	.loc 1 90 1
	.loc 1 94 30
	addi	s6,s6,%lo(.LANCHOR0)
	lw	s9,0(s6)
	.loc 1 90 1
	mv	s3,a0
	.loc 1 91 5 is_stmt 1
	.loc 1 92 5
	.loc 1 94 5
	.loc 1 94 8 is_stmt 0
	bne	s9,zero,.L2
	.loc 1 103 5
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 95 30
	li	a5,1
	.loc 1 103 5
	addi	a0,a0,%lo(.LC0)
	mv	s7,a1
	.loc 1 95 9 is_stmt 1
	.loc 1 95 30 is_stmt 0
	sw	a5,0(s6)
	.loc 1 101 5 is_stmt 1
	.loc 1 103 5 is_stmt 0
	jalr	s3
.LVL2:
	.loc 1 101 5
 #APP
# 101 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/panic/panic_c.c" 1
	add s1, x0, fp
# 0 "" 2
.LVL3:
	.loc 1 103 5 is_stmt 1
	.loc 1 105 5
 #NO_APP
.LBB6:
.LBB7:
	.loc 1 68 5
	.loc 1 69 5
	.loc 1 71 5
	.loc 1 72 9
	.loc 1 72 27 is_stmt 0
	lw	a1,-4(s1)
.LVL4:
	.loc 1 74 9 is_stmt 1
	.loc 1 74 12 is_stmt 0
	beq	a1,zero,.L6
	.loc 1 79 9 is_stmt 1
	lui	s4,%hi(.LC3)
	addi	a0,s4,%lo(.LC3)
	jalr	s3
.LVL5:
	.loc 1 80 9
	.loc 1 69 14 is_stmt 0
	li	s2,0
	.loc 1 80 12
	li	s5,1
	.loc 1 81 13
	lui	s8,%hi(.LC4)
.LVL6:
.L8:
	.loc 1 83 9 is_stmt 1
	.loc 1 83 27 is_stmt 0
	lw	s1,-8(s1)
.LVL7:
	.loc 1 85 9 is_stmt 1
	.loc 1 79 9 is_stmt 0
	addi	a0,s4,%lo(.LC3)
	.loc 1 85 11
	addi	s2,s2,1
.LVL8:
	.loc 1 79 9 is_stmt 1
	.loc 1 71 11
	.loc 1 71 5
	.loc 1 72 9
	.loc 1 72 27 is_stmt 0
	lw	a1,-4(s1)
.LVL9:
	.loc 1 74 9 is_stmt 1
	.loc 1 74 12 is_stmt 0
	beq	a1,zero,.L6
.L12:
	.loc 1 79 9
	jalr	s3
.LVL10:
	.loc 1 80 9 is_stmt 1
	.loc 1 80 12 is_stmt 0
	bne	s2,s5,.L8
.LVL11:
	.loc 1 81 13 is_stmt 1
	lw	a1,0(s7)
	addi	a0,s8,%lo(.LC4)
	.loc 1 85 11 is_stmt 0
	addi	s2,s2,1
	.loc 1 81 13
	jalr	s3
.LVL12:
	.loc 1 83 9 is_stmt 1
	.loc 1 83 27 is_stmt 0
	lw	s1,-8(s1)
.LVL13:
	.loc 1 85 9 is_stmt 1
	.loc 1 79 9
	.loc 1 71 11
	.loc 1 71 5
	.loc 1 72 9
	.loc 1 79 9 is_stmt 0
	addi	a0,s4,%lo(.LC3)
	.loc 1 72 27
	lw	a1,-4(s1)
.LVL14:
	.loc 1 74 9 is_stmt 1
	.loc 1 74 12 is_stmt 0
	bne	a1,zero,.L12
.LVL15:
.L6:
	.loc 1 75 13 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	jalr	s3
.LVL16:
	.loc 1 76 13
.LBE7:
.LBE6:
	.loc 1 107 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	jalr	s3
.LVL17:
	.loc 1 109 5
	.loc 1 109 26 is_stmt 0
	sw	zero,0(s6)
	.loc 1 111 5 is_stmt 1
.LVL18:
.L1:
	.loc 1 112 1 is_stmt 0
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
.LVL19:
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	mv	a0,s9
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L2:
	.cfi_restore_state
.LBB8:
.LBB9:
	.loc 1 97 9 is_stmt 1
	lui	a0,%hi(.LC5)
.LVL21:
	addi	a0,a0,%lo(.LC5)
	jalr	s3
.LVL22:
	.loc 1 98 9
	.loc 1 97 9 is_stmt 0
	li	s9,-1
	j	.L1
.LBE9:
.LBE8:
	.cfi_endproc
.LFE5:
	.size	backtrace_riscv, .-backtrace_riscv
	.weak	backtrace_now
	.set	backtrace_now,backtrace_riscv
	.section	.rodata.backtrace_now_app.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	">> "
	.align	2
.LC7:
	.string	"!!\r\n"
	.align	2
.LC8:
	.string	" <<\r\n"
	.section	.text.backtrace_now_app,"ax",@progbits
	.align	1
	.globl	backtrace_now_app
	.type	backtrace_now_app, @function
backtrace_now_app:
.LFB7:
	.loc 1 148 64 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 149 3
	.loc 1 150 3
	.loc 1 152 3
	.loc 1 148 64 is_stmt 0
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
	.loc 1 152 28
	lui	s1,%hi(.LANCHOR1)
	.loc 1 148 64
	.loc 1 152 28
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 152 6
	lw	a5,0(s1)
	.loc 1 148 64
	mv	s2,a0
	.loc 1 152 6
	bne	a5,zero,.L16
	.loc 1 153 5 is_stmt 1
	.loc 1 166 3 is_stmt 0
	lui	a0,%hi(.LC6)
.LVL24:
	.loc 1 153 26
	li	a5,1
	.loc 1 166 3
	addi	a0,a0,%lo(.LC6)
	.loc 1 153 26
	sw	a5,0(s1)
	.loc 1 160 3 is_stmt 1
	.loc 1 166 3 is_stmt 0
	jalr	s2
.LVL25:
	li	a4,256
.LBB12:
.LBB13:
	.loc 1 118 58
	li	a6,-33554432
	li	a1,33554432
	.loc 1 125 25
	li	t1,-16777216
	.loc 1 125 8
	li	a7,50331648
.LBE13:
.LBE12:
	.loc 1 160 3
 #APP
# 160 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/panic/panic_c.c" 1
	add a2, x0, fp
# 0 "" 2
.LVL26:
	.loc 1 166 3 is_stmt 1
	.loc 1 167 3
 #NO_APP
.LBB16:
.LBB14:
	.loc 1 117 9
	j	.L21
.LVL27:
.L27:
	.loc 1 125 58 is_stmt 0
	bne	a3,a1,.L20
	.loc 1 130 8
	bne	a5,a1,.L24
	.loc 1 117 9 is_stmt 1
.LVL28:
	addi	a4,a4,-1
.LVL29:
	beq	a4,zero,.L18
.LVL30:
.L21:
	.loc 1 118 5
	.loc 1 123 5
	.loc 1 130 5
	.loc 1 118 58 is_stmt 0
	and	a5,a2,a6
	bne	a5,a1,.L20
	.loc 1 123 25
	lw	a5,-4(a2)
.LVL31:
	.loc 1 125 5 is_stmt 1
	.loc 1 125 25 is_stmt 0
	and	a3,a5,t1
	.loc 1 125 8
	bne	a3,a7,.L27
.L24:
	.loc 1 117 9
	addi	a4,a4,-1
.LVL32:
	.loc 1 135 10
	mv	a2,a5
.LVL33:
	.loc 1 117 9 is_stmt 1
	bne	a4,zero,.L21
.LVL34:
.L18:
.LBE14:
.LBE16:
	.loc 1 168 3
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	jalr	s2
.LVL35:
	.loc 1 170 3
	.loc 1 173 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 170 24
	sw	zero,0(s1)
	.loc 1 172 3 is_stmt 1
	.loc 1 173 1 is_stmt 0
	lw	s2,0(sp)
	.cfi_restore 18
.LVL36:
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL37:
.L20:
	.cfi_restore_state
.LBB17:
.LBB15:
	.loc 1 119 7 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	jalr	s2
.LVL38:
	.loc 1 120 7
	j	.L18
.LVL39:
.L16:
.LBE15:
.LBE17:
	.loc 1 155 5
	lui	a0,%hi(.LC5)
.LVL40:
	addi	a0,a0,%lo(.LC5)
	jalr	s2
.LVL41:
	.loc 1 156 5
	.loc 1 173 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL42:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	backtrace_now_app, .-backtrace_now_app
	.section	.text.xPortIsInsideInterrupt,"ax",@progbits
	.align	1
	.globl	xPortIsInsideInterrupt
	.type	xPortIsInsideInterrupt, @function
xPortIsInsideInterrupt:
.LFB8:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
	.loc 1 222 5
	.loc 1 221 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 222 31
	lui	a5,%hi(TrapNetCounter)
	lw	a0,%lo(TrapNetCounter)(a5)
	.loc 1 223 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	snez	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	xPortIsInsideInterrupt, .-xPortIsInsideInterrupt
	.section	.rodata.backtrace_now_task.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"==========\r\nTask name:"
	.align	2
.LC10:
	.string	"\r\nBacktrace:\r\n"
	.align	2
.LC11:
	.string	"%p"
	.align	2
.LC12:
	.string	"    "
	.align	2
.LC13:
	.string	"\r\n"
	.align	2
.LC14:
	.string	"CMD: riscv64-unknown-elf-addr2line -e "
	.align	2
.LC15:
	.string	" -a -f "
	.align	2
.LC16:
	.string	" "
	.section	.text.backtrace_now_task,"ax",@progbits
	.align	1
	.globl	backtrace_now_task
	.type	backtrace_now_task, @function
backtrace_now_task:
.LFB10:
	.loc 1 257 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 258 2
	.loc 1 259 2
	.loc 1 260 2
	.loc 1 261 2
	.loc 1 262 2
	.loc 1 263 2
	.loc 1 264 2
	.loc 1 268 2
	.loc 1 257 1 is_stmt 0
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sw	ra,300(sp)
	sw	s0,296(sp)
	sw	s1,292(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,304
	.cfi_def_cfa 8, 0
	sw	s2,288(sp)
	sw	s3,284(sp)
	sw	s4,280(sp)
	sw	s5,276(sp)
	sw	s6,272(sp)
	sw	s7,268(sp)
	sw	s8,264(sp)
	sw	s9,260(sp)
	sw	s10,256(sp)
	sw	s11,252(sp)
	mv	s1,a0
	.loc 1 268 2
	lui	a0,%hi(.LANCHOR2)
.LVL44:
	.loc 1 257 1
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
	.loc 1 268 2
	addi	a0,a0,%lo(.LANCHOR2)
	jalr	s1
.LVL45:
	.loc 1 270 2 is_stmt 1
	call	vTaskEnterCritical
.LVL46:
	.loc 1 272 2
	call	xAddTasksToAllList
.LVL47:
	.loc 1 273 2
	.loc 1 273 14 is_stmt 0
	call	pxTaskGetAllList
.LVL48:
	.loc 1 275 15
	lw	a5,0(a0)
	.loc 1 273 14
	sw	a0,-276(s0)
.LVL49:
	.loc 1 275 2 is_stmt 1
	.loc 1 275 5 is_stmt 0
	beq	a5,zero,.L31
.LBB24:
	.loc 1 277 5 is_stmt 1
.LVL50:
	.loc 1 277 49
	.loc 1 277 100 is_stmt 0
	lw	a5,4(a0)
	.loc 1 277 164
	addi	a3,a0,8
	sw	a3,-284(s0)
	.loc 1 277 100
	lw	a5,4(a5)
	.loc 1 277 74
	sw	a5,4(a0)
	.loc 1 277 110 is_stmt 1
	.loc 1 277 112 is_stmt 0
	beq	a5,a3,.L51
.L32:
	.loc 1 277 262 is_stmt 1 discriminator 3
	.loc 1 277 277 is_stmt 0 discriminator 3
	lw	a4,12(a5)
.LBE24:
.LBB25:
.LBB26:
	.loc 1 280 101 discriminator 3
	lw	a5,4(a5)
	lui	s4,%hi(.LC11)
.LBE26:
.LBE25:
.LBB39:
	.loc 1 277 277 discriminator 3
	sw	a4,-288(s0)
.LVL51:
.LBE39:
	.loc 1 277 315 is_stmt 1 discriminator 3
	.loc 1 278 3 discriminator 3
.LBB40:
.LBB27:
	.loc 1 280 6 discriminator 3
	.loc 1 280 50 discriminator 3
.LBE27:
	.loc 1 313 16 is_stmt 0 discriminator 3
	li	a4,1769234432
.LVL52:
	addi	a4,a4,356
	sw	a4,-292(s0)
	li	a4,1818570752
	addi	a4,a4,-413
	sw	a4,-296(s0)
.LBB28:
	.loc 1 280 75 discriminator 3
	lw	a4,-276(s0)
	lui	s5,%hi(.LC12)
	lui	s3,%hi(.LC13)
	sw	a5,4(a4)
	.loc 1 280 111 is_stmt 1 discriminator 3
	.loc 1 280 113 is_stmt 0 discriminator 3
	lw	a4,-284(s0)
	addi	s7,s0,-64
.LBE28:
.LBB29:
.LBB30:
	.loc 1 240 4 discriminator 3
	li	s6,218103808
.LBE30:
.LBE29:
.LBB32:
	.loc 1 280 113 discriminator 3
	beq	a4,a5,.L52
.LVL53:
.L33:
	.loc 1 280 263 is_stmt 1 discriminator 3
	.loc 1 280 277 is_stmt 0 discriminator 3
	lw	s8,12(a5)
.LBE32:
	.loc 1 285 4 discriminator 3
	li	a2,192
	li	a1,165
	addi	a0,s0,-256
	.loc 1 281 17 discriminator 3
	lw	s2,0(s8)
.LBB33:
	.loc 1 280 277 discriminator 3
	sw	s8,-280(s0)
.LVL54:
.LBE33:
	.loc 1 280 315 is_stmt 1 discriminator 3
	.loc 1 281 4 discriminator 3
	.loc 1 284 4 discriminator 3
	.loc 1 285 4 discriminator 3
	call	memset
.LVL55:
	.loc 1 287 4 discriminator 3
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	jalr	s1
.LVL56:
	.loc 1 288 4 discriminator 3
	.loc 1 288 15 is_stmt 0 discriminator 3
	mv	a0,s8
	call	pcTaskGetName
.LVL57:
	.loc 1 288 4 discriminator 3
	jalr	s1
.LVL58:
	.loc 1 289 4 is_stmt 1 discriminator 3
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	jalr	s1
.LVL59:
	.loc 1 292 4 discriminator 3
	.loc 1 293 4 discriminator 3
	.loc 1 297 4 is_stmt 0 discriminator 3
	lw	a3,0(s2)
	addi	a2,s4,%lo(.LC11)
	li	a1,12
	addi	a0,s0,-256
	.loc 1 293 7 discriminator 3
	lw	s9,156(s2)
.LVL60:
	.loc 1 296 4 is_stmt 1 discriminator 3
	.loc 1 297 4 discriminator 3
	call	snprintf
.LVL61:
	.loc 1 298 4 discriminator 3
	addi	a0,s5,%lo(.LC12)
	jalr	s1
.LVL62:
	.loc 1 299 4 discriminator 3
	addi	a0,s0,-256
	jalr	s1
.LVL63:
	.loc 1 300 4 discriminator 3
	addi	a0,s3,%lo(.LC13)
	jalr	s1
.LVL64:
	.loc 1 303 4 discriminator 3
	.loc 1 304 4 discriminator 3
	.loc 1 305 4 discriminator 3
	lw	a3,140(s2)
	addi	a2,s4,%lo(.LC11)
	li	a1,12
	addi	a0,s0,-244
	call	snprintf
.LVL65:
	.loc 1 306 4 discriminator 3
	addi	a0,s5,%lo(.LC12)
	jalr	s1
.LVL66:
	.loc 1 307 4 discriminator 3
	addi	a0,s0,-244
	jalr	s1
.LVL67:
	.loc 1 308 4 discriminator 3
	addi	a0,s3,%lo(.LC13)
	jalr	s1
.LVL68:
	.loc 1 311 4 discriminator 3
.LBB34:
.LBB31:
	.loc 1 236 8 discriminator 3
	addi	s8,s0,-232
.LVL69:
	addi	s2,s0,-256
.LVL70:
	.loc 1 236 39 is_stmt 0 discriminator 3
	li	s10,251658240
	.loc 1 236 15 discriminator 3
	li	s11,33554432
.LVL71:
.L34:
	.loc 1 237 3 is_stmt 1
	.loc 1 244 3
	.loc 1 236 39 is_stmt 0
	and	a5,s9,s10
	.loc 1 244 3
	addi	a2,s4,%lo(.LC11)
	li	a1,12
	mv	a0,s8
	.loc 1 236 15
	bne	a5,s11,.L38
	.loc 1 237 27
	lw	a3,-4(s9)
.LVL72:
	.loc 1 238 3 is_stmt 1
	.loc 1 238 24 is_stmt 0
	and	a4,a3,s10
	.loc 1 240 4
	and	a5,a3,s6
	.loc 1 239 4
	beq	a4,s11,.L35
	.loc 1 240 4
	li	a4,16777216
	bne	a5,a4,.L38
.L35:
	.loc 1 244 3
	call	snprintf
.LVL73:
	.loc 1 245 3 is_stmt 1
	addi	a0,s5,%lo(.LC12)
	jalr	s1
.LVL74:
	.loc 1 246 3
	mv	a0,s8
	jalr	s1
.LVL75:
	.loc 1 247 3
	addi	a0,s3,%lo(.LC13)
	.loc 1 236 8 is_stmt 0
	addi	s8,s8,12
	.loc 1 247 3
	jalr	s1
.LVL76:
	.loc 1 249 3 is_stmt 1
	.loc 1 249 31 is_stmt 0
	lw	s9,-8(s9)
.LVL77:
	.loc 1 250 3 is_stmt 1
	.loc 1 236 8
	bne	s8,s7,.L34
.L38:
.LVL78:
.LBE31:
.LBE34:
	.loc 1 313 11
	.loc 1 314 11 is_stmt 0
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	.loc 1 313 16
	lw	a5,-292(s0)
.LBB35:
	.loc 1 317 11
	li	s8,120
.LBE35:
	.loc 1 313 16
	sw	a5,-268(s0)
	lw	a5,-296(s0)
	sw	a5,-264(s0)
	li	a5,102
	sh	a5,-260(s0)
	.loc 1 314 11 is_stmt 1
	jalr	s1
.LVL79:
	.loc 1 315 11
	addi	a0,s0,-268
	jalr	s1
.LVL80:
	.loc 1 316 11
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	jalr	s1
.LVL81:
	.loc 1 317 11
.LBB36:
	.loc 1 317 16
	.loc 1 317 27
	.loc 1 317 11 is_stmt 0
	lbu	a4,-255(s0)
	li	a5,120
	bne	a4,a5,.L37
.LVL82:
.L36:
	.loc 1 319 15 is_stmt 1 discriminator 3
	mv	a0,s2
	jalr	s1
.LVL83:
	.loc 1 320 15 discriminator 3
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	.loc 1 317 11 is_stmt 0 discriminator 3
	addi	s2,s2,12
	.loc 1 320 15 discriminator 3
	jalr	s1
.LVL84:
	.loc 1 317 48 is_stmt 1 discriminator 3
	.loc 1 317 27 discriminator 3
	.loc 1 317 11 is_stmt 0 discriminator 3
	lbu	a5,1(s2)
	beq	a5,s8,.L36
.L37:
.LBE36:
	.loc 1 322 11 is_stmt 1
	addi	a0,s3,%lo(.LC13)
	jalr	s1
.LVL85:
.LBE40:
	.loc 1 324 11
	.loc 1 324 3 is_stmt 0
	lw	a5,-288(s0)
	lw	a4,-280(s0)
	beq	a5,a4,.L31
.LBB41:
.LBB37:
	.loc 1 280 92
	lw	a5,-276(s0)
	.loc 1 280 75
	lw	a4,-276(s0)
	.loc 1 280 92
	lw	a5,4(a5)
.LBE37:
.LBE41:
	.loc 1 277 315 is_stmt 1
	.loc 1 278 3
.LBB42:
.LBB38:
	.loc 1 280 6
.LVL86:
	.loc 1 280 50
	.loc 1 280 101 is_stmt 0
	lw	a5,4(a5)
	.loc 1 280 75
	sw	a5,4(a4)
	.loc 1 280 111 is_stmt 1
	.loc 1 280 113 is_stmt 0
	lw	a4,-284(s0)
.LVL87:
	bne	a4,a5,.L33
.LVL88:
.L52:
	.loc 1 280 200 is_stmt 1 discriminator 1
	.loc 1 280 251 is_stmt 0 discriminator 1
	lw	a5,4(a4)
	.loc 1 280 225 discriminator 1
	lw	a4,-276(s0)
	sw	a5,4(a4)
	j	.L33
.LVL89:
.L31:
.LBE38:
.LBE42:
	.loc 1 327 2 is_stmt 1
	.loc 1 328 1 is_stmt 0
	lw	ra,300(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,296(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 304
.LVL90:
	lw	s1,292(sp)
	.cfi_restore 9
.LVL91:
	lw	s2,288(sp)
	.cfi_restore 18
	lw	s3,284(sp)
	.cfi_restore 19
	lw	s4,280(sp)
	.cfi_restore 20
	lw	s5,276(sp)
	.cfi_restore 21
	lw	s6,272(sp)
	.cfi_restore 22
	lw	s7,268(sp)
	.cfi_restore 23
	lw	s8,264(sp)
	.cfi_restore 24
	lw	s9,260(sp)
	.cfi_restore 25
	lw	s10,256(sp)
	.cfi_restore 26
	lw	s11,252(sp)
	.cfi_restore 27
	li	a0,0
	addi	sp,sp,304
	.cfi_def_cfa_offset 0
	jr	ra
.LVL92:
.L51:
	.cfi_restore_state
.LBB43:
	.loc 1 277 199 is_stmt 1 discriminator 1
	.loc 1 277 250 is_stmt 0 discriminator 1
	lw	a5,12(a0)
	.loc 1 277 224 discriminator 1
	sw	a5,4(a0)
	j	.L32
.LBE43:
	.cfi_endproc
.LFE10:
	.size	backtrace_now_task, .-backtrace_now_task
	.section	.data.log.2,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	log.2, @object
	.size	log.2, 196
log.2:
	.string	"\r\n==========\r\nELF File: /home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/datic.elf\r\nVisit https://dev.bouffalolab.com/media/doc/backtrace/html/QA/backtrace/backtrace.html for more detail\r\n"
	.section	.sbss.processing_backtrace.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	processing_backtrace.0, @object
	.size	processing_backtrace.0, 4
processing_backtrace.0:
	.zero	4
	.section	.sbss.processing_backtrace.1,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	processing_backtrace.1, @object
	.size	processing_backtrace.1, 4
processing_backtrace.1:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x985
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0xd8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x88
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0xaf
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0xa3
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0xaf
	.byte	0x8
	.4byte	0xdf
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0xaf
	.byte	0x9
	.4byte	.LASF25
	.byte	0x14
	.byte	0x5
	.byte	0x8c
	.byte	0x8
	.4byte	0x14b
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x8f
	.byte	0xd
	.4byte	0xf0
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x90
	.byte	0x16
	.4byte	0x14b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x91
	.byte	0x16
	.4byte	0x14b
	.byte	0x8
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x92
	.byte	0x9
	.4byte	0x8f
	.byte	0xc
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x93
	.byte	0x11
	.4byte	0x186
	.byte	0x10
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xfc
	.byte	0x9
	.4byte	.LASF26
	.byte	0x14
	.byte	0x5
	.byte	0xa4
	.byte	0x10
	.4byte	0x186
	.byte	0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0xa7
	.byte	0x17
	.4byte	0xeb
	.byte	0
	.byte	0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0xa8
	.byte	0xf
	.4byte	0x1d9
	.byte	0x4
	.byte	0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0xa9
	.byte	0x11
	.4byte	0x1cd
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x151
	.byte	0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x96
	.byte	0x1b
	.4byte	0xfc
	.byte	0x9
	.4byte	.LASF31
	.byte	0xc
	.byte	0x5
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x9b
	.byte	0xd
	.4byte	0xf0
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x9c
	.byte	0x16
	.4byte	0x14b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x9d
	.byte	0x16
	.4byte	0x14b
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x9f
	.byte	0x20
	.4byte	0x198
	.byte	0x7
	.byte	0x4
	.4byte	0x18c
	.byte	0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x151
	.byte	0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0x1f7
	.byte	0x7
	.byte	0x4
	.4byte	0x1fd
	.byte	0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0x4
	.4byte	0xc7
	.byte	0xc
	.4byte	.LASF63
	.byte	0x1
	.byte	0xdb
	.byte	0x13
	.4byte	0xd3
	.byte	0xd
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x100
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x591
	.byte	0xe
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x100
	.byte	0x1e
	.4byte	0x5a0
	.4byte	.LLST16
	.byte	0xe
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x100
	.byte	0x45
	.4byte	0x5a6
	.4byte	.LLST17
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x102
	.byte	0xf
	.4byte	0x1eb
	.4byte	.LLST18
	.byte	0xf
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x102
	.byte	0x1b
	.4byte	0x1eb
	.4byte	.LLST19
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x103
	.byte	0xa
	.4byte	0x5ac
	.4byte	.LLST20
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x104
	.byte	0xf
	.4byte	0x202
	.4byte	.LLST21
	.byte	0x10
	.string	"fp"
	.byte	0x1
	.2byte	0x105
	.byte	0xd
	.4byte	0x5a6
	.4byte	.LLST22
	.byte	0x10
	.string	"reg"
	.byte	0x1
	.2byte	0x105
	.byte	0x12
	.4byte	0x5a6
	.4byte	.LLST23
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x106
	.byte	0x7
	.4byte	0x5b7
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7e
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x107
	.byte	0x6
	.4byte	0x75
	.4byte	.LLST24
	.byte	0x12
	.string	"log"
	.byte	0x1
	.2byte	0x108
	.byte	0xe
	.4byte	0x5cd
	.byte	0x5
	.byte	0x3
	.4byte	log.2
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x306
	.byte	0xf
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x115
	.byte	0x14
	.4byte	0x5b2
	.4byte	.LLST25
	.byte	0
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x55f
	.byte	0x11
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x139
	.byte	0x10
	.4byte	0x5dd
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7d
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x33b
	.byte	0xf
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x118
	.byte	0x15
	.4byte	0x5b2
	.4byte	.LLST26
	.byte	0
	.byte	0x13
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0x373
	.byte	0x10
	.string	"i"
	.byte	0x1
	.2byte	0x13d
	.byte	0x14
	.4byte	0x75
	.4byte	.LLST34
	.byte	0x14
	.4byte	.LVL83
	.4byte	0x363
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL84
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	0x5ed
	.4byte	.LBB29
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x137
	.byte	0x4
	.4byte	0x409
	.byte	0x18
	.4byte	0x61d
	.4byte	.LLST27
	.byte	0x18
	.4byte	0x612
	.4byte	.LLST28
	.byte	0x18
	.4byte	0x606
	.4byte	.LLST29
	.byte	0x18
	.4byte	0x5fa
	.4byte	.LLST30
	.byte	0x19
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1a
	.4byte	0x629
	.4byte	.LLST31
	.byte	0x1a
	.4byte	0x634
	.4byte	.LLST32
	.byte	0x1a
	.4byte	0x640
	.4byte	.LLST33
	.byte	0x1b
	.4byte	.LVL73
	.4byte	0x93c
	.byte	0x14
	.4byte	.LVL74
	.4byte	0x3e8
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x14
	.4byte	.LVL75
	.4byte	0x3f8
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL76
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL55
	.4byte	0x949
	.4byte	0x42a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xa5
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0x14
	.4byte	.LVL56
	.4byte	0x43d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x1c
	.4byte	.LVL57
	.4byte	0x955
	.4byte	0x451
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL59
	.4byte	0x464
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x1c
	.4byte	.LVL61
	.4byte	0x93c
	.4byte	0x487
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x14
	.4byte	.LVL62
	.4byte	0x49a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x14
	.4byte	.LVL63
	.4byte	0x4ab
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x7e
	.byte	0
	.byte	0x14
	.4byte	.LVL64
	.4byte	0x4be
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x1c
	.4byte	.LVL65
	.4byte	0x93c
	.4byte	0x4e1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x8c,0x7e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x14
	.4byte	.LVL66
	.4byte	0x4f4
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x14
	.4byte	.LVL67
	.4byte	0x505
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x8c,0x7e
	.byte	0
	.byte	0x14
	.4byte	.LVL68
	.4byte	0x518
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x14
	.4byte	.LVL79
	.4byte	0x52b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x14
	.4byte	.LVL80
	.4byte	0x53c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf4,0x7d
	.byte	0
	.byte	0x14
	.4byte	.LVL81
	.4byte	0x54f
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x16
	.4byte	.LVL85
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL45
	.byte	0x2
	.byte	0x79
	.byte	0
	.4byte	0x575
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x1b
	.4byte	.LVL46
	.4byte	0x962
	.byte	0x1b
	.4byte	.LVL47
	.4byte	0x96e
	.byte	0x1b
	.4byte	.LVL48
	.4byte	0x97b
	.byte	0
	.byte	0x1e
	.4byte	0x75
	.4byte	0x5a0
	.byte	0x1f
	.4byte	0x9d
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x591
	.byte	0x7
	.byte	0x4
	.4byte	0xbb
	.byte	0x7
	.byte	0x4
	.4byte	0x1df
	.byte	0x6
	.4byte	0x5ac
	.byte	0x20
	.4byte	0x91
	.4byte	0x5cd
	.byte	0x21
	.4byte	0x88
	.byte	0xf
	.byte	0x21
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0x20
	.4byte	0x91
	.4byte	0x5dd
	.byte	0x21
	.4byte	0x88
	.byte	0xc3
	.byte	0
	.byte	0x20
	.4byte	0x91
	.4byte	0x5ed
	.byte	0x21
	.4byte	0x88
	.byte	0x9
	.byte	0
	.byte	0x22
	.4byte	.LASF50
	.byte	0x1
	.byte	0xe6
	.byte	0xd
	.byte	0x1
	.4byte	0x64d
	.byte	0x23
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe6
	.byte	0x22
	.4byte	0x5a0
	.byte	0x23
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe6
	.byte	0x43
	.4byte	0x65d
	.byte	0x24
	.string	"fp"
	.byte	0x1
	.byte	0xe6
	.byte	0x5c
	.4byte	0x5a6
	.byte	0x23
	.4byte	.LASF45
	.byte	0x1
	.byte	0xe6
	.byte	0x64
	.4byte	0x75
	.byte	0x25
	.string	"ra"
	.byte	0x1
	.byte	0xe8
	.byte	0xd
	.4byte	0x5a6
	.byte	0x26
	.4byte	.LASF46
	.byte	0x1
	.byte	0xe9
	.byte	0xd
	.4byte	0x5a6
	.byte	0x26
	.4byte	.LASF42
	.byte	0x1
	.byte	0xea
	.byte	0x6
	.4byte	0x75
	.byte	0
	.byte	0x20
	.4byte	0x91
	.4byte	0x65d
	.byte	0x21
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x64d
	.byte	0x27
	.4byte	.LASF64
	.byte	0x1
	.byte	0xdc
	.byte	0xc
	.4byte	0xd3
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x28
	.4byte	.LASF48
	.byte	0x1
	.byte	0x94
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x74b
	.byte	0x29
	.4byte	.LASF35
	.byte	0x1
	.byte	0x94
	.byte	0x1d
	.4byte	0x75b
	.4byte	.LLST10
	.byte	0x2a
	.4byte	.LASF49
	.byte	0x1
	.byte	0x95
	.byte	0xe
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	processing_backtrace.1
	.byte	0x2b
	.string	"fp"
	.byte	0x1
	.byte	0x96
	.byte	0x12
	.4byte	0x761
	.4byte	.LLST11
	.byte	0x2c
	.4byte	0x767
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa7
	.byte	0x3
	.4byte	0x712
	.byte	0x18
	.4byte	0x78b
	.4byte	.LLST12
	.byte	0x18
	.4byte	0x780
	.4byte	.LLST13
	.byte	0x18
	.4byte	0x774
	.4byte	.LLST14
	.byte	0x19
	.4byte	.Ldebug_ranges0+0
	.byte	0x1a
	.4byte	0x797
	.4byte	.LLST15
	.byte	0x16
	.4byte	.LVL38
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL25
	.byte	0x2
	.byte	0x82
	.byte	0
	.4byte	0x728
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x14
	.4byte	.LVL35
	.4byte	0x73b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x16
	.4byte	.LVL41
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x75
	.4byte	0x75b
	.byte	0x1f
	.4byte	0x9d
	.byte	0x2d
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x74b
	.byte	0x7
	.byte	0x4
	.4byte	0x60
	.byte	0x22
	.4byte	.LASF51
	.byte	0x1
	.byte	0x72
	.byte	0x14
	.byte	0x3
	.4byte	0x7a3
	.byte	0x23
	.4byte	.LASF35
	.byte	0x1
	.byte	0x72
	.byte	0x2e
	.4byte	0x75b
	.byte	0x24
	.string	"fp"
	.byte	0x1
	.byte	0x72
	.byte	0x60
	.4byte	0x761
	.byte	0x23
	.4byte	.LASF45
	.byte	0x1
	.byte	0x72
	.byte	0x68
	.4byte	0x75
	.byte	0x25
	.string	"pc"
	.byte	0x1
	.byte	0x73
	.byte	0xe
	.4byte	0x5a6
	.byte	0
	.byte	0x2e
	.4byte	.LASF65
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x7ea
	.byte	0x23
	.4byte	.LASF35
	.byte	0x1
	.byte	0x59
	.byte	0x1b
	.4byte	0x75b
	.byte	0x23
	.4byte	.LASF36
	.byte	0x1
	.byte	0x59
	.byte	0x49
	.4byte	0x5a6
	.byte	0x2a
	.4byte	.LASF49
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	processing_backtrace.0
	.byte	0x25
	.string	"fp"
	.byte	0x1
	.byte	0x5c
	.byte	0x10
	.4byte	0x5a6
	.byte	0
	.byte	0x22
	.4byte	.LASF52
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.byte	0x1
	.4byte	0x830
	.byte	0x23
	.4byte	.LASF35
	.byte	0x1
	.byte	0x41
	.byte	0x23
	.4byte	0x75b
	.byte	0x24
	.string	"fp"
	.byte	0x1
	.byte	0x42
	.byte	0x28
	.4byte	0x5a6
	.byte	0x23
	.4byte	.LASF36
	.byte	0x1
	.byte	0x42
	.byte	0x37
	.4byte	0x5a6
	.byte	0x25
	.string	"ra"
	.byte	0x1
	.byte	0x44
	.byte	0x10
	.4byte	0x5a6
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0xaf
	.byte	0
	.byte	0x2f
	.4byte	0x7a3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x93c
	.byte	0x18
	.4byte	0x7b4
	.4byte	.LLST0
	.byte	0x18
	.4byte	0x7c0
	.4byte	.LLST1
	.byte	0x1a
	.4byte	0x7de
	.4byte	.LLST2
	.byte	0x30
	.4byte	0x7ea
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x69
	.byte	0x5
	.4byte	0x8d8
	.byte	0x18
	.4byte	0x80e
	.4byte	.LLST3
	.byte	0x18
	.4byte	0x803
	.4byte	.LLST4
	.byte	0x18
	.4byte	0x7f7
	.4byte	.LLST5
	.byte	0x1a
	.4byte	0x81a
	.4byte	.LLST6
	.byte	0x1a
	.4byte	0x825
	.4byte	.LLST7
	.byte	0x1d
	.4byte	.LVL5
	.byte	0x2
	.byte	0x83
	.byte	0
	.4byte	0x8b5
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x14
	.4byte	.LVL12
	.4byte	0x8c8
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x16
	.4byte	.LVL16
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	0x7a3
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x916
	.byte	0x18
	.4byte	0x7c0
	.4byte	.LLST8
	.byte	0x18
	.4byte	0x7b4
	.4byte	.LLST9
	.byte	0x31
	.4byte	0x7de
	.byte	0x32
	.4byte	.LVL22
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL2
	.byte	0x2
	.byte	0x83
	.byte	0
	.4byte	0x92c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x16
	.4byte	.LVL17
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.2byte	0x10a
	.byte	0x5
	.byte	0x34
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.byte	0x33
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x573
	.byte	0x7
	.byte	0x34
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.byte	0x33
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x672
	.byte	0xd
	.byte	0x33
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x673
	.byte	0xa
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x35
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
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
	.byte	0x96,0x42
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
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
	.byte	0x34
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
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x78
	.byte	0xe0,0x7d
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL69
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x78
	.byte	0xe8,0x7d
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x78
	.byte	0xec,0x7d
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7d
	.4byte	.LVL92
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL54
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0x82
	.byte	0x9c,0x1
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x3
	.byte	0x82
	.byte	0x8c,0x1
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL43
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x78
	.byte	0xec,0x7d
	.4byte	.LVL92
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL51
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x78
	.byte	0xec,0x7d
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x78
	.byte	0xec,0x7d
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0x78
	.byte	0x98,0x7e
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x4
	.byte	0x78
	.byte	0x98,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL42
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x7e
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"pxAllList"
.LASF61:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/freertos_riscv_ram"
.LASF49:
	.string	"processing_backtrace"
.LASF2:
	.string	"short int"
.LASF47:
	.string	"backtrace_now_task"
.LASF22:
	.string	"pxPrevious"
.LASF59:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF21:
	.string	"pxNext"
.LASF51:
	.string	"backtrace_stack_app"
.LASF37:
	.string	"pxFirstTCB"
.LASF55:
	.string	"pcTaskGetName"
.LASF6:
	.string	"__uint32_t"
.LASF56:
	.string	"vTaskEnterCritical"
.LASF23:
	.string	"pvOwner"
.LASF40:
	.string	"pxTopOfStack"
.LASF63:
	.string	"TrapNetCounter"
.LASF65:
	.string	"backtrace_riscv"
.LASF15:
	.string	"uintptr_t"
.LASF64:
	.string	"xPortIsInsideInterrupt"
.LASF53:
	.string	"snprintf"
.LASF33:
	.string	"List_t"
.LASF32:
	.string	"MiniListItem_t"
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"TickType_t"
.LASF57:
	.string	"xAddTasksToAllList"
.LASF54:
	.string	"memset"
.LASF43:
	.string	"pxConstList"
.LASF26:
	.string	"xLIST"
.LASF46:
	.string	"cur_fp"
.LASF62:
	.string	"tskTaskControlBlock"
.LASF20:
	.string	"xItemValue"
.LASF41:
	.string	"ptAddr"
.LASF25:
	.string	"xLIST_ITEM"
.LASF52:
	.string	"backtrace_stack"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"int32_t"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF34:
	.string	"TaskHandle_t"
.LASF11:
	.string	"unsigned int"
.LASF30:
	.string	"ListItem_t"
.LASF17:
	.string	"BaseType_t"
.LASF50:
	.string	"backtrace_task"
.LASF38:
	.string	"pxNextTCB"
.LASF24:
	.string	"pvContainer"
.LASF44:
	.string	"proj_elf"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF58:
	.string	"pxTaskGetAllList"
.LASF45:
	.string	"depth"
.LASF48:
	.string	"backtrace_now_app"
.LASF35:
	.string	"print_func"
.LASF7:
	.string	"long unsigned int"
.LASF18:
	.string	"UBaseType_t"
.LASF42:
	.string	"pt_num"
.LASF27:
	.string	"uxNumberOfItems"
.LASF10:
	.string	"__uintptr_t"
.LASF5:
	.string	"__int32_t"
.LASF29:
	.string	"xListEnd"
.LASF16:
	.string	"StackType_t"
.LASF60:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/panic/panic_c.c"
.LASF28:
	.string	"pxIndex"
.LASF31:
	.string	"xMINI_LIST_ITEM"
.LASF36:
	.string	"regs"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
