	.file	"hal_ir.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB6:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 92 1
	.cfi_startproc
.LVL0:
	.loc 1 93 5
	.loc 1 92 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 93 212
	srli	a4,a0,24
	.cfi_offset 8, -4
	.loc 1 92 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 93 12
	slli	a5,a0,24
	.loc 1 92 1
	.loc 1 93 12
	or	a5,a5,a4
	.loc 1 93 112
	srli	a4,a0,8
	.loc 1 94 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 93 112
	andi	a4,a4,0xff
	.loc 1 93 163
	srli	a0,a0,16
.LVL1:
	.loc 1 93 117
	slli	a4,a4,16
	.loc 1 93 163
	andi	a0,a0,0xff
	.loc 1 93 12
	or	a5,a5,a4
	.loc 1 93 168
	slli	a0,a0,8
	.loc 1 94 1
	or	a0,a5,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.rodata.hal_ir_init_from_dts.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ctrltype"
	.align	2
.LC1:
	.string	"rx"
	.align	2
.LC2:
	.string	"status"
	.align	2
.LC3:
	.string	"okay"
	.align	2
.LC4:
	.string	"pin"
	.align	2
.LC5:
	.string	"data_check"
	.section	.text.hal_ir_init_from_dts,"ax",@progbits
	.align	1
	.globl	hal_ir_init_from_dts
	.type	hal_ir_init_from_dts, @function
hal_ir_init_from_dts:
.LFB63:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_ir.c"
	.loc 2 23 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 2 24 5
	.loc 2 25 5
	.loc 2 23 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.loc 2 36 17
	lui	a2,%hi(.LC0)
	.loc 2 23 1
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 2 36 17
	addi	a3,s0,-36
	addi	a2,a2,%lo(.LC0)
	.loc 2 23 1
	mv	s2,a0
.LVL3:
	.loc 2 27 5 is_stmt 1
	.loc 2 28 5
	.loc 2 23 1 is_stmt 0
	mv	s1,a1
	.loc 2 28 9
	sw	zero,-36(s0)
	.loc 2 29 5 is_stmt 1
.LVL4:
	.loc 2 30 5
	.loc 2 31 5
	.loc 2 33 5
	.loc 2 34 5
	.loc 2 36 5
	.loc 2 36 17 is_stmt 0
	call	fdt_getprop
.LVL5:
	.loc 2 37 5 is_stmt 1
	li	s5,0
	.loc 2 37 8 is_stmt 0
	beq	a0,zero,.L4
	.loc 2 40 9 is_stmt 1
	.loc 2 40 31 is_stmt 0
	lw	a0,0(a0)
.LVL6:
	call	fdt32_to_cpu
.LVL7:
	mv	s5,a0
.LVL8:
.L4:
	.loc 2 41 9 is_stmt 1
	.loc 2 44 5
	.loc 2 44 15 is_stmt 0
	lui	a2,%hi(.LC1)
	addi	a2,a2,%lo(.LC1)
	mv	a1,s1
	mv	a0,s2
	call	fdt_subnode_offset
.LVL9:
	mv	s3,a0
.LVL10:
	.loc 2 45 5 is_stmt 1
	.loc 2 45 8 is_stmt 0
	bgt	a0,zero,.L5
.LVL11:
.L7:
	.loc 2 34 9
	li	s1,0
	.loc 2 33 13
	li	s4,0
.LVL12:
.L6:
	.loc 2 75 5 is_stmt 1
	mv	a2,s1
	mv	a1,s5
	mv	a0,s4
	call	bl_ir_init
.LVL13:
	.loc 2 77 5
	.loc 2 78 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL14:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL15:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL16:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL17:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL18:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L5:
	.cfi_restore_state
	.loc 2 48 9 is_stmt 1
	.loc 2 48 22 is_stmt 0
	lui	s1,%hi(.LC2)
.LVL20:
	mv	a1,a0
	addi	a2,s1,%lo(.LC2)
	mv	a0,s2
.LVL21:
	call	fdt_stringlist_count
.LVL22:
	.loc 2 49 9 is_stmt 1
	.loc 2 49 12 is_stmt 0
	li	a5,1
	bne	a0,a5,.L7
	.loc 2 52 13 is_stmt 1
	.loc 2 52 22 is_stmt 0
	addi	a4,s0,-36
	mv	a1,s3
	li	a3,0
	addi	a2,s1,%lo(.LC2)
	mv	a0,s2
.LVL23:
	call	fdt_stringlist_get
.LVL24:
	.loc 2 53 16
	lw	a4,-36(s0)
	li	a5,4
	.loc 2 52 22
	mv	a1,a0
.LVL25:
	.loc 2 53 13 is_stmt 1
	.loc 2 53 16 is_stmt 0
	bne	a4,a5,.L7
	.loc 2 53 35 discriminator 1
	lui	a0,%hi(.LC3)
.LVL26:
	li	a2,4
	addi	a0,a0,%lo(.LC3)
	call	memcmp
.LVL27:
	mv	s1,a0
	.loc 2 53 31 discriminator 1
	bne	a0,zero,.L7
	.loc 2 57 17 is_stmt 1
	.loc 2 57 29 is_stmt 0
	lui	a2,%hi(.LC4)
	addi	a3,s0,-36
	addi	a2,a2,%lo(.LC4)
	mv	a1,s3
	mv	a0,s2
	call	fdt_getprop
.LVL28:
	.loc 2 58 17 is_stmt 1
	.loc 2 58 20 is_stmt 0
	beq	a0,zero,.L7
	.loc 2 61 21 is_stmt 1
	.loc 2 61 38 is_stmt 0
	lw	a0,0(a0)
.LVL29:
	call	fdt32_to_cpu
.LVL30:
	.loc 2 63 33
	lui	a2,%hi(.LC5)
	.loc 2 61 25
	andi	s4,a0,0xff
.LVL31:
	.loc 2 62 21 is_stmt 1
	.loc 2 63 21
	.loc 2 63 33 is_stmt 0
	addi	a3,s0,-36
	addi	a2,a2,%lo(.LC5)
	mv	a1,s3
	mv	a0,s2
	call	fdt_getprop
.LVL32:
	.loc 2 64 21 is_stmt 1
	.loc 2 64 24 is_stmt 0
	beq	a0,zero,.L6
	.loc 2 67 25 is_stmt 1
	.loc 2 67 49 is_stmt 0
	lw	a0,0(a0)
.LVL33:
	call	fdt32_to_cpu
.LVL34:
	mv	s1,a0
.LVL35:
	j	.L6
	.cfi_endproc
.LFE63:
	.size	hal_ir_init_from_dts, .-hal_ir_init_from_dts
	.section	.text.hal_ir_config,"ax",@progbits
	.align	1
	.globl	hal_ir_config
	.type	hal_ir_config, @function
hal_ir_config:
.LFB64:
	.loc 2 81 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 2 82 5
	.loc 2 81 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 83 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 82 12
	tail	bl_ir_data_check_config
.LVL37:
	.cfi_endproc
.LFE64:
	.size	hal_ir_config, .-hal_ir_config
	.section	.text.hal_irled_init,"ax",@progbits
	.align	1
	.globl	hal_irled_init
	.type	hal_irled_init, @function
hal_irled_init:
.LFB65:
	.loc 2 86 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 2 87 5
	.loc 2 89 5
	.loc 2 86 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s2,a0
	.loc 2 89 14
	li	a0,64
.LVL39:
	call	pvPortMalloc
.LVL40:
	.loc 2 90 5 is_stmt 1
	.loc 2 90 8 is_stmt 0
	beq	a0,zero,.L21
	.loc 2 96 29
	li	a5,11
	sb	a5,55(a0)
	.loc 2 97 30
	li	a5,12
	sb	a5,57(a0)
	.loc 2 98 26
	li	a5,1
	sb	a5,46(a0)
	.loc 2 99 26
	li	a5,4001792
	addi	a5,a5,-1792
	sw	a5,48(a0)
	.loc 2 100 33
	li	a5,513
	sh	a5,52(a0)
	.loc 2 102 23
	sw	s2,16(a0)
	mv	s1,a0
	.loc 2 96 5 is_stmt 1
	.loc 2 97 5
	.loc 2 98 5
	.loc 2 99 5
	.loc 2 100 5
	.loc 2 101 5
	.loc 2 102 5
	.loc 2 104 5
	call	bl_spi_hw_init
.LVL41:
	.loc 2 105 5
	mv	a0,s1
	call	bl_spi_dma_init
.LVL42:
	.loc 2 107 5
	.loc 2 107 12 is_stmt 0
	li	a0,0
.LVL43:
.L19:
	.loc 2 108 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL44:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L21:
	.cfi_restore_state
	.loc 2 93 16
	li	a0,-1
.LVL46:
	j	.L19
	.cfi_endproc
.LFE65:
	.size	hal_irled_init, .-hal_irled_init
	.section	.text.hal_irled_send_data,"ax",@progbits
	.align	1
	.globl	hal_irled_send_data
	.type	hal_irled_send_data, @function
hal_irled_send_data:
.LFB66:
	.loc 2 111 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 2 112 5
	.loc 2 113 5
	.loc 2 115 5
	.loc 2 116 9
	.loc 2 119 5
	.loc 2 111 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 111 1
	sw	a0,-24(s0)
	.loc 2 119 14
	li	a0,2
.LVL48:
	.loc 2 111 1
	sw	a1,-20(s0)
	.loc 2 119 14
	call	bl_dma_find_ctx_by_channel
.LVL49:
	.loc 2 120 5 is_stmt 1
	.loc 2 120 8 is_stmt 0
	beq	a0,zero,.L24
	.loc 2 126 5 is_stmt 1
	.loc 2 126 20 is_stmt 0
	lw	a1,-20(s0)
	.loc 2 127 11
	lw	a2,-24(s0)
	.loc 2 126 20
	sw	a1,36(a0)
	.loc 2 127 5 is_stmt 1
	.loc 2 130 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL50:
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 2 127 11
	tail	bl_spi_dma_trans
.LVL51:
.L24:
	.cfi_restore_state
	.loc 2 130 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	li	a0,-1
.LVL52:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE66:
	.size	hal_irled_send_data, .-hal_irled_send_data
	.text
.Letext0:
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_ir.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_dma.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x646
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF70
	.byte	0xc
	.4byte	.LASF71
	.4byte	.LASF72
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x6
	.4byte	0x85
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.4byte	0xa3
	.byte	0x7
	.byte	0x4
	.4byte	0xba
	.byte	0x8
	.byte	0x3
	.4byte	.LASF14
	.byte	0x1
	.byte	0x46
	.byte	0x12
	.4byte	0xa3
	.byte	0x7
	.byte	0x4
	.4byte	0x97
	.byte	0x9
	.4byte	.LASF28
	.byte	0x14
	.byte	0x5
	.byte	0xd
	.byte	0x10
	.4byte	0x177
	.byte	0xa
	.4byte	.LASF15
	.byte	0x5
	.byte	0xe
	.byte	0xd
	.4byte	0x97
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0xf
	.byte	0xd
	.4byte	0x97
	.byte	0x1
	.byte	0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x10
	.byte	0xd
	.4byte	0x97
	.byte	0x2
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0x11
	.byte	0xe
	.4byte	0xa3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x12
	.byte	0xd
	.4byte	0x97
	.byte	0x8
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x13
	.byte	0xd
	.4byte	0x97
	.byte	0x9
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x14
	.byte	0xd
	.4byte	0x97
	.byte	0xa
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x15
	.byte	0xd
	.4byte	0x97
	.byte	0xb
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x16
	.byte	0xd
	.4byte	0x97
	.byte	0xc
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x17
	.byte	0xd
	.4byte	0x97
	.byte	0xd
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0x18
	.byte	0xd
	.4byte	0x97
	.byte	0xe
	.byte	0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x19
	.byte	0xb
	.4byte	0x83
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x1a
	.byte	0x3
	.4byte	0xcd
	.byte	0x9
	.4byte	.LASF29
	.byte	0x40
	.byte	0x5
	.byte	0x1c
	.byte	0x10
	.4byte	0x22d
	.byte	0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1d
	.byte	0xe
	.4byte	0xc7
	.byte	0
	.byte	0xa
	.4byte	.LASF31
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0xc7
	.byte	0x4
	.byte	0xa
	.4byte	.LASF32
	.byte	0x5
	.byte	0x1f
	.byte	0xe
	.4byte	0xa3
	.byte	0x8
	.byte	0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x20
	.byte	0xe
	.4byte	0xa3
	.byte	0xc
	.byte	0xa
	.4byte	.LASF34
	.byte	0x5
	.byte	0x21
	.byte	0x9
	.4byte	0x75
	.byte	0x10
	.byte	0xa
	.4byte	.LASF35
	.byte	0x5
	.byte	0x22
	.byte	0x9
	.4byte	0x75
	.byte	0x14
	.byte	0xa
	.4byte	.LASF36
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.4byte	0x75
	.byte	0x18
	.byte	0xa
	.4byte	.LASF37
	.byte	0x5
	.byte	0x24
	.byte	0xe
	.4byte	0xa3
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF38
	.byte	0x5
	.byte	0x25
	.byte	0xe
	.4byte	0xa3
	.byte	0x20
	.byte	0xa
	.4byte	.LASF39
	.byte	0x5
	.byte	0x26
	.byte	0xf
	.4byte	0x22d
	.byte	0x24
	.byte	0xa
	.4byte	.LASF40
	.byte	0x5
	.byte	0x27
	.byte	0xb
	.4byte	0x83
	.byte	0x28
	.byte	0xa
	.4byte	.LASF41
	.byte	0x5
	.byte	0x28
	.byte	0x11
	.4byte	0x177
	.byte	0x2c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa3
	.byte	0x3
	.4byte	.LASF42
	.byte	0x5
	.byte	0x29
	.byte	0x3
	.4byte	0x183
	.byte	0xb
	.4byte	.LASF44
	.byte	0x2
	.byte	0x6e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c1
	.byte	0xc
	.4byte	.LASF43
	.byte	0x2
	.byte	0x6e
	.byte	0x1d
	.4byte	0x75
	.4byte	.LLST14
	.byte	0xd
	.string	"buf"
	.byte	0x2
	.byte	0x6e
	.byte	0x31
	.4byte	0x22d
	.4byte	.LLST15
	.byte	0xe
	.string	"ret"
	.byte	0x2
	.byte	0x70
	.byte	0x9
	.4byte	0x75
	.byte	0xf
	.4byte	.LASF46
	.byte	0x2
	.byte	0x71
	.byte	0x18
	.4byte	0x2c1
	.4byte	.LLST16
	.byte	0x10
	.4byte	.LVL49
	.4byte	0x5b5
	.4byte	0x2a8
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x12
	.4byte	.LVL51
	.4byte	0x5c1
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x233
	.byte	0xb
	.4byte	.LASF45
	.byte	0x2
	.byte	0x55
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x1
	.byte	0x9c
	.4byte	0x33a
	.byte	0xc
	.4byte	.LASF34
	.byte	0x2
	.byte	0x55
	.byte	0x18
	.4byte	0x75
	.4byte	.LLST12
	.byte	0xf
	.4byte	.LASF46
	.byte	0x2
	.byte	0x57
	.byte	0x18
	.4byte	0x2c1
	.4byte	.LLST13
	.byte	0x10
	.4byte	.LVL40
	.4byte	0x5cd
	.4byte	0x315
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LVL41
	.4byte	0x5d9
	.4byte	0x329
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL42
	.4byte	0x5e5
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF47
	.byte	0x2
	.byte	0x50
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x1
	.byte	0x9c
	.4byte	0x376
	.byte	0xc
	.4byte	.LASF48
	.byte	0x2
	.byte	0x50
	.byte	0x1c
	.4byte	0xa3
	.4byte	.LLST11
	.byte	0x12
	.4byte	.LVL37
	.4byte	0x5f1
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x2
	.byte	0x16
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x1
	.byte	0x9c
	.4byte	0x586
	.byte	0xc
	.4byte	.LASF50
	.byte	0x2
	.byte	0x16
	.byte	0x23
	.4byte	0xa3
	.4byte	.LLST1
	.byte	0xc
	.4byte	.LASF51
	.byte	0x2
	.byte	0x16
	.byte	0x37
	.4byte	0xa3
	.4byte	.LLST2
	.byte	0xf
	.4byte	.LASF52
	.byte	0x2
	.byte	0x18
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x14
	.string	"fdt"
	.byte	0x2
	.byte	0x19
	.byte	0x11
	.4byte	0xb4
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF53
	.byte	0x2
	.byte	0x1b
	.byte	0x15
	.4byte	0x586
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LASF54
	.byte	0x2
	.byte	0x1c
	.byte	0x9
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF55
	.byte	0x2
	.byte	0x1d
	.byte	0x11
	.4byte	0x91
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LASF56
	.byte	0x2
	.byte	0x1e
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST7
	.byte	0xf
	.4byte	.LASF57
	.byte	0x2
	.byte	0x1f
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST8
	.byte	0x14
	.string	"pin"
	.byte	0x2
	.byte	0x21
	.byte	0xd
	.4byte	0x97
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF48
	.byte	0x2
	.byte	0x22
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST10
	.byte	0x10
	.4byte	.LVL5
	.4byte	0x5fd
	.4byte	0x468
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x16
	.4byte	.LVL7
	.4byte	0x58c
	.byte	0x10
	.4byte	.LVL9
	.4byte	0x60a
	.4byte	0x494
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x10
	.4byte	.LVL13
	.4byte	0x617
	.4byte	0x4b4
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL22
	.4byte	0x623
	.4byte	0x4d7
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x10
	.4byte	.LVL24
	.4byte	0x630
	.4byte	0x505
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x10
	.4byte	.LVL27
	.4byte	0x63d
	.4byte	0x521
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x10
	.4byte	.LVL28
	.4byte	0x5fd
	.4byte	0x54a
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x16
	.4byte	.LVL30
	.4byte	0x58c
	.byte	0x10
	.4byte	.LVL32
	.4byte	0x5fd
	.4byte	0x57c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x16
	.4byte	.LVL34
	.4byte	0x58c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0x17
	.4byte	.LASF73
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0xa3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b5
	.byte	0xd
	.string	"x"
	.byte	0x1
	.byte	0x5b
	.byte	0x2d
	.4byte	0xbb
	.4byte	.LLST0
	.byte	0
	.byte	0x18
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.byte	0x31
	.byte	0x7
	.byte	0x18
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x5
	.byte	0x34
	.byte	0x5
	.byte	0x18
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x7
	.byte	0x91
	.byte	0x7
	.byte	0x18
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x5
	.byte	0x33
	.byte	0x5
	.byte	0x18
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x5
	.byte	0x32
	.byte	0x6
	.byte	0x18
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x5
	.byte	0x2f
	.byte	0x5
	.byte	0x19
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x2f4
	.byte	0xd
	.byte	0x19
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x1c1
	.byte	0x5
	.byte	0x18
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x5
	.byte	0x2e
	.byte	0x5
	.byte	0x19
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x423
	.byte	0x5
	.byte	0x19
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x453
	.byte	0xd
	.byte	0x18
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x9
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x19
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
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x78
	.byte	0x68
	.4byte	.LVL50
	.4byte	.LFE66
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49-1
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL50
	.4byte	.LFE66
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE65
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37-1
	.4byte	.LFE64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LFE63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL19
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL19
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE63
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"result"
.LASF64:
	.string	"fdt_getprop"
.LASF48:
	.string	"data_check"
.LASF40:
	.string	"ptxlli"
.LASF52:
	.string	"offset1"
.LASF57:
	.string	"ctrltype"
.LASF41:
	.string	"dev_spi"
.LASF2:
	.string	"short int"
.LASF33:
	.string	"reset_size"
.LASF26:
	.string	"spi_dma_ir_event_group"
.LASF6:
	.string	"__uint32_t"
.LASF17:
	.string	"mode"
.LASF68:
	.string	"fdt_stringlist_get"
.LASF72:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF25:
	.string	"pin_miso"
.LASF62:
	.string	"bl_spi_dma_init"
.LASF24:
	.string	"pin_mosi"
.LASF12:
	.string	"uint8_t"
.LASF56:
	.string	"countindex"
.LASF32:
	.string	"left_size"
.LASF0:
	.string	"signed char"
.LASF71:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_ir.c"
.LASF47:
	.string	"hal_ir_config"
.LASF18:
	.string	"freq"
.LASF8:
	.string	"long long int"
.LASF37:
	.string	"data_idx"
.LASF4:
	.string	"long int"
.LASF5:
	.string	"__uint8_t"
.LASF67:
	.string	"fdt_stringlist_count"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"data_num"
.LASF61:
	.string	"bl_spi_hw_init"
.LASF54:
	.string	"lentmp"
.LASF16:
	.string	"ssp_id"
.LASF50:
	.string	"fdt_input"
.LASF63:
	.string	"bl_ir_data_check_config"
.LASF69:
	.string	"memcmp"
.LASF34:
	.string	"chip_type"
.LASF21:
	.string	"rx_dma_ch"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF22:
	.string	"pin_clk"
.LASF20:
	.string	"tx_dma_ch"
.LASF14:
	.string	"fdt32_t"
.LASF30:
	.string	"pp_buf0"
.LASF31:
	.string	"pp_buf1"
.LASF51:
	.string	"dtb_offset"
.LASF49:
	.string	"hal_ir_init_from_dts"
.LASF11:
	.string	"char"
.LASF42:
	.string	"private_ir_data_t"
.LASF53:
	.string	"addr_prop"
.LASF3:
	.string	"short unsigned int"
.LASF36:
	.string	"buf_flag"
.LASF29:
	.string	"_private_ir_data"
.LASF7:
	.string	"long unsigned int"
.LASF23:
	.string	"pin_cs"
.LASF66:
	.string	"bl_ir_init"
.LASF45:
	.string	"hal_irled_init"
.LASF70:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF15:
	.string	"used"
.LASF44:
	.string	"hal_irled_send_data"
.LASF38:
	.string	"chip_coe"
.LASF58:
	.string	"bl_dma_find_ctx_by_channel"
.LASF39:
	.string	"p_data"
.LASF73:
	.string	"fdt32_to_cpu"
.LASF46:
	.string	"pstctx"
.LASF19:
	.string	"polar_phase"
.LASF28:
	.string	"_spi_ir_hw"
.LASF35:
	.string	"end_flag"
.LASF65:
	.string	"fdt_subnode_offset"
.LASF27:
	.string	"spi_ir_hw_t"
.LASF60:
	.string	"pvPortMalloc"
.LASF59:
	.string	"bl_spi_dma_trans"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
