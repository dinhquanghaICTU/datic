	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB75:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/datic/main.c"
	.loc 1 28 1
	.cfi_startproc
	.loc 1 29 5
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 29 5
	call	bl_sys_init
.LVL0:
	.loc 1 31 5 is_stmt 1
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	hosal_uart_init
.LVL1:
	.loc 1 33 5
	.loc 1 36 5
	.loc 1 37 5
	li	a1,0
	li	a0,0
	call	tcpip_init
.LVL2:
	.loc 1 40 5
	li	a0,100
	call	aos_msleep
.LVL3:
	.loc 1 42 5
	call	app_run
.LVL4:
.L2:
	.loc 1 44 5 discriminator 1
	.loc 1 54 5 discriminator 1
	.loc 1 55 9 discriminator 1
	li	a0,1000
	call	aos_msleep
.LVL5:
	.loc 1 54 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE75:
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
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/gpio/m_app_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4fe
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF105
	.byte	0xc
	.4byte	.LASF106
	.4byte	.LASF107
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.byte	0x6
	.4byte	0x75
	.4byte	0x9b
	.byte	0x7
	.4byte	0x83
	.byte	0
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x38
	.byte	0xd
	.4byte	0x75
	.byte	0x3
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
	.4byte	0x7c
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
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x49
	.byte	0x3
	.4byte	0xb9
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
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
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x52
	.byte	0x3
	.4byte	0xf2
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
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
	.byte	0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5c
	.byte	0x3
	.4byte	0x11f
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
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
	.byte	0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x65
	.byte	0x3
	.4byte	0x152
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
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
	.byte	0x3
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
	.4byte	0x41
	.byte	0
	.byte	0xc
	.4byte	.LASF39
	.byte	0x4
	.byte	0x84
	.byte	0xd
	.4byte	0x41
	.byte	0x1
	.byte	0xc
	.4byte	.LASF40
	.byte	0x4
	.byte	0x85
	.byte	0xd
	.4byte	0x41
	.byte	0x2
	.byte	0xc
	.4byte	.LASF41
	.byte	0x4
	.byte	0x86
	.byte	0xd
	.4byte	0x41
	.byte	0x3
	.byte	0xc
	.4byte	.LASF42
	.byte	0x4
	.byte	0x87
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0xc
	.4byte	.LASF43
	.byte	0x4
	.byte	0x88
	.byte	0xe
	.4byte	0x5b
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
	.byte	0x3
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
	.4byte	0x41
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
	.byte	0x3
	.4byte	.LASF63
	.byte	0x4
	.byte	0xa1
	.byte	0x3
	.4byte	0x257
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x34
	.byte	0xe
	.4byte	0x385
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
	.byte	0xa
	.4byte	.LASF69
	.byte	0x5
	.byte	0xa
	.4byte	.LASF70
	.byte	0x6
	.byte	0xa
	.4byte	.LASF71
	.byte	0x7
	.byte	0xa
	.4byte	.LASF72
	.byte	0x8
	.byte	0xa
	.4byte	.LASF73
	.byte	0x9
	.byte	0xa
	.4byte	.LASF74
	.byte	0xa
	.byte	0xa
	.4byte	.LASF75
	.byte	0xb
	.byte	0xa
	.4byte	.LASF76
	.byte	0xc
	.byte	0xa
	.4byte	.LASF77
	.byte	0xd
	.byte	0xa
	.4byte	.LASF78
	.byte	0xe
	.byte	0xa
	.4byte	.LASF79
	.byte	0xf
	.byte	0
	.byte	0xd
	.4byte	.LASF83
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x71
	.byte	0x6
	.4byte	0x3aa
	.byte	0xa
	.4byte	.LASF80
	.byte	0
	.byte	0xa
	.4byte	.LASF81
	.byte	0x1
	.byte	0xa
	.4byte	.LASF82
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	.LASF84
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x36
	.byte	0x6
	.4byte	0x3db
	.byte	0xa
	.4byte	.LASF85
	.byte	0
	.byte	0xa
	.4byte	.LASF86
	.byte	0x1
	.byte	0xa
	.4byte	.LASF87
	.byte	0x2
	.byte	0xa
	.4byte	.LASF88
	.byte	0x3
	.byte	0xa
	.4byte	.LASF89
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF90
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x40
	.byte	0x6
	.4byte	0x40c
	.byte	0xa
	.4byte	.LASF91
	.byte	0
	.byte	0xa
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa
	.4byte	.LASF93
	.byte	0x2
	.byte	0xa
	.4byte	.LASF94
	.byte	0x3
	.byte	0xa
	.4byte	.LASF95
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF96
	.byte	0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x8
	.2byte	0x50e
	.byte	0x6
	.4byte	0x435
	.byte	0xa
	.4byte	.LASF97
	.byte	0
	.byte	0xa
	.4byte	.LASF98
	.byte	0x1
	.byte	0xa
	.4byte	.LASF99
	.byte	0x2
	.byte	0
	.byte	0xf
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb
	.byte	0x12
	.4byte	0x30a
	.byte	0x5
	.byte	0x3
	.4byte	uart_dev_log
	.byte	0x10
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c4
	.byte	0x11
	.4byte	.LVL0
	.4byte	0x4c4
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x4d0
	.4byte	0x47d
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x12
	.4byte	.LVL2
	.4byte	0x4dc
	.4byte	0x495
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x4e8
	.4byte	0x4a9
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x11
	.4byte	.LVL4
	.4byte	0x4f5
	.byte	0x14
	.4byte	.LVL5
	.4byte	0x4e8
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x9
	.byte	0x19
	.byte	0x5
	.byte	0x15
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x4
	.byte	0xe8
	.byte	0x5
	.byte	0x15
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xa
	.byte	0x4d
	.byte	0x6
	.byte	0x16
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x207
	.byte	0xa
	.byte	0x15
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xc
	.byte	0x4
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
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"priv"
.LASF12:
	.string	"hosal_dma_chan_t"
.LASF89:
	.string	"_POLL_NUM_TYPES"
.LASF25:
	.string	"HOSAL_FLOW_CONTROL_CTS"
.LASF103:
	.string	"aos_msleep"
.LASF35:
	.string	"HOSAL_UART_MODE_INT_RX"
.LASF14:
	.string	"HOSAL_DATA_WIDTH_5BIT"
.LASF24:
	.string	"HOSAL_FLOW_CONTROL_DISABLED"
.LASF1:
	.string	"short int"
.LASF20:
	.string	"HOSAL_STOP_BITS_1"
.LASF22:
	.string	"HOSAL_STOP_BITS_2"
.LASF102:
	.string	"tcpip_init"
.LASF98:
	.string	"BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING"
.LASF56:
	.string	"txdma_cb"
.LASF109:
	.string	"main"
.LASF26:
	.string	"HOSAL_FLOW_CONTROL_RTS"
.LASF48:
	.string	"mode"
.LASF106:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/datic/main.c"
.LASF73:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF74:
	.string	"MEMP_IGMP_GROUP"
.LASF97:
	.string	"BT_GATT_SUBSCRIBE_FLAG_VOLATILE"
.LASF51:
	.string	"config"
.LASF75:
	.string	"MEMP_SYS_TIMEOUT"
.LASF39:
	.string	"tx_pin"
.LASF82:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF101:
	.string	"hosal_uart_init"
.LASF40:
	.string	"rx_pin"
.LASF67:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF43:
	.string	"baud_rate"
.LASF63:
	.string	"hosal_uart_dev_t"
.LASF34:
	.string	"HOSAL_UART_MODE_INT_TX"
.LASF76:
	.string	"MEMP_NETDB"
.LASF32:
	.string	"hosal_uart_parity_t"
.LASF47:
	.string	"flow_control"
.LASF13:
	.string	"hosal_uart_callback_t"
.LASF15:
	.string	"HOSAL_DATA_WIDTH_6BIT"
.LASF3:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF83:
	.string	"lwip_internal_netif_client_data_index"
.LASF11:
	.string	"char"
.LASF93:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF2:
	.string	"long int"
.LASF19:
	.string	"hosal_uart_data_width_t"
.LASF99:
	.string	"BT_GATT_SUBSCRIBE_NUM_FLAGS"
.LASF72:
	.string	"MEMP_TCPIP_MSG_API"
.LASF45:
	.string	"parity"
.LASF18:
	.string	"HOSAL_DATA_WIDTH_9BIT"
.LASF90:
	.string	"_poll_states_bits"
.LASF86:
	.string	"_POLL_TYPE_SIGNAL"
.LASF54:
	.string	"rx_cb"
.LASF80:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF58:
	.string	"rxdma_cb"
.LASF91:
	.string	"_POLL_STATE_NOT_READY"
.LASF4:
	.string	"unsigned char"
.LASF85:
	.string	"_POLL_TYPE_IGNORE"
.LASF100:
	.string	"bl_sys_init"
.LASF53:
	.string	"p_txarg"
.LASF0:
	.string	"signed char"
.LASF81:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF7:
	.string	"uint32_t"
.LASF33:
	.string	"HOSAL_UART_MODE_POLL"
.LASF10:
	.string	"unsigned int"
.LASF46:
	.string	"stop_bits"
.LASF94:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF16:
	.string	"HOSAL_DATA_WIDTH_7BIT"
.LASF59:
	.string	"p_rxdma_arg"
.LASF52:
	.string	"tx_cb"
.LASF5:
	.string	"short unsigned int"
.LASF79:
	.string	"MEMP_MAX"
.LASF21:
	.string	"HOSAL_STOP_BITS_1_5"
.LASF42:
	.string	"rts_pin"
.LASF49:
	.string	"hosal_uart_config_t"
.LASF87:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF29:
	.string	"HOSAL_NO_PARITY"
.LASF57:
	.string	"p_txdma_arg"
.LASF27:
	.string	"HOSAL_FLOW_CONTROL_CTS_RTS"
.LASF31:
	.string	"HOSAL_EVEN_PARITY"
.LASF107:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/datic"
.LASF96:
	.string	"_Bool"
.LASF61:
	.string	"dma_rx_chan"
.LASF77:
	.string	"MEMP_PBUF"
.LASF38:
	.string	"uart_id"
.LASF50:
	.string	"port"
.LASF104:
	.string	"app_run"
.LASF8:
	.string	"long unsigned int"
.LASF92:
	.string	"_POLL_STATE_SIGNALED"
.LASF64:
	.string	"MEMP_RAW_PCB"
.LASF60:
	.string	"dma_tx_chan"
.LASF28:
	.string	"hosal_uart_flow_control_t"
.LASF105:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF84:
	.string	"_poll_types_bits"
.LASF55:
	.string	"p_rxarg"
.LASF17:
	.string	"HOSAL_DATA_WIDTH_8BIT"
.LASF6:
	.string	"uint8_t"
.LASF78:
	.string	"MEMP_PBUF_POOL"
.LASF68:
	.string	"MEMP_TCP_SEG"
.LASF37:
	.string	"hosal_uart_mode_t"
.LASF23:
	.string	"hosal_uart_stop_bits_t"
.LASF71:
	.string	"MEMP_NETCONN"
.LASF36:
	.string	"HOSAL_UART_MODE_INT"
.LASF41:
	.string	"cts_pin"
.LASF66:
	.string	"MEMP_TCP_PCB"
.LASF95:
	.string	"_POLL_NUM_STATES"
.LASF65:
	.string	"MEMP_UDP_PCB"
.LASF88:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF30:
	.string	"HOSAL_ODD_PARITY"
.LASF69:
	.string	"MEMP_ALTCP_PCB"
.LASF108:
	.string	"uart_dev_log"
.LASF44:
	.string	"data_width"
.LASF70:
	.string	"MEMP_NETBUF"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
