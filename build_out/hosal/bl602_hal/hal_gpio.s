	.file	"hal_gpio.c"
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
	.section	.rodata.hal_gpio_init_from_dts.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"max_num"
	.align	2
.LC1:
	.string	"gpio%u"
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
	.string	"feature"
	.align	2
.LC6:
	.string	"led"
	.align	2
.LC7:
	.string	"active"
	.align	2
.LC8:
	.string	"Hi"
	.align	2
.LC9:
	.string	"Lo"
	.align	2
.LC10:
	.string	"mode"
	.align	2
.LC11:
	.string	"blink"
	.align	2
.LC12:
	.string	"heartbeat"
	.align	2
.LC13:
	.string	"onoff"
	.align	2
.LC14:
	.string	"time"
	.section	.text.hal_gpio_init_from_dts,"ax",@progbits
	.align	1
	.globl	hal_gpio_init_from_dts
	.type	hal_gpio_init_from_dts, @function
hal_gpio_init_from_dts:
.LFB43:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_gpio.c"
	.loc 2 165 1 is_stmt 1
	.cfi_startproc
.LVL2:
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	s4,88(sp)
	sw	ra,108(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
.LBB10:
.LBB11:
	.loc 2 47 17 is_stmt 0
	lui	a2,%hi(.LC0)
.LBE11:
.LBE10:
	.loc 2 165 1
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
.LBB15:
.LBB12:
	.loc 2 47 17
	addi	a3,s0,-76
	addi	a2,a2,%lo(.LC0)
.LBE12:
.LBE15:
	.loc 2 165 1
	mv	s1,a0
	.loc 2 166 5 is_stmt 1
	.loc 2 167 5
	.loc 2 168 5
	.loc 2 170 5
.LVL3:
.LBB16:
.LBB13:
	.loc 2 43 5
.LBE13:
.LBE16:
	.loc 2 165 1 is_stmt 0
	sw	a1,-100(s0)
.LBB17:
.LBB14:
	.loc 2 43 9
	sw	zero,-76(s0)
	.loc 2 44 5 is_stmt 1
.LVL4:
	.loc 2 45 5
	.loc 2 47 5
	.loc 2 47 17 is_stmt 0
	call	fdt_getprop
.LVL5:
	.loc 2 48 5 is_stmt 1
	li	s4,-1
	.loc 2 48 8 is_stmt 0
	beq	a0,zero,.L4
	.loc 2 51 5 is_stmt 1
	.loc 2 51 26 is_stmt 0
	lw	a0,0(a0)
.LVL6:
	call	fdt32_to_cpu
.LVL7:
	mv	s4,a0
	.loc 2 52 5 is_stmt 1
.L4:
.LVL8:
.LBE14:
.LBE17:
	.loc 2 171 5
	.loc 2 173 5
	.loc 2 174 5
	.loc 2 175 5
	.loc 2 176 5
.LBB18:
.LBB19:
	.loc 2 152 30 is_stmt 0
	lui	s3,%hi(led_onoff_config)
.LBE19:
.LBE18:
	.loc 2 176 12
	li	s5,0
	.loc 2 177 9
	lui	s6,%hi(.LC1)
.LBB23:
.LBB24:
	.loc 2 82 14
	lui	s7,%hi(.LC2)
.LBE24:
.LBE23:
.LBB30:
.LBB20:
	.loc 2 152 30
	addi	s3,s3,%lo(led_onoff_config)
.LBE20:
.LBE30:
.LBB31:
.LBB25:
	.loc 2 83 27
	lui	s8,%hi(.LC3)
	.loc 2 88 17
	lui	s9,%hi(.LC4)
	.loc 2 95 14
	lui	s10,%hi(.LC5)
	.loc 2 96 24
	lui	s11,%hi(.LC6)
.LVL9:
.L5:
.LBE25:
.LBE31:
	.loc 2 176 17 is_stmt 1 discriminator 1
	.loc 2 176 5 is_stmt 0 discriminator 1
	blt	s5,s4,.L20
.L7:
	.loc 2 189 5 is_stmt 1
	.loc 2 190 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
.LVL10:
	lw	s1,100(sp)
	.cfi_restore 9
.LVL11:
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
.LVL12:
	lw	s5,84(sp)
	.cfi_restore 21
.LVL13:
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
	li	a0,0
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L20:
	.cfi_restore_state
	.loc 2 177 9 is_stmt 1
	mv	a3,s5
	addi	a2,s6,%lo(.LC1)
	li	a1,11
	addi	a0,s0,-88
	call	snprintf
.LVL15:
	.loc 2 178 9
.LBB32:
.LBB26:
	.loc 2 73 15 is_stmt 0
	lw	a1,-100(s0)
	addi	a2,s0,-88
	mv	a0,s1
.LBE26:
.LBE32:
	.loc 2 178 32
	sb	zero,-77(s0)
	.loc 2 179 9 is_stmt 1
.LVL16:
.LBB33:
.LBB27:
	.loc 2 57 5
	.loc 2 58 5
	.loc 2 58 9 is_stmt 0
	sw	zero,-92(s0)
	.loc 2 59 5 is_stmt 1
.LVL17:
	.loc 2 60 5
	.loc 2 73 5
	.loc 2 73 15 is_stmt 0
	call	fdt_subnode_offset
.LVL18:
	mv	s2,a0
.LVL19:
	.loc 2 74 5 is_stmt 1
	.loc 2 74 8 is_stmt 0
	blt	a0,zero,.L7
	.loc 2 79 5 is_stmt 1
	li	a2,12
	li	a1,0
	addi	a0,s0,-76
.LVL20:
	call	memset
.LVL21:
	.loc 2 80 5
	.loc 2 82 14 is_stmt 0
	addi	a4,s0,-92
	mv	a1,s2
	li	a3,0
	addi	a2,s7,%lo(.LC2)
	mv	a0,s1
	.loc 2 80 24
	sb	zero,-72(s0)
	.loc 2 82 5 is_stmt 1
	.loc 2 82 14 is_stmt 0
	call	fdt_stringlist_get
.LVL22:
	.loc 2 83 8
	lw	a4,-92(s0)
	li	a5,4
	.loc 2 82 14
	mv	a1,a0
.LVL23:
	.loc 2 83 5 is_stmt 1
	.loc 2 83 8 is_stmt 0
	beq	a4,a5,.L8
.LVL24:
.L11:
.LBE27:
.LBE33:
	.loc 2 181 16 is_stmt 1
	.loc 2 181 19 is_stmt 0
	lbu	a4,-72(s0)
	li	a5,1
	bne	a4,a5,.L10
.L9:
	.loc 2 182 13 is_stmt 1
.LVL25:
	.loc 2 146 6
	.loc 2 183 13
.LBB34:
.LBB21:
	.loc 2 151 5
	.loc 2 151 7 is_stmt 0
	lbu	a4,-69(s0)
	li	a5,2
	.loc 2 152 38
	lw	a0,-76(s0)
	.loc 2 151 7
	bne	a4,a5,.L19
	.loc 2 152 9 is_stmt 1
	.loc 2 153 32 is_stmt 0
	li	a5,1
	sb	a5,4(s3)
	.loc 2 154 33
	lbu	a5,-70(s0)
	.loc 2 152 30
	sw	a0,0(s3)
	.loc 2 153 9 is_stmt 1
	.loc 2 154 9
	.loc 2 156 9 is_stmt 0
	li	a1,0
	li	a2,0
	andi	a0,a0,0xff
	.loc 2 154 33
	sb	a5,5(s3)
	.loc 2 156 9 is_stmt 1
	call	bl_gpio_enable_output
.LVL26:
	.loc 2 157 9
	lbu	a1,5(s3)
	lbu	a0,0(s3)
	seqz	a1,a1
	call	bl_gpio_output_set
.LVL27:
.L10:
.LBE21:
.LBE34:
	.loc 2 185 13 discriminator 2
	.loc 2 176 26 discriminator 2
	.loc 2 176 27 is_stmt 0 discriminator 2
	addi	s5,s5,1
.LVL28:
	j	.L5
.LVL29:
.L8:
.LBB35:
.LBB28:
	.loc 2 83 27
	li	a2,4
	addi	a0,s8,%lo(.LC3)
.LVL30:
	call	memcmp
.LVL31:
	.loc 2 83 23
	bne	a0,zero,.L11
	.loc 2 88 5 is_stmt 1
	.loc 2 88 17 is_stmt 0
	addi	a3,s0,-92
	addi	a2,s9,%lo(.LC4)
	mv	a1,s2
	mv	a0,s1
	call	fdt_getprop
.LVL32:
	.loc 2 89 5 is_stmt 1
	.loc 2 89 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 2 93 5 is_stmt 1
	.loc 2 93 35 is_stmt 0
	lw	a0,0(a0)
.LVL33:
	call	fdt32_to_cpu
.LVL34:
	.loc 2 93 22
	sw	a0,-76(s0)
	.loc 2 95 5 is_stmt 1
	.loc 2 95 14 is_stmt 0
	addi	a4,s0,-92
	mv	a1,s2
	li	a3,0
	addi	a2,s10,%lo(.LC5)
	mv	a0,s1
	call	fdt_stringlist_get
.LVL35:
	.loc 2 96 8
	lw	a4,-92(s0)
	li	a5,3
	.loc 2 95 14
	mv	a1,a0
.LVL36:
	.loc 2 96 5 is_stmt 1
	.loc 2 96 8 is_stmt 0
	bne	a4,a5,.L11
	.loc 2 96 24
	li	a2,3
	addi	a0,s11,%lo(.LC6)
.LVL37:
	call	memcmp
.LVL38:
	.loc 2 96 21
	bne	a0,zero,.L11
	.loc 2 97 9 is_stmt 1
	.loc 2 103 14 is_stmt 0
	lui	a2,%hi(.LC7)
	addi	a4,s0,-92
	mv	a1,s2
	li	a3,0
	addi	a2,a2,%lo(.LC7)
	mv	a0,s1
	.loc 2 97 30
	sb	zero,-71(s0)
	.loc 2 103 5 is_stmt 1
	.loc 2 103 14 is_stmt 0
	call	fdt_stringlist_get
.LVL39:
	.loc 2 104 8
	lw	a5,-92(s0)
	li	a4,2
	.loc 2 103 14
	mv	a1,a0
.LVL40:
	.loc 2 104 5 is_stmt 1
	.loc 2 104 8 is_stmt 0
	bne	a5,a4,.L11
	.loc 2 104 24
	sw	a0,-104(s0)
	lui	a0,%hi(.LC8)
.LVL41:
	li	a2,2
	addi	a0,a0,%lo(.LC8)
	sw	a5,-108(s0)
	call	memcmp
.LVL42:
	.loc 2 104 21
	lw	a1,-104(s0)
	lw	a5,-108(s0)
	bne	a0,zero,.L13
	.loc 2 105 9 is_stmt 1
	.loc 2 105 29 is_stmt 0
	li	a5,1
	sb	a5,-70(s0)
.L14:
	.loc 2 113 5 is_stmt 1
	.loc 2 113 14 is_stmt 0
	lui	a2,%hi(.LC10)
	addi	a4,s0,-92
	mv	a1,s2
	li	a3,0
	addi	a2,a2,%lo(.LC10)
	mv	a0,s1
	call	fdt_stringlist_get
.LVL43:
	.loc 2 114 8
	lw	a4,-92(s0)
	li	a5,5
	.loc 2 113 14
	mv	a1,a0
.LVL44:
	.loc 2 114 5 is_stmt 1
	.loc 2 114 8 is_stmt 0
	bne	a4,a5,.L16
	.loc 2 114 24
	sw	a0,-104(s0)
	lui	a0,%hi(.LC11)
.LVL45:
	li	a2,5
	addi	a0,a0,%lo(.LC11)
	call	memcmp
.LVL46:
	.loc 2 114 21
	lw	a1,-104(s0)
	bne	a0,zero,.L16
	.loc 2 115 9 is_stmt 1
	.loc 2 115 27 is_stmt 0
	sb	zero,-69(s0)
.LVL47:
.L17:
	.loc 2 125 5 is_stmt 1
	.loc 2 125 17 is_stmt 0
	lui	a2,%hi(.LC14)
	addi	a3,s0,-92
	addi	a2,a2,%lo(.LC14)
	mv	a1,s2
	mv	a0,s1
	call	fdt_getprop
.LVL48:
	.loc 2 126 5 is_stmt 1
	.loc 2 126 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 2 130 5 is_stmt 1
	.loc 2 130 36 is_stmt 0
	lw	a0,0(a0)
.LVL49:
	call	fdt32_to_cpu
.LVL50:
	.loc 2 133 24
	li	a5,1
	.loc 2 130 23
	sw	a0,-68(s0)
	.loc 2 133 5 is_stmt 1
	.loc 2 133 24 is_stmt 0
	sb	a5,-72(s0)
	.loc 2 135 5 is_stmt 1
.LVL51:
.LBE28:
.LBE35:
	.loc 2 181 16
	j	.L9
.LVL52:
.L13:
.LBB36:
.LBB29:
	.loc 2 106 12
	.loc 2 106 15 is_stmt 0
	lw	a4,-92(s0)
	bne	a4,a5,.L11
	.loc 2 106 31
	lui	a0,%hi(.LC9)
	li	a2,2
	addi	a0,a0,%lo(.LC9)
	call	memcmp
.LVL53:
	.loc 2 106 28
	bne	a0,zero,.L11
	.loc 2 107 9 is_stmt 1
	.loc 2 107 29 is_stmt 0
	sb	zero,-70(s0)
	j	.L14
.LVL54:
.L16:
	.loc 2 116 12 is_stmt 1
	.loc 2 116 15 is_stmt 0
	lw	a4,-92(s0)
	li	a5,9
	bne	a4,a5,.L18
	.loc 2 116 31
	lui	a0,%hi(.LC12)
	li	a2,9
	addi	a0,a0,%lo(.LC12)
	sw	a1,-104(s0)
	call	memcmp
.LVL55:
	.loc 2 116 28
	lw	a1,-104(s0)
	.loc 2 117 27
	li	a5,1
	.loc 2 116 28
	beq	a0,zero,.L30
.L18:
	.loc 2 118 12 is_stmt 1
	.loc 2 118 15 is_stmt 0
	lw	a4,-92(s0)
	li	a5,5
	bne	a4,a5,.L11
	.loc 2 118 31
	lui	a0,%hi(.LC13)
	li	a2,5
	addi	a0,a0,%lo(.LC13)
	call	memcmp
.LVL56:
	.loc 2 118 28
	bne	a0,zero,.L11
	.loc 2 119 9 is_stmt 1
	.loc 2 119 27 is_stmt 0
	li	a5,2
.L30:
	sb	a5,-69(s0)
	j	.L17
.LVL57:
.L19:
.LBE29:
.LBE36:
.LBB37:
.LBB22:
	.loc 2 160 9 is_stmt 1
	lw	a1,-68(s0)
	call	loopset_led_trigger
.LVL58:
	j	.L10
.LBE22:
.LBE37:
	.cfi_endproc
.LFE43:
	.size	hal_gpio_init_from_dts, .-hal_gpio_init_from_dts
	.section	.text.hal_gpio_register_handler,"ax",@progbits
	.align	1
	.globl	hal_gpio_register_handler
	.type	hal_gpio_register_handler, @function
hal_gpio_register_handler:
.LFB44:
	.loc 2 194 1
	.cfi_startproc
.LVL59:
	.loc 2 195 5
	.loc 2 195 8 is_stmt 0
	bne	a0,zero,.L32
	.loc 2 197 16
	li	a0,-1
.LVL60:
	.loc 2 227 1
	ret
.LVL61:
.L34:
	.cfi_def_cfa_register 8
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 2 197 16
	li	a0,-1
.L31:
	.loc 2 227 1
	lw	ra,28(sp)
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
.LVL62:
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL63:
.L32:
	.loc 2 194 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 195 21 discriminator 1
	li	a5,31
	mv	s4,a1
	bgt	a1,a5,.L34
	.loc 2 195 37 discriminator 2
	li	a5,1
	mv	s3,a2
	bgt	a2,a5,.L34
	.loc 2 195 55 discriminator 3
	li	a5,3
	mv	s2,a3
	bgt	a3,a5,.L34
	mv	s1,a0
	.loc 2 202 15
	li	a0,16
.LVL64:
	mv	s5,a4
	.loc 2 200 5 is_stmt 1
	.loc 2 202 5
	.loc 2 202 15 is_stmt 0
	call	pvPortMalloc
.LVL65:
	.loc 2 203 5 is_stmt 1
	.loc 2 203 8 is_stmt 0
	beq	a0,zero,.L34
	.loc 2 208 5 is_stmt 1
	.loc 2 214 9 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a4,0(a5)
	.loc 2 208 22
	sb	s4,12(a0)
	.loc 2 209 5 is_stmt 1
	.loc 2 209 25 is_stmt 0
	sb	s3,13(a0)
	.loc 2 210 5 is_stmt 1
	.loc 2 210 24 is_stmt 0
	sb	s2,14(a0)
	.loc 2 211 5 is_stmt 1
	.loc 2 211 27 is_stmt 0
	sw	s1,4(a0)
	.loc 2 212 5 is_stmt 1
	.loc 2 212 18 is_stmt 0
	sw	s5,8(a0)
	.loc 2 214 5 is_stmt 1
	.loc 2 214 8 is_stmt 0
	bne	a4,zero,.L35
	.loc 2 215 9 is_stmt 1
	.loc 2 215 22 is_stmt 0
	sw	a0,0(a5)
	.loc 2 216 9 is_stmt 1
	.loc 2 216 23 is_stmt 0
	sw	zero,0(a0)
.L36:
	.loc 2 223 5 is_stmt 1
	call	bl_gpio_register
.LVL66:
	.loc 2 225 5
	.loc 2 225 12 is_stmt 0
	li	a0,0
	j	.L31
.LVL67:
.L35:
	.loc 2 219 9 is_stmt 1
	.loc 2 219 23 is_stmt 0
	sw	a4,0(a0)
	.loc 2 220 9 is_stmt 1
	.loc 2 220 22 is_stmt 0
	sw	a0,0(a5)
	j	.L36
	.cfi_endproc
.LFE44:
	.size	hal_gpio_register_handler, .-hal_gpio_register_handler
	.section	.text.hal_gpio_led_on,"ax",@progbits
	.align	1
	.globl	hal_gpio_led_on
	.type	hal_gpio_led_on, @function
hal_gpio_led_on:
.LFB45:
	.loc 2 230 1 is_stmt 1
	.cfi_startproc
	.loc 2 231 5
	.loc 2 231 24 is_stmt 0
	lui	a5,%hi(led_onoff_config)
	addi	a5,a5,%lo(led_onoff_config)
	.loc 2 231 7
	lbu	a4,4(a5)
	beq	a4,zero,.L46
	.loc 2 232 9 is_stmt 1
	.loc 2 230 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 232 9
	lbu	a1,5(a5)
	lbu	a0,0(a5)
	call	bl_gpio_output_set
.LVL68:
	.loc 2 233 9 is_stmt 1
	.loc 2 237 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 2 233 16
	li	a0,0
	.loc 2 237 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L46:
	li	a0,-1
	ret
	.cfi_endproc
.LFE45:
	.size	hal_gpio_led_on, .-hal_gpio_led_on
	.section	.text.hal_gpio_led_off,"ax",@progbits
	.align	1
	.globl	hal_gpio_led_off
	.type	hal_gpio_led_off, @function
hal_gpio_led_off:
.LFB46:
	.loc 2 240 1 is_stmt 1
	.cfi_startproc
	.loc 2 241 5
	.loc 2 241 24 is_stmt 0
	lui	a5,%hi(led_onoff_config)
	addi	a5,a5,%lo(led_onoff_config)
	.loc 2 241 7
	lbu	a4,4(a5)
	beq	a4,zero,.L54
	.loc 2 242 9 is_stmt 1
	.loc 2 240 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 242 9
	lbu	a1,5(a5)
	lbu	a0,0(a5)
	seqz	a1,a1
	call	bl_gpio_output_set
.LVL69:
	.loc 2 243 9 is_stmt 1
	.loc 2 247 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 2 243 16
	li	a0,0
	.loc 2 247 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L54:
	li	a0,-1
	ret
	.cfi_endproc
.LFE46:
	.size	hal_gpio_led_off, .-hal_gpio_led_off
	.comm	led_onoff_config,8,4
	.section	.sbss.pstgpio_head,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pstgpio_head, @object
	.size	pstgpio_head, 4
pstgpio_head:
	.zero	4
	.text
.Letext0:
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/include/loopset.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x898
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0x88
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
	.4byte	0xcd
	.byte	0x9
	.4byte	0xd8
	.byte	0xa
	.4byte	0x83
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x10
	.byte	0x5
	.byte	0x5
	.byte	0x10
	.4byte	0x134
	.byte	0xc
	.4byte	.LASF15
	.byte	0x5
	.byte	0x6
	.byte	0x1c
	.4byte	0x134
	.byte	0
	.byte	0xc
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7
	.byte	0xc
	.4byte	0xc7
	.byte	0x4
	.byte	0xd
	.string	"arg"
	.byte	0x5
	.byte	0x8
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0xc
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa
	.byte	0xd
	.4byte	0x97
	.byte	0xc
	.byte	0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.4byte	0x97
	.byte	0xd
	.byte	0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x97
	.byte	0xe
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd8
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0xd
	.byte	0x3
	.4byte	0xd8
	.byte	0xb
	.4byte	.LASF22
	.byte	0xc
	.byte	0x2
	.byte	0x10
	.byte	0x8
	.4byte	0x1a2
	.byte	0xd
	.string	"pin"
	.byte	0x2
	.byte	0x11
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x2
	.byte	0x14
	.byte	0xd
	.4byte	0x97
	.byte	0x4
	.byte	0xc
	.4byte	.LASF24
	.byte	0x2
	.byte	0x16
	.byte	0xd
	.4byte	0x97
	.byte	0x5
	.byte	0xc
	.4byte	.LASF25
	.byte	0x2
	.byte	0x19
	.byte	0xd
	.4byte	0x97
	.byte	0x6
	.byte	0xc
	.4byte	.LASF26
	.byte	0x2
	.byte	0x1d
	.byte	0xd
	.4byte	0x97
	.byte	0x7
	.byte	0xc
	.4byte	.LASF27
	.byte	0x2
	.byte	0x1e
	.byte	0x12
	.4byte	0x7c
	.byte	0x8
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x2
	.byte	0x21
	.byte	0x1
	.4byte	0x1d3
	.byte	0xd
	.string	"pin"
	.byte	0x2
	.byte	0x23
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x2
	.byte	0x24
	.byte	0xd
	.4byte	0x97
	.byte	0x4
	.byte	0xc
	.4byte	.LASF25
	.byte	0x2
	.byte	0x25
	.byte	0xd
	.4byte	0x97
	.byte	0x5
	.byte	0
	.byte	0xf
	.4byte	.LASF63
	.byte	0x2
	.byte	0x26
	.byte	0x3
	.4byte	0x1a2
	.byte	0x5
	.byte	0x3
	.4byte	led_onoff_config
	.byte	0x10
	.4byte	.LASF32
	.byte	0x2
	.byte	0xc0
	.byte	0x14
	.4byte	0x1f7
	.byte	0x5
	.byte	0x3
	.4byte	pstgpio_head
	.byte	0x7
	.byte	0x4
	.4byte	0x13a
	.byte	0x11
	.4byte	.LASF28
	.byte	0x2
	.byte	0xef
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x221
	.byte	0x12
	.4byte	.LVL69
	.4byte	0x813
	.byte	0
	.byte	0x11
	.4byte	.LASF29
	.byte	0x2
	.byte	0xe5
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x245
	.byte	0x12
	.4byte	.LVL68
	.4byte	0x813
	.byte	0
	.byte	0x11
	.4byte	.LASF30
	.byte	0x2
	.byte	0xc1
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x2dc
	.byte	0x13
	.4byte	.LASF31
	.byte	0x2
	.byte	0xc1
	.byte	0x25
	.4byte	0x83
	.4byte	.LLST16
	.byte	0x13
	.4byte	.LASF17
	.byte	0x2
	.byte	0xc1
	.byte	0x2f
	.4byte	0x75
	.4byte	.LLST17
	.byte	0x13
	.4byte	.LASF18
	.byte	0x2
	.byte	0xc1
	.byte	0x3c
	.4byte	0x75
	.4byte	.LLST18
	.byte	0x13
	.4byte	.LASF19
	.byte	0x2
	.byte	0xc1
	.byte	0x4c
	.4byte	0x75
	.4byte	.LLST19
	.byte	0x14
	.string	"arg"
	.byte	0x2
	.byte	0xc1
	.byte	0x5d
	.4byte	0x83
	.4byte	.LLST20
	.byte	0x15
	.4byte	.LASF33
	.byte	0x2
	.byte	0xc8
	.byte	0x11
	.4byte	0x1f7
	.4byte	.LLST21
	.byte	0x16
	.4byte	.LVL65
	.4byte	0x81f
	.4byte	0x2d2
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x12
	.4byte	.LVL66
	.4byte	0x82b
	.byte	0
	.byte	0x11
	.4byte	.LASF34
	.byte	0x2
	.byte	0xa4
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x6da
	.byte	0x14
	.string	"fdt"
	.byte	0x2
	.byte	0xa4
	.byte	0x25
	.4byte	0xa3
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF35
	.byte	0x2
	.byte	0xa4
	.byte	0x33
	.4byte	0xa3
	.4byte	.LLST2
	.byte	0x18
	.string	"i"
	.byte	0x2
	.byte	0xa6
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x18
	.string	"num"
	.byte	0x2
	.byte	0xa6
	.byte	0xc
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LASF36
	.byte	0x2
	.byte	0xa7
	.byte	0xa
	.4byte	0x6da
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x10
	.4byte	.LASF37
	.byte	0x2
	.byte	0xa8
	.byte	0x20
	.4byte	0x146
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x19
	.4byte	0x79c
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0xaa
	.byte	0xb
	.4byte	0x3cd
	.byte	0x1a
	.4byte	0x7b9
	.4byte	.LLST5
	.byte	0x1a
	.4byte	0x7ad
	.4byte	.LLST6
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x1c
	.4byte	0x7c5
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x1d
	.4byte	0x7d1
	.4byte	.LLST7
	.byte	0x1e
	.4byte	0x7dd
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x837
	.4byte	0x3c2
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0x9c,0x7f
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x7ea
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x6ea
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x2
	.byte	0xb7
	.byte	0xd
	.4byte	0x415
	.byte	0x1a
	.4byte	0x6f7
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LVL26
	.4byte	0x844
	.4byte	0x402
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x12
	.4byte	.LVL27
	.4byte	0x813
	.byte	0x12
	.4byte	.LVL58
	.4byte	0x850
	.byte	0
	.byte	0x19
	.4byte	0x724
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x2
	.byte	0xb3
	.byte	0xd
	.4byte	0x6b4
	.byte	0x1a
	.4byte	0x759
	.4byte	.LLST9
	.byte	0x1a
	.4byte	0x74d
	.4byte	.LLST10
	.byte	0x1a
	.4byte	0x741
	.4byte	.LLST11
	.byte	0x1a
	.4byte	0x735
	.4byte	.LLST12
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1d
	.4byte	0x765
	.4byte	.LLST13
	.byte	0x1c
	.4byte	0x771
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x1d
	.4byte	0x77d
	.4byte	.LLST14
	.byte	0x1d
	.4byte	0x789
	.4byte	.LLST15
	.byte	0x16
	.4byte	.LVL18
	.4byte	0x85c
	.4byte	0x499
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL21
	.4byte	0x869
	.4byte	0x4b8
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x16
	.4byte	.LVL22
	.4byte	0x875
	.4byte	0x4e7
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL31
	.4byte	0x882
	.4byte	0x503
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x16
	.4byte	.LVL32
	.4byte	0x837
	.4byte	0x52d
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x12
	.4byte	.LVL34
	.4byte	0x7ea
	.byte	0x16
	.4byte	.LVL35
	.4byte	0x875
	.4byte	0x565
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL38
	.4byte	0x882
	.4byte	0x581
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x16
	.4byte	.LVL39
	.4byte	0x875
	.4byte	0x5b0
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL42
	.4byte	0x882
	.4byte	0x5d4
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x16
	.4byte	.LVL43
	.4byte	0x875
	.4byte	0x603
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL46
	.4byte	0x882
	.4byte	0x627
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x16
	.4byte	.LVL48
	.4byte	0x837
	.4byte	0x651
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x12
	.4byte	.LVL50
	.4byte	0x7ea
	.byte	0x16
	.4byte	.LVL53
	.4byte	0x882
	.4byte	0x676
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x16
	.4byte	.LVL55
	.4byte	0x882
	.4byte	0x69a
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0x1f
	.4byte	.LVL56
	.4byte	0x882
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL15
	.4byte	0x88e
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3b
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	0x85
	.4byte	0x6ea
	.byte	0x21
	.4byte	0x7c
	.byte	0xb
	.byte	0
	.byte	0x22
	.4byte	.LASF38
	.byte	0x2
	.byte	0x95
	.byte	0xd
	.byte	0x1
	.4byte	0x704
	.byte	0x23
	.4byte	.LASF40
	.byte	0x2
	.byte	0x95
	.byte	0x3c
	.4byte	0x704
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x146
	.byte	0x22
	.4byte	.LASF39
	.byte	0x2
	.byte	0x8a
	.byte	0xd
	.byte	0x1
	.4byte	0x724
	.byte	0x23
	.4byte	.LASF40
	.byte	0x2
	.byte	0x8a
	.byte	0x39
	.4byte	0x704
	.byte	0
	.byte	0x24
	.4byte	.LASF46
	.byte	0x2
	.byte	0x37
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0x796
	.byte	0x25
	.string	"fdt"
	.byte	0x2
	.byte	0x37
	.byte	0x29
	.4byte	0xb4
	.byte	0x23
	.4byte	.LASF35
	.byte	0x2
	.byte	0x37
	.byte	0x37
	.4byte	0xa3
	.byte	0x23
	.4byte	.LASF41
	.byte	0x2
	.byte	0x37
	.byte	0x4f
	.4byte	0x91
	.byte	0x23
	.4byte	.LASF37
	.byte	0x2
	.byte	0x37
	.byte	0x71
	.4byte	0x704
	.byte	0x26
	.4byte	.LASF42
	.byte	0x2
	.byte	0x39
	.byte	0x9
	.4byte	0x75
	.byte	0x26
	.4byte	.LASF43
	.byte	0x2
	.byte	0x3a
	.byte	0x9
	.4byte	0x75
	.byte	0x26
	.4byte	.LASF44
	.byte	0x2
	.byte	0x3b
	.byte	0x15
	.4byte	0x796
	.byte	0x26
	.4byte	.LASF45
	.byte	0x2
	.byte	0x3c
	.byte	0x11
	.4byte	0x91
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0x24
	.4byte	.LASF47
	.byte	0x2
	.byte	0x29
	.byte	0xc
	.4byte	0x75
	.byte	0x1
	.4byte	0x7ea
	.byte	0x25
	.string	"fdt"
	.byte	0x2
	.byte	0x29
	.byte	0x26
	.4byte	0xb4
	.byte	0x23
	.4byte	.LASF35
	.byte	0x2
	.byte	0x29
	.byte	0x34
	.4byte	0xa3
	.byte	0x26
	.4byte	.LASF43
	.byte	0x2
	.byte	0x2b
	.byte	0x9
	.4byte	0x75
	.byte	0x26
	.4byte	.LASF44
	.byte	0x2
	.byte	0x2c
	.byte	0x15
	.4byte	0x796
	.byte	0x26
	.4byte	.LASF48
	.byte	0x2
	.byte	0x2d
	.byte	0xe
	.4byte	0xa3
	.byte	0
	.byte	0x27
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0xa3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x813
	.byte	0x14
	.string	"x"
	.byte	0x1
	.byte	0x5b
	.byte	0x2d
	.4byte	0xbb
	.4byte	.LLST0
	.byte	0
	.byte	0x28
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0x11
	.byte	0x5
	.byte	0x28
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x91
	.byte	0x7
	.byte	0x28
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x5
	.byte	0x17
	.byte	0x6
	.byte	0x29
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x2f4
	.byte	0xd
	.byte	0x28
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x5
	.byte	0xf
	.byte	0x5
	.byte	0x28
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x1c1
	.byte	0x5
	.byte	0x28
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.byte	0x29
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x453
	.byte	0xd
	.byte	0x28
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x9
	.byte	0x1e
	.byte	0x5
	.byte	0x29
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x10a
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65-1
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL65-1
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL65-1
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65-1
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x7f
	.4byte	.LVL10
	.4byte	.LFE43
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL14
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL14
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE43
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL51
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL51
	.2byte	0x4
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x4
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL29
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL29
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL52
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
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
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"valid"
.LASF47:
	.string	"_get_gpio_max"
.LASF39:
	.string	"_dump_gpio_conf"
.LASF30:
	.string	"hal_gpio_register_handler"
.LASF37:
	.string	"gpio_config"
.LASF61:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_gpio.c"
.LASF52:
	.string	"fdt_getprop"
.LASF42:
	.string	"offset1"
.LASF34:
	.string	"hal_gpio_init_from_dts"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"max_num"
.LASF43:
	.string	"lentmp"
.LASF38:
	.string	"_apply_gpio_config"
.LASF6:
	.string	"__uint32_t"
.LASF26:
	.string	"mode"
.LASF25:
	.string	"active"
.LASF57:
	.string	"fdt_stringlist_get"
.LASF62:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF40:
	.string	"config"
.LASF28:
	.string	"hal_gpio_led_off"
.LASF12:
	.string	"uint8_t"
.LASF46:
	.string	"_get_gpio_config"
.LASF49:
	.string	"bl_gpio_output_set"
.LASF31:
	.string	"func"
.LASF8:
	.string	"long long int"
.LASF19:
	.string	"intTrgMod"
.LASF35:
	.string	"dtb_offset"
.LASF56:
	.string	"memset"
.LASF4:
	.string	"long int"
.LASF45:
	.string	"result"
.LASF5:
	.string	"__uint8_t"
.LASF53:
	.string	"bl_gpio_enable_output"
.LASF33:
	.string	"pstnode"
.LASF59:
	.string	"snprintf"
.LASF41:
	.string	"name"
.LASF16:
	.string	"gpio_handler"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"gpio_ctx_t"
.LASF58:
	.string	"memcmp"
.LASF22:
	.string	"gpio_feature_config"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF24:
	.string	"feature"
.LASF13:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF27:
	.string	"time"
.LASF14:
	.string	"fdt32_t"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF44:
	.string	"addr_prop"
.LASF51:
	.string	"bl_gpio_register"
.LASF21:
	.string	"_gpio_ctx_desc"
.LASF18:
	.string	"intCtrlMod"
.LASF7:
	.string	"long unsigned int"
.LASF63:
	.string	"led_onoff_config"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF36:
	.string	"node"
.LASF54:
	.string	"loopset_led_trigger"
.LASF32:
	.string	"pstgpio_head"
.LASF29:
	.string	"hal_gpio_led_on"
.LASF64:
	.string	"fdt32_to_cpu"
.LASF17:
	.string	"gpioPin"
.LASF55:
	.string	"fdt_subnode_offset"
.LASF50:
	.string	"pvPortMalloc"
.LASF15:
	.string	"next"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
