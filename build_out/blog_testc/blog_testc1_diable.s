	.file	"blog_testc1_diable.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blog_testc1_entry,"ax",@progbits
	.align	1
	.globl	blog_testc1_entry
	.type	blog_testc1_entry, @function
blog_testc1_entry:
.LFB4:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog_testc/blog_testc1_diable.c"
	.loc 1 11 1
	.cfi_startproc
.LVL0:
	.loc 1 12 5
	.loc 1 11 1 is_stmt 0
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
	.loc 1 12 5
	li	s1,4096
	addi	a0,s1,904
.LVL1:
	.loc 1 11 1
	.loc 1 12 5
	call	aos_msleep
.LVL2:
	.loc 1 26 9
	addi	s1,s1,904
.L2:
	.loc 1 14 5 is_stmt 1 discriminator 1
	.loc 1 15 5 discriminator 1
	.loc 1 16 5 discriminator 1
	.loc 1 17 5 discriminator 1
	.loc 1 19 5 discriminator 1
	.loc 1 20 5 discriminator 1
	.loc 1 21 5 discriminator 1
	.loc 1 22 5 discriminator 1
	.loc 1 23 5 discriminator 1
	.loc 1 25 5 discriminator 1
	.loc 1 26 9 discriminator 1
	mv	a0,s1
	call	aos_msleep
.LVL3:
	.loc 1 27 9 discriminator 1
	.loc 1 28 9 discriminator 1
	.loc 1 29 9 discriminator 1
	.loc 1 30 9 discriminator 1
	.loc 1 32 9 discriminator 1
	.loc 1 33 9 discriminator 1
	.loc 1 34 9 discriminator 1
	.loc 1 35 9 discriminator 1
	.loc 1 36 9 discriminator 1
	.loc 1 25 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE4:
	.size	blog_testc1_entry, .-blog_testc1_entry
	.section	.rodata.blog_testc1_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blog_testc1"
	.section	.text.blog_testc1_init,"ax",@progbits
	.align	1
	.globl	blog_testc1_init
	.type	blog_testc1_init, @function
blog_testc1_init:
.LFB5:
	.loc 1 41 1
	.cfi_startproc
	.loc 1 42 5
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 42 5
	li	a3,4096
	lui	a1,%hi(blog_testc1_entry)
	lui	a0,%hi(.LC0)
	.loc 1 41 1
	.loc 1 42 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc1_entry)
	addi	a0,a0,%lo(.LC0)
	call	aos_task_new
.LVL4:
	.loc 1 44 5 is_stmt 1
	.loc 1 45 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	blog_testc1_init, .-blog_testc1_init
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x119
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.LASF14
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xb7
	.byte	0x6
	.4byte	.LVL4
	.4byte	0x103
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x7
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc1_entry
	.byte	0x7
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x7
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x103
	.byte	0x9
	.string	"arg"
	.byte	0x1
	.byte	0xa
	.byte	0x1e
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LVL2
	.4byte	0x10f
	.4byte	0xf2
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0x88,0x7
	.byte	0
	.byte	0x6
	.4byte	.LVL3
	.4byte	0x10f
	.byte	0x7
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF10
	.4byte	.LASF10
	.byte	0x2
	.byte	0x47
	.byte	0x9
	.byte	0xc
	.4byte	.LASF11
	.4byte	.LASF11
	.byte	0x2
	.2byte	0x207
	.byte	0xa
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
.LASF6:
	.string	"long long int"
.LASF8:
	.string	"unsigned int"
.LASF15:
	.string	"blog_testc1_init"
.LASF10:
	.string	"aos_task_new"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF11:
	.string	"aos_msleep"
.LASF7:
	.string	"long long unsigned int"
.LASF14:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/blog_testc"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blog_testc/blog_testc1_diable.c"
.LASF16:
	.string	"blog_testc1_entry"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
