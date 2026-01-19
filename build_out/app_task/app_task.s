	.file	"app_task.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_task_button,"ax",@progbits
	.align	1
	.globl	app_task_button
	.type	app_task_button, @function
app_task_button:
.LFB6:
	.file 1 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
	.loc 1 45 1
	.cfi_startproc
.LVL0:
	.loc 1 46 5
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 49 23
	li	a5,4
	.loc 1 46 25
	sw	zero,-48(s0)
	.loc 1 47 22
	sw	zero,-32(s0)
	.loc 1 49 23
	sw	a5,-52(s0)
	.loc 1 50 30
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 53 30
	sb	a5,-48(s0)
	.loc 1 56 23
	sb	a5,-32(s0)
	.loc 1 57 25
	lui	a5,%hi(app_get_tick_ms)
	.loc 1 55 20
	addi	a4,s0,-52
	.loc 1 57 25
	addi	a5,a5,%lo(app_get_tick_ms)
	.loc 1 61 5
	li	a2,0
	li	a1,0
	li	a0,4
.LVL1:
	.loc 1 55 20
	sw	a4,-36(s0)
	.loc 1 57 25
	sw	a5,-28(s0)
	.loc 1 46 25
	sw	zero,-40(s0)
	.loc 1 47 5 is_stmt 1
	.loc 1 47 22 is_stmt 0
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	.loc 1 49 5 is_stmt 1
	.loc 1 50 5
	.loc 1 51 5
	.loc 1 52 5
	.loc 1 53 5
	.loc 1 55 5
	.loc 1 56 5
	.loc 1 57 5
	.loc 1 58 5
	.loc 1 59 5
	.loc 1 61 5
	call	bl_gpio_enable_input
.LVL2:
	.loc 1 62 5
	.loc 1 62 22 is_stmt 0
	lui	a5,%hi(bl_gpio_input_get_value)
	addi	a5,a5,%lo(bl_gpio_input_get_value)
	.loc 1 64 5
	addi	a0,s0,-36
	.loc 1 62 22
	sw	a5,-20(s0)
	.loc 1 64 5 is_stmt 1
	call	app_btn_initialize
.LVL3:
	.loc 1 65 5
	lui	a1,%hi(app_button_hold_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_hold_callback)
	li	a0,2
	call	app_btn_register_callback
.LVL4:
	.loc 1 66 5
	lui	a1,%hi(app_button_press_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_press_callback)
	li	a0,0
	call	app_btn_register_callback
.LVL5:
.L2:
	.loc 1 68 5 discriminator 1
	.loc 1 69 9 discriminator 1
	li	a0,0
	call	app_btn_scan
.LVL6:
	.loc 1 70 9 discriminator 1
	li	a0,20
	call	aos_msleep
.LVL7:
	.loc 1 68 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE6:
	.size	app_task_button, .-app_task_button
	.section	.text.app_get_tick_ms,"ax",@progbits
	.align	1
	.type	app_get_tick_ms, @function
app_get_tick_ms:
.LFB4:
	.loc 1 32 1
	.cfi_startproc
	.loc 1 33 5
	.loc 1 32 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 12
	call	aos_now_ms
.LVL8:
	.loc 1 34 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	app_get_tick_ms, .-app_get_tick_ms
	.section	.text.app_task_led,"ax",@progbits
	.align	1
	.globl	app_task_led
	.type	app_task_led, @function
app_task_led:
.LFB7:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 76 5
	.loc 1 75 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 76 5
	call	led_init
.LVL10:
.L7:
	.loc 1 77 5 is_stmt 1
	.loc 1 78 9
	.loc 1 78 13 is_stmt 0
	call	wifi_if_is_connected
.LVL11:
	.loc 1 78 12
	beq	a0,zero,.L8
	.loc 1 79 13 is_stmt 1
	call	led_on
.LVL12:
	.loc 1 80 13
	li	a0,1000
.L11:
	.loc 1 83 13 is_stmt 0
	call	aos_msleep
.LVL13:
	j	.L7
.L8:
	.loc 1 82 13 is_stmt 1
	call	led_toggle
.LVL14:
	.loc 1 83 13
	li	a0,500
	j	.L11
	.cfi_endproc
.LFE7:
	.size	app_task_led, .-app_task_led
	.section	.text.app_task_wifi,"ax",@progbits
	.align	1
	.globl	app_task_wifi
	.type	app_task_wifi, @function
app_task_wifi:
.LFB8:
	.loc 1 89 1
	.cfi_startproc
.LVL15:
	.loc 1 90 5
	.loc 1 89 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 91 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 90 5
	tail	app_wifi_task
.LVL16:
	.cfi_endproc
.LFE8:
	.size	app_task_wifi, .-app_task_wifi
	.section	.rodata.app_task_main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ON"
	.align	2
.LC1:
	.string	"OFF"
	.align	2
.LC2:
	.string	"172.20.10.3"
	.section	.text.app_task_main,"ax",@progbits
	.align	1
	.globl	app_task_main
	.type	app_task_main, @function
app_task_main:
.LFB9:
	.loc 1 94 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 95 5
	.loc 1 96 5
	.loc 1 94 1 is_stmt 0
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	s2,144(sp)
	sw	s3,140(sp)
	sw	s4,136(sp)
	sw	s5,132(sp)
	sw	s6,128(sp)
	sw	s7,124(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 96 17
	sw	zero,-156(s0)
	sw	zero,-152(s0)
	.loc 1 97 5 is_stmt 1
	.loc 1 98 5
	call	app_state_init
.LVL18:
	.loc 1 99 5
	call	app_mqtt_init
.LVL19:
.LBB2:
	.loc 1 102 9
	.loc 1 103 9
	.loc 1 104 9
	.loc 1 106 13 is_stmt 0
	addi	a1,s0,-148
	addi	a0,s0,-157
	.loc 1 104 17
	sb	zero,-157(s0)
	.loc 1 105 8 is_stmt 1
	.loc 1 105 13 is_stmt 0
	sb	zero,-148(s0)
	.loc 1 106 9 is_stmt 1
	.loc 1 106 13 is_stmt 0
	call	app_config_load_relay_settings
.LVL20:
	.loc 1 106 12
	bne	a0,zero,.L15
	.loc 1 107 13 is_stmt 1
	.loc 1 107 16 is_stmt 0
	lbu	a5,-157(s0)
	beq	a5,zero,.L16
	.loc 1 108 17 is_stmt 1
	call	relay_on
.LVL21:
.L17:
	.loc 1 112 13
	lbu	a0,-148(s0)
	call	app_callback_update_lock_button
.LVL22:
.L15:
.LBE2:
	.loc 1 116 5
	.loc 1 117 5 is_stmt 0
	addi	a0,s0,-156
	.loc 1 116 16
	sw	zero,-156(s0)
	.loc 1 117 5 is_stmt 1
	.loc 1 120 11 is_stmt 0
	li	s1,101
	.loc 1 117 5
	call	app_state_process_event
.LVL23:
	.loc 1 119 5 is_stmt 1
	.loc 1 120 5
.L18:
	.loc 1 120 11
	.loc 1 120 13 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL24:
	.loc 1 120 11
	bne	a0,zero,.L19
	.loc 1 120 37 discriminator 1
	addi	s1,s1,-1
.LVL25:
	bne	s1,zero,.L20
.LVL26:
.L19:
	.loc 1 125 5 is_stmt 1
	.loc 1 125 9 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL27:
	.loc 1 125 8
	beq	a0,zero,.L21
	.loc 1 126 9 is_stmt 1
	.loc 1 126 13 is_stmt 0
	call	app_config_has_wifi
.LVL28:
	.loc 1 126 12
	beq	a0,zero,.L22
	.loc 1 127 13 is_stmt 1
	.loc 1 127 17 is_stmt 0
	addi	a0,s0,-148
	call	app_config_load_wifi
.LVL29:
	.loc 1 127 16
	bne	a0,zero,.L22
	.loc 1 128 17 is_stmt 1
	li	a0,3
	call	app_state_set_next
.LVL30:
	.loc 1 129 17
	.loc 1 130 17 is_stmt 0
	addi	a0,s0,-156
	.loc 1 129 28
	sw	zero,-156(s0)
	.loc 1 130 17 is_stmt 1
	call	app_state_process_event
.LVL31:
	.loc 1 131 17
	addi	a1,s0,-115
	addi	a0,s0,-148
	call	app_wifi_connect
.LVL32:
.L21:
.LBB3:
	.loc 1 150 19 is_stmt 0
	lui	s5,%hi(g_event_queue)
.LBB4:
	.loc 1 181 17
	lui	s2,%hi(.LC0)
	lui	s3,%hi(.LC1)
.LBE4:
	.loc 1 149 32
	lui	s6,%hi(g_event_queue_head)
	lui	s7,%hi(g_event_queue_tail)
	.loc 1 150 19
	addi	s5,s5,%lo(g_event_queue)
.LBB5:
	.loc 1 181 17
	addi	s2,s2,%lo(.LC0)
	addi	s3,s3,%lo(.LC1)
.L44:
.LBE5:
.LBE3:
	.loc 1 144 5 is_stmt 1
.LBB11:
	.loc 1 145 9
	.loc 1 146 9
	.loc 1 147 9
	.loc 1 149 9
	.loc 1 149 32 is_stmt 0
	lw	a5,%lo(g_event_queue_head)(s6)
	.loc 1 149 12
	lw	a4,%lo(g_event_queue_tail)(s7)
	beq	a5,a4,.L23
	.loc 1 150 13 is_stmt 1
	.loc 1 150 19 is_stmt 0
	slli	a4,a5,3
	add	a4,s5,a4
	lw	a3,0(a4)
	lw	a4,4(a4)
	.loc 1 151 54
	addi	a5,a5,1
	.loc 1 150 19
	sw	a3,-156(s0)
	sw	a4,-152(s0)
	.loc 1 151 13 is_stmt 1
	.loc 1 151 59 is_stmt 0
	li	a4,10
	rem	a5,a5,a4
	.loc 1 151 32
	sw	a5,%lo(g_event_queue_head)(s6)
.L24:
	.loc 1 157 9 is_stmt 1
	.loc 1 157 37 is_stmt 0
	call	app_state_get_current
.LVL33:
	.loc 1 159 18
	lw	a5,-156(s0)
	.loc 1 159 12
	li	a4,8
	.loc 1 157 37
	mv	s1,a0
.LVL34:
	.loc 1 159 9 is_stmt 1
	.loc 1 159 12 is_stmt 0
	bne	a5,a4,.L25
	.loc 1 160 13 is_stmt 1
	call	relay_toggle
.LVL35:
	.loc 1 161 13
.L81:
	.loc 1 179 13
	.loc 1 179 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL36:
	.loc 1 179 16
	beq	a0,zero,.L27
.LBB6:
	.loc 1 180 17 is_stmt 1
	.loc 1 180 39 is_stmt 0
	call	relay_get_state
.LVL37:
	.loc 1 181 17 is_stmt 1
	mv	a5,s2
	bne	a0,zero,.L28
.LBE6:
.LBB7:
	.loc 1 163 17 is_stmt 0
	mv	a5,s3
.L28:
	.loc 1 163 17 discriminator 4
	mv	a0,a5
.LVL38:
.L75:
	call	app_mqtt_publish_state
.LVL39:
.L27:
.LBE7:
	.loc 1 165 13 is_stmt 1
	.loc 1 165 24 is_stmt 0
	sw	zero,-156(s0)
.L29:
	.loc 1 186 9 is_stmt 1
	li	a5,4
	beq	s1,a5,.L34
	bgtu	s1,a5,.L35
	li	a5,2
	beq	s1,a5,.L36
	li	a5,3
.L77:
	beq	s1,a5,.L37
.LVL40:
.L38:
	.loc 1 234 9
	li	a0,100
	call	aos_msleep
.LVL41:
.LBE11:
	.loc 1 144 11
	.loc 1 144 15 is_stmt 0
	j	.L44
.L16:
.LBB12:
	.loc 1 110 17 is_stmt 1
	call	relay_off
.LVL42:
	j	.L17
.LVL43:
.L20:
.LBE12:
	.loc 1 121 9
	li	a0,100
	call	aos_msleep
.LVL44:
	.loc 1 122 9
	j	.L18
.LVL45:
.L22:
	.loc 1 133 17
	li	a0,1
	call	app_state_set_next
.LVL46:
	.loc 1 134 17
	.loc 1 135 17 is_stmt 0
	addi	a0,s0,-156
	.loc 1 134 28
	sw	zero,-156(s0)
	.loc 1 135 17 is_stmt 1
	call	app_state_process_event
.LVL47:
	j	.L21
.L23:
.LBB13:
	.loc 1 153 13
	.loc 1 153 24 is_stmt 0
	sw	zero,-156(s0)
	.loc 1 154 13 is_stmt 1
	.loc 1 154 24 is_stmt 0
	sw	zero,-152(s0)
	j	.L24
.LVL48:
.L25:
	.loc 1 166 16 is_stmt 1
	.loc 1 166 19 is_stmt 0
	li	a4,9
	bne	a5,a4,.L30
	.loc 1 167 13 is_stmt 1
	call	relay_on
.LVL49:
	.loc 1 168 13
	.loc 1 168 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL50:
	.loc 1 168 16
	beq	a0,zero,.L27
	.loc 1 169 17 is_stmt 1
	mv	a0,s2
	j	.L75
.L30:
	.loc 1 172 16
	.loc 1 172 19 is_stmt 0
	li	a4,10
	bne	a5,a4,.L32
	.loc 1 173 13 is_stmt 1
	call	relay_off
.LVL51:
	.loc 1 174 13
	.loc 1 174 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL52:
	.loc 1 174 16
	beq	a0,zero,.L27
	.loc 1 175 17 is_stmt 1
	mv	a0,s3
	j	.L75
.L32:
	.loc 1 178 16
	.loc 1 178 19 is_stmt 0
	li	a4,11
	bne	a5,a4,.L29
	j	.L81
.L35:
	.loc 1 186 9
	li	a5,5
	j	.L77
.L36:
	.loc 1 190 17 is_stmt 1
	.loc 1 190 22 is_stmt 0
	call	app_ble_is_running
.LVL53:
	.loc 1 190 20
	bne	a0,zero,.L38
	.loc 1 191 21 is_stmt 1
	li	a0,200
	call	aos_msleep
.LVL54:
	.loc 1 192 21
	call	app_ble_start
.LVL55:
	j	.L38
.L37:
	.loc 1 196 17
	.loc 1 196 21 is_stmt 0
	call	app_ble_is_running
.LVL56:
	.loc 1 196 20
	beq	a0,zero,.L38
	.loc 1 197 21 is_stmt 1
	call	app_ble_stop
.LVL57:
	j	.L38
.L34:
	.loc 1 201 17
	.loc 1 201 21 is_stmt 0
	call	app_ble_is_running
.LVL58:
	.loc 1 201 20
	beq	a0,zero,.L41
	.loc 1 202 21 is_stmt 1
	call	app_ble_stop
.LVL59:
.L41:
.LBB8:
	.loc 1 205 21
	.loc 1 206 21
	.loc 1 207 21
	.loc 1 207 36 is_stmt 0
	call	aos_now_ms
.LVL60:
	mv	s1,a0
.LVL61:
	.loc 1 209 21 is_stmt 1
	.loc 1 209 26 is_stmt 0
	call	mqtt_if_is_connected
.LVL62:
	.loc 1 209 24
	bne	a0,zero,.L42
	.loc 1 209 52 discriminator 1
	lui	s4,%hi(.LANCHOR0)
	addi	s4,s4,%lo(.LANCHOR0)
	.loc 1 209 49 discriminator 1
	lbu	a5,0(s4)
	bne	a5,zero,.L42
.LBB9:
	.loc 1 210 25 is_stmt 1
.LVL63:
	.loc 1 211 25
	lui	a0,%hi(.LC2)
	li	a2,0
	li	a1,1883
	addi	a0,a0,%lo(.LC2)
	call	app_mqtt_start
.LVL64:
	.loc 1 212 25
	.loc 1 212 48 is_stmt 0
	li	a5,1
	sb	a5,0(s4)
	.loc 1 213 25 is_stmt 1
	.loc 1 213 43 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	s1,%lo(.LANCHOR1)(a5)
.LBE9:
	.loc 1 209 77
	j	.L38
.LVL65:
.L42:
	.loc 1 214 28 is_stmt 1
	.loc 1 214 33 is_stmt 0
	call	mqtt_if_is_connected
.LVL66:
	.loc 1 214 31
	bne	a0,zero,.L43
	.loc 1 214 56 discriminator 1
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	beq	a5,zero,.L43
	.loc 1 215 25 is_stmt 1
	.loc 1 215 33 is_stmt 0
	lui	s4,%hi(.LANCHOR1)
	addi	s4,s4,%lo(.LANCHOR1)
	lw	a4,0(s4)
	.loc 1 215 28
	li	a5,8192
	addi	a5,a5,1808
	.loc 1 215 33
	sub	a4,s1,a4
	.loc 1 215 28
	bleu	a4,a5,.L38
.LBB10:
	.loc 1 216 29 is_stmt 1
.LVL67:
	.loc 1 217 29
	lui	a0,%hi(.LC2)
	li	a2,0
	li	a1,1883
	addi	a0,a0,%lo(.LC2)
	call	app_mqtt_start
.LVL68:
	.loc 1 218 29
	.loc 1 218 47 is_stmt 0
	sw	s1,0(s4)
	j	.L38
.LVL69:
.L43:
.LBE10:
	.loc 1 220 28 is_stmt 1
	.loc 1 220 32 is_stmt 0
	call	mqtt_if_is_connected
.LVL70:
	.loc 1 220 31
	beq	a0,zero,.L38
	.loc 1 221 25 is_stmt 1
	.loc 1 221 48 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	j	.L38
.LBE8:
.LBE13:
	.cfi_endproc
.LFE9:
	.size	app_task_main, .-app_task_main
	.section	.rodata.app_task_init.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"btn_task"
	.align	2
.LC4:
	.string	"led_task"
	.align	2
.LC5:
	.string	"wifi_task"
	.align	2
.LC6:
	.string	"main_task"
	.section	.text.app_task_init,"ax",@progbits
	.align	1
	.globl	app_task_init
	.type	app_task_init, @function
app_task_init:
.LFB5:
	.loc 1 37 1 is_stmt 1
	.cfi_startproc
	.loc 1 38 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 38 5
	lui	a5,%hi(.LANCHOR2)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 37 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 38 5
	li	a2,4096
	lui	a1,%hi(.LC3)
	lui	a0,%hi(app_task_button)
	.loc 1 37 1
	.loc 1 38 5
	addi	a5,a5,%lo(.LANCHOR2)
	li	a4,5
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(app_task_button)
	call	xTaskCreate
.LVL71:
	.loc 1 39 5 is_stmt 1
	lui	a5,%hi(.LANCHOR3)
	lui	a1,%hi(.LC4)
	lui	a0,%hi(app_task_led)
	addi	a5,a5,%lo(.LANCHOR3)
	li	a4,4
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC4)
	addi	a0,a0,%lo(app_task_led)
	call	xTaskCreate
.LVL72:
	.loc 1 40 5
	lui	a5,%hi(.LANCHOR4)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(app_task_wifi)
	addi	a5,a5,%lo(.LANCHOR4)
	li	a4,3
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(app_task_wifi)
	call	xTaskCreate
.LVL73:
	.loc 1 41 5
	.loc 1 42 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 41 5
	lui	a5,%hi(.LANCHOR5)
	lui	a1,%hi(.LC6)
	lui	a0,%hi(app_task_main)
	.loc 1 42 1
	.loc 1 41 5
	addi	a5,a5,%lo(.LANCHOR5)
	li	a4,2
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC6)
	addi	a0,a0,%lo(app_task_main)
	.loc 1 42 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 41 5
	tail	xTaskCreate
.LVL74:
	.cfi_endproc
.LFE5:
	.size	app_task_init, .-app_task_init
	.section	.text.app_set_led_blink,"ax",@progbits
	.align	1
	.globl	app_set_led_blink
	.type	app_set_led_blink, @function
app_set_led_blink:
.LFB10:
	.loc 1 239 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 240 5
	.loc 1 239 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 241 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	app_set_led_blink, .-app_set_led_blink
	.globl	g_btn_filter_cnt
	.section	.sbss.g_task_button_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_task_button_handle, @object
	.size	g_task_button_handle, 4
g_task_button_handle:
	.zero	4
	.section	.sbss.g_task_led_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_task_led_handle, @object
	.size	g_task_led_handle, 4
g_task_led_handle:
	.zero	4
	.section	.sbss.g_task_main_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	g_task_main_handle, @object
	.size	g_task_main_handle, 4
g_task_main_handle:
	.zero	4
	.section	.sbss.g_task_wifi_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	g_task_wifi_handle, @object
	.size	g_task_wifi_handle, 4
g_task_wifi_handle:
	.zero	4
	.section	.sbss.mqtt_connect_attempted.1,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	mqtt_connect_attempted.1, @object
	.size	mqtt_connect_attempted.1, 1
mqtt_connect_attempted.1:
	.zero	1
	.section	.sbss.mqtt_last_attempt.0,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	mqtt_last_attempt.0, @object
	.size	mqtt_last_attempt.0, 4
mqtt_last_attempt.0:
	.zero	4
	.section	.sdata.g_btn_filter_cnt,"aw"
	.type	g_btn_filter_cnt, @object
	.size	g_btn_filter_cnt, 1
g_btn_filter_cnt:
	.byte	1
	.text
.Letext0:
	.file 2 "/home/dinhquangha/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_event/app_event.h"
	.file 5 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
	.file 6 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/app_state.h"
	.file 7 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h"
	.file 8 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/relay/relay.h"
	.file 9 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_mqtt.h"
	.file 10 "/home/dinhquangha/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 11 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/mqtt_if/mqtt_if.h"
	.file 12 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble.h"
	.file 13 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/wifi_if/wifi_if.h"
	.file 14 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h"
	.file 15 "/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/led/led.h"
	.file 16 "/home/dinhquangha/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF128
	.byte	0xc
	.4byte	.LASF129
	.4byte	.LASF130
	.4byte	.Ldebug_ranges0+0x58
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
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x85
	.byte	0x7
	.byte	0x4
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xa3
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x8
	.4byte	.LASF131
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.4byte	0x111
	.byte	0xa
	.4byte	.LASF13
	.byte	0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0xa
	.4byte	.LASF15
	.byte	0x2
	.byte	0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0xa
	.4byte	.LASF22
	.byte	0x9
	.byte	0xa
	.4byte	.LASF23
	.byte	0xa
	.byte	0xa
	.4byte	.LASF24
	.byte	0xb
	.byte	0xa
	.4byte	.LASF25
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x14
	.byte	0x3
	.4byte	0xb4
	.byte	0xb
	.byte	0x8
	.byte	0x4
	.byte	0x16
	.byte	0x9
	.4byte	0x141
	.byte	0xc
	.4byte	.LASF27
	.byte	0x4
	.byte	0x17
	.byte	0x16
	.4byte	0x111
	.byte	0
	.byte	0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0x18
	.byte	0xb
	.4byte	0x83
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x19
	.byte	0x3
	.4byte	0x11d
	.byte	0xb
	.byte	0x63
	.byte	0x5
	.byte	0xe
	.byte	0x9
	.4byte	0x17e
	.byte	0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0xf
	.byte	0xa
	.4byte	0x17e
	.byte	0
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x10
	.byte	0xa
	.4byte	0x18e
	.byte	0x21
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x11
	.byte	0x9
	.4byte	0x19e
	.byte	0x62
	.byte	0
	.byte	0xd
	.4byte	0x85
	.4byte	0x18e
	.byte	0xe
	.4byte	0x7c
	.byte	0x20
	.byte	0
	.byte	0xd
	.4byte	0x85
	.4byte	0x19e
	.byte	0xe
	.4byte	0x7c
	.byte	0x40
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.byte	0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x12
	.byte	0x3
	.4byte	0x14d
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x7
	.byte	0xe
	.4byte	0x1ea
	.byte	0xa
	.4byte	.LASF35
	.byte	0
	.byte	0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa
	.4byte	.LASF37
	.byte	0x2
	.byte	0xa
	.4byte	.LASF38
	.byte	0x3
	.byte	0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0xa
	.4byte	.LASF40
	.byte	0x5
	.byte	0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0xf
	.byte	0x3
	.4byte	0x1b1
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x21
	.byte	0x1
	.4byte	0x23b
	.byte	0xa
	.4byte	.LASF43
	.byte	0
	.byte	0xa
	.4byte	.LASF44
	.byte	0x1
	.byte	0xa
	.4byte	.LASF45
	.byte	0x2
	.byte	0xa
	.4byte	.LASF46
	.byte	0x3
	.byte	0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0xa
	.4byte	.LASF48
	.byte	0x5
	.byte	0xa
	.4byte	.LASF49
	.byte	0x6
	.byte	0xa
	.4byte	.LASF50
	.byte	0x7
	.byte	0xa
	.4byte	.LASF51
	.byte	0x8
	.byte	0
	.byte	0xb
	.byte	0x10
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.4byte	0x286
	.byte	0xf
	.string	"pin"
	.byte	0x7
	.byte	0x2f
	.byte	0xe
	.4byte	0x5b
	.byte	0
	.byte	0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x31
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.byte	0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x32
	.byte	0xd
	.4byte	0x41
	.byte	0xc
	.byte	0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x33
	.byte	0xd
	.4byte	0x41
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0x34
	.byte	0x3
	.4byte	0x23b
	.byte	0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0x36
	.byte	0x14
	.4byte	0x29e
	.byte	0x7
	.byte	0x4
	.4byte	0x2a4
	.byte	0x10
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0x37
	.byte	0x10
	.4byte	0x2b5
	.byte	0x7
	.byte	0x4
	.4byte	0x2bb
	.byte	0x11
	.4byte	0x2c6
	.byte	0x12
	.4byte	0x5b
	.byte	0
	.byte	0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x38
	.byte	0x14
	.4byte	0x2d2
	.byte	0x7
	.byte	0x4
	.4byte	0x2d8
	.byte	0x13
	.4byte	0x5b
	.4byte	0x2e7
	.byte	0x12
	.4byte	0x5b
	.byte	0
	.byte	0xb
	.byte	0x14
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.4byte	0x332
	.byte	0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.4byte	0x332
	.byte	0
	.byte	0xc
	.4byte	.LASF61
	.byte	0x7
	.byte	0x3d
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0xc
	.4byte	.LASF62
	.byte	0x7
	.byte	0x3e
	.byte	0x19
	.4byte	0x292
	.byte	0x8
	.byte	0xc
	.4byte	.LASF63
	.byte	0x7
	.byte	0x3f
	.byte	0x1b
	.4byte	0x2a9
	.byte	0xc
	.byte	0xc
	.4byte	.LASF64
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.4byte	0x2c6
	.byte	0x10
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x286
	.byte	0x3
	.4byte	.LASF65
	.byte	0x7
	.byte	0x41
	.byte	0x3
	.4byte	0x2e7
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x18
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_button_handle
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x19
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_led_handle
	.byte	0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_wifi_handle
	.byte	0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x1b
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_main_handle
	.byte	0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0x1c
	.byte	0xc
	.4byte	0x19e
	.byte	0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0x1d
	.byte	0x9
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	g_btn_filter_cnt
	.byte	0x17
	.4byte	.LASF70
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cf
	.byte	0x18
	.4byte	.LASF72
	.byte	0x1
	.byte	0xee
	.byte	0x1c
	.4byte	0x19e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x17
	.4byte	.LASF71
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x786
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0x5d
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.4byte	0x1a5
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0x60
	.byte	0x11
	.4byte	0x141
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x1a
	.4byte	.LASF76
	.byte	0x1
	.byte	0x77
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4b3
	.byte	0x1c
	.4byte	.LASF95
	.byte	0x1
	.byte	0x66
	.byte	0x14
	.4byte	0x75
	.4byte	0x449
	.byte	0x12
	.4byte	0x91
	.byte	0x12
	.4byte	0x786
	.byte	0
	.byte	0x1d
	.4byte	.LASF97
	.byte	0x1
	.byte	0x67
	.byte	0x15
	.4byte	0x45b
	.byte	0x12
	.4byte	0x19e
	.byte	0
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x68
	.byte	0x11
	.4byte	0x41
	.byte	0x3
	.byte	0x91
	.byte	0xe3,0x7e
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.4byte	0x19e
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x1e
	.4byte	.LVL20
	.4byte	0xa1f
	.4byte	0x497
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe3,0x7e
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0
	.byte	0x20
	.4byte	.LVL21
	.4byte	0xa2b
	.byte	0x20
	.4byte	.LVL22
	.4byte	0xa37
	.byte	0x20
	.4byte	.LVL42
	.4byte	0xa43
	.byte	0
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x6b2
	.byte	0x21
	.4byte	.LASF80
	.byte	0x1
	.byte	0x91
	.byte	0x1c
	.4byte	0x78c
	.byte	0x21
	.4byte	.LASF81
	.byte	0x1
	.byte	0x92
	.byte	0x14
	.4byte	0x75
	.byte	0x21
	.4byte	.LASF82
	.byte	0x1
	.byte	0x93
	.byte	0x14
	.4byte	0x75
	.byte	0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0x9d
	.byte	0x15
	.4byte	0x1ea
	.4byte	.LLST5
	.byte	0x22
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x513
	.byte	0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0xa2
	.byte	0x19
	.4byte	0x41
	.byte	0x20
	.4byte	.LVL39
	.4byte	0xa4f
	.byte	0
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x536
	.byte	0x1a
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb4
	.byte	0x19
	.4byte	0x41
	.4byte	.LLST6
	.byte	0x20
	.4byte	.LVL37
	.4byte	0xa5b
	.byte	0
	.byte	0x22
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x614
	.byte	0x14
	.4byte	.LASF86
	.byte	0x1
	.byte	0xcd
	.byte	0x20
	.4byte	0x19e
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_connect_attempted.1
	.byte	0x14
	.4byte	.LASF87
	.byte	0x1
	.byte	0xce
	.byte	0x25
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_last_attempt.0
	.byte	0x23
	.string	"now"
	.byte	0x1
	.byte	0xcf
	.byte	0x1e
	.4byte	0x5b
	.byte	0x1
	.byte	0x59
	.byte	0x22
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x5b2
	.byte	0x1a
	.4byte	.LASF88
	.byte	0x1
	.byte	0xd2
	.byte	0x25
	.4byte	0xae
	.4byte	.LLST7
	.byte	0x24
	.4byte	.LVL64
	.4byte	0xa67
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x75b
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x5ef
	.byte	0x1a
	.4byte	.LASF88
	.byte	0x1
	.byte	0xd8
	.byte	0x29
	.4byte	0xae
	.4byte	.LLST8
	.byte	0x24
	.4byte	.LVL68
	.4byte	0xa67
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x75b
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL60
	.4byte	0xa73
	.byte	0x20
	.4byte	.LVL62
	.4byte	0xa80
	.byte	0x20
	.4byte	.LVL66
	.4byte	0xa80
	.byte	0x20
	.4byte	.LVL70
	.4byte	0xa80
	.byte	0
	.byte	0x20
	.4byte	.LVL33
	.4byte	0xa8c
	.byte	0x20
	.4byte	.LVL35
	.4byte	0xa98
	.byte	0x20
	.4byte	.LVL36
	.4byte	0xa80
	.byte	0x1e
	.4byte	.LVL41
	.4byte	0xaa4
	.4byte	0x643
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x20
	.4byte	.LVL49
	.4byte	0xa2b
	.byte	0x20
	.4byte	.LVL50
	.4byte	0xa80
	.byte	0x20
	.4byte	.LVL51
	.4byte	0xa43
	.byte	0x20
	.4byte	.LVL52
	.4byte	0xa80
	.byte	0x20
	.4byte	.LVL53
	.4byte	0xab1
	.byte	0x1e
	.4byte	.LVL54
	.4byte	0xaa4
	.4byte	0x684
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0x20
	.4byte	.LVL55
	.4byte	0xabd
	.byte	0x20
	.4byte	.LVL56
	.4byte	0xab1
	.byte	0x20
	.4byte	.LVL57
	.4byte	0xac9
	.byte	0x20
	.4byte	.LVL58
	.4byte	0xab1
	.byte	0x20
	.4byte	.LVL59
	.4byte	0xac9
	.byte	0
	.byte	0x20
	.4byte	.LVL18
	.4byte	0xad5
	.byte	0x20
	.4byte	.LVL19
	.4byte	0xae1
	.byte	0x1e
	.4byte	.LVL23
	.4byte	0xaed
	.4byte	0x6d9
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x20
	.4byte	.LVL24
	.4byte	0xaf9
	.byte	0x20
	.4byte	.LVL27
	.4byte	0xaf9
	.byte	0x20
	.4byte	.LVL28
	.4byte	0xb05
	.byte	0x1e
	.4byte	.LVL29
	.4byte	0xb11
	.4byte	0x709
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0
	.byte	0x1e
	.4byte	.LVL30
	.4byte	0xb1d
	.4byte	0x71c
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1e
	.4byte	.LVL31
	.4byte	0xaed
	.4byte	0x731
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x1e
	.4byte	.LVL32
	.4byte	0xb29
	.4byte	0x74d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x8d,0x7f
	.byte	0
	.byte	0x1e
	.4byte	.LVL44
	.4byte	0xaa4
	.4byte	0x761
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x1e
	.4byte	.LVL46
	.4byte	0xb1d
	.4byte	0x774
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x24
	.4byte	.LVL47
	.4byte	0xaed
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x19e
	.byte	0xd
	.4byte	0x141
	.4byte	0x79c
	.byte	0xe
	.4byte	0x7c
	.byte	0x9
	.byte	0
	.byte	0x17
	.4byte	.LASF89
	.byte	0x1
	.byte	0x58
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d4
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0x58
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x25
	.4byte	.LVL16
	.4byte	0xb35
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x828
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0x4a
	.byte	0x19
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x20
	.4byte	.LVL10
	.4byte	0xb41
	.byte	0x20
	.4byte	.LVL11
	.4byte	0xb4d
	.byte	0x20
	.4byte	.LVL12
	.4byte	0xb59
	.byte	0x20
	.4byte	.LVL13
	.4byte	0xaa4
	.byte	0x20
	.4byte	.LVL14
	.4byte	0xb65
	.byte	0
	.byte	0x17
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x8f0
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2c
	.byte	0x1c
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2e
	.byte	0x19
	.4byte	0x8f0
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2f
	.byte	0x16
	.4byte	0x338
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1e
	.4byte	.LVL2
	.4byte	0xb71
	.4byte	0x889
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL3
	.4byte	0xb7d
	.4byte	0x89d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1e
	.4byte	.LVL4
	.4byte	0xb89
	.4byte	0x8b5
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL5
	.4byte	0xb89
	.4byte	0x8cd
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0xb95
	.4byte	0x8e0
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x24
	.4byte	.LVL7
	.4byte	0xaa4
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x286
	.4byte	0x900
	.byte	0xe
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF94
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x9fb
	.byte	0x1e
	.4byte	.LVL71
	.4byte	0xba1
	.4byte	0x950
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_button
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x1e
	.4byte	.LVL72
	.4byte	0xba1
	.4byte	0x98a
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_led
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1e
	.4byte	.LVL73
	.4byte	0xba1
	.4byte	0x9c4
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_wifi
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x25
	.4byte	.LVL74
	.4byte	0xba1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_main
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x32
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF132
	.byte	0x1
	.byte	0x1f
	.byte	0x11
	.4byte	0x5b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xa1f
	.byte	0x20
	.4byte	.LVL8
	.4byte	0xa73
	.byte	0
	.byte	0x27
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x1
	.byte	0x66
	.byte	0x14
	.byte	0x27
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x8
	.byte	0x7
	.byte	0x6
	.byte	0x27
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x1
	.byte	0x67
	.byte	0x15
	.byte	0x27
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x8
	.byte	0x8
	.byte	0x6
	.byte	0x27
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x9
	.byte	0x13
	.byte	0x5
	.byte	0x27
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x8
	.byte	0xa
	.byte	0x9
	.byte	0x27
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x9
	.byte	0xa
	.byte	0x5
	.byte	0x28
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x1ef
	.byte	0xf
	.byte	0x27
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xb
	.byte	0x22
	.byte	0x5
	.byte	0x27
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x6
	.byte	0x19
	.byte	0xd
	.byte	0x27
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x8
	.byte	0x9
	.byte	0x6
	.byte	0x28
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x207
	.byte	0xa
	.byte	0x27
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xc
	.byte	0x11
	.byte	0x5
	.byte	0x27
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xc
	.byte	0xf
	.byte	0x5
	.byte	0x27
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xc
	.byte	0x10
	.byte	0x5
	.byte	0x27
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x6
	.byte	0x18
	.byte	0x6
	.byte	0x27
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x9
	.byte	0x7
	.byte	0x5
	.byte	0x27
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x6
	.byte	0x1c
	.byte	0xd
	.byte	0x27
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xd
	.byte	0x10
	.byte	0x5
	.byte	0x27
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x5
	.byte	0x18
	.byte	0x5
	.byte	0x27
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x5
	.byte	0x15
	.byte	0x5
	.byte	0x27
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x6
	.byte	0x1b
	.byte	0x6
	.byte	0x27
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xe
	.byte	0xd
	.byte	0x5
	.byte	0x27
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xe
	.byte	0x16
	.byte	0x6
	.byte	0x27
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xf
	.byte	0x5
	.byte	0x6
	.byte	0x27
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xd
	.byte	0xf
	.byte	0x5
	.byte	0x27
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xf
	.byte	0x6
	.byte	0x6
	.byte	0x27
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xf
	.byte	0x8
	.byte	0x6
	.byte	0x27
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x10
	.byte	0x10
	.byte	0x5
	.byte	0x27
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x7
	.byte	0x4b
	.byte	0x6
	.byte	0x27
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x7
	.byte	0x59
	.byte	0x6
	.byte	0x27
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x7
	.byte	0x51
	.byte	0x6
	.byte	0x28
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x14a
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE7
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"password"
.LASF86:
	.string	"mqtt_connect_attempted"
.LASF104:
	.string	"app_state_get_current"
.LASF73:
	.string	"params"
.LASF103:
	.string	"mqtt_if_is_connected"
.LASF131:
	.string	"tskTaskControlBlock"
.LASF53:
	.string	"idle_level"
.LASF66:
	.string	"g_task_button_handle"
.LASF23:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF10:
	.string	"unsigned int"
.LASF111:
	.string	"app_mqtt_init"
.LASF87:
	.string	"mqtt_last_attempt"
.LASF82:
	.string	"g_event_queue_tail"
.LASF80:
	.string	"g_event_queue"
.LASF117:
	.string	"app_wifi_connect"
.LASF34:
	.string	"wifi_config_t"
.LASF128:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF116:
	.string	"app_state_set_next"
.LASF63:
	.string	"btn_initialize"
.LASF45:
	.string	"APP_BTN_EVT_HOLD"
.LASF42:
	.string	"app_state_t"
.LASF26:
	.string	"app_event_type_t"
.LASF99:
	.string	"app_mqtt_publish_state"
.LASF114:
	.string	"app_config_has_wifi"
.LASF35:
	.string	"APP_STATE_INIT"
.LASF20:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF109:
	.string	"app_ble_stop"
.LASF21:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF84:
	.string	"g_led_blink_enable"
.LASF70:
	.string	"app_set_led_blink"
.LASF115:
	.string	"app_config_load_wifi"
.LASF7:
	.string	"uint32_t"
.LASF13:
	.string	"APP_EVENT_NONE"
.LASF69:
	.string	"g_task_main_handle"
.LASF81:
	.string	"g_event_queue_head"
.LASF75:
	.string	"event"
.LASF132:
	.string	"app_get_tick_ms"
.LASF9:
	.string	"long long unsigned int"
.LASF74:
	.string	"wifi_cfg"
.LASF22:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF72:
	.string	"enable"
.LASF101:
	.string	"app_mqtt_start"
.LASF94:
	.string	"app_task_init"
.LASF57:
	.string	"app_btn_get_tick_cb"
.LASF89:
	.string	"app_task_wifi"
.LASF102:
	.string	"aos_now_ms"
.LASF33:
	.string	"_Bool"
.LASF49:
	.string	"APP_BTN_EVT_IDLE"
.LASF19:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF85:
	.string	"relay_state"
.LASF118:
	.string	"app_wifi_task"
.LASF61:
	.string	"btn_count"
.LASF41:
	.string	"APP_STATE_MAX"
.LASF15:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF30:
	.string	"ssid"
.LASF11:
	.string	"char"
.LASF24:
	.string	"APP_EVENT_RELAY_STATE_CHANGED"
.LASF121:
	.string	"led_on"
.LASF28:
	.string	"data"
.LASF107:
	.string	"app_ble_is_running"
.LASF71:
	.string	"app_task_main"
.LASF127:
	.string	"xTaskCreate"
.LASF54:
	.string	"debounce_val"
.LASF6:
	.string	"uint8_t"
.LASF126:
	.string	"app_btn_scan"
.LASF62:
	.string	"get_tick_cb"
.LASF90:
	.string	"app_task_led"
.LASF18:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF78:
	.string	"lock_button"
.LASF59:
	.string	"app_btn_get_level_cb"
.LASF3:
	.string	"long long int"
.LASF47:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF129:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
.LASF110:
	.string	"app_state_init"
.LASF113:
	.string	"wifi_if_is_mgmr_ready"
.LASF25:
	.string	"APP_EVENT_MAX"
.LASF95:
	.string	"app_config_load_relay_settings"
.LASF91:
	.string	"app_task_button"
.LASF50:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF12:
	.string	"TaskHandle_t"
.LASF77:
	.string	"default_state"
.LASF14:
	.string	"APP_EVENT_BUTTON_HOLD"
.LASF40:
	.string	"APP_STATE_WIFI_FAILED"
.LASF123:
	.string	"bl_gpio_enable_input"
.LASF29:
	.string	"app_event_t"
.LASF52:
	.string	"last_state"
.LASF44:
	.string	"APP_BTN_EVT_RELEASED"
.LASF119:
	.string	"led_init"
.LASF112:
	.string	"app_state_process_event"
.LASF96:
	.string	"relay_on"
.LASF36:
	.string	"APP_STATE_CHECK_FLASH"
.LASF60:
	.string	"config"
.LASF93:
	.string	"btn_cfg"
.LASF58:
	.string	"app_btn_initialize_cb"
.LASF1:
	.string	"short int"
.LASF68:
	.string	"g_task_wifi_handle"
.LASF125:
	.string	"app_btn_register_callback"
.LASF2:
	.string	"long int"
.LASF79:
	.string	"g_btn_filter_cnt"
.LASF39:
	.string	"APP_STATE_WIFI_CONNECTED"
.LASF55:
	.string	"debounce_counter"
.LASF46:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF37:
	.string	"APP_STATE_BLE_CONFIG"
.LASF48:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF130:
	.string	"/home/dinhquangha/Ai-Thinker-WB2/datic/build_out/app_task"
.LASF83:
	.string	"current_state"
.LASF38:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF120:
	.string	"wifi_if_is_connected"
.LASF43:
	.string	"APP_BTN_EVT_PRESSED"
.LASF67:
	.string	"g_task_led_handle"
.LASF8:
	.string	"long unsigned int"
.LASF98:
	.string	"relay_off"
.LASF124:
	.string	"app_btn_initialize"
.LASF65:
	.string	"app_btn_config_t"
.LASF106:
	.string	"aos_msleep"
.LASF108:
	.string	"app_ble_start"
.LASF27:
	.string	"type"
.LASF76:
	.string	"wait_count"
.LASF4:
	.string	"unsigned char"
.LASF64:
	.string	"btn_read"
.LASF56:
	.string	"app_btn_hw_config_t"
.LASF92:
	.string	"btn_config"
.LASF51:
	.string	"APP_BTN_EVT_MAX"
.LASF16:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF32:
	.string	"is_valid"
.LASF88:
	.string	"mqtt_broker"
.LASF100:
	.string	"relay_get_state"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF122:
	.string	"led_toggle"
.LASF17:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF97:
	.string	"app_callback_update_lock_button"
.LASF105:
	.string	"relay_toggle"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
