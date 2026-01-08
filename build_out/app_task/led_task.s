	.file	"led_task.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.led_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[LED_TASK] Started\r\n"
	.section	.text.led_task,"ax",@progbits
	.align	1
	.type	led_task, @function
led_task:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/led_task.c"
	.loc 1 23 42
	.cfi_startproc
.LVL0:
	.loc 1 24 5
	.loc 1 23 42 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s1,36(sp)
	sw	s6,16(sp)
	.loc 1 24 5
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 23 42
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	.loc 1 24 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL2:
	.loc 1 26 5 is_stmt 1
	.loc 1 26 33 is_stmt 0
	call	xTaskGetTickCount
.LVL3:
	lui	s2,%hi(.LANCHOR1)
	.loc 1 26 16
	sw	a0,-36(s0)
	.loc 1 27 5 is_stmt 1
.LVL4:
.LBB2:
	.loc 1 34 9 is_stmt 0
	lui	s3,%hi(.LANCHOR0)
	li	s4,2
	addi	s2,s2,%lo(.LANCHOR1)
.LBB3:
	.loc 1 54 47
	lui	s5,%hi(.LANCHOR2)
.L3:
.LBE3:
.LBE2:
	.loc 1 29 5 is_stmt 1
.LBB5:
	.loc 1 30 9
	.loc 1 30 35 is_stmt 0
	call	xTaskGetTickCount
.LVL5:
	lw	a5,%lo(.LANCHOR0)(s3)
	mv	s1,a0
.LVL6:
	.loc 1 31 9 is_stmt 1
	.loc 1 34 9
	addi	a5,a5,-1
	bgtu	a5,s4,.L2
	slli	a5,a5,1
	add	a5,s2,a5
	lhu	a4,0(a5)
.LVL7:
	.loc 1 53 9
	.loc 1 53 42 is_stmt 0
	beq	a4,zero,.L2
.LBB4:
	.loc 1 54 13 is_stmt 1
.LVL8:
	.loc 1 55 13
	.loc 1 54 47 is_stmt 0
	addi	s6,s5,%lo(.LANCHOR2)
	.loc 1 54 24
	lw	a5,0(s6)
	sub	a5,a0,a5
.LVL9:
	.loc 1 55 16
	bgtu	a4,a5,.L2
	.loc 1 56 17 is_stmt 1
	li	a0,0
	call	led_handle_action
.LVL10:
	.loc 1 57 17
	li	a0,10
	call	vTaskDelay
.LVL11:
	.loc 1 58 17
	li	a0,1
	call	led_handle_action
.LVL12:
	.loc 1 59 17
	.loc 1 59 34 is_stmt 0
	sw	s1,0(s6)
.L2:
.LBE4:
	.loc 1 63 9 is_stmt 1
	li	a1,50
	addi	a0,s0,-36
	call	vTaskDelayUntil
.LVL13:
.LBE5:
	.loc 1 29 11
	.loc 1 29 15 is_stmt 0
	j	.L3
	.cfi_endproc
.LFE3:
	.size	led_task, .-led_task
	.section	.rodata.led_task_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"[LED_TASK] Initializing...\r\n"
	.align	2
.LC2:
	.string	"[LED_TASK] Initialized\r\n"
	.section	.text.led_task_init,"ax",@progbits
	.align	1
	.globl	led_task_init
	.type	led_task_init, @function
led_task_init:
.LFB4:
	.loc 1 68 26 is_stmt 1
	.cfi_startproc
	.loc 1 69 5
	.loc 1 68 26 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 69 5
	lui	a0,%hi(.LC1)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 68 26
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 69 5
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL14:
	.loc 1 72 5 is_stmt 1
	call	led_state_init
.LVL15:
	.loc 1 74 5
	.loc 1 74 18 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 78 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 74 18
	sw	zero,%lo(.LANCHOR0)(a5)
	.loc 1 75 5 is_stmt 1
	.loc 1 75 22 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	zero,%lo(.LANCHOR2)(a5)
	.loc 1 77 5 is_stmt 1
	lui	a0,%hi(.LC2)
	.loc 1 78 1 is_stmt 0
	.loc 1 77 5
	addi	a0,a0,%lo(.LC2)
	.loc 1 78 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 77 5
	tail	printf
.LVL16:
	.cfi_endproc
.LFE4:
	.size	led_task_init, .-led_task_init
	.section	.rodata.led_task_run.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"[LED_TASK] Starting led_task...\r\n"
	.align	2
.LC4:
	.string	"led_task"
	.align	2
.LC5:
	.string	"[LED_TASK] ERROR: Failed to create led_task!\r\n"
	.align	2
.LC6:
	.string	"[LED_TASK] led_task created successfully\r\n"
	.section	.text.led_task_run,"ax",@progbits
	.align	1
	.globl	led_task_run
	.type	led_task_run, @function
led_task_run:
.LFB5:
	.loc 1 80 25 is_stmt 1
	.cfi_startproc
	.loc 1 81 5
	.loc 1 80 25 is_stmt 0
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
	.loc 1 81 5
	lui	a0,%hi(.LC3)
	.loc 1 80 25
	.loc 1 81 5
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL17:
	.loc 1 84 5 is_stmt 1
	lui	a5,%hi(.LANCHOR3)
	li	a2,4096
	lui	a1,%hi(.LC4)
	lui	a0,%hi(led_task)
	addi	s1,a5,%lo(.LANCHOR3)
	li	a4,1
	addi	a5,a5,%lo(.LANCHOR3)
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(led_task)
	call	xTaskCreate
.LVL18:
	.loc 1 93 5
	.loc 1 93 8 is_stmt 0
	lw	a5,0(s1)
	bne	a5,zero,.L11
	.loc 1 94 9 is_stmt 1
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
.L13:
	.loc 1 99 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 98 5
	tail	printf
.LVL19:
.L11:
	.cfi_restore_state
	.loc 1 98 5 is_stmt 1
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	j	.L13
	.cfi_endproc
.LFE5:
	.size	led_task_run, .-led_task_run
	.section	.rodata.led_set_blink_mode.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"[LED_TASK] Blink mode set to %d\r\n"
	.section	.text.led_set_blink_mode,"ax",@progbits
	.align	1
	.globl	led_set_blink_mode
	.type	led_set_blink_mode, @function
led_set_blink_mode:
.LFB6:
	.loc 1 101 35
	.cfi_startproc
.LVL20:
	.loc 1 102 5
	.loc 1 102 8 is_stmt 0
	li	a5,3
	bgtu	a0,a5,.L14
	.loc 1 103 9 is_stmt 1
	.loc 1 101 35 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 103 22
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	sw	a0,-20(s0)
	.loc 1 104 9 is_stmt 1
	.loc 1 104 28 is_stmt 0
	call	xTaskGetTickCount
.LVL21:
	.loc 1 110 9
	lw	a1,-20(s0)
	.loc 1 112 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL22:
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 104 26
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 110 9 is_stmt 1
	lui	a0,%hi(.LC7)
	.loc 1 112 1 is_stmt 0
	.loc 1 110 9
	addi	a0,a0,%lo(.LC7)
	.loc 1 112 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 110 9
	tail	printf
.LVL23:
.L14:
	ret
	.cfi_endproc
.LFE6:
	.size	led_set_blink_mode, .-led_set_blink_mode
	.section	.sbss.current_mode,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	current_mode, @object
	.size	current_mode, 4
current_mode:
	.zero	4
	.section	.sbss.last_toggle_time,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	last_toggle_time, @object
	.size	last_toggle_time, 4
last_toggle_time:
	.zero	4
	.section	.sbss.led_task_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	led_task_handle, @object
	.size	led_task_handle, 4
led_task_handle:
	.zero	4
	.section	.srodata.CSWTCH.7,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.7, @object
	.size	CSWTCH.7, 6
CSWTCH.7:
	.half	1000
	.half	200
	.half	100
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/state_machine/led_state/led_state_machine.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x37c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x9
	.byte	0xe
	.4byte	0x47
	.byte	0x4
	.4byte	.LASF0
	.byte	0
	.byte	0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x84
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x78
	.byte	0x8
	.4byte	0x94
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x46
	.byte	0x25
	.4byte	0xb1
	.byte	0x9
	.byte	0x4
	.4byte	0xb7
	.byte	0xa
	.4byte	.LASF43
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9
	.byte	0x15
	.4byte	0xa5
	.byte	0x5
	.byte	0x3
	.4byte	led_task_handle
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.4byte	0xfc
	.byte	0x4
	.4byte	.LASF15
	.byte	0
	.byte	0x4
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0
	.byte	0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x11
	.byte	0x3
	.4byte	0xd5
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x13
	.byte	0x19
	.4byte	0xfc
	.byte	0x5
	.byte	0x3
	.4byte	current_mode
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x14
	.byte	0x13
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	last_toggle_time
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x176
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x65
	.byte	0x1d
	.4byte	0x47
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LVL21
	.4byte	0x327
	.byte	0xf
	.4byte	.LVL23
	.4byte	0x334
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e4
	.byte	0x11
	.4byte	.LVL17
	.4byte	0x334
	.4byte	0x1a3
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x11
	.4byte	.LVL18
	.4byte	0x340
	.4byte	0x1da
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	led_task
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL19
	.4byte	0x334
	.byte	0
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x22e
	.byte	0x11
	.4byte	.LVL14
	.4byte	0x334
	.4byte	0x211
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xe
	.4byte	.LVL15
	.4byte	0x34d
	.byte	0xf
	.4byte	.LVL16
	.4byte	0x334
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x327
	.byte	0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x17
	.byte	0x1c
	.4byte	0x92
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.4byte	0x94
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1b
	.byte	0x16
	.4byte	0xa0
	.byte	0x32
	.byte	0x15
	.4byte	.Ldebug_ranges0+0
	.4byte	0x306
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.4byte	0x94
	.byte	0x1
	.byte	0x59
	.byte	0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1f
	.byte	0x14
	.4byte	0x94
	.4byte	.LLST1
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x2e6
	.byte	0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x36
	.byte	0x18
	.4byte	0x94
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LVL10
	.4byte	0x359
	.4byte	0x2c3
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL11
	.4byte	0x365
	.4byte	0x2d6
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x17
	.4byte	.LVL12
	.4byte	0x359
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL5
	.4byte	0x327
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x372
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL2
	.4byte	0x334
	.4byte	0x31d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x327
	.byte	0
	.byte	0x18
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x547
	.byte	0xc
	.byte	0x19
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x18
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x14a
	.byte	0xd
	.byte	0x19
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x18
	.byte	0x6
	.byte	0x19
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x19
	.byte	0x6
	.byte	0x18
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x2f6
	.byte	0x6
	.byte	0x18
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x331
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
.LLST3:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL23
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xa
	.byte	0x79
	.byte	0
	.byte	0x3
	.4byte	last_toggle_time
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"TickType_t"
.LASF30:
	.string	"current_time"
.LASF40:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF15:
	.string	"LED_MODE_OFF"
.LASF31:
	.string	"period"
.LASF42:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_task"
.LASF24:
	.string	"led_task_run"
.LASF28:
	.string	"last_wake_time"
.LASF41:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/led_task.c"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"LED_EVENT_OFF"
.LASF17:
	.string	"LED_MODE_FAST"
.LASF7:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF8:
	.string	"short unsigned int"
.LASF39:
	.string	"vTaskDelayUntil"
.LASF22:
	.string	"last_toggle_time"
.LASF0:
	.string	"LED_EVENT_ON"
.LASF18:
	.string	"LED_MODE_ERROR"
.LASF43:
	.string	"tskTaskControlBlock"
.LASF2:
	.string	"unsigned int"
.LASF44:
	.string	"led_task"
.LASF14:
	.string	"char"
.LASF13:
	.string	"TaskHandle_t"
.LASF32:
	.string	"elapsed"
.LASF26:
	.string	"mode"
.LASF3:
	.string	"signed char"
.LASF23:
	.string	"led_set_blink_mode"
.LASF29:
	.string	"task_period"
.LASF6:
	.string	"long long int"
.LASF27:
	.string	"pvParameters"
.LASF34:
	.string	"printf"
.LASF16:
	.string	"LED_MODE_SLOW"
.LASF4:
	.string	"short int"
.LASF37:
	.string	"led_handle_action"
.LASF19:
	.string	"led_blink_mode_t"
.LASF11:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF38:
	.string	"vTaskDelay"
.LASF20:
	.string	"led_task_handle"
.LASF21:
	.string	"current_mode"
.LASF33:
	.string	"xTaskGetTickCount"
.LASF25:
	.string	"led_task_init"
.LASF35:
	.string	"xTaskCreate"
.LASF36:
	.string	"led_state_init"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
