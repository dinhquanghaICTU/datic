	.file	"app.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.app_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[APP_TASK] Started\r\n"
	.section	.text.app_task,"ax",@progbits
	.align	1
	.type	app_task, @function
app_task:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/app.c"
	.loc 1 17 42
	.cfi_startproc
.LVL0:
	.loc 1 18 5
	.loc 1 17 42 is_stmt 0
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
	.loc 1 18 5
	lui	a0,%hi(.LC0)
.LVL1:
	.loc 1 17 42
	.cfi_offset 18, -16
	.loc 1 18 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL2:
	.loc 1 20 5 is_stmt 1
	call	app_state_init
.LVL3:
	.loc 1 24 5
	call	OnStateInit
.LVL4:
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 27 33 is_stmt 0
	call	xTaskGetTickCount
.LVL5:
	.loc 1 27 16
	sw	a0,-20(s0)
	.loc 1 28 5 is_stmt 1
.LVL6:
	.loc 1 32 13 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
	.loc 1 32 12
	li	s2,1
.L3:
	.loc 1 30 5 is_stmt 1
	.loc 1 32 9
	.loc 1 32 13 is_stmt 0
	lw	a0,%lo(.LANCHOR0)(s1)
	li	a2,0
	addi	a1,s0,-24
	call	xQueueReceive
.LVL7:
	.loc 1 32 12
	bne	a0,s2,.L2
	.loc 1 33 13 is_stmt 1
	lw	a0,-24(s0)
	call	app_state_process_event
.LVL8:
.L2:
	.loc 1 37 9
	call	app_state_update
.LVL9:
	.loc 1 40 9
	li	a1,100
	addi	a0,s0,-20
	call	vTaskDelayUntil
.LVL10:
	.loc 1 30 11
	.loc 1 32 12 is_stmt 0
	j	.L3
	.cfi_endproc
.LFE3:
	.size	app_task, .-app_task
	.section	.rodata.app_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"[APP] Initializing...\r\n"
	.align	2
.LC2:
	.string	"[APP] ERROR: Failed to create event queue!\r\n"
	.align	2
.LC3:
	.string	"[APP] Initialized\r\n"
	.section	.text.app_init,"ax",@progbits
	.align	1
	.globl	app_init
	.type	app_init, @function
app_init:
.LFB4:
	.loc 1 45 21 is_stmt 1
	.cfi_startproc
	.loc 1 46 5
	.loc 1 45 21 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 46 5
	lui	a0,%hi(.LC1)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 45 21
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 46 5
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL11:
	.loc 1 49 5 is_stmt 1
	.loc 1 49 23 is_stmt 0
	li	a2,0
	li	a1,4
	li	a0,10
	call	xQueueGenericCreate
.LVL12:
	.loc 1 49 21
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 50 5 is_stmt 1
	.loc 1 50 8 is_stmt 0
	bne	a0,zero,.L6
	.loc 1 51 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
.L8:
	.loc 1 56 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 55 5
	tail	printf
.LVL13:
.L6:
	.cfi_restore_state
	.loc 1 55 5 is_stmt 1
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	j	.L8
	.cfi_endproc
.LFE4:
	.size	app_init, .-app_init
	.section	.rodata.app_run.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"[APP] Starting app_run()...\r\n"
	.align	2
.LC5:
	.string	"app_task"
	.align	2
.LC6:
	.string	"[APP] ERROR: Failed to create app_task!\r\n"
	.align	2
.LC7:
	.string	"[APP] app_task created successfully\r\n"
	.section	.text.app_run,"ax",@progbits
	.align	1
	.globl	app_run
	.type	app_run, @function
app_run:
.LFB5:
	.loc 1 58 20
	.cfi_startproc
	.loc 1 59 5
	.loc 1 58 20 is_stmt 0
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
	.loc 1 59 5
	lui	a0,%hi(.LC4)
	.loc 1 58 20
	.loc 1 59 5
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL14:
	.loc 1 62 5 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(app_task)
	addi	s1,a5,%lo(.LANCHOR1)
	li	a4,3
	addi	a5,a5,%lo(.LANCHOR1)
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(app_task)
	call	xTaskCreate
.LVL15:
	.loc 1 71 5
	.loc 1 71 8 is_stmt 0
	lw	a5,0(s1)
	bne	a5,zero,.L10
	.loc 1 72 9 is_stmt 1
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
.L12:
	.loc 1 77 1 is_stmt 0
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
	.loc 1 76 5
	tail	printf
.LVL16:
.L10:
	.cfi_restore_state
	.loc 1 76 5 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	j	.L12
	.cfi_endproc
.LFE5:
	.size	app_run, .-app_run
	.section	.rodata.app_send_event.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"[APP] ERROR: Event queue not initialized!\r\n"
	.align	2
.LC9:
	.string	"[APP] WARNING: Event queue full, dropping event %s\r\n"
	.section	.text.app_send_event,"ax",@progbits
	.align	1
	.globl	app_send_event
	.type	app_send_event, @function
app_send_event:
.LFB6:
	.loc 1 79 38
	.cfi_startproc
.LVL17:
	.loc 1 80 5
	.loc 1 79 38 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 80 25
	lui	a5,%hi(.LANCHOR0)
	.loc 1 79 38
	sw	a0,-20(s0)
	.loc 1 80 25
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL18:
	.loc 1 80 8
	bne	a0,zero,.L14
	.loc 1 81 9 is_stmt 1
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL19:
	.loc 1 82 9
.L18:
	.loc 1 88 9
	.loc 1 88 15 is_stmt 0
	li	a5,0
.L15:
	.loc 1 92 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L14:
	.cfi_restore_state
	.loc 1 85 5 is_stmt 1
	.loc 1 85 9 is_stmt 0
	li	a3,0
	li	a2,0
	addi	a1,s0,-20
.LVL21:
	call	xQueueGenericSend
.LVL22:
	.loc 1 91 11
	li	a5,1
	.loc 1 85 8
	beq	a0,a5,.L15
	.loc 1 86 9 is_stmt 1
	lw	a0,-20(s0)
	call	Event_GetName
.LVL23:
	mv	a1,a0
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL24:
	j	.L18
	.cfi_endproc
.LFE6:
	.size	app_send_event, .-app_send_event
	.section	.text.app_GetCurrentState,"ax",@progbits
	.align	1
	.globl	app_GetCurrentState
	.type	app_GetCurrentState, @function
app_GetCurrentState:
.LFB7:
	.loc 1 94 38
	.cfi_startproc
	.loc 1 95 5
	.loc 1 94 38 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 96 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 95 12
	tail	app_state_get_current
.LVL25:
	.cfi_endproc
.LFE7:
	.size	app_GetCurrentState, .-app_GetCurrentState
	.section	.sbss.app_event_queue,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	app_event_queue, @object
	.size	app_event_queue, 4
app_event_queue:
	.zero	4
	.section	.sbss.app_task_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	app_task_handle, @object
	.size	app_task_handle, 4
app_task_handle:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_event/app_event.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_state/app_state.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x47c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x1d
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF14
	.byte	0x5
	.4byte	.LASF16
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0xa9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF18
	.byte	0x5
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0xc3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF21
	.byte	0x5
	.4byte	.LASF22
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xdd
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x17
	.byte	0xe
	.4byte	0x12b
	.byte	0x3
	.4byte	.LASF25
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x3
	.4byte	.LASF28
	.byte	0x3
	.byte	0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0
	.byte	0x5
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1f
	.byte	0x3
	.4byte	0xf2
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0x9d
	.byte	0x5
	.4byte	.LASF35
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xd1
	.byte	0x8
	.4byte	0x14c
	.byte	0x5
	.4byte	.LASF36
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0x169
	.byte	0x9
	.byte	0x4
	.4byte	0x16f
	.byte	0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF37
	.byte	0x5
	.4byte	.LASF38
	.byte	0x7
	.byte	0x30
	.byte	0x22
	.4byte	0x187
	.byte	0x9
	.byte	0x4
	.4byte	0x18d
	.byte	0xa
	.4byte	.LASF40
	.byte	0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb
	.byte	0x16
	.4byte	0x17b
	.byte	0x5
	.byte	0x3
	.4byte	app_event_queue
	.byte	0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0xe
	.byte	0x15
	.4byte	0x15d
	.byte	0x5
	.byte	0x3
	.4byte	app_task_handle
	.byte	0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0x5e
	.byte	0xc
	.4byte	0x12b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1da
	.byte	0xd
	.4byte	.LVL25
	.4byte	0x3dd
	.byte	0
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4f
	.byte	0x5
	.4byte	0x137
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x256
	.byte	0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4f
	.byte	0x1f
	.4byte	0x83
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LVL19
	.4byte	0x3e9
	.4byte	0x21b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0xf
	.4byte	.LVL22
	.4byte	0x3f5
	.4byte	0x239
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL23
	.4byte	0x402
	.byte	0x12
	.4byte	.LVL24
	.4byte	0x3e9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c4
	.byte	0xf
	.4byte	.LVL14
	.4byte	0x3e9
	.4byte	0x283
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x40e
	.4byte	0x2ba
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL16
	.4byte	0x3e9
	.byte	0
	.byte	0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x318
	.byte	0xf
	.4byte	.LVL11
	.4byte	0x3e9
	.4byte	0x2f1
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x41b
	.4byte	0x30e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL13
	.4byte	0x3e9
	.byte	0
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x3dd
	.byte	0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x11
	.byte	0x1c
	.4byte	0x13e
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.4byte	0x83
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0x14c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1c
	.byte	0x16
	.4byte	0x158
	.byte	0x64
	.byte	0xf
	.4byte	.LVL2
	.4byte	0x3e9
	.4byte	0x380
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x428
	.byte	0x11
	.4byte	.LVL4
	.4byte	0x434
	.byte	0x11
	.4byte	.LVL5
	.4byte	0x440
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x44d
	.4byte	0x3b4
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL8
	.4byte	0x45a
	.byte	0x11
	.4byte	.LVL9
	.4byte	0x466
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x472
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x4
	.byte	0x38
	.byte	0xc
	.byte	0x16
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x17
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x7
	.2byte	0x28a
	.byte	0xc
	.byte	0x16
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x2
	.byte	0x20
	.byte	0xd
	.byte	0x17
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x14a
	.byte	0xd
	.byte	0x17
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x5d8
	.byte	0x10
	.byte	0x16
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x4
	.byte	0x37
	.byte	0x6
	.byte	0x16
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x4
	.byte	0x9
	.byte	0x6
	.byte	0x17
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x547
	.byte	0xc
	.byte	0x17
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x364
	.byte	0xc
	.byte	0x16
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x4
	.byte	0x3b
	.byte	0x5
	.byte	0x16
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x4
	.byte	0x3c
	.byte	0x6
	.byte	0x17
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
.LLST1:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"app_task_handle"
.LASF60:
	.string	"xQueueReceive"
.LASF62:
	.string	"app_state_update"
.LASF41:
	.string	"app_event_queue"
.LASF7:
	.string	"EVENT_MQTT_CONNECTED"
.LASF14:
	.string	"short int"
.LASF28:
	.string	"APP_STATE_MQTT_CONNECTING"
.LASF66:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_api"
.LASF36:
	.string	"TaskHandle_t"
.LASF2:
	.string	"EVENT_CRED_NOT_FOUND"
.LASF47:
	.string	"event"
.LASF10:
	.string	"EVENT_BUTTON_HOLD"
.LASF57:
	.string	"app_state_init"
.LASF27:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF19:
	.string	"uint8_t"
.LASF51:
	.string	"app_state_get_current"
.LASF61:
	.string	"app_state_process_event"
.LASF53:
	.string	"xQueueGenericSend"
.LASF1:
	.string	"EVENT_CRED_FOUND"
.LASF32:
	.string	"AppState_t"
.LASF31:
	.string	"APP_STATE_MAX"
.LASF49:
	.string	"last_wake_time"
.LASF18:
	.string	"long long int"
.LASF35:
	.string	"TickType_t"
.LASF25:
	.string	"APP_STATE_INIT"
.LASF52:
	.string	"printf"
.LASF39:
	.string	"tskTaskControlBlock"
.LASF59:
	.string	"xTaskGetTickCount"
.LASF11:
	.string	"EVENT_MAX"
.LASF50:
	.string	"task_period"
.LASF8:
	.string	"EVENT_MQTT_FAILED"
.LASF56:
	.string	"xQueueGenericCreate"
.LASF0:
	.string	"EVENT_NONE"
.LASF20:
	.string	"unsigned char"
.LASF9:
	.string	"EVENT_MQTT_DISCONNECTED"
.LASF65:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/app.c"
.LASF43:
	.string	"app_GetCurrentState"
.LASF13:
	.string	"signed char"
.LASF24:
	.string	"long long unsigned int"
.LASF22:
	.string	"uint32_t"
.LASF12:
	.string	"unsigned int"
.LASF34:
	.string	"BaseType_t"
.LASF48:
	.string	"pvParameters"
.LASF29:
	.string	"APP_STATE_MQTT_RUNNING"
.LASF26:
	.string	"APP_STATE_BLE_CONFIG"
.LASF4:
	.string	"EVENT_WIFI_CONNECTED"
.LASF40:
	.string	"QueueDefinition"
.LASF21:
	.string	"short unsigned int"
.LASF37:
	.string	"char"
.LASF17:
	.string	"long int"
.LASF16:
	.string	"int32_t"
.LASF33:
	.string	"_Bool"
.LASF55:
	.string	"xTaskCreate"
.LASF6:
	.string	"EVENT_WIFI_DISCONNECTED"
.LASF45:
	.string	"app_run"
.LASF23:
	.string	"long unsigned int"
.LASF3:
	.string	"EVENT_BLE_CONFIG_DONE"
.LASF67:
	.string	"app_task"
.LASF46:
	.string	"app_init"
.LASF30:
	.string	"APP_STATE_CONNECTION_ERROR"
.LASF15:
	.string	"AppEvent_t"
.LASF63:
	.string	"vTaskDelayUntil"
.LASF54:
	.string	"Event_GetName"
.LASF44:
	.string	"app_send_event"
.LASF64:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF38:
	.string	"QueueHandle_t"
.LASF58:
	.string	"OnStateInit"
.LASF5:
	.string	"EVENT_WIFI_FAILED"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
