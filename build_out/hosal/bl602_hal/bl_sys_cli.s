	.file	"bl_sys_cli.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.clk,"ax",@progbits
	.align	1
	.type	clk, @function
clk:
.LFB8:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys_cli.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 17 9
	lw	s1,0(a0)
.LVL1:
	.loc 1 18 5 is_stmt 1
	.loc 1 18 9 is_stmt 0
	lw	s2,4(a0)
.LVL2:
	.loc 1 19 5 is_stmt 1
	.loc 1 21 5
	call	vTaskEnterCritical
.LVL3:
	.loc 1 22 5
.LBB6:
.LBB7:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 2 94 3
 #APP
# 94 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
 #NO_APP
.LBE7:
.LBE6:
	.loc 1 23 5
	andi	a1,s2,0xff
	andi	a0,s1,0xff
	call	GLB_Set_System_CLK_Div
.LVL4:
	.loc 1 24 5
.LBB8:
.LBB9:
	.loc 2 89 3
 #APP
# 89 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
 #NO_APP
.LBE9:
.LBE8:
	.loc 1 25 5
	call	vTaskExitCritical
.LVL5:
	.loc 1 26 5
	.loc 1 27 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL6:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL7:
	.loc 1 26 5
	li	a0,0
	.loc 1 27 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 26 5
	tail	vTaskDelete
.LVL8:
	.cfi_endproc
.LFE8:
	.size	clk, .-clk
	.section	.rodata.cmd_clk_change.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"clk"
	.section	.text.cmd_clk_change,"ax",@progbits
	.align	1
	.type	cmd_clk_change, @function
cmd_clk_change:
.LFB9:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 32 8 is_stmt 0
	li	a5,3
	bne	a2,a5,.L6
	.loc 1 30 1
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
.LBB12:
.LBB13:
	.loc 1 36 24
	lw	a0,4(a3)
.LVL10:
	mv	s1,a3
.LVL11:
	.loc 1 36 9 is_stmt 1
	.loc 1 36 24 is_stmt 0
	call	atoi
.LVL12:
	.loc 1 36 22
	sw	a0,-24(s0)
	.loc 1 37 9 is_stmt 1
	.loc 1 37 24 is_stmt 0
	lw	a0,8(s1)
	call	atoi
.LVL13:
	.loc 1 37 22
	sw	a0,-20(s0)
	.loc 1 38 9 is_stmt 1
	lui	a1,%hi(.LC0)
	lui	a0,%hi(clk)
	addi	a3,s0,-24
	li	a5,0
	li	a4,20
	li	a2,512
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(clk)
	call	xTaskCreate
.LVL14:
.LBE13:
.LBE12:
	.loc 1 40 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL15:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L6:
	ret
	.cfi_endproc
.LFE9:
	.size	cmd_clk_change, .-cmd_clk_change
	.section	.text.bl_sys_cli_init,"ax",@progbits
	.align	1
	.globl	bl_sys_cli_init
	.type	bl_sys_cli_init, @function
bl_sys_cli_init:
.LFB10:
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
	.loc 1 52 5
	.loc 1 47 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 53 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_sys_cli_init, .-bl_sys_cli_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"change hdiv and bdiv"
	.section	.static_cli_cmds,"a"
	.align	2
	.type	cmds_user, @object
	.size	cmds_user, 12
cmds_user:
	.word	.LC0
	.word	.LC1
	.word	cmd_clk_change
	.text
.Letext0:
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x36f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x5
	.byte	0x4
	.4byte	0x73
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	0x73
	.byte	0x5
	.byte	0x4
	.4byte	0x7a
	.byte	0x7
	.4byte	.LASF13
	.byte	0xc
	.byte	0x3
	.byte	0x32
	.byte	0x8
	.4byte	0xba
	.byte	0x8
	.4byte	.LASF10
	.byte	0x3
	.byte	0x33
	.byte	0x11
	.4byte	0x7f
	.byte	0
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0x36
	.byte	0xc
	.4byte	0xdf
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x85
	.byte	0x9
	.4byte	0xd9
	.byte	0xa
	.4byte	0x6d
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0x2c
	.byte	0xa
	.4byte	0xd9
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x6d
	.byte	0x5
	.byte	0x4
	.4byte	0xbf
	.byte	0x7
	.4byte	.LASF14
	.byte	0x8
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.4byte	0x10d
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xb
	.byte	0x9
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.4byte	0xe5
	.byte	0xc
	.4byte	0xba
	.4byte	0x129
	.byte	0xd
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	0x119
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2a
	.byte	0x21
	.4byte	0x129
	.byte	0x5
	.byte	0x3
	.4byte	cmds_user
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.byte	0x1
	.4byte	0x1a0
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.byte	0x1d
	.byte	0x22
	.4byte	0x6d
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0x1d
	.byte	0x2b
	.4byte	0x2c
	.byte	0x12
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.4byte	0x2c
	.byte	0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1d
	.byte	0x41
	.4byte	0xd9
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.4byte	0x10d
	.byte	0
	.byte	0x14
	.string	"clk"
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x250
	.byte	0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe
	.byte	0x17
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0x16
	.string	"p"
	.byte	0x1
	.byte	0x10
	.byte	0xf
	.4byte	0x250
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LASF15
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x17
	.4byte	.LASF16
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST3
	.byte	0x18
	.4byte	0x256
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x16
	.byte	0x5
	.byte	0x18
	.4byte	0x25f
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.byte	0x19
	.4byte	.LVL3
	.4byte	0x327
	.byte	0x1a
	.4byte	.LVL4
	.4byte	0x333
	.4byte	0x237
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL5
	.4byte	0x340
	.byte	0x1c
	.4byte	.LVL8
	.4byte	0x34c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x10d
	.byte	0x1d
	.4byte	.LASF20
	.byte	0x2
	.byte	0x5c
	.byte	0x37
	.byte	0x3
	.byte	0x1d
	.4byte	.LASF21
	.byte	0x2
	.byte	0x57
	.byte	0x37
	.byte	0x3
	.byte	0x1e
	.4byte	0x156
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x327
	.byte	0x1f
	.4byte	0x163
	.4byte	.LLST4
	.byte	0x1f
	.4byte	0x16f
	.4byte	.LLST5
	.byte	0x1f
	.4byte	0x17b
	.4byte	.LLST6
	.byte	0x1f
	.4byte	0x187
	.4byte	.LLST7
	.byte	0x20
	.4byte	0x193
	.byte	0x21
	.4byte	0x156
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.byte	0x1f
	.4byte	0x163
	.4byte	.LLST8
	.byte	0x1f
	.4byte	0x16f
	.4byte	.LLST9
	.byte	0x1f
	.4byte	0x17b
	.4byte	.LLST10
	.byte	0x1f
	.4byte	0x187
	.4byte	.LLST11
	.byte	0x22
	.4byte	0x193
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x19
	.4byte	.LVL12
	.4byte	0x359
	.byte	0x19
	.4byte	.LVL13
	.4byte	0x359
	.byte	0x23
	.4byte	.LVL14
	.4byte	0x365
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	clk
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x1b
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x44
	.byte	0x1b
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.byte	0x25
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x22b
	.byte	0xd
	.byte	0x24
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.byte	0x25
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x2c2
	.byte	0x6
	.byte	0x24
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
	.byte	0x51
	.byte	0x5
	.byte	0x25
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x14a
	.byte	0xd
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
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x1d
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x25
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF24:
	.string	"vTaskExitCritical"
.LASF16:
	.string	"bdiv"
.LASF21:
	.string	"__enable_irq"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF11:
	.string	"help"
.LASF13:
	.string	"cli_command"
.LASF22:
	.string	"vTaskEnterCritical"
.LASF15:
	.string	"hdiv"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF34:
	.string	"clk_div"
.LASF26:
	.string	"atoi"
.LASF8:
	.string	"long long unsigned int"
.LASF32:
	.string	"bl_sys_cli_init"
.LASF17:
	.string	"argc"
.LASF25:
	.string	"vTaskDelete"
.LASF23:
	.string	"GLB_Set_System_CLK_Div"
.LASF7:
	.string	"long long int"
.LASF31:
	.string	"para_div"
.LASF10:
	.string	"name"
.LASF33:
	.string	"cmd_clk_change"
.LASF35:
	.string	"para"
.LASF14:
	.string	"_para_div"
.LASF3:
	.string	"short int"
.LASF30:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF18:
	.string	"argv"
.LASF29:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys_cli.c"
.LASF20:
	.string	"__disable_irq"
.LASF5:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF19:
	.string	"cmds_user"
.LASF12:
	.string	"function"
.LASF27:
	.string	"xTaskCreate"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
