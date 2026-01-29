	.file	"bl_pm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pm_post_event,"ax",@progbits
	.align	1
	.globl	pm_post_event
	.type	pm_post_event, @function
pm_post_event:
.LFB37:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.c"
	.loc 1 266 1
	.cfi_startproc
.LVL0:
	.loc 1 267 5
	.loc 1 266 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 267 9
	lui	s3,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(s3)
	.loc 1 267 8
	beq	a5,zero,.L15
	.loc 1 271 5
	lw	a5,20(a5)
	.loc 1 271 52
	slli	s5,a0,3
	mv	s6,a0
	mv	s2,a1
	mv	s1,a2
	addi	s3,s3,%lo(.LANCHOR0)
	.loc 1 271 5 is_stmt 1
	add	s5,a5,s5
.LVL1:
.LBB56:
.LBB57:
	.loc 1 190 5
	.loc 1 191 5
	.loc 1 192 5
	.loc 1 194 5
	.loc 1 194 8 is_stmt 0
	beq	a2,zero,.L3
	.loc 1 195 9 is_stmt 1
	.loc 1 195 17 is_stmt 0
	sw	zero,0(a2)
.L3:
	.loc 1 198 5 is_stmt 1
	.loc 1 198 15 is_stmt 0
	lw	a5,4(s5)
.LVL2:
	.loc 1 198 157
	li	s4,0
	beq	a5,zero,.L4
	lw	s4,4(a5)
.L4:
.LBB58:
.LBB59:
	.loc 1 179 42
	li	s7,4
.LVL3:
.L5:
.LBE59:
.LBE58:
	.loc 1 198 6 is_stmt 1
	.loc 1 198 5 is_stmt 0
	bne	s5,a5,.L11
.LVL4:
.LBE57:
.LBE56:
	.loc 1 272 5 is_stmt 1
.LBB65:
.LBB66:
	.loc 1 218 5
	.loc 1 220 5
.LBE66:
.LBE65:
	.loc 1 274 12 is_stmt 0
	li	a0,0
.LBB81:
.LBB75:
	.loc 1 220 5
	bne	s6,zero,.L1
	.loc 1 223 13 is_stmt 1
	beq	s2,zero,.L12
	li	a5,1
	beq	s2,a5,.L13
.LVL5:
.L1:
.LBE75:
.LBE81:
	.loc 1 275 1 is_stmt 0
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
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L11:
	.cfi_restore_state
.LBB82:
.LBB64:
	.loc 1 199 9 is_stmt 1
	.loc 1 199 12 is_stmt 0
	lw	a4,28(a5)
	beq	a4,zero,.L7
	.loc 1 199 28
	lw	a4,12(a5)
	bne	s2,a4,.L7
	.loc 1 199 65
	lw	a3,0(s3)
	.loc 1 199 91
	lw	a4,20(a5)
	.loc 1 199 85
	lw	a2,4(a3)
	and	a2,a4,a2
	.loc 1 199 52
	beq	a2,zero,.L7
	.loc 1 200 45
	lw	a2,8(a3)
	and	a4,a4,a2
	.loc 1 199 102
	beq	a4,zero,.L7
	.loc 1 202 13 is_stmt 1
.LVL7:
.LBB61:
.LBB60:
	.loc 1 177 5
	.loc 1 179 5
	.loc 1 179 8 is_stmt 0
	beq	s6,zero,.L9
	.loc 1 179 42
	lw	a4,12(a3)
	bne	a4,s7,.L17
.L9:
.LVL8:
.LBE60:
.LBE61:
	.loc 1 206 13 is_stmt 1
.LBB62:
.LBB63:
	.loc 1 168 5
	.loc 1 168 13 is_stmt 0
	lw	a4,24(a5)
	.loc 1 168 8
	beq	a4,zero,.L7
	.loc 1 172 5 is_stmt 1
	.loc 1 172 12 is_stmt 0
	lw	a0,32(a5)
	jalr	a4
.LVL9:
.LBE63:
.LBE62:
	.loc 1 207 13 is_stmt 1
	.loc 1 207 16 is_stmt 0
	beq	a0,zero,.L7
	.loc 1 207 21
	beq	s1,zero,.L7
	.loc 1 208 17 is_stmt 1
	.loc 1 208 25 is_stmt 0
	lw	a5,0(s1)
	ori	a5,a5,1
	sw	a5,0(s1)
.LVL10:
.L7:
	.loc 1 198 36 is_stmt 1
	.loc 1 198 153 is_stmt 0
	li	a4,0
	beq	s4,zero,.L10
	lw	a4,4(s4)
.L10:
	mv	a5,s4
	mv	s4,a4
.LVL11:
	j	.L5
.LVL12:
.L12:
.LBE64:
.LBE82:
.LBB83:
.LBB76:
	.loc 1 226 21 is_stmt 1
.LBB67:
.LBB68:
	.loc 1 138 5
	.loc 1 138 21 is_stmt 0
	lw	a5,0(s3)
	lw	a4,12(a5)
.LBE68:
.LBE67:
	.loc 1 226 24
	beq	a4,zero,.L14
.LBE76:
.LBE83:
	.loc 1 138 5 is_stmt 1
.LBB84:
.LBB77:
	.loc 1 226 61 is_stmt 0
	li	a3,3
.LBE77:
.LBE84:
	.loc 1 274 12
	li	a0,0
.LBB85:
.LBB78:
	.loc 1 226 61
	bne	a4,a3,.L1
.L14:
	.loc 1 232 21 is_stmt 1
.LVL13:
.LBB69:
.LBB70:
	.loc 1 131 5
	.loc 1 131 22 is_stmt 0
	li	a4,2
	sw	a4,12(a5)
	.loc 1 133 5 is_stmt 1
.LVL14:
.L17:
.LBE70:
.LBE69:
.LBE78:
.LBE85:
	.loc 1 274 12 is_stmt 0
	li	a0,0
	j	.L1
.LVL15:
.L13:
.LBB86:
.LBB79:
	.loc 1 238 21 is_stmt 1
.LBB71:
.LBB72:
	.loc 1 138 5
	.loc 1 138 21 is_stmt 0
	lw	a5,0(s3)
.LBE72:
.LBE71:
	.loc 1 238 24
	li	a4,4
.LBE79:
.LBE86:
	.loc 1 274 12
	li	a0,0
.LBB87:
.LBB80:
	.loc 1 238 24
	lw	a3,12(a5)
	bne	a3,a4,.L1
	.loc 1 245 21 is_stmt 1
.LVL16:
.LBB73:
.LBB74:
	.loc 1 131 5
	.loc 1 131 22 is_stmt 0
	sw	s2,12(a5)
	.loc 1 133 5 is_stmt 1
	.loc 1 133 12 is_stmt 0
	j	.L1
.LVL17:
.L15:
.LBE74:
.LBE73:
.LBE80:
.LBE87:
	.loc 1 268 16
	li	a0,-1
.LVL18:
	j	.L1
	.cfi_endproc
.LFE37:
	.size	pm_post_event, .-pm_post_event
	.section	.rodata.bl_pm_event_register.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"p_node"
	.align	2
.LC1:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.c"
	.section	.text.bl_pm_event_register,"ax",@progbits
	.align	1
	.globl	bl_pm_event_register
	.type	bl_pm_event_register, @function
bl_pm_event_register:
.LFB38:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 279 5
	.loc 1 281 5
	.loc 1 278 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 281 9
	lui	s3,%hi(.LANCHOR0)
	.loc 1 278 1
	mv	s6,a5
	.loc 1 281 8
	lw	a5,%lo(.LANCHOR0)(s3)
.LVL20:
	beq	a5,zero,.L56
	mv	s2,a0
	.loc 1 285 14
	li	a0,36
.LVL21:
	mv	s9,a1
	mv	s8,a2
	mv	s5,a3
	mv	s7,a4
	mv	s4,a6
	.loc 1 285 5 is_stmt 1
	.loc 1 285 14 is_stmt 0
	call	pvPortMalloc
.LVL22:
	mv	s1,a0
.LVL23:
	.loc 1 286 4 is_stmt 1
	.loc 1 286 16 is_stmt 0
	bne	a0,zero,.L49
	.loc 1 286 18 discriminator 1
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LANCHOR1)
	lui	a0,%hi(.LC1)
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LANCHOR1)
	li	a1,286
	addi	a0,a0,%lo(.LC1)
	call	__assert_func
.LVL24:
.L49:
	.loc 1 288 5
	li	a2,36
	li	a1,0
	call	memset
.LVL25:
	addi	s3,s3,%lo(.LANCHOR0)
	.loc 1 288 5 is_stmt 1
	.loc 1 289 5
	.loc 1 297 36 is_stmt 0
	lw	a3,0(s3)
	.loc 1 289 19
	sw	s2,8(s1)
	.loc 1 290 5 is_stmt 1
	.loc 1 290 18 is_stmt 0
	sw	s9,12(s1)
	.loc 1 291 5 is_stmt 1
	.loc 1 291 21 is_stmt 0
	sw	s8,20(s1)
	.loc 1 292 5 is_stmt 1
	.loc 1 292 22 is_stmt 0
	sh	s5,16(s1)
	.loc 1 293 5 is_stmt 1
	.loc 1 293 17 is_stmt 0
	sw	s7,24(s1)
	.loc 1 294 5 is_stmt 1
	.loc 1 294 17 is_stmt 0
	sw	s6,32(s1)
	.loc 1 295 5 is_stmt 1
	.loc 1 295 20 is_stmt 0
	sw	s4,28(s1)
	.loc 1 297 5 is_stmt 1
	.loc 1 297 46 is_stmt 0
	slli	a0,s2,3
	.loc 1 297 5
	lw	s2,20(a3)
.LVL26:
.LBB98:
.LBB99:
	.loc 1 148 157
	li	a4,0
.LBE99:
.LBE98:
	.loc 1 297 5
	add	s2,s2,a0
.LVL27:
.LBB110:
.LBB108:
	.loc 1 143 5 is_stmt 1
	.loc 1 144 5
	.loc 1 145 5
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 148 15 is_stmt 0
	lw	a5,4(s2)
.LVL28:
	.loc 1 148 157
	beq	a5,zero,.L50
	lw	a4,4(a5)
.L50:
	.loc 1 148 153
	mv	s4,s2
.LVL29:
.L51:
	.loc 1 148 6 is_stmt 1
	.loc 1 148 5 is_stmt 0
	bne	s2,a5,.L54
	.loc 1 159 5 is_stmt 1
	.loc 1 160 9
	lw	a0,16(a3)
	li	a1,-1
	call	xQueueSemaphoreTake
.LVL30:
	.loc 1 161 9
.LBB100:
.LBB101:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
	.loc 2 291 5
	.loc 2 291 34 is_stmt 0
	lw	a5,0(s2)
.LVL31:
.LBB102:
.LBB103:
	.loc 2 266 5 is_stmt 1
	.loc 2 266 16 is_stmt 0
	sw	s2,4(s1)
	.loc 2 267 5 is_stmt 1
	.loc 2 267 16 is_stmt 0
	sw	a5,0(s1)
	.loc 2 269 5 is_stmt 1
	.loc 2 269 16 is_stmt 0
	sw	s1,4(a5)
	.loc 2 270 5 is_stmt 1
	.loc 2 270 16 is_stmt 0
	sw	s1,0(s2)
	j	.L61
.LVL32:
.L54:
.LBE103:
.LBE102:
.LBE101:
.LBE100:
	.loc 1 149 9 is_stmt 1
	.loc 1 149 12 is_stmt 0
	lhu	a2,16(a5)
	bleu	a2,s5,.L52
	.loc 1 150 13 is_stmt 1
	lw	a0,16(a3)
	li	a1,-1
	call	xQueueSemaphoreTake
.LVL33:
	.loc 1 151 13
.LBB104:
.LBB105:
	.loc 2 286 5
	.loc 2 286 41 is_stmt 0
	lw	a5,4(s4)
.LVL34:
.LBB106:
.LBB107:
	.loc 2 266 5 is_stmt 1
	.loc 2 267 16 is_stmt 0
	sw	s4,0(s1)
	.loc 2 266 16
	sw	a5,4(s1)
	.loc 2 267 5 is_stmt 1
	.loc 2 269 5
	.loc 2 269 16 is_stmt 0
	sw	s1,4(s4)
	.loc 2 270 5 is_stmt 1
	.loc 2 270 16 is_stmt 0
	sw	s1,0(a5)
.LVL35:
.LBE107:
.LBE106:
.LBE105:
.LBE104:
	.loc 1 152 13 is_stmt 1
.L61:
	.loc 1 162 9
	.loc 1 162 57 is_stmt 0
	lw	a5,0(s3)
	.loc 1 162 9
	li	a3,0
	li	a2,0
	lw	a0,16(a5)
	li	a1,0
	call	xQueueGenericSend
.LVL36:
.LBE108:
.LBE110:
	.loc 1 299 12
	li	a0,0
	j	.L47
.LVL37:
.L52:
.LBB111:
.LBB109:
	.loc 1 156 9 is_stmt 1
	.loc 1 148 36
	.loc 1 148 153 is_stmt 0
	li	a2,0
	beq	a4,zero,.L53
	lw	a2,4(a4)
.L53:
	mv	s4,a5
	mv	a5,a4
.LVL38:
	mv	a4,a2
.LVL39:
	j	.L51
.LVL40:
.L56:
.LBE109:
.LBE111:
	.loc 1 282 16
	li	a0,-1
.LVL41:
.L47:
	.loc 1 300 1
	lw	ra,44(sp)
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
	lw	s6,16(sp)
	.cfi_restore 22
.LVL42:
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	bl_pm_event_register, .-bl_pm_event_register
	.section	.text.bl_pm_event_switch,"ax",@progbits
	.align	1
	.globl	bl_pm_event_switch
	.type	bl_pm_event_switch, @function
bl_pm_event_switch:
.LFB39:
	.loc 1 303 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 304 5
	.loc 1 305 5
	.loc 1 306 5
	.loc 1 307 5
	.loc 1 309 5
	.loc 1 303 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 309 9
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 309 8
	beq	a5,zero,.L69
	.loc 1 313 5 is_stmt 1
	.loc 1 313 11 is_stmt 0
	lw	a3,20(a5)
	.loc 1 313 34
	slli	a0,a0,3
.LVL44:
	.loc 1 315 157
	li	a4,0
	.loc 1 313 11
	add	a3,a3,a0
.LVL45:
	.loc 1 315 5 is_stmt 1
	.loc 1 315 15 is_stmt 0
	lw	a5,4(a3)
.LVL46:
	.loc 1 315 157
	beq	a5,zero,.L64
	.loc 1 315 157 discriminator 1
	lw	a4,4(a5)
.L64:
	.loc 1 315 153 discriminator 10
	li	a0,-1
.LVL47:
.L65:
	.loc 1 315 6 is_stmt 1 discriminator 10
	.loc 1 315 5 is_stmt 0 discriminator 10
	bne	a5,a3,.L68
.LVL48:
.L62:
	.loc 1 324 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL49:
.L68:
	.cfi_restore_state
	.loc 1 316 9 is_stmt 1
	.loc 1 316 12 is_stmt 0
	lw	a6,12(a5)
	bne	a6,a1,.L66
	.loc 1 317 13 is_stmt 1
	.loc 1 317 26 is_stmt 0
	sw	a2,28(a5)
	.loc 1 319 13 is_stmt 1
.LVL50:
	.loc 1 319 17 is_stmt 0
	li	a0,0
.LVL51:
.L66:
	.loc 1 315 36 is_stmt 1
	.loc 1 315 153 is_stmt 0
	li	a6,0
	beq	a4,zero,.L67
	.loc 1 315 153 discriminator 6
	lw	a6,4(a4)
.L67:
	.loc 1 315 153 discriminator 10
	mv	a5,a4
	mv	a4,a6
.LVL52:
	j	.L65
.LVL53:
.L69:
	.loc 1 310 16
	li	a0,-1
.LVL54:
	j	.L62
	.cfi_endproc
.LFE39:
	.size	bl_pm_event_switch, .-bl_pm_event_switch
	.section	.text.bl_pm_state_run,"ax",@progbits
	.align	1
	.globl	bl_pm_state_run
	.type	bl_pm_state_run, @function
bl_pm_state_run:
.LFB40:
	.loc 1 327 1 is_stmt 1
	.cfi_startproc
	.loc 1 328 5
.LVL55:
	.loc 1 330 5
	.loc 1 330 9 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 331 16
	li	a0,-1
	.loc 1 330 8
	beq	a5,zero,.L80
	.loc 1 334 5 is_stmt 1
	.loc 1 327 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 334 22
	lw	a4,12(a5)
	.loc 1 334 5
	li	a3,2
	beq	a4,a3,.L75
	li	a3,4
	li	a0,0
	beq	a4,a3,.L73
	li	a3,1
	beq	a4,a3,.L76
.L83:
	.loc 1 353 9 is_stmt 1
	.loc 1 328 9 is_stmt 0
	li	a0,-1
	.loc 1 353 9
	j	.L73
.L75:
	.loc 1 342 13 is_stmt 1
.LVL56:
.LBB112:
.LBB113:
	.loc 1 131 5
	.loc 1 131 22 is_stmt 0
	li	a4,4
	sw	a4,12(a5)
	.loc 1 133 5 is_stmt 1
.LVL57:
.LBE113:
.LBE112:
	.loc 1 343 13
	li	a2,0
	li	a1,2
	li	a0,0
	call	pm_post_event
.LVL58:
	.loc 1 343 75
	.loc 1 344 13
	.loc 1 346 9
	.loc 1 344 17 is_stmt 0
	li	a0,0
.LVL59:
.L73:
	.loc 1 373 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL60:
.L76:
	.cfi_restore_state
	.loc 1 350 13 is_stmt 1
.LBB114:
.LBB115:
	.loc 1 131 5
	.loc 1 131 22 is_stmt 0
	li	a4,3
	sw	a4,12(a5)
	.loc 1 133 5 is_stmt 1
.LVL61:
.LBE115:
.LBE114:
	.loc 1 351 13
	li	a2,0
	li	a1,3
	li	a0,0
	call	pm_post_event
.LVL62:
	j	.L83
.L80:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.loc 1 373 1 is_stmt 0
	ret
	.cfi_endproc
.LFE40:
	.size	bl_pm_state_run, .-bl_pm_state_run
	.section	.rodata.bl_pm_capacity_set.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"gp_pm_env"
	.section	.text.bl_pm_capacity_set,"ax",@progbits
	.align	1
	.globl	bl_pm_capacity_set
	.type	bl_pm_capacity_set, @function
bl_pm_capacity_set:
.LFB41:
	.loc 1 376 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 377 5
	.loc 1 379 5
	addi	a5,a0,-1
	li	a4,5
	bgtu	a5,a4,.L87
	lui	a0,%hi(.LANCHOR2)
.LVL64:
	addi	a0,a0,%lo(.LANCHOR2)
	add	a0,a0,a5
.LBB118:
.LBB119:
	.loc 1 122 6 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
.LVL65:
	lw	a5,%lo(.LANCHOR0)(a5)
	lbu	a4,0(a0)
.LVL66:
.LBE119:
.LBE118:
	.loc 1 443 5 is_stmt 1
.LBB124:
.LBB120:
	.loc 1 122 4
	.loc 1 122 16 is_stmt 0
	bne	a5,zero,.L86
.LBE120:
.LBE124:
	.loc 1 376 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB125:
.LBB121:
	.loc 1 122 18
	lui	a3,%hi(.LC2)
	lui	a2,%hi(.LANCHOR3)
	lui	a0,%hi(.LC1)
.LBE121:
.LBE125:
	.loc 1 376 1
.LBB126:
.LBB122:
	.loc 1 122 18
	addi	a3,a3,%lo(.LC2)
	addi	a2,a2,%lo(.LANCHOR3)
	li	a1,122
	addi	a0,a0,%lo(.LC1)
	call	__assert_func
.LVL67:
.L86:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.loc 1 124 5 is_stmt 1
	.loc 1 124 34 is_stmt 0
	sw	a4,4(a5)
	.loc 1 126 5 is_stmt 1
.LBE122:
.LBE126:
	.loc 1 445 12 is_stmt 0
	li	a0,0
.LBB127:
.LBB123:
	.loc 1 126 12
	ret
.LVL68:
.L87:
.LBE123:
.LBE127:
	.loc 1 382 20
	li	a0,-1
.LVL69:
	.loc 1 446 1
	ret
	.cfi_endproc
.LFE41:
	.size	bl_pm_capacity_set, .-bl_pm_capacity_set
	.section	.rodata.bl_pm_init.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"!gp_pm_env"
	.align	2
.LC4:
	.string	"gp_pm_env->pm_list"
	.align	2
.LC5:
	.string	"gp_pm_env->pm_mux"
	.section	.text.bl_pm_init,"ax",@progbits
	.align	1
	.globl	bl_pm_init
	.type	bl_pm_init, @function
bl_pm_init:
.LFB42:
	.loc 1 449 1 is_stmt 1
	.cfi_startproc
	.loc 1 450 5
.LBB132:
.LBB133:
	.loc 1 57 5
.LVL70:
	.loc 1 59 4
.LBE133:
.LBE132:
	.loc 1 449 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB138:
.LBB136:
	.loc 1 59 4
	lui	s1,%hi(.LANCHOR0)
.LBE136:
.LBE138:
	.loc 1 449 1
.LBB139:
.LBB137:
	.loc 1 59 4
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 59 16
	lw	a5,0(s1)
	beq	a5,zero,.L92
	.loc 1 59 18
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LANCHOR4)
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LANCHOR4)
	li	a1,59
.L100:
	.loc 1 62 18
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	__assert_func
.LVL71:
.L92:
	.loc 1 61 5 is_stmt 1
	.loc 1 61 17 is_stmt 0
	li	a0,24
	call	pvPortMalloc
.LVL72:
	.loc 1 61 15
	sw	a0,0(s1)
	.loc 1 62 4 is_stmt 1
	.loc 1 62 16 is_stmt 0
	bne	a0,zero,.L93
	.loc 1 62 18
	lui	a3,%hi(.LC2)
	lui	a2,%hi(.LANCHOR4)
	addi	a3,a3,%lo(.LC2)
	addi	a2,a2,%lo(.LANCHOR4)
	li	a1,62
	j	.L100
.L93:
	.loc 1 64 5 is_stmt 1
	li	a2,24
	li	a1,0
	call	memset
.LVL73:
	.loc 1 65 5
	.loc 1 65 26 is_stmt 0
	li	a0,48
	.loc 1 65 14
	lw	s2,0(s1)
	.loc 1 65 26
	call	pvPortMalloc
.LVL74:
	.loc 1 66 13
	lw	a5,0(s1)
	.loc 1 65 24
	sw	a0,20(s2)
	.loc 1 66 4 is_stmt 1
	.loc 1 66 13 is_stmt 0
	lw	a0,20(a5)
	.loc 1 66 16
	bne	a0,zero,.L94
	.loc 1 66 18
	lui	a3,%hi(.LC4)
	lui	a2,%hi(.LANCHOR4)
	addi	a3,a3,%lo(.LC4)
	addi	a2,a2,%lo(.LANCHOR4)
	li	a1,66
	j	.L100
.L94:
	.loc 1 68 5 is_stmt 1
	li	a2,24
	li	a1,0
	call	memset
.LVL75:
	.loc 1 70 5
	.loc 1 70 25 is_stmt 0
	li	a0,1
	.loc 1 70 14
	lw	s2,0(s1)
	.loc 1 70 25
	call	xQueueCreateMutex
.LVL76:
	.loc 1 71 13
	lw	a4,0(s1)
	.loc 1 70 23
	sw	a0,16(s2)
	.loc 1 71 4 is_stmt 1
	li	a3,0
	.loc 1 71 16 is_stmt 0
	lw	a5,16(a4)
	.loc 1 73 5
	li	a2,48
	.loc 1 71 16
	bne	a5,zero,.L95
	.loc 1 71 18
	lui	a3,%hi(.LC5)
	lui	a2,%hi(.LANCHOR4)
	addi	a3,a3,%lo(.LC5)
	addi	a2,a2,%lo(.LANCHOR4)
	li	a1,71
	j	.L100
.LVL77:
.L95:
	.loc 1 74 9 is_stmt 1
	lw	a5,20(a4)
	add	a5,a5,a3
.LVL78:
.LBB134:
.LBB135:
	.loc 2 310 5
	.loc 2 310 16 is_stmt 0
	sw	a5,4(a5)
	.loc 2 311 5 is_stmt 1
	.loc 2 311 16 is_stmt 0
	sw	a5,0(a5)
.LVL79:
.LBE135:
.LBE134:
	.loc 1 73 35 is_stmt 1
	.loc 1 73 17
	.loc 1 73 5 is_stmt 0
	addi	a3,a3,8
	bne	a3,a2,.L95
	.loc 1 77 5 is_stmt 1
	.loc 1 80 32 is_stmt 0
	li	a5,65536
	addi	a5,a5,-1
	.loc 1 77 22
	sw	zero,12(a4)
	.loc 1 80 5 is_stmt 1
	.loc 1 80 32 is_stmt 0
	sw	a5,8(a4)
	.loc 1 82 5 is_stmt 1
.LBE137:
.LBE139:
	.loc 1 452 5
	.loc 1 453 1 is_stmt 0
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
.LFE42:
	.size	bl_pm_init, .-bl_pm_init
	.section	.text.bl_pm_deinit,"ax",@progbits
	.align	1
	.globl	bl_pm_deinit
	.type	bl_pm_deinit, @function
bl_pm_deinit:
.LFB43:
	.loc 1 456 1 is_stmt 1
	.cfi_startproc
	.loc 1 457 5
.LBB146:
.LBB147:
	.loc 1 100 5
.LVL80:
	.loc 1 102 4
.LBE147:
.LBE146:
	.loc 1 456 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB161:
.LBB158:
	.loc 1 102 6
	lui	s1,%hi(.LANCHOR0)
	.loc 1 102 16
	lw	a5,%lo(.LANCHOR0)(s1)
	bne	a5,zero,.L112
	.loc 1 102 18
	lui	a3,%hi(.LC2)
	lui	a2,%hi(.LANCHOR5)
	lui	a0,%hi(.LC1)
	addi	a3,a3,%lo(.LC2)
	addi	a2,a2,%lo(.LANCHOR5)
	li	a1,102
	addi	a0,a0,%lo(.LC1)
	call	__assert_func
.LVL81:
.L112:
	addi	s1,s1,%lo(.LANCHOR0)
	li	s4,0
	li	s6,48
.LVL82:
.L102:
	.loc 1 105 9 is_stmt 1
	.loc 1 105 35 is_stmt 0
	lw	a5,0(s1)
.LBB148:
.LBB149:
	.loc 1 90 157
	li	s3,0
.LBE149:
.LBE148:
	.loc 1 105 9
	lw	s5,20(a5)
	add	s5,s5,s4
.LVL83:
.LBB156:
.LBB154:
	.loc 1 87 5 is_stmt 1
	.loc 1 88 5
	.loc 1 90 5
	.loc 1 90 15 is_stmt 0
	lw	s2,4(s5)
.LVL84:
	.loc 1 90 157
	beq	s2,zero,.L104
	lw	s3,4(s2)
.L104:
.LVL85:
	.loc 1 90 6 is_stmt 1
	.loc 1 91 41 is_stmt 0
	lw	a5,0(s1)
	.loc 1 90 5
	bne	s5,s2,.L106
.LVL86:
.LBE154:
.LBE156:
	.loc 1 104 35 is_stmt 1
	.loc 1 104 17
	.loc 1 104 5 is_stmt 0
	addi	s4,s4,8
	bne	s4,s6,.L102
	.loc 1 108 5 is_stmt 1
	lw	a0,20(a5)
	call	vPortFree
.LVL87:
	.loc 1 109 5
	.loc 1 109 14 is_stmt 0
	lw	a5,0(s1)
	.loc 1 111 5
	lw	a0,16(a5)
	.loc 1 109 24
	sw	zero,20(a5)
	.loc 1 111 5 is_stmt 1
	call	vQueueDelete
.LVL88:
	.loc 1 112 5
	.loc 1 112 14 is_stmt 0
	lw	a0,0(s1)
	.loc 1 112 23
	sw	zero,16(a0)
	.loc 1 114 5 is_stmt 1
	call	vPortFree
.LVL89:
	.loc 1 115 5
.LBE158:
.LBE161:
	.loc 1 460 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LBB162:
.LBB159:
	.loc 1 115 15
	sw	zero,0(s1)
	.loc 1 117 5 is_stmt 1
.LBE159:
.LBE162:
	.loc 1 459 5
	.loc 1 460 1 is_stmt 0
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL90:
.L106:
	.cfi_restore_state
.LBB163:
.LBB160:
.LBB157:
.LBB155:
	.loc 1 91 9 is_stmt 1
	lw	a0,16(a5)
	li	a1,-1
	call	xQueueSemaphoreTake
.LVL91:
	.loc 1 92 9
.LBB150:
.LBB151:
	.loc 2 296 5
	.loc 2 296 20 is_stmt 0
	lw	a4,0(s2)
.LVL92:
	.loc 2 297 5 is_stmt 1
	.loc 2 297 20 is_stmt 0
	lw	a5,4(s2)
.LVL93:
	.loc 2 299 5 is_stmt 1
.LBE151:
.LBE150:
	.loc 1 93 9 is_stmt 0
	mv	a0,s2
.LBB153:
.LBB152:
	.loc 2 299 16
	sw	a5,4(a4)
	.loc 2 300 5 is_stmt 1
	.loc 2 300 16 is_stmt 0
	sw	a4,0(a5)
.LVL94:
.LBE152:
.LBE153:
	.loc 1 93 9 is_stmt 1
	call	vPortFree
.LVL95:
	.loc 1 94 9
	.loc 1 94 57 is_stmt 0
	lw	a5,0(s1)
	.loc 1 94 9
	li	a3,0
	li	a2,0
	lw	a0,16(a5)
	li	a1,0
	call	xQueueGenericSend
.LVL96:
	.loc 1 90 36 is_stmt 1
	.loc 1 90 153 is_stmt 0
	li	a5,0
	beq	s3,zero,.L105
	lw	a5,4(s3)
.L105:
	mv	s2,s3
	mv	s3,a5
.LVL97:
	j	.L104
.LBE155:
.LBE157:
.LBE160:
.LBE163:
	.cfi_endproc
.LFE43:
	.size	bl_pm_deinit, .-bl_pm_deinit
	.section	.rodata.__func__.0,"a"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"pm_deinit"
	.section	.rodata.__func__.1,"a"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"pm_env_init"
	.section	.rodata.__func__.2,"a"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"pm_set_wlan_capacity"
	.section	.rodata.__func__.3,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	__func__.3, @object
	.size	__func__.3, 21
__func__.3:
	.string	"bl_pm_event_register"
	.section	.sbss.gp_pm_env,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gp_pm_env, @object
	.size	gp_pm_env, 4
gp_pm_env:
	.zero	4
	.section	.srodata.CSWTCH.70,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	CSWTCH.70, @object
	.size	CSWTCH.70, 6
CSWTCH.70:
	.byte	3
	.byte	51
	.byte	47
	.byte	31
	.byte	14
	.byte	6
	.text
.Letext0:
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeef
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF116
	.byte	0xc
	.4byte	.LASF117
	.4byte	.LASF118
	.4byte	.Ldebug_ranges0+0x140
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x59
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x73
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x31
	.byte	0x1c
	.4byte	0x86
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x99
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0x8d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.4byte	0xc1
	.byte	0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x30
	.byte	0x22
	.4byte	0xd9
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0x8
	.4byte	.LASF119
	.byte	0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x25
	.byte	0x17
	.4byte	0xcd
	.byte	0x9
	.4byte	.LASF61
	.byte	0x8
	.byte	0x2
	.2byte	0x103
	.byte	0x10
	.4byte	0x11b
	.byte	0xa
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x104
	.byte	0x1b
	.4byte	0x11b
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x105
	.byte	0x1b
	.4byte	0x11b
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x106
	.byte	0x3
	.4byte	0xf0
	.byte	0xc
	.4byte	0x25
	.4byte	0x13d
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0xe
	.4byte	.LASF24
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x8
	.byte	0xe
	.byte	0x6
	.4byte	0x15c
	.byte	0xf
	.4byte	.LASF22
	.byte	0
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.byte	0xe
	.4byte	.LASF25
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x8
	.byte	0x13
	.byte	0x6
	.4byte	0x187
	.byte	0xf
	.4byte	.LASF26
	.byte	0
	.byte	0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf
	.4byte	.LASF28
	.byte	0x2
	.byte	0xf
	.4byte	.LASF29
	.byte	0x3
	.byte	0
	.byte	0xe
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x8
	.byte	0x34
	.byte	0x6
	.4byte	0x1ca
	.byte	0xf
	.4byte	.LASF31
	.byte	0
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf
	.4byte	.LASF33
	.byte	0x2
	.byte	0xf
	.4byte	.LASF34
	.byte	0x3
	.byte	0xf
	.4byte	.LASF35
	.byte	0x4
	.byte	0xf
	.4byte	.LASF36
	.byte	0x5
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0xf
	.4byte	.LASF38
	.byte	0x7
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x8
	.byte	0x3f
	.byte	0x6
	.4byte	0x207
	.byte	0xf
	.4byte	.LASF40
	.byte	0
	.byte	0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf
	.4byte	.LASF42
	.byte	0x2
	.byte	0xf
	.4byte	.LASF43
	.byte	0x3
	.byte	0xf
	.4byte	.LASF44
	.byte	0x4
	.byte	0xf
	.4byte	.LASF45
	.byte	0x5
	.byte	0xf
	.4byte	.LASF46
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF47
	.byte	0x8
	.byte	0x49
	.byte	0xf
	.4byte	0x213
	.byte	0x7
	.byte	0x4
	.4byte	0x12e
	.byte	0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	0x24a
	.byte	0xf
	.4byte	.LASF49
	.byte	0
	.byte	0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0xf
	.4byte	.LASF51
	.byte	0x2
	.byte	0xf
	.4byte	.LASF52
	.byte	0x3
	.byte	0xf
	.4byte	.LASF53
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.4byte	0x2b4
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.byte	0x16
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x17
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0x18
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0x11
	.4byte	.LASF57
	.byte	0x1
	.byte	0x19
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x1a
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x1b
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF120
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x7
	.4byte	0x2da
	.byte	0x13
	.string	"cap"
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0x8d
	.byte	0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x1c
	.byte	0x7
	.4byte	0x24a
	.byte	0
	.byte	0x15
	.4byte	.LASF62
	.byte	0x18
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.4byte	0x336
	.byte	0x16
	.4byte	.LASF63
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0x8d
	.byte	0
	.byte	0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0x22
	.byte	0x12
	.4byte	0x2b4
	.byte	0x4
	.byte	0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x23
	.byte	0x12
	.4byte	0x2b4
	.byte	0x8
	.byte	0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0x219
	.byte	0xc
	.byte	0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x25
	.byte	0x17
	.4byte	0xe4
	.byte	0x10
	.byte	0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0x26
	.byte	0x14
	.4byte	0x336
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x121
	.byte	0x15
	.4byte	.LASF69
	.byte	0x24
	.byte	0x1
	.byte	0x29
	.byte	0x8
	.4byte	0x3b2
	.byte	0x16
	.4byte	.LASF70
	.byte	0x1
	.byte	0x2b
	.byte	0x13
	.4byte	0x121
	.byte	0
	.byte	0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2c
	.byte	0x13
	.4byte	0x1ca
	.byte	0x8
	.byte	0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x8d
	.byte	0xc
	.byte	0x16
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2e
	.byte	0xe
	.4byte	0x7a
	.byte	0x10
	.byte	0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0x2f
	.byte	0xe
	.4byte	0x8d
	.byte	0x14
	.byte	0x17
	.string	"ops"
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.4byte	0x207
	.byte	0x18
	.byte	0x16
	.4byte	.LASF75
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.4byte	0x13d
	.byte	0x1c
	.byte	0x17
	.string	"ctx"
	.byte	0x1
	.byte	0x32
	.byte	0xb
	.4byte	0xa7
	.byte	0x20
	.byte	0
	.byte	0x18
	.4byte	.LASF79
	.byte	0x1
	.byte	0x35
	.byte	0x17
	.4byte	0x3c4
	.byte	0x5
	.byte	0x3
	.4byte	gp_pm_env
	.byte	0x7
	.byte	0x4
	.4byte	0x2da
	.byte	0x19
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1c7
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x4fe
	.byte	0x1a
	.4byte	0xd02
	.4byte	.LBB146
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x1c9
	.byte	0x5
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1c
	.4byte	0xd13
	.4byte	.LLST54
	.byte	0x1d
	.4byte	0xd42
	.4byte	.LBB148
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0x69
	.byte	0x9
	.4byte	0x4b1
	.byte	0x1e
	.4byte	0xd4f
	.4byte	.LLST55
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x1c
	.4byte	0xd5b
	.4byte	.LLST56
	.byte	0x1c
	.4byte	0xd67
	.4byte	.LLST57
	.byte	0x1d
	.4byte	0xdd0
	.4byte	.LBB150
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.byte	0x5c
	.byte	0x9
	.4byte	0x46e
	.byte	0x1e
	.4byte	0xdde
	.4byte	.LLST58
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1c
	.4byte	0xdeb
	.4byte	.LLST59
	.byte	0x1c
	.4byte	0xdf8
	.4byte	.LLST60
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL91
	.4byte	0xe8e
	.4byte	0x482
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1f
	.4byte	.LVL95
	.4byte	0xe9b
	.4byte	0x496
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL96
	.4byte	0xea7
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL81
	.4byte	0xeb4
	.4byte	0x4e0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x66
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x22
	.4byte	.LVL87
	.4byte	0xe9b
	.byte	0x22
	.4byte	.LVL88
	.4byte	0xec0
	.byte	0x22
	.4byte	.LVL89
	.4byte	0xe9b
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1c0
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d6
	.byte	0x1a
	.4byte	0xd74
	.4byte	.LBB132
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x1c2
	.byte	0x5
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1c
	.4byte	0xd85
	.4byte	.LLST52
	.byte	0x23
	.4byte	0xdb4
	.4byte	.LBB134
	.4byte	.LBE134-.LBB134
	.byte	0x1
	.byte	0x4a
	.byte	0x9
	.4byte	0x556
	.byte	0x1e
	.4byte	0xdc2
	.4byte	.LLST53
	.byte	0
	.byte	0x1f
	.4byte	.LVL71
	.4byte	0xeb4
	.4byte	0x56d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x1f
	.4byte	.LVL72
	.4byte	0xecd
	.4byte	0x580
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1f
	.4byte	.LVL73
	.4byte	0xed9
	.4byte	0x598
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1f
	.4byte	.LVL74
	.4byte	0xecd
	.4byte	0x5ac
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL75
	.4byte	0xed9
	.4byte	0x5c4
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x21
	.4byte	.LVL76
	.4byte	0xee5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x177
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x660
	.byte	0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x177
	.byte	0x26
	.4byte	0x187
	.4byte	.LLST49
	.byte	0x25
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x179
	.byte	0xe
	.4byte	0x8d
	.4byte	.LLST50
	.byte	0x1a
	.4byte	0xcd5
	.4byte	.LBB118
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x1bb
	.byte	0x5
	.byte	0x1e
	.4byte	0xce6
	.4byte	.LLST51
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x21
	.4byte	.LVL67
	.4byte	0xeb4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x7a
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x146
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x701
	.byte	0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x148
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST46
	.byte	0x27
	.4byte	0xcb7
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.byte	0x1
	.2byte	0x156
	.byte	0xd
	.4byte	0x6ab
	.byte	0x1e
	.4byte	0xcc8
	.4byte	.LLST47
	.byte	0
	.byte	0x27
	.4byte	0xcb7
	.4byte	.LBB114
	.4byte	.LBE114-.LBB114
	.byte	0x1
	.2byte	0x15e
	.byte	0xd
	.4byte	0x6ca
	.byte	0x1e
	.4byte	0xcc8
	.4byte	.LLST48
	.byte	0
	.byte	0x1f
	.4byte	.LVL58
	.4byte	0x9e9
	.4byte	0x6e7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL62
	.4byte	0x9e9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x12e
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0x790
	.byte	0x24
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x12e
	.byte	0x26
	.4byte	0x1ca
	.4byte	.LLST41
	.byte	0x28
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x12e
	.byte	0x36
	.4byte	0x8d
	.byte	0x1
	.byte	0x5b
	.byte	0x28
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x12e
	.byte	0x4f
	.4byte	0x13d
	.byte	0x1
	.byte	0x5c
	.byte	0x25
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x130
	.byte	0x15
	.4byte	0x790
	.4byte	.LLST42
	.byte	0x26
	.string	"tmp"
	.byte	0x1
	.2byte	0x131
	.byte	0x14
	.4byte	0x336
	.4byte	.LLST43
	.byte	0x25
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x132
	.byte	0x14
	.4byte	0x336
	.4byte	.LLST44
	.byte	0x26
	.string	"ret"
	.byte	0x1
	.2byte	0x133
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST45
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x33c
	.byte	0x19
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x115
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x9d4
	.byte	0x24
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x115
	.byte	0x28
	.4byte	0x1ca
	.4byte	.LLST18
	.byte	0x24
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x115
	.byte	0x38
	.4byte	0x8d
	.4byte	.LLST19
	.byte	0x24
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x115
	.byte	0x47
	.4byte	0x8d
	.4byte	.LLST20
	.byte	0x24
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x115
	.byte	0x59
	.4byte	0x7a
	.4byte	.LLST21
	.byte	0x29
	.string	"ops"
	.byte	0x1
	.2byte	0x115
	.byte	0x6e
	.4byte	0x207
	.4byte	.LLST22
	.byte	0x29
	.string	"arg"
	.byte	0x1
	.2byte	0x115
	.byte	0x79
	.4byte	0xa7
	.4byte	.LLST23
	.byte	0x24
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x115
	.byte	0x91
	.4byte	0x13d
	.4byte	.LLST24
	.byte	0x25
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x117
	.byte	0x15
	.4byte	0x790
	.4byte	.LLST25
	.byte	0x2a
	.4byte	.LASF97
	.4byte	0x9e4
	.byte	0x5
	.byte	0x3
	.4byte	__func__.3
	.byte	0x2b
	.4byte	0xc60
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x129
	.byte	0x5
	.4byte	0x97a
	.byte	0x1e
	.4byte	0xc79
	.4byte	.LLST26
	.byte	0x1e
	.4byte	0xc6d
	.4byte	.LLST27
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1c
	.4byte	0xc85
	.4byte	.LLST28
	.byte	0x1c
	.4byte	0xc91
	.4byte	.LLST29
	.byte	0x1c
	.4byte	0xc9d
	.4byte	.LLST30
	.byte	0x23
	.4byte	0xe06
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.byte	0xa1
	.byte	0x9
	.4byte	0x8e3
	.byte	0x1e
	.4byte	0xe21
	.4byte	.LLST31
	.byte	0x1e
	.4byte	0xe14
	.4byte	.LLST32
	.byte	0x2c
	.4byte	0xe58
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.byte	0x2
	.2byte	0x123
	.byte	0x5
	.byte	0x1e
	.4byte	0xe80
	.4byte	.LLST33
	.byte	0x1e
	.4byte	0xe73
	.4byte	.LLST34
	.byte	0x1e
	.4byte	0xe66
	.4byte	.LLST35
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0xe2f
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.byte	0x1
	.byte	0x97
	.byte	0xd
	.4byte	0x937
	.byte	0x1e
	.4byte	0xe4a
	.4byte	.LLST36
	.byte	0x1e
	.4byte	0xe3d
	.4byte	.LLST37
	.byte	0x2c
	.4byte	0xe58
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x2
	.2byte	0x11e
	.byte	0x5
	.byte	0x1e
	.4byte	0xe80
	.4byte	.LLST38
	.byte	0x1e
	.4byte	0xe73
	.4byte	.LLST39
	.byte	0x1e
	.4byte	0xe66
	.4byte	.LLST40
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL30
	.4byte	0xe8e
	.4byte	0x94b
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1f
	.4byte	.LVL33
	.4byte	0xe8e
	.4byte	0x95f
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x21
	.4byte	.LVL36
	.4byte	0xea7
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL22
	.4byte	0xecd
	.4byte	0x98e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x1f
	.4byte	.LVL24
	.4byte	0xeb4
	.4byte	0x9be
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x11e
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x21
	.4byte	.LVL25
	.4byte	0xed9
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0xc8
	.4byte	0x9e4
	.byte	0x2e
	.4byte	0x38
	.byte	0x14
	.byte	0
	.byte	0x6
	.4byte	0x9d4
	.byte	0x2f
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x109
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6a
	.byte	0x24
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x109
	.byte	0x21
	.4byte	0x1ca
	.4byte	.LLST0
	.byte	0x24
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x109
	.byte	0x31
	.4byte	0x8d
	.4byte	.LLST1
	.byte	0x24
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x109
	.byte	0x41
	.4byte	0xb6a
	.4byte	.LLST2
	.byte	0x2b
	.4byte	0xba6
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x10f
	.byte	0x5
	.4byte	0xade
	.byte	0x1e
	.4byte	0xbdb
	.4byte	.LLST3
	.byte	0x1e
	.4byte	0xbcf
	.4byte	.LLST4
	.byte	0x1e
	.4byte	0xbc3
	.4byte	.LLST5
	.byte	0x1e
	.4byte	0xbb7
	.4byte	.LLST6
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x1c
	.4byte	0xbe7
	.4byte	.LLST7
	.byte	0x1c
	.4byte	0xbf3
	.4byte	.LLST8
	.byte	0x1c
	.4byte	0xbff
	.4byte	.LLST9
	.byte	0x1d
	.4byte	0xc0c
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xca
	.byte	0x11
	.4byte	0xac2
	.byte	0x1e
	.4byte	0xc29
	.4byte	.LLST10
	.byte	0x1e
	.4byte	0xc1d
	.4byte	.LLST11
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x30
	.4byte	0xc35
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	0xc42
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.byte	0xce
	.byte	0x13
	.byte	0x1e
	.4byte	0xc53
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xb70
	.4byte	.LBB65
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x110
	.byte	0x5
	.byte	0x1e
	.4byte	0xb8d
	.4byte	.LLST13
	.byte	0x1e
	.4byte	0xb81
	.4byte	.LLST14
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1c
	.4byte	0xb99
	.4byte	.LLST15
	.byte	0x32
	.4byte	0xcaa
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.byte	0xe2
	.byte	0x2d
	.byte	0x23
	.4byte	0xcb7
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.byte	0xe8
	.byte	0x15
	.4byte	0xb3d
	.byte	0x1e
	.4byte	0xcc8
	.4byte	.LLST16
	.byte	0
	.byte	0x32
	.4byte	0xcaa
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.byte	0x1
	.byte	0xee
	.byte	0x2d
	.byte	0x31
	.4byte	0xcb7
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.byte	0xf5
	.byte	0x15
	.byte	0x1e
	.4byte	0xcc8
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8d
	.byte	0x33
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd8
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xba6
	.byte	0x34
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd8
	.byte	0x34
	.4byte	0x1ca
	.byte	0x34
	.4byte	.LASF72
	.byte	0x1
	.byte	0xd8
	.byte	0x44
	.4byte	0x8d
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.byte	0xda
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x33
	.4byte	.LASF90
	.byte	0x1
	.byte	0xbc
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xc0c
	.byte	0x34
	.4byte	.LASF71
	.byte	0x1
	.byte	0xbc
	.byte	0x2d
	.4byte	0x1ca
	.byte	0x34
	.4byte	.LASF84
	.byte	0x1
	.byte	0xbc
	.byte	0x43
	.4byte	0x336
	.byte	0x34
	.4byte	.LASF72
	.byte	0x1
	.byte	0xbc
	.byte	0x53
	.4byte	0x8d
	.byte	0x34
	.4byte	.LASF88
	.byte	0x1
	.byte	0xbc
	.byte	0x63
	.4byte	0xb6a
	.byte	0x36
	.4byte	.LASF83
	.byte	0x1
	.byte	0xbe
	.byte	0x15
	.4byte	0x790
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.byte	0xbf
	.byte	0x9
	.4byte	0x25
	.byte	0x35
	.string	"tmp"
	.byte	0x1
	.byte	0xc0
	.byte	0x14
	.4byte	0x336
	.byte	0
	.byte	0x33
	.4byte	.LASF91
	.byte	0x1
	.byte	0xaf
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xc42
	.byte	0x34
	.4byte	.LASF71
	.byte	0x1
	.byte	0xaf
	.byte	0x33
	.4byte	0x1ca
	.byte	0x34
	.4byte	.LASF72
	.byte	0x1
	.byte	0xaf
	.byte	0x43
	.4byte	0x8d
	.byte	0x35
	.string	"ret"
	.byte	0x1
	.byte	0xb1
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x33
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xc60
	.byte	0x34
	.4byte	.LASF83
	.byte	0x1
	.byte	0xa6
	.byte	0x2d
	.4byte	0x790
	.byte	0
	.byte	0x37
	.4byte	.LASF99
	.byte	0x1
	.byte	0x8d
	.byte	0xd
	.byte	0x1
	.4byte	0xcaa
	.byte	0x34
	.4byte	.LASF93
	.byte	0x1
	.byte	0x8d
	.byte	0x29
	.4byte	0x790
	.byte	0x34
	.4byte	.LASF84
	.byte	0x1
	.byte	0x8d
	.byte	0x3f
	.4byte	0x336
	.byte	0x36
	.4byte	.LASF83
	.byte	0x1
	.byte	0x8f
	.byte	0x15
	.4byte	0x790
	.byte	0x35
	.string	"tmp"
	.byte	0x1
	.byte	0x90
	.byte	0x14
	.4byte	0x336
	.byte	0x36
	.4byte	.LASF94
	.byte	0x1
	.byte	0x91
	.byte	0x14
	.4byte	0x336
	.byte	0
	.byte	0x38
	.4byte	.LASF121
	.byte	0x1
	.byte	0x88
	.byte	0x16
	.4byte	0x219
	.byte	0x1
	.byte	0x33
	.4byte	.LASF95
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xcd5
	.byte	0x34
	.4byte	.LASF66
	.byte	0x1
	.byte	0x81
	.byte	0x27
	.4byte	0x219
	.byte	0
	.byte	0x33
	.4byte	.LASF96
	.byte	0x1
	.byte	0x78
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xd02
	.byte	0x34
	.4byte	.LASF80
	.byte	0x1
	.byte	0x78
	.byte	0x2a
	.4byte	0x8d
	.byte	0x2a
	.4byte	.LASF97
	.4byte	0x9e4
	.byte	0x5
	.byte	0x3
	.4byte	__func__.2
	.byte	0
	.byte	0x33
	.4byte	.LASF98
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xd2d
	.byte	0x35
	.string	"i"
	.byte	0x1
	.byte	0x64
	.byte	0x9
	.4byte	0x25
	.byte	0x2a
	.4byte	.LASF97
	.4byte	0xd3d
	.byte	0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0
	.byte	0x2d
	.4byte	0xc8
	.4byte	0xd3d
	.byte	0x2e
	.4byte	0x38
	.byte	0x9
	.byte	0
	.byte	0x6
	.4byte	0xd2d
	.byte	0x37
	.4byte	.LASF100
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.byte	0x1
	.4byte	0xd74
	.byte	0x34
	.4byte	.LASF84
	.byte	0x1
	.byte	0x55
	.byte	0x2b
	.4byte	0x336
	.byte	0x36
	.4byte	.LASF83
	.byte	0x1
	.byte	0x57
	.byte	0x15
	.4byte	0x790
	.byte	0x35
	.string	"tmp"
	.byte	0x1
	.byte	0x58
	.byte	0x14
	.4byte	0x336
	.byte	0
	.byte	0x33
	.4byte	.LASF101
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xd9f
	.byte	0x35
	.string	"i"
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x25
	.byte	0x2a
	.4byte	.LASF97
	.4byte	0xdaf
	.byte	0x5
	.byte	0x3
	.4byte	__func__.1
	.byte	0
	.byte	0x2d
	.4byte	0xc8
	.4byte	0xdaf
	.byte	0x2e
	.4byte	0x38
	.byte	0xb
	.byte	0
	.byte	0x6
	.4byte	0xd9f
	.byte	0x39
	.4byte	.LASF102
	.byte	0x2
	.2byte	0x134
	.byte	0x14
	.byte	0x3
	.4byte	0xdd0
	.byte	0x3a
	.4byte	.LASF103
	.byte	0x2
	.2byte	0x134
	.byte	0x39
	.4byte	0x336
	.byte	0
	.byte	0x39
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x126
	.byte	0x14
	.byte	0x3
	.4byte	0xe06
	.byte	0x3a
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x126
	.byte	0x33
	.4byte	0x336
	.byte	0x3b
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x128
	.byte	0x14
	.4byte	0x336
	.byte	0x3b
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x129
	.byte	0x14
	.4byte	0x336
	.byte	0
	.byte	0x39
	.4byte	.LASF105
	.byte	0x2
	.2byte	0x121
	.byte	0x14
	.byte	0x3
	.4byte	0xe2f
	.byte	0x3a
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x121
	.byte	0x38
	.4byte	0x336
	.byte	0x3a
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x121
	.byte	0x4d
	.4byte	0x336
	.byte	0
	.byte	0x39
	.4byte	.LASF106
	.byte	0x2
	.2byte	0x11c
	.byte	0x14
	.byte	0x3
	.4byte	0xe58
	.byte	0x3a
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x11c
	.byte	0x33
	.4byte	0x336
	.byte	0x3a
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x11c
	.byte	0x48
	.4byte	0x336
	.byte	0
	.byte	0x39
	.4byte	.LASF107
	.byte	0x2
	.2byte	0x108
	.byte	0x14
	.byte	0x3
	.4byte	0xe8e
	.byte	0x3a
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x108
	.byte	0x35
	.4byte	0x336
	.byte	0x3a
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x108
	.byte	0x4a
	.4byte	0x336
	.byte	0x3a
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x108
	.byte	0x5f
	.4byte	0x336
	.byte	0
	.byte	0x3c
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x58a
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x9
	.byte	0x94
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28a
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0xa
	.byte	0x29
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x392
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
	.byte	0x91
	.byte	0x7
	.byte	0x3d
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x3c
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x586
	.byte	0xf
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
	.byte	0xe
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x5
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
	.byte	0x1
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x1d
	.byte	0
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
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3d
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
.LLST54:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL90
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL90
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL97
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL90
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL97
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE41
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67-1
	.4byte	.LVL67
	.2byte	0xf
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.4byte	.LANCHOR2-1
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL68
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67-1
	.4byte	.LVL67
	.2byte	0xf
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.4byte	.LANCHOR2-1
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE40
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
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
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL53
	.4byte	.LFE39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE39
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL26
	.4byte	.LVL30-1
	.2byte	0x2
	.byte	0x79
	.byte	0x8
	.4byte	.LVL30-1
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x2
	.byte	0x79
	.byte	0x8
	.4byte	.LVL33-1
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x79
	.byte	0x8
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL41
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL42
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL22-1
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x2
	.byte	0x79
	.byte	0x1c
	.4byte	.LVL30-1
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x2
	.byte	0x79
	.byte	0x1c
	.4byte	.LVL33-1
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x79
	.byte	0x1c
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL41
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL23
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL27
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL27
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL29
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	0
	.4byte	0
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	0
	.4byte	0
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	.LBB126
	.4byte	.LBE126
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	0
	.4byte	0
	.4byte	.LBB132
	.4byte	.LBE132
	.4byte	.LBB138
	.4byte	.LBE138
	.4byte	.LBB139
	.4byte	.LBE139
	.4byte	0
	.4byte	0
	.4byte	.LBB146
	.4byte	.LBE146
	.4byte	.LBB161
	.4byte	.LBE161
	.4byte	.LBB162
	.4byte	.LBE162
	.4byte	.LBB163
	.4byte	.LBE163
	.4byte	0
	.4byte	0
	.4byte	.LBB148
	.4byte	.LBE148
	.4byte	.LBB156
	.4byte	.LBE156
	.4byte	.LBB157
	.4byte	.LBE157
	.4byte	0
	.4byte	0
	.4byte	.LBB150
	.4byte	.LBE150
	.4byte	.LBB153
	.4byte	.LBE153
	.4byte	0
	.4byte	0
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF108:
	.string	"xQueueSemaphoreTake"
.LASF59:
	.string	"force_sleep"
.LASF74:
	.string	"cap_bit"
.LASF95:
	.string	"pm_set_state"
.LASF80:
	.string	"capacity"
.LASF111:
	.string	"__assert_func"
.LASF93:
	.string	"pnode"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"next"
.LASF64:
	.string	"wlan_capacity"
.LASF89:
	.string	"pm_internal_process_event"
.LASF112:
	.string	"vQueueDelete"
.LASF65:
	.string	"bt_capacity"
.LASF106:
	.string	"utils_dlist_add"
.LASF31:
	.string	"PM_MODE_STA_NONE"
.LASF116:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF63:
	.string	"level"
.LASF101:
	.string	"pm_env_init"
.LASF34:
	.string	"PM_MODE_STA_DOZE"
.LASF19:
	.string	"prev"
.LASF67:
	.string	"pm_mux"
.LASF105:
	.string	"utils_dlist_add_tail"
.LASF107:
	.string	"__utils_dlist_add"
.LASF103:
	.string	"list"
.LASF35:
	.string	"PM_MODE_STA_COEX"
.LASF81:
	.string	"bl_pm_state_run"
.LASF11:
	.string	"uint32_t"
.LASF71:
	.string	"event"
.LASF119:
	.string	"QueueDefinition"
.LASF79:
	.string	"gp_pm_env"
.LASF44:
	.string	"WLAN_PM_EVENT_SEND_NULLDATA"
.LASF85:
	.string	"bl_pm_event_register"
.LASF13:
	.string	"long long unsigned int"
.LASF98:
	.string	"pm_deinit"
.LASF37:
	.string	"PM_MODE_AP_IDLE"
.LASF52:
	.string	"PM_STATE_STOPPED"
.LASF113:
	.string	"pvPortMalloc"
.LASF75:
	.string	"enable"
.LASF23:
	.string	"PM_ENABLE"
.LASF58:
	.string	"pti_pta_config"
.LASF3:
	.string	"size_t"
.LASF55:
	.string	"mac_idle"
.LASF45:
	.string	"BLE_PM_EVENT_CONTROL"
.LASF94:
	.string	"pre_save"
.LASF38:
	.string	"PM_MODE_MAX"
.LASF86:
	.string	"p_node"
.LASF53:
	.string	"PM_STATE_RUNNING"
.LASF104:
	.string	"utils_dlist_del"
.LASF72:
	.string	"code"
.LASF110:
	.string	"xQueueGenericSend"
.LASF16:
	.string	"char"
.LASF17:
	.string	"QueueHandle_t"
.LASF68:
	.string	"pm_list"
.LASF7:
	.string	"uint8_t"
.LASF39:
	.string	"PM_EVEMT"
.LASF115:
	.string	"xQueueCreateMutex"
.LASF25:
	.string	"WLAN_CODE_SLEEP_CONTROL"
.LASF60:
	.string	"bits"
.LASF102:
	.string	"INIT_UTILS_DLIST_HEAD"
.LASF88:
	.string	"retval"
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"BaseType_t"
.LASF62:
	.string	"pm_env"
.LASF100:
	.string	"pm_node_delete"
.LASF91:
	.string	"pm_state_exec_func_check"
.LASF43:
	.string	"WLAN_PM_EVENT_BEACON_LOSS"
.LASF114:
	.string	"memset"
.LASF77:
	.string	"bl_pm_init"
.LASF27:
	.string	"WLAN_CODE_PM_NOTIFY_STOP"
.LASF41:
	.string	"WLAN_PM_EVENT_ENTER_SLEEP"
.LASF121:
	.string	"pm_get_state"
.LASF46:
	.string	"PM_EVENT_MAX"
.LASF24:
	.string	"PM_EVENT_ABLE"
.LASF96:
	.string	"pm_set_wlan_capacity"
.LASF15:
	.string	"TickType_t"
.LASF54:
	.string	"uapsd_mode"
.LASF76:
	.string	"bl_pm_deinit"
.LASF92:
	.string	"pm_node_ops_exec"
.LASF99:
	.string	"pm_node_add"
.LASF9:
	.string	"uint16_t"
.LASF48:
	.string	"PM_STATE"
.LASF26:
	.string	"WLAN_CODE_PM_NOTIFY_START"
.LASF2:
	.string	"short int"
.LASF47:
	.string	"bl_pm_cb_t"
.LASF5:
	.string	"long int"
.LASF18:
	.string	"SemaphoreHandle_t"
.LASF73:
	.string	"priority"
.LASF82:
	.string	"bl_pm_event_switch"
.LASF83:
	.string	"node"
.LASF56:
	.string	"ma_doze"
.LASF32:
	.string	"PM_MODE_STA_IDLE"
.LASF22:
	.string	"PM_DISABLE"
.LASF109:
	.string	"vPortFree"
.LASF117:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.c"
.LASF87:
	.string	"pm_post_event"
.LASF40:
	.string	"WLAN_PM_EVENT_CONTROL"
.LASF90:
	.string	"pm_pmlist_traverse"
.LASF120:
	.string	"ps_cap"
.LASF12:
	.string	"long unsigned int"
.LASF84:
	.string	"queue"
.LASF4:
	.string	"int32_t"
.LASF78:
	.string	"bl_pm_capacity_set"
.LASF8:
	.string	"unsigned char"
.LASF51:
	.string	"PM_STATE_START"
.LASF57:
	.string	"rf_onoff"
.LASF28:
	.string	"WLAN_CODE_PM_START"
.LASF66:
	.string	"state"
.LASF50:
	.string	"PM_STATE_STOP"
.LASF33:
	.string	"PM_MODE_STA_MESH"
.LASF1:
	.string	"signed char"
.LASF29:
	.string	"WLAN_CODE_PM_STOP"
.LASF10:
	.string	"short unsigned int"
.LASF97:
	.string	"__func__"
.LASF36:
	.string	"PM_MODE_STA_DOWN"
.LASF42:
	.string	"WLAN_PM_EVENT_EXIT_SLEEP"
.LASF70:
	.string	"dlist_item"
.LASF118:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF30:
	.string	"PM_LEVEL"
.LASF49:
	.string	"PM_STATE_INITED"
.LASF69:
	.string	"pm_node"
.LASF61:
	.string	"utils_dlist_s"
.LASF21:
	.string	"utils_dlist_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
