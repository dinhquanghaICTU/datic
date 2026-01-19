	.file	"bl_gpio_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cmd_gpio_get.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Illegal arg\r\n"
	.section	.text.cmd_gpio_get,"ax",@progbits
	.align	1
	.type	cmd_gpio_get, @function
cmd_gpio_get:
.LFB6:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio_cli.c"
	.loc 1 65 1
	.cfi_startproc
.LVL0:
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 69 5
	.loc 1 70 5
	.loc 1 70 8 is_stmt 0
	li	a5,2
	bne	a2,a5,.L6
	.loc 1 76 5 is_stmt 1
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 76 13
	lw	a0,4(a3)
.LVL1:
	call	atoi
.LVL2:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 8 is_stmt 0
	bge	a0,zero,.L3
	.loc 1 78 9 is_stmt 1
	.loc 1 86 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 78 9
	lui	a0,%hi(.LC0)
.LVL3:
	.loc 1 86 1
	.loc 1 78 9
	addi	a0,a0,%lo(.LC0)
	.loc 1 86 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 78 9
	tail	puts
.LVL4:
.L3:
	.cfi_restore_state
	.loc 1 81 5 is_stmt 1
	.loc 1 81 11 is_stmt 0
	addi	a1,s0,-17
	andi	a0,a0,0xff
.LVL5:
	call	bl_gpio_input_get
.LVL6:
	.loc 1 85 6 is_stmt 1
	.loc 1 86 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L6:
	ret
	.cfi_endproc
.LFE6:
	.size	cmd_gpio_get, .-cmd_gpio_get
	.section	.text.cmd_gpio_set,"ax",@progbits
	.align	1
	.type	cmd_gpio_set, @function
cmd_gpio_set:
.LFB5:
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 43 5
	.loc 1 45 5
	.loc 1 45 8 is_stmt 0
	li	a5,3
	bne	a2,a5,.L14
	.loc 1 42 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB4:
.LBB5:
	.loc 1 51 13
	lw	a0,4(a3)
.LVL9:
	mv	s2,a3
.LVL10:
	.loc 1 51 5 is_stmt 1
	.loc 1 51 13 is_stmt 0
	call	atoi
.LVL11:
	mv	s1,a0
.LVL12:
	.loc 1 52 5 is_stmt 1
	.loc 1 52 11 is_stmt 0
	lw	a0,8(s2)
	call	atoi
.LVL13:
	.loc 1 53 5 is_stmt 1
	.loc 1 53 8 is_stmt 0
	blt	s1,zero,.L9
	.loc 1 53 19
	blt	a0,zero,.L9
	.loc 1 60 6 is_stmt 1
	.loc 1 61 5
.LBE5:
.LBE4:
	.loc 1 62 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL14:
.LBB8:
.LBB6:
	.loc 1 61 5
	snez	a1,a0
	andi	a0,s1,0xff
.LVL15:
.LBE6:
.LBE8:
	.loc 1 62 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL16:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB9:
.LBB7:
	.loc 1 61 5
	tail	bl_gpio_output_set
.LVL17:
.L9:
	.cfi_restore_state
.LBE7:
.LBE9:
	.loc 1 62 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL18:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL19:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L14:
	ret
	.cfi_endproc
.LFE5:
	.size	cmd_gpio_set, .-cmd_gpio_set
	.section	.text.cmd_gpio_func,"ax",@progbits
	.align	1
	.type	cmd_gpio_func, @function
cmd_gpio_func:
.LFB4:
	.loc 1 11 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 12 5
	.loc 1 14 5
	.loc 1 14 8 is_stmt 0
	li	a5,5
	bne	a2,a5,.L23
	.loc 1 11 1
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
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
.LBB12:
.LBB13:
	.loc 1 20 13
	lw	a0,4(a3)
.LVL22:
	mv	s3,a3
.LVL23:
	.loc 1 20 5 is_stmt 1
	.loc 1 20 13 is_stmt 0
	call	atoi
.LVL24:
	mv	s1,a0
.LVL25:
	.loc 1 21 5 is_stmt 1
	.loc 1 21 17 is_stmt 0
	lw	a0,8(s3)
	call	atoi
.LVL26:
	mv	s4,a0
.LVL27:
	.loc 1 22 5 is_stmt 1
	.loc 1 22 14 is_stmt 0
	lw	a0,12(s3)
.LVL28:
	call	atoi
.LVL29:
	mv	s2,a0
.LVL30:
	.loc 1 23 5 is_stmt 1
	.loc 1 23 16 is_stmt 0
	lw	a0,16(s3)
.LVL31:
	call	atoi
.LVL32:
	mv	a2,a0
.LVL33:
	.loc 1 24 5 is_stmt 1
	.loc 1 24 8 is_stmt 0
	blt	s1,zero,.L17
	.loc 1 24 19
	blt	s4,zero,.L17
	.loc 1 24 36
	blt	s2,zero,.L17
	.loc 1 24 50
	blt	a0,zero,.L17
	.loc 1 33 6 is_stmt 1
	.loc 1 34 5
	.loc 1 35 9 is_stmt 0
	andi	a0,s1,0xff
.LVL34:
	snez	a1,s2
	snez	a2,a2
.LVL35:
	.loc 1 34 8
	beq	s4,zero,.L21
	.loc 1 35 9 is_stmt 1
.LBE13:
.LBE12:
	.loc 1 39 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL37:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL38:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL39:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB16:
.LBB14:
	.loc 1 35 9
	tail	bl_gpio_enable_input
.LVL40:
.L21:
	.cfi_restore_state
	.loc 1 37 9 is_stmt 1
.LBE14:
.LBE16:
	.loc 1 39 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL41:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL42:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL43:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL44:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB17:
.LBB15:
	.loc 1 37 9
	tail	bl_gpio_enable_output
.LVL45:
.L17:
	.cfi_restore_state
.LBE15:
.LBE17:
	.loc 1 39 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL46:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL47:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL48:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL49:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL50:
.L23:
	ret
	.cfi_endproc
.LFE4:
	.size	cmd_gpio_func, .-cmd_gpio_func
	.section	.text.bl_gpio_cli_init,"ax",@progbits
	.align	1
	.globl	bl_gpio_cli_init
	.type	bl_gpio_cli_init, @function
bl_gpio_cli_init:
.LFB7:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
	.loc 1 101 5
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 102 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	bl_gpio_cli_init, .-bl_gpio_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"gpio-func"
	.align	2
.LC2:
	.string	"gpio-func pinnum 0/1[0:output, 1:input] 0/1[pullup] 0/1[pulldown]"
	.align	2
.LC3:
	.string	"gpio-set"
	.align	2
.LC4:
	.string	"gpio-set pinnum 0/1"
	.align	2
.LC5:
	.string	"gpio-get"
	.align	2
.LC6:
	.string	"gpio-get pinnum"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 36
cmds_user:
	.word	.LC1
	.word	.LC2
	.word	cmd_gpio_func
	.word	.LC3
	.word	.LC4
	.word	cmd_gpio_set
	.word	.LC5
	.word	.LC6
	.word	cmd_gpio_get
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x484
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.4byte	0x7d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	0x7d
	.byte	0x5
	.byte	0x4
	.4byte	0x84
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x7
	.4byte	.LASF33
	.byte	0xc
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.4byte	0xd0
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0x33
	.byte	0x11
	.4byte	0x89
	.byte	0
	.byte	0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x34
	.byte	0x11
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0xc
	.4byte	0xf5
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x9b
	.byte	0x9
	.4byte	0xef
	.byte	0xa
	.4byte	0x77
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0xef
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x77
	.byte	0x5
	.byte	0x4
	.4byte	0xd5
	.byte	0xb
	.4byte	0xd0
	.4byte	0x10b
	.byte	0xc
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x6
	.4byte	0xfb
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x59
	.byte	0x21
	.4byte	0x10b
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ea
	.byte	0x10
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.byte	0x20
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x40
	.byte	0x29
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x11
	.4byte	.LASF15
	.byte	0x1
	.byte	0x40
	.byte	0x32
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x40
	.byte	0x3f
	.4byte	0xef
	.4byte	.LLST3
	.byte	0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0x13
	.string	"ret"
	.byte	0x1
	.byte	0x42
	.byte	0x15
	.4byte	0x2c
	.byte	0x14
	.string	"val"
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LVL2
	.4byte	0x43f
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x44b
	.4byte	0x1d9
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x18
	.4byte	.LVL6
	.4byte	0x457
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF19
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.byte	0x1
	.4byte	0x240
	.byte	0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x29
	.byte	0x20
	.4byte	0x77
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0x29
	.byte	0x29
	.4byte	0x2c
	.byte	0x1b
	.4byte	.LASF15
	.byte	0x1
	.byte	0x29
	.byte	0x32
	.4byte	0x2c
	.byte	0x1b
	.4byte	.LASF16
	.byte	0x1
	.byte	0x29
	.byte	0x3f
	.4byte	0xef
	.byte	0x1c
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0x2c
	.byte	0x13
	.string	"val"
	.byte	0x1
	.byte	0x2b
	.byte	0x15
	.4byte	0x2c
	.byte	0
	.byte	0x19
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.byte	0x1
	.4byte	0x2ae
	.byte	0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xa
	.byte	0x21
	.4byte	0x77
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0xa
	.byte	0x2a
	.4byte	0x2c
	.byte	0x1b
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa
	.byte	0x33
	.4byte	0x2c
	.byte	0x1b
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0x40
	.4byte	0xef
	.byte	0x1c
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.4byte	0x2c
	.byte	0x1c
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc
	.byte	0x15
	.4byte	0x2c
	.byte	0x1c
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc
	.byte	0x25
	.4byte	0x2c
	.byte	0x1c
	.4byte	.LASF23
	.byte	0x1
	.byte	0xc
	.byte	0x32
	.4byte	0x2c
	.byte	0
	.byte	0x1d
	.4byte	0x1ea
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x35a
	.byte	0x1e
	.4byte	0x1f7
	.4byte	.LLST5
	.byte	0x1e
	.4byte	0x203
	.4byte	.LLST6
	.byte	0x1e
	.4byte	0x20f
	.4byte	.LLST7
	.byte	0x1e
	.4byte	0x21b
	.4byte	.LLST8
	.byte	0x1f
	.4byte	0x227
	.byte	0x7f
	.byte	0x1f
	.4byte	0x233
	.byte	0x7f
	.byte	0x20
	.4byte	0x1ea
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.byte	0x1e
	.4byte	0x1f7
	.4byte	.LLST9
	.byte	0x1e
	.4byte	0x203
	.4byte	.LLST10
	.byte	0x1e
	.4byte	0x20f
	.4byte	.LLST11
	.byte	0x1e
	.4byte	0x21b
	.4byte	.LLST12
	.byte	0x21
	.4byte	.Ldebug_ranges0+0
	.byte	0x22
	.4byte	0x227
	.4byte	.LLST13
	.byte	0x22
	.4byte	0x233
	.4byte	.LLST14
	.byte	0x15
	.4byte	.LVL11
	.4byte	0x43f
	.byte	0x15
	.4byte	.LVL13
	.4byte	0x43f
	.byte	0x23
	.4byte	.LVL17
	.4byte	0x463
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x240
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x43f
	.byte	0x1e
	.4byte	0x24d
	.4byte	.LLST15
	.byte	0x1e
	.4byte	0x259
	.4byte	.LLST16
	.byte	0x1e
	.4byte	0x265
	.4byte	.LLST17
	.byte	0x1e
	.4byte	0x271
	.4byte	.LLST18
	.byte	0x1f
	.4byte	0x27d
	.byte	0x7f
	.byte	0x1f
	.4byte	0x289
	.byte	0x7f
	.byte	0x1f
	.4byte	0x295
	.byte	0x7f
	.byte	0x1f
	.4byte	0x2a1
	.byte	0x7f
	.byte	0x20
	.4byte	0x240
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.byte	0x1e
	.4byte	0x24d
	.4byte	.LLST19
	.byte	0x1e
	.4byte	0x259
	.4byte	.LLST20
	.byte	0x1e
	.4byte	0x265
	.4byte	.LLST21
	.byte	0x1e
	.4byte	0x271
	.4byte	.LLST22
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x22
	.4byte	0x27d
	.4byte	.LLST23
	.byte	0x22
	.4byte	0x289
	.4byte	.LLST24
	.byte	0x22
	.4byte	0x295
	.4byte	.LLST25
	.byte	0x22
	.4byte	0x2a1
	.4byte	.LLST26
	.byte	0x15
	.4byte	.LVL24
	.4byte	0x43f
	.byte	0x15
	.4byte	.LVL26
	.4byte	0x43f
	.byte	0x15
	.4byte	.LVL29
	.4byte	0x43f
	.byte	0x15
	.4byte	.LVL32
	.4byte	0x43f
	.byte	0x23
	.4byte	.LVL40
	.4byte	0x46f
	.byte	0x23
	.4byte	.LVL45
	.4byte	0x47b
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0x51
	.byte	0x5
	.byte	0x24
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0xdd
	.byte	0x5
	.byte	0x24
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
	.byte	0x12
	.byte	0x5
	.byte	0x24
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x7
	.byte	0x11
	.byte	0x5
	.byte	0x24
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x7
	.byte	0x10
	.byte	0x5
	.byte	0x24
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x7
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11-1
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL21
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL21
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL21
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24-1
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL23
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL25
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__uint8_t"
.LASF22:
	.string	"pullup"
.LASF30:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF26:
	.string	"bl_gpio_input_get"
.LASF20:
	.string	"cmd_gpio_func"
.LASF35:
	.string	"cmd_gpio_get"
.LASF19:
	.string	"cmd_gpio_set"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF31:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio_cli.c"
.LASF13:
	.string	"help"
.LASF33:
	.string	"cli_command"
.LASF32:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF23:
	.string	"pulldown"
.LASF27:
	.string	"bl_gpio_output_set"
.LASF29:
	.string	"bl_gpio_enable_output"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF24:
	.string	"atoi"
.LASF14:
	.string	"function"
.LASF15:
	.string	"argc"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"cmds_user"
.LASF9:
	.string	"char"
.LASF34:
	.string	"bl_gpio_cli_init"
.LASF18:
	.string	"ionum"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"argv"
.LASF5:
	.string	"long int"
.LASF25:
	.string	"puts"
.LASF28:
	.string	"bl_gpio_enable_input"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"name"
.LASF21:
	.string	"inputmode"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
