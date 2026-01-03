	.file	"blog_testc2_full.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.test_buf,"ax",@progbits
	.align	1
	.globl	test_buf
	.type	test_buf, @function
test_buf:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/blog_testc/blog_testc2_full.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 5
	.loc 1 12 5
	.loc 1 14 5
.LVL0:
	.loc 1 14 16
	.loc 1 15 9
	.loc 1 14 33
	.loc 1 14 16
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 23 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	test_buf, .-test_buf
	.section	.text.blog_testc2_entry,"ax",@progbits
	.align	1
	.globl	blog_testc2_entry
	.type	blog_testc2_entry, @function
blog_testc2_entry:
.LFB5:
	.loc 1 25 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 26 5
	.loc 1 25 1 is_stmt 0
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
	.loc 1 26 5
	li	s1,4096
	addi	a0,s1,904
.LVL2:
	.loc 1 25 1
	.loc 1 26 5
	call	aos_msleep
.LVL3:
	.loc 1 40 9
	addi	s1,s1,904
.L4:
	.loc 1 28 5 is_stmt 1 discriminator 1
	.loc 1 29 5 discriminator 1
	.loc 1 30 5 discriminator 1
	.loc 1 31 5 discriminator 1
	.loc 1 33 5 discriminator 1
	.loc 1 34 5 discriminator 1
	.loc 1 35 5 discriminator 1
	.loc 1 36 5 discriminator 1
	.loc 1 37 5 discriminator 1
	.loc 1 39 5 discriminator 1
	.loc 1 40 9 discriminator 1
	mv	a0,s1
	call	aos_msleep
.LVL4:
	.loc 1 42 9 discriminator 1
	.loc 1 44 9 discriminator 1
	.loc 1 45 9 discriminator 1
	.loc 1 46 9 discriminator 1
	.loc 1 47 9 discriminator 1
	.loc 1 49 9 discriminator 1
	.loc 1 50 9 discriminator 1
	.loc 1 51 9 discriminator 1
	.loc 1 52 9 discriminator 1
	.loc 1 53 9 discriminator 1
	.loc 1 39 11 discriminator 1
	j	.L4
	.cfi_endproc
.LFE5:
	.size	blog_testc2_entry, .-blog_testc2_entry
	.section	.rodata.blog_testc2_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blog_testc2"
	.section	.text.blog_testc2_init,"ax",@progbits
	.align	1
	.globl	blog_testc2_init
	.type	blog_testc2_init, @function
blog_testc2_init:
.LFB6:
	.loc 1 58 1
	.cfi_startproc
	.loc 1 59 5
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 59 5
	li	a3,4096
	lui	a1,%hi(blog_testc2_entry)
	lui	a0,%hi(.LC0)
	.loc 1 58 1
	.loc 1 59 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc2_entry)
	addi	a0,a0,%lo(.LC0)
	call	aos_task_new
.LVL5:
	.loc 1 61 5 is_stmt 1
	.loc 1 62 1 is_stmt 0
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
.LFE6:
	.size	blog_testc2_init, .-blog_testc2_init
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF10
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xcf
	.byte	0x7
	.4byte	.LVL5
	.4byte	0x158
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc2_entry
	.byte	0x8
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x8
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x11b
	.byte	0xa
	.string	"arg"
	.byte	0x1
	.byte	0x18
	.byte	0x1e
	.4byte	0x77
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LVL3
	.4byte	0x164
	.4byte	0x10a
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0x88,0x7
	.byte	0
	.byte	0x7
	.4byte	.LVL4
	.4byte	0x164
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x148
	.byte	0xc
	.string	"i"
	.byte	0x1
	.byte	0xb
	.byte	0x9
	.4byte	0x69
	.byte	0xc
	.string	"buf"
	.byte	0x1
	.byte	0xc
	.byte	0x14
	.4byte	0x148
	.byte	0
	.byte	0xd
	.4byte	0x80
	.4byte	0x158
	.byte	0xe
	.4byte	0x70
	.byte	0xff
	.byte	0
	.byte	0xf
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x4
	.byte	0x47
	.byte	0x9
	.byte	0x10
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x4
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
	.byte	0x7
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"blog_testc2_entry"
.LASF14:
	.string	"aos_task_new"
.LASF5:
	.string	"long unsigned int"
.LASF16:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF10:
	.string	"__uint8_t"
.LASF15:
	.string	"aos_msleep"
.LASF7:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"test_buf"
.LASF9:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF18:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blog_testc"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/blog_testc/blog_testc2_full.c"
.LASF19:
	.string	"blog_testc2_init"
.LASF2:
	.string	"short int"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
