	.file	"relay.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.relay_init,"ax",@progbits
	.align	1
	.globl	relay_init
	.type	relay_init, @function
relay_init:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/relay/relay.c"
	.loc 1 9 22
	.cfi_startproc
	.loc 1 10 5
	.loc 1 9 22 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 10 5
	li	a1,0
	li	a2,0
	li	a0,22
	call	bl_gpio_enable_output
.LVL0:
	.loc 1 11 5 is_stmt 1
	.loc 1 12 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 11 5
	li	a1,0
	.loc 1 12 1
	.loc 1 11 5
	li	a0,22
	.loc 1 12 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 11 5
	tail	bl_gpio_output_set
.LVL1:
	.cfi_endproc
.LFE3:
	.size	relay_init, .-relay_init
	.section	.rodata.relay_on.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	">>> relay on\r\n"
	.section	.text.relay_on,"ax",@progbits
	.align	1
	.globl	relay_on
	.type	relay_on, @function
relay_on:
.LFB4:
	.loc 1 14 20 is_stmt 1
	.cfi_startproc
	.loc 1 15 5
	.loc 1 14 20 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 15 5
	lui	a0,%hi(.LC0)
	.loc 1 14 20
	.loc 1 15 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL2:
	.loc 1 16 5 is_stmt 1
	.loc 1 17 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 16 5
	li	a1,1
	.loc 1 17 1
	.loc 1 16 5
	li	a0,22
	.loc 1 17 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 16 5
	tail	bl_gpio_output_set
.LVL3:
	.cfi_endproc
.LFE4:
	.size	relay_on, .-relay_on
	.section	.rodata.relay_off.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	">>> relay off\r\n"
	.section	.text.relay_off,"ax",@progbits
	.align	1
	.globl	relay_off
	.type	relay_off, @function
relay_off:
.LFB5:
	.loc 1 19 21 is_stmt 1
	.cfi_startproc
	.loc 1 20 5
	.loc 1 19 21 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 20 5
	lui	a0,%hi(.LC1)
	.loc 1 19 21
	.loc 1 20 5
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL4:
	.loc 1 21 5 is_stmt 1
	.loc 1 22 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 21 5
	li	a1,0
	.loc 1 22 1
	.loc 1 21 5
	li	a0,22
	.loc 1 22 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 21 5
	tail	bl_gpio_output_set
.LVL5:
	.cfi_endproc
.LFE5:
	.size	relay_off, .-relay_off
	.section	.rodata.relay_toggle.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	">>> relay toggle\r\n"
	.section	.text.relay_toggle,"ax",@progbits
	.align	1
	.globl	relay_toggle
	.type	relay_toggle, @function
relay_toggle:
.LFB6:
	.loc 1 24 24 is_stmt 1
	.cfi_startproc
	.loc 1 25 5
	.loc 1 24 24 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 25 5
	lui	a0,%hi(.LC2)
	.loc 1 24 24
	.loc 1 25 5
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL6:
	.loc 1 26 5 is_stmt 1
	.loc 1 27 5
	.loc 1 27 19 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a1,0(a5)
	.loc 1 28 5
	li	a0,22
	.loc 1 27 19
	seqz	a1,a1
	.loc 1 27 17
	sb	a1,0(a5)
	.loc 1 28 5 is_stmt 1
	.loc 1 29 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 28 5
	tail	bl_gpio_output_set
.LVL7:
	.cfi_endproc
.LFE6:
	.size	relay_toggle, .-relay_toggle
	.section	.text.relay_get_state,"ax",@progbits
	.align	1
	.globl	relay_get_state
	.type	relay_get_state, @function
relay_get_state:
.LFB7:
	.loc 1 31 30 is_stmt 1
	.cfi_startproc
	.loc 1 33 5
	.loc 1 31 30 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 12
	li	a0,22
	call	bl_gpio_input_get_value
.LVL8:
	.loc 1 34 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	andi	a0,a0,0xff
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	relay_get_state, .-relay_get_state
	.section	.sbss.relay_state.0,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	relay_state.0, @object
	.size	relay_state.0, 1
relay_state.0:
	.zero	1
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
	.4byte	.LASF20
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
	.4byte	.LASF21
	.byte	0x4
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
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
	.byte	0x5
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8
	.byte	0x6
	.4byte	.LVL8
	.4byte	0x1c3
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF10
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xf7
	.byte	0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1a
	.byte	0x14
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	relay_state.0
	.byte	0xa
	.4byte	.LVL6
	.4byte	0x1cf
	.4byte	0xe7
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0xb
	.4byte	.LVL7
	.4byte	0x1db
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x139
	.byte	0xa
	.4byte	.LVL4
	.4byte	0x1cf
	.4byte	0x124
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xb
	.4byte	.LVL5
	.4byte	0x1db
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x17b
	.byte	0xa
	.4byte	.LVL2
	.4byte	0x1cf
	.4byte	0x166
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xb
	.4byte	.LVL3
	.4byte	0x1db
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c3
	.byte	0xa
	.4byte	.LVL0
	.4byte	0x1e7
	.4byte	0x1ae
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x7
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xb
	.4byte	.LVL1
	.4byte	0x1db
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x2
	.byte	0x13
	.byte	0x5
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x3
	.byte	0xc8
	.byte	0x5
	.byte	0xc
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x2
	.byte	0x11
	.byte	0x5
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x2
	.byte	0xf
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
	.byte	0x6
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
.LASF3:
	.string	"long long int"
.LASF8:
	.string	"unsigned int"
.LASF19:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/relay/relay.c"
.LASF22:
	.string	"relay_get_state"
.LASF16:
	.string	"bl_gpio_output_set"
.LASF23:
	.string	"relay_state"
.LASF6:
	.string	"long unsigned int"
.LASF18:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF7:
	.string	"long long unsigned int"
.LASF21:
	.string	"uint8_t"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF13:
	.string	"relay_init"
.LASF2:
	.string	"long int"
.LASF11:
	.string	"relay_off"
.LASF5:
	.string	"short unsigned int"
.LASF15:
	.string	"printf"
.LASF20:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/relay"
.LASF14:
	.string	"bl_gpio_input_get_value"
.LASF17:
	.string	"bl_gpio_enable_output"
.LASF1:
	.string	"short int"
.LASF10:
	.string	"relay_toggle"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"relay_on"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
