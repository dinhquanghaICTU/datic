	.file	"bl_wdt_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.cmd_timer_start,"ax",@progbits
	.align	1
	.type	cmd_timer_start, @function
cmd_timer_start:
.LFB7:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_wdt_cli.c"
	.loc 1 35 1
	.cfi_startproc
.LVL0:
	.loc 1 36 1
	.loc 1 37 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 38 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 37 5
	tail	bl_timer_tick_enable
.LVL1:
	.cfi_endproc
.LFE7:
	.size	cmd_timer_start, .-cmd_timer_start
	.section	.text.cmd_wdt_disable,"ax",@progbits
	.align	1
	.type	cmd_wdt_disable, @function
cmd_wdt_disable:
.LFB6:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 31 5
	.loc 1 30 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 32 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 31 5
	tail	bl_wdt_disable
.LVL3:
	.cfi_endproc
.LFE6:
	.size	cmd_wdt_disable, .-cmd_wdt_disable
	.section	.text.cmd_wdt_feed,"ax",@progbits
	.align	1
	.type	cmd_wdt_feed, @function
cmd_wdt_feed:
.LFB5:
	.loc 1 25 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 26 5
	.loc 1 25 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 27 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 26 5
	tail	bl_wdt_feed
.LVL5:
	.cfi_endproc
.LFE5:
	.size	cmd_wdt_feed, .-cmd_wdt_feed
	.section	.text.cmd_wdt_init,"ax",@progbits
	.align	1
	.type	cmd_wdt_init, @function
cmd_wdt_init:
.LFB4:
	.loc 1 9 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 10 5
	.loc 1 12 5
	.loc 1 12 8 is_stmt 0
	li	a5,2
	bne	a2,a5,.L12
.LVL7:
.LBB4:
.LBB5:
	.loc 1 16 5 is_stmt 1
.LBE5:
.LBE4:
	.loc 1 9 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB8:
.LBB6:
	.loc 1 16 10
	lw	a0,4(a3)
.LVL8:
	call	atoi
.LVL9:
	.loc 1 17 5 is_stmt 1
	.loc 1 18 5
	.loc 1 18 8 is_stmt 0
	ble	a0,zero,.L7
	.loc 1 21 5 is_stmt 1
.LBE6:
.LBE8:
	.loc 1 22 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB9:
.LBB7:
	.loc 1 21 5
	tail	bl_wdt_init
.LVL10:
.L7:
	.cfi_restore_state
.LBE7:
.LBE9:
	.loc 1 22 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L12:
	ret
	.cfi_endproc
.LFE4:
	.size	cmd_wdt_init, .-cmd_wdt_init
	.section	.text.bl_wdt_cli_init,"ax",@progbits
	.align	1
	.globl	bl_wdt_cli_init
	.type	bl_wdt_cli_init, @function
bl_wdt_cli_init:
.LFB8:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 54 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_wdt_cli_init, .-bl_wdt_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"wdt-init"
	.align	2
.LC1:
	.string	"wdt-init ms"
	.align	2
.LC2:
	.string	"wdt-feed"
	.align	2
.LC3:
	.string	"wdt-disable"
	.align	2
.LC4:
	.string	"timer-start"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 48
cmds_user:
	.word	.LC0
	.word	.LC1
	.word	cmd_wdt_init
	.word	.LC2
	.word	.LC2
	.word	cmd_wdt_feed
	.word	.LC3
	.word	.LC3
	.word	cmd_wdt_disable
	.word	.LC4
	.word	.LC4
	.word	cmd_timer_start
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_wdt.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x362
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x4
	.byte	0x4
	.4byte	0x71
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x71
	.byte	0x4
	.byte	0x4
	.4byte	0x78
	.byte	0x6
	.4byte	.LASF26
	.byte	0xc
	.byte	0x2
	.byte	0x32
	.byte	0x8
	.4byte	0xb8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x33
	.byte	0x11
	.4byte	0x7d
	.byte	0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x11
	.4byte	0x7d
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x36
	.byte	0xc
	.4byte	0xdd
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x83
	.byte	0x8
	.4byte	0xd7
	.byte	0x9
	.4byte	0x6b
	.byte	0x9
	.4byte	0x2c
	.byte	0x9
	.4byte	0x2c
	.byte	0x9
	.4byte	0xd7
	.byte	0
	.byte	0x4
	.byte	0x4
	.4byte	0x6b
	.byte	0x4
	.byte	0x4
	.4byte	0xbd
	.byte	0xa
	.4byte	0xb8
	.4byte	0xf3
	.byte	0xb
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	0xe3
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x28
	.byte	0x21
	.4byte	0xf3
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x18c
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x22
	.byte	0x23
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x22
	.byte	0x2c
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x22
	.byte	0x35
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x22
	.byte	0x42
	.4byte	0xd7
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x2c
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x329
	.byte	0
	.byte	0xe
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ec
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x1d
	.byte	0x23
	.4byte	0x6b
	.4byte	.LLST4
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x1d
	.byte	0x2c
	.4byte	0x2c
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1d
	.byte	0x35
	.4byte	0x2c
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.byte	0x42
	.4byte	0xd7
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x335
	.byte	0
	.byte	0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x24c
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x18
	.byte	0x20
	.4byte	0x6b
	.4byte	.LLST8
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x18
	.byte	0x29
	.4byte	0x2c
	.4byte	.LLST9
	.byte	0x10
	.4byte	.LASF13
	.byte	0x1
	.byte	0x18
	.byte	0x32
	.4byte	0x2c
	.4byte	.LLST10
	.byte	0x10
	.4byte	.LASF14
	.byte	0x1
	.byte	0x18
	.byte	0x3f
	.4byte	0xd7
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LVL5
	.4byte	0x341
	.byte	0
	.byte	0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8
	.byte	0xd
	.byte	0x1
	.4byte	0x295
	.byte	0x14
	.string	"buf"
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.4byte	0x6b
	.byte	0x14
	.string	"len"
	.byte	0x1
	.byte	0x8
	.byte	0x29
	.4byte	0x2c
	.byte	0x15
	.4byte	.LASF13
	.byte	0x1
	.byte	0x8
	.byte	0x32
	.4byte	0x2c
	.byte	0x15
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8
	.byte	0x3f
	.4byte	0xd7
	.byte	0x16
	.string	"ms"
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0x17
	.4byte	0x24c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x329
	.byte	0x18
	.4byte	0x259
	.4byte	.LLST12
	.byte	0x18
	.4byte	0x265
	.4byte	.LLST13
	.byte	0x18
	.4byte	0x271
	.4byte	.LLST14
	.byte	0x18
	.4byte	0x27d
	.4byte	.LLST15
	.byte	0x19
	.4byte	0x289
	.byte	0
	.byte	0x1a
	.4byte	0x24c
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x8
	.byte	0xd
	.byte	0x18
	.4byte	0x259
	.4byte	.LLST16
	.byte	0x18
	.4byte	0x265
	.4byte	.LLST17
	.byte	0x18
	.4byte	0x271
	.4byte	.LLST18
	.byte	0x18
	.4byte	0x27d
	.4byte	.LLST19
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x1c
	.4byte	0x289
	.4byte	.LLST20
	.byte	0x1d
	.4byte	.LVL9
	.4byte	0x34d
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x359
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x3
	.byte	0x5
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x3
	.byte	0x4
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x51
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x3
	.byte	0x3
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x3c
	.byte	0x19
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL6
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL6
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL6
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF16:
	.string	"cmd_wdt_disable"
.LASF21:
	.string	"atoi"
.LASF2:
	.string	"unsigned char"
.LASF29:
	.string	"cmd_wdt_init"
.LASF17:
	.string	"cmd_wdt_feed"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF11:
	.string	"help"
.LASF26:
	.string	"cli_command"
.LASF24:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_wdt_cli.c"
.LASF25:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF18:
	.string	"bl_timer_tick_enable"
.LASF28:
	.string	"bl_wdt_cli_init"
.LASF15:
	.string	"cmd_timer_start"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF19:
	.string	"bl_wdt_disable"
.LASF12:
	.string	"function"
.LASF13:
	.string	"argc"
.LASF7:
	.string	"long long int"
.LASF27:
	.string	"cmds_user"
.LASF9:
	.string	"char"
.LASF22:
	.string	"bl_wdt_init"
.LASF20:
	.string	"bl_wdt_feed"
.LASF3:
	.string	"short int"
.LASF14:
	.string	"argv"
.LASF5:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"name"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
