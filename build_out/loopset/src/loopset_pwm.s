	.file	"loopset_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._cb_pwm_trigger,"ax",@progbits
	.align	1
	.type	_cb_pwm_trigger, @function
_cb_pwm_trigger:
.LFB29:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_pwm.c"
	.loc 1 57 1
	.cfi_startproc
.LVL0:
	.loc 1 58 5
	.loc 1 60 5
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 60 16
	lw	a5,36(a2)
	.loc 1 60 8
	beq	a5,zero,.L1
	.loc 1 61 9 is_stmt 1
	.loc 1 63 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 61 9
	lw	a0,40(a2)
.LVL1:
	.loc 1 63 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 61 9
	jr	a5
.LVL2:
.L1:
	.cfi_restore_state
	.loc 1 63 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	_cb_pwm_trigger, .-_cb_pwm_trigger
	.section	.text._pwm_bloop_evt,"ax",@progbits
	.align	1
	.type	_pwm_bloop_evt, @function
_pwm_bloop_evt:
.LFB26:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 27 5
	.loc 1 29 17 is_stmt 0
	lui	a4,%hi(trigger)
	lw	a0,%lo(trigger)(a4)
.LVL4:
	.loc 1 27 14
	lw	a5,0(a3)
.LVL5:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 8 is_stmt 0
	beq	a0,zero,.L11
	.loc 1 26 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 32 13
	andi	a5,a5,2
.LVL6:
	mv	s1,a3
	.loc 1 32 5 is_stmt 1
	.loc 1 32 8 is_stmt 0
	beq	a5,zero,.L6
	.loc 1 33 9 is_stmt 1
	call	looprt_timer_register
.LVL7:
.L6:
	.loc 1 36 5
	.loc 1 36 19 is_stmt 0
	sw	zero,0(s1)
	.loc 1 37 5 is_stmt 1
	.loc 1 38 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 37 12
	li	a4,0
	.loc 1 38 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL8:
	mv	a0,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L11:
	li	a4,-1
	mv	a0,a4
	ret
	.cfi_endproc
.LFE26:
	.size	_pwm_bloop_evt, .-_pwm_bloop_evt
	.section	.text.loopset_pwm_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_pwm_hook_on_looprt
	.type	loopset_pwm_hook_on_looprt, @function
loopset_pwm_hook_on_looprt:
.LFB27:
	.loc 1 41 1 is_stmt 1
	.cfi_startproc
	.loc 1 42 5
	.loc 1 48 5
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 49 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 48 12
	lui	a0,%hi(.LANCHOR0)
	li	a1,4
	.loc 1 49 1
	.loc 1 48 12
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 49 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 48 12
	tail	looprt_handler_register
.LVL10:
	.cfi_endproc
.LFE27:
	.size	loopset_pwm_hook_on_looprt, .-loopset_pwm_hook_on_looprt
	.section	.text.loopset_pwm_hook_off_looprt,"ax",@progbits
	.align	1
	.globl	loopset_pwm_hook_off_looprt
	.type	loopset_pwm_hook_off_looprt, @function
loopset_pwm_hook_off_looprt:
.LFB28:
	.loc 1 52 1 is_stmt 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 52 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 54 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	loopset_pwm_hook_off_looprt, .-loopset_pwm_hook_off_looprt
	.section	.text.loopset_pwm_trigger_stop,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_stop
	.type	loopset_pwm_trigger_stop, @function
loopset_pwm_trigger_stop:
.LFB30:
	.loc 1 66 1 is_stmt 1
	.cfi_startproc
	.loc 1 67 5
	.loc 1 66 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 67 26
	lui	a5,%hi(trigger)
	lw	a4,%lo(trigger)(a5)
	lbu	a5,8(a4)
	andi	a5,a5,-2
	sb	a5,8(a4)
	.loc 1 68 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	loopset_pwm_trigger_stop, .-loopset_pwm_trigger_stop
	.section	.text.loopset_pwm_trigger_start,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_start
	.type	loopset_pwm_trigger_start, @function
loopset_pwm_trigger_start:
.LFB31:
	.loc 1 71 1 is_stmt 1
	.cfi_startproc
	.loc 1 72 5
	.loc 1 72 16 is_stmt 0
	lui	a5,%hi(trigger)
	lw	a0,%lo(trigger)(a5)
	.loc 1 72 8
	lbu	a5,8(a0)
	andi	a5,a5,1
	bne	a5,zero,.L22
	.loc 1 75 5 is_stmt 1
	.loc 1 71 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 75 5
	call	bloop_timer_repeat_enable
.LVL11:
	.loc 1 76 5 is_stmt 1
	.loc 1 77 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 76 5
	li	a1,2
	.loc 1 77 1
	.loc 1 76 5
	li	a0,4
	.loc 1 77 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 76 5
	tail	looprt_evt_notify_async
.LVL12:
.L22:
	ret
	.cfi_endproc
.LFE31:
	.size	loopset_pwm_trigger_start, .-loopset_pwm_trigger_start
	.section	.rodata.loopset_pwm_trigger_on.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"loopset_pwm.c"
	.align	2
.LC1:
	.string	"ASSERT"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] ASSERT: %s:%d\r\n"
	.section	.text.loopset_pwm_trigger_on,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_on
	.type	loopset_pwm_trigger_on, @function
loopset_pwm_trigger_on:
.LFB32:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 81 5
	.loc 1 80 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 81 9
	lui	s1,%hi(trigger)
	.loc 1 81 8
	lw	a5,%lo(trigger)(s1)
	bne	a5,zero,.L27
	mv	s2,a0
	.loc 1 84 15
	li	a0,44
.LVL14:
	mv	s4,a1
	mv	s3,a2
	.loc 1 84 5 is_stmt 1
	.loc 1 84 15 is_stmt 0
	call	pvPortMalloc
.LVL15:
	.loc 1 84 13
	sw	a0,%lo(trigger)(s1)
	.loc 1 85 5 is_stmt 1
	.loc 1 85 10
	.loc 1 85 13 is_stmt 0
	bne	a0,zero,.L29
	.loc 1 85 28 is_stmt 1 discriminator 1
	.loc 1 85 33 discriminator 1
	.loc 1 85 35 discriminator 1
	.loc 1 85 89 is_stmt 0 discriminator 1
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 85 35 discriminator 1
	beq	a0,zero,.L30
	.loc 1 85 116 discriminator 3
	call	xTaskGetTickCountFromISR
.LVL17:
.L34:
	.loc 1 85 35 discriminator 4
	lui	a3,%hi(.LC0)
	.loc 1 85 145 discriminator 4
	mv	a1,a0
	.loc 1 85 35 discriminator 4
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a5,a3,%lo(.LC0)
	li	a6,85
	li	a4,85
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL18:
.L32:
	.loc 1 85 220 is_stmt 1 discriminator 1
	.loc 1 85 229 discriminator 1
	.loc 1 85 237 discriminator 1
	.loc 1 85 249 discriminator 1
	.loc 1 85 243 discriminator 1
	j	.L32
.L30:
	.loc 1 85 145 is_stmt 0 discriminator 4
	call	xTaskGetTickCount
.LVL19:
	j	.L34
.L29:
	.loc 1 85 261 is_stmt 1 discriminator 2
	.loc 1 86 5 discriminator 2
	li	a2,44
	li	a1,0
	call	memset
.LVL20:
	.loc 1 88 5 discriminator 2
	.loc 1 88 12 is_stmt 0 discriminator 2
	lw	a0,%lo(trigger)(s1)
	.loc 1 91 5 discriminator 2
	li	a1,0
	.loc 1 88 17 discriminator 2
	sw	s4,36(a0)
	.loc 1 89 5 is_stmt 1 discriminator 2
	.loc 1 89 20 is_stmt 0 discriminator 2
	sw	s3,40(a0)
	.loc 1 91 5 is_stmt 1 discriminator 2
	call	bloop_timer_init
.LVL21:
	.loc 1 92 5 discriminator 2
	.loc 1 92 35 is_stmt 0 discriminator 2
	lw	a3,%lo(trigger)(s1)
	.loc 1 92 5 discriminator 2
	lui	a2,%hi(_cb_pwm_trigger)
	mv	a1,s2
	mv	a0,a3
	li	a5,1
	li	a4,4
	addi	a2,a2,%lo(_cb_pwm_trigger)
	call	bloop_timer_configure
.LVL22:
	.loc 1 99 5 is_stmt 1 discriminator 2
	.loc 1 100 1 is_stmt 0 discriminator 2
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL23:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL24:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL25:
	.loc 1 99 5 discriminator 2
	li	a1,2
	.loc 1 100 1 discriminator 2
	.loc 1 99 5 discriminator 2
	li	a0,4
	.loc 1 100 1 discriminator 2
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 99 5 discriminator 2
	tail	looprt_evt_notify_async
.LVL26:
.L27:
	.cfi_restore_state
	.loc 1 100 1
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
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	loopset_pwm_trigger_on, .-loopset_pwm_trigger_on
	.section	.text.loopset_pwm_trigger_off,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_off
	.type	loopset_pwm_trigger_off, @function
loopset_pwm_trigger_off:
.LFB33:
	.loc 1 103 1 is_stmt 1
	.cfi_startproc
	.loc 1 105 1
	.loc 1 103 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 105 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	loopset_pwm_trigger_off, .-loopset_pwm_trigger_off
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"PWM Trigger"
	.comm	trigger,4,4
	.section	.rodata._pwm_bloop_handler_holder.0,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_pwm_bloop_handler_holder.0, @object
	.size	_pwm_bloop_handler_holder.0, 12
_pwm_bloop_handler_holder.0:
	.word	.LC3
	.word	_pwm_bloop_evt
	.word	0
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/bloop/include/bloop.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/include/loopset_pwm.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/utils/include/utils_log.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/looprt/include/looprt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7cf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.4byte	0x89
	.byte	0x6
	.4byte	0x94
	.byte	0x7
	.4byte	0x94
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xa2
	.byte	0x5
	.byte	0x4
	.4byte	0xa8
	.byte	0x9
	.4byte	.LASF87
	.byte	0x5
	.byte	0x4
	.4byte	0xba
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0xa
	.4byte	0xb3
	.byte	0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0x8
	.4byte	0xda
	.byte	0xc
	.4byte	.LASF15
	.byte	0x4
	.byte	0x13
	.byte	0x1c
	.4byte	0xda
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xbf
	.byte	0xb
	.4byte	.LASF14
	.byte	0x8
	.byte	0x4
	.byte	0x16
	.byte	0x8
	.4byte	0x108
	.byte	0xc
	.4byte	.LASF16
	.byte	0x4
	.byte	0x19
	.byte	0x1c
	.4byte	0xda
	.byte	0
	.byte	0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0x1b
	.byte	0x1c
	.4byte	0xda
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF18
	.byte	0x8
	.byte	0x4
	.2byte	0x103
	.byte	0x10
	.4byte	0x133
	.byte	0xe
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x104
	.byte	0x1b
	.4byte	0x133
	.byte	0
	.byte	0xe
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x105
	.byte	0x1b
	.4byte	0x133
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x108
	.byte	0xf
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x106
	.byte	0x3
	.4byte	0x108
	.byte	0x10
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x9
	.4byte	0x184
	.byte	0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0x12
	.byte	0x15
	.4byte	0x4f
	.byte	0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0x13
	.byte	0x15
	.4byte	0x4f
	.byte	0x1
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x14
	.byte	0x15
	.4byte	0x4f
	.byte	0x2
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x15
	.byte	0x15
	.4byte	0x4f
	.byte	0x3
	.byte	0
	.byte	0x11
	.byte	0x4
	.byte	0x5
	.byte	0xf
	.byte	0x5
	.4byte	0x1a6
	.byte	0x12
	.4byte	.LASF25
	.byte	0x5
	.byte	0x10
	.byte	0xf
	.4byte	0x94
	.byte	0x12
	.4byte	.LASF26
	.byte	0x5
	.byte	0x16
	.byte	0xb
	.4byte	0x146
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x18
	.byte	0x5
	.byte	0xd
	.byte	0x8
	.4byte	0x200
	.byte	0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0xe
	.byte	0x1b
	.4byte	0xbf
	.byte	0
	.byte	0x13
	.string	"u"
	.byte	0x5
	.byte	0x17
	.byte	0x7
	.4byte	0x184
	.byte	0x4
	.byte	0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x18
	.byte	0xb
	.4byte	0x94
	.byte	0x8
	.byte	0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x19
	.byte	0xb
	.4byte	0x94
	.byte	0xc
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x1a
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x1b
	.byte	0x12
	.4byte	0x2c
	.byte	0x14
	.byte	0
	.byte	0xb
	.4byte	.LASF33
	.byte	0x10
	.byte	0x5
	.byte	0x1e
	.byte	0x8
	.4byte	0x242
	.byte	0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x1f
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x20
	.byte	0x12
	.4byte	0x2c
	.byte	0x4
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x21
	.byte	0x12
	.4byte	0x2c
	.byte	0x8
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x22
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	.LASF37
	.byte	0xc
	.byte	0x5
	.byte	0x25
	.byte	0x8
	.4byte	0x277
	.byte	0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x26
	.byte	0x11
	.4byte	0xad
	.byte	0
	.byte	0x13
	.string	"evt"
	.byte	0x5
	.byte	0x27
	.byte	0xb
	.4byte	0x34f
	.byte	0x4
	.byte	0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x28
	.byte	0xb
	.4byte	0x374
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	0x242
	.byte	0x14
	.4byte	0x25
	.4byte	0x29a
	.byte	0x7
	.4byte	0x29a
	.byte	0x7
	.4byte	0x343
	.byte	0x7
	.4byte	0x349
	.byte	0x7
	.4byte	0x349
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x2a0
	.byte	0x15
	.4byte	.LASF40
	.2byte	0x4a0
	.byte	0x5
	.byte	0x2e
	.byte	0x8
	.4byte	0x343
	.byte	0xc
	.4byte	.LASF41
	.byte	0x5
	.byte	0x2f
	.byte	0x12
	.4byte	0x96
	.byte	0
	.byte	0xc
	.4byte	.LASF42
	.byte	0x5
	.byte	0x30
	.byte	0xe
	.4byte	0x69
	.byte	0x4
	.byte	0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x31
	.byte	0xe
	.4byte	0x69
	.byte	0x8
	.byte	0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x32
	.byte	0xe
	.4byte	0x69
	.byte	0xc
	.byte	0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x33
	.byte	0xe
	.4byte	0x37a
	.byte	0x10
	.byte	0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x34
	.byte	0xe
	.4byte	0x37a
	.byte	0x90
	.byte	0x16
	.4byte	.LASF47
	.byte	0x5
	.byte	0x35
	.byte	0x17
	.4byte	0x38a
	.2byte	0x110
	.byte	0x16
	.4byte	.LASF48
	.byte	0x5
	.byte	0x36
	.byte	0x27
	.4byte	0x39a
	.2byte	0x210
	.byte	0x16
	.4byte	.LASF49
	.byte	0x5
	.byte	0x37
	.byte	0x25
	.4byte	0x3aa
	.2byte	0x410
	.byte	0x16
	.4byte	.LASF50
	.byte	0x5
	.byte	0x39
	.byte	0x13
	.4byte	0x139
	.2byte	0x490
	.byte	0x16
	.4byte	.LASF51
	.byte	0x5
	.byte	0x3a
	.byte	0x13
	.4byte	0x139
	.2byte	0x498
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x277
	.byte	0x5
	.byte	0x4
	.4byte	0x69
	.byte	0x5
	.byte	0x4
	.4byte	0x27c
	.byte	0x14
	.4byte	0x25
	.4byte	0x36e
	.byte	0x7
	.4byte	0x29a
	.byte	0x7
	.4byte	0x343
	.byte	0x7
	.4byte	0x36e
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x1a6
	.byte	0x5
	.byte	0x4
	.4byte	0x355
	.byte	0x17
	.4byte	0x69
	.4byte	0x38a
	.byte	0x18
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x17
	.4byte	0xe0
	.4byte	0x39a
	.byte	0x18
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x17
	.4byte	0x200
	.4byte	0x3aa
	.byte	0x18
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x17
	.4byte	0x343
	.4byte	0x3ba
	.byte	0x18
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0xb
	.4byte	.LASF52
	.byte	0x24
	.byte	0x5
	.byte	0x3d
	.byte	0x8
	.4byte	0x42f
	.byte	0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0x3e
	.byte	0x13
	.4byte	0x139
	.byte	0
	.byte	0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0x45
	.byte	0xd
	.4byte	0x4f
	.byte	0x8
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x47
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.byte	0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0x48
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0x49
	.byte	0x9
	.4byte	0x25
	.byte	0x14
	.byte	0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0x4a
	.byte	0xe
	.4byte	0x69
	.byte	0x18
	.byte	0x13
	.string	"cb"
	.byte	0x5
	.byte	0x4b
	.byte	0xc
	.4byte	0x44a
	.byte	0x1c
	.byte	0x13
	.string	"arg"
	.byte	0x5
	.byte	0x4c
	.byte	0xb
	.4byte	0x94
	.byte	0x20
	.byte	0
	.byte	0x6
	.4byte	0x444
	.byte	0x7
	.4byte	0x29a
	.byte	0x7
	.4byte	0x444
	.byte	0x7
	.4byte	0x94
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x3ba
	.byte	0x5
	.byte	0x4
	.4byte	0x42f
	.byte	0x4
	.4byte	.LASF58
	.byte	0x6
	.byte	0x6
	.byte	0x10
	.4byte	0x83
	.byte	0xb
	.4byte	.LASF59
	.byte	0x2c
	.byte	0x1
	.byte	0x11
	.byte	0x8
	.4byte	0x490
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.byte	0x12
	.byte	0x17
	.4byte	0x3ba
	.byte	0
	.byte	0x13
	.string	"cb"
	.byte	0x1
	.byte	0x13
	.byte	0x14
	.4byte	0x450
	.byte	0x24
	.byte	0xc
	.4byte	.LASF61
	.byte	0x1
	.byte	0x14
	.byte	0xb
	.4byte	0x94
	.byte	0x28
	.byte	0
	.byte	0x19
	.4byte	.LASF68
	.byte	0x1
	.byte	0x17
	.byte	0x1a
	.4byte	0x4a2
	.byte	0x5
	.byte	0x3
	.4byte	trigger
	.byte	0x5
	.byte	0x4
	.4byte	0x45c
	.byte	0x1a
	.4byte	.LASF65
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.byte	0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x4f
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d4
	.byte	0x1c
	.4byte	.LASF62
	.byte	0x1
	.byte	0x4f
	.byte	0x2a
	.4byte	0x2c
	.4byte	.LLST9
	.byte	0x1d
	.string	"cb"
	.byte	0x1
	.byte	0x4f
	.byte	0x44
	.4byte	0x450
	.4byte	.LLST10
	.byte	0x1c
	.4byte	.LASF61
	.byte	0x1
	.byte	0x4f
	.byte	0x4e
	.4byte	0x94
	.4byte	.LLST11
	.byte	0x1e
	.4byte	.LVL15
	.4byte	0x740
	.4byte	0x513
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x20
	.4byte	.LVL16
	.4byte	0x74c
	.byte	0x20
	.4byte	.LVL17
	.4byte	0x758
	.byte	0x1e
	.4byte	.LVL18
	.4byte	0x765
	.4byte	0x563
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1f
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.byte	0x20
	.4byte	.LVL19
	.4byte	0x771
	.byte	0x1e
	.4byte	.LVL20
	.4byte	0x77e
	.4byte	0x585
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x1e
	.4byte	.LVL21
	.4byte	0x78a
	.4byte	0x598
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL22
	.4byte	0x796
	.4byte	0x5bf
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	_cb_pwm_trigger
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x21
	.4byte	.LVL26
	.4byte	0x7a2
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x608
	.byte	0x20
	.4byte	.LVL11
	.4byte	0x7ae
	.byte	0x21
	.4byte	.LVL12
	.4byte	0x7a2
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.byte	0x22
	.4byte	.LASF88
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x671
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x1
	.byte	0x38
	.byte	0x2e
	.4byte	0x29a
	.4byte	.LLST0
	.byte	0x1c
	.4byte	.LASF60
	.byte	0x1
	.byte	0x38
	.byte	0x47
	.4byte	0x444
	.4byte	.LLST1
	.byte	0x1d
	.string	"arg"
	.byte	0x1
	.byte	0x38
	.byte	0x54
	.4byte	0x94
	.4byte	.LLST2
	.byte	0x23
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3a
	.byte	0x1e
	.4byte	0x4a2
	.4byte	.LLST3
	.byte	0
	.byte	0x24
	.4byte	.LASF89
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.byte	0x25
	.4byte	.LASF90
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x6cc
	.byte	0x26
	.4byte	.LASF69
	.byte	0x1
	.byte	0x2a
	.byte	0x2a
	.4byte	0x277
	.byte	0x5
	.byte	0x3
	.4byte	_pwm_bloop_handler_holder.0
	.byte	0x21
	.4byte	.LVL10
	.4byte	0x7ba
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF91
	.byte	0x1
	.byte	0x19
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x740
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x1
	.byte	0x19
	.byte	0x2c
	.4byte	0x29a
	.4byte	.LLST4
	.byte	0x1c
	.4byte	.LASF70
	.byte	0x1
	.byte	0x19
	.byte	0x51
	.4byte	0x343
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LASF71
	.byte	0x1
	.byte	0x19
	.byte	0x64
	.4byte	0x349
	.4byte	.LLST6
	.byte	0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0x19
	.byte	0x7a
	.4byte	0x349
	.4byte	.LLST7
	.byte	0x28
	.string	"map"
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST8
	.byte	0x20
	.4byte	.LVL7
	.4byte	0x7c6
	.byte	0
	.byte	0x29
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x7
	.byte	0x91
	.byte	0x7
	.byte	0x29
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x2a
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x3
	.2byte	0x558
	.byte	0xc
	.byte	0x29
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x547
	.byte	0xc
	.byte	0x29
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.byte	0x29
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0x58
	.byte	0x6
	.byte	0x29
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x5
	.byte	0x59
	.byte	0x6
	.byte	0x29
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xb
	.byte	0xa
	.byte	0x6
	.byte	0x29
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x5
	.byte	0x5c
	.byte	0x6
	.byte	0x29
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
	.byte	0xf
	.byte	0x5
	.byte	0x29
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xb
	.byte	0x10
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x26
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x16
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x17
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
	.byte	0x12
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
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x97,0x42
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x1
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x2
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2a
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
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5c
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
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LFE26
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"header"
.LASF55:
	.string	"time_target"
.LASF52:
	.string	"loop_timer"
.LASF71:
	.string	"bitmap_evt"
.LASF34:
	.string	"time_max"
.LASF48:
	.string	"statistic"
.LASF14:
	.string	"utils_list"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"container"
.LASF11:
	.string	"TaskHandle_t"
.LASF91:
	.string	"_pwm_bloop_evt"
.LASF27:
	.string	"loop_msg"
.LASF70:
	.string	"handler"
.LASF88:
	.string	"_cb_pwm_trigger"
.LASF37:
	.string	"loop_evt_handler"
.LASF41:
	.string	"looper"
.LASF7:
	.string	"uint8_t"
.LASF60:
	.string	"timer"
.LASF75:
	.string	"bl_printk"
.LASF59:
	.string	"pwm_trigger_item"
.LASF73:
	.string	"xPortIsInsideInterrupt"
.LASF23:
	.string	"id_msg"
.LASF81:
	.string	"bloop_timer_repeat_enable"
.LASF90:
	.string	"loopset_pwm_hook_on_looprt"
.LASF29:
	.string	"arg1"
.LASF62:
	.string	"timeon_ms"
.LASF85:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_pwm.c"
.LASF4:
	.string	"long long int"
.LASF77:
	.string	"memset"
.LASF69:
	.string	"_pwm_bloop_handler_holder"
.LASF33:
	.string	"loop_evt_handler_statistic"
.LASF22:
	.string	"id_dst"
.LASF46:
	.string	"evt_type_map_sync"
.LASF87:
	.string	"tskTaskControlBlock"
.LASF76:
	.string	"xTaskGetTickCount"
.LASF31:
	.string	"time_added"
.LASF38:
	.string	"name"
.LASF89:
	.string	"loopset_pwm_hook_off_looprt"
.LASF82:
	.string	"looprt_handler_register"
.LASF56:
	.string	"idx_task"
.LASF5:
	.string	"unsigned char"
.LASF51:
	.string	"timer_dued"
.LASF67:
	.string	"loop"
.LASF1:
	.string	"signed char"
.LASF54:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF49:
	.string	"handlers"
.LASF0:
	.string	"unsigned int"
.LASF61:
	.string	"p_arg"
.LASF24:
	.string	"id_src"
.LASF17:
	.string	"last"
.LASF68:
	.string	"trigger"
.LASF86:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/loopset"
.LASF44:
	.string	"bitmap_msg"
.LASF35:
	.string	"time_accumulated"
.LASF6:
	.string	"short unsigned int"
.LASF64:
	.string	"loopset_pwm_trigger_start"
.LASF12:
	.string	"char"
.LASF3:
	.string	"long int"
.LASF45:
	.string	"evt_type_map_async"
.LASF47:
	.string	"list"
.LASF83:
	.string	"looprt_timer_register"
.LASF78:
	.string	"bloop_timer_init"
.LASF63:
	.string	"loopset_pwm_trigger_on"
.LASF18:
	.string	"utils_dlist_s"
.LASF9:
	.string	"long unsigned int"
.LASF66:
	.string	"loopset_pwm_trigger_stop"
.LASF50:
	.string	"timer_dlist"
.LASF39:
	.string	"handle"
.LASF84:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF74:
	.string	"xTaskGetTickCountFromISR"
.LASF79:
	.string	"bloop_timer_configure"
.LASF32:
	.string	"time_consumed"
.LASF80:
	.string	"looprt_evt_notify_async"
.LASF28:
	.string	"item"
.LASF36:
	.string	"count_triggered"
.LASF57:
	.string	"evt_type_map"
.LASF20:
	.string	"utils_dlist_t"
.LASF21:
	.string	"priority"
.LASF58:
	.string	"loopset_func_t"
.LASF30:
	.string	"arg2"
.LASF65:
	.string	"loopset_pwm_trigger_off"
.LASF19:
	.string	"prev"
.LASF72:
	.string	"pvPortMalloc"
.LASF53:
	.string	"dlist_item"
.LASF13:
	.string	"utils_list_hdr"
.LASF42:
	.string	"bitmap_evt_async"
.LASF15:
	.string	"next"
.LASF43:
	.string	"bitmap_evt_sync"
.LASF16:
	.string	"first"
.LASF40:
	.string	"loop_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
