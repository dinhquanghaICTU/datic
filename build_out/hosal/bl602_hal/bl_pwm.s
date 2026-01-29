	.file	"bl_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_pwm_init,"ax",@progbits
	.align	1
	.globl	bl_pwm_init
	.type	bl_pwm_init, @function
bl_pwm_init:
.LFB10:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pwm.c"
	.loc 1 53 1
	.cfi_startproc
.LVL0:
	.loc 1 54 5
	.loc 1 54 8 is_stmt 0
	li	a5,22
	bgtu	a1,a5,.L3
	.loc 1 53 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 59 8
	li	a5,798720
	.loc 1 53 1
	.loc 1 59 23
	addi	a4,a2,-2000
	.loc 1 59 8
	addi	a5,a5,-720
	mv	s1,a0
	mv	s2,a2
	.loc 1 59 5 is_stmt 1
	.loc 1 55 16 is_stmt 0
	li	a0,-1
.LVL1:
	.loc 1 59 8
	bgtu	a4,a5,.L1
	.loc 1 65 5 is_stmt 1
.LVL2:
.LBB6:
.LBB7:
	.loc 1 12 2
	.loc 1 14 2
	.loc 1 15 2
	.loc 1 16 2
	.loc 1 17 2
	.loc 1 18 5
	.loc 1 19 17 is_stmt 0
	li	a5,8
	sb	a5,-43(s0)
	.loc 1 16 15
	li	a5,257
	sh	a5,-42(s0)
	.loc 1 21 5
	addi	a0,s0,-44
	.loc 1 14 12
	li	a5,256
	sh	a5,-40(s0)
	.loc 1 18 17
	sb	a1,-44(s0)
	.loc 1 19 5 is_stmt 1
	.loc 1 21 5
	call	GLB_GPIO_Init
.LVL3:
.LBE7:
.LBE6:
	.loc 1 66 5
.LBB8:
.LBB9:
	.loc 1 26 5
	.loc 1 26 21 is_stmt 0
	li	a1,0
	li	a2,24
	addi	a0,s0,-40
	call	memset
.LVL4:
	.loc 1 39 5 is_stmt 1
	.loc 1 43 5
	.loc 1 43 29 is_stmt 0
	li	a5,40001536
	addi	a5,a5,-1536
	divu	a2,a5,s2
	.loc 1 46 5
	mv	a0,s1
	.loc 1 44 15
	sw	s1,-44(s0)
	.loc 1 43 19
	sh	a2,-26(s0)
	.loc 1 44 5 is_stmt 1
	.loc 1 46 5
	call	PWM_Channel_Disable
.LVL5:
	.loc 1 47 5
	addi	a0,s0,-44
	call	PWM_Channel_Init
.LVL6:
	.loc 1 49 5
.LBE9:
.LBE8:
	.loc 1 68 12 is_stmt 0
	li	a0,0
.LVL7:
.L1:
	.loc 1 69 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL8:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L3:
	.loc 1 55 16
	li	a0,-1
.LVL10:
	.loc 1 69 1
	ret
	.cfi_endproc
.LFE10:
	.size	bl_pwm_init, .-bl_pwm_init
	.section	.text.bl_pwm_start,"ax",@progbits
	.align	1
	.globl	bl_pwm_start
	.type	bl_pwm_start, @function
bl_pwm_start:
.LFB11:
	.loc 1 72 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 73 5
	.loc 1 72 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 73 5
	call	PWM_Channel_Enable
.LVL12:
	.loc 1 74 5 is_stmt 1
	.loc 1 75 1 is_stmt 0
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
.LFE11:
	.size	bl_pwm_start, .-bl_pwm_start
	.section	.text.bl_pwm_stop,"ax",@progbits
	.align	1
	.globl	bl_pwm_stop
	.type	bl_pwm_stop, @function
bl_pwm_stop:
.LFB12:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 79 5
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 79 5
	call	PWM_Channel_Disable
.LVL14:
	.loc 1 80 5 is_stmt 1
	.loc 1 81 1 is_stmt 0
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
.LFE12:
	.size	bl_pwm_stop, .-bl_pwm_stop
	.section	.text.bl_pwm_set_freq,"ax",@progbits
	.align	1
	.globl	bl_pwm_set_freq
	.type	bl_pwm_set_freq, @function
bl_pwm_set_freq:
.LFB13:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 85 5
	.loc 1 84 1 is_stmt 0
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
	sw	s2,0(sp)
	.cfi_offset 18, -16
	.loc 1 84 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 85 5
	call	PWM_Channel_Disable
.LVL16:
	.loc 1 87 5 is_stmt 1
	.loc 1 88 5
	.loc 1 89 5
	.loc 1 91 5
	.loc 1 87 31 is_stmt 0
	li	a5,40001536
	addi	a5,a5,-1536
	divu	a1,a5,s2
	.loc 1 91 5
	mv	a0,s1
	li	a3,0
	li	a2,0
	slli	a1,a1,16
	srli	a1,a1,16
	call	PWM_Channel_Update
.LVL17:
	.loc 1 92 5 is_stmt 1
	mv	a0,s1
	call	PWM_Channel_Enable
.LVL18:
	.loc 1 94 5
	.loc 1 95 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL19:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_pwm_set_freq, .-bl_pwm_set_freq
	.section	.text.bl_pwm_set_duty,"ax",@progbits
	.align	1
	.globl	bl_pwm_set_duty
	.type	bl_pwm_set_duty, @function
bl_pwm_set_duty:
.LFB14:
	.loc 1 98 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 99 5
	.loc 1 100 5
	.loc 1 101 5
	.loc 1 103 5
	.loc 1 98 1 is_stmt 0
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
	fsw	fs0,28(sp)
	.cfi_offset 40, -20
	.loc 1 103 5
	addi	a3,s0,-34
	addi	a2,s0,-36
	addi	a1,s0,-38
	.loc 1 98 1
	fmv.s	fs0,fa0
	mv	s1,a0
	.loc 1 103 5
	call	PWM_Channel_Get
.LVL21:
	.loc 1 105 5 is_stmt 1
	.loc 1 106 35 is_stmt 0
	lhu	a5,-38(s0)
	li	a4,100
	.loc 1 108 5
	mv	a0,s1
	.loc 1 106 35
	divu	a5,a5,a4
	.loc 1 108 5
	li	a1,0
	.loc 1 105 16
	sh	zero,-36(s0)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 40 is_stmt 0
	fcvt.s.w	fa0,a5
	fmul.s	fa0,fa0,fs0
	.loc 1 106 18
	fcvt.wu.s a5,fa0,rtz
	sh	a5,-34(s0)
	.loc 1 108 5 is_stmt 1
	call	PWM_Channel_Set_Threshold1
.LVL22:
	.loc 1 109 5
	lhu	a1,-34(s0)
	mv	a0,s1
	call	PWM_Channel_Set_Threshold2
.LVL23:
	.loc 1 110 5
	.loc 1 111 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	flw	fs0,28(sp)
	.cfi_restore 40
.LVL24:
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_pwm_set_duty, .-bl_pwm_set_duty
	.section	.text.bl_pwm_get_duty,"ax",@progbits
	.align	1
	.globl	bl_pwm_get_duty
	.type	bl_pwm_get_duty, @function
bl_pwm_get_duty:
.LFB15:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 115 5
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 119 5
	.loc 1 119 8 is_stmt 0
	beq	a1,zero,.L19
	.loc 1 114 1
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
	mv	s1,a1
	.loc 1 122 5 is_stmt 1
	addi	a3,s0,-18
	addi	a2,s0,-20
	addi	a1,s0,-22
.LVL26:
	call	PWM_Channel_Get
.LVL27:
	.loc 1 124 5
	.loc 1 124 15 is_stmt 0
	lhu	a5,-18(s0)
	.loc 1 126 12
	li	a0,0
	.loc 1 124 15
	fcvt.s.wu	fa5,a5
	.loc 1 124 33
	lui	a5,%hi(.LC0)
	flw	fa4,%lo(.LC0)(a5)
	.loc 1 124 39
	lhu	a5,-22(s0)
	.loc 1 124 33
	fmul.s	fa5,fa5,fa4
	.loc 1 124 39
	fcvt.s.w	fa4,a5
	fdiv.s	fa5,fa5,fa4
	.loc 1 124 13
	fsw	fa5,0(s1)
	.loc 1 126 5 is_stmt 1
	.loc 1 127 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL28:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L19:
	.loc 1 120 16
	li	a0,-1
.LVL30:
	.loc 1 127 1
	ret
	.cfi_endproc
.LFE15:
	.size	bl_pwm_get_duty, .-bl_pwm_get_duty
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1120403456
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_pwm.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x702
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x8d
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x39
	.byte	0xe
	.4byte	0xdc
	.byte	0x6
	.4byte	.LASF15
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0x40
	.byte	0x2
	.4byte	0xa9
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.4byte	0x109
	.byte	0x6
	.4byte	.LASF22
	.byte	0
	.byte	0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6
	.4byte	.LASF24
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0x49
	.byte	0x2
	.4byte	0xe8
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x4e
	.byte	0xe
	.4byte	0x130
	.byte	0x6
	.4byte	.LASF26
	.byte	0
	.byte	0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x3
	.byte	0x51
	.byte	0x2
	.4byte	0x115
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x56
	.byte	0xe
	.4byte	0x157
	.byte	0x6
	.4byte	.LASF29
	.byte	0
	.byte	0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x3
	.byte	0x59
	.byte	0x2
	.4byte	0x13c
	.byte	0x7
	.byte	0x1c
	.byte	0x3
	.byte	0x66
	.byte	0x9
	.4byte	0x1e1
	.byte	0x8
	.string	"ch"
	.byte	0x3
	.byte	0x67
	.byte	0x14
	.4byte	0xdc
	.byte	0
	.byte	0x8
	.string	"clk"
	.byte	0x3
	.byte	0x68
	.byte	0x12
	.4byte	0x109
	.byte	0x4
	.byte	0x9
	.4byte	.LASF32
	.byte	0x3
	.byte	0x69
	.byte	0x18
	.4byte	0x130
	.byte	0x8
	.byte	0x8
	.string	"pol"
	.byte	0x3
	.byte	0x6a
	.byte	0x17
	.4byte	0x157
	.byte	0xc
	.byte	0x9
	.4byte	.LASF33
	.byte	0x3
	.byte	0x6b
	.byte	0xe
	.4byte	0x6e
	.byte	0x10
	.byte	0x9
	.4byte	.LASF34
	.byte	0x3
	.byte	0x6c
	.byte	0xe
	.4byte	0x6e
	.byte	0x12
	.byte	0x9
	.4byte	.LASF35
	.byte	0x3
	.byte	0x6d
	.byte	0xe
	.4byte	0x6e
	.byte	0x14
	.byte	0x9
	.4byte	.LASF36
	.byte	0x3
	.byte	0x6e
	.byte	0xe
	.4byte	0x6e
	.byte	0x16
	.byte	0x9
	.4byte	.LASF37
	.byte	0x3
	.byte	0x6f
	.byte	0xe
	.4byte	0x6e
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF38
	.byte	0x3
	.byte	0x70
	.byte	0x2
	.4byte	0x163
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x4c
	.byte	0x1
	.4byte	0x28c
	.byte	0x6
	.4byte	.LASF39
	.byte	0
	.byte	0x6
	.4byte	.LASF40
	.byte	0x1
	.byte	0x6
	.4byte	.LASF41
	.byte	0x2
	.byte	0x6
	.4byte	.LASF42
	.byte	0x3
	.byte	0x6
	.4byte	.LASF43
	.byte	0x4
	.byte	0x6
	.4byte	.LASF44
	.byte	0x5
	.byte	0x6
	.4byte	.LASF45
	.byte	0x6
	.byte	0x6
	.4byte	.LASF46
	.byte	0x7
	.byte	0x6
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.4byte	.LASF48
	.byte	0x9
	.byte	0x6
	.4byte	.LASF49
	.byte	0xa
	.byte	0x6
	.4byte	.LASF50
	.byte	0xb
	.byte	0x6
	.4byte	.LASF51
	.byte	0xc
	.byte	0x6
	.4byte	.LASF52
	.byte	0xd
	.byte	0x6
	.4byte	.LASF53
	.byte	0xe
	.byte	0x6
	.4byte	.LASF54
	.byte	0xf
	.byte	0x6
	.4byte	.LASF55
	.byte	0x10
	.byte	0x6
	.4byte	.LASF56
	.byte	0x11
	.byte	0x6
	.4byte	.LASF57
	.byte	0x12
	.byte	0x6
	.4byte	.LASF58
	.byte	0x13
	.byte	0x6
	.4byte	.LASF59
	.byte	0x14
	.byte	0x6
	.4byte	.LASF60
	.byte	0x15
	.byte	0x6
	.4byte	.LASF61
	.byte	0x16
	.byte	0x6
	.4byte	.LASF62
	.byte	0x17
	.byte	0
	.byte	0x7
	.byte	0x6
	.byte	0x4
	.byte	0x7e
	.byte	0x9
	.4byte	0x2e4
	.byte	0x9
	.4byte	.LASF63
	.byte	0x4
	.byte	0x80
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0x9
	.4byte	.LASF64
	.byte	0x4
	.byte	0x81
	.byte	0xd
	.4byte	0x5b
	.byte	0x1
	.byte	0x9
	.4byte	.LASF65
	.byte	0x4
	.byte	0x82
	.byte	0xd
	.4byte	0x5b
	.byte	0x2
	.byte	0x9
	.4byte	.LASF66
	.byte	0x4
	.byte	0x83
	.byte	0xd
	.4byte	0x5b
	.byte	0x3
	.byte	0x9
	.4byte	.LASF67
	.byte	0x4
	.byte	0x84
	.byte	0xd
	.4byte	0x5b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF68
	.byte	0x4
	.byte	0x85
	.byte	0xd
	.4byte	0x5b
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF69
	.byte	0x4
	.byte	0x86
	.byte	0x2
	.4byte	0x28c
	.byte	0xa
	.4byte	.LASF71
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x373
	.byte	0xb
	.string	"id"
	.byte	0x1
	.byte	0x71
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST13
	.byte	0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0x71
	.byte	0x2c
	.4byte	0x373
	.4byte	.LLST14
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x73
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x6a
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x75
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0xe
	.4byte	.LVL27
	.4byte	0x699
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6a
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x6e
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.4byte	.LASF72
	.byte	0x1
	.byte	0x61
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x42f
	.byte	0xb
	.string	"id"
	.byte	0x1
	.byte	0x61
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LASF73
	.byte	0x1
	.byte	0x61
	.byte	0x2b
	.4byte	0x2c
	.4byte	.LLST12
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x63
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x65
	.byte	0xe
	.4byte	0x6e
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x11
	.4byte	.LVL21
	.4byte	0x699
	.4byte	0x405
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x5e
	.byte	0
	.byte	0x11
	.4byte	.LVL22
	.4byte	0x6a5
	.4byte	0x41e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL23
	.4byte	0x6b1
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF74
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x4eb
	.byte	0xb
	.string	"id"
	.byte	0x1
	.byte	0x53
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST8
	.byte	0xc
	.4byte	.LASF75
	.byte	0x1
	.byte	0x53
	.byte	0x2e
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0x6e
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x58
	.byte	0xe
	.4byte	0x6e
	.byte	0
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x59
	.byte	0xe
	.4byte	0x6e
	.byte	0
	.byte	0x11
	.4byte	.LVL16
	.4byte	0x6bd
	.4byte	0x4a6
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL17
	.4byte	0x6c9
	.4byte	0x4da
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0xc
	.4byte	0x2625a00
	.byte	0xf7
	.byte	0x25
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL18
	.4byte	0x6d5
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x4d
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x51e
	.byte	0xb
	.string	"id"
	.byte	0x1
	.byte	0x4d
	.byte	0x1d
	.4byte	0x5b
	.4byte	.LLST7
	.byte	0x14
	.4byte	.LVL14
	.4byte	0x6bd
	.byte	0
	.byte	0xa
	.4byte	.LASF77
	.byte	0x1
	.byte	0x47
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x551
	.byte	0xb
	.string	"id"
	.byte	0x1
	.byte	0x47
	.byte	0x1e
	.4byte	0x5b
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LVL12
	.4byte	0x6d5
	.byte	0
	.byte	0xa
	.4byte	.LASF78
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x63e
	.byte	0xb
	.string	"id"
	.byte	0x1
	.byte	0x34
	.byte	0x1d
	.4byte	0x5b
	.4byte	.LLST0
	.byte	0xb
	.string	"pin"
	.byte	0x1
	.byte	0x34
	.byte	0x29
	.4byte	0x5b
	.4byte	.LLST1
	.byte	0xc
	.4byte	.LASF75
	.byte	0x1
	.byte	0x34
	.byte	0x37
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x15
	.4byte	0x673
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x41
	.byte	0x5
	.4byte	0x5d0
	.byte	0x16
	.4byte	0x680
	.4byte	.LLST3
	.byte	0x17
	.4byte	0x68c
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x6e1
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	0x63e
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.byte	0x16
	.4byte	0x65a
	.4byte	.LLST4
	.byte	0x16
	.4byte	0x64f
	.4byte	.LLST5
	.byte	0x17
	.4byte	0x666
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x11
	.4byte	.LVL4
	.4byte	0x6ee
	.4byte	0x618
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x58
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x11
	.4byte	.LVL5
	.4byte	0x6bd
	.4byte	0x62c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x6f9
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF91
	.byte	0x1
	.byte	0x18
	.byte	0x10
	.4byte	0x41
	.byte	0x1
	.4byte	0x673
	.byte	0x1a
	.string	"id"
	.byte	0x1
	.byte	0x18
	.byte	0x21
	.4byte	0x5b
	.byte	0x1b
	.4byte	.LASF75
	.byte	0x1
	.byte	0x18
	.byte	0x2e
	.4byte	0x81
	.byte	0x1c
	.4byte	.LASF79
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x1e1
	.byte	0
	.byte	0x1d
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.byte	0x1
	.4byte	0x699
	.byte	0x1a
	.string	"pin"
	.byte	0x1
	.byte	0xa
	.byte	0x1f
	.4byte	0x5b
	.byte	0x1e
	.string	"cfg"
	.byte	0x1
	.byte	0xc
	.byte	0x14
	.4byte	0x2e4
	.byte	0
	.byte	0x1f
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x3
	.byte	0xb4
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x3
	.byte	0xb1
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x3
	.byte	0xb2
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x3
	.byte	0xb7
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x3
	.byte	0xaf
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x3
	.byte	0xb6
	.byte	0x6
	.byte	0x20
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x276
	.byte	0xd
	.byte	0x21
	.4byte	.LASF93
	.4byte	.LASF94
	.byte	0x6
	.byte	0
	.byte	0x1f
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x3
	.byte	0xae
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
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x17
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
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
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL21-1
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL24
	.4byte	.LFE14
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x2a
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0xf
	.byte	0xc
	.4byte	0x2625a00
	.byte	0xf7
	.byte	0x25
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE13
	.2byte	0x10
	.byte	0xc
	.4byte	0x2625a00
	.byte	0xf7
	.byte	0x25
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LFE11
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
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF76:
	.string	"bl_pwm_stop"
.LASF50:
	.string	"GLB_GPIO_PIN_11"
.LASF85:
	.string	"PWM_Channel_Enable"
.LASF80:
	.string	"PWM_Channel_Get"
.LASF90:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF71:
	.string	"bl_pwm_get_duty"
.LASF86:
	.string	"GLB_GPIO_Init"
.LASF46:
	.string	"GLB_GPIO_PIN_7"
.LASF31:
	.string	"PWM_Polarity_Type"
.LASF68:
	.string	"smtCtrl"
.LASF37:
	.string	"intPulseCnt"
.LASF5:
	.string	"long long int"
.LASF84:
	.string	"PWM_Channel_Update"
.LASF20:
	.string	"PWM_CH_MAX"
.LASF3:
	.string	"short int"
.LASF94:
	.string	"__builtin_memset"
.LASF7:
	.string	"uint8_t"
.LASF81:
	.string	"PWM_Channel_Set_Threshold1"
.LASF82:
	.string	"PWM_Channel_Set_Threshold2"
.LASF58:
	.string	"GLB_GPIO_PIN_19"
.LASF64:
	.string	"gpioFun"
.LASF62:
	.string	"GLB_GPIO_PIN_MAX"
.LASF83:
	.string	"PWM_Channel_Disable"
.LASF1:
	.string	"float"
.LASF49:
	.string	"GLB_GPIO_PIN_10"
.LASF75:
	.string	"freq"
.LASF51:
	.string	"GLB_GPIO_PIN_12"
.LASF52:
	.string	"GLB_GPIO_PIN_13"
.LASF53:
	.string	"GLB_GPIO_PIN_14"
.LASF54:
	.string	"GLB_GPIO_PIN_15"
.LASF55:
	.string	"GLB_GPIO_PIN_16"
.LASF56:
	.string	"GLB_GPIO_PIN_17"
.LASF57:
	.string	"GLB_GPIO_PIN_18"
.LASF93:
	.string	"memset"
.LASF48:
	.string	"GLB_GPIO_PIN_9"
.LASF33:
	.string	"clkDiv"
.LASF35:
	.string	"threshold1"
.LASF36:
	.string	"threshold2"
.LASF34:
	.string	"period"
.LASF67:
	.string	"drive"
.LASF79:
	.string	"pwmCfg"
.LASF69:
	.string	"GLB_GPIO_Cfg_Type"
.LASF24:
	.string	"PWM_CLK_32K"
.LASF72:
	.string	"bl_pwm_set_duty"
.LASF8:
	.string	"unsigned char"
.LASF73:
	.string	"duty"
.LASF25:
	.string	"PWM_Clk_Type"
.LASF2:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF22:
	.string	"PWM_CLK_XCLK"
.LASF11:
	.string	"uint32_t"
.LASF39:
	.string	"GLB_GPIO_PIN_0"
.LASF9:
	.string	"uint16_t"
.LASF78:
	.string	"bl_pwm_init"
.LASF38:
	.string	"PWM_CH_CFG_Type"
.LASF43:
	.string	"GLB_GPIO_PIN_4"
.LASF59:
	.string	"GLB_GPIO_PIN_20"
.LASF60:
	.string	"GLB_GPIO_PIN_21"
.LASF61:
	.string	"GLB_GPIO_PIN_22"
.LASF15:
	.string	"PWM_CH0"
.LASF16:
	.string	"PWM_CH1"
.LASF17:
	.string	"PWM_CH2"
.LASF18:
	.string	"PWM_CH3"
.LASF19:
	.string	"PWM_CH4"
.LASF30:
	.string	"PWM_POL_INVERT"
.LASF28:
	.string	"PWM_Stop_Mode_Type"
.LASF14:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF87:
	.string	"PWM_Channel_Init"
.LASF6:
	.string	"int32_t"
.LASF10:
	.string	"short unsigned int"
.LASF70:
	.string	"p_duty"
.LASF26:
	.string	"PWM_STOP_ABRUPT"
.LASF12:
	.string	"long unsigned int"
.LASF65:
	.string	"gpioMode"
.LASF91:
	.string	"pwm_init"
.LASF21:
	.string	"PWM_CH_ID_Type"
.LASF40:
	.string	"GLB_GPIO_PIN_1"
.LASF88:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF41:
	.string	"GLB_GPIO_PIN_2"
.LASF92:
	.string	"gpio_init"
.LASF42:
	.string	"GLB_GPIO_PIN_3"
.LASF77:
	.string	"bl_pwm_start"
.LASF44:
	.string	"GLB_GPIO_PIN_5"
.LASF45:
	.string	"GLB_GPIO_PIN_6"
.LASF66:
	.string	"pullType"
.LASF32:
	.string	"stopMode"
.LASF47:
	.string	"GLB_GPIO_PIN_8"
.LASF74:
	.string	"bl_pwm_set_freq"
.LASF29:
	.string	"PWM_POL_NORMAL"
.LASF63:
	.string	"gpioPin"
.LASF27:
	.string	"PWM_STOP_GRACEFUL"
.LASF0:
	.string	"unsigned int"
.LASF89:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pwm.c"
.LASF23:
	.string	"PWM_CLK_BCLK"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
