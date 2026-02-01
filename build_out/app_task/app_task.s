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
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
	.loc 1 47 1
	.cfi_startproc
.LVL0:
	.loc 1 48 5
	.loc 1 47 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 51 23
	li	a5,4
	.loc 1 48 25
	sw	zero,-48(s0)
	.loc 1 49 22
	sw	zero,-32(s0)
	.loc 1 51 23
	sw	a5,-52(s0)
	.loc 1 52 30
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 55 30
	sb	a5,-48(s0)
	.loc 1 58 23
	sb	a5,-32(s0)
	.loc 1 59 25
	lui	a5,%hi(app_get_tick_ms)
	.loc 1 57 20
	addi	a4,s0,-52
	.loc 1 59 25
	addi	a5,a5,%lo(app_get_tick_ms)
	.loc 1 63 5
	li	a2,0
	li	a1,0
	li	a0,4
.LVL1:
	.loc 1 57 20
	sw	a4,-36(s0)
	.loc 1 59 25
	sw	a5,-28(s0)
	.loc 1 48 25
	sw	zero,-40(s0)
	.loc 1 49 5 is_stmt 1
	.loc 1 49 22 is_stmt 0
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	.loc 1 51 5 is_stmt 1
	.loc 1 52 5
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 55 5
	.loc 1 57 5
	.loc 1 58 5
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 63 5
	call	bl_gpio_enable_input
.LVL2:
	.loc 1 64 5
	.loc 1 64 22 is_stmt 0
	lui	a5,%hi(bl_gpio_input_get_value)
	addi	a5,a5,%lo(bl_gpio_input_get_value)
	.loc 1 66 5
	addi	a0,s0,-36
	.loc 1 64 22
	sw	a5,-20(s0)
	.loc 1 66 5 is_stmt 1
	call	app_btn_initialize
.LVL3:
	.loc 1 67 5
	lui	a1,%hi(app_button_hold_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_hold_callback)
	li	a0,2
	call	app_btn_register_callback
.LVL4:
	.loc 1 68 5
	lui	a1,%hi(app_button_press_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_press_callback)
	li	a0,0
	call	app_btn_register_callback
.LVL5:
.L2:
	.loc 1 70 5 discriminator 1
	.loc 1 71 9 discriminator 1
	li	a0,0
	call	app_btn_scan
.LVL6:
	.loc 1 72 9 discriminator 1
	li	a0,20
	call	aos_msleep
.LVL7:
	.loc 1 70 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE6:
	.size	app_task_button, .-app_task_button
	.section	.text.app_get_tick_ms,"ax",@progbits
	.align	1
	.type	app_get_tick_ms, @function
app_get_tick_ms:
.LFB4:
	.loc 1 34 1
	.cfi_startproc
	.loc 1 35 5
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 35 12
	call	aos_now_ms
.LVL8:
	.loc 1 36 1
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
	.loc 1 77 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 78 5
	.loc 1 77 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 78 5
	call	led_init
.LVL10:
.L7:
	.loc 1 79 5 is_stmt 1
	.loc 1 80 9
	.loc 1 80 13 is_stmt 0
	call	wifi_if_is_connected
.LVL11:
	.loc 1 80 12
	beq	a0,zero,.L8
	.loc 1 81 13 is_stmt 1
	call	led_on
.LVL12:
	.loc 1 82 13
	li	a0,1000
.L11:
	.loc 1 85 13 is_stmt 0
	call	aos_msleep
.LVL13:
	j	.L7
.L8:
	.loc 1 84 13 is_stmt 1
	call	led_toggle
.LVL14:
	.loc 1 85 13
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
	.loc 1 91 1
	.cfi_startproc
.LVL15:
	.loc 1 92 5
	.loc 1 91 1 is_stmt 0
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
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 92 5
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
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 97 5
	.loc 1 98 5
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sw	s2,128(sp)
	sw	s3,124(sp)
	sw	s4,120(sp)
	sw	s5,116(sp)
	sw	s6,112(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 98 17
	sw	zero,-140(s0)
	sw	zero,-136(s0)
	.loc 1 99 5 is_stmt 1
	.loc 1 100 5
	call	app_state_init
.LVL18:
	.loc 1 101 5
	call	app_mqtt_init
.LVL19:
.LBB2:
	.loc 1 104 9
	.loc 1 105 9
	.loc 1 106 9
	.loc 1 108 13 is_stmt 0
	addi	a1,s0,-132
	addi	a0,s0,-141
	.loc 1 106 17
	sb	zero,-141(s0)
	.loc 1 107 8 is_stmt 1
	.loc 1 107 13 is_stmt 0
	sb	zero,-132(s0)
	.loc 1 108 9 is_stmt 1
	.loc 1 108 13 is_stmt 0
	call	app_config_load_relay_settings
.LVL20:
	.loc 1 108 12
	bne	a0,zero,.L15
	.loc 1 109 13 is_stmt 1
	.loc 1 109 16 is_stmt 0
	lbu	a5,-141(s0)
	beq	a5,zero,.L16
	.loc 1 110 17 is_stmt 1
	call	relay_on
.LVL21:
.L17:
	.loc 1 114 13
	lbu	a0,-132(s0)
	call	app_callback_update_lock_button
.LVL22:
.L15:
.LBE2:
	.loc 1 118 5
	.loc 1 119 5 is_stmt 0
	addi	a0,s0,-140
	.loc 1 118 16
	sw	zero,-140(s0)
	.loc 1 119 5 is_stmt 1
	.loc 1 122 11 is_stmt 0
	li	s1,101
	.loc 1 119 5
	call	app_state_process_event
.LVL23:
	.loc 1 121 5 is_stmt 1
	.loc 1 122 5
.L18:
	.loc 1 122 11
	.loc 1 122 13 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL24:
	.loc 1 122 11
	bne	a0,zero,.L19
	.loc 1 122 37 discriminator 1
	addi	s1,s1,-1
.LVL25:
	bne	s1,zero,.L20
.LVL26:
.L19:
	.loc 1 127 5 is_stmt 1
	.loc 1 127 9 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL27:
	.loc 1 127 8
	beq	a0,zero,.L21
	.loc 1 128 9 is_stmt 1
	.loc 1 128 13 is_stmt 0
	call	app_config_has_wifi
.LVL28:
	.loc 1 128 12
	beq	a0,zero,.L22
	.loc 1 129 13 is_stmt 1
	.loc 1 129 17 is_stmt 0
	addi	a0,s0,-132
	call	app_config_load_wifi
.LVL29:
	.loc 1 129 16
	bne	a0,zero,.L22
	.loc 1 130 17 is_stmt 1
	li	a0,3
	call	app_state_set_next
.LVL30:
	.loc 1 131 17
	.loc 1 132 17 is_stmt 0
	addi	a0,s0,-140
	.loc 1 131 28
	sw	zero,-140(s0)
	.loc 1 132 17 is_stmt 1
	call	app_state_process_event
.LVL31:
	.loc 1 133 17
	addi	a1,s0,-99
	addi	a0,s0,-132
	call	app_wifi_connect
.LVL32:
.L21:
.LBB3:
	.loc 1 152 19 is_stmt 0
	lui	s4,%hi(g_event_queue)
	lui	s5,%hi(.L42)
.LBB4:
	.loc 1 183 17
	lui	s2,%hi(.LC0)
	lui	s3,%hi(.LC1)
.LBE4:
	.loc 1 152 19
	addi	s4,s4,%lo(g_event_queue)
	addi	s5,s5,%lo(.L42)
.LBB5:
	.loc 1 183 17
	addi	s2,s2,%lo(.LC0)
	addi	s3,s3,%lo(.LC1)
.L23:
.LBE5:
.LBE3:
	.loc 1 146 5 is_stmt 1
.LBB12:
	.loc 1 147 9
	.loc 1 148 9
	.loc 1 149 9
	.loc 1 151 9
	.loc 1 151 32 is_stmt 0
	lui	a3,%hi(g_event_queue_head)
	lui	a4,%hi(g_event_queue_tail)
	lw	a5,%lo(g_event_queue_head)(a3)
	.loc 1 151 12
	lw	a4,%lo(g_event_queue_tail)(a4)
	beq	a5,a4,.L24
	.loc 1 152 13 is_stmt 1
	.loc 1 152 19 is_stmt 0
	slli	a4,a5,3
	add	a4,s4,a4
	lw	a2,0(a4)
	lw	a4,4(a4)
	.loc 1 153 54
	addi	a5,a5,1
	.loc 1 152 19
	sw	a2,-140(s0)
	sw	a4,-136(s0)
	.loc 1 153 13 is_stmt 1
	.loc 1 153 59 is_stmt 0
	li	a4,10
	rem	a5,a5,a4
	.loc 1 153 32
	sw	a5,%lo(g_event_queue_head)(a3)
.L25:
	.loc 1 159 9 is_stmt 1
	.loc 1 159 37 is_stmt 0
	call	app_state_get_current
.LVL33:
	.loc 1 161 18
	lw	a5,-140(s0)
	.loc 1 161 12
	li	a4,8
	.loc 1 159 37
	mv	s1,a0
.LVL34:
	.loc 1 161 9 is_stmt 1
	.loc 1 161 12 is_stmt 0
	bne	a5,a4,.L26
	.loc 1 162 13 is_stmt 1
	call	relay_toggle
.LVL35:
	.loc 1 163 13
.L86:
	.loc 1 181 13
	.loc 1 181 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL36:
	.loc 1 181 16
	beq	a0,zero,.L82
.LBB6:
	.loc 1 182 17 is_stmt 1
	.loc 1 182 39 is_stmt 0
	call	relay_get_state
.LVL37:
	.loc 1 183 17 is_stmt 1
	mv	a5,s2
	bne	a0,zero,.L29
.LBE6:
.LBB7:
	.loc 1 165 17 is_stmt 0
	mv	a5,s3
.L29:
	.loc 1 165 17 discriminator 4
	mv	a0,a5
.LVL38:
.L81:
	call	app_mqtt_publish_state
.LVL39:
.LBE7:
	.loc 1 167 13 is_stmt 1 discriminator 4
.L82:
	.loc 1 211 13
	.loc 1 211 24 is_stmt 0
	sw	zero,-140(s0)
.L30:
	.loc 1 214 9 is_stmt 1
	addi	a0,s1,-2
	li	a5,4
	bgtu	a0,a5,.L40
	slli	a0,a0,2
	add	a0,a0,s5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.app_task_main,"a",@progbits
	.align	2
	.align	2
.L42:
	.word	.L45
	.word	.L43
	.word	.L44
	.word	.L43
	.word	.L41
	.section	.text.app_task_main
.LVL40:
.L16:
.LBE12:
.LBB13:
	.loc 1 112 17
	call	relay_off
.LVL41:
	j	.L17
.LVL42:
.L20:
.LBE13:
	.loc 1 123 9
	li	a0,100
	call	aos_msleep
.LVL43:
	.loc 1 124 9
	j	.L18
.LVL44:
.L22:
	.loc 1 135 17
	li	a0,1
	call	app_state_set_next
.LVL45:
	.loc 1 136 17
	.loc 1 137 17 is_stmt 0
	addi	a0,s0,-140
	.loc 1 136 28
	sw	zero,-140(s0)
	.loc 1 137 17 is_stmt 1
	call	app_state_process_event
.LVL46:
	j	.L21
.L24:
.LBB14:
	.loc 1 155 13
	.loc 1 155 24 is_stmt 0
	sw	zero,-140(s0)
	.loc 1 156 13 is_stmt 1
	.loc 1 156 24 is_stmt 0
	sw	zero,-136(s0)
	j	.L25
.LVL47:
.L26:
	.loc 1 168 16 is_stmt 1
	.loc 1 168 19 is_stmt 0
	li	a4,9
	bne	a5,a4,.L31
	.loc 1 169 13 is_stmt 1
	call	relay_on
.LVL48:
	.loc 1 170 13
	.loc 1 170 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL49:
	.loc 1 170 16
	beq	a0,zero,.L82
	.loc 1 171 17 is_stmt 1
	mv	a0,s2
	j	.L81
.L31:
	.loc 1 174 16
	.loc 1 174 19 is_stmt 0
	li	a4,10
	bne	a5,a4,.L33
	.loc 1 175 13 is_stmt 1
	call	relay_off
.LVL50:
	.loc 1 176 13
	.loc 1 176 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL51:
	.loc 1 176 16
	beq	a0,zero,.L82
	.loc 1 177 17 is_stmt 1
	mv	a0,s3
	j	.L81
.L33:
	.loc 1 180 16
	.loc 1 180 19 is_stmt 0
	li	a4,11
	beq	a5,a4,.L86
	.loc 1 187 14 is_stmt 1
	.loc 1 187 17 is_stmt 0
	li	a4,12
	bne	a5,a4,.L36
.LBB8:
	.loc 1 188 13 is_stmt 1
	.loc 1 188 23 is_stmt 0
	call	app_ble_master_init
.LVL52:
	.loc 1 189 13 is_stmt 1
	.loc 1 189 16 is_stmt 0
	bne	a0,zero,.L23
	.loc 1 193 13 is_stmt 1
	.loc 1 193 19 is_stmt 0
	call	app_ble_master_start
.LVL53:
	.loc 1 194 13 is_stmt 1
	li	a0,6
.L87:
.LBE8:
	.loc 1 200 13 is_stmt 0
	call	app_state_set_next
.LVL54:
	.loc 1 201 13 is_stmt 1
	j	.L82
.L36:
	.loc 1 197 14
	.loc 1 197 17 is_stmt 0
	li	a4,13
	bne	a5,a4,.L38
	.loc 1 198 13 is_stmt 1
	.loc 1 199 13
	call	app_ble_master_stop
.LVL55:
	.loc 1 200 13
	li	a0,4
	j	.L87
.L38:
	.loc 1 203 14
	.loc 1 203 17 is_stmt 0
	li	a4,14
	bne	a5,a4,.L39
	.loc 1 204 13 is_stmt 1
	.loc 1 205 13
	li	a0,0
	call	app_ble_master_connect
.LVL56:
	.loc 1 206 13
	j	.L82
.L39:
	.loc 1 208 14
	.loc 1 208 17 is_stmt 0
	li	a4,15
	bne	a5,a4,.L30
	.loc 1 209 13 is_stmt 1
	.loc 1 210 13
	call	app_ble_master_disconnect
.LVL57:
	j	.L82
.L45:
	.loc 1 218 17
	.loc 1 218 22 is_stmt 0
	call	app_ble_is_running
.LVL58:
	.loc 1 218 20
	bne	a0,zero,.L40
	.loc 1 219 21 is_stmt 1
	li	a0,200
	call	aos_msleep
.LVL59:
	.loc 1 220 21
	call	app_ble_start
.LVL60:
.L40:
	.loc 1 270 9
	li	a0,100
	call	aos_msleep
.LVL61:
	j	.L23
.LVL62:
.L43:
	.loc 1 224 17
	.loc 1 224 21 is_stmt 0
	call	app_ble_is_running
.LVL63:
	.loc 1 224 20
	beq	a0,zero,.L40
	.loc 1 225 21 is_stmt 1
	call	app_ble_stop
.LVL64:
	j	.L40
.L44:
	.loc 1 229 17
	.loc 1 229 21 is_stmt 0
	call	app_ble_is_running
.LVL65:
	.loc 1 229 20
	beq	a0,zero,.L48
	.loc 1 230 21 is_stmt 1
	call	app_ble_stop
.LVL66:
.L48:
.LBB9:
	.loc 1 233 21
	.loc 1 234 21
	.loc 1 235 21
	.loc 1 235 36 is_stmt 0
	call	aos_now_ms
.LVL67:
	mv	s1,a0
.LVL68:
	.loc 1 237 21 is_stmt 1
	.loc 1 237 26 is_stmt 0
	call	mqtt_if_is_connected
.LVL69:
	.loc 1 237 24
	bne	a0,zero,.L49
	.loc 1 237 52 discriminator 1
	lui	s6,%hi(.LANCHOR0)
	addi	s6,s6,%lo(.LANCHOR0)
	.loc 1 237 49 discriminator 1
	lbu	a5,0(s6)
	bne	a5,zero,.L49
.LBB10:
	.loc 1 238 25 is_stmt 1
.LVL70:
	.loc 1 239 25
	lui	a0,%hi(.LC2)
	li	a2,0
	li	a1,1883
	addi	a0,a0,%lo(.LC2)
	call	app_mqtt_start
.LVL71:
	.loc 1 240 25
	.loc 1 240 48 is_stmt 0
	li	a5,1
	sb	a5,0(s6)
	.loc 1 241 25 is_stmt 1
	.loc 1 241 43 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	s1,%lo(.LANCHOR1)(a5)
.LBE10:
	.loc 1 237 77
	j	.L40
.LVL72:
.L49:
	.loc 1 242 28 is_stmt 1
	.loc 1 242 33 is_stmt 0
	call	mqtt_if_is_connected
.LVL73:
	.loc 1 242 31
	bne	a0,zero,.L50
	.loc 1 242 56 discriminator 1
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	beq	a5,zero,.L50
	.loc 1 243 25 is_stmt 1
	.loc 1 243 33 is_stmt 0
	lui	s6,%hi(.LANCHOR1)
	addi	s6,s6,%lo(.LANCHOR1)
	lw	a4,0(s6)
	.loc 1 243 28
	li	a5,8192
	addi	a5,a5,1808
	.loc 1 243 33
	sub	a4,s1,a4
	.loc 1 243 28
	bleu	a4,a5,.L40
.LBB11:
	.loc 1 244 29 is_stmt 1
.LVL74:
	.loc 1 245 29
	lui	a0,%hi(.LC2)
	li	a2,0
	li	a1,1883
	addi	a0,a0,%lo(.LC2)
	call	app_mqtt_start
.LVL75:
	.loc 1 246 29
	.loc 1 246 47 is_stmt 0
	sw	s1,0(s6)
	j	.L40
.LVL76:
.L50:
.LBE11:
	.loc 1 248 28 is_stmt 1
	.loc 1 248 32 is_stmt 0
	call	mqtt_if_is_connected
.LVL77:
	.loc 1 248 31
	beq	a0,zero,.L40
	.loc 1 249 25 is_stmt 1
	.loc 1 249 48 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	j	.L40
.LVL78:
.L41:
.LBE9:
	.loc 1 260 17 is_stmt 1
	.loc 1 260 20 is_stmt 0
	lw	a4,-140(s0)
	li	a5,1
	bne	a4,a5,.L40
	.loc 1 261 21 is_stmt 1
	call	app_ble_master_stop
.LVL79:
	.loc 1 262 21
	li	a0,2
	call	app_state_set_next
.LVL80:
	.loc 1 263 21
	.loc 1 263 32 is_stmt 0
	sw	zero,-140(s0)
	j	.L40
.LBE14:
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
	.loc 1 39 1 is_stmt 1
	.cfi_startproc
	.loc 1 40 5
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 40 5
	lui	a5,%hi(.LANCHOR2)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 39 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 40 5
	li	a2,4096
	lui	a1,%hi(.LC3)
	lui	a0,%hi(app_task_button)
	.loc 1 39 1
	.loc 1 40 5
	addi	a5,a5,%lo(.LANCHOR2)
	li	a4,5
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC3)
	addi	a0,a0,%lo(app_task_button)
	call	xTaskCreate
.LVL81:
	.loc 1 41 5 is_stmt 1
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
.LVL82:
	.loc 1 42 5
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
.LVL83:
	.loc 1 43 5
	.loc 1 44 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 43 5
	lui	a5,%hi(.LANCHOR5)
	lui	a1,%hi(.LC6)
	lui	a0,%hi(app_task_main)
	.loc 1 44 1
	.loc 1 43 5
	addi	a5,a5,%lo(.LANCHOR5)
	li	a4,2
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC6)
	addi	a0,a0,%lo(app_task_main)
	.loc 1 44 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 43 5
	tail	xTaskCreate
.LVL84:
	.cfi_endproc
.LFE5:
	.size	app_task_init, .-app_task_init
	.section	.text.app_set_led_blink,"ax",@progbits
	.align	1
	.globl	app_set_led_blink
	.type	app_set_led_blink, @function
app_set_led_blink:
.LFB10:
	.loc 1 275 1 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 276 5
	.loc 1 275 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 277 1
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
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_event/app_event.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_state/app_state.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/relay/relay.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_mqtt.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble_master.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/mqtt_if/mqtt_if.h"
	.file 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble.h"
	.file 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../middle/wifi_if/wifi_if.h"
	.file 15 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_wifi.h"
	.file 16 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/led/led.h"
	.file 17 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc7f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
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
	.4byte	.LASF141
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
	.4byte	0x129
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
	.byte	0xa
	.4byte	.LASF26
	.byte	0xd
	.byte	0xa
	.4byte	.LASF27
	.byte	0xe
	.byte	0xa
	.4byte	.LASF28
	.byte	0xf
	.byte	0xa
	.4byte	.LASF29
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x18
	.byte	0x3
	.4byte	0xb4
	.byte	0xb
	.byte	0x8
	.byte	0x4
	.byte	0x1a
	.byte	0x9
	.4byte	0x159
	.byte	0xc
	.4byte	.LASF31
	.byte	0x4
	.byte	0x1b
	.byte	0x16
	.4byte	0x129
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1c
	.byte	0xb
	.4byte	0x83
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0x1d
	.byte	0x3
	.4byte	0x135
	.byte	0xb
	.byte	0x63
	.byte	0x5
	.byte	0xe
	.byte	0x9
	.4byte	0x196
	.byte	0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0xf
	.byte	0xa
	.4byte	0x196
	.byte	0
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x10
	.byte	0xa
	.4byte	0x1a6
	.byte	0x21
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x11
	.byte	0x9
	.4byte	0x1b6
	.byte	0x62
	.byte	0
	.byte	0xd
	.4byte	0x85
	.4byte	0x1a6
	.byte	0xe
	.4byte	0x7c
	.byte	0x20
	.byte	0
	.byte	0xd
	.4byte	0x85
	.4byte	0x1b6
	.byte	0xe
	.4byte	0x7c
	.byte	0x40
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF37
	.byte	0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x12
	.byte	0x3
	.4byte	0x165
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x7
	.byte	0xe
	.4byte	0x208
	.byte	0xa
	.4byte	.LASF39
	.byte	0
	.byte	0xa
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa
	.4byte	.LASF41
	.byte	0x2
	.byte	0xa
	.4byte	.LASF42
	.byte	0x3
	.byte	0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0xa
	.4byte	.LASF44
	.byte	0x5
	.byte	0xa
	.4byte	.LASF45
	.byte	0x6
	.byte	0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF47
	.byte	0x6
	.byte	0x10
	.byte	0x3
	.4byte	0x1c9
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x21
	.byte	0x1
	.4byte	0x259
	.byte	0xa
	.4byte	.LASF48
	.byte	0
	.byte	0xa
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa
	.4byte	.LASF50
	.byte	0x2
	.byte	0xa
	.4byte	.LASF51
	.byte	0x3
	.byte	0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0xa
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa
	.4byte	.LASF54
	.byte	0x6
	.byte	0xa
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0
	.byte	0xb
	.byte	0x10
	.byte	0x7
	.byte	0x2d
	.byte	0x9
	.4byte	0x2a4
	.byte	0xf
	.string	"pin"
	.byte	0x7
	.byte	0x2f
	.byte	0xe
	.4byte	0x5b
	.byte	0
	.byte	0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x31
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.byte	0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0x32
	.byte	0xd
	.4byte	0x41
	.byte	0xc
	.byte	0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0x33
	.byte	0xd
	.4byte	0x41
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0x34
	.byte	0x3
	.4byte	0x259
	.byte	0x3
	.4byte	.LASF62
	.byte	0x7
	.byte	0x36
	.byte	0x14
	.4byte	0x2bc
	.byte	0x7
	.byte	0x4
	.4byte	0x2c2
	.byte	0x10
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF63
	.byte	0x7
	.byte	0x37
	.byte	0x10
	.4byte	0x2d3
	.byte	0x7
	.byte	0x4
	.4byte	0x2d9
	.byte	0x11
	.4byte	0x2e4
	.byte	0x12
	.4byte	0x5b
	.byte	0
	.byte	0x3
	.4byte	.LASF64
	.byte	0x7
	.byte	0x38
	.byte	0x14
	.4byte	0x2f0
	.byte	0x7
	.byte	0x4
	.4byte	0x2f6
	.byte	0x13
	.4byte	0x5b
	.4byte	0x305
	.byte	0x12
	.4byte	0x5b
	.byte	0
	.byte	0xb
	.byte	0x14
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.4byte	0x350
	.byte	0xc
	.4byte	.LASF65
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.4byte	0x350
	.byte	0
	.byte	0xc
	.4byte	.LASF66
	.byte	0x7
	.byte	0x3d
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0xc
	.4byte	.LASF67
	.byte	0x7
	.byte	0x3e
	.byte	0x19
	.4byte	0x2b0
	.byte	0x8
	.byte	0xc
	.4byte	.LASF68
	.byte	0x7
	.byte	0x3f
	.byte	0x1b
	.4byte	0x2c7
	.byte	0xc
	.byte	0xc
	.4byte	.LASF69
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.4byte	0x2e4
	.byte	0x10
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2a4
	.byte	0x3
	.4byte	.LASF70
	.byte	0x7
	.byte	0x41
	.byte	0x3
	.4byte	0x305
	.byte	0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_button_handle
	.byte	0x14
	.4byte	.LASF72
	.byte	0x1
	.byte	0x1b
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_led_handle
	.byte	0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x1c
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_wifi_handle
	.byte	0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x1d
	.byte	0x15
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	g_task_main_handle
	.byte	0x15
	.4byte	.LASF89
	.byte	0x1
	.byte	0x1e
	.byte	0xc
	.4byte	0x1b6
	.byte	0x16
	.4byte	.LASF84
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	g_btn_filter_cnt
	.byte	0x17
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x112
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ef
	.byte	0x18
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x112
	.byte	0x1c
	.4byte	0x1b6
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x19
	.4byte	.LASF76
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x81e
	.byte	0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x5f
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0x61
	.byte	0x13
	.4byte	0x1bd
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0x62
	.byte	0x11
	.4byte	0x159
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x1b
	.4byte	.LASF81
	.byte	0x1
	.byte	0x79
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0
	.4byte	0x4d3
	.byte	0x1d
	.4byte	.LASF100
	.byte	0x1
	.byte	0x68
	.byte	0x14
	.4byte	0x75
	.4byte	0x469
	.byte	0x12
	.4byte	0x91
	.byte	0x12
	.4byte	0x81e
	.byte	0
	.byte	0x1e
	.4byte	.LASF102
	.byte	0x1
	.byte	0x69
	.byte	0x15
	.4byte	0x47b
	.byte	0x12
	.4byte	0x1b6
	.byte	0
	.byte	0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0x6a
	.byte	0x11
	.4byte	0x41
	.byte	0x3
	.byte	0x91
	.byte	0xf3,0x7e
	.byte	0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	0x1b6
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x1f
	.4byte	.LVL20
	.4byte	0xab7
	.4byte	0x4b7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf3,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xfc,0x7e
	.byte	0
	.byte	0x21
	.4byte	.LVL21
	.4byte	0xac3
	.byte	0x21
	.4byte	.LVL22
	.4byte	0xacf
	.byte	0x21
	.4byte	.LVL41
	.4byte	0xadb
	.byte	0
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x74a
	.byte	0x22
	.4byte	.LASF85
	.byte	0x1
	.byte	0x93
	.byte	0x1c
	.4byte	0x824
	.byte	0x22
	.4byte	.LASF86
	.byte	0x1
	.byte	0x94
	.byte	0x14
	.4byte	0x75
	.byte	0x22
	.4byte	.LASF87
	.byte	0x1
	.byte	0x95
	.byte	0x14
	.4byte	0x75
	.byte	0x1b
	.4byte	.LASF88
	.byte	0x1
	.byte	0x9f
	.byte	0x15
	.4byte	0x208
	.4byte	.LLST5
	.byte	0x23
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x533
	.byte	0x15
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa4
	.byte	0x19
	.4byte	0x41
	.byte	0x21
	.4byte	.LVL39
	.4byte	0xae7
	.byte	0
	.byte	0x1c
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x556
	.byte	0x1b
	.4byte	.LASF90
	.byte	0x1
	.byte	0xb6
	.byte	0x19
	.4byte	0x41
	.4byte	.LLST6
	.byte	0x21
	.4byte	.LVL37
	.4byte	0xaf3
	.byte	0
	.byte	0x23
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x586
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0xbc
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x21
	.4byte	.LVL52
	.4byte	0xaff
	.byte	0x21
	.4byte	.LVL53
	.4byte	0xb0b
	.byte	0
	.byte	0x23
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x666
	.byte	0x14
	.4byte	.LASF91
	.byte	0x1
	.byte	0xe9
	.byte	0x20
	.4byte	0x1b6
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_connect_attempted.1
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0xea
	.byte	0x25
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_last_attempt.0
	.byte	0x24
	.string	"now"
	.byte	0x1
	.byte	0xeb
	.byte	0x1e
	.4byte	0x5b
	.4byte	.LLST8
	.byte	0x23
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x604
	.byte	0x1b
	.4byte	.LASF93
	.byte	0x1
	.byte	0xee
	.byte	0x25
	.4byte	0xae
	.4byte	.LLST9
	.byte	0x25
	.4byte	.LVL71
	.4byte	0xb17
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
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
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x641
	.byte	0x1b
	.4byte	.LASF93
	.byte	0x1
	.byte	0xf4
	.byte	0x29
	.4byte	0xae
	.4byte	.LLST10
	.byte	0x25
	.4byte	.LVL75
	.4byte	0xb17
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
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
	.4byte	.LVL67
	.4byte	0xb23
	.byte	0x21
	.4byte	.LVL69
	.4byte	0xb30
	.byte	0x21
	.4byte	.LVL73
	.4byte	0xb30
	.byte	0x21
	.4byte	.LVL77
	.4byte	0xb30
	.byte	0
	.byte	0x21
	.4byte	.LVL33
	.4byte	0xb3c
	.byte	0x21
	.4byte	.LVL35
	.4byte	0xb48
	.byte	0x21
	.4byte	.LVL36
	.4byte	0xb30
	.byte	0x21
	.4byte	.LVL48
	.4byte	0xac3
	.byte	0x21
	.4byte	.LVL49
	.4byte	0xb30
	.byte	0x21
	.4byte	.LVL50
	.4byte	0xadb
	.byte	0x21
	.4byte	.LVL51
	.4byte	0xb30
	.byte	0x21
	.4byte	.LVL54
	.4byte	0xb54
	.byte	0x21
	.4byte	.LVL55
	.4byte	0xb60
	.byte	0x1f
	.4byte	.LVL56
	.4byte	0xb6c
	.4byte	0x6ca
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL57
	.4byte	0xb78
	.byte	0x21
	.4byte	.LVL58
	.4byte	0xb84
	.byte	0x1f
	.4byte	.LVL59
	.4byte	0xb90
	.4byte	0x6f0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0x21
	.4byte	.LVL60
	.4byte	0xb9d
	.byte	0x1f
	.4byte	.LVL61
	.4byte	0xb90
	.4byte	0x70d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x21
	.4byte	.LVL63
	.4byte	0xb84
	.byte	0x21
	.4byte	.LVL64
	.4byte	0xba9
	.byte	0x21
	.4byte	.LVL65
	.4byte	0xb84
	.byte	0x21
	.4byte	.LVL66
	.4byte	0xba9
	.byte	0x21
	.4byte	.LVL79
	.4byte	0xb60
	.byte	0x25
	.4byte	.LVL80
	.4byte	0xb54
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL18
	.4byte	0xbb5
	.byte	0x21
	.4byte	.LVL19
	.4byte	0xbc1
	.byte	0x1f
	.4byte	.LVL23
	.4byte	0xbcd
	.4byte	0x771
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x21
	.4byte	.LVL24
	.4byte	0xbd9
	.byte	0x21
	.4byte	.LVL27
	.4byte	0xbd9
	.byte	0x21
	.4byte	.LVL28
	.4byte	0xbe5
	.byte	0x1f
	.4byte	.LVL29
	.4byte	0xbf1
	.4byte	0x7a1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xfc,0x7e
	.byte	0
	.byte	0x1f
	.4byte	.LVL30
	.4byte	0xb54
	.4byte	0x7b4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1f
	.4byte	.LVL31
	.4byte	0xbcd
	.4byte	0x7c9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x1f
	.4byte	.LVL32
	.4byte	0xbfd
	.4byte	0x7e5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xfc,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x9d,0x7f
	.byte	0
	.byte	0x1f
	.4byte	.LVL43
	.4byte	0xb90
	.4byte	0x7f9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x1f
	.4byte	.LVL45
	.4byte	0xb54
	.4byte	0x80c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x25
	.4byte	.LVL46
	.4byte	0xbcd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf4,0x7e
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1b6
	.byte	0xd
	.4byte	0x159
	.4byte	0x834
	.byte	0xe
	.4byte	0x7c
	.byte	0x9
	.byte	0
	.byte	0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x86c
	.byte	0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x26
	.4byte	.LVL16
	.4byte	0xc09
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
	.4byte	.LASF95
	.byte	0x1
	.byte	0x4c
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c0
	.byte	0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x4c
	.byte	0x19
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x21
	.4byte	.LVL10
	.4byte	0xc15
	.byte	0x21
	.4byte	.LVL11
	.4byte	0xc21
	.byte	0x21
	.4byte	.LVL12
	.4byte	0xc2d
	.byte	0x21
	.4byte	.LVL13
	.4byte	0xb90
	.byte	0x21
	.4byte	.LVL14
	.4byte	0xc39
	.byte	0
	.byte	0x19
	.4byte	.LASF96
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x988
	.byte	0x1a
	.4byte	.LASF78
	.byte	0x1
	.byte	0x2e
	.byte	0x1c
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF97
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.4byte	0x988
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x14
	.4byte	.LASF98
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.4byte	0x356
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1f
	.4byte	.LVL2
	.4byte	0xc45
	.4byte	0x921
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
	.4byte	0xc51
	.4byte	0x935
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1f
	.4byte	.LVL4
	.4byte	0xc5d
	.4byte	0x94d
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
	.4byte	0xc5d
	.4byte	0x965
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
	.4byte	0xc69
	.4byte	0x978
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x25
	.4byte	.LVL7
	.4byte	0xb90
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x2a4
	.4byte	0x998
	.byte	0xe
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF99
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xa93
	.byte	0x1f
	.4byte	.LVL81
	.4byte	0xc75
	.4byte	0x9e8
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
	.4byte	.LC3
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
	.4byte	.LVL82
	.4byte	0xc75
	.4byte	0xa22
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
	.4byte	.LC4
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
	.4byte	.LVL83
	.4byte	0xc75
	.4byte	0xa5c
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
	.4byte	.LC5
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
	.4byte	.LVL84
	.4byte	0xc75
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
	.4byte	.LC6
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
	.4byte	.LASF142
	.byte	0x1
	.byte	0x21
	.byte	0x11
	.4byte	0x5b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xab7
	.byte	0x21
	.4byte	.LVL8
	.4byte	0xb23
	.byte	0
	.byte	0x28
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x1
	.byte	0x68
	.byte	0x14
	.byte	0x28
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.byte	0x7
	.byte	0x6
	.byte	0x28
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x1
	.byte	0x69
	.byte	0x15
	.byte	0x28
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x8
	.byte	0x8
	.byte	0x6
	.byte	0x28
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x9
	.byte	0xa
	.byte	0x5
	.byte	0x28
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x8
	.byte	0xa
	.byte	0x9
	.byte	0x28
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0xa
	.byte	0x10
	.byte	0x5
	.byte	0x28
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0xa
	.byte	0x11
	.byte	0x5
	.byte	0x28
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x9
	.byte	0x7
	.byte	0x5
	.byte	0x29
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x1ef
	.byte	0xf
	.byte	0x28
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xc
	.byte	0x22
	.byte	0x5
	.byte	0x28
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x6
	.byte	0x1a
	.byte	0xd
	.byte	0x28
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x8
	.byte	0x9
	.byte	0x6
	.byte	0x28
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x6
	.byte	0x1c
	.byte	0x6
	.byte	0x28
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xa
	.byte	0x12
	.byte	0x5
	.byte	0x28
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xa
	.byte	0x13
	.byte	0x5
	.byte	0x28
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xa
	.byte	0x14
	.byte	0x5
	.byte	0x28
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xd
	.byte	0x11
	.byte	0x5
	.byte	0x29
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x207
	.byte	0xa
	.byte	0x28
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xd
	.byte	0xf
	.byte	0x5
	.byte	0x28
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xd
	.byte	0x10
	.byte	0x5
	.byte	0x28
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x6
	.byte	0x19
	.byte	0x6
	.byte	0x28
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x9
	.byte	0x6
	.byte	0x5
	.byte	0x28
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x6
	.byte	0x1d
	.byte	0xd
	.byte	0x28
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xe
	.byte	0x10
	.byte	0x5
	.byte	0x28
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x5
	.byte	0x18
	.byte	0x5
	.byte	0x28
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x5
	.byte	0x15
	.byte	0x5
	.byte	0x28
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xf
	.byte	0xd
	.byte	0x5
	.byte	0x28
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xf
	.byte	0x16
	.byte	0x6
	.byte	0x28
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x10
	.byte	0x5
	.byte	0x6
	.byte	0x28
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xe
	.byte	0xf
	.byte	0x5
	.byte	0x28
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x10
	.byte	0x6
	.byte	0x6
	.byte	0x28
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x10
	.byte	0x8
	.byte	0x6
	.byte	0x28
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x11
	.byte	0x10
	.byte	0x5
	.byte	0x28
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x7
	.byte	0x4b
	.byte	0x6
	.byte	0x28
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.byte	0x59
	.byte	0x6
	.byte	0x28
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x7
	.byte	0x51
	.byte	0x6
	.byte	0x29
	.4byte	.LASF137
	.4byte	.LASF137
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
	.byte	0x17
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
	.4byte	.LVL42
	.4byte	.LVL43
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
	.4byte	.LVL47
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LFE9
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
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL68
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL74
	.4byte	.LVL76
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
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB14
	.4byte	.LBE14
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
.LASF35:
	.string	"password"
.LASF91:
	.string	"mqtt_connect_attempted"
.LASF111:
	.string	"app_state_get_current"
.LASF78:
	.string	"params"
.LASF116:
	.string	"app_ble_master_disconnect"
.LASF110:
	.string	"mqtt_if_is_connected"
.LASF139:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
.LASF106:
	.string	"app_ble_master_init"
.LASF141:
	.string	"tskTaskControlBlock"
.LASF58:
	.string	"idle_level"
.LASF71:
	.string	"g_task_button_handle"
.LASF23:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF10:
	.string	"unsigned int"
.LASF122:
	.string	"app_mqtt_init"
.LASF92:
	.string	"mqtt_last_attempt"
.LASF87:
	.string	"g_event_queue_tail"
.LASF85:
	.string	"g_event_queue"
.LASF127:
	.string	"app_wifi_connect"
.LASF38:
	.string	"wifi_config_t"
.LASF138:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF113:
	.string	"app_state_set_next"
.LASF68:
	.string	"btn_initialize"
.LASF50:
	.string	"APP_BTN_EVT_HOLD"
.LASF47:
	.string	"app_state_t"
.LASF30:
	.string	"app_event_type_t"
.LASF104:
	.string	"app_mqtt_publish_state"
.LASF125:
	.string	"app_config_has_wifi"
.LASF39:
	.string	"APP_STATE_INIT"
.LASF20:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF120:
	.string	"app_ble_stop"
.LASF21:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF89:
	.string	"g_led_blink_enable"
.LASF75:
	.string	"app_set_led_blink"
.LASF126:
	.string	"app_config_load_wifi"
.LASF7:
	.string	"uint32_t"
.LASF13:
	.string	"APP_EVENT_NONE"
.LASF74:
	.string	"g_task_main_handle"
.LASF86:
	.string	"g_event_queue_head"
.LASF80:
	.string	"event"
.LASF142:
	.string	"app_get_tick_ms"
.LASF9:
	.string	"long long unsigned int"
.LASF79:
	.string	"wifi_cfg"
.LASF22:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF77:
	.string	"enable"
.LASF108:
	.string	"app_mqtt_start"
.LASF99:
	.string	"app_task_init"
.LASF62:
	.string	"app_btn_get_tick_cb"
.LASF94:
	.string	"app_task_wifi"
.LASF109:
	.string	"aos_now_ms"
.LASF37:
	.string	"_Bool"
.LASF54:
	.string	"APP_BTN_EVT_IDLE"
.LASF19:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF90:
	.string	"relay_state"
.LASF128:
	.string	"app_wifi_task"
.LASF66:
	.string	"btn_count"
.LASF46:
	.string	"APP_STATE_MAX"
.LASF15:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF34:
	.string	"ssid"
.LASF11:
	.string	"char"
.LASF24:
	.string	"APP_EVENT_RELAY_STATE_CHANGED"
.LASF28:
	.string	"APP_EVENT_MQTT_BLE_MASTER_DISCONNECT"
.LASF131:
	.string	"led_on"
.LASF27:
	.string	"APP_EVENT_MQTT_BLE_MASTER_CONNECT"
.LASF32:
	.string	"data"
.LASF117:
	.string	"app_ble_is_running"
.LASF76:
	.string	"app_task_main"
.LASF115:
	.string	"app_ble_master_connect"
.LASF59:
	.string	"debounce_val"
.LASF6:
	.string	"uint8_t"
.LASF136:
	.string	"app_btn_scan"
.LASF67:
	.string	"get_tick_cb"
.LASF95:
	.string	"app_task_led"
.LASF18:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF83:
	.string	"lock_button"
.LASF64:
	.string	"app_btn_get_level_cb"
.LASF3:
	.string	"long long int"
.LASF52:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF121:
	.string	"app_state_init"
.LASF124:
	.string	"wifi_if_is_mgmr_ready"
.LASF29:
	.string	"APP_EVENT_MAX"
.LASF100:
	.string	"app_config_load_relay_settings"
.LASF96:
	.string	"app_task_button"
.LASF55:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF12:
	.string	"TaskHandle_t"
.LASF114:
	.string	"app_ble_master_stop"
.LASF82:
	.string	"default_state"
.LASF14:
	.string	"APP_EVENT_BUTTON_HOLD"
.LASF26:
	.string	"APP_EVENT_MQTT_BLE_MASTER_STOP"
.LASF44:
	.string	"APP_STATE_WIFI_FAILED"
.LASF133:
	.string	"bl_gpio_enable_input"
.LASF33:
	.string	"app_event_t"
.LASF57:
	.string	"last_state"
.LASF49:
	.string	"APP_BTN_EVT_RELEASED"
.LASF129:
	.string	"led_init"
.LASF123:
	.string	"app_state_process_event"
.LASF101:
	.string	"relay_on"
.LASF40:
	.string	"APP_STATE_CHECK_FLASH"
.LASF65:
	.string	"config"
.LASF98:
	.string	"btn_cfg"
.LASF63:
	.string	"app_btn_initialize_cb"
.LASF1:
	.string	"short int"
.LASF73:
	.string	"g_task_wifi_handle"
.LASF135:
	.string	"app_btn_register_callback"
.LASF2:
	.string	"long int"
.LASF84:
	.string	"g_btn_filter_cnt"
.LASF43:
	.string	"APP_STATE_WIFI_CONNECTED"
.LASF60:
	.string	"debounce_counter"
.LASF51:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF25:
	.string	"APP_EVENT_MQTT_BLE_MASTER_START"
.LASF41:
	.string	"APP_STATE_BLE_CONFIG"
.LASF53:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF88:
	.string	"current_state"
.LASF42:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF130:
	.string	"wifi_if_is_connected"
.LASF48:
	.string	"APP_BTN_EVT_PRESSED"
.LASF72:
	.string	"g_task_led_handle"
.LASF8:
	.string	"long unsigned int"
.LASF103:
	.string	"relay_off"
.LASF134:
	.string	"app_btn_initialize"
.LASF70:
	.string	"app_btn_config_t"
.LASF118:
	.string	"aos_msleep"
.LASF119:
	.string	"app_ble_start"
.LASF31:
	.string	"type"
.LASF81:
	.string	"wait_count"
.LASF4:
	.string	"unsigned char"
.LASF69:
	.string	"btn_read"
.LASF61:
	.string	"app_btn_hw_config_t"
.LASF97:
	.string	"btn_config"
.LASF56:
	.string	"APP_BTN_EVT_MAX"
.LASF140:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/app_task"
.LASF16:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF45:
	.string	"APP_STATE_BLE_MASTER"
.LASF137:
	.string	"xTaskCreate"
.LASF36:
	.string	"is_valid"
.LASF93:
	.string	"mqtt_broker"
.LASF105:
	.string	"relay_get_state"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF132:
	.string	"led_toggle"
.LASF17:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF102:
	.string	"app_callback_update_lock_button"
.LASF107:
	.string	"app_ble_master_start"
.LASF112:
	.string	"relay_toggle"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
