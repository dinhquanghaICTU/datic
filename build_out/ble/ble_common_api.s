	.file	"ble_common_api.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata._le_phy_updated.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[BLE] phy updated: rx_phy %d, rx_phy %d \r\n"
	.section	.text._le_phy_updated,"ax",@progbits
	.align	1
	.type	_le_phy_updated, @function
_le_phy_updated:
.LFB76:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_common_api.c"
	.loc 1 74 1
	.cfi_startproc
.LVL0:
	.loc 1 75 5
	.loc 1 74 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 76 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 75 5
	lui	a0,%hi(.LC0)
.LVL1:
	addi	a0,a0,%lo(.LC0)
	.loc 1 76 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 75 5
	tail	printf
.LVL2:
	.cfi_endproc
.LFE76:
	.size	_le_phy_updated, .-_le_phy_updated
	.section	.rodata._le_param_updated.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"[BLE] conn param updated: int 0x%04x lat %d to %d \r\n"
	.section	.text._le_param_updated,"ax",@progbits
	.align	1
	.type	_le_param_updated, @function
_le_param_updated:
.LFB75:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 70 5
	.loc 1 69 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 71 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 70 5
	lui	a0,%hi(.LC1)
.LVL4:
	addi	a0,a0,%lo(.LC1)
	.loc 1 71 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 70 5
	tail	printf
.LVL5:
	.cfi_endproc
.LFE75:
	.size	_le_param_updated, .-_le_param_updated
	.section	.rodata._le_param_req.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"[BLE] conn param request: int 0x%04x-0x%04x lat %d to %d \r\n"
	.section	.text._le_param_req,"ax",@progbits
	.align	1
	.type	_le_param_req, @function
_le_param_req:
.LFB74:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 58 5
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 58 5
	lhu	a4,6(a1)
	lhu	a3,4(a1)
	lhu	a2,2(a1)
	lhu	a1,0(a1)
.LVL7:
	lui	a0,%hi(.LC2)
.LVL8:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL9:
	.loc 1 64 5 is_stmt 1
	.loc 1 65 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	_le_param_req, .-_le_param_req
	.section	.rodata._connected.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"[BLE] connected \r\n"
	.section	.text._connected,"ax",@progbits
	.align	1
	.type	_connected, @function
_connected:
.LFB72:
	.loc 1 18 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 19 5
	.loc 1 18 1 is_stmt 0
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
	.loc 1 19 9
	lui	a5,%hi(conn_cb)
	lw	a5,%lo(conn_cb)(a5)
	.loc 1 18 1
	mv	s1,a0
	.loc 1 19 8
	bne	a5,zero,.L8
.LVL11:
.L11:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 7 is_stmt 0
	lbu	a4,2(s1)
	li	a5,1
	bne	a4,a5,.L7
	.loc 1 29 5 is_stmt 1
	.loc 1 35 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 29 14
	lui	a5,%hi(.LANCHOR0)
	.loc 1 35 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 29 14
	sw	s1,%lo(.LANCHOR0)(a5)
	.loc 1 31 5 is_stmt 1
	.loc 1 35 1 is_stmt 0
	lw	s1,4(sp)
	.cfi_restore 9
.LVL12:
	.loc 1 31 5
	lui	a0,%hi(.LC3)
	.loc 1 35 1
	.loc 1 31 5
	addi	a0,a0,%lo(.LC3)
	.loc 1 35 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 31 5
	tail	printf
.LVL13:
.L8:
	.cfi_restore_state
	.loc 1 20 9 is_stmt 1
	.loc 1 20 13 is_stmt 0
	jalr	a5
.LVL14:
	.loc 1 20 12
	beq	a0,zero,.L11
.L7:
	.loc 1 35 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL15:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE72:
	.size	_connected, .-_connected
	.section	.rodata._ble_mtu_changed_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"[BLE] mtu updated:%d \r\n"
	.section	.text._ble_mtu_changed_cb,"ax",@progbits
	.align	1
	.type	_ble_mtu_changed_cb, @function
_ble_mtu_changed_cb:
.LFB78:
	.loc 1 95 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 96 5
	.loc 1 95 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 97 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 96 5
	lui	a0,%hi(.LC4)
.LVL17:
	addi	a0,a0,%lo(.LC4)
	.loc 1 97 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 96 5
	tail	printf
.LVL18:
	.cfi_endproc
.LFE78:
	.size	_ble_mtu_changed_cb, .-_ble_mtu_changed_cb
	.section	.rodata.exchange_func.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"successful"
	.align	2
.LC6:
	.string	"faxkled"
	.align	2
.LC7:
	.string	"[BLE] Exchange %s MTU Size =%d \r\n"
	.section	.text.exchange_func,"ax",@progbits
	.align	1
	.type	exchange_func, @function
exchange_func:
.LFB86:
	.loc 1 194 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 195 5
	.loc 1 195 8 is_stmt 0
	beq	a0,zero,.L20
	.loc 1 196 9 is_stmt 1
	.loc 1 194 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 196 9
	beq	a1,zero,.L23
	lui	a1,%hi(.LC6)
.LVL20:
	addi	a1,a1,%lo(.LC6)
.L22:
	sw	a1,-20(s0)
	.loc 1 196 92 discriminator 4
	call	bt_gatt_get_mtu
.LVL21:
	.loc 1 196 9 discriminator 4
	lw	a1,-20(s0)
	.loc 1 198 1 discriminator 4
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 196 92 discriminator 4
	mv	a2,a0
	.loc 1 196 9 discriminator 4
	lui	a0,%hi(.LC7)
	.loc 1 198 1 discriminator 4
	.loc 1 196 9 discriminator 4
	addi	a0,a0,%lo(.LC7)
	.loc 1 198 1 discriminator 4
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 196 9 discriminator 4
	tail	printf
.LVL22:
.L23:
	.cfi_restore_state
	.loc 1 196 9
	lui	a1,%hi(.LC5)
.LVL23:
	addi	a1,a1,%lo(.LC5)
	j	.L22
.LVL24:
.L20:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	ret
	.cfi_endproc
.LFE86:
	.size	exchange_func, .-exchange_func
	.section	.rodata._disconnected.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"[BLE] disconnected, reason:%d \r\n"
	.section	.text._disconnected,"ax",@progbits
	.align	1
	.type	_disconnected, @function
_disconnected:
.LFB73:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 39 5
	.loc 1 38 1 is_stmt 0
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
	.loc 1 39 9
	lui	a5,%hi(disconn_cb)
	lw	a5,%lo(disconn_cb)(a5)
	.loc 1 38 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 39 8
	bne	a5,zero,.L28
.LVL26:
.L31:
	.loc 1 45 5 is_stmt 1
	.loc 1 45 7 is_stmt 0
	lbu	a4,2(s2)
	li	a5,1
	bne	a4,a5,.L27
.LVL27:
.LBB4:
.LBB5:
	.loc 1 49 5 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 53 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL28:
.LBB10:
.LBB6:
	.loc 1 49 14
	lui	a5,%hi(.LANCHOR0)
	.loc 1 51 5
	mv	a1,s1
.LBE6:
.LBE10:
	.loc 1 53 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL29:
.LBB11:
.LBB7:
	.loc 1 49 14
	sw	zero,%lo(.LANCHOR0)(a5)
	.loc 1 51 5 is_stmt 1
	lui	a0,%hi(.LC8)
.LBE7:
.LBE11:
	.loc 1 53 1 is_stmt 0
.LBB12:
.LBB8:
	.loc 1 51 5
	addi	a0,a0,%lo(.LC8)
.LBE8:
.LBE12:
	.loc 1 53 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB13:
.LBB9:
	.loc 1 51 5
	tail	printf
.LVL30:
.L28:
	.cfi_restore_state
.LBE9:
.LBE13:
	.loc 1 40 9 is_stmt 1
	.loc 1 40 13 is_stmt 0
	jalr	a5
.LVL31:
	.loc 1 40 12
	beq	a0,zero,.L31
.L27:
	.loc 1 53 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL32:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	_disconnected, .-_disconnected
	.section	.text.ble_get_conn_cur,"ax",@progbits
	.align	1
	.globl	ble_get_conn_cur
	.type	ble_get_conn_cur, @function
ble_get_conn_cur:
.LFB79:
	.loc 1 100 1 is_stmt 1
	.cfi_startproc
	.loc 1 101 5
	.loc 1 100 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 102 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	ble_get_conn_cur, .-ble_get_conn_cur
	.section	.text.ble_regist_conn,"ax",@progbits
	.align	1
	.globl	ble_regist_conn
	.type	ble_regist_conn, @function
ble_regist_conn:
.LFB80:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 106 5
	.loc 1 105 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 109 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 106 13
	lui	a5,%hi(conn_cb)
	sw	a0,%lo(conn_cb)(a5)
	.loc 1 108 5 is_stmt 1
	.loc 1 109 1 is_stmt 0
	li	a0,0
.LVL34:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	ble_regist_conn, .-ble_regist_conn
	.section	.text.ble_regist_disconn,"ax",@progbits
	.align	1
	.globl	ble_regist_disconn
	.type	ble_regist_disconn, @function
ble_regist_disconn:
.LFB81:
	.loc 1 112 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 113 5
	.loc 1 112 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 116 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 113 16
	lui	a5,%hi(disconn_cb)
	sw	a0,%lo(disconn_cb)(a5)
	.loc 1 115 5 is_stmt 1
	.loc 1 116 1 is_stmt 0
	li	a0,0
.LVL36:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE81:
	.size	ble_regist_disconn, .-ble_regist_disconn
	.section	.text.axk_HalBleSetMac,"ax",@progbits
	.align	1
	.globl	axk_HalBleSetMac
	.type	axk_HalBleSetMac, @function
axk_HalBleSetMac:
.LFB82:
	.loc 1 127 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 128 5
	.loc 1 130 5
	.loc 1 127 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 127 1
	mv	a1,a0
	.loc 1 130 5
	li	a2,6
	addi	a0,s0,-24
.LVL38:
	call	memcpy
.LVL39:
	.loc 1 136 5 is_stmt 1
	.loc 1 137 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE82:
	.size	axk_HalBleSetMac, .-axk_HalBleSetMac
	.section	.text.axk_HalBleGetMac_Start,"ax",@progbits
	.align	1
	.globl	axk_HalBleGetMac_Start
	.type	axk_HalBleGetMac_Start, @function
axk_HalBleGetMac_Start:
.LFB83:
	.loc 1 140 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 141 5
	.loc 1 143 5
	.loc 1 140 1 is_stmt 0
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
	.loc 1 140 1
	mv	s1,a0
	.loc 1 143 5
	call	ble_stack_start
.LVL41:
	.loc 1 145 5 is_stmt 1
	addi	a0,s0,-24
	call	bt_get_local_public_address
.LVL42:
	.loc 1 146 5
	li	a2,6
	addi	a1,s0,-23
	mv	a0,s1
	call	memcpy
.LVL43:
	.loc 1 147 5
	mv	a0,s1
	li	a1,6
	call	ble_reverse_byte
.LVL44:
	.loc 1 149 5
	call	bt_disable
.LVL45:
	.loc 1 151 5
	.loc 1 152 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL46:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE83:
	.size	axk_HalBleGetMac_Start, .-axk_HalBleGetMac_Start
	.section	.text.axk_HalBleGetMac,"ax",@progbits
	.align	1
	.globl	axk_HalBleGetMac
	.type	axk_HalBleGetMac, @function
axk_HalBleGetMac:
.LFB84:
	.loc 1 163 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 164 5
	.loc 1 166 5
	.loc 1 163 1 is_stmt 0
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
	mv	s1,a0
	.loc 1 166 5
	addi	a0,s0,-24
.LVL48:
	call	bt_get_local_public_address
.LVL49:
	.loc 1 167 5 is_stmt 1
	li	a2,6
	addi	a1,s0,-23
	mv	a0,s1
	call	memcpy
.LVL50:
	.loc 1 168 5
	li	a1,6
	mv	a0,s1
	call	ble_reverse_byte
.LVL51:
	.loc 1 169 2
	.loc 1 169 18 is_stmt 0
	lbu	a4,1(s1)
	.loc 1 169 11
	lbu	a5,0(s1)
	.loc 1 169 14
	add	a5,a5,a4
	.loc 1 169 25
	lbu	a4,2(s1)
	.loc 1 169 21
	add	a5,a5,a4
	.loc 1 169 32
	lbu	a4,3(s1)
	.loc 1 169 28
	add	a5,a5,a4
	.loc 1 169 39
	lbu	a4,4(s1)
	.loc 1 169 35
	add	a5,a5,a4
	.loc 1 169 46
	lbu	a4,5(s1)
	.loc 1 169 42
	add	a5,a5,a4
	.loc 1 169 4
	bne	a5,zero,.L49
	.loc 1 170 3 is_stmt 1
	mv	a0,s1
	call	axk_HalBleGetMac_Start
.LVL52:
.L49:
	.loc 1 173 5
	.loc 1 174 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL53:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	axk_HalBleGetMac, .-axk_HalBleGetMac
	.section	.text.axk_HalBleInit,"ax",@progbits
	.align	1
	.globl	axk_HalBleInit
	.type	axk_HalBleInit, @function
axk_HalBleInit:
.LFB85:
	.loc 1 178 1 is_stmt 1
	.cfi_startproc
	.loc 1 179 5
	.loc 1 180 5
	.loc 1 181 5
	.loc 1 178 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 181 5
	call	ble_stack_start
.LVL54:
	.loc 1 182 5 is_stmt 1
	call	ble_master_init
.LVL55:
	.loc 1 183 5
	lui	a0,%hi(_ble_mtu_changed_cb)
	addi	a0,a0,%lo(_ble_mtu_changed_cb)
	call	bt_gatt_register_mtu_callback
.LVL56:
	.loc 1 184 5
	lui	a0,%hi(.LANCHOR1)
	addi	s1,a0,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	bt_conn_cb_register
.LVL57:
	.loc 1 186 5
	.loc 1 187 5 is_stmt 0
	li	a0,15
	.loc 1 186 26
	sw	zero,28(s1)
	.loc 1 187 5 is_stmt 1
	call	bt_set_tx_pwr
.LVL58:
	.loc 1 188 5
	.loc 1 189 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE85:
	.size	axk_HalBleInit, .-axk_HalBleInit
	.section	.text.axk_HalBleSetMtu,"ax",@progbits
	.align	1
	.globl	axk_HalBleSetMtu
	.type	axk_HalBleSetMtu, @function
axk_HalBleSetMtu:
.LFB87:
	.loc 1 210 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 211 5
	.loc 1 213 5
	.loc 1 213 18 is_stmt 0
	addi	a0,a0,-23
.LVL60:
	.loc 1 213 8
	andi	a0,a0,0xff
	li	a5,224
	bgtu	a0,a5,.L55
	.loc 1 217 5 is_stmt 1
	.loc 1 217 18 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 214 16
	li	a0,1
	.loc 1 217 8
	beq	a4,zero,.L58
	.loc 1 221 5 is_stmt 1
	.loc 1 210 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 221 26
	lui	a1,%hi(.LANCHOR2)
	lui	a5,%hi(exchange_func)
	.loc 1 210 1
	.loc 1 221 26
	addi	a3,a1,%lo(.LANCHOR2)
	addi	a5,a5,%lo(exchange_func)
	.loc 1 222 11
	addi	a1,a1,%lo(.LANCHOR2)
	mv	a0,a4
	.loc 1 221 26
	sw	a5,24(a3)
	.loc 1 222 5 is_stmt 1
	.loc 1 222 11 is_stmt 0
	call	bt_gatt_exchange_mtu
.LVL61:
	.loc 1 223 5 is_stmt 1
	.loc 1 228 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 214 16
	snez	a0,a0
.LVL62:
	.loc 1 228 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L55:
	.loc 1 214 16
	li	a0,1
	ret
.L58:
	.loc 1 228 1
	ret
	.cfi_endproc
.LFE87:
	.size	axk_HalBleSetMtu, .-axk_HalBleSetMtu
	.section	.text.axk_HalBleGetMtu,"ax",@progbits
	.align	1
	.globl	axk_HalBleGetMtu
	.type	axk_HalBleGetMtu, @function
axk_HalBleGetMtu:
.LFB88:
	.loc 1 238 1 is_stmt 1
	.cfi_startproc
	.loc 1 239 5
	.loc 1 241 5
	.loc 1 241 18 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 241 8
	beq	a5,zero,.L64
	.loc 1 245 5 is_stmt 1
	.loc 1 238 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 245 11
	mv	a0,a5
	call	bt_gatt_get_mtu
.LVL63:
	.loc 1 247 5 is_stmt 1
	.loc 1 248 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL64:
.L64:
	li	a0,-1
	ret
	.cfi_endproc
.LFE88:
	.size	axk_HalBleGetMtu, .-axk_HalBleGetMtu
	.comm	disconn_cb,4,4
	.comm	conn_cb,4,4
	.comm	pconn,4,4
	.section	.bss.exchange_params,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	exchange_params, @object
	.size	exchange_params, 28
exchange_params:
	.zero	28
	.section	.data.conn_callbacks,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	conn_callbacks, @object
	.size	conn_callbacks, 32
conn_callbacks:
	.word	_connected
	.word	_disconnected
	.word	_le_param_req
	.word	_le_param_updated
	.word	_le_phy_updated
	.zero	12
	.section	.sbss.conn_cur,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	conn_cur, @object
	.size	conn_cur, 4
conn_cur:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/atomic.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/work_q.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
	.file 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/conn_internal.h"
	.file 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/att.h"
	.file 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
	.file 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
	.file 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_master.h"
	.file 18 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 19 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 20 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12a2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF230
	.byte	0xc
	.4byte	.LASF231
	.4byte	.LASF232
	.4byte	.Ldebug_ranges0+0x30
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
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
	.byte	0x2
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.byte	0x4
	.4byte	0x92
	.byte	0x7
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.byte	0x17
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x16
	.byte	0x18
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x17
	.byte	0x12
	.4byte	0x5b
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x8
	.4byte	0xd2
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1d
	.byte	0x11
	.4byte	0xd2
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb7
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x20
	.byte	0x17
	.4byte	0xb7
	.byte	0x8
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.byte	0x22
	.byte	0x8
	.4byte	0x10c
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.byte	0xf
	.4byte	0x10c
	.byte	0
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x24
	.byte	0xf
	.4byte	0x10c
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd8
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x27
	.byte	0x17
	.4byte	0xe4
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0x1e
	.byte	0x2
	.4byte	0x140
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1f
	.byte	0x12
	.4byte	0x15a
	.byte	0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0x20
	.byte	0x12
	.4byte	0x15a
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x8
	.byte	0x5
	.byte	0x1d
	.byte	0x8
	.4byte	0x15a
	.byte	0xc
	.4byte	0x11e
	.byte	0
	.byte	0xc
	.4byte	0x160
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x140
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0x22
	.byte	0x2
	.4byte	0x182
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x23
	.byte	0x12
	.4byte	0x15a
	.byte	0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x24
	.byte	0x12
	.4byte	0x15a
	.byte	0
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x28
	.byte	0x17
	.4byte	0x140
	.byte	0xd
	.byte	0x4
	.byte	0x6
	.byte	0x15
	.byte	0x9
	.4byte	0x1a5
	.byte	0xe
	.string	"hdl"
	.byte	0x6
	.byte	0x16
	.byte	0xb
	.4byte	0x83
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x17
	.byte	0x3
	.4byte	0x18e
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x1d
	.byte	0x12
	.4byte	0x1a5
	.byte	0x8
	.4byte	.LASF27
	.byte	0xc
	.byte	0x6
	.byte	0x36
	.byte	0x8
	.4byte	0x1e5
	.byte	0xe
	.string	"hdl"
	.byte	0x6
	.byte	0x37
	.byte	0xf
	.4byte	0x83
	.byte	0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x38
	.byte	0x15
	.4byte	0x182
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	.LASF29
	.byte	0xc
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x200
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x63
	.byte	0x18
	.4byte	0x1bd
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0xa4
	.byte	0x10
	.4byte	0x20c
	.byte	0x6
	.byte	0x4
	.4byte	0x212
	.byte	0xf
	.4byte	0x21d
	.byte	0x10
	.4byte	0x83
	.byte	0
	.byte	0x8
	.4byte	.LASF32
	.byte	0x14
	.byte	0x6
	.byte	0xa6
	.byte	0x10
	.4byte	0x26c
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xa7
	.byte	0x10
	.4byte	0x1b1
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xa8
	.byte	0x17
	.4byte	0x200
	.byte	0x4
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xa9
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xaa
	.byte	0xe
	.4byte	0x5b
	.byte	0xc
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0xab
	.byte	0xe
	.4byte	0x5b
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0xac
	.byte	0x3
	.4byte	0x21d
	.byte	0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x12
	.byte	0xd
	.4byte	0x75
	.byte	0x8
	.4byte	.LASF40
	.byte	0xc
	.byte	0x8
	.byte	0x7
	.byte	0x8
	.4byte	0x29f
	.byte	0x9
	.4byte	.LASF41
	.byte	0x8
	.byte	0x8
	.byte	0x13
	.4byte	0x1e5
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF42
	.byte	0x24
	.byte	0x8
	.byte	0x2d
	.byte	0x8
	.4byte	0x2d4
	.byte	0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x2e
	.byte	0x13
	.4byte	0x2f7
	.byte	0
	.byte	0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2f
	.byte	0x16
	.4byte	0x33c
	.byte	0xc
	.byte	0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0x30
	.byte	0xf
	.4byte	0x26c
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.4byte	0x2e0
	.byte	0x6
	.byte	0x4
	.4byte	0x2e6
	.byte	0xf
	.4byte	0x2f1
	.byte	0x10
	.4byte	0x2f1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2f7
	.byte	0x8
	.4byte	.LASF46
	.byte	0xc
	.byte	0x8
	.byte	0x19
	.byte	0x8
	.4byte	0x32c
	.byte	0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0x1a
	.byte	0xb
	.4byte	0x83
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0x1b
	.byte	0x16
	.4byte	0x2d4
	.byte	0x4
	.byte	0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x1c
	.byte	0xe
	.4byte	0x32c
	.byte	0x8
	.byte	0
	.byte	0x11
	.4byte	0x278
	.4byte	0x33c
	.byte	0x12
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x284
	.byte	0x13
	.4byte	.LASF54
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x9
	.byte	0x36
	.byte	0x6
	.4byte	0x373
	.byte	0x14
	.4byte	.LASF49
	.byte	0
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.byte	0x14
	.4byte	.LASF51
	.byte	0x2
	.byte	0x14
	.4byte	.LASF52
	.byte	0x3
	.byte	0x14
	.4byte	.LASF53
	.byte	0x4
	.byte	0
	.byte	0x13
	.4byte	.LASF55
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x9
	.byte	0x40
	.byte	0x6
	.4byte	0x3a4
	.byte	0x14
	.4byte	.LASF56
	.byte	0
	.byte	0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x14
	.4byte	.LASF58
	.byte	0x2
	.byte	0x14
	.4byte	.LASF59
	.byte	0x3
	.byte	0x14
	.4byte	.LASF60
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	.LASF61
	.byte	0xc
	.byte	0xa
	.byte	0x60
	.byte	0x8
	.4byte	0x3e6
	.byte	0x9
	.4byte	.LASF62
	.byte	0xa
	.byte	0x62
	.byte	0x8
	.4byte	0x3e6
	.byte	0
	.byte	0xe
	.string	"len"
	.byte	0xa
	.byte	0x65
	.byte	0x8
	.4byte	0x9f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0x68
	.byte	0x8
	.4byte	0x9f
	.byte	0x6
	.byte	0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0x6d
	.byte	0x8
	.4byte	0x3e6
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x93
	.byte	0x15
	.4byte	.LASF65
	.byte	0x4
	.byte	0xa
	.2byte	0x1f6
	.byte	0x8
	.4byte	0x417
	.byte	0x16
	.4byte	.LASF66
	.byte	0xa
	.2byte	0x1f8
	.byte	0x8
	.4byte	0x9f
	.byte	0
	.byte	0x17
	.string	"len"
	.byte	0xa
	.2byte	0x1fa
	.byte	0x8
	.4byte	0x9f
	.byte	0x2
	.byte	0
	.byte	0x18
	.byte	0x4
	.byte	0xa
	.2byte	0x235
	.byte	0x2
	.4byte	0x43c
	.byte	0x19
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x237
	.byte	0xf
	.4byte	0xd8
	.byte	0x19
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x23a
	.byte	0x13
	.4byte	0x491
	.byte	0
	.byte	0x1a
	.4byte	.LASF233
	.byte	0x18
	.byte	0x4
	.byte	0xa
	.2byte	0x234
	.byte	0x8
	.4byte	0x491
	.byte	0xc
	.4byte	0x417
	.byte	0
	.byte	0x17
	.string	"ref"
	.byte	0xa
	.2byte	0x23e
	.byte	0x7
	.4byte	0x93
	.byte	0x4
	.byte	0x16
	.4byte	.LASF48
	.byte	0xa
	.2byte	0x241
	.byte	0x7
	.4byte	0x93
	.byte	0x5
	.byte	0x16
	.4byte	.LASF69
	.byte	0xa
	.2byte	0x244
	.byte	0x7
	.4byte	0x93
	.byte	0x6
	.byte	0xc
	.4byte	0x4da
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x260
	.byte	0x7
	.4byte	0x4f5
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x43c
	.byte	0x1c
	.byte	0xc
	.byte	0xa
	.2byte	0x24b
	.byte	0x3
	.4byte	0x4da
	.byte	0x16
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x24d
	.byte	0xa
	.4byte	0x3e6
	.byte	0
	.byte	0x17
	.string	"len"
	.byte	0xa
	.2byte	0x250
	.byte	0xa
	.4byte	0x9f
	.byte	0x4
	.byte	0x16
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x253
	.byte	0xa
	.4byte	0x9f
	.byte	0x6
	.byte	0x16
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x259
	.byte	0xa
	.4byte	0x3e6
	.byte	0x8
	.byte	0
	.byte	0x18
	.byte	0xc
	.byte	0xa
	.2byte	0x249
	.byte	0x2
	.4byte	0x4f5
	.byte	0x1d
	.4byte	0x497
	.byte	0x1e
	.string	"b"
	.byte	0xa
	.2byte	0x25c
	.byte	0x19
	.4byte	0x3a4
	.byte	0
	.byte	0x11
	.4byte	0x93
	.4byte	0x505
	.byte	0x12
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0xb
	.byte	0x19
	.byte	0x9
	.4byte	0x51c
	.byte	0xe
	.string	"val"
	.byte	0xb
	.byte	0x1a
	.byte	0x7
	.4byte	0x51c
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x93
	.4byte	0x52c
	.byte	0x12
	.4byte	0x7c
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF70
	.byte	0xb
	.byte	0x1b
	.byte	0x3
	.4byte	0x505
	.byte	0xd
	.byte	0x7
	.byte	0xb
	.byte	0x1e
	.byte	0x9
	.4byte	0x55a
	.byte	0x9
	.4byte	.LASF71
	.byte	0xb
	.byte	0x1f
	.byte	0x7
	.4byte	0x93
	.byte	0
	.byte	0xe
	.string	"a"
	.byte	0xb
	.byte	0x20
	.byte	0xc
	.4byte	0x52c
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF72
	.byte	0xb
	.byte	0x21
	.byte	0x3
	.4byte	0x538
	.byte	0x1f
	.4byte	0x55a
	.byte	0x11
	.4byte	0x93
	.4byte	0x57b
	.byte	0x12
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF73
	.byte	0x6
	.byte	0x4
	.4byte	0x566
	.byte	0x8
	.4byte	.LASF74
	.byte	0x8
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.4byte	0x5ca
	.byte	0x9
	.4byte	.LASF75
	.byte	0xc
	.byte	0x22
	.byte	0x8
	.4byte	0x9f
	.byte	0
	.byte	0x9
	.4byte	.LASF76
	.byte	0xc
	.byte	0x23
	.byte	0x8
	.4byte	0x9f
	.byte	0x2
	.byte	0x9
	.4byte	.LASF77
	.byte	0xc
	.byte	0x24
	.byte	0x8
	.4byte	0x9f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF36
	.byte	0xc
	.byte	0x25
	.byte	0x8
	.4byte	0x9f
	.byte	0x6
	.byte	0
	.byte	0x20
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0xc
	.byte	0x88
	.byte	0x6
	.4byte	0x5f7
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x14
	.4byte	.LASF79
	.byte	0x2
	.byte	0x14
	.4byte	.LASF80
	.byte	0x4
	.byte	0x14
	.4byte	.LASF81
	.byte	0x8
	.byte	0x14
	.4byte	.LASF82
	.byte	0xf
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xc
	.2byte	0x13c
	.byte	0x16
	.4byte	0x649
	.byte	0x14
	.4byte	.LASF83
	.byte	0
	.byte	0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x14
	.4byte	.LASF85
	.byte	0x2
	.byte	0x14
	.4byte	.LASF86
	.byte	0x3
	.byte	0x14
	.4byte	.LASF87
	.byte	0x4
	.byte	0x14
	.4byte	.LASF88
	.byte	0
	.byte	0x14
	.4byte	.LASF89
	.byte	0x1
	.byte	0x14
	.4byte	.LASF90
	.byte	0x2
	.byte	0x14
	.4byte	.LASF91
	.byte	0x3
	.byte	0x14
	.4byte	.LASF92
	.byte	0x4
	.byte	0x14
	.4byte	.LASF93
	.byte	0x80
	.byte	0
	.byte	0x22
	.4byte	.LASF94
	.byte	0xc
	.2byte	0x152
	.byte	0x3
	.4byte	0x5f7
	.byte	0x23
	.4byte	.LASF95
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0xc
	.2byte	0x184
	.byte	0x6
	.4byte	0x6a0
	.byte	0x14
	.4byte	.LASF96
	.byte	0
	.byte	0x14
	.4byte	.LASF97
	.byte	0x1
	.byte	0x14
	.4byte	.LASF98
	.byte	0x2
	.byte	0x14
	.4byte	.LASF99
	.byte	0x3
	.byte	0x14
	.4byte	.LASF100
	.byte	0x4
	.byte	0x14
	.4byte	.LASF101
	.byte	0x5
	.byte	0x14
	.4byte	.LASF102
	.byte	0x6
	.byte	0x14
	.4byte	.LASF103
	.byte	0x7
	.byte	0x14
	.4byte	.LASF104
	.byte	0x8
	.byte	0
	.byte	0x15
	.4byte	.LASF105
	.byte	0x20
	.byte	0xc
	.2byte	0x1ab
	.byte	0x8
	.4byte	0x71f
	.byte	0x16
	.4byte	.LASF106
	.byte	0xc
	.2byte	0x1be
	.byte	0x9
	.4byte	0x84b
	.byte	0
	.byte	0x16
	.4byte	.LASF107
	.byte	0xc
	.2byte	0x1c8
	.byte	0x9
	.4byte	0x84b
	.byte	0x4
	.byte	0x16
	.4byte	.LASF108
	.byte	0xc
	.2byte	0x1df
	.byte	0x8
	.4byte	0x86b
	.byte	0x8
	.byte	0x16
	.4byte	.LASF109
	.byte	0xc
	.2byte	0x1ec
	.byte	0x9
	.4byte	0x88b
	.byte	0xc
	.byte	0x16
	.4byte	.LASF110
	.byte	0xc
	.2byte	0x1f8
	.byte	0x9
	.4byte	0x8a6
	.byte	0x10
	.byte	0x16
	.4byte	.LASF111
	.byte	0xc
	.2byte	0x203
	.byte	0x9
	.4byte	0x8c1
	.byte	0x14
	.byte	0x16
	.4byte	.LASF112
	.byte	0xc
	.2byte	0x211
	.byte	0x9
	.4byte	0x8dc
	.byte	0x18
	.byte	0x16
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x214
	.byte	0x15
	.4byte	0x8e2
	.byte	0x1c
	.byte	0
	.byte	0xf
	.4byte	0x72f
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x93
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x735
	.byte	0x8
	.4byte	.LASF114
	.byte	0xa0
	.byte	0xd
	.byte	0x6e
	.byte	0x8
	.4byte	0x84b
	.byte	0x9
	.4byte	.LASF115
	.byte	0xd
	.byte	0x6f
	.byte	0x8
	.4byte	0x9f
	.byte	0
	.byte	0x9
	.4byte	.LASF71
	.byte	0xd
	.byte	0x70
	.byte	0x7
	.4byte	0x93
	.byte	0x2
	.byte	0x9
	.4byte	.LASF116
	.byte	0xd
	.byte	0x71
	.byte	0x7
	.4byte	0x93
	.byte	0x3
	.byte	0x9
	.4byte	.LASF48
	.byte	0xd
	.byte	0x73
	.byte	0xb
	.4byte	0x32c
	.byte	0x4
	.byte	0xe
	.string	"id"
	.byte	0xd
	.byte	0x76
	.byte	0x7
	.4byte	0x93
	.byte	0x8
	.byte	0x9
	.4byte	.LASF117
	.byte	0xd
	.byte	0x79
	.byte	0x10
	.4byte	0x649
	.byte	0x9
	.byte	0x9
	.4byte	.LASF118
	.byte	0xd
	.byte	0x7a
	.byte	0x10
	.4byte	0x649
	.byte	0xa
	.byte	0x9
	.4byte	.LASF119
	.byte	0xd
	.byte	0x7b
	.byte	0x7
	.4byte	0x93
	.byte	0xb
	.byte	0xe
	.string	"err"
	.byte	0xd
	.byte	0x7f
	.byte	0x7
	.4byte	0x93
	.byte	0xc
	.byte	0x9
	.4byte	.LASF120
	.byte	0xd
	.byte	0x81
	.byte	0x12
	.4byte	0x91b
	.byte	0xd
	.byte	0x9
	.4byte	.LASF121
	.byte	0xd
	.byte	0x83
	.byte	0x8
	.4byte	0x9f
	.byte	0xe
	.byte	0xe
	.string	"rx"
	.byte	0xd
	.byte	0x84
	.byte	0x12
	.4byte	0x491
	.byte	0x10
	.byte	0x9
	.4byte	.LASF122
	.byte	0xd
	.byte	0x87
	.byte	0xe
	.4byte	0x112
	.byte	0x14
	.byte	0x9
	.4byte	.LASF123
	.byte	0xd
	.byte	0x8b
	.byte	0x8
	.4byte	0xab
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF124
	.byte	0xd
	.byte	0x8e
	.byte	0xe
	.4byte	0x112
	.byte	0x20
	.byte	0x9
	.4byte	.LASF125
	.byte	0xd
	.byte	0x8f
	.byte	0x10
	.4byte	0x2f7
	.byte	0x28
	.byte	0x9
	.4byte	.LASF126
	.byte	0xd
	.byte	0x93
	.byte	0x10
	.4byte	0x1e5
	.byte	0x34
	.byte	0x9
	.4byte	.LASF127
	.byte	0xd
	.byte	0x96
	.byte	0xe
	.4byte	0x112
	.byte	0x40
	.byte	0xe
	.string	"ref"
	.byte	0xd
	.byte	0x98
	.byte	0xb
	.4byte	0x278
	.byte	0x48
	.byte	0x9
	.4byte	.LASF128
	.byte	0xd
	.byte	0x9b
	.byte	0x18
	.4byte	0x29f
	.byte	0x4c
	.byte	0xc
	.4byte	0xa4b
	.byte	0x70
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x71f
	.byte	0x24
	.4byte	0x57b
	.4byte	0x865
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x865
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x588
	.byte	0x6
	.byte	0x4
	.4byte	0x851
	.byte	0xf
	.4byte	0x88b
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x9f
	.byte	0x10
	.4byte	0x9f
	.byte	0x10
	.4byte	0x9f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x871
	.byte	0xf
	.4byte	0x8a6
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x93
	.byte	0x10
	.4byte	0x93
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x891
	.byte	0xf
	.4byte	0x8c1
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x582
	.byte	0x10
	.4byte	0x582
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8ac
	.byte	0xf
	.4byte	0x8dc
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x649
	.byte	0x10
	.4byte	0x656
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8c7
	.byte	0x6
	.byte	0x4
	.4byte	0x6a0
	.byte	0x20
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xd
	.byte	0xa
	.byte	0x16
	.4byte	0x91b
	.byte	0x14
	.4byte	.LASF129
	.byte	0
	.byte	0x14
	.4byte	.LASF130
	.byte	0x1
	.byte	0x14
	.4byte	.LASF131
	.byte	0x2
	.byte	0x14
	.4byte	.LASF132
	.byte	0x3
	.byte	0x14
	.4byte	.LASF133
	.byte	0x4
	.byte	0x14
	.4byte	.LASF134
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF135
	.byte	0xd
	.byte	0x11
	.byte	0x3
	.4byte	0x8e8
	.byte	0x20
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0xd
	.byte	0x14
	.byte	0x6
	.4byte	0x996
	.byte	0x14
	.4byte	.LASF136
	.byte	0
	.byte	0x14
	.4byte	.LASF137
	.byte	0x1
	.byte	0x14
	.4byte	.LASF138
	.byte	0x2
	.byte	0x14
	.4byte	.LASF139
	.byte	0x3
	.byte	0x14
	.4byte	.LASF140
	.byte	0x4
	.byte	0x14
	.4byte	.LASF141
	.byte	0x5
	.byte	0x14
	.4byte	.LASF142
	.byte	0x6
	.byte	0x14
	.4byte	.LASF143
	.byte	0x7
	.byte	0x14
	.4byte	.LASF144
	.byte	0x8
	.byte	0x14
	.4byte	.LASF145
	.byte	0x9
	.byte	0x14
	.4byte	.LASF146
	.byte	0xa
	.byte	0x14
	.4byte	.LASF147
	.byte	0xb
	.byte	0x14
	.4byte	.LASF148
	.byte	0xc
	.byte	0x14
	.4byte	.LASF149
	.byte	0xd
	.byte	0x14
	.4byte	.LASF150
	.byte	0xe
	.byte	0x14
	.4byte	.LASF151
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	.LASF152
	.byte	0x30
	.byte	0xd
	.byte	0x2a
	.byte	0x8
	.4byte	0xa40
	.byte	0xe
	.string	"dst"
	.byte	0xd
	.byte	0x2b
	.byte	0xf
	.4byte	0x55a
	.byte	0
	.byte	0x9
	.4byte	.LASF153
	.byte	0xd
	.byte	0x2d
	.byte	0xf
	.4byte	0x55a
	.byte	0x7
	.byte	0x9
	.4byte	.LASF154
	.byte	0xd
	.byte	0x2e
	.byte	0xf
	.4byte	0x55a
	.byte	0xe
	.byte	0x9
	.4byte	.LASF155
	.byte	0xd
	.byte	0x30
	.byte	0x8
	.4byte	0x9f
	.byte	0x16
	.byte	0x9
	.4byte	.LASF75
	.byte	0xd
	.byte	0x31
	.byte	0x8
	.4byte	0x9f
	.byte	0x18
	.byte	0x9
	.4byte	.LASF76
	.byte	0xd
	.byte	0x32
	.byte	0x8
	.4byte	0x9f
	.byte	0x1a
	.byte	0x9
	.4byte	.LASF77
	.byte	0xd
	.byte	0x34
	.byte	0x8
	.4byte	0x9f
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF36
	.byte	0xd
	.byte	0x35
	.byte	0x8
	.4byte	0x9f
	.byte	0x1e
	.byte	0x9
	.4byte	.LASF156
	.byte	0xd
	.byte	0x36
	.byte	0x8
	.4byte	0x9f
	.byte	0x20
	.byte	0x9
	.4byte	.LASF157
	.byte	0xd
	.byte	0x37
	.byte	0x8
	.4byte	0x9f
	.byte	0x22
	.byte	0x9
	.4byte	.LASF158
	.byte	0xd
	.byte	0x39
	.byte	0x7
	.4byte	0x56b
	.byte	0x24
	.byte	0x9
	.4byte	.LASF159
	.byte	0xd
	.byte	0x3b
	.byte	0x12
	.4byte	0xa45
	.byte	0x2c
	.byte	0
	.byte	0x25
	.4byte	.LASF235
	.byte	0x6
	.byte	0x4
	.4byte	0xa40
	.byte	0xa
	.byte	0x30
	.byte	0xd
	.byte	0x9d
	.byte	0x2
	.4byte	0xa60
	.byte	0x26
	.string	"le"
	.byte	0xd
	.byte	0x9e
	.byte	0x15
	.4byte	0x996
	.byte	0
	.byte	0x3
	.4byte	.LASF160
	.byte	0xe
	.byte	0x2f
	.byte	0x10
	.4byte	0xa6c
	.byte	0x6
	.byte	0x4
	.4byte	0xa72
	.byte	0xf
	.4byte	0xa91
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x93
	.byte	0x10
	.4byte	0x8c
	.byte	0x10
	.4byte	0x9f
	.byte	0x10
	.4byte	0x83
	.byte	0
	.byte	0x3
	.4byte	.LASF161
	.byte	0xe
	.byte	0x32
	.byte	0x10
	.4byte	0x20c
	.byte	0x8
	.4byte	.LASF162
	.byte	0x18
	.byte	0xe
	.byte	0x35
	.byte	0x8
	.4byte	0xaf9
	.byte	0x9
	.4byte	.LASF67
	.byte	0xe
	.byte	0x36
	.byte	0xe
	.4byte	0xd8
	.byte	0
	.byte	0x9
	.4byte	.LASF163
	.byte	0xe
	.byte	0x37
	.byte	0x10
	.4byte	0xa60
	.byte	0x4
	.byte	0x9
	.4byte	.LASF164
	.byte	0xe
	.byte	0x38
	.byte	0x13
	.4byte	0xa91
	.byte	0x8
	.byte	0x9
	.4byte	.LASF120
	.byte	0xe
	.byte	0x39
	.byte	0x1e
	.4byte	0x3ec
	.byte	0xc
	.byte	0xe
	.string	"buf"
	.byte	0xe
	.byte	0x3a
	.byte	0x12
	.4byte	0x491
	.byte	0x10
	.byte	0x9
	.4byte	.LASF165
	.byte	0xe
	.byte	0x3c
	.byte	0x6
	.4byte	0x57b
	.byte	0x14
	.byte	0
	.byte	0x15
	.4byte	.LASF166
	.byte	0x1c
	.byte	0xf
	.2byte	0x3d2
	.byte	0x8
	.4byte	0xb24
	.byte	0x16
	.4byte	.LASF167
	.byte	0xf
	.2byte	0x3d3
	.byte	0x14
	.4byte	0xa9d
	.byte	0
	.byte	0x16
	.4byte	.LASF163
	.byte	0xf
	.2byte	0x3d5
	.byte	0x9
	.4byte	0xb3f
	.byte	0x18
	.byte	0
	.byte	0xf
	.4byte	0xb39
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x93
	.byte	0x10
	.4byte	0xb39
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xaf9
	.byte	0x6
	.byte	0x4
	.4byte	0xb24
	.byte	0x21
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0xf
	.2byte	0x50e
	.byte	0x6
	.4byte	0xb67
	.byte	0x14
	.4byte	.LASF168
	.byte	0
	.byte	0x14
	.4byte	.LASF169
	.byte	0x1
	.byte	0x14
	.4byte	.LASF170
	.byte	0x2
	.byte	0
	.byte	0x20
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x10
	.byte	0x2a
	.byte	0x6
	.4byte	0xbee
	.byte	0x14
	.4byte	.LASF171
	.byte	0
	.byte	0x14
	.4byte	.LASF172
	.byte	0x1
	.byte	0x14
	.4byte	.LASF173
	.byte	0x2
	.byte	0x14
	.4byte	.LASF174
	.byte	0x3
	.byte	0x14
	.4byte	.LASF175
	.byte	0x4
	.byte	0x14
	.4byte	.LASF176
	.byte	0x5
	.byte	0x14
	.4byte	.LASF177
	.byte	0x6
	.byte	0x14
	.4byte	.LASF178
	.byte	0x7
	.byte	0x14
	.4byte	.LASF179
	.byte	0x8
	.byte	0x14
	.4byte	.LASF180
	.byte	0x9
	.byte	0x14
	.4byte	.LASF181
	.byte	0xa
	.byte	0x14
	.4byte	.LASF182
	.byte	0xb
	.byte	0x14
	.4byte	.LASF183
	.byte	0xc
	.byte	0x14
	.4byte	.LASF184
	.byte	0xd
	.byte	0x14
	.4byte	.LASF185
	.byte	0xe
	.byte	0x14
	.4byte	.LASF186
	.byte	0xf
	.byte	0x14
	.4byte	.LASF187
	.byte	0x10
	.byte	0x14
	.4byte	.LASF188
	.byte	0x11
	.byte	0x14
	.4byte	.LASF189
	.byte	0x12
	.byte	0x14
	.4byte	.LASF190
	.byte	0x13
	.byte	0
	.byte	0x3
	.4byte	.LASF191
	.byte	0x11
	.byte	0xd
	.byte	0xf
	.4byte	0xbfa
	.byte	0x6
	.byte	0x4
	.4byte	0xc00
	.byte	0x24
	.4byte	0x75
	.4byte	0xc14
	.byte	0x10
	.4byte	0x72f
	.byte	0x10
	.4byte	0x41
	.byte	0
	.byte	0x27
	.4byte	.LASF192
	.byte	0x11
	.byte	0x22
	.byte	0x11
	.4byte	0x72f
	.byte	0x5
	.byte	0x3
	.4byte	pconn
	.byte	0x28
	.4byte	.LASF195
	.byte	0x1
	.byte	0xd
	.byte	0x18
	.4byte	0x72f
	.byte	0x5
	.byte	0x3
	.4byte	conn_cur
	.byte	0x27
	.4byte	.LASF193
	.byte	0x1
	.byte	0xe
	.byte	0x14
	.4byte	0xbee
	.byte	0x5
	.byte	0x3
	.4byte	conn_cb
	.byte	0x27
	.4byte	.LASF194
	.byte	0x1
	.byte	0xf
	.byte	0x14
	.4byte	0xbee
	.byte	0x5
	.byte	0x3
	.4byte	disconn_cb
	.byte	0x28
	.4byte	.LASF196
	.byte	0x1
	.byte	0x4e
	.byte	0x1a
	.4byte	0x6a0
	.byte	0x5
	.byte	0x3
	.4byte	conn_callbacks
	.byte	0x28
	.4byte	.LASF197
	.byte	0x1
	.byte	0xc8
	.byte	0x27
	.4byte	0xaf9
	.byte	0x5
	.byte	0x3
	.4byte	exchange_params
	.byte	0x29
	.4byte	.LASF200
	.byte	0x1
	.byte	0xed
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x1
	.byte	0x9c
	.4byte	0xcb4
	.byte	0x2a
	.string	"mtu"
	.byte	0x1
	.byte	0xef
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST27
	.byte	0x2b
	.4byte	.LVL63
	.4byte	0x120e
	.byte	0
	.byte	0x2c
	.4byte	.LASF203
	.byte	0x1
	.byte	0xd1
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x1
	.byte	0x9c
	.4byte	0xd02
	.byte	0x2d
	.string	"mtu"
	.byte	0x1
	.byte	0xd1
	.byte	0x22
	.4byte	0x41
	.4byte	.LLST25
	.byte	0x2a
	.string	"ret"
	.byte	0x1
	.byte	0xd3
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST26
	.byte	0x2e
	.4byte	.LVL61
	.4byte	0x121b
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF209
	.byte	0x1
	.byte	0xc0
	.byte	0xd
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x1
	.byte	0x9c
	.4byte	0xd6c
	.byte	0x31
	.4byte	.LASF198
	.byte	0x1
	.byte	0xc0
	.byte	0x2b
	.4byte	0x72f
	.4byte	.LLST13
	.byte	0x2d
	.string	"err"
	.byte	0x1
	.byte	0xc0
	.byte	0x36
	.4byte	0x93
	.4byte	.LLST14
	.byte	0x31
	.4byte	.LASF199
	.byte	0x1
	.byte	0xc1
	.byte	0x2f
	.4byte	0xb39
	.4byte	.LLST15
	.byte	0x2b
	.4byte	.LVL21
	.4byte	0x120e
	.byte	0x32
	.4byte	.LVL22
	.4byte	0x1228
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF201
	.byte	0x1
	.byte	0xb1
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x1
	.byte	0x9c
	.4byte	0xdeb
	.byte	0x33
	.string	"ret"
	.byte	0x1
	.byte	0xb3
	.byte	0x9
	.4byte	0x75
	.byte	0x34
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb4
	.byte	0xf
	.4byte	0x52c
	.byte	0x2b
	.4byte	.LVL54
	.4byte	0x1234
	.byte	0x2b
	.4byte	.LVL55
	.4byte	0x1240
	.byte	0x35
	.4byte	.LVL56
	.4byte	0x124c
	.4byte	0xdc7
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	_ble_mtu_changed_cb
	.byte	0
	.byte	0x35
	.4byte	.LVL57
	.4byte	0x1259
	.4byte	0xddb
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL58
	.4byte	0x1266
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3f
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF204
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x1
	.byte	0x9c
	.4byte	0xe81
	.byte	0x2d
	.string	"mac"
	.byte	0x1
	.byte	0xa2
	.byte	0x23
	.4byte	0xe81
	.4byte	.LLST24
	.byte	0x28
	.4byte	.LASF202
	.byte	0x1
	.byte	0xa4
	.byte	0x12
	.4byte	0x55a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x35
	.4byte	.LVL49
	.4byte	0x1273
	.4byte	0xe38
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0x35
	.4byte	.LVL50
	.4byte	0x1280
	.4byte	0xe57
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x69
	.byte	0x2f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x35
	.4byte	.LVL51
	.4byte	0x128c
	.4byte	0xe70
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x2e
	.4byte	.LVL52
	.4byte	0xe87
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x41
	.byte	0x2c
	.4byte	.LASF205
	.byte	0x1
	.byte	0x8b
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x1
	.byte	0x9c
	.4byte	0xf1f
	.byte	0x2d
	.string	"mac"
	.byte	0x1
	.byte	0x8b
	.byte	0x29
	.4byte	0xe81
	.4byte	.LLST23
	.byte	0x28
	.4byte	.LASF202
	.byte	0x1
	.byte	0x8d
	.byte	0x12
	.4byte	0x55a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2b
	.4byte	.LVL41
	.4byte	0x1234
	.byte	0x35
	.4byte	.LVL42
	.4byte	0x1273
	.4byte	0xedd
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0x35
	.4byte	.LVL43
	.4byte	0x1280
	.4byte	0xefc
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x69
	.byte	0x2f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x35
	.4byte	.LVL44
	.4byte	0x128c
	.4byte	0xf15
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x2b
	.4byte	.LVL45
	.4byte	0x1298
	.byte	0
	.byte	0x2c
	.4byte	.LASF206
	.byte	0x1
	.byte	0x7e
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x1
	.byte	0x9c
	.4byte	0xf75
	.byte	0x2d
	.string	"mac"
	.byte	0x1
	.byte	0x7e
	.byte	0x23
	.4byte	0xe81
	.4byte	.LLST22
	.byte	0x28
	.4byte	.LASF202
	.byte	0x1
	.byte	0x80
	.byte	0xf
	.4byte	0x52c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2e
	.4byte	.LVL39
	.4byte	0x1280
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x2f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF207
	.byte	0x1
	.byte	0x6f
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0xf9f
	.byte	0x2d
	.string	"cb"
	.byte	0x1
	.byte	0x6f
	.byte	0x2b
	.4byte	0xbee
	.4byte	.LLST21
	.byte	0
	.byte	0x2c
	.4byte	.LASF208
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0xfc9
	.byte	0x2d
	.string	"cb"
	.byte	0x1
	.byte	0x68
	.byte	0x28
	.4byte	0xbee
	.4byte	.LLST20
	.byte	0
	.byte	0x36
	.4byte	.LASF236
	.byte	0x1
	.byte	0x63
	.byte	0x11
	.4byte	0x72f
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.byte	0x30
	.4byte	.LASF210
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x1030
	.byte	0x31
	.4byte	.LASF198
	.byte	0x1
	.byte	0x5e
	.byte	0x31
	.4byte	0x72f
	.4byte	.LLST11
	.byte	0x2d
	.string	"mtu"
	.byte	0x1
	.byte	0x5e
	.byte	0x3b
	.4byte	0x75
	.4byte	.LLST12
	.byte	0x32
	.4byte	.LVL18
	.4byte	0x1228
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF211
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x108a
	.byte	0x31
	.4byte	.LASF198
	.byte	0x1
	.byte	0x49
	.byte	0x2d
	.4byte	0x72f
	.4byte	.LLST0
	.byte	0x31
	.4byte	.LASF212
	.byte	0x1
	.byte	0x49
	.byte	0x38
	.4byte	0x93
	.4byte	.LLST1
	.byte	0x31
	.4byte	.LASF213
	.byte	0x1
	.byte	0x49
	.byte	0x45
	.4byte	0x93
	.4byte	.LLST2
	.byte	0x32
	.4byte	.LVL2
	.4byte	0x1228
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF214
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x10f4
	.byte	0x31
	.4byte	.LASF198
	.byte	0x1
	.byte	0x43
	.byte	0x2f
	.4byte	0x72f
	.4byte	.LLST3
	.byte	0x31
	.4byte	.LASF155
	.byte	0x1
	.byte	0x43
	.byte	0x3b
	.4byte	0x9f
	.4byte	.LLST4
	.byte	0x31
	.4byte	.LASF77
	.byte	0x1
	.byte	0x44
	.byte	0x18
	.4byte	0x9f
	.4byte	.LLST5
	.byte	0x31
	.4byte	.LASF36
	.byte	0x1
	.byte	0x44
	.byte	0x27
	.4byte	0x9f
	.4byte	.LLST6
	.byte	0x32
	.4byte	.LVL5
	.4byte	0x1228
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	.LASF237
	.byte	0x1
	.byte	0x37
	.byte	0xc
	.4byte	0x57b
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x1142
	.byte	0x31
	.4byte	.LASF198
	.byte	0x1
	.byte	0x37
	.byte	0x2a
	.4byte	0x72f
	.4byte	.LLST7
	.byte	0x31
	.4byte	.LASF215
	.byte	0x1
	.byte	0x38
	.byte	0x27
	.4byte	0x865
	.4byte	.LLST8
	.byte	0x2e
	.4byte	.LVL9
	.4byte	0x1228
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	.LASF238
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.byte	0x1
	.4byte	0x1168
	.byte	0x39
	.4byte	.LASF198
	.byte	0x1
	.byte	0x25
	.byte	0x2b
	.4byte	0x72f
	.byte	0x39
	.4byte	.LASF216
	.byte	0x1
	.byte	0x25
	.byte	0x36
	.4byte	0x93
	.byte	0
	.byte	0x3a
	.4byte	.LASF217
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x1
	.byte	0x9c
	.4byte	0x11b2
	.byte	0x31
	.4byte	.LASF198
	.byte	0x1
	.byte	0x11
	.byte	0x28
	.4byte	0x72f
	.4byte	.LLST9
	.byte	0x2d
	.string	"err"
	.byte	0x1
	.byte	0x11
	.byte	0x33
	.4byte	0x93
	.4byte	.LLST10
	.byte	0x32
	.4byte	.LVL13
	.4byte	0x1228
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	0x1142
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x120e
	.byte	0x3c
	.4byte	0x114f
	.4byte	.LLST16
	.byte	0x3c
	.4byte	0x115b
	.4byte	.LLST17
	.byte	0x3d
	.4byte	0x1142
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.byte	0x3c
	.4byte	0x114f
	.4byte	.LLST18
	.byte	0x3c
	.4byte	0x115b
	.4byte	.LLST19
	.byte	0x32
	.4byte	.LVL30
	.4byte	0x1228
	.byte	0x2f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xf
	.2byte	0x3c7
	.byte	0x7
	.byte	0x3e
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xf
	.2byte	0x3e5
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x12
	.byte	0xc8
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x11
	.byte	0x24
	.byte	0x6
	.byte	0x3f
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x11
	.byte	0x29
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xf
	.2byte	0x562
	.byte	0x6
	.byte	0x3e
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xc
	.2byte	0x22e
	.byte	0x6
	.byte	0x3e
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x10
	.2byte	0x124
	.byte	0x5
	.byte	0x3e
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x10
	.2byte	0x117
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x13
	.byte	0x1f
	.byte	0x8
	.byte	0x3f
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x11
	.byte	0x23
	.byte	0x6
	.byte	0x3e
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x14
	.2byte	0x2b2
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x38
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0
	.byte	0
	.byte	0x3e
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
	.byte	0x3f
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
.LLST27:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE86
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE86
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE86
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LFE84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-1
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LFE83
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LFE82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE81
	.2byte	0x5
	.byte	0x3
	.4byte	disconn_cb
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE80
	.2byte	0x5
	.byte	0x3
	.4byte	conn_cb
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5-1
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x5
	.byte	0x3
	.4byte	conn_cur
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL32
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31-1
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
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
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB73
	.4byte	.LFE73
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
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF172:
	.string	"BT_DEV_READY"
.LASF53:
	.string	"_POLL_NUM_TYPES"
.LASF203:
	.string	"axk_HalBleSetMtu"
.LASF88:
	.string	"BT_SECURITY_NONE"
.LASF190:
	.string	"BT_DEV_NUM_FLAGS"
.LASF111:
	.string	"identity_resolved"
.LASF234:
	.string	"user_data"
.LASF173:
	.string	"BT_DEV_PRESET_ID"
.LASF20:
	.string	"tail"
.LASF188:
	.string	"BT_DEV_ID_PENDING"
.LASF218:
	.string	"bt_gatt_get_mtu"
.LASF122:
	.string	"tx_pending"
.LASF44:
	.string	"work_q"
.LASF121:
	.string	"rx_len"
.LASF166:
	.string	"bt_gatt_exchange_params"
.LASF165:
	.string	"retrying"
.LASF201:
	.string	"axk_HalBleInit"
.LASF89:
	.string	"BT_SECURITY_LOW"
.LASF186:
	.string	"BT_DEV_AUTO_CONN"
.LASF120:
	.string	"state"
.LASF27:
	.string	"k_queue"
.LASF237:
	.string	"_le_param_req"
.LASF154:
	.string	"resp_addr"
.LASF72:
	.string	"bt_addr_le_t"
.LASF71:
	.string	"type"
.LASF198:
	.string	"conn"
.LASF46:
	.string	"k_work"
.LASF93:
	.string	"BT_SECURITY_FORCE_PAIR"
.LASF90:
	.string	"BT_SECURITY_MEDIUM"
.LASF155:
	.string	"interval"
.LASF151:
	.string	"BT_CONN_NUM_FLAGS"
.LASF187:
	.string	"BT_DEV_RPA_VALID"
.LASF229:
	.string	"bt_disable"
.LASF41:
	.string	"fifo"
.LASF2:
	.string	"long int"
.LASF214:
	.string	"_le_param_updated"
.LASF119:
	.string	"encrypt"
.LASF107:
	.string	"disconnected"
.LASF152:
	.string	"bt_conn_le"
.LASF161:
	.string	"bt_att_destroy_t"
.LASF205:
	.string	"axk_HalBleGetMac_Start"
.LASF225:
	.string	"bt_set_tx_pwr"
.LASF101:
	.string	"BT_SECURITY_ERR_PAIR_NOT_SUPPORTED"
.LASF212:
	.string	"tx_phy"
.LASF76:
	.string	"interval_max"
.LASF19:
	.string	"head"
.LASF73:
	.string	"_Bool"
.LASF139:
	.string	"BT_CONN_BR_PAIRING"
.LASF59:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF15:
	.string	"sys_snode_t"
.LASF170:
	.string	"BT_GATT_SUBSCRIBE_NUM_FLAGS"
.LASF31:
	.string	"k_timer_handler_t"
.LASF112:
	.string	"security_changed"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"uint8_t"
.LASF78:
	.string	"BT_CONN_TYPE_LE"
.LASF81:
	.string	"BT_CONN_TYPE_ISO"
.LASF4:
	.string	"unsigned char"
.LASF184:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF132:
	.string	"BT_CONN_CONNECT"
.LASF74:
	.string	"bt_le_conn_param"
.LASF26:
	.string	"bl_timer_t"
.LASF34:
	.string	"handler"
.LASF192:
	.string	"pconn"
.LASF49:
	.string	"_POLL_TYPE_IGNORE"
.LASF11:
	.string	"char"
.LASF193:
	.string	"conn_cb"
.LASF69:
	.string	"pool_id"
.LASF123:
	.string	"pending_no_cb"
.LASF126:
	.string	"tx_queue"
.LASF143:
	.string	"BT_CONN_AUTO_PHY_UPDATE"
.LASF33:
	.string	"timer"
.LASF183:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF207:
	.string	"ble_regist_disconn"
.LASF140:
	.string	"BT_CONN_BR_NOBOND"
.LASF142:
	.string	"BT_CONN_CLEANUP"
.LASF48:
	.string	"flags"
.LASF16:
	.string	"_snode"
.LASF130:
	.string	"BT_CONN_CONNECT_SCAN"
.LASF200:
	.string	"axk_HalBleGetMtu"
.LASF67:
	.string	"node"
.LASF158:
	.string	"features"
.LASF68:
	.string	"frags"
.LASF149:
	.string	"BT_CONN_AUTO_FEATURE_EXCH"
.LASF150:
	.string	"BT_CONN_AUTO_VERSION_INFO"
.LASF185:
	.string	"BT_DEV_SCAN_WL"
.LASF236:
	.string	"ble_get_conn_cur"
.LASF169:
	.string	"BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING"
.LASF220:
	.string	"printf"
.LASF77:
	.string	"latency"
.LASF206:
	.string	"axk_HalBleSetMac"
.LASF235:
	.string	"bt_keys"
.LASF110:
	.string	"le_phy_updated"
.LASF82:
	.string	"BT_CONN_TYPE_ALL"
.LASF138:
	.string	"BT_CONN_USER"
.LASF191:
	.string	"ble_gatt_conn_cb_t"
.LASF167:
	.string	"_req"
.LASF55:
	.string	"_poll_states_bits"
.LASF57:
	.string	"_POLL_STATE_SIGNALED"
.LASF8:
	.string	"long unsigned int"
.LASF147:
	.string	"BT_CONN_FORCE_PAIR"
.LASF135:
	.string	"bt_conn_state_t"
.LASF230:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF215:
	.string	"param"
.LASF24:
	.string	"sys_dlist_t"
.LASF153:
	.string	"init_addr"
.LASF100:
	.string	"BT_SECURITY_ERR_AUTH_REQUIREMENT"
.LASF202:
	.string	"bt_addr"
.LASF75:
	.string	"interval_min"
.LASF224:
	.string	"bt_conn_cb_register"
.LASF102:
	.string	"BT_SECURITY_ERR_PAIR_NOT_ALLOWED"
.LASF194:
	.string	"disconn_cb"
.LASF103:
	.string	"BT_SECURITY_ERR_INVALID_PARAM"
.LASF35:
	.string	"args"
.LASF189:
	.string	"BT_DEV_ASSIST_RUN"
.LASF180:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF64:
	.string	"__buf"
.LASF136:
	.string	"BT_CONN_AUTO_CONNECT"
.LASF219:
	.string	"bt_gatt_exchange_mtu"
.LASF159:
	.string	"keys"
.LASF3:
	.string	"long long int"
.LASF21:
	.string	"sys_slist_t"
.LASF45:
	.string	"k_work_handler_t"
.LASF226:
	.string	"bt_get_local_public_address"
.LASF28:
	.string	"poll_events"
.LASF99:
	.string	"BT_SECURITY_ERR_OOB_NOT_AVAILABLE"
.LASF228:
	.string	"ble_reverse_byte"
.LASF42:
	.string	"k_delayed_work"
.LASF54:
	.string	"_poll_types_bits"
.LASF36:
	.string	"timeout"
.LASF61:
	.string	"net_buf_simple"
.LASF51:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF223:
	.string	"bt_gatt_register_mtu_callback"
.LASF108:
	.string	"le_param_req"
.LASF37:
	.string	"start_ms"
.LASF124:
	.string	"tx_complete"
.LASF10:
	.string	"unsigned int"
.LASF144:
	.string	"BT_CONN_SLAVE_PARAM_UPDATE"
.LASF13:
	.string	"u16_t"
.LASF127:
	.string	"channels"
.LASF210:
	.string	"_ble_mtu_changed_cb"
.LASF137:
	.string	"BT_CONN_BR_LEGACY_SECURE"
.LASF221:
	.string	"ble_stack_start"
.LASF17:
	.string	"_slist"
.LASF231:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_common_api.c"
.LASF66:
	.string	"offset"
.LASF129:
	.string	"BT_CONN_DISCONNECTED"
.LASF98:
	.string	"BT_SECURITY_ERR_PIN_OR_KEY_MISSING"
.LASF145:
	.string	"BT_CONN_SLAVE_PARAM_SET"
.LASF178:
	.string	"BT_DEV_ADVERTISING_NAME"
.LASF175:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF177:
	.string	"BT_DEV_ADVERTISING"
.LASF128:
	.string	"update_work"
.LASF131:
	.string	"BT_CONN_CONNECT_DIR_ADV"
.LASF22:
	.string	"_dnode"
.LASF148:
	.string	"BT_CONN_AUTO_PHY_COMPLETE"
.LASF32:
	.string	"k_timer"
.LASF91:
	.string	"BT_SECURITY_HIGH"
.LASF43:
	.string	"work"
.LASF95:
	.string	"bt_security_err"
.LASF115:
	.string	"handle"
.LASF209:
	.string	"exchange_func"
.LASF196:
	.string	"conn_callbacks"
.LASF179:
	.string	"BT_DEV_ADVERTISING_CONNECTABLE"
.LASF63:
	.string	"size"
.LASF9:
	.string	"long long unsigned int"
.LASF204:
	.string	"axk_HalBleGetMac"
.LASF164:
	.string	"destroy"
.LASF199:
	.string	"params"
.LASF238:
	.string	"_disconnected"
.LASF30:
	.string	"_queue"
.LASF211:
	.string	"_le_phy_updated"
.LASF233:
	.string	"net_buf"
.LASF80:
	.string	"BT_CONN_TYPE_SCO"
.LASF146:
	.string	"BT_CONN_SLAVE_PARAM_L2CAP"
.LASF174:
	.string	"BT_DEV_USER_ID_ADDR"
.LASF141:
	.string	"BT_CONN_BR_PAIRING_INITIATOR"
.LASF216:
	.string	"reason"
.LASF125:
	.string	"tx_complete_work"
.LASF117:
	.string	"sec_level"
.LASF156:
	.string	"pending_latency"
.LASF25:
	.string	"bl_hdl_t"
.LASF113:
	.string	"_next"
.LASF14:
	.string	"u32_t"
.LASF160:
	.string	"bt_att_func_t"
.LASF222:
	.string	"ble_master_init"
.LASF50:
	.string	"_POLL_TYPE_SIGNAL"
.LASF168:
	.string	"BT_GATT_SUBSCRIBE_FLAG_VOLATILE"
.LASF182:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF104:
	.string	"BT_SECURITY_ERR_UNSPECIFIED"
.LASF1:
	.string	"short int"
.LASF163:
	.string	"func"
.LASF92:
	.string	"BT_SECURITY_FIPS"
.LASF171:
	.string	"BT_DEV_ENABLE"
.LASF65:
	.string	"net_buf_simple_state"
.LASF94:
	.string	"bt_security_t"
.LASF195:
	.string	"conn_cur"
.LASF134:
	.string	"BT_CONN_DISCONNECT"
.LASF181:
	.string	"BT_DEV_SCANNING"
.LASF105:
	.string	"bt_conn_cb"
.LASF217:
	.string	"_connected"
.LASF118:
	.string	"required_sec_level"
.LASF227:
	.string	"memcpy"
.LASF133:
	.string	"BT_CONN_CONNECTED"
.LASF162:
	.string	"bt_att_req"
.LASF79:
	.string	"BT_CONN_TYPE_BR"
.LASF208:
	.string	"ble_regist_conn"
.LASF83:
	.string	"BT_SECURITY_L0"
.LASF84:
	.string	"BT_SECURITY_L1"
.LASF85:
	.string	"BT_SECURITY_L2"
.LASF86:
	.string	"BT_SECURITY_L3"
.LASF87:
	.string	"BT_SECURITY_L4"
.LASF232:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/ble"
.LASF7:
	.string	"uint32_t"
.LASF52:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF29:
	.string	"k_fifo"
.LASF5:
	.string	"short unsigned int"
.LASF116:
	.string	"role"
.LASF97:
	.string	"BT_SECURITY_ERR_AUTH_FAIL"
.LASF157:
	.string	"pending_timeout"
.LASF39:
	.string	"atomic_t"
.LASF47:
	.string	"_reserved"
.LASF12:
	.string	"u8_t"
.LASF213:
	.string	"rx_phy"
.LASF197:
	.string	"exchange_params"
.LASF70:
	.string	"bt_addr_t"
.LASF56:
	.string	"_POLL_STATE_NOT_READY"
.LASF96:
	.string	"BT_SECURITY_ERR_SUCCESS"
.LASF58:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF18:
	.string	"next"
.LASF62:
	.string	"data"
.LASF106:
	.string	"connected"
.LASF23:
	.string	"prev"
.LASF176:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF114:
	.string	"bt_conn"
.LASF40:
	.string	"k_work_q"
.LASF60:
	.string	"_POLL_NUM_STATES"
.LASF109:
	.string	"le_param_updated"
.LASF38:
	.string	"k_timer_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
