	.file	"loopset_ir.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ir_bloop_msg,"ax",@progbits
	.align	1
	.type	_ir_bloop_msg, @function
_ir_bloop_msg:
.LFB29:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_ir.c"
	.loc 1 38 1
	.cfi_startproc
.LVL0:
	.loc 1 39 5
	.loc 1 41 5
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 42 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
.LVL1:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	_ir_bloop_msg, .-_ir_bloop_msg
	.section	.text._ir_bloop_evt,"ax",@progbits
	.align	1
	.type	_ir_bloop_evt, @function
_ir_bloop_evt:
.LFB28:
	.loc 1 23 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 24 5
	.loc 1 26 5
	.loc 1 23 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 26 12
	call	bl_receivedata
.LVL3:
	mv	a2,a0
.LVL4:
	.loc 1 27 5 is_stmt 1
	.loc 1 28 9 is_stmt 0
	li	a1,2
	.loc 1 27 8
	beq	a0,zero,.L7
	.loc 1 30 9 is_stmt 1
	li	a1,1
.L7:
	li	a0,6
.LVL5:
	call	aos_post_event
.LVL6:
	.loc 1 32 5
	call	bl_enable_rx_int
.LVL7:
	.loc 1 34 5
	.loc 1 35 1 is_stmt 0
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
.LFE28:
	.size	_ir_bloop_evt, .-_ir_bloop_evt
	.section	.text.loopset_ir_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_ir_hook_on_looprt
	.type	loopset_ir_hook_on_looprt, @function
loopset_ir_hook_on_looprt:
.LFB30:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
	.loc 1 46 5
	.loc 1 55 5
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 56 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 55 12
	lui	a0,%hi(.LANCHOR0)
	li	a1,3
	.loc 1 56 1
	.loc 1 55 12
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 56 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 55 12
	tail	looprt_handler_register
.LVL8:
	.cfi_endproc
.LFE30:
	.size	loopset_ir_hook_on_looprt, .-loopset_ir_hook_on_looprt
	.section	.text.ir_async_post,"ax",@progbits
	.align	1
	.globl	ir_async_post
	.type	ir_async_post, @function
ir_async_post:
.LFB31:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
	.loc 1 60 5
	.loc 1 59 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 63 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 60 5
	li	a1,1
	li	a0,3
	.loc 1 63 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 60 5
	tail	looprt_evt_notify_async_fromISR
.LVL9:
	.cfi_endproc
.LFE31:
	.size	ir_async_post, .-ir_async_post
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"IR Trigger"
	.section	.rodata._ir_bloop_handler_holder.0,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ir_bloop_handler_holder.0, @object
	.size	_ir_bloop_handler_holder.0, 12
_ir_bloop_handler_holder.0:
	.word	.LC0
	.word	_ir_bloop_evt
	.word	_ir_bloop_msg
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/bloop/include/bloop.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/looprt/include/looprt.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_ir.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x549
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0x91
	.byte	0x6
	.byte	0x4
	.4byte	0x97
	.byte	0x7
	.4byte	.LASF69
	.byte	0x6
	.byte	0x4
	.4byte	0xa9
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x8
	.4byte	0xa2
	.byte	0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0x8
	.4byte	0xc9
	.byte	0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x13
	.byte	0x1c
	.4byte	0xc9
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xae
	.byte	0x9
	.4byte	.LASF14
	.byte	0x8
	.byte	0x4
	.byte	0x16
	.byte	0x8
	.4byte	0xf7
	.byte	0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x19
	.byte	0x1c
	.4byte	0xc9
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1b
	.byte	0x1c
	.4byte	0xc9
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4
	.2byte	0x103
	.byte	0x10
	.4byte	0x122
	.byte	0xc
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x104
	.byte	0x1b
	.4byte	0x122
	.byte	0
	.byte	0xc
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x105
	.byte	0x1b
	.4byte	0x122
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xf7
	.byte	0xd
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x106
	.byte	0x3
	.4byte	0xf7
	.byte	0xe
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x9
	.4byte	0x173
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x12
	.byte	0x15
	.4byte	0x4f
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x13
	.byte	0x15
	.4byte	0x4f
	.byte	0x1
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x14
	.byte	0x15
	.4byte	0x4f
	.byte	0x2
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x15
	.byte	0x15
	.4byte	0x4f
	.byte	0x3
	.byte	0
	.byte	0xf
	.byte	0x4
	.byte	0x5
	.byte	0xf
	.byte	0x5
	.4byte	0x195
	.byte	0x10
	.4byte	.LASF25
	.byte	0x5
	.byte	0x10
	.byte	0xf
	.4byte	0x83
	.byte	0x10
	.4byte	.LASF26
	.byte	0x5
	.byte	0x16
	.byte	0xb
	.4byte	0x135
	.byte	0
	.byte	0x9
	.4byte	.LASF27
	.byte	0x18
	.byte	0x5
	.byte	0xd
	.byte	0x8
	.4byte	0x1ef
	.byte	0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0xe
	.byte	0x1b
	.4byte	0xae
	.byte	0
	.byte	0x11
	.string	"u"
	.byte	0x5
	.byte	0x17
	.byte	0x7
	.4byte	0x173
	.byte	0x4
	.byte	0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x18
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x19
	.byte	0xb
	.4byte	0x83
	.byte	0xc
	.byte	0xa
	.4byte	.LASF31
	.byte	0x5
	.byte	0x1a
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x1b
	.byte	0x12
	.4byte	0x2c
	.byte	0x14
	.byte	0
	.byte	0x9
	.4byte	.LASF33
	.byte	0x10
	.byte	0x5
	.byte	0x1e
	.byte	0x8
	.4byte	0x231
	.byte	0xa
	.4byte	.LASF34
	.byte	0x5
	.byte	0x1f
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x20
	.byte	0x12
	.4byte	0x2c
	.byte	0x4
	.byte	0xa
	.4byte	.LASF35
	.byte	0x5
	.byte	0x21
	.byte	0x12
	.4byte	0x2c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF36
	.byte	0x5
	.byte	0x22
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	.LASF37
	.byte	0xc
	.byte	0x5
	.byte	0x25
	.byte	0x8
	.4byte	0x266
	.byte	0xa
	.4byte	.LASF38
	.byte	0x5
	.byte	0x26
	.byte	0x11
	.4byte	0x9c
	.byte	0
	.byte	0x11
	.string	"evt"
	.byte	0x5
	.byte	0x27
	.byte	0xb
	.4byte	0x33e
	.byte	0x4
	.byte	0xa
	.4byte	.LASF39
	.byte	0x5
	.byte	0x28
	.byte	0xb
	.4byte	0x363
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	0x231
	.byte	0x12
	.4byte	0x25
	.4byte	0x289
	.byte	0x13
	.4byte	0x289
	.byte	0x13
	.4byte	0x332
	.byte	0x13
	.4byte	0x338
	.byte	0x13
	.4byte	0x338
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x28f
	.byte	0x14
	.4byte	.LASF40
	.2byte	0x4a0
	.byte	0x5
	.byte	0x2e
	.byte	0x8
	.4byte	0x332
	.byte	0xa
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2f
	.byte	0x12
	.4byte	0x85
	.byte	0
	.byte	0xa
	.4byte	.LASF42
	.byte	0x5
	.byte	0x30
	.byte	0xe
	.4byte	0x69
	.byte	0x4
	.byte	0xa
	.4byte	.LASF43
	.byte	0x5
	.byte	0x31
	.byte	0xe
	.4byte	0x69
	.byte	0x8
	.byte	0xa
	.4byte	.LASF44
	.byte	0x5
	.byte	0x32
	.byte	0xe
	.4byte	0x69
	.byte	0xc
	.byte	0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0x33
	.byte	0xe
	.4byte	0x369
	.byte	0x10
	.byte	0xa
	.4byte	.LASF46
	.byte	0x5
	.byte	0x34
	.byte	0xe
	.4byte	0x369
	.byte	0x90
	.byte	0x15
	.4byte	.LASF47
	.byte	0x5
	.byte	0x35
	.byte	0x17
	.4byte	0x379
	.2byte	0x110
	.byte	0x15
	.4byte	.LASF48
	.byte	0x5
	.byte	0x36
	.byte	0x27
	.4byte	0x389
	.2byte	0x210
	.byte	0x15
	.4byte	.LASF49
	.byte	0x5
	.byte	0x37
	.byte	0x25
	.4byte	0x399
	.2byte	0x410
	.byte	0x15
	.4byte	.LASF50
	.byte	0x5
	.byte	0x39
	.byte	0x13
	.4byte	0x128
	.2byte	0x490
	.byte	0x15
	.4byte	.LASF51
	.byte	0x5
	.byte	0x3a
	.byte	0x13
	.4byte	0x128
	.2byte	0x498
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x266
	.byte	0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x4
	.4byte	0x26b
	.byte	0x12
	.4byte	0x25
	.4byte	0x35d
	.byte	0x13
	.4byte	0x289
	.byte	0x13
	.4byte	0x332
	.byte	0x13
	.4byte	0x35d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x195
	.byte	0x6
	.byte	0x4
	.4byte	0x344
	.byte	0x16
	.4byte	0x69
	.4byte	0x379
	.byte	0x17
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0xcf
	.4byte	0x389
	.byte	0x17
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0x1ef
	.4byte	0x399
	.byte	0x17
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0x332
	.4byte	0x3a9
	.byte	0x17
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x9
	.4byte	.LASF52
	.byte	0xc
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.4byte	0x3c4
	.byte	0xa
	.4byte	.LASF53
	.byte	0x1
	.byte	0x13
	.byte	0x23
	.4byte	0x266
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x3a9
	.byte	0x18
	.4byte	.LASF70
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f4
	.byte	0x19
	.4byte	.LVL9
	.4byte	0x510
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x439
	.byte	0x1c
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2e
	.byte	0x31
	.4byte	0x3c4
	.byte	0x5
	.byte	0x3
	.4byte	_ir_bloop_handler_holder.0
	.byte	0x19
	.4byte	.LVL8
	.4byte	0x51c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x25
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x480
	.byte	0x1e
	.4byte	.LASF54
	.byte	0x1
	.byte	0x25
	.byte	0x2b
	.4byte	0x289
	.4byte	.LLST0
	.byte	0x1f
	.4byte	.LASF53
	.byte	0x1
	.byte	0x25
	.byte	0x50
	.4byte	0x332
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.string	"msg"
	.byte	0x1
	.byte	0x25
	.byte	0x6a
	.4byte	0x35d
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1d
	.4byte	.LASF56
	.byte	0x1
	.byte	0x16
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x510
	.byte	0x1e
	.4byte	.LASF54
	.byte	0x1
	.byte	0x16
	.byte	0x2b
	.4byte	0x289
	.4byte	.LLST1
	.byte	0x1e
	.4byte	.LASF53
	.byte	0x1
	.byte	0x16
	.byte	0x50
	.4byte	0x332
	.4byte	.LLST2
	.byte	0x1e
	.4byte	.LASF57
	.byte	0x1
	.byte	0x16
	.byte	0x63
	.4byte	0x338
	.4byte	.LLST3
	.byte	0x1e
	.4byte	.LASF58
	.byte	0x1
	.byte	0x16
	.byte	0x79
	.4byte	0x338
	.4byte	.LLST4
	.byte	0x21
	.4byte	.LASF60
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST5
	.byte	0x22
	.4byte	.LVL3
	.4byte	0x528
	.byte	0x23
	.4byte	.LVL6
	.4byte	0x534
	.4byte	0x506
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x22
	.4byte	.LVL7
	.4byte	0x540
	.byte	0
	.byte	0x24
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x6
	.byte	0xb
	.byte	0x6
	.byte	0x24
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x6
	.byte	0xf
	.byte	0x5
	.byte	0x24
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x7
	.byte	0x2b
	.byte	0xa
	.byte	0x24
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x8
	.byte	0x99
	.byte	0x5
	.byte	0x24
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x7
	.byte	0x2d
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x15
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"header"
.LASF57:
	.string	"bitmap_evt"
.LASF34:
	.string	"time_max"
.LASF48:
	.string	"statistic"
.LASF14:
	.string	"utils_list"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"container"
.LASF11:
	.string	"TaskHandle_t"
.LASF52:
	.string	"loop_evt_handler_holder"
.LASF27:
	.string	"loop_msg"
.LASF53:
	.string	"handler"
.LASF71:
	.string	"loopset_ir_hook_on_looprt"
.LASF70:
	.string	"ir_async_post"
.LASF37:
	.string	"loop_evt_handler"
.LASF41:
	.string	"looper"
.LASF59:
	.string	"_ir_bloop_handler_holder"
.LASF38:
	.string	"name"
.LASF23:
	.string	"id_msg"
.LASF33:
	.string	"loop_evt_handler_statistic"
.LASF29:
	.string	"arg1"
.LASF24:
	.string	"id_src"
.LASF63:
	.string	"bl_receivedata"
.LASF4:
	.string	"long long int"
.LASF3:
	.string	"long int"
.LASF22:
	.string	"id_dst"
.LASF46:
	.string	"evt_type_map_sync"
.LASF69:
	.string	"tskTaskControlBlock"
.LASF31:
	.string	"time_added"
.LASF62:
	.string	"looprt_handler_register"
.LASF5:
	.string	"unsigned char"
.LASF56:
	.string	"_ir_bloop_evt"
.LASF50:
	.string	"timer_dlist"
.LASF51:
	.string	"timer_dued"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF49:
	.string	"handlers"
.LASF0:
	.string	"unsigned int"
.LASF65:
	.string	"bl_enable_rx_int"
.LASF17:
	.string	"last"
.LASF42:
	.string	"bitmap_evt_async"
.LASF68:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/loopset"
.LASF44:
	.string	"bitmap_msg"
.LASF35:
	.string	"time_accumulated"
.LASF6:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF45:
	.string	"evt_type_map_async"
.LASF47:
	.string	"list"
.LASF60:
	.string	"data"
.LASF55:
	.string	"_ir_bloop_msg"
.LASF18:
	.string	"utils_dlist_s"
.LASF64:
	.string	"aos_post_event"
.LASF9:
	.string	"long unsigned int"
.LASF67:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_ir.c"
.LASF39:
	.string	"handle"
.LASF66:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF32:
	.string	"time_consumed"
.LASF7:
	.string	"uint8_t"
.LASF28:
	.string	"item"
.LASF36:
	.string	"count_triggered"
.LASF58:
	.string	"evt_type_map"
.LASF20:
	.string	"utils_dlist_t"
.LASF21:
	.string	"priority"
.LASF54:
	.string	"loop"
.LASF30:
	.string	"arg2"
.LASF19:
	.string	"prev"
.LASF61:
	.string	"looprt_evt_notify_async_fromISR"
.LASF13:
	.string	"utils_list_hdr"
.LASF15:
	.string	"next"
.LASF43:
	.string	"bitmap_evt_sync"
.LASF16:
	.string	"first"
.LASF40:
	.string	"loop_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
