	.file	"hosal_flash.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hosal_flash_open,"ax",@progbits
	.align	1
	.globl	hosal_flash_open
	.type	hosal_flash_open, @function
hosal_flash_open:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_flash.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 29 2
	.loc 1 30 2
	.loc 1 31 2
	.loc 1 33 2
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a2,a1
	.loc 1 33 8
	addi	a1,s0,-20
.LVL1:
	call	bl_mtd_open
.LVL2:
	.loc 1 34 2 is_stmt 1
	.loc 1 34 5 is_stmt 0
	bne	a0,zero,.L3
	.loc 1 37 2 is_stmt 1
	.loc 1 37 10 is_stmt 0
	li	a1,1
	li	a0,4
.LVL3:
	call	calloc
.LVL4:
	.loc 1 38 2 is_stmt 1
	.loc 1 39 3
	.loc 1 41 2
	.loc 1 41 19 is_stmt 0
	lw	a5,-20(s0)
	sw	a5,0(a0)
	.loc 1 42 2 is_stmt 1
.LVL5:
.L1:
	.loc 1 43 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L3:
	.cfi_restore_state
	.loc 1 35 9
	li	a0,0
.LVL7:
	j	.L1
	.cfi_endproc
.LFE4:
	.size	hosal_flash_open, .-hosal_flash_open
	.section	.text.hosal_flash_info_get,"ax",@progbits
	.align	1
	.globl	hosal_flash_info_get
	.type	hosal_flash_info_get, @function
hosal_flash_info_get:
.LFB5:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 55 2
	.loc 1 57 2
	.loc 1 54 1 is_stmt 0
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
	.loc 1 57 2
	lw	a0,0(a0)
.LVL9:
	addi	s2,s0,-44
	.loc 1 54 1
	mv	s1,a1
	.loc 1 57 2
	mv	a1,s2
.LVL10:
	call	bl_mtd_info
.LVL11:
	.loc 1 59 2 is_stmt 1
	.loc 1 60 60 is_stmt 0
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	.loc 1 64 1
	lw	ra,44(sp)
	.cfi_restore 1
	.loc 1 59 35
	sw	s2,0(s1)
	.loc 1 60 2 is_stmt 1
	.loc 1 60 60 is_stmt 0
	add	a5,a5,a4
	.loc 1 60 34
	sw	a5,4(s1)
	.loc 1 61 2 is_stmt 1
	.loc 1 61 30 is_stmt 0
	lw	a5,-24(s0)
	.loc 1 64 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s2,32(sp)
	.cfi_restore 18
	.loc 1 61 30
	sw	a5,8(s1)
	.loc 1 63 2 is_stmt 1
	.loc 1 64 1 is_stmt 0
	li	a0,0
	lw	s1,36(sp)
	.cfi_restore 9
.LVL12:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	hosal_flash_info_get, .-hosal_flash_info_get
	.section	.text.hosal_flash_erase,"ax",@progbits
	.align	1
	.globl	hosal_flash_erase
	.type	hosal_flash_erase, @function
hosal_flash_erase:
.LFB6:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 82 2
	.loc 1 84 2
	.loc 1 81 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 87 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 84 8
	lw	a0,0(a0)
.LVL14:
	.loc 1 87 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 84 8
	tail	bl_mtd_erase
.LVL15:
	.cfi_endproc
.LFE6:
	.size	hosal_flash_erase, .-hosal_flash_erase
	.section	.text.hosal_flash_write,"ax",@progbits
	.align	1
	.globl	hosal_flash_write
	.type	hosal_flash_write, @function
hosal_flash_write:
.LFB7:
	.loc 1 104 1 is_stmt 1
	.cfi_startproc
.LVL16:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 104 1 is_stmt 0
	mv	s1,a1
	.loc 1 105 5 is_stmt 1
	.loc 1 105 14 is_stmt 0
	lw	a1,0(a1)
.LVL17:
	.loc 1 107 5 is_stmt 1
	.loc 1 108 5
	.loc 1 110 5
	.loc 1 110 8 is_stmt 0
	beq	a2,zero,.L11
	.loc 1 114 5
	lw	a0,0(a0)
.LVL18:
	mv	s2,a3
	.loc 1 114 5 is_stmt 1
	mv	a3,a2
.LVL19:
	mv	a2,s2
.LVL20:
	call	bl_mtd_write
.LVL21:
	.loc 1 116 5
	.loc 1 117 9
	.loc 1 117 18 is_stmt 0
	lw	a3,0(s1)
	.loc 1 120 12
	li	a0,0
	.loc 1 117 18
	add	a3,a3,s2
	sw	a3,0(s1)
	.loc 1 120 5 is_stmt 1
.LVL22:
.L9:
	.loc 1 121 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL23:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L11:
	.cfi_restore_state
	.loc 1 111 16
	li	a0,-1
.LVL25:
	j	.L9
	.cfi_endproc
.LFE7:
	.size	hosal_flash_write, .-hosal_flash_write
	.section	.text.hosal_flash_erase_write,"ax",@progbits
	.align	1
	.globl	hosal_flash_erase_write
	.type	hosal_flash_erase_write, @function
hosal_flash_erase_write:
.LFB8:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 139 5
	.loc 1 141 5
	.loc 1 138 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 138 1
	mv	s1,a1
	.loc 1 141 11
	lw	a1,0(a1)
.LVL27:
	.loc 1 138 1
	mv	s3,a2
	.loc 1 141 11
	mv	a2,a3
.LVL28:
	.loc 1 138 1
	mv	s2,a0
	.loc 1 141 11
	sw	a3,-36(s0)
	call	hosal_flash_erase
.LVL29:
	.loc 1 142 5 is_stmt 1
	.loc 1 142 8 is_stmt 0
	bne	a0,zero,.L13
	.loc 1 145 5 is_stmt 1
	.loc 1 145 12 is_stmt 0
	lw	a3,-36(s0)
	.loc 1 146 1
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 48
.LVL30:
	lw	ra,44(sp)
	.cfi_restore 1
	.loc 1 145 12
	mv	a2,s3
	mv	a1,s1
	.loc 1 146 1
	lw	s3,28(sp)
	.cfi_restore 19
.LVL31:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL32:
	.loc 1 145 12
	mv	a0,s2
.LVL33:
	.loc 1 146 1
	lw	s2,32(sp)
	.cfi_restore 18
.LVL34:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 145 12
	tail	hosal_flash_write
.LVL35:
.L13:
	.cfi_restore_state
	.loc 1 146 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL36:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL37:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL38:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	hosal_flash_erase_write, .-hosal_flash_erase_write
	.section	.text.hosal_flash_read,"ax",@progbits
	.align	1
	.globl	hosal_flash_read
	.type	hosal_flash_read, @function
hosal_flash_read:
.LFB9:
	.loc 1 163 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 164 5
	.loc 1 165 5
	.loc 1 163 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 163 1
	mv	s1,a1
	.loc 1 165 14
	lw	a1,0(a1)
.LVL40:
	.loc 1 167 5 is_stmt 1
	.loc 1 167 8 is_stmt 0
	beq	a0,zero,.L18
	.loc 1 170 16
	lw	a0,0(a0)
.LVL41:
	mv	s2,a3
	.loc 1 170 5 is_stmt 1
	.loc 1 170 16 is_stmt 0
	mv	a3,a2
.LVL42:
	mv	a2,s2
.LVL43:
	call	bl_mtd_read
.LVL44:
	.loc 1 170 8
	bne	a0,zero,.L16
	.loc 1 171 9 is_stmt 1
	.loc 1 171 18 is_stmt 0
	lw	a3,0(s1)
	add	a3,a3,s2
	sw	a3,0(s1)
.LVL45:
.L16:
	.loc 1 174 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL46:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL47:
.L18:
	.cfi_restore_state
	.loc 1 168 16
	li	a0,-1
.LVL48:
	j	.L16
	.cfi_endproc
.LFE9:
	.size	hosal_flash_read, .-hosal_flash_read
	.section	.text.hosal_flash_close,"ax",@progbits
	.align	1
	.globl	hosal_flash_close
	.type	hosal_flash_close, @function
hosal_flash_close:
.LFB10:
	.loc 1 184 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 185 2
	.loc 1 184 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 184 1
	mv	s1,a0
	.loc 1 185 2
	lw	a0,0(a0)
.LVL50:
	call	bl_mtd_close
.LVL51:
	.loc 1 186 2 is_stmt 1
	mv	a0,s1
	call	free
.LVL52:
	.loc 1 187 2
	.loc 1 188 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL53:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	hosal_flash_close, .-hosal_flash_close
	.section	.text.hosal_flash_raw_read,"ax",@progbits
	.align	1
	.globl	hosal_flash_raw_read
	.type	hosal_flash_raw_read, @function
hosal_flash_raw_read:
.LFB11:
	.loc 1 202 1 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 1 203 5
	.loc 1 202 1 is_stmt 0
	mv	a5,a0
	.loc 1 203 8
	beq	a0,zero,.L24
	.loc 1 202 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a0,a1
.LVL55:
	.loc 1 207 5 is_stmt 1
	mv	a1,a5
.LVL56:
	call	bl_flash_read
.LVL57:
	.loc 1 209 5
	.loc 1 210 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 209 12
	li	a0,0
	.loc 1 210 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL58:
.L24:
	.loc 1 204 16
	li	a0,-1
.LVL59:
	.loc 1 210 1
	ret
	.cfi_endproc
.LFE11:
	.size	hosal_flash_raw_read, .-hosal_flash_raw_read
	.section	.text.hosal_flash_raw_write,"ax",@progbits
	.align	1
	.globl	hosal_flash_raw_write
	.type	hosal_flash_raw_write, @function
hosal_flash_raw_write:
.LFB12:
	.loc 1 224 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 225 5
	.loc 1 224 1 is_stmt 0
	mv	a5,a0
	.loc 1 225 8
	beq	a0,zero,.L31
	.loc 1 224 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a0,a1
.LVL61:
	.loc 1 229 5 is_stmt 1
	mv	a1,a5
.LVL62:
	call	bl_flash_write
.LVL63:
	.loc 1 231 5
	.loc 1 232 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 231 12
	li	a0,0
	.loc 1 232 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL64:
.L31:
	.loc 1 226 16
	li	a0,-1
.LVL65:
	.loc 1 232 1
	ret
	.cfi_endproc
.LFE12:
	.size	hosal_flash_raw_write, .-hosal_flash_raw_write
	.section	.text.hosal_flash_raw_erase,"ax",@progbits
	.align	1
	.globl	hosal_flash_raw_erase
	.type	hosal_flash_raw_erase, @function
hosal_flash_raw_erase:
.LFB13:
	.loc 1 245 1 is_stmt 1
	.cfi_startproc
.LVL66:
	.loc 1 246 5
	.loc 1 245 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 247 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 246 12
	tail	bl_flash_erase
.LVL67:
	.cfi_endproc
.LFE13:
	.size	hosal_flash_raw_erase, .-hosal_flash_raw_erase
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_flash.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/sys/blmtd/include/bl_mtd.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6da
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x2
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
	.byte	0x6
	.byte	0x4
	.4byte	0x8b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x7
	.4byte	0x8b
	.byte	0x6
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.byte	0x4
	.4byte	0xbb
	.byte	0x8
	.byte	0x9
	.4byte	.LASF67
	.byte	0x4
	.byte	0x4
	.byte	0x24
	.byte	0x10
	.4byte	0xd7
	.byte	0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x25
	.byte	0xb
	.4byte	0x83
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x26
	.byte	0x3
	.4byte	0xbc
	.byte	0xb
	.byte	0x10
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.4byte	0x121
	.byte	0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.byte	0x11
	.4byte	0x97
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.byte	0xe
	.4byte	0xa9
	.byte	0x4
	.byte	0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0xa9
	.byte	0x8
	.byte	0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2f
	.byte	0xe
	.4byte	0xa9
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x3
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x5
	.byte	0xf
	.4byte	0x83
	.byte	0xb
	.byte	0x1c
	.byte	0x5
	.byte	0x6
	.byte	0x9
	.4byte	0x177
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x7
	.byte	0xa
	.4byte	0x177
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x8
	.byte	0x12
	.4byte	0x7c
	.byte	0x10
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x9
	.byte	0x12
	.4byte	0x7c
	.byte	0x14
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0xa
	.byte	0xb
	.4byte	0x83
	.byte	0x18
	.byte	0
	.byte	0xc
	.4byte	0x8b
	.4byte	0x187
	.byte	0xd
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xb
	.byte	0x3
	.4byte	0x139
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e6
	.byte	0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf4
	.byte	0x24
	.4byte	0xa9
	.4byte	.LLST34
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf4
	.byte	0x39
	.4byte	0xa9
	.4byte	.LLST35
	.byte	0x10
	.4byte	.LVL67
	.4byte	0x659
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0xdf
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x250
	.byte	0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0xdf
	.byte	0x21
	.4byte	0x83
	.4byte	.LLST31
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xdf
	.byte	0x32
	.4byte	0xa9
	.4byte	.LLST32
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xdf
	.byte	0x44
	.4byte	0xa9
	.4byte	.LLST33
	.byte	0x12
	.4byte	.LVL63
	.4byte	0x665
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc9
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ba
	.byte	0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc9
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST28
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc9
	.byte	0x31
	.4byte	0xa9
	.4byte	.LLST29
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc9
	.byte	0x43
	.4byte	0xa9
	.4byte	.LLST30
	.byte	0x12
	.4byte	.LVL57
	.4byte	0x671
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb7
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fe
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb7
	.byte	0x2a
	.4byte	0x2fe
	.4byte	.LLST27
	.byte	0x13
	.4byte	.LVL51
	.4byte	0x67d
	.byte	0x12
	.4byte	.LVL52
	.4byte	0x689
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd7
	.byte	0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa1
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x396
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa1
	.byte	0x29
	.4byte	0x2fe
	.4byte	.LLST21
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa1
	.byte	0x3a
	.4byte	0x396
	.4byte	.LLST22
	.byte	0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0xa2
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST23
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xa2
	.byte	0x2c
	.4byte	0xa9
	.4byte	.LLST24
	.byte	0x14
	.string	"ret"
	.byte	0x1
	.byte	0xa4
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST25
	.byte	0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0xa9
	.4byte	.LLST26
	.byte	0x12
	.4byte	.LVL44
	.4byte	0x695
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa9
	.byte	0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x88
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x448
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x88
	.byte	0x30
	.4byte	0x2fe
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x88
	.byte	0x41
	.4byte	0x396
	.4byte	.LLST17
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x89
	.byte	0x27
	.4byte	0xb5
	.4byte	.LLST18
	.byte	0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x89
	.byte	0x38
	.4byte	0xa9
	.4byte	.LLST19
	.byte	0x14
	.string	"ret"
	.byte	0x1
	.byte	0x8b
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST20
	.byte	0x16
	.4byte	.LVL29
	.4byte	0x4ea
	.4byte	0x421
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x10
	.4byte	.LVL35
	.4byte	0x448
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ea
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x66
	.byte	0x2a
	.4byte	0x2fe
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x66
	.byte	0x3b
	.4byte	0x396
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x67
	.byte	0x21
	.4byte	0xb5
	.4byte	.LLST11
	.byte	0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0x67
	.byte	0x32
	.4byte	0xa9
	.4byte	.LLST12
	.byte	0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0xa9
	.4byte	.LLST13
	.byte	0x15
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6b
	.byte	0xb
	.4byte	0x85
	.4byte	.LLST14
	.byte	0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6c
	.byte	0xe
	.4byte	0xa9
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LVL21
	.4byte	0x6a1
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x559
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x50
	.byte	0x2a
	.4byte	0x2fe
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x50
	.byte	0x3a
	.4byte	0xa9
	.4byte	.LLST7
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x50
	.byte	0x4c
	.4byte	0xa9
	.4byte	.LLST8
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.byte	0x52
	.byte	0x6
	.4byte	0x75
	.byte	0x10
	.4byte	.LVL15
	.4byte	0x6ad
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0x35
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b3
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x35
	.byte	0x2d
	.4byte	0x2fe
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x35
	.byte	0x4d
	.4byte	0x5b3
	.4byte	.LLST5
	.byte	0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x37
	.byte	0x10
	.4byte	0x187
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x12
	.4byte	.LVL11
	.4byte	0x6b9
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x121
	.byte	0xe
	.4byte	.LASF51
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.4byte	0x2fe
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x659
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1b
	.byte	0x31
	.4byte	0x97
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1b
	.byte	0x44
	.4byte	0x7c
	.4byte	.LLST1
	.byte	0x14
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	0x75
	.4byte	.LLST2
	.byte	0x19
	.string	"mtd"
	.byte	0x1
	.byte	0x1e
	.byte	0x12
	.4byte	0x12d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1f
	.byte	0x15
	.4byte	0x2fe
	.4byte	.LLST3
	.byte	0x16
	.4byte	.LVL2
	.4byte	0x6c5
	.4byte	0x644
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LVL4
	.4byte	0x6d1
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x5
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x6
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x6
	.byte	0x7
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x5
	.byte	0x12
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.byte	0x5e
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.byte	0x17
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x5
	.byte	0x16
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x5
	.byte	0x13
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x5
	.byte	0x11
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x7
	.byte	0x5a
	.byte	0x7
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
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
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
.LLST34:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL63-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL60
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL63-1
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL54
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL44-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL40
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL37
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL31
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL38
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL29-1
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x78
	.byte	0x5c
	.4byte	.LVL30
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"start_addr"
.LASF40:
	.string	"addr"
.LASF60:
	.string	"bl_mtd_erase"
.LASF2:
	.string	"short int"
.LASF55:
	.string	"bl_flash_read"
.LASF58:
	.string	"bl_mtd_read"
.LASF61:
	.string	"bl_mtd_info"
.LASF6:
	.string	"__uint32_t"
.LASF39:
	.string	"out_buf_size"
.LASF14:
	.string	"hosal_flash_dev_t"
.LASF65:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_flash.c"
.LASF15:
	.string	"flash_dev"
.LASF62:
	.string	"bl_mtd_open"
.LASF56:
	.string	"bl_mtd_close"
.LASF66:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF44:
	.string	"hosal_flash_write"
.LASF57:
	.string	"free"
.LASF21:
	.string	"bl_mtd_handle_t"
.LASF18:
	.string	"partition_length"
.LASF45:
	.string	"wbuf"
.LASF8:
	.string	"long long int"
.LASF49:
	.string	"partition"
.LASF4:
	.string	"long int"
.LASF32:
	.string	"address"
.LASF23:
	.string	"offset"
.LASF5:
	.string	"__uint8_t"
.LASF67:
	.string	"hosal_flash_dev"
.LASF22:
	.string	"name"
.LASF52:
	.string	"flags"
.LASF28:
	.string	"length"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"hosal_flash_raw_read"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"bl_flash_erase"
.LASF9:
	.string	"long long unsigned int"
.LASF38:
	.string	"out_buf"
.LASF13:
	.string	"uint32_t"
.LASF30:
	.string	"hosal_flash_raw_write"
.LASF37:
	.string	"off_set"
.LASF10:
	.string	"unsigned int"
.LASF16:
	.string	"partition_description"
.LASF48:
	.string	"hosal_flash_info_get"
.LASF42:
	.string	"in_buf"
.LASF47:
	.string	"hosal_flash_erase"
.LASF11:
	.string	"char"
.LASF25:
	.string	"xip_addr"
.LASF3:
	.string	"short unsigned int"
.LASF63:
	.string	"calloc"
.LASF54:
	.string	"bl_flash_write"
.LASF17:
	.string	"partition_start_addr"
.LASF24:
	.string	"size"
.LASF31:
	.string	"buffer"
.LASF59:
	.string	"bl_mtd_write"
.LASF36:
	.string	"hosal_flash_read"
.LASF7:
	.string	"long unsigned int"
.LASF35:
	.string	"p_dev"
.LASF20:
	.string	"hosal_logic_partition_t"
.LASF64:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF51:
	.string	"hosal_flash_open"
.LASF19:
	.string	"partition_options"
.LASF50:
	.string	"info"
.LASF34:
	.string	"hosal_flash_close"
.LASF12:
	.string	"uint8_t"
.LASF29:
	.string	"hosal_flash_raw_erase"
.LASF46:
	.string	"wlen"
.LASF41:
	.string	"hosal_flash_erase_write"
.LASF26:
	.string	"bl_mtd_info_t"
.LASF43:
	.string	"in_buf_size"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
