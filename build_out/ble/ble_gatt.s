	.file	"ble_gatt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.ble_wifi_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	">>> init gatt done\r\n"
	.section	.text.ble_wifi_init,"ax",@progbits
	.align	1
	.globl	ble_wifi_init
	.type	ble_wifi_init, @function
ble_wifi_init:
.LFB73:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_gatt.c"
	.loc 1 44 25
	.cfi_startproc
	.loc 1 46 5
	.loc 1 44 25 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 46 5
	lui	a0,%hi(.LANCHOR0)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 44 25
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 46 5
	li	a2,33
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR0)
	call	memset
.LVL0:
	.loc 1 47 5 is_stmt 1
	lui	a0,%hi(.LANCHOR1)
	li	a2,65
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR1)
	call	memset
.LVL1:
	.loc 1 48 5
	.loc 1 48 19 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	.loc 1 50 5
	lui	a0,%hi(.LANCHOR4)
	.loc 1 48 19
	sb	zero,%lo(.LANCHOR2)(a5)
	.loc 1 49 5 is_stmt 1
	.loc 1 50 5 is_stmt 0
	addi	a0,a0,%lo(.LANCHOR4)
	.loc 1 49 19
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 50 5 is_stmt 1
	call	bt_gatt_service_register
.LVL2:
	.loc 1 51 5
	.loc 1 52 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 51 5
	lui	a0,%hi(.LC0)
	.loc 1 52 1
	.loc 1 51 5
	addi	a0,a0,%lo(.LC0)
	.loc 1 52 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 51 5
	tail	printf
.LVL3:
	.cfi_endproc
.LFE73:
	.size	ble_wifi_init, .-ble_wifi_init
	.section	.text.ble_wifi_notify_status,"ax",@progbits
	.align	1
	.globl	ble_wifi_notify_status
	.type	ble_wifi_notify_status, @function
ble_wifi_notify_status:
.LFB77:
	.loc 1 103 50 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 104 5
	.loc 1 103 50 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 108 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	ble_wifi_notify_status, .-ble_wifi_notify_status
	.section	.rodata.wifi_status_ccc_changed.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"[BLE] Notify enabled\r\n"
	.section	.text.wifi_status_ccc_changed,"ax",@progbits
	.align	1
	.type	wifi_status_ccc_changed, @function
wifi_status_ccc_changed:
.LFB74:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 58 5
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 58 8
	li	a5,1
	bne	a1,a5,.L5
.LVL6:
.LBB6:
.LBB7:
	.loc 1 59 9 is_stmt 1
.LBE7:
.LBE6:
	.loc 1 62 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
.LBB10:
.LBB8:
	.loc 1 59 9
	lui	a0,%hi(.LC1)
.LVL7:
	addi	a0,a0,%lo(.LC1)
.LBE8:
.LBE10:
	.loc 1 62 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB11:
.LBB9:
	.loc 1 59 9
	tail	printf
.LVL8:
.L5:
	.cfi_restore_state
.LBE9:
.LBE11:
	.loc 1 62 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	wifi_status_ccc_changed, .-wifi_status_ccc_changed
	.section	.rodata.wifi_pass_write_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"[DATA] %s , len: %d\r\n"
	.section	.text.wifi_pass_write_cb,"ax",@progbits
	.align	1
	.type	wifi_pass_write_cb, @function
wifi_pass_write_cb:
.LFB76:
	.loc 1 87 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 88 5
	.loc 1 87 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 88 7
	li	a5,64
.LVL10:
	.loc 1 87 1
	mv	s1,a3
	.loc 1 88 7
	bgtu	a3,a5,.L8
	.loc 1 92 9
	lui	s2,%hi(.LANCHOR1)
	mv	a1,a2
.LVL11:
	.loc 1 92 9 is_stmt 1
	addi	a0,s2,%lo(.LANCHOR1)
.LVL12:
	mv	a2,a3
.LVL13:
	call	memcpy
.LVL14:
	.loc 1 93 9
	.loc 1 92 9 is_stmt 0
	addi	s3,s2,%lo(.LANCHOR1)
	.loc 1 93 24
	add	s3,s3,s1
	.loc 1 95 9
	lui	a0,%hi(.LC2)
	.loc 1 94 23
	lui	a5,%hi(.LANCHOR2)
	li	a4,1
	.loc 1 93 24
	sb	zero,0(s3)
	.loc 1 94 9 is_stmt 1
	.loc 1 95 9 is_stmt 0
	mv	a2,s1
	addi	a1,s2,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LC2)
	.loc 1 94 23
	sb	a4,%lo(.LANCHOR2)(a5)
	.loc 1 95 9 is_stmt 1
	call	printf
.LVL15:
	.loc 1 98 5
.L8:
	.loc 1 100 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	wifi_pass_write_cb, .-wifi_pass_write_cb
	.section	.text.wifi_ssid_write_cb,"ax",@progbits
	.align	1
	.type	wifi_ssid_write_cb, @function
wifi_ssid_write_cb:
.LFB75:
	.loc 1 68 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 69 5
	.loc 1 68 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 69 7
	li	a5,32
.LVL17:
	.loc 1 68 1
	mv	s1,a3
	.loc 1 69 7
	bgtu	a3,a5,.L11
	.loc 1 73 9
	lui	s2,%hi(.LANCHOR0)
	mv	a1,a2
.LVL18:
	.loc 1 73 9 is_stmt 1
	addi	a0,s2,%lo(.LANCHOR0)
.LVL19:
	mv	a2,a3
.LVL20:
	call	memcpy
.LVL21:
	.loc 1 74 9
	.loc 1 73 9 is_stmt 0
	addi	s3,s2,%lo(.LANCHOR0)
	.loc 1 74 24
	add	s3,s3,s1
	.loc 1 76 9
	lui	a0,%hi(.LC2)
	.loc 1 75 23
	lui	a5,%hi(.LANCHOR2)
	li	a4,1
	.loc 1 74 24
	sb	zero,0(s3)
	.loc 1 75 9 is_stmt 1
	.loc 1 76 9 is_stmt 0
	mv	a2,s1
	addi	a1,s2,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC2)
	.loc 1 75 23
	sb	a4,%lo(.LANCHOR2)(a5)
	.loc 1 76 9 is_stmt 1
	call	printf
.LVL22:
	.loc 1 79 5
.L11:
	.loc 1 81 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	wifi_ssid_write_cb, .-wifi_ssid_write_cb
	.section	.rodata.ble_wifi_is_config_ready.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	">>> wifi connected\r\n"
	.align	2
.LC4:
	.string	">>> please check ssid and password \r\n"
	.section	.text.ble_wifi_is_config_ready,"ax",@progbits
	.align	1
	.globl	ble_wifi_is_config_ready
	.type	ble_wifi_is_config_ready, @function
ble_wifi_is_config_ready:
.LFB78:
	.loc 1 110 35 is_stmt 1
	.cfi_startproc
	.loc 1 111 5
	.loc 1 110 35 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 111 7
	lui	a5,%hi(.LANCHOR2)
	lbu	a5,%lo(.LANCHOR2)(a5)
	beq	a5,zero,.L15
	.loc 1 111 22 discriminator 1
	lui	a5,%hi(.LANCHOR3)
	lbu	s1,%lo(.LANCHOR3)(a5)
	beq	s1,zero,.L15
	.loc 1 112 9 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL23:
	.loc 1 113 9
	.loc 1 114 9
.L16:
	.loc 1 121 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
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
.L15:
	.cfi_restore_state
	.loc 1 117 9 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL24:
	.loc 1 118 9
	.loc 1 119 9
	.loc 1 119 15 is_stmt 0
	li	s1,0
	j	.L16
	.cfi_endproc
.LFE78:
	.size	ble_wifi_is_config_ready, .-ble_wifi_is_config_ready
	.section	.text.ble_wifi_get_ssid,"ax",@progbits
	.align	1
	.globl	ble_wifi_get_ssid
	.type	ble_wifi_get_ssid, @function
ble_wifi_get_ssid:
.LFB79:
	.loc 1 123 36 is_stmt 1
	.cfi_startproc
	.loc 1 124 5
	.loc 1 123 36 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 126 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 124 12
	lui	a0,%hi(.LANCHOR0)
	.loc 1 126 1
	addi	a0,a0,%lo(.LANCHOR0)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE79:
	.size	ble_wifi_get_ssid, .-ble_wifi_get_ssid
	.section	.text.ble_wifi_get_pass,"ax",@progbits
	.align	1
	.globl	ble_wifi_get_pass
	.type	ble_wifi_get_pass, @function
ble_wifi_get_pass:
.LFB80:
	.loc 1 128 36 is_stmt 1
	.cfi_startproc
	.loc 1 129 9
	.loc 1 128 36 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 130 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 129 16
	lui	a0,%hi(.LANCHOR1)
	.loc 1 130 1
	addi	a0,a0,%lo(.LANCHOR1)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	ble_wifi_get_pass, .-ble_wifi_get_pass
	.section	.bss.wifi_pass,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	wifi_pass, @object
	.size	wifi_pass, 65
wifi_pass:
	.zero	65
	.section	.bss.wifi_ssid,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	wifi_ssid, @object
	.size	wifi_ssid, 33
wifi_ssid:
	.zero	33
	.section	.data.__compound_literal.1,"aw"
	.align	2
	.type	__compound_literal.1, @object
	.size	__compound_literal.1, 17
__compound_literal.1:
	.byte	2
	.byte	85
	.byte	-28
	.byte	5
	.byte	-46
	.byte	-81
	.byte	-97
	.byte	-87
	.byte	-113
	.byte	-27
	.byte	74
	.byte	0
	.byte	16
	.byte	87
	.byte	70
	.byte	83
	.byte	85
	.section	.data.__compound_literal.11,"aw"
	.align	2
	.type	__compound_literal.11, @object
	.size	__compound_literal.11, 17
__compound_literal.11:
	.byte	2
	.byte	85
	.byte	-28
	.byte	5
	.byte	-46
	.byte	-81
	.byte	-97
	.byte	-87
	.byte	-113
	.byte	-27
	.byte	74
	.byte	3
	.byte	16
	.byte	87
	.byte	70
	.byte	83
	.byte	85
	.section	.data.__compound_literal.13,"aw"
	.align	2
	.type	__compound_literal.13, @object
	.size	__compound_literal.13, 17
__compound_literal.13:
	.byte	2
	.byte	85
	.byte	-28
	.byte	5
	.byte	-46
	.byte	-81
	.byte	-97
	.byte	-87
	.byte	-113
	.byte	-27
	.byte	74
	.byte	3
	.byte	16
	.byte	87
	.byte	70
	.byte	83
	.byte	85
	.section	.data.__compound_literal.15,"aw"
	.align	2
	.type	__compound_literal.15, @object
	.size	__compound_literal.15, 24
__compound_literal.15:
	.zero	10
	.zero	2
	.word	wifi_status_ccc_changed
	.word	0
	.word	0
	.section	.data.__compound_literal.3,"aw"
	.align	2
	.type	__compound_literal.3, @object
	.size	__compound_literal.3, 17
__compound_literal.3:
	.byte	2
	.byte	85
	.byte	-28
	.byte	5
	.byte	-46
	.byte	-81
	.byte	-97
	.byte	-87
	.byte	-113
	.byte	-27
	.byte	74
	.byte	1
	.byte	16
	.byte	87
	.byte	70
	.byte	83
	.byte	85
	.section	.data.__compound_literal.5,"aw"
	.align	2
	.type	__compound_literal.5, @object
	.size	__compound_literal.5, 17
__compound_literal.5:
	.byte	2
	.byte	85
	.byte	-28
	.byte	5
	.byte	-46
	.byte	-81
	.byte	-97
	.byte	-87
	.byte	-113
	.byte	-27
	.byte	74
	.byte	1
	.byte	16
	.byte	87
	.byte	70
	.byte	83
	.byte	85
	.section	.data.__compound_literal.7,"aw"
	.align	2
	.type	__compound_literal.7, @object
	.size	__compound_literal.7, 17
__compound_literal.7:
	.byte	2
	.byte	85
	.byte	-28
	.byte	5
	.byte	-46
	.byte	-81
	.byte	-97
	.byte	-87
	.byte	-113
	.byte	-27
	.byte	74
	.byte	2
	.byte	16
	.byte	87
	.byte	70
	.byte	83
	.byte	85
	.section	.data.__compound_literal.9,"aw"
	.align	2
	.type	__compound_literal.9, @object
	.size	__compound_literal.9, 17
__compound_literal.9:
	.byte	2
	.byte	85
	.byte	-28
	.byte	5
	.byte	-46
	.byte	-81
	.byte	-97
	.byte	-87
	.byte	-113
	.byte	-27
	.byte	74
	.byte	2
	.byte	16
	.byte	87
	.byte	70
	.byte	83
	.byte	85
	.section	.data.ble_gatt_attrs,"aw"
	.align	2
	.type	ble_gatt_attrs, @object
	.size	ble_gatt_attrs, 160
ble_gatt_attrs:
	.word	__compound_literal.0
	.word	bt_gatt_attr_read_service
	.word	0
	.word	__compound_literal.1
	.half	0
	.byte	1
	.zero	1
	.word	__compound_literal.2
	.word	bt_gatt_attr_read_chrc
	.word	0
	.word	__compound_literal.4
	.half	0
	.byte	1
	.zero	1
	.word	__compound_literal.5
	.word	0
	.word	wifi_ssid_write_cb
	.word	0
	.half	0
	.byte	2
	.zero	1
	.word	__compound_literal.6
	.word	bt_gatt_attr_read_chrc
	.word	0
	.word	__compound_literal.8
	.half	0
	.byte	1
	.zero	1
	.word	__compound_literal.9
	.word	0
	.word	wifi_pass_write_cb
	.word	0
	.half	0
	.byte	2
	.zero	1
	.word	__compound_literal.10
	.word	bt_gatt_attr_read_chrc
	.word	0
	.word	__compound_literal.12
	.half	0
	.byte	1
	.zero	1
	.word	__compound_literal.13
	.word	0
	.word	0
	.word	0
	.half	0
	.byte	0
	.zero	1
	.word	__compound_literal.14
	.word	bt_gatt_attr_read_ccc
	.word	bt_gatt_attr_write_ccc
	.word	__compound_literal.15
	.half	0
	.byte	3
	.zero	1
	.section	.data.ble_wifi_service,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	ble_wifi_service, @object
	.size	ble_wifi_service, 12
ble_wifi_service:
	.word	ble_gatt_attrs
	.word	8
	.zero	4
	.section	.sbss.pass_received,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	pass_received, @object
	.size	pass_received, 1
pass_received:
	.zero	1
	.section	.sbss.ssid_received,"aw",@nobits
	.set	.LANCHOR2,. + 0
	.type	ssid_received, @object
	.size	ssid_received, 1
ssid_received:
	.zero	1
	.section	.sdata.__compound_literal.0,"aw"
	.align	2
	.type	__compound_literal.0, @object
	.size	__compound_literal.0, 4
__compound_literal.0:
	.byte	0
	.zero	1
	.half	10240
	.section	.sdata.__compound_literal.10,"aw"
	.align	2
	.type	__compound_literal.10, @object
	.size	__compound_literal.10, 4
__compound_literal.10:
	.byte	0
	.zero	1
	.half	10243
	.section	.sdata.__compound_literal.12,"aw"
	.align	2
	.type	__compound_literal.12, @object
	.size	__compound_literal.12, 8
__compound_literal.12:
	.word	__compound_literal.11
	.half	0
	.byte	16
	.zero	1
	.section	.sdata.__compound_literal.14,"aw"
	.align	2
	.type	__compound_literal.14, @object
	.size	__compound_literal.14, 4
__compound_literal.14:
	.byte	0
	.zero	1
	.half	10498
	.section	.sdata.__compound_literal.2,"aw"
	.align	2
	.type	__compound_literal.2, @object
	.size	__compound_literal.2, 4
__compound_literal.2:
	.byte	0
	.zero	1
	.half	10243
	.section	.sdata.__compound_literal.4,"aw"
	.align	2
	.type	__compound_literal.4, @object
	.size	__compound_literal.4, 8
__compound_literal.4:
	.word	__compound_literal.3
	.half	0
	.byte	8
	.zero	1
	.section	.sdata.__compound_literal.6,"aw"
	.align	2
	.type	__compound_literal.6, @object
	.size	__compound_literal.6, 4
__compound_literal.6:
	.byte	0
	.zero	1
	.half	10243
	.section	.sdata.__compound_literal.8,"aw"
	.align	2
	.type	__compound_literal.8, @object
	.size	__compound_literal.8, 8
__compound_literal.8:
	.word	__compound_literal.7
	.half	0
	.byte	8
	.zero	1
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_gatt.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/uuid.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9ee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF105
	.byte	0xc
	.4byte	.LASF106
	.4byte	.LASF107
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0x2
	.byte	0x6
	.byte	0xe
	.4byte	0x52
	.byte	0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x3
	.4byte	.LASF4
	.byte	0x5
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0xc
	.byte	0x3
	.4byte	0x25
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x52
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.byte	0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x65
	.byte	0x7
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x8
	.4byte	0xbe
	.byte	0x9
	.byte	0x4
	.4byte	0xc5
	.byte	0x5
	.4byte	.LASF18
	.byte	0x5
	.byte	0xb8
	.byte	0x12
	.4byte	0xb0
	.byte	0x5
	.4byte	.LASF19
	.byte	0x6
	.byte	0x15
	.byte	0x17
	.4byte	0x7f
	.byte	0x5
	.4byte	.LASF20
	.byte	0x6
	.byte	0x16
	.byte	0x18
	.4byte	0x8d
	.byte	0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x7
	.byte	0x1c
	.byte	0x8
	.4byte	0x10f
	.byte	0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x1d
	.byte	0x11
	.4byte	0x10f
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xf4
	.byte	0x5
	.4byte	.LASF21
	.byte	0x7
	.byte	0x20
	.byte	0x17
	.4byte	0xf4
	.byte	0xc
	.4byte	.LASF27
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0x8
	.byte	0x36
	.byte	0x6
	.4byte	0x152
	.byte	0x3
	.4byte	.LASF22
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3
	.4byte	.LASF24
	.byte	0x2
	.byte	0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0x8
	.byte	0x40
	.byte	0x6
	.4byte	0x183
	.byte	0x3
	.4byte	.LASF29
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3
	.4byte	.LASF31
	.byte	0x2
	.byte	0x3
	.4byte	.LASF32
	.byte	0x3
	.byte	0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0
	.byte	0xd
	.byte	0x6
	.byte	0x9
	.byte	0x19
	.byte	0x9
	.4byte	0x19a
	.byte	0xe
	.string	"val"
	.byte	0x9
	.byte	0x1a
	.byte	0x7
	.4byte	0x19a
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	0xdc
	.4byte	0x1aa
	.byte	0x10
	.4byte	0x52
	.byte	0x5
	.byte	0
	.byte	0x5
	.4byte	.LASF35
	.byte	0x9
	.byte	0x1b
	.byte	0x3
	.4byte	0x183
	.byte	0xd
	.byte	0x7
	.byte	0x9
	.byte	0x1e
	.byte	0x9
	.4byte	0x1d8
	.byte	0xb
	.4byte	.LASF36
	.byte	0x9
	.byte	0x1f
	.byte	0x7
	.4byte	0xdc
	.byte	0
	.byte	0xe
	.string	"a"
	.byte	0x9
	.byte	0x20
	.byte	0xc
	.4byte	0x1aa
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF37
	.byte	0x9
	.byte	0x21
	.byte	0x3
	.4byte	0x1b6
	.byte	0xf
	.4byte	0xdc
	.4byte	0x1f4
	.byte	0x10
	.4byte	0x52
	.byte	0xf
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF38
	.byte	0x9
	.byte	0x4
	.4byte	0x201
	.byte	0x11
	.4byte	.LASF108
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0xa
	.byte	0x1b
	.byte	0x6
	.4byte	0x227
	.byte	0x3
	.4byte	.LASF39
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3
	.4byte	.LASF41
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa
	.byte	0x22
	.byte	0x8
	.4byte	0x242
	.byte	0xb
	.4byte	.LASF36
	.byte	0xa
	.byte	0x23
	.byte	0x7
	.4byte	0xdc
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x227
	.byte	0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa
	.byte	0x26
	.byte	0x8
	.4byte	0x26f
	.byte	0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0x27
	.byte	0x11
	.4byte	0x227
	.byte	0
	.byte	0xe
	.string	"val"
	.byte	0xa
	.byte	0x28
	.byte	0x8
	.4byte	0xe8
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF46
	.byte	0x11
	.byte	0xa
	.byte	0x30
	.byte	0x8
	.4byte	0x297
	.byte	0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0x31
	.byte	0x11
	.4byte	0x227
	.byte	0
	.byte	0xe
	.string	"val"
	.byte	0xa
	.byte	0x32
	.byte	0x7
	.4byte	0x1e4
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x29d
	.byte	0x12
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0xb
	.byte	0x1f
	.byte	0x6
	.4byte	0x2dd
	.byte	0x3
	.4byte	.LASF47
	.byte	0
	.byte	0x3
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3
	.4byte	.LASF49
	.byte	0x2
	.byte	0x3
	.4byte	.LASF50
	.byte	0x4
	.byte	0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x3
	.4byte	.LASF52
	.byte	0x10
	.byte	0x3
	.4byte	.LASF53
	.byte	0x20
	.byte	0x3
	.4byte	.LASF54
	.byte	0x40
	.byte	0
	.byte	0xa
	.4byte	.LASF55
	.byte	0x14
	.byte	0xb
	.byte	0x67
	.byte	0x8
	.4byte	0x339
	.byte	0xb
	.4byte	.LASF45
	.byte	0xb
	.byte	0x69
	.byte	0x18
	.4byte	0x33e
	.byte	0
	.byte	0xb
	.4byte	.LASF56
	.byte	0xb
	.byte	0x79
	.byte	0xc
	.4byte	0x36d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF57
	.byte	0xb
	.byte	0x8d
	.byte	0xc
	.4byte	0x39b
	.byte	0x8
	.byte	0xb
	.4byte	.LASF58
	.byte	0xb
	.byte	0x93
	.byte	0x8
	.4byte	0xbc
	.byte	0xc
	.byte	0xb
	.4byte	.LASF59
	.byte	0xb
	.byte	0x95
	.byte	0x8
	.4byte	0xe8
	.byte	0x10
	.byte	0xb
	.4byte	.LASF60
	.byte	0xb
	.byte	0x97
	.byte	0x7
	.4byte	0xdc
	.byte	0x12
	.byte	0
	.byte	0x8
	.4byte	0x2dd
	.byte	0x9
	.byte	0x4
	.4byte	0x242
	.byte	0x13
	.4byte	0xd0
	.4byte	0x367
	.byte	0x14
	.4byte	0x1fb
	.byte	0x14
	.4byte	0x367
	.byte	0x14
	.4byte	0xbc
	.byte	0x14
	.4byte	0xe8
	.byte	0x14
	.4byte	0xe8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x339
	.byte	0x9
	.byte	0x4
	.4byte	0x344
	.byte	0x13
	.4byte	0xd0
	.4byte	0x39b
	.byte	0x14
	.4byte	0x1fb
	.byte	0x14
	.4byte	0x367
	.byte	0x14
	.4byte	0x297
	.byte	0x14
	.4byte	0xe8
	.byte	0x14
	.4byte	0xe8
	.byte	0x14
	.4byte	0xdc
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x373
	.byte	0xa
	.4byte	.LASF61
	.byte	0xc
	.byte	0xb
	.byte	0xa3
	.byte	0x8
	.4byte	0x3d6
	.byte	0xb
	.4byte	.LASF62
	.byte	0xb
	.byte	0xa5
	.byte	0x17
	.4byte	0x3d6
	.byte	0
	.byte	0xb
	.4byte	.LASF63
	.byte	0xb
	.byte	0xa7
	.byte	0x9
	.4byte	0x6c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF64
	.byte	0xb
	.byte	0xa8
	.byte	0xe
	.4byte	0x115
	.byte	0x8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x2dd
	.byte	0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0xb
	.byte	0xf4
	.byte	0x8
	.4byte	0x411
	.byte	0xb
	.4byte	.LASF45
	.byte	0xb
	.byte	0xf6
	.byte	0x18
	.4byte	0x33e
	.byte	0
	.byte	0xb
	.4byte	.LASF66
	.byte	0xb
	.byte	0xf8
	.byte	0x8
	.4byte	0xe8
	.byte	0x4
	.byte	0xb
	.4byte	.LASF67
	.byte	0xb
	.byte	0xfa
	.byte	0x7
	.4byte	0xdc
	.byte	0x6
	.byte	0
	.byte	0x15
	.4byte	.LASF68
	.byte	0xa
	.byte	0xb
	.2byte	0x23c
	.byte	0x8
	.4byte	0x449
	.byte	0x16
	.string	"id"
	.byte	0xb
	.2byte	0x23d
	.byte	0x7
	.4byte	0xdc
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0xb
	.2byte	0x23e
	.byte	0xf
	.4byte	0x1d8
	.byte	0x1
	.byte	0x17
	.4byte	.LASF70
	.byte	0xb
	.2byte	0x23f
	.byte	0x8
	.4byte	0xe8
	.byte	0x8
	.byte	0
	.byte	0x15
	.4byte	.LASF71
	.byte	0x18
	.byte	0xb
	.2byte	0x243
	.byte	0x8
	.4byte	0x49e
	.byte	0x16
	.string	"cfg"
	.byte	0xb
	.2byte	0x244
	.byte	0x19
	.4byte	0x49e
	.byte	0
	.byte	0x17
	.4byte	.LASF70
	.byte	0xb
	.2byte	0x245
	.byte	0x8
	.4byte	0xe8
	.byte	0xa
	.byte	0x17
	.4byte	.LASF72
	.byte	0xb
	.2byte	0x246
	.byte	0x9
	.4byte	0x4be
	.byte	0xc
	.byte	0x17
	.4byte	.LASF73
	.byte	0xb
	.2byte	0x248
	.byte	0xa
	.4byte	0x4dd
	.byte	0x10
	.byte	0x17
	.4byte	.LASF74
	.byte	0xb
	.2byte	0x24b
	.byte	0xa
	.4byte	0x4f7
	.byte	0x14
	.byte	0
	.byte	0xf
	.4byte	0x411
	.4byte	0x4ae
	.byte	0x10
	.4byte	0x52
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	0x4be
	.byte	0x14
	.4byte	0x367
	.byte	0x14
	.4byte	0xe8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x4ae
	.byte	0x13
	.4byte	0x1f4
	.4byte	0x4dd
	.byte	0x14
	.4byte	0x1fb
	.byte	0x14
	.4byte	0x367
	.byte	0x14
	.4byte	0xe8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x4c4
	.byte	0x13
	.4byte	0x1f4
	.4byte	0x4f7
	.byte	0x14
	.4byte	0x1fb
	.byte	0x14
	.4byte	0x367
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x4e3
	.byte	0x19
	.4byte	.LASF75
	.byte	0xb
	.2byte	0x323
	.byte	0x10
	.4byte	0x50a
	.byte	0x9
	.byte	0x4
	.4byte	0x510
	.byte	0x18
	.4byte	0x520
	.byte	0x14
	.4byte	0x1fb
	.byte	0x14
	.4byte	0xbc
	.byte	0
	.byte	0x15
	.4byte	.LASF76
	.byte	0x18
	.byte	0xb
	.2byte	0x325
	.byte	0x8
	.4byte	0x583
	.byte	0x17
	.4byte	.LASF45
	.byte	0xb
	.2byte	0x327
	.byte	0x18
	.4byte	0x33e
	.byte	0
	.byte	0x17
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x329
	.byte	0x1d
	.4byte	0x367
	.byte	0x4
	.byte	0x17
	.4byte	.LASF78
	.byte	0xb
	.2byte	0x32b
	.byte	0xe
	.4byte	0x297
	.byte	0x8
	.byte	0x16
	.string	"len"
	.byte	0xb
	.2byte	0x32d
	.byte	0x8
	.4byte	0xe8
	.byte	0xc
	.byte	0x17
	.4byte	.LASF79
	.byte	0xb
	.2byte	0x32f
	.byte	0x1a
	.4byte	0x4fd
	.byte	0x10
	.byte	0x17
	.4byte	.LASF58
	.byte	0xb
	.2byte	0x331
	.byte	0x8
	.4byte	0xbc
	.byte	0x14
	.byte	0
	.byte	0x1a
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0xb
	.2byte	0x50e
	.byte	0x6
	.4byte	0x5a5
	.byte	0x3
	.4byte	.LASF80
	.byte	0
	.byte	0x3
	.4byte	.LASF81
	.byte	0x1
	.byte	0x3
	.4byte	.LASF82
	.byte	0x2
	.byte	0
	.byte	0xf
	.4byte	0xbe
	.4byte	0x5b5
	.byte	0x10
	.4byte	0x52
	.byte	0x20
	.byte	0
	.byte	0x1b
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	0x5a5
	.byte	0x5
	.byte	0x3
	.4byte	wifi_ssid
	.byte	0xf
	.4byte	0xbe
	.4byte	0x5d7
	.byte	0x10
	.4byte	0x52
	.byte	0x40
	.byte	0
	.byte	0x1b
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.4byte	0x5c7
	.byte	0x5
	.byte	0x3
	.4byte	wifi_pass
	.byte	0x1b
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb
	.byte	0xc
	.4byte	0x1f4
	.byte	0x5
	.byte	0x3
	.4byte	ssid_received
	.byte	0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.4byte	0x1f4
	.byte	0x5
	.byte	0x3
	.4byte	pass_received
	.byte	0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0xe
	.byte	0x18
	.4byte	0x1fb
	.byte	0xf
	.4byte	0x2dd
	.4byte	0x629
	.byte	0x10
	.4byte	0x52
	.byte	0x7
	.byte	0
	.byte	0x1b
	.4byte	.LASF87
	.byte	0x1
	.byte	0x21
	.byte	0x1c
	.4byte	0x619
	.byte	0x5
	.byte	0x3
	.4byte	ble_gatt_attrs
	.byte	0x1b
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2a
	.byte	0x1f
	.4byte	0x3a1
	.byte	0x5
	.byte	0x3
	.4byte	ble_wifi_service
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.byte	0x80
	.byte	0xd
	.4byte	0xca
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.4byte	.LASF90
	.byte	0x1
	.byte	0x7b
	.byte	0xd
	.4byte	0xca
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.byte	0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x1f4
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x6be
	.byte	0x1f
	.4byte	.LVL23
	.4byte	0x9c0
	.4byte	0x6aa
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x21
	.4byte	.LVL24
	.4byte	0x9c0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF97
	.byte	0x1
	.byte	0x67
	.byte	0x6
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e3
	.byte	0x23
	.4byte	.LASF91
	.byte	0x1
	.byte	0x67
	.byte	0x2b
	.4byte	0x59
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x24
	.4byte	.LASF95
	.byte	0x1
	.byte	0x53
	.byte	0x10
	.4byte	0xd0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x7a4
	.byte	0x25
	.4byte	.LASF92
	.byte	0x1
	.byte	0x53
	.byte	0x34
	.4byte	0x1fb
	.4byte	.LLST4
	.byte	0x25
	.4byte	.LASF77
	.byte	0x1
	.byte	0x54
	.byte	0x3e
	.4byte	0x367
	.4byte	.LLST5
	.byte	0x26
	.string	"buf"
	.byte	0x1
	.byte	0x55
	.byte	0x2f
	.4byte	0x297
	.4byte	.LLST6
	.byte	0x26
	.string	"len"
	.byte	0x1
	.byte	0x55
	.byte	0x3a
	.4byte	0xe8
	.4byte	.LLST7
	.byte	0x25
	.4byte	.LASF93
	.byte	0x1
	.byte	0x56
	.byte	0x29
	.4byte	0xe8
	.4byte	.LLST8
	.byte	0x25
	.4byte	.LASF94
	.byte	0x1
	.byte	0x56
	.byte	0x36
	.4byte	0xdc
	.4byte	.LLST9
	.byte	0x1f
	.4byte	.LVL14
	.4byte	0x9cc
	.4byte	0x781
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL15
	.4byte	0x9c0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF96
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.4byte	0xd0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x865
	.byte	0x25
	.4byte	.LASF92
	.byte	0x1
	.byte	0x40
	.byte	0x34
	.4byte	0x1fb
	.4byte	.LLST10
	.byte	0x25
	.4byte	.LASF77
	.byte	0x1
	.byte	0x41
	.byte	0x3e
	.4byte	0x367
	.4byte	.LLST11
	.byte	0x26
	.string	"buf"
	.byte	0x1
	.byte	0x42
	.byte	0x2f
	.4byte	0x297
	.4byte	.LLST12
	.byte	0x26
	.string	"len"
	.byte	0x1
	.byte	0x42
	.byte	0x3a
	.4byte	0xe8
	.4byte	.LLST13
	.byte	0x25
	.4byte	.LASF93
	.byte	0x1
	.byte	0x43
	.byte	0x29
	.4byte	0xe8
	.4byte	.LLST14
	.byte	0x25
	.4byte	.LASF94
	.byte	0x1
	.byte	0x43
	.byte	0x36
	.4byte	0xdc
	.4byte	.LLST15
	.byte	0x1f
	.4byte	.LVL21
	.4byte	0x9cc
	.4byte	0x842
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL22
	.4byte	0x9c0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF110
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.byte	0x1
	.4byte	0x88b
	.byte	0x28
	.4byte	.LASF77
	.byte	0x1
	.byte	0x38
	.byte	0x40
	.4byte	0x367
	.byte	0x28
	.4byte	.LASF70
	.byte	0x1
	.byte	0x38
	.byte	0x4c
	.4byte	0xe8
	.byte	0
	.byte	0x22
	.4byte	.LASF98
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x910
	.byte	0x1f
	.4byte	.LVL0
	.4byte	0x9d8
	.4byte	0x8c3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
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
	.byte	0x21
	.byte	0
	.byte	0x1f
	.4byte	.LVL1
	.4byte	0x9d8
	.4byte	0x8e5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
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
	.byte	0x41
	.byte	0
	.byte	0x1f
	.4byte	.LVL2
	.4byte	0x9e4
	.4byte	0x8fc
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x29
	.4byte	.LVL3
	.4byte	0x9c0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x35e
	.byte	0x13
	.4byte	0x65
	.byte	0x3
	.4byte	0x964
	.byte	0x2b
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x35e
	.byte	0x32
	.4byte	0x1fb
	.byte	0x2b
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x35f
	.byte	0x21
	.4byte	0x367
	.byte	0x2b
	.4byte	.LASF78
	.byte	0xb
	.2byte	0x360
	.byte	0x12
	.4byte	0x297
	.byte	0x2c
	.string	"len"
	.byte	0xb
	.2byte	0x360
	.byte	0x1e
	.4byte	0xe8
	.byte	0x2d
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x362
	.byte	0x1f
	.4byte	0x520
	.byte	0
	.byte	0x2e
	.4byte	0x865
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x9c0
	.byte	0x2f
	.4byte	0x872
	.4byte	.LLST0
	.byte	0x2f
	.4byte	0x87e
	.4byte	.LLST1
	.byte	0x30
	.4byte	0x865
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.byte	0x2f
	.4byte	0x872
	.4byte	.LLST2
	.byte	0x2f
	.4byte	0x87e
	.4byte	.LLST3
	.byte	0x29
	.4byte	.LVL8
	.4byte	0x9c0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xc
	.byte	0xc8
	.byte	0x5
	.byte	0x31
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xd
	.byte	0x1f
	.byte	0x8
	.byte	0x31
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xd
	.byte	0x21
	.byte	0x8
	.byte	0x32
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x13c
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
	.byte	0x3
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x28
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-1
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21-1
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL16
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21-1
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LFE75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL5
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
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
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
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"_POLL_STATE_NOT_READY"
.LASF26:
	.string	"_POLL_NUM_TYPES"
.LASF6:
	.string	"wifi_status_t"
.LASF21:
	.string	"sys_snode_t"
.LASF1:
	.string	"WIFI_STATUS_CONNECTED"
.LASF57:
	.string	"write"
.LASF39:
	.string	"BT_UUID_TYPE_16"
.LASF110:
	.string	"wifi_status_ccc_changed"
.LASF104:
	.string	"bt_gatt_service_register"
.LASF7:
	.string	"size_t"
.LASF76:
	.string	"bt_gatt_notify_params"
.LASF90:
	.string	"ble_wifi_get_ssid"
.LASF81:
	.string	"BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING"
.LASF102:
	.string	"memcpy"
.LASF63:
	.string	"attr_count"
.LASF18:
	.string	"ssize_t"
.LASF10:
	.string	"short int"
.LASF70:
	.string	"value"
.LASF58:
	.string	"user_data"
.LASF55:
	.string	"bt_gatt_attr"
.LASF46:
	.string	"bt_uuid_128"
.LASF99:
	.string	"current_conn"
.LASF47:
	.string	"BT_GATT_PERM_NONE"
.LASF92:
	.string	"conn"
.LASF67:
	.string	"properties"
.LASF97:
	.string	"ble_wifi_notify_status"
.LASF107:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/ble"
.LASF56:
	.string	"read"
.LASF14:
	.string	"long long int"
.LASF15:
	.string	"long long unsigned int"
.LASF51:
	.string	"BT_GATT_PERM_WRITE_ENCRYPT"
.LASF75:
	.string	"bt_gatt_complete_func_t"
.LASF103:
	.string	"memset"
.LASF31:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF12:
	.string	"long int"
.LASF101:
	.string	"printf"
.LASF82:
	.string	"BT_GATT_SUBSCRIBE_NUM_FLAGS"
.LASF69:
	.string	"peer"
.LASF64:
	.string	"node"
.LASF48:
	.string	"BT_GATT_PERM_READ"
.LASF100:
	.string	"params"
.LASF49:
	.string	"BT_GATT_PERM_WRITE"
.LASF73:
	.string	"cfg_write"
.LASF9:
	.string	"unsigned char"
.LASF109:
	.string	"ble_wifi_is_config_ready"
.LASF108:
	.string	"bt_conn"
.LASF53:
	.string	"BT_GATT_PERM_WRITE_AUTHEN"
.LASF4:
	.string	"WIFI_STATUS_IDLE"
.LASF24:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF52:
	.string	"BT_GATT_PERM_READ_AUTHEN"
.LASF35:
	.string	"bt_addr_t"
.LASF22:
	.string	"_POLL_TYPE_IGNORE"
.LASF8:
	.string	"signed char"
.LASF94:
	.string	"flags"
.LASF65:
	.string	"bt_gatt_chrc"
.LASF36:
	.string	"type"
.LASF66:
	.string	"value_handle"
.LASF5:
	.string	"unsigned int"
.LASF32:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF40:
	.string	"BT_UUID_TYPE_32"
.LASF62:
	.string	"attrs"
.LASF20:
	.string	"u16_t"
.LASF11:
	.string	"short unsigned int"
.LASF93:
	.string	"offset"
.LASF91:
	.string	"status"
.LASF44:
	.string	"bt_uuid_16"
.LASF17:
	.string	"char"
.LASF71:
	.string	"_bt_gatt_ccc"
.LASF98:
	.string	"ble_wifi_init"
.LASF79:
	.string	"func"
.LASF38:
	.string	"_Bool"
.LASF50:
	.string	"BT_GATT_PERM_READ_ENCRYPT"
.LASF0:
	.string	"WIFI_STATUS_CONNECTING"
.LASF41:
	.string	"BT_UUID_TYPE_128"
.LASF78:
	.string	"data"
.LASF61:
	.string	"bt_gatt_service"
.LASF106:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_gatt.c"
.LASF74:
	.string	"cfg_match"
.LASF95:
	.string	"wifi_pass_write_cb"
.LASF13:
	.string	"long unsigned int"
.LASF42:
	.string	"_snode"
.LASF89:
	.string	"ble_wifi_get_pass"
.LASF85:
	.string	"ssid_received"
.LASF30:
	.string	"_POLL_STATE_SIGNALED"
.LASF59:
	.string	"handle"
.LASF105:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF27:
	.string	"_poll_types_bits"
.LASF77:
	.string	"attr"
.LASF96:
	.string	"wifi_ssid_write_cb"
.LASF45:
	.string	"uuid"
.LASF83:
	.string	"wifi_ssid"
.LASF68:
	.string	"bt_gatt_ccc_cfg"
.LASF88:
	.string	"ble_wifi_service"
.LASF37:
	.string	"bt_addr_le_t"
.LASF72:
	.string	"cfg_changed"
.LASF84:
	.string	"wifi_pass"
.LASF60:
	.string	"perm"
.LASF80:
	.string	"BT_GATT_SUBSCRIBE_FLAG_VOLATILE"
.LASF28:
	.string	"_poll_states_bits"
.LASF54:
	.string	"BT_GATT_PERM_PREPARE_WRITE"
.LASF111:
	.string	"bt_gatt_notify"
.LASF43:
	.string	"bt_uuid"
.LASF33:
	.string	"_POLL_NUM_STATES"
.LASF19:
	.string	"u8_t"
.LASF25:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF87:
	.string	"ble_gatt_attrs"
.LASF2:
	.string	"WIFI_STATUS_FAILED"
.LASF86:
	.string	"pass_received"
.LASF34:
	.string	"next"
.LASF3:
	.string	"BLE_FULL_BUFF"
.LASF23:
	.string	"_POLL_TYPE_SIGNAL"
.LASF16:
	.string	"_ssize_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
