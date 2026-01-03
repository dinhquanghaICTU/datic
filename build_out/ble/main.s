	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TaskUart,"ax",@progbits
	.align	1
	.globl	TaskUart
	.type	TaskUart, @function
TaskUart:
.LFB71:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/main.c"
	.loc 1 37 1
	.cfi_startproc
.LVL0:
	.loc 1 38 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 38 13
	li	a2,28
	li	a1,0
	addi	a0,s0,-44
.LVL1:
	sw	zero,-48(s0)
	.loc 1 41 5
	lui	s1,%hi(.LANCHOR0)
	.loc 1 38 13
	call	memset
.LVL2:
	.loc 1 39 5 is_stmt 1
	.loc 1 41 5
	addi	a0,s1,%lo(.LANCHOR0)
	call	hosal_uart_init
.LVL3:
.L3:
	.loc 1 43 5
	.loc 1 46 9
	.loc 1 46 15 is_stmt 0
	li	a2,32
	addi	a1,s0,-48
	addi	a0,s1,%lo(.LANCHOR0)
	call	hosal_uart_receive
.LVL4:
	.loc 1 47 9 is_stmt 1
	.loc 1 47 12 is_stmt 0
	ble	a0,zero,.L2
	.loc 1 49 13 is_stmt 1
	.loc 1 49 30 is_stmt 0
	addi	a0,s0,-48
.LVL5:
	call	strlen
.LVL6:
	.loc 1 49 13
	slli	a0,a0,16
	addi	a1,s0,-48
	srli	a0,a0,16
	call	UUID1_SendNotify
.LVL7:
.L2:
	.loc 1 51 9 is_stmt 1
	li	a0,50
	call	vTaskDelay
.LVL8:
	.loc 1 43 11
	.loc 1 46 13 is_stmt 0
	j	.L3
	.cfi_endproc
.LFE71:
	.size	TaskUart, .-TaskUart
	.section	.text.proc_main_entry,"ax",@progbits
	.align	1
	.type	proc_main_entry, @function
proc_main_entry:
.LFB72:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 57 5
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 57 5
	call	apps_ble_start
.LVL10:
	.loc 1 58 5 is_stmt 1
	.loc 1 59 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 58 5
	li	a0,0
	.loc 1 59 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 58 5
	tail	vTaskDelete
.LVL11:
	.cfi_endproc
.LFE72:
	.size	proc_main_entry, .-proc_main_entry
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[OS] proc_main_entry task...\r\n"
	.align	2
.LC1:
	.string	"TaskUart"
	.align	2
.LC2:
	.string	"main_entry"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB73:
	.loc 1 62 1 is_stmt 1
	.cfi_startproc
	.loc 1 63 5
	.loc 1 62 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 63 5
	call	bl_sys_init
.LVL12:
	.loc 1 64 5 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	puts
.LVL13:
	.loc 1 65 5
	li	a2,4096
	lui	a1,%hi(.LC1)
	lui	a0,%hi(TaskUart)
	li	a5,0
	li	a4,15
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(TaskUart)
	call	xTaskCreate
.LVL14:
	.loc 1 66 5
	.loc 1 67 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 66 5
	lui	a1,%hi(.LC2)
	lui	a0,%hi(proc_main_entry)
	.loc 1 67 1
	.loc 1 66 5
	li	a5,0
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(proc_main_entry)
	.loc 1 67 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 66 5
	tail	xTaskCreate
.LVL15:
	.cfi_endproc
.LFE73:
	.size	main, .-main
	.globl	uart_dev_log
	.section	.data.uart_dev_log,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uart_dev_log, @object
	.size	uart_dev_log, 80
uart_dev_log:
	.zero	4
	.byte	0
	.byte	16
	.byte	7
	.byte	-1
	.byte	-1
	.zero	3
	.word	115200
	.word	3
	.word	0
	.word	0
	.zero	4
	.word	0
	.zero	44
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_interface.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5fb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF93
	.byte	0xc
	.4byte	.LASF94
	.4byte	.LASF95
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x25
	.4byte	0x9b
	.byte	0x7
	.4byte	0x83
	.byte	0
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x38
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3e
	.byte	0xf
	.4byte	0xb3
	.byte	0x8
	.byte	0x4
	.4byte	0x8c
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x43
	.byte	0xe
	.4byte	0xe6
	.byte	0xa
	.4byte	.LASF14
	.byte	0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa
	.4byte	.LASF16
	.byte	0x2
	.byte	0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x49
	.byte	0x3
	.4byte	0xb9
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x4e
	.byte	0xe
	.4byte	0x113
	.byte	0xa
	.4byte	.LASF20
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa
	.4byte	.LASF22
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x52
	.byte	0x3
	.4byte	0xf2
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x57
	.byte	0xe
	.4byte	0x146
	.byte	0xa
	.4byte	.LASF24
	.byte	0
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa
	.4byte	.LASF26
	.byte	0x2
	.byte	0xa
	.4byte	.LASF27
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5c
	.byte	0x3
	.4byte	0x11f
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x61
	.byte	0xe
	.4byte	0x173
	.byte	0xa
	.4byte	.LASF29
	.byte	0
	.byte	0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0xa
	.4byte	.LASF31
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF32
	.byte	0x4
	.byte	0x65
	.byte	0x3
	.4byte	0x152
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x6a
	.byte	0xe
	.4byte	0x1a6
	.byte	0xa
	.4byte	.LASF33
	.byte	0
	.byte	0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0xa
	.4byte	.LASF35
	.byte	0x2
	.byte	0xa
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF37
	.byte	0x4
	.byte	0x6f
	.byte	0x3
	.4byte	0x17f
	.byte	0xb
	.byte	0x20
	.byte	0x4
	.byte	0x82
	.byte	0x9
	.4byte	0x24b
	.byte	0xc
	.4byte	.LASF38
	.byte	0x4
	.byte	0x83
	.byte	0xd
	.4byte	0x4f
	.byte	0
	.byte	0xc
	.4byte	.LASF39
	.byte	0x4
	.byte	0x84
	.byte	0xd
	.4byte	0x4f
	.byte	0x1
	.byte	0xc
	.4byte	.LASF40
	.byte	0x4
	.byte	0x85
	.byte	0xd
	.4byte	0x4f
	.byte	0x2
	.byte	0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0x86
	.byte	0xd
	.4byte	0x4f
	.byte	0x3
	.byte	0xc
	.4byte	.LASF42
	.byte	0x4
	.byte	0x87
	.byte	0xd
	.4byte	0x4f
	.byte	0x4
	.byte	0xc
	.4byte	.LASF43
	.byte	0x4
	.byte	0x88
	.byte	0xe
	.4byte	0x69
	.byte	0x8
	.byte	0xc
	.4byte	.LASF44
	.byte	0x4
	.byte	0x89
	.byte	0x1d
	.4byte	0xe6
	.byte	0xc
	.byte	0xc
	.4byte	.LASF45
	.byte	0x4
	.byte	0x8a
	.byte	0x19
	.4byte	0x173
	.byte	0x10
	.byte	0xc
	.4byte	.LASF46
	.byte	0x4
	.byte	0x8b
	.byte	0x1c
	.4byte	0x113
	.byte	0x14
	.byte	0xc
	.4byte	.LASF47
	.byte	0x4
	.byte	0x8c
	.byte	0x1f
	.4byte	0x146
	.byte	0x18
	.byte	0xc
	.4byte	.LASF48
	.byte	0x4
	.byte	0x8d
	.byte	0x17
	.4byte	0x1a6
	.byte	0x1c
	.byte	0
	.byte	0x4
	.4byte	.LASF49
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.4byte	0x1b2
	.byte	0xb
	.byte	0x50
	.byte	0x4
	.byte	0x93
	.byte	0x9
	.4byte	0x30a
	.byte	0xc
	.4byte	.LASF50
	.byte	0x4
	.byte	0x94
	.byte	0xd
	.4byte	0x4f
	.byte	0
	.byte	0xc
	.4byte	.LASF51
	.byte	0x4
	.byte	0x95
	.byte	0x19
	.4byte	0x24b
	.byte	0x4
	.byte	0xc
	.4byte	.LASF52
	.byte	0x4
	.byte	0x96
	.byte	0x1b
	.4byte	0xa7
	.byte	0x24
	.byte	0xc
	.4byte	.LASF53
	.byte	0x4
	.byte	0x97
	.byte	0xb
	.4byte	0x83
	.byte	0x28
	.byte	0xc
	.4byte	.LASF54
	.byte	0x4
	.byte	0x98
	.byte	0x1b
	.4byte	0xa7
	.byte	0x2c
	.byte	0xc
	.4byte	.LASF55
	.byte	0x4
	.byte	0x99
	.byte	0xb
	.4byte	0x83
	.byte	0x30
	.byte	0xc
	.4byte	.LASF56
	.byte	0x4
	.byte	0x9a
	.byte	0x1b
	.4byte	0xa7
	.byte	0x34
	.byte	0xc
	.4byte	.LASF57
	.byte	0x4
	.byte	0x9b
	.byte	0xb
	.4byte	0x83
	.byte	0x38
	.byte	0xc
	.4byte	.LASF58
	.byte	0x4
	.byte	0x9c
	.byte	0x1b
	.4byte	0xa7
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF59
	.byte	0x4
	.byte	0x9d
	.byte	0xb
	.4byte	0x83
	.byte	0x40
	.byte	0xc
	.4byte	.LASF60
	.byte	0x4
	.byte	0x9e
	.byte	0x16
	.4byte	0x9b
	.byte	0x44
	.byte	0xc
	.4byte	.LASF61
	.byte	0x4
	.byte	0x9f
	.byte	0x16
	.4byte	0x9b
	.byte	0x48
	.byte	0xc
	.4byte	.LASF62
	.byte	0x4
	.byte	0xa0
	.byte	0xb
	.4byte	0x83
	.byte	0x4c
	.byte	0
	.byte	0x4
	.4byte	.LASF63
	.byte	0x4
	.byte	0xa1
	.byte	0x3
	.4byte	0x257
	.byte	0xd
	.4byte	.LASF69
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x36
	.byte	0x6
	.4byte	0x347
	.byte	0xa
	.4byte	.LASF64
	.byte	0
	.byte	0xa
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa
	.4byte	.LASF66
	.byte	0x2
	.byte	0xa
	.4byte	.LASF67
	.byte	0x3
	.byte	0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF70
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x40
	.byte	0x6
	.4byte	0x378
	.byte	0xa
	.4byte	.LASF71
	.byte	0
	.byte	0xa
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa
	.4byte	.LASF73
	.byte	0x2
	.byte	0xa
	.4byte	.LASF74
	.byte	0x3
	.byte	0xa
	.4byte	.LASF75
	.byte	0x4
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF76
	.byte	0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.2byte	0x50e
	.byte	0x6
	.4byte	0x3a1
	.byte	0xa
	.4byte	.LASF77
	.byte	0
	.byte	0xa
	.4byte	.LASF78
	.byte	0x1
	.byte	0xa
	.4byte	.LASF79
	.byte	0x2
	.byte	0
	.byte	0xf
	.4byte	.LASF96
	.byte	0x1
	.byte	0x15
	.byte	0x12
	.4byte	0x30a
	.byte	0x5
	.byte	0x3
	.4byte	uart_dev_log
	.byte	0x10
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x452
	.byte	0x11
	.4byte	.LVL12
	.4byte	0x577
	.byte	0x12
	.4byte	.LVL13
	.4byte	0x583
	.4byte	0x3e9
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x12
	.4byte	.LVL14
	.4byte	0x58f
	.4byte	0x41f
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	TaskUart
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.4byte	.LVL15
	.4byte	0x58f
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	proc_main_entry
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF98
	.byte	0x1
	.byte	0x37
	.byte	0xd
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x1
	.byte	0x9c
	.4byte	0x491
	.byte	0x16
	.4byte	.LASF80
	.byte	0x1
	.byte	0x37
	.byte	0x23
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LVL10
	.4byte	0x59c
	.byte	0x14
	.4byte	.LVL11
	.4byte	0x5a8
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF99
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x1
	.byte	0x9c
	.4byte	0x567
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.byte	0x24
	.byte	0x15
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x18
	.4byte	.LASF82
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x567
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LVL2
	.4byte	0x5b5
	.4byte	0x4f4
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x5c0
	.4byte	0x50b
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x12
	.4byte	.LVL4
	.4byte	0x5cc
	.4byte	0x52e
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x5d9
	.4byte	0x542
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x5e5
	.4byte	0x556
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x1a
	.4byte	.LVL8
	.4byte	0x5f1
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x4f
	.4byte	0x577
	.byte	0x1c
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x1d
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x7
	.byte	0x19
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.byte	0xdd
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x14a
	.byte	0xd
	.byte	0x1d
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xa
	.byte	0x1d
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x2c2
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF100
	.4byte	.LASF101
	.byte	0xc
	.byte	0
	.byte	0x1d
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x4
	.byte	0xe8
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x103
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xb
	.byte	0x29
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0x17
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x2f6
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
	.byte	0x7
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xd
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
	.byte	0x10
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"priv"
.LASF71:
	.string	"_POLL_STATE_NOT_READY"
.LASF68:
	.string	"_POLL_NUM_TYPES"
.LASF25:
	.string	"HOSAL_FLOW_CONTROL_CTS"
.LASF73:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF35:
	.string	"HOSAL_UART_MODE_INT_RX"
.LASF14:
	.string	"HOSAL_DATA_WIDTH_5BIT"
.LASF24:
	.string	"HOSAL_FLOW_CONTROL_DISABLED"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"HOSAL_STOP_BITS_1"
.LASF22:
	.string	"HOSAL_STOP_BITS_2"
.LASF99:
	.string	"TaskUart"
.LASF90:
	.string	"strlen"
.LASF56:
	.string	"txdma_cb"
.LASF16:
	.string	"HOSAL_DATA_WIDTH_7BIT"
.LASF78:
	.string	"BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING"
.LASF83:
	.string	"bl_sys_init"
.LASF97:
	.string	"main"
.LASF48:
	.string	"mode"
.LASF75:
	.string	"_POLL_NUM_STATES"
.LASF77:
	.string	"BT_GATT_SUBSCRIBE_FLAG_VOLATILE"
.LASF51:
	.string	"config"
.LASF101:
	.string	"__builtin_memset"
.LASF39:
	.string	"tx_pin"
.LASF7:
	.string	"uint8_t"
.LASF88:
	.string	"hosal_uart_init"
.LASF40:
	.string	"rx_pin"
.LASF43:
	.string	"baud_rate"
.LASF8:
	.string	"uint32_t"
.LASF63:
	.string	"hosal_uart_dev_t"
.LASF34:
	.string	"HOSAL_UART_MODE_INT_TX"
.LASF26:
	.string	"HOSAL_FLOW_CONTROL_RTS"
.LASF32:
	.string	"hosal_uart_parity_t"
.LASF47:
	.string	"flow_control"
.LASF13:
	.string	"hosal_uart_callback_t"
.LASF95:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/ble"
.LASF4:
	.string	"long long int"
.LASF30:
	.string	"HOSAL_ODD_PARITY"
.LASF100:
	.string	"memset"
.LASF98:
	.string	"proc_main_entry"
.LASF3:
	.string	"long int"
.LASF19:
	.string	"hosal_uart_data_width_t"
.LASF79:
	.string	"BT_GATT_SUBSCRIBE_NUM_FLAGS"
.LASF45:
	.string	"parity"
.LASF18:
	.string	"HOSAL_DATA_WIDTH_9BIT"
.LASF65:
	.string	"_POLL_TYPE_SIGNAL"
.LASF54:
	.string	"rx_cb"
.LASF58:
	.string	"rxdma_cb"
.LASF5:
	.string	"unsigned char"
.LASF66:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF91:
	.string	"UUID1_SendNotify"
.LASF64:
	.string	"_POLL_TYPE_IGNORE"
.LASF53:
	.string	"p_txarg"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF92:
	.string	"vTaskDelay"
.LASF33:
	.string	"HOSAL_UART_MODE_POLL"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"stop_bits"
.LASF86:
	.string	"apps_ble_start"
.LASF28:
	.string	"hosal_uart_flow_control_t"
.LASF84:
	.string	"puts"
.LASF59:
	.string	"p_rxdma_arg"
.LASF37:
	.string	"hosal_uart_mode_t"
.LASF52:
	.string	"tx_cb"
.LASF81:
	.string	"param"
.LASF6:
	.string	"short unsigned int"
.LASF21:
	.string	"HOSAL_STOP_BITS_1_5"
.LASF42:
	.string	"rts_pin"
.LASF49:
	.string	"hosal_uart_config_t"
.LASF11:
	.string	"char"
.LASF29:
	.string	"HOSAL_NO_PARITY"
.LASF57:
	.string	"p_txdma_arg"
.LASF27:
	.string	"HOSAL_FLOW_CONTROL_CTS_RTS"
.LASF31:
	.string	"HOSAL_EVEN_PARITY"
.LASF87:
	.string	"vTaskDelete"
.LASF76:
	.string	"_Bool"
.LASF61:
	.string	"dma_rx_chan"
.LASF82:
	.string	"data"
.LASF89:
	.string	"hosal_uart_receive"
.LASF74:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF50:
	.string	"port"
.LASF9:
	.string	"long unsigned int"
.LASF72:
	.string	"_POLL_STATE_SIGNALED"
.LASF60:
	.string	"dma_tx_chan"
.LASF38:
	.string	"uart_id"
.LASF69:
	.string	"_poll_types_bits"
.LASF94:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/main.c"
.LASF55:
	.string	"p_rxarg"
.LASF17:
	.string	"HOSAL_DATA_WIDTH_8BIT"
.LASF93:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF23:
	.string	"hosal_uart_stop_bits_t"
.LASF70:
	.string	"_poll_states_bits"
.LASF36:
	.string	"HOSAL_UART_MODE_INT"
.LASF80:
	.string	"pvParameters"
.LASF41:
	.string	"cts_pin"
.LASF12:
	.string	"hosal_dma_chan_t"
.LASF67:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF96:
	.string	"uart_dev_log"
.LASF85:
	.string	"xTaskCreate"
.LASF44:
	.string	"data_width"
.LASF15:
	.string	"HOSAL_DATA_WIDTH_6BIT"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
