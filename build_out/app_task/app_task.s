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
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
	.loc 1 46 1
	.cfi_startproc
.LVL0:
	.loc 1 47 5
	.loc 1 49 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 52 23
	li	a5,4
	.loc 1 49 25
	sw	zero,-48(s0)
	.loc 1 50 22
	sw	zero,-32(s0)
	.loc 1 52 23
	sw	a5,-52(s0)
	.loc 1 53 30
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 56 30
	sb	a5,-48(s0)
	.loc 1 59 23
	sb	a5,-32(s0)
	.loc 1 60 25
	lui	a5,%hi(app_get_tick_ms)
	.loc 1 58 20
	addi	a4,s0,-52
	.loc 1 60 25
	addi	a5,a5,%lo(app_get_tick_ms)
	.loc 1 64 5
	li	a2,0
	li	a1,0
	li	a0,4
.LVL1:
	.loc 1 58 20
	sw	a4,-36(s0)
	.loc 1 60 25
	sw	a5,-28(s0)
	.loc 1 49 25
	sw	zero,-40(s0)
	.loc 1 50 5 is_stmt 1
	.loc 1 50 22 is_stmt 0
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	.loc 1 52 5 is_stmt 1
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 55 5
	.loc 1 56 5
	.loc 1 58 5
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 62 5
	.loc 1 64 5
	call	bl_gpio_enable_input
.LVL2:
	.loc 1 65 5
	.loc 1 65 22 is_stmt 0
	lui	a5,%hi(bl_gpio_input_get_value)
	addi	a5,a5,%lo(bl_gpio_input_get_value)
	.loc 1 67 5
	addi	a0,s0,-36
	.loc 1 65 22
	sw	a5,-20(s0)
	.loc 1 67 5 is_stmt 1
	call	app_btn_initialize
.LVL3:
	.loc 1 68 5
	lui	a1,%hi(app_button_hold_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_hold_callback)
	li	a0,2
	call	app_btn_register_callback
.LVL4:
	.loc 1 69 5
	lui	a1,%hi(app_button_press_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_press_callback)
	li	a0,0
	call	app_btn_register_callback
.LVL5:
.L2:
	.loc 1 71 5 discriminator 1
	.loc 1 72 9 discriminator 1
	li	a0,0
	call	app_btn_scan
.LVL6:
	.loc 1 73 9 discriminator 1
	li	a0,20
	call	aos_msleep
.LVL7:
	.loc 1 71 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE6:
	.size	app_task_button, .-app_task_button
	.section	.text.app_get_tick_ms,"ax",@progbits
	.align	1
	.type	app_get_tick_ms, @function
app_get_tick_ms:
.LFB4:
	.loc 1 33 1
	.cfi_startproc
	.loc 1 34 5
	.loc 1 33 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 34 12
	call	aos_now_ms
.LVL8:
	.loc 1 35 1
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
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 79 5
	.loc 1 81 5
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 81 5
	call	led_init
.LVL10:
.L7:
	.loc 1 83 5 is_stmt 1
	.loc 1 84 9
	.loc 1 84 13 is_stmt 0
	call	app_wifi_is_connected
.LVL11:
	.loc 1 84 12
	beq	a0,zero,.L8
	.loc 1 85 13 is_stmt 1
	call	led_on
.LVL12:
	.loc 1 86 13
	li	a0,1000
.L11:
	.loc 1 89 13 is_stmt 0
	call	aos_msleep
.LVL13:
	j	.L7
.L8:
	.loc 1 88 13 is_stmt 1
	call	led_toggle
.LVL14:
	.loc 1 89 13
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
	.loc 1 95 1
	.cfi_startproc
.LVL15:
	.loc 1 96 5
	.loc 1 98 5
	.loc 1 95 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 99 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 98 5
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
	.string	"[APP] Applying default relay state: %s\r\n"
	.align	2
.LC3:
	.string	"172.20.10.3"
	.align	2
.LC4:
	.string	"[APP] Attempting MQTT connection to %s:1883\r\n"
	.align	2
.LC5:
	.string	"[APP] Make sure MQTT broker is running on laptop!\r\n"
	.align	2
.LC6:
	.string	"[APP] Retrying MQTT connection to %s:1883\r\n"
	.section	.text.app_task_main,"ax",@progbits
	.align	1
	.globl	app_task_main
	.type	app_task_main, @function
app_task_main:
.LFB9:
	.loc 1 102 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 103 5
	.loc 1 105 5
	.loc 1 106 5
	.loc 1 102 1 is_stmt 0
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
	sw	s8,120(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 106 17
	sw	zero,-156(s0)
	sw	zero,-152(s0)
	.loc 1 108 5 is_stmt 1
	call	app_state_init
.LVL18:
	.loc 1 109 5
	call	app_mqtt_init
.LVL19:
.LBB2:
	.loc 1 113 9
	.loc 1 114 9
	.loc 1 115 9
	.loc 1 117 13 is_stmt 0
	addi	a1,s0,-148
	addi	a0,s0,-157
	.loc 1 115 17
	sb	zero,-157(s0)
	.loc 1 116 8 is_stmt 1
	.loc 1 116 13 is_stmt 0
	sb	zero,-148(s0)
	.loc 1 117 9 is_stmt 1
	.loc 1 117 13 is_stmt 0
	call	app_config_load_relay_settings
.LVL20:
	.loc 1 117 12
	bne	a0,zero,.L15
	.loc 1 118 13 is_stmt 1
	lbu	a5,-157(s0)
	bne	a5,zero,.L46
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
.L16:
	.loc 1 118 13 is_stmt 0 discriminator 4
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL21:
	.loc 1 119 13 is_stmt 1 discriminator 4
	.loc 1 119 16 is_stmt 0 discriminator 4
	lbu	a5,-157(s0)
	beq	a5,zero,.L17
	.loc 1 120 17 is_stmt 1
	call	relay_on
.LVL22:
.L18:
	.loc 1 125 13
	lbu	a0,-148(s0)
	call	app_callback_update_lock_button
.LVL23:
.L15:
.LBE2:
	.loc 1 129 5
	.loc 1 130 5 is_stmt 0
	addi	a0,s0,-156
	.loc 1 129 16
	sw	zero,-156(s0)
	.loc 1 130 5 is_stmt 1
	.loc 1 133 11 is_stmt 0
	li	s1,101
	.loc 1 130 5
	call	app_state_process_event
.LVL24:
	.loc 1 132 5 is_stmt 1
	.loc 1 133 5
.L19:
	.loc 1 133 11
	.loc 1 133 13 is_stmt 0
	call	app_wifi_is_mgmr_ready
.LVL25:
	.loc 1 133 11
	bne	a0,zero,.L20
	.loc 1 133 38 discriminator 1
	addi	s1,s1,-1
.LVL26:
	bne	s1,zero,.L21
.LVL27:
.L20:
	.loc 1 138 5 is_stmt 1
	.loc 1 138 9 is_stmt 0
	call	app_wifi_is_mgmr_ready
.LVL28:
	.loc 1 138 8
	beq	a0,zero,.L22
	.loc 1 139 9 is_stmt 1
	.loc 1 139 13 is_stmt 0
	call	app_config_has_wifi
.LVL29:
	.loc 1 139 12
	beq	a0,zero,.L23
	.loc 1 140 13 is_stmt 1
	.loc 1 140 17 is_stmt 0
	addi	a0,s0,-148
	call	app_config_load_wifi
.LVL30:
	.loc 1 140 16
	bne	a0,zero,.L23
	.loc 1 141 17 is_stmt 1
	li	a0,3
	call	app_state_set_next
.LVL31:
	.loc 1 142 17
	.loc 1 143 17 is_stmt 0
	addi	a0,s0,-156
	.loc 1 142 28
	sw	zero,-156(s0)
	.loc 1 143 17 is_stmt 1
	call	app_state_process_event
.LVL32:
	.loc 1 144 17
	addi	a1,s0,-115
	addi	a0,s0,-148
	call	app_wifi_connect
.LVL33:
.L22:
.LBB3:
	.loc 1 163 19 is_stmt 0
	lui	s5,%hi(g_event_queue)
.LBB4:
	.loc 1 196 17
	lui	s2,%hi(.LC0)
	lui	s3,%hi(.LC1)
.LBE4:
	.loc 1 162 32
	lui	s6,%hi(g_event_queue_head)
	lui	s7,%hi(g_event_queue_tail)
	.loc 1 163 19
	addi	s5,s5,%lo(g_event_queue)
.LBB5:
	.loc 1 196 17
	addi	s2,s2,%lo(.LC0)
	addi	s3,s3,%lo(.LC1)
.L45:
.LBE5:
.LBE3:
	.loc 1 156 5 is_stmt 1
.LBB11:
	.loc 1 158 9
	.loc 1 159 9
	.loc 1 160 9
	.loc 1 162 9
	.loc 1 162 32 is_stmt 0
	lw	a5,%lo(g_event_queue_head)(s6)
	.loc 1 162 12
	lw	a4,%lo(g_event_queue_tail)(s7)
	beq	a5,a4,.L24
	.loc 1 163 13 is_stmt 1
	.loc 1 163 19 is_stmt 0
	slli	a4,a5,3
	add	a4,s5,a4
	lw	a3,0(a4)
	lw	a4,4(a4)
	.loc 1 164 54
	addi	a5,a5,1
	.loc 1 163 19
	sw	a3,-156(s0)
	sw	a4,-152(s0)
	.loc 1 164 13 is_stmt 1
	.loc 1 164 59 is_stmt 0
	li	a4,10
	rem	a5,a5,a4
	.loc 1 164 32
	sw	a5,%lo(g_event_queue_head)(s6)
.L25:
	.loc 1 170 9 is_stmt 1
	.loc 1 170 37 is_stmt 0
	call	app_state_get_current
.LVL34:
	.loc 1 173 18
	lw	a5,-156(s0)
	.loc 1 173 12
	li	a4,8
	.loc 1 170 37
	mv	s1,a0
.LVL35:
	.loc 1 173 9 is_stmt 1
	.loc 1 173 12 is_stmt 0
	bne	a5,a4,.L26
	.loc 1 174 13 is_stmt 1
	call	relay_toggle
.LVL36:
	.loc 1 175 13
.L83:
	.loc 1 194 13
	.loc 1 194 17 is_stmt 0
	call	app_mqtt_is_connected
.LVL37:
	.loc 1 194 16
	beq	a0,zero,.L28
.LBB6:
	.loc 1 195 17 is_stmt 1
	.loc 1 195 39 is_stmt 0
	call	relay_get_state
.LVL38:
	.loc 1 196 17 is_stmt 1
	mv	a5,s2
	bne	a0,zero,.L29
.LBE6:
.LBB7:
	.loc 1 177 17 is_stmt 0
	mv	a5,s3
.L29:
	.loc 1 177 17 discriminator 4
	mv	a0,a5
.LVL39:
.L77:
	call	app_mqtt_publish_state
.LVL40:
.L28:
.LBE7:
	.loc 1 179 13 is_stmt 1
	.loc 1 179 24 is_stmt 0
	sw	zero,-156(s0)
.L30:
	.loc 1 201 9 is_stmt 1
	li	a5,4
	beq	s1,a5,.L35
	bgtu	s1,a5,.L36
	li	a5,2
	beq	s1,a5,.L37
	li	a5,3
.L79:
	beq	s1,a5,.L38
.LVL41:
.L39:
	.loc 1 259 9
	li	a0,100
	call	aos_msleep
.LVL42:
.LBE11:
	.loc 1 156 11
	.loc 1 156 15 is_stmt 0
	j	.L45
.L46:
.LBB12:
	.loc 1 118 13
	lui	a1,%hi(.LC0)
	addi	a1,a1,%lo(.LC0)
	j	.L16
.L17:
	.loc 1 122 17 is_stmt 1
	call	relay_off
.LVL43:
	j	.L18
.LVL44:
.L21:
.LBE12:
	.loc 1 134 9
	li	a0,100
	call	aos_msleep
.LVL45:
	.loc 1 135 9
	j	.L19
.LVL46:
.L23:
	.loc 1 146 17
	li	a0,1
	call	app_state_set_next
.LVL47:
	.loc 1 147 17
	.loc 1 148 17 is_stmt 0
	addi	a0,s0,-156
	.loc 1 147 28
	sw	zero,-156(s0)
	.loc 1 148 17 is_stmt 1
	call	app_state_process_event
.LVL48:
	j	.L22
.L24:
.LBB13:
	.loc 1 166 13
	.loc 1 166 24 is_stmt 0
	sw	zero,-156(s0)
	.loc 1 167 13 is_stmt 1
	.loc 1 167 24 is_stmt 0
	sw	zero,-152(s0)
	j	.L25
.LVL49:
.L26:
	.loc 1 180 16 is_stmt 1
	.loc 1 180 19 is_stmt 0
	li	a4,9
	bne	a5,a4,.L31
	.loc 1 181 13 is_stmt 1
	call	relay_on
.LVL50:
	.loc 1 182 13
	.loc 1 182 17 is_stmt 0
	call	app_mqtt_is_connected
.LVL51:
	.loc 1 182 16
	beq	a0,zero,.L28
	.loc 1 183 17 is_stmt 1
	mv	a0,s2
	j	.L77
.L31:
	.loc 1 186 16
	.loc 1 186 19 is_stmt 0
	li	a4,10
	bne	a5,a4,.L33
	.loc 1 187 13 is_stmt 1
	call	relay_off
.LVL52:
	.loc 1 188 13
	.loc 1 188 17 is_stmt 0
	call	app_mqtt_is_connected
.LVL53:
	.loc 1 188 16
	beq	a0,zero,.L28
	.loc 1 189 17 is_stmt 1
	mv	a0,s3
	j	.L77
.L33:
	.loc 1 192 16
	.loc 1 192 19 is_stmt 0
	li	a4,11
	bne	a5,a4,.L30
	j	.L83
.L36:
	.loc 1 201 9
	li	a5,5
	j	.L79
.L37:
.LBB8:
	.loc 1 206 17 is_stmt 1
	.loc 1 206 22 is_stmt 0
	call	app_ble_is_running
.LVL54:
	.loc 1 206 20
	bne	a0,zero,.L39
	.loc 1 207 21 is_stmt 1
	li	a0,200
	call	aos_msleep
.LVL55:
	.loc 1 208 21
	call	app_ble_start
.LVL56:
	j	.L39
.L38:
	.loc 1 213 17
	.loc 1 213 21 is_stmt 0
	call	app_ble_is_running
.LVL57:
	.loc 1 213 20
	beq	a0,zero,.L39
	.loc 1 214 21 is_stmt 1
	call	app_ble_stop
.LVL58:
	j	.L39
.L35:
	.loc 1 219 17
	.loc 1 219 21 is_stmt 0
	call	app_ble_is_running
.LVL59:
	.loc 1 219 20
	beq	a0,zero,.L42
	.loc 1 220 21 is_stmt 1
	call	app_ble_stop
.LVL60:
.L42:
	.loc 1 223 17
	.loc 1 224 17
	.loc 1 225 17
	.loc 1 225 32 is_stmt 0
	call	aos_now_ms
.LVL61:
	mv	s1,a0
.LVL62:
	.loc 1 227 17 is_stmt 1
	.loc 1 227 22 is_stmt 0
	call	app_mqtt_is_connected
.LVL63:
	.loc 1 227 20
	bne	a0,zero,.L43
	.loc 1 227 49 discriminator 1
	lui	s4,%hi(.LANCHOR0)
	addi	s4,s4,%lo(.LANCHOR0)
	.loc 1 227 46 discriminator 1
	lbu	a5,0(s4)
	bne	a5,zero,.L43
.LBB9:
	.loc 1 229 21 is_stmt 1
.LVL64:
	.loc 1 230 21
	lui	s8,%hi(.LC3)
	lui	a0,%hi(.LC4)
	addi	a1,s8,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL65:
	.loc 1 231 21
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL66:
	.loc 1 232 21
	li	a2,0
	li	a1,1883
	addi	a0,s8,%lo(.LC3)
	call	app_mqtt_start
.LVL67:
	.loc 1 233 21
	.loc 1 233 44 is_stmt 0
	li	a5,1
	sb	a5,0(s4)
	.loc 1 234 21 is_stmt 1
	.loc 1 234 39 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	s1,%lo(.LANCHOR1)(a5)
.LBE9:
	.loc 1 227 74
	j	.L39
.LVL68:
.L43:
	.loc 1 235 24 is_stmt 1
	.loc 1 235 29 is_stmt 0
	call	app_mqtt_is_connected
.LVL69:
	.loc 1 235 27
	bne	a0,zero,.L44
	.loc 1 235 53 discriminator 1
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	beq	a5,zero,.L44
	.loc 1 237 21 is_stmt 1
	.loc 1 237 29 is_stmt 0
	lui	s4,%hi(.LANCHOR1)
	addi	s4,s4,%lo(.LANCHOR1)
	lw	a4,0(s4)
	.loc 1 237 24
	li	a5,8192
	addi	a5,a5,1808
	.loc 1 237 29
	sub	a4,s1,a4
	.loc 1 237 24
	bleu	a4,a5,.L39
.LBB10:
	.loc 1 238 25 is_stmt 1
.LVL70:
	.loc 1 239 25
	lui	s8,%hi(.LC3)
	lui	a0,%hi(.LC6)
	addi	a1,s8,%lo(.LC3)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL71:
	.loc 1 240 25
	li	a2,0
	li	a1,1883
	addi	a0,s8,%lo(.LC3)
	call	app_mqtt_start
.LVL72:
	.loc 1 241 25
	.loc 1 241 43 is_stmt 0
	sw	s1,0(s4)
	j	.L39
.LVL73:
.L44:
.LBE10:
	.loc 1 243 24 is_stmt 1
	.loc 1 243 28 is_stmt 0
	call	app_mqtt_is_connected
.LVL74:
	.loc 1 243 27
	beq	a0,zero,.L39
	.loc 1 245 21 is_stmt 1
	.loc 1 245 44 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	j	.L39
.LBE8:
.LBE13:
	.cfi_endproc
.LFE9:
	.size	app_task_main, .-app_task_main
	.section	.rodata.app_task_init.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"btn_task"
	.align	2
.LC8:
	.string	"led_task"
	.align	2
.LC9:
	.string	"wifi_task"
	.align	2
.LC10:
	.string	"main_task"
	.section	.text.app_task_init,"ax",@progbits
	.align	1
	.globl	app_task_init
	.type	app_task_init, @function
app_task_init:
.LFB5:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
	.loc 1 39 5
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 39 5
	lui	a5,%hi(.LANCHOR2)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 38 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 39 5
	li	a2,4096
	lui	a1,%hi(.LC7)
	lui	a0,%hi(app_task_button)
	.loc 1 38 1
	.loc 1 39 5
	addi	a5,a5,%lo(.LANCHOR2)
	li	a4,5
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC7)
	addi	a0,a0,%lo(app_task_button)
	call	xTaskCreate
.LVL75:
	.loc 1 40 5 is_stmt 1
	lui	a5,%hi(.LANCHOR3)
	lui	a1,%hi(.LC8)
	lui	a0,%hi(app_task_led)
	addi	a5,a5,%lo(.LANCHOR3)
	li	a4,4
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(app_task_led)
	call	xTaskCreate
.LVL76:
	.loc 1 41 5
	lui	a5,%hi(.LANCHOR4)
	lui	a1,%hi(.LC9)
	lui	a0,%hi(app_task_wifi)
	addi	a5,a5,%lo(.LANCHOR4)
	li	a4,3
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC9)
	addi	a0,a0,%lo(app_task_wifi)
	call	xTaskCreate
.LVL77:
	.loc 1 42 5
	.loc 1 43 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 42 5
	lui	a5,%hi(.LANCHOR5)
	lui	a1,%hi(.LC10)
	lui	a0,%hi(app_task_main)
	.loc 1 43 1
	.loc 1 42 5
	addi	a5,a5,%lo(.LANCHOR5)
	li	a4,2
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC10)
	addi	a0,a0,%lo(app_task_main)
	.loc 1 43 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 42 5
	tail	xTaskCreate
.LVL78:
	.cfi_endproc
.LFE5:
	.size	app_task_init, .-app_task_init
	.section	.text.app_set_led_blink,"ax",@progbits
	.align	1
	.globl	app_set_led_blink
	.type	app_set_led_blink, @function
app_set_led_blink:
.LFB10:
	.loc 1 264 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 1 265 5
	.loc 1 264 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 266 1
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
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_callback/../app_event/app_event.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_wifi/../app_config/app_config.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/app_state.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/relay/relay.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_mqtt/app_mqtt.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_ble/app_ble.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_wifi/app_wifi.h"
	.file 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/led/led.h"
	.file 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc27
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF129
	.byte	0xc
	.4byte	.LASF130
	.4byte	.LASF131
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
	.4byte	.LASF132
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
	.byte	0x17
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_button_handle
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x18
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_led_handle
	.byte	0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x19
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_wifi_handle
	.byte	0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x1a
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
	.byte	0x1e
	.byte	0x9
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	g_btn_filter_cnt
	.byte	0x17
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x107
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d1
	.byte	0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x107
	.byte	0x1c
	.4byte	0x19e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x19
	.4byte	.LASF71
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x7f6
	.byte	0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x65
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x69
	.byte	0x13
	.4byte	0x1a5
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0x6a
	.byte	0x11
	.4byte	0x141
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x84
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4cc
	.byte	0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0x71
	.byte	0x14
	.4byte	0x75
	.4byte	0x44b
	.byte	0x12
	.4byte	0x91
	.byte	0x12
	.4byte	0x7f6
	.byte	0
	.byte	0x1e
	.4byte	.LASF98
	.byte	0x1
	.byte	0x72
	.byte	0x15
	.4byte	0x45d
	.byte	0x12
	.4byte	0x19e
	.byte	0
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.byte	0x73
	.byte	0x11
	.4byte	0x41
	.byte	0x3
	.byte	0x91
	.byte	0xe3,0x7e
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x19e
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x1f
	.4byte	.LVL20
	.4byte	0xa8f
	.4byte	0x499
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe3,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0
	.byte	0x1f
	.4byte	.LVL21
	.4byte	0xa9b
	.4byte	0x4b0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x21
	.4byte	.LVL22
	.4byte	0xaa7
	.byte	0x21
	.4byte	.LVL23
	.4byte	0xab3
	.byte	0x21
	.4byte	.LVL43
	.4byte	0xabf
	.byte	0
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x722
	.byte	0x22
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9e
	.byte	0x1c
	.4byte	0x7fc
	.byte	0x22
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9f
	.byte	0x14
	.4byte	0x75
	.byte	0x22
	.4byte	.LASF82
	.byte	0x1
	.byte	0xa0
	.byte	0x14
	.4byte	0x75
	.byte	0x1b
	.4byte	.LASF83
	.byte	0x1
	.byte	0xaa
	.byte	0x15
	.4byte	0x1ea
	.4byte	.LLST5
	.byte	0x23
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x52c
	.byte	0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb0
	.byte	0x19
	.4byte	0x41
	.byte	0x21
	.4byte	.LVL40
	.4byte	0xacb
	.byte	0
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x54f
	.byte	0x1b
	.4byte	.LASF85
	.byte	0x1
	.byte	0xc3
	.byte	0x19
	.4byte	0x41
	.4byte	.LLST6
	.byte	0x21
	.4byte	.LVL38
	.4byte	0xad7
	.byte	0
	.byte	0x23
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x6ce
	.byte	0x14
	.4byte	.LASF86
	.byte	0x1
	.byte	0xdf
	.byte	0x1c
	.4byte	0x19e
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_connect_attempted.1
	.byte	0x14
	.4byte	.LASF87
	.byte	0x1
	.byte	0xe0
	.byte	0x21
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_last_attempt.0
	.byte	0x24
	.string	"now"
	.byte	0x1
	.byte	0xe1
	.byte	0x1a
	.4byte	0x5b
	.byte	0x1
	.byte	0x59
	.byte	0x23
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x602
	.byte	0x1b
	.4byte	.LASF88
	.byte	0x1
	.byte	0xe5
	.byte	0x21
	.4byte	0xae
	.4byte	.LLST7
	.byte	0x1f
	.4byte	.LVL65
	.4byte	0xa9b
	.4byte	0x5cb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1f
	.4byte	.LVL66
	.4byte	0xa9b
	.4byte	0x5e2
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x25
	.4byte	.LVL67
	.4byte	0xae3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x75b
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x65f
	.byte	0x1b
	.4byte	.LASF88
	.byte	0x1
	.byte	0xee
	.byte	0x25
	.4byte	0xae
	.4byte	.LLST8
	.byte	0x1f
	.4byte	.LVL71
	.4byte	0xa9b
	.4byte	0x63f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL72
	.4byte	0xae3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x75b
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL54
	.4byte	0xaef
	.byte	0x1f
	.4byte	.LVL55
	.4byte	0xafb
	.4byte	0x67c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0x21
	.4byte	.LVL56
	.4byte	0xb08
	.byte	0x21
	.4byte	.LVL57
	.4byte	0xaef
	.byte	0x21
	.4byte	.LVL58
	.4byte	0xb14
	.byte	0x21
	.4byte	.LVL59
	.4byte	0xaef
	.byte	0x21
	.4byte	.LVL60
	.4byte	0xb14
	.byte	0x21
	.4byte	.LVL61
	.4byte	0xb20
	.byte	0x21
	.4byte	.LVL63
	.4byte	0xb2d
	.byte	0x21
	.4byte	.LVL69
	.4byte	0xb2d
	.byte	0x21
	.4byte	.LVL74
	.4byte	0xb2d
	.byte	0
	.byte	0x21
	.4byte	.LVL34
	.4byte	0xb39
	.byte	0x21
	.4byte	.LVL36
	.4byte	0xb45
	.byte	0x21
	.4byte	.LVL37
	.4byte	0xb2d
	.byte	0x1f
	.4byte	.LVL42
	.4byte	0xafb
	.4byte	0x6fd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x21
	.4byte	.LVL50
	.4byte	0xaa7
	.byte	0x21
	.4byte	.LVL51
	.4byte	0xb2d
	.byte	0x21
	.4byte	.LVL52
	.4byte	0xabf
	.byte	0x21
	.4byte	.LVL53
	.4byte	0xb2d
	.byte	0
	.byte	0x21
	.4byte	.LVL18
	.4byte	0xb51
	.byte	0x21
	.4byte	.LVL19
	.4byte	0xb5d
	.byte	0x1f
	.4byte	.LVL24
	.4byte	0xb69
	.4byte	0x749
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x21
	.4byte	.LVL25
	.4byte	0xb75
	.byte	0x21
	.4byte	.LVL28
	.4byte	0xb75
	.byte	0x21
	.4byte	.LVL29
	.4byte	0xb81
	.byte	0x1f
	.4byte	.LVL30
	.4byte	0xb8d
	.4byte	0x779
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0
	.byte	0x1f
	.4byte	.LVL31
	.4byte	0xb99
	.4byte	0x78c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1f
	.4byte	.LVL32
	.4byte	0xb69
	.4byte	0x7a1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x1f
	.4byte	.LVL33
	.4byte	0xba5
	.4byte	0x7bd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x8d,0x7f
	.byte	0
	.byte	0x1f
	.4byte	.LVL45
	.4byte	0xafb
	.4byte	0x7d1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x1f
	.4byte	.LVL47
	.4byte	0xb99
	.4byte	0x7e4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x25
	.4byte	.LVL48
	.4byte	0xb69
	.byte	0x20
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
	.4byte	0x80c
	.byte	0xe
	.4byte	0x7c
	.byte	0x9
	.byte	0
	.byte	0x19
	.4byte	.LASF89
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x844
	.byte	0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x5e
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x26
	.4byte	.LVL16
	.4byte	0xbb1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x898
	.byte	0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x4d
	.byte	0x19
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x21
	.4byte	.LVL10
	.4byte	0xbbd
	.byte	0x21
	.4byte	.LVL11
	.4byte	0xbc9
	.byte	0x21
	.4byte	.LVL12
	.4byte	0xbd5
	.byte	0x21
	.4byte	.LVL13
	.4byte	0xafb
	.byte	0x21
	.4byte	.LVL14
	.4byte	0xbe1
	.byte	0
	.byte	0x19
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x960
	.byte	0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2d
	.byte	0x1c
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.4byte	0x960
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0x32
	.byte	0x16
	.4byte	0x338
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1f
	.4byte	.LVL2
	.4byte	0xbed
	.4byte	0x8f9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0xbf9
	.4byte	0x90d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1f
	.4byte	.LVL4
	.4byte	0xc05
	.4byte	0x925
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL5
	.4byte	0xc05
	.4byte	0x93d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL6
	.4byte	0xc11
	.4byte	0x950
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x25
	.4byte	.LVL7
	.4byte	0xafb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x286
	.4byte	0x970
	.byte	0xe
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xa6b
	.byte	0x1f
	.4byte	.LVL75
	.4byte	0xc1d
	.4byte	0x9c0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_button
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x1f
	.4byte	.LVL76
	.4byte	0xc1d
	.4byte	0x9fa
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_led
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x1f
	.4byte	.LVL77
	.4byte	0xc1d
	.4byte	0xa34
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_wifi
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x26
	.4byte	.LVL78
	.4byte	0xc1d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_main
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x32
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF133
	.byte	0x1
	.byte	0x20
	.byte	0x11
	.4byte	0x5b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8f
	.byte	0x21
	.4byte	.LVL8
	.4byte	0xb20
	.byte	0
	.byte	0x28
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x1
	.byte	0x71
	.byte	0x14
	.byte	0x28
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x28
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x9
	.byte	0x7
	.byte	0x6
	.byte	0x28
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x1
	.byte	0x72
	.byte	0x15
	.byte	0x28
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x9
	.byte	0x8
	.byte	0x6
	.byte	0x28
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xa
	.byte	0x13
	.byte	0x5
	.byte	0x28
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x9
	.byte	0xa
	.byte	0x9
	.byte	0x28
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xa
	.byte	0xa
	.byte	0x5
	.byte	0x28
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0xb
	.byte	0x11
	.byte	0x5
	.byte	0x29
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0xc
	.2byte	0x207
	.byte	0xa
	.byte	0x28
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0xb
	.byte	0xf
	.byte	0x5
	.byte	0x28
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xb
	.byte	0x10
	.byte	0x5
	.byte	0x29
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xc
	.2byte	0x1ef
	.byte	0xf
	.byte	0x28
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0xa
	.byte	0x10
	.byte	0x5
	.byte	0x28
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x6
	.byte	0x19
	.byte	0xd
	.byte	0x28
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x9
	.byte	0x9
	.byte	0x6
	.byte	0x28
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x6
	.byte	0x18
	.byte	0x6
	.byte	0x28
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xa
	.byte	0x7
	.byte	0x5
	.byte	0x28
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x6
	.byte	0x1c
	.byte	0xd
	.byte	0x28
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xd
	.byte	0x12
	.byte	0x5
	.byte	0x28
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x5
	.byte	0x18
	.byte	0x5
	.byte	0x28
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x5
	.byte	0x15
	.byte	0x5
	.byte	0x28
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x6
	.byte	0x1b
	.byte	0x6
	.byte	0x28
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xd
	.byte	0xd
	.byte	0x5
	.byte	0x28
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xd
	.byte	0x16
	.byte	0x6
	.byte	0x28
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xe
	.byte	0x5
	.byte	0x6
	.byte	0x28
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xd
	.byte	0x11
	.byte	0x5
	.byte	0x28
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xe
	.byte	0x6
	.byte	0x6
	.byte	0x28
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0xe
	.byte	0x8
	.byte	0x6
	.byte	0x28
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xf
	.byte	0x10
	.byte	0x5
	.byte	0x28
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x7
	.byte	0x4b
	.byte	0x6
	.byte	0x28
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x7
	.byte	0x59
	.byte	0x6
	.byte	0x28
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x7
	.byte	0x51
	.byte	0x6
	.byte	0x29
	.4byte	.LASF128
	.4byte	.LASF128
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x23
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
	.byte	0x18
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
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
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
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
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
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x3
	.4byte	.LC3
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
.LASF109:
	.string	"app_state_get_current"
.LASF73:
	.string	"params"
.LASF132:
	.string	"tskTaskControlBlock"
.LASF131:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_task"
.LASF53:
	.string	"idle_level"
.LASF66:
	.string	"g_task_button_handle"
.LASF23:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF10:
	.string	"unsigned int"
.LASF112:
	.string	"app_mqtt_init"
.LASF87:
	.string	"mqtt_last_attempt"
.LASF82:
	.string	"g_event_queue_tail"
.LASF80:
	.string	"g_event_queue"
.LASF118:
	.string	"app_wifi_connect"
.LASF34:
	.string	"wifi_config_t"
.LASF129:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF117:
	.string	"app_state_set_next"
.LASF63:
	.string	"btn_initialize"
.LASF45:
	.string	"APP_BTN_EVT_HOLD"
.LASF42:
	.string	"app_state_t"
.LASF130:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
.LASF26:
	.string	"app_event_type_t"
.LASF100:
	.string	"app_mqtt_publish_state"
.LASF115:
	.string	"app_config_has_wifi"
.LASF35:
	.string	"APP_STATE_INIT"
.LASF20:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF106:
	.string	"app_ble_stop"
.LASF21:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF84:
	.string	"g_led_blink_enable"
.LASF121:
	.string	"app_wifi_is_connected"
.LASF70:
	.string	"app_set_led_blink"
.LASF116:
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
.LASF133:
	.string	"app_get_tick_ms"
.LASF9:
	.string	"long long unsigned int"
.LASF74:
	.string	"wifi_cfg"
.LASF22:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF72:
	.string	"enable"
.LASF102:
	.string	"app_mqtt_start"
.LASF94:
	.string	"app_task_init"
.LASF57:
	.string	"app_btn_get_tick_cb"
.LASF89:
	.string	"app_task_wifi"
.LASF107:
	.string	"aos_now_ms"
.LASF33:
	.string	"_Bool"
.LASF49:
	.string	"APP_BTN_EVT_IDLE"
.LASF19:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF85:
	.string	"relay_state"
.LASF119:
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
.LASF122:
	.string	"led_on"
.LASF28:
	.string	"data"
.LASF103:
	.string	"app_ble_is_running"
.LASF71:
	.string	"app_task_main"
.LASF128:
	.string	"xTaskCreate"
.LASF54:
	.string	"debounce_val"
.LASF6:
	.string	"uint8_t"
.LASF127:
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
.LASF96:
	.string	"printf"
.LASF111:
	.string	"app_state_init"
.LASF114:
	.string	"app_wifi_is_mgmr_ready"
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
.LASF124:
	.string	"bl_gpio_enable_input"
.LASF29:
	.string	"app_event_t"
.LASF52:
	.string	"last_state"
.LASF44:
	.string	"APP_BTN_EVT_RELEASED"
.LASF120:
	.string	"led_init"
.LASF113:
	.string	"app_state_process_event"
.LASF97:
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
.LASF126:
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
.LASF83:
	.string	"current_state"
.LASF38:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF43:
	.string	"APP_BTN_EVT_PRESSED"
.LASF67:
	.string	"g_task_led_handle"
.LASF8:
	.string	"long unsigned int"
.LASF99:
	.string	"relay_off"
.LASF125:
	.string	"app_btn_initialize"
.LASF65:
	.string	"app_btn_config_t"
.LASF104:
	.string	"aos_msleep"
.LASF108:
	.string	"app_mqtt_is_connected"
.LASF105:
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
.LASF101:
	.string	"relay_get_state"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF123:
	.string	"led_toggle"
.LASF17:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF98:
	.string	"app_callback_update_lock_button"
.LASF110:
	.string	"relay_toggle"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
