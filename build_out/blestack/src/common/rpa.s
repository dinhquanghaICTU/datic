	.file	"rpa.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bt_rpa_irk_matches,"ax",@progbits
	.align	1
	.globl	bt_rpa_irk_matches
	.type	bt_rpa_irk_matches, @function
bt_rpa_irk_matches:
.LFB88:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/rpa.c"
	.loc 1 64 1
	.cfi_startproc
.LVL0:
	.loc 1 65 2
	.loc 1 66 2
	.loc 1 68 2
	.loc 1 70 2
	.loc 1 64 1 is_stmt 0
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
.LBB4:
.LBB5:
	.loc 1 42 2
	li	a2,3
	.cfi_offset 18, -16
.LBE5:
.LBE4:
	.loc 1 64 1
	mv	s2,a0
.LVL1:
.LBB8:
.LBB6:
	.loc 1 35 2 is_stmt 1
	.loc 1 36 2
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 42 2
.LBE6:
.LBE8:
	.loc 1 64 1 is_stmt 0
	.loc 1 64 1
	mv	s1,a1
.LBB9:
.LBB7:
	.loc 1 42 2
	addi	a0,s0,-32
.LVL2:
	addi	a1,a1,3
.LVL3:
	call	memcpy
.LVL4:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 8 is_stmt 0
	li	a2,13
	li	a1,0
	addi	a0,s0,-29
	call	memset
.LVL5:
	.loc 1 45 2 is_stmt 1
	.loc 1 45 8 is_stmt 0
	addi	a2,s0,-32
	mv	a1,a2
	mv	a0,s2
	call	bt_encrypt_le
.LVL6:
	.loc 1 46 2 is_stmt 1
	.loc 1 46 5 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 56 2 is_stmt 1
	li	a2,3
	addi	a1,s0,-32
	addi	a0,s0,-36
.LVL7:
	call	memcpy
.LVL8:
	.loc 1 58 2
.LBE7:
.LBE9:
	.loc 1 71 2
	.loc 1 75 2
	.loc 1 75 10 is_stmt 0
	li	a2,3
	addi	a1,s0,-36
	mv	a0,s1
	call	memcmp
.LVL9:
	.loc 1 75 9
	seqz	a0,a0
.LVL10:
.L3:
	.loc 1 76 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL11:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL12:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L2:
	.cfi_restore_state
	.loc 1 71 2 is_stmt 1
	.loc 1 72 9 is_stmt 0
	li	a0,0
.LVL14:
	j	.L3
	.cfi_endproc
.LFE88:
	.size	bt_rpa_irk_matches, .-bt_rpa_irk_matches
	.section	.text.bt_rpa_create,"ax",@progbits
	.align	1
	.globl	bt_rpa_create
	.type	bt_rpa_create, @function
bt_rpa_create:
.LFB89:
	.loc 1 102 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 103 2
	.loc 1 102 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 104 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,-134
.LVL16:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE89:
	.size	bt_rpa_create, .-bt_rpa_create
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/../include/bluetooth/crypto.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x15
	.byte	0x17
	.4byte	0x41
	.byte	0x5
	.4byte	0x6b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.byte	0x4
	.4byte	0x6b
	.byte	0x7
	.byte	0x6
	.byte	0x3
	.byte	0x19
	.byte	0x9
	.4byte	0xa0
	.byte	0x8
	.string	"val"
	.byte	0x3
	.byte	0x1a
	.byte	0x7
	.4byte	0xa0
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x6b
	.4byte	0xb0
	.byte	0xa
	.4byte	0x64
	.byte	0x5
	.byte	0
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1b
	.byte	0x3
	.4byte	0x89
	.byte	0x5
	.4byte	0xb0
	.byte	0x9
	.4byte	0x6b
	.4byte	0xd1
	.byte	0xa
	.4byte	0x64
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x6b
	.4byte	0xe1
	.byte	0xa
	.4byte	0x64
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.4byte	0x77
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x1
	.byte	0x9c
	.4byte	0x127
	.byte	0xc
	.string	"irk"
	.byte	0x1
	.byte	0x65
	.byte	0x1e
	.4byte	0xe8
	.4byte	.LLST7
	.byte	0xd
	.string	"rpa"
	.byte	0x1
	.byte	0x65
	.byte	0x32
	.4byte	0x127
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3f
	.byte	0x5
	.4byte	0xe1
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x1
	.byte	0x9c
	.4byte	0x261
	.byte	0xc
	.string	"irk"
	.byte	0x1
	.byte	0x3f
	.byte	0x23
	.4byte	0xe8
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3f
	.byte	0x3d
	.4byte	0x261
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x41
	.byte	0x7
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x10
	.string	"err"
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.4byte	0x5d
	.4byte	.LLST2
	.byte	0x11
	.4byte	0x267
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x46
	.byte	0x8
	.4byte	0x245
	.byte	0x12
	.4byte	0x28d
	.4byte	.LLST3
	.byte	0x12
	.4byte	0x283
	.4byte	.LLST4
	.byte	0x12
	.4byte	0x277
	.4byte	.LLST5
	.byte	0x13
	.4byte	.Ldebug_ranges0+0
	.byte	0x14
	.4byte	0x299
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.4byte	0x2a5
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x2b2
	.4byte	0x1ea
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x2be
	.4byte	0x208
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x63
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0x16
	.4byte	.LVL6
	.4byte	0x2ca
	.4byte	0x228
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0
	.byte	0x18
	.4byte	.LVL8
	.4byte	0x2b2
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL9
	.4byte	0x2d6
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xbc
	.byte	0x19
	.string	"ah"
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x5d
	.byte	0x1
	.4byte	0x2b2
	.byte	0x1a
	.string	"irk"
	.byte	0x1
	.byte	0x21
	.byte	0x1a
	.4byte	0xe8
	.byte	0x1a
	.string	"r"
	.byte	0x1
	.byte	0x21
	.byte	0x2e
	.4byte	0xe8
	.byte	0x1a
	.string	"out"
	.byte	0x1
	.byte	0x21
	.byte	0x39
	.4byte	0x83
	.byte	0x1b
	.string	"res"
	.byte	0x1
	.byte	0x23
	.byte	0x7
	.4byte	0xd1
	.byte	0x1b
	.string	"err"
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	0x5d
	.byte	0
	.byte	0x1c
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1f
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x5
	.byte	0x34
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1e
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x8
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
	.byte	0x1c
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
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE88
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE88
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x7b
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x79
	.byte	0x3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
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
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"bt_addr_t"
.LASF21:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF20:
	.string	"memcmp"
.LASF5:
	.string	"short unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF22:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/rpa.c"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF15:
	.string	"addr"
.LASF14:
	.string	"bt_rpa_irk_matches"
.LASF18:
	.string	"memset"
.LASF9:
	.string	"char"
.LASF10:
	.string	"u8_t"
.LASF16:
	.string	"hash"
.LASF23:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF3:
	.string	"long long int"
.LASF17:
	.string	"memcpy"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF19:
	.string	"bt_encrypt_le"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"bt_rpa_create"
.LASF12:
	.string	"_Bool"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
