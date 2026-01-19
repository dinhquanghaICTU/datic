	.file	"hal_pds.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_pds_init,"ax",@progbits
	.align	1
	.globl	hal_pds_init
	.type	hal_pds_init, @function
hal_pds_init:
.LFB30:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_pds.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 5
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 17 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 11 5
	tail	bl_pds_init
.LVL0:
	.cfi_endproc
.LFE30:
	.size	hal_pds_init, .-hal_pds_init
	.section	.text.hal_pds_fastboot_cfg,"ax",@progbits
	.align	1
	.globl	hal_pds_fastboot_cfg
	.type	hal_pds_fastboot_cfg, @function
hal_pds_fastboot_cfg:
.LFB31:
	.loc 1 20 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 21 5
	.loc 1 20 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 22 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 21 5
	tail	bl_pds_fastboot_cfg
.LVL2:
	.cfi_endproc
.LFE31:
	.size	hal_pds_fastboot_cfg, .-hal_pds_fastboot_cfg
	.section	.text.hal_pds_enter_without_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_without_time_compensation
	.type	hal_pds_enter_without_time_compensation, @function
hal_pds_enter_without_time_compensation:
.LFB32:
	.loc 1 25 1 is_stmt 1
	.cfi_startproc
.LVL3:
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
	tail	bl_pds_enter
.LVL4:
	.cfi_endproc
.LFE32:
	.size	hal_pds_enter_without_time_compensation, .-hal_pds_enter_without_time_compensation
	.section	.text.hal_pds_enter_with_time_compensation,"ax",@progbits
	.align	1
	.globl	hal_pds_enter_with_time_compensation
	.type	hal_pds_enter_with_time_compensation, @function
hal_pds_enter_with_time_compensation:
.LFB33:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 36 5
	.loc 1 30 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	.cfi_offset 18, -16
	.loc 1 30 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 36 5
	addi	a0,s0,-32
.LVL6:
	addi	a1,s0,-28
.LVL7:
	call	HBN_Get_RTC_Timer_Val
.LVL8:
	.loc 1 38 5 is_stmt 1
	mv	a1,s2
	mv	a0,s1
	call	bl_pds_enter
.LVL9:
	.loc 1 40 5
	addi	a1,s0,-20
	addi	a0,s0,-24
	call	HBN_Get_RTC_Timer_Val
.LVL10:
	.loc 1 42 5
	.loc 1 44 5
	.loc 1 44 37 is_stmt 0
	lw	a0,-32(s0)
	lw	a5,-24(s0)
	sub	a5,a5,a0
.LVL11:
	.loc 1 46 5 is_stmt 1
	.loc 1 46 99 is_stmt 0
	srli	a4,a5,11
	.loc 1 46 62
	srli	a0,a5,5
	.loc 1 46 137
	srli	a5,a5,12
.LVL12:
	.loc 1 46 28
	add	a5,a4,a5
	sub	a0,a0,a5
.LVL13:
	.loc 1 48 5 is_stmt 1
	sw	a0,-36(s0)
	call	vTaskStepTick
.LVL14:
	.loc 1 50 5
	.loc 1 51 1 is_stmt 0
	lw	a0,-36(s0)
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
.LVL15:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL16:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL17:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	hal_pds_enter_with_time_compensation, .-hal_pds_enter_with_time_compensation
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pds.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x256
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
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
	.4byte	.LASF30
	.byte	0x5
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
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1d
	.byte	0xa
	.4byte	0x4f
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x174
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1d
	.byte	0x38
	.4byte	0x4f
	.4byte	.LLST3
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x1d
	.byte	0x4b
	.4byte	0x4f
	.4byte	.LLST4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x1f
	.byte	0xe
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1f
	.byte	0x21
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x20
	.byte	0x20
	.4byte	0x4f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0x4f
	.4byte	.LLST5
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0x4f
	.4byte	.LLST6
	.byte	0x9
	.4byte	.LVL8
	.4byte	0x21b
	.4byte	0x12e
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0
	.byte	0x9
	.4byte	.LVL9
	.4byte	0x228
	.4byte	0x148
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL10
	.4byte	0x21b
	.4byte	0x162
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0xb
	.4byte	.LVL14
	.4byte	0x234
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c3
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x18
	.byte	0x37
	.4byte	0x4f
	.4byte	.LLST1
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x18
	.byte	0x4a
	.4byte	0x4f
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LVL4
	.4byte	0x228
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fb
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x13
	.byte	0x24
	.4byte	0x4f
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LVL2
	.4byte	0x241
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x21b
	.byte	0xe
	.4byte	.LVL0
	.4byte	0x24d
	.byte	0
	.byte	0xf
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x1c6
	.byte	0xd
	.byte	0x10
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x3
	.byte	0x8
	.byte	0x6
	.byte	0xf
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x95f
	.byte	0x6
	.byte	0x10
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x3
	.byte	0x7
	.byte	0x6
	.byte	0x10
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0x6
	.byte	0x6
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x8
	.byte	0x78
	.byte	0x68
	.byte	0x6
	.byte	0x78
	.byte	0x60
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x78
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF5:
	.string	"short unsigned int"
.LASF21:
	.string	"hal_pds_init"
.LASF18:
	.string	"hal_pds_enter_without_time_compensation"
.LASF8:
	.string	"unsigned int"
.LASF14:
	.string	"rtcLowAfterSleep"
.LASF23:
	.string	"bl_pds_enter"
.LASF7:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF20:
	.string	"addr"
.LASF30:
	.string	"uint32_t"
.LASF12:
	.string	"rtcLowBeforeSleep"
.LASF24:
	.string	"vTaskStepTick"
.LASF19:
	.string	"hal_pds_fastboot_cfg"
.LASF29:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF15:
	.string	"rtcHighAfterSleep"
.LASF10:
	.string	"pdsLevel"
.LASF13:
	.string	"rtcHighBeforeSleep"
.LASF9:
	.string	"char"
.LASF11:
	.string	"pdsSleepCycles"
.LASF25:
	.string	"bl_pds_fastboot_cfg"
.LASF31:
	.string	"hal_pds_enter_with_time_compensation"
.LASF3:
	.string	"long long int"
.LASF22:
	.string	"HBN_Get_RTC_Timer_Val"
.LASF28:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_pds.c"
.LASF26:
	.string	"bl_pds_init"
.LASF1:
	.string	"short int"
.LASF17:
	.string	"actualSleepDuration_ms"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"actualSleepDuration_32768cycles"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
