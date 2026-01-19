	.file	"aes_decrypt.c"
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
.LFB5:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/aes_decrypt.c"
	.loc 1 93 1
	.cfi_startproc
.LVL0:
	.loc 1 94 2
	.loc 1 93 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 94 25
	lbu	a5,3(a1)
	.loc 1 94 7
	lbu	a4,0(a0)
	xor	a5,a5,a4
	sb	a5,0(a0)
	.loc 1 94 33 is_stmt 1
	.loc 1 94 56 is_stmt 0
	lhu	a5,2(a1)
	.loc 1 94 38
	lbu	a4,1(a0)
	xor	a5,a5,a4
	sb	a5,1(a0)
	.loc 1 95 2 is_stmt 1
	.loc 1 95 25 is_stmt 0
	lw	a5,0(a1)
	.loc 1 95 7
	lbu	a4,2(a0)
	.loc 1 95 25
	srli	a5,a5,8
	.loc 1 95 7
	xor	a5,a5,a4
	sb	a5,2(a0)
	.loc 1 95 32 is_stmt 1
	.loc 1 95 40 is_stmt 0
	lw	a5,0(a1)
	.loc 1 95 37
	lbu	a4,3(a0)
	xor	a5,a5,a4
	sb	a5,3(a0)
	.loc 1 96 2 is_stmt 1
	.loc 1 96 25 is_stmt 0
	lbu	a5,7(a1)
	.loc 1 96 7
	lbu	a4,4(a0)
	xor	a5,a5,a4
	sb	a5,4(a0)
	.loc 1 96 33 is_stmt 1
	.loc 1 96 56 is_stmt 0
	lhu	a5,6(a1)
	.loc 1 96 38
	lbu	a4,5(a0)
	xor	a5,a5,a4
	sb	a5,5(a0)
	.loc 1 97 2 is_stmt 1
	.loc 1 97 25 is_stmt 0
	lw	a5,4(a1)
	.loc 1 97 7
	lbu	a4,6(a0)
	.loc 1 97 25
	srli	a5,a5,8
	.loc 1 97 7
	xor	a5,a5,a4
	sb	a5,6(a0)
	.loc 1 97 32 is_stmt 1
	.loc 1 97 40 is_stmt 0
	lw	a5,4(a1)
	.loc 1 97 37
	lbu	a4,7(a0)
	xor	a5,a5,a4
	sb	a5,7(a0)
	.loc 1 98 2 is_stmt 1
	.loc 1 98 25 is_stmt 0
	lbu	a5,11(a1)
	.loc 1 98 7
	lbu	a4,8(a0)
	xor	a5,a5,a4
	sb	a5,8(a0)
	.loc 1 98 33 is_stmt 1
	.loc 1 98 38 is_stmt 0
	lbu	a4,9(a0)
	.loc 1 98 56
	lhu	a5,10(a1)
	.loc 1 98 38
	xor	a5,a5,a4
	sb	a5,9(a0)
	.loc 1 99 2 is_stmt 1
	.loc 1 99 26 is_stmt 0
	lw	a5,8(a1)
	.loc 1 99 8
	lbu	a4,10(a0)
	.loc 1 102 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 99 26
	srli	a5,a5,8
	.loc 1 99 8
	xor	a5,a5,a4
	sb	a5,10(a0)
	.loc 1 99 33 is_stmt 1
	.loc 1 99 42 is_stmt 0
	lw	a5,8(a1)
	.loc 1 99 39
	lbu	a4,11(a0)
	xor	a5,a5,a4
	sb	a5,11(a0)
	.loc 1 100 2 is_stmt 1
	.loc 1 100 26 is_stmt 0
	lbu	a5,15(a1)
	.loc 1 100 8
	lbu	a4,12(a0)
	xor	a5,a5,a4
	sb	a5,12(a0)
	.loc 1 100 34 is_stmt 1
	.loc 1 100 58 is_stmt 0
	lhu	a5,14(a1)
	.loc 1 100 40
	lbu	a4,13(a0)
	xor	a5,a5,a4
	sb	a5,13(a0)
	.loc 1 101 2 is_stmt 1
	.loc 1 101 26 is_stmt 0
	lw	a5,12(a1)
	.loc 1 101 8
	lbu	a4,14(a0)
	.loc 1 101 26
	srli	a5,a5,8
	.loc 1 101 8
	xor	a5,a5,a4
	sb	a5,14(a0)
	.loc 1 101 33 is_stmt 1
	.loc 1 101 42 is_stmt 0
	lw	a5,12(a1)
	.loc 1 101 39
	lbu	a4,15(a0)
	xor	a5,a5,a4
	sb	a5,15(a0)
	.loc 1 102 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	add_round_key, .-add_round_key
	.section	.text.inv_sub_bytes,"ax",@progbits
	.align	1
	.type	inv_sub_bytes, @function
inv_sub_bytes:
.LFB6:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 106 2
	.loc 1 108 2
	.loc 1 108 14
	.loc 1 105 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 109 18
	lui	a4,%hi(.LANCHOR0)
	.cfi_offset 8, -4
	.loc 1 105 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	addi	a3,a0,16
	.loc 1 109 18
	addi	a4,a4,%lo(.LANCHOR0)
.LVL2:
.L4:
	.loc 1 109 3 is_stmt 1 discriminator 3
	.loc 1 109 20 is_stmt 0 discriminator 3
	lbu	a5,0(a0)
	.loc 1 108 2 discriminator 3
	addi	a0,a0,1
.LVL3:
	.loc 1 109 18 discriminator 3
	add	a5,a4,a5
	.loc 1 109 8 discriminator 3
	lbu	a5,0(a5)
	sb	a5,-1(a0)
	.loc 1 108 29 is_stmt 1 discriminator 3
.LVL4:
	.loc 1 108 14 discriminator 3
	.loc 1 108 2 is_stmt 0 discriminator 3
	bne	a0,a3,.L4
	.loc 1 111 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	inv_sub_bytes, .-inv_sub_bytes
	.section	.text.inv_shift_rows,"ax",@progbits
	.align	1
	.type	inv_shift_rows, @function
inv_shift_rows:
.LFB7:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 120 2
	.loc 1 122 2
	.loc 1 119 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 122 7
	lbu	a4,0(a0)
	.loc 1 126 8
	addi	a2,s0,-32
	li	a3,16
	.loc 1 122 7
	sb	a4,-32(s0)
	.loc 1 122 15 is_stmt 1
	.loc 1 122 20 is_stmt 0
	lbu	a4,13(a0)
	.loc 1 126 8
	li	a1,16
	.loc 1 122 20
	sb	a4,-31(s0)
	.loc 1 122 29 is_stmt 1
	.loc 1 122 34 is_stmt 0
	lbu	a4,10(a0)
	sb	a4,-30(s0)
	.loc 1 122 43 is_stmt 1
	.loc 1 122 48 is_stmt 0
	lbu	a4,7(a0)
	sb	a4,-29(s0)
	.loc 1 123 2 is_stmt 1
	.loc 1 123 7 is_stmt 0
	lbu	a4,4(a0)
	sb	a4,-28(s0)
	.loc 1 123 15 is_stmt 1
	.loc 1 123 20 is_stmt 0
	lbu	a4,1(a0)
	sb	a4,-27(s0)
	.loc 1 123 28 is_stmt 1
	.loc 1 123 33 is_stmt 0
	lbu	a4,14(a0)
	sb	a4,-26(s0)
	.loc 1 123 42 is_stmt 1
	.loc 1 123 47 is_stmt 0
	lbu	a4,11(a0)
	sb	a4,-25(s0)
	.loc 1 124 2 is_stmt 1
	.loc 1 124 7 is_stmt 0
	lbu	a4,8(a0)
	sb	a4,-24(s0)
	.loc 1 124 15 is_stmt 1
	.loc 1 124 20 is_stmt 0
	lbu	a4,5(a0)
	sb	a4,-23(s0)
	.loc 1 124 28 is_stmt 1
	.loc 1 124 34 is_stmt 0
	lbu	a4,2(a0)
	sb	a4,-22(s0)
	.loc 1 124 42 is_stmt 1
	.loc 1 124 48 is_stmt 0
	lbu	a4,15(a0)
	sb	a4,-21(s0)
	.loc 1 125 2 is_stmt 1
	.loc 1 125 8 is_stmt 0
	lbu	a4,12(a0)
	sb	a4,-20(s0)
	.loc 1 125 17 is_stmt 1
	.loc 1 125 23 is_stmt 0
	lbu	a4,9(a0)
	sb	a4,-19(s0)
	.loc 1 125 31 is_stmt 1
	.loc 1 125 37 is_stmt 0
	lbu	a4,6(a0)
	sb	a4,-18(s0)
	.loc 1 125 45 is_stmt 1
	.loc 1 125 51 is_stmt 0
	lbu	a5,3(a0)
	sb	a5,-17(s0)
	.loc 1 126 2 is_stmt 1
	.loc 1 126 8 is_stmt 0
	call	_copy
.LVL6:
	.loc 1 127 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	inv_shift_rows, .-inv_shift_rows
	.section	.text.mult_row_column,"ax",@progbits
	.align	1
	.type	mult_row_column, @function
mult_row_column:
.LFB3:
	.loc 1 74 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 75 2
	.loc 1 74 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	sw	s10,0(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.loc 1 74 1
	mv	s2,a0
	.loc 1 75 13
	lbu	a0,0(a1)
.LVL8:
	.loc 1 74 1
	mv	s1,a1
	.loc 1 75 13
	call	_double_byte
.LVL9:
	call	_double_byte
.LVL10:
	call	_double_byte
.LVL11:
	mv	s9,a0
	.loc 1 75 62
	lbu	a0,0(s1)
	call	_double_byte
.LVL12:
	call	_double_byte
.LVL13:
	mv	s8,a0
	.loc 1 75 96
	lbu	a0,0(s1)
	call	_double_byte
.LVL14:
	mv	s7,a0
	.loc 1 75 121
	lbu	a0,1(s1)
	call	_double_byte
.LVL15:
	call	_double_byte
.LVL16:
	call	_double_byte
.LVL17:
	mv	s6,a0
	.loc 1 75 170
	lbu	a0,1(s1)
	call	_double_byte
.LVL18:
	mv	s5,a0
	.loc 1 75 203
	lbu	a0,2(s1)
	.loc 1 75 193
	lbu	s10,1(s1)
	.loc 1 75 203
	call	_double_byte
.LVL19:
	call	_double_byte
.LVL20:
	call	_double_byte
.LVL21:
	mv	s4,a0
	.loc 1 75 252
	lbu	a0,2(s1)
	call	_double_byte
.LVL22:
	call	_double_byte
.LVL23:
	lbu	a5,2(s1)
	mv	s3,a0
	.loc 1 75 299
	lbu	a0,3(s1)
	xor	s10,s10,a5
	call	_double_byte
.LVL24:
	call	_double_byte
.LVL25:
	call	_double_byte
.LVL26:
	.loc 1 75 9
	lbu	a5,3(s1)
	xor	s10,s10,a5
	xor	s9,s9,s10
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	s3,a0,s3
	sb	s3,0(s2)
	.loc 1 76 2 is_stmt 1
	.loc 1 76 13 is_stmt 0
	lbu	a0,0(s1)
	call	_double_byte
.LVL27:
	call	_double_byte
.LVL28:
	call	_double_byte
.LVL29:
	mv	s9,a0
	.loc 1 76 75
	lbu	a0,1(s1)
	.loc 1 76 65
	lbu	s3,0(s1)
	.loc 1 76 75
	call	_double_byte
.LVL30:
	call	_double_byte
.LVL31:
	call	_double_byte
.LVL32:
	mv	s8,a0
	.loc 1 76 124
	lbu	a0,1(s1)
	call	_double_byte
.LVL33:
	call	_double_byte
.LVL34:
	mv	s7,a0
	.loc 1 76 158
	lbu	a0,1(s1)
	call	_double_byte
.LVL35:
	mv	s6,a0
	.loc 1 76 183
	lbu	a0,2(s1)
	call	_double_byte
.LVL36:
	call	_double_byte
.LVL37:
	call	_double_byte
.LVL38:
	mv	s5,a0
	.loc 1 76 232
	lbu	a0,2(s1)
	call	_double_byte
.LVL39:
	mv	s4,a0
	.loc 1 76 265
	lbu	a0,3(s1)
	lbu	s10,2(s1)
	call	_double_byte
.LVL40:
	call	_double_byte
.LVL41:
	call	_double_byte
.LVL42:
	xor	s10,s3,s10
	mv	s3,a0
	.loc 1 76 314
	lbu	a0,3(s1)
	call	_double_byte
.LVL43:
	call	_double_byte
.LVL44:
	.loc 1 76 9
	lbu	a5,3(s1)
	xor	s10,s10,a5
	xor	s9,s9,s10
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	s3,a0,s3
	sb	s3,1(s2)
	.loc 1 77 2 is_stmt 1
	.loc 1 77 13 is_stmt 0
	lbu	a0,0(s1)
	call	_double_byte
.LVL45:
	call	_double_byte
.LVL46:
	call	_double_byte
.LVL47:
	mv	s9,a0
	.loc 1 77 62
	lbu	a0,0(s1)
	call	_double_byte
.LVL48:
	call	_double_byte
.LVL49:
	mv	s8,a0
	.loc 1 77 109
	lbu	a0,1(s1)
	.loc 1 77 99
	lbu	s10,0(s1)
	.loc 1 77 109
	call	_double_byte
.LVL50:
	call	_double_byte
.LVL51:
	call	_double_byte
.LVL52:
	lbu	a5,1(s1)
	mv	s7,a0
	.loc 1 77 171
	lbu	a0,2(s1)
	xor	s10,s10,a5
	call	_double_byte
.LVL53:
	call	_double_byte
.LVL54:
	call	_double_byte
.LVL55:
	mv	s6,a0
	.loc 1 77 220
	lbu	a0,2(s1)
	call	_double_byte
.LVL56:
	call	_double_byte
.LVL57:
	mv	s5,a0
	.loc 1 77 254
	lbu	a0,2(s1)
	call	_double_byte
.LVL58:
	mv	s4,a0
	.loc 1 77 279
	lbu	a0,3(s1)
	call	_double_byte
.LVL59:
	call	_double_byte
.LVL60:
	call	_double_byte
.LVL61:
	mv	s3,a0
	.loc 1 77 328
	lbu	a0,3(s1)
	call	_double_byte
.LVL62:
	.loc 1 77 9
	lbu	a5,3(s1)
	xor	s10,s10,a5
	xor	s9,s9,s10
	xor	s8,s8,s9
	xor	s7,s7,s8
	xor	s6,s6,s7
	xor	s5,s5,s6
	xor	s4,s4,s5
	xor	s3,s3,s4
	xor	s3,a0,s3
	sb	s3,2(s2)
	.loc 1 78 2 is_stmt 1
	.loc 1 78 13 is_stmt 0
	lbu	a0,0(s1)
	call	_double_byte
.LVL63:
	call	_double_byte
.LVL64:
	call	_double_byte
.LVL65:
	mv	s6,a0
	.loc 1 78 62
	lbu	a0,0(s1)
	call	_double_byte
.LVL66:
	mv	s3,a0
	.loc 1 78 95
	lbu	a0,1(s1)
	.loc 1 78 85
	lbu	s7,0(s1)
	.loc 1 78 95
	call	_double_byte
.LVL67:
	call	_double_byte
.LVL68:
	call	_double_byte
.LVL69:
	mv	s5,a0
	.loc 1 78 144
	lbu	a0,1(s1)
	call	_double_byte
.LVL70:
	call	_double_byte
.LVL71:
	lbu	a5,1(s1)
	mv	s4,a0
	.loc 1 78 191
	lbu	a0,2(s1)
	xor	s7,s7,a5
	call	_double_byte
.LVL72:
	call	_double_byte
.LVL73:
	call	_double_byte
.LVL74:
	lbu	a5,2(s1)
	xor	s7,s7,a5
	xor	s6,s6,s7
	xor	s3,s3,s6
	xor	s5,s5,s3
	xor	s4,s4,s5
	xor	s4,a0,s4
	.loc 1 78 253
	lbu	a0,3(s1)
	andi	s5,s4,0xff
	call	_double_byte
.LVL75:
	call	_double_byte
.LVL76:
	call	_double_byte
.LVL77:
	mv	s4,a0
	.loc 1 78 302
	lbu	a0,3(s1)
	.loc 1 78 9
	xor	s4,s4,s5
	.loc 1 78 302
	call	_double_byte
.LVL78:
	call	_double_byte
.LVL79:
	mv	s3,a0
	.loc 1 78 336
	lbu	a0,3(s1)
	.loc 1 78 9
	xor	s3,s3,s4
	.loc 1 78 336
	call	_double_byte
.LVL80:
	.loc 1 79 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	.loc 1 78 9
	xor	s3,a0,s3
	sb	s3,3(s2)
	.loc 1 79 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL81:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL82:
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
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	mult_row_column, .-mult_row_column
	.section	.text.tc_aes128_set_decrypt_key,"ax",@progbits
	.align	1
	.globl	tc_aes128_set_decrypt_key
	.type	tc_aes128_set_decrypt_key, @function
tc_aes128_set_decrypt_key:
.LFB2:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
.LVL83:
	.loc 1 64 2
	.loc 1 63 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 65 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 64 9
	tail	tc_aes128_set_encrypt_key
.LVL84:
	.cfi_endproc
.LFE2:
	.size	tc_aes128_set_decrypt_key, .-tc_aes128_set_decrypt_key
	.section	.text.tc_aes_decrypt,"ax",@progbits
	.align	1
	.globl	tc_aes_decrypt
	.type	tc_aes_decrypt, @function
tc_aes_decrypt:
.LFB8:
	.loc 1 130 1 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 131 2
	.loc 1 132 2
	.loc 1 134 2
	.loc 1 134 5 is_stmt 0
	beq	a0,zero,.L16
	.loc 1 130 1
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
	.loc 1 136 9 is_stmt 1
	.loc 1 135 10 is_stmt 0
	li	a0,0
.LVL86:
	.loc 1 136 12
	beq	a1,zero,.L13
	mv	s1,a2
	.loc 1 138 9 is_stmt 1
	.loc 1 138 12 is_stmt 0
	beq	a2,zero,.L13
	.loc 1 142 2 is_stmt 1
	.loc 1 142 8 is_stmt 0
	mv	a2,a1
.LVL87:
	li	a3,16
	li	a1,16
.LVL88:
	addi	a0,s0,-64
	call	_copy
.LVL89:
	.loc 1 144 2 is_stmt 1
	addi	a1,s1,160
	addi	a0,s0,-64
	call	add_round_key
.LVL90:
	.loc 1 146 2
	.loc 1 146 21
	addi	s3,s1,144
.LVL91:
.L15:
	.loc 1 147 3 discriminator 3
	addi	a0,s0,-64
	call	inv_shift_rows
.LVL92:
	.loc 1 148 3 discriminator 3
	addi	a0,s0,-64
	call	inv_sub_bytes
.LVL93:
	.loc 1 149 3 discriminator 3
	mv	a1,s3
	addi	a0,s0,-64
	call	add_round_key
.LVL94:
	.loc 1 150 3 discriminator 3
.LBB4:
.LBB5:
	.loc 1 83 2 discriminator 3
	.loc 1 85 2 discriminator 3
	addi	a1,s0,-64
.LVL95:
	addi	a0,s0,-48
	call	mult_row_column
.LVL96:
	.loc 1 86 2 discriminator 3
	addi	a1,s0,-60
	addi	a0,s0,-44
	call	mult_row_column
.LVL97:
	.loc 1 87 2 discriminator 3
	addi	a1,s0,-56
	addi	a0,s0,-40
	call	mult_row_column
.LVL98:
	.loc 1 88 2 discriminator 3
	addi	a1,s0,-52
	addi	a0,s0,-36
	call	mult_row_column
.LVL99:
	.loc 1 89 2 discriminator 3
	.loc 1 89 8 is_stmt 0 discriminator 3
	li	a3,16
	addi	a2,s0,-48
	li	a1,16
	addi	a0,s0,-64
.LVL100:
.LBE5:
.LBE4:
	.loc 1 146 2 discriminator 3
	addi	s3,s3,-16
.LBB7:
.LBB6:
	.loc 1 89 8 discriminator 3
	call	_copy
.LVL101:
.LBE6:
.LBE7:
	.loc 1 146 28 is_stmt 1 discriminator 3
	.loc 1 146 21 discriminator 3
	.loc 1 146 2 is_stmt 0 discriminator 3
	bne	s1,s3,.L15
	.loc 1 153 2 is_stmt 1
	addi	a0,s0,-64
	call	inv_shift_rows
.LVL102:
	.loc 1 154 2
	addi	a0,s0,-64
	call	inv_sub_bytes
.LVL103:
	.loc 1 155 2
	mv	a1,s1
	addi	a0,s0,-64
	call	add_round_key
.LVL104:
	.loc 1 157 2
	.loc 1 157 8 is_stmt 0
	li	a3,16
	addi	a2,s0,-64
	li	a1,16
	mv	a0,s2
	call	_copy
.LVL105:
	.loc 1 160 2 is_stmt 1
	addi	a0,s0,-64
	li	a2,16
	li	a1,0
	call	_set
.LVL106:
	.loc 1 163 2
	.loc 1 163 9 is_stmt 0
	li	a0,1
.LVL107:
.L13:
	.loc 1 164 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL108:
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL109:
.L16:
	.loc 1 135 10
	li	a0,0
.LVL110:
	.loc 1 164 1
	ret
	.cfi_endproc
.LFE8:
	.size	tc_aes_decrypt, .-tc_aes_decrypt
	.section	.rodata.inv_sbox,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	inv_sbox, @object
	.size	inv_sbox, 256
inv_sbox:
	.string	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253"
	.ascii	"\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017"
	.ascii	"\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362"
	.ascii	"\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034"
	.ascii	"u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V"
	.ascii	">K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\307"
	.ascii	"1\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311"
	.ascii	"\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004"
	.ascii	"~\272w\326&\341i\024cU!\f}"
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x73f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	inv_sbox
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x81
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x30c
	.byte	0xd
	.string	"out"
	.byte	0x1
	.byte	0x81
	.byte	0x1d
	.4byte	0x30c
	.4byte	.LLST7
	.byte	0xd
	.string	"in"
	.byte	0x1
	.byte	0x81
	.byte	0x31
	.4byte	0x312
	.4byte	.LLST8
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x81
	.byte	0x4b
	.4byte	0xb8
	.4byte	.LLST9
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x83
	.byte	0xa
	.4byte	0x318
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x84
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST10
	.byte	0xf
	.4byte	0x3e3
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x96
	.byte	0x3
	.4byte	0x209
	.byte	0x10
	.4byte	0x3f0
	.4byte	.LLST11
	.byte	0x11
	.4byte	.Ldebug_ranges0+0
	.byte	0x12
	.4byte	0x3fa
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x13
	.4byte	.LVL96
	.4byte	0x405
	.4byte	0x199
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL97
	.4byte	0x405
	.4byte	0x1b3
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0
	.byte	0x13
	.4byte	.LVL98
	.4byte	0x405
	.4byte	0x1cd
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x48
	.byte	0
	.byte	0x13
	.4byte	.LVL99
	.4byte	0x405
	.4byte	0x1e7
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4c
	.byte	0
	.byte	0x15
	.4byte	.LVL101
	.4byte	0x712
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL89
	.4byte	0x712
	.4byte	0x22e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL90
	.4byte	0x3ae
	.4byte	0x249
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x79
	.byte	0xa0,0x1
	.byte	0
	.byte	0x13
	.4byte	.LVL92
	.4byte	0x328
	.4byte	0x25d
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL93
	.4byte	0x37b
	.4byte	0x271
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL94
	.4byte	0x3ae
	.4byte	0x28b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL102
	.4byte	0x328
	.4byte	0x29f
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL103
	.4byte	0x37b
	.4byte	0x2b3
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL104
	.4byte	0x3ae
	.4byte	0x2cd
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL105
	.4byte	0x712
	.4byte	0x2f1
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x15
	.4byte	.LVL106
	.4byte	0x71e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x14
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
	.4byte	0x328
	.byte	0x9
	.4byte	0x75
	.byte	0xf
	.byte	0
	.byte	0x16
	.4byte	.LASF14
	.byte	0x1
	.byte	0x76
	.byte	0x14
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x37b
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x76
	.byte	0x2c
	.4byte	0x30c
	.4byte	.LLST2
	.byte	0x17
	.string	"t"
	.byte	0x1
	.byte	0x78
	.byte	0xa
	.4byte	0x318
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.4byte	.LVL6
	.4byte	0x712
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF15
	.byte	0x1
	.byte	0x68
	.byte	0x14
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ae
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x68
	.byte	0x2b
	.4byte	0x30c
	.4byte	.LLST0
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x6a
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST1
	.byte	0
	.byte	0x16
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x3dd
	.byte	0x18
	.string	"s"
	.byte	0x1
	.byte	0x5c
	.byte	0x2b
	.4byte	0x30c
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.string	"k"
	.byte	0x1
	.byte	0x5c
	.byte	0x42
	.4byte	0x3dd
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x7c
	.byte	0x19
	.4byte	.LASF29
	.byte	0x1
	.byte	0x51
	.byte	0x14
	.byte	0x3
	.4byte	0x405
	.byte	0x1a
	.string	"s"
	.byte	0x1
	.byte	0x51
	.byte	0x2d
	.4byte	0x30c
	.byte	0x1b
	.string	"t"
	.byte	0x1
	.byte	0x53
	.byte	0xa
	.4byte	0x318
	.byte	0
	.byte	0x16
	.4byte	.LASF17
	.byte	0x1
	.byte	0x49
	.byte	0x14
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c3
	.byte	0xd
	.string	"out"
	.byte	0x1
	.byte	0x49
	.byte	0x2d
	.4byte	0x30c
	.4byte	.LLST3
	.byte	0xd
	.string	"in"
	.byte	0x1
	.byte	0x49
	.byte	0x41
	.4byte	0x312
	.4byte	.LLST4
	.byte	0x1c
	.4byte	.LVL9
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL10
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL11
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL12
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL13
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL14
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL15
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL16
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL17
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL18
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL19
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL20
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL21
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL22
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL23
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL24
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL25
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL26
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL27
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL28
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL29
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL30
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL31
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL32
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL33
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL34
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL35
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL36
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL37
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL38
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL40
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL41
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL42
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL43
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL44
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL45
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL46
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL47
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL48
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL49
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL50
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL51
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL52
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL53
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL54
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL55
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL56
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL57
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL58
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL59
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL60
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL61
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL62
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL63
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL64
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL65
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL66
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL67
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL68
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL69
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL70
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL71
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL72
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL73
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL74
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL75
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL76
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL77
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL78
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL79
	.4byte	0x72a
	.byte	0x1c
	.4byte	.LVL80
	.4byte	0x72a
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x712
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x3e
	.byte	0x2f
	.4byte	0xac
	.4byte	.LLST5
	.byte	0xd
	.string	"k"
	.byte	0x1
	.byte	0x3e
	.byte	0x41
	.4byte	0x312
	.4byte	.LLST6
	.byte	0x1d
	.4byte	.LVL84
	.4byte	0x736
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.byte	0x1e
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x47
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x69
	.byte	0x9
	.byte	0x1e
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x3
	.byte	0x4f
	.byte	0x5
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
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
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL89-1
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL87
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x78
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96-1
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x78
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101-1
	.4byte	.LVL101
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
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE6
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
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL82
	.4byte	.LFE3
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
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"tc_aes128_set_encrypt_key"
.LASF13:
	.string	"state"
.LASF10:
	.string	"TCAesKeySched_t"
.LASF15:
	.string	"inv_sub_bytes"
.LASF29:
	.string	"inv_mix_columns"
.LASF5:
	.string	"short unsigned int"
.LASF27:
	.string	"tc_aes_key_sched_struct"
.LASF11:
	.string	"char"
.LASF22:
	.string	"_double_byte"
.LASF18:
	.string	"tc_aes_decrypt"
.LASF6:
	.string	"long unsigned int"
.LASF17:
	.string	"mult_row_column"
.LASF4:
	.string	"unsigned char"
.LASF14:
	.string	"inv_shift_rows"
.LASF19:
	.string	"tc_aes128_set_decrypt_key"
.LASF28:
	.string	"words"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF21:
	.string	"_set"
.LASF12:
	.string	"inv_sbox"
.LASF3:
	.string	"long long int"
.LASF16:
	.string	"add_round_key"
.LASF20:
	.string	"_copy"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF26:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF25:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/source/aes_decrypt.c"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
