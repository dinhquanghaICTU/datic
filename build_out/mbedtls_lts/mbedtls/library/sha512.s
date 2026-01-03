	.file	"sha512.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_sha512_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_init
	.type	mbedtls_sha512_init, @function
mbedtls_sha512_init:
.LFB2:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha512.c"
	.loc 1 69 1
	.cfi_startproc
.LVL0:
	.loc 1 70 5
	.loc 1 70 10
	.loc 1 70 17
	.loc 1 72 5
	.loc 1 69 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 73 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 72 5
	li	a2,216
	li	a1,0
	.loc 1 73 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 72 5
	tail	memset
.LVL1:
	.cfi_endproc
.LFE2:
	.size	mbedtls_sha512_init, .-mbedtls_sha512_init
	.section	.text.mbedtls_sha512_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_free
	.type	mbedtls_sha512_free, @function
mbedtls_sha512_free:
.LFB3:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 77 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 77 7
	beq	a0,zero,.L3
	.loc 1 80 5 is_stmt 1
	.loc 1 81 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 80 5
	li	a1,216
	.loc 1 81 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 80 5
	tail	mbedtls_platform_zeroize
.LVL3:
.L3:
	.cfi_restore_state
	.loc 1 81 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	mbedtls_sha512_free, .-mbedtls_sha512_free
	.section	.text.mbedtls_sha512_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_clone
	.type	mbedtls_sha512_clone, @function
mbedtls_sha512_clone:
.LFB4:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 86 5
	.loc 1 86 10
	.loc 1 86 17
	.loc 1 87 5
	.loc 1 87 10
	.loc 1 87 17
	.loc 1 89 5
	.loc 1 85 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 89 10
	li	a2,216
	call	memcpy
.LVL5:
	.loc 1 90 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	mbedtls_sha512_clone, .-mbedtls_sha512_clone
	.section	.text.mbedtls_sha512_starts_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_starts_ret
	.type	mbedtls_sha512_starts_ret, @function
mbedtls_sha512_starts_ret:
.LFB5:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 97 5
	.loc 1 97 10
	.loc 1 97 17
	.loc 1 99 5
	.loc 1 99 10
	.loc 1 99 17
	.loc 1 104 5
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 104 19
	li	a5,0
	li	a6,0
	sw	a5,0(a0)
	sw	a6,4(a0)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 19 is_stmt 0
	sw	a5,8(a0)
	sw	a6,12(a0)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 7 is_stmt 0
	bne	a1,zero,.L9
	.loc 1 110 9 is_stmt 1
	.loc 1 110 23 is_stmt 0
	lui	a5,%hi(.LC0)
	lw	a4,%lo(.LC0)(a5)
	lw	a5,%lo(.LC0+4)(a5)
	sw	a4,16(a0)
	sw	a5,20(a0)
	.loc 1 111 9 is_stmt 1
	.loc 1 111 23 is_stmt 0
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
	sw	a4,24(a0)
	sw	a5,28(a0)
	.loc 1 112 9 is_stmt 1
	.loc 1 112 23 is_stmt 0
	lui	a5,%hi(.LC2)
	lw	a4,%lo(.LC2)(a5)
	lw	a5,%lo(.LC2+4)(a5)
	sw	a4,32(a0)
	sw	a5,36(a0)
	.loc 1 113 9 is_stmt 1
	.loc 1 113 23 is_stmt 0
	lui	a5,%hi(.LC3)
	lw	a4,%lo(.LC3)(a5)
	lw	a5,%lo(.LC3+4)(a5)
	sw	a4,40(a0)
	sw	a5,44(a0)
	.loc 1 114 9 is_stmt 1
	.loc 1 114 23 is_stmt 0
	lui	a5,%hi(.LC4)
	lw	a4,%lo(.LC4)(a5)
	lw	a5,%lo(.LC4+4)(a5)
	sw	a4,48(a0)
	sw	a5,52(a0)
	.loc 1 115 9 is_stmt 1
	.loc 1 115 23 is_stmt 0
	lui	a5,%hi(.LC5)
	lw	a4,%lo(.LC5)(a5)
	lw	a5,%lo(.LC5+4)(a5)
	sw	a4,56(a0)
	sw	a5,60(a0)
	.loc 1 116 9 is_stmt 1
	.loc 1 116 23 is_stmt 0
	lui	a5,%hi(.LC6)
	lw	a4,%lo(.LC6)(a5)
	lw	a5,%lo(.LC6+4)(a5)
	sw	a4,64(a0)
	sw	a5,68(a0)
	.loc 1 117 9 is_stmt 1
	.loc 1 117 23 is_stmt 0
	lui	a5,%hi(.LC7)
	lw	a4,%lo(.LC7)(a5)
	lw	a5,%lo(.LC7+4)(a5)
.L12:
	.loc 1 132 23
	sw	a4,72(a0)
	sw	a5,76(a0)
	.loc 1 137 5 is_stmt 1
	.loc 1 137 16 is_stmt 0
	sw	a1,208(a0)
	.loc 1 140 5 is_stmt 1
	.loc 1 141 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
.LVL7:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L9:
	.cfi_restore_state
	.loc 1 125 9 is_stmt 1
	.loc 1 125 23 is_stmt 0
	lui	a5,%hi(.LC8)
	lw	a4,%lo(.LC8)(a5)
	lw	a5,%lo(.LC8+4)(a5)
	sw	a4,16(a0)
	sw	a5,20(a0)
	.loc 1 126 9 is_stmt 1
	.loc 1 126 23 is_stmt 0
	lui	a5,%hi(.LC9)
	lw	a4,%lo(.LC9)(a5)
	lw	a5,%lo(.LC9+4)(a5)
	sw	a4,24(a0)
	sw	a5,28(a0)
	.loc 1 127 9 is_stmt 1
	.loc 1 127 23 is_stmt 0
	lui	a5,%hi(.LC10)
	lw	a4,%lo(.LC10)(a5)
	lw	a5,%lo(.LC10+4)(a5)
	sw	a4,32(a0)
	sw	a5,36(a0)
	.loc 1 128 9 is_stmt 1
	.loc 1 128 23 is_stmt 0
	lui	a5,%hi(.LC11)
	lw	a4,%lo(.LC11)(a5)
	lw	a5,%lo(.LC11+4)(a5)
	sw	a4,40(a0)
	sw	a5,44(a0)
	.loc 1 129 9 is_stmt 1
	.loc 1 129 23 is_stmt 0
	lui	a5,%hi(.LC12)
	lw	a4,%lo(.LC12)(a5)
	lw	a5,%lo(.LC12+4)(a5)
	sw	a4,48(a0)
	sw	a5,52(a0)
	.loc 1 130 9 is_stmt 1
	.loc 1 130 23 is_stmt 0
	lui	a5,%hi(.LC13)
	lw	a4,%lo(.LC13)(a5)
	lw	a5,%lo(.LC13+4)(a5)
	sw	a4,56(a0)
	sw	a5,60(a0)
	.loc 1 131 9 is_stmt 1
	.loc 1 131 23 is_stmt 0
	lui	a5,%hi(.LC14)
	lw	a4,%lo(.LC14)(a5)
	lw	a5,%lo(.LC14+4)(a5)
	sw	a4,64(a0)
	sw	a5,68(a0)
	.loc 1 132 9 is_stmt 1
	.loc 1 132 23 is_stmt 0
	lui	a5,%hi(.LC15)
	lw	a4,%lo(.LC15)(a5)
	lw	a5,%lo(.LC15+4)(a5)
	j	.L12
	.cfi_endproc
.LFE5:
	.size	mbedtls_sha512_starts_ret, .-mbedtls_sha512_starts_ret
	.section	.text.mbedtls_sha512_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_starts
	.type	mbedtls_sha512_starts, @function
mbedtls_sha512_starts:
.LFB6:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 147 5
	.loc 1 146 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 148 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 147 5
	tail	mbedtls_sha512_starts_ret
.LVL10:
	.cfi_endproc
.LFE6:
	.size	mbedtls_sha512_starts, .-mbedtls_sha512_starts
	.section	.text.mbedtls_internal_sha512_process,"ax",@progbits
	.align	1
	.globl	mbedtls_internal_sha512_process
	.type	mbedtls_internal_sha512_process, @function
mbedtls_internal_sha512_process:
.LFB7:
	.loc 1 202 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 203 5
	.loc 1 204 5
	.loc 1 210 5
	.loc 1 210 10
	.loc 1 210 17
	.loc 1 211 5
	.loc 1 211 10
	.loc 1 211 17
	.loc 1 233 5
	.loc 1 233 17
	.loc 1 202 1 is_stmt 0
	addi	sp,sp,-800
	.cfi_def_cfa_offset 800
	sw	s0,792(sp)
	.cfi_offset 8, -8
	addi	s0,sp,800
	.cfi_def_cfa 8, 0
	sw	s9,756(sp)
	sw	s10,752(sp)
	sw	s11,748(sp)
	sw	ra,796(sp)
	sw	s1,788(sp)
	sw	s2,784(sp)
	sw	s3,780(sp)
	sw	s4,776(sp)
	sw	s5,772(sp)
	sw	s6,768(sp)
	sw	s7,764(sp)
	sw	s8,760(sp)
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	addi	s10,a0,16
	addi	s9,s0,-784
	addi	s11,a0,80
	.loc 1 202 1
	mv	a4,s9
	mv	a5,s10
.LVL12:
.L16:
	.loc 1 234 9 is_stmt 1 discriminator 3
	.loc 1 234 20 is_stmt 0 discriminator 3
	lw	a2,0(a5)
	lw	a3,4(a5)
	.loc 1 233 5 discriminator 3
	addi	a5,a5,8
	.loc 1 234 20 discriminator 3
	sw	a2,656(a4)
	sw	a3,660(a4)
	.loc 1 233 24 is_stmt 1 discriminator 3
	.loc 1 233 17 discriminator 3
	.loc 1 233 5 is_stmt 0 discriminator 3
	addi	a4,a4,8
	bne	s11,a5,.L16
	addi	a0,a1,128
.LVL13:
	.loc 1 233 5
	mv	a3,s9
.LVL14:
.L17:
	.loc 1 261 9 is_stmt 1 discriminator 3
	.loc 1 261 26 is_stmt 0 discriminator 3
	lbu	a5,0(a1)
	.loc 1 261 71 discriminator 3
	lbu	a4,1(a1)
	.loc 1 261 119 discriminator 3
	lbu	a2,2(a1)
	.loc 1 261 59 discriminator 3
	slli	a5,a5,24
	.loc 1 261 107 discriminator 3
	slli	a4,a4,16
	.loc 1 261 354 discriminator 3
	or	a5,a5,a4
	.loc 1 261 155 discriminator 3
	slli	a2,a2,8
	.loc 1 261 354 discriminator 3
	or	a5,a5,a2
	.loc 1 261 215 discriminator 3
	lbu	a2,4(a1)
	.loc 1 261 358 discriminator 3
	lbu	a4,7(a1)
	.loc 1 261 167 discriminator 3
	lbu	a6,3(a1)
	.loc 1 261 251 discriminator 3
	slli	a2,a2,24
	.loc 1 261 354 discriminator 3
	or	a4,a4,a2
	.loc 1 261 263 discriminator 3
	lbu	a2,5(a1)
	.loc 1 261 354 discriminator 3
	or	a5,a5,a6
	sw	a5,20(a3)
	.loc 1 259 25 is_stmt 1 discriminator 3
	.loc 1 259 17 discriminator 3
	.loc 1 261 299 is_stmt 0 discriminator 3
	slli	a2,a2,16
	.loc 1 261 354 discriminator 3
	or	a4,a4,a2
	.loc 1 261 311 discriminator 3
	lbu	a2,6(a1)
	.loc 1 259 5 discriminator 3
	addi	a1,a1,8
	addi	a3,a3,8
	.loc 1 261 347 discriminator 3
	slli	a2,a2,8
	.loc 1 261 354 discriminator 3
	or	a4,a4,a2
	sw	a4,8(a3)
	.loc 1 259 5 discriminator 3
	bne	a0,a1,.L17
	addi	t1,s9,512
	.loc 1 259 5
	mv	a3,s9
.LVL15:
.L18:
	.loc 1 266 9 is_stmt 1 discriminator 2
	.loc 1 266 34 is_stmt 0 discriminator 2
	lw	a6,132(a3)
	lw	a0,128(a3)
	.loc 1 267 28 discriminator 2
	lw	t4,28(a3)
	.loc 1 266 55 discriminator 2
	slli	a4,a6,13
	srli	a5,a0,19
	or	a4,a4,a5
	slli	a1,a0,13
	srli	a5,a6,19
	.loc 1 266 126 discriminator 2
	slli	a2,a6,3
	.loc 1 266 55 discriminator 2
	or	a1,a1,a5
	.loc 1 266 126 discriminator 2
	srli	a5,a0,29
	or	a5,a5,a2
	slli	t5,a0,3
	srli	a2,a6,29
	or	a2,a2,t5
	.loc 1 266 92 discriminator 2
	xor	a1,a1,a5
	.loc 1 266 183 discriminator 2
	srli	a0,a0,6
	slli	a5,a6,26
	or	a0,a5,a0
	.loc 1 266 92 discriminator 2
	xor	a4,a4,a2
	.loc 1 267 187 discriminator 2
	lw	a5,88(a3)
	lw	a2,16(a3)
	.loc 1 266 183 discriminator 2
	srli	a6,a6,6
	.loc 1 266 163 discriminator 2
	xor	a4,a4,a0
	xor	a1,a1,a6
	.loc 1 267 187 discriminator 2
	lw	a0,92(a3)
	lw	a6,20(a3)
	.loc 1 267 28 discriminator 2
	lw	t3,24(a3)
	.loc 1 267 187 discriminator 2
	add	a2,a5,a2
	add	a0,a0,a6
	sltu	a5,a2,a5
	add	t5,a4,a2
	add	a5,a5,a0
	add	a1,a1,a5
	.loc 1 267 49 discriminator 2
	srli	a2,t3,1
	.loc 1 267 187 discriminator 2
	sltu	a4,t5,a4
	.loc 1 267 49 discriminator 2
	slli	a5,t4,31
	.loc 1 267 187 discriminator 2
	add	a4,a4,a1
	.loc 1 267 49 discriminator 2
	or	a5,a5,a2
	srli	a6,t4,1
	.loc 1 267 120 discriminator 2
	srli	a1,t3,8
	.loc 1 267 49 discriminator 2
	slli	a0,t3,31
	.loc 1 267 120 discriminator 2
	slli	a2,t4,24
	.loc 1 267 49 discriminator 2
	or	a0,a0,a6
	.loc 1 267 120 discriminator 2
	or	a2,a2,a1
	slli	a6,t3,24
	srli	a1,t4,8
	or	a6,a6,a1
	.loc 1 267 86 discriminator 2
	xor	a5,a5,a2
	.loc 1 267 178 discriminator 2
	slli	a1,t4,25
	srli	a2,t3,7
	or	a2,a1,a2
	.loc 1 267 86 discriminator 2
	xor	a6,a0,a6
	.loc 1 267 157 discriminator 2
	xor	a5,a5,a2
	.loc 1 267 178 discriminator 2
	srli	a0,t4,7
	.loc 1 267 187 discriminator 2
	add	a5,t5,a5
	.loc 1 267 157 discriminator 2
	xor	a0,a6,a0
	.loc 1 267 187 discriminator 2
	sltu	a2,a5,t5
	add	a0,a4,a0
	add	a4,a2,a0
	.loc 1 266 20 discriminator 2
	sw	a5,144(a3)
	sw	a4,148(a3)
	.loc 1 264 20 is_stmt 1 discriminator 2
	.loc 1 264 12 discriminator 2
	.loc 1 264 5 is_stmt 0 discriminator 2
	addi	a3,a3,8
	bne	t1,a3,.L18
	lw	t0,-72(s0)
	lw	a6,-68(s0)
	lw	t4,-96(s0)
	lw	a4,-92(s0)
	lw	t3,-80(s0)
	lw	s1,-76(s0)
	lw	s4,-88(s0)
	lw	ra,-84(s0)
	lw	a1,-128(s0)
	lw	t2,-124(s0)
	lw	a2,-120(s0)
	lw	t1,-116(s0)
	lw	a3,-112(s0)
	lw	a7,-108(s0)
	lw	a5,-104(s0)
	lw	s2,-100(s0)
	lui	s5,%hi(.LANCHOR0)
	addi	a0,s9,640
	addi	s5,s5,%lo(.LANCHOR0)
	sw	a0,-788(s0)
	.loc 1 264 5
	mv	s6,s9
.L19:
	.loc 1 271 5 is_stmt 1 discriminator 1
	.loc 1 273 9 discriminator 1
	.loc 1 273 14 discriminator 1
	.loc 1 273 72 is_stmt 0 discriminator 1
	srli	a0,t4,14
	slli	t5,a4,18
	or	t5,t5,a0
	slli	t6,t4,18
	srli	a0,a4,14
	or	t6,t6,a0
	.loc 1 273 135 discriminator 1
	slli	s3,a4,14
	srli	a0,t4,18
	or	s3,s3,a0
	srli	s7,a4,18
	slli	a0,t4,14
	or	a0,a0,s7
	.loc 1 273 105 discriminator 1
	xor	t5,t5,s3
	xor	t6,t6,a0
	.loc 1 273 198 discriminator 1
	srli	s3,t4,9
	slli	a0,a4,23
	or	a0,s3,a0
	slli	s7,t4,23
	srli	s3,a4,9
	or	s3,s3,s7
	.loc 1 273 168 discriminator 1
	xor	t6,t6,a0
	.loc 1 273 315 discriminator 1
	lw	s7,0(s5)
	lw	a0,16(s6)
	lw	s8,20(s6)
	.loc 1 273 168 discriminator 1
	xor	t5,t5,s3
	.loc 1 273 315 discriminator 1
	lw	s3,4(s5)
	add	a0,s7,a0
	sltu	s7,a0,s7
	add	s3,s3,s8
	add	a0,t5,a0
	add	s7,s7,s3
	add	s7,t6,s7
	.loc 1 273 286 discriminator 1
	xor	s3,t3,s4
	.loc 1 273 315 discriminator 1
	sltu	t5,a0,t5
	add	t5,t5,s7
	.loc 1 273 268 discriminator 1
	and	s3,s3,t4
	.loc 1 273 286 discriminator 1
	xor	s7,s1,ra
	.loc 1 273 268 discriminator 1
	and	s7,s7,a4
	.loc 1 273 250 discriminator 1
	xor	s3,s3,t3
	xor	s7,s7,s1
	.loc 1 273 315 discriminator 1
	add	s3,a0,s3
	sltu	a0,s3,a0
	add	t5,t5,s7
	add	t5,a0,t5
	add	a0,s3,t0
	add	a6,t5,a6
	sltu	s3,a0,s3
	.loc 1 273 641 discriminator 1
	add	s7,a5,a0
	.loc 1 273 315 discriminator 1
	add	s3,s3,a6
	.loc 1 273 331 is_stmt 1 discriminator 1
	.loc 1 273 628 discriminator 1
	.loc 1 273 641 is_stmt 0 discriminator 1
	add	s2,s2,s3
	.loc 1 273 374 discriminator 1
	srli	a6,a1,28
	.loc 1 273 641 discriminator 1
	sltu	a5,s7,a5
	.loc 1 273 374 discriminator 1
	slli	t5,t2,4
	.loc 1 273 641 discriminator 1
	add	a5,a5,s2
	.loc 1 273 657 is_stmt 1 discriminator 1
	.loc 1 273 374 is_stmt 0 discriminator 1
	or	t5,t5,a6
	slli	s2,a1,4
	srli	a6,t2,28
	or	s2,s2,a6
	.loc 1 273 437 discriminator 1
	srli	t6,a1,2
	slli	a6,t2,30
	or	t6,t6,a6
	slli	t0,a1,30
	srli	a6,t2,2
	or	a6,a6,t0
	.loc 1 273 407 discriminator 1
	xor	t5,t5,a6
	xor	s2,s2,t6
	.loc 1 273 500 discriminator 1
	slli	a6,t2,25
	srli	t6,a1,7
	or	t6,t6,a6
	slli	t0,a1,25
	srli	a6,t2,7
	or	a6,a6,t0
	.loc 1 273 470 discriminator 1
	xor	s2,s2,t6
	.loc 1 273 607 discriminator 1
	or	t6,a1,a2
	.loc 1 273 470 discriminator 1
	xor	t5,t5,a6
	.loc 1 273 607 discriminator 1
	or	s8,t2,t1
	.loc 1 273 589 discriminator 1
	and	t6,t6,a3
	.loc 1 273 553 discriminator 1
	and	a6,a1,a2
	.loc 1 273 589 discriminator 1
	and	s8,s8,a7
	.loc 1 273 553 discriminator 1
	and	t0,t2,t1
	.loc 1 273 571 discriminator 1
	or	a6,t6,a6
	.loc 1 273 534 discriminator 1
	add	a6,t5,a6
	.loc 1 273 571 discriminator 1
	or	t0,s8,t0
	.loc 1 273 534 discriminator 1
	add	t0,s2,t0
	sltu	t5,a6,t5
	.loc 1 273 684 discriminator 1
	add	a0,a6,a0
	.loc 1 273 534 discriminator 1
	add	t5,t5,t0
	.loc 1 273 684 discriminator 1
	sltu	a6,a0,a6
	add	s3,t5,s3
	add	t6,a6,s3
	.loc 1 273 706 is_stmt 1 discriminator 1
	.loc 1 274 68 discriminator 1
	.loc 1 275 9 discriminator 1
	.loc 1 275 14 discriminator 1
	.loc 1 275 315 is_stmt 0 discriminator 1
	lw	t5,24(s6)
	lw	a6,8(s5)
	lw	t0,28(s6)
	lw	s8,12(s5)
	add	t5,a6,t5
	sltu	a6,t5,a6
	add	s8,s8,t0
	add	a6,a6,s8
	add	t3,t5,t3
	sltu	t5,t3,t5
	add	s1,a6,s1
	add	s1,t5,s1
	.loc 1 275 286 discriminator 1
	xor	t5,t4,s4
	xor	t0,a4,ra
	.loc 1 275 268 discriminator 1
	and	t5,t5,s7
	and	t0,t0,a5
	.loc 1 275 250 discriminator 1
	xor	t5,t5,s4
	xor	t0,t0,ra
	.loc 1 275 315 discriminator 1
	add	t5,t3,t5
	add	s1,s1,t0
	sltu	t3,t5,t3
	.loc 1 275 72 discriminator 1
	srli	a6,s7,14
	.loc 1 275 315 discriminator 1
	add	t3,t3,s1
	.loc 1 275 72 discriminator 1
	slli	s1,a5,18
	or	s1,s1,a6
	slli	s8,s7,18
	srli	a6,a5,14
	or	s8,s8,a6
	.loc 1 275 135 discriminator 1
	slli	t0,a5,14
	srli	a6,s7,18
	or	t0,t0,a6
	srli	s2,a5,18
	slli	a6,s7,14
	or	a6,a6,s2
	.loc 1 275 105 discriminator 1
	xor	s1,s1,t0
	xor	s8,s8,a6
	.loc 1 275 198 discriminator 1
	srli	t0,s7,9
	slli	a6,a5,23
	or	t0,t0,a6
	slli	s2,s7,23
	srli	a6,a5,9
	or	a6,a6,s2
	.loc 1 275 168 discriminator 1
	xor	s1,s1,a6
	xor	s8,s8,t0
	.loc 1 275 315 discriminator 1
	add	s1,t5,s1
	add	t3,t3,s8
	sltu	t5,s1,t5
	add	t5,t5,t3
	.loc 1 275 331 is_stmt 1 discriminator 1
	.loc 1 275 628 discriminator 1
	.loc 1 275 374 is_stmt 0 discriminator 1
	srli	a6,a0,28
	.loc 1 275 641 discriminator 1
	add	t3,a3,s1
	.loc 1 275 374 discriminator 1
	slli	s8,t6,4
	.loc 1 275 641 discriminator 1
	add	a7,a7,t5
	sltu	a3,t3,a3
	.loc 1 275 374 discriminator 1
	or	s8,s8,a6
	slli	t0,a0,4
	srli	a6,t6,28
	.loc 1 275 641 discriminator 1
	add	a3,a3,a7
	.loc 1 275 657 is_stmt 1 discriminator 1
	.loc 1 275 374 is_stmt 0 discriminator 1
	or	t0,t0,a6
	.loc 1 275 437 discriminator 1
	srli	a7,a0,2
	slli	a6,t6,30
	or	a7,a7,a6
	slli	s2,a0,30
	srli	a6,t6,2
	or	a6,a6,s2
	.loc 1 275 407 discriminator 1
	xor	s8,s8,a6
	xor	t0,t0,a7
	.loc 1 275 500 discriminator 1
	slli	a6,t6,25
	srli	a7,a0,7
	or	a7,a7,a6
	slli	s2,a0,25
	srli	a6,t6,7
	or	a6,a6,s2
	.loc 1 275 470 discriminator 1
	xor	a6,s8,a6
	.loc 1 275 607 discriminator 1
	or	s8,a1,a0
	.loc 1 275 470 discriminator 1
	xor	t0,t0,a7
	.loc 1 275 607 discriminator 1
	or	s3,t2,t6
	.loc 1 275 589 discriminator 1
	and	s8,s8,a2
	.loc 1 275 553 discriminator 1
	and	a7,a1,a0
	.loc 1 275 589 discriminator 1
	and	s3,s3,t1
	.loc 1 275 553 discriminator 1
	and	s2,t2,t6
	.loc 1 275 571 discriminator 1
	or	a7,s8,a7
	.loc 1 275 534 discriminator 1
	add	a7,a6,a7
	.loc 1 275 571 discriminator 1
	or	s2,s3,s2
	.loc 1 275 534 discriminator 1
	add	s2,t0,s2
	sltu	a6,a7,a6
	.loc 1 275 684 discriminator 1
	add	s1,a7,s1
	.loc 1 275 534 discriminator 1
	add	a6,a6,s2
	.loc 1 275 684 discriminator 1
	sltu	s8,s1,a7
	add	t5,a6,t5
	.loc 1 277 315 discriminator 1
	lw	a7,32(s6)
	lw	a6,16(s5)
	.loc 1 275 684 discriminator 1
	add	s8,s8,t5
	.loc 1 275 706 is_stmt 1 discriminator 1
	.loc 1 276 68 discriminator 1
	.loc 1 277 9 discriminator 1
	.loc 1 277 14 discriminator 1
	.loc 1 277 315 is_stmt 0 discriminator 1
	lw	s3,20(s5)
	lw	t5,36(s6)
	add	a7,a6,a7
	sltu	a6,a7,a6
	add	s3,s3,t5
	add	a6,a6,s3
	add	s4,a7,s4
	sltu	a7,s4,a7
	add	ra,a6,ra
	add	ra,a7,ra
	.loc 1 277 286 discriminator 1
	xor	a7,t4,s7
	xor	t5,a4,a5
	.loc 1 277 268 discriminator 1
	and	a7,a7,t3
	and	t5,t5,a3
	.loc 1 277 250 discriminator 1
	xor	a7,a7,t4
	xor	t5,t5,a4
	.loc 1 277 315 discriminator 1
	add	a7,s4,a7
	add	ra,ra,t5
	sltu	s4,a7,s4
	.loc 1 277 72 discriminator 1
	srli	a6,t3,14
	.loc 1 277 315 discriminator 1
	add	s4,s4,ra
	.loc 1 277 72 discriminator 1
	slli	ra,a3,18
	or	ra,ra,a6
	slli	s3,t3,18
	srli	a6,a3,14
	or	s3,s3,a6
	.loc 1 277 135 discriminator 1
	slli	t5,a3,14
	srli	a6,t3,18
	or	t5,t5,a6
	srli	t0,a3,18
	slli	a6,t3,14
	or	a6,a6,t0
	.loc 1 277 105 discriminator 1
	xor	ra,ra,t5
	xor	s3,s3,a6
	.loc 1 277 198 discriminator 1
	srli	t5,t3,9
	slli	a6,a3,23
	or	t5,t5,a6
	slli	t0,t3,23
	srli	a6,a3,9
	or	a6,a6,t0
	.loc 1 277 168 discriminator 1
	xor	ra,ra,a6
	xor	s3,s3,t5
	.loc 1 277 315 discriminator 1
	add	ra,a7,ra
	add	s4,s4,s3
	sltu	a7,ra,a7
	add	a7,a7,s4
	.loc 1 277 331 is_stmt 1 discriminator 1
	.loc 1 277 628 discriminator 1
	.loc 1 277 374 is_stmt 0 discriminator 1
	srli	a6,s1,28
	.loc 1 277 641 discriminator 1
	add	s4,a2,ra
	.loc 1 277 374 discriminator 1
	slli	s3,s8,4
	.loc 1 277 641 discriminator 1
	add	t1,t1,a7
	sltu	a2,s4,a2
	.loc 1 277 374 discriminator 1
	or	s3,s3,a6
	slli	t5,s1,4
	srli	a6,s8,28
	.loc 1 277 641 discriminator 1
	add	a2,a2,t1
	.loc 1 277 657 is_stmt 1 discriminator 1
	.loc 1 277 374 is_stmt 0 discriminator 1
	or	t5,t5,a6
	.loc 1 277 437 discriminator 1
	srli	t1,s1,2
	slli	a6,s8,30
	or	t1,t1,a6
	slli	t0,s1,30
	srli	a6,s8,2
	or	a6,a6,t0
	.loc 1 277 407 discriminator 1
	xor	s3,s3,a6
	xor	t5,t5,t1
	.loc 1 277 500 discriminator 1
	slli	a6,s8,25
	srli	t1,s1,7
	or	t1,t1,a6
	slli	t0,s1,25
	srli	a6,s8,7
	or	a6,a6,t0
	.loc 1 277 470 discriminator 1
	xor	a6,s3,a6
	.loc 1 277 607 discriminator 1
	or	s3,a0,s1
	.loc 1 277 470 discriminator 1
	xor	t5,t5,t1
	.loc 1 277 607 discriminator 1
	or	s2,t6,s8
	.loc 1 277 589 discriminator 1
	and	s3,s3,a1
	.loc 1 277 553 discriminator 1
	and	t1,a0,s1
	.loc 1 277 589 discriminator 1
	and	s2,s2,t2
	.loc 1 277 553 discriminator 1
	and	t0,t6,s8
	.loc 1 277 571 discriminator 1
	or	t1,s3,t1
	.loc 1 277 534 discriminator 1
	add	t1,a6,t1
	.loc 1 277 571 discriminator 1
	or	t0,s2,t0
	.loc 1 277 534 discriminator 1
	add	t0,t5,t0
	sltu	a6,t1,a6
	.loc 1 277 684 discriminator 1
	add	ra,t1,ra
	.loc 1 277 534 discriminator 1
	add	a6,a6,t0
	.loc 1 277 684 discriminator 1
	sltu	s3,ra,t1
	add	a7,a6,a7
	add	s3,s3,a7
	.loc 1 277 706 is_stmt 1 discriminator 1
	.loc 1 278 68 discriminator 1
	.loc 1 279 9 discriminator 1
	.loc 1 279 14 discriminator 1
	.loc 1 279 315 is_stmt 0 discriminator 1
	lw	a6,24(s5)
	lw	a7,40(s6)
	lw	t5,44(s6)
	lw	t1,28(s5)
	add	a7,a6,a7
	sltu	a6,a7,a6
	add	t1,t1,t5
	add	a6,a6,t1
	add	t4,a7,t4
	sltu	a7,t4,a7
	add	a4,a6,a4
	add	a4,a7,a4
	.loc 1 279 286 discriminator 1
	xor	a7,s7,t3
	xor	t1,a5,a3
	.loc 1 279 268 discriminator 1
	and	a7,a7,s4
	and	t1,t1,a2
	.loc 1 279 250 discriminator 1
	xor	a7,a7,s7
	xor	t1,t1,a5
	.loc 1 279 315 discriminator 1
	add	a7,t4,a7
	add	a4,a4,t1
	sltu	t4,a7,t4
	.loc 1 279 72 discriminator 1
	slli	a6,a2,18
	.loc 1 279 315 discriminator 1
	add	t4,t4,a4
	.loc 1 279 72 discriminator 1
	srli	a4,s4,14
	or	a4,a6,a4
	slli	t5,s4,18
	srli	a6,a2,14
	or	t5,t5,a6
	.loc 1 279 135 discriminator 1
	slli	t1,a2,14
	srli	a6,s4,18
	or	t1,t1,a6
	srli	t0,a2,18
	slli	a6,s4,14
	or	a6,a6,t0
	.loc 1 279 105 discriminator 1
	xor	a4,a4,t1
	xor	t5,t5,a6
	.loc 1 279 198 discriminator 1
	srli	t1,s4,9
	slli	a6,a2,23
	or	t1,t1,a6
	slli	t0,s4,23
	srli	a6,a2,9
	or	a6,a6,t0
	.loc 1 279 168 discriminator 1
	xor	a4,a4,a6
	xor	t5,t5,t1
	.loc 1 279 315 discriminator 1
	add	a4,a7,a4
	add	t4,t4,t5
	.loc 1 279 374 discriminator 1
	srli	a6,ra,28
	.loc 1 279 315 discriminator 1
	sltu	a7,a4,a7
	.loc 1 279 374 discriminator 1
	slli	t5,s3,4
	.loc 1 279 315 discriminator 1
	add	a7,a7,t4
	.loc 1 279 331 is_stmt 1 discriminator 1
	.loc 1 279 628 discriminator 1
	.loc 1 279 374 is_stmt 0 discriminator 1
	or	t5,t5,a6
	.loc 1 279 641 discriminator 1
	add	t4,a1,a4
	.loc 1 279 374 discriminator 1
	srli	a6,s3,28
	slli	t0,ra,4
	.loc 1 279 641 discriminator 1
	add	t2,t2,a7
	sltu	a1,t4,a1
	.loc 1 279 374 discriminator 1
	or	t0,t0,a6
	.loc 1 279 437 discriminator 1
	srli	t1,ra,2
	slli	a6,s3,30
	.loc 1 279 641 discriminator 1
	add	a1,a1,t2
	.loc 1 279 657 is_stmt 1 discriminator 1
	.loc 1 279 437 is_stmt 0 discriminator 1
	or	t1,t1,a6
	slli	t2,ra,30
	srli	a6,s3,2
	or	a6,a6,t2
	.loc 1 279 407 discriminator 1
	xor	t5,t5,a6
	xor	t0,t0,t1
	.loc 1 279 500 discriminator 1
	slli	a6,s3,25
	srli	t1,ra,7
	or	t1,t1,a6
	slli	t2,ra,25
	srli	a6,s3,7
	or	a6,a6,t2
	.loc 1 279 470 discriminator 1
	xor	a6,t5,a6
	.loc 1 279 607 discriminator 1
	or	t5,s1,ra
	.loc 1 279 470 discriminator 1
	xor	t0,t0,t1
	.loc 1 279 607 discriminator 1
	or	s2,s8,s3
	.loc 1 279 589 discriminator 1
	and	t5,t5,a0
	.loc 1 279 553 discriminator 1
	and	t1,s1,ra
	.loc 1 279 589 discriminator 1
	and	s2,s2,t6
	.loc 1 279 553 discriminator 1
	and	t2,s8,s3
	.loc 1 279 571 discriminator 1
	or	t1,t5,t1
	.loc 1 279 534 discriminator 1
	add	t1,a6,t1
	.loc 1 279 571 discriminator 1
	or	t2,s2,t2
	.loc 1 279 534 discriminator 1
	add	t2,t0,t2
	sltu	a6,t1,a6
	.loc 1 279 684 discriminator 1
	add	a4,t1,a4
	.loc 1 279 534 discriminator 1
	add	a6,a6,t2
	.loc 1 279 684 discriminator 1
	sltu	t5,a4,t1
	add	a7,a6,a7
	add	t5,t5,a7
	.loc 1 279 706 is_stmt 1 discriminator 1
	.loc 1 280 68 discriminator 1
	.loc 1 281 9 discriminator 1
	.loc 1 281 14 discriminator 1
	.loc 1 281 315 is_stmt 0 discriminator 1
	lw	a6,32(s5)
	lw	a7,48(s6)
	lw	t1,52(s6)
	lw	s2,36(s5)
	add	a7,a6,a7
	sltu	a6,a7,a6
	add	s2,s2,t1
	add	a6,a6,s2
	add	s7,a7,s7
	sltu	a7,s7,a7
	add	a5,a6,a5
	add	a5,a7,a5
	.loc 1 281 286 discriminator 1
	xor	a7,t3,s4
	xor	t1,a3,a2
	.loc 1 281 268 discriminator 1
	and	a7,a7,t4
	and	t1,t1,a1
	.loc 1 281 250 discriminator 1
	xor	a7,a7,t3
	xor	t1,t1,a3
	.loc 1 281 315 discriminator 1
	add	a7,s7,a7
	add	a5,a5,t1
	sltu	s7,a7,s7
	.loc 1 281 72 discriminator 1
	slli	a6,a1,18
	.loc 1 281 315 discriminator 1
	add	s7,s7,a5
	.loc 1 281 72 discriminator 1
	srli	a5,t4,14
	or	a5,a6,a5
	slli	s2,t4,18
	srli	a6,a1,14
	or	s2,s2,a6
	.loc 1 281 135 discriminator 1
	slli	t1,a1,14
	srli	a6,t4,18
	or	t1,t1,a6
	srli	t0,a1,18
	slli	a6,t4,14
	or	a6,a6,t0
	.loc 1 281 105 discriminator 1
	xor	a5,a5,t1
	xor	s2,s2,a6
	.loc 1 281 198 discriminator 1
	srli	t1,t4,9
	slli	a6,a1,23
	or	t1,t1,a6
	slli	t0,t4,23
	srli	a6,a1,9
	or	a6,a6,t0
	.loc 1 281 168 discriminator 1
	xor	a5,a5,a6
	xor	s2,s2,t1
	.loc 1 281 315 discriminator 1
	add	a5,a7,a5
	add	s7,s7,s2
	sltu	a7,a5,a7
	.loc 1 281 641 discriminator 1
	add	t0,a0,a5
	.loc 1 281 315 discriminator 1
	add	a7,a7,s7
	.loc 1 281 331 is_stmt 1 discriminator 1
	.loc 1 281 628 discriminator 1
	.loc 1 281 641 is_stmt 0 discriminator 1
	add	t6,t6,a7
	sltu	a6,t0,a0
	.loc 1 281 374 discriminator 1
	slli	s2,t5,4
	srli	a0,a4,28
	.loc 1 281 641 discriminator 1
	add	a6,a6,t6
	.loc 1 281 657 is_stmt 1 discriminator 1
	.loc 1 281 374 is_stmt 0 discriminator 1
	or	s2,s2,a0
	slli	t6,a4,4
	srli	a0,t5,28
	or	t6,t6,a0
	.loc 1 281 437 discriminator 1
	srli	t1,a4,2
	slli	a0,t5,30
	or	t1,t1,a0
	slli	t2,a4,30
	srli	a0,t5,2
	or	a0,a0,t2
	.loc 1 281 407 discriminator 1
	xor	s2,s2,a0
	xor	t6,t6,t1
	.loc 1 281 500 discriminator 1
	slli	a0,t5,25
	srli	t1,a4,7
	or	t1,t1,a0
	slli	t2,a4,25
	srli	a0,t5,7
	or	a0,a0,t2
	.loc 1 281 470 discriminator 1
	xor	a0,s2,a0
	.loc 1 281 607 discriminator 1
	or	s2,ra,a4
	.loc 1 281 470 discriminator 1
	xor	t6,t6,t1
	.loc 1 281 607 discriminator 1
	or	s7,s3,t5
	.loc 1 281 589 discriminator 1
	and	s2,s2,s1
	.loc 1 281 553 discriminator 1
	and	t1,ra,a4
	.loc 1 281 589 discriminator 1
	and	s7,s7,s8
	.loc 1 281 553 discriminator 1
	and	t2,s3,t5
	.loc 1 281 571 discriminator 1
	or	t1,s2,t1
	.loc 1 281 534 discriminator 1
	add	t1,a0,t1
	.loc 1 281 571 discriminator 1
	or	t2,s7,t2
	.loc 1 281 534 discriminator 1
	add	t2,t6,t2
	sltu	a0,t1,a0
	.loc 1 281 684 discriminator 1
	add	a5,t1,a5
	.loc 1 281 534 discriminator 1
	add	a0,a0,t2
	.loc 1 281 684 discriminator 1
	add	a7,a0,a7
	sltu	s2,a5,t1
	.loc 1 283 315 discriminator 1
	lw	a0,40(s5)
	lw	t1,56(s6)
	.loc 1 281 684 discriminator 1
	add	s2,s2,a7
	.loc 1 281 706 is_stmt 1 discriminator 1
	.loc 1 282 68 discriminator 1
	.loc 1 283 9 discriminator 1
	.loc 1 283 14 discriminator 1
	.loc 1 283 315 is_stmt 0 discriminator 1
	lw	t6,60(s6)
	lw	a7,44(s5)
	add	t1,a0,t1
	sltu	a0,t1,a0
	add	a7,a7,t6
	add	a0,a0,a7
	add	t3,t1,t3
	sltu	t1,t3,t1
	add	a3,a0,a3
	add	a3,t1,a3
	.loc 1 283 286 discriminator 1
	xor	t1,s4,t4
	xor	t6,a2,a1
	.loc 1 283 268 discriminator 1
	and	t1,t1,t0
	.loc 1 283 250 discriminator 1
	xor	t1,t1,s4
	.loc 1 283 268 discriminator 1
	and	t6,t6,a6
	.loc 1 283 250 discriminator 1
	xor	t6,t6,a2
	.loc 1 283 315 discriminator 1
	add	t1,t3,t1
	add	a3,a3,t6
	sltu	t3,t1,t3
	add	t3,t3,a3
	.loc 1 283 72 discriminator 1
	slli	a0,a6,18
	srli	a3,t0,14
	or	a3,a0,a3
	slli	a7,t0,18
	srli	a0,a6,14
	or	a7,a7,a0
	.loc 1 283 135 discriminator 1
	slli	t6,a6,14
	srli	a0,t0,18
	or	t6,t6,a0
	srli	t2,a6,18
	slli	a0,t0,14
	or	a0,a0,t2
	.loc 1 283 105 discriminator 1
	xor	a3,a3,t6
	xor	a7,a7,a0
	.loc 1 283 198 discriminator 1
	srli	t6,t0,9
	slli	a0,a6,23
	or	t6,t6,a0
	slli	t2,t0,23
	srli	a0,a6,9
	or	a0,a0,t2
	.loc 1 283 168 discriminator 1
	xor	a3,a3,a0
	.loc 1 283 374 discriminator 1
	slli	t2,s2,4
	srli	a0,a5,28
	.loc 1 283 168 discriminator 1
	xor	a7,a7,t6
	.loc 1 283 374 discriminator 1
	or	t2,t2,a0
	slli	t6,a5,4
	srli	a0,s2,28
	.loc 1 283 315 discriminator 1
	add	a3,t1,a3
	add	t3,t3,a7
	.loc 1 283 374 discriminator 1
	or	t6,t6,a0
	.loc 1 283 437 discriminator 1
	srli	a7,a5,2
	slli	a0,s2,30
	or	a7,a7,a0
	.loc 1 283 315 discriminator 1
	sltu	t1,a3,t1
	.loc 1 283 437 discriminator 1
	slli	s7,a5,30
	srli	a0,s2,2
	.loc 1 283 315 discriminator 1
	add	t1,t1,t3
	.loc 1 283 331 is_stmt 1 discriminator 1
	.loc 1 283 628 discriminator 1
	.loc 1 283 437 is_stmt 0 discriminator 1
	or	a0,a0,s7
	.loc 1 283 641 discriminator 1
	add	t3,s1,a3
	add	s8,s8,t1
	.loc 1 283 407 discriminator 1
	xor	t2,t2,a0
	xor	t6,t6,a7
	.loc 1 283 500 discriminator 1
	slli	a0,s2,25
	.loc 1 283 641 discriminator 1
	sltu	s1,t3,s1
	.loc 1 283 500 discriminator 1
	srli	a7,a5,7
	.loc 1 283 641 discriminator 1
	add	s1,s1,s8
	.loc 1 283 657 is_stmt 1 discriminator 1
	.loc 1 283 500 is_stmt 0 discriminator 1
	or	a7,a7,a0
	slli	s7,a5,25
	.loc 1 283 607 discriminator 1
	or	s8,a4,a5
	.loc 1 283 500 discriminator 1
	srli	a0,s2,7
	.loc 1 283 470 discriminator 1
	xor	t6,t6,a7
	.loc 1 283 500 discriminator 1
	or	a0,a0,s7
	.loc 1 283 553 discriminator 1
	and	a7,a4,a5
	.loc 1 283 607 discriminator 1
	or	s7,t5,s2
	.loc 1 283 589 discriminator 1
	and	s8,s8,ra
	.loc 1 283 470 discriminator 1
	xor	a0,t2,a0
	.loc 1 283 589 discriminator 1
	and	s7,s7,s3
	.loc 1 283 553 discriminator 1
	and	t2,t5,s2
	.loc 1 283 571 discriminator 1
	or	s8,s8,a7
	.loc 1 283 534 discriminator 1
	add	s8,a0,s8
	.loc 1 283 571 discriminator 1
	or	t2,s7,t2
	.loc 1 283 534 discriminator 1
	add	t2,t6,t2
	sltu	a0,s8,a0
	.loc 1 283 684 discriminator 1
	add	a3,s8,a3
	.loc 1 283 534 discriminator 1
	add	a0,a0,t2
	.loc 1 285 315 discriminator 1
	lw	t6,64(s6)
	.loc 1 283 684 discriminator 1
	add	t1,a0,t1
	sltu	a7,a3,s8
	.loc 1 285 315 discriminator 1
	lw	a0,48(s5)
	.loc 1 283 684 discriminator 1
	add	a7,a7,t1
	.loc 1 283 706 is_stmt 1 discriminator 1
	.loc 1 284 68 discriminator 1
	.loc 1 285 9 discriminator 1
	.loc 1 285 14 discriminator 1
	.loc 1 285 315 is_stmt 0 discriminator 1
	lw	t2,68(s6)
	lw	t1,52(s5)
	add	t6,a0,t6
	sltu	a0,t6,a0
	add	t1,t1,t2
	add	a0,a0,t1
	add	s4,t6,s4
	sltu	t6,s4,t6
	add	a2,a0,a2
	add	a2,t6,a2
	.loc 1 285 286 discriminator 1
	xor	t6,t4,t0
	xor	t2,a1,a6
	.loc 1 285 268 discriminator 1
	and	t6,t6,t3
	.loc 1 285 250 discriminator 1
	xor	t6,t6,t4
	.loc 1 285 268 discriminator 1
	and	t2,t2,s1
	.loc 1 285 250 discriminator 1
	xor	t2,t2,a1
	.loc 1 285 315 discriminator 1
	add	t6,s4,t6
	add	a2,a2,t2
	sltu	s4,t6,s4
	add	s4,s4,a2
	.loc 1 285 72 discriminator 1
	slli	a0,s1,18
	srli	a2,t3,14
	or	a2,a0,a2
	slli	t1,t3,18
	srli	a0,s1,14
	or	t1,t1,a0
	.loc 1 285 135 discriminator 1
	slli	t2,s1,14
	srli	a0,t3,18
	or	t2,t2,a0
	srli	s7,s1,18
	slli	a0,t3,14
	or	a0,a0,s7
	.loc 1 285 105 discriminator 1
	xor	a2,a2,t2
	xor	t1,t1,a0
	.loc 1 285 198 discriminator 1
	srli	t2,t3,9
	slli	a0,s1,23
	or	t2,t2,a0
	slli	s7,t3,23
	srli	a0,s1,9
	or	a0,a0,s7
	.loc 1 285 168 discriminator 1
	xor	a2,a2,a0
	xor	t1,t1,t2
	.loc 1 285 315 discriminator 1
	add	a2,t6,a2
	add	s4,s4,t1
	sltu	t6,a2,t6
	add	t6,t6,s4
	.loc 1 285 331 is_stmt 1 discriminator 1
	.loc 1 285 628 discriminator 1
	.loc 1 285 641 is_stmt 0 discriminator 1
	add	s4,ra,a2
	add	s3,s3,t6
	sltu	ra,s4,ra
	add	ra,ra,s3
	.loc 1 285 657 is_stmt 1 discriminator 1
	.loc 1 285 374 is_stmt 0 discriminator 1
	srli	a0,a3,28
	slli	s3,a7,4
	or	s3,s3,a0
	slli	t2,a3,4
	srli	a0,a7,28
	or	t2,t2,a0
	.loc 1 285 437 discriminator 1
	srli	t1,a3,2
	slli	a0,a7,30
	or	t1,t1,a0
	slli	s7,a3,30
	srli	a0,a7,2
	or	a0,a0,s7
	.loc 1 285 407 discriminator 1
	xor	s3,s3,a0
	xor	t2,t2,t1
	.loc 1 285 500 discriminator 1
	slli	a0,a7,25
	srli	t1,a3,7
	or	t1,t1,a0
	slli	s7,a3,25
	srli	a0,a7,7
	.loc 1 285 607 discriminator 1
	or	s8,a5,a3
	.loc 1 285 470 discriminator 1
	xor	t2,t2,t1
	.loc 1 285 500 discriminator 1
	or	a0,a0,s7
	.loc 1 285 589 discriminator 1
	and	s8,s8,a4
	.loc 1 285 553 discriminator 1
	and	t1,a5,a3
	.loc 1 285 607 discriminator 1
	or	s7,s2,a7
	.loc 1 285 470 discriminator 1
	xor	a0,s3,a0
	.loc 1 285 589 discriminator 1
	and	s7,s7,t5
	.loc 1 285 571 discriminator 1
	or	s8,s8,t1
	.loc 1 285 553 discriminator 1
	and	s3,s2,a7
	.loc 1 285 534 discriminator 1
	add	s8,a0,s8
	.loc 1 285 571 discriminator 1
	or	s3,s7,s3
	.loc 1 285 534 discriminator 1
	add	s3,t2,s3
	sltu	a0,s8,a0
	.loc 1 285 684 discriminator 1
	add	a2,s8,a2
	.loc 1 285 534 discriminator 1
	add	a0,a0,s3
	.loc 1 287 315 discriminator 1
	lw	t2,72(s6)
	.loc 1 285 684 discriminator 1
	add	t6,a0,t6
	sltu	t1,a2,s8
	.loc 1 287 315 discriminator 1
	lw	a0,56(s5)
	.loc 1 285 684 discriminator 1
	add	t1,t1,t6
	.loc 1 285 706 is_stmt 1 discriminator 1
	.loc 1 286 68 discriminator 1
	.loc 1 287 9 discriminator 1
	.loc 1 287 14 discriminator 1
	.loc 1 287 315 is_stmt 0 discriminator 1
	lw	s3,76(s6)
	lw	t6,60(s5)
	add	t2,a0,t2
	sltu	a0,t2,a0
	add	t6,t6,s3
	add	a0,a0,t6
	add	a1,a0,a1
	.loc 1 287 286 discriminator 1
	xor	a0,t0,t3
	.loc 1 287 315 discriminator 1
	add	t4,t2,t4
	.loc 1 287 286 discriminator 1
	xor	t6,a6,s1
	.loc 1 287 268 discriminator 1
	and	a0,a0,s4
	.loc 1 287 315 discriminator 1
	sltu	t2,t4,t2
	.loc 1 287 268 discriminator 1
	and	t6,t6,ra
	.loc 1 287 250 discriminator 1
	xor	a0,a0,t0
	.loc 1 287 315 discriminator 1
	add	a0,t4,a0
	add	a1,t2,a1
	.loc 1 287 250 discriminator 1
	xor	t6,t6,a6
	.loc 1 287 315 discriminator 1
	add	a1,a1,t6
	sltu	t4,a0,t4
	add	t4,t4,a1
	.loc 1 287 72 discriminator 1
	slli	t6,ra,18
	srli	a1,s4,14
	or	t6,t6,a1
	slli	t2,s4,18
	srli	a1,ra,14
	or	a1,t2,a1
	.loc 1 287 135 discriminator 1
	slli	s3,ra,14
	srli	t2,s4,18
	or	s3,s3,t2
	srli	s7,ra,18
	slli	t2,s4,14
	or	t2,t2,s7
	.loc 1 287 105 discriminator 1
	xor	t6,t6,s3
	xor	a1,a1,t2
	.loc 1 287 198 discriminator 1
	srli	s3,s4,9
	slli	t2,ra,23
	or	t2,s3,t2
	slli	s7,s4,23
	srli	s3,ra,9
	or	s3,s3,s7
	.loc 1 287 168 discriminator 1
	xor	t6,t6,s3
	.loc 1 287 315 discriminator 1
	add	t6,a0,t6
	.loc 1 287 168 discriminator 1
	xor	a1,a1,t2
	.loc 1 287 315 discriminator 1
	add	t4,t4,a1
	sltu	a0,t6,a0
	.loc 1 287 374 discriminator 1
	srli	a1,a2,28
	slli	s7,t1,4
	.loc 1 287 315 discriminator 1
	add	a0,a0,t4
	.loc 1 287 331 is_stmt 1 discriminator 1
	.loc 1 287 374 is_stmt 0 discriminator 1
	or	s7,s7,a1
	slli	t4,a2,4
	srli	a1,t1,28
	or	a1,t4,a1
	.loc 1 287 437 discriminator 1
	srli	t2,a2,2
	slli	t4,t1,30
	or	t2,t2,t4
	slli	s3,a2,30
	srli	t4,t1,2
	or	t4,t4,s3
	.loc 1 287 407 discriminator 1
	xor	s7,s7,t4
	xor	a1,a1,t2
	.loc 1 287 500 discriminator 1
	slli	t4,t1,25
	srli	t2,a2,7
	or	t2,t2,t4
	slli	s3,a2,25
	srli	t4,t1,7
	.loc 1 287 607 discriminator 1
	or	s8,a3,a2
	.loc 1 287 500 discriminator 1
	or	t4,t4,s3
	.loc 1 287 470 discriminator 1
	xor	a1,a1,t2
	.loc 1 287 589 discriminator 1
	and	s8,s8,a5
	.loc 1 287 607 discriminator 1
	or	t2,a7,t1
	.loc 1 287 553 discriminator 1
	and	s3,a3,a2
	.loc 1 287 470 discriminator 1
	xor	s7,s7,t4
	.loc 1 287 589 discriminator 1
	and	t2,t2,s2
	.loc 1 287 553 discriminator 1
	and	t4,a7,t1
	.loc 1 287 571 discriminator 1
	or	s3,s8,s3
	or	t4,t2,t4
	.loc 1 287 534 discriminator 1
	add	s3,s7,s3
	add	t4,a1,t4
	sltu	s7,s3,s7
	add	s7,s7,t4
	.loc 1 287 628 is_stmt 1 discriminator 1
	.loc 1 287 641 is_stmt 0 discriminator 1
	add	t4,a4,t6
	add	t5,t5,a0
	sltu	a4,t4,a4
	.loc 1 287 684 discriminator 1
	add	a1,t6,s3
	.loc 1 287 641 discriminator 1
	add	a4,a4,t5
	.loc 1 287 657 is_stmt 1 discriminator 1
	.loc 1 287 684 is_stmt 0 discriminator 1
	sltu	t2,a1,t6
	add	t5,a0,s7
	add	t2,t2,t5
	.loc 1 287 706 is_stmt 1 discriminator 1
	.loc 1 288 68 discriminator 1
	.loc 1 290 10 discriminator 1
	.loc 1 290 5 is_stmt 0 discriminator 1
	lw	t5,-788(s0)
	addi	s6,s6,64
	addi	s5,s5,64
	bne	t5,s6,.L19
	sw	t0,-72(s0)
	sw	a6,-68(s0)
	sw	t4,-96(s0)
	sw	a4,-92(s0)
	sw	t3,-80(s0)
	sw	s1,-76(s0)
	sw	s4,-88(s0)
	sw	ra,-84(s0)
	sw	a1,-128(s0)
	sw	t2,-124(s0)
	sw	a2,-120(s0)
	sw	t1,-116(s0)
	sw	a3,-112(s0)
	sw	a7,-108(s0)
	sw	a5,-104(s0)
	sw	s2,-100(s0)
	sw	t6,-784(s0)
	sw	a0,-780(s0)
	sw	s3,-776(s0)
	sw	s7,-772(s0)
.L20:
	.loc 1 294 9 is_stmt 1 discriminator 3
	.loc 1 294 23 is_stmt 0 discriminator 3
	lw	a5,0(s10)
	lw	a4,656(s9)
	lw	a3,4(s10)
	lw	a2,660(s9)
	add	a4,a5,a4
	sltu	a5,a4,a5
	add	a3,a3,a2
	add	a5,a5,a3
	sw	a4,0(s10)
	sw	a5,4(s10)
	.loc 1 293 24 is_stmt 1 discriminator 3
	.loc 1 293 17 discriminator 3
	.loc 1 293 5 is_stmt 0 discriminator 3
	addi	s10,s10,8
	addi	s9,s9,8
	bne	s11,s10,.L20
	.loc 1 297 5 is_stmt 1
	addi	a0,s0,-784
	li	a1,720
	call	mbedtls_platform_zeroize
.LVL16:
	.loc 1 299 5
	.loc 1 300 1 is_stmt 0
	lw	ra,796(sp)
	.cfi_restore 1
	lw	s0,792(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 800
	lw	s1,788(sp)
	.cfi_restore 9
	lw	s2,784(sp)
	.cfi_restore 18
	lw	s3,780(sp)
	.cfi_restore 19
	lw	s4,776(sp)
	.cfi_restore 20
	lw	s5,772(sp)
	.cfi_restore 21
	lw	s6,768(sp)
	.cfi_restore 22
	lw	s7,764(sp)
	.cfi_restore 23
	lw	s8,760(sp)
	.cfi_restore 24
	lw	s9,756(sp)
	.cfi_restore 25
	lw	s10,752(sp)
	.cfi_restore 26
	lw	s11,748(sp)
	.cfi_restore 27
.LVL17:
	li	a0,0
	addi	sp,sp,800
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	mbedtls_internal_sha512_process, .-mbedtls_internal_sha512_process
	.section	.text.mbedtls_sha512_process,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_process
	.type	mbedtls_sha512_process, @function
mbedtls_sha512_process:
.LFB8:
	.loc 1 305 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 306 5
	.loc 1 305 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 307 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 306 5
	tail	mbedtls_internal_sha512_process
.LVL19:
	.cfi_endproc
.LFE8:
	.size	mbedtls_sha512_process, .-mbedtls_sha512_process
	.section	.text.mbedtls_sha512_update_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_update_ret
	.type	mbedtls_sha512_update_ret, @function
mbedtls_sha512_update_ret:
.LFB9:
	.loc 1 317 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 318 5
	.loc 1 319 5
	.loc 1 320 5
	.loc 1 322 5
	.loc 1 322 10
	.loc 1 322 17
	.loc 1 323 5
	.loc 1 323 10
	.loc 1 323 17
	.loc 1 325 5
	.loc 1 325 7 is_stmt 0
	bne	a2,zero,.L30
	.loc 1 326 15
	li	a0,0
.LVL21:
	.loc 1 361 1
	ret
.LVL22:
.L30:
	.loc 1 317 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB4:
.LBB5:
	.loc 1 328 38
	lw	a5,0(a0)
	lw	a3,4(a0)
	mv	s2,a0
	.loc 1 331 19
	add	a4,a5,a2
	.loc 1 328 10
	andi	s4,a5,127
	.loc 1 331 19
	sltu	a5,a4,a5
	add	a5,a5,a3
	sw	a4,0(a0)
	sw	a5,4(a0)
	mv	s3,a1
	mv	s1,a2
.LVL23:
	.loc 1 328 5 is_stmt 1
	.loc 1 329 5
	.loc 1 331 5
	.loc 1 333 5
	.loc 1 333 7 is_stmt 0
	bne	a5,zero,.L32
.LVL24:
	bleu	a2,a4,.L32
	.loc 1 334 9 is_stmt 1
	.loc 1 334 22 is_stmt 0
	lw	a5,8(a0)
	lw	a3,12(a0)
	addi	a4,a5,1
	sltu	a5,a4,a5
	add	a5,a5,a3
	sw	a4,8(a0)
	sw	a5,12(a0)
.L32:
	.loc 1 336 5 is_stmt 1
	.loc 1 336 7 is_stmt 0
	beq	s4,zero,.L34
	.loc 1 329 10
	li	s5,128
	sub	s5,s5,s4
	.loc 1 336 14
	bltu	s1,s5,.L34
	.loc 1 338 9 is_stmt 1
	.loc 1 338 27 is_stmt 0
	addi	s6,s2,80
	.loc 1 338 9
	mv	a1,s3
.LVL25:
	mv	a2,s5
	add	a0,s6,s4
.LVL26:
	call	memcpy
.LVL27:
	.loc 1 340 9 is_stmt 1
	.loc 1 340 21 is_stmt 0
	mv	a1,s6
	mv	a0,s2
	call	mbedtls_internal_sha512_process
.LVL28:
	.loc 1 340 11
	bne	a0,zero,.L29
	.loc 1 343 9 is_stmt 1
.LVL29:
	.loc 1 344 14 is_stmt 0
	addi	s1,s1,-128
.LVL30:
	add	s1,s1,s4
.LVL31:
	.loc 1 343 15
	add	s3,s3,s5
.LVL32:
	.loc 1 344 9 is_stmt 1
	.loc 1 345 9
	.loc 1 345 14 is_stmt 0
	li	s4,0
.LVL33:
.L34:
	add	s3,s3,s1
.LVL34:
	.loc 1 348 10
	li	s5,127
	j	.L35
.LVL35:
.L36:
	.loc 1 350 9 is_stmt 1
	.loc 1 350 21 is_stmt 0
	mv	a0,s2
	call	mbedtls_internal_sha512_process
.LVL36:
	.loc 1 350 11
	bne	a0,zero,.L29
	.loc 1 353 9 is_stmt 1
.LVL37:
	.loc 1 354 9
	.loc 1 354 14 is_stmt 0
	addi	s1,s1,-128
.LVL38:
.L35:
	sub	a1,s3,s1
.LVL39:
	.loc 1 348 10 is_stmt 1
	bgtu	s1,s5,.L36
	.loc 1 357 5
	.loc 1 357 7 is_stmt 0
	beq	s1,zero,.L48
	.loc 1 358 9 is_stmt 1
	.loc 1 358 27 is_stmt 0
	addi	a0,s2,80
	.loc 1 358 9
	mv	a2,s1
	add	a0,a0,s4
	call	memcpy
.LVL40:
.L48:
	.loc 1 360 11
	li	a0,0
.LVL41:
.L29:
.LBE5:
.LBE4:
	.loc 1 361 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL42:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	mbedtls_sha512_update_ret, .-mbedtls_sha512_update_ret
	.section	.text.mbedtls_sha512_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_update
	.type	mbedtls_sha512_update, @function
mbedtls_sha512_update:
.LFB10:
	.loc 1 367 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 368 5
	.loc 1 367 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 369 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 368 5
	tail	mbedtls_sha512_update_ret
.LVL44:
	.cfi_endproc
.LFE10:
	.size	mbedtls_sha512_update, .-mbedtls_sha512_update
	.section	.text.mbedtls_sha512_finish_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_finish_ret
	.type	mbedtls_sha512_finish_ret, @function
mbedtls_sha512_finish_ret:
.LFB11:
	.loc 1 377 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 378 5
	.loc 1 379 5
	.loc 1 380 5
	.loc 1 382 5
	.loc 1 382 10
	.loc 1 382 17
	.loc 1 383 5
	.loc 1 383 10
	.loc 1 383 17
	.loc 1 388 5
	.loc 1 377 1 is_stmt 0
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
	.loc 1 388 10
	lw	a5,0(a0)
	.loc 1 390 25
	li	a3,-128
	.loc 1 395 17
	addi	s3,a0,80
	.loc 1 388 10
	andi	a5,a5,127
.LVL46:
	.loc 1 390 5 is_stmt 1
	.loc 1 390 21 is_stmt 0
	addi	a4,a5,1
.LVL47:
	.loc 1 390 25
	add	a5,a0,a5
	sb	a3,80(a5)
	.loc 1 392 5 is_stmt 1
	.loc 1 392 7 is_stmt 0
	li	a2,112
	.loc 1 377 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 395 9
	add	a0,s3,a4
.LVL48:
	.loc 1 392 7
	bgtu	a4,a2,.L52
	.loc 1 395 9 is_stmt 1
	sub	a2,a2,a4
	li	a1,0
.LVL49:
.L56:
	.loc 1 405 9 is_stmt 0
	call	memset
.LVL50:
	.loc 1 411 5 is_stmt 1
	.loc 1 412 28 is_stmt 0
	lw	a3,8(s1)
	lw	a2,12(s1)
	.loc 1 411 24
	lw	a5,4(s1)
	.loc 1 412 28
	srli	a4,a3,29
	slli	a2,a2,3
	or	a2,a4,a2
	.loc 1 415 60
	srli	a6,a2,24
	.loc 1 412 28
	slli	a3,a3,3
	.loc 1 411 28
	srli	a4,a5,29
	.loc 1 415 37
	sb	a6,192(s1)
	.loc 1 415 136
	srli	a6,a2,16
	.loc 1 411 24
	lw	a1,0(s1)
	.loc 1 411 10
	or	a4,a3,a4
.LVL51:
	.loc 1 413 5 is_stmt 1
	.loc 1 415 113 is_stmt 0
	sb	a6,193(s1)
	.loc 1 415 265
	sb	a2,195(s1)
	.loc 1 415 212
	srli	a6,a2,8
	.loc 1 415 364
	srli	a2,a3,24
.LVL52:
	.loc 1 415 440
	srli	a3,a3,16
	.loc 1 415 417
	sb	a3,197(s1)
	.loc 1 415 489
	slli	a3,a4,8
	slli	a4,a4,16
.LVL53:
	srli	a4,a4,16
	.loc 1 413 9
	srli	a0,a1,29
	slli	a5,a5,3
.LVL54:
	.loc 1 415 489
	srli	a4,a4,8
	.loc 1 413 9
	or	a5,a0,a5
	.loc 1 415 489
	or	a4,a3,a4
	sh	a4,198(s1)
	.loc 1 416 59
	srli	a4,a5,24
	.loc 1 413 9
	slli	a0,a1,3
.LVL55:
	.loc 1 415 7 is_stmt 1
	.loc 1 415 80
	.loc 1 415 156
	.loc 1 416 37 is_stmt 0
	sb	a4,200(s1)
	.loc 1 416 134
	srli	a4,a5,16
	.loc 1 416 112
	sb	a4,201(s1)
	.loc 1 416 262
	sb	a5,203(s1)
	.loc 1 416 209
	srli	a4,a5,8
	.loc 1 416 359
	srli	a5,a0,24
.LVL56:
	.loc 1 416 337
	sb	a5,204(s1)
	.loc 1 416 434
	srli	a5,a0,16
	.loc 1 416 483
	slli	a0,a0,16
.LVL57:
	srli	a0,a0,16
	srli	a0,a0,8
	slli	a1,a1,11
.LVL58:
	or	a1,a1,a0
	sh	a1,206(s1)
	.loc 1 415 189
	sb	a6,194(s1)
	.loc 1 415 232 is_stmt 1
	.loc 1 415 308
	.loc 1 415 341 is_stmt 0
	sb	a2,196(s1)
	.loc 1 415 384 is_stmt 1
	.loc 1 415 460
	.loc 1 415 535
	.loc 1 415 602
	.loc 1 416 7
	.loc 1 416 79
	.loc 1 416 154
	.loc 1 416 187 is_stmt 0
	sb	a4,202(s1)
	.loc 1 416 229 is_stmt 1
	.loc 1 416 304
	.loc 1 416 379
	.loc 1 416 412 is_stmt 0
	sb	a5,205(s1)
	.loc 1 416 454 is_stmt 1
	.loc 1 416 528
	.loc 1 416 594
	.loc 1 418 5
	.loc 1 418 17 is_stmt 0
	mv	a1,s3
	mv	a0,s1
	call	mbedtls_internal_sha512_process
.LVL59:
	.loc 1 418 7
	bne	a0,zero,.L51
	.loc 1 424 7 is_stmt 1
	.loc 1 424 62 is_stmt 0
	lbu	a5,23(s1)
	.loc 1 424 30
	sb	a5,0(s2)
	.loc 1 424 82 is_stmt 1
	.loc 1 424 140 is_stmt 0
	lhu	a5,22(s1)
	.loc 1 424 108
	sb	a5,1(s2)
	.loc 1 424 160 is_stmt 1
	.loc 1 424 218 is_stmt 0
	lw	a5,20(s1)
	srli	a5,a5,8
	.loc 1 424 186
	sb	a5,2(s2)
	.loc 1 424 238 is_stmt 1
	.loc 1 424 296 is_stmt 0
	lw	a5,20(s1)
	.loc 1 424 264
	sb	a5,3(s2)
	.loc 1 424 316 is_stmt 1
	.loc 1 424 374 is_stmt 0
	lbu	a5,19(s1)
	.loc 1 424 342
	sb	a5,4(s2)
	.loc 1 424 394 is_stmt 1
	.loc 1 424 452 is_stmt 0
	lhu	a5,18(s1)
	.loc 1 424 420
	sb	a5,5(s2)
	.loc 1 424 472 is_stmt 1
	.loc 1 424 530 is_stmt 0
	lw	a5,16(s1)
	srli	a5,a5,8
	.loc 1 424 498
	sb	a5,6(s2)
	.loc 1 424 549 is_stmt 1
	.loc 1 424 575 is_stmt 0
	lw	a5,16(s1)
	sb	a5,7(s2)
	.loc 1 424 618 is_stmt 1
	.loc 1 425 7
	.loc 1 425 62 is_stmt 0
	lbu	a5,31(s1)
	.loc 1 425 30
	sb	a5,8(s2)
	.loc 1 425 82 is_stmt 1
	.loc 1 425 140 is_stmt 0
	lhu	a5,30(s1)
	.loc 1 425 108
	sb	a5,9(s2)
	.loc 1 425 160 is_stmt 1
	.loc 1 425 218 is_stmt 0
	lw	a5,28(s1)
	srli	a5,a5,8
	.loc 1 425 186
	sb	a5,10(s2)
	.loc 1 425 238 is_stmt 1
	.loc 1 425 296 is_stmt 0
	lw	a5,28(s1)
	.loc 1 425 264
	sb	a5,11(s2)
	.loc 1 425 316 is_stmt 1
	.loc 1 425 374 is_stmt 0
	lbu	a5,27(s1)
	.loc 1 425 342
	sb	a5,12(s2)
	.loc 1 425 394 is_stmt 1
	.loc 1 425 452 is_stmt 0
	lhu	a5,26(s1)
	.loc 1 425 420
	sb	a5,13(s2)
	.loc 1 425 472 is_stmt 1
	.loc 1 425 530 is_stmt 0
	lw	a5,24(s1)
	srli	a5,a5,8
	.loc 1 425 498
	sb	a5,14(s2)
	.loc 1 425 549 is_stmt 1
	.loc 1 425 575 is_stmt 0
	lw	a5,24(s1)
	sb	a5,15(s2)
	.loc 1 425 618 is_stmt 1
	.loc 1 426 7
	.loc 1 426 63 is_stmt 0
	lbu	a5,39(s1)
	.loc 1 426 31
	sb	a5,16(s2)
	.loc 1 426 83 is_stmt 1
	.loc 1 426 142 is_stmt 0
	lhu	a5,38(s1)
	.loc 1 426 110
	sb	a5,17(s2)
	.loc 1 426 162 is_stmt 1
	.loc 1 426 221 is_stmt 0
	lw	a5,36(s1)
	srli	a5,a5,8
	.loc 1 426 189
	sb	a5,18(s2)
	.loc 1 426 241 is_stmt 1
	.loc 1 426 300 is_stmt 0
	lw	a5,36(s1)
	.loc 1 426 268
	sb	a5,19(s2)
	.loc 1 426 320 is_stmt 1
	.loc 1 426 379 is_stmt 0
	lbu	a5,35(s1)
	.loc 1 426 347
	sb	a5,20(s2)
	.loc 1 426 399 is_stmt 1
	.loc 1 426 458 is_stmt 0
	lhu	a5,34(s1)
	.loc 1 426 426
	sb	a5,21(s2)
	.loc 1 426 478 is_stmt 1
	.loc 1 426 537 is_stmt 0
	lw	a5,32(s1)
	srli	a5,a5,8
	.loc 1 426 505
	sb	a5,22(s2)
	.loc 1 426 556 is_stmt 1
	.loc 1 426 583 is_stmt 0
	lw	a5,32(s1)
	sb	a5,23(s2)
	.loc 1 426 626 is_stmt 1
	.loc 1 427 7
	.loc 1 427 63 is_stmt 0
	lbu	a5,47(s1)
	.loc 1 427 31
	sb	a5,24(s2)
	.loc 1 427 83 is_stmt 1
	.loc 1 427 142 is_stmt 0
	lhu	a5,46(s1)
	.loc 1 427 110
	sb	a5,25(s2)
	.loc 1 427 162 is_stmt 1
	.loc 1 427 221 is_stmt 0
	lw	a5,44(s1)
	srli	a5,a5,8
	.loc 1 427 189
	sb	a5,26(s2)
	.loc 1 427 241 is_stmt 1
	.loc 1 427 300 is_stmt 0
	lw	a5,44(s1)
	.loc 1 427 268
	sb	a5,27(s2)
	.loc 1 427 320 is_stmt 1
	.loc 1 427 379 is_stmt 0
	lbu	a5,43(s1)
	.loc 1 427 347
	sb	a5,28(s2)
	.loc 1 427 399 is_stmt 1
	.loc 1 427 458 is_stmt 0
	lhu	a5,42(s1)
	.loc 1 427 426
	sb	a5,29(s2)
	.loc 1 427 478 is_stmt 1
	.loc 1 427 537 is_stmt 0
	lw	a5,40(s1)
	srli	a5,a5,8
	.loc 1 427 505
	sb	a5,30(s2)
	.loc 1 427 556 is_stmt 1
	.loc 1 427 583 is_stmt 0
	lw	a5,40(s1)
	sb	a5,31(s2)
	.loc 1 427 626 is_stmt 1
	.loc 1 428 7
	.loc 1 428 63 is_stmt 0
	lbu	a5,55(s1)
	.loc 1 428 31
	sb	a5,32(s2)
	.loc 1 428 83 is_stmt 1
	.loc 1 428 142 is_stmt 0
	lhu	a5,54(s1)
	.loc 1 428 110
	sb	a5,33(s2)
	.loc 1 428 162 is_stmt 1
	.loc 1 428 221 is_stmt 0
	lw	a5,52(s1)
	srli	a5,a5,8
	.loc 1 428 189
	sb	a5,34(s2)
	.loc 1 428 241 is_stmt 1
	.loc 1 428 300 is_stmt 0
	lw	a5,52(s1)
	.loc 1 428 268
	sb	a5,35(s2)
	.loc 1 428 320 is_stmt 1
	.loc 1 428 379 is_stmt 0
	lbu	a5,51(s1)
	.loc 1 428 347
	sb	a5,36(s2)
	.loc 1 428 399 is_stmt 1
	.loc 1 428 458 is_stmt 0
	lhu	a5,50(s1)
	.loc 1 428 426
	sb	a5,37(s2)
	.loc 1 428 478 is_stmt 1
	.loc 1 428 537 is_stmt 0
	lw	a5,48(s1)
	srli	a5,a5,8
	.loc 1 428 505
	sb	a5,38(s2)
	.loc 1 428 556 is_stmt 1
	.loc 1 428 583 is_stmt 0
	lw	a5,48(s1)
	sb	a5,39(s2)
	.loc 1 428 626 is_stmt 1
	.loc 1 429 7
	.loc 1 429 63 is_stmt 0
	lbu	a5,63(s1)
	.loc 1 429 31
	sb	a5,40(s2)
	.loc 1 429 83 is_stmt 1
	.loc 1 429 142 is_stmt 0
	lhu	a5,62(s1)
	.loc 1 429 110
	sb	a5,41(s2)
	.loc 1 429 162 is_stmt 1
	.loc 1 429 221 is_stmt 0
	lw	a5,60(s1)
	srli	a5,a5,8
	.loc 1 429 189
	sb	a5,42(s2)
	.loc 1 429 241 is_stmt 1
	.loc 1 429 300 is_stmt 0
	lw	a5,60(s1)
	.loc 1 429 268
	sb	a5,43(s2)
	.loc 1 429 320 is_stmt 1
	.loc 1 429 379 is_stmt 0
	lbu	a5,59(s1)
	.loc 1 429 347
	sb	a5,44(s2)
	.loc 1 429 399 is_stmt 1
	.loc 1 429 458 is_stmt 0
	lhu	a5,58(s1)
	.loc 1 429 426
	sb	a5,45(s2)
	.loc 1 429 478 is_stmt 1
	.loc 1 429 537 is_stmt 0
	lw	a5,56(s1)
	srli	a5,a5,8
	.loc 1 429 505
	sb	a5,46(s2)
	.loc 1 429 556 is_stmt 1
	.loc 1 429 583 is_stmt 0
	lw	a5,56(s1)
	sb	a5,47(s2)
	.loc 1 429 626 is_stmt 1
	.loc 1 432 5
	.loc 1 432 12 is_stmt 0
	lw	a5,208(s1)
	.loc 1 432 7
	bne	a5,zero,.L51
	.loc 1 435 11 is_stmt 1
	.loc 1 435 67 is_stmt 0
	lbu	a5,71(s1)
	.loc 1 435 35
	sb	a5,48(s2)
	.loc 1 435 87 is_stmt 1
	.loc 1 435 146 is_stmt 0
	lhu	a5,70(s1)
	.loc 1 435 114
	sb	a5,49(s2)
	.loc 1 435 166 is_stmt 1
	.loc 1 435 225 is_stmt 0
	lw	a5,68(s1)
	srli	a5,a5,8
	.loc 1 435 193
	sb	a5,50(s2)
	.loc 1 435 245 is_stmt 1
	.loc 1 435 304 is_stmt 0
	lw	a5,68(s1)
	.loc 1 435 272
	sb	a5,51(s2)
	.loc 1 435 324 is_stmt 1
	.loc 1 435 383 is_stmt 0
	lbu	a5,67(s1)
	.loc 1 435 351
	sb	a5,52(s2)
	.loc 1 435 403 is_stmt 1
	.loc 1 435 462 is_stmt 0
	lhu	a5,66(s1)
	.loc 1 435 430
	sb	a5,53(s2)
	.loc 1 435 482 is_stmt 1
	.loc 1 435 541 is_stmt 0
	lw	a5,64(s1)
	srli	a5,a5,8
	.loc 1 435 509
	sb	a5,54(s2)
	.loc 1 435 560 is_stmt 1
	.loc 1 435 587 is_stmt 0
	lw	a5,64(s1)
	sb	a5,55(s2)
	.loc 1 435 630 is_stmt 1
	.loc 1 436 11
	.loc 1 436 67 is_stmt 0
	lbu	a5,79(s1)
	.loc 1 436 35
	sb	a5,56(s2)
	.loc 1 436 87 is_stmt 1
	.loc 1 436 146 is_stmt 0
	lhu	a5,78(s1)
	.loc 1 436 114
	sb	a5,57(s2)
	.loc 1 436 166 is_stmt 1
	.loc 1 436 225 is_stmt 0
	lw	a5,76(s1)
	srli	a5,a5,8
	.loc 1 436 193
	sb	a5,58(s2)
	.loc 1 436 245 is_stmt 1
	.loc 1 436 304 is_stmt 0
	lw	a5,76(s1)
	.loc 1 436 272
	sb	a5,59(s2)
	.loc 1 436 324 is_stmt 1
	.loc 1 436 383 is_stmt 0
	lbu	a5,75(s1)
	.loc 1 436 351
	sb	a5,60(s2)
	.loc 1 436 403 is_stmt 1
	.loc 1 436 462 is_stmt 0
	lhu	a5,74(s1)
	.loc 1 436 430
	sb	a5,61(s2)
	.loc 1 436 482 is_stmt 1
	.loc 1 436 541 is_stmt 0
	lw	a5,72(s1)
	srli	a5,a5,8
	.loc 1 436 509
	sb	a5,62(s2)
	.loc 1 436 560 is_stmt 1
	.loc 1 436 587 is_stmt 0
	lw	a5,72(s1)
	sb	a5,63(s2)
.L51:
	.loc 1 440 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL60:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL61:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL62:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL63:
.L52:
	.cfi_restore_state
	.loc 1 400 9 is_stmt 1
	li	a2,128
	li	a1,0
.LVL64:
	sub	a2,a2,a4
	call	memset
.LVL65:
	.loc 1 402 9
	.loc 1 402 21 is_stmt 0
	mv	a1,s3
	mv	a0,s1
	call	mbedtls_internal_sha512_process
.LVL66:
	.loc 1 402 11
	bne	a0,zero,.L51
	.loc 1 405 9 is_stmt 1
	li	a2,112
	li	a1,0
	mv	a0,s3
.LVL67:
	j	.L56
	.cfi_endproc
.LFE11:
	.size	mbedtls_sha512_finish_ret, .-mbedtls_sha512_finish_ret
	.section	.text.mbedtls_sha512_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_finish
	.type	mbedtls_sha512_finish, @function
mbedtls_sha512_finish:
.LFB12:
	.loc 1 445 1
	.cfi_startproc
.LVL68:
	.loc 1 446 5
	.loc 1 445 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 447 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 446 5
	tail	mbedtls_sha512_finish_ret
.LVL69:
	.cfi_endproc
.LFE12:
	.size	mbedtls_sha512_finish, .-mbedtls_sha512_finish
	.section	.text.mbedtls_sha512_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512_ret
	.type	mbedtls_sha512_ret, @function
mbedtls_sha512_ret:
.LFB13:
	.loc 1 459 1 is_stmt 1
	.cfi_startproc
.LVL70:
	.loc 1 460 5
	.loc 1 461 5
	.loc 1 464 5
	.loc 1 464 10
	.loc 1 464 17
	.loc 1 468 5
	.loc 1 468 10
	.loc 1 468 17
	.loc 1 469 5
	.loc 1 469 10
	.loc 1 469 17
	.loc 1 471 5
	.loc 1 459 1 is_stmt 0
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	ra,268(sp)
	sw	s0,264(sp)
	sw	s1,260(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	sw	s2,256(sp)
	sw	s3,252(sp)
	sw	s4,248(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 459 1
	mv	s3,a0
	.loc 1 471 5
	addi	a0,s0,-248
.LVL71:
	.loc 1 459 1
	mv	s4,a1
	mv	s2,a2
	sw	a3,-260(s0)
	.loc 1 471 5
	call	mbedtls_sha512_init
.LVL72:
	.loc 1 473 5 is_stmt 1
	.loc 1 473 17 is_stmt 0
	lw	a1,-260(s0)
	addi	a0,s0,-248
	call	mbedtls_sha512_starts_ret
.LVL73:
	mv	s1,a0
.LVL74:
	.loc 1 473 7
	bne	a0,zero,.L60
	.loc 1 476 5 is_stmt 1
	.loc 1 476 17 is_stmt 0
	mv	a2,s4
	mv	a1,s3
	addi	a0,s0,-248
	call	mbedtls_sha512_update_ret
.LVL75:
	mv	s1,a0
.LVL76:
	.loc 1 476 7
	bne	a0,zero,.L60
	.loc 1 479 5 is_stmt 1
	.loc 1 479 17 is_stmt 0
	mv	a1,s2
	addi	a0,s0,-248
	call	mbedtls_sha512_finish_ret
.LVL77:
	mv	s1,a0
.LVL78:
.L60:
	.loc 1 483 5 is_stmt 1
	addi	a0,s0,-248
	call	mbedtls_sha512_free
.LVL79:
	.loc 1 485 5
	.loc 1 486 1 is_stmt 0
	lw	ra,268(sp)
	.cfi_restore 1
	lw	s0,264(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 272
.LVL80:
	lw	s2,256(sp)
	.cfi_restore 18
.LVL81:
	lw	s3,252(sp)
	.cfi_restore 19
.LVL82:
	lw	s4,248(sp)
	.cfi_restore 20
.LVL83:
	mv	a0,s1
	lw	s1,260(sp)
	.cfi_restore 9
.LVL84:
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	mbedtls_sha512_ret, .-mbedtls_sha512_ret
	.section	.text.mbedtls_sha512,"ax",@progbits
	.align	1
	.globl	mbedtls_sha512
	.type	mbedtls_sha512, @function
mbedtls_sha512:
.LFB14:
	.loc 1 493 1 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 494 5
	.loc 1 493 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 495 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 494 5
	tail	mbedtls_sha512_ret
.LVL86:
	.cfi_endproc
.LFE14:
	.size	mbedtls_sha512, .-mbedtls_sha512
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.word	-205731576
	.word	1779033703
	.align	3
.LC1:
	.word	-2067093701
	.word	-1150833019
	.align	3
.LC2:
	.word	-23791573
	.word	1013904242
	.align	3
.LC3:
	.word	1595750129
	.word	-1521486534
	.align	3
.LC4:
	.word	-1377402159
	.word	1359893119
	.align	3
.LC5:
	.word	725511199
	.word	-1694144372
	.align	3
.LC6:
	.word	-79577749
	.word	528734635
	.align	3
.LC7:
	.word	327033209
	.word	1541459225
	.align	3
.LC8:
	.word	-1056596264
	.word	-876896931
	.align	3
.LC9:
	.word	914150663
	.word	1654270250
	.align	3
.LC10:
	.word	812702999
	.word	-1856437926
	.align	3
.LC11:
	.word	-150054599
	.word	355462360
	.align	3
.LC12:
	.word	-4191439
	.word	1731405415
	.align	3
.LC13:
	.word	1750603025
	.word	-1900787065
	.align	3
.LC14:
	.word	1694076839
	.word	-619958771
	.align	3
.LC15:
	.word	-1090891868
	.word	1203062813
	.section	.rodata.K,"a"
	.align	3
	.set	.LANCHOR0,. + 0
	.type	K, @object
	.size	K, 640
K:
	.word	-685199838
	.word	1116352408
	.word	602891725
	.word	1899447441
	.word	-330482897
	.word	-1245643825
	.word	-2121671748
	.word	-373957723
	.word	-213338824
	.word	961987163
	.word	-1241133031
	.word	1508970993
	.word	-1357295717
	.word	-1841331548
	.word	-630357736
	.word	-1424204075
	.word	-1560083902
	.word	-670586216
	.word	1164996542
	.word	310598401
	.word	1323610764
	.word	607225278
	.word	-704662302
	.word	1426881987
	.word	-226784913
	.word	1925078388
	.word	991336113
	.word	-2132889090
	.word	633803317
	.word	-1680079193
	.word	-815192428
	.word	-1046744716
	.word	-1628353838
	.word	-459576895
	.word	944711139
	.word	-272742522
	.word	-1953704523
	.word	264347078
	.word	2007800933
	.word	604807628
	.word	1495990901
	.word	770255983
	.word	1856431235
	.word	1249150122
	.word	-1119749164
	.word	1555081692
	.word	-2096016459
	.word	1996064986
	.word	-295247957
	.word	-1740746414
	.word	766784016
	.word	-1473132947
	.word	-1728372417
	.word	-1341970488
	.word	-1091629340
	.word	-1084653625
	.word	1034457026
	.word	-958395405
	.word	-1828018395
	.word	-710438585
	.word	-536640913
	.word	113926993
	.word	168717936
	.word	338241895
	.word	1188179964
	.word	666307205
	.word	1546045734
	.word	773529912
	.word	1522805485
	.word	1294757372
	.word	-1651133473
	.word	1396182291
	.word	-1951439906
	.word	1695183700
	.word	1014477480
	.word	1986661051
	.word	1206759142
	.word	-2117940946
	.word	344077627
	.word	-1838011259
	.word	1290863460
	.word	-1564481375
	.word	-1136513023
	.word	-1474664885
	.word	-789014639
	.word	-1035236496
	.word	106217008
	.word	-949202525
	.word	-688958952
	.word	-778901479
	.word	1432725776
	.word	-694614492
	.word	1467031594
	.word	-200395387
	.word	851169720
	.word	275423344
	.word	-1194143544
	.word	430227734
	.word	1363258195
	.word	506948616
	.word	-544281703
	.word	659060556
	.word	-509917016
	.word	883997877
	.word	-976659869
	.word	958139571
	.word	-482243893
	.word	1322822218
	.word	2003034995
	.word	1537002063
	.word	-692930397
	.word	1747873779
	.word	1575990012
	.word	1955562222
	.word	1125592928
	.word	2024104815
	.word	-1578062990
	.word	-2067236844
	.word	442776044
	.word	-1933114872
	.word	593698344
	.word	-1866530822
	.word	-561857047
	.word	-1538233109
	.word	-1295615723
	.word	-1090935817
	.word	-479046869
	.word	-965641998
	.word	-366583396
	.word	-903397682
	.word	566280711
	.word	-779700025
	.word	-840897762
	.word	-354779690
	.word	-294727304
	.word	-176337025
	.word	1914138554
	.word	116418474
	.word	-1563912026
	.word	174292421
	.word	-1090974290
	.word	289380356
	.word	320620315
	.word	460393269
	.word	587496836
	.word	685471733
	.word	1086792851
	.word	852142971
	.word	365543100
	.word	1017036298
	.word	-1676669620
	.word	1126000580
	.word	-885112138
	.word	1288033470
	.word	-60457430
	.word	1501505948
	.word	987167468
	.word	1607167915
	.word	1246189591
	.word	1816402316
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/sha512.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform_util.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x876
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.4byte	0x2c
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x69
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x2c
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0x5b
	.byte	0x3
	.4byte	0x88
	.byte	0x6
	.4byte	.LASF16
	.byte	0xd8
	.byte	0x4
	.byte	0x39
	.byte	0x10
	.4byte	0xdb
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x3b
	.byte	0xe
	.4byte	0xdb
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3c
	.byte	0xe
	.4byte	0xeb
	.byte	0x10
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3d
	.byte	0x13
	.4byte	0xfb
	.byte	0x50
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3f
	.byte	0x9
	.4byte	0x62
	.byte	0xd0
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0xeb
	.byte	0x9
	.4byte	0x69
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0xfb
	.byte	0x9
	.4byte	0x69
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0x10b
	.byte	0x9
	.4byte	0x69
	.byte	0x7f
	.byte	0
	.byte	0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x43
	.byte	0x1
	.4byte	0x99
	.byte	0x3
	.4byte	0x10b
	.byte	0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x8
	.4byte	0x94
	.4byte	0x139
	.byte	0x9
	.4byte	0x69
	.byte	0x4f
	.byte	0
	.byte	0x3
	.4byte	0x129
	.byte	0xb
	.string	"K"
	.byte	0x1
	.byte	0x9c
	.byte	0x17
	.4byte	0x139
	.byte	0x5
	.byte	0x3
	.4byte	K
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1e9
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d0
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1e9
	.byte	0x2b
	.4byte	0x1d0
	.4byte	.LLST37
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1ea
	.byte	0x1d
	.4byte	0x70
	.4byte	.LLST38
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1eb
	.byte	0x24
	.4byte	0x11c
	.4byte	.LLST39
	.byte	0xd
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x1ec
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST40
	.byte	0xe
	.4byte	.LVL86
	.4byte	0x1d6
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x33
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1c7
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e4
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1c7
	.byte	0x2e
	.4byte	0x1d0
	.4byte	.LLST32
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1c8
	.byte	0x1c
	.4byte	0x70
	.4byte	.LLST33
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1c9
	.byte	0x23
	.4byte	0x11c
	.4byte	.LLST34
	.byte	0xd
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x1ca
	.byte	0x19
	.4byte	0x62
	.4byte	.LLST35
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x1cc
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST36
	.byte	0x12
	.string	"ctx"
	.byte	0x1
	.2byte	0x1cd
	.byte	0x1c
	.4byte	0x10b
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7e
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1e2
	.byte	0x1
	.4byte	.L60
	.byte	0x14
	.4byte	.LVL72
	.4byte	0x70a
	.4byte	0x279
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x88,0x7e
	.byte	0
	.byte	0x14
	.4byte	.LVL73
	.4byte	0x638
	.4byte	0x296
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x88,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0xfc,0x7d
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LVL75
	.4byte	0x474
	.4byte	0x2b7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x88,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL77
	.4byte	0x33c
	.4byte	0x2d2
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x88,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL79
	.4byte	0x6cc
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x88,0x7e
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1bb
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x336
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x1bb
	.byte	0x35
	.4byte	0x336
	.4byte	.LLST30
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1bc
	.byte	0x2b
	.4byte	0x11c
	.4byte	.LLST31
	.byte	0xe
	.4byte	.LVL69
	.4byte	0x33c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x10b
	.byte	0x10
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x177
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x40a
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x177
	.byte	0x38
	.4byte	0x336
	.4byte	.LLST24
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x178
	.byte	0x2e
	.4byte	0x11c
	.4byte	.LLST25
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x17a
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST26
	.byte	0x17
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x17b
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST27
	.byte	0x17
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x17c
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST28
	.byte	0x11
	.string	"low"
	.byte	0x1
	.2byte	0x17c
	.byte	0x14
	.4byte	0x88
	.4byte	.LLST29
	.byte	0x18
	.4byte	.LVL50
	.4byte	0x84a
	.byte	0x14
	.4byte	.LVL59
	.4byte	0x527
	.4byte	0x3e0
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL65
	.4byte	0x84a
	.4byte	0x3f3
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL66
	.4byte	0x527
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x16c
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x474
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x16c
	.byte	0x35
	.4byte	0x336
	.4byte	.LLST21
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x16d
	.byte	0x32
	.4byte	0x1d0
	.4byte	.LLST22
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x16e
	.byte	0x24
	.4byte	0x70
	.4byte	.LLST23
	.byte	0xe
	.4byte	.LVL44
	.4byte	0x474
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x13a
	.byte	0x5
	.4byte	0x62
	.byte	0x1
	.4byte	0x4d5
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.2byte	0x13a
	.byte	0x38
	.4byte	0x336
	.byte	0x1b
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x13b
	.byte	0x35
	.4byte	0x1d0
	.byte	0x1b
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x13c
	.byte	0x27
	.4byte	0x70
	.byte	0x1c
	.string	"ret"
	.byte	0x1
	.2byte	0x13e
	.byte	0x9
	.4byte	0x62
	.byte	0x1d
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x13f
	.byte	0xc
	.4byte	0x70
	.byte	0x1d
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x140
	.byte	0x12
	.4byte	0x69
	.byte	0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x12f
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x527
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x12f
	.byte	0x36
	.4byte	0x336
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x130
	.byte	0x32
	.4byte	0x1d0
	.4byte	.LLST11
	.byte	0xe
	.4byte	.LVL19
	.4byte	0x527
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc8
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d9
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0xc8
	.byte	0x3e
	.4byte	0x336
	.4byte	.LLST7
	.byte	0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc9
	.byte	0x3a
	.4byte	0x1d0
	.4byte	.LLST8
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST9
	.byte	0x22
	.2byte	0x2d0
	.byte	0x1
	.byte	0xcc
	.byte	0x5
	.4byte	0x5ab
	.byte	0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0xce
	.byte	0x12
	.4byte	0x88
	.byte	0
	.byte	0x7
	.4byte	.LASF34
	.byte	0x1
	.byte	0xce
	.byte	0x19
	.4byte	0x88
	.byte	0x8
	.byte	0x23
	.string	"W"
	.byte	0x1
	.byte	0xce
	.byte	0x20
	.4byte	0x5d9
	.byte	0x10
	.byte	0x24
	.string	"A"
	.byte	0x1
	.byte	0xcf
	.byte	0x12
	.4byte	0xeb
	.2byte	0x290
	.byte	0
	.byte	0x25
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd0
	.byte	0x7
	.4byte	0x56f
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x79
	.byte	0x15
	.4byte	.LVL16
	.4byte	0x856
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.byte	0x78
	.byte	0xec,0x79
	.byte	0x6
	.byte	0xa
	.2byte	0x280
	.byte	0x1c
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x2d0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x5e9
	.byte	0x9
	.4byte	0x69
	.byte	0x4f
	.byte	0
	.byte	0x26
	.4byte	.LASF36
	.byte	0x1
	.byte	0x90
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x638
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x90
	.byte	0x35
	.4byte	0x336
	.4byte	.LLST5
	.byte	0x20
	.4byte	.LASF15
	.byte	0x1
	.byte	0x91
	.byte	0x21
	.4byte	0x62
	.4byte	.LLST6
	.byte	0xe
	.4byte	.LVL10
	.4byte	0x638
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x671
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x5f
	.byte	0x38
	.4byte	0x336
	.4byte	.LLST4
	.byte	0x27
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5f
	.byte	0x41
	.4byte	0x62
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x26
	.4byte	.LASF38
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c6
	.byte	0x1f
	.string	"dst"
	.byte	0x1
	.byte	0x53
	.byte	0x34
	.4byte	0x336
	.4byte	.LLST2
	.byte	0x1f
	.string	"src"
	.byte	0x1
	.byte	0x54
	.byte	0x3a
	.4byte	0x6c6
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x862
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x117
	.byte	0x26
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x70a
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x4b
	.byte	0x33
	.4byte	0x336
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x856
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF40
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x74d
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x44
	.byte	0x33
	.4byte	0x336
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x84a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x474
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x84a
	.byte	0x29
	.4byte	0x486
	.4byte	.LLST12
	.byte	0x29
	.4byte	0x493
	.4byte	.LLST13
	.byte	0x29
	.4byte	0x4a0
	.4byte	.LLST14
	.byte	0x2a
	.4byte	0x4ad
	.byte	0x92,0x7f
	.byte	0x2b
	.4byte	0x4ba
	.byte	0x2b
	.4byte	0x4c7
	.byte	0x2c
	.4byte	0x474
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x13a
	.byte	0x5
	.byte	0x29
	.4byte	0x4a0
	.4byte	.LLST15
	.byte	0x29
	.4byte	0x493
	.4byte	.LLST16
	.byte	0x29
	.4byte	0x486
	.4byte	.LLST17
	.byte	0x2d
	.4byte	0x4ad
	.4byte	.LLST18
	.byte	0x2d
	.4byte	0x4ba
	.4byte	.LLST19
	.byte	0x2d
	.4byte	0x4c7
	.4byte	.LLST20
	.byte	0x14
	.4byte	.LVL27
	.4byte	0x86d
	.4byte	0x7f6
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x86
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL28
	.4byte	0x527
	.4byte	0x810
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL36
	.4byte	0x527
	.4byte	0x824
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL40
	.4byte	0x86d
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x82
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x50
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x2e
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0xf6
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF43
	.4byte	.LASF49
	.byte	0x7
	.byte	0
	.byte	0x2e
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x1f
	.byte	0x8
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x5
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
	.byte	0x18
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x31
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST37:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL86-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL82
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72-1
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL83
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL72-1
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL81
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL72-1
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x78
	.byte	0xfc,0x7d
	.4byte	.LVL80
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.byte	0xfc,0x7d
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x4
	.byte	0x83
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x4
	.byte	0x8b
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0x7a
	.byte	0x80,0x7f
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL42
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL32
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0x79
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0x79
	.byte	0x80,0x1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x8
	.byte	0x80
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL23
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"mbedtls_sha512"
.LASF44:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF9:
	.string	"size_t"
.LASF47:
	.string	"exit"
.LASF40:
	.string	"mbedtls_sha512_init"
.LASF13:
	.string	"state"
.LASF35:
	.string	"local"
.LASF14:
	.string	"buffer"
.LASF25:
	.string	"used"
.LASF29:
	.string	"left"
.LASF27:
	.string	"mbedtls_sha512_update"
.LASF8:
	.string	"unsigned int"
.LASF11:
	.string	"uint64_t"
.LASF45:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha512.c"
.LASF23:
	.string	"mbedtls_sha512_ret"
.LASF31:
	.string	"data"
.LASF48:
	.string	"mbedtls_sha512_update_ret"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"input"
.LASF28:
	.string	"fill"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"memset"
.LASF37:
	.string	"mbedtls_sha512_starts_ret"
.LASF38:
	.string	"mbedtls_sha512_clone"
.LASF26:
	.string	"high"
.LASF15:
	.string	"is384"
.LASF39:
	.string	"mbedtls_sha512_free"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF22:
	.string	"mbedtls_sha512_finish"
.LASF49:
	.string	"__builtin_memcpy"
.LASF46:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/mbedtls_lts"
.LASF6:
	.string	"long long int"
.LASF43:
	.string	"memcpy"
.LASF33:
	.string	"temp1"
.LASF34:
	.string	"temp2"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"output"
.LASF24:
	.string	"mbedtls_sha512_finish_ret"
.LASF19:
	.string	"ilen"
.LASF12:
	.string	"total"
.LASF4:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF16:
	.string	"mbedtls_sha512_context"
.LASF36:
	.string	"mbedtls_sha512_starts"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"mbedtls_sha512_process"
.LASF42:
	.string	"mbedtls_platform_zeroize"
.LASF32:
	.string	"mbedtls_internal_sha512_process"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
