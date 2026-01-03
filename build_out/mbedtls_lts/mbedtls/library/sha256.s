	.file	"sha256.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_sha256_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_ret
	.type	mbedtls_sha256_ret, @function
mbedtls_sha256_ret:
.LFB2:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha256.c"
	.loc 1 415 1
	.cfi_startproc
.LVL0:
	.loc 1 416 5
	.loc 1 417 5
	.loc 1 419 5
	.loc 1 419 10
	.loc 1 419 17
	.loc 1 420 5
	.loc 1 420 10
	.loc 1 420 17
	.loc 1 421 5
	.loc 1 421 10
	.loc 1 421 17
	.loc 1 423 5
	.loc 1 415 1 is_stmt 0
	addi	sp,sp,-240
	.cfi_def_cfa_offset 240
	sw	ra,236(sp)
	sw	s0,232(sp)
	sw	s1,228(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,240
	.cfi_def_cfa 8, 0
	sw	s2,224(sp)
	sw	s3,220(sp)
	sw	s4,216(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 415 1
	mv	s3,a0
	.loc 1 423 5
	addi	a0,s0,-224
.LVL1:
	.loc 1 415 1
	mv	s4,a1
	mv	s2,a2
	sw	a3,-228(s0)
	.loc 1 423 5
	call	mbedtls_sha256_init
.LVL2:
	.loc 1 425 5 is_stmt 1
	.loc 1 425 17 is_stmt 0
	lw	a1,-228(s0)
	addi	a0,s0,-224
	call	mbedtls_sha256_starts_ret
.LVL3:
	mv	s1,a0
.LVL4:
	.loc 1 425 7
	bne	a0,zero,.L2
	.loc 1 428 5 is_stmt 1
	.loc 1 428 17 is_stmt 0
	mv	a2,s4
	mv	a1,s3
	addi	a0,s0,-224
	call	mbedtls_sha256_update_ret
.LVL5:
	mv	s1,a0
.LVL6:
	.loc 1 428 7
	bne	a0,zero,.L2
	.loc 1 431 5 is_stmt 1
	.loc 1 431 17 is_stmt 0
	mv	a1,s2
	addi	a0,s0,-224
	call	mbedtls_sha256_finish_ret
.LVL7:
	mv	s1,a0
.LVL8:
.L2:
	.loc 1 435 5 is_stmt 1
	addi	a0,s0,-224
	call	mbedtls_sha256_free
.LVL9:
	.loc 1 437 5
	.loc 1 438 1 is_stmt 0
	lw	ra,236(sp)
	.cfi_restore 1
	lw	s0,232(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 240
.LVL10:
	lw	s2,224(sp)
	.cfi_restore 18
.LVL11:
	lw	s3,220(sp)
	.cfi_restore 19
.LVL12:
	lw	s4,216(sp)
	.cfi_restore 20
.LVL13:
	mv	a0,s1
	lw	s1,228(sp)
	.cfi_restore 9
.LVL14:
	addi	sp,sp,240
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	mbedtls_sha256_ret, .-mbedtls_sha256_ret
	.section	.text.mbedtls_sha256,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256
	.type	mbedtls_sha256, @function
mbedtls_sha256:
.LFB3:
	.loc 1 445 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 446 5
	.loc 1 445 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 447 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 446 5
	tail	mbedtls_sha256_ret
.LVL16:
	.cfi_endproc
.LFE3:
	.size	mbedtls_sha256, .-mbedtls_sha256
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_common.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/port/sha256_alt.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x410
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
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
	.4byte	.LASF47
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
	.4byte	.LASF48
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
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1b9
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c3
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1b9
	.byte	0x2b
	.4byte	0x2c3
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1d
	.4byte	0x70
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1bb
	.byte	0x24
	.4byte	0x23b
	.4byte	.LLST7
	.byte	0x14
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x1bc
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST8
	.byte	0x15
	.4byte	.LVL16
	.4byte	0x2c9
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
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x33
	.byte	0x17
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x19b
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d7
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x19b
	.byte	0x2e
	.4byte	0x2c3
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x19c
	.byte	0x20
	.4byte	0x70
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x19d
	.byte	0x27
	.4byte	0x23b
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x19e
	.byte	0x1d
	.4byte	0x62
	.4byte	.LLST3
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.2byte	0x1a0
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST4
	.byte	0x19
	.string	"ctx"
	.byte	0x1
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x22e
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7e
	.byte	0x1a
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1
	.4byte	.L2
	.byte	0x1b
	.4byte	.LVL2
	.4byte	0x3d7
	.4byte	0x36c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0
	.byte	0x1b
	.4byte	.LVL3
	.4byte	0x3e3
	.4byte	0x389
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0x9c,0x7e
	.byte	0x6
	.byte	0
	.byte	0x1b
	.4byte	.LVL5
	.4byte	0x3ef
	.4byte	0x3aa
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
	.4byte	0x3fb
	.4byte	0x3c5
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
	.4byte	0x407
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4d
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x6c
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x7b
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0x8b
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x6
	.byte	0x56
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
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL12
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL13
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2-1
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x7e
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
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
.LASF38:
	.string	"is224"
.LASF44:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF21:
	.string	"shaPadding"
.LASF4:
	.string	"long int"
.LASF24:
	.string	"shaMode"
.LASF28:
	.string	"shaMsgLen"
.LASF41:
	.string	"mbedtls_sha256_update_ret"
.LASF13:
	.string	"BL_SHA224"
.LASF39:
	.string	"mbedtls_sha256_init"
.LASF48:
	.string	"link_cfg"
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
.LASF22:
	.string	"linkAddr"
.LASF40:
	.string	"mbedtls_sha256_starts_ret"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"shaHashSel"
.LASF12:
	.string	"BL_SHA1"
.LASF8:
	.string	"unsigned int"
.LASF32:
	.string	"bl_SEC_Eng_SHA_Link_Config_Type"
.LASF49:
	.string	"mbedtls_sha256"
.LASF7:
	.string	"long long unsigned int"
.LASF30:
	.string	"result"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"total"
.LASF46:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/mbedtls_lts"
.LASF15:
	.string	"BL_MD5"
.LASF17:
	.string	"BL_SHA512"
.LASF16:
	.string	"BL_SHA384"
.LASF27:
	.string	"shaIntSet"
.LASF42:
	.string	"mbedtls_sha256_finish_ret"
.LASF43:
	.string	"mbedtls_sha256_free"
.LASF34:
	.string	"mbedtls_sha256_context"
.LASF23:
	.string	"bl_SEC_Eng_SHA256_Link_Ctx"
.LASF31:
	.string	"type"
.LASF51:
	.string	"exit"
.LASF37:
	.string	"output"
.LASF45:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha256.c"
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
.LASF50:
	.string	"mbedtls_sha256_ret"
.LASF18:
	.string	"bl_sha_type_t"
.LASF47:
	.string	"bl_sha_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
