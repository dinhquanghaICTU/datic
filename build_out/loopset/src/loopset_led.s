	.file	"loopset_led.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._led_bloop_msg,"ax",@progbits
	.align	1
	.type	_led_bloop_msg, @function
_led_bloop_msg:
.LFB28:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_led.c"
	.loc 1 77 1
	.cfi_startproc
.LVL0:
	.loc 1 91 6
	.loc 1 92 5
	.loc 1 77 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 93 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
.LVL1:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	_led_bloop_msg, .-_led_bloop_msg
	.section	.text._cb_led_trigger,"ax",@progbits
	.align	1
	.type	_cb_led_trigger, @function
_cb_led_trigger:
.LFB30:
	.loc 1 113 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 114 5
	.loc 1 116 5
	.loc 1 113 1 is_stmt 0
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
	.loc 1 116 5
	lw	a1,56(a2)
.LVL3:
	lbu	a0,48(a2)
.LVL4:
	.loc 1 113 1
	mv	s1,a2
	.loc 1 116 5
	snez	a1,a1
	call	bl_gpio_output_set
.LVL5:
	.loc 1 120 6 is_stmt 1
	.loc 1 121 5
	.loc 1 121 28 is_stmt 0
	lw	a5,56(s1)
	.loc 1 122 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 121 28
	seqz	a5,a5
	.loc 1 121 26
	sw	a5,56(s1)
	.loc 1 122 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL6:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	_cb_led_trigger, .-_cb_led_trigger
	.section	.rodata._led_bloop_evt.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"loopset_led.c"
	.align	2
.LC1:
	.string	"[ASSERT] [ERR] %s:%d\r\n"
	.section	.text._led_bloop_evt,"ax",@progbits
	.align	1
	.type	_led_bloop_evt, @function
_led_bloop_evt:
.LFB27:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
.LVL7:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s7,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 55 14 is_stmt 0
	lw	s2,0(a3)
	.loc 1 54 1
	mv	s6,a1
	.loc 1 55 5 is_stmt 1
.LVL8:
	.loc 1 56 5
	.loc 1 54 1 is_stmt 0
	mv	s5,a3
.LVL9:
.L6:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 13 is_stmt 0
	andi	a5,s2,1
	.loc 1 59 8
	beq	a5,zero,.L7
	.loc 1 60 9 is_stmt 1
	.loc 1 60 13 is_stmt 0
	andi	s2,s2,-2
.LVL10:
.L8:
	.loc 1 65 114 is_stmt 1 discriminator 2
	.loc 1 68 5 discriminator 2
	.loc 1 68 8 is_stmt 0 discriminator 2
	bne	s2,zero,.L6
.L16:
.LVL11:
	.loc 1 72 5 is_stmt 1
	.loc 1 74 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	.loc 1 72 19
	sw	zero,0(s5)
	.loc 1 73 5 is_stmt 1
	.loc 1 74 1 is_stmt 0
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
.LVL12:
	lw	s6,16(sp)
	.cfi_restore 22
.LVL13:
	lw	s7,12(sp)
	.cfi_restore 23
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L7:
	.cfi_restore_state
	.loc 1 61 12 is_stmt 1
	.loc 1 61 20 is_stmt 0
	andi	a5,s2,2
	.loc 1 61 15
	beq	a5,zero,.L9
	.loc 1 62 9 is_stmt 1
	lw	s3,12(s6)
.LVL15:
.LBB26:
.LBB27:
	.loc 1 38 5
	.loc 1 39 5
	.loc 1 41 5
	.loc 1 41 217 is_stmt 0
	li	s4,0
	.loc 1 41 15
	lw	s1,12(s3)
.LVL16:
	.loc 1 41 217
	beq	s1,zero,.L10
	lw	s4,4(s1)
.L10:
	.loc 1 41 28
	addi	s7,s3,8
.L11:
.LVL17:
	.loc 1 41 6 is_stmt 1
	.loc 1 41 5 is_stmt 0
	bne	s1,s7,.L13
.LVL18:
.LBE27:
.LBE26:
	.loc 1 63 9 is_stmt 1
	.loc 1 63 13 is_stmt 0
	andi	s2,s2,-3
.LVL19:
	j	.L8
.LVL20:
.L13:
.LBB35:
.LBB34:
	.loc 1 46 10 is_stmt 1
	.loc 1 47 9
	addi	a0,s1,8
	call	looprt_timer_register
.LVL21:
	.loc 1 48 9
.LBB28:
.LBB29:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_list.h"
	.loc 2 296 5
	.loc 2 297 20 is_stmt 0
	lw	a5,4(s1)
	.loc 2 296 20
	lw	a4,0(s1)
.LVL22:
	.loc 2 297 5 is_stmt 1
	.loc 2 299 5
	.loc 2 299 16 is_stmt 0
	sw	a5,4(a4)
	.loc 2 300 5 is_stmt 1
	.loc 2 300 16 is_stmt 0
	sw	a4,0(a5)
.LVL23:
.LBE29:
.LBE28:
	.loc 1 49 9 is_stmt 1
.LBB30:
.LBB31:
	.loc 2 286 5
	.loc 2 286 41 is_stmt 0
	lw	a5,4(s3)
.LVL24:
.LBB32:
.LBB33:
	.loc 2 266 5 is_stmt 1
	.loc 2 267 16 is_stmt 0
	sw	s3,0(s1)
	.loc 2 266 16
	sw	a5,4(s1)
	.loc 2 267 5 is_stmt 1
	.loc 2 269 5
	.loc 2 269 16 is_stmt 0
	sw	s1,4(s3)
	.loc 2 270 5 is_stmt 1
	.loc 2 270 16 is_stmt 0
	sw	s1,0(a5)
.LVL25:
.LBE33:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 41 50 is_stmt 1
	.loc 1 41 185 is_stmt 0
	li	a5,0
	beq	s4,zero,.L12
	lw	a5,4(s4)
.L12:
	mv	s1,s4
	mv	s4,a5
.LVL26:
	j	.L11
.LVL27:
.L9:
.LBE34:
.LBE35:
	.loc 1 65 9 is_stmt 1
	.loc 1 65 14
	.loc 1 65 17 is_stmt 0
	beq	s2,zero,.L16
.LVL28:
.LBB36:
.LBB37:
	.loc 1 65 33 is_stmt 1
	lui	a1,%hi(.LC0)
	lui	a0,%hi(.LC1)
	li	a2,65
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL29:
.L15:
	.loc 1 65 90
	.loc 1 65 102
	.loc 1 65 96
	j	.L15
.LBE37:
.LBE36:
	.cfi_endproc
.LFE27:
	.size	_led_bloop_evt, .-_led_bloop_evt
	.section	.text.loopset_led_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_led_hook_on_looprt
	.type	loopset_led_hook_on_looprt, @function
loopset_led_hook_on_looprt:
.LFB29:
	.loc 1 96 1
	.cfi_startproc
	.loc 1 97 5
	.loc 1 106 5
.LVL30:
.LBB38:
.LBB39:
	.loc 2 310 5
.LBE39:
.LBE38:
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB43:
.LBB40:
	.loc 2 310 16
	lui	a5,%hi(.LANCHOR0)
.LBE40:
.LBE43:
	.loc 1 96 1
	sw	s0,12(sp)
.LBB44:
.LBB41:
	.loc 2 310 16
	addi	a5,a5,%lo(.LANCHOR0)
	.cfi_offset 8, -4
.LBE41:
.LBE44:
	.loc 1 96 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB45:
.LBB46:
	.loc 2 310 16
	addi	a4,a5,8
.LBE46:
.LBE45:
.LBB48:
.LBB42:
	sw	a5,4(a5)
	.loc 2 311 5 is_stmt 1
	.loc 2 311 16 is_stmt 0
	sw	a5,0(a5)
.LVL31:
.LBE42:
.LBE48:
	.loc 1 107 5 is_stmt 1
.LBB49:
.LBB47:
	.loc 2 310 5
	.loc 2 310 16 is_stmt 0
	sw	a4,12(a5)
	.loc 2 311 5 is_stmt 1
	.loc 2 311 16 is_stmt 0
	sw	a4,8(a5)
.LVL32:
.LBE47:
.LBE49:
	.loc 1 109 5 is_stmt 1
	.loc 1 110 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 109 12
	lui	a0,%hi(.LANCHOR1)
	li	a1,1
	.loc 1 110 1
	.loc 1 109 12
	addi	a0,a0,%lo(.LANCHOR1)
	.loc 1 110 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 109 12
	tail	looprt_handler_register
.LVL33:
	.cfi_endproc
.LFE29:
	.size	loopset_led_hook_on_looprt, .-loopset_led_hook_on_looprt
	.section	.rodata.loopset_led_trigger.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"ASSERT"
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] ASSERT: %s:%d\r\n"
	.section	.text.loopset_led_trigger,"ax",@progbits
	.align	1
	.globl	loopset_led_trigger
	.type	loopset_led_trigger, @function
loopset_led_trigger:
.LFB31:
	.loc 1 125 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 126 5
	.loc 1 128 5
	.loc 1 125 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	s2,a0
	.loc 1 128 15
	li	a0,60
.LVL35:
	.loc 1 125 1
	mv	s3,a1
	.loc 1 128 15
	call	pvPortMalloc
.LVL36:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 10
	.loc 1 129 13 is_stmt 0
	bne	a0,zero,.L25
	.loc 1 129 28 is_stmt 1 discriminator 1
	.loc 1 129 33 discriminator 1
	.loc 1 129 35 discriminator 1
	.loc 1 129 89 is_stmt 0 discriminator 1
	call	xPortIsInsideInterrupt
.LVL37:
	.loc 1 129 35 discriminator 1
	beq	a0,zero,.L26
	.loc 1 129 116 discriminator 3
	call	xTaskGetTickCountFromISR
.LVL38:
.L30:
	.loc 1 129 35 discriminator 4
	lui	a3,%hi(.LC0)
	.loc 1 129 145 discriminator 4
	mv	a1,a0
	.loc 1 129 35 discriminator 4
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a5,a3,%lo(.LC0)
	li	a6,129
	li	a4,129
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL39:
.L28:
	.loc 1 129 222 is_stmt 1 discriminator 1
	.loc 1 129 231 discriminator 1
	.loc 1 129 239 discriminator 1
	.loc 1 129 251 discriminator 1
	.loc 1 129 245 discriminator 1
	j	.L28
.L26:
	.loc 1 129 145 is_stmt 0 discriminator 4
	call	xTaskGetTickCount
.LVL40:
	j	.L30
.LVL41:
.L25:
	.loc 1 130 5 discriminator 2
	li	a2,60
	li	a1,0
	mv	s1,a0
	.loc 1 129 263 is_stmt 1 discriminator 2
	.loc 1 130 5 discriminator 2
	call	memset
.LVL42:
	.loc 1 131 5 discriminator 2
	.loc 1 133 5 is_stmt 0 discriminator 2
	addi	a0,s1,8
	.loc 1 131 18 discriminator 2
	sw	s2,48(s1)
	.loc 1 133 5 is_stmt 1 discriminator 2
	li	a1,0
	sw	a0,-36(s0)
	call	bloop_timer_init
.LVL43:
	.loc 1 134 5 discriminator 2
	lw	a0,-36(s0)
	call	bloop_timer_repeat_enable
.LVL44:
	.loc 1 135 5 discriminator 2
	lw	a0,-36(s0)
	lui	a2,%hi(_cb_led_trigger)
	mv	a3,s1
	li	a5,1
	li	a4,1
	mv	a1,s3
	addi	a2,a2,%lo(_cb_led_trigger)
	call	bloop_timer_configure
.LVL45:
	.loc 1 141 5 discriminator 2
	li	a1,0
	li	a2,0
	andi	a0,s2,0xff
	call	bl_gpio_enable_output
.LVL46:
	.loc 1 143 5 discriminator 2
	call	vTaskEnterCritical
.LVL47:
	.loc 1 144 5 discriminator 2
.LBB50:
.LBB51:
	.loc 2 286 5 discriminator 2
	.loc 2 286 41 is_stmt 0 discriminator 2
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a4,12(a5)
.LVL48:
.LBB52:
.LBB53:
	.loc 2 266 5 is_stmt 1 discriminator 2
	.loc 2 267 16 is_stmt 0 discriminator 2
	addi	a3,a5,8
	sw	a3,0(s1)
	.loc 2 266 16 discriminator 2
	sw	a4,4(s1)
	.loc 2 267 5 is_stmt 1 discriminator 2
	.loc 2 269 5 discriminator 2
	.loc 2 269 16 is_stmt 0 discriminator 2
	sw	s1,12(a5)
	.loc 2 270 5 is_stmt 1 discriminator 2
	.loc 2 270 16 is_stmt 0 discriminator 2
	sw	s1,0(a4)
.LVL49:
.LBE53:
.LBE52:
.LBE51:
.LBE50:
	.loc 1 145 5 is_stmt 1 discriminator 2
	call	vTaskExitCritical
.LVL50:
	.loc 1 147 5 discriminator 2
	.loc 1 148 1 is_stmt 0 discriminator 2
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL51:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL52:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL53:
	.loc 1 147 5 discriminator 2
	li	a1,2
	.loc 1 148 1 discriminator 2
	.loc 1 147 5 discriminator 2
	li	a0,1
	.loc 1 148 1 discriminator 2
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 147 5 discriminator 2
	tail	looprt_evt_notify_async
.LVL54:
	.cfi_endproc
.LFE31:
	.size	loopset_led_trigger, .-loopset_led_trigger
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"Led Trigger"
	.section	.bss.led_ctx,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	led_ctx, @object
	.size	led_ctx, 16
led_ctx:
	.zero	16
	.section	.rodata._led_bloop_handler_holder.0,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_led_bloop_handler_holder.0, @object
	.size	_led_bloop_handler_holder.0, 16
_led_bloop_handler_holder.0:
	.word	.LC4
	.word	_led_bloop_evt
	.word	_led_bloop_msg
	.word	led_ctx
	.text
.Letext0:
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/sys/bloop/bloop/include/bloop.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_log.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/sys/bloop/looprt/include/looprt.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xba8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x46
	.byte	0x25
	.4byte	0x9d
	.byte	0x6
	.byte	0x4
	.4byte	0xa3
	.byte	0x7
	.4byte	.LASF103
	.byte	0x6
	.byte	0x4
	.4byte	0xb5
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.4byte	0xae
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x8
	.4byte	0xd5
	.byte	0xa
	.4byte	.LASF16
	.byte	0x2
	.byte	0x13
	.byte	0x1c
	.4byte	0xd5
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xba
	.byte	0x9
	.4byte	.LASF15
	.byte	0x8
	.byte	0x2
	.byte	0x16
	.byte	0x8
	.4byte	0x103
	.byte	0xa
	.4byte	.LASF17
	.byte	0x2
	.byte	0x19
	.byte	0x1c
	.4byte	0xd5
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x2
	.byte	0x1b
	.byte	0x1c
	.4byte	0xd5
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x8
	.byte	0x2
	.2byte	0x103
	.byte	0x10
	.4byte	0x12e
	.byte	0xc
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x104
	.byte	0x1b
	.4byte	0x12e
	.byte	0
	.byte	0xc
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x105
	.byte	0x1b
	.4byte	0x12e
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x103
	.byte	0xd
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x106
	.byte	0x3
	.4byte	0x103
	.byte	0xe
	.byte	0x4
	.byte	0x6
	.byte	0x11
	.byte	0x9
	.4byte	0x17f
	.byte	0xa
	.4byte	.LASF22
	.byte	0x6
	.byte	0x12
	.byte	0x15
	.4byte	0x5b
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x6
	.byte	0x13
	.byte	0x15
	.4byte	0x5b
	.byte	0x1
	.byte	0xa
	.4byte	.LASF24
	.byte	0x6
	.byte	0x14
	.byte	0x15
	.4byte	0x5b
	.byte	0x2
	.byte	0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0x15
	.byte	0x15
	.4byte	0x5b
	.byte	0x3
	.byte	0
	.byte	0xf
	.byte	0x4
	.byte	0x6
	.byte	0xf
	.byte	0x5
	.4byte	0x1a1
	.byte	0x10
	.4byte	.LASF26
	.byte	0x6
	.byte	0x10
	.byte	0xf
	.4byte	0x8f
	.byte	0x10
	.4byte	.LASF27
	.byte	0x6
	.byte	0x16
	.byte	0xb
	.4byte	0x141
	.byte	0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0xd
	.byte	0x8
	.4byte	0x1fb
	.byte	0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0xe
	.byte	0x1b
	.4byte	0xba
	.byte	0
	.byte	0x11
	.string	"u"
	.byte	0x6
	.byte	0x17
	.byte	0x7
	.4byte	0x17f
	.byte	0x4
	.byte	0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0x18
	.byte	0xb
	.4byte	0x8f
	.byte	0x8
	.byte	0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0x19
	.byte	0xb
	.4byte	0x8f
	.byte	0xc
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1a
	.byte	0x12
	.4byte	0x38
	.byte	0x10
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x1b
	.byte	0x12
	.4byte	0x38
	.byte	0x14
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x10
	.byte	0x6
	.byte	0x1e
	.byte	0x8
	.4byte	0x23d
	.byte	0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x1f
	.byte	0x12
	.4byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x20
	.byte	0x12
	.4byte	0x38
	.byte	0x4
	.byte	0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x21
	.byte	0x12
	.4byte	0x38
	.byte	0x8
	.byte	0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x22
	.byte	0x12
	.4byte	0x38
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	.LASF38
	.byte	0xc
	.byte	0x6
	.byte	0x25
	.byte	0x8
	.4byte	0x272
	.byte	0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0x26
	.byte	0x11
	.4byte	0xa8
	.byte	0
	.byte	0x11
	.string	"evt"
	.byte	0x6
	.byte	0x27
	.byte	0xb
	.4byte	0x34a
	.byte	0x4
	.byte	0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x28
	.byte	0xb
	.4byte	0x36f
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	0x23d
	.byte	0x12
	.4byte	0x25
	.4byte	0x295
	.byte	0x13
	.4byte	0x295
	.byte	0x13
	.4byte	0x33e
	.byte	0x13
	.4byte	0x344
	.byte	0x13
	.4byte	0x344
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x29b
	.byte	0x14
	.4byte	.LASF41
	.2byte	0x4a0
	.byte	0x6
	.byte	0x2e
	.byte	0x8
	.4byte	0x33e
	.byte	0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0x2f
	.byte	0x12
	.4byte	0x91
	.byte	0
	.byte	0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0x30
	.byte	0xe
	.4byte	0x75
	.byte	0x4
	.byte	0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0x31
	.byte	0xe
	.4byte	0x75
	.byte	0x8
	.byte	0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0x32
	.byte	0xe
	.4byte	0x75
	.byte	0xc
	.byte	0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0x33
	.byte	0xe
	.4byte	0x375
	.byte	0x10
	.byte	0xa
	.4byte	.LASF47
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0x375
	.byte	0x90
	.byte	0x15
	.4byte	.LASF48
	.byte	0x6
	.byte	0x35
	.byte	0x17
	.4byte	0x385
	.2byte	0x110
	.byte	0x15
	.4byte	.LASF49
	.byte	0x6
	.byte	0x36
	.byte	0x27
	.4byte	0x395
	.2byte	0x210
	.byte	0x15
	.4byte	.LASF50
	.byte	0x6
	.byte	0x37
	.byte	0x25
	.4byte	0x3a5
	.2byte	0x410
	.byte	0x15
	.4byte	.LASF51
	.byte	0x6
	.byte	0x39
	.byte	0x13
	.4byte	0x134
	.2byte	0x490
	.byte	0x15
	.4byte	.LASF52
	.byte	0x6
	.byte	0x3a
	.byte	0x13
	.4byte	0x134
	.2byte	0x498
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x272
	.byte	0x6
	.byte	0x4
	.4byte	0x75
	.byte	0x6
	.byte	0x4
	.4byte	0x277
	.byte	0x12
	.4byte	0x25
	.4byte	0x369
	.byte	0x13
	.4byte	0x295
	.byte	0x13
	.4byte	0x33e
	.byte	0x13
	.4byte	0x369
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1a1
	.byte	0x6
	.byte	0x4
	.4byte	0x350
	.byte	0x16
	.4byte	0x75
	.4byte	0x385
	.byte	0x17
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0xdb
	.4byte	0x395
	.byte	0x17
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0x1fb
	.4byte	0x3a5
	.byte	0x17
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x16
	.4byte	0x33e
	.4byte	0x3b5
	.byte	0x17
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x9
	.4byte	.LASF53
	.byte	0x24
	.byte	0x6
	.byte	0x3d
	.byte	0x8
	.4byte	0x42a
	.byte	0xa
	.4byte	.LASF54
	.byte	0x6
	.byte	0x3e
	.byte	0x13
	.4byte	0x134
	.byte	0
	.byte	0xa
	.4byte	.LASF55
	.byte	0x6
	.byte	0x45
	.byte	0xd
	.4byte	0x5b
	.byte	0x8
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x47
	.byte	0x12
	.4byte	0x38
	.byte	0xc
	.byte	0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0x48
	.byte	0x12
	.4byte	0x38
	.byte	0x10
	.byte	0xa
	.4byte	.LASF57
	.byte	0x6
	.byte	0x49
	.byte	0x9
	.4byte	0x25
	.byte	0x14
	.byte	0xa
	.4byte	.LASF58
	.byte	0x6
	.byte	0x4a
	.byte	0xe
	.4byte	0x75
	.byte	0x18
	.byte	0x11
	.string	"cb"
	.byte	0x6
	.byte	0x4b
	.byte	0xc
	.4byte	0x445
	.byte	0x1c
	.byte	0x11
	.string	"arg"
	.byte	0x6
	.byte	0x4c
	.byte	0xb
	.4byte	0x8f
	.byte	0x20
	.byte	0
	.byte	0x18
	.4byte	0x43f
	.byte	0x13
	.4byte	0x295
	.byte	0x13
	.4byte	0x43f
	.byte	0x13
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x3b5
	.byte	0x6
	.byte	0x4
	.4byte	0x42a
	.byte	0x9
	.4byte	.LASF59
	.byte	0x10
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.4byte	0x473
	.byte	0xa
	.4byte	.LASF60
	.byte	0x1
	.byte	0x13
	.byte	0x13
	.4byte	0x134
	.byte	0
	.byte	0xa
	.4byte	.LASF61
	.byte	0x1
	.byte	0x14
	.byte	0x13
	.4byte	0x134
	.byte	0x8
	.byte	0
	.byte	0x9
	.4byte	.LASF62
	.byte	0x3c
	.byte	0x1
	.byte	0x16
	.byte	0x8
	.4byte	0x4cf
	.byte	0xa
	.4byte	.LASF54
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0x134
	.byte	0
	.byte	0xa
	.4byte	.LASF63
	.byte	0x1
	.byte	0x18
	.byte	0x17
	.4byte	0x3b5
	.byte	0x8
	.byte	0xa
	.4byte	.LASF64
	.byte	0x1
	.byte	0x19
	.byte	0x9
	.4byte	0x25
	.byte	0x2c
	.byte	0x11
	.string	"pin"
	.byte	0x1
	.byte	0x1a
	.byte	0x9
	.4byte	0x25
	.byte	0x30
	.byte	0xa
	.4byte	.LASF65
	.byte	0x1
	.byte	0x1a
	.byte	0xe
	.4byte	0x25
	.byte	0x34
	.byte	0xa
	.4byte	.LASF66
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0x25
	.byte	0x38
	.byte	0
	.byte	0x9
	.4byte	.LASF67
	.byte	0x10
	.byte	0x1
	.byte	0x1e
	.byte	0x8
	.4byte	0x4f7
	.byte	0xa
	.4byte	.LASF68
	.byte	0x1
	.byte	0x1f
	.byte	0x23
	.4byte	0x272
	.byte	0
	.byte	0x11
	.string	"ctx"
	.byte	0x1
	.byte	0x20
	.byte	0x1d
	.4byte	0x4fc
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x4cf
	.byte	0x6
	.byte	0x4
	.4byte	0x44b
	.byte	0x19
	.4byte	.LASF70
	.byte	0x1
	.byte	0x22
	.byte	0x1f
	.4byte	0x44b
	.byte	0x5
	.byte	0x3
	.4byte	led_ctx
	.byte	0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x7c
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e2
	.byte	0x1b
	.string	"pin"
	.byte	0x1
	.byte	0x7c
	.byte	0x1e
	.4byte	0x25
	.4byte	.LLST24
	.byte	0x1c
	.4byte	.LASF69
	.byte	0x1
	.byte	0x7c
	.byte	0x30
	.4byte	0x38
	.4byte	.LLST25
	.byte	0x1d
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7e
	.byte	0x1e
	.4byte	0x6e2
	.4byte	.LLST26
	.byte	0x1e
	.4byte	0x906
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x90
	.byte	0x5
	.4byte	0x5ae
	.byte	0x1f
	.4byte	0x921
	.4byte	.LLST27
	.byte	0x1f
	.4byte	0x914
	.4byte	.LLST28
	.byte	0x20
	.4byte	0x92f
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x2
	.2byte	0x11e
	.byte	0x5
	.byte	0x1f
	.4byte	0x957
	.4byte	.LLST29
	.byte	0x1f
	.4byte	0x94a
	.4byte	.LLST30
	.byte	0x1f
	.4byte	0x93d
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL36
	.4byte	0xadd
	.4byte	0x5c2
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0x23
	.4byte	.LVL37
	.4byte	0xae9
	.byte	0x23
	.4byte	.LVL38
	.4byte	0xaf5
	.byte	0x21
	.4byte	.LVL39
	.4byte	0xb02
	.4byte	0x612
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x22
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x81
	.byte	0x22
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x22
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x23
	.4byte	.LVL40
	.4byte	0xb0e
	.byte	0x21
	.4byte	.LVL42
	.4byte	0xb1b
	.4byte	0x63a
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0x21
	.4byte	.LVL43
	.4byte	0xb27
	.4byte	0x654
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL44
	.4byte	0xb33
	.4byte	0x669
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x21
	.4byte	.LVL45
	.4byte	0xb3f
	.4byte	0x69d
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x5c
	.byte	0x6
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	_cb_led_trigger
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0x22
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x21
	.4byte	.LVL46
	.4byte	0xb4b
	.4byte	0x6bb
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x23
	.4byte	.LVL47
	.4byte	0xb57
	.byte	0x23
	.4byte	.LVL50
	.4byte	0xb63
	.byte	0x24
	.4byte	.LVL54
	.4byte	0xb6f
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x473
	.byte	0x25
	.4byte	.LASF105
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x748
	.byte	0x1c
	.4byte	.LASF72
	.byte	0x1
	.byte	0x70
	.byte	0x2e
	.4byte	0x295
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LASF63
	.byte	0x1
	.byte	0x70
	.byte	0x47
	.4byte	0x43f
	.4byte	.LLST2
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.byte	0x70
	.byte	0x54
	.4byte	0x8f
	.4byte	.LLST3
	.byte	0x1d
	.4byte	.LASF71
	.byte	0x1
	.byte	0x72
	.byte	0x1e
	.4byte	0x6e2
	.4byte	.LLST4
	.byte	0x23
	.4byte	.LVL5
	.4byte	0xb7b
	.byte	0
	.byte	0x26
	.4byte	.LASF106
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x7c9
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0x61
	.byte	0x31
	.4byte	0x4f7
	.byte	0x5
	.byte	0x3
	.4byte	_led_bloop_handler_holder.0
	.byte	0x27
	.4byte	0x8b4
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.4byte	0x792
	.byte	0x1f
	.4byte	0x8c2
	.4byte	.LLST22
	.byte	0
	.byte	0x27
	.4byte	0x8b4
	.4byte	.LBB45
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x6b
	.byte	0x5
	.4byte	0x7b0
	.byte	0x1f
	.4byte	0x8c2
	.4byte	.LLST23
	.byte	0
	.byte	0x24
	.4byte	.LVL33
	.4byte	0xb87
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4c
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x810
	.byte	0x1c
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4c
	.byte	0x2c
	.4byte	0x295
	.4byte	.LLST0
	.byte	0x29
	.4byte	.LASF68
	.byte	0x1
	.byte	0x4c
	.byte	0x51
	.4byte	0x33e
	.byte	0x1
	.byte	0x5b
	.byte	0x2a
	.string	"msg"
	.byte	0x1
	.byte	0x4c
	.byte	0x6b
	.4byte	0x369
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x2b
	.4byte	.LASF108
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x876
	.byte	0x2c
	.4byte	.LASF72
	.byte	0x1
	.byte	0x35
	.byte	0x2c
	.4byte	0x295
	.byte	0x2c
	.4byte	.LASF68
	.byte	0x1
	.byte	0x35
	.byte	0x51
	.4byte	0x33e
	.byte	0x2c
	.4byte	.LASF74
	.byte	0x1
	.byte	0x35
	.byte	0x64
	.4byte	0x344
	.byte	0x2c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x35
	.byte	0x7a
	.4byte	0x344
	.byte	0x2d
	.string	"map"
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x75
	.byte	0x2e
	.4byte	.LASF75
	.byte	0x1
	.byte	0x38
	.byte	0x25
	.4byte	0x876
	.byte	0x2f
	.4byte	.LASF109
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	.L6
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x4cf
	.byte	0x30
	.4byte	.LASF77
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.byte	0x3
	.4byte	0x8ae
	.byte	0x31
	.string	"ctx"
	.byte	0x1
	.byte	0x24
	.byte	0x42
	.4byte	0x4fc
	.byte	0x2d
	.string	"tmp"
	.byte	0x1
	.byte	0x26
	.byte	0x14
	.4byte	0x8ae
	.byte	0x2e
	.4byte	.LASF76
	.byte	0x1
	.byte	0x27
	.byte	0x1e
	.4byte	0x6e2
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x134
	.byte	0x32
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x134
	.byte	0x14
	.byte	0x3
	.4byte	0x8d0
	.byte	0x33
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x134
	.byte	0x39
	.4byte	0x8ae
	.byte	0
	.byte	0x32
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x126
	.byte	0x14
	.byte	0x3
	.4byte	0x906
	.byte	0x33
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x126
	.byte	0x33
	.4byte	0x8ae
	.byte	0x34
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x128
	.byte	0x14
	.4byte	0x8ae
	.byte	0x34
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x129
	.byte	0x14
	.4byte	0x8ae
	.byte	0
	.byte	0x32
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x11c
	.byte	0x14
	.byte	0x3
	.4byte	0x92f
	.byte	0x33
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x11c
	.byte	0x33
	.4byte	0x8ae
	.byte	0x33
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x11c
	.byte	0x48
	.4byte	0x8ae
	.byte	0
	.byte	0x32
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x108
	.byte	0x14
	.byte	0x3
	.4byte	0x965
	.byte	0x33
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x108
	.byte	0x35
	.4byte	0x8ae
	.byte	0x33
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x108
	.byte	0x4a
	.4byte	0x8ae
	.byte	0x33
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x108
	.byte	0x5f
	.4byte	0x8ae
	.byte	0
	.byte	0x35
	.4byte	0x810
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xadd
	.byte	0x1f
	.4byte	0x821
	.4byte	.LLST5
	.byte	0x1f
	.4byte	0x82d
	.4byte	.LLST6
	.byte	0x1f
	.4byte	0x839
	.4byte	.LLST7
	.byte	0x1f
	.4byte	0x845
	.4byte	.LLST8
	.byte	0x36
	.4byte	0x851
	.4byte	.LLST9
	.byte	0x36
	.4byte	0x85d
	.4byte	.LLST10
	.byte	0x27
	.4byte	0x87c
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0xa78
	.byte	0x1f
	.4byte	0x889
	.4byte	.LLST11
	.byte	0x37
	.4byte	.Ldebug_ranges0+0
	.byte	0x36
	.4byte	0x895
	.4byte	.LLST12
	.byte	0x36
	.4byte	0x8a1
	.4byte	.LLST13
	.byte	0x1e
	.4byte	0x8d0
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0xa12
	.byte	0x1f
	.4byte	0x8de
	.4byte	.LLST14
	.byte	0x36
	.4byte	0x8eb
	.4byte	.LLST15
	.byte	0x36
	.4byte	0x8f8
	.4byte	.LLST16
	.byte	0
	.byte	0x1e
	.4byte	0x906
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0xa66
	.byte	0x1f
	.4byte	0x921
	.4byte	.LLST17
	.byte	0x1f
	.4byte	0x914
	.4byte	.LLST18
	.byte	0x20
	.4byte	0x92f
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x2
	.2byte	0x11e
	.byte	0x5
	.byte	0x1f
	.4byte	0x957
	.4byte	.LLST19
	.byte	0x1f
	.4byte	0x94a
	.4byte	.LLST20
	.byte	0x1f
	.4byte	0x93d
	.4byte	.LLST21
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	.LVL21
	.4byte	0xb93
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	0x810
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.byte	0x3a
	.4byte	0x821
	.byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.byte	0x3a
	.4byte	0x82d
	.byte	0x1
	.byte	0x66
	.byte	0x3a
	.4byte	0x839
	.byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.byte	0x3a
	.4byte	0x845
	.byte	0x1
	.byte	0x65
	.byte	0x3b
	.4byte	0x851
	.byte	0x3b
	.4byte	0x85d
	.byte	0x3c
	.4byte	0x869
	.byte	0x38
	.4byte	.LVL29
	.4byte	0xb9f
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x7
	.byte	0x91
	.byte	0x7
	.byte	0x3d
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.byte	0x98
	.byte	0xc
	.byte	0x3e
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x558
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x3e
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x547
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.byte	0x3d
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x6
	.byte	0x58
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.byte	0x5c
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x6
	.byte	0x59
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xb
	.byte	0xf
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x8
	.byte	0x61
	.byte	0xd
	.byte	0x3d
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x8
	.byte	0x62
	.byte	0xd
	.byte	0x3d
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xc
	.byte	0xa
	.byte	0x6
	.byte	0x3d
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.byte	0x11
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0xc
	.byte	0xf
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xc
	.byte	0x10
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xd
	.byte	0xc8
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
	.byte	0xe
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
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0x3e
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
.LLST24:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL52
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL53
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL51
	.4byte	.LFE31
	.2byte	0x6
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x3
	.4byte	led_ctx+8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x6
	.byte	0x3
	.4byte	led_ctx+8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x3
	.4byte	led_ctx
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x3
	.4byte	led_ctx+8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"header"
.LASF105:
	.string	"_cb_led_trigger"
.LASF80:
	.string	"utils_dlist_add"
.LASF56:
	.string	"time_target"
.LASF53:
	.string	"loop_timer"
.LASF74:
	.string	"bitmap_evt"
.LASF35:
	.string	"time_max"
.LASF49:
	.string	"statistic"
.LASF70:
	.string	"led_ctx"
.LASF15:
	.string	"utils_list"
.LASF2:
	.string	"short int"
.LASF5:
	.string	"size_t"
.LASF82:
	.string	"__utils_dlist_add"
.LASF26:
	.string	"container"
.LASF12:
	.string	"TaskHandle_t"
.LASF67:
	.string	"loop_evt_handler_holder"
.LASF28:
	.string	"loop_msg"
.LASF108:
	.string	"_led_bloop_evt"
.LASF37:
	.string	"count_triggered"
.LASF65:
	.string	"active"
.LASF68:
	.string	"handler"
.LASF93:
	.string	"vTaskEnterCritical"
.LASF104:
	.string	"loopset_led_trigger"
.LASF60:
	.string	"trigger_queue"
.LASF73:
	.string	"_led_bloop_handler_holder"
.LASF38:
	.string	"loop_evt_handler"
.LASF42:
	.string	"looper"
.LASF6:
	.string	"uint8_t"
.LASF63:
	.string	"timer"
.LASF109:
	.string	"redo"
.LASF84:
	.string	"xPortIsInsideInterrupt"
.LASF39:
	.string	"name"
.LASF90:
	.string	"bloop_timer_repeat_enable"
.LASF78:
	.string	"INIT_UTILS_DLIST_HEAD"
.LASF34:
	.string	"loop_evt_handler_statistic"
.LASF30:
	.string	"arg1"
.LASF69:
	.string	"timeon_ms"
.LASF4:
	.string	"long long int"
.LASF88:
	.string	"memset"
.LASF66:
	.string	"current_val"
.LASF3:
	.string	"long int"
.LASF23:
	.string	"id_dst"
.LASF99:
	.string	"printf"
.LASF47:
	.string	"evt_type_map_sync"
.LASF106:
	.string	"loopset_led_hook_on_looprt"
.LASF103:
	.string	"tskTaskControlBlock"
.LASF87:
	.string	"xTaskGetTickCount"
.LASF32:
	.string	"time_added"
.LASF76:
	.string	"node"
.LASF92:
	.string	"bl_gpio_enable_output"
.LASF81:
	.string	"queue"
.LASF94:
	.string	"vTaskExitCritical"
.LASF97:
	.string	"looprt_handler_register"
.LASF57:
	.string	"idx_task"
.LASF7:
	.string	"unsigned char"
.LASF96:
	.string	"bl_gpio_output_set"
.LASF52:
	.string	"timer_dued"
.LASF72:
	.string	"loop"
.LASF107:
	.string	"_led_bloop_msg"
.LASF1:
	.string	"signed char"
.LASF55:
	.string	"flags"
.LASF11:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF50:
	.string	"handlers"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"id_src"
.LASF18:
	.string	"last"
.LASF71:
	.string	"trigger"
.LASF77:
	.string	"_waiting_queue_handle"
.LASF36:
	.string	"time_accumulated"
.LASF8:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF45:
	.string	"bitmap_msg"
.LASF64:
	.string	"type"
.LASF46:
	.string	"evt_type_map_async"
.LASF24:
	.string	"id_msg"
.LASF48:
	.string	"list"
.LASF102:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/loopset"
.LASF98:
	.string	"looprt_timer_register"
.LASF89:
	.string	"bloop_timer_init"
.LASF75:
	.string	"handler_holder"
.LASF19:
	.string	"utils_dlist_s"
.LASF10:
	.string	"long unsigned int"
.LASF51:
	.string	"timer_dlist"
.LASF40:
	.string	"handle"
.LASF100:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF101:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_led.c"
.LASF85:
	.string	"xTaskGetTickCountFromISR"
.LASF91:
	.string	"bloop_timer_configure"
.LASF33:
	.string	"time_consumed"
.LASF95:
	.string	"looprt_evt_notify_async"
.LASF29:
	.string	"item"
.LASF61:
	.string	"waiting_queue"
.LASF59:
	.string	"led_trigger_ctx"
.LASF58:
	.string	"evt_type_map"
.LASF21:
	.string	"utils_dlist_t"
.LASF22:
	.string	"priority"
.LASF86:
	.string	"bl_printk"
.LASF31:
	.string	"arg2"
.LASF20:
	.string	"prev"
.LASF62:
	.string	"led_trigger_item"
.LASF83:
	.string	"pvPortMalloc"
.LASF54:
	.string	"dlist_item"
.LASF14:
	.string	"utils_list_hdr"
.LASF43:
	.string	"bitmap_evt_async"
.LASF16:
	.string	"next"
.LASF79:
	.string	"utils_dlist_del"
.LASF44:
	.string	"bitmap_evt_sync"
.LASF17:
	.string	"first"
.LASF41:
	.string	"loop_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
