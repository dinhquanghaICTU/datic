	.file	"hosal_efuse.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hosal_efuse_read,"ax",@progbits
	.align	1
	.globl	hosal_efuse_read
	.type	hosal_efuse_read, @function
hosal_efuse_read:
.LFB4:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_efuse.c"
	.loc 1 7 1
	.cfi_startproc
.LVL0:
	.loc 1 9 5
	.loc 1 7 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 9 18
	or	a5,a1,a0
	.loc 1 7 1
	sw	a2,-24(s0)
	.loc 1 9 18
	sw	a1,-20(s0)
	andi	a5,a5,3
	bne	a5,zero,.L3
	mv	s1,a0
	.loc 1 14 5 is_stmt 1 discriminator 1
.LBB2:
	.loc 1 14 14 discriminator 1
	.loc 1 14 48 is_stmt 0 discriminator 1
	call	bl_irq_save
.LVL1:
	.loc 1 15 5 discriminator 1
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	.loc 1 14 48 discriminator 1
	mv	s2,a0
.LVL2:
	.loc 1 14 62 is_stmt 1 discriminator 1
	.loc 1 15 5 discriminator 1
	li	a3,1
	mv	a0,s1
.LVL3:
	call	mfg_efuse_read
.LVL4:
	.loc 1 16 5 discriminator 1
	mv	a0,s2
	call	bl_irq_restore
.LVL5:
.LBE2:
	.loc 1 16 52 discriminator 1
	.loc 1 18 5 discriminator 1
	.loc 1 18 12 is_stmt 0 discriminator 1
	li	a0,0
.LVL6:
.L1:
	.loc 1 19 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL7:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L3:
	.cfi_restore_state
	.loc 1 11 16
	li	a0,-1
.LVL9:
	j	.L1
	.cfi_endproc
.LFE4:
	.size	hosal_efuse_read, .-hosal_efuse_read
	.section	.text.hosal_efuse_write,"ax",@progbits
	.align	1
	.globl	hosal_efuse_write
	.type	hosal_efuse_write, @function
hosal_efuse_write:
.LFB5:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 24 5
	.loc 1 22 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 24 18
	or	a5,a1,a0
	.loc 1 22 1
	sw	a2,-24(s0)
	.loc 1 24 18
	sw	a1,-20(s0)
	andi	a5,a5,3
	bne	a5,zero,.L7
	mv	s1,a0
	.loc 1 29 5 is_stmt 1 discriminator 1
.LBB3:
	.loc 1 29 14 discriminator 1
	.loc 1 29 48 is_stmt 0 discriminator 1
	call	bl_irq_save
.LVL11:
	.loc 1 30 5 discriminator 1
	lw	a2,-24(s0)
	lw	a1,-20(s0)
	.loc 1 29 48 discriminator 1
	mv	s2,a0
.LVL12:
	.loc 1 29 62 is_stmt 1 discriminator 1
	.loc 1 30 5 discriminator 1
	mv	a0,s1
.LVL13:
	call	mfg_efuse_write_pre
.LVL14:
	.loc 1 31 5 discriminator 1
	call	mfg_efuse_program
.LVL15:
	.loc 1 32 5 discriminator 1
	mv	a0,s2
	call	bl_irq_restore
.LVL16:
.LBE3:
	.loc 1 32 52 discriminator 1
	.loc 1 34 5 discriminator 1
	.loc 1 34 12 is_stmt 0 discriminator 1
	li	a0,0
.LVL17:
.L5:
	.loc 1 35 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL18:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L7:
	.cfi_restore_state
	.loc 1 26 16
	li	a0,-1
.LVL20:
	j	.L5
	.cfi_endproc
.LFE5:
	.size	hosal_efuse_write, .-hosal_efuse_write
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_mfg_efuse.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x20b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x5b
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
	.byte	0x15
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x127
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x15
	.byte	0x20
	.4byte	0x4f
	.4byte	.LLST4
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.4byte	0x127
	.4byte	.LLST5
	.byte	0x7
	.string	"len"
	.byte	0x1
	.byte	0x15
	.byte	0x3f
	.4byte	0x4f
	.4byte	.LLST6
	.byte	0x8
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.byte	0x12
	.4byte	0x69
	.4byte	.LLST7
	.byte	0xa
	.4byte	.LVL11
	.4byte	0x1d2
	.byte	0xb
	.4byte	.LVL14
	.4byte	0x1de
	.4byte	0x10c
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0xa
	.4byte	.LVL15
	.4byte	0x1ea
	.byte	0xd
	.4byte	.LVL16
	.4byte	0x1f6
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x4f
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d2
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6
	.byte	0x1f
	.4byte	0x4f
	.4byte	.LLST0
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6
	.byte	0x2f
	.4byte	0x127
	.4byte	.LLST1
	.byte	0x7
	.string	"len"
	.byte	0x1
	.byte	0x6
	.byte	0x3e
	.4byte	0x4f
	.4byte	.LLST2
	.byte	0x8
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0xe
	.byte	0x12
	.4byte	0x69
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LVL1
	.4byte	0x1d2
	.byte	0xb
	.4byte	.LVL4
	.4byte	0x202
	.4byte	0x1c0
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0xc
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x68
	.byte	0x6
	.byte	0xc
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0xd
	.4byte	.LVL5
	.4byte	0x1f6
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x2
	.byte	0x1a
	.byte	0x5
	.byte	0xf
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.byte	0x8
	.byte	0xf
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.byte	0x8
	.byte	0xf
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x2
	.byte	0x1b
	.byte	0x6
	.byte	0xf
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x3
	.byte	0x14
	.byte	0x8
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
	.byte	0x8
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL19
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11-1
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x78
	.byte	0x68
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL19
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE4
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
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x78
	.byte	0x68
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"____global_prev_mie_irq____"
.LASF8:
	.string	"unsigned int"
.LASF15:
	.string	"bl_irq_save"
.LASF21:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_efuse.c"
.LASF12:
	.string	"hosal_efuse_write"
.LASF22:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF19:
	.string	"mfg_efuse_read"
.LASF20:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF11:
	.string	"data"
.LASF10:
	.string	"addr"
.LASF7:
	.string	"long long unsigned int"
.LASF17:
	.string	"mfg_efuse_program"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF23:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF16:
	.string	"mfg_efuse_write_pre"
.LASF3:
	.string	"long long int"
.LASF5:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"bl_irq_restore"
.LASF1:
	.string	"short int"
.LASF13:
	.string	"hosal_efuse_read"
.LASF6:
	.string	"long unsigned int"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
