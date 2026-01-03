	.file	"aes_encrypt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.add_round_key,"ax",@progbits
	.align	1
	.type	add_round_key, @function
add_round_key:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/aes_encrypt.c"
	.loc 1 102 1
	.cfi_startproc
.LVL0:
	.loc 1 103 2
	.loc 1 102 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 103 25
	lbu	a5,3(a1)
	.loc 1 103 7
	lbu	a4,0(a0)
	xor	a5,a5,a4
	sb	a5,0(a0)
	.loc 1 103 33 is_stmt 1
	.loc 1 103 56 is_stmt 0
	lhu	a5,2(a1)
	.loc 1 103 38
	lbu	a4,1(a0)
	xor	a5,a5,a4
	sb	a5,1(a0)
	.loc 1 104 2 is_stmt 1
	.loc 1 104 25 is_stmt 0
	lw	a5,0(a1)
	.loc 1 104 7
	lbu	a4,2(a0)
	.loc 1 104 25
	srli	a5,a5,8
	.loc 1 104 7
	xor	a5,a5,a4
	sb	a5,2(a0)
	.loc 1 104 32 is_stmt 1
	.loc 1 104 40 is_stmt 0
	lw	a5,0(a1)
	.loc 1 104 37
	lbu	a4,3(a0)
	xor	a5,a5,a4
	sb	a5,3(a0)
	.loc 1 105 2 is_stmt 1
	.loc 1 105 25 is_stmt 0
	lbu	a5,7(a1)
	.loc 1 105 7
	lbu	a4,4(a0)
	xor	a5,a5,a4
	sb	a5,4(a0)
	.loc 1 105 33 is_stmt 1
	.loc 1 105 56 is_stmt 0
	lhu	a5,6(a1)
	.loc 1 105 38
	lbu	a4,5(a0)
	xor	a5,a5,a4
	sb	a5,5(a0)
	.loc 1 106 2 is_stmt 1
	.loc 1 106 25 is_stmt 0
	lw	a5,4(a1)
	.loc 1 106 7
	lbu	a4,6(a0)
	.loc 1 106 25
	srli	a5,a5,8
	.loc 1 106 7
	xor	a5,a5,a4
	sb	a5,6(a0)
	.loc 1 106 32 is_stmt 1
	.loc 1 106 40 is_stmt 0
	lw	a5,4(a1)
	.loc 1 106 37
	lbu	a4,7(a0)
	xor	a5,a5,a4
	sb	a5,7(a0)
	.loc 1 107 2 is_stmt 1
	.loc 1 107 25 is_stmt 0
	lbu	a5,11(a1)
	.loc 1 107 7
	lbu	a4,8(a0)
	xor	a5,a5,a4
	sb	a5,8(a0)
	.loc 1 107 33 is_stmt 1
	.loc 1 107 38 is_stmt 0
	lbu	a4,9(a0)
	.loc 1 107 56
	lhu	a5,10(a1)
	.loc 1 107 38
	xor	a5,a5,a4
	sb	a5,9(a0)
	.loc 1 108 2 is_stmt 1
	.loc 1 108 26 is_stmt 0
	lw	a5,8(a1)
	.loc 1 108 8
	lbu	a4,10(a0)
	.loc 1 111 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 108 26
	srli	a5,a5,8
	.loc 1 108 8
	xor	a5,a5,a4
	sb	a5,10(a0)
	.loc 1 108 33 is_stmt 1
	.loc 1 108 42 is_stmt 0
	lw	a5,8(a1)
	.loc 1 108 39
	lbu	a4,11(a0)
	xor	a5,a5,a4
	sb	a5,11(a0)
	.loc 1 109 2 is_stmt 1
	.loc 1 109 26 is_stmt 0
	lbu	a5,15(a1)
	.loc 1 109 8
	lbu	a4,12(a0)
	xor	a5,a5,a4
	sb	a5,12(a0)
	.loc 1 109 34 is_stmt 1
	.loc 1 109 58 is_stmt 0
	lhu	a5,14(a1)
	.loc 1 109 40
	lbu	a4,13(a0)
	xor	a5,a5,a4
	sb	a5,13(a0)
	.loc 1 110 2 is_stmt 1
	.loc 1 110 26 is_stmt 0
	lw	a5,12(a1)
	.loc 1 110 8
	lbu	a4,14(a0)
	.loc 1 110 26
	srli	a5,a5,8
	.loc 1 110 8
	xor	a5,a5,a4
	sb	a5,14(a0)
	.loc 1 110 33 is_stmt 1
	.loc 1 110 42 is_stmt 0
	lw	a5,12(a1)
	.loc 1 110 39
	lbu	a4,15(a0)
	xor	a5,a5,a4
	sb	a5,15(a0)
	.loc 1 111 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	add_round_key, .-add_round_key
	.section	.text.sub_bytes,"ax",@progbits
	.align	1
	.type	sub_bytes, @function
sub_bytes:
.LFB5:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 115 2
	.loc 1 117 2
	.loc 1 117 14
	.loc 1 114 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 118 14
	lui	a4,%hi(.LANCHOR0)
	.cfi_offset 8, -4
	.loc 1 114 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	addi	a3,a0,16
	.loc 1 118 14
	addi	a4,a4,%lo(.LANCHOR0)
.LVL2:
.L4:
	.loc 1 118 3 is_stmt 1 discriminator 3
	.loc 1 118 16 is_stmt 0 discriminator 3
	lbu	a5,0(a0)
	.loc 1 117 2 discriminator 3
	addi	a0,a0,1
.LVL3:
	.loc 1 118 14 discriminator 3
	add	a5,a4,a5
	.loc 1 118 8 discriminator 3
	lbu	a5,0(a5)
	sb	a5,-1(a0)
	.loc 1 117 31 is_stmt 1 discriminator 3
.LVL4:
	.loc 1 117 14 discriminator 3
	.loc 1 117 2 is_stmt 0 discriminator 3
	bne	a0,a3,.L4
	.loc 1 120 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	sub_bytes, .-sub_bytes
	.section	.text.shift_rows,"ax",@progbits
	.align	1
	.type	shift_rows, @function
shift_rows:
.LFB8:
	.loc 1 148 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 149 2
	.loc 1 151 2
	.loc 1 148 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 151 7
	lbu	a4,0(a0)
	.loc 1 155 9
	addi	a2,s0,-32
	li	a3,16
	.loc 1 151 7
	sb	a4,-32(s0)
	.loc 1 151 15 is_stmt 1
	.loc 1 151 20 is_stmt 0
	lbu	a4,5(a0)
	.loc 1 155 9
	li	a1,16
	.loc 1 151 20
	sb	a4,-31(s0)
	.loc 1 151 28 is_stmt 1
	.loc 1 151 33 is_stmt 0
	lbu	a4,10(a0)
	sb	a4,-30(s0)
	.loc 1 151 42 is_stmt 1
	.loc 1 151 47 is_stmt 0
	lbu	a4,15(a0)
	sb	a4,-29(s0)
	.loc 1 152 2 is_stmt 1
	.loc 1 152 7 is_stmt 0
	lbu	a4,4(a0)
	sb	a4,-28(s0)
	.loc 1 152 15 is_stmt 1
	.loc 1 152 20 is_stmt 0
	lbu	a4,9(a0)
	sb	a4,-27(s0)
	.loc 1 152 28 is_stmt 1
	.loc 1 152 33 is_stmt 0
	lbu	a4,14(a0)
	sb	a4,-26(s0)
	.loc 1 152 42 is_stmt 1
	.loc 1 152 47 is_stmt 0
	lbu	a4,3(a0)
	sb	a4,-25(s0)
	.loc 1 153 2 is_stmt 1
	.loc 1 153 7 is_stmt 0
	lbu	a4,8(a0)
	sb	a4,-24(s0)
	.loc 1 153 15 is_stmt 1
	.loc 1 153 20 is_stmt 0
	lbu	a4,13(a0)
	sb	a4,-23(s0)
	.loc 1 153 29 is_stmt 1
	.loc 1 153 35 is_stmt 0
	lbu	a4,2(a0)
	sb	a4,-22(s0)
	.loc 1 153 43 is_stmt 1
	.loc 1 153 49 is_stmt 0
	lbu	a4,7(a0)
	sb	a4,-21(s0)
	.loc 1 154 2 is_stmt 1
	.loc 1 154 8 is_stmt 0
	lbu	a4,12(a0)
	sb	a4,-20(s0)
	.loc 1 154 17 is_stmt 1
	.loc 1 154 23 is_stmt 0
	lbu	a4,1(a0)
	sb	a4,-19(s0)
	.loc 1 154 31 is_stmt 1
	.loc 1 154 37 is_stmt 0
	lbu	a4,6(a0)
	sb	a4,-18(s0)
	.loc 1 154 45 is_stmt 1
	.loc 1 154 51 is_stmt 0
	lbu	a5,11(a0)
	sb	a5,-17(s0)
	.loc 1 155 2 is_stmt 1
	.loc 1 155 9 is_stmt 0
	call	_copy
.LVL6:
	.loc 1 156 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	shift_rows, .-shift_rows
	.section	.text.mult_row_column,"ax",@progbits
	.align	1
	.type	mult_row_column, @function
mult_row_column:
.LFB6:
	.loc 1 125 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 126 2
	.loc 1 125 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 125 1
	mv	s3,a0
	.loc 1 126 11
	lbu	a0,0(a1)
.LVL8:
	.loc 1 125 1
	mv	s1,a1
	.loc 1 126 11
	call	_double_byte
.LVL9:
	mv	s2,a0
	.loc 1 126 34
	lbu	a0,1(s1)
	call	_double_byte
.LVL10:
	.loc 1 126 9
	lbu	a4,2(s1)
	lbu	a5,1(s1)
	xor	a5,a5,a4
	lbu	a4,3(s1)
	xor	a5,a5,a4
	xor	s2,s2,a5
	xor	s2,a0,s2
	sb	s2,0(s3)
	.loc 1 127 2 is_stmt 1
	.loc 1 127 19 is_stmt 0
	lbu	a0,1(s1)
	.loc 1 127 13
	lbu	s4,0(s1)
	.loc 1 127 19
	call	_double_byte
.LVL11:
	mv	s2,a0
	.loc 1 127 42
	lbu	a0,2(s1)
	call	_double_byte
.LVL12:
	.loc 1 127 9
	lbu	a5,2(s1)
	xor	s4,s4,a5
	lbu	a5,3(s1)
	xor	s4,s4,a5
	xor	s2,s2,s4
	xor	s2,a0,s2
	sb	s2,1(s3)
	.loc 1 128 2 is_stmt 1
	lbu	a5,1(s1)
	lbu	s2,0(s1)
	.loc 1 128 27 is_stmt 0
	lbu	a0,2(s1)
	xor	s2,s2,a5
	call	_double_byte
.LVL13:
	mv	s4,a0
	.loc 1 128 50
	lbu	a0,3(s1)
	andi	s2,s2,0xff
	call	_double_byte
.LVL14:
	.loc 1 128 9
	lbu	a5,3(s1)
	xor	s2,s2,a5
	xor	s2,s4,s2
	xor	s2,a0,s2
	sb	s2,2(s3)
	.loc 1 129 2 is_stmt 1
	.loc 1 129 12 is_stmt 0
	lbu	a0,0(s1)
	call	_double_byte
.LVL15:
	.loc 1 129 9
	lbu	a5,1(s1)
	lbu	s2,0(s1)
	xor	s2,s2,a5
	lbu	a5,2(s1)
	xor	s2,s2,a5
	xor	s2,a0,s2
	.loc 1 129 59
	lbu	a0,3(s1)
	.loc 1 129 9
	andi	s2,s2,0xff
	.loc 1 129 59
	call	_double_byte
.LVL16:
	.loc 1 130 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	.loc 1 129 9
	xor	s2,s2,a0
	sb	s2,3(s3)
	.loc 1 130 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL17:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL18:
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	mult_row_column, .-mult_row_column
	.section	.text.tc_aes128_set_encrypt_key,"ax",@progbits
	.align	1
	.globl	tc_aes128_set_encrypt_key
	.type	tc_aes128_set_encrypt_key, @function
tc_aes128_set_encrypt_key:
.LFB3:
	.loc 1 71 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 72 2
	.loc 1 71 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	ra,60(sp)
	mv	s1,a1
	.loc 1 72 21
	lui	a1,%hi(.LANCHOR1)
.LVL20:
	.loc 1 71 1
	.cfi_offset 1, -4
	.loc 1 71 1
	mv	s2,a0
	.loc 1 72 21
	li	a2,44
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,s0,-60
.LVL21:
	call	memcpy
.LVL22:
	.loc 1 76 2 is_stmt 1
	.loc 1 77 2
	.loc 1 79 2
	.loc 1 80 10 is_stmt 0
	li	a0,0
	.loc 1 79 5
	beq	s2,zero,.L11
	.loc 1 81 9 is_stmt 1
	.loc 1 81 12 is_stmt 0
	beq	s1,zero,.L11
	mv	a1,s1
	mv	a0,s2
	addi	a2,s1,16
	mv	a4,s2
.LVL23:
.L13:
	.loc 1 86 3 is_stmt 1 discriminator 3
	.loc 1 86 19 is_stmt 0 discriminator 3
	lbu	a5,0(a1)
	.loc 1 86 36 discriminator 3
	lbu	a3,1(a1)
	.loc 1 85 2 discriminator 3
	addi	a1,a1,4
	.loc 1 86 26 discriminator 3
	slli	a5,a5,24
	.loc 1 86 45 discriminator 3
	slli	a3,a3,16
	.loc 1 87 26 discriminator 3
	or	a5,a5,a3
	.loc 1 87 30 discriminator 3
	lbu	a3,-1(a1)
	.loc 1 87 26 discriminator 3
	or	a5,a5,a3
	.loc 1 87 12 discriminator 3
	lbu	a3,-2(a1)
	.loc 1 87 21 discriminator 3
	slli	a3,a3,8
	.loc 1 87 26 discriminator 3
	or	a5,a5,a3
	.loc 1 86 15 discriminator 3
	sw	a5,0(a4)
	.loc 1 85 23 is_stmt 1 discriminator 3
	.loc 1 85 14 discriminator 3
	.loc 1 85 2 is_stmt 0 discriminator 3
	addi	a4,a4,4
	bne	a2,a1,.L13
	.loc 1 93 14
	lui	a2,%hi(.LANCHOR0)
	li	a1,4
	addi	a2,a2,%lo(.LANCHOR0)
	.loc 1 90 2
	li	a6,44
.LVL24:
.L15:
	.loc 1 91 3 is_stmt 1
	.loc 1 92 10 is_stmt 0
	andi	a4,a1,3
	.loc 1 91 5
	lw	a5,12(a0)
.LVL25:
	.loc 1 92 3 is_stmt 1
	.loc 1 92 6 is_stmt 0
	bne	a4,zero,.L14
	.loc 1 93 4 is_stmt 1
.LVL26:
.LBB10:
.LBB11:
	.loc 1 64 2
	.loc 1 64 21 is_stmt 0
	slli	a4,a5,8
	srli	a5,a5,24
.LVL27:
	or	a5,a5,a4
.LVL28:
.LBE11:
.LBE10:
	.loc 1 64 2 is_stmt 1
	.loc 1 64 2
	.loc 1 64 2
	.loc 1 93 29 is_stmt 0
	srli	a4,a5,24
	.loc 1 93 166
	andi	a3,a5,255
	.loc 1 93 14
	add	a4,a2,a4
	lbu	a4,0(a4)
	.loc 1 93 144
	add	a3,a2,a3
	.loc 1 93 173
	lbu	a3,0(a3)
	.loc 1 93 44
	slli	a4,a4,24
	.loc 1 93 138
	or	a4,a4,a3
	.loc 1 93 73
	srli	a3,a5,16
	.loc 1 93 81
	andi	a3,a3,255
	.loc 1 93 58
	add	a3,a2,a3
	lbu	a3,0(a3)
	.loc 1 93 88
	slli	a3,a3,16
	.loc 1 93 138
	or	a3,a4,a3
	.loc 1 93 117
	srli	a4,a5,8
	.loc 1 93 124
	andi	a4,a4,255
	.loc 1 93 102
	add	a4,a2,a4
	lbu	a5,0(a4)
	.loc 1 93 131
	slli	a5,a5,8
	.loc 1 93 138
	or	a4,a3,a5
	.loc 1 93 190
	andi	a5,a1,-4
	addi	a3,s0,-16
	add	a5,a3,a5
	.loc 1 93 6
	lw	a5,-44(a5)
.LVL29:
	xor	a5,a4,a5
.LVL30:
.L14:
	.loc 1 95 3 is_stmt 1
	.loc 1 95 33 is_stmt 0
	lw	a4,0(a0)
	.loc 1 90 33
	addi	a1,a1,1
.LVL31:
	.loc 1 90 2
	addi	a0,a0,4
	.loc 1 95 33
	xor	a5,a4,a5
.LVL32:
	.loc 1 95 15
	sw	a5,12(a0)
	.loc 1 90 33 is_stmt 1
.LVL33:
	.loc 1 90 9
	.loc 1 90 2 is_stmt 0
	bne	a1,a6,.L15
	.loc 1 98 9
	li	a0,1
.LVL34:
.L11:
	.loc 1 99 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL35:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL36:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	tc_aes128_set_encrypt_key, .-tc_aes128_set_encrypt_key
	.section	.text.tc_aes_encrypt,"ax",@progbits
	.align	1
	.globl	tc_aes_encrypt
	.type	tc_aes_encrypt, @function
tc_aes_encrypt:
.LFB9:
	.loc 1 159 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 160 2
	.loc 1 161 2
	.loc 1 163 2
	.loc 1 163 5 is_stmt 0
	beq	a0,zero,.L24
	.loc 1 159 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	s2,a0
	.loc 1 165 9 is_stmt 1
	.loc 1 164 10 is_stmt 0
	li	a0,0
.LVL38:
	.loc 1 165 12
	beq	a1,zero,.L21
	mv	s1,a2
	.loc 1 167 9 is_stmt 1
	.loc 1 167 12 is_stmt 0
	beq	a2,zero,.L21
	.loc 1 171 2 is_stmt 1
	.loc 1 171 8 is_stmt 0
	mv	a2,a1
.LVL39:
	li	a3,16
	li	a1,16
.LVL40:
	addi	a0,s0,-64
	call	_copy
.LVL41:
	.loc 1 172 2 is_stmt 1
	mv	a1,s1
	addi	a0,s0,-64
	addi	s3,s1,16
	call	add_round_key
.LVL42:
	.loc 1 174 2
	.loc 1 174 14
	addi	s1,s1,160
.LVL43:
.L23:
	.loc 1 175 3 discriminator 3
	addi	a0,s0,-64
	call	sub_bytes
.LVL44:
	.loc 1 176 3 discriminator 3
	addi	a0,s0,-64
	call	shift_rows
.LVL45:
	.loc 1 177 3 discriminator 3
.LBB14:
.LBB15:
	.loc 1 134 2 discriminator 3
	.loc 1 136 2 discriminator 3
	addi	a1,s0,-64
.LVL46:
	addi	a0,s0,-48
	call	mult_row_column
.LVL47:
	.loc 1 137 2 discriminator 3
	addi	a1,s0,-60
	addi	a0,s0,-44
	call	mult_row_column
.LVL48:
	.loc 1 138 2 discriminator 3
	addi	a1,s0,-56
	addi	a0,s0,-40
	call	mult_row_column
.LVL49:
	.loc 1 139 2 discriminator 3
	addi	a1,s0,-52
	addi	a0,s0,-36
	call	mult_row_column
.LVL50:
	.loc 1 140 2 discriminator 3
	.loc 1 140 9 is_stmt 0 discriminator 3
	li	a3,16
	addi	a2,s0,-48
	li	a1,16
	addi	a0,s0,-64
.LVL51:
	call	_copy
.LVL52:
.LBE15:
.LBE14:
	.loc 1 178 3 is_stmt 1 discriminator 3
	mv	a1,s3
	addi	a0,s0,-64
	.loc 1 174 2 is_stmt 0 discriminator 3
	addi	s3,s3,16
	.loc 1 178 3 discriminator 3
	call	add_round_key
.LVL53:
	.loc 1 174 30 is_stmt 1 discriminator 3
	.loc 1 174 14 discriminator 3
	.loc 1 174 2 is_stmt 0 discriminator 3
	bne	s1,s3,.L23
	.loc 1 181 2 is_stmt 1
	addi	a0,s0,-64
	call	sub_bytes
.LVL54:
	.loc 1 182 2
	addi	a0,s0,-64
	call	shift_rows
.LVL55:
	.loc 1 183 2
	mv	a1,s1
	addi	a0,s0,-64
	call	add_round_key
.LVL56:
	.loc 1 185 2
	.loc 1 185 8 is_stmt 0
	li	a3,16
	addi	a2,s0,-64
	li	a1,16
	mv	a0,s2
	call	_copy
.LVL57:
	.loc 1 188 2 is_stmt 1
	addi	a0,s0,-64
	li	a2,16
	li	a1,0
	call	_set
.LVL58:
	.loc 1 190 2
	.loc 1 190 9 is_stmt 0
	li	a0,1
.LVL59:
.L21:
	.loc 1 191 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL60:
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL61:
.L24:
	.loc 1 164 10
	li	a0,0
.LVL62:
	.loc 1 191 1
	ret
	.cfi_endproc
.LFE9:
	.size	tc_aes_encrypt, .-tc_aes_encrypt
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	0
	.word	16777216
	.word	33554432
	.word	67108864
	.word	134217728
	.word	268435456
	.word	536870912
	.word	1073741824
	.word	-2147483648
	.word	452984832
	.word	905969664
	.section	.rodata.sbox,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sbox, @object
	.size	sbox, 256
sbox:
	.string	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321"
	.ascii	"\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002"
	.ascii	"\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363"
	.ascii	"\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220"
	.ascii	"\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221"
	.ascii	"\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034"
	.ascii	"\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5"
	.ascii	"W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207"
	.ascii	"\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x578
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
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
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.4byte	0x41
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	0x75
	.byte	0x6
	.4byte	.LASF27
	.byte	0xb0
	.byte	0x3
	.byte	0x40
	.byte	0x10
	.4byte	0x9c
	.byte	0x7
	.4byte	.LASF28
	.byte	0x3
	.byte	0x41
	.byte	0xf
	.4byte	0x9c
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x75
	.4byte	0xac
	.byte	0x9
	.4byte	0x75
	.byte	0x2b
	.byte	0
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x42
	.byte	0x4
	.4byte	0xbd
	.byte	0x4
	.4byte	0xac
	.byte	0xa
	.byte	0x4
	.4byte	0x81
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x8
	.4byte	0x4d
	.4byte	0xda
	.byte	0x9
	.4byte	0x75
	.byte	0xff
	.byte	0
	.byte	0x4
	.4byte	0xca
	.byte	0xb
	.4byte	.LASF12
	.byte	0x1
	.byte	0x25
	.byte	0x16
	.4byte	0xda
	.byte	0x5
	.byte	0x3
	.4byte	sbox
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x305
	.byte	0xd
	.string	"out"
	.byte	0x1
	.byte	0x9e
	.byte	0x1d
	.4byte	0x305
	.4byte	.LLST10
	.byte	0xd
	.string	"in"
	.byte	0x1
	.byte	0x9e
	.byte	0x31
	.4byte	0x30b
	.4byte	.LLST11
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x9e
	.byte	0x4b
	.4byte	0xb8
	.4byte	.LLST12
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0xa0
	.byte	0xa
	.4byte	0x311
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST13
	.byte	0xf
	.4byte	0x374
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0xb1
	.byte	0x3
	.4byte	0x203
	.byte	0x10
	.4byte	0x381
	.4byte	.LLST14
	.byte	0x11
	.4byte	0x38b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x12
	.4byte	.LVL47
	.4byte	0x396
	.4byte	0x194
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL48
	.4byte	0x396
	.4byte	0x1ae
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0
	.byte	0x12
	.4byte	.LVL49
	.4byte	0x396
	.4byte	0x1c8
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.byte	0
	.byte	0x12
	.4byte	.LVL50
	.4byte	0x396
	.4byte	0x1e2
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4c
	.byte	0
	.byte	0x14
	.4byte	.LVL52
	.4byte	0x54c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL41
	.4byte	0x54c
	.4byte	0x228
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL42
	.4byte	0x447
	.4byte	0x242
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL44
	.4byte	0x414
	.4byte	0x256
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL45
	.4byte	0x321
	.4byte	0x26a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL53
	.4byte	0x447
	.4byte	0x284
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0x70
	.byte	0
	.byte	0x12
	.4byte	.LVL54
	.4byte	0x414
	.4byte	0x298
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL55
	.4byte	0x321
	.4byte	0x2ac
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL56
	.4byte	0x447
	.4byte	0x2c6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL57
	.4byte	0x54c
	.4byte	0x2ea
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL58
	.4byte	0x558
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x41
	.byte	0xa
	.byte	0x4
	.4byte	0x4d
	.byte	0x8
	.4byte	0x41
	.4byte	0x321
	.byte	0x9
	.4byte	0x75
	.byte	0xf
	.byte	0
	.byte	0x15
	.4byte	.LASF14
	.byte	0x1
	.byte	0x93
	.byte	0x14
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x374
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x93
	.byte	0x28
	.4byte	0x305
	.4byte	.LLST2
	.byte	0x16
	.string	"t"
	.byte	0x1
	.byte	0x95
	.byte	0xa
	.4byte	0x311
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x54c
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
	.byte	0x1
	.byte	0x40
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0x84
	.byte	0x14
	.byte	0x3
	.4byte	0x396
	.byte	0x18
	.string	"s"
	.byte	0x1
	.byte	0x84
	.byte	0x29
	.4byte	0x305
	.byte	0x19
	.string	"t"
	.byte	0x1
	.byte	0x86
	.byte	0xa
	.4byte	0x311
	.byte	0
	.byte	0x15
	.4byte	.LASF15
	.byte	0x1
	.byte	0x7c
	.byte	0x14
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x414
	.byte	0xd
	.string	"out"
	.byte	0x1
	.byte	0x7c
	.byte	0x2d
	.4byte	0x305
	.4byte	.LLST3
	.byte	0xd
	.string	"in"
	.byte	0x1
	.byte	0x7c
	.byte	0x41
	.4byte	0x30b
	.4byte	.LLST4
	.byte	0x1a
	.4byte	.LVL9
	.4byte	0x564
	.byte	0x1a
	.4byte	.LVL10
	.4byte	0x564
	.byte	0x1a
	.4byte	.LVL11
	.4byte	0x564
	.byte	0x1a
	.4byte	.LVL12
	.4byte	0x564
	.byte	0x1a
	.4byte	.LVL13
	.4byte	0x564
	.byte	0x1a
	.4byte	.LVL14
	.4byte	0x564
	.byte	0x1a
	.4byte	.LVL15
	.4byte	0x564
	.byte	0x1a
	.4byte	.LVL16
	.4byte	0x564
	.byte	0
	.byte	0x15
	.4byte	.LASF16
	.byte	0x1
	.byte	0x71
	.byte	0x14
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x447
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x71
	.byte	0x27
	.4byte	0x305
	.4byte	.LLST0
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x73
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST1
	.byte	0
	.byte	0x15
	.4byte	.LASF17
	.byte	0x1
	.byte	0x65
	.byte	0x14
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x476
	.byte	0x1b
	.string	"s"
	.byte	0x1
	.byte	0x65
	.byte	0x2b
	.4byte	0x305
	.byte	0x1
	.byte	0x5a
	.byte	0x1b
	.string	"k"
	.byte	0x1
	.byte	0x65
	.byte	0x42
	.4byte	0x476
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x7c
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x51b
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x46
	.byte	0x2f
	.4byte	0xac
	.4byte	.LLST5
	.byte	0xd
	.string	"k"
	.byte	0x1
	.byte	0x46
	.byte	0x41
	.4byte	0x30b
	.4byte	.LLST6
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.byte	0x15
	.4byte	0x52b
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST7
	.byte	0xe
	.string	"t"
	.byte	0x1
	.byte	0x4d
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST8
	.byte	0xf
	.4byte	0x530
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x5d
	.byte	0x11
	.4byte	0x4fb
	.byte	0x10
	.4byte	0x541
	.4byte	.LLST9
	.byte	0
	.byte	0x14
	.4byte	.LVL22
	.4byte	0x570
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x7c
	.4byte	0x52b
	.byte	0x9
	.4byte	0x75
	.byte	0xa
	.byte	0
	.byte	0x4
	.4byte	0x51b
	.byte	0x1c
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3e
	.byte	0x1c
	.4byte	0x75
	.byte	0x3
	.4byte	0x54c
	.byte	0x18
	.string	"a"
	.byte	0x1
	.byte	0x3e
	.byte	0x31
	.4byte	0x75
	.byte	0
	.byte	0x1d
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.byte	0x1d
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x47
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x69
	.byte	0x9
	.byte	0x1e
	.4byte	.LASF31
	.4byte	.LASF32
	.byte	0x5
	.byte	0
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x8
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x1d
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
	.byte	0x1e
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
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41-1
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LVL59
	.2byte	0x4
	.byte	0x79
	.byte	0xe0,0x7e
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x78
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47-1
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x78
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x78
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x7d
	.byte	0x70
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0xf
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL36
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"tc_aes128_set_encrypt_key"
.LASF13:
	.string	"state"
.LASF10:
	.string	"TCAesKeySched_t"
.LASF5:
	.string	"short unsigned int"
.LASF27:
	.string	"tc_aes_key_sched_struct"
.LASF11:
	.string	"char"
.LASF23:
	.string	"_double_byte"
.LASF12:
	.string	"sbox"
.LASF30:
	.string	"rotword"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF29:
	.string	"mix_columns"
.LASF15:
	.string	"mult_row_column"
.LASF14:
	.string	"shift_rows"
.LASF28:
	.string	"words"
.LASF20:
	.string	"rconst"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF32:
	.string	"__builtin_memcpy"
.LASF26:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF22:
	.string	"_set"
.LASF3:
	.string	"long long int"
.LASF17:
	.string	"add_round_key"
.LASF25:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/aes_encrypt.c"
.LASF31:
	.string	"memcpy"
.LASF21:
	.string	"_copy"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"sub_bytes"
.LASF24:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF18:
	.string	"tc_aes_encrypt"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
