	.file	"led.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.led_init,"ax",@progbits
	.align	1
	.globl	led_init
	.type	led_init, @function
led_init:
.LFB3:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/hardware/led/led.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 11 5
	li	a1,0
	li	a2,0
	li	a0,17
	call	bl_gpio_enable_output
.LVL0:
	.loc 1 12 5 is_stmt 1
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
.LVL1:
	.cfi_endproc
.LFE3:
	.size	led_init, .-led_init
	.section	.text.led_on,"ax",@progbits
	.align	1
	.globl	led_on
	.type	led_on, @function
led_on:
.LFB4:
	.loc 1 16 1 is_stmt 1
	.cfi_startproc
	.loc 1 18 5
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 19 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 18 5
	li	a1,0
	li	a0,17
	.loc 1 19 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 18 5
	tail	bl_gpio_output_set
.LVL2:
	.cfi_endproc
.LFE4:
	.size	led_on, .-led_on
	.section	.text.led_off,"ax",@progbits
	.align	1
	.globl	led_off
	.type	led_off, @function
led_off:
.LFB5:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
	.loc 1 24 5
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 25 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 24 5
	li	a1,1
	li	a0,17
	.loc 1 25 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 24 5
	tail	bl_gpio_output_set
.LVL3:
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
.LVL4:
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
.LVL5:
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
.LVL6:
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
.LVL7:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL8:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL9:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L11:
	.cfi_restore_state
.LBB4:
	.loc 1 37 9 is_stmt 1 discriminator 3
	call	led_toggle
.LVL11:
	.loc 1 38 9 discriminator 3
	mv	a0,s1
	call	aos_msleep
.LVL12:
	.loc 1 39 9 discriminator 3
	call	led_toggle
.LVL13:
	.loc 1 40 9 discriminator 3
	mv	a0,s1
	call	aos_msleep
.LVL14:
	.loc 1 36 31 discriminator 3
	.loc 1 36 32 is_stmt 0 discriminator 3
	addi	s3,s3,1
.LVL15:
	j	.L10
.LBE4:
	.cfi_endproc
.LFE7:
	.size	led_blink, .-led_blink
	.section	.text.led_get_state,"ax",@progbits
	.align	1
	.globl	led_get_state
	.type	led_get_state, @function
led_get_state:
.LFB8:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
	.loc 1 47 5
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 48 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 47 12
	li	a0,17
	.loc 1 48 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 47 12
	tail	bl_gpio_input_get_value
.LVL16:
	.cfi_endproc
.LFE8:
	.size	led_get_state, .-led_get_state
	.section	.sbss.value.0,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	value.0, @object
	.size	value.0, 1
value.0:
	.zero	1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x22d
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
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8
	.byte	0x6
	.4byte	.LVL16
	.4byte	0x1ff
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x129
	.byte	0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x22
	.byte	0x14
	.4byte	0x69
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x22
	.byte	0x1f
	.4byte	0x69
	.4byte	.LLST1
	.byte	0xa
	.4byte	.Ldebug_ranges0+0
	.byte	0xb
	.string	"i"
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	0x69
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LVL11
	.4byte	0x129
	.byte	0xd
	.4byte	.LVL12
	.4byte	0x20b
	.4byte	0x10e
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LVL13
	.4byte	0x129
	.byte	0xe
	.4byte	.LVL14
	.4byte	0x20b
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x161
	.byte	0xf
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.byte	0x14
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	value.0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x218
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x18c
	.byte	0x6
	.4byte	.LVL3
	.4byte	0x218
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b7
	.byte	0x6
	.4byte	.LVL2
	.4byte	0x218
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ff
	.byte	0xd
	.4byte	.LVL0
	.4byte	0x224
	.4byte	0x1ea
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
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
	.byte	0x6
	.4byte	.LVL1
	.4byte	0x218
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x2
	.byte	0x13
	.byte	0x5
	.byte	0x11
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x207
	.byte	0xa
	.byte	0x10
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x2
	.byte	0x11
	.byte	0x5
	.byte	0x10
	.4byte	.LASF21
	.4byte	.LASF21
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
	.byte	0x95,0x42
	.byte	0x19
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
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x11
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
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL10
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB8
	.4byte	.LFE8
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
.LASF24:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/led"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"led_toggle"
.LASF20:
	.string	"bl_gpio_output_set"
.LASF6:
	.string	"long unsigned int"
.LASF22:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF19:
	.string	"aos_msleep"
.LASF7:
	.string	"long long unsigned int"
.LASF25:
	.string	"uint8_t"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF2:
	.string	"long int"
.LASF16:
	.string	"led_on"
.LASF23:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/components/hardware/led/led.c"
.LASF11:
	.string	"delay_ms"
.LASF26:
	.string	"led_get_state"
.LASF14:
	.string	"value"
.LASF18:
	.string	"bl_gpio_input_get_value"
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
