	.file	"keys.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bt_keys_get_addr,"ax",@progbits
	.align	1
	.globl	bt_keys_get_addr
	.type	bt_keys_get_addr, @function
bt_keys_get_addr:
.LFB73:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.c"
	.loc 1 44 1
	.cfi_startproc
.LVL0:
	.loc 1 45 2
	.loc 1 46 2
	.loc 1 47 2
	.loc 1 49 2
	.loc 1 51 2
	.loc 1 51 14
	.loc 1 52 3
	.loc 1 54 3
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 54 11
	lui	s1,%hi(.LANCHOR0)
	.loc 1 44 1
	.loc 1 54 6
	lbu	a5,%lo(.LANCHOR0)(s1)
	.loc 1 44 1
	mv	s3,a0
	lui	a0,%hi(.LANCHOR0+1)
.LVL1:
	mv	s5,a1
	mv	s6,s1
	addi	s2,s1,%lo(.LANCHOR0)
	addi	s4,a0,%lo(.LANCHOR0+1)
	.loc 1 54 6
	beq	a5,s3,.L2
.LVL2:
.L6:
	.loc 1 58 3 is_stmt 1
.LBB17:
.LBB18:
.LBB19:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.loc 2 49 9 is_stmt 0
	li	a2,7
	addi	a1,s0,-40
	mv	a0,s4
.LBE19:
.LBE18:
	.loc 1 59 54
	sw	zero,-40(s0)
	sh	zero,-36(s0)
	sb	zero,-34(s0)
.LVL3:
.LBB21:
.LBB20:
	.loc 2 49 2 is_stmt 1
	.loc 2 49 9 is_stmt 0
	call	memcmp
.LVL4:
.LBE20:
.LBE21:
	.loc 1 58 208
	bne	a0,zero,.L21
.LVL5:
.L8:
.LBE17:
	.loc 1 85 3 is_stmt 1
	.loc 1 86 3
.LBB22:
.LBB23:
	.loc 2 59 2 is_stmt 0
	li	a2,7
	mv	a1,s5
	mv	a0,s4
.LBE23:
.LBE22:
	.loc 1 86 12
	sb	s3,0(s2)
	.loc 1 87 3 is_stmt 1
.LVL6:
.LBB25:
.LBB24:
	.loc 2 59 2
	call	memcpy
.LVL7:
.LBE24:
.LBE25:
	.loc 1 89 3
	.loc 1 89 25 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	lw	a5,0(a4)
	.loc 1 93 10
	addi	s1,s6,%lo(.LANCHOR0)
	.loc 1 89 25
	addi	a5,a5,1
	.loc 1 89 23
	sw	a5,0(a4)
	sw	a5,128(s2)
	.loc 1 90 3 is_stmt 1
	.loc 1 90 21 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	s2,%lo(.LANCHOR2)(a5)
	.loc 1 92 3 is_stmt 1
	.loc 1 93 3
	.loc 1 93 10 is_stmt 0
	j	.L1
.LVL8:
.L2:
.LBB26:
.LBB27:
	.loc 2 49 2 is_stmt 1
	.loc 2 49 9 is_stmt 0
	li	a2,7
	addi	a0,a0,%lo(.LANCHOR0+1)
	call	memcmp
.LVL9:
.LBE27:
.LBE26:
	.loc 1 52 8
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 54 22
	bne	a0,zero,.L6
.LVL10:
.L1:
	.loc 1 99 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
.LVL11:
	lw	s6,16(sp)
	.cfi_restore 22
	mv	a0,s1
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL12:
.L21:
	.cfi_restore_state
.LBB28:
	.loc 1 59 88
	lbu	a5,8(s2)
	beq	a5,zero,.L8
.LBE28:
	.loc 1 51 201 is_stmt 1
.LVL13:
	.loc 1 51 14
	.loc 1 66 2
.LBB29:
	.loc 1 67 3
	.loc 1 69 3
	.loc 1 69 15
	.loc 1 77 3
	lbu	a0,0(s2)
	mv	a1,s4
.LBE29:
	.loc 1 98 8 is_stmt 0
	li	s1,0
.LBB35:
	.loc 1 77 3
	call	bt_unpair
.LVL14:
	.loc 1 78 3 is_stmt 1
.LBB30:
.LBB31:
.LBB32:
	.loc 2 49 9 is_stmt 0
	li	a2,7
	addi	a1,s0,-40
	mv	a0,s4
.LBE32:
.LBE31:
	.loc 1 78 55
	sw	zero,-40(s0)
	sh	zero,-36(s0)
	sb	zero,-34(s0)
.LVL15:
.LBB34:
.LBB33:
	.loc 2 49 2 is_stmt 1
	.loc 2 49 9 is_stmt 0
	call	memcmp
.LVL16:
.LBE33:
.LBE34:
	.loc 1 78 6
	bne	a0,zero,.L1
	j	.L8
.LBE30:
.LBE35:
	.cfi_endproc
.LFE73:
	.size	bt_keys_get_addr, .-bt_keys_get_addr
	.section	.text.bt_foreach_bond,"ax",@progbits
	.align	1
	.globl	bt_foreach_bond
	.type	bt_foreach_bond, @function
bt_foreach_bond:
.LFB74:
	.loc 1 104 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 105 2
	.loc 1 107 2
	.loc 1 107 14
.LBB40:
	.loc 1 108 3
	.loc 1 110 3
	.loc 1 110 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 110 6
	lhu	a4,10(a5)
	beq	a4,zero,.L31
	.loc 1 110 18 discriminator 1
	lbu	a4,0(a5)
	bne	a4,a0,.L31
.LBE40:
	.loc 1 104 1
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
	.cfi_offset 18, -16
	mv	s1,a1
	mv	s2,a2
.LBB44:
.LBB41:
	.loc 1 111 4 is_stmt 1
	.loc 1 113 4
.LVL18:
.LBB42:
.LBB43:
	.loc 2 59 2
	addi	a1,a5,1
.LVL19:
	li	a2,7
.LVL20:
	addi	a0,s0,-24
.LVL21:
	call	memcpy
.LVL22:
.LBE43:
.LBE42:
	.loc 1 114 4
	mv	a1,s2
	addi	a0,s0,-24
	jalr	s1
.LVL23:
.LBE41:
.LBE44:
	.loc 1 107 14
	.loc 1 117 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL25:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL26:
.L31:
	ret
	.cfi_endproc
.LFE74:
	.size	bt_foreach_bond, .-bt_foreach_bond
	.section	.text.bt_keys_foreach,"ax",@progbits
	.align	1
	.globl	bt_keys_foreach
	.type	bt_keys_foreach, @function
bt_keys_foreach:
.LFB75:
	.loc 1 121 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 122 2
	.loc 1 124 2
	.loc 1 124 14
	.loc 1 125 3
	.loc 1 121 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 125 19
	lui	a3,%hi(.LANCHOR0)
	.cfi_offset 8, -4
	.loc 1 121 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 125 19
	addi	a4,a3,%lo(.LANCHOR0)
	lhu	a4,10(a4)
	.loc 1 125 25
	and	a4,a4,a0
	.loc 1 125 6
	beq	a4,zero,.L34
	.loc 1 129 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a5,a1
	.loc 1 126 4
	addi	a0,a3,%lo(.LANCHOR0)
.LVL28:
	.loc 1 129 1
	mv	a1,a2
.LVL29:
	.loc 1 126 4 is_stmt 1
	.loc 1 129 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 126 4
	jr	a5
.LVL30:
.L34:
	.cfi_restore_state
	.loc 1 129 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	bt_keys_foreach, .-bt_keys_foreach
	.section	.text.bt_keys_find,"ax",@progbits
	.align	1
	.globl	bt_keys_find
	.type	bt_keys_find, @function
bt_keys_find:
.LFB76:
	.loc 1 132 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 133 2
	.loc 1 135 2
	.loc 1 137 2
	.loc 1 137 14
	.loc 1 138 3
	.loc 1 132 1 is_stmt 0
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
	.loc 1 138 19
	lui	s1,%hi(.LANCHOR0)
	.loc 1 132 1
	.loc 1 138 19
	addi	a5,s1,%lo(.LANCHOR0)
	lhu	a3,10(a5)
	.loc 1 138 25
	and	a3,a3,a0
	.loc 1 138 6
	beq	a3,zero,.L38
	.loc 1 138 33 discriminator 1
	lbu	a3,0(a5)
	bne	a3,a1,.L38
	mv	a1,a2
.LVL32:
.LBB47:
.LBB48:
	.loc 2 49 2 is_stmt 1
	.loc 2 49 9 is_stmt 0
	addi	a0,a5,1
.LVL33:
	li	a2,7
.LVL34:
	call	memcmp
.LVL35:
.LBE48:
.LBE47:
	.loc 1 140 11
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 138 57
	beq	a0,zero,.L37
.L38:
.LVL36:
	.loc 1 137 14 is_stmt 1 discriminator 1
	.loc 1 144 8 is_stmt 0 discriminator 1
	li	s1,0
.LVL37:
.L37:
	.loc 1 145 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	bt_keys_find, .-bt_keys_find
	.section	.text.bt_keys_get_type,"ax",@progbits
	.align	1
	.globl	bt_keys_get_type
	.type	bt_keys_get_type, @function
bt_keys_get_type:
.LFB77:
	.loc 1 148 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 149 2
	.loc 1 151 2
	.loc 1 153 2
	.loc 1 148 1 is_stmt 0
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
	.loc 1 148 1
	mv	s1,a0
	mv	s2,a1
	mv	s3,a2
	.loc 1 153 9
	call	bt_keys_find
.LVL39:
	.loc 1 154 2 is_stmt 1
	.loc 1 154 5 is_stmt 0
	bne	a0,zero,.L45
	.loc 1 158 2 is_stmt 1
	.loc 1 158 9 is_stmt 0
	mv	a1,s3
	mv	a0,s2
.LVL40:
	call	bt_keys_get_addr
.LVL41:
	.loc 1 159 2 is_stmt 1
	.loc 1 159 5 is_stmt 0
	beq	a0,zero,.L45
	.loc 1 163 2 is_stmt 1
.LVL42:
.LBB49:
.LBB50:
	.loc 1 251 2
	.loc 1 251 13 is_stmt 0
	lhu	a5,10(a0)
	or	s1,s1,a5
.LVL43:
	sh	s1,10(a0)
.LVL44:
.LBE50:
.LBE49:
	.loc 1 165 2 is_stmt 1
.L45:
	.loc 1 166 1 is_stmt 0
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
.LVL45:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	bt_keys_get_type, .-bt_keys_get_type
	.section	.text.bt_keys_find_irk,"ax",@progbits
	.align	1
	.globl	bt_keys_find_irk
	.type	bt_keys_find_irk, @function
bt_keys_find_irk:
.LFB78:
	.loc 1 169 1 is_stmt 1
	.cfi_startproc
.LVL46:
	.loc 1 170 2
	.loc 1 172 2
	.loc 1 174 2
.LBB57:
.LBB58:
	.loc 2 75 2
.LBE58:
.LBE57:
	.loc 1 169 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
.LBB61:
.LBB59:
	.loc 2 75 5
	lbu	a4,0(a1)
	li	a5,1
	beq	a4,a5,.L52
.LVL47:
.L55:
.LBE59:
.LBE61:
	.loc 1 175 9
	li	s2,0
.L51:
	.loc 1 215 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	mv	a0,s2
	lw	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL48:
.L52:
	.cfi_restore_state
	.loc 1 174 5
	lbu	a5,6(a1)
	li	a4,64
	mv	s1,a1
.LBB62:
.LBB60:
	.loc 2 79 2 is_stmt 1
.LVL49:
.LBE60:
.LBE62:
	.loc 1 174 5 is_stmt 0
	andi	a5,a5,192
	bne	a5,a4,.L55
.LVL50:
	.loc 1 178 14 is_stmt 1
	.loc 1 179 3
	.loc 1 179 20 is_stmt 0
	lui	s2,%hi(.LANCHOR0)
	addi	a5,s2,%lo(.LANCHOR0)
	.loc 1 179 6
	lhu	a5,10(a5)
	addi	s3,s2,%lo(.LANCHOR0)
	andi	a5,a5,2
	beq	a5,zero,.L55
	.loc 1 183 6
	lbu	a5,0(s3)
	mv	s4,a0
	.loc 1 183 3 is_stmt 1
	.loc 1 183 6 is_stmt 0
	bne	a5,a0,.L56
.LVL51:
.LBB63:
.LBB64:
	.loc 2 44 2 is_stmt 1 discriminator 1
	.loc 2 44 9 is_stmt 0 discriminator 1
	li	a2,6
	addi	a1,s3,54
	addi	a0,s1,1
.LVL52:
	call	memcmp
.LVL53:
.LBE64:
.LBE63:
	.loc 1 188 11 discriminator 1
	addi	s2,s2,%lo(.LANCHOR0)
	.loc 1 183 28 discriminator 1
	beq	a0,zero,.L51
	.loc 1 192 14 is_stmt 1
	.loc 1 193 3
	.loc 1 193 6 is_stmt 0
	lhu	a5,10(s3)
	andi	a5,a5,2
	beq	a5,zero,.L55
.L56:
	.loc 1 197 3 is_stmt 1
	.loc 1 197 6 is_stmt 0
	lbu	a5,0(s3)
	bne	a5,s4,.L55
	.loc 1 201 3 is_stmt 1
	.loc 1 201 7 is_stmt 0
	addi	a1,s1,1
	addi	a0,s3,38
	sw	a1,-36(s0)
	call	bt_rpa_irk_matches
.LVL54:
	.loc 1 201 6
	lw	a1,-36(s0)
	beq	a0,zero,.L55
	.loc 1 204 45 is_stmt 1
	.loc 1 206 4
.LVL55:
.LBB65:
.LBB66:
	.loc 2 54 2
	li	a2,6
	addi	a0,s3,54
	call	memcpy
.LVL56:
.LBE66:
.LBE65:
	.loc 1 208 11 is_stmt 0
	mv	s2,s3
.LBB68:
.LBB67:
	.loc 2 55 1
	j	.L51
.LBE67:
.LBE68:
	.cfi_endproc
.LFE78:
	.size	bt_keys_find_irk, .-bt_keys_find_irk
	.section	.text.bt_keys_find_addr,"ax",@progbits
	.align	1
	.globl	bt_keys_find_addr
	.type	bt_keys_find_addr, @function
bt_keys_find_addr:
.LFB79:
	.loc 1 218 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 219 2
	.loc 1 221 2
	.loc 1 223 2
	.loc 1 223 14
	.loc 1 224 3
	.loc 1 218 1 is_stmt 0
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
	.loc 1 224 18
	lui	s1,%hi(.LANCHOR0)
	.loc 1 218 1
	.loc 1 224 18
	addi	a5,s1,%lo(.LANCHOR0)
	.loc 1 224 6
	lbu	a4,0(a5)
	bne	a4,a0,.L73
.LVL58:
.LBB71:
.LBB72:
	.loc 2 49 2 is_stmt 1
	.loc 2 49 9 is_stmt 0
	li	a2,7
	addi	a0,a5,1
.LVL59:
	call	memcmp
.LVL60:
.LBE72:
.LBE71:
	.loc 1 226 11
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 224 28
	beq	a0,zero,.L72
.L73:
.LVL61:
	.loc 1 223 14 is_stmt 1 discriminator 1
	.loc 1 230 8 is_stmt 0 discriminator 1
	li	s1,0
.LVL62:
.L72:
	.loc 1 231 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	bt_keys_find_addr, .-bt_keys_find_addr
	.section	.text.bt_keys_add_type,"ax",@progbits
	.align	1
	.globl	bt_keys_add_type
	.type	bt_keys_add_type, @function
bt_keys_add_type:
.LFB80:
	.loc 1 250 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 251 2
	.loc 1 250 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 251 13
	lhu	a5,10(a0)
	.loc 1 252 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 251 13
	or	a1,a1,a5
.LVL64:
	sh	a1,10(a0)
	.loc 1 252 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	bt_keys_add_type, .-bt_keys_add_type
	.section	.text.bt_keys_clear,"ax",@progbits
	.align	1
	.globl	bt_keys_clear
	.type	bt_keys_clear, @function
bt_keys_clear:
.LFB81:
	.loc 1 255 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 257 5
	.loc 1 255 1 is_stmt 0
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
	.loc 1 257 8
	lhu	a5,10(a0)
	.loc 1 255 1
	mv	s1,a0
	.loc 1 257 8
	andi	a5,a5,2
	beq	a5,zero,.L80
	.loc 1 258 3 is_stmt 1
	call	bt_id_del
.LVL66:
.L80:
	.loc 1 261 5
	.loc 1 294 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 261 5
	mv	a0,s1
	.loc 1 294 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL67:
	.loc 1 261 5
	li	a2,132
	.loc 1 294 1
	.loc 1 261 5
	li	a1,0
	.loc 1 294 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 261 5
	tail	memset
.LVL68:
	.cfi_endproc
.LFE81:
	.size	bt_keys_clear, .-bt_keys_clear
	.section	.text.keys_clear_id,"ax",@progbits
	.align	1
	.type	keys_clear_id, @function
keys_clear_id:
.LFB82:
	.loc 1 297 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 298 2
	.loc 1 300 2
	.loc 1 297 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 300 5
	lbu	a4,0(a1)
	lbu	a5,0(a0)
	bne	a4,a5,.L85
	.loc 1 301 3 is_stmt 1
	.loc 1 305 3
	.loc 1 307 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 305 3
	tail	bt_keys_clear
.LVL70:
.L85:
	.cfi_restore_state
	.loc 1 307 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	keys_clear_id, .-keys_clear_id
	.section	.text.bt_keys_clear_all,"ax",@progbits
	.align	1
	.globl	bt_keys_clear_all
	.type	bt_keys_clear_all, @function
bt_keys_clear_all:
.LFB83:
	.loc 1 310 1 is_stmt 1
	.cfi_startproc
.LVL71:
	.loc 1 311 2
	.loc 1 310 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 311 2
	lui	a1,%hi(keys_clear_id)
	.loc 1 310 1
	sb	a0,-17(s0)
	.loc 1 311 2
	addi	a2,s0,-17
	addi	a1,a1,%lo(keys_clear_id)
	li	a0,63
.LVL72:
	call	bt_keys_foreach
.LVL73:
	.loc 1 312 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE83:
	.size	bt_keys_clear_all, .-bt_keys_clear_all
	.section	.text.bt_keys_update_usage,"ax",@progbits
	.align	1
	.globl	bt_keys_update_usage
	.type	bt_keys_update_usage, @function
bt_keys_update_usage:
.LFB84:
	.loc 1 485 1 is_stmt 1
	.cfi_startproc
.LVL74:
	.loc 1 486 2
	.loc 1 485 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 486 25
	call	bt_keys_find_addr
.LVL75:
	.loc 1 488 2 is_stmt 1
	.loc 1 488 5 is_stmt 0
	beq	a0,zero,.L90
	.loc 1 492 2 is_stmt 1
	.loc 1 492 24 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 492 5
	lw	a4,0(a5)
	beq	a4,a0,.L90
	.loc 1 496 2 is_stmt 1
	.loc 1 496 24 is_stmt 0
	lui	a3,%hi(.LANCHOR1)
	addi	a3,a3,%lo(.LANCHOR1)
	lw	a4,0(a3)
	.loc 1 497 20
	sw	a0,0(a5)
	.loc 1 496 24
	addi	a4,a4,1
	.loc 1 496 22
	sw	a4,0(a3)
	sw	a4,128(a0)
	.loc 1 497 2 is_stmt 1
	.loc 1 500 29
	.loc 1 502 2
	.loc 1 503 3
.LVL76:
.LBB73:
.LBB74:
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.h"
	.loc 3 99 2
.L90:
.LBE74:
.LBE73:
	.loc 1 505 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	bt_keys_update_usage, .-bt_keys_update_usage
	.section	.bss.key_pool,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	key_pool, @object
	.size	key_pool, 132
key_pool:
	.zero	132
	.section	.sbss.aging_counter_val,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	aging_counter_val, @object
	.size	aging_counter_val, 4
aging_counter_val:
	.zero	4
	.section	.sbss.last_keys_updated,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	last_keys_updated, @object
	.size	last_keys_updated, 4
last_keys_updated:
	.zero	4
	.text
.Letext0:
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 8 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
	.file 9 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
	.file 10 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
	.file 11 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 12 "/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/common/rpa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd1b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF107
	.byte	0xc
	.4byte	.LASF108
	.4byte	.LASF109
	.4byte	.Ldebug_ranges0+0xb0
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x5b
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x70
	.byte	0x3
	.4byte	.LASF11
	.byte	0x6
	.byte	0x15
	.byte	0x17
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF12
	.byte	0x6
	.byte	0x16
	.byte	0x18
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF13
	.byte	0x6
	.byte	0x17
	.byte	0x12
	.4byte	0x4f
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x6
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x7
	.byte	0x36
	.byte	0x6
	.4byte	0xe1
	.byte	0x7
	.4byte	.LASF15
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF21
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x7
	.byte	0x40
	.byte	0x6
	.4byte	0x112
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.byte	0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x83
	.byte	0x9
	.byte	0x6
	.byte	0x2
	.byte	0x19
	.byte	0x9
	.4byte	0x12f
	.byte	0xa
	.string	"val"
	.byte	0x2
	.byte	0x1a
	.byte	0x7
	.4byte	0x12f
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	0x83
	.4byte	0x13f
	.byte	0xc
	.4byte	0x70
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x1b
	.byte	0x3
	.4byte	0x118
	.byte	0xd
	.4byte	0x13f
	.byte	0x9
	.byte	0x7
	.byte	0x2
	.byte	0x1e
	.byte	0x9
	.4byte	0x172
	.byte	0xe
	.4byte	.LASF28
	.byte	0x2
	.byte	0x1f
	.byte	0x7
	.4byte	0x83
	.byte	0
	.byte	0xa
	.string	"a"
	.byte	0x2
	.byte	0x20
	.byte	0xc
	.4byte	0x13f
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x2
	.byte	0x21
	.byte	0x3
	.4byte	0x150
	.byte	0xd
	.4byte	0x172
	.byte	0xb
	.4byte	0x83
	.4byte	0x193
	.byte	0xc
	.4byte	0x70
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	0x83
	.4byte	0x1a3
	.byte	0xc
	.4byte	0x70
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x4
	.4byte	0x17e
	.byte	0xf
	.4byte	.LASF62
	.byte	0x7
	.byte	0x8
	.2byte	0x349
	.byte	0x8
	.4byte	0x1cd
	.byte	0x10
	.4byte	.LASF31
	.byte	0x8
	.2byte	0x34b
	.byte	0xf
	.4byte	0x172
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x1b0
	.byte	0x8
	.byte	0x4
	.4byte	0x14b
	.byte	0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x9
	.2byte	0x50e
	.byte	0x6
	.4byte	0x1fa
	.byte	0x7
	.4byte	.LASF32
	.byte	0
	.byte	0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7
	.4byte	.LASF34
	.byte	0x2
	.byte	0
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0xa
	.byte	0x2a
	.byte	0x6
	.4byte	0x281
	.byte	0x7
	.4byte	.LASF35
	.byte	0
	.byte	0x7
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7
	.4byte	.LASF37
	.byte	0x2
	.byte	0x7
	.4byte	.LASF38
	.byte	0x3
	.byte	0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x7
	.4byte	.LASF42
	.byte	0x7
	.byte	0x7
	.4byte	.LASF43
	.byte	0x8
	.byte	0x7
	.4byte	.LASF44
	.byte	0x9
	.byte	0x7
	.4byte	.LASF45
	.byte	0xa
	.byte	0x7
	.4byte	.LASF46
	.byte	0xb
	.byte	0x7
	.4byte	.LASF47
	.byte	0xc
	.byte	0x7
	.4byte	.LASF48
	.byte	0xd
	.byte	0x7
	.4byte	.LASF49
	.byte	0xe
	.byte	0x7
	.4byte	.LASF50
	.byte	0xf
	.byte	0x7
	.4byte	.LASF51
	.byte	0x10
	.byte	0x7
	.4byte	.LASF52
	.byte	0x11
	.byte	0x7
	.4byte	.LASF53
	.byte	0x12
	.byte	0x7
	.4byte	.LASF54
	.byte	0x13
	.byte	0
	.byte	0xb
	.4byte	0x83
	.4byte	0x291
	.byte	0xc
	.4byte	0x70
	.byte	0x1
	.byte	0
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x3
	.byte	0x9
	.byte	0x6
	.4byte	0x2ca
	.byte	0x7
	.4byte	.LASF55
	.byte	0x1
	.byte	0x7
	.4byte	.LASF56
	.byte	0x2
	.byte	0x7
	.4byte	.LASF57
	.byte	0x4
	.byte	0x7
	.4byte	.LASF58
	.byte	0x8
	.byte	0x7
	.4byte	.LASF59
	.byte	0x10
	.byte	0x7
	.4byte	.LASF60
	.byte	0x20
	.byte	0x7
	.4byte	.LASF61
	.byte	0x3f
	.byte	0
	.byte	0x13
	.4byte	.LASF63
	.byte	0x1a
	.byte	0x3
	.byte	0x1e
	.byte	0x8
	.4byte	0x2ff
	.byte	0xe
	.4byte	.LASF64
	.byte	0x3
	.byte	0x1f
	.byte	0x7
	.4byte	0x193
	.byte	0
	.byte	0xe
	.4byte	.LASF65
	.byte	0x3
	.byte	0x20
	.byte	0x7
	.4byte	0x281
	.byte	0x8
	.byte	0xa
	.string	"val"
	.byte	0x3
	.byte	0x21
	.byte	0x7
	.4byte	0x183
	.byte	0xa
	.byte	0
	.byte	0x13
	.4byte	.LASF66
	.byte	0x16
	.byte	0x3
	.byte	0x24
	.byte	0x8
	.4byte	0x327
	.byte	0xa
	.string	"val"
	.byte	0x3
	.byte	0x25
	.byte	0x7
	.4byte	0x183
	.byte	0
	.byte	0xa
	.string	"rpa"
	.byte	0x3
	.byte	0x26
	.byte	0xc
	.4byte	0x13f
	.byte	0x10
	.byte	0
	.byte	0x13
	.4byte	.LASF67
	.byte	0x14
	.byte	0x3
	.byte	0x29
	.byte	0x8
	.4byte	0x34f
	.byte	0xa
	.string	"val"
	.byte	0x3
	.byte	0x2a
	.byte	0x7
	.4byte	0x183
	.byte	0
	.byte	0xa
	.string	"cnt"
	.byte	0x3
	.byte	0x2b
	.byte	0x8
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.byte	0x13
	.4byte	.LASF68
	.byte	0x84
	.byte	0x3
	.byte	0x2e
	.byte	0x8
	.4byte	0x3eb
	.byte	0xa
	.string	"id"
	.byte	0x3
	.byte	0x2f
	.byte	0x7
	.4byte	0x83
	.byte	0
	.byte	0xe
	.4byte	.LASF31
	.byte	0x3
	.byte	0x30
	.byte	0xf
	.4byte	0x172
	.byte	0x1
	.byte	0xe
	.4byte	.LASF69
	.byte	0x3
	.byte	0x34
	.byte	0x7
	.4byte	0x83
	.byte	0x8
	.byte	0xe
	.4byte	.LASF70
	.byte	0x3
	.byte	0x35
	.byte	0x7
	.4byte	0x83
	.byte	0x9
	.byte	0xe
	.4byte	.LASF71
	.byte	0x3
	.byte	0x36
	.byte	0x8
	.4byte	0x8f
	.byte	0xa
	.byte	0xa
	.string	"ltk"
	.byte	0x3
	.byte	0x37
	.byte	0x10
	.4byte	0x2ca
	.byte	0xc
	.byte	0xa
	.string	"irk"
	.byte	0x3
	.byte	0x38
	.byte	0x10
	.4byte	0x2ff
	.byte	0x26
	.byte	0xe
	.4byte	.LASF72
	.byte	0x3
	.byte	0x3a
	.byte	0x11
	.4byte	0x327
	.byte	0x3c
	.byte	0xe
	.4byte	.LASF73
	.byte	0x3
	.byte	0x3b
	.byte	0x11
	.4byte	0x327
	.byte	0x50
	.byte	0xe
	.4byte	.LASF74
	.byte	0x3
	.byte	0x3e
	.byte	0x10
	.4byte	0x2ca
	.byte	0x64
	.byte	0xe
	.4byte	.LASF75
	.byte	0x3
	.byte	0x41
	.byte	0x8
	.4byte	0x9b
	.byte	0x80
	.byte	0
	.byte	0xb
	.4byte	0x34f
	.4byte	0x3fb
	.byte	0xc
	.4byte	0x70
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.4byte	0x3eb
	.byte	0x5
	.byte	0x3
	.4byte	key_pool
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0x9b
	.byte	0x5
	.byte	0x3
	.4byte	aging_counter_val
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x28
	.byte	0x18
	.4byte	0x431
	.byte	0x5
	.byte	0x3
	.4byte	last_keys_updated
	.byte	0x8
	.byte	0x4
	.4byte	0x34f
	.byte	0x15
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1e4
	.byte	0x6
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ab
	.byte	0x16
	.string	"id"
	.byte	0x1
	.2byte	0x1e4
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST49
	.byte	0x17
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1e4
	.byte	0x38
	.4byte	0x1aa
	.4byte	.LLST50
	.byte	0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1e6
	.byte	0x12
	.4byte	0x431
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.4byte	0xbd0
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.2byte	0x1f7
	.byte	0x3
	.4byte	0x499
	.byte	0x1a
	.4byte	0xbe1
	.byte	0
	.byte	0x1b
	.4byte	.LVL75
	.4byte	0x5ca
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x135
	.byte	0x6
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f2
	.byte	0x16
	.string	"id"
	.byte	0x1
	.2byte	0x135
	.byte	0x1d
	.4byte	0x83
	.4byte	.LLST48
	.byte	0x1b
	.4byte	.LVL73
	.4byte	0x8a7
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	keys_clear_id
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x128
	.byte	0xd
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x1
	.byte	0x9c
	.4byte	0x54d
	.byte	0x17
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x128
	.byte	0x2b
	.4byte	0x431
	.4byte	.LLST45
	.byte	0x17
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x128
	.byte	0x37
	.4byte	0xa7
	.4byte	.LLST46
	.byte	0x1e
	.string	"id"
	.byte	0x1
	.2byte	0x12a
	.byte	0x8
	.4byte	0x112
	.4byte	.LLST47
	.byte	0x1f
	.4byte	.LVL70
	.4byte	0x54d
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF82
	.byte	0x1
	.byte	0xfe
	.byte	0x6
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a4
	.byte	0x21
	.4byte	.LASF71
	.byte	0x1
	.byte	0xfe
	.byte	0x24
	.4byte	0x431
	.4byte	.LLST44
	.byte	0x22
	.4byte	.LVL66
	.4byte	0xcd4
	.4byte	0x587
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL68
	.4byte	0xce1
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF111
	.byte	0x1
	.byte	0xf9
	.byte	0x6
	.byte	0x1
	.4byte	0x5ca
	.byte	0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x431
	.byte	0x24
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf9
	.byte	0x31
	.4byte	0x69
	.byte	0
	.byte	0x25
	.4byte	.LASF83
	.byte	0x1
	.byte	0xd9
	.byte	0x11
	.4byte	0x431
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0x652
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0xd9
	.byte	0x28
	.4byte	0x83
	.4byte	.LLST39
	.byte	0x21
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd9
	.byte	0x40
	.4byte	0x1aa
	.4byte	.LLST40
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0xdb
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST41
	.byte	0x28
	.4byte	0xc64
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.byte	0x1
	.byte	0xe1
	.byte	0x8
	.byte	0x1a
	.4byte	0xc7f
	.byte	0x29
	.4byte	0xc75
	.4byte	.LLST42
	.byte	0x1b
	.4byte	.LVL60
	.4byte	0xced
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x23
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa8
	.byte	0x11
	.4byte	0x431
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x754
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0xa8
	.byte	0x27
	.4byte	0x83
	.4byte	.LLST33
	.byte	0x21
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa8
	.byte	0x3f
	.4byte	0x1aa
	.4byte	.LLST34
	.byte	0x2a
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x2b
	.4byte	0xbee
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xae
	.byte	0x7
	.4byte	0x6b4
	.byte	0x29
	.4byte	0xbff
	.4byte	.LLST35
	.byte	0
	.byte	0x2c
	.4byte	0xc8a
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.byte	0xb8
	.byte	0x8
	.4byte	0x6f6
	.byte	0x29
	.4byte	0xca5
	.4byte	.LLST36
	.byte	0x29
	.4byte	0xc9b
	.4byte	.LLST37
	.byte	0x1b
	.4byte	.LVL53
	.4byte	0xced
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0x36
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	0xc38
	.4byte	.LBB65
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xce
	.byte	0x4
	.4byte	0x73c
	.byte	0x2d
	.4byte	0xc45
	.byte	0x6
	.byte	0x3
	.4byte	key_pool+54
	.byte	0x9f
	.byte	0x29
	.4byte	0xc51
	.4byte	.LLST38
	.byte	0x1b
	.4byte	.LVL56
	.4byte	0xcf9
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0x36
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL54
	.4byte	0xd05
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0x26
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF85
	.byte	0x1
	.byte	0x93
	.byte	0x11
	.4byte	0x431
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x80b
	.byte	0x21
	.4byte	.LASF28
	.byte	0x1
	.byte	0x93
	.byte	0x26
	.4byte	0x69
	.4byte	.LLST27
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0x93
	.byte	0x31
	.4byte	0x83
	.4byte	.LLST28
	.byte	0x21
	.4byte	.LASF31
	.byte	0x1
	.byte	0x93
	.byte	0x49
	.4byte	0x1aa
	.4byte	.LLST29
	.byte	0x2e
	.4byte	.LASF71
	.byte	0x1
	.byte	0x95
	.byte	0x12
	.4byte	0x431
	.4byte	.LLST30
	.byte	0x2c
	.4byte	0x5a4
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0xa3
	.byte	0x2
	.4byte	0x7d4
	.byte	0x29
	.4byte	0x5bd
	.4byte	.LLST31
	.byte	0x29
	.4byte	0x5b1
	.4byte	.LLST32
	.byte	0
	.byte	0x22
	.4byte	.LVL39
	.4byte	0x80b
	.4byte	0x7f4
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL41
	.4byte	0xa25
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF86
	.byte	0x1
	.byte	0x83
	.byte	0x11
	.4byte	0x431
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x8a7
	.byte	0x21
	.4byte	.LASF28
	.byte	0x1
	.byte	0x83
	.byte	0x22
	.4byte	0x69
	.4byte	.LLST21
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0x83
	.byte	0x2d
	.4byte	0x83
	.4byte	.LLST22
	.byte	0x21
	.4byte	.LASF31
	.byte	0x1
	.byte	0x83
	.byte	0x45
	.4byte	0x1aa
	.4byte	.LLST23
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x85
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST24
	.byte	0x28
	.4byte	0xc64
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0x8b
	.byte	0x8
	.byte	0x29
	.4byte	0xc7f
	.4byte	.LLST25
	.byte	0x29
	.4byte	0xc75
	.4byte	.LLST26
	.byte	0x1b
	.4byte	.LVL35
	.4byte	0xced
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x23
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF87
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x913
	.byte	0x21
	.4byte	.LASF28
	.byte	0x1
	.byte	0x77
	.byte	0x1a
	.4byte	0x69
	.4byte	.LLST18
	.byte	0x21
	.4byte	.LASF88
	.byte	0x1
	.byte	0x77
	.byte	0x27
	.4byte	0x923
	.4byte	.LLST19
	.byte	0x21
	.4byte	.LASF81
	.byte	0x1
	.byte	0x78
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST20
	.byte	0x2a
	.string	"i"
	.byte	0x1
	.byte	0x7a
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x2f
	.4byte	.LVL30
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	0x923
	.byte	0x31
	.4byte	0x431
	.byte	0x31
	.4byte	0xa7
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x913
	.byte	0x20
	.4byte	.LASF89
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0xa09
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0x65
	.byte	0x1b
	.4byte	0x83
	.4byte	.LLST12
	.byte	0x21
	.4byte	.LASF88
	.byte	0x1
	.byte	0x65
	.byte	0x26
	.4byte	0xa1f
	.4byte	.LLST13
	.byte	0x21
	.4byte	.LASF90
	.byte	0x1
	.byte	0x67
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST14
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x69
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST15
	.byte	0x32
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x6c
	.byte	0x13
	.4byte	0x431
	.byte	0x6
	.byte	0x3
	.4byte	key_pool
	.byte	0x9f
	.byte	0x33
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x14
	.4byte	.LASF91
	.byte	0x1
	.byte	0x6f
	.byte	0x18
	.4byte	0x1b0
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2c
	.4byte	0xc0c
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x71
	.byte	0x4
	.4byte	0x9f1
	.byte	0x29
	.4byte	0xc25
	.4byte	.LLST16
	.byte	0x29
	.4byte	0xc19
	.4byte	.LLST17
	.byte	0x1b
	.4byte	.LVL22
	.4byte	0xcf9
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0+1
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LVL23
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	0xa19
	.byte	0x31
	.4byte	0xa19
	.byte	0x31
	.4byte	0xa7
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1cd
	.byte	0x8
	.byte	0x4
	.4byte	0xa09
	.byte	0x25
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2b
	.byte	0x11
	.4byte	0x431
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd0
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0x2b
	.byte	0x27
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x21
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.byte	0x3f
	.4byte	0x1aa
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2d
	.byte	0x12
	.4byte	0x431
	.byte	0x6
	.byte	0x3
	.4byte	key_pool
	.byte	0x9f
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	0x69
	.4byte	.LLST2
	.byte	0x2e
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2f
	.byte	0x9
	.4byte	0x77
	.4byte	.LLST3
	.byte	0x35
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xb10
	.byte	0x14
	.4byte	.LASF94
	.byte	0x1
	.byte	0x43
	.byte	0x13
	.4byte	0x431
	.byte	0x6
	.byte	0x3
	.4byte	key_pool
	.byte	0x9f
	.byte	0x36
	.4byte	0xabd
	.byte	0x37
	.4byte	.LASF112
	.byte	0x1
	.byte	0x46
	.byte	0x14
	.4byte	0x431
	.byte	0
	.byte	0x2b
	.4byte	0xc64
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x4e
	.byte	0x8
	.4byte	0xaff
	.byte	0x29
	.4byte	0xc7f
	.4byte	.LLST10
	.byte	0x29
	.4byte	0xc75
	.4byte	.LLST11
	.byte	0x1b
	.4byte	.LVL16
	.4byte	0xced
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL14
	.4byte	0xd11
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	0xc64
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0xb52
	.byte	0x29
	.4byte	0xc7f
	.4byte	.LLST4
	.byte	0x29
	.4byte	0xc75
	.4byte	.LLST5
	.byte	0x1b
	.4byte	.LVL4
	.4byte	0xced
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	0xc0c
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x57
	.byte	0x3
	.4byte	0xb94
	.byte	0x29
	.4byte	0xc25
	.4byte	.LLST6
	.byte	0x29
	.4byte	0xc19
	.4byte	.LLST7
	.byte	0x1b
	.4byte	.LVL7
	.4byte	0xcf9
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0xc64
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x36
	.byte	0x1a
	.byte	0x29
	.4byte	0xc7f
	.4byte	.LLST8
	.byte	0x29
	.4byte	0xc75
	.4byte	.LLST9
	.byte	0x1b
	.4byte	.LVL9
	.4byte	0xced
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0+1
	.byte	0x1c
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	.LASF95
	.byte	0x3
	.byte	0x61
	.byte	0x13
	.4byte	0x69
	.byte	0x3
	.4byte	0xbee
	.byte	0x24
	.4byte	.LASF71
	.byte	0x3
	.byte	0x61
	.byte	0x31
	.4byte	0x431
	.byte	0
	.byte	0x38
	.4byte	.LASF96
	.byte	0x2
	.byte	0x49
	.byte	0x13
	.4byte	0x1a3
	.byte	0x3
	.4byte	0xc0c
	.byte	0x24
	.4byte	.LASF31
	.byte	0x2
	.byte	0x49
	.byte	0x39
	.4byte	0x1aa
	.byte	0
	.byte	0x39
	.4byte	.LASF97
	.byte	0x2
	.byte	0x39
	.byte	0x14
	.byte	0x3
	.4byte	0xc32
	.byte	0x3a
	.string	"dst"
	.byte	0x2
	.byte	0x39
	.byte	0x32
	.4byte	0xc32
	.byte	0x3a
	.string	"src"
	.byte	0x2
	.byte	0x39
	.byte	0x4b
	.4byte	0x1aa
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x172
	.byte	0x39
	.4byte	.LASF98
	.byte	0x2
	.byte	0x34
	.byte	0x14
	.byte	0x3
	.4byte	0xc5e
	.byte	0x3a
	.string	"dst"
	.byte	0x2
	.byte	0x34
	.byte	0x2c
	.4byte	0xc5e
	.byte	0x3a
	.string	"src"
	.byte	0x2
	.byte	0x34
	.byte	0x42
	.4byte	0x1d2
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x13f
	.byte	0x38
	.4byte	.LASF99
	.byte	0x2
	.byte	0x2f
	.byte	0x13
	.4byte	0x69
	.byte	0x3
	.4byte	0xc8a
	.byte	0x3a
	.string	"a"
	.byte	0x2
	.byte	0x2f
	.byte	0x36
	.4byte	0x1aa
	.byte	0x3a
	.string	"b"
	.byte	0x2
	.byte	0x2f
	.byte	0x4d
	.4byte	0x1aa
	.byte	0
	.byte	0x38
	.4byte	.LASF100
	.byte	0x2
	.byte	0x2a
	.byte	0x13
	.4byte	0x69
	.byte	0x3
	.4byte	0xcb0
	.byte	0x3a
	.string	"a"
	.byte	0x2
	.byte	0x2a
	.byte	0x30
	.4byte	0x1d2
	.byte	0x3a
	.string	"b"
	.byte	0x2
	.byte	0x2a
	.byte	0x44
	.4byte	0x1d2
	.byte	0
	.byte	0x3b
	.4byte	0x5a4
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0xcd4
	.byte	0x2d
	.4byte	0x5b1
	.byte	0x1
	.byte	0x5a
	.byte	0x29
	.4byte	0x5bd
	.4byte	.LLST43
	.byte	0
	.byte	0x3c
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x101
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x3d
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xb
	.byte	0x1e
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xb
	.byte	0x1f
	.byte	0x8
	.byte	0x3d
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xc
	.byte	0xf
	.byte	0x5
	.byte	0x3c
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x346
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x97,0x42
	.byte	0x19
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
	.byte	0x20
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0xb
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
	.byte	0xb
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x93,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
.LLST49:
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75-1
	.4byte	.LFE84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75-1
	.4byte	.LFE84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x2
	.byte	0x7c
	.byte	0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70-1
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE82
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE82
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50
	.4byte	.LFE78
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-1
	.4byte	.LVL53
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56-1
	.4byte	.LFE78
	.2byte	0x2
	.byte	0x78
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL45
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE77
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL27
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.byte	0x68
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x78
	.byte	0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE73
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x78
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x78
	.byte	0x58
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LFE80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
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
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"bt_addr_t"
.LASF9:
	.string	"uint32_t"
.LASF22:
	.string	"_POLL_STATE_NOT_READY"
.LASF19:
	.string	"_POLL_NUM_TYPES"
.LASF51:
	.string	"BT_DEV_RPA_VALID"
.LASF78:
	.string	"last_keys_updated"
.LASF72:
	.string	"local_csrk"
.LASF45:
	.string	"BT_DEV_SCANNING"
.LASF26:
	.string	"_POLL_NUM_STATES"
.LASF35:
	.string	"BT_DEV_ENABLE"
.LASF48:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF52:
	.string	"BT_DEV_ID_PENDING"
.LASF87:
	.string	"bt_keys_foreach"
.LASF1:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF106:
	.string	"bt_unpair"
.LASF84:
	.string	"bt_keys_find_irk"
.LASF74:
	.string	"slave_ltk"
.LASF33:
	.string	"BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING"
.LASF54:
	.string	"BT_DEV_NUM_FLAGS"
.LASF49:
	.string	"BT_DEV_SCAN_WL"
.LASF104:
	.string	"memcpy"
.LASF85:
	.string	"bt_keys_get_type"
.LASF34:
	.string	"BT_GATT_SUBSCRIBE_NUM_FLAGS"
.LASF32:
	.string	"BT_GATT_SUBSCRIBE_FLAG_VOLATILE"
.LASF39:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF90:
	.string	"user_data"
.LASF64:
	.string	"rand"
.LASF105:
	.string	"bt_rpa_irk_matches"
.LASF100:
	.string	"bt_addr_cmp"
.LASF46:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF94:
	.string	"oldest"
.LASF3:
	.string	"long long int"
.LASF53:
	.string	"BT_DEV_ASSIST_RUN"
.LASF102:
	.string	"memset"
.LASF24:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF2:
	.string	"long int"
.LASF86:
	.string	"bt_keys_find"
.LASF89:
	.string	"bt_foreach_bond"
.LASF31:
	.string	"addr"
.LASF36:
	.string	"BT_DEV_READY"
.LASF47:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF44:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF59:
	.string	"BT_KEYS_REMOTE_CSRK"
.LASF16:
	.string	"_POLL_TYPE_SIGNAL"
.LASF69:
	.string	"enc_size"
.LASF93:
	.string	"first_free_slot"
.LASF60:
	.string	"BT_KEYS_LTK_P256"
.LASF71:
	.string	"keys"
.LASF110:
	.string	"keys_clear_id"
.LASF56:
	.string	"BT_KEYS_IRK"
.LASF4:
	.string	"unsigned char"
.LASF17:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF68:
	.string	"bt_keys"
.LASF103:
	.string	"memcmp"
.LASF15:
	.string	"_POLL_TYPE_IGNORE"
.LASF92:
	.string	"bt_keys_get_addr"
.LASF0:
	.string	"signed char"
.LASF70:
	.string	"flags"
.LASF7:
	.string	"long long unsigned int"
.LASF73:
	.string	"remote_csrk"
.LASF28:
	.string	"type"
.LASF76:
	.string	"key_pool"
.LASF25:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF112:
	.string	"current"
.LASF80:
	.string	"bt_keys_clear_all"
.LASF5:
	.string	"short unsigned int"
.LASF79:
	.string	"bt_keys_update_usage"
.LASF55:
	.string	"BT_KEYS_SLAVE_LTK"
.LASF14:
	.string	"char"
.LASF37:
	.string	"BT_DEV_PRESET_ID"
.LASF66:
	.string	"bt_irk"
.LASF111:
	.string	"bt_keys_add_type"
.LASF57:
	.string	"BT_KEYS_LTK"
.LASF88:
	.string	"func"
.LASF42:
	.string	"BT_DEV_ADVERTISING_NAME"
.LASF30:
	.string	"_Bool"
.LASF96:
	.string	"bt_addr_le_is_rpa"
.LASF77:
	.string	"aging_counter_val"
.LASF97:
	.string	"bt_addr_le_copy"
.LASF81:
	.string	"data"
.LASF58:
	.string	"BT_KEYS_LOCAL_CSRK"
.LASF62:
	.string	"bt_bond_info"
.LASF38:
	.string	"BT_DEV_USER_ID_ADDR"
.LASF43:
	.string	"BT_DEV_ADVERTISING_CONNECTABLE"
.LASF108:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.c"
.LASF50:
	.string	"BT_DEV_AUTO_CONN"
.LASF6:
	.string	"long unsigned int"
.LASF41:
	.string	"BT_DEV_ADVERTISING"
.LASF65:
	.string	"ediv"
.LASF23:
	.string	"_POLL_STATE_SIGNALED"
.LASF107:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF20:
	.string	"_poll_types_bits"
.LASF61:
	.string	"BT_KEYS_ALL"
.LASF91:
	.string	"info"
.LASF11:
	.string	"u8_t"
.LASF13:
	.string	"u32_t"
.LASF101:
	.string	"bt_id_del"
.LASF63:
	.string	"bt_ltk"
.LASF12:
	.string	"u16_t"
.LASF29:
	.string	"bt_addr_le_t"
.LASF82:
	.string	"bt_keys_clear"
.LASF21:
	.string	"_poll_states_bits"
.LASF109:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF95:
	.string	"bt_keys_store"
.LASF67:
	.string	"bt_csrk"
.LASF75:
	.string	"aging_counter"
.LASF98:
	.string	"bt_addr_copy"
.LASF83:
	.string	"bt_keys_find_addr"
.LASF8:
	.string	"unsigned int"
.LASF18:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF99:
	.string	"bt_addr_le_cmp"
.LASF40:
	.string	"BT_DEV_PUB_KEY_BUSY"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
