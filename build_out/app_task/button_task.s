	.file	"button_task.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.button_event_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[BUTTON_TASK] Button %d event: %d\r\n"
	.align	2
.LC1:
	.string	"[BUTTON_TASK] Button HOLD detected, sending EVENT_BUTTON_HOLD\r\n"
	.section	.text.button_event_handler,"ax",@progbits
	.align	1
	.type	button_event_handler, @function
button_event_handler:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/button_task.c"
	.loc 1 9 72
	.cfi_startproc
.LVL0:
	.loc 1 10 5
	.loc 1 9 72 is_stmt 0
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
	.loc 1 10 5
	mv	a2,a1
	.loc 1 9 72
	mv	s1,a1
	.loc 1 10 5
	mv	a1,a0
.LVL1:
	lui	a0,%hi(.LC0)
.LVL2:
	.loc 1 9 72
	.loc 1 10 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL3:
	.loc 1 12 5 is_stmt 1
	.loc 1 12 8 is_stmt 0
	li	a5,2
	bne	s1,a5,.L1
.LVL4:
.LBB4:
.LBB5:
	.loc 1 13 9 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL5:
	.loc 1 14 9
.LBE5:
.LBE4:
	.loc 1 17 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL6:
.LBB8:
.LBB6:
	.loc 1 14 9
	li	a0,10
.LBE6:
.LBE8:
	.loc 1 17 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB9:
.LBB7:
	.loc 1 14 9
	tail	app_send_event
.LVL7:
.L1:
	.cfi_restore_state
.LBE7:
.LBE9:
	.loc 1 17 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL8:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	button_event_handler, .-button_event_handler
	.section	.rodata.button_task_init.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"[BUTTON_TASK] Initializing...\r\n"
	.align	2
.LC3:
	.string	"[BUTTON_TASK] Initialized\r\n"
	.section	.text.button_task_init,"ax",@progbits
	.align	1
	.globl	button_task_init
	.type	button_task_init, @function
button_task_init:
.LFB4:
	.loc 1 20 29 is_stmt 1
	.cfi_startproc
	.loc 1 21 5
	.loc 1 20 29 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 21 5
	lui	a0,%hi(.LC2)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 20 29
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 21 5
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL9:
	.loc 1 24 5 is_stmt 1
	call	button_driver_init
.LVL10:
	.loc 1 27 5
	lui	a1,%hi(button_event_handler)
	li	a0,2
	addi	a1,a1,%lo(button_event_handler)
	call	button_register_callback
.LVL11:
	.loc 1 29 5
	.loc 1 30 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 29 5
	lui	a0,%hi(.LC3)
	.loc 1 30 1
	.loc 1 29 5
	addi	a0,a0,%lo(.LC3)
	.loc 1 30 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 29 5
	tail	printf
.LVL12:
	.cfi_endproc
.LFE4:
	.size	button_task_init, .-button_task_init
	.section	.rodata.button_task_run.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"[BUTTON_TASK] Button task already running (created by button_driver_init)\r\n"
	.section	.text.button_task_run,"ax",@progbits
	.align	1
	.globl	button_task_run
	.type	button_task_run, @function
button_task_run:
.LFB5:
	.loc 1 32 28 is_stmt 1
	.cfi_startproc
	.loc 1 35 5
	.loc 1 32 28 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 36 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 35 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	.loc 1 36 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 35 5
	tail	printf
.LVL13:
	.cfi_endproc
.LFE5:
	.size	button_task_run, .-button_task_run
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_event/app_event.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/third_party/lib_button/app_btn.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/button/button.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/app.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x297
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x2
	.byte	0x5
	.byte	0xe
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF0
	.byte	0
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x9
	.byte	0x3
	.4byte	.LASF10
	.byte	0xa
	.byte	0x3
	.4byte	.LASF11
	.byte	0xb
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0x10e
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
	.byte	0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	.LASF43
	.byte	0x3
	.byte	0x2b
	.byte	0x3
	.4byte	0xc9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
	.byte	0x7
	.4byte	.LASF32
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x14b
	.byte	0x8
	.4byte	.LVL13
	.4byte	0x26a
	.byte	0x9
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b1
	.byte	0xa
	.4byte	.LVL9
	.4byte	0x26a
	.4byte	0x178
	.byte	0x9
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0xb
	.4byte	.LVL10
	.4byte	0x276
	.byte	0xa
	.4byte	.LVL11
	.4byte	0x282
	.4byte	0x19d
	.byte	0x9
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	button_event_handler
	.byte	0
	.byte	0x8
	.4byte	.LVL12
	.4byte	0x26a
	.byte	0x9
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.byte	0x1
	.4byte	0x1d7
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9
	.byte	0x26
	.4byte	0xbb
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9
	.byte	0x41
	.4byte	0x10e
	.byte	0
	.byte	0xe
	.4byte	0x1b1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x26a
	.byte	0xf
	.4byte	0x1be
	.4byte	.LLST0
	.byte	0xf
	.4byte	0x1ca
	.4byte	.LLST1
	.byte	0x10
	.4byte	0x1b1
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	0x249
	.byte	0xf
	.4byte	0x1be
	.4byte	.LLST2
	.byte	0xf
	.4byte	0x1ca
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LVL5
	.4byte	0x26a
	.4byte	0x239
	.byte	0x9
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x8
	.4byte	.LVL7
	.4byte	0x28e
	.byte	0x9
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x26a
	.byte	0x9
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x9
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x4
	.byte	0xc8
	.byte	0x5
	.byte	0x12
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x9
	.byte	0x6
	.byte	0x12
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.byte	0x12
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x9
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE3
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x32
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"EVENT_MQTT_FAILED"
.LASF40:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF26:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF34:
	.string	"button_id"
.LASF6:
	.string	"EVENT_WIFI_DISCONNECTED"
.LASF22:
	.string	"APP_BTN_EVT_PRESSED"
.LASF18:
	.string	"short unsigned int"
.LASF42:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_task"
.LASF1:
	.string	"EVENT_CRED_FOUND"
.LASF28:
	.string	"APP_BTN_EVT_IDLE"
.LASF7:
	.string	"EVENT_MQTT_CONNECTED"
.LASF43:
	.string	"app_btn_event_t"
.LASF9:
	.string	"EVENT_MQTT_DISCONNECTED"
.LASF4:
	.string	"EVENT_WIFI_CONNECTED"
.LASF17:
	.string	"unsigned char"
.LASF25:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF19:
	.string	"long unsigned int"
.LASF27:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF23:
	.string	"APP_BTN_EVT_RELEASED"
.LASF32:
	.string	"button_task_run"
.LASF0:
	.string	"EVENT_NONE"
.LASF29:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF11:
	.string	"EVENT_MAX"
.LASF35:
	.string	"event"
.LASF12:
	.string	"unsigned int"
.LASF20:
	.string	"long long unsigned int"
.LASF3:
	.string	"EVENT_BLE_CONFIG_DONE"
.LASF44:
	.string	"button_event_handler"
.LASF10:
	.string	"EVENT_BUTTON_HOLD"
.LASF37:
	.string	"button_driver_init"
.LASF2:
	.string	"EVENT_CRED_NOT_FOUND"
.LASF16:
	.string	"long long int"
.LASF31:
	.string	"char"
.LASF38:
	.string	"button_register_callback"
.LASF36:
	.string	"printf"
.LASF5:
	.string	"EVENT_WIFI_FAILED"
.LASF24:
	.string	"APP_BTN_EVT_HOLD"
.LASF14:
	.string	"short int"
.LASF39:
	.string	"app_send_event"
.LASF15:
	.string	"long int"
.LASF30:
	.string	"APP_BTN_EVT_MAX"
.LASF33:
	.string	"button_task_init"
.LASF41:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/button_task.c"
.LASF13:
	.string	"signed char"
.LASF21:
	.string	"_Bool"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
