	.file	"hal_button.c"
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
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h"
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
	.section	.text.clear_button_states,"ax",@progbits
	.align	1
	.type	clear_button_states, @function
clear_button_states:
.LFB42:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_button.c"
	.loc 2 84 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 2 85 5
	.loc 2 84 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 85 26
	sw	zero,8(a0)
	.loc 2 86 5 is_stmt 1
	.loc 2 86 26 is_stmt 0
	sw	zero,12(a0)
	.loc 2 87 5 is_stmt 1
	.loc 2 87 32 is_stmt 0
	sw	zero,48(a0)
	.loc 2 89 5 is_stmt 1
	.loc 2 94 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 2 89 9
	lw	a0,4(a0)
.LVL3:
	li	a4,0
	.loc 2 94 1
	.loc 2 89 9
	li	a3,0
	li	a2,0
	li	a1,3
	.loc 2 94 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 89 9
	tail	xTimerGenericCommand
.LVL4:
	.cfi_endproc
.LFE42:
	.size	clear_button_states, .-clear_button_states
	.section	.text.button_callback,"ax",@progbits
	.align	1
	.type	button_callback, @function
button_callback:
.LFB44:
	.loc 2 228 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 2 229 5
	.loc 2 230 5
	.loc 2 232 5
	.loc 2 228 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 232 11
	lw	a5,8(a0)
	lw	s1,4(a5)
	call	xTaskGetTickCountFromISR
.LVL6:
	mv	a2,a0
	li	a4,0
	addi	a3,s0,-20
	li	a1,6
	mv	a0,s1
	call	xTimerGenericCommand
.LVL7:
	.loc 2 233 5 is_stmt 1
	.loc 2 233 8 is_stmt 0
	li	a5,1
	bne	a0,a5,.L5
	.loc 2 237 5 is_stmt 1
	.loc 2 237 7 is_stmt 0
	lw	a5,-20(s0)
	beq	a5,zero,.L5
	.loc 2 237 36 is_stmt 1 discriminator 1
	call	vTaskSwitchContext
.LVL8:
.L5:
	.loc 2 239 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	button_callback, .-button_callback
	.section	.text.check_button_is_up,"ax",@progbits
	.align	1
	.type	check_button_is_up, @function
check_button_is_up:
.LFB40:
	.loc 2 67 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 2 68 5
	.loc 2 70 5
	.loc 2 67 1 is_stmt 0
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
	.loc 2 67 1
	mv	s1,a0
	.loc 2 70 11
	lbu	a0,60(a0)
.LVL10:
	call	bl_gpio_input_get_value
.LVL11:
	.loc 2 71 5 is_stmt 1
	.loc 2 71 8 is_stmt 0
	lw	a5,56(s1)
	.loc 2 76 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 2 71 8
	sub	a0,a5,a0
.LVL12:
	.loc 2 76 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL13:
	seqz	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	check_button_is_up, .-check_button_is_up
	.section	.rodata.hal_button_register_handler_with_dts.isra.0.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"%d"
	.section	.text.hal_button_register_handler_with_dts.isra.0,"ax",@progbits
	.align	1
	.type	hal_button_register_handler_with_dts.isra.0, @function
hal_button_register_handler_with_dts.isra.0:
.LFB49:
	.loc 2 241 12 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 2 243 5
	.loc 2 244 5
	.loc 2 241 12 is_stmt 0
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
	.loc 2 244 10
	lui	a1,%hi(.LANCHOR0)
	.cfi_offset 18, -16
	.loc 2 241 12
	mv	s2,a0
	.loc 2 244 10
	li	a2,13
	addi	a1,a1,%lo(.LANCHOR0)
	.loc 2 241 12
	.loc 2 244 10
	addi	a0,s0,-36
.LVL15:
	call	memcpy
.LVL16:
	li	a2,7
	li	a1,0
	addi	a0,s0,-23
	call	memset
.LVL17:
	.loc 2 245 5 is_stmt 1
	.loc 2 247 5
	.loc 2 252 5
	.loc 2 252 15 is_stmt 0
	li	a0,64
	call	pvPortMalloc
.LVL18:
	.loc 2 254 69
	lw	a5,8(s2)
	.loc 2 252 15
	mv	s1,a0
.LVL19:
	.loc 2 254 5 is_stmt 1
	.loc 2 254 69 is_stmt 0
	lw	a5,16(a5)
	.loc 2 254 35
	sw	a5,16(a0)
	.loc 2 255 5 is_stmt 1
	.loc 2 255 67 is_stmt 0
	lw	a5,8(s2)
	lw	a5,20(a5)
	.loc 2 255 33
	sw	a5,20(a0)
	.loc 2 256 5 is_stmt 1
	.loc 2 256 61 is_stmt 0
	lw	a5,8(s2)
	lw	a5,24(a5)
	.loc 2 256 27
	sw	a5,24(a0)
	.loc 2 257 5 is_stmt 1
	.loc 2 257 68 is_stmt 0
	lw	a5,8(s2)
	lw	a5,28(a5)
	.loc 2 257 34
	sw	a5,28(a0)
	.loc 2 258 5 is_stmt 1
	.loc 2 258 66 is_stmt 0
	lw	a5,8(s2)
	lw	a5,32(a5)
	.loc 2 258 32
	sw	a5,32(a0)
	.loc 2 259 5 is_stmt 1
	.loc 2 259 60 is_stmt 0
	lw	a5,8(s2)
	lw	a5,36(a5)
	.loc 2 259 26
	sw	a5,36(a0)
	.loc 2 260 5 is_stmt 1
	.loc 2 260 66 is_stmt 0
	lw	a5,8(s2)
	lw	a5,40(a5)
	.loc 2 260 32
	sw	a5,40(a0)
	.loc 2 261 5 is_stmt 1
	.loc 2 261 64 is_stmt 0
	lw	a5,8(s2)
	lw	a5,44(a5)
	.loc 2 261 30
	sw	a5,44(a0)
	.loc 2 262 5 is_stmt 1
	.loc 2 262 57 is_stmt 0
	lw	a5,8(s2)
	lw	a5,52(a5)
	.loc 2 262 23
	sw	a5,52(a0)
	.loc 2 263 5 is_stmt 1
	.loc 2 263 59 is_stmt 0
	lw	a5,8(s2)
	lw	a5,56(a5)
	.loc 2 263 25
	sw	a5,56(a0)
	.loc 2 264 5 is_stmt 1
	.loc 2 264 31 is_stmt 0
	lbu	a5,12(s2)
	sw	a5,60(a0)
	.loc 2 265 5 is_stmt 1
	.loc 2 265 26 is_stmt 0
	sw	zero,8(a0)
	.loc 2 266 5 is_stmt 1
	.loc 2 266 26 is_stmt 0
	sw	zero,12(a0)
	.loc 2 267 5 is_stmt 1
	.loc 2 267 32 is_stmt 0
	sw	zero,48(a0)
	.loc 2 270 5 is_stmt 1
	.loc 2 270 25 is_stmt 0
	addi	a0,s0,-36
	call	strlen
.LVL20:
	.loc 2 270 5
	lw	a2,60(s1)
	addi	a5,s0,-36
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
	add	a0,a5,a0
	call	sprintf
.LVL21:
	.loc 2 271 5 is_stmt 1
	.loc 2 271 116 is_stmt 0
	lw	a5,52(s1)
	li	a1,1000
	.loc 2 271 33
	lui	a4,%hi(button_process)
	.loc 2 271 116
	mul	a5,a1,a5
	.loc 2 271 33
	addi	a4,a4,%lo(button_process)
	mv	a3,s1
	li	a2,1
	addi	a0,s0,-36
	divu	a1,a5,a1
	call	xTimerCreate
.LVL22:
	.loc 2 271 31
	sw	a0,4(s1)
	.loc 2 273 5 is_stmt 1
	.loc 2 273 8 is_stmt 0
	beq	a0,zero,.L13
	.loc 2 278 5 is_stmt 1
	.loc 2 278 20 is_stmt 0
	lw	a1,56(s1)
.LVL23:
	.loc 2 279 5 is_stmt 1
	lbu	a0,60(s1)
	snez	a2,a1
	seqz	a1,a1
.LVL24:
	call	bl_gpio_enable_input
.LVL25:
	.loc 2 280 5
	lw	a3,56(s1)
	lw	a1,60(s1)
	lui	a0,%hi(button_callback)
	snez	a3,a3
	mv	a4,s1
	addi	a3,a3,2
	li	a2,1
	addi	a0,a0,%lo(button_callback)
	call	hal_gpio_register_handler
.LVL26:
	.loc 2 282 5
.L13:
	.loc 2 283 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
.LVL27:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL28:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE49:
	.size	hal_button_register_handler_with_dts.isra.0, .-hal_button_register_handler_with_dts.isra.0
	.section	.text.button_int_umask.isra.0,"ax",@progbits
	.align	1
	.type	button_int_umask.isra.0, @function
button_int_umask.isra.0:
.LFB48:
	.loc 2 78 13 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 2 80 5
	.loc 2 78 13 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 81 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 2 80 5
	li	a1,0
	andi	a0,a0,0xff
	.loc 2 81 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 80 5
	tail	bl_gpio_intmask
.LVL30:
	.cfi_endproc
.LFE48:
	.size	button_int_umask.isra.0, .-button_int_umask.isra.0
	.section	.text.button_process,"ax",@progbits
	.align	1
	.type	button_process, @function
button_process:
.LFB43:
	.loc 2 97 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 2 98 5
	.loc 2 99 5
	.loc 2 100 5
	.loc 2 102 5
	.loc 2 97 1 is_stmt 0
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
	.loc 2 102 31
	call	pvTimerGetTimerID
.LVL32:
	.loc 2 104 20
	lw	a5,8(a0)
	.loc 2 104 5
	li	a4,2
	.loc 2 102 31
	mv	s1,a0
.LVL33:
	.loc 2 104 5 is_stmt 1
	beq	a5,a4,.L24
	bgt	a5,a4,.L25
	beq	a5,zero,.L26
	li	a3,1
	beq	a5,a3,.L27
.L23:
	.loc 2 224 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL34:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL35:
.L25:
	.cfi_restore_state
	.loc 2 104 5
	li	a4,3
	bne	a5,a4,.L23
	.loc 2 204 13 is_stmt 1
	.loc 2 204 33 is_stmt 0
	lw	a5,12(a0)
.LBB8:
.LBB9:
	.loc 2 61 38
	li	a4,20
.LBE9:
.LBE8:
	.loc 2 204 33
	addi	a5,a5,1
	sw	a5,12(a0)
	.loc 2 205 13 is_stmt 1
.LVL36:
.LBB12:
.LBB10:
	.loc 2 54 5
	.loc 2 56 5
	.loc 2 61 5
	.loc 2 63 5
.LBE10:
.LBE12:
	.loc 2 206 13
.LBB13:
.LBB11:
	.loc 2 61 38 is_stmt 0
	mul	a5,a5,a4
.LVL37:
	.loc 2 61 15
	lw	a4,52(a0)
	add	a5,a5,a4
.LVL38:
.LBE11:
.LBE13:
	.loc 2 206 16
	lw	a4,40(a0)
	bgt	a4,a5,.L38
	.loc 2 206 57 discriminator 1
	lw	a5,48(a0)
.LVL39:
	bne	a5,zero,.L38
	.loc 2 207 17 is_stmt 1
	.loc 2 208 17
	lhu	a1,44(a0)
	li	a2,0
	li	a0,513
	call	aos_post_event
.LVL40:
	.loc 2 209 17
	.loc 2 209 44 is_stmt 0
	li	a5,1
	sw	a5,48(s1)
	.loc 2 211 17 is_stmt 1
	j	.L23
.L26:
	.loc 2 107 13
	.loc 2 107 19 is_stmt 0
	call	check_button_is_up
.LVL41:
	.loc 2 108 13 is_stmt 1
	.loc 2 108 16 is_stmt 0
	bne	a0,zero,.L30
.LVL42:
.L40:
	.loc 2 216 17 is_stmt 1
	mv	a0,s1
	call	clear_button_states
.LVL43:
	.loc 2 217 17
	.loc 2 224 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 2 217 17
	lw	a0,60(s1)
	.loc 2 224 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL44:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 217 17
	tail	button_int_umask.isra.0
.LVL45:
.L30:
	.cfi_restore_state
	.loc 2 116 13 is_stmt 1
	.loc 2 116 17 is_stmt 0
	lw	a0,4(s1)
.LVL46:
	li	a4,100
	li	a3,0
	li	a2,20
	li	a1,4
	call	xTimerGenericCommand
.LVL47:
	.loc 2 116 16
	li	a5,1
	beq	a0,a5,.L31
	.loc 2 117 17 is_stmt 1
	.loc 2 118 17
	lw	a0,60(s1)
	call	button_int_umask.isra.0
.LVL48:
	.loc 2 119 17
	.loc 2 224 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 2 119 17
	mv	a0,s1
	.loc 2 224 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL49:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 2 119 17
	tail	clear_button_states
.LVL50:
.L31:
	.cfi_restore_state
	.loc 2 123 13 is_stmt 1
	.loc 2 123 34 is_stmt 0
	sw	a0,8(s1)
	.loc 2 125 9 is_stmt 1
	j	.L23
.L27:
	.loc 2 129 13
	.loc 2 129 33 is_stmt 0
	lw	a5,12(a0)
.LBB14:
.LBB15:
	.loc 2 61 38
	li	a3,20
.LBE15:
.LBE14:
	.loc 2 129 33
	addi	a5,a5,1
	sw	a5,12(a0)
	.loc 2 130 13 is_stmt 1
.LVL51:
.LBB17:
.LBB16:
	.loc 2 54 5
	.loc 2 56 5
	.loc 2 61 5
	.loc 2 61 38 is_stmt 0
	mul	a5,a5,a3
	.loc 2 61 15
	lw	a3,52(a0)
	add	a5,a5,a3
.LVL52:
	.loc 2 63 5 is_stmt 1
.LBE16:
.LBE17:
	.loc 2 131 13
	.loc 2 131 36 is_stmt 0
	lw	a3,20(a0)
	.loc 2 131 16
	bge	a3,a5,.L32
	.loc 2 132 17 is_stmt 1
	.loc 2 132 38 is_stmt 0
	sw	a4,8(a0)
	.loc 2 134 17 is_stmt 1
	j	.L23
.L32:
	.loc 2 136 18
	.loc 2 136 21 is_stmt 0
	lw	a4,16(a0)
	bgt	a4,a5,.L43
	.loc 2 136 65 discriminator 1
	ble	a3,a5,.L23
	.loc 2 137 17 is_stmt 1
	.loc 2 137 23 is_stmt 0
	call	check_button_is_up
.LVL53:
	.loc 2 138 17 is_stmt 1
	.loc 2 138 20 is_stmt 0
	bne	a0,zero,.L23
	.loc 2 139 21 is_stmt 1
	.loc 2 140 21
	lhu	a1,24(s1)
	li	a2,0
.L41:
	.loc 2 178 21 is_stmt 0
	li	a0,513
.LVL54:
	call	aos_post_event
.LVL55:
	.loc 2 179 21 is_stmt 1
	j	.L40
.L24:
	.loc 2 167 13
	.loc 2 167 33 is_stmt 0
	lw	a5,12(a0)
.LBB18:
.LBB19:
	.loc 2 61 38
	li	a4,20
.LBE19:
.LBE18:
	.loc 2 167 33
	addi	a5,a5,1
	sw	a5,12(a0)
	.loc 2 168 13 is_stmt 1
.LVL56:
.LBB21:
.LBB20:
	.loc 2 54 5
	.loc 2 56 5
	.loc 2 61 5
	.loc 2 61 38 is_stmt 0
	mul	a5,a5,a4
	.loc 2 61 15
	lw	a4,52(a0)
	add	a5,a5,a4
.LVL57:
	.loc 2 63 5 is_stmt 1
.LBE20:
.LBE21:
	.loc 2 169 13
	.loc 2 169 36 is_stmt 0
	lw	a4,32(a0)
	.loc 2 169 16
	bge	a4,a5,.L36
	.loc 2 170 17 is_stmt 1
	.loc 2 170 38 is_stmt 0
	li	a5,3
.LVL58:
	sw	a5,8(a0)
	.loc 2 172 17 is_stmt 1
	j	.L23
.LVL59:
.L36:
	.loc 2 174 18
	.loc 2 174 21 is_stmt 0
	lw	a3,28(a0)
	bgt	a3,a5,.L43
	.loc 2 174 64 discriminator 1
	ble	a4,a5,.L23
	.loc 2 175 17 is_stmt 1
	.loc 2 175 23 is_stmt 0
	call	check_button_is_up
.LVL60:
	.loc 2 176 17 is_stmt 1
	.loc 2 176 20 is_stmt 0
	bne	a0,zero,.L23
	.loc 2 177 21 is_stmt 1
	.loc 2 178 21
	lhu	a1,36(s1)
	li	a2,0
	j	.L41
.LVL61:
.L38:
	.loc 2 214 13
	.loc 2 214 19 is_stmt 0
	mv	a0,s1
.LVL62:
.L43:
	call	check_button_is_up
.LVL63:
	.loc 2 215 13 is_stmt 1
	.loc 2 215 16 is_stmt 0
	bne	a0,zero,.L23
	j	.L40
	.cfi_endproc
.LFE43:
	.size	button_process, .-button_process
	.section	.rodata.fdt_button_module_init.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"gpio%d"
	.align	2
.LC3:
	.string	"status"
	.align	2
.LC4:
	.string	"okay"
	.align	2
.LC5:
	.string	"feature"
	.align	2
.LC6:
	.string	"button"
	.align	2
.LC7:
	.string	"mode"
	.align	2
.LC8:
	.string	"multipress"
	.align	2
.LC9:
	.string	"pin"
	.align	2
.LC10:
	.string	"hbn_use"
	.align	2
.LC11:
	.string	"debounce"
	.align	2
.LC12:
	.string	"short_press_ms"
	.align	2
.LC13:
	.string	"start"
	.align	2
.LC14:
	.string	"end"
	.align	2
.LC15:
	.string	"kevent"
	.align	2
.LC16:
	.string	"long_press_ms"
	.align	2
.LC17:
	.string	"longlong_press_ms"
	.align	2
.LC18:
	.string	"trig_level"
	.align	2
.LC19:
	.string	"Hi"
	.align	2
.LC20:
	.string	"Lo"
	.section	.text.fdt_button_module_init,"ax",@progbits
	.align	1
	.globl	fdt_button_module_init
	.type	fdt_button_module_init, @function
fdt_button_module_init:
.LFB46:
	.loc 2 286 1 is_stmt 1
	.cfi_startproc
.LVL64:
	.loc 2 288 5
	.loc 2 289 5
	.loc 2 290 5
	.loc 2 291 5
	.loc 2 292 5
	.loc 2 286 1 is_stmt 0
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sw	s0,168(sp)
	sw	s1,164(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sw	ra,172(sp)
	sw	s2,160(sp)
	sw	s3,156(sp)
	sw	s4,152(sp)
	sw	s5,148(sp)
	sw	s6,144(sp)
	sw	s7,140(sp)
	sw	s8,136(sp)
	sw	s9,132(sp)
	sw	s10,128(sp)
	sw	s11,124(sp)
	.loc 2 293 10
	li	a5,1869180928
	.loc 2 286 1
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 2 293 10
	addi	a5,a5,103
	.loc 2 286 1
	mv	s1,a0
	.loc 2 293 10
	sw	a5,-156(s0)
	.loc 2 304 14
	li	a0,5
.LVL65:
	.loc 2 300 16
	addi	a5,s0,-128
	.loc 2 286 1
	sw	a1,-164(s0)
	.loc 2 292 9
	sw	zero,-160(s0)
	.loc 2 293 5 is_stmt 1
	.loc 2 293 10 is_stmt 0
	sw	zero,-152(s0)
	sh	zero,-148(s0)
	.loc 2 294 5 is_stmt 1
.LVL66:
	.loc 2 295 5
	.loc 2 296 5
	.loc 2 297 5
	.loc 2 298 5
	.loc 2 300 5
	.loc 2 300 16 is_stmt 0
	sw	a5,-136(s0)
	.loc 2 301 5 is_stmt 1
	.loc 2 302 5
.LVL67:
	.loc 2 304 5
	.loc 2 304 14 is_stmt 0
	call	pvPortMalloc
.LVL68:
	.loc 2 305 5 is_stmt 1
	.loc 2 305 8 is_stmt 0
	beq	a0,zero,.L45
	mv	s3,a0
	.loc 2 302 13
	li	s4,0
	.loc 2 310 12
	li	s5,0
	.loc 2 325 31
	lui	s9,%hi(.LC4)
	.loc 2 336 31
	lui	s10,%hi(.LC6)
	.loc 2 399 21
	lui	s7,%hi(.LC15)
.LVL69:
.L46:
	.loc 2 311 9 is_stmt 1
	li	a2,10
	li	a1,0
	addi	a0,s0,-156
	call	memset
.LVL70:
	.loc 2 312 9
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	mv	a2,s5
	addi	a0,s0,-156
	call	sprintf
.LVL71:
	.loc 2 313 9
	.loc 2 313 19 is_stmt 0
	lw	a1,-164(s0)
	addi	a2,s0,-156
	mv	a0,s1
	call	fdt_subnode_offset
.LVL72:
	mv	s2,a0
.LVL73:
	.loc 2 314 9 is_stmt 1
	.loc 2 314 12 is_stmt 0
	blt	a0,zero,.L48
	.loc 2 319 9 is_stmt 1
	.loc 2 319 22 is_stmt 0
	lui	a5,%hi(.LC3)
	addi	a2,a5,%lo(.LC3)
	mv	a1,a0
	mv	a0,s1
.LVL74:
	call	fdt_stringlist_count
.LVL75:
	.loc 2 320 12
	li	a5,1
	.loc 2 319 22
	mv	s11,a0
.LVL76:
	.loc 2 320 9 is_stmt 1
	.loc 2 320 12 is_stmt 0
	bne	a0,a5,.L48
	.loc 2 324 9 is_stmt 1
	.loc 2 324 18 is_stmt 0
	lui	a5,%hi(.LC3)
	addi	a4,s0,-160
	addi	a2,a5,%lo(.LC3)
	mv	a1,s2
	li	a3,0
	mv	a0,s1
.LVL77:
	call	fdt_stringlist_get
.LVL78:
	.loc 2 325 12
	lw	a4,-160(s0)
	li	a5,4
	.loc 2 324 18
	mv	a1,a0
.LVL79:
	.loc 2 325 9 is_stmt 1
	.loc 2 325 12 is_stmt 0
	bne	a4,a5,.L48
	.loc 2 325 31 discriminator 1
	li	a2,4
	addi	a0,s9,%lo(.LC4)
.LVL80:
	call	memcmp
.LVL81:
	.loc 2 325 27 discriminator 1
	bne	a0,zero,.L48
	.loc 2 330 9 is_stmt 1
	.loc 2 330 22 is_stmt 0
	lui	s8,%hi(.LC5)
	addi	a2,s8,%lo(.LC5)
	mv	a1,s2
	mv	a0,s1
	call	fdt_stringlist_count
.LVL82:
	mv	s6,a0
.LVL83:
	.loc 2 331 9 is_stmt 1
	.loc 2 331 12 is_stmt 0
	bne	a0,s11,.L48
	.loc 2 335 9 is_stmt 1
	.loc 2 335 18 is_stmt 0
	addi	a4,s0,-160
	mv	a1,s2
	li	a3,0
	addi	a2,s8,%lo(.LC5)
	mv	a0,s1
.LVL84:
	call	fdt_stringlist_get
.LVL85:
	.loc 2 336 12
	lw	a4,-160(s0)
	li	a5,6
	.loc 2 335 18
	mv	a1,a0
.LVL86:
	.loc 2 336 9 is_stmt 1
	.loc 2 336 12 is_stmt 0
	bne	a4,a5,.L48
	.loc 2 336 31 discriminator 1
	li	a2,6
	addi	a0,s10,%lo(.LC6)
.LVL87:
	call	memcmp
.LVL88:
	.loc 2 336 27 discriminator 1
	bne	a0,zero,.L48
	.loc 2 341 9 is_stmt 1
	.loc 2 341 22 is_stmt 0
	lui	s11,%hi(.LC7)
	addi	a2,s11,%lo(.LC7)
	mv	a1,s2
	mv	a0,s1
	call	fdt_stringlist_count
.LVL89:
	.loc 2 342 9 is_stmt 1
	.loc 2 342 12 is_stmt 0
	bne	a0,s6,.L48
	.loc 2 346 9 is_stmt 1
	.loc 2 346 18 is_stmt 0
	addi	a4,s0,-160
	mv	a1,s2
	li	a3,0
	addi	a2,s11,%lo(.LC7)
	mv	a0,s1
.LVL90:
	call	fdt_stringlist_get
.LVL91:
	.loc 2 347 12
	lw	a4,-160(s0)
	li	a5,10
	.loc 2 346 18
	mv	a1,a0
.LVL92:
	.loc 2 347 9 is_stmt 1
	.loc 2 347 12 is_stmt 0
	bne	a4,a5,.L48
	.loc 2 347 32 discriminator 1
	lui	a0,%hi(.LC8)
.LVL93:
	li	a2,10
	addi	a0,a0,%lo(.LC8)
	call	memcmp
.LVL94:
	.loc 2 347 28 discriminator 1
	bne	a0,zero,.L48
	.loc 2 352 9 is_stmt 1
	.loc 2 352 21 is_stmt 0
	lui	a2,%hi(.LC9)
	addi	a3,s0,-160
	addi	a2,a2,%lo(.LC9)
	mv	a1,s2
	mv	a0,s1
	call	fdt_getprop
.LVL95:
	.loc 2 353 9 is_stmt 1
	.loc 2 353 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 357 9 is_stmt 1
	.loc 2 357 37 is_stmt 0
	lw	a0,0(a0)
.LVL96:
	call	fdt32_to_cpu
.LVL97:
	.loc 2 360 18
	lui	a2,%hi(.LC10)
	.loc 2 357 24
	sb	a0,-132(s0)
	.loc 2 358 9 is_stmt 1
	.loc 2 360 9
	.loc 2 360 18 is_stmt 0
	addi	a4,s0,-160
	mv	a1,s2
	li	a3,0
	addi	a2,a2,%lo(.LC10)
	mv	a0,s1
	call	fdt_stringlist_get
.LVL98:
	.loc 2 361 12
	lw	a4,-160(s0)
	li	a5,4
	.loc 2 360 18
	mv	a1,a0
.LVL99:
	.loc 2 361 9 is_stmt 1
	.loc 2 361 12 is_stmt 0
	bne	a4,a5,.L49
	.loc 2 361 31 discriminator 1
	li	a2,4
	addi	a0,s9,%lo(.LC4)
.LVL100:
	call	memcmp
.LVL101:
	.loc 2 361 27 discriminator 1
	bne	a0,zero,.L49
	.loc 2 362 13 is_stmt 1
	.loc 2 363 13
	.loc 2 363 43 is_stmt 0
	lbu	a4,-132(s0)
	.loc 2 363 31
	addi	a5,s4,1
.LVL102:
	.loc 2 363 35
	add	s4,s3,s4
	sb	a4,0(s4)
	.loc 2 363 31
	andi	s4,a5,0xff
.LVL103:
.L49:
	.loc 2 366 9 is_stmt 1
	.loc 2 366 19 is_stmt 0
	mv	a1,s2
	addi	a2,s10,%lo(.LC6)
	mv	a0,s1
	call	fdt_subnode_offset
.LVL104:
	mv	s2,a0
.LVL105:
	.loc 2 367 9 is_stmt 1
	.loc 2 367 12 is_stmt 0
	ble	a0,zero,.L48
	.loc 2 371 9 is_stmt 1
	.loc 2 371 21 is_stmt 0
	lui	a2,%hi(.LC11)
	mv	a1,a0
	addi	a3,s0,-160
	addi	a2,a2,%lo(.LC11)
	mv	a0,s1
.LVL106:
	call	fdt_getprop
.LVL107:
	.loc 2 372 9 is_stmt 1
	.loc 2 372 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 376 9 is_stmt 1
	.loc 2 377 9
	.loc 2 377 62 is_stmt 0
	lw	a0,0(a0)
.LVL108:
	call	fdt32_to_cpu
.LVL109:
	.loc 2 377 49
	lw	a5,-136(s0)
	.loc 2 380 19
	lui	a2,%hi(.LC12)
	addi	a2,a2,%lo(.LC12)
	.loc 2 377 49
	sw	a0,52(a5)
	.loc 2 380 9 is_stmt 1
	.loc 2 380 19 is_stmt 0
	mv	a1,s2
	mv	a0,s1
	call	fdt_subnode_offset
.LVL110:
	mv	s8,a0
.LVL111:
	.loc 2 381 9 is_stmt 1
	.loc 2 381 12 is_stmt 0
	ble	a0,zero,.L48
	.loc 2 385 9 is_stmt 1
	.loc 2 385 21 is_stmt 0
	lui	s6,%hi(.LC13)
	mv	a1,a0
	addi	a3,s0,-160
	addi	a2,s6,%lo(.LC13)
	mv	a0,s1
.LVL112:
	call	fdt_getprop
.LVL113:
	.loc 2 386 9 is_stmt 1
	.loc 2 386 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 390 9 is_stmt 1
	.loc 2 390 74 is_stmt 0
	lw	a0,0(a0)
.LVL114:
	.loc 2 392 21
	lui	s11,%hi(.LC14)
	.loc 2 390 74
	call	fdt32_to_cpu
.LVL115:
	.loc 2 390 61
	lw	a5,-136(s0)
	.loc 2 392 21
	addi	a3,s0,-160
	addi	a2,s11,%lo(.LC14)
	.loc 2 390 61
	sw	a0,16(a5)
	.loc 2 392 9 is_stmt 1
	.loc 2 392 21 is_stmt 0
	mv	a1,s8
	mv	a0,s1
	call	fdt_getprop
.LVL116:
	.loc 2 393 9 is_stmt 1
	.loc 2 393 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 397 9 is_stmt 1
	.loc 2 397 72 is_stmt 0
	lw	a0,0(a0)
.LVL117:
	call	fdt32_to_cpu
.LVL118:
	.loc 2 397 59
	lw	a5,-136(s0)
	.loc 2 399 21
	addi	a3,s0,-160
	addi	a2,s7,%lo(.LC15)
	.loc 2 397 59
	sw	a0,20(a5)
	.loc 2 399 9 is_stmt 1
	.loc 2 399 21 is_stmt 0
	mv	a1,s8
	mv	a0,s1
	call	fdt_getprop
.LVL119:
	.loc 2 400 9 is_stmt 1
	.loc 2 400 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 404 9 is_stmt 1
	.loc 2 404 66 is_stmt 0
	lw	a0,0(a0)
.LVL120:
	call	fdt32_to_cpu
.LVL121:
	.loc 2 404 53
	lw	a5,-136(s0)
	.loc 2 407 19
	lui	a2,%hi(.LC16)
	addi	a2,a2,%lo(.LC16)
	.loc 2 404 53
	sw	a0,24(a5)
	.loc 2 407 9 is_stmt 1
	.loc 2 407 19 is_stmt 0
	mv	a1,s2
	mv	a0,s1
	call	fdt_subnode_offset
.LVL122:
	mv	s8,a0
.LVL123:
	.loc 2 408 9 is_stmt 1
	.loc 2 409 13
	.loc 2 411 9
	.loc 2 411 21 is_stmt 0
	mv	a1,a0
	addi	a3,s0,-160
	addi	a2,s6,%lo(.LC13)
	mv	a0,s1
.LVL124:
	call	fdt_getprop
.LVL125:
	.loc 2 412 9 is_stmt 1
	.loc 2 412 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 416 9 is_stmt 1
	.loc 2 416 73 is_stmt 0
	lw	a0,0(a0)
.LVL126:
	call	fdt32_to_cpu
.LVL127:
	.loc 2 416 60
	lw	a5,-136(s0)
	.loc 2 418 21
	addi	a3,s0,-160
	addi	a2,s11,%lo(.LC14)
	.loc 2 416 60
	sw	a0,28(a5)
	.loc 2 418 9 is_stmt 1
	.loc 2 418 21 is_stmt 0
	mv	a1,s8
	mv	a0,s1
	call	fdt_getprop
.LVL128:
	.loc 2 419 9 is_stmt 1
	.loc 2 419 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 423 9 is_stmt 1
	.loc 2 423 71 is_stmt 0
	lw	a0,0(a0)
.LVL129:
	call	fdt32_to_cpu
.LVL130:
	.loc 2 423 58
	lw	a5,-136(s0)
	.loc 2 425 21
	addi	a3,s0,-160
	addi	a2,s7,%lo(.LC15)
	.loc 2 423 58
	sw	a0,32(a5)
	.loc 2 425 9 is_stmt 1
	.loc 2 425 21 is_stmt 0
	mv	a1,s8
	mv	a0,s1
	call	fdt_getprop
.LVL131:
	.loc 2 426 9 is_stmt 1
	.loc 2 426 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 430 9 is_stmt 1
	.loc 2 430 65 is_stmt 0
	lw	a0,0(a0)
.LVL132:
	call	fdt32_to_cpu
.LVL133:
	.loc 2 430 52
	lw	a5,-136(s0)
	.loc 2 433 19
	lui	a2,%hi(.LC17)
	addi	a2,a2,%lo(.LC17)
	.loc 2 430 52
	sw	a0,36(a5)
	.loc 2 433 9 is_stmt 1
	.loc 2 433 19 is_stmt 0
	mv	a1,s2
	mv	a0,s1
	call	fdt_subnode_offset
.LVL134:
	mv	s11,a0
.LVL135:
	.loc 2 434 9 is_stmt 1
	.loc 2 435 13
	.loc 2 437 9
	.loc 2 437 21 is_stmt 0
	mv	a1,a0
	addi	a3,s0,-160
	addi	a2,s6,%lo(.LC13)
	mv	a0,s1
.LVL136:
	call	fdt_getprop
.LVL137:
	.loc 2 438 9 is_stmt 1
	.loc 2 438 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 442 9 is_stmt 1
	.loc 2 442 71 is_stmt 0
	lw	a0,0(a0)
.LVL138:
	call	fdt32_to_cpu
.LVL139:
	.loc 2 442 58
	lw	a5,-136(s0)
	.loc 2 444 21
	addi	a3,s0,-160
	addi	a2,s7,%lo(.LC15)
	.loc 2 442 58
	sw	a0,40(a5)
	.loc 2 444 9 is_stmt 1
	.loc 2 444 21 is_stmt 0
	mv	a1,s11
	mv	a0,s1
	call	fdt_getprop
.LVL140:
	.loc 2 445 9 is_stmt 1
	.loc 2 445 12 is_stmt 0
	beq	a0,zero,.L48
	.loc 2 449 9 is_stmt 1
	.loc 2 449 69 is_stmt 0
	lw	a0,0(a0)
.LVL141:
	.loc 2 451 22
	lui	s11,%hi(.LC18)
.LVL142:
	.loc 2 449 69
	call	fdt32_to_cpu
.LVL143:
	.loc 2 449 56
	lw	a5,-136(s0)
	.loc 2 451 22
	addi	a2,s11,%lo(.LC18)
	mv	a1,s2
	.loc 2 449 56
	sw	a0,44(a5)
	.loc 2 451 9 is_stmt 1
	.loc 2 451 22 is_stmt 0
	mv	a0,s1
	call	fdt_stringlist_count
.LVL144:
	.loc 2 452 12
	li	a5,1
	.loc 2 451 22
	mv	s6,a0
.LVL145:
	.loc 2 452 9 is_stmt 1
	.loc 2 452 12 is_stmt 0
	bne	a0,a5,.L48
	.loc 2 456 9 is_stmt 1
	.loc 2 456 18 is_stmt 0
	addi	a4,s0,-160
	mv	a1,s2
	li	a3,0
	addi	a2,s11,%lo(.LC18)
	mv	a0,s1
.LVL146:
	call	fdt_stringlist_get
.LVL147:
	.loc 2 457 12
	lw	a4,-160(s0)
	li	a5,2
	.loc 2 456 18
	mv	a1,a0
.LVL148:
	.loc 2 457 9 is_stmt 1
	.loc 2 457 12 is_stmt 0
	bne	a4,a5,.L48
	.loc 2 461 9 is_stmt 1
	.loc 2 461 13 is_stmt 0
	sw	a0,-168(s0)
	lui	a0,%hi(.LC19)
.LVL149:
	li	a2,2
	addi	a0,a0,%lo(.LC19)
	call	memcmp
.LVL150:
	.loc 2 461 12
	lw	a1,-168(s0)
	bne	a0,zero,.L50
	.loc 2 462 13 is_stmt 1
	.loc 2 462 55 is_stmt 0
	lw	a5,-136(s0)
	sw	s6,56(a5)
.L51:
	.loc 2 468 9 is_stmt 1
	.loc 2 470 9
	addi	a0,s0,-144
	call	hal_button_register_handler_with_dts.isra.0
.LVL151:
.L48:
	.loc 2 310 24 discriminator 2
	.loc 2 310 25 is_stmt 0 discriminator 2
	addi	s5,s5,1
.LVL152:
	.loc 2 310 17 is_stmt 1 discriminator 2
	.loc 2 310 5 is_stmt 0 discriminator 2
	li	a5,5
	bne	s5,a5,.L46
	.loc 2 473 5 is_stmt 1
	.loc 2 474 5
	mv	a1,s4
	mv	a0,s3
	call	hal_hbn_init
.LVL153:
	.loc 2 475 5
	mv	a0,s3
	call	vPortFree
.LVL154:
.L45:
	.loc 2 476 1 is_stmt 0
	lw	ra,172(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
.LVL155:
	lw	s1,164(sp)
	.cfi_restore 9
.LVL156:
	lw	s2,160(sp)
	.cfi_restore 18
	lw	s3,156(sp)
	.cfi_restore 19
	lw	s4,152(sp)
	.cfi_restore 20
	lw	s5,148(sp)
	.cfi_restore 21
	lw	s6,144(sp)
	.cfi_restore 22
	lw	s7,140(sp)
	.cfi_restore 23
	lw	s8,136(sp)
	.cfi_restore 24
	lw	s9,132(sp)
	.cfi_restore 25
	lw	s10,128(sp)
	.cfi_restore 26
	lw	s11,124(sp)
	.cfi_restore 27
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
.LVL157:
.L50:
	.cfi_restore_state
	.loc 2 463 16 is_stmt 1
	.loc 2 463 20 is_stmt 0
	lui	a0,%hi(.LC20)
	li	a2,2
	addi	a0,a0,%lo(.LC20)
	call	memcmp
.LVL158:
	.loc 2 463 19
	bne	a0,zero,.L48
	.loc 2 464 13 is_stmt 1
	.loc 2 464 55 is_stmt 0
	lw	a5,-136(s0)
	sw	zero,56(a5)
	j	.L51
	.cfi_endproc
.LFE46:
	.size	fdt_button_module_init, .-fdt_button_module_init
	.section	.text.hal_button_module_init,"ax",@progbits
	.align	1
	.globl	hal_button_module_init
	.type	hal_button_module_init, @function
hal_button_module_init:
.LFB47:
	.loc 2 479 1 is_stmt 1
	.cfi_startproc
.LVL159:
	.loc 2 480 5
	.loc 2 481 5
	.loc 2 483 5
	.loc 2 479 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	ra,92(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 2 483 16
	addi	a5,s0,-80
	sw	a5,-88(s0)
	.loc 2 485 5 is_stmt 1
	.loc 2 487 47 is_stmt 0
	li	a5,10
	sw	a5,-28(s0)
	.loc 2 489 59
	li	a5,100
	sw	a5,-64(s0)
	.loc 2 493 51
	li	a5,2
	sw	a5,-56(s0)
	.loc 2 495 58
	li	a5,1000
	sw	a5,-52(s0)
	.loc 2 499 50
	li	a5,3
	sw	a5,-44(s0)
	.loc 2 503 54
	li	a5,4
	.loc 2 485 20
	sb	a0,-84(s0)
	.loc 2 487 5 is_stmt 1
	.loc 2 489 5
	.loc 2 491 5
	.loc 2 503 54 is_stmt 0
	sw	a5,-36(s0)
	.loc 2 507 5
	addi	a0,s0,-96
.LVL160:
	.loc 2 505 49
	li	a5,1
	.loc 2 491 57
	sw	a1,-60(s0)
	.loc 2 493 5 is_stmt 1
	.loc 2 495 5
	.loc 2 497 5
	.loc 2 497 56 is_stmt 0
	sw	a2,-48(s0)
	.loc 2 499 5 is_stmt 1
	.loc 2 501 5
	.loc 2 501 56 is_stmt 0
	sw	a3,-40(s0)
	.loc 2 503 5 is_stmt 1
	.loc 2 505 5
	.loc 2 505 49 is_stmt 0
	sw	a5,-24(s0)
	.loc 2 507 5 is_stmt 1
	call	hal_button_register_handler_with_dts.isra.0
.LVL161:
	.loc 2 508 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE47:
	.size	hal_button_module_init, .-hal_button_module_init
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.string	"buttontimer-"
	.zero	7
	.text
.Letext0:
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 8 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_gpio.h"
	.file 9 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 11 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
	.file 13 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_hbn.h"
	.file 14 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 15 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfad
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x59
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x6
	.4byte	0xbb
	.byte	0x7
	.byte	0x4
	.4byte	0xd2
	.byte	0x8
	.byte	0x3
	.4byte	.LASF16
	.byte	0x1
	.byte	0x46
	.byte	0x12
	.4byte	0xbb
	.byte	0x7
	.byte	0x4
	.4byte	0xe5
	.byte	0x9
	.4byte	0xf0
	.byte	0xa
	.4byte	0x8f
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0xaf
	.byte	0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xbb
	.byte	0x7
	.byte	0x4
	.4byte	0xa3
	.byte	0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x4d
	.byte	0x22
	.4byte	0x11a
	.byte	0x7
	.byte	0x4
	.4byte	0x120
	.byte	0xb
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF32
	.byte	0x10
	.byte	0x7
	.byte	0x5
	.byte	0x10
	.4byte	0x181
	.byte	0xd
	.4byte	.LASF20
	.byte	0x7
	.byte	0x6
	.byte	0x1c
	.4byte	0x181
	.byte	0
	.byte	0xd
	.4byte	.LASF21
	.byte	0x7
	.byte	0x7
	.byte	0xc
	.4byte	0xdf
	.byte	0x4
	.byte	0xe
	.string	"arg"
	.byte	0x7
	.byte	0x8
	.byte	0xb
	.4byte	0x8f
	.byte	0x8
	.byte	0xd
	.4byte	.LASF22
	.byte	0x7
	.byte	0xa
	.byte	0xd
	.4byte	0xa3
	.byte	0xc
	.byte	0xd
	.4byte	.LASF23
	.byte	0x7
	.byte	0xb
	.byte	0xd
	.4byte	0xa3
	.byte	0xd
	.byte	0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0xa3
	.byte	0xe
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x125
	.byte	0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0xd
	.byte	0x3
	.4byte	0x125
	.byte	0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x8
	.byte	0x4
	.byte	0xe
	.4byte	0x1ba
	.byte	0x10
	.4byte	.LASF26
	.byte	0
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x10
	.4byte	.LASF28
	.byte	0x2
	.byte	0x10
	.4byte	.LASF29
	.byte	0x3
	.byte	0
	.byte	0xf
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x8
	.byte	0xb
	.byte	0xe
	.4byte	0x1d5
	.byte	0x10
	.4byte	.LASF30
	.byte	0
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.byte	0xc
	.4byte	.LASF33
	.byte	0x40
	.byte	0x2
	.byte	0x1c
	.byte	0x10
	.4byte	0x2b3
	.byte	0xd
	.4byte	.LASF34
	.byte	0x2
	.byte	0x1d
	.byte	0xb
	.4byte	0x8f
	.byte	0
	.byte	0xd
	.4byte	.LASF35
	.byte	0x2
	.byte	0x1e
	.byte	0x13
	.4byte	0x10e
	.byte	0x4
	.byte	0xd
	.4byte	.LASF36
	.byte	0x2
	.byte	0x20
	.byte	0x9
	.4byte	0x81
	.byte	0x8
	.byte	0xd
	.4byte	.LASF37
	.byte	0x2
	.byte	0x21
	.byte	0x9
	.4byte	0x81
	.byte	0xc
	.byte	0xd
	.4byte	.LASF38
	.byte	0x2
	.byte	0x23
	.byte	0x9
	.4byte	0x81
	.byte	0x10
	.byte	0xd
	.4byte	.LASF39
	.byte	0x2
	.byte	0x24
	.byte	0x9
	.4byte	0x81
	.byte	0x14
	.byte	0xd
	.4byte	.LASF40
	.byte	0x2
	.byte	0x25
	.byte	0x9
	.4byte	0x81
	.byte	0x18
	.byte	0xd
	.4byte	.LASF41
	.byte	0x2
	.byte	0x27
	.byte	0x9
	.4byte	0x81
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF42
	.byte	0x2
	.byte	0x28
	.byte	0x9
	.4byte	0x81
	.byte	0x20
	.byte	0xd
	.4byte	.LASF43
	.byte	0x2
	.byte	0x29
	.byte	0x9
	.4byte	0x81
	.byte	0x24
	.byte	0xd
	.4byte	.LASF44
	.byte	0x2
	.byte	0x2b
	.byte	0x9
	.4byte	0x81
	.byte	0x28
	.byte	0xd
	.4byte	.LASF45
	.byte	0x2
	.byte	0x2c
	.byte	0x9
	.4byte	0x81
	.byte	0x2c
	.byte	0xd
	.4byte	.LASF46
	.byte	0x2
	.byte	0x2d
	.byte	0x9
	.4byte	0x81
	.byte	0x30
	.byte	0xd
	.4byte	.LASF47
	.byte	0x2
	.byte	0x2f
	.byte	0x9
	.4byte	0x81
	.byte	0x34
	.byte	0xd
	.4byte	.LASF48
	.byte	0x2
	.byte	0x30
	.byte	0x9
	.4byte	0x81
	.byte	0x38
	.byte	0xd
	.4byte	.LASF22
	.byte	0x2
	.byte	0x31
	.byte	0x9
	.4byte	0x81
	.byte	0x3c
	.byte	0
	.byte	0x3
	.4byte	.LASF49
	.byte	0x2
	.byte	0x32
	.byte	0x3
	.4byte	0x1d5
	.byte	0x11
	.4byte	.LASF52
	.byte	0x2
	.2byte	0x1de
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0x34e
	.byte	0x12
	.string	"pin"
	.byte	0x2
	.2byte	0x1de
	.byte	0x21
	.4byte	0x81
	.4byte	.LLST26
	.byte	0x13
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x1de
	.byte	0x2a
	.4byte	0x81
	.4byte	.LLST27
	.byte	0x13
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x1de
	.byte	0x42
	.4byte	0x81
	.4byte	.LLST28
	.byte	0x13
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x1de
	.byte	0x59
	.4byte	0x81
	.4byte	.LLST29
	.byte	0x14
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x1e0
	.byte	0x10
	.4byte	0x187
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x14
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x1e1
	.byte	0x12
	.4byte	0x2b3
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x15
	.4byte	.LVL161
	.4byte	0xd5d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xa0,0x7f
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x11d
	.byte	0x6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x9cc
	.byte	0x12
	.string	"fdt"
	.byte	0x2
	.2byte	0x11d
	.byte	0x29
	.4byte	0xcc
	.4byte	.LLST15
	.byte	0x13
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x11d
	.byte	0x32
	.4byte	0x81
	.4byte	.LLST16
	.byte	0x17
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x120
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST17
	.byte	0x17
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x121
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST18
	.byte	0x17
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x122
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST19
	.byte	0x18
	.string	"i"
	.byte	0x2
	.2byte	0x123
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST20
	.byte	0x14
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x124
	.byte	0x9
	.4byte	0x81
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x14
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x125
	.byte	0xa
	.4byte	0x9cc
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x17
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x126
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST21
	.byte	0x17
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x127
	.byte	0x11
	.4byte	0x9d
	.4byte	.LLST22
	.byte	0x17
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x128
	.byte	0x15
	.4byte	0x9dc
	.4byte	.LLST23
	.byte	0x14
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x129
	.byte	0x10
	.4byte	0x187
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x14
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x12a
	.byte	0x12
	.4byte	0x2b3
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x17
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x12d
	.byte	0xe
	.4byte	0x108
	.4byte	.LLST24
	.byte	0x17
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x12e
	.byte	0xd
	.4byte	0xa3
	.4byte	.LLST25
	.byte	0x19
	.4byte	.LVL68
	.4byte	0xe96
	.4byte	0x475
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x19
	.4byte	.LVL70
	.4byte	0xea2
	.4byte	0x494
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x19
	.4byte	.LVL71
	.4byte	0xeae
	.4byte	0x4b8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL72
	.4byte	0xeba
	.4byte	0x4db
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0xdc,0x7e
	.byte	0x6
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL75
	.4byte	0xec7
	.4byte	0x4fe
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x19
	.4byte	.LVL78
	.4byte	0xed4
	.4byte	0x52d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL81
	.4byte	0xee1
	.4byte	0x549
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x19
	.4byte	.LVL82
	.4byte	0xec7
	.4byte	0x56c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x19
	.4byte	.LVL85
	.4byte	0xed4
	.4byte	0x59b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL88
	.4byte	0xee1
	.4byte	0x5b7
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x19
	.4byte	.LVL89
	.4byte	0xec7
	.4byte	0x5da
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x19
	.4byte	.LVL91
	.4byte	0xed4
	.4byte	0x609
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL94
	.4byte	0xee1
	.4byte	0x625
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x19
	.4byte	.LVL95
	.4byte	0xeed
	.4byte	0x64f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL97
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL98
	.4byte	0xed4
	.4byte	0x687
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL101
	.4byte	0xee1
	.4byte	0x6a3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x19
	.4byte	.LVL104
	.4byte	0xeba
	.4byte	0x6c6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x19
	.4byte	.LVL107
	.4byte	0xeed
	.4byte	0x6f0
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL109
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL110
	.4byte	0xeba
	.4byte	0x71c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x19
	.4byte	.LVL113
	.4byte	0xeed
	.4byte	0x746
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL115
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL116
	.4byte	0xeed
	.4byte	0x779
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL118
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL119
	.4byte	0xeed
	.4byte	0x7ac
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL121
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL122
	.4byte	0xeba
	.4byte	0x7d8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x19
	.4byte	.LVL125
	.4byte	0xeed
	.4byte	0x802
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL127
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL128
	.4byte	0xeed
	.4byte	0x835
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL130
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL131
	.4byte	0xeed
	.4byte	0x868
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL133
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL134
	.4byte	0xeba
	.4byte	0x894
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x19
	.4byte	.LVL137
	.4byte	0xeed
	.4byte	0x8be
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL139
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL140
	.4byte	0xeed
	.4byte	0x8f1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL143
	.4byte	0xd34
	.byte	0x19
	.4byte	.LVL144
	.4byte	0xec7
	.4byte	0x91d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x19
	.4byte	.LVL147
	.4byte	0xed4
	.4byte	0x94c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL150
	.4byte	0xee1
	.4byte	0x970
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0xd8,0x7e
	.byte	0x6
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x19
	.4byte	.LVL151
	.4byte	0xd5d
	.4byte	0x985
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf0,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL153
	.4byte	0xefa
	.4byte	0x99f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL154
	.4byte	0xf06
	.4byte	0x9b3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL158
	.4byte	0xee1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x91
	.4byte	0x9dc
	.byte	0x1c
	.4byte	0x88
	.byte	0x9
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xc7
	.byte	0x1d
	.4byte	.LASF75
	.byte	0x2
	.byte	0xf1
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0xa24
	.byte	0x1e
	.4byte	.LASF74
	.byte	0x2
	.byte	0xf1
	.byte	0x3d
	.4byte	0xa24
	.byte	0x1f
	.4byte	.LASF65
	.byte	0x2
	.byte	0xf3
	.byte	0x13
	.4byte	0xa2a
	.byte	0x1f
	.4byte	.LASF66
	.byte	0x2
	.byte	0xf4
	.byte	0xa
	.4byte	0xa30
	.byte	0x1f
	.4byte	.LASF67
	.byte	0x2
	.byte	0xf5
	.byte	0xd
	.4byte	0xa3
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x187
	.byte	0x7
	.byte	0x4
	.4byte	0x2b3
	.byte	0x1b
	.4byte	0x91
	.4byte	0xa40
	.byte	0x1c
	.4byte	0x88
	.byte	0x13
	.byte	0
	.byte	0x20
	.4byte	.LASF69
	.byte	0x2
	.byte	0xe3
	.byte	0xd
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0xabc
	.byte	0x21
	.4byte	.LASF65
	.byte	0x2
	.byte	0xe3
	.byte	0x29
	.4byte	0xa24
	.4byte	.LLST2
	.byte	0x22
	.string	"ret"
	.byte	0x2
	.byte	0xe5
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST3
	.byte	0x23
	.4byte	.LASF68
	.byte	0x2
	.byte	0xe6
	.byte	0x10
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1a
	.4byte	.LVL6
	.4byte	0xf12
	.byte	0x19
	.4byte	.LVL7
	.4byte	0xf1f
	.4byte	0xab2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL8
	.4byte	0xf2c
	.byte	0
	.byte	0x20
	.4byte	.LASF70
	.byte	0x2
	.byte	0x60
	.byte	0xd
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xc67
	.byte	0x21
	.4byte	.LASF71
	.byte	0x2
	.byte	0x60
	.byte	0x2a
	.4byte	0x10e
	.4byte	.LLST9
	.byte	0x22
	.string	"ret"
	.byte	0x2
	.byte	0x62
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST10
	.byte	0x24
	.4byte	.LASF72
	.byte	0x2
	.byte	0x63
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST11
	.byte	0x24
	.4byte	.LASF65
	.byte	0x2
	.byte	0x64
	.byte	0x13
	.4byte	0xa2a
	.4byte	.LLST12
	.byte	0x25
	.4byte	0xd0a
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0xcd
	.byte	0x19
	.4byte	0xb37
	.byte	0x26
	.4byte	0xd1b
	.byte	0x27
	.4byte	.Ldebug_ranges0+0
	.byte	0x28
	.4byte	0xd27
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0xd0a
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0x82
	.byte	0x19
	.4byte	0xb60
	.byte	0x29
	.4byte	0xd1b
	.4byte	.LLST13
	.byte	0x27
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x28
	.4byte	0xd27
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	0xd0a
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x2
	.byte	0xa8
	.byte	0x19
	.4byte	0xb89
	.byte	0x29
	.4byte	0xd1b
	.4byte	.LLST14
	.byte	0x27
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x28
	.4byte	0xd27
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL32
	.4byte	0xf39
	.4byte	0xb9e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x19
	.4byte	.LVL40
	.4byte	0xf46
	.4byte	0xbb8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x201
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL41
	.4byte	0xcc6
	.byte	0x19
	.4byte	.LVL43
	.4byte	0xc67
	.4byte	0xbd5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL45
	.4byte	0xe62
	.byte	0x19
	.4byte	.LVL47
	.4byte	0xf1f
	.4byte	0xc01
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x19
	.4byte	.LVL48
	.4byte	0xe62
	.4byte	0xc17
	.byte	0x2b
	.4byte	0xcb9
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL50
	.4byte	0xc67
	.byte	0x19
	.4byte	.LVL53
	.4byte	0xcc6
	.4byte	0xc34
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL55
	.4byte	0xf46
	.4byte	0xc49
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x201
	.byte	0
	.byte	0x19
	.4byte	.LVL60
	.4byte	0xcc6
	.4byte	0xc5d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL63
	.4byte	0xcc6
	.byte	0
	.byte	0x20
	.4byte	.LASF73
	.byte	0x2
	.byte	0x53
	.byte	0xd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xcac
	.byte	0x21
	.4byte	.LASF65
	.byte	0x2
	.byte	0x53
	.byte	0x2f
	.4byte	0xa2a
	.4byte	.LLST1
	.byte	0x2c
	.4byte	.LVL4
	.4byte	0xf1f
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF107
	.byte	0x2
	.byte	0x4e
	.byte	0xd
	.byte	0x1
	.4byte	0xcc6
	.byte	0x1e
	.4byte	.LASF65
	.byte	0x2
	.byte	0x4e
	.byte	0x2c
	.4byte	0xa2a
	.byte	0
	.byte	0x2e
	.4byte	.LASF77
	.byte	0x2
	.byte	0x42
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0xd0a
	.byte	0x21
	.4byte	.LASF65
	.byte	0x2
	.byte	0x42
	.byte	0x2d
	.4byte	0xa2a
	.4byte	.LLST4
	.byte	0x22
	.string	"val"
	.byte	0x2
	.byte	0x44
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST5
	.byte	0x1a
	.4byte	.LVL11
	.4byte	0xf52
	.byte	0
	.byte	0x1d
	.4byte	.LASF76
	.byte	0x2
	.byte	0x34
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0xd34
	.byte	0x1e
	.4byte	.LASF65
	.byte	0x2
	.byte	0x34
	.byte	0x2a
	.4byte	0xa2a
	.byte	0x1f
	.4byte	.LASF72
	.byte	0x2
	.byte	0x36
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0x2e
	.4byte	.LASF78
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0xbb
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xd5d
	.byte	0x2f
	.string	"x"
	.byte	0x1
	.byte	0x5b
	.byte	0x2d
	.4byte	0xd3
	.4byte	.LLST0
	.byte	0
	.byte	0x30
	.4byte	0x9e2
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0xe62
	.byte	0x29
	.4byte	0x9f3
	.4byte	.LLST6
	.byte	0x31
	.4byte	0x9ff
	.4byte	.LLST7
	.byte	0x32
	.4byte	0xa0b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x31
	.4byte	0xa17
	.4byte	.LLST8
	.byte	0x19
	.4byte	.LVL16
	.4byte	0xf5e
	.4byte	0xdb5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0x19
	.4byte	.LVL17
	.4byte	0xf69
	.4byte	0xdd3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x69
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x19
	.4byte	.LVL18
	.4byte	0xe96
	.4byte	0xde7
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x19
	.4byte	.LVL20
	.4byte	0xf74
	.4byte	0xdfb
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LVL21
	.4byte	0xeae
	.4byte	0xe12
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x19
	.4byte	.LVL22
	.4byte	0xf80
	.4byte	0xe3a
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	button_process
	.byte	0
	.byte	0x1a
	.4byte	.LVL25
	.4byte	0xf8c
	.byte	0x15
	.4byte	.LVL26
	.4byte	0xf98
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	button_callback
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	0xcac
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0xe96
	.byte	0x33
	.4byte	0xcb9
	.byte	0x6
	.byte	0xfa
	.4byte	0xcb9
	.byte	0x9f
	.byte	0x26
	.4byte	0xcb9
	.byte	0x2c
	.4byte	.LVL30
	.4byte	0xfa4
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x9
	.byte	0x91
	.byte	0x7
	.byte	0x34
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0xa
	.byte	0x21
	.byte	0x8
	.byte	0x34
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xb
	.byte	0xf4
	.byte	0x5
	.byte	0x35
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xc
	.2byte	0x1c1
	.byte	0x5
	.byte	0x35
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xc
	.2byte	0x423
	.byte	0x5
	.byte	0x35
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xc
	.2byte	0x453
	.byte	0xd
	.byte	0x34
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xa
	.byte	0x1e
	.byte	0x5
	.byte	0x35
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xc
	.2byte	0x2f4
	.byte	0xd
	.byte	0x34
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xd
	.byte	0x4
	.byte	0x5
	.byte	0x34
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x9
	.byte	0x94
	.byte	0x6
	.byte	0x35
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xe
	.2byte	0x558
	.byte	0xc
	.byte	0x35
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x502
	.byte	0xc
	.byte	0x35
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xe
	.2byte	0x912
	.byte	0x7
	.byte	0x35
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x182
	.byte	0x7
	.byte	0x34
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xf
	.byte	0x99
	.byte	0x5
	.byte	0x34
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x7
	.byte	0x13
	.byte	0x5
	.byte	0x36
	.4byte	.LASF95
	.4byte	.LASF96
	.byte	0x10
	.byte	0
	.byte	0x36
	.4byte	.LASF80
	.4byte	.LASF97
	.byte	0x10
	.byte	0
	.byte	0x34
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.byte	0x34
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x6
	.byte	0xe4
	.byte	0x10
	.byte	0x34
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x7
	.byte	0x10
	.byte	0x5
	.byte	0x34
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.byte	0x10
	.byte	0x5
	.byte	0x34
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x7
	.byte	0x15
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
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x34
	.byte	0
	.byte	0x31
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x35
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
	.byte	0x36
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
.LLST26:
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL160
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL159
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL161-1
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL159
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL161-1
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL159
	.4byte	.LVL161-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL161-1
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL64
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68-1
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x78
	.byte	0xdc,0x7e
	.4byte	.LVL155
	.4byte	.LFE46
	.2byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75-1
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107-1
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL157
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL113-1
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL125-1
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL137-1
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL69
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL157
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL157
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LVL150-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL150-1
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x78
	.byte	0xd8,0x7e
	.4byte	.LVL157
	.4byte	.LFE46
	.2byte	0x3
	.byte	0x91
	.byte	0xd8,0x7e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL157
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL103
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL157
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-1
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x44
	.byte	0x1e
	.byte	0x79
	.byte	0x34
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0xa
	.byte	0x79
	.byte	0xc
	.byte	0x6
	.byte	0x44
	.byte	0x1e
	.byte	0x79
	.byte	0x34
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0xa
	.byte	0x79
	.byte	0xc
	.byte	0x6
	.byte	0x44
	.byte	0x1e
	.byte	0x79
	.byte	0x34
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0xa
	.byte	0x79
	.byte	0xc
	.byte	0x6
	.byte	0x44
	.byte	0x1e
	.byte	0x79
	.byte	0x34
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0xa
	.byte	0x79
	.byte	0xc
	.byte	0x6
	.byte	0x44
	.byte	0x1e
	.byte	0x79
	.byte	0x34
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x6
	.byte	0x79
	.byte	0x38
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"button_process"
.LASF61:
	.string	"result"
.LASF96:
	.string	"__builtin_memcpy"
.LASF44:
	.string	"longlong_press_ms"
.LASF86:
	.string	"fdt_getprop"
.LASF54:
	.string	"button_offset"
.LASF55:
	.string	"offset1"
.LASF56:
	.string	"offset2"
.LASF19:
	.string	"TimerHandle_t"
.LASF43:
	.string	"long_kevent"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"gpioPin"
.LASF58:
	.string	"lentmp"
.LASF104:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_button.c"
.LASF31:
	.string	"GPIO_INT_CONTROL_ASYNC"
.LASF76:
	.string	"accumulate_time"
.LASF33:
	.string	"_button_ctx_desc"
.LASF66:
	.string	"timer_name"
.LASF52:
	.string	"hal_button_module_init"
.LASF63:
	.string	"pinbuf"
.LASF92:
	.string	"pvTimerGetTimerID"
.LASF95:
	.string	"memcpy"
.LASF84:
	.string	"fdt_stringlist_get"
.LASF37:
	.string	"timer_count"
.LASF26:
	.string	"GPIO_INT_TRIG_NEG_PULSE"
.LASF42:
	.string	"long_press_end_ms"
.LASF101:
	.string	"hal_gpio_register_handler"
.LASF13:
	.string	"uint8_t"
.LASF99:
	.string	"xTimerCreate"
.LASF72:
	.string	"accu_time"
.LASF60:
	.string	"countindex"
.LASF0:
	.string	"signed char"
.LASF106:
	.string	"tmrTimerControl"
.LASF34:
	.string	"private_ctx"
.LASF77:
	.string	"check_button_is_up"
.LASF69:
	.string	"button_callback"
.LASF85:
	.string	"memcmp"
.LASF9:
	.string	"long long int"
.LASF24:
	.string	"intTrgMod"
.LASF64:
	.string	"pinbuf_size"
.LASF12:
	.string	"char"
.LASF100:
	.string	"bl_gpio_enable_input"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"__uint8_t"
.LASF50:
	.string	"stgpio"
.LASF32:
	.string	"_gpio_ctx_desc"
.LASF65:
	.string	"pstnode"
.LASF29:
	.string	"GPIO_INT_TRIG_POS_LEVEL"
.LASF83:
	.string	"fdt_stringlist_count"
.LASF102:
	.string	"bl_gpio_intmask"
.LASF18:
	.string	"TickType_t"
.LASF81:
	.string	"sprintf"
.LASF91:
	.string	"vTaskSwitchContext"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"gpio_ctx_t"
.LASF47:
	.string	"debounce"
.LASF48:
	.string	"trig_level"
.LASF10:
	.string	"long long unsigned int"
.LASF68:
	.string	"xHigherPriorityTaskWoken"
.LASF15:
	.string	"uint32_t"
.LASF90:
	.string	"xTimerGenericCommand"
.LASF11:
	.string	"unsigned int"
.LASF17:
	.string	"BaseType_t"
.LASF40:
	.string	"short_kevent"
.LASF59:
	.string	"gpio_node"
.LASF16:
	.string	"fdt32_t"
.LASF35:
	.string	"psttimer_handler"
.LASF30:
	.string	"GPIO_INT_CONTROL_SYNC"
.LASF73:
	.string	"clear_button_states"
.LASF105:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF98:
	.string	"strlen"
.LASF14:
	.string	"int32_t"
.LASF62:
	.string	"addr_prop"
.LASF3:
	.string	"short unsigned int"
.LASF107:
	.string	"button_int_umask"
.LASF57:
	.string	"offset3"
.LASF94:
	.string	"bl_gpio_input_get_value"
.LASF51:
	.string	"stbutton"
.LASF87:
	.string	"hal_hbn_init"
.LASF38:
	.string	"short_press_start_ms"
.LASF53:
	.string	"fdt_button_module_init"
.LASF23:
	.string	"intCtrlMod"
.LASF93:
	.string	"aos_post_event"
.LASF8:
	.string	"long unsigned int"
.LASF97:
	.string	"__builtin_memset"
.LASF88:
	.string	"vPortFree"
.LASF7:
	.string	"__uint32_t"
.LASF103:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF28:
	.string	"GPIO_INT_TRIG_NEG_LEVEL"
.LASF21:
	.string	"gpio_handler"
.LASF89:
	.string	"xTaskGetTickCountFromISR"
.LASF5:
	.string	"__int32_t"
.LASF67:
	.string	"level"
.LASF46:
	.string	"dlong_entry_count"
.LASF80:
	.string	"memset"
.LASF36:
	.string	"press_stage"
.LASF74:
	.string	"pstgpio"
.LASF75:
	.string	"hal_button_register_handler_with_dts"
.LASF27:
	.string	"GPIO_INT_TRIG_POS_PULSE"
.LASF78:
	.string	"fdt32_to_cpu"
.LASF45:
	.string	"longlong_kevent"
.LASF39:
	.string	"short_press_end_ms"
.LASF82:
	.string	"fdt_subnode_offset"
.LASF71:
	.string	"pxTimer"
.LASF79:
	.string	"pvPortMalloc"
.LASF41:
	.string	"long_press_start_ms"
.LASF20:
	.string	"next"
.LASF49:
	.string	"button_ctx_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
