	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.master_button_task,"ax",@progbits
	.align	1
	.type	master_button_task, @function
master_button_task:
.LFB131:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
	.loc 1 259 1
	.cfi_startproc
.LVL0:
	.loc 1 260 5
	.loc 1 259 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 263 23
	li	a5,4
	.loc 1 260 25
	sw	zero,-48(s0)
	.loc 1 261 22
	sw	zero,-32(s0)
	.loc 1 263 23
	sw	a5,-52(s0)
	.loc 1 264 30
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 267 30
	sb	a5,-48(s0)
	.loc 1 270 23
	sb	a5,-32(s0)
	.loc 1 271 25
	lui	a5,%hi(app_get_tick_ms)
	.loc 1 269 20
	addi	a4,s0,-52
	.loc 1 271 25
	addi	a5,a5,%lo(app_get_tick_ms)
	.loc 1 275 5
	li	a2,0
	li	a1,0
	li	a0,4
.LVL1:
	.loc 1 269 20
	sw	a4,-36(s0)
	.loc 1 271 25
	sw	a5,-28(s0)
	.loc 1 260 25
	sw	zero,-40(s0)
	.loc 1 261 5 is_stmt 1
	.loc 1 261 22 is_stmt 0
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	.loc 1 263 5 is_stmt 1
	.loc 1 264 5
	.loc 1 265 5
	.loc 1 266 5
	.loc 1 267 5
	.loc 1 269 5
	.loc 1 270 5
	.loc 1 271 5
	.loc 1 272 5
	.loc 1 273 5
	.loc 1 275 5
	call	bl_gpio_enable_input
.LVL2:
	.loc 1 276 5
	.loc 1 276 22 is_stmt 0
	lui	a5,%hi(bl_gpio_input_get_value)
	addi	a5,a5,%lo(bl_gpio_input_get_value)
	.loc 1 278 5
	addi	a0,s0,-36
	.loc 1 276 22
	sw	a5,-20(s0)
	.loc 1 278 5 is_stmt 1
	call	app_btn_initialize
.LVL3:
	.loc 1 279 5
	.loc 1 280 5
	lui	a1,%hi(master_button_press_callback)
	li	a2,0
	addi	a1,a1,%lo(master_button_press_callback)
	li	a0,0
	call	app_btn_register_callback
.LVL4:
.L2:
	.loc 1 282 5 discriminator 1
	.loc 1 283 9 discriminator 1
	li	a0,0
	call	app_btn_scan
.LVL5:
	.loc 1 284 9 discriminator 1
	li	a0,20
	call	aos_msleep
.LVL6:
	.loc 1 282 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE131:
	.size	master_button_task, .-master_button_task
	.section	.text.app_get_tick_ms,"ax",@progbits
	.align	1
	.type	app_get_tick_ms, @function
app_get_tick_ms:
.LFB130:
	.loc 1 253 1
	.cfi_startproc
	.loc 1 254 5
	.loc 1 253 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 254 12
	call	aos_now_ms
.LVL7:
	.loc 1 255 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE130:
	.size	app_get_tick_ms, .-app_get_tick_ms
	.section	.text.bleuart_printf,"ax",@progbits
	.align	1
	.globl	bleuart_printf
	.type	bleuart_printf, @function
bleuart_printf:
.LFB125:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 136 3
	.loc 1 135 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 135 1
	sw	a0,-20(s0)
	.loc 1 136 39
	call	strlen
.LVL9:
	.loc 1 136 3
	lw	a1,-20(s0)
	.loc 1 137 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL10:
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 136 39
	mv	a2,a0
	.loc 1 136 3
	lui	a0,%hi(.LANCHOR0)
	.loc 1 137 1
	.loc 1 136 3
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 137 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 136 3
	tail	hosal_uart_send
.LVL11:
	.cfi_endproc
.LFE125:
	.size	bleuart_printf, .-bleuart_printf
	.section	.rodata.master_button_press_callback.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"turn off"
	.align	2
.LC1:
	.string	"turn on"
	.align	2
.LC2:
	.string	"[BTN] PRESSED, connect_status="
	.align	2
.LC3:
	.string	"%d\r\n"
	.align	2
.LC4:
	.string	"[BTN] Writing LED cmd to TB03F\r\n"
	.align	2
.LC5:
	.string	"[BTN] BLE not connected, skip write\r\n"
	.align	2
.LC6:
	.string	"[BTN] LED local toggled\r\n"
	.section	.text.master_button_press_callback,"ax",@progbits
	.align	1
	.type	master_button_press_callback, @function
master_button_press_callback:
.LFB129:
	.loc 1 228 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 229 5
	.loc 1 230 5
	.loc 1 232 5
	.loc 1 228 1 is_stmt 0
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
	.loc 1 232 5
	lui	a0,%hi(.LC2)
.LVL13:
	addi	a0,a0,%lo(.LC2)
	.loc 1 228 1
	.cfi_offset 18, -16
	.loc 1 232 5
	call	bleuart_printf
.LVL14:
	.loc 1 233 5 is_stmt 1
	.loc 1 234 5
	lui	s1,%hi(bleuart_connect_status)
	lbu	a2,%lo(bleuart_connect_status)(s1)
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	addi	a0,s0,-36
	call	sprintf
.LVL15:
	.loc 1 235 5
	addi	a0,s0,-36
	call	bleuart_printf
.LVL16:
	.loc 1 237 5
	.loc 1 237 8 is_stmt 0
	lbu	a4,%lo(bleuart_connect_status)(s1)
	li	a5,1
	bne	a4,a5,.L9
.LBB2:
	.loc 1 238 9 is_stmt 1
	.loc 1 238 43 is_stmt 0
	lui	s2,%hi(.LANCHOR1)
	.loc 1 238 56
	lbu	a5,%lo(.LANCHOR1)(s2)
	addi	s2,s2,%lo(.LANCHOR1)
	bne	a5,zero,.L12
	lui	s1,%hi(.LC1)
	addi	s1,s1,%lo(.LC1)
.L10:
.LVL17:
	.loc 1 239 9 is_stmt 1 discriminator 4
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	bleuart_printf
.LVL18:
	.loc 1 241 9 discriminator 4
	li	a1,0
	mv	a0,s1
	call	ble_master_write_led_cmd
.LVL19:
	.loc 1 242 9 discriminator 4
	lbu	a5,0(s2)
	xori	a5,a5,1
	.loc 1 242 25 is_stmt 0 discriminator 4
	sb	a5,0(s2)
.LVL20:
.L11:
.LBE2:
	.loc 1 248 5 is_stmt 1
	call	led_toggle
.LVL21:
	.loc 1 249 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	bleuart_printf
.LVL22:
	.loc 1 250 1 is_stmt 0
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
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L12:
	.cfi_restore_state
.LBB3:
	.loc 1 238 56
	lui	s1,%hi(.LC0)
	addi	s1,s1,%lo(.LC0)
	j	.L10
.L9:
.LBE3:
	.loc 1 244 9 is_stmt 1
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	bleuart_printf
.LVL23:
	j	.L11
	.cfi_endproc
.LFE129:
	.size	master_button_press_callback, .-master_button_press_callback
	.section	.text.ble_user_init,"ax",@progbits
	.align	1
	.globl	ble_user_init
	.type	ble_user_init, @function
ble_user_init:
.LFB126:
	.loc 1 140 1
	.cfi_startproc
	.loc 1 141 3
	.loc 1 140 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 141 3
	call	axk_HalBleInit
.LVL24:
	.loc 1 142 3 is_stmt 1
	call	axk_HalBleCentralStartScan
.LVL25:
	.loc 1 143 3
	.loc 1 144 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 143 3
	lui	a0,%hi(.LANCHOR2)
	.loc 1 144 1
	.loc 1 143 3
	li	a2,1
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR2)
	.loc 1 144 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 143 3
	tail	axk_HalBleCentralConnect
.LVL26:
	.cfi_endproc
.LFE126:
	.size	ble_user_init, .-ble_user_init
	.section	.rodata.ble_loop_proc.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"ble status error!\r\n"
	.align	2
.LC8:
	.string	"ble data len error!\r\n"
	.align	2
.LC9:
	.string	"ble data null!\r\n"
	.align	2
.LC10:
	.string	"ble send fail!\r\n"
	.align	2
.LC11:
	.string	"no ble connect!\r\n"
	.section	.text.ble_loop_proc,"ax",@progbits
	.align	1
	.type	ble_loop_proc, @function
ble_loop_proc:
.LFB128:
	.loc 1 183 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 184 3
	.loc 1 185 3
	.loc 1 186 3
	.loc 1 183 1 is_stmt 0
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sw	s0,296(sp)
	sw	s1,292(sp)
	sw	s2,288(sp)
	sw	s3,284(sp)
	sw	s4,280(sp)
	sw	s5,276(sp)
	sw	s6,272(sp)
	sw	s7,268(sp)
	sw	ra,300(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	addi	s0,sp,304
	.cfi_def_cfa 8, 0
	.loc 1 186 3
	call	ble_user_init
.LVL28:
	.loc 1 190 11
	lui	s1,%hi(.LANCHOR0)
	.loc 1 194 34
	lui	s2,%hi(bleuart_connect_status)
	.loc 1 219 9
	lui	s3,%hi(.LC11)
	.loc 1 215 11
	lui	s4,%hi(.LC10)
	.loc 1 211 11
	lui	s5,%hi(.LC9)
	.loc 1 207 11
	lui	s6,%hi(.LC8)
	.loc 1 203 11
	lui	s7,%hi(.LC7)
.L24:
	.loc 1 187 3 is_stmt 1
	.loc 1 190 5
	.loc 1 190 11 is_stmt 0
	li	a2,250
	addi	a1,s0,-300
	addi	a0,s1,%lo(.LANCHOR0)
	call	hosal_uart_receive
.LVL29:
	.loc 1 191 5 is_stmt 1
	.loc 1 191 8 is_stmt 0
	ble	a0,zero,.L18
	.loc 1 194 7 is_stmt 1
	.loc 1 194 10 is_stmt 0
	lbu	a4,%lo(bleuart_connect_status)(s2)
	li	a5,1
	bne	a4,a5,.L19
	.loc 1 196 9 is_stmt 1
	.loc 1 196 15 is_stmt 0
	slli	a0,a0,16
.LVL30:
	addi	a1,s0,-300
	srli	a0,a0,16
	call	axk_HalBleCentralTTWrite
.LVL31:
	.loc 1 197 9 is_stmt 1
	.loc 1 197 12 is_stmt 0
	bge	a0,zero,.L18
	.loc 1 201 14 is_stmt 1
	.loc 1 201 17 is_stmt 0
	li	a5,-1
	bne	a0,a5,.L21
	.loc 1 203 11 is_stmt 1
	addi	a0,s7,%lo(.LC7)
.LVL32:
.L26:
	.loc 1 219 9 is_stmt 0
	call	bleuart_printf
.LVL33:
.L18:
	.loc 1 221 5 is_stmt 1
	li	a0,100
	call	vTaskDelay
.LVL34:
	.loc 1 187 9
	.loc 1 190 9 is_stmt 0
	j	.L24
.LVL35:
.L21:
	.loc 1 205 14 is_stmt 1
	.loc 1 205 17 is_stmt 0
	li	a5,-2
	bne	a0,a5,.L22
	.loc 1 207 11 is_stmt 1
	addi	a0,s6,%lo(.LC8)
.LVL36:
	j	.L26
.LVL37:
.L22:
	.loc 1 209 14
	.loc 1 209 17 is_stmt 0
	li	a5,-3
	bne	a0,a5,.L23
	.loc 1 211 11 is_stmt 1
	addi	a0,s5,%lo(.LC9)
.LVL38:
	j	.L26
.LVL39:
.L23:
	.loc 1 215 11
	addi	a0,s4,%lo(.LC10)
.LVL40:
	j	.L26
.LVL41:
.L19:
	.loc 1 219 9
	addi	a0,s3,%lo(.LC11)
.LVL42:
	j	.L26
	.cfi_endproc
.LFE128:
	.size	ble_loop_proc, .-ble_loop_proc
	.section	.text.str2hex,"ax",@progbits
	.align	1
	.globl	str2hex
	.type	str2hex, @function
str2hex:
.LFB127:
	.loc 1 147 1
	.cfi_startproc
.LVL43:
	.loc 1 148 3
	.loc 1 149 3
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a4,a0
	.loc 1 149 10
	li	a3,0
	.loc 1 151 8
	li	t1,9
	.loc 1 151 48
	li	a7,5
.LVL44:
.L28:
	.loc 1 149 15 is_stmt 1 discriminator 1
	.loc 1 149 3 is_stmt 0 discriminator 1
	blt	a3,a1,.L35
	.loc 1 179 10
	li	a0,0
.LVL45:
	j	.L27
.LVL46:
.L35:
	.loc 1 151 5 is_stmt 1
	.loc 1 151 15 is_stmt 0
	lbu	a5,0(a4)
	.loc 1 151 27
	addi	a2,a5,-48
	andi	a2,a2,0xff
	.loc 1 151 8
	bleu	a2,t1,.L29
	.loc 1 151 48 discriminator 1
	andi	a2,a5,-33
	addi	a2,a2,-65
	.loc 1 151 69 discriminator 1
	addi	a6,a5,-65
	.loc 1 151 48 discriminator 1
	andi	a2,a2,0xff
	.loc 1 151 69 discriminator 1
	andi	a6,a6,0xff
	.loc 1 151 48 discriminator 1
	bleu	a2,a7,.L30
	.loc 1 175 14
	li	a0,-1
.LVL47:
.L27:
	.loc 1 180 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL48:
.L29:
	.cfi_restore_state
	.loc 1 153 7 is_stmt 1
	.loc 1 155 9
	.loc 1 155 17 is_stmt 0
	sb	a2,0(a4)
.L32:
	.loc 1 168 7 is_stmt 1
	.loc 1 168 11 is_stmt 0
	andi	a5,a3,1
	.loc 1 168 10
	beq	a5,zero,.L34
	.loc 1 170 9 is_stmt 1
	.loc 1 170 28 is_stmt 0
	lbu	a5,-1(a4)
	.loc 1 170 42
	lbu	a6,0(a4)
	.loc 1 170 16
	srai	a2,a3,1
	.loc 1 170 36
	slli	a5,a5,4
	.loc 1 170 21
	add	a2,a0,a2
	.loc 1 170 42
	or	a5,a5,a6
	.loc 1 170 21
	sb	a5,0(a2)
.L34:
	.loc 1 149 24 is_stmt 1 discriminator 2
	.loc 1 149 25 is_stmt 0 discriminator 2
	addi	a3,a3,1
.LVL49:
	addi	a4,a4,1
	j	.L28
.L30:
	.loc 1 153 7 is_stmt 1
	.loc 1 157 12
	.loc 1 157 15 is_stmt 0
	bgtu	a6,a7,.L33
	.loc 1 159 9 is_stmt 1
	.loc 1 160 9
	.loc 1 160 17 is_stmt 0
	addi	a5,a5,-55
.L40:
	.loc 1 165 17
	sb	a5,0(a4)
	j	.L32
.L33:
	.loc 1 164 9 is_stmt 1
	.loc 1 165 9
	.loc 1 165 17 is_stmt 0
	addi	a5,a5,-87
	j	.L40
	.cfi_endproc
.LFE127:
	.size	str2hex, .-str2hex
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"MY BLE MASTER\r\n"
	.align	2
.LC13:
	.string	"ble master"
	.align	2
.LC14:
	.string	"btn_task"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB133:
	.loc 1 300 1 is_stmt 1
	.cfi_startproc
	.loc 1 301 3
.LBB6:
.LBB7:
	.loc 1 293 3
.LBE7:
.LBE6:
	.loc 1 300 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
.LBB10:
.LBB8:
	.loc 1 293 3
	lui	a0,%hi(.LANCHOR0)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LBE8:
.LBE10:
	.loc 1 300 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB11:
.LBB9:
	.loc 1 293 3
	addi	a0,a0,%lo(.LANCHOR0)
	call	hosal_uart_init
.LVL50:
.LBE9:
.LBE11:
	.loc 1 302 3 is_stmt 1
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	bleuart_printf
.LVL51:
	.loc 1 303 3
	call	bl_sys_init
.LVL52:
	.loc 1 304 3
	call	led_init
.LVL53:
	.loc 1 305 3
	lui	a1,%hi(.LC13)
	lui	a0,%hi(ble_loop_proc)
	li	a5,0
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC13)
	addi	a0,a0,%lo(ble_loop_proc)
	call	xTaskCreate
.LVL54:
	.loc 1 306 3
	.loc 1 308 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 306 3
	lui	a1,%hi(.LC14)
	lui	a0,%hi(master_button_task)
	.loc 1 308 1
	.loc 1 306 3
	li	a5,0
	li	a4,14
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC14)
	addi	a0,a0,%lo(master_button_task)
	.loc 1 308 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 306 3
	tail	xTaskCreate
.LVL55:
	.cfi_endproc
.LFE133:
	.size	main, .-main
	.globl	ble_uart_dev
	.comm	pconn,4,4
	.section	.data.ble_uart_dev,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ble_uart_dev, @object
	.size	ble_uart_dev, 80
ble_uart_dev:
	.zero	4
	.byte	1
	.byte	16
	.byte	7
	.byte	-1
	.byte	-1
	.zero	3
	.word	115200
	.word	3
	.word	0
	.word	0
	.zero	4
	.word	0
	.zero	44
	.section	.sbss.s_remote_led_on.0,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	s_remote_led_on.0, @object
	.size	s_remote_led_on.0, 1
s_remote_led_on.0:
	.zero	1
	.section	.sdata.slave_mac,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	slave_mac, @object
	.size	slave_mac, 6
slave_mac:
	.ascii	"\210\210\210\210\210\210"
	.text
.Letext0:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/ble_master.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/../components/third_party/lib_button/app_btn.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h"
	.file 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/../components/hardware/led/led.h"
	.file 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc23
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF174
	.byte	0xc
	.4byte	.LASF175
	.4byte	.LASF176
	.4byte	.Ldebug_ranges0+0x38
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
	.byte	0x6
	.byte	0x4
	.4byte	0x92
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x7
	.4byte	0x8b
	.byte	0x6
	.byte	0x4
	.4byte	0x8b
	.byte	0x8
	.4byte	0x25
	.4byte	0xac
	.byte	0x9
	.4byte	0x83
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x34
	.byte	0xe
	.4byte	0x122
	.byte	0xb
	.4byte	.LASF13
	.byte	0
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0xb
	.4byte	.LASF15
	.byte	0x2
	.byte	0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0xb
	.4byte	.LASF20
	.byte	0x7
	.byte	0xb
	.4byte	.LASF21
	.byte	0x8
	.byte	0xb
	.4byte	.LASF22
	.byte	0x9
	.byte	0xb
	.4byte	.LASF23
	.byte	0xa
	.byte	0xb
	.4byte	.LASF24
	.byte	0xb
	.byte	0xb
	.4byte	.LASF25
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0xd
	.byte	0xb
	.4byte	.LASF27
	.byte	0xe
	.byte	0xb
	.4byte	.LASF28
	.byte	0xf
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x3
	.byte	0x71
	.byte	0x6
	.4byte	0x147
	.byte	0xb
	.4byte	.LASF29
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	0x69
	.byte	0x6
	.byte	0x4
	.4byte	0x147
	.byte	0xe
	.4byte	0x15d
	.byte	0x9
	.4byte	0x69
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x152
	.byte	0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x9
	.byte	0xe
	.4byte	0x1c4
	.byte	0xb
	.4byte	.LASF34
	.byte	0xff
	.byte	0xb
	.4byte	.LASF35
	.byte	0
	.byte	0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb
	.4byte	.LASF37
	.byte	0x2
	.byte	0xb
	.4byte	.LASF38
	.byte	0x3
	.byte	0xb
	.4byte	.LASF39
	.byte	0x4
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0xb
	.4byte	.LASF45
	.byte	0x9
	.byte	0xb
	.4byte	.LASF46
	.byte	0xa
	.byte	0
	.byte	0x4
	.4byte	.LASF47
	.byte	0x5
	.byte	0x38
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF48
	.byte	0x6
	.byte	0x3e
	.byte	0xf
	.4byte	0x1dc
	.byte	0x6
	.byte	0x4
	.4byte	0x9d
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x43
	.byte	0xe
	.4byte	0x20f
	.byte	0xb
	.4byte	.LASF49
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x1
	.byte	0xb
	.4byte	.LASF51
	.byte	0x2
	.byte	0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF54
	.byte	0x6
	.byte	0x49
	.byte	0x3
	.4byte	0x1e2
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x4e
	.byte	0xe
	.4byte	0x23c
	.byte	0xb
	.4byte	.LASF55
	.byte	0
	.byte	0xb
	.4byte	.LASF56
	.byte	0x1
	.byte	0xb
	.4byte	.LASF57
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF58
	.byte	0x6
	.byte	0x52
	.byte	0x3
	.4byte	0x21b
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x57
	.byte	0xe
	.4byte	0x26f
	.byte	0xb
	.4byte	.LASF59
	.byte	0
	.byte	0xb
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb
	.4byte	.LASF61
	.byte	0x2
	.byte	0xb
	.4byte	.LASF62
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF63
	.byte	0x6
	.byte	0x5c
	.byte	0x3
	.4byte	0x248
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x61
	.byte	0xe
	.4byte	0x29c
	.byte	0xb
	.4byte	.LASF64
	.byte	0
	.byte	0xb
	.4byte	.LASF65
	.byte	0x1
	.byte	0xb
	.4byte	.LASF66
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF67
	.byte	0x6
	.byte	0x65
	.byte	0x3
	.4byte	0x27b
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x6a
	.byte	0xe
	.4byte	0x2cf
	.byte	0xb
	.4byte	.LASF68
	.byte	0
	.byte	0xb
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb
	.4byte	.LASF70
	.byte	0x2
	.byte	0xb
	.4byte	.LASF71
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF72
	.byte	0x6
	.byte	0x6f
	.byte	0x3
	.4byte	0x2a8
	.byte	0xf
	.byte	0x20
	.byte	0x6
	.byte	0x82
	.byte	0x9
	.4byte	0x374
	.byte	0x10
	.4byte	.LASF73
	.byte	0x6
	.byte	0x83
	.byte	0xd
	.4byte	0x4f
	.byte	0
	.byte	0x10
	.4byte	.LASF74
	.byte	0x6
	.byte	0x84
	.byte	0xd
	.4byte	0x4f
	.byte	0x1
	.byte	0x10
	.4byte	.LASF75
	.byte	0x6
	.byte	0x85
	.byte	0xd
	.4byte	0x4f
	.byte	0x2
	.byte	0x10
	.4byte	.LASF76
	.byte	0x6
	.byte	0x86
	.byte	0xd
	.4byte	0x4f
	.byte	0x3
	.byte	0x10
	.4byte	.LASF77
	.byte	0x6
	.byte	0x87
	.byte	0xd
	.4byte	0x4f
	.byte	0x4
	.byte	0x10
	.4byte	.LASF78
	.byte	0x6
	.byte	0x88
	.byte	0xe
	.4byte	0x69
	.byte	0x8
	.byte	0x10
	.4byte	.LASF79
	.byte	0x6
	.byte	0x89
	.byte	0x1d
	.4byte	0x20f
	.byte	0xc
	.byte	0x10
	.4byte	.LASF80
	.byte	0x6
	.byte	0x8a
	.byte	0x19
	.4byte	0x29c
	.byte	0x10
	.byte	0x10
	.4byte	.LASF81
	.byte	0x6
	.byte	0x8b
	.byte	0x1c
	.4byte	0x23c
	.byte	0x14
	.byte	0x10
	.4byte	.LASF82
	.byte	0x6
	.byte	0x8c
	.byte	0x1f
	.4byte	0x26f
	.byte	0x18
	.byte	0x10
	.4byte	.LASF83
	.byte	0x6
	.byte	0x8d
	.byte	0x17
	.4byte	0x2cf
	.byte	0x1c
	.byte	0
	.byte	0x4
	.4byte	.LASF84
	.byte	0x6
	.byte	0x8e
	.byte	0x3
	.4byte	0x2db
	.byte	0xf
	.byte	0x50
	.byte	0x6
	.byte	0x93
	.byte	0x9
	.4byte	0x433
	.byte	0x10
	.4byte	.LASF85
	.byte	0x6
	.byte	0x94
	.byte	0xd
	.4byte	0x4f
	.byte	0
	.byte	0x10
	.4byte	.LASF86
	.byte	0x6
	.byte	0x95
	.byte	0x19
	.4byte	0x374
	.byte	0x4
	.byte	0x10
	.4byte	.LASF87
	.byte	0x6
	.byte	0x96
	.byte	0x1b
	.4byte	0x1d0
	.byte	0x24
	.byte	0x10
	.4byte	.LASF88
	.byte	0x6
	.byte	0x97
	.byte	0xb
	.4byte	0x83
	.byte	0x28
	.byte	0x10
	.4byte	.LASF89
	.byte	0x6
	.byte	0x98
	.byte	0x1b
	.4byte	0x1d0
	.byte	0x2c
	.byte	0x10
	.4byte	.LASF90
	.byte	0x6
	.byte	0x99
	.byte	0xb
	.4byte	0x83
	.byte	0x30
	.byte	0x10
	.4byte	.LASF91
	.byte	0x6
	.byte	0x9a
	.byte	0x1b
	.4byte	0x1d0
	.byte	0x34
	.byte	0x10
	.4byte	.LASF92
	.byte	0x6
	.byte	0x9b
	.byte	0xb
	.4byte	0x83
	.byte	0x38
	.byte	0x10
	.4byte	.LASF93
	.byte	0x6
	.byte	0x9c
	.byte	0x1b
	.4byte	0x1d0
	.byte	0x3c
	.byte	0x10
	.4byte	.LASF94
	.byte	0x6
	.byte	0x9d
	.byte	0xb
	.4byte	0x83
	.byte	0x40
	.byte	0x10
	.4byte	.LASF95
	.byte	0x6
	.byte	0x9e
	.byte	0x16
	.4byte	0x1c4
	.byte	0x44
	.byte	0x10
	.4byte	.LASF96
	.byte	0x6
	.byte	0x9f
	.byte	0x16
	.4byte	0x1c4
	.byte	0x48
	.byte	0x10
	.4byte	.LASF97
	.byte	0x6
	.byte	0xa0
	.byte	0xb
	.4byte	0x83
	.byte	0x4c
	.byte	0
	.byte	0x4
	.4byte	.LASF98
	.byte	0x6
	.byte	0xa1
	.byte	0x3
	.4byte	0x380
	.byte	0xc
	.4byte	.LASF99
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x36
	.byte	0x6
	.4byte	0x470
	.byte	0xb
	.4byte	.LASF100
	.byte	0
	.byte	0xb
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb
	.4byte	.LASF102
	.byte	0x2
	.byte	0xb
	.4byte	.LASF103
	.byte	0x3
	.byte	0xb
	.4byte	.LASF104
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	.LASF105
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x40
	.byte	0x6
	.4byte	0x4a1
	.byte	0xb
	.4byte	.LASF106
	.byte	0
	.byte	0xb
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb
	.4byte	.LASF108
	.byte	0x2
	.byte	0xb
	.4byte	.LASF109
	.byte	0x3
	.byte	0xb
	.4byte	.LASF110
	.byte	0x4
	.byte	0
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0xf
	.byte	0xe
	.4byte	0x4c2
	.byte	0xb
	.4byte	.LASF111
	.byte	0
	.byte	0xb
	.4byte	.LASF112
	.byte	0x1
	.byte	0xb
	.4byte	.LASF113
	.byte	0x2
	.byte	0
	.byte	0x11
	.4byte	0x4f
	.4byte	0x4d2
	.byte	0x12
	.4byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x13
	.4byte	.LASF177
	.byte	0x14
	.4byte	.LASF136
	.byte	0x9
	.byte	0x22
	.byte	0x11
	.4byte	0x4e9
	.byte	0x5
	.byte	0x3
	.4byte	pconn
	.byte	0x6
	.byte	0x4
	.4byte	0x4d2
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x21
	.byte	0x1
	.4byte	0x534
	.byte	0xb
	.4byte	.LASF114
	.byte	0
	.byte	0xb
	.4byte	.LASF115
	.byte	0x1
	.byte	0xb
	.4byte	.LASF116
	.byte	0x2
	.byte	0xb
	.4byte	.LASF117
	.byte	0x3
	.byte	0xb
	.4byte	.LASF118
	.byte	0x4
	.byte	0xb
	.4byte	.LASF119
	.byte	0x5
	.byte	0xb
	.4byte	.LASF120
	.byte	0x6
	.byte	0xb
	.4byte	.LASF121
	.byte	0x7
	.byte	0xb
	.4byte	.LASF122
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x10
	.byte	0xa
	.byte	0x2d
	.byte	0x9
	.4byte	0x57f
	.byte	0x15
	.string	"pin"
	.byte	0xa
	.byte	0x2f
	.byte	0xe
	.4byte	0x69
	.byte	0
	.byte	0x10
	.4byte	.LASF123
	.byte	0xa
	.byte	0x30
	.byte	0xd
	.4byte	0x4f
	.byte	0x4
	.byte	0x10
	.4byte	.LASF124
	.byte	0xa
	.byte	0x31
	.byte	0xe
	.4byte	0x69
	.byte	0x8
	.byte	0x10
	.4byte	.LASF125
	.byte	0xa
	.byte	0x32
	.byte	0xd
	.4byte	0x4f
	.byte	0xc
	.byte	0x10
	.4byte	.LASF126
	.byte	0xa
	.byte	0x33
	.byte	0xd
	.4byte	0x4f
	.byte	0xd
	.byte	0
	.byte	0x4
	.4byte	.LASF127
	.byte	0xa
	.byte	0x34
	.byte	0x3
	.4byte	0x534
	.byte	0x4
	.4byte	.LASF128
	.byte	0xa
	.byte	0x36
	.byte	0x14
	.4byte	0x14c
	.byte	0x4
	.4byte	.LASF129
	.byte	0xa
	.byte	0x37
	.byte	0x10
	.4byte	0x15d
	.byte	0x4
	.4byte	.LASF130
	.byte	0xa
	.byte	0x38
	.byte	0x14
	.4byte	0x5af
	.byte	0x6
	.byte	0x4
	.4byte	0x5b5
	.byte	0x8
	.4byte	0x69
	.4byte	0x5c4
	.byte	0x9
	.4byte	0x69
	.byte	0
	.byte	0xf
	.byte	0x14
	.byte	0xa
	.byte	0x3a
	.byte	0x9
	.4byte	0x60f
	.byte	0x10
	.4byte	.LASF86
	.byte	0xa
	.byte	0x3c
	.byte	0x1a
	.4byte	0x60f
	.byte	0
	.byte	0x10
	.4byte	.LASF131
	.byte	0xa
	.byte	0x3d
	.byte	0xd
	.4byte	0x4f
	.byte	0x4
	.byte	0x10
	.4byte	.LASF132
	.byte	0xa
	.byte	0x3e
	.byte	0x19
	.4byte	0x58b
	.byte	0x8
	.byte	0x10
	.4byte	.LASF133
	.byte	0xa
	.byte	0x3f
	.byte	0x1b
	.4byte	0x597
	.byte	0xc
	.byte	0x10
	.4byte	.LASF134
	.byte	0xa
	.byte	0x40
	.byte	0x1a
	.4byte	0x5a3
	.byte	0x10
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x57f
	.byte	0x4
	.4byte	.LASF135
	.byte	0xa
	.byte	0x41
	.byte	0x3
	.4byte	0x5c4
	.byte	0x16
	.4byte	.LASF139
	.byte	0x1
	.byte	0x6f
	.byte	0x10
	.4byte	0x4c2
	.byte	0x5
	.byte	0x3
	.4byte	slave_mac
	.byte	0x17
	.4byte	.LASF137
	.byte	0x1
	.byte	0x72
	.byte	0x16
	.4byte	0x5b
	.byte	0x14
	.4byte	.LASF138
	.byte	0x1
	.byte	0x77
	.byte	0x12
	.4byte	0x433
	.byte	0x5
	.byte	0x3
	.4byte	ble_uart_dev
	.byte	0x18
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x12b
	.byte	0x6
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.byte	0x1
	.byte	0x9c
	.4byte	0x723
	.byte	0x19
	.4byte	0x723
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x12d
	.byte	0x3
	.4byte	0x691
	.byte	0x1a
	.4byte	.LVL50
	.4byte	0xb25
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL51
	.4byte	0xacf
	.4byte	0x6a8
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x1d
	.4byte	.LVL52
	.4byte	0xb31
	.byte	0x1d
	.4byte	.LVL53
	.4byte	0xb3d
	.byte	0x1c
	.4byte	.LVL54
	.4byte	0xb49
	.4byte	0x6f0
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	ble_loop_proc
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x1b
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL55
	.4byte	0xb49
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	master_button_task
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3e
	.byte	0x1b
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x123
	.byte	0xd
	.byte	0x1
	.byte	0x20
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x102
	.byte	0xd
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.byte	0x1
	.byte	0x9c
	.4byte	0x807
	.byte	0x21
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x102
	.byte	0x26
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x22
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x104
	.byte	0x19
	.4byte	0x807
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x22
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x105
	.byte	0x16
	.4byte	0x615
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x23
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x117
	.byte	0x11
	.4byte	0x792
	.byte	0x9
	.4byte	0x25
	.byte	0x9
	.4byte	0x25
	.byte	0x9
	.4byte	0x83
	.byte	0
	.byte	0x1c
	.4byte	.LVL2
	.4byte	0xb56
	.4byte	0x7af
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL3
	.4byte	0xb62
	.4byte	0x7c3
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1c
	.4byte	.LVL4
	.4byte	0xb6e
	.4byte	0x7e4
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	master_button_press_callback
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1c
	.4byte	.LVL5
	.4byte	0xb7a
	.4byte	0x7f7
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL6
	.4byte	0xb86
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x57f
	.4byte	0x817
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF180
	.byte	0x1
	.byte	0xfc
	.byte	0x11
	.4byte	0x69
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.byte	0x1
	.byte	0x9c
	.4byte	0x83b
	.byte	0x1d
	.4byte	.LVL7
	.4byte	0xb93
	.byte	0
	.byte	0x25
	.4byte	.LASF143
	.byte	0x1
	.byte	0xe3
	.byte	0xd
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.byte	0x1
	.byte	0x9c
	.4byte	0x970
	.byte	0x26
	.string	"pin"
	.byte	0x1
	.byte	0xe3
	.byte	0x2e
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x27
	.4byte	.LASF145
	.byte	0x1
	.byte	0xe3
	.byte	0x37
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x27
	.4byte	.LASF146
	.byte	0x1
	.byte	0xe3
	.byte	0x44
	.4byte	0x83
	.4byte	.LLST4
	.byte	0x16
	.4byte	.LASF147
	.byte	0x1
	.byte	0xe5
	.byte	0x10
	.4byte	0xac
	.byte	0x5
	.byte	0x3
	.4byte	s_remote_led_on.0
	.byte	0x17
	.4byte	.LASF137
	.byte	0x1
	.byte	0xe6
	.byte	0x1a
	.4byte	0x5b
	.byte	0x28
	.string	"buf"
	.byte	0x1
	.byte	0xe9
	.byte	0xa
	.4byte	0x970
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x29
	.4byte	.Ldebug_ranges0+0
	.4byte	0x8f4
	.byte	0x2a
	.string	"cmd"
	.byte	0x1
	.byte	0xee
	.byte	0x15
	.4byte	0x85
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LVL18
	.4byte	0xacf
	.4byte	0x8de
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0xba0
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL14
	.4byte	0xacf
	.4byte	0x90b
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1c
	.4byte	.LVL15
	.4byte	0xbac
	.4byte	0x928
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1c
	.4byte	.LVL16
	.4byte	0xacf
	.4byte	0x93c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1d
	.4byte	.LVL21
	.4byte	0xbb8
	.byte	0x1c
	.4byte	.LVL22
	.4byte	0xacf
	.4byte	0x95c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1a
	.4byte	.LVL23
	.4byte	0xacf
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x8b
	.4byte	0x980
	.byte	0x12
	.4byte	0x2c
	.byte	0x13
	.byte	0
	.byte	0x25
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb6
	.byte	0xd
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.byte	0x1
	.byte	0x9c
	.4byte	0xa32
	.byte	0x27
	.4byte	.LASF149
	.byte	0x1
	.byte	0xb6
	.byte	0x21
	.4byte	0x83
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb8
	.byte	0x8
	.4byte	0xa32
	.byte	0x3
	.byte	0x91
	.byte	0xd4,0x7d
	.byte	0x2a
	.string	"ret"
	.byte	0x1
	.byte	0xb9
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x2a
	.string	"rep"
	.byte	0x1
	.byte	0xb9
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST8
	.byte	0x1d
	.4byte	.LVL28
	.4byte	0xa89
	.byte	0x1c
	.4byte	.LVL29
	.4byte	0xbc4
	.4byte	0xa03
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xd4,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xfa
	.byte	0
	.byte	0x1c
	.4byte	.LVL31
	.4byte	0xbd1
	.4byte	0xa18
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xd4,0x7d
	.byte	0
	.byte	0x1d
	.4byte	.LVL33
	.4byte	0xacf
	.byte	0x1a
	.4byte	.LVL34
	.4byte	0xbdd
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x8b
	.4byte	0xa42
	.byte	0x12
	.4byte	0x2c
	.byte	0xf9
	.byte	0
	.byte	0x2b
	.4byte	.LASF181
	.byte	0x1
	.byte	0x92
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.byte	0x1
	.byte	0x9c
	.4byte	0xa89
	.byte	0x27
	.4byte	.LASF150
	.byte	0x1
	.byte	0x92
	.byte	0x13
	.4byte	0x97
	.4byte	.LLST9
	.byte	0x2c
	.string	"len"
	.byte	0x1
	.byte	0x92
	.byte	0x1d
	.4byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2a
	.string	"i"
	.byte	0x1
	.byte	0x94
	.byte	0x7
	.4byte	0x25
	.4byte	.LLST10
	.byte	0
	.byte	0x2d
	.4byte	.LASF151
	.byte	0x1
	.byte	0x8b
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.byte	0x1
	.byte	0x9c
	.4byte	0xacf
	.byte	0x1d
	.4byte	.LVL24
	.4byte	0xbea
	.byte	0x1d
	.4byte	.LVL25
	.4byte	0xbf6
	.byte	0x1e
	.4byte	.LVL26
	.4byte	0xc02
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF152
	.byte	0x1
	.byte	0x86
	.byte	0x6
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x1
	.byte	0x9c
	.4byte	0xb25
	.byte	0x26
	.string	"buf"
	.byte	0x1
	.byte	0x86
	.byte	0x1b
	.4byte	0x97
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LVL9
	.4byte	0xc0e
	.4byte	0xb0a
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x1e
	.4byte	.LVL11
	.4byte	0xc1a
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x6
	.byte	0xe8
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xb
	.byte	0x19
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xc
	.byte	0x5
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xd
	.2byte	0x14a
	.byte	0xd
	.byte	0x2e
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xe
	.byte	0x10
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xa
	.byte	0x4b
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xa
	.byte	0x59
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xa
	.byte	0x51
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xf
	.2byte	0x207
	.byte	0xa
	.byte	0x2f
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xf
	.2byte	0x1ef
	.byte	0xf
	.byte	0x2e
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x9
	.byte	0x30
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x10
	.byte	0xf4
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xc
	.byte	0x8
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x6
	.2byte	0x103
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.byte	0x2f
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x2f6
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x1
	.byte	0x73
	.byte	0x10
	.byte	0x2e
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x1
	.byte	0x74
	.byte	0x10
	.byte	0x2e
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x1
	.byte	0x75
	.byte	0x10
	.byte	0x2e
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x11
	.byte	0x29
	.byte	0x8
	.byte	0x2e
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x6
	.byte	0xf6
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
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0xd
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x38
	.byte	0xb
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x2e
	.byte	0
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x1
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
	.byte	0x27
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE131
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
	.4byte	.LFE129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LFE129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14-1
	.4byte	.LFE129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LFE128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE127
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE127
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL10
	.4byte	.LFE125
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
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
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB131
	.4byte	.LFE131
	.4byte	.LFB130
	.4byte	.LFE130
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LFB128
	.4byte	.LFE128
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"MEMP_UDP_PCB"
.LASF24:
	.string	"MEMP_SYS_TIMEOUT"
.LASF150:
	.string	"pbuf"
.LASF164:
	.string	"sprintf"
.LASF65:
	.string	"HOSAL_ODD_PARITY"
.LASF16:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF25:
	.string	"MEMP_NETDB"
.LASF120:
	.string	"APP_BTN_EVT_IDLE"
.LASF115:
	.string	"APP_BTN_EVT_RELEASED"
.LASF34:
	.string	"TASK_NONE"
.LASF132:
	.string	"get_tick_cb"
.LASF38:
	.string	"TASK_ME"
.LASF51:
	.string	"HOSAL_DATA_WIDTH_7BIT"
.LASF73:
	.string	"uart_id"
.LASF61:
	.string	"HOSAL_FLOW_CONTROL_RTS"
.LASF179:
	.string	"uart_init"
.LASF10:
	.string	"long long unsigned int"
.LASF78:
	.string	"baud_rate"
.LASF146:
	.string	"data"
.LASF113:
	.string	"BLE_MASTER_AUTOCONN_FORCE"
.LASF99:
	.string	"_poll_types_bits"
.LASF96:
	.string	"dma_rx_chan"
.LASF67:
	.string	"hosal_uart_parity_t"
.LASF162:
	.string	"aos_now_ms"
.LASF106:
	.string	"_POLL_STATE_NOT_READY"
.LASF70:
	.string	"HOSAL_UART_MODE_INT_RX"
.LASF112:
	.string	"BLE_MASTER_AUTOCONN_ENABLE"
.LASF135:
	.string	"app_btn_config_t"
.LASF169:
	.string	"axk_HalBleInit"
.LASF4:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF94:
	.string	"p_rxdma_arg"
.LASF168:
	.string	"vTaskDelay"
.LASF100:
	.string	"_POLL_TYPE_IGNORE"
.LASF50:
	.string	"HOSAL_DATA_WIDTH_6BIT"
.LASF93:
	.string	"rxdma_cb"
.LASF140:
	.string	"btn_config"
.LASF3:
	.string	"long int"
.LASF152:
	.string	"bleuart_printf"
.LASF13:
	.string	"MEMP_RAW_PCB"
.LASF121:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF59:
	.string	"HOSAL_FLOW_CONTROL_DISABLED"
.LASF68:
	.string	"HOSAL_UART_MODE_POLL"
.LASF32:
	.string	"lwip_internal_netif_client_data_index"
.LASF170:
	.string	"axk_HalBleCentralStartScan"
.LASF37:
	.string	"TASK_SCANU"
.LASF122:
	.string	"APP_BTN_EVT_MAX"
.LASF89:
	.string	"rx_cb"
.LASF153:
	.string	"hosal_uart_init"
.LASF92:
	.string	"p_txdma_arg"
.LASF171:
	.string	"axk_HalBleCentralConnect"
.LASF80:
	.string	"parity"
.LASF101:
	.string	"_POLL_TYPE_SIGNAL"
.LASF143:
	.string	"master_button_press_callback"
.LASF133:
	.string	"btn_initialize"
.LASF49:
	.string	"HOSAL_DATA_WIDTH_5BIT"
.LASF54:
	.string	"hosal_uart_data_width_t"
.LASF66:
	.string	"HOSAL_EVEN_PARITY"
.LASF85:
	.string	"port"
.LASF116:
	.string	"APP_BTN_EVT_HOLD"
.LASF181:
	.string	"str2hex"
.LASF95:
	.string	"dma_tx_chan"
.LASF0:
	.string	"unsigned int"
.LASF23:
	.string	"MEMP_IGMP_GROUP"
.LASF39:
	.string	"TASK_SM"
.LASF159:
	.string	"app_btn_register_callback"
.LASF90:
	.string	"p_rxarg"
.LASF9:
	.string	"long unsigned int"
.LASF63:
	.string	"hosal_uart_flow_control_t"
.LASF134:
	.string	"btn_read"
.LASF149:
	.string	"pvParameters"
.LASF130:
	.string	"app_btn_get_level_cb"
.LASF15:
	.string	"MEMP_TCP_PCB"
.LASF77:
	.string	"rts_pin"
.LASF145:
	.string	"event"
.LASF6:
	.string	"short unsigned int"
.LASF69:
	.string	"HOSAL_UART_MODE_INT_TX"
.LASF129:
	.string	"app_btn_initialize_cb"
.LASF173:
	.string	"hosal_uart_send"
.LASF64:
	.string	"HOSAL_NO_PARITY"
.LASF104:
	.string	"_POLL_NUM_TYPES"
.LASF172:
	.string	"strlen"
.LASF57:
	.string	"HOSAL_STOP_BITS_2"
.LASF163:
	.string	"ble_master_write_led_cmd"
.LASF44:
	.string	"TASK_LAST_EMB"
.LASF47:
	.string	"hosal_dma_chan_t"
.LASF33:
	.string	"wifi_fw_task_id"
.LASF124:
	.string	"idle_level"
.LASF17:
	.string	"MEMP_TCP_SEG"
.LASF41:
	.string	"TASK_BAM"
.LASF138:
	.string	"ble_uart_dev"
.LASF119:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF114:
	.string	"APP_BTN_EVT_PRESSED"
.LASF154:
	.string	"bl_sys_init"
.LASF28:
	.string	"MEMP_MAX"
.LASF147:
	.string	"s_remote_led_on"
.LASF87:
	.string	"tx_cb"
.LASF46:
	.string	"TASK_MAX"
.LASF158:
	.string	"app_btn_initialize"
.LASF107:
	.string	"_POLL_STATE_SIGNALED"
.LASF76:
	.string	"cts_pin"
.LASF156:
	.string	"xTaskCreate"
.LASF177:
	.string	"bt_conn"
.LASF91:
	.string	"txdma_cb"
.LASF142:
	.string	"master_button_task"
.LASF111:
	.string	"BLE_MASTER_AUTOCONN_DISABLE"
.LASF118:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF35:
	.string	"TASK_MM"
.LASF98:
	.string	"hosal_uart_dev_t"
.LASF55:
	.string	"HOSAL_STOP_BITS_1"
.LASF136:
	.string	"pconn"
.LASF97:
	.string	"priv"
.LASF165:
	.string	"led_toggle"
.LASF131:
	.string	"btn_count"
.LASF125:
	.string	"debounce_val"
.LASF105:
	.string	"_poll_states_bits"
.LASF88:
	.string	"p_txarg"
.LASF166:
	.string	"hosal_uart_receive"
.LASF81:
	.string	"stop_bits"
.LASF157:
	.string	"bl_gpio_enable_input"
.LASF45:
	.string	"TASK_API"
.LASF42:
	.string	"TASK_RXU"
.LASF40:
	.string	"TASK_APM"
.LASF148:
	.string	"ble_loop_proc"
.LASF75:
	.string	"rx_pin"
.LASF12:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF161:
	.string	"aos_msleep"
.LASF30:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF167:
	.string	"axk_HalBleCentralTTWrite"
.LASF2:
	.string	"short int"
.LASF102:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF29:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF109:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF8:
	.string	"uint32_t"
.LASF48:
	.string	"hosal_uart_callback_t"
.LASF84:
	.string	"hosal_uart_config_t"
.LASF21:
	.string	"MEMP_TCPIP_MSG_API"
.LASF11:
	.string	"char"
.LASF83:
	.string	"mode"
.LASF126:
	.string	"debounce_counter"
.LASF86:
	.string	"config"
.LASF19:
	.string	"MEMP_NETBUF"
.LASF144:
	.string	"params"
.LASF175:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/datic/main.c"
.LASF20:
	.string	"MEMP_NETCONN"
.LASF60:
	.string	"HOSAL_FLOW_CONTROL_CTS"
.LASF18:
	.string	"MEMP_ALTCP_PCB"
.LASF79:
	.string	"data_width"
.LASF123:
	.string	"last_state"
.LASF27:
	.string	"MEMP_PBUF_POOL"
.LASF137:
	.string	"bleuart_connect_status"
.LASF141:
	.string	"btn_cfg"
.LASF108:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF160:
	.string	"app_btn_scan"
.LASF127:
	.string	"app_btn_hw_config_t"
.LASF62:
	.string	"HOSAL_FLOW_CONTROL_CTS_RTS"
.LASF53:
	.string	"HOSAL_DATA_WIDTH_9BIT"
.LASF174:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF128:
	.string	"app_btn_get_tick_cb"
.LASF71:
	.string	"HOSAL_UART_MODE_INT"
.LASF74:
	.string	"tx_pin"
.LASF110:
	.string	"_POLL_NUM_STATES"
.LASF180:
	.string	"app_get_tick_ms"
.LASF58:
	.string	"hosal_uart_stop_bits_t"
.LASF151:
	.string	"ble_user_init"
.LASF7:
	.string	"uint8_t"
.LASF31:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF139:
	.string	"slave_mac"
.LASF176:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/datic"
.LASF72:
	.string	"hosal_uart_mode_t"
.LASF103:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF43:
	.string	"TASK_CFG"
.LASF117:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF52:
	.string	"HOSAL_DATA_WIDTH_8BIT"
.LASF56:
	.string	"HOSAL_STOP_BITS_1_5"
.LASF178:
	.string	"main"
.LASF82:
	.string	"flow_control"
.LASF26:
	.string	"MEMP_PBUF"
.LASF36:
	.string	"TASK_SCAN"
.LASF22:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF155:
	.string	"led_init"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
