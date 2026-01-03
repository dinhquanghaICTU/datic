	.file	"atomic_c.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.atomic_cas,"ax",@progbits
	.align	1
	.globl	atomic_cas
	.type	atomic_cas, @function
atomic_cas:
.LFB26:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/atomic_c.c"
	.loc 1 48 1
	.cfi_startproc
.LVL0:
	.loc 1 49 2
	.loc 1 50 2
	.loc 1 52 2
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
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
	.loc 1 48 1
	mv	s1,a0
	mv	s3,a1
	mv	s2,a2
	.loc 1 52 8
	call	irq_lock
.LVL1:
	.loc 1 54 2 is_stmt 1
	.loc 1 54 5 is_stmt 0
	lw	a5,0(s1)
	bne	a5,s3,.L3
	.loc 1 55 3 is_stmt 1
	.loc 1 55 11 is_stmt 0
	sw	s2,0(s1)
	.loc 1 56 3 is_stmt 1
.LVL2:
	.loc 1 56 7 is_stmt 0
	li	s1,1
.LVL3:
.L2:
	.loc 1 59 2 is_stmt 1
	call	irq_unlock
.LVL4:
	.loc 1 61 2
	.loc 1 62 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s2,16(sp)
	.cfi_restore 18
.LVL5:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL6:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL7:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L3:
	.cfi_restore_state
	.loc 1 50 6
	li	s1,0
.LVL9:
	j	.L2
	.cfi_endproc
.LFE26:
	.size	atomic_cas, .-atomic_cas
	.section	.text.atomic_add,"ax",@progbits
	.align	1
	.globl	atomic_add
	.type	atomic_add, @function
atomic_add:
.LFB27:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 79 2
	.loc 1 80 2
	.loc 1 82 2
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 78 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 82 8
	call	irq_lock
.LVL11:
	.loc 1 84 2 is_stmt 1
	.loc 1 84 6 is_stmt 0
	lw	s3,0(s2)
.LVL12:
	.loc 1 85 2 is_stmt 1
	.loc 1 85 10 is_stmt 0
	add	s1,s3,s1
.LVL13:
	sw	s1,0(s2)
	.loc 1 87 2 is_stmt 1
	call	irq_unlock
.LVL14:
	.loc 1 89 2
	.loc 1 90 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL15:
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
.LVL16:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	atomic_add, .-atomic_add
	.section	.text.atomic_sub,"ax",@progbits
	.align	1
	.globl	atomic_sub
	.type	atomic_sub, @function
atomic_sub:
.LFB28:
	.loc 1 106 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 107 2
	.loc 1 108 2
	.loc 1 110 2
	.loc 1 106 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 106 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 110 8
	call	irq_lock
.LVL18:
	.loc 1 112 2 is_stmt 1
	.loc 1 112 6 is_stmt 0
	lw	s3,0(s2)
.LVL19:
	.loc 1 113 2 is_stmt 1
	.loc 1 113 10 is_stmt 0
	sub	s1,s3,s1
.LVL20:
	sw	s1,0(s2)
	.loc 1 115 2 is_stmt 1
	call	irq_unlock
.LVL21:
	.loc 1 117 2
	.loc 1 118 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL22:
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
.LVL23:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	atomic_sub, .-atomic_sub
	.section	.text.atomic_inc,"ax",@progbits
	.align	1
	.globl	atomic_inc
	.type	atomic_inc, @function
atomic_inc:
.LFB29:
	.loc 1 132 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 133 2
	.loc 1 134 2
	.loc 1 136 2
	.loc 1 132 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 132 1
	mv	s1,a0
	.loc 1 136 8
	call	irq_lock
.LVL25:
	.loc 1 138 2 is_stmt 1
	.loc 1 138 6 is_stmt 0
	lw	s2,0(s1)
.LVL26:
	.loc 1 139 2 is_stmt 1
	.loc 1 139 11 is_stmt 0
	addi	a5,s2,1
	sw	a5,0(s1)
	.loc 1 141 2 is_stmt 1
	call	irq_unlock
.LVL27:
	.loc 1 143 2
	.loc 1 144 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL28:
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
.LVL29:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	atomic_inc, .-atomic_inc
	.section	.text.atomic_dec,"ax",@progbits
	.align	1
	.globl	atomic_dec
	.type	atomic_dec, @function
atomic_dec:
.LFB30:
	.loc 1 158 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 159 2
	.loc 1 160 2
	.loc 1 162 2
	.loc 1 158 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 158 1
	mv	s1,a0
	.loc 1 162 8
	call	irq_lock
.LVL31:
	.loc 1 164 2 is_stmt 1
	.loc 1 164 6 is_stmt 0
	lw	s2,0(s1)
.LVL32:
	.loc 1 165 2 is_stmt 1
	.loc 1 165 11 is_stmt 0
	addi	a5,s2,-1
	sw	a5,0(s1)
	.loc 1 167 2 is_stmt 1
	call	irq_unlock
.LVL33:
	.loc 1 169 2
	.loc 1 170 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL34:
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
.LVL35:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	atomic_dec, .-atomic_dec
	.section	.text.atomic_get,"ax",@progbits
	.align	1
	.globl	atomic_get
	.type	atomic_get, @function
atomic_get:
.LFB31:
	.loc 1 185 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 186 2
	.loc 1 185 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 187 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	a0,0(a0)
.LVL37:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	atomic_get, .-atomic_get
	.section	.text.atomic_set,"ax",@progbits
	.align	1
	.globl	atomic_set
	.type	atomic_set, @function
atomic_set:
.LFB32:
	.loc 1 202 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 203 2
	.loc 1 204 2
	.loc 1 206 2
	.loc 1 202 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 202 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 206 8
	call	irq_lock
.LVL39:
	.loc 1 208 2 is_stmt 1
	.loc 1 208 6 is_stmt 0
	lw	s3,0(s1)
.LVL40:
	.loc 1 209 2 is_stmt 1
	.loc 1 209 10 is_stmt 0
	sw	s2,0(s1)
	.loc 1 211 2 is_stmt 1
	call	irq_unlock
.LVL41:
	.loc 1 213 2
	.loc 1 214 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL42:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL43:
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
.LVL44:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	atomic_set, .-atomic_set
	.section	.text.atomic_clear,"ax",@progbits
	.align	1
	.globl	atomic_clear
	.type	atomic_clear, @function
atomic_clear:
.LFB33:
	.loc 1 229 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 230 2
	.loc 1 231 2
	.loc 1 233 2
	.loc 1 229 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 229 1
	mv	s1,a0
	.loc 1 233 8
	call	irq_lock
.LVL46:
	.loc 1 235 2 is_stmt 1
	.loc 1 235 6 is_stmt 0
	lw	s2,0(s1)
.LVL47:
	.loc 1 236 2 is_stmt 1
	.loc 1 236 10 is_stmt 0
	sw	zero,0(s1)
	.loc 1 238 2 is_stmt 1
	call	irq_unlock
.LVL48:
	.loc 1 240 2
	.loc 1 241 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL49:
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
.LVL50:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	atomic_clear, .-atomic_clear
	.section	.text.atomic_or,"ax",@progbits
	.align	1
	.globl	atomic_or
	.type	atomic_or, @function
atomic_or:
.LFB34:
	.loc 1 257 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 258 2
	.loc 1 259 2
	.loc 1 261 2
	.loc 1 257 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 257 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 261 8
	call	irq_lock
.LVL52:
	.loc 1 263 2 is_stmt 1
	.loc 1 263 6 is_stmt 0
	lw	s3,0(s2)
.LVL53:
	.loc 1 264 2 is_stmt 1
	.loc 1 264 10 is_stmt 0
	or	s1,s3,s1
.LVL54:
	sw	s1,0(s2)
	.loc 1 266 2 is_stmt 1
	call	irq_unlock
.LVL55:
	.loc 1 268 2
	.loc 1 269 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL56:
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
.LVL57:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	atomic_or, .-atomic_or
	.section	.text.atomic_xor,"ax",@progbits
	.align	1
	.globl	atomic_xor
	.type	atomic_xor, @function
atomic_xor:
.LFB35:
	.loc 1 285 1 is_stmt 1
	.cfi_startproc
.LVL58:
	.loc 1 286 2
	.loc 1 287 2
	.loc 1 289 2
	.loc 1 285 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 285 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 289 8
	call	irq_lock
.LVL59:
	.loc 1 291 2 is_stmt 1
	.loc 1 291 6 is_stmt 0
	lw	s3,0(s2)
.LVL60:
	.loc 1 292 2 is_stmt 1
	.loc 1 292 10 is_stmt 0
	xor	s1,s3,s1
.LVL61:
	sw	s1,0(s2)
	.loc 1 294 2 is_stmt 1
	call	irq_unlock
.LVL62:
	.loc 1 296 2
	.loc 1 297 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL63:
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
.LVL64:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	atomic_xor, .-atomic_xor
	.section	.text.atomic_and,"ax",@progbits
	.align	1
	.globl	atomic_and
	.type	atomic_and, @function
atomic_and:
.LFB36:
	.loc 1 313 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 314 2
	.loc 1 315 2
	.loc 1 317 2
	.loc 1 313 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 313 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 317 8
	call	irq_lock
.LVL66:
	.loc 1 319 2 is_stmt 1
	.loc 1 319 6 is_stmt 0
	lw	s3,0(s2)
.LVL67:
	.loc 1 320 2 is_stmt 1
	.loc 1 320 10 is_stmt 0
	and	s1,s3,s1
.LVL68:
	sw	s1,0(s2)
	.loc 1 322 2 is_stmt 1
	call	irq_unlock
.LVL69:
	.loc 1 324 2
	.loc 1 325 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL70:
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
.LVL71:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	atomic_and, .-atomic_and
	.section	.text.atomic_nand,"ax",@progbits
	.align	1
	.globl	atomic_nand
	.type	atomic_nand, @function
atomic_nand:
.LFB37:
	.loc 1 341 1 is_stmt 1
	.cfi_startproc
.LVL72:
	.loc 1 342 2
	.loc 1 343 2
	.loc 1 345 2
	.loc 1 341 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 341 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 345 8
	call	irq_lock
.LVL73:
	.loc 1 347 2 is_stmt 1
	.loc 1 347 6 is_stmt 0
	lw	s3,0(s2)
.LVL74:
	.loc 1 348 2 is_stmt 1
	.loc 1 348 22 is_stmt 0
	and	s1,s3,s1
.LVL75:
	.loc 1 348 12
	not	s1,s1
	.loc 1 348 10
	sw	s1,0(s2)
	.loc 1 350 2 is_stmt 1
	call	irq_unlock
.LVL76:
	.loc 1 352 2
	.loc 1 353 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL77:
	mv	a0,s3
	lw	s3,12(sp)
	.cfi_restore 19
.LVL78:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	atomic_nand, .-atomic_nand
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x580
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x12
	.byte	0xd
	.4byte	0x36
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x13
	.byte	0x12
	.4byte	0x25
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x154
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x101
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x154
	.byte	0x24
	.4byte	0x101
	.4byte	.LLST39
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x154
	.byte	0x39
	.4byte	0x3d
	.4byte	.LLST40
	.byte	0x8
	.string	"key"
	.byte	0x1
	.2byte	0x156
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST41
	.byte	0x8
	.string	"ret"
	.byte	0x1
	.2byte	0x157
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST42
	.byte	0x9
	.4byte	.LVL73
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL76
	.4byte	0x576
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x138
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x179
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x138
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST35
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x138
	.byte	0x38
	.4byte	0x3d
	.4byte	.LLST36
	.byte	0x8
	.string	"key"
	.byte	0x1
	.2byte	0x13a
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST37
	.byte	0x8
	.string	"ret"
	.byte	0x1
	.2byte	0x13b
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST38
	.byte	0x9
	.4byte	.LVL66
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL69
	.4byte	0x576
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x11c
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x1eb
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x11c
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST31
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x11c
	.byte	0x38
	.4byte	0x3d
	.4byte	.LLST32
	.byte	0x8
	.string	"key"
	.byte	0x1
	.2byte	0x11e
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST33
	.byte	0x8
	.string	"ret"
	.byte	0x1
	.2byte	0x11f
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST34
	.byte	0x9
	.4byte	.LVL59
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL62
	.4byte	0x576
	.byte	0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x100
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x25d
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x100
	.byte	0x22
	.4byte	0x101
	.4byte	.LLST27
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x100
	.byte	0x37
	.4byte	0x3d
	.4byte	.LLST28
	.byte	0x8
	.string	"key"
	.byte	0x1
	.2byte	0x102
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST29
	.byte	0x8
	.string	"ret"
	.byte	0x1
	.2byte	0x103
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST30
	.byte	0x9
	.4byte	.LVL52
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL55
	.4byte	0x576
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe4
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ba
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0xe4
	.byte	0x25
	.4byte	0x101
	.4byte	.LLST24
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0xe6
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST25
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0xe7
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST26
	.byte	0x9
	.4byte	.LVL46
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL48
	.4byte	0x576
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0xc9
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x327
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0xc9
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST20
	.byte	0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0xc9
	.byte	0x38
	.4byte	0x3d
	.4byte	.LLST21
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0xcb
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST22
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0xcc
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST23
	.byte	0x9
	.4byte	.LVL39
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL41
	.4byte	0x576
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x352
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0xb8
	.byte	0x29
	.4byte	0x352
	.4byte	.LLST19
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x31
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9d
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b5
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x9d
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST16
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0x9f
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST17
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0xa0
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST18
	.byte	0x9
	.4byte	.LVL31
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL33
	.4byte	0x576
	.byte	0
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x83
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x412
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x83
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST13
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0x85
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST14
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x86
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST15
	.byte	0x9
	.4byte	.LVL25
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL27
	.4byte	0x576
	.byte	0
	.byte	0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x47f
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x69
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST9
	.byte	0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0x69
	.byte	0x38
	.4byte	0x3d
	.4byte	.LLST10
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0x6b
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST11
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x6c
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST12
	.byte	0x9
	.4byte	.LVL18
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL21
	.4byte	0x576
	.byte	0
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4d
	.byte	0xe
	.4byte	0x3d
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ec
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x4d
	.byte	0x23
	.4byte	0x101
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4d
	.byte	0x38
	.4byte	0x3d
	.4byte	.LLST6
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0x4f
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST7
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x50
	.byte	0xf
	.4byte	0x3d
	.4byte	.LLST8
	.byte	0x9
	.4byte	.LVL11
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL14
	.4byte	0x576
	.byte	0
	.byte	0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.4byte	0x36
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x569
	.byte	0xc
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2e
	.byte	0x1a
	.4byte	0x101
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2e
	.byte	0x2f
	.4byte	0x3d
	.4byte	.LLST1
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2f
	.byte	0x13
	.4byte	0x3d
	.4byte	.LLST2
	.byte	0xd
	.string	"key"
	.byte	0x1
	.byte	0x31
	.byte	0xf
	.4byte	0x81
	.4byte	.LLST3
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	0x36
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LVL1
	.4byte	0x569
	.byte	0x9
	.4byte	.LVL4
	.4byte	0x576
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x101
	.byte	0xe
	.byte	0xe
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x106
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
	.byte	0x3
	.byte	0x26
	.byte	0
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
.LLST39:
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73-1
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL77
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73-1
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL73
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL78
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL70
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66-1
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL66
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL71
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59-1
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL63
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL59-1
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL59
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL64
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL56
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL52
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL57
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL50
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL43
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL39
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL44
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL29
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL22
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL23
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL16
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB32
	.4byte	.LFE32
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF28:
	.string	"irq_lock"
.LASF16:
	.string	"atomic_xor"
.LASF1:
	.string	"atomic_val_t"
.LASF27:
	.string	"new_value"
.LASF13:
	.string	"value"
.LASF19:
	.string	"atomic_set"
.LASF26:
	.string	"old_value"
.LASF14:
	.string	"atomic_nand"
.LASF24:
	.string	"atomic_add"
.LASF22:
	.string	"atomic_inc"
.LASF12:
	.string	"target"
.LASF6:
	.string	"unsigned char"
.LASF23:
	.string	"atomic_sub"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF29:
	.string	"irq_unlock"
.LASF18:
	.string	"atomic_clear"
.LASF25:
	.string	"atomic_cas"
.LASF15:
	.string	"atomic_and"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF32:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"atomic_t"
.LASF17:
	.string	"atomic_or"
.LASF21:
	.string	"atomic_dec"
.LASF31:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/atomic_c.c"
.LASF3:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF20:
	.string	"atomic_get"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
