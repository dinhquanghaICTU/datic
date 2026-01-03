	.file	"hosal_rtc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.clock_daysbeforemonth,"ax",@progbits
	.align	1
	.type	clock_daysbeforemonth, @function
clock_daysbeforemonth:
.LFB9:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_rtc.c"
	.loc 1 54 1
	.cfi_startproc
.LVL0:
	.loc 1 55 5
	.loc 1 54 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 55 42
	lui	a5,%hi(.LANCHOR0)
	.loc 1 54 1
	sw	s0,12(sp)
	.loc 1 55 42
	slli	a3,a0,1
	.cfi_offset 8, -4
	.loc 1 54 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 55 42
	addi	a5,a5,%lo(.LANCHOR0)
	add	a5,a5,a3
	.loc 1 54 1
	.loc 1 54 1
	mv	a4,a0
	.loc 1 55 9
	lhu	a0,0(a5)
.LVL1:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 8 is_stmt 0
	li	a5,1
	ble	a4,a5,.L1
	.loc 1 57 20 discriminator 1
	beq	a1,zero,.L1
	.loc 1 58 9 is_stmt 1
	.loc 1 58 15 is_stmt 0
	addi	a0,a0,1
.LVL2:
	.loc 1 61 5 is_stmt 1
.L1:
	.loc 1 62 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	clock_daysbeforemonth, .-clock_daysbeforemonth
	.section	.text.clock_isleapyear,"ax",@progbits
	.align	1
	.type	clock_isleapyear, @function
clock_isleapyear:
.LFB8:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 50 5
	.loc 1 50 69 is_stmt 0
	li	a4,400
	rem	a4,a0,a4
	.loc 1 49 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 50 69
	beq	a4,zero,.L9
	mv	a5,a0
.LVL4:
.LBB4:
.LBB5:
	.loc 1 50 34
	li	a0,100
.LVL5:
	rem	a0,a5,a0
	.loc 1 50 69
	beq	a0,zero,.L7
	.loc 1 50 55
	andi	a5,a5,3
.LVL6:
	.loc 1 50 64
	seqz	a0,a5
.LVL7:
.L7:
.LBE5:
.LBE4:
	.loc 1 51 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L9:
	.cfi_restore_state
	.loc 1 50 69
	li	a0,1
.LVL9:
	j	.L7
	.cfi_endproc
.LFE8:
	.size	clock_isleapyear, .-clock_isleapyear
	.section	.text.__check_tm_ok,"ax",@progbits
	.align	1
	.type	__check_tm_ok, @function
__check_tm_ok:
.LFB13:
	.loc 1 185 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 187 5
	.loc 1 185 1 is_stmt 0
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
	.loc 1 185 1
	mv	s1,a0
	.loc 1 187 16
	lw	a0,20(a0)
.LVL11:
	.loc 1 187 8
	li	a5,129
	.loc 1 187 31
	addi	a4,a0,-70
	.loc 1 187 8
	bgtu	a4,a5,.L17
	.loc 1 191 5 is_stmt 1
.LVL12:
	.loc 1 193 5
	.loc 1 193 12 is_stmt 0
	addi	a0,a0,1900
	call	clock_isleapyear
.LVL13:
	.loc 1 195 8
	lw	a3,0(s1)
	li	a4,59
	.loc 1 193 12
	mv	a5,a0
.LVL14:
	.loc 1 195 5 is_stmt 1
	.loc 1 223 12 is_stmt 0
	li	a0,-1
.LVL15:
	.loc 1 195 8
	bgtu	a3,a4,.L14
	.loc 1 199 5 is_stmt 1
	.loc 1 199 8 is_stmt 0
	lw	a3,4(s1)
	bgtu	a3,a4,.L14
	.loc 1 203 5 is_stmt 1
	.loc 1 203 8 is_stmt 0
	lw	a3,8(s1)
	li	a4,23
	bgtu	a3,a4,.L14
	.loc 1 207 5 is_stmt 1
	.loc 1 207 16 is_stmt 0
	lw	a3,16(s1)
	.loc 1 207 8
	li	a4,11
	bgtu	a3,a4,.L14
	.loc 1 211 5 is_stmt 1
	.loc 1 212 20 is_stmt 0
	lw	a4,12(s1)
	.loc 1 211 8
	beq	a5,zero,.L16
	.loc 1 212 9 is_stmt 1
	.loc 1 212 12 is_stmt 0
	ble	a4,zero,.L14
	.loc 1 212 65 discriminator 1
	lui	a5,%hi(.LANCHOR1)
.LVL16:
	addi	a5,a5,%lo(.LANCHOR1)
.L25:
	.loc 1 216 67 discriminator 1
	add	a5,a5,a3
	lbu	a0,0(a5)
	.loc 1 216 34 discriminator 1
	slt	a0,a0,a4
	neg	a0,a0
.L14:
	.loc 1 224 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL17:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L16:
	.cfi_restore_state
	.loc 1 216 9 is_stmt 1
	.loc 1 223 12 is_stmt 0
	li	a0,-1
	.loc 1 216 12
	ble	a4,zero,.L14
	.loc 1 216 67 discriminator 1
	lui	a5,%hi(.LANCHOR2)
.LVL19:
	addi	a5,a5,%lo(.LANCHOR2)
	j	.L25
.L17:
	.loc 1 223 12
	li	a0,-1
	j	.L14
	.cfi_endproc
.LFE13:
	.size	__check_tm_ok, .-__check_tm_ok
	.section	.text.__mktime,"ax",@progbits
	.align	1
	.type	__mktime, @function
__mktime:
.LFB18:
	.loc 1 320 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 321 5
	.loc 1 322 5
	.loc 1 328 5
	.loc 1 320 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 320 1
	mv	s2,a0
	.loc 1 328 11
	call	__check_tm_ok
.LVL21:
	.loc 1 329 5 is_stmt 1
	.loc 1 329 8 is_stmt 0
	blt	a0,zero,.L28
	.loc 1 333 5 is_stmt 1
	.loc 1 333 34 is_stmt 0
	lw	a0,20(s2)
.LVL22:
.LBB8:
.LBB9:
	.loc 1 254 5 is_stmt 1
	.loc 1 258 5
	.loc 1 258 26 is_stmt 0
	li	a4,365
	.loc 1 258 18
	addi	s1,a0,-70
	.loc 1 258 26
	mul	s1,s1,a4
	.loc 1 262 19
	addi	a4,a0,-69
	.loc 1 262 27
	srai	a5,a4,2
	srai	s3,a4,31
	.loc 1 266 50
	addi	a0,a0,1900
.LVL23:
	.loc 1 258 10
	srai	a3,s1,31
.LVL24:
	.loc 1 262 5 is_stmt 1
	.loc 1 262 10 is_stmt 0
	add	s1,a5,s1
.LVL25:
	sltu	a5,s1,a5
	add	s3,s3,a3
	add	s3,a5,s3
.LVL26:
	.loc 1 266 5 is_stmt 1
	.loc 1 266 50 is_stmt 0
	call	clock_isleapyear
.LVL27:
	.loc 1 266 21
	andi	a1,a0,0xff
	lw	a0,16(s2)
.LVL28:
	call	clock_daysbeforemonth
.LVL29:
	.loc 1 266 13
	srai	a5,a0,31
	.loc 1 266 10
	add	s3,a5,s3
.LVL30:
	.loc 1 270 17
	lw	a5,12(s2)
.LVL31:
	.loc 1 266 10
	add	a4,a0,s1
	sltu	a0,a4,a0
	.loc 1 270 17
	addi	a5,a5,-1
.LVL32:
	srai	a3,a5,31
	.loc 1 270 10
	add	a4,a5,a4
	.loc 1 266 10
	add	a0,a0,s3
	.loc 1 270 5 is_stmt 1
	.loc 1 274 5
.LVL33:
.LBE9:
.LBE8:
	.loc 1 337 5
.LBB12:
.LBB10:
	.loc 1 270 10 is_stmt 0
	add	a0,a3,a0
	sltu	a5,a4,a5
.LBE10:
.LBE12:
	.loc 1 337 17
	li	a2,24
.LBB13:
.LBB11:
	.loc 1 270 10
	add	a5,a5,a0
.LBE11:
.LBE13:
	.loc 1 337 17
	mul	a3,a2,a4
	.loc 1 337 65
	lw	a0,0(s2)
	.loc 1 337 17
	mulhu	a4,a2,a4
	mul	a5,a2,a5
	.loc 1 337 26
	lw	a2,8(s2)
	.loc 1 337 17
	add	a5,a5,a4
	.loc 1 337 26
	srai	a4,a2,31
	.loc 1 337 22
	add	a2,a3,a2
	sltu	a1,a2,a3
	add	a5,a5,a4
	.loc 1 337 37
	li	a3,60
	.loc 1 337 22
	add	a1,a1,a5
	.loc 1 337 37
	mul	a4,a3,a2
	mul	a1,a3,a1
	mulhu	a2,a3,a2
	add	a1,a1,a2
	.loc 1 337 46
	lw	a2,4(s2)
	srai	a5,a2,31
	.loc 1 337 42
	add	a2,a4,a2
	sltu	a4,a2,a4
	add	a1,a1,a5
	add	a1,a4,a1
	.loc 1 337 56
	mul	a5,a3,a2
	.loc 1 337 65
	srai	a4,a0,31
	.loc 1 337 56
	mul	a1,a3,a1
	.loc 1 337 9
	add	a0,a5,a0
	sltu	a5,a0,a5
	.loc 1 337 56
	mulhu	a3,a3,a2
	add	a1,a1,a3
	.loc 1 337 9
	add	a1,a1,a4
	add	a1,a5,a1
.LVL34:
	.loc 1 339 5 is_stmt 1
.L26:
	.loc 1 340 1 is_stmt 0
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
.LVL35:
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL36:
.L28:
	.cfi_restore_state
	.loc 1 330 16
	li	a0,-1
.LVL37:
	li	a1,-1
	j	.L26
	.cfi_endproc
.LFE18:
	.size	__mktime, .-__mktime
	.globl	__divdi3
	.section	.text.__gmtime_r.isra.0,"ax",@progbits
	.align	1
	.type	__gmtime_r.isra.0, @function
__gmtime_r.isra.0:
.LFB26:
	.loc 1 277 19 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 279 5
	.loc 1 280 5
	.loc 1 281 5
	.loc 1 282 5
	.loc 1 283 5
	.loc 1 284 5
	.loc 1 285 5
	.loc 1 286 5
	.loc 1 290 5
	.loc 1 277 19 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 290 11
	lw	s9,4(a0)
	lw	s10,0(a0)
.LVL39:
	.loc 1 294 5 is_stmt 1
	.loc 1 294 9 is_stmt 0
	li	a2,86016
	addi	a2,a2,384
	li	a3,0
	.loc 1 277 19
	mv	s3,a1
	.loc 1 294 9
	mv	a0,s10
.LVL40:
	mv	a1,s9
.LVL41:
	.loc 1 295 57
	li	s2,-86016
	.loc 1 294 9
	call	__divdi3
.LVL42:
	.loc 1 295 57
	addi	s2,s2,-384
	.loc 1 294 9
	mv	s8,a0
	.loc 1 295 57
	mul	a5,s2,a1
	.loc 1 294 9
	mv	s7,a1
.LVL43:
	.loc 1 295 5 is_stmt 1
	.loc 1 297 18 is_stmt 0
	li	a2,4096
	addi	a2,a2,-496
	li	a3,0
	.loc 1 301 27
	li	s5,-60
	.loc 1 295 57
	mul	a1,s2,a0
.LVL44:
	sub	a5,a5,a0
	mulhu	s2,s8,s2
	.loc 1 295 11
	add	s1,a1,s10
	sltu	a1,s1,a1
	.loc 1 297 18
	mv	a0,s1
.LVL45:
	.loc 1 295 57
	add	a5,a5,s2
	.loc 1 295 11
	add	a5,a5,s9
	add	s2,a1,a5
.LVL46:
	.loc 1 297 5 is_stmt 1
	.loc 1 297 18 is_stmt 0
	mv	a1,s2
	call	__divdi3
.LVL47:
	.loc 1 298 42
	li	a5,-4096
	addi	a5,a5,496
	mul	a1,a0,a5
	.loc 1 297 18
	mv	s4,a0
.LVL48:
	.loc 1 298 5 is_stmt 1
	.loc 1 300 17 is_stmt 0
	li	a2,60
	li	a3,0
	.loc 1 298 42
	mulh	a5,s4,a5
	.loc 1 298 11
	add	s1,a1,s1
.LVL49:
	sltu	a1,s1,a1
	.loc 1 300 17
	mv	a0,s1
.LVL50:
	.loc 1 298 11
	add	a5,a5,s2
.LVL51:
	.loc 1 300 5 is_stmt 1
	.loc 1 300 17 is_stmt 0
	add	a1,a1,a5
.LVL52:
	call	__divdi3
.LVL53:
	.loc 1 301 27
	mul	s5,a0,s5
.LBB16:
.LBB17:
	.loc 1 88 22
	li	a2,126230528
.LBE17:
.LBE16:
	.loc 1 300 17
	mv	s6,a0
.LVL54:
	.loc 1 301 5 is_stmt 1
	.loc 1 303 5
.LBB23:
.LBB18:
	.loc 1 88 22 is_stmt 0
	addi	a2,a2,-128
	li	a3,0
	mv	a0,s10
.LVL55:
	mv	a1,s9
	call	__divdi3
.LVL56:
.LBE18:
.LBE23:
	.loc 1 301 11
	add	s5,s5,s1
.LVL57:
	.loc 1 306 5 is_stmt 1
.LBB24:
.LBB19:
	.loc 1 88 5
	.loc 1 89 5
	.loc 1 89 19 is_stmt 0
	li	s1,1461
.LVL58:
	mul	s1,a0,s1
	srai	s2,s1,31
.LVL59:
	.loc 1 89 10
	sub	s1,s8,s1
	sub	s2,s7,s2
	sgtu	a5,s1,s8
	sub	s2,s2,a5
.LVL60:
	.loc 1 90 5 is_stmt 1
	.loc 1 90 11 is_stmt 0
	slli	s7,a0,2
.LVL61:
.L34:
	.loc 1 93 5 is_stmt 1
	.loc 1 94 5
	.loc 1 96 5
	.loc 1 99 9
	.loc 1 99 20 is_stmt 0
	addi	a0,s7,1970
	call	clock_isleapyear
.LVL62:
	.loc 1 99 18
	andi	a1,a0,0xff
.LVL63:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 31 is_stmt 0
	snez	a5,a1
	.loc 1 107 18
	li	a4,0
	.loc 1 103 31
	addi	a5,a5,365
.LVL64:
	.loc 1 107 9 is_stmt 1
	.loc 1 107 12 is_stmt 0
	bgt	a4,s2,.L40
	bne	a4,s2,.L43
	bgtu	a5,s1,.L40
.L43:
	.loc 1 110 13 is_stmt 1
	.loc 1 111 18 is_stmt 0
	sub	a5,s1,a5
.LVL65:
	sgtu	a4,a5,s1
	.loc 1 110 18
	addi	s7,s7,1
.LVL66:
	.loc 1 111 13 is_stmt 1
	.loc 1 111 18 is_stmt 0
	mv	s1,a5
	sub	s2,s2,a4
.LVL67:
	.loc 1 96 12 is_stmt 1
	.loc 1 99 18 is_stmt 0
	j	.L34
.LVL68:
.L40:
	.loc 1 125 9
	li	s10,11
	.loc 1 124 9
	li	s8,0
.LVL69:
.L32:
	.loc 1 127 5 is_stmt 1
	.loc 1 130 9
	.loc 1 130 22 is_stmt 0
	add	s9,s8,s10
	.loc 1 130 15
	srai	s9,s9,1
.LVL70:
	.loc 1 136 9 is_stmt 1
	.loc 1 136 15 is_stmt 0
	addi	s11,s9,1
	mv	a0,s11
	sw	a1,-68(s0)
	call	clock_daysbeforemonth
.LVL71:
	.loc 1 142 9 is_stmt 1
	.loc 1 142 17 is_stmt 0
	srai	a5,a0,31
	.loc 1 142 12
	lw	a1,-68(s0)
	bgt	a5,s2,.L44
.LVL72:
	bne	a5,s2,.L41
	bleu	a0,s1,.L41
.L44:
	.loc 1 147 13 is_stmt 1
	.loc 1 147 19 is_stmt 0
	mv	a0,s9
.LVL73:
	sw	a1,-68(s0)
	call	clock_daysbeforemonth
.LVL74:
	.loc 1 149 13 is_stmt 1
	.loc 1 149 21 is_stmt 0
	srai	a5,a0,31
	.loc 1 149 16
	lw	a1,-68(s0)
	bgt	a5,s2,.L45
.LVL75:
	bne	a5,s2,.L42
	bleu	a0,s1,.L42
.L45:
	.loc 1 152 17 is_stmt 1
	.loc 1 152 21 is_stmt 0
	addi	s10,s9,-1
.LVL76:
.L35:
	.loc 1 168 9 is_stmt 1
	.loc 1 169 13
	.loc 1 169 5 is_stmt 0
	blt	s8,s10,.L32
.LVL77:
.L37:
	.loc 1 174 5 is_stmt 1
	.loc 1 174 13 is_stmt 0
	mv	a0,s8
.LVL78:
	call	clock_daysbeforemonth
.LVL79:
	.loc 1 180 5 is_stmt 1
	.loc 1 181 5
.LBE19:
.LBE24:
	.loc 1 310 5
	.loc 1 317 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
.LBB25:
.LBB20:
	.loc 1 174 10
	sub	s1,s1,a0
.LVL80:
.LBE20:
.LBE25:
	.loc 1 310 33
	addi	s7,s7,70
.LBB26:
.LBB21:
	.loc 1 181 17
	addi	s1,s1,1
.LVL81:
.LBE21:
.LBE26:
	.loc 1 310 21
	sw	s7,20(s3)
	.loc 1 311 5 is_stmt 1
	.loc 1 311 20 is_stmt 0
	sw	s8,16(s3)
	.loc 1 312 5 is_stmt 1
	.loc 1 312 21 is_stmt 0
	sw	s1,12(s3)
	.loc 1 313 5 is_stmt 1
	.loc 1 313 21 is_stmt 0
	sw	s4,8(s3)
	.loc 1 314 5 is_stmt 1
	.loc 1 314 20 is_stmt 0
	sw	s6,4(s3)
	.loc 1 315 5 is_stmt 1
	.loc 1 315 20 is_stmt 0
	sw	s5,0(s3)
	.loc 1 316 5 is_stmt 1
.LVL82:
	.loc 1 317 1 is_stmt 0
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
.LVL83:
	lw	s4,56(sp)
	.cfi_restore 20
.LVL84:
	lw	s5,52(sp)
	.cfi_restore 21
.LVL85:
	lw	s6,48(sp)
	.cfi_restore 22
.LVL86:
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL87:
.L41:
	.cfi_restore_state
.LBB27:
.LBB22:
	.loc 1 161 17
	mv	s8,s11
.LVL88:
	j	.L35
.LVL89:
.L42:
	.loc 1 130 15
	mv	s8,s9
.LVL90:
	j	.L37
.LBE22:
.LBE27:
	.cfi_endproc
.LFE26:
	.size	__gmtime_r.isra.0, .-__gmtime_r.isra.0
	.section	.text.__rtctime_to_tm,"ax",@progbits
	.align	1
	.type	__rtctime_to_tm, @function
__rtctime_to_tm:
.LFB15:
	.loc 1 241 1 is_stmt 1
	.cfi_startproc
.LVL91:
	.loc 1 242 5
	.loc 1 241 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 242 28
	lbu	a5,0(a1)
	.loc 1 242 53
	beq	a2,zero,.L50
.LVL92:
.LBB40:
.LBB41:
	.loc 1 66 5 is_stmt 1 discriminator 1
	.loc 1 67 5 discriminator 1
	.loc 1 67 18 is_stmt 0 discriminator 1
	srli	a4,a5,4
	.loc 1 67 10 discriminator 1
	li	a3,10
	mul	a4,a4,a3
.LVL93:
	.loc 1 68 5 is_stmt 1 discriminator 1
	.loc 1 68 18 is_stmt 0 discriminator 1
	andi	a5,a5,15
	.loc 1 68 10 discriminator 1
	add	a5,a5,a4
.LVL94:
	.loc 1 69 5 is_stmt 1 discriminator 1
.L50:
.LBE41:
.LBE40:
	.loc 1 242 17 is_stmt 0 discriminator 4
	sw	a5,0(a0)
	.loc 1 243 5 is_stmt 1 discriminator 4
	lbu	a5,1(a1)
	.loc 1 243 53 is_stmt 0 discriminator 4
	beq	a2,zero,.L52
.LVL95:
.LBB42:
.LBB43:
	.loc 1 66 5 is_stmt 1 discriminator 1
	.loc 1 67 5 discriminator 1
	.loc 1 67 18 is_stmt 0 discriminator 1
	srli	a4,a5,4
	.loc 1 67 10 discriminator 1
	li	a3,10
	mul	a4,a4,a3
.LVL96:
	.loc 1 68 5 is_stmt 1 discriminator 1
	.loc 1 68 18 is_stmt 0 discriminator 1
	andi	a5,a5,15
.LVL97:
	.loc 1 68 10 discriminator 1
	add	a5,a5,a4
.LVL98:
	.loc 1 69 5 is_stmt 1 discriminator 1
.L52:
.LBE43:
.LBE42:
	.loc 1 243 17 is_stmt 0 discriminator 4
	sw	a5,4(a0)
	.loc 1 244 5 is_stmt 1 discriminator 4
	lbu	a5,2(a1)
	.loc 1 244 53 is_stmt 0 discriminator 4
	beq	a2,zero,.L54
.LVL99:
.LBB44:
.LBB45:
	.loc 1 66 5 is_stmt 1 discriminator 1
	.loc 1 67 5 discriminator 1
	.loc 1 67 18 is_stmt 0 discriminator 1
	srli	a4,a5,4
	.loc 1 67 10 discriminator 1
	li	a3,10
	mul	a4,a4,a3
.LVL100:
	.loc 1 68 5 is_stmt 1 discriminator 1
	.loc 1 68 18 is_stmt 0 discriminator 1
	andi	a5,a5,15
.LVL101:
	.loc 1 68 10 discriminator 1
	add	a5,a5,a4
.LVL102:
	.loc 1 69 5 is_stmt 1 discriminator 1
.L54:
.LBE45:
.LBE44:
	.loc 1 244 18 is_stmt 0 discriminator 4
	sw	a5,8(a0)
	.loc 1 246 5 is_stmt 1 discriminator 4
	lbu	a5,3(a1)
	.loc 1 246 55 is_stmt 0 discriminator 4
	beq	a2,zero,.L56
.LVL103:
.LBB46:
.LBB47:
	.loc 1 66 5 is_stmt 1 discriminator 1
	.loc 1 67 5 discriminator 1
	.loc 1 67 18 is_stmt 0 discriminator 1
	srli	a4,a5,4
	.loc 1 67 10 discriminator 1
	li	a3,10
	mul	a4,a4,a3
.LVL104:
	.loc 1 68 5 is_stmt 1 discriminator 1
	.loc 1 68 18 is_stmt 0 discriminator 1
	andi	a5,a5,15
.LVL105:
	.loc 1 68 10 discriminator 1
	add	a5,a5,a4
.LVL106:
	.loc 1 69 5 is_stmt 1 discriminator 1
.L56:
.LBE47:
.LBE46:
	.loc 1 246 18 is_stmt 0 discriminator 4
	sw	a5,12(a0)
	.loc 1 247 5 is_stmt 1 discriminator 4
	lbu	a5,4(a1)
	.loc 1 247 55 is_stmt 0 discriminator 4
	beq	a2,zero,.L58
.LVL107:
.LBB48:
.LBB49:
	.loc 1 66 5 is_stmt 1 discriminator 1
	.loc 1 67 5 discriminator 1
	.loc 1 67 18 is_stmt 0 discriminator 1
	srli	a4,a5,4
	.loc 1 67 10 discriminator 1
	li	a3,10
	mul	a4,a4,a3
.LVL108:
	.loc 1 68 5 is_stmt 1 discriminator 1
	.loc 1 68 18 is_stmt 0 discriminator 1
	andi	a5,a5,15
.LVL109:
	.loc 1 68 10 discriminator 1
	add	a5,a5,a4
.LVL110:
	.loc 1 69 5 is_stmt 1 discriminator 1
.L58:
.LBE49:
.LBE48:
	.loc 1 248 5 discriminator 4
	.loc 1 248 17 is_stmt 0 discriminator 4
	addi	a5,a5,-1
	sw	a5,16(a0)
	.loc 1 249 5 is_stmt 1 discriminator 4
	.loc 1 249 55 is_stmt 0 discriminator 4
	beq	a2,zero,.L59
	.loc 1 249 29 discriminator 1
	lbu	a4,6(a1)
.LVL111:
.LBB50:
.LBB51:
	.loc 1 66 5 is_stmt 1 discriminator 1
	.loc 1 67 5 discriminator 1
	.loc 1 67 10 is_stmt 0 discriminator 1
	li	a3,10
	.loc 1 67 18 discriminator 1
	srli	a5,a4,4
	.loc 1 67 10 discriminator 1
	mul	a3,a5,a3
.LVL112:
	.loc 1 68 5 is_stmt 1 discriminator 1
	.loc 1 68 18 is_stmt 0 discriminator 1
	andi	a5,a4,15
	.loc 1 68 10 discriminator 1
	add	a5,a5,a3
.LVL113:
	.loc 1 69 5 is_stmt 1 discriminator 1
.L60:
.LBE51:
.LBE50:
	.loc 1 250 5 discriminator 4
	.loc 1 251 1 is_stmt 0 discriminator 4
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 250 18 discriminator 4
	addi	a5,a5,70
	sw	a5,20(a0)
	.loc 1 251 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L59:
	.cfi_restore_state
	.loc 1 249 55 discriminator 2
	lhu	a5,6(a1)
	j	.L60
	.cfi_endproc
.LFE15:
	.size	__rtctime_to_tm, .-__rtctime_to_tm
	.section	.text.hosal_rtc_init,"ax",@progbits
	.align	1
	.globl	hosal_rtc_init
	.type	hosal_rtc_init, @function
hosal_rtc_init:
.LFB19:
	.loc 1 351 1 is_stmt 1
	.cfi_startproc
.LVL114:
	.loc 1 352 5
	.loc 1 351 1 is_stmt 0
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
	.loc 1 352 8
	bne	a0,zero,.L68
.LVL115:
.L70:
	.loc 1 353 16
	li	s2,-1
.L67:
	.loc 1 364 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL116:
.L68:
	.cfi_restore_state
	.loc 1 355 5 is_stmt 1
	.loc 1 355 13 is_stmt 0
	lui	s1,%hi(.LANCHOR3)
	addi	s1,s1,%lo(.LANCHOR3)
	.loc 1 355 8
	lw	a5,0(s1)
	.loc 1 363 12
	li	s2,0
	.loc 1 355 8
	bne	a5,zero,.L67
	.loc 1 356 9 is_stmt 1
	.loc 1 356 22 is_stmt 0
	li	a0,36
.LVL117:
	call	pvPortMalloc
.LVL118:
	.loc 1 356 20
	sw	a0,0(s1)
	.loc 1 357 9 is_stmt 1
	.loc 1 357 12 is_stmt 0
	beq	a0,zero,.L70
	.loc 1 360 9 is_stmt 1
	call	bl_rtc_init
.LVL119:
	j	.L67
	.cfi_endproc
.LFE19:
	.size	hosal_rtc_init, .-hosal_rtc_init
	.globl	__udivdi3
	.section	.text.hosal_rtc_get_time,"ax",@progbits
	.align	1
	.globl	hosal_rtc_get_time
	.type	hosal_rtc_get_time, @function
hosal_rtc_get_time:
.LFB20:
	.loc 1 375 1
	.cfi_startproc
.LVL120:
	.loc 1 376 5
	.loc 1 377 5
	.loc 1 375 1 is_stmt 0
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
	sw	s3,60(sp)
	sw	s2,64(sp)
	sw	s4,56(sp)
	.cfi_offset 19, -20
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.loc 1 375 1
	mv	s3,a0
	mv	s1,a1
	.loc 1 377 30
	call	bl_rtc_get_timestamp_ms
.LVL121:
	.loc 1 377 14
	sw	a0,-80(s0)
	sw	a1,-76(s0)
	.loc 1 379 5 is_stmt 1
	li	a2,36
	li	a1,0
	addi	a0,s0,-68
	call	memset
.LVL122:
	.loc 1 380 5
	.loc 1 381 16 is_stmt 0
	li	a0,-1
	.loc 1 380 8
	beq	s1,zero,.L76
	.loc 1 380 21 discriminator 1
	beq	s3,zero,.L76
	.loc 1 384 5 is_stmt 1
	.loc 1 384 35 is_stmt 0
	lw	a0,-80(s0)
	lw	a1,-76(s0)
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL123:
	.loc 1 385 22
	lui	a5,%hi(.LANCHOR3)
	.loc 1 384 35
	mv	s2,a0
	.loc 1 384 19
	sw	a0,-80(s0)
	.loc 1 385 22
	lw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 384 35
	mv	s4,a1
	.loc 1 384 19
	sw	a1,-76(s0)
	.loc 1 385 5 is_stmt 1
	.loc 1 385 22 is_stmt 0
	call	__mktime
.LVL124:
	.loc 1 385 19
	add	s2,a0,s2
	sltu	a5,s2,a0
	add	s4,a1,s4
	add	a5,a5,s4
	.loc 1 386 5
	addi	a1,s0,-68
	addi	a0,s0,-80
	.loc 1 385 19
	sw	a5,-76(s0)
	.loc 1 386 5 is_stmt 1
	.loc 1 385 19 is_stmt 0
	sw	s2,-80(s0)
	.loc 1 386 5
	call	__gmtime_r.isra.0
.LVL125:
	.loc 1 388 5 is_stmt 1
	lw	a4,-68(s0)
	.loc 1 388 45 is_stmt 0
	lbu	a3,1(s3)
.LVL126:
.LBB66:
.LBB67:
	.loc 1 231 5 is_stmt 1
	.loc 1 231 19 is_stmt 0
	li	a2,2
	andi	a5,a4,0xff
	bne	a3,a2,.L79
.LVL127:
.LBB68:
.LBB69:
	.loc 1 74 2 is_stmt 1
	.loc 1 75 2
	.loc 1 75 15 is_stmt 0
	li	a2,10
	div	a5,a4,a2
	.loc 1 76 16
	rem	a4,a4,a2
.LVL128:
	.loc 1 75 7
	slli	a5,a5,4
.LVL129:
	.loc 1 76 2 is_stmt 1
	.loc 1 76 7 is_stmt 0
	add	a5,a5,a4
.LVL130:
	andi	a5,a5,0xff
.LVL131:
	.loc 1 77 2 is_stmt 1
.L79:
.LBE69:
.LBE68:
	.loc 1 232 30 is_stmt 0
	lw	a4,-64(s0)
	.loc 1 231 19
	sb	a5,0(s1)
	.loc 1 232 5 is_stmt 1
	.loc 1 232 19 is_stmt 0
	li	a2,2
	andi	a5,a4,0xff
	bne	a3,a2,.L81
.LVL132:
.LBB70:
.LBB71:
	.loc 1 74 2 is_stmt 1
	.loc 1 75 2
	.loc 1 75 15 is_stmt 0
	li	a2,10
	div	a5,a4,a2
	.loc 1 76 16
	rem	a4,a4,a2
.LVL133:
	.loc 1 75 7
	slli	a5,a5,4
.LVL134:
	.loc 1 76 2 is_stmt 1
	.loc 1 76 7 is_stmt 0
	add	a5,a5,a4
.LVL135:
	andi	a5,a5,0xff
.LVL136:
	.loc 1 77 2 is_stmt 1
.L81:
.LBE71:
.LBE70:
	.loc 1 233 29 is_stmt 0
	lw	a4,-60(s0)
	.loc 1 232 19
	sb	a5,1(s1)
	.loc 1 233 5 is_stmt 1
	.loc 1 233 18 is_stmt 0
	li	a2,2
	andi	a5,a4,0xff
	bne	a3,a2,.L83
.LVL137:
.LBB72:
.LBB73:
	.loc 1 74 2 is_stmt 1
	.loc 1 75 2
	.loc 1 75 15 is_stmt 0
	li	a2,10
	div	a5,a4,a2
	.loc 1 76 16
	rem	a4,a4,a2
.LVL138:
	.loc 1 75 7
	slli	a5,a5,4
.LVL139:
	.loc 1 76 2 is_stmt 1
	.loc 1 76 7 is_stmt 0
	add	a5,a5,a4
.LVL140:
	andi	a5,a5,0xff
.LVL141:
	.loc 1 77 2 is_stmt 1
.L83:
.LBE73:
.LBE72:
	.loc 1 235 31 is_stmt 0
	lw	a4,-56(s0)
	.loc 1 233 18
	sb	a5,2(s1)
	.loc 1 235 5 is_stmt 1
	.loc 1 235 20 is_stmt 0
	li	a2,2
	andi	a5,a4,0xff
	bne	a3,a2,.L85
.LVL142:
.LBB74:
.LBB75:
	.loc 1 74 2 is_stmt 1
	.loc 1 75 2
	.loc 1 75 15 is_stmt 0
	li	a2,10
	div	a5,a4,a2
	.loc 1 76 16
	rem	a4,a4,a2
.LVL143:
	.loc 1 75 7
	slli	a5,a5,4
.LVL144:
	.loc 1 76 2 is_stmt 1
	.loc 1 76 7 is_stmt 0
	add	a5,a5,a4
.LVL145:
	andi	a5,a5,0xff
.LVL146:
	.loc 1 77 2 is_stmt 1
.L85:
	lw	a4,-52(s0)
.LBE75:
.LBE74:
	.loc 1 235 20 is_stmt 0
	sb	a5,3(s1)
	.loc 1 236 5 is_stmt 1
	.loc 1 236 21 is_stmt 0
	li	a2,2
	addi	a4,a4,1
	andi	a5,a4,0xff
	bne	a3,a2,.L87
.LVL147:
.LBB76:
.LBB77:
	.loc 1 74 2 is_stmt 1
	.loc 1 75 2
	.loc 1 75 15 is_stmt 0
	li	a2,10
	div	a5,a4,a2
	.loc 1 76 16
	rem	a4,a4,a2
.LVL148:
	.loc 1 75 7
	slli	a5,a5,4
.LVL149:
	.loc 1 76 2 is_stmt 1
	.loc 1 76 7 is_stmt 0
	add	a5,a5,a4
.LVL150:
	andi	a5,a5,0xff
.LVL151:
	.loc 1 77 2 is_stmt 1
.L87:
.LBE77:
.LBE76:
	.loc 1 236 21 is_stmt 0
	sb	a5,4(s1)
	.loc 1 237 5 is_stmt 1
	lw	a5,-48(s0)
	.loc 1 237 20 is_stmt 0
	li	a4,2
	addi	a5,a5,-70
	bne	a3,a4,.L88
.LVL152:
.LBB78:
.LBB79:
	.loc 1 74 2 is_stmt 1
	.loc 1 75 2
	.loc 1 75 15 is_stmt 0
	li	a3,10
.LVL153:
	div	a4,a5,a3
	.loc 1 76 16
	rem	a5,a5,a3
.LVL154:
	.loc 1 75 7
	slli	a4,a4,4
.LVL155:
	.loc 1 76 2 is_stmt 1
	.loc 1 77 2
	.loc 1 76 7 is_stmt 0
	add	a5,a4,a5
.LBE79:
.LBE78:
	.loc 1 237 20
	andi	a5,a5,0xff
.L89:
	sh	a5,6(s1)
.LBE67:
.LBE66:
	.loc 1 390 12
	li	a0,0
.LVL156:
.L76:
	.loc 1 391 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
.LVL157:
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
.LVL158:
	lw	s4,56(sp)
	.cfi_restore 20
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL159:
.L88:
	.cfi_restore_state
.LBB81:
.LBB80:
	.loc 1 237 20
	slli	a5,a5,16
	srli	a5,a5,16
	j	.L89
.LBE80:
.LBE81:
	.cfi_endproc
.LFE20:
	.size	hosal_rtc_get_time, .-hosal_rtc_get_time
	.section	.text.hosal_rtc_set_time,"ax",@progbits
	.align	1
	.globl	hosal_rtc_set_time
	.type	hosal_rtc_set_time, @function
hosal_rtc_set_time:
.LFB21:
	.loc 1 402 1 is_stmt 1
	.cfi_startproc
.LVL160:
	.loc 1 403 5
	.loc 1 404 5
	.loc 1 406 5
	.loc 1 402 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	ra,76(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	.loc 1 407 16
	li	s1,-1
	.loc 1 406 8
	beq	a1,zero,.L93
	mv	s2,a0
	.loc 1 407 16 discriminator 1
	li	s1,-1
	.loc 1 406 21 discriminator 1
	beq	a0,zero,.L93
	.loc 1 409 5 is_stmt 1
	.loc 1 409 13 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	s4,%lo(.LANCHOR3)(a5)
	.loc 1 409 8
	beq	s4,zero,.L93
	.loc 1 413 5
	lbu	a2,1(a0)
	addi	a0,s0,-68
.LVL161:
	mv	s3,a1
	.loc 1 413 5 is_stmt 1
	addi	a2,a2,-2
	seqz	a2,a2
	call	__rtctime_to_tm
.LVL162:
	.loc 1 414 5
	.loc 1 414 16 is_stmt 0
	addi	a0,s0,-68
	call	__check_tm_ok
.LVL163:
	mv	s1,a0
.LVL164:
	.loc 1 414 8
	bne	a0,zero,.L93
	.loc 1 417 5 is_stmt 1
	lbu	a2,1(s2)
	mv	a1,s3
	mv	a0,s4
	addi	a2,a2,-2
	seqz	a2,a2
	call	__rtctime_to_tm
.LVL165:
	.loc 1 418 5
.L93:
	.loc 1 419 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	mv	a0,s1
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	hosal_rtc_set_time, .-hosal_rtc_set_time
	.section	.text.hosal_rtc_set_count,"ax",@progbits
	.align	1
	.globl	hosal_rtc_set_count
	.type	hosal_rtc_set_count, @function
hosal_rtc_set_count:
.LFB22:
	.loc 1 430 1 is_stmt 1
	.cfi_startproc
.LVL166:
	.loc 1 431 5
	.loc 1 432 5
	.loc 1 433 5
	.loc 1 433 8 is_stmt 0
	beq	a0,zero,.L101
	.loc 1 436 5 is_stmt 1
	.loc 1 430 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	ra,60(sp)
	sw	s2,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 436 13
	lui	s1,%hi(.LANCHOR3)
	.loc 1 430 1
	.loc 1 436 13
	addi	s1,s1,%lo(.LANCHOR3)
	.loc 1 436 8
	lw	a5,0(s1)
	.loc 1 434 16
	li	a0,-1
.LVL167:
	.loc 1 436 8
	beq	a5,zero,.L99
	mv	s2,a1
	.loc 1 439 5 is_stmt 1
	li	a2,36
	li	a1,0
.LVL168:
	addi	a0,s0,-52
	call	memset
.LVL169:
	.loc 1 440 5
	li	a2,36
	li	a1,0
	addi	a0,s0,-60
	call	memset
.LVL170:
	.loc 1 441 5
	lw	a1,0(s1)
	mv	a0,s2
	call	__gmtime_r.isra.0
.LVL171:
	.loc 1 442 5
	.loc 1 442 12 is_stmt 0
	li	a0,0
.LVL172:
.L99:
	.loc 1 443 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL173:
.L101:
	.loc 1 434 16
	li	a0,-1
.LVL174:
	.loc 1 443 1
	ret
	.cfi_endproc
.LFE22:
	.size	hosal_rtc_set_count, .-hosal_rtc_set_count
	.section	.text.hosal_rtc_get_count,"ax",@progbits
	.align	1
	.globl	hosal_rtc_get_count
	.type	hosal_rtc_get_count, @function
hosal_rtc_get_count:
.LFB23:
	.loc 1 454 1 is_stmt 1
	.cfi_startproc
.LVL175:
	.loc 1 455 5
	.loc 1 454 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	s1,a0
	.loc 1 454 1
	mv	s2,a1
	.loc 1 455 30
	call	bl_rtc_get_timestamp_ms
.LVL176:
	.loc 1 456 5 is_stmt 1
	.loc 1 456 8 is_stmt 0
	beq	s1,zero,.L109
	.loc 1 459 5 is_stmt 1
	.loc 1 459 19 is_stmt 0
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL177:
	.loc 1 460 22
	lui	a5,%hi(.LANCHOR3)
	.loc 1 459 19
	mv	s1,a0
.LVL178:
	.loc 1 460 22
	lw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 459 19
	mv	s3,a1
.LVL179:
	.loc 1 460 5 is_stmt 1
	.loc 1 460 22 is_stmt 0
	call	__mktime
.LVL180:
	.loc 1 461 5 is_stmt 1
	.loc 1 460 19 is_stmt 0
	add	a5,a0,s1
	sltu	a0,a5,a0
.LVL181:
	add	a1,a1,s3
	add	a0,a0,a1
	.loc 1 461 17
	sw	a0,4(s2)
	.loc 1 462 5 is_stmt 1
	.loc 1 461 17 is_stmt 0
	sw	a5,0(s2)
	.loc 1 462 12
	li	a0,0
.L107:
	.loc 1 463 1
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
.LVL182:
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL183:
.L109:
	.cfi_restore_state
	.loc 1 457 16
	li	a0,-1
.LVL184:
	j	.L107
	.cfi_endproc
.LFE23:
	.size	hosal_rtc_get_count, .-hosal_rtc_get_count
	.section	.text.hosal_rtc_finalize,"ax",@progbits
	.align	1
	.globl	hosal_rtc_finalize
	.type	hosal_rtc_finalize, @function
hosal_rtc_finalize:
.LFB24:
	.loc 1 473 1 is_stmt 1
	.cfi_startproc
.LVL185:
	.loc 1 474 5
	.loc 1 473 1 is_stmt 0
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
	.loc 1 475 16
	li	s2,-1
	.loc 1 474 8
	beq	a0,zero,.L111
	.loc 1 478 5 is_stmt 1
	.loc 1 478 9 is_stmt 0
	lui	s1,%hi(.LANCHOR3)
	addi	s1,s1,%lo(.LANCHOR3)
	lw	a0,0(s1)
.LVL186:
	.loc 1 483 12
	li	s2,0
	.loc 1 478 8
	beq	a0,zero,.L111
	.loc 1 479 9 is_stmt 1
	call	vPortFree
.LVL187:
	.loc 1 480 9
	.loc 1 480 20 is_stmt 0
	sw	zero,0(s1)
.L111:
	.loc 1 484 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	hosal_rtc_finalize, .-hosal_rtc_finalize
	.section	.rodata.g_noleap_daysbeforemonth,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_noleap_daysbeforemonth, @object
	.size	g_noleap_daysbeforemonth, 26
g_noleap_daysbeforemonth:
	.half	0
	.half	31
	.half	59
	.half	90
	.half	120
	.half	151
	.half	181
	.half	212
	.half	243
	.half	273
	.half	304
	.half	334
	.half	365
	.section	.rodata.leap_year,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	leap_year, @object
	.size	leap_year, 12
leap_year:
	.ascii	"\037\035\037\036\037\036\037\037\036\037\036\037"
	.section	.rodata.noleap_year,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	noleap_year, @object
	.size	noleap_year, 12
noleap_year:
	.ascii	"\037\034\037\036\037\036\037\037\036\037\036\037"
	.section	.sbss.s_rtc_base,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	s_rtc_base, @object
	.size	s_rtc_base, 4
s_rtc_base:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_rtc.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_rtc.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd29
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF82
	.byte	0xc
	.4byte	.LASF83
	.4byte	.LASF84
	.4byte	.Ldebug_ranges0+0x70
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x60
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x81
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x6
	.4byte	0xb0
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.4byte	0xc1
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x88
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2a
	.byte	0x19
	.4byte	0x94
	.byte	0x6
	.4byte	0xea
	.byte	0x7
	.string	"tm"
	.byte	0x24
	.byte	0x5
	.byte	0x25
	.byte	0x8
	.4byte	0x17d
	.byte	0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x27
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x28
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x29
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2a
	.byte	0x7
	.4byte	0x2c
	.byte	0xc
	.byte	0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2b
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2c
	.byte	0x7
	.4byte	0x2c
	.byte	0x14
	.byte	0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x2d
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2e
	.byte	0x7
	.4byte	0x2c
	.byte	0x1c
	.byte	0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0x2f
	.byte	0x7
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.byte	0x6
	.4byte	0xfb
	.byte	0x9
	.byte	0x1
	.byte	0x6
	.byte	0x2f
	.byte	0x9
	.4byte	0x199
	.byte	0x8
	.4byte	.LASF29
	.byte	0x6
	.byte	0x30
	.byte	0xd
	.4byte	0xb0
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x31
	.byte	0x3
	.4byte	0x182
	.byte	0x9
	.byte	0x8
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.4byte	0x1d6
	.byte	0x8
	.4byte	.LASF31
	.byte	0x6
	.byte	0x37
	.byte	0xd
	.4byte	0xb0
	.byte	0
	.byte	0x8
	.4byte	.LASF32
	.byte	0x6
	.byte	0x38
	.byte	0x18
	.4byte	0x199
	.byte	0x1
	.byte	0x8
	.4byte	.LASF33
	.byte	0x6
	.byte	0x39
	.byte	0xb
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3a
	.byte	0x3
	.4byte	0x1a5
	.byte	0x9
	.byte	0x8
	.byte	0x6
	.byte	0x3f
	.byte	0x9
	.4byte	0x239
	.byte	0xa
	.string	"sec"
	.byte	0x6
	.byte	0x40
	.byte	0xd
	.4byte	0xb0
	.byte	0
	.byte	0xa
	.string	"min"
	.byte	0x6
	.byte	0x41
	.byte	0xd
	.4byte	0xb0
	.byte	0x1
	.byte	0xa
	.string	"hr"
	.byte	0x6
	.byte	0x42
	.byte	0xd
	.4byte	0xb0
	.byte	0x2
	.byte	0x8
	.4byte	.LASF35
	.byte	0x6
	.byte	0x43
	.byte	0xd
	.4byte	0xb0
	.byte	0x3
	.byte	0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x44
	.byte	0xd
	.4byte	0xb0
	.byte	0x4
	.byte	0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x45
	.byte	0xe
	.4byte	0xc1
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF38
	.byte	0x6
	.byte	0x46
	.byte	0x3
	.4byte	0x1e2
	.byte	0x6
	.4byte	0x239
	.byte	0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2a
	.byte	0x13
	.4byte	0x25c
	.byte	0x5
	.byte	0x3
	.4byte	s_rtc_base
	.byte	0xc
	.byte	0x4
	.4byte	0xfb
	.byte	0xd
	.4byte	0xbc
	.4byte	0x272
	.byte	0xe
	.4byte	0xa0
	.byte	0xb
	.byte	0
	.byte	0x6
	.4byte	0x262
	.byte	0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2c
	.byte	0x16
	.4byte	0x272
	.byte	0x5
	.byte	0x3
	.4byte	leap_year
	.byte	0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2d
	.byte	0x16
	.4byte	0x272
	.byte	0x5
	.byte	0x3
	.4byte	noleap_year
	.byte	0xd
	.4byte	0xcd
	.4byte	0x2ab
	.byte	0xe
	.4byte	0xa0
	.byte	0xc
	.byte	0
	.byte	0x6
	.4byte	0x29b
	.byte	0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2e
	.byte	0x17
	.4byte	0x2ab
	.byte	0x5
	.byte	0x3
	.4byte	g_noleap_daysbeforemonth
	.byte	0xf
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x1d8
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f8
	.byte	0x10
	.string	"rtc"
	.byte	0x1
	.2byte	0x1d8
	.byte	0x29
	.4byte	0x2f8
	.4byte	.LLST67
	.byte	0x11
	.4byte	.LVL187
	.4byte	0xcde
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x1d6
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1c5
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x368
	.byte	0x10
	.string	"rtc"
	.byte	0x1
	.2byte	0x1c5
	.byte	0x2a
	.4byte	0x2f8
	.4byte	.LLST64
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1c5
	.byte	0x39
	.4byte	0x368
	.4byte	.LLST65
	.byte	0x13
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1c7
	.byte	0xe
	.4byte	0xde
	.4byte	.LLST66
	.byte	0x11
	.4byte	.LVL176
	.4byte	0xcea
	.byte	0x11
	.4byte	.LVL177
	.4byte	0xcf6
	.byte	0x11
	.4byte	.LVL180
	.4byte	0x6e0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xde
	.byte	0xf
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1ad
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x41a
	.byte	0x10
	.string	"rtc"
	.byte	0x1
	.2byte	0x1ad
	.byte	0x2a
	.4byte	0x2f8
	.4byte	.LLST62
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1ad
	.byte	0x39
	.4byte	0x368
	.4byte	.LLST63
	.byte	0x14
	.string	"tim"
	.byte	0x1
	.2byte	0x1af
	.byte	0xf
	.4byte	0xfb
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x15
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1b0
	.byte	0x16
	.4byte	0x239
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x16
	.4byte	.LVL169
	.4byte	0xcff
	.4byte	0x3ea
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4c
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x16
	.4byte	.LVL170
	.4byte	0xcff
	.4byte	0x409
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x18
	.4byte	.LVL171
	.4byte	0xb84
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x191
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c0
	.byte	0x10
	.string	"rtc"
	.byte	0x1
	.2byte	0x191
	.byte	0x29
	.4byte	0x2f8
	.4byte	.LLST59
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x191
	.byte	0x46
	.4byte	0x4c0
	.4byte	.LLST60
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x193
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST61
	.byte	0x14
	.string	"tim"
	.byte	0x1
	.2byte	0x194
	.byte	0xf
	.4byte	0xfb
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x16
	.4byte	.LVL162
	.4byte	0x869
	.4byte	0x494
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL163
	.4byte	0x9c8
	.4byte	0x4a9
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x18
	.4byte	.LVL165
	.4byte	0x869
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x245
	.byte	0xf
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x176
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x690
	.byte	0x10
	.string	"rtc"
	.byte	0x1
	.2byte	0x176
	.byte	0x29
	.4byte	0x2f8
	.4byte	.LLST42
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x176
	.byte	0x40
	.4byte	0x690
	.4byte	.LLST43
	.byte	0x14
	.string	"tim"
	.byte	0x1
	.2byte	0x178
	.byte	0xf
	.4byte	0xfb
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x15
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x179
	.byte	0xe
	.4byte	0xde
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x1a
	.4byte	0x990
	.4byte	.LBB66
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x184
	.byte	0x5
	.4byte	0x63c
	.byte	0x1b
	.4byte	0x9b5
	.4byte	.LLST44
	.byte	0x1b
	.4byte	0x9a9
	.4byte	.LLST45
	.byte	0x1b
	.4byte	0x99d
	.4byte	.LLST46
	.byte	0x1c
	.4byte	0xa94
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0xe7
	.byte	0x1e
	.4byte	0x57c
	.byte	0x1b
	.4byte	0xaa5
	.4byte	.LLST47
	.byte	0x1d
	.4byte	0xab1
	.4byte	.LLST48
	.byte	0
	.byte	0x1c
	.4byte	0xa94
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.byte	0xe8
	.byte	0x1e
	.4byte	0x5a3
	.byte	0x1b
	.4byte	0xaa5
	.4byte	.LLST49
	.byte	0x1d
	.4byte	0xab1
	.4byte	.LLST50
	.byte	0
	.byte	0x1c
	.4byte	0xa94
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.byte	0xe9
	.byte	0x1d
	.4byte	0x5ca
	.byte	0x1b
	.4byte	0xaa5
	.4byte	.LLST51
	.byte	0x1d
	.4byte	0xab1
	.4byte	.LLST52
	.byte	0
	.byte	0x1c
	.4byte	0xa94
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0xeb
	.byte	0x1f
	.4byte	0x5f1
	.byte	0x1b
	.4byte	0xaa5
	.4byte	.LLST53
	.byte	0x1d
	.4byte	0xab1
	.4byte	.LLST54
	.byte	0
	.byte	0x1c
	.4byte	0xa94
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.byte	0xec
	.byte	0x20
	.4byte	0x618
	.byte	0x1b
	.4byte	0xaa5
	.4byte	.LLST55
	.byte	0x1d
	.4byte	0xab1
	.4byte	.LLST56
	.byte	0
	.byte	0x1e
	.4byte	0xa94
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.byte	0xed
	.byte	0x1f
	.byte	0x1b
	.4byte	0xaa5
	.4byte	.LLST57
	.byte	0x1d
	.4byte	0xab1
	.4byte	.LLST58
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL121
	.4byte	0xcea
	.byte	0x16
	.4byte	.LVL122
	.4byte	0xcff
	.4byte	0x665
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x11
	.4byte	.LVL123
	.4byte	0xcf6
	.byte	0x11
	.4byte	.LVL124
	.4byte	0x6e0
	.byte	0x18
	.4byte	.LVL125
	.4byte	0xb84
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x239
	.byte	0xf
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x15e
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e0
	.byte	0x10
	.string	"rtc"
	.byte	0x1
	.2byte	0x15e
	.byte	0x25
	.4byte	0x2f8
	.4byte	.LLST41
	.byte	0x16
	.4byte	.LVL118
	.4byte	0xd0b
	.4byte	0x6d6
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x11
	.4byte	.LVL119
	.4byte	0xd17
	.byte	0
	.byte	0x1f
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x13f
	.byte	0xf
	.4byte	0xea
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x78c
	.byte	0x10
	.string	"tp"
	.byte	0x1
	.2byte	0x13f
	.byte	0x23
	.4byte	0x25c
	.4byte	.LLST5
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x141
	.byte	0xc
	.4byte	0xea
	.4byte	.LLST6
	.byte	0x20
	.string	"jdn"
	.byte	0x1
	.2byte	0x142
	.byte	0xc
	.4byte	0xea
	.byte	0x1a
	.4byte	0x827
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x14d
	.byte	0xb
	.4byte	0x77b
	.byte	0x1b
	.4byte	0x850
	.4byte	.LLST7
	.byte	0x1b
	.4byte	0x844
	.4byte	.LLST8
	.byte	0x1b
	.4byte	0x838
	.4byte	.LLST9
	.byte	0x21
	.4byte	.Ldebug_ranges0+0
	.byte	0x1d
	.4byte	0x85c
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LVL27
	.4byte	0xb2f
	.byte	0x11
	.4byte	.LVL29
	.4byte	0xae8
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL21
	.4byte	0x9c8
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x115
	.byte	0x13
	.4byte	0x25c
	.byte	0x1
	.4byte	0x821
	.byte	0x23
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x115
	.byte	0x2c
	.4byte	0x821
	.byte	0x23
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x115
	.byte	0x3e
	.4byte	0x25c
	.byte	0x24
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x117
	.byte	0xc
	.4byte	0xea
	.byte	0x20
	.string	"jdn"
	.byte	0x1
	.2byte	0x118
	.byte	0xc
	.4byte	0xea
	.byte	0x24
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x119
	.byte	0x9
	.4byte	0x2c
	.byte	0x24
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x11a
	.byte	0x9
	.4byte	0x2c
	.byte	0x20
	.string	"day"
	.byte	0x1
	.2byte	0x11b
	.byte	0x9
	.4byte	0x2c
	.byte	0x24
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11c
	.byte	0x9
	.4byte	0x2c
	.byte	0x20
	.string	"min"
	.byte	0x1
	.2byte	0x11d
	.byte	0x9
	.4byte	0x2c
	.byte	0x20
	.string	"sec"
	.byte	0x1
	.2byte	0x11e
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xf6
	.byte	0x25
	.4byte	.LASF57
	.byte	0x1
	.byte	0xfc
	.byte	0xf
	.4byte	0xea
	.byte	0x1
	.4byte	0x869
	.byte	0x26
	.4byte	.LASF37
	.byte	0x1
	.byte	0xfc
	.byte	0x28
	.4byte	0x2c
	.byte	0x26
	.4byte	.LASF36
	.byte	0x1
	.byte	0xfc
	.byte	0x32
	.4byte	0x2c
	.byte	0x27
	.string	"day"
	.byte	0x1
	.byte	0xfc
	.byte	0x3d
	.4byte	0x2c
	.byte	0x28
	.4byte	.LASF58
	.byte	0x1
	.byte	0xfe
	.byte	0xc
	.4byte	0xea
	.byte	0
	.byte	0x29
	.4byte	.LASF85
	.byte	0x1
	.byte	0xf0
	.byte	0xd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x990
	.byte	0x2a
	.string	"tim"
	.byte	0x1
	.byte	0xf0
	.byte	0x28
	.4byte	0x25c
	.byte	0x1
	.byte	0x5a
	.byte	0x2b
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf0
	.byte	0x45
	.4byte	0x4c0
	.byte	0x1
	.byte	0x5b
	.byte	0x2b
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf0
	.byte	0x53
	.4byte	0xb0
	.byte	0x1
	.byte	0x5c
	.byte	0x1c
	.4byte	0xabe
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0xf2
	.byte	0x1c
	.4byte	0x8d0
	.byte	0x1b
	.4byte	0xacf
	.4byte	.LLST29
	.byte	0x1d
	.4byte	0xadb
	.4byte	.LLST30
	.byte	0
	.byte	0x1c
	.4byte	0xabe
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0xf3
	.byte	0x1c
	.4byte	0x8f7
	.byte	0x1b
	.4byte	0xacf
	.4byte	.LLST31
	.byte	0x1d
	.4byte	0xadb
	.4byte	.LLST32
	.byte	0
	.byte	0x1c
	.4byte	0xabe
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0xf4
	.byte	0x1d
	.4byte	0x91e
	.byte	0x1b
	.4byte	0xacf
	.4byte	.LLST33
	.byte	0x1d
	.4byte	0xadb
	.4byte	.LLST34
	.byte	0
	.byte	0x1c
	.4byte	0xabe
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0xf6
	.byte	0x1d
	.4byte	0x945
	.byte	0x1b
	.4byte	0xacf
	.4byte	.LLST35
	.byte	0x1d
	.4byte	0xadb
	.4byte	.LLST36
	.byte	0
	.byte	0x1c
	.4byte	0xabe
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.byte	0xf7
	.byte	0x1c
	.4byte	0x96c
	.byte	0x1b
	.4byte	0xacf
	.4byte	.LLST37
	.byte	0x1d
	.4byte	0xadb
	.4byte	.LLST38
	.byte	0
	.byte	0x1e
	.4byte	0xabe
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0xf9
	.byte	0x1d
	.byte	0x1b
	.4byte	0xacf
	.4byte	.LLST39
	.byte	0x1d
	.4byte	0xadb
	.4byte	.LLST40
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF65
	.byte	0x1
	.byte	0xe5
	.byte	0xd
	.byte	0x1
	.4byte	0x9c2
	.byte	0x26
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe5
	.byte	0x2f
	.4byte	0x690
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe5
	.byte	0x4a
	.4byte	0x9c2
	.byte	0x26
	.4byte	.LASF59
	.byte	0x1
	.byte	0xe5
	.byte	0x58
	.4byte	0xb0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x17d
	.byte	0x2d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb8
	.byte	0xc
	.4byte	0x2c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xa14
	.byte	0x2e
	.4byte	.LASF63
	.byte	0x1
	.byte	0xb8
	.byte	0x25
	.4byte	0x25c
	.4byte	.LLST3
	.byte	0x2f
	.4byte	.LASF86
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.byte	0x30
	.4byte	.LASF64
	.byte	0x1
	.byte	0xbf
	.byte	0xd
	.4byte	0xd2
	.4byte	.LLST4
	.byte	0x11
	.4byte	.LVL13
	.4byte	0xb2f
	.byte	0
	.byte	0x2c
	.4byte	.LASF66
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.byte	0x1
	.4byte	0xa8e
	.byte	0x26
	.4byte	.LASF58
	.byte	0x1
	.byte	0x50
	.byte	0x27
	.4byte	0xea
	.byte	0x26
	.4byte	.LASF37
	.byte	0x1
	.byte	0x50
	.byte	0x32
	.4byte	0xa8e
	.byte	0x26
	.4byte	.LASF36
	.byte	0x1
	.byte	0x50
	.byte	0x3d
	.4byte	0xa8e
	.byte	0x27
	.string	"day"
	.byte	0x1
	.byte	0x51
	.byte	0x25
	.4byte	0xa8e
	.byte	0x28
	.4byte	.LASF67
	.byte	0x1
	.byte	0x58
	.byte	0x9
	.4byte	0x2c
	.byte	0x28
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5d
	.byte	0xd
	.4byte	0xb0
	.byte	0x31
	.string	"tmp"
	.byte	0x1
	.byte	0x5e
	.byte	0x9
	.4byte	0x2c
	.byte	0x31
	.string	"min"
	.byte	0x1
	.byte	0x7c
	.byte	0x9
	.4byte	0x2c
	.byte	0x31
	.string	"max"
	.byte	0x1
	.byte	0x7d
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x48
	.byte	0x1d
	.4byte	0x46
	.byte	0x3
	.4byte	0xabe
	.byte	0x26
	.4byte	.LASF67
	.byte	0x1
	.byte	0x48
	.byte	0x2e
	.4byte	0x2c
	.byte	0x28
	.4byte	.LASF70
	.byte	0x1
	.byte	0x4a
	.byte	0x10
	.4byte	0x46
	.byte	0
	.byte	0x25
	.4byte	.LASF71
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	0xae8
	.byte	0x26
	.4byte	.LASF67
	.byte	0x1
	.byte	0x40
	.byte	0x2e
	.4byte	0x46
	.byte	0x28
	.4byte	.LASF70
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0x2d
	.4byte	.LASF72
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x2c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb2f
	.byte	0x2e
	.4byte	.LASF36
	.byte	0x1
	.byte	0x35
	.byte	0x26
	.4byte	0x2c
	.4byte	.LLST0
	.byte	0x2b
	.4byte	.LASF68
	.byte	0x1
	.byte	0x35
	.byte	0x35
	.4byte	0xb0
	.byte	0x1
	.byte	0x5b
	.byte	0xb
	.4byte	.LASF73
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x25
	.4byte	.LASF74
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	0xb4d
	.byte	0x26
	.4byte	.LASF37
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.4byte	0x2c
	.byte	0
	.byte	0x32
	.4byte	0xb2f
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb84
	.byte	0x1b
	.4byte	0xb40
	.4byte	.LLST1
	.byte	0x1e
	.4byte	0xb2f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1b
	.4byte	0xb40
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	0x78c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0xcde
	.byte	0x1b
	.4byte	0x79e
	.4byte	.LLST11
	.byte	0x1b
	.4byte	0x7ab
	.4byte	.LLST12
	.byte	0x1d
	.4byte	0x7b8
	.4byte	.LLST13
	.byte	0x1d
	.4byte	0x7c5
	.4byte	.LLST14
	.byte	0x33
	.4byte	0x7d2
	.byte	0x1d
	.4byte	0x7df
	.4byte	.LLST15
	.byte	0x1d
	.4byte	0x7ec
	.4byte	.LLST16
	.byte	0x1d
	.4byte	0x7f9
	.4byte	.LLST17
	.byte	0x1d
	.4byte	0x806
	.4byte	.LLST18
	.byte	0x1d
	.4byte	0x813
	.4byte	.LLST19
	.byte	0x1a
	.4byte	0xa14
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x132
	.byte	0x5
	.4byte	0xcc2
	.byte	0x1b
	.4byte	0xa45
	.4byte	.LLST20
	.byte	0x1b
	.4byte	0xa39
	.4byte	.LLST21
	.byte	0x1b
	.4byte	0xa2d
	.4byte	.LLST22
	.byte	0x1b
	.4byte	0xa21
	.4byte	.LLST23
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1d
	.4byte	0xa51
	.4byte	.LLST24
	.byte	0x1d
	.4byte	0xa5d
	.4byte	.LLST25
	.byte	0x1d
	.4byte	0xa69
	.4byte	.LLST26
	.byte	0x1d
	.4byte	0xa75
	.4byte	.LLST27
	.byte	0x1d
	.4byte	0xa81
	.4byte	.LLST28
	.byte	0x11
	.4byte	.LVL56
	.4byte	0xd23
	.byte	0x16
	.4byte	.LVL62
	.4byte	0xb2f
	.4byte	0xc76
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x87
	.byte	0xb2,0xf
	.byte	0
	.byte	0x16
	.4byte	.LVL71
	.4byte	0xae8
	.4byte	0xc93
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x16
	.4byte	.LVL74
	.4byte	0xae8
	.4byte	0xcb0
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x18
	.4byte	.LVL79
	.4byte	0xae8
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL42
	.4byte	0xd23
	.byte	0x11
	.4byte	.LVL47
	.4byte	0xd23
	.byte	0x11
	.4byte	.LVL53
	.4byte	0xd23
	.byte	0
	.byte	0x34
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x7
	.byte	0x94
	.byte	0x6
	.byte	0x34
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0xf
	.byte	0xa
	.byte	0x35
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x34
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.byte	0x34
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x7
	.byte	0x91
	.byte	0x7
	.byte	0x34
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0xd
	.byte	0x6
	.byte	0x35
	.4byte	.LASF81
	.4byte	.LASF81
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0xb
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2f
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
	.byte	0x17
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0x35
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
.LLST67:
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL175
	.4byte	.LVL176-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176-1
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL178
	.4byte	.LVL183
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL175
	.4byte	.LVL176-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL176-1
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL176
	.4byte	.LVL177-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL179
	.4byte	.LVL180-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL180-1
	.4byte	.LVL180
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL174
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL165
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL160
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL162-1
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL165
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121-1
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL121-1
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL126
	.4byte	.LVL153
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LFE20
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL126
	.4byte	.LVL156
	.2byte	0x4
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LFE20
	.2byte	0x4
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL126
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL159
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0xd
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x78
	.byte	0x40
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0xc
	.byte	0x78
	.byte	0x40
	.byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL138
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x78
	.byte	0x44
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0xc
	.byte	0x78
	.byte	0x44
	.byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x78
	.byte	0x48
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0xc
	.byte	0x78
	.byte	0x48
	.byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x6
	.byte	0x78
	.byte	0x4c
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0xe
	.byte	0x78
	.byte	0x4c
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.byte	0x7c
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x7
	.byte	0x78
	.byte	0x50
	.byte	0x6
	.byte	0x8
	.byte	0x46
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL27-1
	.2byte	0x2
	.byte	0x82
	.byte	0xc
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL27-1
	.2byte	0x2
	.byte	0x82
	.byte	0x10
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0x7a
	.byte	0xec,0xe
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x5d
	.byte	0x93
	.byte	0x4
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x7b
	.byte	0x1
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x7b
	.byte	0x2
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x7b
	.byte	0x3
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x7b
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL19
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
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x6a
	.byte	0x93
	.byte	0x4
	.byte	0x69
	.byte	0x93
	.byte	0x4
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL45
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x88
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x23
	.byte	0x8
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x23
	.byte	0x4
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57
	.4byte	.LVL79
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3017
	.byte	0
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3017
	.byte	0
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL57
	.4byte	.LVL79
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3008
	.byte	0
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3008
	.byte	0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL79
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3003
	.byte	0
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3003
	.byte	0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x6
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL70
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL63
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL71-1
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.4byte	.LVL72
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74-1
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.4byte	.LVL75
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL79-1
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x30
	.byte	0x2e
	.byte	0x23
	.byte	0xed,0x2
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL69
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL69
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL87
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x6a
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	0
	.4byte	0
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB15
	.4byte	.LFE15
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"priv"
.LASF53:
	.string	"result"
.LASF54:
	.string	"epoch"
.LASF80:
	.string	"__udivdi3"
.LASF23:
	.string	"tm_mday"
.LASF61:
	.string	"__mktime"
.LASF18:
	.string	"uint64_t"
.LASF70:
	.string	"temp"
.LASF3:
	.string	"short int"
.LASF47:
	.string	"hosal_rtc_set_count"
.LASF71:
	.string	"__bcd_to_int"
.LASF35:
	.string	"date"
.LASF74:
	.string	"clock_isleapyear"
.LASF84:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF26:
	.string	"tm_wday"
.LASF10:
	.string	"long long int"
.LASF69:
	.string	"__int_to_bcd"
.LASF50:
	.string	"hosal_rtc_get_time"
.LASF55:
	.string	"hour"
.LASF5:
	.string	"__uint16_t"
.LASF37:
	.string	"year"
.LASF79:
	.string	"bl_rtc_init"
.LASF67:
	.string	"value"
.LASF42:
	.string	"g_noleap_daysbeforemonth"
.LASF68:
	.string	"leapyear"
.LASF19:
	.string	"time_t"
.LASF15:
	.string	"uint8_t"
.LASF81:
	.string	"__divdi3"
.LASF56:
	.string	"__gmtime_r"
.LASF32:
	.string	"config"
.LASF85:
	.string	"__rtctime_to_tm"
.LASF12:
	.string	"__int_least64_t"
.LASF49:
	.string	"hosal_rtc_set_time"
.LASF22:
	.string	"tm_hour"
.LASF24:
	.string	"tm_mon"
.LASF29:
	.string	"format"
.LASF38:
	.string	"hosal_rtc_time_t"
.LASF77:
	.string	"memset"
.LASF8:
	.string	"long int"
.LASF9:
	.string	"long unsigned int"
.LASF4:
	.string	"__uint8_t"
.LASF52:
	.string	"timer"
.LASF64:
	.string	"leap"
.LASF83:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_rtc.c"
.LASF73:
	.string	"retval"
.LASF2:
	.string	"unsigned char"
.LASF62:
	.string	"__check_tm_ok"
.LASF86:
	.string	"error_time"
.LASF1:
	.string	"signed char"
.LASF25:
	.string	"tm_year"
.LASF0:
	.string	"long long unsigned int"
.LASF59:
	.string	"is_bcd"
.LASF13:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF66:
	.string	"clock_utc2calendar"
.LASF65:
	.string	"__tm_to_rtctime"
.LASF48:
	.string	"time"
.LASF43:
	.string	"hosal_rtc_finalize"
.LASF6:
	.string	"short unsigned int"
.LASF14:
	.string	"char"
.LASF51:
	.string	"hosal_rtc_init"
.LASF57:
	.string	"__clock_calendar2utc"
.LASF72:
	.string	"clock_daysbeforemonth"
.LASF17:
	.string	"int32_t"
.LASF44:
	.string	"hosal_rtc_get_count"
.LASF36:
	.string	"month"
.LASF63:
	.string	"rtctime"
.LASF31:
	.string	"port"
.LASF11:
	.string	"__uint64_t"
.LASF21:
	.string	"tm_min"
.LASF46:
	.string	"time_stamp_ms"
.LASF76:
	.string	"bl_rtc_get_timestamp_ms"
.LASF28:
	.string	"tm_isdst"
.LASF27:
	.string	"tm_yday"
.LASF34:
	.string	"hosal_rtc_dev_t"
.LASF75:
	.string	"vPortFree"
.LASF7:
	.string	"__int32_t"
.LASF60:
	.string	"rtc_time"
.LASF45:
	.string	"time_stamp"
.LASF39:
	.string	"s_rtc_base"
.LASF82:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF41:
	.string	"noleap_year"
.LASF40:
	.string	"leap_year"
.LASF20:
	.string	"tm_sec"
.LASF30:
	.string	"hosal_rtc_config_t"
.LASF78:
	.string	"pvPortMalloc"
.LASF58:
	.string	"days"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
