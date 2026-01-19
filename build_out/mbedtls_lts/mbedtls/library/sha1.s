	.file	"sha1.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_sha1_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1_ret
	.type	mbedtls_sha1_ret, @function
mbedtls_sha1_ret:
.LFB2:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha1.c"
	.loc 1 422 1
	.cfi_startproc
.LVL0:
	.loc 1 423 5
	.loc 1 424 5
	.loc 1 426 5
	.loc 1 426 10
	.loc 1 426 17
	.loc 1 427 5
	.loc 1 427 10
	.loc 1 427 17
	.loc 1 429 5
	.loc 1 422 1 is_stmt 0
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sw	ra,220(sp)
	sw	s0,216(sp)
	sw	s1,212(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	sw	s2,208(sp)
	sw	s3,204(sp)
	sw	s4,200(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 422 1
	mv	s3,a0
	.loc 1 429 5
	addi	a0,s0,-224
.LVL1:
	.loc 1 422 1
	mv	s4,a1
	mv	s2,a2
	.loc 1 429 5
	call	mbedtls_sha1_init
.LVL2:
	.loc 1 431 5 is_stmt 1
	.loc 1 431 17 is_stmt 0
	addi	a0,s0,-224
	call	mbedtls_sha1_starts_ret
.LVL3:
	mv	s1,a0
.LVL4:
	.loc 1 431 7
	bne	a0,zero,.L2
	.loc 1 434 5 is_stmt 1
	.loc 1 434 17 is_stmt 0
	mv	a2,s4
	mv	a1,s3
	addi	a0,s0,-224
	call	mbedtls_sha1_update_ret
.LVL5:
	mv	s1,a0
.LVL6:
	.loc 1 434 7
	bne	a0,zero,.L2
	.loc 1 437 5 is_stmt 1
	.loc 1 437 17 is_stmt 0
	mv	a1,s2
	addi	a0,s0,-224
	call	mbedtls_sha1_finish_ret
.LVL7:
	mv	s1,a0
.LVL8:
.L2:
	.loc 1 441 5 is_stmt 1
	addi	a0,s0,-224
	call	mbedtls_sha1_free
.LVL9:
	.loc 1 443 5
	.loc 1 444 1 is_stmt 0
	lw	ra,220(sp)
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 224
	lw	s2,208(sp)
	.cfi_restore 18
.LVL10:
	lw	s3,204(sp)
	.cfi_restore 19
.LVL11:
	lw	s4,200(sp)
	.cfi_restore 20
.LVL12:
	mv	a0,s1
	lw	s1,212(sp)
	.cfi_restore 9
.LVL13:
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	mbedtls_sha1_ret, .-mbedtls_sha1_ret
	.section	.text.mbedtls_sha1,"ax",@progbits
	.align	1
	.globl	mbedtls_sha1
	.type	mbedtls_sha1, @function
mbedtls_sha1:
.LFB3:
	.loc 1 450 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 451 5
	.loc 1 450 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 452 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 451 5
	tail	mbedtls_sha1_ret
.LVL15:
	.cfi_endproc
.LFE3:
	.size	mbedtls_sha1, .-mbedtls_sha1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_common.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/security/mbedtls_lts/port/sha1_alt.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/sha1.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
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
	.byte	0x3
	.4byte	0x2c
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
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x69
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x69
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.4byte	0xc2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0
	.byte	0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0xc
	.byte	0x3
	.4byte	0x8f
	.byte	0x8
	.byte	0x14
	.byte	0x4
	.byte	0x12
	.byte	0x9
	.4byte	0x10c
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x13
	.byte	0xe
	.4byte	0x10c
	.byte	0
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x14
	.byte	0xf
	.4byte	0x11c
	.byte	0x8
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x15
	.byte	0xf
	.4byte	0x11c
	.byte	0xc
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x16
	.byte	0xe
	.4byte	0x7c
	.byte	0x10
	.byte	0
	.byte	0xa
	.4byte	0x7c
	.4byte	0x11c
	.byte	0xb
	.4byte	0x69
	.byte	0x1
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.4byte	.LASF23
	.byte	0x4
	.byte	0x17
	.byte	0x3
	.4byte	0xce
	.byte	0xd
	.byte	0x28
	.byte	0x4
	.byte	0x4
	.byte	0x19
	.byte	0x9
	.4byte	0x1a3
	.byte	0xe
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1b
	.byte	0xe
	.4byte	0x7c
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0
	.byte	0xe
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1d
	.byte	0xe
	.4byte	0x7c
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xe
	.4byte	.LASF26
	.byte	0x4
	.byte	0x1f
	.byte	0xe
	.4byte	0x7c
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x4
	.byte	0x20
	.byte	0xe
	.4byte	0x7c
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x7c
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x23
	.byte	0xe
	.4byte	0x7c
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x24
	.byte	0xe
	.4byte	0x1a3
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	0x7c
	.4byte	0x1b3
	.byte	0xb
	.4byte	0x69
	.byte	0x7
	.byte	0
	.byte	0xf
	.4byte	.LASF32
	.byte	0x4
	.byte	0x25
	.byte	0x20
	.4byte	0x12e
	.byte	0x4
	.byte	0x10
	.4byte	.LASF46
	.byte	0xc0
	.byte	0x4
	.byte	0x4
	.byte	0x27
	.byte	0x10
	.4byte	0x211
	.byte	0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x28
	.byte	0x13
	.4byte	0xc2
	.byte	0
	.byte	0x11
	.string	"ctx"
	.byte	0x4
	.byte	0x29
	.byte	0x20
	.4byte	0x122
	.byte	0x4
	.byte	0x12
	.4byte	.LASF47
	.byte	0x4
	.byte	0x2a
	.byte	0x25
	.4byte	0x1b3
	.byte	0x4
	.byte	0x18
	.byte	0x11
	.string	"tmp"
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.4byte	0x211
	.byte	0x40
	.byte	0x11
	.string	"pad"
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x211
	.byte	0x80
	.byte	0
	.byte	0xa
	.4byte	0x7c
	.4byte	0x221
	.byte	0xb
	.4byte	0x69
	.byte	0xf
	.byte	0
	.byte	0xf
	.4byte	.LASF33
	.byte	0x4
	.byte	0x2d
	.byte	0x3
	.4byte	0x1c0
	.byte	0x4
	.byte	0xf
	.4byte	.LASF34
	.byte	0x5
	.byte	0x5
	.byte	0x16
	.4byte	0x221
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1bf
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ab
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1bf
	.byte	0x29
	.4byte	0x2ab
	.4byte	.LLST4
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1c0
	.byte	0x1b
	.4byte	0x70
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1c1
	.byte	0x22
	.4byte	0x23b
	.4byte	.LLST6
	.byte	0x15
	.4byte	.LVL15
	.4byte	0x2b1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x33
	.byte	0x17
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1a3
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a6
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1a3
	.byte	0x2c
	.4byte	0x2ab
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1a4
	.byte	0x1e
	.4byte	0x70
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1a5
	.byte	0x25
	.4byte	0x23b
	.4byte	.LLST2
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.2byte	0x1a7
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST3
	.byte	0x19
	.string	"ctx"
	.byte	0x1
	.2byte	0x1a8
	.byte	0x1a
	.4byte	0x22e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7e
	.byte	0x1a
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1b8
	.byte	0x1
	.4byte	.L2
	.byte	0x1b
	.4byte	.LVL2
	.4byte	0x3a6
	.4byte	0x343
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0
	.byte	0x1b
	.4byte	.LVL3
	.4byte	0x3b2
	.4byte	0x358
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0
	.byte	0x1b
	.4byte	.LVL5
	.4byte	0x3be
	.4byte	0x379
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL7
	.4byte	0x3ca
	.4byte	0x394
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL9
	.4byte	0x3d6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x56
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x82
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x95
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0xa9
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x65
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
	.byte	0x26
	.byte	0
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
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0xe
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x2e
	.byte	0x1
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL11
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL12
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE2
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF33:
	.string	"bl_sha_ctx_t"
.LASF9:
	.string	"size_t"
.LASF29:
	.string	"shaSrcAddr"
.LASF39:
	.string	"mbedtls_sha1_starts_ret"
.LASF43:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF21:
	.string	"shaPadding"
.LASF44:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha1.c"
.LASF4:
	.string	"long int"
.LASF24:
	.string	"shaMode"
.LASF28:
	.string	"shaMsgLen"
.LASF38:
	.string	"mbedtls_sha1_init"
.LASF13:
	.string	"BL_SHA224"
.LASF45:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/mbedtls_lts"
.LASF0:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"input"
.LASF36:
	.string	"ilen"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF40:
	.string	"mbedtls_sha1_update_ret"
.LASF22:
	.string	"linkAddr"
.LASF41:
	.string	"mbedtls_sha1_finish_ret"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"shaHashSel"
.LASF12:
	.string	"BL_SHA1"
.LASF48:
	.string	"mbedtls_sha1"
.LASF8:
	.string	"unsigned int"
.LASF32:
	.string	"bl_SEC_Eng_SHA_Link_Config_Type"
.LASF7:
	.string	"long long unsigned int"
.LASF30:
	.string	"result"
.LASF19:
	.string	"total"
.LASF15:
	.string	"BL_MD5"
.LASF17:
	.string	"BL_SHA512"
.LASF42:
	.string	"mbedtls_sha1_free"
.LASF16:
	.string	"BL_SHA384"
.LASF27:
	.string	"shaIntSet"
.LASF23:
	.string	"bl_SEC_Eng_SHA256_Link_Ctx"
.LASF31:
	.string	"type"
.LASF50:
	.string	"exit"
.LASF37:
	.string	"output"
.LASF47:
	.string	"link_cfg"
.LASF20:
	.string	"shaBuf"
.LASF10:
	.string	"uint32_t"
.LASF26:
	.string	"shaIntClr"
.LASF11:
	.string	"char"
.LASF14:
	.string	"BL_SHA256"
.LASF49:
	.string	"mbedtls_sha1_ret"
.LASF34:
	.string	"mbedtls_sha1_context"
.LASF18:
	.string	"bl_sha_type_t"
.LASF46:
	.string	"bl_sha_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
