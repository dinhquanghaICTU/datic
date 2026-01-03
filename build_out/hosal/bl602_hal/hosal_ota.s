	.file	"hosal_ota.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.hosal_ota_start.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"FW"
	.section	.text.hosal_ota_start,"ax",@progbits
	.align	1
	.globl	hosal_ota_start
	.type	hosal_ota_start, @function
hosal_ota_start:
.LFB5:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_ota.c"
	.loc 1 43 1
	.cfi_startproc
.LVL0:
	.loc 1 44 5
	.loc 1 45 5
	.loc 1 46 5
	.loc 1 48 5
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	ra,60(sp)
	sw	s2,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 48 18
	lui	s1,%hi(.LANCHOR0)
	.loc 1 43 1
	.loc 1 48 18
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 48 8
	lw	a5,0(s1)
	beq	a5,zero,.L2
.LVL1:
.L6:
	.loc 1 50 16
	li	a5,0
.L1:
	.loc 1 106 1
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
	mv	a0,a5
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL2:
.L2:
	.cfi_restore_state
	mv	s2,a0
	.loc 1 53 5 is_stmt 1
	.loc 1 53 36 is_stmt 0
	li	a0,40
.LVL3:
	call	aos_malloc
.LVL4:
	.loc 1 53 14
	sw	a0,0(s1)
	.loc 1 54 5 is_stmt 1
	.loc 1 56 16 is_stmt 0
	li	a5,-1
	.loc 1 54 8
	beq	a0,zero,.L1
	.loc 1 58 5 is_stmt 1
	li	a2,40
	li	a1,0
	call	memset
.LVL5:
	.loc 1 60 5
	.loc 1 60 13 is_stmt 0
	lw	a1,0(s1)
	.loc 1 62 11
	lui	a0,%hi(.LC0)
	li	a2,1
	.loc 1 60 25
	sw	s2,4(a1)
	.loc 1 62 5 is_stmt 1
	.loc 1 62 11 is_stmt 0
	addi	a0,a0,%lo(.LC0)
	call	bl_mtd_open
.LVL6:
	.loc 1 63 5 is_stmt 1
	.loc 1 63 8 is_stmt 0
	beq	a0,zero,.L4
.LVL7:
.L9:
	.loc 1 84 9 is_stmt 1
	lw	a0,0(s1)
	call	aos_free
.LVL8:
	.loc 1 85 9
	.loc 1 86 16 is_stmt 0
	li	a5,-1
	.loc 1 85 18
	sw	zero,0(s1)
	.loc 1 86 9 is_stmt 1
	.loc 1 86 16 is_stmt 0
	j	.L1
.LVL9:
.L4:
	.loc 1 70 5 is_stmt 1
	.loc 1 70 9 is_stmt 0
	addi	a1,s0,-52
	call	hal_boot2_get_active_entries
.LVL10:
	.loc 1 70 8
	beq	a0,zero,.L5
.L10:
	.loc 1 82 9 is_stmt 1
	.loc 1 83 9
	lw	a5,0(s1)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL11:
	j	.L9
.L5:
	.loc 1 78 5
.LVL12:
	.loc 1 79 5
	.loc 1 81 5
	.loc 1 78 32 is_stmt 0
	lbu	a5,-50(s0)
	.loc 1 79 14
	addi	a4,s0,-16
	.loc 1 78 32
	seqz	a5,a5
	.loc 1 79 14
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 81 8
	lw	a5,-32(a5)
	bleu	s2,a5,.L6
	j	.L10
	.cfi_endproc
.LFE5:
	.size	hosal_ota_start, .-hosal_ota_start
	.section	.text.hosal_ota_update,"ax",@progbits
	.align	1
	.globl	hosal_ota_update
	.type	hosal_ota_update, @function
hosal_ota_update:
.LFB6:
	.loc 1 109 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 110 5
	.loc 1 111 5
	.loc 1 109 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 111 18
	lui	s6,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(s6)
	.loc 1 111 8
	beq	a5,zero,.L12
	.loc 1 116 5 is_stmt 1
	.loc 1 116 15 is_stmt 0
	lw	a4,4(a5)
.LVL14:
	.loc 1 117 5 is_stmt 1
	.loc 1 117 8 is_stmt 0
	bltu	a4,a0,.L12
	mv	s7,a2
	.loc 1 117 32 discriminator 1
	beq	a2,zero,.L12
	.loc 1 117 60 discriminator 2
	add	a5,a1,a3
	mv	s4,a1
	mv	s5,a3
	.loc 1 117 48 discriminator 2
	bgtu	a5,a4,.L12
	.loc 1 117 84 discriminator 3
	beq	a3,zero,.L12
.LBB4:
.LBB5:
	.loc 1 26 31
	addi	a5,a5,-1
	addi	s6,s6,%lo(.LANCHOR0)
.LBE5:
.LBE4:
	.loc 1 122 5 is_stmt 1
.LVL15:
.LBB8:
.LBB6:
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 25 5
	.loc 1 25 17 is_stmt 0
	srli	s1,a1,12
.LVL16:
	.loc 1 26 5 is_stmt 1
	.loc 1 26 15 is_stmt 0
	srli	s2,a5,12
.LVL17:
	.loc 1 28 5 is_stmt 1
	.loc 1 29 56 is_stmt 0
	li	s9,1
.LVL18:
.L13:
	.loc 1 28 31 is_stmt 1
	.loc 1 29 22 is_stmt 0
	lw	a5,0(s6)
	.loc 1 30 19
	lw	a0,0(a5)
	.loc 1 28 5
	bgeu	s2,s1,.L15
.LVL19:
.LBE6:
.LBE8:
	.loc 1 123 5 is_stmt 1
	.loc 1 128 5
	.loc 1 128 11 is_stmt 0
	mv	a3,s7
	mv	a2,s5
	mv	a1,s4
	call	bl_mtd_write
.LVL20:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 8 is_stmt 0
	snez	a0,a0
.LVL21:
	neg	a0,a0
	j	.L11
.LVL22:
.L15:
.LBB9:
.LBB7:
	.loc 1 29 9 is_stmt 1
	.loc 1 29 44 is_stmt 0
	srli	s3,s1,5
	.loc 1 29 37
	slli	s3,s3,2
	add	a5,a5,s3
	.loc 1 29 50
	lw	a4,8(a5)
	.loc 1 29 56
	sll	s8,s9,s1
	.loc 1 29 50
	and	a4,s8,a4
	.loc 1 29 12
	bne	a4,zero,.L14
	.loc 1 30 13 is_stmt 1
	.loc 1 30 19 is_stmt 0
	li	a2,4096
	slli	a1,s1,12
	call	bl_mtd_erase
.LVL23:
	.loc 1 31 13 is_stmt 1
	.loc 1 31 16 is_stmt 0
	bne	a0,zero,.L12
	.loc 1 35 13 is_stmt 1
	lw	a5,0(s6)
	add	s3,a5,s3
	.loc 1 35 49 is_stmt 0
	lw	a5,8(s3)
	or	a5,a5,s8
	sw	a5,8(s3)
.LVL24:
.L14:
	.loc 1 28 51 is_stmt 1
	.loc 1 28 56 is_stmt 0
	addi	s1,s1,1
.LVL25:
	j	.L13
.LVL26:
.L12:
.LBE7:
.LBE9:
	.loc 1 113 16
	li	a0,-1
.L11:
	.loc 1 135 1
	lw	ra,44(sp)
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
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	hosal_ota_update, .-hosal_ota_update
	.section	.rodata.hosal_ota_finish.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"\r\nHeader SET SHA256 Checksum:"
	.section	.text.hosal_ota_finish,"ax",@progbits
	.align	1
	.globl	hosal_ota_finish
	.type	hosal_ota_finish, @function
hosal_ota_finish:
.LFB7:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 139 5
	.loc 1 138 1 is_stmt 0
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sw	s0,248(sp)
	sw	s1,244(sp)
	sw	s2,240(sp)
	sw	ra,252(sp)
	sw	s3,236(sp)
	sw	s4,232(sp)
	sw	s5,228(sp)
	sw	s6,224(sp)
	sw	s7,220(sp)
	sw	s8,216(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	.loc 1 139 18
	lui	s1,%hi(.LANCHOR0)
	.loc 1 138 1
	.loc 1 139 18
	addi	s2,s1,%lo(.LANCHOR0)
	lw	a5,0(s2)
	.loc 1 139 8
	beq	a5,zero,.L41
	.loc 1 143 5 is_stmt 1
	.loc 1 144 5
	.loc 1 146 5
	.loc 1 146 17 is_stmt 0
	lw	s5,4(a5)
	.loc 1 146 8
	li	a4,32
	bgtu	s5,a4,.L31
.LVL28:
.L49:
	.loc 1 157 9
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL29:
	.loc 1 158 9 is_stmt 1
	lw	a0,0(s2)
	call	aos_free
.LVL30:
	.loc 1 159 9
	.loc 1 159 18 is_stmt 0
	sw	zero,0(s2)
	.loc 1 160 9 is_stmt 1
.L41:
	.loc 1 141 16 is_stmt 0
	li	s3,-1
	j	.L29
.LVL31:
.L31:
	mv	s4,a0
	mv	s7,a1
	.loc 1 153 5 is_stmt 1
	.loc 1 155 9 is_stmt 0
	li	a0,0
.LVL32:
	addi	a1,s0,-192
.LVL33:
	call	hal_boot2_get_active_entries
.LVL34:
	.loc 1 153 14
	addi	s5,s5,-32
.LVL35:
	.loc 1 155 5 is_stmt 1
	.loc 1 155 9 is_stmt 0
	mv	s3,a0
	.loc 1 155 8
	beq	a0,zero,.L32
.L50:
	.loc 1 156 9 is_stmt 1
	.loc 1 157 9
	lw	a5,0(s2)
	j	.L49
.L32:
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 162 5
	.loc 1 164 5
	.loc 1 164 8 is_stmt 0
	beq	s4,zero,.L33
.LBB10:
	.loc 1 166 9 is_stmt 1
	.loc 1 166 17 is_stmt 0
	li	a2,28
	li	a1,0
	addi	a0,s0,-252
	sw	zero,-256(s0)
	call	memset
.LVL36:
	.loc 1 167 9 is_stmt 1
	.loc 1 167 17 is_stmt 0
	li	a2,28
	li	a1,0
	addi	a0,s0,-220
	sw	zero,-224(s0)
	call	memset
.LVL37:
	.loc 1 168 9 is_stmt 1
	.loc 1 169 9
	.loc 1 170 9
	.loc 1 171 9
	.loc 1 173 9
	.loc 1 173 17 is_stmt 0
	li	a0,512
	call	aos_malloc
.LVL38:
	mv	s4,a0
.LVL39:
	.loc 1 174 9 is_stmt 1
	.loc 1 174 12 is_stmt 0
	beq	a0,zero,.L50
	.loc 1 182 9 is_stmt 1
	addi	a0,s0,-156
.LVL40:
	call	utils_sha256_init
.LVL41:
	.loc 1 183 9
	addi	a0,s0,-156
	call	utils_sha256_starts
.LVL42:
	.loc 1 185 9
	li	a2,32
	li	a1,0
	addi	a0,s0,-256
	call	memset
.LVL43:
	.loc 1 186 9
	li	a2,32
	li	a1,0
	addi	a0,s0,-224
	call	memset
.LVL44:
	.loc 1 187 9
	.loc 1 188 9
	.loc 1 187 16 is_stmt 0
	li	s2,0
	li	s8,512
.LVL45:
.L36:
	.loc 1 188 15 is_stmt 1
	bltu	s2,s5,.L39
	.loc 1 203 9
	addi	a1,s0,-256
	addi	a0,s0,-156
	call	utils_sha256_finish
.LVL46:
	.loc 1 204 9
	mv	a0,s4
	call	aos_free
.LVL47:
	.loc 1 206 9
	lw	a5,0(s1)
	li	a2,32
	mv	a1,s2
	lw	a0,0(a5)
	addi	a3,s0,-224
	call	bl_mtd_read
.LVL48:
	.loc 1 207 9
	.loc 1 207 21
	.loc 1 210 9
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	puts
.LVL49:
	.loc 1 211 9
	.loc 1 211 21
	.loc 1 215 9
	.loc 1 215 13 is_stmt 0
	li	a2,32
	addi	a1,s0,-224
	addi	a0,s0,-256
	call	memcmp
.LVL50:
	.loc 1 215 12
	beq	a0,zero,.L40
	.loc 1 216 13 is_stmt 1
	.loc 1 217 13
	lw	a5,0(s1)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL51:
	.loc 1 218 13
	lw	a0,0(s1)
	call	aos_free
.LVL52:
	.loc 1 219 13
	.loc 1 220 13 is_stmt 0
	addi	a0,s0,-156
	.loc 1 219 22
	sw	zero,0(s1)
	.loc 1 220 13 is_stmt 1
	call	utils_sha256_free
.LVL53:
	.loc 1 221 13
	.loc 1 221 20 is_stmt 0
	j	.L41
.L39:
	.loc 1 189 13 is_stmt 1
	.loc 1 189 23 is_stmt 0
	sub	s6,s5,s2
	bleu	s6,s8,.L37
	li	s6,512
.L37:
.LVL54:
	.loc 1 190 13 is_stmt 1
	.loc 1 190 17 is_stmt 0
	lw	a5,0(s1)
	mv	a3,s4
	mv	a2,s6
	lw	a0,0(a5)
	mv	a1,s2
	call	bl_mtd_read
.LVL55:
	.loc 1 190 16
	beq	a0,zero,.L38
	.loc 1 191 17 is_stmt 1
	.loc 1 192 17
	lw	a5,0(s1)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL56:
	.loc 1 193 17
	lw	a0,0(s1)
	call	aos_free
.LVL57:
	.loc 1 194 17
	.loc 1 195 17 is_stmt 0
	mv	a0,s4
	.loc 1 194 26
	sw	zero,0(s1)
	.loc 1 195 17 is_stmt 1
	call	aos_free
.LVL58:
	.loc 1 196 17
	.loc 1 196 24 is_stmt 0
	j	.L41
.L38:
	.loc 1 199 13 is_stmt 1
	mv	a2,s6
	mv	a1,s4
	addi	a0,s0,-156
	call	utils_sha256_update
.LVL59:
	.loc 1 200 13
	.loc 1 200 20 is_stmt 0
	add	s2,s2,s6
.LVL60:
	j	.L36
.LVL61:
.L40:
	.loc 1 224 9 is_stmt 1
	addi	a0,s0,-156
	call	utils_sha256_free
.LVL62:
.L33:
.LBE10:
	.loc 1 227 5
	.loc 1 229 5 is_stmt 0
	addi	a0,s0,-192
	.loc 1 227 17
	sw	s5,-164(s0)
	.loc 1 228 5 is_stmt 1
	.loc 1 229 5
	call	hal_boot2_update_ptable
.LVL63:
	.loc 1 230 5
	lw	a5,0(s1)
	lw	a0,0(a5)
	call	bl_mtd_close
.LVL64:
	.loc 1 231 5
	lw	a0,0(s1)
	call	aos_free
.LVL65:
	.loc 1 232 5
	.loc 1 232 14 is_stmt 0
	sw	zero,0(s1)
	.loc 1 234 5 is_stmt 1
	.loc 1 234 8 is_stmt 0
	beq	s7,zero,.L29
	.loc 1 235 9 is_stmt 1
	call	hal_reboot
.LVL66:
.L29:
	.loc 1 239 1 is_stmt 0
	lw	ra,252(sp)
	.cfi_restore 1
	lw	s0,248(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	lw	s1,244(sp)
	.cfi_restore 9
	lw	s2,240(sp)
	.cfi_restore 18
	lw	s4,232(sp)
	.cfi_restore 20
	lw	s5,228(sp)
	.cfi_restore 21
	lw	s6,224(sp)
	.cfi_restore 22
	lw	s7,220(sp)
	.cfi_restore 23
	lw	s8,216(sp)
	.cfi_restore 24
	mv	a0,s3
	lw	s3,236(sp)
	.cfi_restore 19
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	hosal_ota_finish, .-hosal_ota_finish
	.section	.rodata.hosal_ota_read.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"please start ota first\r\n"
	.align	2
.LC3:
	.string	"parm is error!\r\n"
	.section	.text.hosal_ota_read,"ax",@progbits
	.align	1
	.globl	hosal_ota_read
	.type	hosal_ota_read, @function
hosal_ota_read:
.LFB8:
	.loc 1 242 1 is_stmt 1
	.cfi_startproc
.LVL67:
	.loc 1 243 5
	.loc 1 242 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 243 18
	lui	a4,%hi(.LANCHOR0)
	lw	a4,%lo(.LANCHOR0)(a4)
	.loc 1 243 8
	bne	a4,zero,.L52
	.loc 1 244 9 is_stmt 1
	lui	a0,%hi(.LC2)
.LVL68:
	addi	a0,a0,%lo(.LC2)
.LVL69:
.L60:
	.loc 1 249 9 is_stmt 0
	call	printf
.LVL70:
	.loc 1 250 9 is_stmt 1
	.loc 1 254 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL71:
.L52:
	.cfi_restore_state
	mv	a3,a1
	.loc 1 248 5 is_stmt 1
	.loc 1 248 8 is_stmt 0
	beq	a1,zero,.L54
	.loc 1 248 22 discriminator 1
	lw	a6,4(a4)
	.loc 1 248 34 discriminator 1
	add	a1,a0,a2
.LVL72:
	.loc 1 248 22 discriminator 1
	bgtu	a1,a6,.L54
	.loc 1 248 68 discriminator 2
	bne	a2,zero,.L55
.L54:
	.loc 1 249 9 is_stmt 1
	lui	a0,%hi(.LC3)
.LVL73:
	addi	a0,a0,%lo(.LC3)
	j	.L60
.LVL74:
.L55:
	.loc 1 253 5
	.loc 1 254 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 253 12
	mv	a1,a0
	lw	a0,0(a4)
.LVL75:
	.loc 1 254 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 253 12
	tail	bl_mtd_read
.LVL76:
	.cfi_endproc
.LFE8:
	.size	hosal_ota_read, .-hosal_ota_read
	.section	.sbss.ota_parm,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ota_parm, @object
	.size	ota_parm, 4
ota_parm:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_boot2.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_sha256.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/sys/blmtd/include/bl_mtd.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_sys.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8e1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF71
	.byte	0xc
	.4byte	.LASF72
	.4byte	.LASF73
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
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
	.4byte	0x8c
	.byte	0x7
	.byte	0x24
	.byte	0x4
	.byte	0x9
	.byte	0x9
	.4byte	0x11c
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x8c
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xc
	.byte	0xd
	.4byte	0x8c
	.byte	0x2
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd
	.byte	0xd
	.4byte	0x11c
	.byte	0x3
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xe
	.byte	0xe
	.4byte	0x12c
	.byte	0xc
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0xf
	.byte	0xe
	.4byte	0x12c
	.byte	0x14
	.byte	0x9
	.string	"len"
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.4byte	0x98
	.byte	0x1c
	.byte	0x9
	.string	"age"
	.byte	0x4
	.byte	0x11
	.byte	0xe
	.4byte	0x98
	.byte	0x20
	.byte	0
	.byte	0xa
	.4byte	0x8c
	.4byte	0x12c
	.byte	0xb
	.4byte	0x7c
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	0x98
	.4byte	0x13c
	.byte	0xb
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x12
	.byte	0x3
	.4byte	0xaa
	.byte	0x7
	.byte	0x6c
	.byte	0x5
	.byte	0x15
	.byte	0x9
	.4byte	0x186
	.byte	0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0xe
	.4byte	0x12c
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x17
	.byte	0xe
	.4byte	0x186
	.byte	0x8
	.byte	0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x196
	.byte	0x28
	.byte	0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x19
	.byte	0x9
	.4byte	0x75
	.byte	0x68
	.byte	0
	.byte	0xa
	.4byte	0x98
	.4byte	0x196
	.byte	0xb
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	0x38
	.4byte	0x1a6
	.byte	0xb
	.4byte	0x7c
	.byte	0x3f
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1a
	.byte	0x3
	.4byte	0x148
	.byte	0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x5
	.byte	0xf
	.4byte	0x83
	.byte	0xc
	.4byte	.LASF74
	.byte	0x28
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.4byte	0x1f3
	.byte	0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd
	.byte	0x15
	.4byte	0x1b2
	.byte	0
	.byte	0x8
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0x98
	.byte	0x4
	.byte	0x8
	.4byte	.LASF29
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0x186
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.4byte	0x1be
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x12
	.byte	0x1a
	.4byte	0x211
	.byte	0x5
	.byte	0x3
	.4byte	ota_parm
	.byte	0x6
	.byte	0x4
	.4byte	0x1f3
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf1
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x27c
	.byte	0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf1
	.byte	0x1d
	.4byte	0x98
	.4byte	.LLST20
	.byte	0x10
	.string	"buf"
	.byte	0x1
	.byte	0xf1
	.byte	0x2e
	.4byte	0xa4
	.4byte	.LLST21
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf1
	.byte	0x3c
	.4byte	0x98
	.4byte	.LLST22
	.byte	0x11
	.4byte	.LVL70
	.4byte	0x7f3
	.byte	0x12
	.4byte	.LVL76
	.4byte	0x7ff
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x591
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x89
	.byte	0x1e
	.4byte	0x8c
	.4byte	.LLST14
	.byte	0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x89
	.byte	0x32
	.4byte	0x8c
	.4byte	.LLST15
	.byte	0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.4byte	0x98
	.4byte	.LLST16
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x90
	.byte	0x1f
	.4byte	0x13c
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x15
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x534
	.byte	0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa6
	.byte	0x11
	.4byte	0x591
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7e
	.byte	0xd
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa7
	.byte	0x11
	.4byte	0x591
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7e
	.byte	0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa8
	.byte	0x12
	.4byte	0x98
	.4byte	.LLST17
	.byte	0xd
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa9
	.byte	0x1c
	.4byte	0x1a6
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x16
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.4byte	0x75
	.byte	0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0xaa
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST18
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0xab
	.byte	0x12
	.4byte	0xa4
	.4byte	.LLST19
	.byte	0x17
	.4byte	.LVL36
	.4byte	0x80b
	.4byte	0x36c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x84,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x17
	.4byte	.LVL37
	.4byte	0x80b
	.4byte	0x38b
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa4,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x17
	.4byte	.LVL38
	.4byte	0x816
	.4byte	0x3a0
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x17
	.4byte	.LVL41
	.4byte	0x823
	.4byte	0x3b5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x17
	.4byte	.LVL42
	.4byte	0x82f
	.4byte	0x3ca
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x17
	.4byte	.LVL43
	.4byte	0x83b
	.4byte	0x3ea
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x17
	.4byte	.LVL44
	.4byte	0x83b
	.4byte	0x40a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x17
	.4byte	.LVL46
	.4byte	0x847
	.4byte	0x426
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x7e
	.byte	0
	.byte	0x17
	.4byte	.LVL47
	.4byte	0x853
	.4byte	0x43a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL48
	.4byte	0x7ff
	.4byte	0x45b
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0
	.byte	0x17
	.4byte	.LVL49
	.4byte	0x860
	.4byte	0x472
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x17
	.4byte	.LVL50
	.4byte	0x86c
	.4byte	0x494
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LVL51
	.4byte	0x878
	.byte	0x11
	.4byte	.LVL52
	.4byte	0x853
	.byte	0x17
	.4byte	.LVL53
	.4byte	0x884
	.4byte	0x4bb
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x17
	.4byte	.LVL55
	.4byte	0x7ff
	.4byte	0x4db
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL56
	.4byte	0x878
	.byte	0x11
	.4byte	.LVL57
	.4byte	0x853
	.byte	0x17
	.4byte	.LVL58
	.4byte	0x853
	.4byte	0x501
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL59
	.4byte	0x890
	.4byte	0x522
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL62
	.4byte	0x884
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL29
	.4byte	0x878
	.byte	0x11
	.4byte	.LVL30
	.4byte	0x853
	.byte	0x17
	.4byte	.LVL34
	.4byte	0x89c
	.4byte	0x560
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x17
	.4byte	.LVL63
	.4byte	0x8a8
	.4byte	0x575
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x11
	.4byte	.LVL64
	.4byte	0x878
	.byte	0x11
	.4byte	.LVL65
	.4byte	0x853
	.byte	0x11
	.4byte	.LVL66
	.4byte	0x8b4
	.byte	0
	.byte	0xa
	.4byte	0x8c
	.4byte	0x5a1
	.byte	0xb
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6c
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x6a2
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6c
	.byte	0x1f
	.4byte	0x98
	.4byte	.LLST2
	.byte	0xf
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6c
	.byte	0x32
	.4byte	0x98
	.4byte	.LLST3
	.byte	0x10
	.string	"buf"
	.byte	0x1
	.byte	0x6c
	.byte	0x43
	.4byte	0xa4
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6c
	.byte	0x51
	.4byte	0x98
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.4byte	0x98
	.4byte	.LLST6
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x6e
	.byte	0x19
	.4byte	0x98
	.4byte	.LLST7
	.byte	0x1a
	.4byte	0x799
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7a
	.byte	0xb
	.4byte	0x685
	.byte	0x1b
	.4byte	0x7b6
	.4byte	.LLST8
	.byte	0x1b
	.4byte	0x7aa
	.4byte	.LLST9
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0
	.byte	0x1d
	.4byte	0x7c2
	.4byte	.LLST10
	.byte	0x1d
	.4byte	0x7ce
	.4byte	.LLST11
	.byte	0x1d
	.4byte	0x7da
	.4byte	.LLST12
	.byte	0x1d
	.4byte	0x7e6
	.4byte	.LLST13
	.byte	0x18
	.4byte	.LVL23
	.4byte	0x8c0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL20
	.4byte	0x8cc
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x799
	.byte	0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2a
	.byte	0x1e
	.4byte	0x98
	.4byte	.LLST0
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x98
	.byte	0x13
	.byte	0x78
	.byte	0x4e
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.byte	0x4
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2d
	.byte	0x18
	.4byte	0x98
	.byte	0x11
	.byte	0x78
	.byte	0x4e
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2e
	.byte	0x1f
	.4byte	0x13c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x816
	.4byte	0x73d
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x17
	.4byte	.LVL5
	.4byte	0x83b
	.4byte	0x756
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x17
	.4byte	.LVL6
	.4byte	0x8d8
	.4byte	0x772
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL8
	.4byte	0x853
	.byte	0x17
	.4byte	.LVL10
	.4byte	0x89c
	.4byte	0x78f
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x4c
	.byte	0
	.byte	0x11
	.4byte	.LVL11
	.4byte	0x878
	.byte	0
	.byte	0x1e
	.4byte	.LASF75
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0x7f3
	.byte	0x1f
	.4byte	.LASF31
	.byte	0x1
	.byte	0x14
	.byte	0x25
	.4byte	0x98
	.byte	0x20
	.string	"len"
	.byte	0x1
	.byte	0x14
	.byte	0x36
	.4byte	0x98
	.byte	0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0x98
	.byte	0x21
	.4byte	.LASF50
	.byte	0x1
	.byte	0x16
	.byte	0x1b
	.4byte	0x98
	.byte	0x21
	.4byte	.LASF51
	.byte	0x1
	.byte	0x16
	.byte	0x26
	.4byte	0x98
	.byte	0x16
	.string	"ret"
	.byte	0x1
	.byte	0x17
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0x22
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x22
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x17
	.byte	0x5
	.byte	0x23
	.4byte	.LASF57
	.4byte	.LASF76
	.byte	0xb
	.byte	0
	.byte	0x24
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x1bf
	.byte	0xb
	.byte	0x22
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.byte	0x26
	.byte	0x6
	.byte	0x22
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x5
	.byte	0x3d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.byte	0x22
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.byte	0x4e
	.byte	0x6
	.byte	0x24
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x1e1
	.byte	0xa
	.byte	0x22
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x7
	.byte	0xdd
	.byte	0x5
	.byte	0x22
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x9
	.byte	0x1e
	.byte	0x5
	.byte	0x22
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.byte	0x22
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x5
	.byte	0x2d
	.byte	0x6
	.byte	0x22
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.byte	0x46
	.byte	0x6
	.byte	0x22
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x4
	.byte	0x34
	.byte	0x5
	.byte	0x22
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x4
	.byte	0x35
	.byte	0x5
	.byte	0x22
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0xa
	.byte	0x3
	.byte	0x6
	.byte	0x22
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.byte	0x22
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.byte	0x22
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0x11
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
	.byte	0x9
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
	.byte	0x18
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0
	.byte	0
	.byte	0x24
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
.LLST20:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL76-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL76-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL67
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL70-1
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL76-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL26
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL26
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL26
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"hosal_ota_erase"
.LASF54:
	.string	"aos_malloc"
.LASF35:
	.string	"check_hash"
.LASF45:
	.string	"hosal_ota_update"
.LASF68:
	.string	"bl_mtd_erase"
.LASF16:
	.string	"activeIndex"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"auto_reset"
.LASF41:
	.string	"dst_sha"
.LASF53:
	.string	"bl_mtd_read"
.LASF6:
	.string	"__uint32_t"
.LASF18:
	.string	"Address"
.LASF70:
	.string	"bl_mtd_open"
.LASF55:
	.string	"utils_sha256_init"
.LASF62:
	.string	"bl_mtd_close"
.LASF76:
	.string	"__builtin_memset"
.LASF29:
	.string	"sector_erased"
.LASF30:
	.string	"hosal_ota_parm_t"
.LASF51:
	.string	"index"
.LASF64:
	.string	"utils_sha256_update"
.LASF47:
	.string	"hosal_ota_start"
.LASF49:
	.string	"start_index"
.LASF19:
	.string	"maxLen"
.LASF33:
	.string	"hosal_ota_read"
.LASF58:
	.string	"utils_sha256_finish"
.LASF43:
	.string	"sha256_ctx"
.LASF15:
	.string	"device"
.LASF61:
	.string	"memcmp"
.LASF8:
	.string	"long long int"
.LASF57:
	.string	"memset"
.LASF25:
	.string	"iot_sha256_context"
.LASF4:
	.string	"long int"
.LASF48:
	.string	"ota_addr"
.LASF31:
	.string	"offset"
.LASF26:
	.string	"bl_mtd_handle_t"
.LASF5:
	.string	"__uint8_t"
.LASF24:
	.string	"is224"
.LASF22:
	.string	"state"
.LASF44:
	.string	"r_buf"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"utils_sha256_starts"
.LASF20:
	.string	"HALPartition_Entry_Config"
.LASF38:
	.string	"bin_size"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF73:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF27:
	.string	"mtd_handle"
.LASF37:
	.string	"ota_parm"
.LASF60:
	.string	"puts"
.LASF65:
	.string	"hal_boot2_get_active_entries"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF34:
	.string	"hosal_ota_finish"
.LASF52:
	.string	"printf"
.LASF14:
	.string	"type"
.LASF72:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_ota.c"
.LASF74:
	.string	"ota_parm_s"
.LASF39:
	.string	"ptEntry"
.LASF28:
	.string	"file_size"
.LASF32:
	.string	"buf_len"
.LASF23:
	.string	"buffer"
.LASF69:
	.string	"bl_mtd_write"
.LASF7:
	.string	"long unsigned int"
.LASF71:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF42:
	.string	"read_size"
.LASF40:
	.string	"sha_check"
.LASF50:
	.string	"end_index"
.LASF63:
	.string	"utils_sha256_free"
.LASF12:
	.string	"uint8_t"
.LASF17:
	.string	"name"
.LASF59:
	.string	"aos_free"
.LASF21:
	.string	"total"
.LASF66:
	.string	"hal_boot2_update_ptable"
.LASF67:
	.string	"hal_reboot"
.LASF46:
	.string	"filesize"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
