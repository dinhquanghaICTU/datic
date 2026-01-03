	.file	"hci_driver.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hci_driver_open.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"recv_thread"
	.section	.text.hci_driver_open,"ax",@progbits
	.align	1
	.type	hci_driver_open, @function
hci_driver_open:
.LFB89:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/hci_onchip/hci_driver.c"
	.loc 1 446 1
	.cfi_startproc
	.loc 1 469 5
	.loc 1 446 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 469 5
	lui	a0,%hi(.LANCHOR0)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 446 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 469 5
	li	a1,20
	addi	a0,a0,%lo(.LANCHOR0)
	call	k_queue_init
.LVL0:
	.loc 1 473 5 is_stmt 1
	lui	a3,%hi(recv_thread)
	li	a2,4096
	lui	a1,%hi(.LC0)
	lui	a0,%hi(recv_thread_data)
	li	a4,28
	addi	a3,a3,%lo(recv_thread)
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(recv_thread_data)
	call	k_thread_create
.LVL1:
	.loc 1 485 2
	.loc 1 487 2
	.loc 1 488 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	hci_driver_open, .-hci_driver_open
	.section	.text.recv_thread,"ax",@progbits
	.align	1
	.type	recv_thread, @function
recv_thread:
.LFB87:
	.loc 1 291 1 is_stmt 1
	.cfi_startproc
.LVL2:
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
.LBB2:
	.loc 1 308 16 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
.LVL3:
.L5:
.LBE2:
	.loc 1 292 5 is_stmt 1
	.loc 1 305 2
.LBB3:
	.loc 1 307 10
	.loc 1 308 10
	.loc 1 308 16 is_stmt 0
	li	a1,-1
	addi	a0,s1,%lo(.LANCHOR0)
	call	net_buf_get
.LVL4:
	.loc 1 309 10 is_stmt 1
	.loc 1 309 12 is_stmt 0
	beq	a0,zero,.L4
	.loc 1 310 13 is_stmt 1
	.loc 1 311 13
	call	bt_recv
.LVL5:
.L4:
	.loc 1 356 9
	call	k_yield
.LVL6:
.LBE3:
	.loc 1 305 8
	.loc 1 305 12 is_stmt 0
	j	.L5
	.cfi_endproc
.LFE87:
	.size	recv_thread, .-recv_thread
	.section	.rodata.hci_driver_send.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"Empty HCI packet, %s\r\n"
	.section	.text.hci_driver_send,"ax",@progbits
	.align	1
	.type	hci_driver_send, @function
hci_driver_send:
.LFB88:
	.loc 1 398 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 402 2
	.loc 1 404 2
	.loc 1 406 2
	.loc 1 398 1 is_stmt 0
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
	.loc 1 406 5
	lhu	a5,12(a0)
	bne	a5,zero,.L11
.LVL8:
.LBB6:
.LBB7:
	.loc 1 407 3 is_stmt 1
	lui	a1,%hi(.LANCHOR1)
	lui	a0,%hi(.LC1)
.LVL9:
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL10:
	.loc 1 408 3
	.loc 1 407 3 is_stmt 0
	li	s1,-22
.L10:
.LBE7:
.LBE6:
	.loc 1 443 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s2,0(sp)
	.cfi_restore 18
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L11:
	.cfi_restore_state
	mv	s2,a0
	.loc 1 412 5 is_stmt 1
	.loc 1 412 11 is_stmt 0
	call	bl_onchiphci_send_2_controller
.LVL12:
	mv	s1,a0
.LVL13:
	.loc 1 413 5 is_stmt 1
	mv	a0,s2
	call	net_buf_unref
.LVL14:
	.loc 1 414 5
	.loc 1 414 12 is_stmt 0
	j	.L10
	.cfi_endproc
.LFE88:
	.size	hci_driver_send, .-hci_driver_send
	.section	.text.hci_driver_enque_recvq,"ax",@progbits
	.align	1
	.globl	hci_driver_enque_recvq
	.type	hci_driver_enque_recvq, @function
hci_driver_enque_recvq:
.LFB90:
	.loc 1 491 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 492 5
	.loc 1 491 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 497 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 491 1
	mv	a1,a0
	.loc 1 492 5
	lui	a0,%hi(.LANCHOR0)
.LVL16:
	.loc 1 497 1
	.loc 1 492 5
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 497 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 492 5
	tail	net_buf_put
.LVL17:
	.cfi_endproc
.LFE90:
	.size	hci_driver_enque_recvq, .-hci_driver_enque_recvq
	.section	.text.hci_driver_init,"ax",@progbits
	.align	1
	.globl	hci_driver_init
	.type	hci_driver_init, @function
hci_driver_init:
.LFB91:
	.loc 1 508 1 is_stmt 1
	.cfi_startproc
	.loc 1 510 2
	.loc 1 508 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 510 2
	lui	a0,%hi(.LANCHOR2)
	.loc 1 508 1
	.loc 1 510 2
	addi	a0,a0,%lo(.LANCHOR2)
	call	bt_hci_driver_register
.LVL18:
	.loc 1 512 2 is_stmt 1
	.loc 1 513 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE91:
	.size	hci_driver_init, .-hci_driver_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"Controller"
	.comm	recv_thread_data,4,4
	.globl	recv_fifo
	.section	._k_queue.static.recv_fifo,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	recv_fifo, @object
	.size	recv_fifo, 12
recv_fifo:
	.zero	12
	.section	.rodata.__func__.0,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"hci_driver_send"
	.section	.rodata.drv,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	drv, @object
	.size	drv, 20
drv:
	.word	.LC2
	.word	0
	.zero	4
	.word	hci_driver_open
	.word	hci_driver_send
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/slist.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/misc/dlist.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/bl_port.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/net/buf.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/drivers/bluetooth/hci_driver.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/bl_hci_wrapper/bl_hci_wrapper.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6e9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x6d
	.byte	0x6
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x56
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x15
	.byte	0x17
	.4byte	0x3a
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x16
	.byte	0x18
	.4byte	0x48
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x17
	.byte	0x12
	.4byte	0x7f
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x8
	.4byte	0xca
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1d
	.byte	0x11
	.4byte	0xca
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xaf
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x20
	.byte	0x17
	.4byte	0xaf
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0x1e
	.byte	0x2
	.4byte	0xfe
	.byte	0xb
	.4byte	.LASF15
	.byte	0x5
	.byte	0x1f
	.byte	0x12
	.4byte	0x118
	.byte	0xb
	.4byte	.LASF16
	.byte	0x5
	.byte	0x20
	.byte	0x12
	.4byte	0x118
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x8
	.byte	0x5
	.byte	0x1d
	.byte	0x8
	.4byte	0x118
	.byte	0xc
	.4byte	0xdc
	.byte	0
	.byte	0xc
	.4byte	0x11e
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xfe
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0x22
	.byte	0x2
	.4byte	0x140
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x23
	.byte	0x12
	.4byte	0x118
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x24
	.byte	0x12
	.4byte	0x118
	.byte	0
	.byte	0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x28
	.byte	0x17
	.4byte	0xfe
	.byte	0x7
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1e
	.byte	0x12
	.4byte	0x7f
	.byte	0x8
	.4byte	.LASF23
	.byte	0xc
	.byte	0x6
	.byte	0x36
	.byte	0x8
	.4byte	0x180
	.byte	0xd
	.string	"hdl"
	.byte	0x6
	.byte	0x37
	.byte	0xf
	.4byte	0x6b
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x38
	.byte	0x15
	.4byte	0x140
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	.LASF25
	.byte	0xc
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x19b
	.byte	0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x63
	.byte	0x18
	.4byte	0x158
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF27
	.byte	0x4
	.byte	0x6
	.byte	0xd9
	.byte	0x8
	.4byte	0x1b6
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xda
	.byte	0xd
	.4byte	0x14c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x36
	.byte	0x6
	.4byte	0x1e7
	.byte	0xf
	.4byte	.LASF29
	.byte	0
	.byte	0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf
	.4byte	.LASF31
	.byte	0x2
	.byte	0xf
	.4byte	.LASF32
	.byte	0x3
	.byte	0xf
	.4byte	.LASF33
	.byte	0x4
	.byte	0
	.byte	0xe
	.4byte	.LASF35
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x40
	.byte	0x6
	.4byte	0x218
	.byte	0xf
	.4byte	.LASF36
	.byte	0
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf
	.4byte	.LASF38
	.byte	0x2
	.byte	0xf
	.4byte	.LASF39
	.byte	0x3
	.byte	0xf
	.4byte	.LASF40
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	.LASF41
	.byte	0xc
	.byte	0x8
	.byte	0x60
	.byte	0x8
	.4byte	0x25a
	.byte	0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.4byte	0x25a
	.byte	0
	.byte	0xd
	.string	"len"
	.byte	0x8
	.byte	0x65
	.byte	0x8
	.4byte	0x97
	.byte	0x4
	.byte	0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x68
	.byte	0x8
	.4byte	0x97
	.byte	0x6
	.byte	0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x6d
	.byte	0x8
	.4byte	0x25a
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8b
	.byte	0x10
	.byte	0x4
	.byte	0x8
	.2byte	0x235
	.byte	0x2
	.4byte	0x285
	.byte	0x11
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x237
	.byte	0xf
	.4byte	0xd0
	.byte	0x11
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x23a
	.byte	0x13
	.4byte	0x2da
	.byte	0
	.byte	0x12
	.4byte	.LASF81
	.byte	0x20
	.byte	0x4
	.byte	0x8
	.2byte	0x234
	.byte	0x8
	.4byte	0x2da
	.byte	0xc
	.4byte	0x260
	.byte	0
	.byte	0x13
	.string	"ref"
	.byte	0x8
	.2byte	0x23e
	.byte	0x7
	.4byte	0x8b
	.byte	0x4
	.byte	0x14
	.4byte	.LASF47
	.byte	0x8
	.2byte	0x241
	.byte	0x7
	.4byte	0x8b
	.byte	0x5
	.byte	0x14
	.4byte	.LASF48
	.byte	0x8
	.2byte	0x244
	.byte	0x7
	.4byte	0x8b
	.byte	0x6
	.byte	0xc
	.4byte	0x323
	.byte	0x8
	.byte	0x15
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x260
	.byte	0x7
	.4byte	0x33e
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x285
	.byte	0x16
	.byte	0xc
	.byte	0x8
	.2byte	0x24b
	.byte	0x3
	.4byte	0x323
	.byte	0x14
	.4byte	.LASF42
	.byte	0x8
	.2byte	0x24d
	.byte	0xa
	.4byte	0x25a
	.byte	0
	.byte	0x13
	.string	"len"
	.byte	0x8
	.2byte	0x250
	.byte	0xa
	.4byte	0x97
	.byte	0x4
	.byte	0x14
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x253
	.byte	0xa
	.4byte	0x97
	.byte	0x6
	.byte	0x14
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x259
	.byte	0xa
	.4byte	0x25a
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0xc
	.byte	0x8
	.2byte	0x249
	.byte	0x2
	.4byte	0x33e
	.byte	0x17
	.4byte	0x2e0
	.byte	0x18
	.string	"b"
	.byte	0x8
	.2byte	0x25c
	.byte	0x19
	.4byte	0x218
	.byte	0
	.byte	0x19
	.4byte	0x8b
	.4byte	0x34e
	.byte	0x1a
	.4byte	0x2c
	.byte	0x9
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF49
	.byte	0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x62
	.byte	0x6
	.4byte	0x3a4
	.byte	0xf
	.4byte	.LASF51
	.byte	0
	.byte	0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0xf
	.4byte	.LASF53
	.byte	0x2
	.byte	0xf
	.4byte	.LASF54
	.byte	0x3
	.byte	0xf
	.4byte	.LASF55
	.byte	0x4
	.byte	0xf
	.4byte	.LASF56
	.byte	0x5
	.byte	0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0xf
	.4byte	.LASF58
	.byte	0x7
	.byte	0xf
	.4byte	.LASF59
	.byte	0x8
	.byte	0xf
	.4byte	.LASF60
	.byte	0x9
	.byte	0
	.byte	0x8
	.4byte	.LASF61
	.byte	0x14
	.byte	0x9
	.byte	0x75
	.byte	0x8
	.4byte	0x3f3
	.byte	0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0x77
	.byte	0xe
	.4byte	0x79
	.byte	0
	.byte	0xd
	.string	"bus"
	.byte	0x9
	.byte	0x7a
	.byte	0x19
	.4byte	0x355
	.byte	0x4
	.byte	0x9
	.4byte	.LASF63
	.byte	0x9
	.byte	0x81
	.byte	0x8
	.4byte	0xa3
	.byte	0x8
	.byte	0x9
	.4byte	.LASF64
	.byte	0x9
	.byte	0x90
	.byte	0x8
	.4byte	0x3fd
	.byte	0xc
	.byte	0x9
	.4byte	.LASF65
	.byte	0x9
	.byte	0x9e
	.byte	0x8
	.4byte	0x412
	.byte	0x10
	.byte	0
	.byte	0x5
	.4byte	0x3a4
	.byte	0x1b
	.4byte	0x25
	.byte	0x6
	.byte	0x4
	.4byte	0x3f8
	.byte	0x1c
	.4byte	0x25
	.4byte	0x412
	.byte	0x1d
	.4byte	0x2da
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x403
	.byte	0x1e
	.4byte	.LASF66
	.byte	0x1
	.byte	0x35
	.byte	0xf
	.4byte	0x180
	.byte	0x5
	.byte	0x3
	.4byte	recv_fifo
	.byte	0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x3c
	.byte	0x11
	.4byte	0x19b
	.byte	0x5
	.byte	0x3
	.4byte	recv_thread_data
	.byte	0x1f
	.string	"drv"
	.byte	0x1
	.2byte	0x1f3
	.byte	0x23
	.4byte	0x3f3
	.byte	0x5
	.byte	0x3
	.4byte	drv
	.byte	0x20
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1fb
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x1
	.byte	0x9c
	.4byte	0x47e
	.byte	0x21
	.4byte	.LVL18
	.4byte	0x671
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1ea
	.byte	0x6
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c1
	.byte	0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x1ea
	.byte	0x2d
	.4byte	0x2da
	.4byte	.LLST4
	.byte	0x25
	.4byte	.LVL17
	.4byte	0x67d
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1bd
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x1
	.byte	0x9c
	.4byte	0x52a
	.byte	0x27
	.4byte	.LVL0
	.4byte	0x68a
	.4byte	0x4f8
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x21
	.4byte	.LVL1
	.4byte	0x696
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	recv_thread_data
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	recv_thread
	.byte	0x22
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x18d
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x566
	.byte	0x29
	.string	"buf"
	.byte	0x1
	.2byte	0x18d
	.byte	0x2c
	.4byte	0x2da
	.byte	0x2a
	.string	"err"
	.byte	0x1
	.2byte	0x192
	.byte	0x6
	.4byte	0x25
	.byte	0x2b
	.4byte	.LASF87
	.4byte	0x576
	.byte	0x5
	.byte	0x3
	.4byte	__func__.0
	.byte	0
	.byte	0x19
	.4byte	0x74
	.4byte	0x576
	.byte	0x1a
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.byte	0x5
	.4byte	0x566
	.byte	0x2c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x122
	.byte	0xd
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x1
	.byte	0x9c
	.4byte	0x5e9
	.byte	0x24
	.string	"p1"
	.byte	0x1
	.2byte	0x122
	.byte	0x1f
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0
	.byte	0x2e
	.string	"buf"
	.byte	0x1
	.2byte	0x133
	.byte	0x1a
	.4byte	0x2da
	.4byte	.LLST1
	.byte	0x27
	.4byte	.LVL4
	.4byte	0x6a2
	.4byte	0x5d5
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x2f
	.4byte	.LVL5
	.4byte	0x6af
	.byte	0x2f
	.4byte	.LVL6
	.4byte	0x6bb
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	0x52a
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x1
	.byte	0x9c
	.4byte	0x671
	.byte	0x31
	.4byte	0x53c
	.4byte	.LLST2
	.byte	0x32
	.4byte	0x549
	.byte	0x1
	.byte	0x59
	.byte	0x33
	.4byte	0x52a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.2byte	0x18d
	.byte	0xc
	.4byte	0x64c
	.byte	0x31
	.4byte	0x53c
	.4byte	.LLST3
	.byte	0x34
	.4byte	0x549
	.byte	0x21
	.4byte	.LVL10
	.4byte	0x6c7
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL12
	.4byte	0x6d3
	.4byte	0x660
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL14
	.4byte	0x6df
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x9
	.byte	0xab
	.byte	0x5
	.byte	0x36
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x420
	.byte	0x6
	.byte	0x35
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0x3f
	.byte	0x6
	.byte	0x35
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x6
	.byte	0xeb
	.byte	0x5
	.byte	0x36
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x3d6
	.byte	0x11
	.byte	0x35
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.byte	0x4c
	.byte	0x5
	.byte	0x35
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x6
	.byte	0xf6
	.byte	0x5
	.byte	0x35
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0xa
	.byte	0xc8
	.byte	0x5
	.byte	0x35
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0xb
	.byte	0x18
	.byte	0x5
	.byte	0x36
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x42f
	.byte	0x6
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xe
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
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x34
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x36
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
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LFE90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LFE88
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"_POLL_STATE_NOT_READY"
.LASF33:
	.string	"_POLL_NUM_TYPES"
.LASF22:
	.string	"_task_t"
.LASF56:
	.string	"BT_HCI_DRIVER_BUS_PCI"
.LASF14:
	.string	"sys_snode_t"
.LASF53:
	.string	"BT_HCI_DRIVER_BUS_PCCARD"
.LASF84:
	.string	"hci_driver_enque_recvq"
.LASF65:
	.string	"send"
.LASF54:
	.string	"BT_HCI_DRIVER_BUS_UART"
.LASF46:
	.string	"frags"
.LASF20:
	.string	"prev"
.LASF3:
	.string	"short int"
.LASF66:
	.string	"recv_fifo"
.LASF67:
	.string	"recv_thread_data"
.LASF28:
	.string	"task"
.LASF58:
	.string	"BT_HCI_DRIVER_BUS_SPI"
.LASF70:
	.string	"k_queue_init"
.LASF42:
	.string	"data"
.LASF80:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF82:
	.string	"user_data"
.LASF15:
	.string	"head"
.LASF59:
	.string	"BT_HCI_DRIVER_BUS_I2C"
.LASF79:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/hci_onchip/hci_driver.c"
.LASF44:
	.string	"__buf"
.LASF86:
	.string	"hci_driver_send"
.LASF60:
	.string	"BT_HCI_DRIVER_BUS_IPM"
.LASF27:
	.string	"k_thread"
.LASF7:
	.string	"long long int"
.LASF38:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF5:
	.string	"long int"
.LASF75:
	.string	"printf"
.LASF34:
	.string	"_poll_types_bits"
.LASF83:
	.string	"hci_driver_init"
.LASF24:
	.string	"poll_events"
.LASF50:
	.string	"bt_hci_driver_bus"
.LASF68:
	.string	"bt_hci_driver_register"
.LASF30:
	.string	"_POLL_TYPE_SIGNAL"
.LASF62:
	.string	"name"
.LASF73:
	.string	"bt_recv"
.LASF21:
	.string	"sys_dlist_t"
.LASF2:
	.string	"unsigned char"
.LASF19:
	.string	"tail"
.LASF52:
	.string	"BT_HCI_DRIVER_BUS_USB"
.LASF87:
	.string	"__func__"
.LASF31:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF18:
	.string	"_dnode"
.LASF29:
	.string	"_POLL_TYPE_IGNORE"
.LASF1:
	.string	"signed char"
.LASF47:
	.string	"flags"
.LASF8:
	.string	"long long unsigned int"
.LASF77:
	.string	"net_buf_unref"
.LASF10:
	.string	"uint32_t"
.LASF51:
	.string	"BT_HCI_DRIVER_BUS_VIRTUAL"
.LASF26:
	.string	"_queue"
.LASF39:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF12:
	.string	"u16_t"
.LASF81:
	.string	"net_buf"
.LASF74:
	.string	"k_yield"
.LASF76:
	.string	"bl_onchiphci_send_2_controller"
.LASF63:
	.string	"quirks"
.LASF88:
	.string	"recv_thread"
.LASF85:
	.string	"hci_driver_open"
.LASF9:
	.string	"char"
.LASF72:
	.string	"net_buf_get"
.LASF55:
	.string	"BT_HCI_DRIVER_BUS_RS232"
.LASF49:
	.string	"_Bool"
.LASF43:
	.string	"size"
.LASF4:
	.string	"short unsigned int"
.LASF6:
	.string	"long unsigned int"
.LASF17:
	.string	"_snode"
.LASF37:
	.string	"_POLL_STATE_SIGNALED"
.LASF57:
	.string	"BT_HCI_DRIVER_BUS_SDIO"
.LASF71:
	.string	"k_thread_create"
.LASF23:
	.string	"k_queue"
.LASF45:
	.string	"node"
.LASF11:
	.string	"u8_t"
.LASF13:
	.string	"u32_t"
.LASF41:
	.string	"net_buf_simple"
.LASF25:
	.string	"k_fifo"
.LASF48:
	.string	"pool_id"
.LASF64:
	.string	"open"
.LASF35:
	.string	"_poll_states_bits"
.LASF61:
	.string	"bt_hci_driver"
.LASF69:
	.string	"net_buf_put"
.LASF40:
	.string	"_POLL_NUM_STATES"
.LASF78:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF16:
	.string	"next"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
