	.file	"bl_flash.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c109,"ax",@progbits
	.align	1
	.globl	arch_memcpy
	.type	arch_memcpy, @function
arch_memcpy:
.LFB8:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c"
	.loc 1 110 1
	.cfi_startproc
.LVL0:
	.loc 1 111 5
	.loc 1 112 5
	.loc 1 114 5
	.loc 1 110 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 114 11
	li	a5,0
.LVL1:
.L2:
	.loc 1 114 11 is_stmt 1
	bne	a2,a5,.L3
	.loc 1 119 5
	.loc 1 120 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L3:
	.cfi_restore_state
	.loc 1 116 9 is_stmt 1
.LVL2:
	.loc 1 116 16 is_stmt 0
	add	a4,a1,a5
	lbu	a3,0(a4)
	.loc 1 116 14
	add	a4,a0,a5
	addi	a5,a5,1
.LVL3:
	sb	a3,0(a4)
	j	.L2
	.cfi_endproc
.LFE8:
	.size	arch_memcpy, .-arch_memcpy
	.section	.text.flash_get_cfg,"ax",@progbits
	.align	1
	.globl	flash_get_cfg
	.type	flash_get_cfg, @function
flash_get_cfg:
.LFB9:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 129 5
	.loc 1 128 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 129 15
	lui	a5,%hi(.LANCHOR0)
	.cfi_offset 8, -4
	.loc 1 128 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 129 15
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,0(a0)
	.loc 1 130 5 is_stmt 1
	.loc 1 133 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 130 10
	li	a5,84
	sw	a5,0(a1)
	.loc 1 132 5 is_stmt 1
	.loc 1 133 1 is_stmt 0
	li	a0,0
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	flash_get_cfg, .-flash_get_cfg
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c140,"ax",@progbits
	.align	1
	.globl	flash_set_qspi_enable
	.type	flash_set_qspi_enable, @function
flash_set_qspi_enable:
.LFB10:
	.loc 1 141 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 142 5
	.loc 1 142 8 is_stmt 0
	lbu	a5,0(a0)
	andi	a5,a5,15
	addi	a5,a5,-2
	andi	a5,a5,253
	bne	a5,zero,.L10
	.loc 1 144 9 is_stmt 1
	.loc 1 141 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 144 9
	call	SFlash_Qspi_Enable
.LVL7:
	.loc 1 147 5 is_stmt 1
	.loc 1 148 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L10:
	.loc 1 147 5 is_stmt 1
	.loc 1 148 1 is_stmt 0
	li	a0,0
.LVL9:
	ret
	.cfi_endproc
.LFE10:
	.size	flash_set_qspi_enable, .-flash_set_qspi_enable
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c155,"ax",@progbits
	.align	1
	.globl	flash_set_l1c_wrap
	.type	flash_set_l1c_wrap, @function
flash_set_l1c_wrap:
.LFB11:
	.loc 1 156 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 157 5
	.loc 1 156 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 157 37
	lbu	a5,0(a0)
	srli	a5,a5,4
	.loc 1 157 8
	andi	a5,a5,1
	beq	a5,zero,.L14
	.loc 1 159 9 is_stmt 1
	li	a0,0
.LVL11:
	call	L1C_Set_Wrap
.LVL12:
.L15:
	.loc 1 170 5
	.loc 1 171 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L14:
	.cfi_restore_state
	mv	s1,a0
	.loc 1 163 9 is_stmt 1
	li	a0,1
.LVL14:
	call	L1C_Set_Wrap
.LVL15:
	.loc 1 164 9
	.loc 1 164 12 is_stmt 0
	lbu	a5,0(s1)
	andi	a5,a5,15
	addi	a5,a5,-2
	andi	a5,a5,253
	bne	a5,zero,.L15
	.loc 1 166 13 is_stmt 1
	mv	a0,s1
	call	SFlash_SetBurstWrap
.LVL16:
	j	.L15
	.cfi_endproc
.LFE11:
	.size	flash_set_l1c_wrap, .-flash_set_l1c_wrap
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c178,"ax",@progbits
	.align	1
	.globl	flash_get_clkdelay_from_bootheader
	.type	flash_get_clkdelay_from_bootheader, @function
flash_get_clkdelay_from_bootheader:
.LFB12:
	.loc 1 179 1
	.cfi_startproc
.LVL17:
	.loc 1 180 5
	.loc 1 181 5
	.loc 1 182 5
	.loc 1 183 5
	.loc 1 179 1 is_stmt 0
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sw	s0,200(sp)
	sw	s1,196(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	sw	ra,204(sp)
	.cfi_offset 1, -4
	.loc 1 185 5
	lbu	a1,0(a0)
	.loc 1 183 10
	li	a5,1195786240
	addi	a5,a5,838
	sw	a5,-200(s0)
	.loc 1 185 5
	li	a2,0
	andi	a1,a1,15
	li	a5,92
	addi	a4,s0,-108
	li	a3,8
	.loc 1 179 1
	mv	s1,a0
	.loc 1 183 10
	sb	zero,-196(s0)
	.loc 1 185 5 is_stmt 1
	call	SFlash_Read
.LVL18:
	.loc 1 186 5
	.loc 1 186 9 is_stmt 0
	li	a2,4
	addi	a1,s0,-200
	addi	a0,s0,-108
	call	BL602_MemCmp
.LVL19:
	.loc 1 186 8
	beq	a0,zero,.L18
.L20:
	.loc 1 199 12
	li	a0,1
.L17:
	.loc 1 200 1
	lw	ra,204(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,200(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	lw	s1,196(sp)
	.cfi_restore 9
.LVL20:
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
.LVL21:
.L18:
	.cfi_restore_state
	.loc 1 188 9 is_stmt 1
	.loc 1 188 15 is_stmt 0
	li	a1,84
	addi	a0,s0,-104
	call	BFLB_Soft_CRC32
.LVL22:
	.loc 1 189 9 is_stmt 1
	.loc 1 190 9
	.loc 1 190 12 is_stmt 0
	lw	a5,-20(s0)
	bne	a5,a0,.L20
	.loc 1 192 13 is_stmt 1
	li	a2,84
	addi	a1,s0,-104
	addi	a0,s0,-192
.LVL23:
	call	BL602_MemCpy_Fast
.LVL24:
	.loc 1 193 13
	.loc 1 193 35 is_stmt 0
	lbu	a5,-190(s0)
	.loc 1 195 20
	li	a0,0
	.loc 1 193 35
	sb	a5,2(s1)
	.loc 1 194 13 is_stmt 1
	.loc 1 194 36 is_stmt 0
	lbu	a5,-189(s0)
	sb	a5,3(s1)
	.loc 1 195 13 is_stmt 1
	.loc 1 195 20 is_stmt 0
	j	.L17
	.cfi_endproc
.LFE12:
	.size	flash_get_clkdelay_from_bootheader, .-flash_get_clkdelay_from_bootheader
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c242,"ax",@progbits
	.align	1
	.globl	bl_flash_init
	.type	bl_flash_init, @function
bl_flash_init:
.LFB14:
	.loc 1 243 1 is_stmt 1
	.cfi_startproc
	.loc 1 244 5
.LVL25:
	.loc 1 245 5
	.loc 1 243 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 245 14
	sw	zero,-44(s0)
	.loc 1 247 5 is_stmt 1
.LVL26:
.LBB6:
.LBB7:
	.loc 1 209 5
	.loc 1 210 5
	.loc 1 210 13 is_stmt 0
	sb	zero,-45(s0)
	.loc 1 211 5 is_stmt 1
	.loc 1 211 14 is_stmt 0
	sw	zero,-40(s0)
	.loc 1 212 5 is_stmt 1
	.loc 1 212 14 is_stmt 0
	sw	zero,-36(s0)
	.loc 1 214 5 is_stmt 1
.LBB8:
	.loc 1 214 14
	.loc 1 214 48 is_stmt 0
	call	bl_irq_save
.LVL27:
	mv	s3,a0
.LVL28:
	.loc 1 214 62 is_stmt 1
	.loc 1 215 5
	addi	a0,s0,-45
.LVL29:
	call	XIP_SFlash_Opt_Enter
.LVL30:
	.loc 1 216 5
	lui	s1,%hi(.LANCHOR0)
	addi	a1,s0,-36
	addi	a0,s1,%lo(.LANCHOR0)
	call	XIP_SFlash_State_Save_Ext
.LVL31:
	.loc 1 217 5
	addi	a1,s0,-40
	addi	a0,s1,%lo(.LANCHOR0)
	call	SFlash_GetJedecId
.LVL32:
	.loc 1 218 5
	li	a2,3
	addi	a1,s0,-40
	addi	a0,s0,-44
.LVL33:
	call	arch_memcpy
.LVL34:
	.loc 1 219 5
	.loc 1 219 9 is_stmt 0
	lw	a5,-40(s0)
	.loc 1 220 11
	addi	a1,s1,%lo(.LANCHOR0)
	.loc 1 219 9
	slli	a5,a5,8
	srli	a0,a5,8
	sw	a0,-40(s0)
	.loc 1 220 5 is_stmt 1
	.loc 1 220 11 is_stmt 0
	call	SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext
.LVL35:
	mv	s2,a0
.LVL36:
	.loc 1 221 5 is_stmt 1
	.loc 1 221 8 is_stmt 0
	bne	a0,zero,.L23
	.loc 1 223 26
	lw	a5,-40(s0)
	addi	s4,s1,%lo(.LANCHOR0)
	.loc 1 223 9 is_stmt 1
	.loc 1 223 26 is_stmt 0
	sb	a5,13(s4)
.L23:
	.loc 1 225 5 is_stmt 1
	addi	a0,s1,%lo(.LANCHOR0)
.LVL37:
	call	flash_get_clkdelay_from_bootheader
.LVL38:
	.loc 1 228 5
	addi	a0,s1,%lo(.LANCHOR0)
	call	flash_set_qspi_enable
.LVL39:
	.loc 1 229 5
	addi	a0,s1,%lo(.LANCHOR0)
	call	flash_set_l1c_wrap
.LVL40:
	.loc 1 230 5
	lw	a1,-36(s0)
	addi	a0,s1,%lo(.LANCHOR0)
	call	XIP_SFlash_State_Restore_Ext
.LVL41:
	.loc 1 231 5
	lbu	a0,-45(s0)
	call	XIP_SFlash_Opt_Exit
.LVL42:
	.loc 1 232 5
	mv	a0,s3
	call	bl_irq_restore
.LVL43:
.LBE8:
	.loc 1 232 52
	.loc 1 234 5
.LBE7:
.LBE6:
	.loc 1 256 5
	.loc 1 257 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	mv	a0,s2
	lw	s2,32(sp)
	.cfi_restore 18
.LVL44:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_flash_init, .-bl_flash_init
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c269,"ax",@progbits
	.align	1
	.globl	bl_flash_erase
	.type	bl_flash_erase, @function
bl_flash_erase:
.LFB15:
	.loc 1 270 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 271 5
	.loc 1 274 5
	.loc 1 270 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 274 25
	lui	s3,%hi(.LANCHOR0)
	.loc 1 270 1
	.loc 1 274 25
	addi	a5,s3,%lo(.LANCHOR0)
	.loc 1 274 8
	lbu	a5,13(a5)
	beq	a5,zero,.L27
	mv	s4,a1
	.loc 1 279 5 is_stmt 1 discriminator 1
.LBB9:
	.loc 1 279 14 discriminator 1
	mv	s1,a0
	.loc 1 279 48 is_stmt 0 discriminator 1
	call	bl_irq_save
.LVL46:
	mv	s2,a0
.LVL47:
	.loc 1 279 62 is_stmt 1 discriminator 1
	.loc 1 280 5 discriminator 1
	addi	a0,s3,%lo(.LANCHOR0)
.LVL48:
	call	XIP_SFlash_Clear_Status_Register_Need_Lock
.LVL49:
	.loc 1 287 5 discriminator 1
	addi	a0,s0,-33
	call	XIP_SFlash_Opt_Enter
.LVL50:
	.loc 1 288 5 discriminator 1
	.loc 1 288 115 is_stmt 0 discriminator 1
	li	a5,553717760
	.loc 1 288 6 discriminator 1
	lw	a5,-1396(a5)
	addi	a2,s1,-1
	add	a2,a2,s4
	mv	a1,s1
	addi	a0,s3,%lo(.LANCHOR0)
	jalr	a5
.LVL51:
	.loc 1 292 5 is_stmt 1 discriminator 1
	lbu	a0,-33(s0)
	call	XIP_SFlash_Opt_Exit
.LVL52:
	.loc 1 294 5 discriminator 1
	mv	a0,s2
	call	bl_irq_restore
.LVL53:
.LBE9:
	.loc 1 294 52 discriminator 1
	.loc 1 296 5 discriminator 1
	.loc 1 296 12 is_stmt 0 discriminator 1
	li	a0,0
.LVL54:
.L25:
	.loc 1 297 1
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
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL55:
.L27:
	.cfi_restore_state
	.loc 1 276 16
	li	a0,-1
.LVL56:
	j	.L25
	.cfi_endproc
.LFE15:
	.size	bl_flash_erase, .-bl_flash_erase
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c299,"ax",@progbits
	.align	1
	.globl	bl_flash_write
	.type	bl_flash_write, @function
bl_flash_write:
.LFB16:
	.loc 1 300 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 301 5
	.loc 1 304 5
	.loc 1 300 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 304 25
	lui	s2,%hi(.LANCHOR0)
	.loc 1 300 1
	.loc 1 304 25
	addi	a5,s2,%lo(.LANCHOR0)
	.loc 1 304 8
	lbu	a5,13(a5)
	.loc 1 300 1
	sw	a2,-52(s0)
	.loc 1 304 8
	beq	a5,zero,.L31
	mv	s4,a1
	.loc 1 309 5 is_stmt 1 discriminator 1
.LBB10:
	.loc 1 309 14 discriminator 1
	mv	s3,a0
	.loc 1 309 48 is_stmt 0 discriminator 1
	call	bl_irq_save
.LVL58:
	mv	s1,a0
.LVL59:
	.loc 1 309 62 is_stmt 1 discriminator 1
	.loc 1 310 5 discriminator 1
	addi	a0,s2,%lo(.LANCHOR0)
	call	XIP_SFlash_Clear_Status_Register_Need_Lock
.LVL60:
	.loc 1 318 5 discriminator 1
	addi	a0,s0,-33
	call	XIP_SFlash_Opt_Enter
.LVL61:
	.loc 1 319 5 discriminator 1
	.loc 1 319 121 is_stmt 0 discriminator 1
	li	a5,553717760
	.loc 1 319 6 discriminator 1
	lw	a5,-1392(a5)
	lw	a3,-52(s0)
	mv	a2,s4
	mv	a1,s3
	addi	a0,s2,%lo(.LANCHOR0)
	jalr	a5
.LVL62:
	.loc 1 324 5 is_stmt 1 discriminator 1
	lbu	a0,-33(s0)
	call	XIP_SFlash_Opt_Exit
.LVL63:
	.loc 1 326 5 discriminator 1
	mv	a0,s1
	call	bl_irq_restore
.LVL64:
.LBE10:
	.loc 1 326 52 discriminator 1
	.loc 1 328 5 discriminator 1
	.loc 1 328 12 is_stmt 0 discriminator 1
	li	a0,0
.LVL65:
.L29:
	.loc 1 329 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
.LVL66:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL67:
.L31:
	.cfi_restore_state
	.loc 1 306 16
	li	a0,-1
.LVL68:
	j	.L29
	.cfi_endproc
.LFE16:
	.size	bl_flash_write, .-bl_flash_write
	.section	.tcm_code./home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c331,"ax",@progbits
	.align	1
	.globl	bl_flash_read
	.type	bl_flash_read, @function
bl_flash_read:
.LFB17:
	.loc 1 332 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 333 5
	.loc 1 336 5
	.loc 1 332 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s4,40(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 336 25
	lui	s4,%hi(.LANCHOR0)
	.loc 1 332 1
	.loc 1 336 25
	addi	a5,s4,%lo(.LANCHOR0)
	.loc 1 336 8
	lbu	a5,13(a5)
	.loc 1 332 1
	sw	a2,-52(s0)
	.loc 1 336 8
	beq	a5,zero,.L35
	mv	s3,a1
	.loc 1 341 5 is_stmt 1 discriminator 1
.LBB11:
	.loc 1 341 14 discriminator 1
	mv	s2,a0
	.loc 1 341 48 is_stmt 0 discriminator 1
	call	bl_irq_save
.LVL70:
	mv	s1,a0
.LVL71:
	.loc 1 341 62 is_stmt 1 discriminator 1
	.loc 1 349 5 discriminator 1
	addi	a0,s0,-33
	call	XIP_SFlash_Opt_Enter
.LVL72:
	.loc 1 350 5 discriminator 1
	.loc 1 350 121 is_stmt 0 discriminator 1
	li	a5,553717760
	.loc 1 350 6 discriminator 1
	lw	a5,-1388(a5)
	lw	a3,-52(s0)
	mv	a2,s3
	mv	a1,s2
	addi	a0,s4,%lo(.LANCHOR0)
	jalr	a5
.LVL73:
	.loc 1 355 5 is_stmt 1 discriminator 1
	lbu	a0,-33(s0)
	call	XIP_SFlash_Opt_Exit
.LVL74:
	.loc 1 357 5 discriminator 1
	mv	a0,s1
	call	bl_irq_restore
.LVL75:
.LBE11:
	.loc 1 357 52 discriminator 1
	.loc 1 359 5 discriminator 1
	.loc 1 359 12 is_stmt 0 discriminator 1
	li	a0,0
.LVL76:
.L33:
	.loc 1 360 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
.LVL77:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL78:
.L35:
	.cfi_restore_state
	.loc 1 338 16
	li	a0,-1
.LVL79:
	j	.L33
	.cfi_endproc
.LFE17:
	.size	bl_flash_read, .-bl_flash_read
	.section	.rodata.bl_flash_config_update.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\033[32m======= FlashCfg magiccode @%p=======\r\n\033[0m"
	.align	2
.LC1:
	.string	"\033[32mmid \t\t0x%X\r\n\033[0m"
	.align	2
.LC2:
	.string	"\033[32mclkDelay \t0x%X\r\n\033[0m"
	.align	2
.LC3:
	.string	"\033[32mclkInvert \t0x%X\r\n\033[0m"
	.align	2
.LC4:
	.string	"\033[32msector size\t%uKBytes\r\n\033[0m"
	.align	2
.LC5:
	.string	"\033[32mpage size\t%uBytes\r\n\033[0m"
	.align	2
.LC6:
	.string	"\033[32m--------------------------------------\r\n\033[0m"
	.section	.text.bl_flash_config_update,"ax",@progbits
	.align	1
	.globl	bl_flash_config_update
	.type	bl_flash_config_update, @function
bl_flash_config_update:
.LFB19:
	.loc 1 378 1 is_stmt 1
	.cfi_startproc
	.loc 1 379 5
.LBB14:
.LBB15:
	.loc 1 364 5
	.loc 1 366 5
	.loc 1 368 5
.LBE15:
.LBE14:
	.loc 1 378 1 is_stmt 0
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
.LBB18:
.LBB16:
	.loc 1 368 5
	lui	a1,%hi(__boot2_flashCfg_src)
	lui	a0,%hi(.LC0)
.LBE16:
.LBE18:
	.loc 1 378 1
.LBB19:
.LBB17:
	.loc 1 368 5
	addi	a1,a1,%lo(__boot2_flashCfg_src)
	addi	a0,a0,%lo(.LC0)
	.loc 1 369 58
	lui	s1,%hi(.LANCHOR0)
	.loc 1 368 5
	call	printf
.LVL80:
	.loc 1 369 5 is_stmt 1
	.loc 1 369 58 is_stmt 0
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 369 5
	lbu	a1,13(s1)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL81:
	.loc 1 370 5 is_stmt 1
	lbu	a1,2(s1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL82:
	.loc 1 371 5
	lbu	a1,3(s1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL83:
	.loc 1 372 5
	lbu	a1,12(s1)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL84:
	.loc 1 373 5
	lhu	a1,14(s1)
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL85:
	.loc 1 374 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL86:
.LBE17:
.LBE19:
	.loc 1 381 5
	.loc 1 382 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	bl_flash_config_update, .-bl_flash_config_update
	.section	.text.bl_flash_get_flashCfg,"ax",@progbits
	.align	1
	.globl	bl_flash_get_flashCfg
	.type	bl_flash_get_flashCfg, @function
bl_flash_get_flashCfg:
.LFB20:
	.loc 1 385 1 is_stmt 1
	.cfi_startproc
	.loc 1 386 5
	.loc 1 385 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 387 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 386 12
	lui	a0,%hi(.LANCHOR0)
	.loc 1 387 1
	addi	a0,a0,%lo(.LANCHOR0)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	bl_flash_get_flashCfg, .-bl_flash_get_flashCfg
	.section	.text.bl_flash_read_byxip,"ax",@progbits
	.align	1
	.globl	bl_flash_read_byxip
	.type	bl_flash_read_byxip, @function
bl_flash_read_byxip:
.LFB21:
	.loc 1 390 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 1 391 5
	.loc 1 392 5
	.loc 1 394 5
	.loc 1 390 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 390 1
	sw	a2,-20(s0)
	.loc 1 394 60
	li	a5,553717760
	.loc 1 394 15
	lw	a5,-1440(a5)
	.loc 1 390 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 394 15
	jalr	a5
.LVL88:
	.loc 1 396 5 is_stmt 1
	.loc 1 396 8 is_stmt 0
	bgtu	a0,s1,.L43
	.loc 1 396 25 discriminator 1
	li	a4,16777216
	mv	a5,a0
	.loc 1 399 16 discriminator 1
	li	a0,-1
.LVL89:
	.loc 1 396 25 discriminator 1
	bgeu	s1,a4,.L41
	.loc 1 402 5 is_stmt 1
.LVL90:
	.loc 1 404 5
	lw	a2,-20(s0)
	.loc 1 402 13 is_stmt 0
	li	a1,587202560
	add	a1,s1,a1
	.loc 1 404 5
	sub	a1,a1,a5
	mv	a0,s2
	call	memcpy
.LVL91:
	.loc 1 406 5 is_stmt 1
	.loc 1 406 12 is_stmt 0
	li	a0,0
.L41:
	.loc 1 407 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL92:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL93:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL94:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL95:
.L43:
	.cfi_restore_state
	.loc 1 399 16
	li	a0,-1
.LVL96:
	j	.L41
	.cfi_endproc
.LFE21:
	.size	bl_flash_read_byxip, .-bl_flash_read_byxip
	.section	.data.g_flash_cfg,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_flash_cfg, @object
	.size	g_flash_cfg, 84
g_flash_cfg:
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	102
	.byte	-103
	.byte	-1
	.byte	3
	.byte	-97
	.byte	0
	.byte	-97
	.byte	0
	.byte	4
	.byte	-56
	.half	256
	.byte	-57
	.byte	32
	.byte	82
	.byte	-40
	.byte	6
	.byte	2
	.byte	50
	.byte	0
	.byte	11
	.byte	1
	.byte	11
	.byte	1
	.byte	59
	.byte	1
	.byte	-69
	.byte	0
	.byte	107
	.byte	1
	.byte	-21
	.byte	2
	.byte	-21
	.byte	2
	.byte	2
	.byte	80
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	1
	.byte	-85
	.byte	1
	.string	"\0055"
	.zero	1
	.string	"\001\001"
	.zero	1
	.byte	56
	.byte	-1
	.byte	-96
	.byte	-1
	.byte	119
	.byte	3
	.byte	2
	.byte	64
	.byte	119
	.byte	3
	.byte	2
	.byte	-16
	.half	300
	.half	1200
	.half	1200
	.half	5
	.half	20000
	.byte	20
	.byte	0
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_ctrl.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sflash.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_romdriver.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_xip_sflash.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_xip_sflash_ext.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sf_cfg_ext.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Common/soft_crc/softcrc.h"
	.file 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_l1c.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x12ee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF321
	.byte	0xc
	.4byte	.LASF322
	.4byte	.LASF323
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x59
	.byte	0x4
	.4byte	0x48
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6c
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7f
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.4byte	0x48
	.4byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x17
	.byte	0x1
	.4byte	0xce
	.byte	0xa
	.4byte	.LASF13
	.byte	0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0xa
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.4byte	0xad
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x21
	.byte	0x1
	.4byte	0xf5
	.byte	0xa
	.4byte	.LASF17
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	0x48
	.4byte	0x105
	.byte	0x7
	.4byte	0x25
	.byte	0x5b
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x62
	.byte	0xe
	.4byte	0x132
	.byte	0xa
	.4byte	.LASF19
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.4byte	.LASF21
	.byte	0x2
	.byte	0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x7d
	.byte	0xe
	.4byte	0x153
	.byte	0xa
	.4byte	.LASF24
	.byte	0
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa
	.4byte	.LASF26
	.byte	0x2
	.byte	0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x8f
	.byte	0xe
	.4byte	0x174
	.byte	0xa
	.4byte	.LASF27
	.byte	0
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x54
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.4byte	0x526
	.byte	0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3a
	.byte	0xd
	.4byte	0x48
	.byte	0
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3b
	.byte	0xd
	.4byte	0x48
	.byte	0x1
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0x48
	.byte	0x2
	.byte	0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.4byte	0x48
	.byte	0x3
	.byte	0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3e
	.byte	0xd
	.4byte	0x48
	.byte	0x4
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3f
	.byte	0xd
	.4byte	0x48
	.byte	0x5
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x40
	.byte	0xd
	.4byte	0x48
	.byte	0x6
	.byte	0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x41
	.byte	0xd
	.4byte	0x48
	.byte	0x7
	.byte	0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x42
	.byte	0xd
	.4byte	0x48
	.byte	0x8
	.byte	0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x43
	.byte	0xd
	.4byte	0x48
	.byte	0x9
	.byte	0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0x44
	.byte	0xd
	.4byte	0x48
	.byte	0xa
	.byte	0xc
	.4byte	.LASF41
	.byte	0x5
	.byte	0x45
	.byte	0xd
	.4byte	0x48
	.byte	0xb
	.byte	0xc
	.4byte	.LASF42
	.byte	0x5
	.byte	0x46
	.byte	0xd
	.4byte	0x48
	.byte	0xc
	.byte	0xd
	.string	"mid"
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x48
	.byte	0xd
	.byte	0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.4byte	0x60
	.byte	0xe
	.byte	0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x49
	.byte	0xd
	.4byte	0x48
	.byte	0x10
	.byte	0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4a
	.byte	0xd
	.4byte	0x48
	.byte	0x11
	.byte	0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4b
	.byte	0xd
	.4byte	0x48
	.byte	0x12
	.byte	0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x4c
	.byte	0xd
	.4byte	0x48
	.byte	0x13
	.byte	0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4d
	.byte	0xd
	.4byte	0x48
	.byte	0x14
	.byte	0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0x4e
	.byte	0xd
	.4byte	0x48
	.byte	0x15
	.byte	0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0x4f
	.byte	0xd
	.4byte	0x48
	.byte	0x16
	.byte	0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0x50
	.byte	0xd
	.4byte	0x48
	.byte	0x17
	.byte	0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0x51
	.byte	0xd
	.4byte	0x48
	.byte	0x18
	.byte	0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0x52
	.byte	0xd
	.4byte	0x48
	.byte	0x19
	.byte	0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0x53
	.byte	0xd
	.4byte	0x48
	.byte	0x1a
	.byte	0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0x54
	.byte	0xd
	.4byte	0x48
	.byte	0x1b
	.byte	0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0x55
	.byte	0xd
	.4byte	0x48
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0x56
	.byte	0xd
	.4byte	0x48
	.byte	0x1d
	.byte	0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0x57
	.byte	0xd
	.4byte	0x48
	.byte	0x1e
	.byte	0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0x58
	.byte	0xd
	.4byte	0x48
	.byte	0x1f
	.byte	0xc
	.4byte	.LASF60
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.4byte	0x48
	.byte	0x20
	.byte	0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0x5a
	.byte	0xd
	.4byte	0x48
	.byte	0x21
	.byte	0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5b
	.byte	0xd
	.4byte	0x48
	.byte	0x22
	.byte	0xc
	.4byte	.LASF63
	.byte	0x5
	.byte	0x5c
	.byte	0xd
	.4byte	0x48
	.byte	0x23
	.byte	0xc
	.4byte	.LASF64
	.byte	0x5
	.byte	0x5d
	.byte	0xd
	.4byte	0x48
	.byte	0x24
	.byte	0xc
	.4byte	.LASF65
	.byte	0x5
	.byte	0x5e
	.byte	0xd
	.4byte	0x48
	.byte	0x25
	.byte	0xc
	.4byte	.LASF66
	.byte	0x5
	.byte	0x5f
	.byte	0xd
	.4byte	0x48
	.byte	0x26
	.byte	0xc
	.4byte	.LASF67
	.byte	0x5
	.byte	0x60
	.byte	0xd
	.4byte	0x48
	.byte	0x27
	.byte	0xc
	.4byte	.LASF68
	.byte	0x5
	.byte	0x61
	.byte	0xd
	.4byte	0x48
	.byte	0x28
	.byte	0xc
	.4byte	.LASF69
	.byte	0x5
	.byte	0x62
	.byte	0xd
	.4byte	0x48
	.byte	0x29
	.byte	0xc
	.4byte	.LASF70
	.byte	0x5
	.byte	0x63
	.byte	0xd
	.4byte	0x48
	.byte	0x2a
	.byte	0xc
	.4byte	.LASF71
	.byte	0x5
	.byte	0x64
	.byte	0xd
	.4byte	0x48
	.byte	0x2b
	.byte	0xc
	.4byte	.LASF72
	.byte	0x5
	.byte	0x65
	.byte	0xd
	.4byte	0x48
	.byte	0x2c
	.byte	0xc
	.4byte	.LASF73
	.byte	0x5
	.byte	0x66
	.byte	0xd
	.4byte	0x48
	.byte	0x2d
	.byte	0xc
	.4byte	.LASF74
	.byte	0x5
	.byte	0x67
	.byte	0xd
	.4byte	0x48
	.byte	0x2e
	.byte	0xc
	.4byte	.LASF75
	.byte	0x5
	.byte	0x68
	.byte	0xd
	.4byte	0x48
	.byte	0x2f
	.byte	0xc
	.4byte	.LASF76
	.byte	0x5
	.byte	0x69
	.byte	0xd
	.4byte	0x48
	.byte	0x30
	.byte	0xc
	.4byte	.LASF77
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x48
	.byte	0x31
	.byte	0xc
	.4byte	.LASF78
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x48
	.byte	0x32
	.byte	0xc
	.4byte	.LASF79
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x48
	.byte	0x33
	.byte	0xc
	.4byte	.LASF80
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x94
	.byte	0x34
	.byte	0xc
	.4byte	.LASF81
	.byte	0x5
	.byte	0x6e
	.byte	0xd
	.4byte	0x94
	.byte	0x38
	.byte	0xc
	.4byte	.LASF82
	.byte	0x5
	.byte	0x6f
	.byte	0xd
	.4byte	0x48
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF83
	.byte	0x5
	.byte	0x70
	.byte	0xd
	.4byte	0x48
	.byte	0x3d
	.byte	0xc
	.4byte	.LASF84
	.byte	0x5
	.byte	0x71
	.byte	0xd
	.4byte	0x48
	.byte	0x3e
	.byte	0xc
	.4byte	.LASF85
	.byte	0x5
	.byte	0x72
	.byte	0xd
	.4byte	0x48
	.byte	0x3f
	.byte	0xc
	.4byte	.LASF86
	.byte	0x5
	.byte	0x73
	.byte	0xd
	.4byte	0x48
	.byte	0x40
	.byte	0xc
	.4byte	.LASF87
	.byte	0x5
	.byte	0x74
	.byte	0xd
	.4byte	0x48
	.byte	0x41
	.byte	0xc
	.4byte	.LASF88
	.byte	0x5
	.byte	0x75
	.byte	0xd
	.4byte	0x48
	.byte	0x42
	.byte	0xc
	.4byte	.LASF89
	.byte	0x5
	.byte	0x76
	.byte	0xd
	.4byte	0x48
	.byte	0x43
	.byte	0xc
	.4byte	.LASF90
	.byte	0x5
	.byte	0x77
	.byte	0xd
	.4byte	0x48
	.byte	0x44
	.byte	0xc
	.4byte	.LASF91
	.byte	0x5
	.byte	0x78
	.byte	0xd
	.4byte	0x48
	.byte	0x45
	.byte	0xc
	.4byte	.LASF92
	.byte	0x5
	.byte	0x79
	.byte	0xd
	.4byte	0x48
	.byte	0x46
	.byte	0xc
	.4byte	.LASF93
	.byte	0x5
	.byte	0x7a
	.byte	0xd
	.4byte	0x48
	.byte	0x47
	.byte	0xc
	.4byte	.LASF94
	.byte	0x5
	.byte	0x7b
	.byte	0xe
	.4byte	0x60
	.byte	0x48
	.byte	0xc
	.4byte	.LASF95
	.byte	0x5
	.byte	0x7c
	.byte	0xe
	.4byte	0x60
	.byte	0x4a
	.byte	0xc
	.4byte	.LASF96
	.byte	0x5
	.byte	0x7d
	.byte	0xe
	.4byte	0x60
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF97
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x60
	.byte	0x4e
	.byte	0xc
	.4byte	.LASF98
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x60
	.byte	0x50
	.byte	0xc
	.4byte	.LASF99
	.byte	0x5
	.byte	0x80
	.byte	0xd
	.4byte	0x48
	.byte	0x52
	.byte	0xc
	.4byte	.LASF100
	.byte	0x5
	.byte	0x81
	.byte	0xd
	.4byte	0x48
	.byte	0x53
	.byte	0
	.byte	0x3
	.4byte	.LASF101
	.byte	0x5
	.byte	0x82
	.byte	0x1b
	.4byte	0x174
	.byte	0xe
	.byte	0x4
	.4byte	0x526
	.byte	0xe
	.byte	0x4
	.4byte	0x48
	.byte	0xe
	.byte	0x4
	.4byte	0x73
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x40
	.byte	0xe
	.4byte	0x980
	.byte	0xa
	.4byte	.LASF102
	.byte	0
	.byte	0xa
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa
	.4byte	.LASF104
	.byte	0x2
	.byte	0xa
	.4byte	.LASF105
	.byte	0x3
	.byte	0xa
	.4byte	.LASF106
	.byte	0x4
	.byte	0xa
	.4byte	.LASF107
	.byte	0x5
	.byte	0xa
	.4byte	.LASF108
	.byte	0x6
	.byte	0xa
	.4byte	.LASF109
	.byte	0x7
	.byte	0xa
	.4byte	.LASF110
	.byte	0x8
	.byte	0xa
	.4byte	.LASF111
	.byte	0x9
	.byte	0xa
	.4byte	.LASF112
	.byte	0xa
	.byte	0xa
	.4byte	.LASF113
	.byte	0xb
	.byte	0xa
	.4byte	.LASF114
	.byte	0xc
	.byte	0xa
	.4byte	.LASF115
	.byte	0xd
	.byte	0xa
	.4byte	.LASF116
	.byte	0xe
	.byte	0xa
	.4byte	.LASF117
	.byte	0xf
	.byte	0xa
	.4byte	.LASF118
	.byte	0x10
	.byte	0xa
	.4byte	.LASF119
	.byte	0x11
	.byte	0xa
	.4byte	.LASF120
	.byte	0x12
	.byte	0xa
	.4byte	.LASF121
	.byte	0x13
	.byte	0xa
	.4byte	.LASF122
	.byte	0x14
	.byte	0xa
	.4byte	.LASF123
	.byte	0x15
	.byte	0xa
	.4byte	.LASF124
	.byte	0x16
	.byte	0xa
	.4byte	.LASF125
	.byte	0x17
	.byte	0xa
	.4byte	.LASF126
	.byte	0x18
	.byte	0xa
	.4byte	.LASF127
	.byte	0x19
	.byte	0xa
	.4byte	.LASF128
	.byte	0x1a
	.byte	0xa
	.4byte	.LASF129
	.byte	0x1b
	.byte	0xa
	.4byte	.LASF130
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF131
	.byte	0x1d
	.byte	0xa
	.4byte	.LASF132
	.byte	0x1e
	.byte	0xa
	.4byte	.LASF133
	.byte	0x1f
	.byte	0xa
	.4byte	.LASF134
	.byte	0x20
	.byte	0xa
	.4byte	.LASF135
	.byte	0x21
	.byte	0xa
	.4byte	.LASF136
	.byte	0x22
	.byte	0xa
	.4byte	.LASF137
	.byte	0x23
	.byte	0xa
	.4byte	.LASF138
	.byte	0x24
	.byte	0xa
	.4byte	.LASF139
	.byte	0x25
	.byte	0xa
	.4byte	.LASF140
	.byte	0x26
	.byte	0xa
	.4byte	.LASF141
	.byte	0x27
	.byte	0xa
	.4byte	.LASF142
	.byte	0x28
	.byte	0xa
	.4byte	.LASF143
	.byte	0x29
	.byte	0xa
	.4byte	.LASF144
	.byte	0x2a
	.byte	0xa
	.4byte	.LASF145
	.byte	0x2b
	.byte	0xa
	.4byte	.LASF146
	.byte	0x2c
	.byte	0xa
	.4byte	.LASF147
	.byte	0x2d
	.byte	0xa
	.4byte	.LASF148
	.byte	0x2e
	.byte	0xa
	.4byte	.LASF149
	.byte	0x2f
	.byte	0xa
	.4byte	.LASF150
	.byte	0x30
	.byte	0xa
	.4byte	.LASF151
	.byte	0x31
	.byte	0xa
	.4byte	.LASF152
	.byte	0x32
	.byte	0xa
	.4byte	.LASF153
	.byte	0x33
	.byte	0xa
	.4byte	.LASF154
	.byte	0x34
	.byte	0xa
	.4byte	.LASF155
	.byte	0x35
	.byte	0xa
	.4byte	.LASF156
	.byte	0x36
	.byte	0xa
	.4byte	.LASF157
	.byte	0x37
	.byte	0xa
	.4byte	.LASF158
	.byte	0x38
	.byte	0xa
	.4byte	.LASF159
	.byte	0x39
	.byte	0xa
	.4byte	.LASF160
	.byte	0x3a
	.byte	0xa
	.4byte	.LASF161
	.byte	0x3b
	.byte	0xa
	.4byte	.LASF162
	.byte	0x3c
	.byte	0xa
	.4byte	.LASF163
	.byte	0x3d
	.byte	0xa
	.4byte	.LASF164
	.byte	0x3e
	.byte	0xa
	.4byte	.LASF165
	.byte	0x3f
	.byte	0xa
	.4byte	.LASF166
	.byte	0x40
	.byte	0xa
	.4byte	.LASF167
	.byte	0x41
	.byte	0xa
	.4byte	.LASF168
	.byte	0x42
	.byte	0xa
	.4byte	.LASF169
	.byte	0x43
	.byte	0xa
	.4byte	.LASF170
	.byte	0x44
	.byte	0xa
	.4byte	.LASF171
	.byte	0x45
	.byte	0xa
	.4byte	.LASF172
	.byte	0x46
	.byte	0xa
	.4byte	.LASF173
	.byte	0x47
	.byte	0xa
	.4byte	.LASF174
	.byte	0x48
	.byte	0xa
	.4byte	.LASF175
	.byte	0x49
	.byte	0xa
	.4byte	.LASF176
	.byte	0x4a
	.byte	0xa
	.4byte	.LASF177
	.byte	0x4b
	.byte	0xa
	.4byte	.LASF178
	.byte	0x4c
	.byte	0xa
	.4byte	.LASF179
	.byte	0x4d
	.byte	0xa
	.4byte	.LASF180
	.byte	0x4e
	.byte	0xa
	.4byte	.LASF181
	.byte	0x4f
	.byte	0xa
	.4byte	.LASF182
	.byte	0x50
	.byte	0xa
	.4byte	.LASF183
	.byte	0x51
	.byte	0xa
	.4byte	.LASF184
	.byte	0x52
	.byte	0xa
	.4byte	.LASF185
	.byte	0x53
	.byte	0xa
	.4byte	.LASF186
	.byte	0x54
	.byte	0xa
	.4byte	.LASF187
	.byte	0x55
	.byte	0xa
	.4byte	.LASF188
	.byte	0x56
	.byte	0xa
	.4byte	.LASF189
	.byte	0x57
	.byte	0xa
	.4byte	.LASF190
	.byte	0x58
	.byte	0xa
	.4byte	.LASF191
	.byte	0x59
	.byte	0xa
	.4byte	.LASF192
	.byte	0x5a
	.byte	0xa
	.4byte	.LASF193
	.byte	0x5b
	.byte	0xa
	.4byte	.LASF194
	.byte	0x5c
	.byte	0xa
	.4byte	.LASF195
	.byte	0x5d
	.byte	0xa
	.4byte	.LASF196
	.byte	0x5e
	.byte	0xa
	.4byte	.LASF197
	.byte	0x5f
	.byte	0xa
	.4byte	.LASF198
	.byte	0x60
	.byte	0xa
	.4byte	.LASF199
	.byte	0x61
	.byte	0xa
	.4byte	.LASF200
	.byte	0x62
	.byte	0xa
	.4byte	.LASF201
	.byte	0x63
	.byte	0xa
	.4byte	.LASF202
	.byte	0x64
	.byte	0xa
	.4byte	.LASF203
	.byte	0x65
	.byte	0xa
	.4byte	.LASF204
	.byte	0x66
	.byte	0xa
	.4byte	.LASF205
	.byte	0x67
	.byte	0xa
	.4byte	.LASF206
	.byte	0x68
	.byte	0xa
	.4byte	.LASF207
	.byte	0x69
	.byte	0xa
	.4byte	.LASF208
	.byte	0x6a
	.byte	0xa
	.4byte	.LASF209
	.byte	0x6b
	.byte	0xa
	.4byte	.LASF210
	.byte	0x6c
	.byte	0xa
	.4byte	.LASF211
	.byte	0x6d
	.byte	0xa
	.4byte	.LASF212
	.byte	0x6e
	.byte	0xa
	.4byte	.LASF213
	.byte	0x6f
	.byte	0xa
	.4byte	.LASF214
	.byte	0x70
	.byte	0xa
	.4byte	.LASF215
	.byte	0x71
	.byte	0xa
	.4byte	.LASF216
	.byte	0x72
	.byte	0xa
	.4byte	.LASF217
	.byte	0x73
	.byte	0xa
	.4byte	.LASF218
	.byte	0x74
	.byte	0xa
	.4byte	.LASF219
	.byte	0x75
	.byte	0xa
	.4byte	.LASF220
	.byte	0x76
	.byte	0xa
	.4byte	.LASF221
	.byte	0x77
	.byte	0xa
	.4byte	.LASF222
	.byte	0x78
	.byte	0xa
	.4byte	.LASF223
	.byte	0x79
	.byte	0xa
	.4byte	.LASF224
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF225
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF226
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF227
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF228
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF229
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF230
	.byte	0x80
	.byte	0xa
	.4byte	.LASF231
	.byte	0x81
	.byte	0xa
	.4byte	.LASF232
	.byte	0x82
	.byte	0xa
	.4byte	.LASF233
	.byte	0x83
	.byte	0xa
	.4byte	.LASF234
	.byte	0x84
	.byte	0xa
	.4byte	.LASF235
	.byte	0x85
	.byte	0xa
	.4byte	.LASF236
	.byte	0x86
	.byte	0xa
	.4byte	.LASF237
	.byte	0x87
	.byte	0xa
	.4byte	.LASF238
	.byte	0x88
	.byte	0xa
	.4byte	.LASF239
	.byte	0x89
	.byte	0xa
	.4byte	.LASF240
	.byte	0x8a
	.byte	0xa
	.4byte	.LASF241
	.byte	0x8b
	.byte	0xa
	.4byte	.LASF242
	.byte	0x8c
	.byte	0xa
	.4byte	.LASF243
	.byte	0x8d
	.byte	0xa
	.4byte	.LASF244
	.byte	0x8e
	.byte	0xa
	.4byte	.LASF245
	.byte	0x8f
	.byte	0xa
	.4byte	.LASF246
	.byte	0x90
	.byte	0xa
	.4byte	.LASF247
	.byte	0x91
	.byte	0xa
	.4byte	.LASF248
	.byte	0x92
	.byte	0xa
	.4byte	.LASF249
	.byte	0x93
	.byte	0xa
	.4byte	.LASF250
	.byte	0x94
	.byte	0xa
	.4byte	.LASF251
	.byte	0x95
	.byte	0xa
	.4byte	.LASF252
	.byte	0x96
	.byte	0xa
	.4byte	.LASF253
	.byte	0x97
	.byte	0xa
	.4byte	.LASF254
	.byte	0x98
	.byte	0xa
	.4byte	.LASF255
	.byte	0x99
	.byte	0xa
	.4byte	.LASF256
	.byte	0x9a
	.byte	0xa
	.4byte	.LASF257
	.byte	0x9b
	.byte	0xa
	.4byte	.LASF258
	.byte	0x9c
	.byte	0xa
	.4byte	.LASF259
	.byte	0x9d
	.byte	0xa
	.4byte	.LASF260
	.byte	0x9e
	.byte	0xa
	.4byte	.LASF261
	.byte	0x9f
	.byte	0xa
	.4byte	.LASF262
	.byte	0xa0
	.byte	0xa
	.4byte	.LASF263
	.byte	0xa1
	.byte	0xa
	.4byte	.LASF264
	.byte	0xa2
	.byte	0xa
	.4byte	.LASF265
	.byte	0xa3
	.byte	0xa
	.4byte	.LASF266
	.byte	0xa4
	.byte	0xa
	.4byte	.LASF267
	.byte	0xa5
	.byte	0xa
	.4byte	.LASF268
	.byte	0xa6
	.byte	0xa
	.4byte	.LASF269
	.byte	0xa7
	.byte	0xa
	.4byte	.LASF270
	.byte	0xa8
	.byte	0xa
	.4byte	.LASF271
	.byte	0xa9
	.byte	0xa
	.4byte	.LASF272
	.byte	0xaa
	.byte	0xa
	.4byte	.LASF273
	.byte	0xab
	.byte	0xa
	.4byte	.LASF274
	.byte	0xac
	.byte	0xa
	.4byte	.LASF275
	.byte	0xad
	.byte	0xa
	.4byte	.LASF276
	.byte	0xae
	.byte	0xa
	.4byte	.LASF277
	.byte	0xaf
	.byte	0xa
	.4byte	.LASF278
	.byte	0xb0
	.byte	0xf
	.4byte	.LASF279
	.2byte	0x1ff
	.byte	0
	.byte	0x10
	.4byte	.LASF281
	.byte	0x1
	.byte	0xb
	.byte	0x1b
	.4byte	0x526
	.byte	0x5
	.byte	0x3
	.4byte	g_flash_cfg
	.byte	0x11
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x185
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xa1a
	.byte	0x12
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x185
	.byte	0x22
	.4byte	0x73
	.4byte	.LLST24
	.byte	0x13
	.string	"dst"
	.byte	0x1
	.2byte	0x185
	.byte	0x31
	.4byte	0x538
	.4byte	.LLST25
	.byte	0x13
	.string	"len"
	.byte	0x1
	.2byte	0x185
	.byte	0x3a
	.4byte	0x8d
	.4byte	.LLST26
	.byte	0x14
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x187
	.byte	0xe
	.4byte	0x73
	.4byte	.LLST27
	.byte	0x14
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x188
	.byte	0xe
	.4byte	0x73
	.4byte	.LLST28
	.byte	0x15
	.4byte	.LVL91
	.4byte	0x1219
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x180
	.byte	0x7
	.4byte	0xa4
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.byte	0x18
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x179
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xb07
	.byte	0x19
	.4byte	0xb07
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x17b
	.byte	0x5
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0
	.byte	0x1b
	.4byte	0xb15
	.byte	0x1c
	.4byte	.LVL80
	.4byte	0x1225
	.4byte	0xa7e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1c
	.4byte	.LVL81
	.4byte	0x1225
	.4byte	0xa95
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x1c
	.4byte	.LVL82
	.4byte	0x1225
	.4byte	0xaac
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1c
	.4byte	.LVL83
	.4byte	0x1225
	.4byte	0xac3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1c
	.4byte	.LVL84
	.4byte	0x1225
	.4byte	0xada
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x1c
	.4byte	.LVL85
	.4byte	0x1225
	.4byte	0xaf1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x15
	.4byte	.LVL86
	.4byte	0x1225
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x16a
	.byte	0xd
	.byte	0x1
	.4byte	0xb23
	.byte	0x1e
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x16c
	.byte	0x14
	.4byte	0x48
	.byte	0
	.byte	0x18
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x14b
	.byte	0x8a
	.4byte	0x8d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xbf9
	.byte	0x12
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x14b
	.byte	0xa1
	.4byte	0x73
	.4byte	.LLST20
	.byte	0x13
	.string	"dst"
	.byte	0x1
	.2byte	0x14b
	.byte	0xb0
	.4byte	0x538
	.4byte	.LLST21
	.byte	0x13
	.string	"len"
	.byte	0x1
	.2byte	0x14b
	.byte	0xb9
	.4byte	0x8d
	.4byte	.LLST22
	.byte	0x1f
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x14d
	.byte	0xd
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x20
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x14
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x155
	.byte	0x12
	.4byte	0x8d
	.4byte	.LLST23
	.byte	0x21
	.4byte	.LVL70
	.4byte	0x1231
	.byte	0x1c
	.4byte	.LVL72
	.4byte	0x123d
	.4byte	0xbb8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5f
	.byte	0
	.byte	0x22
	.4byte	.LVL73
	.4byte	0xbde
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x21
	.4byte	.LVL74
	.4byte	0x1249
	.byte	0x15
	.4byte	.LVL75
	.4byte	0x1255
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x12b
	.byte	0x8a
	.4byte	0x8d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xce6
	.byte	0x12
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x12b
	.byte	0xa2
	.4byte	0x73
	.4byte	.LLST16
	.byte	0x13
	.string	"src"
	.byte	0x1
	.2byte	0x12b
	.byte	0xb1
	.4byte	0x538
	.4byte	.LLST17
	.byte	0x13
	.string	"len"
	.byte	0x1
	.2byte	0x12b
	.byte	0xba
	.4byte	0x8d
	.4byte	.LLST18
	.byte	0x1f
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x12d
	.byte	0xd
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x20
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x14
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x135
	.byte	0x12
	.4byte	0x8d
	.4byte	.LLST19
	.byte	0x21
	.4byte	.LVL58
	.4byte	0x1231
	.byte	0x1c
	.4byte	.LVL60
	.4byte	0x1261
	.4byte	0xc91
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL61
	.4byte	0x123d
	.4byte	0xca5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5f
	.byte	0
	.byte	0x22
	.4byte	.LVL62
	.4byte	0xccb
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
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
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x21
	.4byte	.LVL63
	.4byte	0x1249
	.byte	0x15
	.4byte	.LVL64
	.4byte	0x1255
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x10d
	.byte	0x8a
	.4byte	0x8d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xdc0
	.byte	0x12
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x10d
	.byte	0xa2
	.4byte	0x73
	.4byte	.LLST13
	.byte	0x13
	.string	"len"
	.byte	0x1
	.2byte	0x10d
	.byte	0xac
	.4byte	0x8d
	.4byte	.LLST14
	.byte	0x1f
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x10f
	.byte	0xd
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x20
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x14
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x117
	.byte	0x12
	.4byte	0x8d
	.4byte	.LLST15
	.byte	0x21
	.4byte	.LVL46
	.4byte	0x1231
	.byte	0x1c
	.4byte	.LVL49
	.4byte	0x1261
	.4byte	0xd6d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL50
	.4byte	0x123d
	.4byte	0xd81
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5f
	.byte	0
	.byte	0x22
	.4byte	.LVL51
	.4byte	0xda5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0
	.byte	0x21
	.4byte	.LVL52
	.4byte	0x1249
	.byte	0x15
	.4byte	.LVL53
	.4byte	0x1255
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF291
	.byte	0x1
	.byte	0xf2
	.byte	0x8a
	.4byte	0x8d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xf57
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0xf4
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST8
	.byte	0x10
	.4byte	.LASF292
	.byte	0x1
	.byte	0xf5
	.byte	0xe
	.4byte	0x73
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x25
	.4byte	0xf57
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0xf7
	.byte	0xb
	.byte	0x26
	.4byte	0xf68
	.4byte	.LLST9
	.byte	0x26
	.4byte	0xf74
	.4byte	.LLST10
	.byte	0x27
	.4byte	0xf80
	.4byte	.LLST11
	.byte	0x28
	.4byte	0xf8c
	.byte	0x2
	.byte	0x91
	.byte	0x53
	.byte	0x28
	.4byte	0xf98
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x28
	.4byte	0xfa4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x29
	.4byte	0xfb0
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x27
	.4byte	0xfb1
	.4byte	.LLST12
	.byte	0x21
	.4byte	.LVL27
	.4byte	0x1231
	.byte	0x1c
	.4byte	.LVL30
	.4byte	0x123d
	.4byte	0xe6f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x53
	.byte	0
	.byte	0x1c
	.4byte	.LVL31
	.4byte	0x126d
	.4byte	0xe8c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	.LVL32
	.4byte	0x1279
	.4byte	0xea9
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0
	.byte	0x1c
	.4byte	.LVL34
	.4byte	0x11ab
	.4byte	0xec8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1c
	.4byte	.LVL35
	.4byte	0x1285
	.4byte	0xedf
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL38
	.4byte	0xfbf
	.4byte	0xef6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0x1130
	.4byte	0xf0d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL40
	.4byte	0x10cf
	.4byte	0xf24
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL41
	.4byte	0x1291
	.4byte	0xf3b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x21
	.4byte	.LVL42
	.4byte	0x1249
	.byte	0x15
	.4byte	.LVL43
	.4byte	0x1255
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF327
	.byte	0x1
	.byte	0xcf
	.byte	0x99
	.4byte	0xce
	.byte	0x1
	.4byte	0xfbf
	.byte	0x2b
	.4byte	.LASF293
	.byte	0x1
	.byte	0xcf
	.byte	0xbf
	.4byte	0x532
	.byte	0x2b
	.4byte	.LASF292
	.byte	0x1
	.byte	0xcf
	.byte	0xd5
	.4byte	0x538
	.byte	0x2c
	.string	"ret"
	.byte	0x1
	.byte	0xd1
	.byte	0x11
	.4byte	0xce
	.byte	0x2d
	.4byte	.LASF287
	.byte	0x1
	.byte	0xd2
	.byte	0xd
	.4byte	0x48
	.byte	0x2c
	.string	"jid"
	.byte	0x1
	.byte	0xd3
	.byte	0xe
	.4byte	0x73
	.byte	0x2d
	.4byte	.LASF282
	.byte	0x1
	.byte	0xd4
	.byte	0xe
	.4byte	0x73
	.byte	0x2e
	.byte	0x2d
	.4byte	.LASF288
	.byte	0x1
	.byte	0xd6
	.byte	0x12
	.4byte	0x8d
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF294
	.byte	0x1
	.byte	0xb2
	.byte	0x92
	.4byte	0xce
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x10bf
	.byte	0x2f
	.4byte	.LASF293
	.byte	0x1
	.byte	0xb2
	.byte	0xc9
	.4byte	0x532
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LASF295
	.byte	0x1
	.byte	0xb4
	.byte	0x18
	.4byte	0x526
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x30
	.string	"buf"
	.byte	0x1
	.byte	0xb5
	.byte	0xd
	.4byte	0xf5
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x24
	.string	"crc"
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0x73
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LASF296
	.byte	0x1
	.byte	0xb6
	.byte	0x14
	.4byte	0x53e
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x9f
	.byte	0x10
	.4byte	.LASF297
	.byte	0x1
	.byte	0xb7
	.byte	0xa
	.4byte	0x10bf
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7e
	.byte	0x1c
	.4byte	.LVL18
	.4byte	0x129d
	.4byte	0x1064
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x38
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0x94,0x7f
	.byte	0x16
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x8
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	.LVL19
	.4byte	0x12a9
	.4byte	0x1085
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x94,0x7f
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xb8,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x1c
	.4byte	.LVL22
	.4byte	0x12b5
	.4byte	0x10a0
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x98,0x7f
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.byte	0x15
	.4byte	.LVL24
	.4byte	0x12c1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x98,0x7f
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	0xa6
	.4byte	0x10cf
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x23
	.4byte	.LASF298
	.byte	0x1
	.byte	0x9b
	.byte	0x92
	.4byte	0xce
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1130
	.byte	0x2f
	.4byte	.LASF293
	.byte	0x1
	.byte	0x9b
	.byte	0xb9
	.4byte	0x532
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LVL12
	.4byte	0x12cd
	.4byte	0x110c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL15
	.4byte	0x12cd
	.4byte	0x111f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL16
	.4byte	0x12d9
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF299
	.byte	0x1
	.byte	0x8c
	.byte	0x92
	.4byte	0xce
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x116c
	.byte	0x2f
	.4byte	.LASF293
	.byte	0x1
	.byte	0x8c
	.byte	0xbc
	.4byte	0x532
	.4byte	.LLST4
	.byte	0x15
	.4byte	.LVL7
	.4byte	0x12e5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF300
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.4byte	0xce
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x11a5
	.byte	0x2f
	.4byte	.LASF301
	.byte	0x1
	.byte	0x7f
	.byte	0x25
	.4byte	0x11a5
	.4byte	.LLST3
	.byte	0x31
	.string	"len"
	.byte	0x1
	.byte	0x7f
	.byte	0x39
	.4byte	0x53e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x538
	.byte	0x23
	.4byte	.LASF302
	.byte	0x1
	.byte	0x6d
	.byte	0x8c
	.4byte	0xa4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x120c
	.byte	0x31
	.string	"dst"
	.byte	0x1
	.byte	0x6d
	.byte	0x9e
	.4byte	0xa4
	.byte	0x1
	.byte	0x5a
	.byte	0x31
	.string	"src"
	.byte	0x1
	.byte	0x6d
	.byte	0xaf
	.4byte	0x120c
	.byte	0x1
	.byte	0x5b
	.byte	0x32
	.string	"n"
	.byte	0x1
	.byte	0x6d
	.byte	0xbd
	.4byte	0x73
	.4byte	.LLST0
	.byte	0x24
	.string	"p"
	.byte	0x1
	.byte	0x6f
	.byte	0x14
	.4byte	0x1213
	.4byte	.LLST1
	.byte	0x24
	.string	"q"
	.byte	0x1
	.byte	0x70
	.byte	0xe
	.4byte	0x538
	.4byte	.LLST2
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x1212
	.byte	0x33
	.byte	0xe
	.byte	0x4
	.4byte	0x54
	.byte	0x34
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.byte	0x34
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x34
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0x9
	.byte	0x1a
	.byte	0x5
	.byte	0x34
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0xa
	.byte	0x54
	.byte	0x6
	.byte	0x34
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0xa
	.byte	0x55
	.byte	0x6
	.byte	0x34
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0x9
	.byte	0x1b
	.byte	0x6
	.byte	0x34
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0xb
	.byte	0x51
	.byte	0xd
	.byte	0x34
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0xb
	.byte	0x49
	.byte	0xd
	.byte	0x34
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0x5
	.byte	0xa7
	.byte	0x6
	.byte	0x34
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0xc
	.byte	0x48
	.byte	0xd
	.byte	0x34
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0xb
	.byte	0x4a
	.byte	0xd
	.byte	0x34
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x5
	.byte	0xb9
	.byte	0xd
	.byte	0x34
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0x3
	.byte	0x8e
	.byte	0x5
	.byte	0x34
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0xd
	.byte	0x7
	.byte	0xa
	.byte	0x34
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0x3
	.byte	0x8b
	.byte	0x7
	.byte	0x34
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0xe
	.byte	0xa0
	.byte	0xd
	.byte	0x34
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x5
	.byte	0xab
	.byte	0x6
	.byte	0x34
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x5
	.byte	0x9e
	.byte	0xd
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x34
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
.LLST24:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88-1
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL88-1
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88-1
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL92
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0xb
	.byte	0x79
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x8c
	.byte	0x46
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70-1
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70-1
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL70-1
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x78
	.byte	0x4c
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	.LVL78
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58-1
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58-1
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL58-1
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x78
	.byte	0x4c
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	.LVL67
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL44
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x3
	.4byte	g_flash_cfg
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x78
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-1
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x78
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE8
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE8
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE8
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
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
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"ROM_API_INDEX_AON_Power_On_SFReg"
.LASF39:
	.string	"jedecIdCmdDmyClk"
.LASF14:
	.string	"ERROR"
.LASF122:
	.string	"ROM_API_INDEX_ASM_Delay_Us"
.LASF106:
	.string	"ROM_API_INDEX_AON_Power_On_MBG"
.LASF22:
	.string	"SF_CTRL_DIO_MODE"
.LASF276:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Exit"
.LASF318:
	.string	"L1C_Set_Wrap"
.LASF72:
	.string	"qeBit"
.LASF123:
	.string	"ROM_API_INDEX_BL602_Delay_US"
.LASF135:
	.string	"ROM_API_INDEX_EF_Ctrl_AutoLoad_Done"
.LASF128:
	.string	"ROM_API_INDEX_BL602_MemSet"
.LASF70:
	.string	"busyIndex"
.LASF69:
	.string	"qeIndex"
.LASF174:
	.string	"ROM_API_INDEX_HBN_Trim_RC32K"
.LASF145:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK"
.LASF192:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_All_Clks"
.LASF38:
	.string	"jedecIdCmd"
.LASF34:
	.string	"resetEnCmd"
.LASF60:
	.string	"fastReadQoCmd"
.LASF290:
	.string	"bl_flash_erase"
.LASF199:
	.string	"ROM_API_INDEX_SFlash_SetSPIMode"
.LASF46:
	.string	"blk32EraseCmd"
.LASF52:
	.string	"fastReadCmd"
.LASF66:
	.string	"qpiPageProgramCmd"
.LASF37:
	.string	"resetCreadCmdSize"
.LASF190:
	.string	"ROM_API_INDEX_PDS_Power_On_PLL"
.LASF150:
	.string	"ROM_API_INDEX_GLB_SW_CPU_Reset"
.LASF0:
	.string	"unsigned int"
.LASF315:
	.string	"BL602_MemCmp"
.LASF9:
	.string	"uint32_t"
.LASF93:
	.string	"deBurstWrapData"
.LASF272:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_With_Lock"
.LASF116:
	.string	"ROM_API_INDEX_AON_Power_On_LDO15_RF"
.LASF319:
	.string	"SFlash_SetBurstWrap"
.LASF31:
	.string	"cReadSupport"
.LASF164:
	.string	"ROM_API_INDEX_HBN_Reset"
.LASF147:
	.string	"ROM_API_INDEX_GLB_Set_SF_CLK"
.LASF321:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF175:
	.string	"ROM_API_INDEX_HBN_Hw_Pu_Pd_Cfg"
.LASF244:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_BE"
.LASF263:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Save"
.LASF126:
	.string	"ROM_API_INDEX_BL602_MemCpy4"
.LASF179:
	.string	"ROM_API_INDEX_L1C_Set_Wrap"
.LASF314:
	.string	"SFlash_Read"
.LASF181:
	.string	"ROM_API_INDEX_L1C_IROM_2T_Access_Set"
.LASF324:
	.string	"bl_flash_get_flashCfg"
.LASF133:
	.string	"ROM_API_INDEX_EF_Ctrl_Load_Efuse_R0"
.LASF316:
	.string	"BFLB_Soft_CRC32"
.LASF264:
	.string	"ROM_API_INDEX_XIP_SFlash_State_Restore"
.LASF247:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key"
.LASF100:
	.string	"qeData"
.LASF265:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_Need_Lock"
.LASF275:
	.string	"ROM_API_INDEX_XIP_SFlash_Opt_Enter"
.LASF63:
	.string	"frQioDmyClk"
.LASF54:
	.string	"qpiFastReadCmd"
.LASF236:
	.string	"ROM_API_INDEX_SF_Cfg_Restore_GPIO17_Fun"
.LASF241:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Pad"
.LASF202:
	.string	"ROM_API_INDEX_SFlash_Busy"
.LASF64:
	.string	"qpiFastReadQioCmd"
.LASF16:
	.string	"BL_Err_Type"
.LASF270:
	.string	"ROM_API_INDEX_XIP_SFlash_GetUniqueId_Need_Lock"
.LASF130:
	.string	"ROM_API_INDEX_BL602_MemCmp"
.LASF223:
	.string	"ROM_API_INDEX_SFlash_Cache_Enable_Set"
.LASF237:
	.string	"ROM_API_INDEX_SF_Cfg_Get_Flash_Cfg_Need_Lock"
.LASF299:
	.string	"flash_set_qspi_enable"
.LASF220:
	.string	"ROM_API_INDEX_SFlash_Reset_Continue_Read"
.LASF11:
	.string	"long long unsigned int"
.LASF252:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Disable"
.LASF227:
	.string	"ROM_API_INDEX_SFlash_Cache_Miss_Count_Get"
.LASF134:
	.string	"ROM_API_INDEX_EF_Ctrl_Busy"
.LASF75:
	.string	"wrEnableReadRegLen"
.LASF152:
	.string	"ROM_API_INDEX_GLB_Select_Internal_Flash"
.LASF45:
	.string	"sectorEraseCmd"
.LASF51:
	.string	"qppAddrMode"
.LASF156:
	.string	"ROM_API_INDEX_GLB_GPIO_Init"
.LASF24:
	.string	"SF_CTRL_ADDR_1_LINE"
.LASF42:
	.string	"sectorSize"
.LASF207:
	.string	"ROM_API_INDEX_SFlash_Sector_Erase"
.LASF262:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Clock_Delay"
.LASF288:
	.string	"____global_prev_mie_irq____"
.LASF61:
	.string	"frQoDmyClk"
.LASF216:
	.string	"ROM_API_INDEX_SFlash_Releae_Powerdown"
.LASF153:
	.string	"ROM_API_INDEX_GLB_Select_External_Flash"
.LASF105:
	.string	"ROM_API_INDEX_RSVD_LAST"
.LASF251:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable"
.LASF283:
	.string	"xipaddr"
.LASF85:
	.string	"cRExit"
.LASF15:
	.string	"TIMEOUT"
.LASF172:
	.string	"ROM_API_INDEX_HBN_Power_On_RC32K"
.LASF49:
	.string	"pageProgramCmd"
.LASF148:
	.string	"ROM_API_INDEX_GLB_Set_PKA_CLK_Sel"
.LASF120:
	.string	"ROM_API_INDEX_AON_LowPower_Enter_PDS0"
.LASF215:
	.string	"ROM_API_INDEX_SFlash_Powerdown"
.LASF92:
	.string	"deBurstWrapDataMode"
.LASF193:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_Clk"
.LASF249:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV"
.LASF269:
	.string	"ROM_API_INDEX_XIP_SFlash_GetDeviceId_Need_Lock"
.LASF261:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Clock_Delay"
.LASF163:
	.string	"ROM_API_INDEX_HBN_Enable"
.LASF103:
	.string	"ROM_API_INDEX_RSVD_0"
.LASF104:
	.string	"ROM_API_INDEX_RSVD_1"
.LASF267:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Need_Lock"
.LASF146:
	.string	"ROM_API_INDEX_System_Core_Clock_Update_From_RC32M"
.LASF313:
	.string	"XIP_SFlash_State_Restore_Ext"
.LASF224:
	.string	"ROM_API_INDEX_SFlash_Cache_Flush"
.LASF47:
	.string	"blk64EraseCmd"
.LASF44:
	.string	"chipEraseCmd"
.LASF168:
	.string	"ROM_API_INDEX_HBN_32K_Sel"
.LASF273:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_With_Lock"
.LASF281:
	.string	"g_flash_cfg"
.LASF282:
	.string	"offset"
.LASF296:
	.string	"pCrc"
.LASF56:
	.string	"fastReadDoCmd"
.LASF95:
	.string	"timeE32k"
.LASF138:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32K_Trim"
.LASF167:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Soc_Vout"
.LASF228:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Disable"
.LASF20:
	.string	"SF_CTRL_DO_MODE"
.LASF83:
	.string	"exitQpi"
.LASF176:
	.string	"ROM_API_INDEX_HBN_Pin_WakeUp_Mask"
.LASF111:
	.string	"ROM_API_INDEX_AON_Power_Off_XTAL"
.LASF260:
	.string	"ROM_API_INDEX_SF_Ctrl_Is_AES_Enable"
.LASF239:
	.string	"ROM_API_INDEX_SF_Cfg_Flash_Identify"
.LASF277:
	.string	"ROM_API_INDEX_BFLB_Soft_CRC32"
.LASF292:
	.string	"jedec_id"
.LASF309:
	.string	"XIP_SFlash_Clear_Status_Register_Need_Lock"
.LASF173:
	.string	"ROM_API_INDEX_HBN_Power_Off_RC32K"
.LASF231:
	.string	"ROM_API_INDEX_SFlash_Write_Reg_With_Cmd"
.LASF107:
	.string	"ROM_API_INDEX_AON_Power_Off_MBG"
.LASF253:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Flash_Image_Offset"
.LASF189:
	.string	"ROM_API_INDEX_PDS_Select_XTAL_As_PLL_Ref"
.LASF125:
	.string	"ROM_API_INDEX_BL602_MemCpy"
.LASF99:
	.string	"pdDelay"
.LASF108:
	.string	"ROM_API_INDEX_AON_Power_On_XTAL"
.LASF13:
	.string	"SUCCESS"
.LASF12:
	.string	"char"
.LASF305:
	.string	"bl_irq_save"
.LASF140:
	.string	"ROM_API_INDEX_GLB_Get_Root_CLK_Sel"
.LASF178:
	.string	"ROM_API_INDEX_HBN_Set_Embedded_Flash_Pullup"
.LASF17:
	.string	"DISABLE"
.LASF285:
	.string	"bl_flash_config_update"
.LASF114:
	.string	"ROM_API_INDEX_AON_Power_On_LDO11_SOC"
.LASF326:
	.string	"__boot2_flashCfg_src"
.LASF59:
	.string	"frDioDmyClk"
.LASF142:
	.string	"ROM_API_INDEX_GLB_Get_BCLK_Div"
.LASF266:
	.string	"ROM_API_INDEX_XIP_SFlash_Write_Need_Lock"
.LASF6:
	.string	"uint8_t"
.LASF27:
	.string	"SF_CTRL_DATA_1_LINE"
.LASF28:
	.string	"SF_CTRL_DATA_2_LINES"
.LASF306:
	.string	"XIP_SFlash_Opt_Enter"
.LASF203:
	.string	"ROM_API_INDEX_SFlash_Write_Enable"
.LASF160:
	.string	"ROM_API_INDEX_GLB_GPIO_Get_Fun"
.LASF221:
	.string	"ROM_API_INDEX_SFlash_Set_IDbus_Cfg"
.LASF40:
	.string	"qpiJedecIdCmd"
.LASF300:
	.string	"flash_get_cfg"
.LASF65:
	.string	"qpiFrQioDmyClk"
.LASF127:
	.string	"ROM_API_INDEX_BL602_MemCpy_Fast"
.LASF87:
	.string	"burstWrapCmdDmyClk"
.LASF112:
	.string	"ROM_API_INDEX_AON_Power_On_BG"
.LASF30:
	.string	"ioMode"
.LASF32:
	.string	"clkDelay"
.LASF254:
	.string	"ROM_API_INDEX_SF_Ctrl_Get_Flash_Image_Offset"
.LASF81:
	.string	"writeRegCmd"
.LASF4:
	.string	"long long int"
.LASF124:
	.string	"ROM_API_INDEX_BL602_Delay_MS"
.LASF304:
	.string	"printf"
.LASF284:
	.string	"bl_flash_read_byxip"
.LASF77:
	.string	"qeReadRegLen"
.LASF317:
	.string	"BL602_MemCpy_Fast"
.LASF165:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Aon_Vout"
.LASF137:
	.string	"ROM_API_INDEX_EF_Ctrl_Read_RC32M_Trim"
.LASF205:
	.string	"ROM_API_INDEX_SFlash_Volatile_Reg_Write_Enable"
.LASF68:
	.string	"wrEnableIndex"
.LASF226:
	.string	"ROM_API_INDEX_SFlash_Cache_Hit_Count_Get"
.LASF206:
	.string	"ROM_API_INDEX_SFlash_Chip_Erase"
.LASF217:
	.string	"ROM_API_INDEX_SFlash_SetBurstWrap"
.LASF67:
	.string	"writeVregEnableCmd"
.LASF73:
	.string	"busyBit"
.LASF78:
	.string	"releasePowerDown"
.LASF242:
	.string	"ROM_API_INDEX_SF_Ctrl_Set_Owner"
.LASF84:
	.string	"cReadMode"
.LASF234:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Internal_Flash_Gpio"
.LASF36:
	.string	"resetCreadCmd"
.LASF117:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO15_RF"
.LASF235:
	.string	"ROM_API_INDEX_SF_Cfg_Deinit_Ext_Flash_Gpio"
.LASF191:
	.string	"ROM_API_INDEX_PDS_Enable_PLL_All_Clks"
.LASF62:
	.string	"fastReadQioCmd"
.LASF19:
	.string	"SF_CTRL_NIO_MODE"
.LASF35:
	.string	"resetCmd"
.LASF183:
	.string	"ROM_API_INDEX_PDS_Enable"
.LASF195:
	.string	"ROM_API_INDEX_PDS_Power_Off_PLL"
.LASF86:
	.string	"burstWrapCmd"
.LASF232:
	.string	"ROM_API_INDEX_SFlash_Restore_From_Powerdown"
.LASF218:
	.string	"ROM_API_INDEX_SFlash_DisableBurstWrap"
.LASF115:
	.string	"ROM_API_INDEX_AON_Power_Off_LDO11_SOC"
.LASF245:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Enable_LE"
.LASF102:
	.string	"ROM_API_INDEX_VERSION"
.LASF307:
	.string	"XIP_SFlash_Opt_Exit"
.LASF143:
	.string	"ROM_API_INDEX_GLB_Get_HCLK_Div"
.LASF278:
	.string	"ROM_API_INDEX_FUNC_EMPTY_START"
.LASF29:
	.string	"SF_CTRL_DATA_4_LINES"
.LASF302:
	.string	"arch_memcpy"
.LASF144:
	.string	"ROM_API_INDEX_Update_SystemCoreClockWith_XTAL"
.LASF322:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_flash.c"
.LASF98:
	.string	"timeCe"
.LASF268:
	.string	"ROM_API_INDEX_XIP_SFlash_GetJedecId_Need_Lock"
.LASF214:
	.string	"ROM_API_INDEX_SFlash_GetDeviceId"
.LASF169:
	.string	"ROM_API_INDEX_HBN_Set_ROOT_CLK_Sel"
.LASF58:
	.string	"fastReadDioCmd"
.LASF90:
	.string	"deBurstWrapCmd"
.LASF208:
	.string	"ROM_API_INDEX_SFlash_Blk32_Erase"
.LASF7:
	.string	"uint16_t"
.LASF201:
	.string	"ROM_API_INDEX_SFlash_Write_Reg"
.LASF325:
	.string	"_dump_flash_config"
.LASF171:
	.string	"ROM_API_INDEX_HBN_Power_Off_Xtal_32K"
.LASF141:
	.string	"ROM_API_INDEX_GLB_Set_System_CLK_Div"
.LASF212:
	.string	"ROM_API_INDEX_SFlash_GetUniqueId"
.LASF213:
	.string	"ROM_API_INDEX_SFlash_GetJedecId"
.LASF312:
	.string	"SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext"
.LASF243:
	.string	"ROM_API_INDEX_SF_Ctrl_Disable"
.LASF155:
	.string	"ROM_API_INDEX_GLB_Swap_Flash_Pin"
.LASF96:
	.string	"timeE64k"
.LASF57:
	.string	"frDoDmyClk"
.LASF187:
	.string	"ROM_API_INDEX_PDS_Trim_RC32M"
.LASF129:
	.string	"ROM_API_INDEX_BL602_MemSet4"
.LASF121:
	.string	"ROM_API_INDEX_AON_LowPower_Exit_PDS0"
.LASF149:
	.string	"ROM_API_INDEX_GLB_SW_System_Reset"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"SF_CTRL_QIO_MODE"
.LASF279:
	.string	"ROM_API_INDEX_FUNC_EMPTY_END"
.LASF188:
	.string	"ROM_API_INDEX_PDS_Select_RC32M_As_PLL_Ref"
.LASF50:
	.string	"qpageProgramCmd"
.LASF3:
	.string	"long int"
.LASF185:
	.string	"ROM_API_INDEX_PDS_RAM_Config"
.LASF159:
	.string	"ROM_API_INDEX_GLB_GPIO_Set_HZ"
.LASF154:
	.string	"ROM_API_INDEX_GLB_Deswap_Flash_Pin"
.LASF310:
	.string	"XIP_SFlash_State_Save_Ext"
.LASF161:
	.string	"ROM_API_INDEX_HBN_Mode_Enter"
.LASF295:
	.string	"flashCfg"
.LASF298:
	.string	"flash_set_l1c_wrap"
.LASF74:
	.string	"wrEnableWriteRegLen"
.LASF55:
	.string	"qpiFrDmyClk"
.LASF101:
	.string	"SPI_Flash_Cfg_Type"
.LASF110:
	.string	"ROM_API_INDEX_AON_Get_Xtal_CapCode"
.LASF186:
	.string	"ROM_API_INDEX_PDS_Default_Level_Config"
.LASF131:
	.string	"ROM_API_INDEX_EF_Ctrl_Sw_AHB_Clk_0"
.LASF162:
	.string	"ROM_API_INDEX_HBN_Power_Down_Flash"
.LASF327:
	.string	"flash_config_init"
.LASF151:
	.string	"ROM_API_INDEX_GLB_SW_POR_Reset"
.LASF259:
	.string	"ROM_API_INDEX_SF_Ctrl_GetBusyState"
.LASF219:
	.string	"ROM_API_INDEX_SFlash_Software_Reset"
.LASF311:
	.string	"SFlash_GetJedecId"
.LASF293:
	.string	"p_flash_cfg"
.LASF240:
	.string	"ROM_API_INDEX_SF_Ctrl_Enable"
.LASF132:
	.string	"ROM_API_INDEX_EF_Ctrl_Program_Efuse_0"
.LASF246:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Region"
.LASF197:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_Off_Sec_Ring"
.LASF297:
	.string	"magic"
.LASF287:
	.string	"isAesEnable"
.LASF194:
	.string	"ROM_API_INDEX_PDS_Disable_PLL_Clk"
.LASF323:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF250:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_IV_BE"
.LASF200:
	.string	"ROM_API_INDEX_SFlash_Read_Reg"
.LASF209:
	.string	"ROM_API_INDEX_SFlash_Blk64_Erase"
.LASF204:
	.string	"ROM_API_INDEX_SFlash_Qspi_Enable"
.LASF18:
	.string	"ENABLE"
.LASF109:
	.string	"ROM_API_INDEX_AON_Set_Xtal_CapCode"
.LASF198:
	.string	"ROM_API_INDEX_SFlash_Init"
.LASF10:
	.string	"long unsigned int"
.LASF255:
	.string	"ROM_API_INDEX_SF_Ctrl_Select_Clock"
.LASF225:
	.string	"ROM_API_INDEX_SFlash_Cache_Read_Enable"
.LASF294:
	.string	"flash_get_clkdelay_from_bootheader"
.LASF21:
	.string	"SF_CTRL_QO_MODE"
.LASF256:
	.string	"ROM_API_INDEX_SF_Ctrl_SendCmd"
.LASF184:
	.string	"ROM_API_INDEX_PDS_Force_Config"
.LASF170:
	.string	"ROM_API_INDEX_HBN_Power_On_Xtal_32K"
.LASF158:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Disable"
.LASF271:
	.string	"ROM_API_INDEX_XIP_SFlash_Read_Via_Cache_Need_Lock"
.LASF320:
	.string	"SFlash_Qspi_Enable"
.LASF291:
	.string	"bl_flash_init"
.LASF82:
	.string	"enterQpi"
.LASF53:
	.string	"frDmyClk"
.LASF210:
	.string	"ROM_API_INDEX_SFlash_Erase"
.LASF97:
	.string	"timePagePgm"
.LASF5:
	.string	"unsigned char"
.LASF230:
	.string	"ROM_API_INDEX_SFlash_Read_Reg_With_Cmd"
.LASF139:
	.string	"ROM_API_INDEX_EF_Ctrl_Clear"
.LASF180:
	.string	"ROM_API_INDEX_L1C_Set_Way_Disable"
.LASF76:
	.string	"qeWriteRegLen"
.LASF26:
	.string	"SF_CTRL_ADDR_4_LINES"
.LASF91:
	.string	"deBurstWrapCmdDmyClk"
.LASF177:
	.string	"ROM_API_INDEX_HBN_GPIO7_Dbg_Pull_Cfg"
.LASF257:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache_Set"
.LASF280:
	.string	"addr"
.LASF229:
	.string	"ROM_API_INDEX_SFlash_Read"
.LASF71:
	.string	"wrEnableBit"
.LASF157:
	.string	"ROM_API_INDEX_GLB_GPIO_OUTPUT_Enable"
.LASF196:
	.string	"ROM_API_INDEX_SEC_Eng_Turn_On_Sec_Ring"
.LASF301:
	.string	"cfg_addr"
.LASF48:
	.string	"writeEnableCmd"
.LASF136:
	.string	"ROM_API_INDEX_EF_Ctrl_Get_Trim_Parity"
.LASF33:
	.string	"clkInvert"
.LASF286:
	.string	"bl_flash_read"
.LASF289:
	.string	"bl_flash_write"
.LASF1:
	.string	"signed char"
.LASF233:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Ext_Flash_Gpio"
.LASF119:
	.string	"ROM_API_INDEX_AON_Power_Off_SFReg"
.LASF8:
	.string	"short unsigned int"
.LASF80:
	.string	"readRegCmd"
.LASF303:
	.string	"memcpy"
.LASF248:
	.string	"ROM_API_INDEX_SF_Ctrl_AES_Set_Key_BE"
.LASF25:
	.string	"SF_CTRL_ADDR_2_LINES"
.LASF211:
	.string	"ROM_API_INDEX_SFlash_Program"
.LASF94:
	.string	"timeEsector"
.LASF89:
	.string	"burstWrapData"
.LASF274:
	.string	"ROM_API_INDEX_XIP_SFlash_Erase_With_Lock"
.LASF222:
	.string	"ROM_API_INDEX_SFlash_IDbus_Read_Enable"
.LASF79:
	.string	"busyReadRegLen"
.LASF43:
	.string	"pageSize"
.LASF308:
	.string	"bl_irq_restore"
.LASF182:
	.string	"ROM_API_INDEX_PDS_Reset"
.LASF113:
	.string	"ROM_API_INDEX_AON_Power_Off_BG"
.LASF238:
	.string	"ROM_API_INDEX_SF_Cfg_Init_Flash_Gpio"
.LASF166:
	.string	"ROM_API_INDEX_HBN_Set_Ldo11_Rt_Vout"
.LASF88:
	.string	"burstWrapDataMode"
.LASF258:
	.string	"ROM_API_INDEX_SF_Ctrl_Icache2_Set"
.LASF41:
	.string	"qpiJedecIdCmdDmyClk"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
