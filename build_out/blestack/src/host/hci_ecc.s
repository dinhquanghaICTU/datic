	.file	"hci_ecc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.send_cmd_status,"ax",@progbits
	.align	1
	.type	send_cmd_status, @function
send_cmd_status:
.LFB89:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_ecc.c"
	.loc 1 82 1
	.cfi_startproc
.LVL0:
	.loc 1 83 2
	.loc 1 84 2
	.loc 1 85 2
	.loc 1 87 2
	.loc 1 89 2
	.loc 1 82 1 is_stmt 0
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
	sw	s5,4(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 82 1
	mv	s1,a0
	mv	s3,a1
	.loc 1 89 8
	li	a2,-1
	li	a1,0
.LVL1:
	li	a0,15
.LVL2:
	call	bt_buf_get_evt
.LVL3:
.LBB15:
.LBB16:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/buf.h"
	.loc 2 99 34
	li	s4,1
.LBE16:
.LBE15:
	.loc 1 92 8
	addi	s5,a0,8
	.loc 1 89 8
	mv	s2,a0
.LVL4:
	.loc 1 90 2 is_stmt 1
.LBB19:
.LBB17:
	.loc 2 99 2
.LBE17:
.LBE19:
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
	.loc 3 1107 2
.LBB20:
.LBB18:
	.loc 2 99 34 is_stmt 0
	sb	s4,20(a0)
.LVL5:
.LBE18:
.LBE20:
	.loc 1 92 2 is_stmt 1
	.loc 1 92 8 is_stmt 0
	li	a1,2
	mv	a0,s5
.LVL6:
	call	net_buf_simple_add
.LVL7:
	.loc 1 93 2 is_stmt 1
	.loc 1 93 11 is_stmt 0
	li	a5,15
	sb	a5,0(a0)
	.loc 1 94 2 is_stmt 1
	.loc 1 94 11 is_stmt 0
	li	a5,4
	sb	a5,1(a0)
	.loc 1 96 2 is_stmt 1
	.loc 1 96 8 is_stmt 0
	li	a1,4
	mv	a0,s5
.LVL8:
	call	net_buf_simple_add
.LVL9:
	.loc 1 97 2 is_stmt 1
	.loc 1 98 14 is_stmt 0
	sb	s1,2(a0)
	srli	s1,s1,8
	.loc 1 97 12
	sb	s4,1(a0)
	.loc 1 98 2 is_stmt 1
	.loc 1 98 14 is_stmt 0
	sb	s1,3(a0)
	.loc 1 99 2 is_stmt 1
	.loc 1 99 14 is_stmt 0
	sb	s3,0(a0)
	.loc 1 101 2 is_stmt 1
	.loc 1 102 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	.loc 1 101 2
	mv	a0,s2
.LVL10:
	.loc 1 102 1
	lw	s2,16(sp)
	.cfi_restore 18
.LVL11:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 101 2
	tail	bt_recv_prio
.LVL12:
	.cfi_endproc
.LFE89:
	.size	send_cmd_status, .-send_cmd_status
	.section	.text.sys_memcpy_swap.constprop.0,"ax",@progbits
	.align	1
	.type	sys_memcpy_swap.constprop.0, @function
sys_memcpy_swap.constprop.0:
.LFB103:
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/byteorder.h"
	.loc 4 371 20 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 4 373 2
	.loc 4 373 7
	.loc 4 373 15
	.loc 4 377 2
	.loc 4 371 20 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 377 6
	addi	a5,a1,31
.LVL14:
	.loc 4 379 2 is_stmt 1
	.loc 4 379 9
	.loc 4 371 20 is_stmt 0
	addi	a1,a1,-1
.LVL15:
.L4:
	.loc 4 380 3 is_stmt 1
	.loc 4 380 22 is_stmt 0
	lbu	a4,0(a5)
	.loc 4 380 24
	addi	a5,a5,-1
.LVL16:
	.loc 4 380 5
	addi	a0,a0,1
.LVL17:
	.loc 4 380 20
	sb	a4,-1(a0)
	.loc 4 379 21 is_stmt 1
.LVL18:
	.loc 4 379 9
	.loc 4 379 2 is_stmt 0
	bne	a1,a5,.L4
	.loc 4 382 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE103:
	.size	sys_memcpy_swap.constprop.0, .-sys_memcpy_swap.constprop.0
	.section	.rodata.ecc_thread.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Failed to create ECC public/private pair, %s\r\n"
	.align	2
.LC1:
	.string	"public key is not valid (ret %d), %s\r\n"
	.section	.text.ecc_thread,"ax",@progbits
	.align	1
	.type	ecc_thread, @function
ecc_thread:
.LFB93:
	.loc 1 214 1 is_stmt 1
	.cfi_startproc
.LVL19:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	.cfi_offset 9, -12
.LBB36:
.LBB37:
.LBB38:
.LBB39:
.LBB40:
	.loc 1 110 8 is_stmt 0
	lui	s1,%hi(.LANCHOR3)
.LBE40:
.LBE39:
.LBE38:
.LBE37:
.LBE36:
	.loc 1 214 1
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
.LBB59:
.LBB60:
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
	.loc 5 331 21
	lui	s5,%hi(.LANCHOR1)
.LBE60:
.LBE59:
.LBB62:
.LBB55:
.LBB49:
.LBB45:
.LBB41:
	.loc 1 110 8
	addi	s1,s1,%lo(.LANCHOR3)
	lui	s4,%hi(.LANCHOR3+32)
.LBE41:
.LBE45:
.LBE49:
.LBE55:
.LBE62:
	.loc 1 214 1
	.loc 1 216 3
	lui	s7,%hi(.LANCHOR0)
	mv	s6,s5
.LBB63:
.LBB56:
.LBB50:
.LBB46:
.LBB42:
	.loc 1 110 8
	addi	s3,s1,32
	addi	s4,s4,%lo(.LANCHOR3+32)
.LVL20:
.L8:
.LBE42:
.LBE46:
.LBE50:
.LBE56:
.LBE63:
	.loc 1 215 2 is_stmt 1
	.loc 1 216 3
	li	a1,-1
	addi	a0,s7,%lo(.LANCHOR0)
	call	k_sem_take
.LVL21:
	.loc 1 218 3
.LBB64:
.LBB61:
	.loc 5 331 2
	.loc 5 331 21 is_stmt 0
	addi	a0,s5,%lo(.LANCHOR1)
	call	atomic_get
.LVL22:
	.loc 5 333 2 is_stmt 1
	.loc 5 333 12 is_stmt 0
	andi	s2,a0,1
.LVL23:
.LBE61:
.LBE64:
	.loc 1 218 6
	beq	s2,zero,.L9
.LBB65:
.LBB57:
.LBB51:
.LBB47:
.LBB43:
	.loc 1 110 8
	lui	s8,%hi(.LANCHOR2)
.LBE43:
	.loc 1 117 11
	lui	s2,%hi(.LANCHOR5)
.L12:
	.loc 1 107 2 is_stmt 1
.LBB44:
	.loc 1 108 3
	.loc 1 110 3
	.loc 1 110 8 is_stmt 0
	addi	a2,s8,%lo(.LANCHOR2)
	mv	a1,s1
	mv	a0,s3
	call	uECC_make_key
.LVL24:
	.loc 1 111 3 is_stmt 1
	.loc 1 111 6 is_stmt 0
	bne	a0,zero,.L10
	.loc 1 112 4 is_stmt 1
	lui	a1,%hi(.LANCHOR4)
	lui	a0,%hi(.LC0)
.LVL25:
	addi	a1,a1,%lo(.LANCHOR4)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL26:
	.loc 1 113 4
	.loc 1 113 11 is_stmt 0
	li	s9,31
.L11:
.LVL27:
.LBE44:
.LBE47:
.LBE51:
	.loc 1 138 2 is_stmt 1
	.loc 1 138 8 is_stmt 0
	li	a1,-1
	li	a0,1
	call	bt_buf_get_rx
.LVL28:
	.loc 1 140 8
	addi	s2,a0,8
	li	a1,2
	.loc 1 138 8
	mv	s8,a0
.LVL29:
	.loc 1 140 2 is_stmt 1
	.loc 1 140 8 is_stmt 0
	mv	a0,s2
.LVL30:
	call	net_buf_simple_add
.LVL31:
	.loc 1 141 2 is_stmt 1
	.loc 1 141 11 is_stmt 0
	li	a5,62
	sb	a5,0(a0)
	.loc 1 142 2 is_stmt 1
	.loc 1 142 11 is_stmt 0
	li	a5,66
	sb	a5,1(a0)
	.loc 1 144 2 is_stmt 1
	.loc 1 144 9 is_stmt 0
	li	a1,1
	mv	a0,s2
.LVL32:
	call	net_buf_simple_add
.LVL33:
	.loc 1 145 2 is_stmt 1
	.loc 1 145 17 is_stmt 0
	li	a5,8
	sb	a5,0(a0)
	.loc 1 147 2 is_stmt 1
	.loc 1 147 8 is_stmt 0
	li	a1,65
	mv	a0,s2
.LVL34:
	call	net_buf_simple_add
.LVL35:
	.loc 1 148 14
	sb	s9,0(a0)
	.loc 1 147 8
	mv	s2,a0
.LVL36:
	.loc 1 148 2 is_stmt 1
	.loc 1 150 2
	addi	a0,a0,1
.LVL37:
	.loc 1 150 5 is_stmt 0
	beq	s9,zero,.L13
	.loc 1 151 3 is_stmt 1
	.loc 1 151 9 is_stmt 0
	li	a2,64
	li	a1,0
	call	memset
.LVL38:
.L14:
	.loc 1 160 2 is_stmt 1
.LBB52:
.LBB53:
	.loc 5 391 2
	.loc 5 393 2
	li	a1,-2
.LVL39:
.L26:
.LBE53:
.LBE52:
.LBE57:
.LBE65:
.LBB66:
.LBB67:
.LBB68:
.LBB69:
	addi	a0,s6,%lo(.LANCHOR1)
	call	atomic_and
.LVL40:
.LBE69:
.LBE68:
	.loc 1 206 2
	mv	a0,s8
	call	bt_recv
.LVL41:
	.loc 1 207 1 is_stmt 0
	j	.L8
.LVL42:
.L10:
.LBE67:
.LBE66:
.LBB73:
.LBB58:
.LBB54:
.LBB48:
	.loc 1 117 10 is_stmt 1
	.loc 1 117 11 is_stmt 0
	li	a2,32
	addi	a1,s2,%lo(.LANCHOR5)
	mv	a0,s1
.LVL43:
	call	memcmp
.LVL44:
	.loc 1 117 2
	beq	a0,zero,.L12
	.loc 1 123 9
	li	s9,0
	j	.L11
.LVL45:
.L13:
.LBE48:
.LBE54:
	.loc 1 156 3 is_stmt 1
	mv	a1,s4
	call	sys_memcpy_swap.constprop.0
.LVL46:
	.loc 1 157 3
	addi	a1,s1,64
	addi	a0,s2,33
	call	sys_memcpy_swap.constprop.0
.LVL47:
	j	.L14
.LVL48:
.L9:
.LBE58:
.LBE73:
	.loc 1 220 10
.LBB74:
.LBB75:
	.loc 5 331 2
	.loc 5 331 21 is_stmt 0
	addi	a0,s5,%lo(.LANCHOR1)
	call	atomic_get
.LVL49:
	.loc 5 333 2 is_stmt 1
.LBE75:
.LBE74:
	.loc 1 220 13 is_stmt 0
	andi	a0,a0,2
	beq	a0,zero,.L8
	.loc 1 221 4 is_stmt 1
.LBB76:
.LBB72:
	.loc 1 167 2
	.loc 1 168 2
	.loc 1 169 2
	.loc 1 170 2
	.loc 1 171 2
	.loc 1 173 2
	.loc 1 173 8 is_stmt 0
	lui	s8,%hi(.LANCHOR2)
	addi	a1,s8,%lo(.LANCHOR2)
	mv	a0,s3
	call	uECC_valid_public_key
.LVL50:
	mv	a1,a0
.LVL51:
	.loc 1 174 2 is_stmt 1
	.loc 1 174 5 is_stmt 0
	bge	a0,zero,.L16
	.loc 1 175 3 is_stmt 1
	lui	a2,%hi(.LANCHOR6)
	lui	a0,%hi(.LC1)
.LVL52:
	addi	a2,a2,%lo(.LANCHOR6)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL53:
	.loc 1 176 3
.L17:
	.loc 1 182 2
	.loc 1 182 8 is_stmt 0
	li	a1,-1
	li	a0,1
	call	bt_buf_get_rx
.LVL54:
	.loc 1 184 8
	addi	s9,a0,8
	li	a1,2
	.loc 1 182 8
	mv	s8,a0
.LVL55:
	.loc 1 184 2 is_stmt 1
	.loc 1 184 8 is_stmt 0
	mv	a0,s9
.LVL56:
	call	net_buf_simple_add
.LVL57:
	.loc 1 185 2 is_stmt 1
	.loc 1 185 11 is_stmt 0
	li	a5,62
	sb	a5,0(a0)
	.loc 1 186 2 is_stmt 1
	.loc 1 186 11 is_stmt 0
	li	a5,34
	sb	a5,1(a0)
	.loc 1 188 2 is_stmt 1
	.loc 1 188 9 is_stmt 0
	li	a1,1
	mv	a0,s9
.LVL58:
	call	net_buf_simple_add
.LVL59:
	.loc 1 189 2 is_stmt 1
	.loc 1 189 17 is_stmt 0
	li	a5,9
	sb	a5,0(a0)
	.loc 1 191 2 is_stmt 1
	.loc 1 191 8 is_stmt 0
	li	a1,33
	mv	a0,s9
.LVL60:
	call	net_buf_simple_add
.LVL61:
	mv	a5,a0
.LVL62:
	.loc 1 193 2 is_stmt 1
	addi	a0,a0,1
.LVL63:
	.loc 1 193 5 is_stmt 0
	bne	s2,zero,.L18
.LVL64:
	.loc 1 194 3 is_stmt 1
	.loc 1 194 15 is_stmt 0
	li	a4,31
	sb	a4,0(a5)
	.loc 1 195 3 is_stmt 1
	.loc 1 195 9 is_stmt 0
	li	a2,32
	li	a1,0
	call	memset
.LVL65:
.L19:
	.loc 1 204 2 is_stmt 1
.LBB71:
.LBB70:
	.loc 5 391 2
	.loc 5 393 2
	li	a1,-3
	j	.L26
.LVL66:
.L16:
.LBE70:
.LBE71:
	.loc 1 178 3
	.loc 1 178 9 is_stmt 0
	addi	a3,s8,%lo(.LANCHOR2)
	mv	a2,s3
	mv	a1,s1
	mv	a0,s3
.LVL67:
	call	uECC_shared_secret
.LVL68:
	mv	s2,a0
.LVL69:
	j	.L17
.LVL70:
.L18:
	.loc 1 197 3 is_stmt 1
	.loc 1 197 15 is_stmt 0
	sb	zero,0(a5)
	.loc 1 201 3 is_stmt 1
	mv	a1,s4
	call	sys_memcpy_swap.constprop.0
.LVL71:
	j	.L19
.LBE72:
.LBE76:
	.cfi_endproc
.LFE93:
	.size	ecc_thread, .-ecc_thread
	.section	.text.bt_hci_ecc_send,"ax",@progbits
	.align	1
	.globl	bt_hci_ecc_send
	.type	bt_hci_ecc_send, @function
bt_hci_ecc_send:
.LFB97:
	.loc 1 298 1
	.cfi_startproc
.LVL72:
	.loc 1 299 2
.LBB94:
.LBB95:
	.loc 2 132 2
.LBE95:
.LBE94:
	.loc 3 1107 2
	.loc 1 298 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB97:
.LBB96:
	.loc 2 132 28
	lbu	s2,20(a0)
.LVL73:
.LBE96:
.LBE97:
	.loc 1 298 1
	mv	s1,a0
	.loc 1 299 5
	bne	s2,zero,.L28
.LBB98:
	.loc 1 300 3 is_stmt 1
	.loc 1 300 26 is_stmt 0
	lw	a4,8(a0)
.LVL74:
	.loc 1 302 3 is_stmt 1
	.loc 1 302 16 is_stmt 0
	lbu	a5,1(a4)
	lbu	a3,0(a4)
	slli	a5,a5,8
	or	a5,a5,a3
	.loc 1 302 3
	li	a3,8192
	addi	a2,a3,37
	beq	a5,a2,.L29
	addi	a2,a3,38
	beq	a5,a2,.L30
	addi	a3,a3,1
	bne	a5,a3,.L28
	.loc 1 312 4 is_stmt 1
.LVL75:
.LBB99:
.LBB100:
	.loc 1 233 2
	.loc 1 235 2
	.loc 1 241 2
	.loc 1 241 17 is_stmt 0
	lbu	a5,3(a4)
	andi	a5,a5,127
	sb	a5,3(a4)
	.loc 1 242 2 is_stmt 1
	.loc 1 242 17 is_stmt 0
	lbu	a5,4(a4)
	andi	a5,a5,-2
	sb	a5,4(a4)
.LVL76:
.L28:
.LBE100:
.LBE99:
.LBE98:
	.loc 1 319 2 is_stmt 1
	.loc 1 319 15 is_stmt 0
	lui	a5,%hi(bt_dev+180)
	.loc 1 319 19
	lw	a5,%lo(bt_dev+180)(a5)
	.loc 1 320 1
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	.loc 1 319 9
	lw	a5,16(a5)
	mv	a0,s1
.LVL77:
	.loc 1 320 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL78:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 319 9
	jr	a5
.LVL79:
.L29:
	.cfi_restore_state
.LBB117:
	.loc 1 304 4 is_stmt 1
	li	a1,3
	addi	a0,a0,8
	call	net_buf_simple_pull
.LVL80:
	.loc 1 305 4
.LBB101:
.LBB102:
	.loc 1 281 2
	.loc 1 283 2
	mv	a0,s1
	call	net_buf_unref
.LVL81:
	.loc 1 285 2
.LBB103:
.LBB104:
	.loc 5 331 2
	.loc 5 331 21 is_stmt 0
	lui	s1,%hi(.LANCHOR1)
.LVL82:
	addi	a0,s1,%lo(.LANCHOR1)
	call	atomic_get
.LVL83:
	.loc 5 333 2 is_stmt 1
	.loc 5 333 19 is_stmt 0
	srai	a0,a0,1
	.loc 5 333 12
	andi	a0,a0,1
.LBE104:
.LBE103:
	.loc 1 285 5
	beq	a0,zero,.L32
.L34:
	.loc 1 286 10
	li	s2,12
.L33:
.LVL84:
	.loc 1 294 2 is_stmt 1
	li	a0,8192
	mv	a1,s2
	addi	a0,a0,37
.LVL85:
.L41:
.LBE102:
.LBE101:
.LBB108:
.LBB109:
	.loc 1 276 2 is_stmt 0
	call	send_cmd_status
.LVL86:
.LBE109:
.LBE108:
.LBE117:
	.loc 1 320 1
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
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL87:
.L32:
	.cfi_restore_state
.LBB118:
.LBB115:
.LBB107:
	.loc 1 287 9 is_stmt 1
.LBB105:
.LBB106:
	.loc 5 370 2
	.loc 5 371 2
	.loc 5 373 2
	.loc 5 373 8 is_stmt 0
	li	a1,1
	addi	a0,s1,%lo(.LANCHOR1)
	call	atomic_or
.LVL88:
	.loc 5 375 2 is_stmt 1
	.loc 5 375 14 is_stmt 0
	andi	a0,a0,1
.LBE106:
.LBE105:
	.loc 1 287 12
	bne	a0,zero,.L34
	.loc 1 290 3 is_stmt 1
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	k_sem_give
.LVL89:
	.loc 1 291 3
	j	.L33
.LVL90:
.L30:
.LBE107:
.LBE115:
	.loc 1 308 4
	li	a1,3
	addi	a0,a0,8
	call	net_buf_simple_pull
.LVL91:
	.loc 1 309 4
.LBB116:
.LBB114:
	.loc 1 247 2
	.loc 1 248 2
	.loc 1 250 2
.LBB110:
.LBB111:
	.loc 5 331 2
	.loc 5 331 21 is_stmt 0
	lui	s3,%hi(.LANCHOR1)
	addi	a0,s3,%lo(.LANCHOR1)
	call	atomic_get
.LVL92:
	.loc 5 333 2 is_stmt 1
	.loc 5 333 12 is_stmt 0
	andi	a0,a0,1
.LBE111:
.LBE110:
	.loc 1 250 5
	beq	a0,zero,.L36
.L38:
	.loc 1 251 10
	li	s2,12
.L37:
.LVL93:
	.loc 1 275 2 is_stmt 1
	mv	a0,s1
	call	net_buf_unref
.LVL94:
	.loc 1 276 2
	li	a0,8192
	mv	a1,s2
	addi	a0,a0,38
	j	.L41
.LVL95:
.L36:
	.loc 1 255 2
	.loc 1 255 5 is_stmt 0
	lhu	a4,12(s1)
	li	a5,63
	bleu	a4,a5,.L39
	.loc 1 260 2 is_stmt 1
.LVL96:
.LBB112:
.LBB113:
	.loc 5 370 2
	.loc 5 371 2
	.loc 5 373 2
	.loc 5 373 8 is_stmt 0
	li	a1,2
	addi	a0,s3,%lo(.LANCHOR1)
	call	atomic_or
.LVL97:
	.loc 5 375 2 is_stmt 1
	.loc 5 375 14 is_stmt 0
	andi	a0,a0,2
.LBE113:
.LBE112:
	.loc 1 260 5
	bne	a0,zero,.L38
	.loc 1 265 2 is_stmt 1
	.loc 1 265 6 is_stmt 0
	lw	s4,8(s1)
.LVL98:
	.loc 1 269 2 is_stmt 1
	lui	s3,%hi(.LANCHOR3)
	addi	s3,s3,%lo(.LANCHOR3)
	mv	a1,s4
	addi	a0,s3,32
	call	sys_memcpy_swap.constprop.0
.LVL99:
	.loc 1 270 2
	addi	a0,s3,64
	addi	a1,s4,32
	call	sys_memcpy_swap.constprop.0
.LVL100:
	.loc 1 271 2
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	k_sem_give
.LVL101:
	.loc 1 272 2
	j	.L37
.LVL102:
.L39:
	.loc 1 256 10 is_stmt 0
	li	s2,18
	j	.L37
.LBE114:
.LBE116:
.LBE118:
	.cfi_endproc
.LFE97:
	.size	bt_hci_ecc_send, .-bt_hci_ecc_send
	.section	.text.default_CSPRNG,"ax",@progbits
	.align	1
	.globl	default_CSPRNG
	.type	default_CSPRNG, @function
default_CSPRNG:
.LFB98:
	.loc 1 323 1 is_stmt 1
	.cfi_startproc
.LVL103:
	.loc 1 324 2
	.loc 1 323 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 324 10
	call	bt_rand
.LVL104:
	.loc 1 325 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	seqz	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE98:
	.size	default_CSPRNG, .-default_CSPRNG
	.section	.rodata.bt_hci_ecc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"ecc_thread"
	.section	.text.bt_hci_ecc_init,"ax",@progbits
	.align	1
	.globl	bt_hci_ecc_init
	.type	bt_hci_ecc_init, @function
bt_hci_ecc_init:
.LFB99:
	.loc 1 328 1 is_stmt 1
	.cfi_startproc
	.loc 1 330 5
	.loc 1 328 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 330 5
	lui	a0,%hi(.LANCHOR0)
	.loc 1 328 1
	.loc 1 330 5
	li	a2,1
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR0)
	call	k_sem_init
.LVL105:
	.loc 1 331 5 is_stmt 1
	.loc 1 340 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 331 5
	lui	a3,%hi(ecc_thread)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(.LANCHOR7)
	.loc 1 340 1
	.loc 1 331 5
	li	a4,30
	addi	a3,a3,%lo(ecc_thread)
	li	a2,384
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(.LANCHOR7)
	.loc 1 340 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 331 5
	tail	k_thread_create
.LVL106:
	.cfi_endproc
.LFE99:
	.size	bt_hci_ecc_init, .-bt_hci_ecc_init
	.section	._k_sem.static.cmd_sem,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cmd_sem, @object
	.size	cmd_sem, 12
cmd_sem:
	.zero	12
	.section	.bss.ecc,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	ecc, @object
	.size	ecc, 96
ecc:
	.zero	96
	.section	.rodata.__func__.0,"a"
	.align	2
	.set	.LANCHOR6,. + 0
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"emulate_le_generate_dhkey"
	.section	.rodata.__func__.1,"a"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"generate_keys"
	.section	.rodata.curve_secp256r1,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 176
curve_secp256r1:
	.byte	8
	.byte	32
	.half	256
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.word	double_jacobian_default
	.word	x_side_default
	.word	vli_mmod_fast_secp256r1
	.section	.rodata.debug_private_key,"a"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	debug_private_key, @object
	.size	debug_private_key, 32
debug_private_key:
	.word	-851699011
	.word	1486469286
	.word	-348080231
	.word	1258250363
	.word	-770687152
	.word	1959375843
	.word	-1547346120
	.word	1061811924
	.section	.sbss.ecc_thread_data,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	ecc_thread_data, @object
	.size	ecc_thread_data, 4
ecc_thread_data:
	.zero	4
	.section	.sbss.flags,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	flags, @object
	.size	flags, 4
flags:
	.zero	4
	.text
.Letext0:
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
	.file 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/hci_host.h"
	.file 17 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
	.file 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
	.file 19 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/../include/bluetooth/crypto.h"
	.file 20 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc_dh.h"
	.file 21 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 22 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x18ac
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF210
	.byte	0xc
	.4byte	.LASF211
	.4byte	.LASF212
	.4byte	.Ldebug_ranges0+0x160
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x6
	.byte	0x22
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x6
	.byte	0x25
	.byte	0x13
	.4byte	0x44
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x7
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x2
	.4byte	.LASF13
	.byte	0x8
	.byte	0x15
	.byte	0x17
	.4byte	0x59
	.byte	0x2
	.4byte	.LASF14
	.byte	0x8
	.byte	0x16
	.byte	0x18
	.4byte	0x60
	.byte	0x2
	.4byte	.LASF15
	.byte	0x8
	.byte	0x17
	.byte	0x12
	.4byte	0x67
	.byte	0x5
	.4byte	0xb3
	.byte	0x2
	.4byte	.LASF16
	.byte	0x8
	.byte	0x18
	.byte	0x1c
	.4byte	0x7a
	.byte	0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x9
	.byte	0x1c
	.byte	0x8
	.4byte	0xeb
	.byte	0x7
	.4byte	.LASF19
	.byte	0x9
	.byte	0x1d
	.byte	0x11
	.4byte	0xeb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xd0
	.byte	0x2
	.4byte	.LASF17
	.byte	0x9
	.byte	0x20
	.byte	0x17
	.4byte	0xd0
	.byte	0x9
	.byte	0x4
	.byte	0xa
	.byte	0x1e
	.byte	0x2
	.4byte	0x11f
	.byte	0xa
	.4byte	.LASF18
	.byte	0xa
	.byte	0x1f
	.byte	0x12
	.4byte	0x139
	.byte	0xa
	.4byte	.LASF19
	.byte	0xa
	.byte	0x20
	.byte	0x12
	.4byte	0x139
	.byte	0
	.byte	0x6
	.4byte	.LASF21
	.byte	0x8
	.byte	0xa
	.byte	0x1d
	.byte	0x8
	.4byte	0x139
	.byte	0xb
	.4byte	0xfd
	.byte	0
	.byte	0xb
	.4byte	0x13f
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x11f
	.byte	0x9
	.byte	0x4
	.byte	0xa
	.byte	0x22
	.byte	0x2
	.4byte	0x161
	.byte	0xa
	.4byte	.LASF22
	.byte	0xa
	.byte	0x23
	.byte	0x12
	.4byte	0x139
	.byte	0xa
	.4byte	.LASF23
	.byte	0xa
	.byte	0x24
	.byte	0x12
	.4byte	0x139
	.byte	0
	.byte	0x2
	.4byte	.LASF24
	.byte	0xa
	.byte	0x28
	.byte	0x17
	.4byte	0x11f
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.byte	0x5
	.4byte	0x16f
	.byte	0x8
	.byte	0x4
	.4byte	0x176
	.byte	0xd
	.byte	0x4
	.byte	0xb
	.byte	0x15
	.byte	0x9
	.4byte	0x198
	.byte	0xe
	.string	"hdl"
	.byte	0xb
	.byte	0x16
	.byte	0xb
	.4byte	0x16d
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF26
	.byte	0xb
	.byte	0x17
	.byte	0x3
	.4byte	0x181
	.byte	0x2
	.4byte	.LASF27
	.byte	0xb
	.byte	0x1a
	.byte	0x12
	.4byte	0x198
	.byte	0x2
	.4byte	.LASF28
	.byte	0xb
	.byte	0x1e
	.byte	0x12
	.4byte	0x67
	.byte	0x6
	.4byte	.LASF29
	.byte	0xc
	.byte	0xb
	.byte	0x36
	.byte	0x8
	.4byte	0x1e4
	.byte	0xe
	.string	"hdl"
	.byte	0xb
	.byte	0x37
	.byte	0xf
	.4byte	0x16d
	.byte	0
	.byte	0x7
	.4byte	.LASF30
	.byte	0xb
	.byte	0x38
	.byte	0x15
	.4byte	0x161
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF31
	.byte	0xc
	.byte	0xb
	.byte	0x62
	.byte	0x8
	.4byte	0x1ff
	.byte	0x7
	.4byte	.LASF32
	.byte	0xb
	.byte	0x63
	.byte	0x18
	.4byte	0x1bc
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF33
	.byte	0xc
	.byte	0xb
	.byte	0x81
	.byte	0x8
	.4byte	0x227
	.byte	0xe
	.string	"sem"
	.byte	0xb
	.byte	0x82
	.byte	0xc
	.4byte	0x1a4
	.byte	0
	.byte	0x7
	.4byte	.LASF30
	.byte	0xb
	.byte	0x83
	.byte	0x11
	.4byte	0x161
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF34
	.byte	0x4
	.byte	0xb
	.byte	0xd9
	.byte	0x8
	.4byte	0x242
	.byte	0x7
	.4byte	.LASF35
	.byte	0xb
	.byte	0xda
	.byte	0xd
	.4byte	0x1b0
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF36
	.byte	0x5
	.byte	0x12
	.byte	0xd
	.4byte	0x81
	.byte	0x5
	.4byte	0x242
	.byte	0x2
	.4byte	.LASF37
	.byte	0x5
	.byte	0x13
	.byte	0x12
	.4byte	0x242
	.byte	0x2
	.4byte	.LASF38
	.byte	0xc
	.byte	0x18
	.byte	0x10
	.4byte	0x26b
	.byte	0x8
	.byte	0x4
	.4byte	0x271
	.byte	0xf
	.4byte	0x27c
	.byte	0x10
	.4byte	0x27c
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x282
	.byte	0x6
	.4byte	.LASF39
	.byte	0xc
	.byte	0xc
	.byte	0x19
	.byte	0x8
	.4byte	0x2b7
	.byte	0x7
	.4byte	.LASF40
	.byte	0xc
	.byte	0x1a
	.byte	0xb
	.4byte	0x16d
	.byte	0
	.byte	0x7
	.4byte	.LASF41
	.byte	0xc
	.byte	0x1b
	.byte	0x16
	.4byte	0x25f
	.byte	0x4
	.byte	0x7
	.4byte	.LASF42
	.byte	0xc
	.byte	0x1c
	.byte	0xe
	.4byte	0x2b7
	.byte	0x8
	.byte	0
	.byte	0x11
	.4byte	0x242
	.4byte	0x2c7
	.byte	0x12
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0xd
	.byte	0x36
	.byte	0x6
	.4byte	0x2f8
	.byte	0x14
	.4byte	.LASF43
	.byte	0
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x14
	.4byte	.LASF45
	.byte	0x2
	.byte	0x14
	.4byte	.LASF46
	.byte	0x3
	.byte	0x14
	.4byte	.LASF47
	.byte	0x4
	.byte	0
	.byte	0x13
	.4byte	.LASF49
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0xd
	.byte	0x40
	.byte	0x6
	.4byte	0x329
	.byte	0x14
	.4byte	.LASF50
	.byte	0
	.byte	0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0x14
	.4byte	.LASF52
	.byte	0x2
	.byte	0x14
	.4byte	.LASF53
	.byte	0x3
	.byte	0x14
	.4byte	.LASF54
	.byte	0x4
	.byte	0
	.byte	0x2
	.4byte	.LASF55
	.byte	0xe
	.byte	0x59
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF56
	.byte	0xe
	.byte	0x5a
	.byte	0x11
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF57
	.byte	0xe
	.byte	0x5e
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.4byte	0x341
	.byte	0x2
	.4byte	.LASF58
	.byte	0xe
	.byte	0x6f
	.byte	0x25
	.4byte	0x35e
	.byte	0x8
	.byte	0x4
	.4byte	0x3ec
	.byte	0x6
	.4byte	.LASF59
	.byte	0xb0
	.byte	0xe
	.byte	0x70
	.byte	0x8
	.4byte	0x3ec
	.byte	0x7
	.4byte	.LASF60
	.byte	0xe
	.byte	0x71
	.byte	0xf
	.4byte	0x329
	.byte	0
	.byte	0x7
	.4byte	.LASF61
	.byte	0xe
	.byte	0x72
	.byte	0xf
	.4byte	0x329
	.byte	0x1
	.byte	0x7
	.4byte	.LASF62
	.byte	0xe
	.byte	0x73
	.byte	0xe
	.4byte	0x335
	.byte	0x2
	.byte	0xe
	.string	"p"
	.byte	0xe
	.byte	0x74
	.byte	0xf
	.4byte	0x3f1
	.byte	0x4
	.byte	0xe
	.string	"n"
	.byte	0xe
	.byte	0x75
	.byte	0xf
	.4byte	0x3f1
	.byte	0x24
	.byte	0xe
	.string	"G"
	.byte	0xe
	.byte	0x76
	.byte	0xf
	.4byte	0x401
	.byte	0x44
	.byte	0xe
	.string	"b"
	.byte	0xe
	.byte	0x77
	.byte	0xf
	.4byte	0x3f1
	.byte	0x84
	.byte	0x7
	.4byte	.LASF63
	.byte	0xe
	.byte	0x78
	.byte	0xa
	.4byte	0x431
	.byte	0xa4
	.byte	0x7
	.4byte	.LASF64
	.byte	0xe
	.byte	0x7a
	.byte	0xa
	.4byte	0x452
	.byte	0xa8
	.byte	0x7
	.4byte	.LASF65
	.byte	0xe
	.byte	0x7b
	.byte	0xa
	.4byte	0x468
	.byte	0xac
	.byte	0
	.byte	0x5
	.4byte	0x364
	.byte	0x11
	.4byte	0x341
	.4byte	0x401
	.byte	0x12
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x11
	.4byte	0x341
	.4byte	0x411
	.byte	0x12
	.4byte	0x88
	.byte	0xf
	.byte	0
	.byte	0xf
	.4byte	0x42b
	.byte	0x10
	.4byte	0x42b
	.byte	0x10
	.4byte	0x42b
	.byte	0x10
	.4byte	0x42b
	.byte	0x10
	.4byte	0x352
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x341
	.byte	0x8
	.byte	0x4
	.4byte	0x411
	.byte	0xf
	.4byte	0x44c
	.byte	0x10
	.4byte	0x42b
	.byte	0x10
	.4byte	0x44c
	.byte	0x10
	.4byte	0x352
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x34d
	.byte	0x8
	.byte	0x4
	.4byte	0x437
	.byte	0xf
	.4byte	0x468
	.byte	0x10
	.4byte	0x42b
	.byte	0x10
	.4byte	0x42b
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x458
	.byte	0x15
	.4byte	.LASF158
	.byte	0xe
	.byte	0xa1
	.byte	0x22
	.4byte	0x3ec
	.byte	0x5
	.byte	0x3
	.4byte	curve_secp256r1
	.byte	0x6
	.4byte	.LASF66
	.byte	0xc
	.byte	0x3
	.byte	0x60
	.byte	0x8
	.4byte	0x4c2
	.byte	0x7
	.4byte	.LASF67
	.byte	0x3
	.byte	0x62
	.byte	0x8
	.4byte	0x4c2
	.byte	0
	.byte	0xe
	.string	"len"
	.byte	0x3
	.byte	0x65
	.byte	0x8
	.4byte	0xa7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF68
	.byte	0x3
	.byte	0x68
	.byte	0x8
	.4byte	0xa7
	.byte	0x6
	.byte	0x7
	.4byte	.LASF69
	.byte	0x3
	.byte	0x6d
	.byte	0x8
	.4byte	0x4c2
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x9b
	.byte	0x16
	.byte	0x4
	.byte	0x3
	.2byte	0x235
	.byte	0x2
	.4byte	0x4ed
	.byte	0x17
	.4byte	.LASF70
	.byte	0x3
	.2byte	0x237
	.byte	0xf
	.4byte	0xf1
	.byte	0x17
	.4byte	.LASF71
	.byte	0x3
	.2byte	0x23a
	.byte	0x13
	.4byte	0x547
	.byte	0
	.byte	0x18
	.4byte	.LASF213
	.byte	0x20
	.byte	0x4
	.byte	0x3
	.2byte	0x234
	.byte	0x8
	.4byte	0x542
	.byte	0xb
	.4byte	0x4c8
	.byte	0
	.byte	0x19
	.string	"ref"
	.byte	0x3
	.2byte	0x23e
	.byte	0x7
	.4byte	0x9b
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x241
	.byte	0x7
	.4byte	0x9b
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF72
	.byte	0x3
	.2byte	0x244
	.byte	0x7
	.4byte	0x9b
	.byte	0x6
	.byte	0xb
	.4byte	0x590
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF214
	.byte	0x3
	.2byte	0x260
	.byte	0x7
	.4byte	0x5ab
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x5
	.4byte	0x4ed
	.byte	0x8
	.byte	0x4
	.4byte	0x4ed
	.byte	0x1c
	.byte	0xc
	.byte	0x3
	.2byte	0x24b
	.byte	0x3
	.4byte	0x590
	.byte	0x1a
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x24d
	.byte	0xa
	.4byte	0x4c2
	.byte	0
	.byte	0x19
	.string	"len"
	.byte	0x3
	.2byte	0x250
	.byte	0xa
	.4byte	0xa7
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF68
	.byte	0x3
	.2byte	0x253
	.byte	0xa
	.4byte	0xa7
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF69
	.byte	0x3
	.2byte	0x259
	.byte	0xa
	.4byte	0x4c2
	.byte	0x8
	.byte	0
	.byte	0x16
	.byte	0xc
	.byte	0x3
	.2byte	0x249
	.byte	0x2
	.4byte	0x5ab
	.byte	0x1d
	.4byte	0x54d
	.byte	0x1e
	.string	"b"
	.byte	0x3
	.2byte	0x25c
	.byte	0x19
	.4byte	0x480
	.byte	0
	.byte	0x11
	.4byte	0x9b
	.4byte	0x5bb
	.byte	0x12
	.4byte	0x88
	.byte	0x9
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0xf
	.byte	0x19
	.byte	0x9
	.4byte	0x5d2
	.byte	0xe
	.string	"val"
	.byte	0xf
	.byte	0x1a
	.byte	0x7
	.4byte	0x5d2
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x9b
	.4byte	0x5e2
	.byte	0x12
	.4byte	0x88
	.byte	0x5
	.byte	0
	.byte	0x2
	.4byte	.LASF73
	.byte	0xf
	.byte	0x1b
	.byte	0x3
	.4byte	0x5bb
	.byte	0xd
	.byte	0x7
	.byte	0xf
	.byte	0x1e
	.byte	0x9
	.4byte	0x610
	.byte	0x7
	.4byte	.LASF74
	.byte	0xf
	.byte	0x1f
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0xe
	.string	"a"
	.byte	0xf
	.byte	0x20
	.byte	0xc
	.4byte	0x5e2
	.byte	0x1
	.byte	0
	.byte	0x2
	.4byte	.LASF75
	.byte	0xf
	.byte	0x21
	.byte	0x3
	.4byte	0x5ee
	.byte	0x13
	.4byte	.LASF76
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x2
	.byte	0x1a
	.byte	0x6
	.4byte	0x653
	.byte	0x14
	.4byte	.LASF77
	.byte	0
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x14
	.4byte	.LASF79
	.byte	0x2
	.byte	0x14
	.4byte	.LASF80
	.byte	0x3
	.byte	0x14
	.4byte	.LASF81
	.byte	0x4
	.byte	0x14
	.4byte	.LASF82
	.byte	0x5
	.byte	0
	.byte	0x6
	.4byte	.LASF83
	.byte	0x2
	.byte	0x10
	.byte	0x24
	.byte	0x8
	.4byte	0x67b
	.byte	0xe
	.string	"evt"
	.byte	0x10
	.byte	0x25
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0xe
	.string	"len"
	.byte	0x10
	.byte	0x26
	.byte	0x7
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	.LASF84
	.byte	0x3
	.byte	0x10
	.byte	0x60
	.byte	0x8
	.4byte	0x6a3
	.byte	0x7
	.4byte	.LASF85
	.byte	0x10
	.byte	0x61
	.byte	0x8
	.4byte	0xa7
	.byte	0
	.byte	0x7
	.4byte	.LASF86
	.byte	0x10
	.byte	0x62
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.byte	0x11
	.4byte	0x9b
	.4byte	0x6b3
	.byte	0x12
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x11
	.4byte	0x9b
	.4byte	0x6c3
	.byte	0x12
	.4byte	0x88
	.byte	0x3f
	.byte	0
	.byte	0x1f
	.4byte	.LASF87
	.byte	0x8
	.byte	0x10
	.2byte	0x325
	.byte	0x8
	.4byte	0x6e0
	.byte	0x1a
	.4byte	.LASF88
	.byte	0x10
	.2byte	0x326
	.byte	0x7
	.4byte	0x6a3
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF89
	.byte	0x40
	.byte	0x10
	.2byte	0x448
	.byte	0x8
	.4byte	0x6fd
	.byte	0x19
	.string	"key"
	.byte	0x10
	.2byte	0x449
	.byte	0x7
	.4byte	0x6b3
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF90
	.byte	0x4
	.byte	0x10
	.2byte	0x7cf
	.byte	0x8
	.4byte	0x736
	.byte	0x1a
	.4byte	.LASF91
	.byte	0x10
	.2byte	0x7d0
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0x1a
	.4byte	.LASF92
	.byte	0x10
	.2byte	0x7d1
	.byte	0x7
	.4byte	0x9b
	.byte	0x1
	.byte	0x1a
	.4byte	.LASF85
	.byte	0x10
	.2byte	0x7d2
	.byte	0x8
	.4byte	0xa7
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF93
	.byte	0x1
	.byte	0x10
	.2byte	0x863
	.byte	0x8
	.4byte	0x753
	.byte	0x1a
	.4byte	.LASF94
	.byte	0x10
	.2byte	0x864
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF95
	.byte	0x41
	.byte	0x10
	.2byte	0x8b1
	.byte	0x8
	.4byte	0x77e
	.byte	0x1a
	.4byte	.LASF91
	.byte	0x10
	.2byte	0x8b2
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0x19
	.string	"key"
	.byte	0x10
	.2byte	0x8b3
	.byte	0x7
	.4byte	0x6b3
	.byte	0x1
	.byte	0
	.byte	0x1f
	.4byte	.LASF96
	.byte	0x21
	.byte	0x10
	.2byte	0x8b7
	.byte	0x8
	.4byte	0x7a9
	.byte	0x1a
	.4byte	.LASF91
	.byte	0x10
	.2byte	0x8b8
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0x1a
	.4byte	.LASF97
	.byte	0x10
	.2byte	0x8b9
	.byte	0x7
	.4byte	0x7a9
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	0x9b
	.4byte	0x7b9
	.byte	0x12
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF98
	.byte	0x13
	.4byte	.LASF99
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x11
	.byte	0x62
	.byte	0x6
	.4byte	0x80f
	.byte	0x14
	.4byte	.LASF100
	.byte	0
	.byte	0x14
	.4byte	.LASF101
	.byte	0x1
	.byte	0x14
	.4byte	.LASF102
	.byte	0x2
	.byte	0x14
	.4byte	.LASF103
	.byte	0x3
	.byte	0x14
	.4byte	.LASF104
	.byte	0x4
	.byte	0x14
	.4byte	.LASF105
	.byte	0x5
	.byte	0x14
	.4byte	.LASF106
	.byte	0x6
	.byte	0x14
	.4byte	.LASF107
	.byte	0x7
	.byte	0x14
	.4byte	.LASF108
	.byte	0x8
	.byte	0x14
	.4byte	.LASF109
	.byte	0x9
	.byte	0
	.byte	0x6
	.4byte	.LASF110
	.byte	0x14
	.byte	0x11
	.byte	0x75
	.byte	0x8
	.4byte	0x85e
	.byte	0x7
	.4byte	.LASF111
	.byte	0x11
	.byte	0x77
	.byte	0xe
	.4byte	0x17b
	.byte	0
	.byte	0xe
	.string	"bus"
	.byte	0x11
	.byte	0x7a
	.byte	0x19
	.4byte	0x7c0
	.byte	0x4
	.byte	0x7
	.4byte	.LASF112
	.byte	0x11
	.byte	0x81
	.byte	0x8
	.4byte	0xb3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF113
	.byte	0x11
	.byte	0x90
	.byte	0x8
	.4byte	0x868
	.byte	0xc
	.byte	0x7
	.4byte	.LASF114
	.byte	0x11
	.byte	0x9e
	.byte	0x8
	.4byte	0x87d
	.byte	0x10
	.byte	0
	.byte	0x5
	.4byte	0x80f
	.byte	0x20
	.4byte	0x81
	.byte	0x8
	.byte	0x4
	.4byte	0x863
	.byte	0x21
	.4byte	0x81
	.4byte	0x87d
	.byte	0x10
	.4byte	0x547
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x86e
	.byte	0x22
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x12
	.byte	0x2a
	.byte	0x6
	.4byte	0x90a
	.byte	0x14
	.4byte	.LASF115
	.byte	0
	.byte	0x14
	.4byte	.LASF116
	.byte	0x1
	.byte	0x14
	.4byte	.LASF117
	.byte	0x2
	.byte	0x14
	.4byte	.LASF118
	.byte	0x3
	.byte	0x14
	.4byte	.LASF119
	.byte	0x4
	.byte	0x14
	.4byte	.LASF120
	.byte	0x5
	.byte	0x14
	.4byte	.LASF121
	.byte	0x6
	.byte	0x14
	.4byte	.LASF122
	.byte	0x7
	.byte	0x14
	.4byte	.LASF123
	.byte	0x8
	.byte	0x14
	.4byte	.LASF124
	.byte	0x9
	.byte	0x14
	.4byte	.LASF125
	.byte	0xa
	.byte	0x14
	.4byte	.LASF126
	.byte	0xb
	.byte	0x14
	.4byte	.LASF127
	.byte	0xc
	.byte	0x14
	.4byte	.LASF128
	.byte	0xd
	.byte	0x14
	.4byte	.LASF129
	.byte	0xe
	.byte	0x14
	.4byte	.LASF130
	.byte	0xf
	.byte	0x14
	.4byte	.LASF131
	.byte	0x10
	.byte	0x14
	.4byte	.LASF132
	.byte	0x11
	.byte	0x14
	.4byte	.LASF133
	.byte	0x12
	.byte	0x14
	.4byte	.LASF134
	.byte	0x13
	.byte	0
	.byte	0x6
	.4byte	.LASF135
	.byte	0x28
	.byte	0x12
	.byte	0x5d
	.byte	0x8
	.4byte	0x980
	.byte	0x7
	.4byte	.LASF136
	.byte	0x12
	.byte	0x5f
	.byte	0x7
	.4byte	0x6a3
	.byte	0
	.byte	0x7
	.4byte	.LASF137
	.byte	0x12
	.byte	0x61
	.byte	0x8
	.4byte	0xc4
	.byte	0x8
	.byte	0xe
	.string	"mtu"
	.byte	0x12
	.byte	0x65
	.byte	0x8
	.4byte	0xa7
	.byte	0x10
	.byte	0x7
	.4byte	.LASF138
	.byte	0x12
	.byte	0x66
	.byte	0xf
	.4byte	0x1ff
	.byte	0x14
	.byte	0x7
	.4byte	.LASF139
	.byte	0x12
	.byte	0x6b
	.byte	0x7
	.4byte	0x9b
	.byte	0x20
	.byte	0x7
	.4byte	.LASF140
	.byte	0x12
	.byte	0x6f
	.byte	0x7
	.4byte	0x9b
	.byte	0x21
	.byte	0x7
	.4byte	.LASF141
	.byte	0x12
	.byte	0x74
	.byte	0x7
	.4byte	0x9b
	.byte	0x22
	.byte	0x7
	.4byte	.LASF142
	.byte	0x12
	.byte	0x76
	.byte	0x7
	.4byte	0x9b
	.byte	0x23
	.byte	0
	.byte	0x6
	.4byte	.LASF143
	.byte	0xd8
	.byte	0x12
	.byte	0x8c
	.byte	0x8
	.4byte	0xa84
	.byte	0x7
	.4byte	.LASF144
	.byte	0x12
	.byte	0x8e
	.byte	0xf
	.4byte	0xa84
	.byte	0
	.byte	0x7
	.4byte	.LASF145
	.byte	0x12
	.byte	0x8f
	.byte	0x7
	.4byte	0x9b
	.byte	0x7
	.byte	0x7
	.4byte	.LASF146
	.byte	0x12
	.byte	0x92
	.byte	0x7
	.4byte	0x9b
	.byte	0x8
	.byte	0x7
	.4byte	.LASF147
	.byte	0x12
	.byte	0x95
	.byte	0xf
	.4byte	0x610
	.byte	0x9
	.byte	0x7
	.4byte	.LASF148
	.byte	0x12
	.byte	0x98
	.byte	0x7
	.4byte	0x9b
	.byte	0x10
	.byte	0x7
	.4byte	.LASF149
	.byte	0x12
	.byte	0x99
	.byte	0x7
	.4byte	0x9b
	.byte	0x11
	.byte	0x7
	.4byte	.LASF150
	.byte	0x12
	.byte	0x9a
	.byte	0x8
	.4byte	0xa7
	.byte	0x12
	.byte	0x7
	.4byte	.LASF151
	.byte	0x12
	.byte	0x9b
	.byte	0x8
	.4byte	0xa7
	.byte	0x14
	.byte	0x7
	.4byte	.LASF152
	.byte	0x12
	.byte	0x9c
	.byte	0x8
	.4byte	0xa7
	.byte	0x16
	.byte	0x7
	.4byte	.LASF136
	.byte	0x12
	.byte	0x9f
	.byte	0x7
	.4byte	0xa94
	.byte	0x18
	.byte	0x7
	.4byte	.LASF153
	.byte	0x12
	.byte	0xa2
	.byte	0x7
	.4byte	0x6b3
	.byte	0x20
	.byte	0x7
	.4byte	.LASF154
	.byte	0x12
	.byte	0xaa
	.byte	0x10
	.4byte	0x282
	.byte	0x60
	.byte	0x7
	.4byte	.LASF42
	.byte	0x12
	.byte	0xac
	.byte	0xb
	.4byte	0x2b7
	.byte	0x6c
	.byte	0xe
	.string	"le"
	.byte	0x12
	.byte	0xaf
	.byte	0x13
	.4byte	0x90a
	.byte	0x70
	.byte	0x7
	.4byte	.LASF155
	.byte	0x12
	.byte	0xb7
	.byte	0xf
	.4byte	0x1ff
	.byte	0x98
	.byte	0x7
	.4byte	.LASF156
	.byte	0x12
	.byte	0xba
	.byte	0x12
	.4byte	0x547
	.byte	0xa4
	.byte	0x7
	.4byte	.LASF157
	.byte	0x12
	.byte	0xc2
	.byte	0x10
	.4byte	0x1e4
	.byte	0xa8
	.byte	0xe
	.string	"drv"
	.byte	0x12
	.byte	0xc5
	.byte	0x1e
	.4byte	0xaaa
	.byte	0xb4
	.byte	0x7
	.4byte	.LASF111
	.byte	0x12
	.byte	0xd1
	.byte	0x7
	.4byte	0xab0
	.byte	0xb8
	.byte	0
	.byte	0x11
	.4byte	0x610
	.4byte	0xa94
	.byte	0x12
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x9b
	.4byte	0xaaa
	.byte	0x12
	.4byte	0x88
	.byte	0
	.byte	0x12
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x85e
	.byte	0x11
	.4byte	0x16f
	.4byte	0xac0
	.byte	0x12
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x23
	.4byte	.LASF143
	.byte	0x12
	.byte	0xed
	.byte	0x16
	.4byte	0x980
	.byte	0x15
	.4byte	.LASF159
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.4byte	0x227
	.byte	0x5
	.byte	0x3
	.4byte	ecc_thread_data
	.byte	0x11
	.4byte	0xbf
	.4byte	0xaee
	.byte	0x12
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x5
	.4byte	0xade
	.byte	0x15
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2c
	.byte	0x14
	.4byte	0xaee
	.byte	0x5
	.byte	0x3
	.4byte	debug_private_key
	.byte	0x22
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	0xb26
	.byte	0x14
	.4byte	.LASF161
	.byte	0
	.byte	0x14
	.4byte	.LASF162
	.byte	0x1
	.byte	0x14
	.4byte	.LASF163
	.byte	0x2
	.byte	0
	.byte	0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0x44
	.byte	0x11
	.4byte	0x2b7
	.byte	0x5
	.byte	0x3
	.4byte	flags
	.byte	0x15
	.4byte	.LASF164
	.byte	0x1
	.byte	0x46
	.byte	0x15
	.4byte	0x1ff
	.byte	0x5
	.byte	0x3
	.4byte	cmd_sem
	.byte	0x9
	.byte	0x40
	.byte	0x1
	.byte	0x4b
	.byte	0x2
	.4byte	0xb6b
	.byte	0x24
	.string	"pk"
	.byte	0x1
	.byte	0x4c
	.byte	0x8
	.4byte	0x6b3
	.byte	0xa
	.4byte	.LASF97
	.byte	0x1
	.byte	0x4d
	.byte	0x8
	.4byte	0x7a9
	.byte	0
	.byte	0xd
	.byte	0x60
	.byte	0x1
	.byte	0x48
	.byte	0x8
	.4byte	0xb88
	.byte	0x7
	.4byte	.LASF165
	.byte	0x1
	.byte	0x49
	.byte	0x7
	.4byte	0x7a9
	.byte	0
	.byte	0xb
	.4byte	0xb4a
	.byte	0x20
	.byte	0
	.byte	0x25
	.string	"ecc"
	.byte	0x1
	.byte	0x4f
	.byte	0x3
	.4byte	0xb6b
	.byte	0x5
	.byte	0x3
	.4byte	ecc
	.byte	0x26
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x147
	.byte	0x6
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x1
	.byte	0x9c
	.4byte	0xc04
	.byte	0x27
	.4byte	.LVL105
	.4byte	0x17b0
	.4byte	0xbd2
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x29
	.4byte	.LVL106
	.4byte	0x17bc
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR7
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x180
	.byte	0x28
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	ecc_thread
	.byte	0x28
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x142
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x1
	.byte	0x9c
	.4byte	0xc5a
	.byte	0x2b
	.string	"dst"
	.byte	0x1
	.2byte	0x142
	.byte	0x1a
	.4byte	0x4c2
	.4byte	.LLST52
	.byte	0x2b
	.string	"len"
	.byte	0x1
	.2byte	0x142
	.byte	0x2c
	.4byte	0x88
	.4byte	.LLST53
	.byte	0x2c
	.4byte	.LVL104
	.4byte	0x17c8
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x129
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x1
	.byte	0x9c
	.4byte	0xf4c
	.byte	0x2b
	.string	"buf"
	.byte	0x1
	.2byte	0x129
	.byte	0x25
	.4byte	0x547
	.4byte	.LLST33
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0xf1f
	.byte	0x2e
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x12c
	.byte	0x1a
	.4byte	0xf4c
	.4byte	.LLST35
	.byte	0x2f
	.4byte	0xfbc
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.byte	0x1
	.2byte	0x138
	.byte	0x4
	.4byte	0xccd
	.byte	0x30
	.4byte	0xfc9
	.byte	0x31
	.4byte	0xfc9
	.4byte	.LLST36
	.byte	0x32
	.4byte	0xfd5
	.4byte	.LLST37
	.byte	0
	.byte	0x33
	.4byte	0xf52
	.4byte	.LBB101
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x131
	.byte	0x4
	.4byte	0xdb0
	.byte	0x31
	.4byte	0xf60
	.4byte	.LLST38
	.byte	0x34
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x32
	.4byte	0xf6d
	.4byte	.LLST39
	.byte	0x2f
	.4byte	0x1741
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x1
	.2byte	0x11d
	.byte	0x6
	.4byte	0xd39
	.byte	0x31
	.4byte	0x1753
	.4byte	.LLST40
	.byte	0x31
	.4byte	0x1760
	.4byte	.LLST41
	.byte	0x35
	.4byte	0x176d
	.byte	0x2c
	.4byte	.LVL83
	.4byte	0x17d4
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x16fa
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.byte	0x1
	.2byte	0x11f
	.byte	0xd
	.4byte	0xd87
	.byte	0x31
	.4byte	0x170c
	.4byte	.LLST42
	.byte	0x31
	.4byte	0x1719
	.4byte	.LLST43
	.byte	0x32
	.4byte	0x1726
	.4byte	.LLST44
	.byte	0x35
	.4byte	0x1733
	.byte	0x2c
	.4byte	.LVL88
	.4byte	0x17e0
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL81
	.4byte	0x17ec
	.4byte	0xd9b
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL89
	.4byte	0x17f9
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	0xf7b
	.4byte	.LBB108
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.2byte	0x135
	.byte	0x4
	.4byte	0xef0
	.byte	0x36
	.4byte	0xf88
	.byte	0x1
	.byte	0x59
	.byte	0x34
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x32
	.4byte	0xf94
	.4byte	.LLST45
	.byte	0x32
	.4byte	0xfa0
	.4byte	.LLST46
	.byte	0x37
	.4byte	0xfac
	.4byte	.L37
	.byte	0x38
	.4byte	0x1741
	.4byte	.LBB110
	.4byte	.LBE110-.LBB110
	.byte	0x1
	.byte	0xfa
	.byte	0x6
	.4byte	0xe2b
	.byte	0x31
	.4byte	0x1753
	.4byte	.LLST47
	.byte	0x31
	.4byte	0x1760
	.4byte	.LLST48
	.byte	0x35
	.4byte	0x176d
	.byte	0x2c
	.4byte	.LVL92
	.4byte	0x17d4
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	0x16fa
	.4byte	.LBB112
	.4byte	.LBE112-.LBB112
	.byte	0x1
	.2byte	0x104
	.byte	0x6
	.4byte	0xe79
	.byte	0x31
	.4byte	0x170c
	.4byte	.LLST49
	.byte	0x31
	.4byte	0x1719
	.4byte	.LLST50
	.byte	0x32
	.4byte	0x1726
	.4byte	.LLST51
	.byte	0x35
	.4byte	0x1733
	.byte	0x2c
	.4byte	.LVL97
	.4byte	0x17e0
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LVL86
	.4byte	0x152a
	.byte	0x27
	.4byte	.LVL94
	.4byte	0x17ec
	.4byte	0xe96
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL99
	.4byte	0x1781
	.4byte	0xeb8
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0x20
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x3a
	.4byte	0x16a9
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x27
	.4byte	.LVL100
	.4byte	0x1781
	.4byte	0xedb
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x83
	.byte	0xc0,0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0x20
	.byte	0x3a
	.4byte	0x16a9
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x2c
	.4byte	.LVL101
	.4byte	0x17f9
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL80
	.4byte	0x1805
	.4byte	0xf09
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x2c
	.4byte	.LVL91
	.4byte	0x1805
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	0x1617
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.2byte	0x12b
	.byte	0x6
	.4byte	0xf3e
	.byte	0x31
	.4byte	0x1628
	.4byte	.LLST34
	.byte	0
	.byte	0x3b
	.4byte	.LVL79
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x67b
	.byte	0x3c
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x117
	.byte	0xd
	.byte	0x1
	.4byte	0xf7b
	.byte	0x3d
	.string	"buf"
	.byte	0x1
	.2byte	0x117
	.byte	0x2d
	.4byte	0x547
	.byte	0x3e
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x119
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0x3f
	.4byte	.LASF170
	.byte	0x1
	.byte	0xf5
	.byte	0xd
	.byte	0x1
	.4byte	0xfb6
	.byte	0x40
	.string	"buf"
	.byte	0x1
	.byte	0xf5
	.byte	0x2a
	.4byte	0x547
	.byte	0x41
	.string	"cmd"
	.byte	0x1
	.byte	0xf7
	.byte	0x26
	.4byte	0xfb6
	.byte	0x42
	.4byte	.LASF91
	.byte	0x1
	.byte	0xf8
	.byte	0x7
	.4byte	0x9b
	.byte	0x43
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6e0
	.byte	0x3f
	.4byte	.LASF171
	.byte	0x1
	.byte	0xe7
	.byte	0xd
	.byte	0x1
	.4byte	0xfe2
	.byte	0x40
	.string	"buf"
	.byte	0x1
	.byte	0xe7
	.byte	0x2e
	.4byte	0x547
	.byte	0x41
	.string	"cmd"
	.byte	0x1
	.byte	0xe9
	.byte	0x26
	.4byte	0xfe2
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6c3
	.byte	0x44
	.4byte	.LASF176
	.byte	0x1
	.byte	0xd2
	.byte	0xd
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x1
	.byte	0x9c
	.4byte	0x1417
	.byte	0x45
	.string	"p1"
	.byte	0x1
	.byte	0xd2
	.byte	0x1e
	.4byte	0x16d
	.4byte	.LLST10
	.byte	0x46
	.4byte	0x1497
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xdb
	.byte	0x4
	.4byte	0x11d4
	.byte	0x34
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x32
	.4byte	0x14a4
	.4byte	.LLST11
	.byte	0x32
	.4byte	0x14b0
	.4byte	.LLST12
	.byte	0x32
	.4byte	0x14bc
	.4byte	.LLST13
	.byte	0x32
	.4byte	0x14c8
	.4byte	.LLST14
	.byte	0x32
	.4byte	0x14d4
	.4byte	.LLST15
	.byte	0x46
	.4byte	0x14e7
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x88
	.byte	0xb
	.4byte	0x10e3
	.byte	0x34
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x47
	.4byte	0x1507
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x10c2
	.byte	0x32
	.4byte	0x1508
	.4byte	.LLST16
	.byte	0x27
	.4byte	.LVL24
	.4byte	0x1812
	.4byte	0x10a5
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x2c
	.4byte	.LVL26
	.4byte	0x181e
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL44
	.4byte	0x182a
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	0x16be
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0xa0
	.byte	0x2
	.4byte	0x1113
	.byte	0x31
	.4byte	0x16d9
	.4byte	.LLST17
	.byte	0x31
	.4byte	0x16cc
	.4byte	.LLST18
	.byte	0x32
	.4byte	0x16e6
	.4byte	.LLST19
	.byte	0
	.byte	0x27
	.4byte	.LVL28
	.4byte	0x1836
	.4byte	0x112c
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x27
	.4byte	.LVL31
	.4byte	0x1842
	.4byte	0x1145
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x27
	.4byte	.LVL33
	.4byte	0x1842
	.4byte	0x115e
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x27
	.4byte	.LVL35
	.4byte	0x1842
	.4byte	0x1178
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0x27
	.4byte	.LVL38
	.4byte	0x184e
	.4byte	0x1197
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x27
	.4byte	.LVL46
	.4byte	0x1781
	.4byte	0x11b3
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x3a
	.4byte	0x16a9
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x2c
	.4byte	.LVL47
	.4byte	0x1781
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x21
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x79
	.byte	0xc0,0
	.byte	0x3a
	.4byte	0x16a9
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	0x1741
	.4byte	.LBB59
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xda
	.byte	0x7
	.4byte	0x121d
	.byte	0x31
	.4byte	0x1753
	.4byte	.LLST20
	.byte	0x31
	.4byte	0x1760
	.4byte	.LLST21
	.byte	0x34
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x32
	.4byte	0x176d
	.4byte	.LLST22
	.byte	0x2c
	.4byte	.LVL22
	.4byte	0x17d4
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	0x1417
	.4byte	.LBB66
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xdd
	.byte	0x4
	.4byte	0x13be
	.byte	0x34
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x32
	.4byte	0x1424
	.4byte	.LLST23
	.byte	0x32
	.4byte	0x1430
	.4byte	.LLST24
	.byte	0x32
	.4byte	0x143c
	.4byte	.LLST25
	.byte	0x32
	.4byte	0x1448
	.4byte	.LLST26
	.byte	0x32
	.4byte	0x1454
	.4byte	.LLST27
	.byte	0x46
	.4byte	0x16be
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xcc
	.byte	0x2
	.4byte	0x12ac
	.byte	0x31
	.4byte	0x16d9
	.4byte	.LLST28
	.byte	0x31
	.4byte	0x16cc
	.4byte	.LLST29
	.byte	0x34
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x32
	.4byte	0x16e6
	.4byte	.LLST30
	.byte	0x2c
	.4byte	.LVL40
	.4byte	0x185a
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL41
	.4byte	0x1866
	.4byte	0x12c0
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL50
	.4byte	0x1872
	.4byte	0x12dd
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x27
	.4byte	.LVL53
	.4byte	0x181e
	.4byte	0x12fd
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0
	.byte	0x27
	.4byte	.LVL54
	.4byte	0x1836
	.4byte	0x1316
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x27
	.4byte	.LVL57
	.4byte	0x1842
	.4byte	0x132f
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x27
	.4byte	.LVL59
	.4byte	0x1842
	.4byte	0x1348
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x27
	.4byte	.LVL61
	.4byte	0x1842
	.4byte	0x1362
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x27
	.4byte	.LVL65
	.4byte	0x184e
	.4byte	0x137b
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x27
	.4byte	.LVL68
	.4byte	0x187f
	.4byte	0x13a4
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x2c
	.4byte	.LVL71
	.4byte	0x1781
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x3a
	.4byte	0x16a9
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	0x1741
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0xdc
	.byte	0xe
	.4byte	0x13fd
	.byte	0x31
	.4byte	0x1753
	.4byte	.LLST31
	.byte	0x31
	.4byte	0x1760
	.4byte	.LLST32
	.byte	0x35
	.4byte	0x176d
	.byte	0x2c
	.4byte	.LVL49
	.4byte	0x17d4
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL21
	.4byte	0x188b
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LASF172
	.byte	0x1
	.byte	0xa5
	.byte	0xd
	.byte	0x1
	.4byte	0x1470
	.byte	0x41
	.string	"evt"
	.byte	0x1
	.byte	0xa7
	.byte	0x30
	.4byte	0x1470
	.byte	0x42
	.4byte	.LASF173
	.byte	0x1
	.byte	0xa8
	.byte	0x23
	.4byte	0x1476
	.byte	0x41
	.string	"hdr"
	.byte	0x1
	.byte	0xa9
	.byte	0x19
	.4byte	0x147c
	.byte	0x41
	.string	"buf"
	.byte	0x1
	.byte	0xaa
	.byte	0x12
	.4byte	0x547
	.byte	0x41
	.string	"ret"
	.byte	0x1
	.byte	0xab
	.byte	0x6
	.4byte	0x81
	.byte	0x48
	.4byte	.LASF175
	.4byte	0x1492
	.byte	0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x77e
	.byte	0x8
	.byte	0x4
	.4byte	0x736
	.byte	0x8
	.byte	0x4
	.4byte	0x653
	.byte	0x11
	.4byte	0x176
	.4byte	0x1492
	.byte	0x12
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0x5
	.4byte	0x1482
	.byte	0x3f
	.4byte	.LASF174
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.byte	0x1
	.4byte	0x14e1
	.byte	0x41
	.string	"evt"
	.byte	0x1
	.byte	0x80
	.byte	0x31
	.4byte	0x14e1
	.byte	0x42
	.4byte	.LASF173
	.byte	0x1
	.byte	0x81
	.byte	0x23
	.4byte	0x1476
	.byte	0x41
	.string	"hdr"
	.byte	0x1
	.byte	0x82
	.byte	0x19
	.4byte	0x147c
	.byte	0x41
	.string	"buf"
	.byte	0x1
	.byte	0x83
	.byte	0x12
	.4byte	0x547
	.byte	0x42
	.4byte	.LASF91
	.byte	0x1
	.byte	0x84
	.byte	0x7
	.4byte	0x9b
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x753
	.byte	0x49
	.4byte	.LASF178
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.4byte	0x1515
	.byte	0x48
	.4byte	.LASF175
	.4byte	0x1525
	.byte	0x5
	.byte	0x3
	.4byte	__func__.1
	.byte	0x4a
	.byte	0x41
	.string	"rc"
	.byte	0x1
	.byte	0x6c
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x176
	.4byte	0x1525
	.byte	0x12
	.4byte	0x88
	.byte	0xd
	.byte	0
	.byte	0x5
	.4byte	0x1515
	.byte	0x44
	.4byte	.LASF177
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x1
	.byte	0x9c
	.4byte	0x1611
	.byte	0x4b
	.4byte	.LASF85
	.byte	0x1
	.byte	0x51
	.byte	0x23
	.4byte	0xa7
	.4byte	.LLST0
	.byte	0x4b
	.4byte	.LASF91
	.byte	0x1
	.byte	0x51
	.byte	0x30
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0x4c
	.string	"evt"
	.byte	0x1
	.byte	0x53
	.byte	0x20
	.4byte	0x1611
	.4byte	.LLST2
	.byte	0x4c
	.string	"hdr"
	.byte	0x1
	.byte	0x54
	.byte	0x19
	.4byte	0x147c
	.4byte	.LLST3
	.byte	0x4c
	.string	"buf"
	.byte	0x1
	.byte	0x55
	.byte	0x12
	.4byte	0x547
	.4byte	.LLST4
	.byte	0x46
	.4byte	0x1635
	.4byte	.LBB15
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.4byte	0x15b7
	.byte	0x31
	.4byte	0x164e
	.4byte	.LLST5
	.byte	0x31
	.4byte	0x1642
	.4byte	.LLST6
	.byte	0
	.byte	0x27
	.4byte	.LVL3
	.4byte	0x1897
	.4byte	0x15d5
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3f
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x27
	.4byte	.LVL7
	.4byte	0x1842
	.4byte	0x15ee
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x27
	.4byte	.LVL9
	.4byte	0x1842
	.4byte	0x1607
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x4d
	.4byte	.LVL12
	.4byte	0x18a3
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6fd
	.byte	0x49
	.4byte	.LASF179
	.byte	0x2
	.byte	0x7c
	.byte	0x20
	.4byte	0x61c
	.byte	0x3
	.4byte	0x1635
	.byte	0x40
	.string	"buf"
	.byte	0x2
	.byte	0x7c
	.byte	0x40
	.4byte	0x547
	.byte	0
	.byte	0x3f
	.4byte	.LASF180
	.byte	0x2
	.byte	0x61
	.byte	0x14
	.byte	0x3
	.4byte	0x165b
	.byte	0x40
	.string	"buf"
	.byte	0x2
	.byte	0x61
	.byte	0x34
	.4byte	0x547
	.byte	0x4e
	.4byte	.LASF74
	.byte	0x2
	.byte	0x61
	.byte	0x4a
	.4byte	0x61c
	.byte	0
	.byte	0x4f
	.4byte	.LASF181
	.byte	0x3
	.2byte	0x451
	.byte	0x15
	.4byte	0x16d
	.byte	0x3
	.4byte	0x167b
	.byte	0x3d
	.string	"buf"
	.byte	0x3
	.2byte	0x451
	.byte	0x3d
	.4byte	0x167b
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x542
	.byte	0x3c
	.4byte	.LASF182
	.byte	0x4
	.2byte	0x173
	.byte	0x14
	.byte	0x3
	.4byte	0x16b7
	.byte	0x3d
	.string	"dst"
	.byte	0x4
	.2byte	0x173
	.byte	0x2a
	.4byte	0x16d
	.byte	0x3d
	.string	"src"
	.byte	0x4
	.2byte	0x173
	.byte	0x3b
	.4byte	0x16b7
	.byte	0x50
	.4byte	.LASF183
	.byte	0x4
	.2byte	0x173
	.byte	0x47
	.4byte	0x8f
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x16bd
	.byte	0x51
	.byte	0x3c
	.4byte	.LASF184
	.byte	0x5
	.2byte	0x185
	.byte	0x14
	.byte	0x3
	.4byte	0x16f4
	.byte	0x50
	.4byte	.LASF185
	.byte	0x5
	.2byte	0x185
	.byte	0x2f
	.4byte	0x16f4
	.byte	0x3d
	.string	"bit"
	.byte	0x5
	.2byte	0x185
	.byte	0x3b
	.4byte	0x81
	.byte	0x3e
	.4byte	.LASF186
	.byte	0x5
	.2byte	0x187
	.byte	0xf
	.4byte	0x253
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x242
	.byte	0x4f
	.4byte	.LASF187
	.byte	0x5
	.2byte	0x170
	.byte	0x13
	.4byte	0x81
	.byte	0x3
	.4byte	0x1741
	.byte	0x50
	.4byte	.LASF185
	.byte	0x5
	.2byte	0x170
	.byte	0x35
	.4byte	0x16f4
	.byte	0x3d
	.string	"bit"
	.byte	0x5
	.2byte	0x170
	.byte	0x41
	.4byte	0x81
	.byte	0x3e
	.4byte	.LASF186
	.byte	0x5
	.2byte	0x172
	.byte	0xf
	.4byte	0x253
	.byte	0x52
	.string	"old"
	.byte	0x5
	.2byte	0x173
	.byte	0xf
	.4byte	0x253
	.byte	0
	.byte	0x4f
	.4byte	.LASF188
	.byte	0x5
	.2byte	0x149
	.byte	0x13
	.4byte	0x81
	.byte	0x3
	.4byte	0x177b
	.byte	0x50
	.4byte	.LASF185
	.byte	0x5
	.2byte	0x149
	.byte	0x33
	.4byte	0x177b
	.byte	0x3d
	.string	"bit"
	.byte	0x5
	.2byte	0x149
	.byte	0x3f
	.4byte	0x81
	.byte	0x52
	.string	"val"
	.byte	0x5
	.2byte	0x14b
	.byte	0xf
	.4byte	0x253
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x24e
	.byte	0x53
	.4byte	0x1681
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x1
	.byte	0x9c
	.4byte	0x17b0
	.byte	0x31
	.4byte	0x168f
	.4byte	.LLST7
	.byte	0x31
	.4byte	0x169c
	.4byte	.LLST8
	.byte	0x31
	.4byte	0x16a9
	.4byte	.LLST9
	.byte	0
	.byte	0x54
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0xb
	.byte	0x89
	.byte	0x5
	.byte	0x54
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0xb
	.byte	0xeb
	.byte	0x5
	.byte	0x54
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x13
	.byte	0x26
	.byte	0x5
	.byte	0x54
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0x5
	.byte	0x93
	.byte	0x15
	.byte	0x54
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0x5
	.byte	0xd5
	.byte	0x15
	.byte	0x55
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0x3
	.2byte	0x42f
	.byte	0x6
	.byte	0x54
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xb
	.byte	0x93
	.byte	0x5
	.byte	0x55
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0x3
	.2byte	0x180
	.byte	0x7
	.byte	0x54
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0x14
	.byte	0x5e
	.byte	0x5
	.byte	0x54
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0x15
	.byte	0xc8
	.byte	0x5
	.byte	0x54
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x16
	.byte	0x1e
	.byte	0x5
	.byte	0x54
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x2
	.byte	0x42
	.byte	0x11
	.byte	0x54
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x3
	.byte	0xcc
	.byte	0x7
	.byte	0x54
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x16
	.byte	0x21
	.byte	0x8
	.byte	0x54
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0x5
	.byte	0xff
	.byte	0x15
	.byte	0x54
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x11
	.byte	0x4c
	.byte	0x5
	.byte	0x55
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xe
	.2byte	0x209
	.byte	0x5
	.byte	0x54
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x14
	.byte	0x7c
	.byte	0x5
	.byte	0x54
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xb
	.byte	0x8e
	.byte	0x5
	.byte	0x54
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x2
	.byte	0x5a
	.byte	0x11
	.byte	0x54
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x11
	.byte	0x5f
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
	.byte	0x26
	.byte	0
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x17
	.byte	0x1
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
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0x19
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x13
	.byte	0x1
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
	.byte	0x1d
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0xd
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x27
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
	.byte	0x28
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x34
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x39
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
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
	.byte	0x43
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
	.byte	0
	.byte	0
	.byte	0x44
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
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x48
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
	.byte	0x49
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
	.byte	0x4a
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4d
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
	.byte	0x4e
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
	.byte	0x4f
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
	.byte	0x50
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
	.byte	0x51
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x52
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
	.byte	0x53
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
	.byte	0x54
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
	.byte	0x55
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
.LLST52:
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104-1
	.4byte	.LFE98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL104-1
	.4byte	.LFE98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL72
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79-1
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE97
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x3
	.byte	0x7e
	.byte	0x3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL98
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL70
	.4byte	.LFE93
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LFE93
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x3
	.4byte	flags
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE103
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LFE103
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE103
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
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
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	0
	.4byte	0
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	0
	.4byte	0
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB117
	.4byte	.LBE117
	.4byte	.LBB118
	.4byte	.LBE118
	.4byte	0
	.4byte	0
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	0
	.4byte	0
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	0
	.4byte	0
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF198:
	.string	"printf"
.LASF203:
	.string	"atomic_and"
.LASF214:
	.string	"user_data"
.LASF92:
	.string	"ncmd"
.LASF163:
	.string	"NUM_FLAGS"
.LASF80:
	.string	"BT_BUF_ACL_IN"
.LASF12:
	.string	"size_t"
.LASF212:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF97:
	.string	"dhkey"
.LASF171:
	.string	"clear_ecc_events"
.LASF82:
	.string	"BT_BUF_ISO_IN"
.LASF216:
	.string	"send_status"
.LASF159:
	.string	"ecc_thread_data"
.LASF83:
	.string	"bt_hci_evt_hdr"
.LASF121:
	.string	"BT_DEV_ADVERTISING"
.LASF74:
	.string	"type"
.LASF154:
	.string	"init"
.LASF44:
	.string	"_POLL_TYPE_SIGNAL"
.LASF193:
	.string	"atomic_or"
.LASF10:
	.string	"long long unsigned int"
.LASF87:
	.string	"bt_hci_cp_le_set_event_mask"
.LASF130:
	.string	"BT_DEV_AUTO_CONN"
.LASF169:
	.string	"le_p256_pub_key"
.LASF129:
	.string	"BT_DEV_SCAN_WL"
.LASF48:
	.string	"_poll_types_bits"
.LASF205:
	.string	"uECC_valid_public_key"
.LASF160:
	.string	"debug_private_key"
.LASF50:
	.string	"_POLL_STATE_NOT_READY"
.LASF180:
	.string	"bt_buf_set_type"
.LASF1:
	.string	"int16_t"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF37:
	.string	"atomic_val_t"
.LASF168:
	.string	"chdr"
.LASF13:
	.string	"u8_t"
.LASF43:
	.string	"_POLL_TYPE_IGNORE"
.LASF117:
	.string	"BT_DEV_PRESET_ID"
.LASF176:
	.string	"ecc_thread"
.LASF39:
	.string	"k_work"
.LASF122:
	.string	"BT_DEV_ADVERTISING_NAME"
.LASF30:
	.string	"poll_events"
.LASF157:
	.string	"cmd_tx_queue"
.LASF58:
	.string	"uECC_Curve"
.LASF55:
	.string	"wordcount_t"
.LASF4:
	.string	"long int"
.LASF215:
	.string	"bt_hci_ecc_init"
.LASF20:
	.string	"_snode"
.LASF32:
	.string	"_queue"
.LASF3:
	.string	"short int"
.LASF28:
	.string	"_task_t"
.LASF139:
	.string	"rl_size"
.LASF161:
	.string	"PENDING_PUB_KEY"
.LASF133:
	.string	"BT_DEV_ASSIST_RUN"
.LASF204:
	.string	"bt_recv"
.LASF156:
	.string	"sent_cmd"
.LASF164:
	.string	"cmd_sem"
.LASF104:
	.string	"BT_HCI_DRIVER_BUS_RS232"
.LASF115:
	.string	"BT_DEV_ENABLE"
.LASF188:
	.string	"atomic_test_bit"
.LASF178:
	.string	"generate_keys"
.LASF95:
	.string	"bt_hci_evt_le_p256_public_key_complete"
.LASF31:
	.string	"k_fifo"
.LASF186:
	.string	"mask"
.LASF78:
	.string	"BT_BUF_EVT"
.LASF138:
	.string	"pkts"
.LASF194:
	.string	"net_buf_unref"
.LASF59:
	.string	"uECC_Curve_t"
.LASF143:
	.string	"bt_dev"
.LASF128:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF142:
	.string	"wl_entries"
.LASF11:
	.string	"unsigned int"
.LASF56:
	.string	"bitcount_t"
.LASF17:
	.string	"sys_snode_t"
.LASF38:
	.string	"k_work_handler_t"
.LASF100:
	.string	"BT_HCI_DRIVER_BUS_VIRTUAL"
.LASF79:
	.string	"BT_BUF_ACL_OUT"
.LASF211:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_ecc.c"
.LASF9:
	.string	"long unsigned int"
.LASF15:
	.string	"u32_t"
.LASF16:
	.string	"u64_t"
.LASF111:
	.string	"name"
.LASF199:
	.string	"memcmp"
.LASF60:
	.string	"num_words"
.LASF89:
	.string	"bt_hci_cp_le_generate_dhkey"
.LASF67:
	.string	"data"
.LASF200:
	.string	"bt_buf_get_rx"
.LASF158:
	.string	"curve_secp256r1"
.LASF47:
	.string	"_POLL_NUM_TYPES"
.LASF72:
	.string	"pool_id"
.LASF145:
	.string	"id_count"
.LASF182:
	.string	"sys_memcpy_swap"
.LASF112:
	.string	"quirks"
.LASF185:
	.string	"target"
.LASF77:
	.string	"BT_BUF_CMD"
.LASF62:
	.string	"num_n_bits"
.LASF148:
	.string	"hci_version"
.LASF208:
	.string	"bt_buf_get_evt"
.LASF172:
	.string	"emulate_le_generate_dhkey"
.LASF153:
	.string	"supported_commands"
.LASF179:
	.string	"bt_buf_get_type"
.LASF120:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF184:
	.string	"atomic_clear_bit"
.LASF196:
	.string	"net_buf_simple_pull"
.LASF136:
	.string	"features"
.LASF41:
	.string	"handler"
.LASF150:
	.string	"hci_revision"
.LASF155:
	.string	"ncmd_sem"
.LASF22:
	.string	"tail"
.LASF110:
	.string	"bt_hci_driver"
.LASF51:
	.string	"_POLL_STATE_SIGNALED"
.LASF126:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF113:
	.string	"open"
.LASF201:
	.string	"net_buf_simple_add"
.LASF102:
	.string	"BT_HCI_DRIVER_BUS_PCCARD"
.LASF195:
	.string	"k_sem_give"
.LASF65:
	.string	"mmod_fast"
.LASF66:
	.string	"net_buf_simple"
.LASF123:
	.string	"BT_DEV_ADVERTISING_CONNECTABLE"
.LASF190:
	.string	"k_thread_create"
.LASF151:
	.string	"lmp_subversion"
.LASF177:
	.string	"send_cmd_status"
.LASF71:
	.string	"frags"
.LASF144:
	.string	"id_addr"
.LASF69:
	.string	"__buf"
.LASF76:
	.string	"bt_buf_type"
.LASF49:
	.string	"_poll_states_bits"
.LASF140:
	.string	"rl_entries"
.LASF125:
	.string	"BT_DEV_SCANNING"
.LASF40:
	.string	"_reserved"
.LASF93:
	.string	"bt_hci_evt_le_meta_event"
.LASF149:
	.string	"lmp_version"
.LASF167:
	.string	"bt_hci_ecc_send"
.LASF119:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF64:
	.string	"x_side"
.LASF98:
	.string	"_Bool"
.LASF6:
	.string	"unsigned char"
.LASF118:
	.string	"BT_DEV_USER_ID_ADDR"
.LASF131:
	.string	"BT_DEV_RPA_VALID"
.LASF70:
	.string	"node"
.LASF166:
	.string	"default_CSPRNG"
.LASF19:
	.string	"next"
.LASF26:
	.string	"bl_hdl_t"
.LASF173:
	.string	"meta"
.LASF191:
	.string	"bt_rand"
.LASF207:
	.string	"k_sem_take"
.LASF175:
	.string	"__func__"
.LASF101:
	.string	"BT_HCI_DRIVER_BUS_USB"
.LASF152:
	.string	"manufacturer"
.LASF68:
	.string	"size"
.LASF75:
	.string	"bt_addr_le_t"
.LASF53:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF18:
	.string	"head"
.LASF88:
	.string	"events"
.LASF8:
	.string	"uint32_t"
.LASF209:
	.string	"bt_recv_prio"
.LASF170:
	.string	"le_gen_dhkey"
.LASF197:
	.string	"uECC_make_key"
.LASF57:
	.string	"uECC_word_t"
.LASF183:
	.string	"length"
.LASF189:
	.string	"k_sem_init"
.LASF25:
	.string	"char"
.LASF192:
	.string	"atomic_get"
.LASF36:
	.string	"atomic_t"
.LASF45:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF147:
	.string	"random_addr"
.LASF109:
	.string	"BT_HCI_DRIVER_BUS_IPM"
.LASF21:
	.string	"_dnode"
.LASF105:
	.string	"BT_HCI_DRIVER_BUS_PCI"
.LASF94:
	.string	"subevent"
.LASF52:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF108:
	.string	"BT_HCI_DRIVER_BUS_I2C"
.LASF134:
	.string	"BT_DEV_NUM_FLAGS"
.LASF46:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF81:
	.string	"BT_BUF_ISO_OUT"
.LASF35:
	.string	"task"
.LASF146:
	.string	"adv_id"
.LASF7:
	.string	"short unsigned int"
.LASF29:
	.string	"k_queue"
.LASF114:
	.string	"send"
.LASF0:
	.string	"int8_t"
.LASF96:
	.string	"bt_hci_evt_le_generate_dhkey_complete"
.LASF61:
	.string	"num_bytes"
.LASF210:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF14:
	.string	"u16_t"
.LASF63:
	.string	"double_jacobian"
.LASF103:
	.string	"BT_HCI_DRIVER_BUS_UART"
.LASF213:
	.string	"net_buf"
.LASF202:
	.string	"memset"
.LASF127:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF54:
	.string	"_POLL_NUM_STATES"
.LASF91:
	.string	"status"
.LASF34:
	.string	"k_thread"
.LASF206:
	.string	"uECC_shared_secret"
.LASF90:
	.string	"bt_hci_evt_cmd_status"
.LASF42:
	.string	"flags"
.LASF187:
	.string	"atomic_test_and_set_bit"
.LASF24:
	.string	"sys_dlist_t"
.LASF86:
	.string	"param_len"
.LASF137:
	.string	"states"
.LASF27:
	.string	"_sem_t"
.LASF73:
	.string	"bt_addr_t"
.LASF165:
	.string	"private_key"
.LASF106:
	.string	"BT_HCI_DRIVER_BUS_SDIO"
.LASF141:
	.string	"wl_size"
.LASF23:
	.string	"prev"
.LASF181:
	.string	"net_buf_user_data"
.LASF33:
	.string	"k_sem"
.LASF107:
	.string	"BT_HCI_DRIVER_BUS_SPI"
.LASF124:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF84:
	.string	"bt_hci_cmd_hdr"
.LASF135:
	.string	"bt_dev_le"
.LASF174:
	.string	"emulate_le_p256_public_key_cmd"
.LASF132:
	.string	"BT_DEV_ID_PENDING"
.LASF99:
	.string	"bt_hci_driver_bus"
.LASF85:
	.string	"opcode"
.LASF162:
	.string	"PENDING_DHKEY"
.LASF116:
	.string	"BT_DEV_READY"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
