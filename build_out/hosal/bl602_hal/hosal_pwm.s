	.file	"hosal_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hosal_pwm_init,"ax",@progbits
	.align	1
	.globl	hosal_pwm_init
	.type	hosal_pwm_init, @function
hosal_pwm_init:
.LFB8:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_pwm.c"
	.loc 1 21 1
	.cfi_startproc
.LVL0:
	.loc 1 22 5
	.loc 1 23 2
	.loc 1 21 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	s1,20(sp)
	sw	s2,16(sp)
	.loc 1 23 20
	lui	a5,%hi(.LC0)
	.loc 1 21 1
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 23 20
	addi	a5,a5,%lo(.LC0)
	lw	a4,0(a5)
	lhu	a5,4(a5)
	sw	a4,-24(s0)
	sh	a5,-20(s0)
	.loc 1 32 5 is_stmt 1
	.loc 1 32 8 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 32 26 discriminator 1
	lbu	s2,0(a0)
	.loc 1 32 20 discriminator 1
	li	a5,4
	mv	s1,a0
	.loc 1 34 16 discriminator 1
	li	a0,-1
.LVL1:
	.loc 1 32 20 discriminator 1
	bgtu	s2,a5,.L1
	.loc 1 36 5 is_stmt 1
	.loc 1 36 21 is_stmt 0
	lbu	a4,4(s1)
	.loc 1 36 8
	li	a5,5
	remu	a5,a4,a5
.LVL2:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 8 is_stmt 0
	bne	s2,a5,.L1
	.loc 1 41 5 is_stmt 1
	.loc 1 42 5 is_stmt 0
	addi	a0,s0,-24
	.loc 1 41 17
	sb	a4,-24(s0)
	.loc 1 42 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL3:
	.loc 1 44 5
	mv	a0,s2
	call	PWM_Channel_Disable
.LVL4:
	.loc 1 45 5
	.loc 1 45 79 is_stmt 0
	lw	a2,8(s1)
	li	a5,100
	.loc 1 45 5
	lw	a1,12(s1)
	.loc 1 45 79
	divu	a2,a2,a5
	.loc 1 45 5
	mv	a0,s2
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL5:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 12 is_stmt 0
	li	a0,0
.LVL6:
.L1:
	.loc 1 48 1
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
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L3:
	.cfi_restore_state
	.loc 1 34 16
	li	a0,-1
.LVL8:
	j	.L1
	.cfi_endproc
.LFE8:
	.size	hosal_pwm_init, .-hosal_pwm_init
	.section	.text.hosal_pwm_start,"ax",@progbits
	.align	1
	.globl	hosal_pwm_start
	.type	hosal_pwm_start, @function
hosal_pwm_start:
.LFB9:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 59 5
	.loc 1 61 5
	.loc 1 61 8 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 61 26 discriminator 1
	lbu	a0,0(a0)
.LVL10:
	.loc 1 61 20 discriminator 1
	li	a4,4
	.loc 1 63 16 discriminator 1
	li	a5,-1
	.loc 1 61 20 discriminator 1
	bgtu	a0,a4,.L12
	.loc 1 66 5 is_stmt 1
.LVL11:
	.loc 1 67 5
	.loc 1 58 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 67 5
	call	bl_pwm_start
.LVL12:
	.loc 1 68 5 is_stmt 1
	.loc 1 69 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 68 12
	li	a5,0
	.loc 1 69 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L9:
	.loc 1 63 16
	li	a5,-1
.LVL14:
.L12:
	.loc 1 69 1
	mv	a0,a5
	ret
	.cfi_endproc
.LFE9:
	.size	hosal_pwm_start, .-hosal_pwm_start
	.section	.text.hosal_pwm_para_chg,"ax",@progbits
	.align	1
	.globl	hosal_pwm_para_chg
	.type	hosal_pwm_para_chg, @function
hosal_pwm_para_chg:
.LFB10:
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
.LVL15:
	lw	a2,4(a1)
.LVL16:
	lw	a1,8(a1)
.LVL17:
	.loc 1 80 5
	.loc 1 82 5
	.loc 1 82 8 is_stmt 0
	beq	a0,zero,.L17
	mv	a5,a0
	.loc 1 82 26 discriminator 1
	lbu	a0,0(a0)
.LVL18:
	.loc 1 82 20 discriminator 1
	li	a3,4
	.loc 1 84 16 discriminator 1
	li	a4,-1
	.loc 1 82 20 discriminator 1
	bgtu	a0,a3,.L20
	.loc 1 87 5 is_stmt 1
.LVL19:
	.loc 1 88 5
	.loc 1 79 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 89 28
	sw	a2,8(a5)
	.loc 1 88 22
	sw	a1,12(a5)
	.loc 1 89 5 is_stmt 1
	.loc 1 90 5
	.loc 1 90 65 is_stmt 0
	li	a5,100
.LVL20:
	divu	a2,a2,a5
.LVL21:
	.loc 1 90 5
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL22:
	.loc 1 92 5 is_stmt 1
	.loc 1 93 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 92 12
	li	a4,0
	.loc 1 93 1
	mv	a0,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L17:
	.loc 1 84 16
	li	a4,-1
.LVL24:
.L20:
	.loc 1 93 1
	mv	a0,a4
	ret
	.cfi_endproc
.LFE10:
	.size	hosal_pwm_para_chg, .-hosal_pwm_para_chg
	.section	.text.hosal_pwm_freq_set,"ax",@progbits
	.align	1
	.globl	hosal_pwm_freq_set
	.type	hosal_pwm_freq_set, @function
hosal_pwm_freq_set:
.LFB11:
	.loc 1 104 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 105 5
	.loc 1 105 8 is_stmt 0
	beq	a0,zero,.L25
	mv	a5,a0
	.loc 1 105 26 discriminator 1
	lbu	a0,0(a0)
.LVL26:
	.loc 1 105 20 discriminator 1
	li	a2,5
	.loc 1 107 16 discriminator 1
	li	a4,-1
	.loc 1 105 20 discriminator 1
	bgtu	a0,a2,.L29
	.loc 1 109 5 is_stmt 1
	.loc 1 109 8 is_stmt 0
	li	a2,401408
	.loc 1 109 42
	addi	a6,a1,-611
	.loc 1 109 8
	addi	a2,a2,-2019
	bgtu	a6,a2,.L29
	.loc 1 112 5 is_stmt 1
	.loc 1 104 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 113 74
	lw	a2,8(a5)
	.loc 1 112 22
	sw	a1,12(a5)
	.loc 1 113 5 is_stmt 1
	.loc 1 113 74 is_stmt 0
	li	a5,100
.LVL27:
	divu	a2,a2,a5
	.loc 1 113 5
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL28:
	.loc 1 114 5 is_stmt 1
	.loc 1 115 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 114 12
	li	a4,0
	.loc 1 115 1
	mv	a0,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L25:
	.loc 1 107 16
	li	a4,-1
.LVL30:
.L29:
	.loc 1 115 1
	mv	a0,a4
	ret
	.cfi_endproc
.LFE11:
	.size	hosal_pwm_freq_set, .-hosal_pwm_freq_set
	.section	.text.hosal_pwm_freq_get,"ax",@progbits
	.align	1
	.globl	hosal_pwm_freq_get
	.type	hosal_pwm_freq_get, @function
hosal_pwm_freq_get:
.LFB12:
	.loc 1 118 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 119 5
	.loc 1 118 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 119 8
	beq	a0,zero,.L34
	.loc 1 119 20 discriminator 1
	lbu	a3,0(a0)
	li	a4,5
	mv	a5,a0
	.loc 1 121 16 discriminator 1
	li	a0,-1
.LVL32:
	.loc 1 119 20 discriminator 1
	bgtu	a3,a4,.L32
	.loc 1 119 37 discriminator 2
	beq	a1,zero,.L32
	.loc 1 123 5 is_stmt 1
	.loc 1 123 26 is_stmt 0
	lw	a5,12(a5)
.LVL33:
	.loc 1 124 12
	li	a0,0
	.loc 1 123 13
	sw	a5,0(a1)
	.loc 1 124 5 is_stmt 1
.L32:
	.loc 1 125 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L34:
	.cfi_restore_state
	.loc 1 121 16
	li	a0,-1
.LVL35:
	j	.L32
	.cfi_endproc
.LFE12:
	.size	hosal_pwm_freq_get, .-hosal_pwm_freq_get
	.section	.text.hosal_pwm_duty_set,"ax",@progbits
	.align	1
	.globl	hosal_pwm_duty_set
	.type	hosal_pwm_duty_set, @function
hosal_pwm_duty_set:
.LFB13:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 129 2
	.loc 1 129 5 is_stmt 0
	beq	a0,zero,.L40
	mv	a5,a0
	.loc 1 129 23 discriminator 1
	lbu	a0,0(a0)
.LVL37:
	.loc 1 129 17 discriminator 1
	li	a3,4
	.loc 1 131 16 discriminator 1
	li	a4,-1
	.loc 1 129 17 discriminator 1
	bgtu	a0,a3,.L44
	.loc 1 129 35 discriminator 2
	li	a3,8192
	addi	a3,a3,1808
	bgtu	a1,a3,.L44
	.loc 1 133 5 is_stmt 1
	.loc 1 134 86 is_stmt 0
	li	a2,100
	divu	a2,a1,a2
	.loc 1 128 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 133 28
	sw	a1,8(a5)
	.loc 1 134 5 is_stmt 1
	lw	a1,12(a5)
.LVL38:
	andi	a2,a2,0xff
	call	PWM_Smart_Configure
.LVL39:
	.loc 1 135 5
	.loc 1 136 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 135 12
	li	a4,0
	.loc 1 136 1
	mv	a0,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL40:
.L40:
	.loc 1 131 16
	li	a4,-1
.LVL41:
.L44:
	.loc 1 136 1
	mv	a0,a4
	ret
	.cfi_endproc
.LFE13:
	.size	hosal_pwm_duty_set, .-hosal_pwm_duty_set
	.section	.text.hosal_pwm_duty_get,"ax",@progbits
	.align	1
	.globl	hosal_pwm_duty_get
	.type	hosal_pwm_duty_get, @function
hosal_pwm_duty_get:
.LFB14:
	.loc 1 139 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 140 2
	.loc 1 139 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 140 5
	beq	a0,zero,.L49
	.loc 1 140 17 discriminator 1
	lbu	a3,0(a0)
	li	a4,4
	mv	a5,a0
	.loc 1 142 16 discriminator 1
	li	a0,-1
.LVL43:
	.loc 1 140 17 discriminator 1
	bgtu	a3,a4,.L47
	.loc 1 140 35 discriminator 2
	beq	a1,zero,.L47
	.loc 1 144 5 is_stmt 1
	.loc 1 144 26 is_stmt 0
	lw	a5,8(a5)
.LVL44:
	.loc 1 145 12
	li	a0,0
	.loc 1 144 13
	sw	a5,0(a1)
	.loc 1 145 5 is_stmt 1
.L47:
	.loc 1 146 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L49:
	.cfi_restore_state
	.loc 1 142 16
	li	a0,-1
.LVL46:
	j	.L47
	.cfi_endproc
.LFE14:
	.size	hosal_pwm_duty_get, .-hosal_pwm_duty_get
	.section	.text.hosal_pwm_stop,"ax",@progbits
	.align	1
	.globl	hosal_pwm_stop
	.type	hosal_pwm_stop, @function
hosal_pwm_stop:
.LFB15:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 156 5
	.loc 1 158 5
	.loc 1 158 8 is_stmt 0
	beq	a0,zero,.L55
	.loc 1 158 26 discriminator 1
	lbu	a0,0(a0)
.LVL48:
	.loc 1 158 20 discriminator 1
	li	a4,4
	.loc 1 160 16 discriminator 1
	li	a5,-1
	.loc 1 158 20 discriminator 1
	bgtu	a0,a4,.L58
	.loc 1 163 5 is_stmt 1
.LVL49:
	.loc 1 164 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 164 5
	call	bl_pwm_stop
.LVL50:
	.loc 1 165 5 is_stmt 1
	.loc 1 166 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 165 12
	li	a5,0
	.loc 1 166 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL51:
.L55:
	.loc 1 160 16
	li	a5,-1
.LVL52:
.L58:
	.loc 1 166 1
	mv	a0,a5
	ret
	.cfi_endproc
.LFE15:
	.size	hosal_pwm_stop, .-hosal_pwm_stop
	.section	.text.hosal_pwm_finalize,"ax",@progbits
	.align	1
	.globl	hosal_pwm_finalize
	.type	hosal_pwm_finalize, @function
hosal_pwm_finalize:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	tail	hosal_pwm_stop
	.cfi_endproc
.LFE18:
	.size	hosal_pwm_finalize, .-hosal_pwm_finalize
	.section	.srodata,"a"
	.align	2
.LC0:
	.byte	0
	.byte	8
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_pwm.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pwm.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x45d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x67
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
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x5b
	.byte	0x6
	.byte	0x6
	.byte	0x4
	.byte	0x7e
	.byte	0x9
	.4byte	0xfc
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x8c
	.byte	0x1
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x82
	.byte	0xd
	.4byte	0x8c
	.byte	0x2
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x83
	.byte	0xd
	.4byte	0x8c
	.byte	0x3
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x84
	.byte	0xd
	.4byte	0x8c
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x85
	.byte	0xd
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x86
	.byte	0x2
	.4byte	0xa4
	.byte	0x6
	.byte	0xc
	.byte	0x5
	.byte	0x13
	.byte	0x9
	.4byte	0x139
	.byte	0x8
	.string	"pin"
	.byte	0x5
	.byte	0x14
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0x15
	.byte	0xe
	.4byte	0x98
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0x16
	.byte	0xe
	.4byte	0x98
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x17
	.byte	0x3
	.4byte	0x108
	.byte	0x6
	.byte	0x14
	.byte	0x5
	.byte	0x1d
	.byte	0x9
	.4byte	0x176
	.byte	0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x1e
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0x7
	.4byte	.LASF25
	.byte	0x5
	.byte	0x1f
	.byte	0x18
	.4byte	0x139
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x20
	.byte	0xb
	.4byte	0x83
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x21
	.byte	0x3
	.4byte	0x145
	.byte	0x9
	.4byte	.LASF48
	.byte	0x1
	.byte	0xaf
	.byte	0x5
	.4byte	0x7c
	.4byte	0x1aa
	.byte	0xa
	.string	"pwm"
	.byte	0x1
	.byte	0xaf
	.byte	0x29
	.4byte	0x1aa
	.byte	0xb
	.string	"ch"
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	0x8c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x176
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f3
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x9a
	.byte	0x25
	.4byte	0x1aa
	.4byte	.LLST13
	.byte	0xf
	.string	"ch"
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	0x8c
	.4byte	.LLST14
	.byte	0x10
	.4byte	.LVL50
	.4byte	0x423
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8a
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x22c
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x8a
	.byte	0x29
	.4byte	0x1aa
	.4byte	.LLST12
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8a
	.byte	0x38
	.4byte	0x22c
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x98
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x287
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x7f
	.byte	0x29
	.4byte	0x1aa
	.4byte	.LLST10
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7f
	.byte	0x37
	.4byte	0x98
	.4byte	.LLST11
	.byte	0x13
	.4byte	.LVL39
	.4byte	0x42f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf7
	.byte	0x25
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x75
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c0
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x75
	.byte	0x29
	.4byte	0x1aa
	.4byte	.LLST9
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x75
	.byte	0x38
	.4byte	0x22c
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x67
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x30c
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x67
	.byte	0x29
	.4byte	0x1aa
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x67
	.byte	0x37
	.4byte	0x98
	.4byte	.LLST8
	.byte	0x13
	.4byte	.LVL28
	.4byte	0x42f
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4e
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x35f
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x4e
	.byte	0x29
	.4byte	0x1aa
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4e
	.byte	0x41
	.4byte	0x139
	.4byte	.LLST5
	.byte	0xf
	.string	"ch"
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x8c
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LVL22
	.4byte	0x42f
	.byte	0
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a2
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x39
	.byte	0x26
	.4byte	0x1aa
	.4byte	.LLST2
	.byte	0xf
	.string	"ch"
	.byte	0x1
	.byte	0x3b
	.byte	0xd
	.4byte	0x8c
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LVL12
	.4byte	0x43b
	.byte	0
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x423
	.byte	0xe
	.string	"pwm"
	.byte	0x1
	.byte	0x14
	.byte	0x25
	.4byte	0x1aa
	.4byte	.LLST0
	.byte	0xf
	.string	"ch"
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x8c
	.4byte	.LLST1
	.byte	0x15
	.string	"cfg"
	.byte	0x1
	.byte	0x17
	.byte	0x14
	.4byte	0xfc
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x447
	.4byte	0x3fe
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x454
	.4byte	0x412
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x42f
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0xc
	.byte	0x9
	.byte	0x17
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0xbb
	.byte	0xd
	.byte	0x17
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0xb
	.byte	0x9
	.byte	0x18
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x276
	.byte	0xd
	.byte	0x17
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x7
	.byte	0xb7
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
	.byte	0x7
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x2
	.byte	0x7f
	.byte	0x8
	.4byte	.LVL39-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x7
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x93
	.byte	0x4
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x8
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0xc
	.byte	0x93
	.byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL23
	.4byte	.LFE10
	.2byte	0x8
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
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
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12-1
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF6:
	.string	"__uint8_t"
.LASF36:
	.string	"hosal_pwm_para_chg"
.LASF34:
	.string	"p_freq"
.LASF26:
	.string	"priv"
.LASF33:
	.string	"hosal_pwm_freq_get"
.LASF42:
	.string	"bl_pwm_start"
.LASF3:
	.string	"short int"
.LASF46:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_pwm.c"
.LASF28:
	.string	"hosal_pwm_stop"
.LASF35:
	.string	"hosal_pwm_freq_set"
.LASF27:
	.string	"hosal_pwm_dev_t"
.LASF2:
	.string	"unsigned char"
.LASF41:
	.string	"PWM_Smart_Configure"
.LASF8:
	.string	"long unsigned int"
.LASF29:
	.string	"hosal_pwm_duty_get"
.LASF4:
	.string	"short unsigned int"
.LASF44:
	.string	"PWM_Channel_Disable"
.LASF7:
	.string	"__uint32_t"
.LASF25:
	.string	"config"
.LASF39:
	.string	"hosal_pwm_init"
.LASF19:
	.string	"smtCtrl"
.LASF16:
	.string	"gpioMode"
.LASF23:
	.string	"hosal_pwm_config_t"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"char"
.LASF12:
	.string	"uint8_t"
.LASF40:
	.string	"bl_pwm_stop"
.LASF15:
	.string	"gpioFun"
.LASF30:
	.string	"p_duty"
.LASF14:
	.string	"gpioPin"
.LASF48:
	.string	"hosal_pwm_finalize"
.LASF9:
	.string	"long long int"
.LASF32:
	.string	"duty"
.LASF43:
	.string	"GLB_GPIO_Init"
.LASF37:
	.string	"para"
.LASF24:
	.string	"port"
.LASF17:
	.string	"pullType"
.LASF22:
	.string	"freq"
.LASF47:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF31:
	.string	"hosal_pwm_duty_set"
.LASF38:
	.string	"hosal_pwm_start"
.LASF5:
	.string	"long int"
.LASF21:
	.string	"duty_cycle"
.LASF20:
	.string	"GLB_GPIO_Cfg_Type"
.LASF1:
	.string	"signed char"
.LASF13:
	.string	"uint32_t"
.LASF18:
	.string	"drive"
.LASF10:
	.string	"long long unsigned int"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
