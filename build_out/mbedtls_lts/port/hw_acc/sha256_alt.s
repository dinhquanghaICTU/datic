	.file	"sha256_alt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_sha256_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_init
	.type	mbedtls_sha256_init, @function
mbedtls_sha256_init:
.LFB2:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/port/hw_acc/sha256_alt.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 29 5
	.loc 1 29 10
	.loc 1 29 17
	.loc 1 31 5
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 32 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 31 5
	li	a2,192
	li	a1,0
	.loc 1 32 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 31 5
	tail	memset
.LVL1:
	.cfi_endproc
.LFE2:
	.size	mbedtls_sha256_init, .-mbedtls_sha256_init
	.section	.text.mbedtls_sha256_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_free
	.type	mbedtls_sha256_free, @function
mbedtls_sha256_free:
.LFB3:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 36 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 36 7
	beq	a0,zero,.L3
	.loc 1 39 5 is_stmt 1
	.loc 1 40 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 39 5
	li	a1,192
	.loc 1 40 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 39 5
	tail	mbedtls_platform_zeroize
.LVL3:
.L3:
	.cfi_restore_state
	.loc 1 40 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	mbedtls_sha256_free, .-mbedtls_sha256_free
	.section	.text.mbedtls_sha256_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_clone
	.type	mbedtls_sha256_clone, @function
mbedtls_sha256_clone:
.LFB4:
	.loc 1 44 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 45 5
	.loc 1 45 10
	.loc 1 45 17
	.loc 1 46 5
	.loc 1 46 10
	.loc 1 46 17
	.loc 1 48 5
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 49 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 48 5
	tail	bl_sha_clone
.LVL5:
	.cfi_endproc
.LFE4:
	.size	mbedtls_sha256_clone, .-mbedtls_sha256_clone
	.section	.text.mbedtls_sha256_starts_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_starts_ret
	.type	mbedtls_sha256_starts_ret, @function
mbedtls_sha256_starts_ret:
.LFB5:
	.loc 1 55 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 56 5
	.loc 1 56 10
	.loc 1 56 17
	.loc 1 57 5
	.loc 1 57 10
	.loc 1 57 17
	.loc 1 58 5
	.loc 1 55 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 59 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 58 12
	seqz	a1,a1
.LVL7:
	addi	a1,a1,1
	.loc 1 59 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 58 12
	tail	bl_sha_init
.LVL8:
	.cfi_endproc
.LFE5:
	.size	mbedtls_sha256_starts_ret, .-mbedtls_sha256_starts_ret
	.section	.text.mbedtls_sha256_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_starts
	.type	mbedtls_sha256_starts, @function
mbedtls_sha256_starts:
.LFB6:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 65 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 66 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 65 5
	tail	mbedtls_sha256_starts_ret
.LVL10:
	.cfi_endproc
.LFE6:
	.size	mbedtls_sha256_starts, .-mbedtls_sha256_starts
	.section	.text.mbedtls_sha256_update_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_update_ret
	.type	mbedtls_sha256_update_ret, @function
mbedtls_sha256_update_ret:
.LFB7:
	.loc 1 72 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 73 5
	.loc 1 74 5
	.loc 1 74 10
	.loc 1 74 17
	.loc 1 75 5
	.loc 1 75 10
	.loc 1 75 17
	.loc 1 77 5
	.loc 1 72 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 72 1
	sw	a1,-24(s0)
	.loc 1 77 7
	sw	a2,-20(s0)
	.loc 1 78 15
	li	s1,0
	.loc 1 77 7
	beq	a2,zero,.L14
	mv	s1,a0
.LVL12:
.LBB4:
.LBB5:
	.loc 1 79 5 is_stmt 1
	call	bl_sha_mutex_take
.LVL13:
	.loc 1 80 5
	.loc 1 80 11 is_stmt 0
	lw	a2,-20(s0)
	lw	a1,-24(s0)
	mv	a0,s1
	call	bl_sha_update
.LVL14:
	mv	s1,a0
.LVL15:
	.loc 1 81 5 is_stmt 1
	call	bl_sha_mutex_give
.LVL16:
	.loc 1 83 5
.L14:
.LBE5:
.LBE4:
	.loc 1 84 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL17:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	mbedtls_sha256_update_ret, .-mbedtls_sha256_update_ret
	.section	.text.mbedtls_sha256_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_update
	.type	mbedtls_sha256_update, @function
mbedtls_sha256_update:
.LFB8:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 91 5
	.loc 1 90 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 92 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 91 5
	tail	mbedtls_sha256_update_ret
.LVL19:
	.cfi_endproc
.LFE8:
	.size	mbedtls_sha256_update, .-mbedtls_sha256_update
	.section	.text.mbedtls_sha256_finish_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_finish_ret
	.type	mbedtls_sha256_finish_ret, @function
mbedtls_sha256_finish_ret:
.LFB9:
	.loc 1 100 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 101 5
	.loc 1 103 5
	.loc 1 103 10
	.loc 1 103 17
	.loc 1 104 5
	.loc 1 104 10
	.loc 1 104 17
	.loc 1 106 5
	.loc 1 100 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 100 1
	mv	s1,a0
	sw	a1,-20(s0)
	.loc 1 106 5
	call	bl_sha_mutex_take
.LVL21:
	.loc 1 107 5 is_stmt 1
	.loc 1 107 11 is_stmt 0
	lw	a1,-20(s0)
	mv	a0,s1
	call	bl_sha_finish
.LVL22:
	mv	s1,a0
.LVL23:
	.loc 1 108 5 is_stmt 1
	call	bl_sha_mutex_give
.LVL24:
	.loc 1 109 5
	.loc 1 110 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL25:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL26:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	mbedtls_sha256_finish_ret, .-mbedtls_sha256_finish_ret
	.section	.text.mbedtls_sha256_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_finish
	.type	mbedtls_sha256_finish, @function
mbedtls_sha256_finish:
.LFB10:
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 116 5
	.loc 1 115 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 117 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 116 5
	tail	mbedtls_sha256_finish_ret
.LVL28:
	.cfi_endproc
.LFE10:
	.size	mbedtls_sha256_finish, .-mbedtls_sha256_finish
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_common.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/port/sha256_alt.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform_util.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x637
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
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
	.4byte	.LASF58
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
	.4byte	.LASF59
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
	.byte	0x3
	.4byte	0x22e
	.byte	0xc
	.byte	0x4
	.4byte	0x2c
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x71
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x295
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x71
	.byte	0x35
	.4byte	0x295
	.4byte	.LLST21
	.byte	0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x72
	.byte	0x2b
	.4byte	0x240
	.4byte	.LLST22
	.byte	0x16
	.4byte	.LVL28
	.4byte	0x29b
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x22e
	.byte	0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0x62
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x313
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x62
	.byte	0x38
	.4byte	0x295
	.4byte	.LLST18
	.byte	0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x63
	.byte	0x2e
	.4byte	0x240
	.4byte	.LLST19
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x65
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST20
	.byte	0x1a
	.4byte	.LVL21
	.4byte	0x5da
	.byte	0x1b
	.4byte	.LVL22
	.4byte	0x5e6
	.4byte	0x309
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x1a
	.4byte	.LVL24
	.4byte	0x5f2
	.byte	0
	.byte	0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x57
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x379
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x57
	.byte	0x35
	.4byte	0x295
	.4byte	.LLST15
	.byte	0x15
	.4byte	.LASF38
	.byte	0x1
	.byte	0x58
	.byte	0x32
	.4byte	0x379
	.4byte	.LLST16
	.byte	0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0x59
	.byte	0x24
	.4byte	0x70
	.4byte	.LLST17
	.byte	0x16
	.4byte	.LVL19
	.4byte	0x37f
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x17
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
	.byte	0x1c
	.4byte	.LASF60
	.byte	0x1
	.byte	0x45
	.byte	0x5
	.4byte	0x62
	.byte	0x1
	.4byte	0x3c1
	.byte	0x1d
	.string	"ctx"
	.byte	0x1
	.byte	0x45
	.byte	0x38
	.4byte	0x295
	.byte	0x1e
	.4byte	.LASF38
	.byte	0x1
	.byte	0x46
	.byte	0x35
	.4byte	0x379
	.byte	0x1e
	.4byte	.LASF39
	.byte	0x1
	.byte	0x47
	.byte	0x27
	.4byte	0x70
	.byte	0x1f
	.string	"ret"
	.byte	0x1
	.byte	0x49
	.byte	0x9
	.4byte	0x62
	.byte	0
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x410
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x3e
	.byte	0x35
	.4byte	0x295
	.4byte	.LLST6
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3f
	.byte	0x21
	.4byte	0x62
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LVL10
	.4byte	0x410
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF43
	.byte	0x1
	.byte	0x36
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x467
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x36
	.byte	0x38
	.4byte	0x295
	.4byte	.LLST4
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x36
	.byte	0x41
	.4byte	0x62
	.4byte	.LLST5
	.byte	0x16
	.4byte	.LVL8
	.4byte	0x5fe
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x30
	.byte	0x29
	.byte	0x23
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b6
	.byte	0x14
	.string	"dst"
	.byte	0x1
	.byte	0x2a
	.byte	0x34
	.4byte	0x295
	.4byte	.LLST2
	.byte	0x14
	.string	"src"
	.byte	0x1
	.byte	0x2b
	.byte	0x3a
	.4byte	0x4b6
	.4byte	.LLST3
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x60a
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x23b
	.byte	0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x4fa
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x22
	.byte	0x33
	.4byte	0x295
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x616
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x53d
	.byte	0x14
	.string	"ctx"
	.byte	0x1
	.byte	0x1b
	.byte	0x33
	.4byte	0x295
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LVL1
	.4byte	0x622
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	0x37f
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x5da
	.byte	0x21
	.4byte	0x390
	.4byte	.LLST8
	.byte	0x21
	.4byte	0x39c
	.4byte	.LLST9
	.byte	0x21
	.4byte	0x3a8
	.4byte	.LLST10
	.byte	0x22
	.4byte	0x3b4
	.byte	0x23
	.4byte	0x37f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x45
	.byte	0x5
	.byte	0x21
	.4byte	0x3a8
	.4byte	.LLST11
	.byte	0x21
	.4byte	0x39c
	.4byte	.LLST12
	.byte	0x21
	.4byte	0x390
	.4byte	.LLST13
	.byte	0x24
	.4byte	0x3b4
	.4byte	.LLST14
	.byte	0x1a
	.4byte	.LVL13
	.4byte	0x5da
	.byte	0x1b
	.4byte	.LVL14
	.4byte	0x62e
	.4byte	0x5cf
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x68
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x1a
	.4byte	.LVL16
	.4byte	0x5f2
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.byte	0x25
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x26
	.byte	0x5
	.byte	0x25
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x21
	.byte	0x5
	.byte	0x25
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x23
	.byte	0x5
	.byte	0x25
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x24
	.byte	0x5
	.byte	0x25
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.byte	0xf6
	.byte	0x6
	.byte	0x25
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x8
	.byte	0x21
	.byte	0x8
	.byte	0x25
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x25
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x19
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
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
.LLST21:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-1
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL25
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x78
	.byte	0x68
	.4byte	.LVL17
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL17
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x78
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"result"
.LASF19:
	.string	"total"
.LASF27:
	.string	"shaIntSet"
.LASF40:
	.string	"mbedtls_sha256_starts"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF38:
	.string	"input"
.LASF49:
	.string	"bl_sha_mutex_give"
.LASF20:
	.string	"shaBuf"
.LASF57:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/mbedtls_lts"
.LASF46:
	.string	"mbedtls_sha256_init"
.LASF42:
	.string	"mbedtls_sha256_finish_ret"
.LASF14:
	.string	"BL_SHA256"
.LASF56:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/port/hw_acc/sha256_alt.c"
.LASF60:
	.string	"mbedtls_sha256_update_ret"
.LASF10:
	.string	"uint32_t"
.LASF17:
	.string	"BL_SHA512"
.LASF6:
	.string	"long long int"
.LASF21:
	.string	"shaPadding"
.LASF12:
	.string	"BL_SHA1"
.LASF11:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF24:
	.string	"shaMode"
.LASF41:
	.string	"is224"
.LASF58:
	.string	"bl_sha_ctx"
.LASF13:
	.string	"BL_SHA224"
.LASF22:
	.string	"linkAddr"
.LASF25:
	.string	"shaHashSel"
.LASF52:
	.string	"mbedtls_platform_zeroize"
.LASF47:
	.string	"bl_sha_mutex_take"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"mbedtls_sha256_clone"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF50:
	.string	"bl_sha_init"
.LASF8:
	.string	"unsigned int"
.LASF37:
	.string	"mbedtls_sha256_update"
.LASF43:
	.string	"mbedtls_sha256_starts_ret"
.LASF15:
	.string	"BL_MD5"
.LASF3:
	.string	"short unsigned int"
.LASF36:
	.string	"mbedtls_sha256_finish"
.LASF23:
	.string	"bl_SEC_Eng_SHA256_Link_Ctx"
.LASF54:
	.string	"bl_sha_update"
.LASF31:
	.string	"type"
.LASF32:
	.string	"bl_SEC_Eng_SHA_Link_Config_Type"
.LASF51:
	.string	"bl_sha_clone"
.LASF48:
	.string	"bl_sha_finish"
.LASF28:
	.string	"shaMsgLen"
.LASF5:
	.string	"long unsigned int"
.LASF34:
	.string	"mbedtls_sha256_context"
.LASF26:
	.string	"shaIntClr"
.LASF39:
	.string	"ilen"
.LASF55:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF45:
	.string	"mbedtls_sha256_free"
.LASF59:
	.string	"link_cfg"
.LASF53:
	.string	"memset"
.LASF35:
	.string	"output"
.LASF29:
	.string	"shaSrcAddr"
.LASF18:
	.string	"bl_sha_type_t"
.LASF16:
	.string	"BL_SHA384"
.LASF33:
	.string	"bl_sha_ctx_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
