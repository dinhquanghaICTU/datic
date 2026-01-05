	.file	"app_btn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_btn_initialize,"ax",@progbits
	.align	1
	.globl	app_btn_initialize
	.type	app_btn_initialize, @function
app_btn_initialize:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/third_party/lib_button/app_btn.c"
	.loc 1 29 1
	.cfi_startproc
.LVL0:
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 32 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 29 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 38 8
	lbu	a4,4(a0)
	li	a5,4
	mv	s1,a0
	.loc 1 38 5 is_stmt 1
	.loc 1 38 8 is_stmt 0
	bgtu	a4,a5,.L1
	.loc 1 44 5 is_stmt 1
	lui	s2,%hi(.LANCHOR0)
	li	a2,20
	li	a1,0
	addi	a0,s2,%lo(.LANCHOR0)
.LVL1:
	call	memset
.LVL2:
	.loc 1 45 5
	mv	a1,s1
	addi	a0,s2,%lo(.LANCHOR0)
	li	a2,20
	.loc 1 44 5 is_stmt 0
	addi	s4,s2,%lo(.LANCHOR0)
	.loc 1 45 5
	call	memcpy
.LVL3:
	.loc 1 46 5 is_stmt 1
	.loc 1 46 17 is_stmt 0
	lw	a5,0(s4)
	lui	s3,%hi(.LANCHOR1)
	.loc 1 50 28
	lui	s4,%hi(.LANCHOR2)
	.loc 1 59 23
	lui	s5,%hi(.LANCHOR3)
	.loc 1 46 17
	sw	a5,%lo(.LANCHOR1)(s3)
	.loc 1 48 5 is_stmt 1
	.loc 1 48 12 is_stmt 0
	li	s1,0
.LVL4:
	addi	s2,s2,%lo(.LANCHOR0)
	addi	s3,s3,%lo(.LANCHOR1)
	.loc 1 50 28
	addi	s4,s4,%lo(.LANCHOR2)
	.loc 1 59 23
	addi	s5,s5,%lo(.LANCHOR3)
.LVL5:
.L4:
	.loc 1 48 17 is_stmt 1 discriminator 1
	.loc 1 48 5 is_stmt 0 discriminator 1
	lbu	a5,4(s2)
	bgtu	a5,s1,.L6
.LVL6:
.L1:
	.loc 1 61 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L6:
	.cfi_restore_state
	.loc 1 50 9 is_stmt 1
	.loc 1 50 44 is_stmt 0
	lw	a4,0(s3)
	.loc 1 50 41
	slli	s6,s1,4
	.loc 1 51 25
	lw	a5,12(s2)
	.loc 1 50 44
	add	a4,a4,s6
	lw	a0,0(a4)
	.loc 1 50 28
	slli	a4,s1,2
	add	a4,s4,a4
	sw	a0,0(a4)
	.loc 1 51 9 is_stmt 1
	.loc 1 51 12 is_stmt 0
	beq	a5,zero,.L5
	.loc 1 53 13 is_stmt 1
	jalr	a5
.LVL8:
.L5:
	.loc 1 56 9 discriminator 2
	.loc 1 56 20 is_stmt 0 discriminator 2
	lw	a5,0(s3)
	add	a5,a5,s6
	.loc 1 57 9 is_stmt 1 discriminator 2
	.loc 1 58 35 is_stmt 0 discriminator 2
	lbu	a4,8(a5)
	.loc 1 56 37 discriminator 2
	sh	zero,12(a5)
	.loc 1 58 9 is_stmt 1 discriminator 2
	.loc 1 58 35 is_stmt 0 discriminator 2
	sb	a4,4(a5)
	.loc 1 59 9 is_stmt 1 discriminator 2
	.loc 1 59 23 is_stmt 0 discriminator 2
	add	a5,s5,s1
	.loc 1 48 46 discriminator 2
	addi	s1,s1,1
.LVL9:
	.loc 1 59 23 discriminator 2
	sb	a4,0(a5)
	.loc 1 48 45 is_stmt 1 discriminator 2
	.loc 1 48 46 is_stmt 0 discriminator 2
	andi	s1,s1,0xff
.LVL10:
	j	.L4
.LVL11:
.L11:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	ret
	.cfi_endproc
.LFE4:
	.size	app_btn_initialize, .-app_btn_initialize
	.section	.text.app_btn_scan,"ax",@progbits
	.align	1
	.globl	app_btn_scan
	.type	app_btn_scan, @function
app_btn_scan:
.LFB5:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 65 5
	.loc 1 66 5
	.loc 1 68 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,104(sp)
	sw	s4,88(sp)
	sw	ra,108(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	.loc 1 68 9
	lui	s4,%hi(.LANCHOR1)
	.loc 1 68 8
	lw	a5,%lo(.LANCHOR1)(s4)
	beq	a5,zero,.L14
	.loc 1 74 5 is_stmt 1
	.loc 1 74 27 is_stmt 0
	lui	s3,%hi(.LANCHOR0)
	addi	a5,s3,%lo(.LANCHOR0)
	.loc 1 74 8
	lbu	a4,4(a5)
	li	a5,4
	addi	s3,s3,%lo(.LANCHOR0)
	bgtu	a4,a5,.L14
	.loc 1 79 26
	lui	a5,%hi(g_btn_filter_cnt)
	.loc 1 79 8
	lbu	a4,%lo(g_btn_filter_cnt)(a5)
	sw	a5,-84(s0)
	addi	s4,s4,%lo(.LANCHOR1)
	.loc 1 79 5 is_stmt 1
	.loc 1 79 8 is_stmt 0
	bne	a4,zero,.L17
	.loc 1 81 9 is_stmt 1
	.loc 1 81 26 is_stmt 0
	lw	a4,-84(s0)
	li	a5,1
	sb	a5,%lo(g_btn_filter_cnt)(a4)
.L17:
.LBB2:
	.loc 1 86 17 discriminator 1
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	sw	a5,-96(s0)
	.loc 1 117 23 discriminator 1
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
.LBB3:
	.loc 1 242 83 discriminator 1
	lui	s6,%hi(.LANCHOR5)
	.loc 1 243 33 discriminator 1
	lui	s7,%hi(.LANCHOR14)
.LBE3:
.LBB4:
	.loc 1 180 25 discriminator 1
	li	s1,0
.LBE4:
	.loc 1 117 23 discriminator 1
	sw	a5,-88(s0)
.LBB5:
	.loc 1 242 83 discriminator 1
	addi	s6,s6,%lo(.LANCHOR5)
	.loc 1 243 33 discriminator 1
	addi	s7,s7,%lo(.LANCHOR14)
.LVL13:
.L18:
.LBE5:
.LBE2:
	.loc 1 84 17 is_stmt 1 discriminator 1
	.loc 1 84 5 is_stmt 0 discriminator 1
	lbu	a5,4(s3)
	bgtu	a5,s1,.L42
.LVL14:
.L14:
	.loc 1 254 1
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
	lw	s10,64(sp)
	.cfi_restore 26
	lw	s11,60(sp)
	.cfi_restore 27
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L42:
	.cfi_restore_state
.LBB10:
	.loc 1 86 9 is_stmt 1
	.loc 1 86 17 is_stmt 0
	lw	a5,-96(s0)
	slli	s2,s1,2
	.loc 1 88 37
	slli	s5,s1,4
	.loc 1 86 17
	add	a4,a5,s2
	lw	a0,0(a4)
	lw	a5,16(s3)
	jalr	a5
.LVL16:
	.loc 1 88 9 is_stmt 1
	.loc 1 88 37 is_stmt 0
	lw	a5,0(s4)
	.loc 1 86 63
	snez	a0,a0
.LVL17:
	.loc 1 93 45
	lw	a3,-84(s0)
	.loc 1 88 37
	add	a5,a5,s5
	lbu	a4,12(a5)
	.loc 1 93 45
	lbu	a3,%lo(g_btn_filter_cnt)(a3)
	.loc 1 88 37
	add	a0,a0,a4
	.loc 1 89 40
	lbu	a4,13(a5)
	.loc 1 88 37
	andi	a0,a0,0xff
	sb	a0,12(a5)
	.loc 1 89 9 is_stmt 1
	.loc 1 89 40 is_stmt 0
	addi	a4,a4,1
	andi	a4,a4,0xff
	sb	a4,13(a5)
	.loc 1 93 9 is_stmt 1
	.loc 1 93 12 is_stmt 0
	bltu	a4,a3,.L20
	.loc 1 98 9 is_stmt 1
	.loc 1 98 12 is_stmt 0
	bne	a0,a3,.L21
	.loc 1 100 13 is_stmt 1
	.loc 1 100 60 is_stmt 0
	addi	a4,a0,-1
	.loc 1 101 45
	sb	a0,13(a5)
	.loc 1 100 41
	sb	a4,12(a5)
	.loc 1 101 13 is_stmt 1
	.loc 1 102 13
.LVL18:
	.loc 1 102 19 is_stmt 0
	li	a0,1
.LVL19:
.L22:
	.loc 1 117 9 is_stmt 1
	.loc 1 117 23 is_stmt 0
	lw	a4,-88(s0)
	lui	s10,%hi(.LANCHOR4)
	lui	s9,%hi(.LANCHOR6)
	add	a4,a4,s1
	sb	a0,0(a4)
	.loc 1 118 9 is_stmt 1
	.loc 1 118 12 is_stmt 0
	lbu	a4,4(a5)
	addi	s10,s10,%lo(.LANCHOR4)
	addi	s9,s9,%lo(.LANCHOR6)
	beq	a4,a0,.L24
	.loc 1 120 13 is_stmt 1
	.loc 1 120 16 is_stmt 0
	lw	a5,8(a5)
	.loc 1 123 38
	li	a4,1
	sll	a4,a4,s1
	.loc 1 120 16
	beq	a0,a5,.L25
	.loc 1 123 17 is_stmt 1
	.loc 1 123 33 is_stmt 0
	lw	a5,0(s10)
	or	a4,a5,a4
	.loc 1 124 43
	lw	a5,8(s3)
	.loc 1 123 33
	sw	a4,0(s10)
	.loc 1 124 17 is_stmt 1
	.loc 1 124 43 is_stmt 0
	jalr	a5
.LVL20:
	.loc 1 124 41
	add	a5,s6,s2
	sw	a0,0(a5)
.L24:
	.loc 1 134 9 is_stmt 1
	.loc 1 134 47 is_stmt 0
	lw	a4,-88(s0)
	.loc 1 134 35
	lw	a5,0(s4)
	lui	s11,%hi(.LANCHOR11)
	.loc 1 134 47
	add	s8,a4,s1
	.loc 1 134 35
	lbu	a4,0(s8)
	add	a5,a5,s5
	addi	s11,s11,%lo(.LANCHOR11)
	sb	a4,4(a5)
	.loc 1 136 9 is_stmt 1
	.loc 1 136 24 is_stmt 0
	lw	a5,8(s3)
	jalr	a5
.LVL21:
	.loc 1 137 44
	lw	a5,0(s4)
	.loc 1 137 23
	lbu	a3,0(s8)
	lui	s8,%hi(.LANCHOR10)
	.loc 1 137 44
	add	a5,a5,s5
	.loc 1 137 12
	lw	a5,8(a5)
	.loc 1 136 24
	mv	a4,a0
.LVL22:
	.loc 1 137 9 is_stmt 1
	addi	s8,s8,%lo(.LANCHOR10)
	.loc 1 137 12 is_stmt 0
	beq	a3,a5,.L26
	.loc 1 139 13 is_stmt 1
	.loc 1 139 43 is_stmt 0
	add	a5,s6,s2
	.loc 1 139 21
	lw	a5,0(a5)
	.loc 1 139 16
	lui	a3,%hi(.LANCHOR8)
	lw	a3,%lo(.LANCHOR8)(a3)
	.loc 1 139 21
	sub	a5,a0,a5
	.loc 1 139 16
	bltu	a5,a3,.L26
	.loc 1 142 17 is_stmt 1
	.loc 1 142 38 is_stmt 0
	lui	a3,%hi(.LANCHOR9)
	addi	a3,a3,%lo(.LANCHOR9)
	lw	a2,0(a3)
	lui	a5,%hi(.LANCHOR7)
	addi	a5,a5,%lo(.LANCHOR7)
	srl	a1,a2,s1
	.loc 1 142 44
	andi	a1,a1,1
	.loc 1 144 50
	add	a5,a5,s2
	.loc 1 142 20
	beq	a1,zero,.L27
	.loc 1 144 21 is_stmt 1
	.loc 1 144 29 is_stmt 0
	lw	a2,0(a5)
	.loc 1 144 24
	li	a3,4096
	.loc 1 144 29
	sw	a5,-100(s0)
	sub	a2,a0,a2
	.loc 1 144 24
	addi	a3,a3,903
	bleu	a2,a3,.L26
	.loc 1 147 50
	lw	a3,8(s3)
	sw	a0,-92(s0)
	.loc 1 147 25 is_stmt 1
	.loc 1 147 50 is_stmt 0
	jalr	a3
.LVL23:
	.loc 1 147 48
	lw	a5,-100(s0)
	.loc 1 148 43
	lw	a3,0(s8)
	lw	a4,-92(s0)
	.loc 1 147 48
	sw	a0,0(a5)
	.loc 1 148 25 is_stmt 1
	.loc 1 148 49 is_stmt 0
	li	a5,1
	sll	a5,a5,s1
	.loc 1 148 43
	or	a5,a5,a3
	sw	a5,0(s8)
.LVL24:
.L26:
	.loc 1 161 9 is_stmt 1
	.loc 1 161 30 is_stmt 0
	lw	a5,0(s10)
	srl	a5,a5,s1
	.loc 1 161 36
	andi	a5,a5,1
	.loc 1 161 12
	beq	a5,zero,.L28
	.loc 1 163 13 is_stmt 1
	.loc 1 163 38 is_stmt 0
	lui	a5,%hi(.LANCHOR12)
	addi	a3,a5,%lo(.LANCHOR12)
	add	a3,a3,s2
	lw	a0,0(a3)
	addi	a5,a5,%lo(.LANCHOR12)
	sw	a5,-92(s0)
	lui	a5,%hi(.LANCHOR13)
	addi	a5,a5,%lo(.LANCHOR13)
	.loc 1 163 16
	bne	a0,zero,.L29
	.loc 1 165 17 is_stmt 1
	.loc 1 165 42 is_stmt 0
	sw	a4,0(a3)
	.loc 1 168 13 is_stmt 1
.L30:
.LBB6:
	.loc 1 174 17
	.loc 1 174 36 is_stmt 0
	add	a5,a5,s1
	lbu	a4,0(a5)
	.loc 1 178 20
	li	a3,1
	.loc 1 174 36
	addi	a4,a4,1
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 176 17 is_stmt 1
.LVL25:
	.loc 1 178 17
	.loc 1 178 20 is_stmt 0
	beq	a4,a3,.L43
	.loc 1 182 22 is_stmt 1
	.loc 1 182 25 is_stmt 0
	li	a3,2
	bne	a4,a3,.L31
	.loc 1 184 21 is_stmt 1
.LVL26:
	.loc 1 185 21
	.loc 1 185 40 is_stmt 0
	sb	zero,0(a5)
	.loc 1 188 17 is_stmt 1
	.loc 1 184 25 is_stmt 0
	li	a1,5
.LVL27:
.L32:
	.loc 1 190 21 is_stmt 1
	.loc 1 190 48 is_stmt 0
	slli	a4,a1,2
	add	a5,s7,a4
	lw	a3,0(a5)
	.loc 1 190 24
	beq	a3,zero,.L31
	.loc 1 192 25 is_stmt 1
	lui	a5,%hi(.LANCHOR15)
	addi	a5,a5,%lo(.LANCHOR15)
	add	a5,a5,a4
	.loc 1 192 61 is_stmt 0
	lw	a4,0(s4)
	.loc 1 192 25
	lw	a2,0(a5)
	.loc 1 192 61
	add	a4,a4,s5
	.loc 1 192 25
	lw	a0,0(a4)
	jalr	a3
.LVL28:
	j	.L31
.L21:
.LBE6:
	.loc 1 104 14 is_stmt 1
	.loc 1 104 17 is_stmt 0
	bne	a0,zero,.L23
	.loc 1 106 13 is_stmt 1
	.loc 1 106 60 is_stmt 0
	addi	a4,a3,-1
	.loc 1 106 41
	sb	a4,12(a5)
	.loc 1 107 13 is_stmt 1
	.loc 1 107 45 is_stmt 0
	sb	a3,13(a5)
	.loc 1 108 13 is_stmt 1
.LVL29:
	j	.L22
.LVL30:
.L23:
	.loc 1 112 13
	.loc 1 113 13
	.loc 1 113 41 is_stmt 0
	sh	zero,12(a5)
	.loc 1 114 13 is_stmt 1
.L20:
.LBE10:
	.loc 1 84 45 discriminator 2
	.loc 1 84 46 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL31:
	andi	s1,s1,0xff
.LVL32:
	j	.L18
.LVL33:
.L25:
.LBB11:
	.loc 1 129 17 is_stmt 1
	.loc 1 129 35 is_stmt 0
	lw	a5,0(s9)
	or	a4,a5,a4
	.loc 1 130 41
	add	a5,s6,s2
	sw	zero,0(a5)
	.loc 1 131 40
	lui	a5,%hi(.LANCHOR7)
	addi	a5,a5,%lo(.LANCHOR7)
	add	a5,a5,s2
	.loc 1 129 35
	sw	a4,0(s9)
	.loc 1 130 17 is_stmt 1
	.loc 1 131 17
	.loc 1 131 40 is_stmt 0
	sw	zero,0(a5)
	j	.L24
.LVL34:
.L27:
	.loc 1 154 21 is_stmt 1
	.loc 1 154 44 is_stmt 0
	sw	a0,0(a5)
	.loc 1 155 21 is_stmt 1
	.loc 1 155 42 is_stmt 0
	li	a5,1
	sll	a5,a5,s1
	.loc 1 155 36
	or	a2,a5,a2
	sw	a2,0(a3)
	.loc 1 156 21 is_stmt 1
	.loc 1 156 41 is_stmt 0
	lw	a3,0(s11)
	.loc 1 156 44
	not	a5,a5
	.loc 1 156 41
	and	a5,a5,a3
	sw	a5,0(s11)
	j	.L26
.LVL35:
.L29:
	.loc 1 168 13 is_stmt 1
	.loc 1 168 21 is_stmt 0
	sub	a4,a4,a0
	.loc 1 168 16
	li	a3,999
	bleu	a4,a3,.L30
	.loc 1 170 17 is_stmt 1
	.loc 1 170 36 is_stmt 0
	add	a5,a5,s1
	sb	zero,0(a5)
.L31:
	.loc 1 197 13 is_stmt 1
	.loc 1 197 40 is_stmt 0
	lw	a5,8(s3)
	jalr	a5
.LVL36:
	.loc 1 197 38
	lw	a5,-92(s0)
	.loc 1 199 40
	lw	a4,0(s7)
	.loc 1 197 38
	add	a5,a5,s2
	sw	a0,0(a5)
	.loc 1 199 13 is_stmt 1
	.loc 1 199 16 is_stmt 0
	beq	a4,zero,.L35
	.loc 1 201 17 is_stmt 1
	.loc 1 201 69 is_stmt 0
	lw	a5,0(s4)
	.loc 1 201 17
	lui	a3,%hi(.LANCHOR15)
	lw	a2,%lo(.LANCHOR15)(a3)
	.loc 1 201 69
	add	a5,a5,s5
	.loc 1 201 17
	lw	a0,0(a5)
	li	a1,0
	jalr	a4
.LVL37:
.L35:
	.loc 1 207 17 is_stmt 1
	.loc 1 209 13
	.loc 1 209 29 is_stmt 0
	lw	a4,0(s10)
	.loc 1 209 36
	li	a5,1
	sll	a5,a5,s1
	.loc 1 209 32
	not	a5,a5
	.loc 1 209 29
	and	a5,a5,a4
	sw	a5,0(s10)
.L28:
	.loc 1 211 9 is_stmt 1
	.loc 1 211 32 is_stmt 0
	lw	a5,0(s9)
	srl	a5,a5,s1
	.loc 1 211 38
	andi	a5,a5,1
	.loc 1 211 12
	beq	a5,zero,.L36
	.loc 1 213 13 is_stmt 1
	.loc 1 213 40 is_stmt 0
	lw	a4,4(s7)
	.loc 1 213 16
	beq	a4,zero,.L37
	.loc 1 215 17 is_stmt 1
	.loc 1 215 70 is_stmt 0
	lw	a5,0(s4)
	.loc 1 215 17
	lui	a3,%hi(.LANCHOR15+4)
	lw	a2,%lo(.LANCHOR15+4)(a3)
	.loc 1 215 70
	add	a5,a5,s5
	.loc 1 215 17
	lw	a0,0(a5)
	li	a1,1
	jalr	a4
.LVL38:
.L37:
	.loc 1 221 17 is_stmt 1
	.loc 1 223 13
	.loc 1 223 31 is_stmt 0
	lw	a4,0(s9)
	.loc 1 223 38
	li	a5,1
	sll	a5,a5,s1
	.loc 1 223 34
	not	a5,a5
	.loc 1 223 31
	and	a4,a4,a5
	sw	a4,0(s9)
	.loc 1 224 13 is_stmt 1
	.loc 1 224 28 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	addi	a4,a4,%lo(.LANCHOR9)
	lw	a3,0(a4)
	and	a5,a3,a5
	sw	a5,0(a4)
.L36:
	.loc 1 227 9 is_stmt 1
	.loc 1 227 36 is_stmt 0
	lw	a3,0(s11)
	srl	a4,a3,s1
	.loc 1 227 42
	andi	a4,a4,1
	.loc 1 227 12
	bne	a4,zero,.L38
	.loc 1 227 69 discriminator 1
	lui	a5,%hi(.LANCHOR9)
	lw	a4,%lo(.LANCHOR9)(a5)
	srl	a4,a4,s1
	.loc 1 227 75 discriminator 1
	andi	a4,a4,1
	.loc 1 227 49 discriminator 1
	beq	a4,zero,.L38
.LBB7:
	.loc 1 229 13 is_stmt 1
	.loc 1 229 39 is_stmt 0
	li	a5,1
	sll	a5,a5,s1
	.loc 1 229 33
	or	a5,a5,a3
	sw	a5,0(s11)
	.loc 1 230 13 is_stmt 1
	.loc 1 230 34 is_stmt 0
	lw	a5,8(s3)
	jalr	a5
.LVL39:
	.loc 1 230 83
	add	a5,s6,s2
	.loc 1 230 61
	lw	a5,0(a5)
	.loc 1 231 33
	lw	a4,8(s7)
	.loc 1 230 61
	sub	a0,a0,a5
	.loc 1 230 22
	sw	a0,-68(s0)
	.loc 1 231 13 is_stmt 1
	.loc 1 231 16 is_stmt 0
	beq	a4,zero,.L38
	.loc 1 233 17 is_stmt 1
	.loc 1 233 66 is_stmt 0
	lw	a5,0(s4)
	.loc 1 233 17
	addi	a2,s0,-68
	li	a1,2
	.loc 1 233 66
	add	a5,a5,s5
	.loc 1 233 17
	lw	a0,0(a5)
	jalr	a4
.LVL40:
.L38:
.LBE7:
	.loc 1 240 9 is_stmt 1
	.loc 1 240 32 is_stmt 0
	lw	a5,0(s8)
	srl	a5,a5,s1
	.loc 1 240 38
	andi	a5,a5,1
	.loc 1 240 12
	beq	a5,zero,.L20
.LBB8:
	.loc 1 242 13 is_stmt 1
	.loc 1 242 34 is_stmt 0
	lw	a5,8(s3)
	.loc 1 242 83
	add	s2,s6,s2
	.loc 1 242 34
	jalr	a5
.LVL41:
	.loc 1 242 61
	lw	a5,0(s2)
	.loc 1 243 33
	lw	a4,12(s7)
	.loc 1 242 61
	sub	a0,a0,a5
	.loc 1 242 22
	sw	a0,-68(s0)
	.loc 1 243 13 is_stmt 1
	.loc 1 243 16 is_stmt 0
	beq	a4,zero,.L41
	.loc 1 245 17 is_stmt 1
	.loc 1 245 71 is_stmt 0
	lw	a5,0(s4)
	.loc 1 245 17
	addi	a2,s0,-68
	li	a1,3
	.loc 1 245 71
	add	s5,a5,s5
	.loc 1 245 17
	lw	a0,0(s5)
	jalr	a4
.LVL42:
.L41:
	.loc 1 250 13 is_stmt 1
	.loc 1 250 31 is_stmt 0
	lw	a4,0(s8)
	.loc 1 250 38
	li	a5,1
	sll	a5,a5,s1
	.loc 1 250 34
	not	a5,a5
	.loc 1 250 31
	and	a5,a5,a4
	sw	a5,0(s8)
	j	.L20
.LVL43:
.L43:
.LBE8:
.LBB9:
	.loc 1 180 25
	li	a1,4
	j	.L32
.LBE9:
.LBE11:
	.cfi_endproc
.LFE5:
	.size	app_btn_scan, .-app_btn_scan
	.section	.text.app_btn_register_callback,"ax",@progbits
	.align	1
	.globl	app_btn_register_callback
	.type	app_btn_register_callback, @function
app_btn_register_callback:
.LFB6:
	.loc 1 257 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 258 5
	.loc 1 257 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 258 8
	beq	a1,zero,.L72
	.loc 1 260 9 is_stmt 1
	.loc 1 260 33 is_stmt 0
	lui	a5,%hi(.LANCHOR14)
	slli	a0,a0,2
.LVL45:
	addi	a5,a5,%lo(.LANCHOR14)
	add	a5,a5,a0
	sw	a1,0(a5)
	.loc 1 261 9 is_stmt 1
	.loc 1 261 30 is_stmt 0
	lui	a5,%hi(.LANCHOR15)
	addi	a5,a5,%lo(.LANCHOR15)
	add	a0,a5,a0
	sw	a2,0(a0)
.L72:
	.loc 1 263 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	app_btn_register_callback, .-app_btn_register_callback
	.section	.text.app_btn_reset_state,"ax",@progbits
	.align	1
	.globl	app_btn_reset_state
	.type	app_btn_reset_state, @function
app_btn_reset_state:
.LFB7:
	.loc 1 266 1 is_stmt 1
	.cfi_startproc
	.loc 1 267 5
	.loc 1 266 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 267 21
	lui	a5,%hi(.LANCHOR4)
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 268 5 is_stmt 1
	.loc 1 268 23 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	sw	zero,%lo(.LANCHOR6)(a5)
	.loc 1 269 5 is_stmt 1
	.loc 1 269 20 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	sw	zero,%lo(.LANCHOR9)(a5)
	.loc 1 270 5 is_stmt 1
	.loc 1 270 25 is_stmt 0
	lui	a5,%hi(.LANCHOR11)
	sw	zero,%lo(.LANCHOR11)(a5)
	.loc 1 271 5 is_stmt 1
	.loc 1 271 23 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	sw	zero,%lo(.LANCHOR10)(a5)
	.loc 1 273 5 is_stmt 1
.LBB12:
	.loc 1 273 10
.LVL46:
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 273 42 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	.loc 1 276 23
	lui	a2,%hi(.LANCHOR3)
	addi	a5,a5,4
	.loc 1 273 19
	li	a4,0
	.loc 1 273 42
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 276 23
	addi	a2,a2,%lo(.LANCHOR3)
.LVL47:
.L79:
	.loc 1 273 26 is_stmt 1 discriminator 1
	.loc 1 273 42 is_stmt 0 discriminator 1
	lbu	a1,4(a3)
	.loc 1 273 5 discriminator 1
	bgtu	a1,a4,.L80
.LBE12:
	.loc 1 278 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L80:
	.cfi_restore_state
.LBB13:
	.loc 1 275 9 is_stmt 1 discriminator 3
	.loc 1 275 35 is_stmt 0 discriminator 3
	lbu	a1,4(a5)
	.loc 1 276 23 discriminator 3
	add	a0,a2,a4
	addi	a5,a5,16
	.loc 1 275 35 discriminator 3
	sb	a1,-16(a5)
	.loc 1 276 9 is_stmt 1 discriminator 3
	.loc 1 276 23 is_stmt 0 discriminator 3
	sb	a1,0(a0)
	.loc 1 273 54 is_stmt 1 discriminator 3
	.loc 1 273 55 is_stmt 0 discriminator 3
	addi	a4,a4,1
.LVL48:
	j	.L79
.LBE13:
	.cfi_endproc
.LFE7:
	.size	app_btn_reset_state, .-app_btn_reset_state
	.globl	app_btn_on_hold_time_fire_event_ms
	.section	.bss.m_btn_config,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	m_btn_config, @object
	.size	m_btn_config, 20
m_btn_config:
	.zero	20
	.section	.bss.m_btn_hold_timestamp,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	m_btn_hold_timestamp, @object
	.size	m_btn_hold_timestamp, 16
m_btn_hold_timestamp:
	.zero	16
	.section	.bss.m_btn_instances,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	m_btn_instances, @object
	.size	m_btn_instances, 16
m_btn_instances:
	.zero	16
	.section	.bss.m_btn_last_press_time,"aw",@nobits
	.align	2
	.set	.LANCHOR12,. + 0
	.type	m_btn_last_press_time, @object
	.size	m_btn_last_press_time, 16
m_btn_last_press_time:
	.zero	16
	.section	.bss.m_btn_on_hold_count,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	m_btn_on_hold_count, @object
	.size	m_btn_on_hold_count, 16
m_btn_on_hold_count:
	.zero	16
	.section	.bss.m_callback_table,"aw",@nobits
	.align	2
	.set	.LANCHOR14,. + 0
	.type	m_callback_table, @object
	.size	m_callback_table, 32
m_callback_table:
	.zero	32
	.section	.bss.m_custom_data,"aw",@nobits
	.align	2
	.set	.LANCHOR15,. + 0
	.type	m_custom_data, @object
	.size	m_custom_data, 32
m_custom_data:
	.zero	32
	.section	.sbss.m_btn_data,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	m_btn_data, @object
	.size	m_btn_data, 4
m_btn_data:
	.zero	4
	.section	.sbss.m_btn_hold_evt,"aw",@nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	m_btn_hold_evt, @object
	.size	m_btn_hold_evt, 4
m_btn_hold_evt:
	.zero	4
	.section	.sbss.m_btn_hold_evt_exec,"aw",@nobits
	.align	2
	.set	.LANCHOR11,. + 0
	.type	m_btn_hold_evt_exec, @object
	.size	m_btn_hold_evt_exec, 4
m_btn_hold_evt_exec:
	.zero	4
	.section	.sbss.m_btn_on_hold_evt,"aw",@nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	m_btn_on_hold_evt, @object
	.size	m_btn_on_hold_evt, 4
m_btn_on_hold_evt:
	.zero	4
	.section	.sbss.m_btn_press_cnt,"aw",@nobits
	.align	2
	.set	.LANCHOR13,. + 0
	.type	m_btn_press_cnt, @object
	.size	m_btn_press_cnt, 4
m_btn_press_cnt:
	.zero	4
	.section	.sbss.m_btn_press_evt,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	m_btn_press_evt, @object
	.size	m_btn_press_evt, 4
m_btn_press_evt:
	.zero	4
	.section	.sbss.m_btn_release_evt,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	m_btn_release_evt, @object
	.size	m_btn_release_evt, 4
m_btn_release_evt:
	.zero	4
	.section	.sbss.m_hw_params,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	m_hw_params, @object
	.size	m_hw_params, 4
m_hw_params:
	.zero	4
	.section	.sdata.app_btn_on_hold_time_fire_event_ms,"aw"
	.align	2
	.set	.LANCHOR8,. + 0
	.type	app_btn_on_hold_time_fire_event_ms, @object
	.size	app_btn_on_hold_time_fire_event_ms, 4
app_btn_on_hold_time_fire_event_ms:
	.word	5000
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/third_party/lib_button/app_btn.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x563
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0x78
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xc8
	.byte	0x6
	.4byte	.LASF11
	.byte	0
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x6
	.4byte	.LASF18
	.byte	0x7
	.byte	0x6
	.4byte	.LASF19
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2b
	.byte	0x3
	.4byte	0x83
	.byte	0x7
	.byte	0x10
	.byte	0x3
	.byte	0x2d
	.byte	0x9
	.4byte	0x11f
	.byte	0x8
	.string	"pin"
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x5b
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x30
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x31
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF23
	.byte	0x3
	.byte	0x32
	.byte	0xd
	.4byte	0x41
	.byte	0xc
	.byte	0x9
	.4byte	.LASF24
	.byte	0x3
	.byte	0x33
	.byte	0xd
	.4byte	0x41
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0x34
	.byte	0x3
	.4byte	0xd4
	.byte	0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x36
	.byte	0x14
	.4byte	0x137
	.byte	0xa
	.byte	0x4
	.4byte	0x13d
	.byte	0xb
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x37
	.byte	0x10
	.4byte	0x14e
	.byte	0xa
	.byte	0x4
	.4byte	0x154
	.byte	0xc
	.4byte	0x15f
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x3
	.byte	0x38
	.byte	0x14
	.4byte	0x16b
	.byte	0xa
	.byte	0x4
	.4byte	0x171
	.byte	0xe
	.4byte	0x5b
	.4byte	0x180
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0x7
	.byte	0x14
	.byte	0x3
	.byte	0x3a
	.byte	0x9
	.4byte	0x1cb
	.byte	0x9
	.4byte	.LASF29
	.byte	0x3
	.byte	0x3c
	.byte	0x1a
	.4byte	0x1cb
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x3
	.byte	0x3d
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0x9
	.4byte	.LASF31
	.byte	0x3
	.byte	0x3e
	.byte	0x19
	.4byte	0x12b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF32
	.byte	0x3
	.byte	0x3f
	.byte	0x1b
	.4byte	0x142
	.byte	0xc
	.byte	0x9
	.4byte	.LASF33
	.byte	0x3
	.byte	0x40
	.byte	0x1a
	.4byte	0x15f
	.byte	0x10
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x11f
	.byte	0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0x41
	.byte	0x3
	.4byte	0x180
	.byte	0x3
	.4byte	.LASF35
	.byte	0x3
	.byte	0x44
	.byte	0x10
	.4byte	0x1e9
	.byte	0xa
	.byte	0x4
	.4byte	0x1ef
	.byte	0xc
	.4byte	0x204
	.byte	0xd
	.4byte	0x75
	.byte	0xd
	.4byte	0x75
	.byte	0xd
	.4byte	0x204
	.byte	0
	.byte	0xf
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF36
	.byte	0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.4byte	0x41
	.byte	0x11
	.4byte	0x41
	.4byte	0x229
	.byte	0x12
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.4byte	0x219
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_data
	.byte	0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc
	.byte	0x11
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_press_evt
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd
	.byte	0x11
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_release_evt
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe
	.byte	0x11
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_hold_evt
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf
	.byte	0x11
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_hold_evt_exec
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x10
	.byte	0x11
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_on_hold_evt
	.byte	0x11
	.4byte	0x5b
	.4byte	0x2a5
	.byte	0x12
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x11
	.byte	0x11
	.4byte	0x295
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_hold_timestamp
	.byte	0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x12
	.byte	0x11
	.4byte	0x295
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_on_hold_count
	.byte	0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x13
	.byte	0x11
	.4byte	0x295
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_last_press_time
	.byte	0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.4byte	0x219
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_press_cnt
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x15
	.byte	0x11
	.4byte	0x295
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_instances
	.byte	0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x16
	.byte	0x1d
	.4byte	0x1cb
	.byte	0x5
	.byte	0x3
	.4byte	m_hw_params
	.byte	0x11
	.4byte	0x1dd
	.4byte	0x321
	.byte	0x12
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x17
	.byte	0x1e
	.4byte	0x311
	.byte	0x5
	.byte	0x3
	.4byte	m_callback_table
	.byte	0x11
	.4byte	0x204
	.4byte	0x343
	.byte	0x12
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0x333
	.byte	0x5
	.byte	0x3
	.4byte	m_custom_data
	.byte	0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0x19
	.byte	0x19
	.4byte	0x1d1
	.byte	0x5
	.byte	0x3
	.4byte	m_btn_config
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x1a
	.byte	0xa
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	app_btn_on_hold_time_fire_event_ms
	.byte	0x15
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x109
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a6
	.byte	0x16
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x17
	.string	"i"
	.byte	0x1
	.2byte	0x111
	.byte	0x13
	.4byte	0x5b
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x100
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ec
	.byte	0x18
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x100
	.byte	0x30
	.4byte	0xc8
	.4byte	.LLST7
	.byte	0x19
	.string	"cb"
	.byte	0x1
	.2byte	0x100
	.byte	0x4d
	.4byte	0x1dd
	.byte	0x1
	.byte	0x5b
	.byte	0x1a
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x100
	.byte	0x57
	.4byte	0x204
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d7
	.byte	0x1c
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.4byte	0x204
	.4byte	.LLST2
	.byte	0x1d
	.string	"i"
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST3
	.byte	0x1e
	.4byte	.LASF60
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST4
	.byte	0x16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1d
	.string	"now"
	.byte	0x1
	.byte	0x88
	.byte	0x12
	.4byte	0x5b
	.4byte	.LLST5
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x45f
	.byte	0x1d
	.string	"evt"
	.byte	0x1
	.byte	0xb0
	.byte	0x1a
	.4byte	0x5b
	.4byte	.LLST6
	.byte	0
	.byte	0x20
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x48f
	.byte	0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe6
	.byte	0x16
	.4byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x21
	.4byte	.LVL40
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x4bb
	.byte	0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf2
	.byte	0x16
	.4byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x21
	.4byte	.LVL42
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LVL37
	.4byte	0x4ca
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL38
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF62
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x548
	.byte	0x1c
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1c
	.byte	0x2b
	.4byte	0x548
	.4byte	.LLST0
	.byte	0x1d
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST1
	.byte	0x24
	.4byte	.LVL2
	.4byte	0x54e
	.4byte	0x52c
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x25
	.4byte	.LVL3
	.4byte	0x55a
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1d1
	.byte	0x26
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x4
	.byte	0x21
	.byte	0x8
	.byte	0x26
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x4
	.byte	0x1f
	.byte	0x8
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
.LLST8:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x78
	.byte	0xa4,0x7f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"app_btn_on_hold_time_fire_event_ms"
.LASF61:
	.string	"hold_time"
.LASF50:
	.string	"m_custom_data"
.LASF58:
	.string	"app_btn_scan"
.LASF22:
	.string	"idle_level"
.LASF31:
	.string	"get_tick_cb"
.LASF51:
	.string	"m_btn_config"
.LASF1:
	.string	"short int"
.LASF41:
	.string	"m_btn_hold_evt_exec"
.LASF19:
	.string	"APP_BTN_EVT_MAX"
.LASF37:
	.string	"m_btn_data"
.LASF27:
	.string	"app_btn_initialize_cb"
.LASF65:
	.string	"memcpy"
.LASF17:
	.string	"APP_BTN_EVT_IDLE"
.LASF56:
	.string	"event"
.LASF62:
	.string	"app_btn_initialize"
.LASF29:
	.string	"config"
.LASF42:
	.string	"m_btn_on_hold_evt"
.LASF68:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/lib_button"
.LASF63:
	.string	"conf"
.LASF28:
	.string	"app_btn_get_level_cb"
.LASF54:
	.string	"app_btn_reset_state"
.LASF30:
	.string	"btn_count"
.LASF38:
	.string	"m_btn_press_evt"
.LASF3:
	.string	"long long int"
.LASF49:
	.string	"m_callback_table"
.LASF64:
	.string	"memset"
.LASF2:
	.string	"long int"
.LASF20:
	.string	"app_btn_event_t"
.LASF15:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF11:
	.string	"APP_BTN_EVT_PRESSED"
.LASF46:
	.string	"m_btn_press_cnt"
.LASF52:
	.string	"g_btn_filter_cnt"
.LASF21:
	.string	"last_state"
.LASF59:
	.string	"params"
.LASF39:
	.string	"m_btn_release_evt"
.LASF4:
	.string	"unsigned char"
.LASF33:
	.string	"btn_read"
.LASF26:
	.string	"app_btn_get_tick_cb"
.LASF44:
	.string	"m_btn_on_hold_count"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF7:
	.string	"uint32_t"
.LASF47:
	.string	"m_btn_instances"
.LASF10:
	.string	"unsigned int"
.LASF34:
	.string	"app_btn_config_t"
.LASF40:
	.string	"m_btn_hold_evt"
.LASF48:
	.string	"m_hw_params"
.LASF45:
	.string	"m_btn_last_press_time"
.LASF32:
	.string	"btn_initialize"
.LASF5:
	.string	"short unsigned int"
.LASF25:
	.string	"app_btn_hw_config_t"
.LASF13:
	.string	"APP_BTN_EVT_HOLD"
.LASF36:
	.string	"char"
.LASF57:
	.string	"data"
.LASF12:
	.string	"APP_BTN_EVT_RELEASED"
.LASF23:
	.string	"debounce_val"
.LASF67:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/third_party/lib_button/app_btn.c"
.LASF8:
	.string	"long unsigned int"
.LASF66:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF55:
	.string	"app_btn_register_callback"
.LASF16:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF60:
	.string	"level"
.LASF6:
	.string	"uint8_t"
.LASF35:
	.string	"app_btn_evt_handler_t"
.LASF18:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF14:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF24:
	.string	"debounce_counter"
.LASF43:
	.string	"m_btn_hold_timestamp"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
