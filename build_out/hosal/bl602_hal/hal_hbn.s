	.file	"hal_hbn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_hbn_init,"ax",@progbits
	.align	1
	.globl	hal_hbn_init
	.type	hal_hbn_init, @function
hal_hbn_init:
.LFB28:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_hbn.c"
	.loc 1 49 1
	.cfi_startproc
.LVL0:
	.loc 1 50 5
	.loc 1 52 5
	.loc 1 52 28 is_stmt 0
	addi	a5,a1,-1
	.loc 1 52 8
	slli	a5,a5,24
	srai	a5,a5,24
	bge	a5,zero,.L2
	.loc 1 54 16
	li	a0,-1
.LVL1:
	.loc 1 73 1
	ret
.LVL2:
.L2:
	.loc 1 49 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	mv	s2,a0
	.loc 1 56 5 is_stmt 1
	.loc 1 56 11 is_stmt 0
	addi	a0,a1,3
.LVL3:
	sw	a1,-20(s0)
	call	pvPortMalloc
.LVL4:
	mv	s1,a0
.LVL5:
	.loc 1 57 5 is_stmt 1
	.loc 1 54 16 is_stmt 0
	li	a0,-1
	.loc 1 57 8
	beq	s1,zero,.L1
	.loc 1 62 5 is_stmt 1
	.loc 1 63 17 is_stmt 0
	lw	a2,-20(s0)
	.loc 1 62 17
	li	a5,1
	sb	a5,1(s1)
	.loc 1 63 5 is_stmt 1
	.loc 1 64 5 is_stmt 0
	mv	a1,s2
	.loc 1 63 17
	sb	a2,0(s1)
	.loc 1 64 5 is_stmt 1
	addi	a0,s1,2
	.loc 1 66 9 is_stmt 0
	lui	s2,%hi(.LANCHOR0)
.LVL6:
	.loc 1 64 5
	call	memcpy
.LVL7:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 8 is_stmt 0
	lw	a5,%lo(.LANCHOR0)(s2)
	addi	s2,s2,%lo(.LANCHOR0)
	beq	a5,zero,.L5
.L9:
.LVL8:
.LBB6:
.LBB7:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 16 is_stmt 0
	li	a0,16
	call	pvPortMalloc
.LVL9:
	mv	a1,a0
.LVL10:
	.loc 1 36 5 is_stmt 1
	.loc 1 36 8 is_stmt 0
	bne	a0,zero,.L19
.LVL11:
.L23:
	.loc 1 45 5 is_stmt 1
.LBE7:
.LBE6:
	.loc 1 72 12 is_stmt 0
	li	a0,0
.L1:
	.loc 1 73 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL12:
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L5:
	.cfi_restore_state
	.loc 1 67 9 is_stmt 1
.LBB9:
.LBB10:
	.loc 1 18 5
	.loc 1 18 16 is_stmt 0
	li	a0,8
	call	pvPortMalloc
.LVL14:
	.loc 1 18 14
	sw	a0,0(s2)
	.loc 1 19 5 is_stmt 1
	.loc 1 19 8 is_stmt 0
	beq	a0,zero,.L23
	.loc 1 23 5 is_stmt 1
	call	utils_notifier_chain_init
.LVL15:
	.loc 1 24 5
.LBE10:
.LBE9:
	.loc 1 70 5
.LBB11:
.LBB8:
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 31 8 is_stmt 0
	lw	a5,0(s2)
	bne	a5,zero,.L9
	j	.L23
.LVL16:
.L19:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 18 is_stmt 0
	lui	a5,%hi(bl_hbn_enter)
	addi	a5,a5,%lo(bl_hbn_enter)
	sw	a5,4(a0)
	.loc 1 41 5 is_stmt 1
	.loc 1 41 22 is_stmt 0
	sw	s1,8(a0)
	.loc 1 43 5 is_stmt 1
	lw	a0,0(s2)
.LVL17:
	call	utils_notifier_chain_register
.LVL18:
	j	.L23
.LBE8:
.LBE11:
	.cfi_endproc
.LFE28:
	.size	hal_hbn_init, .-hal_hbn_init
	.section	.text.hal_hbn_enter,"ax",@progbits
	.align	1
	.globl	hal_hbn_enter
	.type	hal_hbn_enter, @function
hal_hbn_enter:
.LFB29:
	.loc 1 76 1
	.cfi_startproc
.LVL19:
	.loc 1 77 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 77 5
	lui	a5,%hi(.LANCHOR0)
	.loc 1 76 1
	sw	a0,-20(s0)
	.loc 1 77 5
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL20:
	addi	a1,s0,-20
.LVL21:
	call	utils_notifier_chain_call
.LVL22:
	.loc 1 79 5 is_stmt 1
	.loc 1 80 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	li	a0,-1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	hal_hbn_enter, .-hal_hbn_enter
	.section	.sbss.hbn_list,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hbn_list, @object
	.size	hbn_list, 4
hbn_list:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_hbn.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_notifier.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x39c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.4byte	0xd9
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x6
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7
	.byte	0xd
	.4byte	0x8c
	.byte	0x1
	.byte	0x8
	.string	"buf"
	.byte	0x4
	.byte	0x8
	.byte	0xd
	.4byte	0xd9
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x8c
	.4byte	0xe9
	.byte	0xa
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x9
	.byte	0x3
	.4byte	0xa4
	.byte	0xb
	.byte	0x4
	.4byte	0x8c
	.byte	0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x8
	.4byte	0x116
	.byte	0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x13
	.byte	0x1c
	.4byte	0x116
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xfb
	.byte	0x6
	.4byte	.LASF20
	.byte	0x8
	.byte	0x5
	.byte	0x16
	.byte	0x8
	.4byte	0x144
	.byte	0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x19
	.byte	0x1c
	.4byte	0x116
	.byte	0
	.byte	0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x1b
	.byte	0x1c
	.4byte	0x116
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x7
	.byte	0x1b
	.4byte	0x11c
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x8
	.byte	0xf
	.4byte	0x15c
	.byte	0xb
	.byte	0x4
	.4byte	0x162
	.byte	0xc
	.4byte	0x75
	.4byte	0x176
	.byte	0xd
	.4byte	0x83
	.byte	0xd
	.4byte	0x83
	.byte	0
	.byte	0x6
	.4byte	.LASF25
	.byte	0x10
	.byte	0x6
	.byte	0xa
	.byte	0x10
	.4byte	0x1b7
	.byte	0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0xb
	.byte	0x1b
	.4byte	0xfb
	.byte	0
	.byte	0x8
	.string	"cb"
	.byte	0x6
	.byte	0xc
	.byte	0x19
	.4byte	0x150
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.byte	0x6
	.byte	0xd
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0x7
	.4byte	.LASF28
	.byte	0x6
	.byte	0xe
	.byte	0x9
	.4byte	0x75
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0xf
	.byte	0x3
	.4byte	0x176
	.byte	0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe
	.byte	0x14
	.4byte	0x1d5
	.byte	0x5
	.byte	0x3
	.4byte	hbn_list
	.byte	0xb
	.byte	0x4
	.4byte	0x144
	.byte	0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4b
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x216
	.byte	0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4b
	.byte	0x1c
	.4byte	0x98
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LVL22
	.4byte	0x363
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x315
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.4byte	0xf5
	.4byte	.LLST0
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x30
	.byte	0x2b
	.4byte	0x8c
	.4byte	.LLST1
	.byte	0x13
	.string	"hbn"
	.byte	0x1
	.byte	0x32
	.byte	0x11
	.4byte	0x315
	.4byte	.LLST2
	.byte	0x14
	.4byte	0x31b
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x2ae
	.byte	0x15
	.4byte	0x32c
	.byte	0x16
	.4byte	0x337
	.4byte	.LLST3
	.byte	0x17
	.4byte	.Ldebug_ranges0+0
	.byte	0x18
	.4byte	0x343
	.4byte	.LLST4
	.byte	0x19
	.4byte	.LVL9
	.4byte	0x36f
	.4byte	0x2a3
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL18
	.4byte	0x37b
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x356
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.byte	0x43
	.byte	0x9
	.4byte	0x2df
	.byte	0x19
	.4byte	.LVL14
	.4byte	0x36f
	.4byte	0x2d5
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x1a
	.4byte	.LVL15
	.4byte	0x387
	.byte	0
	.byte	0x19
	.4byte	.LVL4
	.4byte	0x36f
	.4byte	0x2f6
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x23
	.byte	0x3
	.byte	0
	.byte	0x11
	.4byte	.LVL7
	.4byte	0x393
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x2
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xe9
	.byte	0x1c
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1b
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0x350
	.byte	0x1d
	.string	"cb"
	.byte	0x1
	.byte	0x1b
	.byte	0x28
	.4byte	0x150
	.byte	0x1d
	.string	"arg"
	.byte	0x1
	.byte	0x1b
	.byte	0x32
	.4byte	0x83
	.byte	0x1e
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1d
	.byte	0x17
	.4byte	0x350
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x1b7
	.byte	0x1f
	.4byte	.LASF46
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.byte	0x20
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x13
	.byte	0x5
	.byte	0x20
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x91
	.byte	0x7
	.byte	0x20
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.byte	0x20
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.byte	0x20
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1f
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x20
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
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x2
	.byte	0x7b
	.byte	0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"pinbuf"
.LASF29:
	.string	"utils_notifier_t"
.LASF17:
	.string	"_hbn_type"
.LASF19:
	.string	"next"
.LASF5:
	.string	"__uint8_t"
.LASF41:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF27:
	.string	"cb_arg"
.LASF21:
	.string	"first"
.LASF44:
	.string	"ntf_reg"
.LASF9:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF46:
	.string	"ntf_init"
.LASF28:
	.string	"priority"
.LASF35:
	.string	"hbn_list"
.LASF30:
	.string	"hal_hbn_enter"
.LASF38:
	.string	"utils_notifier_chain_register"
.LASF6:
	.string	"__uint32_t"
.LASF43:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF16:
	.string	"hbn_type_t"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"buflen"
.LASF23:
	.string	"ntf_list_t"
.LASF22:
	.string	"last"
.LASF12:
	.string	"uint8_t"
.LASF15:
	.string	"active"
.LASF42:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_hbn.c"
.LASF20:
	.string	"utils_list"
.LASF8:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF32:
	.string	"time"
.LASF37:
	.string	"pvPortMalloc"
.LASF40:
	.string	"memcpy"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"utils_notifier_chain_call"
.LASF31:
	.string	"hal_hbn_init"
.LASF26:
	.string	"node"
.LASF18:
	.string	"utils_list_hdr"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF45:
	.string	"hbn_node"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"pinbuf_size"
.LASF39:
	.string	"utils_notifier_chain_init"
.LASF25:
	.string	"utils_notifier"
.LASF24:
	.string	"utils_notifier_fn_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
