	.file	"main.c"
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
	.string	"Button %d event received: %d\r\n"
	.align	2
.LC1:
	.string	">>> PRESS: Toggle LED\r\n"
	.align	2
.LC2:
	.string	">>> HOLD: Enter BLE mode\r\n"
	.section	.text.button_event_handler,"ax",@progbits
	.align	1
	.globl	button_event_handler
	.type	button_event_handler, @function
button_event_handler:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/datic/main.c"
	.loc 1 31 65
	.cfi_startproc
.LVL0:
	.loc 1 32 5
	.loc 1 31 65 is_stmt 0
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
	mv	s1,a1
	.loc 1 32 5
	mv	a2,a1
	mv	a1,a0
.LVL1:
	lui	a0,%hi(.LC0)
.LVL2:
	.loc 1 31 65
	.loc 1 32 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL3:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 8 is_stmt 0
	bne	s1,zero,.L2
	.loc 1 36 9 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL4:
	.loc 1 37 9
	.loc 1 44 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 37 9
	tail	led_toggle
.LVL6:
.L2:
	.cfi_restore_state
	.loc 1 39 10 is_stmt 1
	.loc 1 39 13 is_stmt 0
	li	a5,2
	bne	s1,a5,.L1
.LVL7:
.LBB4:
.LBB5:
	.loc 1 40 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL8:
	.loc 1 42 9
.LBE5:
.LBE4:
	.loc 1 44 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB7:
.LBB6:
	.loc 1 42 9
	tail	ble_test_adv
.LVL10:
.L1:
	.cfi_restore_state
.LBE6:
.LBE7:
	.loc 1 44 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL11:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	button_event_handler, .-button_event_handler
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"DATiC BLE Device Started\r\n"
	.align	2
.LC4:
	.string	"LED and Relay control via BLE enabled\r\n"
	.align	2
.LC5:
	.string	">>> check init \r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
	.loc 1 48 5
	.loc 1 47 1 is_stmt 0
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
	.loc 1 48 5
	call	bl_sys_init
.LVL12:
	.loc 1 49 5 is_stmt 1
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	hosal_uart_init
.LVL13:
	.loc 1 51 5
	call	led_state_init
.LVL14:
	.loc 1 52 5
	.loc 1 58 5 is_stmt 0
	lui	s1,%hi(button_event_handler)
	.loc 1 52 5
	call	relay_state_init
.LVL15:
	.loc 1 55 5 is_stmt 1
	call	button_driver_init
.LVL16:
	.loc 1 58 5
	addi	a1,s1,%lo(button_event_handler)
	li	a0,0
	call	button_register_callback
.LVL17:
	.loc 1 59 5
	addi	a1,s1,%lo(button_event_handler)
	li	a0,2
	call	button_register_callback
.LVL18:
	.loc 1 61 5
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL19:
	.loc 1 62 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL20:
	.loc 1 64 5
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL21:
.L6:
	.loc 1 71 5 discriminator 1
	.loc 1 74 9 discriminator 1
	li	a0,1000
	call	aos_msleep
.LVL22:
	.loc 1 71 11 discriminator 1
	j	.L6
	.cfi_endproc
.LFE4:
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
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/third_party/lib_button/app_btn.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/state_machine/led_state/led_state_machine.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/state_machine/relay_state/relay_state_machine.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/button/button.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_interface.h"
	.file 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/led/led.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5c2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.4byte	0x75
	.4byte	0xb3
	.byte	0x7
	.4byte	0x83
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x3e
	.byte	0xf
	.4byte	0xcb
	.byte	0x8
	.byte	0x4
	.4byte	0xa4
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x43
	.byte	0xe
	.4byte	0xfe
	.byte	0xa
	.4byte	.LASF16
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa
	.4byte	.LASF18
	.byte	0x2
	.byte	0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x49
	.byte	0x3
	.4byte	0xd1
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x4e
	.byte	0xe
	.4byte	0x12b
	.byte	0xa
	.4byte	.LASF22
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x52
	.byte	0x3
	.4byte	0x10a
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x57
	.byte	0xe
	.4byte	0x15e
	.byte	0xa
	.4byte	.LASF26
	.byte	0
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa
	.4byte	.LASF28
	.byte	0x2
	.byte	0xa
	.4byte	.LASF29
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x5c
	.byte	0x3
	.4byte	0x137
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x61
	.byte	0xe
	.4byte	0x18b
	.byte	0xa
	.4byte	.LASF31
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa
	.4byte	.LASF33
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x65
	.byte	0x3
	.4byte	0x16a
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x6a
	.byte	0xe
	.4byte	0x1be
	.byte	0xa
	.4byte	.LASF35
	.byte	0
	.byte	0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa
	.4byte	.LASF37
	.byte	0x2
	.byte	0xa
	.4byte	.LASF38
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x6f
	.byte	0x3
	.4byte	0x197
	.byte	0xb
	.byte	0x20
	.byte	0x5
	.byte	0x82
	.byte	0x9
	.4byte	0x263
	.byte	0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0x83
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0xc
	.4byte	.LASF41
	.byte	0x5
	.byte	0x84
	.byte	0xd
	.4byte	0x8c
	.byte	0x1
	.byte	0xc
	.4byte	.LASF42
	.byte	0x5
	.byte	0x85
	.byte	0xd
	.4byte	0x8c
	.byte	0x2
	.byte	0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x86
	.byte	0xd
	.4byte	0x8c
	.byte	0x3
	.byte	0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x87
	.byte	0xd
	.4byte	0x8c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x88
	.byte	0xe
	.4byte	0x98
	.byte	0x8
	.byte	0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x89
	.byte	0x1d
	.4byte	0xfe
	.byte	0xc
	.byte	0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x8a
	.byte	0x19
	.4byte	0x18b
	.byte	0x10
	.byte	0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x8b
	.byte	0x1c
	.4byte	0x12b
	.byte	0x14
	.byte	0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0x8c
	.byte	0x1f
	.4byte	0x15e
	.byte	0x18
	.byte	0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0x8d
	.byte	0x17
	.4byte	0x1be
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF51
	.byte	0x5
	.byte	0x8e
	.byte	0x3
	.4byte	0x1ca
	.byte	0xb
	.byte	0x50
	.byte	0x5
	.byte	0x93
	.byte	0x9
	.4byte	0x322
	.byte	0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0x94
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0x95
	.byte	0x19
	.4byte	0x263
	.byte	0x4
	.byte	0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0x96
	.byte	0x1b
	.4byte	0xbf
	.byte	0x24
	.byte	0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0x97
	.byte	0xb
	.4byte	0x83
	.byte	0x28
	.byte	0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0x98
	.byte	0x1b
	.4byte	0xbf
	.byte	0x2c
	.byte	0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0x99
	.byte	0xb
	.4byte	0x83
	.byte	0x30
	.byte	0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0x9a
	.byte	0x1b
	.4byte	0xbf
	.byte	0x34
	.byte	0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0x9b
	.byte	0xb
	.4byte	0x83
	.byte	0x38
	.byte	0xc
	.4byte	.LASF60
	.byte	0x5
	.byte	0x9c
	.byte	0x1b
	.4byte	0xbf
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0x9d
	.byte	0xb
	.4byte	0x83
	.byte	0x40
	.byte	0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0x9e
	.byte	0x16
	.4byte	0xb3
	.byte	0x44
	.byte	0xc
	.4byte	.LASF63
	.byte	0x5
	.byte	0x9f
	.byte	0x16
	.4byte	0xb3
	.byte	0x48
	.byte	0xc
	.4byte	.LASF64
	.byte	0x5
	.byte	0xa0
	.byte	0xb
	.4byte	0x83
	.byte	0x4c
	.byte	0
	.byte	0x3
	.4byte	.LASF65
	.byte	0x5
	.byte	0xa1
	.byte	0x3
	.4byte	0x26f
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x21
	.byte	0x1
	.4byte	0x373
	.byte	0xa
	.4byte	.LASF66
	.byte	0
	.byte	0xa
	.4byte	.LASF67
	.byte	0x1
	.byte	0xa
	.4byte	.LASF68
	.byte	0x2
	.byte	0xa
	.4byte	.LASF69
	.byte	0x3
	.byte	0xa
	.4byte	.LASF70
	.byte	0x4
	.byte	0xa
	.4byte	.LASF71
	.byte	0x5
	.byte	0xa
	.4byte	.LASF72
	.byte	0x6
	.byte	0xa
	.4byte	.LASF73
	.byte	0x7
	.byte	0xa
	.4byte	.LASF74
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF75
	.byte	0x6
	.byte	0x2b
	.byte	0x3
	.4byte	0x32e
	.byte	0xd
	.4byte	.LASF91
	.byte	0x1
	.byte	0xf
	.byte	0x12
	.4byte	0x322
	.byte	0x5
	.byte	0x3
	.4byte	uart_dev_log
	.byte	0xe
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x475
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x54c
	.byte	0x10
	.4byte	.LVL13
	.4byte	0x558
	.4byte	0x3cb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0xf
	.4byte	.LVL14
	.4byte	0x564
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x570
	.byte	0xf
	.4byte	.LVL16
	.4byte	0x57c
	.byte	0x10
	.4byte	.LVL17
	.4byte	0x588
	.4byte	0x402
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	button_event_handler
	.byte	0
	.byte	0x10
	.4byte	.LVL18
	.4byte	0x588
	.4byte	0x41e
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	button_event_handler
	.byte	0
	.byte	0x10
	.4byte	.LVL19
	.4byte	0x594
	.4byte	0x435
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x10
	.4byte	.LVL20
	.4byte	0x594
	.4byte	0x44c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x10
	.4byte	.LVL21
	.4byte	0x594
	.4byte	0x463
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x12
	.4byte	.LVL22
	.4byte	0x5a0
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF93
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.byte	0x1
	.4byte	0x49b
	.byte	0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1f
	.byte	0x1f
	.4byte	0x75
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x1f
	.byte	0x3a
	.4byte	0x373
	.byte	0
	.byte	0x15
	.4byte	0x475
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x54c
	.byte	0x16
	.4byte	0x482
	.4byte	.LLST0
	.byte	0x16
	.4byte	0x48e
	.4byte	.LLST1
	.byte	0x17
	.4byte	0x475
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	0x507
	.byte	0x16
	.4byte	0x482
	.4byte	.LLST2
	.byte	0x16
	.4byte	0x48e
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LVL8
	.4byte	0x594
	.4byte	0x4fd
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x18
	.4byte	.LVL10
	.4byte	0x5ad
	.byte	0
	.byte	0x10
	.4byte	.LVL3
	.4byte	0x594
	.4byte	0x52b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL4
	.4byte	0x594
	.4byte	0x542
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x18
	.4byte	.LVL6
	.4byte	0x5b9
	.byte	0
	.byte	0x19
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x7
	.byte	0x19
	.byte	0x5
	.byte	0x19
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.byte	0xe8
	.byte	0x5
	.byte	0x19
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x8
	.byte	0x18
	.byte	0x6
	.byte	0x19
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x9
	.byte	0x1d
	.byte	0x6
	.byte	0x19
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xa
	.byte	0x9
	.byte	0x6
	.byte	0x19
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xa
	.byte	0xa
	.byte	0x6
	.byte	0x19
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xc
	.2byte	0x207
	.byte	0xa
	.byte	0x19
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xd
	.byte	0x8
	.byte	0x6
	.byte	0x19
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xe
	.byte	0x8
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"priv"
.LASF27:
	.string	"HOSAL_FLOW_CONTROL_CTS"
.LASF26:
	.string	"HOSAL_FLOW_CONTROL_DISABLED"
.LASF85:
	.string	"aos_msleep"
.LASF37:
	.string	"HOSAL_UART_MODE_INT_RX"
.LASF16:
	.string	"HOSAL_DATA_WIDTH_5BIT"
.LASF20:
	.string	"HOSAL_DATA_WIDTH_9BIT"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"HOSAL_STOP_BITS_1"
.LASF24:
	.string	"HOSAL_STOP_BITS_2"
.LASF18:
	.string	"HOSAL_DATA_WIDTH_7BIT"
.LASF83:
	.string	"button_register_callback"
.LASF74:
	.string	"APP_BTN_EVT_MAX"
.LASF58:
	.string	"txdma_cb"
.LASF92:
	.string	"main"
.LASF6:
	.string	"__uint32_t"
.LASF72:
	.string	"APP_BTN_EVT_IDLE"
.LASF50:
	.string	"mode"
.LASF89:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/datic/main.c"
.LASF77:
	.string	"event"
.LASF53:
	.string	"config"
.LASF41:
	.string	"tx_pin"
.LASF12:
	.string	"uint8_t"
.LASF79:
	.string	"hosal_uart_init"
.LASF42:
	.string	"rx_pin"
.LASF82:
	.string	"button_driver_init"
.LASF45:
	.string	"baud_rate"
.LASF65:
	.string	"hosal_uart_dev_t"
.LASF36:
	.string	"HOSAL_UART_MODE_INT_TX"
.LASF28:
	.string	"HOSAL_FLOW_CONTROL_RTS"
.LASF93:
	.string	"button_event_handler"
.LASF34:
	.string	"hosal_uart_parity_t"
.LASF49:
	.string	"flow_control"
.LASF15:
	.string	"hosal_uart_callback_t"
.LASF17:
	.string	"HOSAL_DATA_WIDTH_6BIT"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"HOSAL_ODD_PARITY"
.LASF87:
	.string	"led_toggle"
.LASF69:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF4:
	.string	"long int"
.LASF75:
	.string	"app_btn_event_t"
.LASF84:
	.string	"printf"
.LASF70:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF66:
	.string	"APP_BTN_EVT_PRESSED"
.LASF5:
	.string	"__uint8_t"
.LASF47:
	.string	"parity"
.LASF23:
	.string	"HOSAL_STOP_BITS_1_5"
.LASF56:
	.string	"rx_cb"
.LASF81:
	.string	"relay_state_init"
.LASF60:
	.string	"rxdma_cb"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"hosal_uart_data_width_t"
.LASF78:
	.string	"bl_sys_init"
.LASF55:
	.string	"p_txarg"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF35:
	.string	"HOSAL_UART_MODE_POLL"
.LASF10:
	.string	"unsigned int"
.LASF48:
	.string	"stop_bits"
.LASF30:
	.string	"hosal_uart_flow_control_t"
.LASF61:
	.string	"p_rxdma_arg"
.LASF54:
	.string	"tx_cb"
.LASF73:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF3:
	.string	"short unsigned int"
.LASF91:
	.string	"uart_dev_log"
.LASF44:
	.string	"rts_pin"
.LASF68:
	.string	"APP_BTN_EVT_HOLD"
.LASF51:
	.string	"hosal_uart_config_t"
.LASF11:
	.string	"char"
.LASF31:
	.string	"HOSAL_NO_PARITY"
.LASF59:
	.string	"p_txdma_arg"
.LASF29:
	.string	"HOSAL_FLOW_CONTROL_CTS_RTS"
.LASF33:
	.string	"HOSAL_EVEN_PARITY"
.LASF90:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/datic"
.LASF63:
	.string	"dma_rx_chan"
.LASF40:
	.string	"uart_id"
.LASF67:
	.string	"APP_BTN_EVT_RELEASED"
.LASF52:
	.string	"port"
.LASF7:
	.string	"long unsigned int"
.LASF62:
	.string	"dma_tx_chan"
.LASF80:
	.string	"led_state_init"
.LASF88:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF86:
	.string	"ble_test_adv"
.LASF57:
	.string	"p_rxarg"
.LASF71:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF19:
	.string	"HOSAL_DATA_WIDTH_8BIT"
.LASF76:
	.string	"button_id"
.LASF39:
	.string	"hosal_uart_mode_t"
.LASF25:
	.string	"hosal_uart_stop_bits_t"
.LASF38:
	.string	"HOSAL_UART_MODE_INT"
.LASF43:
	.string	"cts_pin"
.LASF14:
	.string	"hosal_dma_chan_t"
.LASF46:
	.string	"data_width"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
