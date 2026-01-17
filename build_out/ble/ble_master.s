	.file	"ble_master.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.device_found,"ax",@progbits
	.align	1
	.type	device_found, @function
device_found:
.LFB76:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_master.c"
	.loc 1 73 1
	.cfi_startproc
.LVL0:
	.loc 1 78 5
	.loc 1 73 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 81 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 78 5
	lui	a1,%hi(adv_parse_cb)
.LVL1:
	.loc 1 73 1
	mv	a2,a0
.LVL2:
	.loc 1 81 1
	.loc 1 78 5
	addi	a1,a1,%lo(adv_parse_cb)
	mv	a0,a3
.LVL3:
	.loc 1 81 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 78 5
	tail	bt_data_parse
.LVL4:
	.cfi_endproc
.LFE76:
	.size	device_found, .-device_found
	.section	.rodata.connect.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Connect failed err %d\r\n"
	.align	2
.LC1:
	.string	"public"
	.align	2
.LC2:
	.string	"random"
	.align	2
.LC3:
	.string	"public-id"
	.align	2
.LC4:
	.string	"random-id"
	.align	2
.LC5:
	.string	"0x%02x"
	.align	2
.LC6:
	.string	"%02X:%02X:%02X:%02X:%02X:%02X (%s)"
	.align	2
.LC7:
	.string	"Connected! %s\r\n"
	.section	.text.connect,"ax",@progbits
	.align	1
	.globl	connect
	.type	connect, @function
connect:
.LFB75:
	.loc 1 42 32 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 43 5
	.loc 1 49 5
	.loc 1 51 5
	.loc 1 42 32 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	ra,76(sp)
	sw	s2,64(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	.loc 1 51 15
	lui	a1,%hi(.LANCHOR0)
	.loc 1 42 32
	.loc 1 51 15
	addi	a1,a1,%lo(.LANCHOR0)
	.loc 1 42 32
	mv	s1,a0
	.loc 1 51 15
	call	bt_conn_create_le
.LVL6:
	.loc 1 53 5 is_stmt 1
	.loc 1 53 8 is_stmt 0
	beq	a0,zero,.L4
	mv	a1,a0
	.loc 1 54 9 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL7:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL8:
	.loc 1 55 9
	.loc 1 55 16 is_stmt 0
	li	a0,-1
.L3:
	.loc 1 62 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
.LVL9:
	lw	s2,64(sp)
	.cfi_restore 18
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L4:
	.cfi_restore_state
	.loc 1 57 5 is_stmt 1
.LBB5:
.LBB6:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
	.loc 2 758 2
	.loc 2 760 2
	.loc 2 760 14 is_stmt 0
	lbu	a3,0(s1)
	.loc 2 760 2
	li	a5,2
	addi	s2,s0,-60
	beq	a3,a5,.L6
	bgtu	a3,a5,.L7
	bne	a3,zero,.L13
	.loc 2 762 3 is_stmt 1
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
.L16:
	.loc 2 765 3 is_stmt 0
	mv	a0,s2
.LVL11:
	call	strcpy
.LVL12:
	.loc 2 766 3 is_stmt 1
.L12:
	.loc 2 778 2
	.loc 2 778 9 is_stmt 0
	lbu	a5,1(s1)
	lbu	a7,2(s1)
	lbu	a6,3(s1)
	lbu	a4,5(s1)
	lbu	a3,6(s1)
	sw	a5,0(sp)
	lbu	a5,4(s1)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	li	a1,30
	sw	s2,4(sp)
	addi	a0,s0,-48
.LVL13:
	call	snprintf
.LVL14:
.LBE6:
.LBE5:
	.loc 1 58 5 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a1,s0,-48
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL15:
	.loc 1 61 5
	.loc 1 61 12 is_stmt 0
	li	a0,0
	j	.L3
.LVL16:
.L7:
.LBB8:
.LBB7:
	.loc 2 760 2
	li	a5,3
	beq	a3,a5,.L10
	.loc 2 774 3 is_stmt 1
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
	li	a1,10
	mv	a0,s2
.LVL17:
	call	snprintf
.LVL18:
	.loc 2 775 3
	j	.L12
.LVL19:
.L13:
	.loc 2 765 3
	lui	a1,%hi(.LC2)
	addi	a1,a1,%lo(.LC2)
	j	.L16
.L6:
	.loc 2 768 3
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	j	.L16
.L10:
	.loc 2 771 3
	lui	a1,%hi(.LC4)
	addi	a1,a1,%lo(.LC4)
	j	.L16
.LBE7:
.LBE8:
	.cfi_endproc
.LFE75:
	.size	connect, .-connect
	.section	.rodata.ble_start_scan.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"Start scan failed (err %d)"
	.align	2
.LC9:
	.string	"Scanning started"
	.section	.text.ble_start_scan,"ax",@progbits
	.align	1
	.globl	ble_start_scan
	.type	ble_start_scan, @function
ble_start_scan:
.LFB77:
	.loc 1 84 1
	.cfi_startproc
	.loc 1 85 5
	.loc 1 87 5
	.loc 1 88 5
	.loc 1 89 5
	.loc 1 90 5
	.loc 1 91 5
	.loc 1 84 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	ra,28(sp)
	.loc 1 88 21
	li	a5,20971520
	.loc 1 84 1
	.cfi_offset 1, -4
	.loc 1 88 21
	addi	a5,a5,257
	.loc 1 94 11
	lui	a1,%hi(device_found)
	.loc 1 88 21
	sw	a5,-24(s0)
	.loc 1 94 11
	addi	a1,a1,%lo(device_found)
	.loc 1 91 23
	li	a5,48
	.loc 1 94 11
	addi	a0,s0,-24
	.loc 1 91 23
	sh	a5,-20(s0)
	.loc 1 94 5 is_stmt 1
	.loc 1 94 11 is_stmt 0
	call	bt_le_scan_start
.LVL20:
	mv	s1,a0
.LVL21:
	.loc 1 95 5 is_stmt 1
	.loc 1 95 8 is_stmt 0
	beq	a0,zero,.L18
	.loc 1 96 9 is_stmt 1
	mv	a1,a0
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL22:
	.loc 1 97 9
.L17:
	.loc 1 102 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL23:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L18:
	.cfi_restore_state
	.loc 1 100 5 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL25:
	.loc 1 101 5
	.loc 1 101 12 is_stmt 0
	j	.L17
	.cfi_endproc
.LFE77:
	.size	ble_start_scan, .-ble_start_scan
	.section	.rodata.ble_stop_scan.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"stop scan fail %d\r\n"
	.align	2
.LC11:
	.string	"stop done\r\n"
	.section	.text.ble_stop_scan,"ax",@progbits
	.align	1
	.globl	ble_stop_scan
	.type	ble_stop_scan, @function
ble_stop_scan:
.LFB78:
	.loc 1 104 20 is_stmt 1
	.cfi_startproc
	.loc 1 105 5
	.loc 1 106 5
	.loc 1 104 20 is_stmt 0
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
	.loc 1 106 10
	call	bt_le_scan_stop
.LVL26:
	mv	s1,a0
.LVL27:
	.loc 1 107 5 is_stmt 1
	.loc 1 107 7 is_stmt 0
	beq	a0,zero,.L22
	.loc 1 108 9 is_stmt 1
	mv	a1,a0
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL28:
	.loc 1 109 9
.L21:
	.loc 1 113 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL29:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL30:
.L22:
	.cfi_restore_state
	.loc 1 111 5 is_stmt 1
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL31:
	.loc 1 112 5
	.loc 1 112 12 is_stmt 0
	j	.L21
	.cfi_endproc
.LFE78:
	.size	ble_stop_scan, .-ble_stop_scan
	.section	.rodata.adv_parse_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	" %s \r\n"
	.align	2
.LC13:
	.string	"HNN_intern"
	.align	2
.LC14:
	.string	"find target device done: %s \r\n "
	.section	.text.adv_parse_cb,"ax",@progbits
	.align	1
	.type	adv_parse_cb, @function
adv_parse_cb:
.LFB74:
	.loc 1 16 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 21 5
	.loc 1 21 28 is_stmt 0
	lbu	a5,0(a0)
	.loc 1 21 8
	li	a4,1
	.loc 1 21 28
	addi	a5,a5,-8
	.loc 1 21 8
	andi	a5,a5,0xff
	bgtu	a5,a4,.L31
	.loc 1 16 1
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
	.cfi_offset 18, -16
.LBB12:
.LBB13:
	.loc 1 24 9
	lbu	a2,1(a0)
	mv	s2,a1
.LVL33:
	.loc 1 24 9 is_stmt 1
	lw	a1,4(a0)
.LVL34:
	mv	s1,a0
	addi	a0,s0,-48
.LVL35:
	call	memcpy
.LVL36:
	.loc 1 25 9
	.loc 1 25 18 is_stmt 0
	lbu	a5,1(s1)
	.loc 1 25 30
	addi	a4,s0,-16
	.loc 1 26 9
	lui	a0,%hi(.LC12)
	.loc 1 25 30
	add	a5,a4,a5
	.loc 1 26 9
	addi	a1,s0,-48
	.loc 1 25 30
	sb	zero,-32(a5)
	.loc 1 26 9 is_stmt 1
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL37:
	.loc 1 28 9
	.loc 1 28 13 is_stmt 0
	lui	a1,%hi(.LC13)
	addi	a1,a1,%lo(.LC13)
	addi	a0,s0,-48
	call	strcmp
.LVL38:
	.loc 1 28 12
	bne	a0,zero,.L27
.LBB14:
	.loc 1 29 13 is_stmt 1
.LVL39:
	.loc 1 30 13
	lui	a0,%hi(.LC14)
	addi	a1,s0,-48
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL40:
	.loc 1 31 13
	.loc 1 31 18 is_stmt 0
	mv	a0,s2
	call	connect
.LVL41:
	.loc 1 32 13 is_stmt 1
	.loc 1 32 15 is_stmt 0
	li	a5,-1
	bne	a0,a5,.L29
	.loc 1 33 18 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL42:
	li	a1,-1
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL43:
.L29:
	.loc 1 35 13
	call	ble_stop_scan
.LVL44:
	.loc 1 36 13
.L27:
.LBE14:
.LBE13:
.LBE12:
	.loc 1 40 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL45:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL46:
	li	a0,1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL47:
.L31:
	li	a0,1
.LVL48:
	ret
	.cfi_endproc
.LFE74:
	.size	adv_parse_cb, .-adv_parse_cb
	.section	.text.test_ble_master,"ax",@progbits
	.align	1
	.globl	test_ble_master
	.type	test_ble_master, @function
test_ble_master:
.LFB79:
	.loc 1 152 27 is_stmt 1
	.cfi_startproc
	.loc 1 156 5
	.loc 1 152 27 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 158 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 156 5
	tail	ble_start_scan
.LVL49:
	.cfi_endproc
.LFE79:
	.size	test_ble_master, .-test_ble_master
	.section	.sdata.conn_param_bl.0,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	conn_param_bl.0, @object
	.size	conn_param_bl.0, 8
conn_param_bl.0:
	.half	24
	.half	40
	.half	0
	.half	400
	.text
.Letext0:
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/conn.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7b9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x38
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x15
	.byte	0x17
	.4byte	0x60
	.byte	0x5
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x16
	.byte	0x18
	.4byte	0x67
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0xb4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x8
	.4byte	.LASF22
	.byte	0xc
	.byte	0x6
	.byte	0x60
	.byte	0x8
	.4byte	0xfd
	.byte	0x9
	.4byte	.LASF15
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0xfd
	.byte	0
	.byte	0xa
	.string	"len"
	.byte	0x6
	.byte	0x65
	.byte	0x8
	.4byte	0xa0
	.byte	0x4
	.byte	0x9
	.4byte	.LASF16
	.byte	0x6
	.byte	0x68
	.byte	0x8
	.4byte	0xa0
	.byte	0x6
	.byte	0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x6d
	.byte	0x8
	.4byte	0xfd
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8f
	.byte	0xb
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.byte	0x9
	.4byte	0x11a
	.byte	0xa
	.string	"val"
	.byte	0x7
	.byte	0x1a
	.byte	0x7
	.4byte	0x11a
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	0x8f
	.4byte	0x12a
	.byte	0xd
	.4byte	0x7c
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x1b
	.byte	0x3
	.4byte	0x103
	.byte	0xb
	.byte	0x7
	.byte	0x7
	.byte	0x1e
	.byte	0x9
	.4byte	0x158
	.byte	0x9
	.4byte	.LASF19
	.byte	0x7
	.byte	0x1f
	.byte	0x7
	.4byte	0x8f
	.byte	0
	.byte	0xa
	.string	"a"
	.byte	0x7
	.byte	0x20
	.byte	0xc
	.4byte	0x12a
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x21
	.byte	0x3
	.4byte	0x136
	.byte	0x5
	.4byte	0x158
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.byte	0x7
	.byte	0x4
	.4byte	0xbb
	.byte	0x8
	.4byte	.LASF23
	.byte	0x8
	.byte	0x2
	.byte	0xd6
	.byte	0x8
	.4byte	0x1ab
	.byte	0x9
	.4byte	.LASF19
	.byte	0x2
	.byte	0xd7
	.byte	0x7
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x2
	.byte	0xd8
	.byte	0x7
	.4byte	0x8f
	.byte	0x1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0xd9
	.byte	0xe
	.4byte	0x1ab
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0x7
	.byte	0x4
	.4byte	0x164
	.byte	0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x2
	.2byte	0x1a2
	.byte	0x6
	.4byte	0x1d9
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf
	.4byte	.LASF26
	.byte	0x2
	.byte	0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0
	.byte	0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x2
	.2byte	0x1ad
	.byte	0x6
	.4byte	0x1f5
	.byte	0xf
	.4byte	.LASF28
	.byte	0
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0
	.byte	0x10
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2
	.2byte	0x1b6
	.byte	0x8
	.4byte	0x23c
	.byte	0x11
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x1b8
	.byte	0x7
	.4byte	0x8f
	.byte	0
	.byte	0x11
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x1bb
	.byte	0x7
	.4byte	0x8f
	.byte	0x1
	.byte	0x11
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x1be
	.byte	0x8
	.4byte	0xa0
	.byte	0x2
	.byte	0x11
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x1c1
	.byte	0x8
	.4byte	0xa0
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x242
	.byte	0x12
	.4byte	.LASF63
	.byte	0x8
	.4byte	.LASF34
	.byte	0x8
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.4byte	0x289
	.byte	0x9
	.4byte	.LASF35
	.byte	0x8
	.byte	0x22
	.byte	0x8
	.4byte	0xa0
	.byte	0
	.byte	0x9
	.4byte	.LASF36
	.byte	0x8
	.byte	0x23
	.byte	0x8
	.4byte	0xa0
	.byte	0x2
	.byte	0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x24
	.byte	0x8
	.4byte	0xa0
	.byte	0x4
	.byte	0x9
	.4byte	.LASF38
	.byte	0x8
	.byte	0x25
	.byte	0x8
	.4byte	0xa0
	.byte	0x6
	.byte	0
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0xb
	.byte	0x18
	.4byte	0x23c
	.byte	0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x98
	.byte	0x6
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b5
	.byte	0x15
	.4byte	.LVL49
	.4byte	0x319
	.byte	0
	.byte	0x16
	.4byte	.LASF39
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x319
	.byte	0x17
	.string	"err"
	.byte	0x1
	.byte	0x69
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x18
	.4byte	.LVL26
	.4byte	0x74c
	.byte	0x19
	.4byte	.LVL28
	.4byte	0x759
	.4byte	0x305
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL31
	.4byte	0x759
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x53
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a0
	.byte	0x17
	.string	"err"
	.byte	0x1
	.byte	0x55
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST9
	.byte	0x1c
	.4byte	.LASF41
	.byte	0x1
	.byte	0x57
	.byte	0x1d
	.4byte	0x1f5
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x19
	.4byte	.LVL20
	.4byte	0x765
	.4byte	0x36f
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	device_found
	.byte	0
	.byte	0x19
	.4byte	.LVL22
	.4byte	0x759
	.4byte	0x38c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL25
	.4byte	0x759
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF65
	.byte	0x1
	.byte	0x47
	.byte	0xd
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x417
	.byte	0x1e
	.4byte	.LASF42
	.byte	0x1
	.byte	0x47
	.byte	0x2e
	.4byte	0x1b1
	.4byte	.LLST0
	.byte	0x1e
	.4byte	.LASF43
	.byte	0x1
	.byte	0x47
	.byte	0x3b
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x1e
	.4byte	.LASF19
	.byte	0x1
	.byte	0x48
	.byte	0x21
	.4byte	0x54
	.4byte	.LLST2
	.byte	0x1f
	.string	"ad"
	.byte	0x1
	.byte	0x48
	.byte	0x3e
	.4byte	0x170
	.4byte	.LLST3
	.byte	0x20
	.4byte	.LVL4
	.4byte	0x772
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adv_parse_cb
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x559
	.byte	0x1e
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2a
	.byte	0x1b
	.4byte	0x559
	.4byte	.LLST4
	.byte	0x1c
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2b
	.byte	0x24
	.4byte	0x247
	.byte	0x5
	.byte	0x3
	.4byte	conn_param_bl.0
	.byte	0x21
	.string	"mac"
	.byte	0x1
	.byte	0x31
	.byte	0xa
	.4byte	0x55f
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x17
	.string	"err"
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x22
	.4byte	0x5d5
	.4byte	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x50b
	.byte	0x23
	.4byte	0x601
	.4byte	.LLST6
	.byte	0x23
	.4byte	0x5f4
	.4byte	.LLST7
	.byte	0x23
	.4byte	0x5e7
	.4byte	.LLST8
	.byte	0x24
	.4byte	.Ldebug_ranges0+0
	.byte	0x25
	.4byte	0x60e
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x19
	.4byte	.LVL12
	.4byte	0x77f
	.4byte	0x4c2
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL14
	.4byte	0x78b
	.4byte	0x4eb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x4e
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x1a
	.byte	0x2
	.byte	0x72
	.byte	0x4
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL18
	.4byte	0x78b
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x798
	.4byte	0x528
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x19
	.4byte	.LVL8
	.4byte	0x759
	.4byte	0x53f
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL15
	.4byte	0x759
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x158
	.byte	0xc
	.4byte	0xb4
	.4byte	0x56f
	.byte	0xd
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.byte	0x26
	.4byte	.LASF49
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.4byte	0x169
	.byte	0x1
	.4byte	0x5bf
	.byte	0x27
	.4byte	.LASF15
	.byte	0x1
	.byte	0xf
	.byte	0x29
	.4byte	0x5bf
	.byte	0x27
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf
	.byte	0x35
	.4byte	0xac
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.4byte	0x5c5
	.byte	0x28
	.string	"err"
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x25
	.byte	0x29
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x1d
	.byte	0x21
	.4byte	0x1b1
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x176
	.byte	0xc
	.4byte	0xb4
	.4byte	0x5d5
	.byte	0xd
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x2a
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x2f3
	.byte	0x13
	.4byte	0x25
	.byte	0x3
	.4byte	0x61c
	.byte	0x2b
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x2f3
	.byte	0x39
	.4byte	0x1b1
	.byte	0x2c
	.string	"str"
	.byte	0x2
	.2byte	0x2f3
	.byte	0x45
	.4byte	0xae
	.byte	0x2c
	.string	"len"
	.byte	0x2
	.2byte	0x2f4
	.byte	0x10
	.4byte	0x83
	.byte	0x2d
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x2f6
	.byte	0x7
	.4byte	0x61c
	.byte	0
	.byte	0xc
	.4byte	0xb4
	.4byte	0x62c
	.byte	0xd
	.4byte	0x7c
	.byte	0x9
	.byte	0
	.byte	0x2e
	.4byte	0x56f
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x74c
	.byte	0x23
	.4byte	0x580
	.4byte	.LLST11
	.byte	0x23
	.4byte	0x58c
	.4byte	.LLST12
	.byte	0x2f
	.4byte	0x598
	.byte	0x2f
	.4byte	0x5a4
	.byte	0x30
	.4byte	0x56f
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.byte	0x23
	.4byte	0x58c
	.4byte	.LLST13
	.byte	0x23
	.4byte	0x580
	.4byte	.LLST14
	.byte	0x25
	.4byte	0x598
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x31
	.4byte	0x5a4
	.4byte	.LLST15
	.byte	0x32
	.4byte	0x5b0
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x700
	.byte	0x31
	.4byte	0x5b1
	.4byte	.LLST16
	.byte	0x19
	.4byte	.LVL40
	.4byte	0x759
	.4byte	0x6c5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x19
	.4byte	.LVL41
	.4byte	0x417
	.4byte	0x6d9
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL43
	.4byte	0x759
	.4byte	0x6f6
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x18
	.4byte	.LVL44
	.4byte	0x2b5
	.byte	0
	.byte	0x19
	.4byte	.LVL36
	.4byte	0x7a4
	.4byte	0x714
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x19
	.4byte	.LVL37
	.4byte	0x759
	.4byte	0x731
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x1b
	.4byte	.LVL38
	.4byte	0x7b0
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x1fc
	.byte	0x5
	.byte	0x34
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x33
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x1f2
	.byte	0x5
	.byte	0x33
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x23f
	.byte	0x6
	.byte	0x34
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0xa
	.byte	0x26
	.byte	0x7
	.byte	0x33
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.2byte	0x10a
	.byte	0x5
	.byte	0x34
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.byte	0xff
	.byte	0x11
	.byte	0x34
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xa
	.byte	0x1f
	.byte	0x8
	.byte	0x34
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xa
	.byte	0x24
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0xb
	.byte	0x1
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE78
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE77
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
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4-1
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x4e
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE75
	.2byte	0x2
	.byte	0x4e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x78
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x78
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE75
	.2byte	0x3
	.byte	0x78
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE74
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"conn_param_bl"
.LASF22:
	.string	"net_buf_simple"
.LASF42:
	.string	"addr"
.LASF15:
	.string	"data"
.LASF4:
	.string	"int8_t"
.LASF64:
	.string	"test_ble_master"
.LASF1:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF40:
	.string	"ble_start_scan"
.LASF41:
	.string	"scan_param"
.LASF58:
	.string	"memcpy"
.LASF46:
	.string	"user_data"
.LASF5:
	.string	"uint8_t"
.LASF28:
	.string	"BT_LE_SCAN_TYPE_PASSIVE"
.LASF36:
	.string	"interval_max"
.LASF17:
	.string	"__buf"
.LASF62:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/ble"
.LASF39:
	.string	"ble_stop_scan"
.LASF3:
	.string	"long long int"
.LASF35:
	.string	"interval_min"
.LASF29:
	.string	"BT_LE_SCAN_TYPE_ACTIVE"
.LASF2:
	.string	"long int"
.LASF52:
	.string	"printf"
.LASF47:
	.string	"conn_mater_cur"
.LASF34:
	.string	"bt_le_conn_param"
.LASF24:
	.string	"data_len"
.LASF49:
	.string	"adv_parse_cb"
.LASF30:
	.string	"bt_le_scan_param"
.LASF56:
	.string	"snprintf"
.LASF48:
	.string	"name"
.LASF44:
	.string	"connect"
.LASF63:
	.string	"bt_conn"
.LASF6:
	.string	"unsigned char"
.LASF18:
	.string	"bt_addr_t"
.LASF53:
	.string	"bt_le_scan_start"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF31:
	.string	"filter_dup"
.LASF19:
	.string	"type"
.LASF65:
	.string	"device_found"
.LASF10:
	.string	"unsigned int"
.LASF57:
	.string	"bt_conn_create_le"
.LASF13:
	.string	"u16_t"
.LASF27:
	.string	"BT_LE_SCAN_FILTER_EXTENDED"
.LASF7:
	.string	"short unsigned int"
.LASF51:
	.string	"bt_le_scan_stop"
.LASF14:
	.string	"char"
.LASF55:
	.string	"strcpy"
.LASF21:
	.string	"_Bool"
.LASF16:
	.string	"size"
.LASF38:
	.string	"timeout"
.LASF50:
	.string	"bt_addr_le_to_str"
.LASF23:
	.string	"bt_data"
.LASF8:
	.string	"long unsigned int"
.LASF25:
	.string	"BT_LE_SCAN_FILTER_DUPLICATE"
.LASF43:
	.string	"rssi"
.LASF32:
	.string	"interval"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF12:
	.string	"u8_t"
.LASF59:
	.string	"strcmp"
.LASF20:
	.string	"bt_addr_le_t"
.LASF33:
	.string	"window"
.LASF54:
	.string	"bt_data_parse"
.LASF26:
	.string	"BT_LE_SCAN_FILTER_WHITELIST"
.LASF61:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_master.c"
.LASF37:
	.string	"latency"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
