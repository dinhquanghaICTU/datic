	.file	"led.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.led_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	">>>>> this point\r\n"
	.section	.text.led_init,"ax",@progbits
	.align	1
	.globl	led_init
	.type	led_init, @function
led_init:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/led/led.c"
	.loc 1 9 1
	.cfi_startproc
	.loc 1 10 5
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 10 5
	lui	a0,%hi(.LC0)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 9 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 10 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL0:
	.loc 1 11 5 is_stmt 1
	li	a1,0
	li	a2,0
	li	a0,17
	call	bl_gpio_enable_output
.LVL1:
	.loc 1 12 5
	.loc 1 13 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 12 5
	li	a1,1
	.loc 1 13 1
	.loc 1 12 5
	li	a0,17
	.loc 1 13 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 12 5
	tail	bl_gpio_output_set
.LVL2:
	.cfi_endproc
.LFE3:
	.size	led_init, .-led_init
	.section	.rodata.led_on.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	">>>>> led on\r\n"
	.section	.text.led_on,"ax",@progbits
	.align	1
	.globl	led_on
	.type	led_on, @function
led_on:
.LFB4:
	.loc 1 16 1 is_stmt 1
	.cfi_startproc
	.loc 1 17 5
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 17 5
	lui	a0,%hi(.LC1)
	.loc 1 16 1
	.loc 1 17 5
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL3:
	.loc 1 18 5 is_stmt 1
	.loc 1 19 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 18 5
	li	a1,0
	.loc 1 19 1
	.loc 1 18 5
	li	a0,17
	.loc 1 19 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 18 5
	tail	bl_gpio_output_set
.LVL4:
	.cfi_endproc
.LFE4:
	.size	led_on, .-led_on
	.section	.rodata.led_off.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	">>>>> led off\r\n"
	.section	.text.led_off,"ax",@progbits
	.align	1
	.globl	led_off
	.type	led_off, @function
led_off:
.LFB5:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
	.loc 1 23 5
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 23 5
	lui	a0,%hi(.LC2)
	.loc 1 22 1
	.loc 1 23 5
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL5:
	.loc 1 24 5 is_stmt 1
	.loc 1 25 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 24 5
	li	a1,1
	.loc 1 25 1
	.loc 1 24 5
	li	a0,17
	.loc 1 25 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 24 5
	tail	bl_gpio_output_set
.LVL6:
	.cfi_endproc
.LFE5:
	.size	led_off, .-led_off
	.section	.text.led_toggle,"ax",@progbits
	.align	1
	.globl	led_toggle
	.type	led_toggle, @function
led_toggle:
.LFB6:
	.loc 1 28 1 is_stmt 1
	.cfi_startproc
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 28 1 is_stmt 0
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
	.loc 1 30 5
	lui	s1,%hi(.LANCHOR0)
	.loc 1 28 1
	.loc 1 30 5
	addi	s1,s1,%lo(.LANCHOR0)
	lbu	a1,0(s1)
	li	a0,17
	call	bl_gpio_output_set
.LVL7:
	.loc 1 31 5 is_stmt 1
	.loc 1 31 13 is_stmt 0
	lbu	a5,0(s1)
	.loc 1 32 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 31 13
	seqz	a5,a5
	sb	a5,0(s1)
	.loc 1 32 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	led_toggle, .-led_toggle
	.section	.text.led_blink,"ax",@progbits
	.align	1
	.globl	led_blink
	.type	led_blink, @function
led_blink:
.LFB7:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 36 5
.LBB2:
	.loc 1 36 9
.LBE2:
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 35 1
	mv	s2,a0
	mv	s1,a1
.LBB3:
	.loc 1 36 13
	li	s3,0
.LVL9:
.L10:
	.loc 1 36 20 is_stmt 1 discriminator 1
	.loc 1 36 5 is_stmt 0 discriminator 1
	blt	s3,s2,.L11
.LBE3:
	.loc 1 42 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL10:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL11:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL12:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L11:
	.cfi_restore_state
.LBB4:
	.loc 1 37 9 is_stmt 1 discriminator 3
	call	led_toggle
.LVL14:
	.loc 1 38 9 discriminator 3
	mv	a0,s1
	call	aos_msleep
.LVL15:
	.loc 1 39 9 discriminator 3
	call	led_toggle
.LVL16:
	.loc 1 40 9 discriminator 3
	mv	a0,s1
	call	aos_msleep
.LVL17:
	.loc 1 36 31 discriminator 3
	.loc 1 36 32 is_stmt 0 discriminator 3
	addi	s3,s3,1
.LVL18:
	j	.L10
.LBE4:
	.cfi_endproc
.LFE7:
	.size	led_blink, .-led_blink
	.section	.sbss.value.0,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	value.0, @object
	.size	value.0, 1
value.0:
	.zero	1
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x248
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.Ldebug_ranges0+0x20
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
	.4byte	.LASF25
	.byte	0x5
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
	.4byte	.LASF12
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xff
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x22
	.byte	0x14
	.4byte	0x69
	.4byte	.LLST0
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x22
	.byte	0x1f
	.4byte	0x69
	.4byte	.LLST1
	.byte	0x7
	.4byte	.Ldebug_ranges0+0
	.byte	0x8
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	0x69
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LVL14
	.4byte	0xff
	.byte	0xa
	.4byte	.LVL15
	.4byte	0x21a
	.4byte	0xe4
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL16
	.4byte	0xff
	.byte	0xc
	.4byte	.LVL17
	.4byte	0x21a
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x137
	.byte	0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.byte	0x14
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	value.0
	.byte	0xc
	.4byte	.LVL7
	.4byte	0x227
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x179
	.byte	0xa
	.4byte	.LVL5
	.4byte	0x233
	.4byte	0x164
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x227
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bb
	.byte	0xa
	.4byte	.LVL3
	.4byte	0x233
	.4byte	0x1a6
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x227
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x21a
	.byte	0xa
	.4byte	.LVL0
	.4byte	0x233
	.4byte	0x1e8
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xa
	.4byte	.LVL1
	.4byte	0x23f
	.4byte	0x205
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xb
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL2
	.4byte	0x227
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x207
	.byte	0xa
	.byte	0x10
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x3
	.byte	0x11
	.byte	0x5
	.byte	0x10
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x4
	.byte	0xc8
	.byte	0x5
	.byte	0x10
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x3
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
	.byte	0x7
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x63
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
	.4byte	.LBB2
	.4byte	.LBE2
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
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"short unsigned int"
.LASF17:
	.string	"led_init"
.LASF8:
	.string	"unsigned int"
.LASF23:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/led/led.c"
.LASF13:
	.string	"led_toggle"
.LASF19:
	.string	"bl_gpio_output_set"
.LASF6:
	.string	"long unsigned int"
.LASF22:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF18:
	.string	"aos_msleep"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF25:
	.string	"uint8_t"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF24:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/led"
.LASF16:
	.string	"led_on"
.LASF11:
	.string	"delay_ms"
.LASF20:
	.string	"printf"
.LASF2:
	.string	"long int"
.LASF14:
	.string	"value"
.LASF21:
	.string	"bl_gpio_enable_output"
.LASF1:
	.string	"short int"
.LASF10:
	.string	"times"
.LASF12:
	.string	"led_blink"
.LASF15:
	.string	"led_off"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
