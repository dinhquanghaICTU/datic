	.file	"hal_boot2.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata._dump_partition.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[32m======= PtTable_Config @%p=======\r\n\033[00m"
	.align	2
.LC1:
	.string	"magicCode 0x%08X;"
	.align	2
.LC2:
	.string	" version 0x%04X;"
	.align	2
.LC3:
	.string	" entryCnt %u;"
	.align	2
.LC4:
	.string	" age %lu;"
	.align	2
.LC5:
	.string	"\033[32m crc32 0x%08X\r\n\033[00m"
	.align	2
.LC6:
	.string	"\033[32midx  type device activeIndex     name   Address[0]  Address[1]  Length[0]   Length[1]   age\033[00m\r\n"
	.align	2
.LC7:
	.string	"[%02d] "
	.align	2
.LC8:
	.string	" %02u"
	.align	2
.LC9:
	.string	"     %u"
	.align	2
.LC10:
	.string	"         %u"
	.align	2
.LC11:
	.string	"      %8s"
	.align	2
.LC12:
	.string	"  %p"
	.align	2
.LC13:
	.string	"  %lu\r\n"
	.section	.text._dump_partition,"ax",@progbits
	.align	1
	.type	_dump_partition, @function
_dump_partition:
.LFB10:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_boot2.c"
	.loc 1 47 1
	.cfi_startproc
	.loc 1 48 5
	.loc 1 49 5
.LVL0:
	.loc 1 51 5
	.loc 1 52 5
	.loc 1 54 5
	.loc 1 47 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s2,48(sp)
	.cfi_offset 18, -16
	.loc 1 54 5
	lui	s2,%hi(.LANCHOR0)
	.loc 1 47 1
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 54 5
	addi	s1,s2,%lo(.LANCHOR0)
	.loc 1 47 1
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	.loc 1 54 5
	lui	a0,%hi(.LC0)
	addi	a1,s1,4
	.loc 1 47 1
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 54 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL1:
	.loc 1 55 5 is_stmt 1
	lw	a1,4(s1)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL2:
	.loc 1 56 5
	lhu	a1,8(s1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL3:
	.loc 1 57 5
	lhu	a1,10(s1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL4:
	.loc 1 58 5
	lw	a1,12(s1)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL5:
	.loc 1 59 5
	lw	a1,16(s1)
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL6:
	.loc 1 61 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	addi	s3,s2,%lo(.LANCHOR0)
	call	printf
.LVL7:
	.loc 1 62 5
	.loc 1 62 12 is_stmt 0
	li	s4,0
	addi	s2,s2,%lo(.LANCHOR0)
	.loc 1 64 9
	lui	s11,%hi(.LC7)
	.loc 1 65 9
	lui	s6,%hi(.LC8)
	.loc 1 66 9
	lui	s7,%hi(.LC9)
	.loc 1 67 9
	lui	s8,%hi(.LC10)
	.loc 1 68 9
	lui	s9,%hi(.LC11)
	.loc 1 69 9
	lui	s5,%hi(.LC12)
	.loc 1 73 9
	lui	s10,%hi(.LC13)
.LVL8:
.L2:
	.loc 1 62 17 is_stmt 1 discriminator 1
	.loc 1 62 34 is_stmt 0 discriminator 1
	lhu	a5,10(s2)
	.loc 1 62 5 discriminator 1
	addi	s1,s3,36
	bgt	a5,s4,.L3
	.loc 1 75 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
.LVL9:
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L3:
	.cfi_restore_state
	.loc 1 64 9 is_stmt 1 discriminator 3
	mv	a1,s4
	addi	a0,s11,%lo(.LC7)
	call	printf
.LVL11:
	.loc 1 65 9 discriminator 3
	lbu	a1,-16(s1)
	addi	a0,s6,%lo(.LC8)
	.loc 1 62 46 is_stmt 0 discriminator 3
	addi	s4,s4,1
.LVL12:
	.loc 1 65 9 discriminator 3
	call	printf
.LVL13:
	.loc 1 66 9 is_stmt 1 discriminator 3
	lbu	a1,-15(s1)
	addi	a0,s7,%lo(.LC9)
	call	printf
.LVL14:
	.loc 1 67 9 discriminator 3
	lbu	a1,-14(s1)
	addi	a0,s8,%lo(.LC10)
	call	printf
.LVL15:
	.loc 1 68 9 discriminator 3
	addi	a1,s3,23
	addi	a0,s9,%lo(.LC11)
	call	printf
.LVL16:
	.loc 1 69 9 discriminator 3
	lw	a1,32(s3)
	addi	a0,s5,%lo(.LC12)
	call	printf
.LVL17:
	.loc 1 70 9 discriminator 3
	lw	a1,36(s3)
	addi	a0,s5,%lo(.LC12)
	.loc 1 62 46 is_stmt 0 discriminator 3
	mv	s3,s1
	.loc 1 70 9 discriminator 3
	call	printf
.LVL18:
	.loc 1 71 9 is_stmt 1 discriminator 3
	lw	a1,4(s1)
	addi	a0,s5,%lo(.LC12)
	call	printf
.LVL19:
	.loc 1 72 9 discriminator 3
	lw	a1,8(s1)
	addi	a0,s5,%lo(.LC12)
	call	printf
.LVL20:
	.loc 1 73 9 discriminator 3
	lw	a1,16(s1)
	addi	a0,s10,%lo(.LC13)
	call	printf
.LVL21:
	.loc 1 62 45 discriminator 3
	j	.L2
	.cfi_endproc
.LFE10:
	.size	_dump_partition, .-_dump_partition
	.section	.text.hal_boot2_set_ptable_opt,"ax",@progbits
	.align	1
	.globl	hal_boot2_set_ptable_opt
	.type	hal_boot2_set_ptable_opt, @function
hal_boot2_set_ptable_opt:
.LFB8:
	.loc 1 30 1
	.cfi_startproc
.LVL22:
	.loc 1 31 5
	.loc 1 30 1 is_stmt 0
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
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 31 5
	tail	PtTable_Set_Flash_Operation
.LVL23:
	.cfi_endproc
.LFE8:
	.size	hal_boot2_set_ptable_opt, .-hal_boot2_set_ptable_opt
	.section	.text.hal_boot2_update_ptable,"ax",@progbits
	.align	1
	.globl	hal_boot2_update_ptable
	.type	hal_boot2_update_ptable, @function
hal_boot2_update_ptable:
.LFB9:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 36 5
	.loc 1 38 5
	.loc 1 40 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 40 28
	lbu	a5,2(a0)
	.loc 1 42 11
	lui	a2,%hi(.LANCHOR0)
	addi	a2,a2,%lo(.LANCHOR0)
	.loc 1 40 28
	seqz	a5,a5
	sb	a5,2(a0)
	.loc 1 41 5 is_stmt 1
	.loc 1 41 19 is_stmt 0
	lw	a5,32(a0)
	.loc 1 42 11
	lbu	a1,0(a2)
	.loc 1 35 1
	mv	a3,a0
	.loc 1 41 19
	addi	a5,a5,1
	sw	a5,32(a0)
	.loc 1 42 5 is_stmt 1
	.loc 1 44 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 42 11
	addi	a2,a2,4
	seqz	a1,a1
	.loc 1 44 1
	.loc 1 42 11
	li	a0,0
.LVL25:
	.loc 1 44 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 42 11
	tail	PtTable_Update_Entry
.LVL26:
	.cfi_endproc
.LFE9:
	.size	hal_boot2_update_ptable, .-hal_boot2_update_ptable
	.section	.text.hal_boot2_get_flash_addr,"ax",@progbits
	.align	1
	.globl	hal_boot2_get_flash_addr
	.type	hal_boot2_get_flash_addr, @function
hal_boot2_get_flash_addr:
.LFB11:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
	.loc 1 79 5
	.loc 1 81 5
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 82 110
	lui	a5,%hi(.LANCHOR0+10)
	lhu	a5,%lo(.LANCHOR0+10)(a5)
	.loc 1 82 73
	li	a0,36
	.loc 1 83 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 82 73
	mul	a5,a5,a0
	.loc 1 83 1
	lui	a0,%hi(__boot2_flashCfg_src)
	addi	a0,a0,%lo(__boot2_flashCfg_src)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	add	a0,a0,a5
	jr	ra
	.cfi_endproc
.LFE11:
	.size	hal_boot2_get_flash_addr, .-hal_boot2_get_flash_addr
	.section	.rodata.hal_boot2_partition_bus_addr.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"FW"
	.section	.text.hal_boot2_partition_bus_addr,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_bus_addr
	.type	hal_boot2_partition_bus_addr, @function
hal_boot2_partition_bus_addr:
.LFB12:
	.loc 1 86 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 87 5
	.loc 1 88 5
	.loc 1 90 5
	.loc 1 86 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s8,8(sp)
	sw	s10,0(sp)
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s9,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 24, -40
	.cfi_offset 26, -48
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 90 60
	lui	s1,%hi(.LANCHOR0)
	.loc 1 86 1
	.loc 1 86 1
	mv	s10,a5
	.loc 1 90 60
	addi	a5,s1,%lo(.LANCHOR0)
.LVL28:
	.loc 1 86 1
	mv	s8,a4
	.loc 1 90 8
	lw	a4,4(a5)
.LVL29:
	li	a5,1414545408
	addi	a5,a5,1602
	bne	a4,a5,.L25
	addi	s1,s1,%lo(.LANCHOR0)
	addi	s7,s1,23
	mv	s6,a0
	mv	s4,a1
	mv	s3,a2
	mv	s9,a3
	mv	s5,s7
.LBB4:
.LBB5:
	.loc 1 96 12
	li	s2,0
.LVL30:
.L13:
	.loc 1 96 17 is_stmt 1
	.loc 1 96 56 is_stmt 0
	lhu	a5,10(s1)
	.loc 1 96 5
	bge	s2,a5,.L17
	.loc 1 98 9 is_stmt 1
	.loc 1 98 18 is_stmt 0
	mv	a0,s5
	mv	a1,s6
	call	strcmp
.LVL31:
	.loc 1 98 12
	addi	s5,s5,36
	bne	a0,zero,.L14
.L17:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 44 is_stmt 0
	lhu	a5,10(s1)
	.loc 1 105 16
	li	a0,-2
	.loc 1 103 8
	bne	s2,a5,.L39
.LVL32:
.L11:
.LBE5:
.LBE4:
	.loc 1 142 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
.LVL33:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L14:
	.cfi_restore_state
.LBB7:
.LBB6:
	.loc 1 96 67 is_stmt 1
	.loc 1 96 68 is_stmt 0
	addi	s2,s2,1
.LVL35:
	j	.L13
.L39:
	.loc 1 107 5 is_stmt 1
	.loc 1 107 13 is_stmt 0
	li	a5,36
	mul	a2,s2,a5
	.loc 1 111 61
	addi	s2,s2,1
.LVL36:
	mul	s2,s2,a5
.LVL37:
	.loc 1 107 13
	add	a2,s1,a2
	.loc 1 109 55
	lbu	a4,22(a2)
	.loc 1 107 13
	lw	s6,32(a2)
.LVL38:
	.loc 1 108 5 is_stmt 1
	.loc 1 108 13 is_stmt 0
	lw	s5,36(a2)
.LVL39:
	.loc 1 109 5 is_stmt 1
	.loc 1 109 55 is_stmt 0
	sw	a4,0(s10)
	.loc 1 110 5 is_stmt 1
	.loc 1 110 61 is_stmt 0
	lw	a4,40(a2)
	.loc 1 110 12
	sw	a4,0(s9)
	.loc 1 111 5 is_stmt 1
	.loc 1 111 61 is_stmt 0
	add	s2,s1,s2
	lw	a5,8(s2)
	.loc 1 114 12
	li	s2,0
	.loc 1 111 12
	sw	a5,0(s8)
	.loc 1 114 5 is_stmt 1
.LVL40:
	.loc 1 116 18 is_stmt 0
	lui	s8,%hi(.LC14)
.LVL41:
.L18:
	.loc 1 114 17 is_stmt 1
	.loc 1 114 56 is_stmt 0
	lhu	a5,10(s1)
	.loc 1 114 5
	bge	s2,a5,.L22
	.loc 1 116 9 is_stmt 1
	.loc 1 116 18 is_stmt 0
	mv	a0,s7
	addi	a1,s8,%lo(.LC14)
	call	strcmp
.LVL42:
	.loc 1 116 12
	addi	s7,s7,36
	bne	a0,zero,.L19
.L22:
	.loc 1 121 5 is_stmt 1
	.loc 1 121 44 is_stmt 0
	lhu	a5,10(s1)
	.loc 1 123 16
	li	a0,-140
	.loc 1 121 8
	beq	s2,a5,.L11
	.loc 1 126 5 is_stmt 1
	.loc 1 126 8 is_stmt 0
	beq	s6,zero,.L23
	.loc 1 126 80
	li	a5,36
	mul	a5,s2,a5
	.loc 1 131 16
	li	a0,-22
	.loc 1 126 80
	add	a5,s1,a5
	.loc 1 126 86
	lw	a4,32(a5)
	bltu	s6,a4,.L11
	lw	a5,36(a5)
	bltu	s6,a5,.L11
.L23:
	.loc 1 127 86
	beq	s5,zero,.L24
	.loc 1 128 80
	li	a5,36
	mul	a5,s2,a5
	.loc 1 131 16
	li	a0,-22
	.loc 1 128 80
	add	a5,s1,a5
	.loc 1 128 18
	lw	a4,32(a5)
	bltu	s5,a4,.L11
	.loc 1 129 18
	lw	a5,36(a5)
	bltu	s5,a5,.L11
.L24:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 55 is_stmt 0
	li	a4,36
	mul	a4,s2,a4
	.loc 1 133 8
	li	a3,1
	.loc 1 136 16
	li	a0,-14
	.loc 1 133 55
	add	a4,s1,a4
	lbu	a5,22(a4)
	.loc 1 133 8
	bgtu	a5,a3,.L11
	.loc 1 138 5 is_stmt 1
	.loc 1 138 72 is_stmt 0
	li	a2,9
	mul	s2,s2,a2
.LVL43:
	.loc 1 138 138
	li	a3,587198464
	add	s6,s6,a3
.LVL44:
	.loc 1 139 138
	add	s5,s5,a3
.LVL45:
	.loc 1 141 12
	li	a0,0
	.loc 1 138 72
	add	a5,s2,a5
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,s1,a5
	.loc 1 138 138
	lw	a5,16(a5)
	sub	s6,s6,a5
.LVL46:
	.loc 1 138 12
	sw	s6,0(s4)
	.loc 1 139 5 is_stmt 1
	.loc 1 139 113 is_stmt 0
	lbu	a5,22(a4)
	.loc 1 139 72
	add	s2,s2,a5
	addi	s2,s2,4
	slli	s2,s2,2
	add	s2,s1,s2
	.loc 1 139 138
	lw	a5,16(s2)
	sub	s5,s5,a5
.LVL47:
	.loc 1 139 12
	sw	s5,0(s3)
	.loc 1 141 5 is_stmt 1
	.loc 1 141 12 is_stmt 0
	j	.L11
.LVL48:
.L19:
	.loc 1 114 67 is_stmt 1
	.loc 1 114 68 is_stmt 0
	addi	s2,s2,1
.LVL49:
	j	.L18
.LVL50:
.L25:
.LBE6:
.LBE7:
	.loc 1 92 16
	li	a0,-5
.LVL51:
	j	.L11
	.cfi_endproc
.LFE12:
	.size	hal_boot2_partition_bus_addr, .-hal_boot2_partition_bus_addr
	.section	.text.hal_boot2_partition_bus_addr_active,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_bus_addr_active
	.type	hal_boot2_partition_bus_addr_active, @function
hal_boot2_partition_bus_addr_active:
.LFB13:
	.loc 1 145 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 146 5
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 150 5
	.loc 1 145 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	ra,44(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	mv	s2,a1
	mv	s1,a2
	.loc 1 150 16
	addi	a5,s0,-20
	addi	a4,s0,-24
	addi	a3,s0,-28
	addi	a2,s0,-32
.LVL53:
	addi	a1,s0,-36
.LVL54:
	call	hal_boot2_partition_bus_addr
.LVL55:
	.loc 1 150 8
	bne	a0,zero,.L42
	.loc 1 154 5 is_stmt 1
	.loc 1 154 20 is_stmt 0
	lw	a5,-20(s0)
	.loc 1 154 28
	beq	a5,zero,.L44
	.loc 1 154 28 discriminator 1
	lw	a4,-32(s0)
.L45:
	.loc 1 154 11 discriminator 4
	sw	a4,0(s2)
	.loc 1 155 5 is_stmt 1 discriminator 4
	.loc 1 155 28 is_stmt 0 discriminator 4
	beq	a5,zero,.L46
	.loc 1 155 28 discriminator 1
	lw	a5,-24(s0)
.L47:
	.loc 1 155 11 discriminator 4
	sw	a5,0(s1)
	.loc 1 157 5 is_stmt 1 discriminator 4
.L42:
	.loc 1 158 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL56:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL57:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL58:
.L44:
	.cfi_restore_state
	.loc 1 154 28 discriminator 2
	lw	a4,-36(s0)
	j	.L45
.L46:
	.loc 1 155 28 discriminator 2
	lw	a5,-28(s0)
	j	.L47
	.cfi_endproc
.LFE13:
	.size	hal_boot2_partition_bus_addr_active, .-hal_boot2_partition_bus_addr_active
	.section	.text.hal_boot2_partition_bus_addr_inactive,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_bus_addr_inactive
	.type	hal_boot2_partition_bus_addr_inactive, @function
hal_boot2_partition_bus_addr_inactive:
.LFB14:
	.loc 1 161 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 162 5
	.loc 1 163 5
	.loc 1 164 5
	.loc 1 166 5
	.loc 1 161 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	ra,44(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	mv	s2,a1
	mv	s1,a2
	.loc 1 166 16
	addi	a5,s0,-20
	addi	a4,s0,-24
	addi	a3,s0,-28
	addi	a2,s0,-32
.LVL60:
	addi	a1,s0,-36
.LVL61:
	call	hal_boot2_partition_bus_addr
.LVL62:
	.loc 1 166 8
	bne	a0,zero,.L49
	.loc 1 170 5 is_stmt 1
	.loc 1 170 20 is_stmt 0
	lw	a5,-20(s0)
	.loc 1 170 28
	beq	a5,zero,.L51
	.loc 1 170 28 discriminator 1
	lw	a4,-36(s0)
.L52:
	.loc 1 170 11 discriminator 4
	sw	a4,0(s2)
	.loc 1 171 5 is_stmt 1 discriminator 4
	.loc 1 171 28 is_stmt 0 discriminator 4
	beq	a5,zero,.L53
	.loc 1 171 28 discriminator 1
	lw	a5,-28(s0)
.L54:
	.loc 1 171 11 discriminator 4
	sw	a5,0(s1)
	.loc 1 173 5 is_stmt 1 discriminator 4
.L49:
	.loc 1 174 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL63:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL64:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL65:
.L51:
	.cfi_restore_state
	.loc 1 170 28 discriminator 2
	lw	a4,-32(s0)
	j	.L52
.L53:
	.loc 1 171 28 discriminator 2
	lw	a5,-24(s0)
	j	.L54
	.cfi_endproc
.LFE14:
	.size	hal_boot2_partition_bus_addr_inactive, .-hal_boot2_partition_bus_addr_inactive
	.section	.text.hal_boot2_partition_addr,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_addr
	.type	hal_boot2_partition_addr, @function
hal_boot2_partition_addr:
.LFB15:
	.loc 1 177 1 is_stmt 1
	.cfi_startproc
.LVL66:
	.loc 1 178 5
	.loc 1 180 5
	.loc 1 177 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 180 60
	lui	s1,%hi(.LANCHOR0)
	.loc 1 177 1
	.loc 1 177 1
	mv	s3,a5
	.loc 1 180 60
	addi	a5,s1,%lo(.LANCHOR0)
.LVL67:
	.loc 1 177 1
	mv	s4,a4
	.loc 1 180 8
	lw	a4,4(a5)
.LVL68:
	li	a5,1414545408
	addi	a5,a5,1602
	bne	a4,a5,.L63
	addi	s1,s1,%lo(.LANCHOR0)
	mv	s9,a0
	mv	s7,a1
	mv	s6,a2
	mv	s5,a3
	addi	s8,s1,23
.LBB10:
.LBB11:
	.loc 1 186 12
	li	s2,0
.LVL69:
.L58:
	.loc 1 186 17 is_stmt 1
	.loc 1 186 56 is_stmt 0
	lhu	a5,10(s1)
	.loc 1 186 5
	bge	s2,a5,.L62
	.loc 1 188 9 is_stmt 1
	.loc 1 188 18 is_stmt 0
	mv	a0,s8
	mv	a1,s9
	call	strcmp
.LVL70:
	.loc 1 188 12
	addi	s8,s8,36
	bne	a0,zero,.L59
.L62:
	.loc 1 193 5 is_stmt 1
	.loc 1 193 44 is_stmt 0
	lhu	a5,10(s1)
	.loc 1 195 16
	li	a0,-2
	.loc 1 193 8
	bne	s2,a5,.L65
.LVL71:
.L56:
.LBE11:
.LBE10:
	.loc 1 204 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL72:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL73:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL74:
.L59:
	.cfi_restore_state
.LBB13:
.LBB12:
	.loc 1 186 67 is_stmt 1
	.loc 1 186 68 is_stmt 0
	addi	s2,s2,1
.LVL75:
	j	.L58
.L65:
	.loc 1 197 5 is_stmt 1
	.loc 1 197 62 is_stmt 0
	li	a5,36
	mul	a0,s2,a5
	.loc 1 200 61
	addi	s2,s2,1
.LVL76:
	.loc 1 197 62
	add	a0,s1,a0
	lw	a4,32(a0)
	.loc 1 200 61
	mul	s2,s2,a5
.LVL77:
	.loc 1 197 12
	sw	a4,0(s7)
	.loc 1 198 5 is_stmt 1
	.loc 1 198 62 is_stmt 0
	lw	a4,36(a0)
	.loc 1 198 12
	sw	a4,0(s6)
	.loc 1 199 5 is_stmt 1
	.loc 1 199 61 is_stmt 0
	lw	a4,40(a0)
	.loc 1 200 61
	add	s1,s1,s2
	.loc 1 199 12
	sw	a4,0(s5)
	.loc 1 200 5 is_stmt 1
	.loc 1 200 61 is_stmt 0
	lw	a5,8(s1)
	.loc 1 200 12
	sw	a5,0(s4)
	.loc 1 201 5 is_stmt 1
	.loc 1 201 55 is_stmt 0
	lbu	a5,22(a0)
	.loc 1 203 12
	li	a0,0
	.loc 1 201 55
	sw	a5,0(s3)
	.loc 1 203 5 is_stmt 1
	.loc 1 203 12 is_stmt 0
	j	.L56
.LVL78:
.L63:
.LBE12:
.LBE13:
	.loc 1 182 16
	li	a0,-5
.LVL79:
	j	.L56
	.cfi_endproc
.LFE15:
	.size	hal_boot2_partition_addr, .-hal_boot2_partition_addr
	.section	.text.hal_boot2_partition_addr_active,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_addr_active
	.type	hal_boot2_partition_addr_active, @function
hal_boot2_partition_addr_active:
.LFB16:
	.loc 1 207 1 is_stmt 1
	.cfi_startproc
.LVL80:
	.loc 1 208 5
	.loc 1 209 5
	.loc 1 210 5
	.loc 1 212 5
	.loc 1 207 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	ra,44(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	mv	s2,a1
	mv	s1,a2
	.loc 1 212 16
	addi	a5,s0,-20
	addi	a4,s0,-24
	addi	a3,s0,-28
	addi	a2,s0,-32
.LVL81:
	addi	a1,s0,-36
.LVL82:
	call	hal_boot2_partition_addr
.LVL83:
	.loc 1 212 8
	bne	a0,zero,.L67
	.loc 1 216 5 is_stmt 1
	.loc 1 216 20 is_stmt 0
	lw	a5,-20(s0)
	.loc 1 216 28
	beq	a5,zero,.L69
	.loc 1 216 28 discriminator 1
	lw	a4,-32(s0)
.L70:
	.loc 1 216 11 discriminator 4
	sw	a4,0(s2)
	.loc 1 217 5 is_stmt 1 discriminator 4
	.loc 1 217 28 is_stmt 0 discriminator 4
	beq	a5,zero,.L71
	.loc 1 217 28 discriminator 1
	lw	a5,-24(s0)
.L72:
	.loc 1 217 11 discriminator 4
	sw	a5,0(s1)
	.loc 1 219 5 is_stmt 1 discriminator 4
.L67:
	.loc 1 220 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL84:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL85:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL86:
.L69:
	.cfi_restore_state
	.loc 1 216 28 discriminator 2
	lw	a4,-36(s0)
	j	.L70
.L71:
	.loc 1 217 28 discriminator 2
	lw	a5,-28(s0)
	j	.L72
	.cfi_endproc
.LFE16:
	.size	hal_boot2_partition_addr_active, .-hal_boot2_partition_addr_active
	.section	.text.hal_boot2_partition_addr_inactive,"ax",@progbits
	.align	1
	.globl	hal_boot2_partition_addr_inactive
	.type	hal_boot2_partition_addr_inactive, @function
hal_boot2_partition_addr_inactive:
.LFB17:
	.loc 1 223 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 1 224 5
	.loc 1 225 5
	.loc 1 226 5
	.loc 1 228 5
	.loc 1 223 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	ra,44(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	mv	s2,a1
	mv	s1,a2
	.loc 1 228 16
	addi	a5,s0,-20
	addi	a4,s0,-24
	addi	a3,s0,-28
	addi	a2,s0,-32
.LVL88:
	addi	a1,s0,-36
.LVL89:
	call	hal_boot2_partition_addr
.LVL90:
	.loc 1 228 8
	bne	a0,zero,.L74
	.loc 1 232 5 is_stmt 1
	.loc 1 232 20 is_stmt 0
	lw	a5,-20(s0)
	.loc 1 232 28
	beq	a5,zero,.L76
	.loc 1 232 28 discriminator 1
	lw	a4,-36(s0)
.L77:
	.loc 1 232 11 discriminator 4
	sw	a4,0(s2)
	.loc 1 233 5 is_stmt 1 discriminator 4
	.loc 1 233 28 is_stmt 0 discriminator 4
	beq	a5,zero,.L78
	.loc 1 233 28 discriminator 1
	lw	a5,-28(s0)
.L79:
	.loc 1 233 11 discriminator 4
	sw	a5,0(s1)
	.loc 1 235 5 is_stmt 1 discriminator 4
.L74:
	.loc 1 236 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL91:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL92:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL93:
.L76:
	.cfi_restore_state
	.loc 1 232 28 discriminator 2
	lw	a4,-32(s0)
	j	.L77
.L78:
	.loc 1 233 28 discriminator 2
	lw	a5,-24(s0)
	j	.L79
	.cfi_endproc
.LFE17:
	.size	hal_boot2_partition_addr_inactive, .-hal_boot2_partition_addr_inactive
	.section	.text.hal_boot2_get_active_partition,"ax",@progbits
	.align	1
	.globl	hal_boot2_get_active_partition
	.type	hal_boot2_get_active_partition, @function
hal_boot2_get_active_partition:
.LFB18:
	.loc 1 239 1 is_stmt 1
	.cfi_startproc
	.loc 1 240 5
	.loc 1 239 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 241 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR0)
	lbu	a0,%lo(.LANCHOR0)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	hal_boot2_get_active_partition, .-hal_boot2_get_active_partition
	.section	.text.hal_boot2_get_active_entries_byname,"ax",@progbits
	.align	1
	.globl	hal_boot2_get_active_entries_byname
	.type	hal_boot2_get_active_entries_byname, @function
hal_boot2_get_active_entries_byname:
.LFB19:
	.loc 1 244 1 is_stmt 1
	.cfi_startproc
.LVL94:
	.loc 1 245 5
	.loc 1 244 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a2,a1
.LVL95:
	.loc 1 246 5 is_stmt 1
	.loc 1 246 9 is_stmt 0
	mv	a1,a0
.LVL96:
	lui	a0,%hi(.LANCHOR0+4)
.LVL97:
	.loc 1 244 1
	.loc 1 246 9
	addi	a0,a0,%lo(.LANCHOR0+4)
	call	PtTable_Get_Active_Entries_By_Name
.LVL98:
	.loc 1 251 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 246 8
	snez	a0,a0
	.loc 1 251 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	hal_boot2_get_active_entries_byname, .-hal_boot2_get_active_entries_byname
	.section	.text.hal_boot2_get_active_entries,"ax",@progbits
	.align	1
	.globl	hal_boot2_get_active_entries
	.type	hal_boot2_get_active_entries, @function
hal_boot2_get_active_entries:
.LFB20:
	.loc 1 254 1 is_stmt 1
	.cfi_startproc
.LVL99:
	.loc 1 255 5
	.loc 1 254 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a2,a1
.LVL100:
	.loc 1 256 5 is_stmt 1
	.loc 1 256 9 is_stmt 0
	mv	a1,a0
.LVL101:
	lui	a0,%hi(.LANCHOR0+4)
.LVL102:
	.loc 1 254 1
	.loc 1 256 9
	addi	a0,a0,%lo(.LANCHOR0+4)
	call	PtTable_Get_Active_Entries
.LVL103:
	.loc 1 261 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 256 8
	snez	a0,a0
	.loc 1 261 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	hal_boot2_get_active_entries, .-hal_boot2_get_active_entries
	.section	.text.hal_boot2_dump,"ax",@progbits
	.align	1
	.globl	hal_boot2_dump
	.type	hal_boot2_dump, @function
hal_boot2_dump:
.LFB21:
	.loc 1 264 1 is_stmt 1
	.cfi_startproc
	.loc 1 265 5
	.loc 1 264 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 265 5
	call	_dump_partition
.LVL104:
	.loc 1 266 5 is_stmt 1
	.loc 1 267 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	hal_boot2_dump, .-hal_boot2_dump
	.section	.text.hal_boot2_init,"ax",@progbits
	.align	1
	.globl	hal_boot2_init
	.type	hal_boot2_init, @function
hal_boot2_init:
.LFB22:
	.loc 1 270 1 is_stmt 1
	.cfi_startproc
	.loc 1 271 5
	.loc 1 270 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 271 50
	li	a5,1107599360
	lbu	a4,-1024(a5)
	.loc 1 271 48
	lui	a5,%hi(.LANCHOR0)
	sb	a4,%lo(.LANCHOR0)(a5)
	.loc 1 275 44 is_stmt 1
	.loc 1 276 5
	call	_dump_partition
.LVL105:
	.loc 1 277 5
	call	bl_flash_config_update
.LVL106:
	.loc 1 279 5
	.loc 1 280 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	hal_boot2_init, .-hal_boot2_init
	.section	.rodata.hal_update_mfg_ptable.str1.4,"aMS",@progbits,1
	.align	2
.LC15:
	.string	"mfg"
	.section	.text.hal_update_mfg_ptable,"ax",@progbits
	.align	1
	.globl	hal_update_mfg_ptable
	.type	hal_update_mfg_ptable, @function
hal_update_mfg_ptable:
.LFB23:
	.loc 1 285 1 is_stmt 1
	.cfi_startproc
	.loc 1 286 5
	.loc 1 287 5
	.loc 1 289 5
	.loc 1 290 5
	.loc 1 291 5
	.loc 1 285 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	ra,92(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 1 291 14
	lui	a0,%hi(.LC14)
	.loc 1 285 1
	.loc 1 291 14
	addi	a1,s0,-88
	addi	a0,a0,%lo(.LC14)
	call	hal_boot2_get_active_entries_byname
.LVL107:
	.loc 1 291 8
	bne	a0,zero,.L91
	.loc 1 293 9 is_stmt 1
	.loc 1 293 18 is_stmt 0
	lui	a0,%hi(.LC15)
	addi	a1,s0,-52
	addi	a0,a0,%lo(.LC15)
	call	hal_boot2_get_active_entries_byname
.LVL108:
	.loc 1 293 12
	bne	a0,zero,.L91
	.loc 1 295 13 is_stmt 1
	.loc 1 295 16 is_stmt 0
	lw	a4,-72(s0)
	lw	a5,-40(s0)
	bne	a4,a5,.L91
	.loc 1 298 17 is_stmt 1
	li	a2,9
	li	a1,0
	addi	a0,s0,-49
	call	memset
.LVL109:
	.loc 1 299 17
	lui	a2,%hi(.LANCHOR0)
	addi	a2,a2,%lo(.LANCHOR0)
	lbu	a1,0(a2)
	addi	a3,s0,-52
	addi	a2,a2,4
	seqz	a1,a1
	li	a0,0
	call	PtTable_Update_Entry
.LVL110:
	.loc 1 301 17
	.loc 1 306 5
	.loc 1 307 5
.L91:
	.loc 1 308 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	hal_update_mfg_ptable, .-hal_update_mfg_ptable
	.section	.bss.boot2_partition_table,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	boot2_partition_table, @object
	.size	boot2_partition_table, 600
boot2_partition_table:
	.zero	600
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_boot2.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_boot2.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeb8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF87
	.byte	0xc
	.4byte	.LASF88
	.4byte	.LASF89
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	0x8f
	.byte	0x6
	.byte	0x4
	.4byte	0x96
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0xe6
	.byte	0x8
	.4byte	.LASF16
	.byte	0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0xc5
	.byte	0x9
	.4byte	0xb9
	.4byte	0x102
	.byte	0xa
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0x52
	.byte	0xe
	.4byte	0x123
	.byte	0x8
	.4byte	.LASF20
	.byte	0
	.byte	0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.byte	0x10
	.byte	0
	.byte	0xb
	.byte	0x10
	.byte	0x5
	.byte	0x5b
	.byte	0x9
	.4byte	0x16e
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x5c
	.byte	0xe
	.4byte	0xb9
	.byte	0
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x5d
	.byte	0xe
	.4byte	0xad
	.byte	0x4
	.byte	0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x5e
	.byte	0xe
	.4byte	0xad
	.byte	0x6
	.byte	0xd
	.string	"age"
	.byte	0x5
	.byte	0x5f
	.byte	0xe
	.4byte	0xb9
	.byte	0x8
	.byte	0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x60
	.byte	0xe
	.4byte	0xb9
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x61
	.byte	0x2
	.4byte	0x123
	.byte	0xb
	.byte	0x24
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x1ec
	.byte	0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x67
	.byte	0xd
	.4byte	0xa1
	.byte	0
	.byte	0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x68
	.byte	0xd
	.4byte	0xa1
	.byte	0x1
	.byte	0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x69
	.byte	0xd
	.4byte	0xa1
	.byte	0x2
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x1ec
	.byte	0x3
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x6b
	.byte	0xe
	.4byte	0xf2
	.byte	0xc
	.byte	0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x6c
	.byte	0xe
	.4byte	0xf2
	.byte	0x14
	.byte	0xd
	.string	"len"
	.byte	0x5
	.byte	0x6d
	.byte	0xe
	.4byte	0xb9
	.byte	0x1c
	.byte	0xd
	.string	"age"
	.byte	0x5
	.byte	0x6e
	.byte	0xe
	.4byte	0xb9
	.byte	0x20
	.byte	0
	.byte	0x9
	.4byte	0xa1
	.4byte	0x1fc
	.byte	0xa
	.4byte	0x88
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x6f
	.byte	0x2
	.4byte	0x17a
	.byte	0xe
	.2byte	0x254
	.byte	0x5
	.byte	0x74
	.byte	0x9
	.4byte	0x23b
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x75
	.byte	0x14
	.4byte	0x16e
	.byte	0
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x76
	.byte	0x1a
	.4byte	0x23b
	.byte	0x10
	.byte	0xf
	.4byte	.LASF26
	.byte	0x5
	.byte	0x77
	.byte	0xe
	.4byte	0xb9
	.2byte	0x250
	.byte	0
	.byte	0x9
	.4byte	0x1fc
	.4byte	0x24b
	.byte	0xa
	.4byte	0x88
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x78
	.byte	0x2
	.4byte	0x208
	.byte	0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0xa3
	.byte	0x17
	.4byte	0x263
	.byte	0x6
	.byte	0x4
	.4byte	0x269
	.byte	0x10
	.4byte	0xe6
	.4byte	0x27d
	.byte	0x11
	.4byte	0xb9
	.byte	0x11
	.4byte	0xb9
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0xa4
	.byte	0x17
	.4byte	0x289
	.byte	0x6
	.byte	0x4
	.4byte	0x28f
	.byte	0x10
	.4byte	0xe6
	.4byte	0x2a8
	.byte	0x11
	.4byte	0xb9
	.byte	0x11
	.4byte	0x2a8
	.byte	0x11
	.4byte	0xb9
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa1
	.byte	0xb
	.byte	0x24
	.byte	0x6
	.byte	0x9
	.byte	0x9
	.4byte	0x320
	.byte	0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0xa
	.byte	0xd
	.4byte	0xa1
	.byte	0
	.byte	0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0xb
	.byte	0xd
	.4byte	0xa1
	.byte	0x1
	.byte	0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0xa1
	.byte	0x2
	.byte	0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0xd
	.byte	0xd
	.4byte	0x1ec
	.byte	0x3
	.byte	0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0xe
	.byte	0xe
	.4byte	0xf2
	.byte	0xc
	.byte	0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0xf
	.byte	0xe
	.4byte	0xf2
	.byte	0x14
	.byte	0xd
	.string	"len"
	.byte	0x6
	.byte	0x10
	.byte	0xe
	.4byte	0xb9
	.byte	0x1c
	.byte	0xd
	.string	"age"
	.byte	0x6
	.byte	0x11
	.byte	0xe
	.4byte	0xb9
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x12
	.byte	0x3
	.4byte	0x2ae
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.4byte	0x347
	.byte	0x8
	.4byte	.LASF41
	.byte	0
	.byte	0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF43
	.byte	0x6
	.byte	0x26
	.byte	0x3
	.4byte	0x32c
	.byte	0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x28
	.byte	0x18
	.4byte	0x35f
	.byte	0x6
	.byte	0x4
	.4byte	0x365
	.byte	0x10
	.4byte	0x347
	.4byte	0x379
	.byte	0x11
	.4byte	0xb9
	.byte	0x11
	.4byte	0xb9
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x29
	.byte	0x18
	.4byte	0x385
	.byte	0x6
	.byte	0x4
	.4byte	0x38b
	.byte	0x10
	.4byte	0x347
	.4byte	0x3a4
	.byte	0x11
	.4byte	0xb9
	.byte	0x11
	.4byte	0x2a8
	.byte	0x11
	.4byte	0xb9
	.byte	0
	.byte	0xe
	.2byte	0x258
	.byte	0x1
	.byte	0x16
	.byte	0x8
	.4byte	0x3d6
	.byte	0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	0xa1
	.byte	0
	.byte	0xd
	.string	"pad"
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.4byte	0x3d6
	.byte	0x1
	.byte	0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1a
	.byte	0x1a
	.4byte	0x24b
	.byte	0x4
	.byte	0
	.byte	0x9
	.4byte	0xa1
	.4byte	0x3e6
	.byte	0xa
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1b
	.byte	0x3
	.4byte	0x3a4
	.byte	0x5
	.byte	0x3
	.4byte	boot2_partition_table
	.byte	0x13
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x11c
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a8
	.byte	0x14
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11e
	.byte	0x1a
	.4byte	0x1fc
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x11f
	.byte	0x1a
	.4byte	0x1fc
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x15
	.4byte	.LVL107
	.4byte	0x573
	.4byte	0x44e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xa8,0x7f
	.byte	0
	.byte	0x15
	.4byte	.LVL108
	.4byte	0x573
	.4byte	0x46b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4c
	.byte	0
	.byte	0x15
	.4byte	.LVL109
	.4byte	0xe5b
	.4byte	0x489
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4f
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0x17
	.4byte	.LVL110
	.4byte	0xe67
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x4c
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x10d
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d6
	.byte	0x19
	.4byte	.LVL105
	.4byte	0xa54
	.byte	0x19
	.4byte	.LVL106
	.4byte	0xe73
	.byte	0
	.byte	0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x107
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x4fb
	.byte	0x19
	.4byte	.LVL104
	.4byte	0xa54
	.byte	0
	.byte	0x1a
	.4byte	.LASF53
	.byte	0x1
	.byte	0xfd
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x567
	.byte	0x1b
	.4byte	.LASF28
	.byte	0x1
	.byte	0xfd
	.byte	0x26
	.4byte	0x81
	.4byte	.LLST36
	.byte	0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0xfd
	.byte	0x47
	.4byte	0x567
	.4byte	.LLST37
	.byte	0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0xff
	.byte	0x1b
	.4byte	0x56d
	.4byte	.LLST38
	.byte	0x17
	.4byte	.LVL103
	.4byte	0xe7f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x320
	.byte	0x6
	.byte	0x4
	.4byte	0x1fc
	.byte	0x1a
	.4byte	.LASF56
	.byte	0x1
	.byte	0xf3
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x5df
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf3
	.byte	0x32
	.4byte	0x2a8
	.4byte	.LLST33
	.byte	0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf3
	.byte	0x53
	.4byte	0x567
	.4byte	.LLST34
	.byte	0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf5
	.byte	0x1b
	.4byte	0x56d
	.4byte	.LLST35
	.byte	0x17
	.4byte	.LVL98
	.4byte	0xe8b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF90
	.byte	0x1
	.byte	0xee
	.byte	0x9
	.4byte	0xa1
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.byte	0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xde
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c8
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xde
	.byte	0x33
	.4byte	0x9b
	.4byte	.LLST30
	.byte	0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0xde
	.byte	0x43
	.4byte	0x6c8
	.4byte	.LLST31
	.byte	0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0xde
	.byte	0x53
	.4byte	0x6c8
	.4byte	.LLST32
	.byte	0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe0
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe0
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe1
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0xe1
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe2
	.byte	0x9
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xe2
	.byte	0x11
	.4byte	0x81
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL90
	.4byte	0x7a1
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
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb9
	.byte	0x1a
	.4byte	.LASF65
	.byte	0x1
	.byte	0xce
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x7a1
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xce
	.byte	0x31
	.4byte	0x9b
	.4byte	.LLST27
	.byte	0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0xce
	.byte	0x41
	.4byte	0x6c8
	.4byte	.LLST28
	.byte	0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0xce
	.byte	0x51
	.4byte	0x6c8
	.4byte	.LLST29
	.byte	0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd0
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0xd0
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd1
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0xd1
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0xd2
	.byte	0x9
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xd2
	.byte	0x11
	.4byte	0x81
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL83
	.4byte	0x7a1
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
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF68
	.byte	0x1
	.byte	0xb0
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0x805
	.byte	0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0xb0
	.byte	0x2a
	.4byte	0x9b
	.byte	0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb0
	.byte	0x3a
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb0
	.byte	0x4b
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb0
	.byte	0x5c
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF63
	.byte	0x1
	.byte	0xb0
	.byte	0x6d
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF64
	.byte	0x1
	.byte	0xb0
	.byte	0x79
	.4byte	0x805
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0xb2
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x81
	.byte	0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0xa0
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x8de
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa0
	.byte	0x37
	.4byte	0x9b
	.4byte	.LLST17
	.byte	0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa0
	.byte	0x47
	.4byte	0x6c8
	.4byte	.LLST18
	.byte	0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa0
	.byte	0x57
	.4byte	0x6c8
	.4byte	.LLST19
	.byte	0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa2
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa2
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xa3
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa3
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa4
	.byte	0x9
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xa4
	.byte	0x11
	.4byte	0x81
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL62
	.4byte	0x9b1
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
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF67
	.byte	0x1
	.byte	0x90
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x9b1
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0x90
	.byte	0x35
	.4byte	0x9b
	.4byte	.LLST14
	.byte	0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0x90
	.byte	0x45
	.4byte	0x6c8
	.4byte	.LLST15
	.byte	0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0x90
	.byte	0x55
	.4byte	0x6c8
	.4byte	.LLST16
	.byte	0x12
	.4byte	.LASF60
	.byte	0x1
	.byte	0x92
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0x92
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x93
	.byte	0xe
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x93
	.byte	0x15
	.4byte	0xb9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0x94
	.byte	0x9
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x94
	.byte	0x11
	.4byte	0x81
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LVL55
	.4byte	0x9b1
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
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF69
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0xa2d
	.byte	0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0x55
	.byte	0x2e
	.4byte	0x9b
	.byte	0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0x55
	.byte	0x3e
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF61
	.byte	0x1
	.byte	0x55
	.byte	0x4f
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF62
	.byte	0x1
	.byte	0x55
	.byte	0x60
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF63
	.byte	0x1
	.byte	0x55
	.byte	0x71
	.4byte	0x6c8
	.byte	0x20
	.4byte	.LASF64
	.byte	0x1
	.byte	0x55
	.byte	0x7d
	.4byte	0x805
	.byte	0x21
	.string	"i"
	.byte	0x1
	.byte	0x57
	.byte	0x9
	.4byte	0x81
	.byte	0x22
	.4byte	.LASF70
	.byte	0x1
	.byte	0x58
	.byte	0xe
	.4byte	0xb9
	.byte	0x22
	.4byte	.LASF71
	.byte	0x1
	.byte	0x58
	.byte	0x17
	.4byte	0xb9
	.byte	0
	.byte	0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4d
	.byte	0xa
	.4byte	0xb9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xa54
	.byte	0x23
	.4byte	.LASF91
	.byte	0x1
	.byte	0x4f
	.byte	0x14
	.4byte	0xa1
	.byte	0
	.byte	0x24
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xc21
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF73
	.byte	0x1
	.byte	0x31
	.byte	0x1b
	.4byte	0xc21
	.byte	0x6
	.byte	0x3
	.4byte	boot2_partition_table+4
	.byte	0x9f
	.byte	0x15
	.4byte	.LVL1
	.4byte	0xe97
	.4byte	0xaa8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0
	.byte	0x15
	.4byte	.LVL2
	.4byte	0xe97
	.4byte	0xabf
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x15
	.4byte	.LVL3
	.4byte	0xe97
	.4byte	0xad6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x15
	.4byte	.LVL4
	.4byte	0xe97
	.4byte	0xaed
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x15
	.4byte	.LVL5
	.4byte	0xe97
	.4byte	0xb04
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x15
	.4byte	.LVL6
	.4byte	0xe97
	.4byte	0xb1b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x15
	.4byte	.LVL7
	.4byte	0xe97
	.4byte	0xb32
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x15
	.4byte	.LVL11
	.4byte	0xe97
	.4byte	0xb4f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL13
	.4byte	0xe97
	.4byte	0xb66
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x15
	.4byte	.LVL14
	.4byte	0xe97
	.4byte	0xb7d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x15
	.4byte	.LVL15
	.4byte	0xe97
	.4byte	0xb94
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x15
	.4byte	.LVL16
	.4byte	0xe97
	.4byte	0xbb1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0x17
	.byte	0
	.byte	0x15
	.4byte	.LVL17
	.4byte	0xe97
	.4byte	0xbc8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x15
	.4byte	.LVL18
	.4byte	0xe97
	.4byte	0xbdf
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x15
	.4byte	.LVL19
	.4byte	0xe97
	.4byte	0xbf6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x15
	.4byte	.LVL20
	.4byte	0xe97
	.4byte	0xc0d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x17
	.4byte	.LVL21
	.4byte	0xe97
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x24b
	.byte	0x1a
	.4byte	.LASF74
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xc8d
	.byte	0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0x22
	.byte	0x38
	.4byte	0x567
	.4byte	.LLST3
	.byte	0x21
	.string	"ret"
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0x81
	.byte	0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0x26
	.byte	0x1b
	.4byte	0x56d
	.4byte	.LLST4
	.byte	0x26
	.4byte	.LVL26
	.4byte	0xe67
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF76
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xcdc
	.byte	0x1b
	.4byte	.LASF77
	.byte	0x1
	.byte	0x1d
	.byte	0x37
	.4byte	0x353
	.4byte	.LLST1
	.byte	0x1b
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1d
	.byte	0x56
	.4byte	0x379
	.4byte	.LLST2
	.byte	0x26
	.4byte	.LVL23
	.4byte	0xea3
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
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x9b1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xdb8
	.byte	0x29
	.4byte	0x9c2
	.4byte	.LLST5
	.byte	0x29
	.4byte	0x9ce
	.4byte	.LLST6
	.byte	0x29
	.4byte	0x9da
	.4byte	.LLST7
	.byte	0x29
	.4byte	0x9e6
	.4byte	.LLST8
	.byte	0x29
	.4byte	0x9f2
	.4byte	.LLST9
	.byte	0x29
	.4byte	0x9fe
	.4byte	.LLST10
	.byte	0x2a
	.4byte	0xa0a
	.byte	0x2a
	.4byte	0xa14
	.byte	0x2a
	.4byte	0xa20
	.byte	0x2b
	.4byte	0x9b1
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x2c
	.4byte	0x9fe
	.byte	0x2c
	.4byte	0x9f2
	.byte	0x2c
	.4byte	0x9e6
	.byte	0x2c
	.4byte	0x9da
	.byte	0x2c
	.4byte	0x9ce
	.byte	0x2c
	.4byte	0x9c2
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0
	.byte	0x2e
	.4byte	0xa0a
	.4byte	.LLST11
	.byte	0x2e
	.4byte	0xa14
	.4byte	.LLST12
	.byte	0x2e
	.4byte	0xa20
	.4byte	.LLST13
	.byte	0x15
	.4byte	.LVL31
	.4byte	0xeaf
	.4byte	0xd9c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL42
	.4byte	0xeaf
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x7a1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xe5b
	.byte	0x29
	.4byte	0x7b2
	.4byte	.LLST20
	.byte	0x29
	.4byte	0x7be
	.4byte	.LLST21
	.byte	0x29
	.4byte	0x7ca
	.4byte	.LLST22
	.byte	0x29
	.4byte	0x7d6
	.4byte	.LLST23
	.byte	0x29
	.4byte	0x7e2
	.4byte	.LLST24
	.byte	0x29
	.4byte	0x7ee
	.4byte	.LLST25
	.byte	0x2a
	.4byte	0x7fa
	.byte	0x2b
	.4byte	0x7a1
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xb0
	.byte	0x5
	.byte	0x2c
	.4byte	0x7ee
	.byte	0x2c
	.4byte	0x7e2
	.byte	0x2c
	.4byte	0x7d6
	.byte	0x2c
	.4byte	0x7ca
	.byte	0x2c
	.4byte	0x7be
	.byte	0x2c
	.4byte	0x7b2
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2e
	.4byte	0x7fa
	.4byte	.LLST26
	.byte	0x17
	.4byte	.LVL70
	.4byte	0xeaf
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.byte	0x2f
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x5
	.byte	0xb2
	.byte	0x14
	.byte	0x2f
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x8
	.byte	0x8
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x5
	.byte	0xaf
	.byte	0x14
	.byte	0x2f
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x5
	.byte	0xb7
	.byte	0x14
	.byte	0x2f
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.byte	0xac
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x7
	.byte	0x24
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
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
	.byte	0xf
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x34
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
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
.LLST36:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL103-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101
	.4byte	.LVL103-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL103-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL98-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL98-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL98-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL87
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL80
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x84
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL26-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL26-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL38
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL50
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL50
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL50
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL41
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x7
	.byte	0x86
	.byte	0x80,0xa0,0x80,0xe8,0x7d
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x7
	.byte	0x85
	.byte	0x80,0xa0,0x80,0xe8,0x7d
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL78
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL78
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL78
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL68
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"HAL_ERROR"
.LASF88:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_boot2.c"
.LASF60:
	.string	"addr0"
.LASF83:
	.string	"PtTable_Get_Active_Entries_By_Name"
.LASF24:
	.string	"version"
.LASF78:
	.string	"write"
.LASF64:
	.string	"active"
.LASF91:
	.string	"__boot2_flashCfg_src"
.LASF43:
	.string	"HAL_Err_Type"
.LASF30:
	.string	"activeIndex"
.LASF2:
	.string	"short int"
.LASF62:
	.string	"size0"
.LASF63:
	.string	"size1"
.LASF80:
	.string	"PtTable_Update_Entry"
.LASF7:
	.string	"__uint32_t"
.LASF52:
	.string	"hal_boot2_dump"
.LASF32:
	.string	"Address"
.LASF4:
	.string	"__uint16_t"
.LASF54:
	.string	"ptEntry_hal"
.LASF71:
	.string	"addr1_t"
.LASF85:
	.string	"PtTable_Set_Flash_Operation"
.LASF46:
	.string	"partition_active_idx"
.LASF51:
	.string	"hal_boot2_init"
.LASF48:
	.string	"boot2_partition_table"
.LASF20:
	.string	"PT_ENTRY_FW_CPU0"
.LASF13:
	.string	"uint8_t"
.LASF75:
	.string	"hal_update_mfg_ptable"
.LASF81:
	.string	"bl_flash_config_update"
.LASF76:
	.string	"hal_boot2_set_ptable_opt"
.LASF47:
	.string	"table"
.LASF15:
	.string	"uint32_t"
.LASF33:
	.string	"maxLen"
.LASF38:
	.string	"pPtTable_Flash_Erase"
.LASF29:
	.string	"device"
.LASF89:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF70:
	.string	"addr0_t"
.LASF9:
	.string	"long long int"
.LASF61:
	.string	"addr1"
.LASF79:
	.string	"memset"
.LASF67:
	.string	"hal_boot2_partition_bus_addr_active"
.LASF6:
	.string	"long int"
.LASF19:
	.string	"BL_Err_Type"
.LASF25:
	.string	"entryCnt"
.LASF84:
	.string	"printf"
.LASF3:
	.string	"__uint8_t"
.LASF17:
	.string	"ERROR"
.LASF18:
	.string	"TIMEOUT"
.LASF92:
	.string	"_dump_partition"
.LASF31:
	.string	"name"
.LASF1:
	.string	"unsigned char"
.LASF68:
	.string	"hal_boot2_partition_addr"
.LASF40:
	.string	"HALPartition_Entry_Config"
.LASF22:
	.string	"PT_ENTRY_MAX"
.LASF49:
	.string	"ptEntry_fw"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF90:
	.string	"hal_boot2_get_active_partition"
.LASF28:
	.string	"type"
.LASF11:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF45:
	.string	"HALpPtTable_Flash_Write"
.LASF50:
	.string	"ptEntry_media"
.LASF53:
	.string	"hal_boot2_get_active_entries"
.LASF66:
	.string	"hal_boot2_partition_bus_addr_inactive"
.LASF5:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF26:
	.string	"crc32"
.LASF58:
	.string	"addr"
.LASF55:
	.string	"ptEntry"
.LASF36:
	.string	"ptEntries"
.LASF37:
	.string	"PtTable_Stuff_Config"
.LASF59:
	.string	"size"
.LASF56:
	.string	"hal_boot2_get_active_entries_byname"
.LASF73:
	.string	"part"
.LASF8:
	.string	"long unsigned int"
.LASF87:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF65:
	.string	"hal_boot2_partition_addr_active"
.LASF86:
	.string	"strcmp"
.LASF21:
	.string	"PT_ENTRY_FW_CPU1"
.LASF69:
	.string	"hal_boot2_partition_bus_addr"
.LASF34:
	.string	"PtTable_Entry_Config"
.LASF16:
	.string	"SUCCESS"
.LASF23:
	.string	"magicCode"
.LASF77:
	.string	"erase"
.LASF44:
	.string	"HALpPtTable_Flash_Erase"
.LASF74:
	.string	"hal_boot2_update_ptable"
.LASF72:
	.string	"hal_boot2_get_flash_addr"
.LASF82:
	.string	"PtTable_Get_Active_Entries"
.LASF39:
	.string	"pPtTable_Flash_Write"
.LASF35:
	.string	"ptTable"
.LASF57:
	.string	"hal_boot2_partition_addr_inactive"
.LASF27:
	.string	"PtTable_Config"
.LASF41:
	.string	"HAL_SUCCESS"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
