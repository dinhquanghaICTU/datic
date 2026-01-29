	.file	"ecp_curves_alt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_ecp_group_load,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_group_load
	.type	mbedtls_ecp_group_load, @function
mbedtls_ecp_group_load:
.LFB8:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/port/hw_acc/ecp_curves_alt.c"
	.loc 1 754 1
	.cfi_startproc
.LVL0:
	.loc 1 755 5
	.loc 1 755 10
	.loc 1 755 17
	.loc 1 756 5
	.loc 1 754 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 754 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 756 5
	call	mbedtls_ecp_group_free
.LVL1:
	.loc 1 758 5 is_stmt 1
	mv	a0,s1
	call	mbedtls_ecp_group_init
.LVL2:
	.loc 1 760 5
	.loc 1 762 5 is_stmt 0
	li	a5,3
	.loc 1 760 13
	sw	s2,0(s1)
	.loc 1 762 5 is_stmt 1
	bne	s2,a5,.L2
	.loc 1 778 13
	.loc 1 779 13
.LVL3:
.LBB46:
.LBB47:
	.loc 1 570 5
.LBB48:
.LBB49:
	.loc 1 543 5
	.loc 1 545 10 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	sw	a4,12(s1)
.LBE49:
.LBE48:
.LBB54:
.LBB55:
	lui	a4,%hi(.LANCHOR1)
.LBE55:
.LBE54:
.LBB59:
.LBB50:
	.loc 1 544 10
	li	a5,8
.LBE50:
.LBE59:
.LBB60:
.LBB56:
	.loc 1 545 10
	addi	a4,a4,%lo(.LANCHOR1)
.LBE56:
.LBE60:
.LBB61:
.LBB51:
	.loc 1 544 10
	sw	a5,8(s1)
.LBE51:
.LBE61:
.LBB62:
.LBB57:
	sw	a5,32(s1)
	.loc 1 545 10
	sw	a4,36(s1)
.LBE57:
.LBE62:
.LBB63:
.LBB64:
	.loc 1 544 10
	sw	a5,80(s1)
.LBE64:
.LBE63:
.LBB69:
.LBB70:
	sw	a5,44(s1)
.LBE70:
.LBE69:
.LBB75:
.LBB76:
	sw	a5,56(s1)
.LBE76:
.LBE75:
.LBB81:
.LBB65:
	.loc 1 545 10
	lui	a4,%hi(.LANCHOR2)
.LBE65:
.LBE81:
.LBB82:
.LBB77:
	lui	a5,%hi(.LANCHOR4)
.LBE77:
.LBE82:
.LBB83:
.LBB66:
	addi	a4,a4,%lo(.LANCHOR2)
.LBE66:
.LBE83:
.LBB84:
.LBB78:
	addi	a5,a5,%lo(.LANCHOR4)
.LBE78:
.LBE84:
.LBB85:
.LBB67:
	sw	a4,84(s1)
.LBE67:
.LBE85:
.LBB86:
.LBB79:
	sw	a5,60(s1)
.LBE79:
.LBE86:
.LBB87:
.LBB71:
	lui	a4,%hi(.LANCHOR3)
.LBE71:
.LBE87:
.LBB88:
.LBB89:
	.loc 1 556 10
	lui	a5,%hi(.LANCHOR5)
.LBE89:
.LBE88:
.LBB93:
.LBB52:
	.loc 1 543 10
	li	s2,1
.LVL4:
.LBE52:
.LBE93:
.LBB94:
.LBB72:
	.loc 1 545 10
	addi	a4,a4,%lo(.LANCHOR3)
.LBE72:
.LBE94:
.LBB95:
.LBB90:
	.loc 1 556 10
	addi	a5,a5,%lo(.LANCHOR5)
.LBE90:
.LBE95:
.LBB96:
.LBB73:
	.loc 1 545 10
	sw	a4,48(s1)
.LBE73:
.LBE96:
.LBB97:
.LBB91:
	.loc 1 556 10
	sw	a5,72(s1)
.LBE91:
.LBE97:
.LBB98:
.LBB53:
	.loc 1 543 10
	sw	s2,4(s1)
	.loc 1 544 5 is_stmt 1
	.loc 1 545 5
.LVL5:
.LBE53:
.LBE98:
	.loc 1 571 5
	.loc 1 573 5
.LBB99:
.LBB58:
	.loc 1 543 5
	.loc 1 543 10 is_stmt 0
	sw	s2,28(s1)
	.loc 1 544 5 is_stmt 1
	.loc 1 545 5
.LVL6:
.LBE58:
.LBE99:
	.loc 1 574 5
.LBB100:
.LBB68:
	.loc 1 543 5
	.loc 1 543 10 is_stmt 0
	sw	s2,76(s1)
	.loc 1 544 5 is_stmt 1
	.loc 1 545 5
.LVL7:
.LBE68:
.LBE100:
	.loc 1 576 5
.LBB101:
.LBB74:
	.loc 1 543 5
	.loc 1 543 10 is_stmt 0
	sw	s2,40(s1)
	.loc 1 544 5 is_stmt 1
	.loc 1 545 5
.LVL8:
.LBE74:
.LBE101:
	.loc 1 577 5
.LBB102:
.LBB80:
	.loc 1 543 5
	.loc 1 543 10 is_stmt 0
	sw	s2,52(s1)
	.loc 1 544 5 is_stmt 1
	.loc 1 545 5
.LVL9:
.LBE80:
.LBE102:
	.loc 1 578 5
.LBB103:
.LBB92:
	.loc 1 553 5
	.loc 1 554 5
	.loc 1 554 10 is_stmt 0
	sw	s2,64(s1)
	.loc 1 555 5 is_stmt 1
	.loc 1 555 10 is_stmt 0
	sw	s2,68(s1)
	.loc 1 556 5 is_stmt 1
.LVL10:
.LBE92:
.LBE103:
	.loc 1 580 5
	.loc 1 580 18 is_stmt 0
	addi	a0,s1,4
	call	mbedtls_mpi_bitlen
.LVL11:
	.loc 1 580 16
	sw	a0,88(s1)
	.loc 1 581 5 is_stmt 1
	.loc 1 581 18 is_stmt 0
	addi	a0,s1,76
	call	mbedtls_mpi_bitlen
.LVL12:
	.loc 1 581 16
	sw	a0,92(s1)
	.loc 1 583 5 is_stmt 1
	.loc 1 583 12 is_stmt 0
	sw	s2,96(s1)
	.loc 1 585 5 is_stmt 1
.LVL13:
.LBE47:
.LBE46:
	.loc 1 779 21 is_stmt 0
	li	a0,0
.L1:
	.loc 1 853 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL14:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L2:
	.cfi_restore_state
	.loc 1 850 13 is_stmt 1
	.loc 1 851 19 is_stmt 0
	li	a0,-20480
	.loc 1 850 21
	sw	zero,0(s1)
	.loc 1 851 13 is_stmt 1
	.loc 1 851 19 is_stmt 0
	addi	a0,a0,384
	j	.L1
	.cfi_endproc
.LFE8:
	.size	mbedtls_ecp_group_load, .-mbedtls_ecp_group_load
	.section	.rodata.secp256r1_b,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	secp256r1_b, @object
	.size	secp256r1_b, 32
secp256r1_b:
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.section	.rodata.secp256r1_gx,"a"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	secp256r1_gx, @object
	.size	secp256r1_gx, 32
secp256r1_gx:
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.section	.rodata.secp256r1_gy,"a"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	secp256r1_gy, @object
	.size	secp256r1_gy, 32
secp256r1_gy:
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.section	.rodata.secp256r1_n,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	secp256r1_n, @object
	.size	secp256r1_n, 32
secp256r1_n:
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.section	.rodata.secp256r1_p,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	secp256r1_p, @object
	.size	secp256r1_p, 32
secp256r1_p:
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.section	.sdata.one.0,"aw"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	one.0, @object
	.size	one.0, 4
one.0:
	.word	1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/bignum.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/ecp.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/port/ecp_alt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x614
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0x110
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
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x48
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0xb2
	.byte	0x16
	.4byte	0x77
	.byte	0x6
	.4byte	0x8c
	.byte	0x7
	.4byte	.LASF13
	.byte	0xc
	.byte	0x4
	.byte	0xc0
	.byte	0x10
	.4byte	0xcc
	.byte	0x8
	.string	"s"
	.byte	0x4
	.byte	0xc2
	.byte	0x9
	.4byte	0x5d
	.byte	0
	.byte	0x8
	.string	"n"
	.byte	0x4
	.byte	0xc3
	.byte	0xc
	.4byte	0x6b
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x4
	.byte	0xc4
	.byte	0x17
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x8c
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc6
	.byte	0x1
	.4byte	0x9d
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x5
	.byte	0x79
	.byte	0x1
	.4byte	0x141
	.byte	0xb
	.4byte	.LASF14
	.byte	0
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0xb
	.4byte	.LASF16
	.byte	0x2
	.byte	0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0xb
	.4byte	.LASF21
	.byte	0x7
	.byte	0xb
	.4byte	.LASF22
	.byte	0x8
	.byte	0xb
	.4byte	.LASF23
	.byte	0x9
	.byte	0xb
	.4byte	.LASF24
	.byte	0xa
	.byte	0xb
	.4byte	.LASF25
	.byte	0xb
	.byte	0xb
	.4byte	.LASF26
	.byte	0xc
	.byte	0xb
	.4byte	.LASF27
	.byte	0xd
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x88
	.byte	0x3
	.4byte	0xde
	.byte	0x7
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0xb1
	.byte	0x10
	.4byte	0x17c
	.byte	0x8
	.string	"X"
	.byte	0x5
	.byte	0xb3
	.byte	0x11
	.4byte	0xd2
	.byte	0
	.byte	0x8
	.string	"Y"
	.byte	0x5
	.byte	0xb4
	.byte	0x11
	.4byte	0xd2
	.byte	0xc
	.byte	0x8
	.string	"Z"
	.byte	0x5
	.byte	0xb5
	.byte	0x11
	.4byte	0xd2
	.byte	0x18
	.byte	0
	.byte	0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0xb7
	.byte	0x1
	.4byte	0x14d
	.byte	0x7
	.4byte	.LASF30
	.byte	0x6c
	.byte	0x6
	.byte	0x2c
	.byte	0x10
	.4byte	0x218
	.byte	0x8
	.string	"id"
	.byte	0x6
	.byte	0x2e
	.byte	0x1a
	.4byte	0x141
	.byte	0
	.byte	0x8
	.string	"P"
	.byte	0x6
	.byte	0x2f
	.byte	0x11
	.4byte	0xd2
	.byte	0x4
	.byte	0x8
	.string	"A"
	.byte	0x6
	.byte	0x30
	.byte	0x11
	.4byte	0xd2
	.byte	0x10
	.byte	0x8
	.string	"B"
	.byte	0x6
	.byte	0x32
	.byte	0x11
	.4byte	0xd2
	.byte	0x1c
	.byte	0x8
	.string	"G"
	.byte	0x6
	.byte	0x34
	.byte	0x17
	.4byte	0x17c
	.byte	0x28
	.byte	0x8
	.string	"N"
	.byte	0x6
	.byte	0x35
	.byte	0x11
	.4byte	0xd2
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x36
	.byte	0xc
	.4byte	0x6b
	.byte	0x58
	.byte	0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.4byte	0x6b
	.byte	0x5c
	.byte	0x8
	.string	"h"
	.byte	0x6
	.byte	0x3a
	.byte	0x12
	.4byte	0x64
	.byte	0x60
	.byte	0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3b
	.byte	0xb
	.4byte	0x83
	.byte	0x64
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3c
	.byte	0xb
	.4byte	0x83
	.byte	0x68
	.byte	0
	.byte	0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3e
	.byte	0x1
	.4byte	0x188
	.byte	0xd
	.4byte	0x98
	.4byte	0x234
	.byte	0xe
	.4byte	0x64
	.byte	0x7
	.byte	0
	.byte	0x6
	.4byte	0x224
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7d
	.byte	0x1f
	.4byte	0x234
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_p
	.byte	0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x83
	.byte	0x1f
	.4byte	0x234
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_b
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x89
	.byte	0x1f
	.4byte	0x234
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_gx
	.byte	0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8f
	.byte	0x1f
	.4byte	0x234
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_gy
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x95
	.byte	0x1f
	.4byte	0x234
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_n
	.byte	0x10
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x2f1
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4bd
	.byte	0x11
	.string	"grp"
	.byte	0x1
	.2byte	0x2f1
	.byte	0x30
	.4byte	0x4bd
	.4byte	.LLST0
	.byte	0x11
	.string	"id"
	.byte	0x1
	.2byte	0x2f1
	.byte	0x4a
	.4byte	0x141
	.4byte	.LLST1
	.byte	0x12
	.4byte	0x4c3
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.2byte	0x30b
	.byte	0x15
	.4byte	0x498
	.byte	0x13
	.4byte	0x4e2
	.4byte	.LLST2
	.byte	0x13
	.4byte	0x4ed
	.4byte	.LLST3
	.byte	0x13
	.4byte	0x4fa
	.4byte	.LLST4
	.byte	0x13
	.4byte	0x505
	.4byte	.LLST4
	.byte	0x13
	.4byte	0x512
	.4byte	.LLST6
	.byte	0x13
	.4byte	0x51d
	.4byte	.LLST3
	.byte	0x13
	.4byte	0x52a
	.4byte	.LLST8
	.byte	0x13
	.4byte	0x536
	.4byte	.LLST3
	.byte	0x13
	.4byte	0x543
	.4byte	.LLST10
	.byte	0x13
	.4byte	0x54f
	.4byte	.LLST3
	.byte	0x13
	.4byte	0x55c
	.4byte	.LLST12
	.byte	0x13
	.4byte	0x567
	.4byte	.LLST3
	.byte	0x13
	.4byte	0x4d5
	.4byte	.LLST14
	.byte	0x14
	.4byte	0x5be
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x23a
	.byte	0x5
	.4byte	0x38a
	.byte	0x13
	.4byte	0x5e2
	.4byte	.LLST15
	.byte	0x13
	.4byte	0x5d7
	.4byte	.LLST16
	.byte	0x13
	.4byte	0x5cc
	.4byte	.LLST17
	.byte	0
	.byte	0x14
	.4byte	0x5be
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x23d
	.byte	0x5
	.4byte	0x3bb
	.byte	0x13
	.4byte	0x5e2
	.4byte	.LLST18
	.byte	0x13
	.4byte	0x5d7
	.4byte	.LLST19
	.byte	0x13
	.4byte	0x5cc
	.4byte	.LLST20
	.byte	0
	.byte	0x14
	.4byte	0x5be
	.4byte	.LBB63
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x23e
	.byte	0x5
	.4byte	0x3ec
	.byte	0x13
	.4byte	0x5e2
	.4byte	.LLST21
	.byte	0x13
	.4byte	0x5d7
	.4byte	.LLST22
	.byte	0x13
	.4byte	0x5cc
	.4byte	.LLST23
	.byte	0
	.byte	0x14
	.4byte	0x5be
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x240
	.byte	0x5
	.4byte	0x41d
	.byte	0x13
	.4byte	0x5e2
	.4byte	.LLST24
	.byte	0x13
	.4byte	0x5d7
	.4byte	.LLST25
	.byte	0x13
	.4byte	0x5cc
	.4byte	.LLST26
	.byte	0
	.byte	0x14
	.4byte	0x5be
	.4byte	.LBB75
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x241
	.byte	0x5
	.4byte	0x44e
	.byte	0x13
	.4byte	0x5e2
	.4byte	.LLST27
	.byte	0x13
	.4byte	0x5d7
	.4byte	.LLST28
	.byte	0x13
	.4byte	0x5cc
	.4byte	.LLST29
	.byte	0
	.byte	0x14
	.4byte	0x57b
	.4byte	.LBB88
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x242
	.byte	0x5
	.4byte	0x472
	.byte	0x13
	.4byte	0x589
	.4byte	.LLST30
	.byte	0x15
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0
	.byte	0x16
	.4byte	.LVL11
	.4byte	0x5f0
	.4byte	0x486
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0
	.byte	0x18
	.4byte	.LVL12
	.4byte	0x5f0
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0xcc,0
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL1
	.4byte	0x5fd
	.4byte	0x4ac
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL2
	.4byte	0x60a
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x218
	.byte	0x19
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x232
	.byte	0xc
	.4byte	0x5d
	.byte	0x1
	.4byte	0x575
	.byte	0x1a
	.string	"grp"
	.byte	0x1
	.2byte	0x232
	.byte	0x2f
	.4byte	0x4bd
	.byte	0x1a
	.string	"p"
	.byte	0x1
	.2byte	0x233
	.byte	0x34
	.4byte	0x575
	.byte	0x1b
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x233
	.byte	0x3e
	.4byte	0x6b
	.byte	0x1a
	.string	"a"
	.byte	0x1
	.2byte	0x234
	.byte	0x34
	.4byte	0x575
	.byte	0x1b
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x234
	.byte	0x3e
	.4byte	0x6b
	.byte	0x1a
	.string	"b"
	.byte	0x1
	.2byte	0x235
	.byte	0x34
	.4byte	0x575
	.byte	0x1b
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x235
	.byte	0x3e
	.4byte	0x6b
	.byte	0x1a
	.string	"gx"
	.byte	0x1
	.2byte	0x236
	.byte	0x34
	.4byte	0x575
	.byte	0x1b
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x236
	.byte	0x3f
	.4byte	0x6b
	.byte	0x1a
	.string	"gy"
	.byte	0x1
	.2byte	0x237
	.byte	0x34
	.4byte	0x575
	.byte	0x1b
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x237
	.byte	0x3f
	.4byte	0x6b
	.byte	0x1a
	.string	"n"
	.byte	0x1
	.2byte	0x238
	.byte	0x34
	.4byte	0x575
	.byte	0x1b
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x238
	.byte	0x3e
	.4byte	0x6b
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x98
	.byte	0x1c
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x227
	.byte	0x14
	.byte	0x3
	.4byte	0x5a8
	.byte	0x1a
	.string	"X"
	.byte	0x1
	.2byte	0x227
	.byte	0x2f
	.4byte	0x5a8
	.byte	0x1d
	.string	"one"
	.byte	0x1
	.2byte	0x229
	.byte	0x1d
	.4byte	0x5ae
	.byte	0x5
	.byte	0x3
	.4byte	one.0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xd2
	.byte	0xd
	.4byte	0x8c
	.4byte	0x5be
	.byte	0xe
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x21d
	.byte	0x14
	.byte	0x3
	.4byte	0x5f0
	.byte	0x1a
	.string	"X"
	.byte	0x1
	.2byte	0x21d
	.byte	0x2f
	.4byte	0x5a8
	.byte	0x1a
	.string	"p"
	.byte	0x1
	.2byte	0x21d
	.byte	0x4a
	.4byte	0x575
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.2byte	0x21d
	.byte	0x54
	.4byte	0x6b
	.byte	0
	.byte	0x1e
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x188
	.byte	0x8
	.byte	0x1e
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x273
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x25c
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x11
	.byte	0x5
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
	.byte	0x12
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x31
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xb
	.byte	0
	.byte	0x55
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL4
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x79
	.byte	0
	.4byte	.LVL11-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_p
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gx
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gy
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_n
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_p
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x79
	.byte	0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x79
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_n
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x79
	.byte	0xcc,0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gx
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x79
	.byte	0x28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gy
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x79
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0x79
	.byte	0xc0,0
	.byte	0x9f
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	0
	.4byte	0
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	0
	.4byte	0
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	0
	.4byte	0
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF7:
	.string	"long long unsigned int"
.LASF27:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF40:
	.string	"plen"
.LASF13:
	.string	"mbedtls_mpi"
.LASF21:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF14:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF49:
	.string	"mbedtls_ecp_group_free"
.LASF4:
	.string	"long int"
.LASF16:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF33:
	.string	"PrimeN"
.LASF34:
	.string	"Table"
.LASF15:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF18:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF32:
	.string	"nbits"
.LASF47:
	.string	"ecp_mpi_load"
.LASF8:
	.string	"unsigned int"
.LASF36:
	.string	"secp256r1_b"
.LASF45:
	.string	"nlen"
.LASF5:
	.string	"long unsigned int"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF42:
	.string	"blen"
.LASF3:
	.string	"short unsigned int"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF44:
	.string	"gylen"
.LASF52:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/security/mbedtls_lts/port/hw_acc/ecp_curves_alt.c"
.LASF20:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF19:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF53:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/mbedtls_lts"
.LASF31:
	.string	"pbits"
.LASF50:
	.string	"mbedtls_ecp_group_init"
.LASF17:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF12:
	.string	"mbedtls_mpi_uint"
.LASF55:
	.string	"ecp_group_load"
.LASF28:
	.string	"mbedtls_ecp_group_id"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"secp256r1_n"
.LASF35:
	.string	"secp256r1_p"
.LASF2:
	.string	"short int"
.LASF30:
	.string	"mbedtls_ecp_group"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"char"
.LASF46:
	.string	"ecp_mpi_set1"
.LASF41:
	.string	"alen"
.LASF37:
	.string	"secp256r1_gx"
.LASF38:
	.string	"secp256r1_gy"
.LASF48:
	.string	"mbedtls_mpi_bitlen"
.LASF22:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF51:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF29:
	.string	"mbedtls_ecp_point"
.LASF23:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF43:
	.string	"gxlen"
.LASF54:
	.string	"mbedtls_ecp_group_load"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
