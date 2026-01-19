	.file	"sha1-pbkdf2.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pbkdf2_sha1,"ax",@progbits
	.align	1
	.globl	pbkdf2_sha1
	.type	pbkdf2_sha1, @function
pbkdf2_sha1:
.LFB70:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/security/wpa_supplicant/src/crypto/sha1-pbkdf2.c"
	.loc 1 136 1
	.cfi_startproc
.LVL0:
	.loc 1 137 2
	.loc 1 138 2
	.loc 1 136 1 is_stmt 0
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	s0,152(sp)
	sw	s1,148(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	s3,140(sp)
	sw	s4,136(sp)
	sw	s5,132(sp)
	sw	s8,120(sp)
	sw	s9,116(sp)
	sw	s10,112(sp)
	sw	s11,108(sp)
	sw	ra,156(sp)
	sw	s2,144(sp)
	sw	s6,128(sp)
	sw	s7,124(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 136 1
	mv	s5,a0
	sw	a1,-148(s0)
	mv	s8,a2
	mv	s9,a3
	mv	s4,a4
.LVL1:
	.loc 1 139 2 is_stmt 1
	.loc 1 136 1 is_stmt 0
	mv	s1,a5
.LVL2:
	.loc 1 140 2 is_stmt 1
	.loc 1 142 2
	.loc 1 137 15 is_stmt 0
	li	s3,0
.LBB4:
.LBB5:
	.loc 1 88 10
	addi	s10,s0,-144
	.loc 1 89 9
	li	s11,4
.LVL3:
.L2:
.LBE5:
.LBE4:
	.loc 1 142 8 is_stmt 1
	bne	s1,zero,.L10
	.loc 1 153 9 is_stmt 0
	li	a0,0
	j	.L1
.L10:
	.loc 1 143 3 is_stmt 1
.LBB10:
.LBB6:
	.loc 1 84 26 is_stmt 0
	mv	a0,s5
	call	strlen
.LVL4:
	.loc 1 86 10
	lw	a5,-148(s0)
.LBE6:
.LBE10:
	.loc 1 143 8
	addi	s3,s3,1
.LVL5:
	.loc 1 144 3 is_stmt 1
.LBB11:
.LBB7:
	.loc 1 79 2
	.loc 1 80 2
	.loc 1 81 2
	.loc 1 82 2
	.loc 1 83 2
	.loc 1 84 2
	.loc 1 99 15 is_stmt 0
	slli	a4,s3,16
	.loc 1 86 10
	sw	a5,-140(s0)
	.loc 1 97 31
	srli	a5,s3,24
	.loc 1 97 15
	sb	a5,-144(s0)
	.loc 1 99 15
	srli	a4,a4,16
	.loc 1 98 24
	srli	a5,s3,16
	.loc 1 99 15
	srli	a4,a4,8
	.loc 1 98 15
	sb	a5,-143(s0)
	.loc 1 99 15
	slli	a5,s3,8
	or	a5,a5,a4
	.loc 1 84 26
	mv	s6,a0
.LVL6:
	.loc 1 86 2 is_stmt 1
	.loc 1 87 2
	.loc 1 99 15 is_stmt 0
	sh	a5,-142(s0)
	.loc 1 101 6
	mv	a1,a0
	addi	a5,s0,-104
	addi	a4,s0,-132
	addi	a3,s0,-140
	li	a2,2
	mv	a0,s5
.LVL7:
	.loc 1 87 9
	sw	s8,-132(s0)
	.loc 1 88 2 is_stmt 1
	.loc 1 88 10 is_stmt 0
	sw	s10,-136(s0)
	.loc 1 89 2 is_stmt 1
	.loc 1 89 9 is_stmt 0
	sw	s11,-128(s0)
	.loc 1 97 2 is_stmt 1
	.loc 1 98 2
	.loc 1 99 2
	.loc 1 100 2
	.loc 1 101 2
	.loc 1 101 6 is_stmt 0
	call	hmac_sha1_vector
.LVL8:
	.loc 1 101 5
	beq	a0,zero,.L3
.L6:
.LVL9:
.LBE7:
.LBE11:
	.loc 1 146 11
	li	a0,-1
.L1:
	.loc 1 154 1
	lw	ra,156(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
.LVL10:
	lw	s1,148(sp)
	.cfi_restore 9
.LVL11:
	lw	s2,144(sp)
	.cfi_restore 18
	lw	s3,140(sp)
	.cfi_restore 19
.LVL12:
	lw	s4,136(sp)
	.cfi_restore 20
.LVL13:
	lw	s5,132(sp)
	.cfi_restore 21
.LVL14:
	lw	s6,128(sp)
	.cfi_restore 22
	lw	s7,124(sp)
	.cfi_restore 23
	lw	s8,120(sp)
	.cfi_restore 24
.LVL15:
	lw	s9,116(sp)
	.cfi_restore 25
.LVL16:
	lw	s10,112(sp)
	.cfi_restore 26
	lw	s11,108(sp)
	.cfi_restore 27
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
.LVL17:
.L3:
	.cfi_restore_state
.LBB12:
.LBB8:
	.loc 1 104 2 is_stmt 1
	li	a2,20
	addi	a1,s0,-104
	addi	a0,s0,-124
.LVL18:
	call	memcpy
.LVL19:
	.loc 1 106 2
	.loc 1 106 9 is_stmt 0
	li	s7,1
.LVL20:
.L5:
	.loc 1 106 14 is_stmt 1
	.loc 1 106 2 is_stmt 0
	bgt	s9,s7,.L8
.LVL21:
.LBE8:
.LBE12:
	.loc 1 147 3 is_stmt 1
	.loc 1 147 8 is_stmt 0
	li	a5,20
	mv	s2,s1
	bleu	s1,a5,.L11
	li	s2,20
.L11:
.LVL22:
	.loc 1 148 3 is_stmt 1
	mv	a0,s4
	mv	a2,s2
	addi	a1,s0,-124
	call	memcpy
.LVL23:
	.loc 1 149 3
	.loc 1 149 7 is_stmt 0
	add	s4,s4,s2
.LVL24:
	.loc 1 150 3 is_stmt 1
	.loc 1 150 8 is_stmt 0
	sub	s1,s1,s2
.LVL25:
	j	.L2
.LVL26:
.L8:
.LBB13:
.LBB9:
	.loc 1 107 3 is_stmt 1
	.loc 1 107 7 is_stmt 0
	addi	a4,s0,-84
	li	a3,20
	addi	a2,s0,-104
	mv	a1,s6
	mv	a0,s5
	call	hmac_sha1
.LVL27:
	mv	s2,a0
	.loc 1 107 6
	bne	a0,zero,.L6
	.loc 1 110 3 is_stmt 1
	li	a2,20
	addi	a1,s0,-84
	addi	a0,s0,-104
	call	memcpy
.LVL28:
	.loc 1 111 3
	.loc 1 111 15
	addi	a5,s0,-124
.LVL29:
	.loc 1 111 3 is_stmt 0
	li	a3,20
.LVL30:
.L7:
	.loc 1 112 4 is_stmt 1
	.loc 1 112 21 is_stmt 0
	addi	a4,s0,-84
	add	a4,a4,s2
	.loc 1 112 14
	lbu	a2,0(a5)
	lbu	a4,0(a4)
	.loc 1 111 24
	addi	s2,s2,1
.LVL31:
	.loc 1 111 3
	addi	a5,a5,1
	.loc 1 112 14
	xor	a4,a4,a2
	sb	a4,-1(a5)
	.loc 1 111 23 is_stmt 1
.LVL32:
	.loc 1 111 15
	.loc 1 111 3 is_stmt 0
	bne	s2,a3,.L7
	.loc 1 106 30 is_stmt 1
	.loc 1 106 31 is_stmt 0
	addi	s7,s7,1
.LVL33:
	j	.L5
.LBE9:
.LBE13:
	.cfi_endproc
.LFE70:
	.size	pbkdf2_sha1, .-pbkdf2_sha1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/security/wpa_supplicant/src/crypto/sha1.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/security/wpa_supplicant/src/utils/common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x416
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.4byte	0x52
	.4byte	0x93
	.byte	0x6
	.4byte	0x31
	.byte	0x3
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x8
	.4byte	0x99
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x9
	.string	"u8"
	.byte	0x7
	.byte	0x16
	.byte	0x11
	.4byte	0xab
	.byte	0x8
	.4byte	0xb7
	.byte	0x7
	.byte	0x4
	.4byte	0xb7
	.byte	0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.4byte	0x38
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fd
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x86
	.byte	0x19
	.4byte	0xa5
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x86
	.byte	0x31
	.4byte	0xa5
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x86
	.byte	0x3e
	.4byte	0x25
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x87
	.byte	0x7
	.4byte	0x38
	.4byte	.LLST3
	.byte	0xc
	.string	"buf"
	.byte	0x1
	.byte	0x87
	.byte	0x17
	.4byte	0xc7
	.4byte	.LLST4
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x87
	.byte	0x23
	.4byte	0x25
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x89
	.byte	0xf
	.4byte	0x31
	.4byte	.LLST6
	.byte	0xe
	.string	"pos"
	.byte	0x1
	.byte	0x8a
	.byte	0x11
	.4byte	0x93
	.4byte	.LLST7
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x8b
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST8
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8b
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8c
	.byte	0x10
	.4byte	0x2fd
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x10
	.4byte	0x30d
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x90
	.byte	0x7
	.4byte	0x2df
	.byte	0x11
	.4byte	0x35a
	.4byte	.LLST10
	.byte	0x11
	.4byte	0x34e
	.4byte	.LLST11
	.byte	0x11
	.4byte	0x342
	.4byte	.LLST12
	.byte	0x11
	.4byte	0x336
	.4byte	.LLST13
	.byte	0x12
	.4byte	0x32a
	.byte	0x11
	.4byte	0x31e
	.4byte	.LLST14
	.byte	0x13
	.4byte	.Ldebug_ranges0+0
	.byte	0x14
	.4byte	0x366
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x14
	.4byte	0x372
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x15
	.4byte	0x37e
	.4byte	.LLST15
	.byte	0x15
	.4byte	0x388
	.4byte	.LLST16
	.byte	0x14
	.4byte	0x392
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x14
	.4byte	0x39e
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x14
	.4byte	0x3aa
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x15
	.4byte	0x3b6
	.4byte	.LLST17
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x3e9
	.4byte	0x23e
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL8
	.4byte	0x3f5
	.4byte	0x272
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xf4,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0xfc,0x7e
	.byte	0x17
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x78
	.byte	0x98,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL19
	.4byte	0x401
	.4byte	0x293
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x16
	.4byte	.LVL27
	.4byte	0x40d
	.4byte	0x2c0
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x44
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x18
	.4byte	.LVL28
	.4byte	0x401
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL23
	.4byte	0x401
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0x52
	.4byte	0x30d
	.byte	0x6
	.4byte	0x31
	.byte	0x13
	.byte	0
	.byte	0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0x38
	.byte	0x1
	.4byte	0x3c3
	.byte	0x1a
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4b
	.byte	0x1b
	.4byte	0xa5
	.byte	0x1a
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4b
	.byte	0x33
	.4byte	0xa5
	.byte	0x1a
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4c
	.byte	0x10
	.4byte	0x25
	.byte	0x1a
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4c
	.byte	0x1e
	.4byte	0x38
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4c
	.byte	0x37
	.4byte	0x31
	.byte	0x1a
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.4byte	0xc7
	.byte	0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x4f
	.byte	0x10
	.4byte	0x2fd
	.byte	0x1c
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4f
	.byte	0x19
	.4byte	0x2fd
	.byte	0x1b
	.string	"i"
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	0x38
	.byte	0x1b
	.string	"j"
	.byte	0x1
	.byte	0x50
	.byte	0x9
	.4byte	0x38
	.byte	0x1c
	.4byte	.LASF23
	.byte	0x1
	.byte	0x51
	.byte	0x10
	.4byte	0x83
	.byte	0x1c
	.4byte	.LASF24
	.byte	0x1
	.byte	0x52
	.byte	0xc
	.4byte	0x3c3
	.byte	0x1b
	.string	"len"
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.4byte	0x3d9
	.byte	0x1c
	.4byte	.LASF25
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0x5
	.4byte	0x3d3
	.4byte	0x3d3
	.byte	0x6
	.4byte	0x31
	.byte	0x1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc2
	.byte	0x5
	.4byte	0x25
	.4byte	0x3e9
	.byte	0x6
	.4byte	0x31
	.byte	0x1
	.byte	0
	.byte	0x1d
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x29
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x6
	.byte	0x16
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
	.byte	0x3
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x16
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xe
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
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0x1a
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.4byte	.LVL10
	.4byte	.LFE70
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL17
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x78
	.byte	0x84,0x7f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LVL21
	.2byte	0x4
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x4
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30
	.4byte	.LFE70
	.2byte	0x4
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL26
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL26
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL26
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL26
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL26
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF2:
	.string	"size_t"
.LASF33:
	.string	"pbkdf2_sha1"
.LASF30:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF18:
	.string	"count"
.LASF23:
	.string	"count_buf"
.LASF21:
	.string	"digest"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"left"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"tmp2"
.LASF31:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/security/wpa_supplicant/src/crypto/sha1-pbkdf2.c"
.LASF15:
	.string	"ssid_len"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF24:
	.string	"addr"
.LASF16:
	.string	"iterations"
.LASF27:
	.string	"hmac_sha1_vector"
.LASF29:
	.string	"hmac_sha1"
.LASF32:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/wpa_supplicant"
.LASF26:
	.string	"strlen"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF9:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF34:
	.string	"pbkdf2_sha1_f"
.LASF28:
	.string	"memcpy"
.LASF14:
	.string	"ssid"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"passphrase_len"
.LASF20:
	.string	"plen"
.LASF17:
	.string	"buflen"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"passphrase"
.LASF1:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
