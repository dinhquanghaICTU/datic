	.file	"settings.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.bt_settings_encode_key.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"bt/%s/%02x%02x%02x%02x%02x%02x%u/%s"
	.align	2
.LC1:
	.string	"bt/%s/%02x%02x%02x%02x%02x%02x%u"
	.section	.text.bt_settings_encode_key,"ax",@progbits
	.align	1
	.globl	bt_settings_encode_key
	.type	bt_settings_encode_key, @function
bt_settings_encode_key:
.LFB73:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/settings.c"
	.loc 1 32 1
	.cfi_startproc
.LVL0:
	.loc 1 33 2
	.loc 1 32 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 32 1
	mv	t1,a4
	.loc 1 34 3
	lbu	a5,5(a3)
	lbu	a4,6(a3)
.LVL1:
	lbu	a6,4(a3)
	lbu	a7,3(a3)
	lbu	t3,2(a3)
	lbu	t4,1(a3)
	lbu	a3,0(a3)
.LVL2:
	.loc 1 33 5
	beq	t1,zero,.L2
	.loc 1 34 3 is_stmt 1
	sw	a3,8(sp)
	mv	a3,a2
	lui	a2,%hi(.LC0)
.LVL3:
	sw	t1,12(sp)
	sw	t4,4(sp)
	sw	t3,0(sp)
	addi	a2,a2,%lo(.LC0)
	call	snprintf
.LVL4:
.L1:
	.loc 1 48 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L2:
	.cfi_restore_state
	.loc 1 40 3 is_stmt 1
	sw	a3,8(sp)
	mv	a3,a2
	lui	a2,%hi(.LC1)
.LVL6:
	sw	t4,4(sp)
	sw	t3,0(sp)
	addi	a2,a2,%lo(.LC1)
	call	snprintf
.LVL7:
	.loc 1 47 2
	.loc 1 48 1 is_stmt 0
	j	.L1
	.cfi_endproc
.LFE73:
	.size	bt_settings_encode_key, .-bt_settings_encode_key
	.section	.text.bt_settings_save_id,"ax",@progbits
	.align	1
	.globl	bt_settings_save_id
	.type	bt_settings_save_id, @function
bt_settings_save_id:
.LFB74:
	.loc 1 294 1 is_stmt 1
	.cfi_startproc
	.loc 1 307 1
	.loc 1 294 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 307 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	bt_settings_save_id, .-bt_settings_save_id
	.section	.text.bt_settings_init,"ax",@progbits
	.align	1
	.globl	bt_settings_init
	.type	bt_settings_init, @function
bt_settings_init:
.LFB75:
	.loc 1 369 1 is_stmt 1
	.cfi_startproc
	.loc 1 371 5
	.loc 1 369 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 385 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	bt_settings_init, .-bt_settings_init
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f2
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.4byte	0x7d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	0x7d
	.byte	0x5
	.byte	0x4
	.4byte	0x84
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x15
	.byte	0x17
	.4byte	0x46
	.byte	0x7
	.byte	0x6
	.byte	0x4
	.byte	0x19
	.byte	0x9
	.4byte	0xb2
	.byte	0x8
	.string	"val"
	.byte	0x4
	.byte	0x1a
	.byte	0x7
	.4byte	0xb2
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x8f
	.4byte	0xc2
	.byte	0xa
	.4byte	0x38
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x1b
	.byte	0x3
	.4byte	0x9b
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.byte	0x1e
	.byte	0x9
	.4byte	0xf0
	.byte	0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1f
	.byte	0x7
	.4byte	0x8f
	.byte	0
	.byte	0x8
	.string	"a"
	.byte	0x4
	.byte	0x20
	.byte	0xc
	.4byte	0xc2
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x21
	.byte	0x3
	.4byte	0xce
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x170
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x125
	.byte	0x6
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e2
	.byte	0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1e
	.byte	0x23
	.4byte	0x77
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1e
	.byte	0x30
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1e
	.byte	0x47
	.4byte	0x89
	.4byte	.LLST2
	.byte	0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1f
	.byte	0x16
	.4byte	0x1e2
	.4byte	.LLST3
	.byte	0x10
	.string	"key"
	.byte	0x1
	.byte	0x1f
	.byte	0x28
	.4byte	0x89
	.4byte	.LLST4
	.byte	0x11
	.4byte	.LVL4
	.4byte	0x1e8
	.4byte	0x1c7
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x2
	.byte	0x72
	.byte	0xc
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x13
	.4byte	.LVL7
	.4byte	0x1e8
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xf0
	.byte	0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x10a
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0xc
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x5
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
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LFE73
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
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-1
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7-1
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
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
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/settings.c"
.LASF17:
	.string	"path_size"
.LASF10:
	.string	"size_t"
.LASF20:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF19:
	.string	"addr"
.LASF26:
	.string	"snprintf"
.LASF24:
	.string	"bt_settings_save_id"
.LASF25:
	.string	"bt_settings_encode_key"
.LASF12:
	.string	"bt_addr_t"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF14:
	.string	"bt_addr_le_t"
.LASF18:
	.string	"subsys"
.LASF23:
	.string	"bt_settings_init"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF11:
	.string	"u8_t"
.LASF22:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF7:
	.string	"long long int"
.LASF13:
	.string	"type"
.LASF3:
	.string	"short int"
.LASF5:
	.string	"long int"
.LASF16:
	.string	"path"
.LASF1:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF15:
	.string	"_Bool"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
