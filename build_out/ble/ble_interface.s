	.file	"ble_interface.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bt_enable_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	">>>MAC: %02x:%02x:%02x:%02x:%02x:%02x \r\n"
	.section	.text.bt_enable_cb,"ax",@progbits
	.align	1
	.type	bt_enable_cb, @function
bt_enable_cb:
.LFB69:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_interface.c"
	.loc 1 22 1
	.cfi_startproc
.LVL0:
	.loc 1 23 5
	.loc 1 23 8 is_stmt 0
	bne	a0,zero,.L4
.LVL1:
.LBB6:
.LBB7:
.LBB8:
	.loc 1 25 9 is_stmt 1
	.loc 1 26 9
.LBE8:
.LBE7:
.LBE6:
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB11:
.LBB10:
.LBB9:
	.loc 1 26 9
	addi	a0,s0,-24
.LVL2:
	call	bt_get_local_public_address
.LVL3:
	.loc 1 27 9 is_stmt 1
	.loc 1 28 9
	.loc 1 29 9
	.loc 1 30 9
	.loc 1 31 9
	.loc 1 32 9
	.loc 1 31 26 is_stmt 0
	li	a5,-28672
	.loc 1 32 26
	li	a4,-120
	.loc 1 31 26
	addi	a5,a5,-1912
	.loc 1 33 9
	lui	a0,%hi(.LC0)
	.loc 1 32 26
	sb	a4,-23(s0)
	.loc 1 31 26
	sh	a5,-22(s0)
	.loc 1 29 26
	sh	a5,-20(s0)
	.loc 1 27 26
	sb	a4,-18(s0)
	.loc 1 33 9 is_stmt 1
	li	a6,136
	li	a5,136
	li	a4,136
	li	a3,136
	li	a2,136
	li	a1,136
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL4:
.LBE9:
.LBE10:
.LBE11:
	.loc 1 36 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L4:
	ret
	.cfi_endproc
.LFE69:
	.size	bt_enable_cb, .-bt_enable_cb
	.section	.text.ble_stack_init,"ax",@progbits
	.align	1
	.globl	ble_stack_init
	.type	ble_stack_init, @function
ble_stack_init:
.LFB70:
	.loc 1 40 1 is_stmt 1
	.cfi_startproc
	.loc 1 42 5
	.loc 1 40 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 42 5
	li	a0,31
	call	ble_controller_init
.LVL6:
	.loc 1 45 5 is_stmt 1
	call	hci_driver_init
.LVL7:
	.loc 1 46 5
	.loc 1 48 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 46 5
	lui	a0,%hi(bt_enable_cb)
	.loc 1 48 1
	.loc 1 46 5
	addi	a0,a0,%lo(bt_enable_cb)
	.loc 1 48 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 46 5
	tail	bt_enable
.LVL8:
	.cfi_endproc
.LFE70:
	.size	ble_stack_init, .-ble_stack_init
	.section	.rodata.ble_test_adv.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"HNN_intern"
	.align	2
.LC2:
	.string	">>> Device name: %s\r\n"
	.section	.text.ble_test_adv,"ax",@progbits
	.align	1
	.globl	ble_test_adv
	.type	ble_test_adv, @function
ble_test_adv:
.LFB71:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 51 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 53 9
	call	ble_adv_start
.LVL9:
	.loc 1 53 8
	bne	a0,zero,.L9
	.loc 1 54 9 is_stmt 1
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL10:
	.loc 1 55 9
	.loc 1 58 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 55 9
	tail	ble_conn_init
.LVL11:
.L9:
	.cfi_restore_state
	.loc 1 58 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE71:
	.size	ble_test_adv, .-ble_test_adv
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_adv.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_conn.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blecontroller/ble_inc/ble_lib_api.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x283
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x15
	.byte	0x17
	.4byte	0x2c
	.byte	0x5
	.byte	0x6
	.byte	0x3
	.byte	0x19
	.byte	0x9
	.4byte	0x95
	.byte	0x6
	.string	"val"
	.byte	0x3
	.byte	0x1a
	.byte	0x7
	.4byte	0x95
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0x72
	.4byte	0xa5
	.byte	0x8
	.4byte	0x64
	.byte	0x5
	.byte	0
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1b
	.byte	0x3
	.4byte	0x7e
	.byte	0x5
	.byte	0x7
	.byte	0x3
	.byte	0x1e
	.byte	0x9
	.4byte	0xd3
	.byte	0x9
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1f
	.byte	0x7
	.4byte	0x72
	.byte	0
	.byte	0x6
	.string	"a"
	.byte	0x3
	.byte	0x20
	.byte	0xc
	.4byte	0xa5
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.byte	0x3
	.4byte	0xb1
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x1
	.byte	0x9c
	.4byte	0x12f
	.byte	0xb
	.4byte	.LVL9
	.4byte	0x231
	.byte	0xc
	.4byte	.LVL10
	.4byte	0x23d
	.4byte	0x125
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xe
	.4byte	.LVL11
	.4byte	0x249
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x175
	.byte	0xc
	.4byte	.LVL6
	.4byte	0x255
	.4byte	0x158
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0xb
	.4byte	.LVL7
	.4byte	0x261
	.byte	0xf
	.4byte	.LVL8
	.4byte	0x26d
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	bt_enable_cb
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.byte	0x1
	.4byte	0x19d
	.byte	0x11
	.string	"err"
	.byte	0x1
	.byte	0x15
	.byte	0x1e
	.4byte	0x5d
	.byte	0x12
	.byte	0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x19
	.byte	0x16
	.4byte	0xd3
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	0x175
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x231
	.byte	0x15
	.4byte	0x182
	.4byte	.LLST0
	.byte	0x16
	.4byte	0x175
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.byte	0x15
	.4byte	0x182
	.4byte	.LLST1
	.byte	0x17
	.4byte	0x18e
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x18
	.4byte	0x18f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xc
	.4byte	.LVL3
	.4byte	0x279
	.4byte	0x1f7
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0x19
	.4byte	.LVL4
	.4byte	0x23d
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0xd
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0xd
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0xd
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0xd
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x4
	.byte	0x6
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0x9
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x7
	.byte	0x7
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x8
	.byte	0xc3
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x9
	.byte	0x43
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0xa
	.2byte	0x117
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0xb
	.byte	0x1
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"bt_addr_t"
.LASF17:
	.string	"ble_adv_start"
.LASF24:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF25:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_interface.c"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"ble_conn_init"
.LASF16:
	.string	"ble_stack_init"
.LASF26:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/ble"
.LASF15:
	.string	"ble_test_adv"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF13:
	.string	"bt_addr_le_t"
.LASF8:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF28:
	.string	"bt_addr"
.LASF10:
	.string	"u8_t"
.LASF6:
	.string	"long long int"
.LASF18:
	.string	"printf"
.LASF12:
	.string	"type"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"ble_controller_init"
.LASF4:
	.string	"long int"
.LASF27:
	.string	"bt_enable_cb"
.LASF22:
	.string	"bt_enable"
.LASF23:
	.string	"bt_get_local_public_address"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"hci_driver_init"
.LASF14:
	.string	"_Bool"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
