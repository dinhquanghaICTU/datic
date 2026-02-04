	.file	"app_task.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.state_init_handler,"ax",@progbits
	.align	1
	.type	state_init_handler, @function
state_init_handler:
.LFB23:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
	.loc 1 447 1
	.cfi_startproc
.LVL0:
	.loc 1 448 5
	.loc 1 449 5
	.loc 1 450 5
	.loc 1 447 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 451 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,1
.LVL1:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	state_init_handler, .-state_init_handler
	.section	.text.state_check_flash_handler,"ax",@progbits
	.align	1
	.type	state_check_flash_handler, @function
state_check_flash_handler:
.LFB24:
	.loc 1 454 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 455 5
	.loc 1 454 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 455 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 458 16
	li	a0,2
.LVL3:
	.loc 1 455 8
	beq	a4,a5,.L3
	.loc 1 460 5 is_stmt 1
	.loc 1 462 5
.LVL4:
	.loc 1 463 5
	.loc 1 462 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0+4)
	lw	a0,%lo(.LANCHOR0+4)(a5)
	bne	a0,zero,.L3
	li	a0,1
.LVL5:
.L3:
	.loc 1 468 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE24:
	.size	state_check_flash_handler, .-state_check_flash_handler
	.section	.text.state_ble_config_handler,"ax",@progbits
	.align	1
	.type	state_ble_config_handler, @function
state_ble_config_handler:
.LFB25:
	.loc 1 471 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 472 5
	.loc 1 471 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 472 8
	lw	a4,0(a0)
	li	a5,6
	.loc 1 474 16
	li	a0,3
.LVL7:
	.loc 1 472 8
	beq	a4,a5,.L8
	.loc 1 476 12
	li	a0,2
.L8:
	.loc 1 477 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE25:
	.size	state_ble_config_handler, .-state_ble_config_handler
	.section	.text.state_wifi_connecting_handler,"ax",@progbits
	.align	1
	.type	state_wifi_connecting_handler, @function
state_wifi_connecting_handler:
.LFB26:
	.loc 1 480 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 481 5
	.loc 1 480 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 481 14
	lw	a0,0(a0)
.LVL9:
	.loc 1 481 8
	li	a5,1
	beq	a0,a5,.L14
	.loc 1 484 12 is_stmt 1
	.loc 1 484 15 is_stmt 0
	li	a5,3
	beq	a0,a5,.L15
	.loc 1 487 12 is_stmt 1
	.loc 1 487 15 is_stmt 0
	li	a5,5
	bne	a0,a5,.L16
.L12:
	.loc 1 492 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L14:
	.cfi_restore_state
	.loc 1 483 16
	li	a0,2
	j	.L12
.L15:
	.loc 1 486 16
	li	a0,4
	j	.L12
.L16:
	.loc 1 491 12
	li	a0,3
	j	.L12
	.cfi_endproc
.LFE26:
	.size	state_wifi_connecting_handler, .-state_wifi_connecting_handler
	.section	.text.state_wifi_connected_handler,"ax",@progbits
	.align	1
	.type	state_wifi_connected_handler, @function
state_wifi_connected_handler:
.LFB27:
	.loc 1 495 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 496 5
	.loc 1 495 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 496 14
	lw	a5,0(a0)
	.loc 1 496 8
	li	a4,1
	.loc 1 498 16
	li	a0,2
.LVL11:
	.loc 1 496 8
	beq	a5,a4,.L18
	.loc 1 499 12 is_stmt 1
	.loc 1 503 12 is_stmt 0
	li	a0,4
	.loc 1 499 15
	bne	a5,a0,.L18
	.loc 1 501 16
	li	a0,3
.L18:
	.loc 1 504 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	state_wifi_connected_handler, .-state_wifi_connected_handler
	.section	.text.state_wifi_failed_handler,"ax",@progbits
	.align	1
	.type	state_wifi_failed_handler, @function
state_wifi_failed_handler:
.LFB28:
	.loc 1 507 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 508 5
	.loc 1 507 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 508 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 510 16
	li	a0,2
.LVL13:
	.loc 1 508 8
	beq	a4,a5,.L23
	.loc 1 512 12
	li	a0,5
.L23:
	.loc 1 513 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	state_wifi_failed_handler, .-state_wifi_failed_handler
	.section	.text.state_ble_master_handler,"ax",@progbits
	.align	1
	.type	state_ble_master_handler, @function
state_ble_master_handler:
.LFB29:
	.loc 1 516 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 517 5
	.loc 1 516 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 517 8
	lw	a4,0(a0)
	li	a5,1
	.loc 1 519 16
	li	a0,2
.LVL15:
	.loc 1 517 8
	beq	a4,a5,.L27
	.loc 1 522 12
	li	a0,6
.L27:
	.loc 1 523 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	state_ble_master_handler, .-state_ble_master_handler
	.section	.text.app_task_button,"ax",@progbits
	.align	1
	.globl	app_task_button
	.type	app_task_button, @function
app_task_button:
.LFB6:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 83 5
	.loc 1 81 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 1 86 23
	li	a5,4
	.loc 1 83 25
	sw	zero,-48(s0)
	.loc 1 84 22
	sw	zero,-32(s0)
	.loc 1 86 23
	sw	a5,-52(s0)
	.loc 1 87 30
	li	a5,1
	sw	a5,-44(s0)
	.loc 1 90 30
	sb	a5,-48(s0)
	.loc 1 93 23
	sb	a5,-32(s0)
	.loc 1 94 25
	lui	a5,%hi(app_get_tick_ms)
	.loc 1 92 20
	addi	a4,s0,-52
	.loc 1 94 25
	addi	a5,a5,%lo(app_get_tick_ms)
	.loc 1 98 5
	li	a2,0
	li	a1,0
	li	a0,4
.LVL17:
	.loc 1 92 20
	sw	a4,-36(s0)
	.loc 1 94 25
	sw	a5,-28(s0)
	.loc 1 83 25
	sw	zero,-40(s0)
	.loc 1 84 5 is_stmt 1
	.loc 1 84 22 is_stmt 0
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	.loc 1 86 5 is_stmt 1
	.loc 1 87 5
	.loc 1 88 5
	.loc 1 89 5
	.loc 1 90 5
	.loc 1 92 5
	.loc 1 93 5
	.loc 1 94 5
	.loc 1 95 5
	.loc 1 96 5
	.loc 1 98 5
	call	bl_gpio_enable_input
.LVL18:
	.loc 1 99 5
	.loc 1 99 22 is_stmt 0
	lui	a5,%hi(bl_gpio_input_get_value)
	addi	a5,a5,%lo(bl_gpio_input_get_value)
	.loc 1 101 5
	addi	a0,s0,-36
	.loc 1 99 22
	sw	a5,-20(s0)
	.loc 1 101 5 is_stmt 1
	call	app_btn_initialize
.LVL19:
	.loc 1 105 5
	lui	a1,%hi(app_button_hold_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_hold_callback)
	li	a0,2
	call	app_btn_register_callback
.LVL20:
	.loc 1 106 5
	lui	a1,%hi(app_button_press_callback)
	li	a2,0
	addi	a1,a1,%lo(app_button_press_callback)
	li	a0,0
	call	app_btn_register_callback
.LVL21:
.L32:
	.loc 1 108 5 discriminator 1
	.loc 1 109 9 discriminator 1
	li	a0,0
	call	app_btn_scan
.LVL22:
	.loc 1 110 9 discriminator 1
	li	a0,20
	call	aos_msleep
.LVL23:
	.loc 1 108 11 discriminator 1
	j	.L32
	.cfi_endproc
.LFE6:
	.size	app_task_button, .-app_task_button
	.section	.text.app_get_tick_ms,"ax",@progbits
	.align	1
	.type	app_get_tick_ms, @function
app_get_tick_ms:
.LFB4:
	.loc 1 67 1
	.cfi_startproc
	.loc 1 68 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 68 12
	call	aos_now_ms
.LVL24:
	.loc 1 69 1
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
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 116 5
	.loc 1 115 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 116 5
	call	led_init
.LVL26:
.L37:
	.loc 1 117 5 is_stmt 1
	.loc 1 118 9
	.loc 1 118 13 is_stmt 0
	call	wifi_if_is_connected
.LVL27:
	.loc 1 118 12
	beq	a0,zero,.L38
	.loc 1 119 13 is_stmt 1
	call	led_on
.LVL28:
	.loc 1 120 13
	li	a0,1000
.L41:
	.loc 1 123 13 is_stmt 0
	call	aos_msleep
.LVL29:
	j	.L37
.L38:
	.loc 1 122 13 is_stmt 1
	call	led_toggle
.LVL30:
	.loc 1 123 13
	li	a0,500
	j	.L41
	.cfi_endproc
.LFE7:
	.size	app_task_led, .-app_task_led
	.section	.rodata.app_task_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"btn_task"
	.align	2
.LC1:
	.string	"led_task"
	.align	2
.LC2:
	.string	"main_task"
	.section	.text.app_task_init,"ax",@progbits
	.align	1
	.globl	app_task_init
	.type	app_task_init, @function
app_task_init:
.LFB5:
	.loc 1 73 1
	.cfi_startproc
	.loc 1 74 5
	.loc 1 73 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 74 5
	lui	a5,%hi(.LANCHOR1)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 73 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 74 5
	li	a2,4096
	lui	a1,%hi(.LC0)
	lui	a0,%hi(app_task_button)
	.loc 1 73 1
	.loc 1 74 5
	addi	a5,a5,%lo(.LANCHOR1)
	li	a4,5
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(app_task_button)
	call	xTaskCreate
.LVL31:
	.loc 1 75 5 is_stmt 1
	lui	a5,%hi(.LANCHOR2)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(app_task_led)
	addi	a5,a5,%lo(.LANCHOR2)
	li	a4,4
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(app_task_led)
	call	xTaskCreate
.LVL32:
	.loc 1 77 5
	.loc 1 78 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 77 5
	lui	a5,%hi(.LANCHOR3)
	lui	a1,%hi(.LC2)
	lui	a0,%hi(app_task_main)
	.loc 1 78 1
	.loc 1 77 5
	addi	a5,a5,%lo(.LANCHOR3)
	li	a4,2
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(app_task_main)
	.loc 1 78 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 77 5
	tail	xTaskCreate
.LVL33:
	.cfi_endproc
.LFE5:
	.size	app_task_init, .-app_task_init
	.section	.text.app_set_led_blink,"ax",@progbits
	.align	1
	.globl	app_set_led_blink
	.type	app_set_led_blink, @function
app_set_led_blink:
.LFB9:
	.loc 1 313 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 314 5
	.loc 1 313 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 315 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	app_set_led_blink, .-app_set_led_blink
	.section	.text.app_event_post,"ax",@progbits
	.align	1
	.globl	app_event_post
	.type	app_event_post, @function
app_event_post:
.LFB10:
	.loc 1 319 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 320 5
	.loc 1 319 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 320 38
	lui	a3,%hi(.LANCHOR4)
	.cfi_offset 8, -4
	.loc 1 319 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 320 38
	addi	a3,a3,%lo(.LANCHOR4)
	lw	a5,0(a3)
	.loc 1 320 44
	lui	a4,%hi(g_event_queue)
	addi	a4,a4,%lo(g_event_queue)
	slli	a2,a5,3
	add	a4,a4,a2
	sw	a0,0(a4)
	.loc 1 321 5 is_stmt 1
	.loc 1 321 44 is_stmt 0
	sw	a1,4(a4)
	.loc 1 322 5 is_stmt 1
	.loc 1 322 46 is_stmt 0
	addi	a5,a5,1
	.loc 1 322 51
	li	a4,10
	rem	a5,a5,a4
	.loc 1 322 24
	sw	a5,0(a3)
	.loc 1 323 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	app_event_post, .-app_event_post
	.section	.rodata.app_button_press_callback.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"ON"
	.align	2
.LC4:
	.string	"OFF"
	.section	.text.app_button_press_callback,"ax",@progbits
	.align	1
	.globl	app_button_press_callback
	.type	app_button_press_callback, @function
app_button_press_callback:
.LFB12:
	.loc 1 346 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 348 5
	.loc 1 346 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 348 9
	lui	s1,%hi(.LANCHOR5)
	.loc 1 346 1
	.loc 1 348 9
	addi	s1,s1,%lo(.LANCHOR5)
	.loc 1 348 8
	lbu	a5,0(s1)
	lui	s2,%hi(.LANCHOR6)
	bne	a5,zero,.L49
.LBB33:
	.loc 1 349 9 is_stmt 1
	.loc 1 350 9
	addi	a1,s2,%lo(.LANCHOR6)
.LVL37:
	addi	a0,s0,-17
.LVL38:
	call	app_config_load_relay_settings
.LVL39:
	.loc 1 351 9
	.loc 1 351 30 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
.L49:
.LBE33:
	.loc 1 354 5 is_stmt 1
	.loc 1 354 8 is_stmt 0
	lbu	a5,%lo(.LANCHOR6)(s2)
	bne	a5,zero,.L48
.LVL40:
.LBB34:
.LBB35:
	.loc 1 358 5 is_stmt 1
	call	relay_toggle
.LVL41:
	.loc 1 360 5
	.loc 1 360 9 is_stmt 0
	call	mqtt_if_is_connected
.LVL42:
	.loc 1 360 8
	beq	a0,zero,.L51
.LBB36:
	.loc 1 361 9 is_stmt 1
	.loc 1 361 31 is_stmt 0
	call	relay_get_state
.LVL43:
	.loc 1 362 9 is_stmt 1
	bne	a0,zero,.L53
	lui	a0,%hi(.LC4)
.LVL44:
	addi	a0,a0,%lo(.LC4)
.L52:
	call	app_mqtt_publish_state
.LVL45:
.L51:
.LBE36:
	.loc 1 365 5
	li	a1,0
	li	a0,2
	call	app_event_post
.LVL46:
	.loc 1 366 5
.LBE35:
.LBE34:
	.loc 1 367 1 is_stmt 0
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
.LBB41:
.LBB38:
	.loc 1 366 5
	li	a1,0
.LBE38:
.LBE41:
	.loc 1 367 1
.LBB42:
.LBB39:
	.loc 1 366 5
	li	a0,11
.LBE39:
.LBE42:
	.loc 1 367 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB43:
.LBB40:
	.loc 1 366 5
	tail	app_event_post
.LVL47:
.L53:
	.cfi_restore_state
.LBB37:
	.loc 1 362 9
	lui	a0,%hi(.LC3)
.LVL48:
	addi	a0,a0,%lo(.LC3)
	j	.L52
.LVL49:
.L48:
.LBE37:
.LBE40:
.LBE43:
	.loc 1 367 1
	lw	ra,28(sp)
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
	.cfi_endproc
.LFE12:
	.size	app_button_press_callback, .-app_button_press_callback
	.section	.text.app_callback_update_lock_button,"ax",@progbits
	.align	1
	.globl	app_callback_update_lock_button
	.type	app_callback_update_lock_button, @function
app_callback_update_lock_button:
.LFB13:
	.loc 1 370 1 is_stmt 1
	.cfi_startproc
.LVL50:
	.loc 1 371 5
	.loc 1 370 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 373 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 371 19
	lui	a5,%hi(.LANCHOR6)
	sb	a0,%lo(.LANCHOR6)(a5)
	.loc 1 372 5 is_stmt 1
	.loc 1 372 26 is_stmt 0
	li	a4,1
	lui	a5,%hi(.LANCHOR5)
	sb	a4,%lo(.LANCHOR5)(a5)
	.loc 1 373 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	app_callback_update_lock_button, .-app_callback_update_lock_button
	.section	.text.app_state_init,"ax",@progbits
	.align	1
	.globl	app_state_init
	.type	app_state_init, @function
app_state_init:
.LFB18:
	.loc 1 404 1 is_stmt 1
	.cfi_startproc
	.loc 1 405 5
	.loc 1 406 5
	.loc 1 404 1 is_stmt 0
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
	.loc 1 406 5
	lui	a0,%hi(.LANCHOR0)
	.loc 1 404 1
	.loc 1 406 5
	addi	s1,a0,%lo(.LANCHOR0)
	li	a2,8
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR0)
	call	memset
.LVL51:
	.loc 1 407 5 is_stmt 1
	.loc 1 409 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 407 35
	sw	zero,0(s1)
	.loc 1 408 5 is_stmt 1
	.loc 1 408 32 is_stmt 0
	sw	zero,4(s1)
	.loc 1 409 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	app_state_init, .-app_state_init
	.section	.text.app_state_get_current,"ax",@progbits
	.align	1
	.globl	app_state_get_current
	.type	app_state_get_current, @function
app_state_get_current:
.LFB19:
	.loc 1 412 1 is_stmt 1
	.cfi_startproc
	.loc 1 413 5
	.loc 1 412 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 414 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	app_state_get_current, .-app_state_get_current
	.section	.text.app_state_get_next,"ax",@progbits
	.align	1
	.globl	app_state_get_next
	.type	app_state_get_next, @function
app_state_get_next:
.LFB20:
	.loc 1 417 1 is_stmt 1
	.cfi_startproc
	.loc 1 418 5
	.loc 1 417 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 419 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR0+4)
	lw	a0,%lo(.LANCHOR0+4)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	app_state_get_next, .-app_state_get_next
	.section	.text.app_state_set_next,"ax",@progbits
	.align	1
	.globl	app_state_set_next
	.type	app_state_set_next, @function
app_state_set_next:
.LFB21:
	.loc 1 422 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 423 5
	.loc 1 422 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 424 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 423 32
	lui	a5,%hi(.LANCHOR0+4)
	sw	a0,%lo(.LANCHOR0+4)(a5)
	.loc 1 424 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	app_state_set_next, .-app_state_set_next
	.section	.text.app_state_process_event,"ax",@progbits
	.align	1
	.globl	app_state_process_event
	.type	app_state_process_event, @function
app_state_process_event:
.LFB22:
	.loc 1 427 1 is_stmt 1
	.cfi_startproc
.LVL53:
	.loc 1 428 5
	.loc 1 427 1 is_stmt 0
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
	.loc 1 429 31
	lui	s1,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(s1)
	.loc 1 428 8
	beq	a0,zero,.L68
	.loc 1 432 5 is_stmt 1
	.loc 1 432 8 is_stmt 0
	li	a4,6
	bgtu	a5,a4,.L68
	.loc 1 436 43
	lui	a4,%hi(.LANCHOR7)
	addi	a4,a4,%lo(.LANCHOR7)
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 436 29
	lw	a5,0(a5)
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 436 5 is_stmt 1
	.loc 1 436 29 is_stmt 0
	jalr	a5
.LVL54:
	.loc 1 438 5 is_stmt 1
	.loc 1 438 8 is_stmt 0
	lw	a5,0(s1)
	beq	a5,a0,.L70
	.loc 1 439 9 is_stmt 1
	.loc 1 440 9
	.loc 1 440 39 is_stmt 0
	sw	a0,0(s1)
.L70:
	.loc 1 443 5 is_stmt 1
	.loc 1 443 27 is_stmt 0
	lw	a5,0(s1)
.LVL55:
.L68:
	.loc 1 444 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	app_state_process_event, .-app_state_process_event
	.section	.rodata.app_task_main.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"172.20.10.3"
	.section	.text.app_task_main,"ax",@progbits
	.align	1
	.globl	app_task_main
	.type	app_task_main, @function
app_task_main:
.LFB8:
	.loc 1 134 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 135 5
	.loc 1 136 5
	.loc 1 134 1 is_stmt 0
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
	.loc 1 136 17
	sw	zero,-156(s0)
	sw	zero,-152(s0)
	.loc 1 137 5 is_stmt 1
	.loc 1 138 5
	call	app_state_init
.LVL57:
	.loc 1 139 5
	call	app_mqtt_init
.LVL58:
.LBB44:
	.loc 1 142 9
	.loc 1 143 9
	.loc 1 145 9
	.loc 1 147 13 is_stmt 0
	addi	a1,s0,-148
	addi	a0,s0,-157
	.loc 1 145 17
	sb	zero,-157(s0)
	.loc 1 146 8 is_stmt 1
	.loc 1 146 13 is_stmt 0
	sb	zero,-148(s0)
	.loc 1 147 9 is_stmt 1
	.loc 1 147 13 is_stmt 0
	call	app_config_load_relay_settings
.LVL59:
	.loc 1 147 12
	bne	a0,zero,.L76
	.loc 1 148 13 is_stmt 1
	.loc 1 148 16 is_stmt 0
	lbu	a5,-157(s0)
	beq	a5,zero,.L77
	.loc 1 149 17 is_stmt 1
	call	relay_on
.LVL60:
.L78:
	.loc 1 153 13
.LBB45:
.LBB46:
	.loc 1 371 5
	.loc 1 371 19 is_stmt 0
	lbu	a4,-148(s0)
	lui	a5,%hi(.LANCHOR6)
	sb	a4,%lo(.LANCHOR6)(a5)
	.loc 1 372 5 is_stmt 1
	.loc 1 372 26 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	li	a4,1
	sb	a4,%lo(.LANCHOR5)(a5)
.LVL61:
.L76:
.LBE46:
.LBE45:
.LBE44:
	.loc 1 157 5 is_stmt 1
	.loc 1 158 5 is_stmt 0
	addi	a0,s0,-156
	.loc 1 157 16
	sw	zero,-156(s0)
	.loc 1 158 5 is_stmt 1
	.loc 1 161 11 is_stmt 0
	li	s1,101
	.loc 1 158 5
	call	app_state_process_event
.LVL62:
	.loc 1 160 5 is_stmt 1
	.loc 1 161 5
.L79:
	.loc 1 161 11
	.loc 1 161 13 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL63:
	.loc 1 161 11
	bne	a0,zero,.L80
	.loc 1 161 37 discriminator 1
	addi	s1,s1,-1
.LVL64:
	bne	s1,zero,.L81
.LVL65:
.L80:
	.loc 1 166 5 is_stmt 1
	lui	s1,%hi(.LANCHOR0)
	.loc 1 166 9 is_stmt 0
	call	wifi_if_is_mgmr_ready
.LVL66:
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 166 8
	beq	a0,zero,.L82
	.loc 1 167 9 is_stmt 1
	.loc 1 167 13 is_stmt 0
	call	app_config_has_wifi
.LVL67:
	.loc 1 167 12
	beq	a0,zero,.L83
	.loc 1 168 13 is_stmt 1
	.loc 1 168 17 is_stmt 0
	addi	a0,s0,-148
	call	app_config_load_wifi
.LVL68:
	.loc 1 168 16
	bne	a0,zero,.L83
	.loc 1 169 17 is_stmt 1
.LVL69:
.LBB47:
.LBB48:
	.loc 1 423 5
	.loc 1 423 32 is_stmt 0
	li	a5,3
.LBE48:
.LBE47:
	.loc 1 171 17
	addi	a0,s0,-156
.LBB50:
.LBB49:
	.loc 1 423 32
	sw	a5,4(s1)
.LVL70:
.LBE49:
.LBE50:
	.loc 1 170 17 is_stmt 1
	.loc 1 170 28 is_stmt 0
	sw	zero,-156(s0)
	.loc 1 171 17 is_stmt 1
	call	app_state_process_event
.LVL71:
	.loc 1 172 17
	addi	a1,s0,-115
	addi	a0,s0,-148
	call	app_wifi_connect
.LVL72:
.L82:
.LBB51:
	.loc 1 191 19 is_stmt 0
	lui	s5,%hi(g_event_queue)
	lui	s6,%hi(.L103)
.LBB52:
	.loc 1 222 17
	lui	s3,%hi(.LC3)
	lui	s4,%hi(.LC4)
.LBE52:
	.loc 1 191 19
	addi	s5,s5,%lo(g_event_queue)
	addi	s6,s6,%lo(.L103)
.LBB53:
	.loc 1 222 17
	addi	s3,s3,%lo(.LC3)
	addi	s4,s4,%lo(.LC4)
.L84:
.LBE53:
.LBE51:
	.loc 1 185 5 is_stmt 1
.LBB72:
	.loc 1 186 9
	.loc 1 187 9
	.loc 1 188 9
	.loc 1 190 9
	.loc 1 190 32 is_stmt 0
	lui	a4,%hi(.LANCHOR8)
	addi	a4,a4,%lo(.LANCHOR8)
	.loc 1 190 12
	lui	a3,%hi(.LANCHOR4)
	.loc 1 190 32
	lw	a5,0(a4)
	.loc 1 190 12
	lw	a3,%lo(.LANCHOR4)(a3)
	beq	a5,a3,.L85
	.loc 1 191 13 is_stmt 1
	.loc 1 191 19 is_stmt 0
	slli	a3,a5,3
	add	a3,s5,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	.loc 1 192 54
	addi	a5,a5,1
	.loc 1 191 19
	sw	a2,-156(s0)
	sw	a3,-152(s0)
	.loc 1 192 13 is_stmt 1
	.loc 1 192 59 is_stmt 0
	li	a3,10
	rem	a5,a5,a3
	.loc 1 192 32
	sw	a5,0(a4)
.L86:
	.loc 1 198 9 is_stmt 1
.LBB54:
.LBB55:
	.loc 1 413 5
.LBE55:
.LBE54:
	.loc 1 200 18 is_stmt 0
	lw	a5,-156(s0)
	.loc 1 200 12
	li	a4,8
.LBB57:
.LBB56:
	.loc 1 413 27
	lw	s2,0(s1)
.LVL73:
.LBE56:
.LBE57:
	.loc 1 200 9 is_stmt 1
	.loc 1 200 12 is_stmt 0
	bne	a5,a4,.L87
	.loc 1 201 13 is_stmt 1
	call	relay_toggle
.LVL74:
	.loc 1 202 13
.L147:
	.loc 1 220 13
	.loc 1 220 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL75:
	.loc 1 220 16
	beq	a0,zero,.L143
.LBB58:
	.loc 1 221 17 is_stmt 1
	.loc 1 221 39 is_stmt 0
	call	relay_get_state
.LVL76:
	.loc 1 222 17 is_stmt 1
	mv	a5,s3
	bne	a0,zero,.L90
.LBE58:
.LBB59:
	.loc 1 204 17 is_stmt 0
	mv	a5,s4
.L90:
	.loc 1 204 17 discriminator 4
	mv	a0,a5
.LVL77:
.L142:
	call	app_mqtt_publish_state
.LVL78:
.LBE59:
	.loc 1 206 13 is_stmt 1 discriminator 4
.L143:
	.loc 1 250 13
	.loc 1 250 24 is_stmt 0
	sw	zero,-156(s0)
.L91:
	.loc 1 253 9 is_stmt 1
	addi	a5,s2,-2
	li	a4,4
	bgtu	a5,a4,.L101
	slli	a5,a5,2
	add	a5,a5,s6
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.app_task_main,"a",@progbits
	.align	2
	.align	2
.L103:
	.word	.L106
	.word	.L104
	.word	.L105
	.word	.L104
	.word	.L102
	.section	.text.app_task_main
.LVL79:
.L77:
.LBE72:
.LBB73:
	.loc 1 151 17
	call	relay_off
.LVL80:
	j	.L78
.LVL81:
.L81:
.LBE73:
	.loc 1 162 9
	li	a0,100
	call	aos_msleep
.LVL82:
	.loc 1 163 9
	j	.L79
.LVL83:
.L83:
	.loc 1 174 17
.LBB74:
.LBB75:
	.loc 1 423 5
	.loc 1 423 32 is_stmt 0
	li	a5,1
.LBE75:
.LBE74:
	.loc 1 176 17
	addi	a0,s0,-156
.LBB77:
.LBB76:
	.loc 1 423 32
	sw	a5,4(s1)
.LVL84:
.LBE76:
.LBE77:
	.loc 1 175 17 is_stmt 1
	.loc 1 175 28 is_stmt 0
	sw	zero,-156(s0)
	.loc 1 176 17 is_stmt 1
	call	app_state_process_event
.LVL85:
	j	.L82
.L85:
.LBB78:
	.loc 1 194 13
	.loc 1 194 24 is_stmt 0
	sw	zero,-156(s0)
	.loc 1 195 13 is_stmt 1
	.loc 1 195 24 is_stmt 0
	sw	zero,-152(s0)
	j	.L86
.LVL86:
.L87:
	.loc 1 207 16 is_stmt 1
	.loc 1 207 19 is_stmt 0
	li	a4,9
	bne	a5,a4,.L92
	.loc 1 208 13 is_stmt 1
	call	relay_on
.LVL87:
	.loc 1 209 13
	.loc 1 209 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL88:
	.loc 1 209 16
	beq	a0,zero,.L143
	.loc 1 210 17 is_stmt 1
	mv	a0,s3
	j	.L142
.L92:
	.loc 1 213 16
	.loc 1 213 19 is_stmt 0
	li	a4,10
	bne	a5,a4,.L94
	.loc 1 214 13 is_stmt 1
	call	relay_off
.LVL89:
	.loc 1 215 13
	.loc 1 215 17 is_stmt 0
	call	mqtt_if_is_connected
.LVL90:
	.loc 1 215 16
	beq	a0,zero,.L143
	.loc 1 216 17 is_stmt 1
	mv	a0,s4
	j	.L142
.L94:
	.loc 1 219 16
	.loc 1 219 19 is_stmt 0
	li	a4,11
	beq	a5,a4,.L147
	.loc 1 226 14 is_stmt 1
	.loc 1 226 17 is_stmt 0
	li	a4,12
	bne	a5,a4,.L97
.LBB60:
	.loc 1 227 13 is_stmt 1
	.loc 1 227 23 is_stmt 0
	call	app_ble_master_init
.LVL91:
	.loc 1 228 13 is_stmt 1
	.loc 1 228 16 is_stmt 0
	bne	a0,zero,.L84
	.loc 1 232 13 is_stmt 1
	.loc 1 232 19 is_stmt 0
	call	app_ble_master_start
.LVL92:
	.loc 1 233 13 is_stmt 1
.LBB61:
.LBB62:
	.loc 1 423 5
	.loc 1 423 32 is_stmt 0
	li	a5,6
.LVL93:
.L148:
.LBE62:
.LBE61:
.LBE60:
.LBB63:
.LBB64:
	sw	a5,4(s1)
.LBE64:
.LBE63:
	.loc 1 240 13 is_stmt 1
	j	.L143
.L97:
	.loc 1 236 14
	.loc 1 236 17 is_stmt 0
	li	a4,13
	bne	a5,a4,.L99
	.loc 1 237 13 is_stmt 1
	.loc 1 238 13
	call	app_ble_master_stop
.LVL94:
	.loc 1 239 13
.LBB66:
.LBB65:
	.loc 1 423 5
	.loc 1 423 32 is_stmt 0
	li	a5,4
	j	.L148
.LVL95:
.L99:
.LBE65:
.LBE66:
	.loc 1 242 14 is_stmt 1
	.loc 1 242 17 is_stmt 0
	li	a4,14
	bne	a5,a4,.L100
	.loc 1 243 13 is_stmt 1
	.loc 1 244 13
	li	a0,0
	call	app_ble_master_connect
.LVL96:
	.loc 1 245 13
	j	.L143
.L100:
	.loc 1 247 14
	.loc 1 247 17 is_stmt 0
	li	a4,15
	bne	a5,a4,.L91
	.loc 1 248 13 is_stmt 1
	.loc 1 249 13
	call	app_ble_master_disconnect
.LVL97:
	j	.L143
.L106:
	.loc 1 257 17
	.loc 1 257 22 is_stmt 0
	call	app_ble_is_running
.LVL98:
	.loc 1 257 20
	bne	a0,zero,.L101
	.loc 1 258 21 is_stmt 1
	li	a0,200
	call	aos_msleep
.LVL99:
	.loc 1 259 21
	call	app_ble_start
.LVL100:
.L101:
	.loc 1 308 9
	li	a0,100
	call	aos_msleep
.LVL101:
	j	.L84
.LVL102:
.L104:
	.loc 1 263 17
	.loc 1 263 21 is_stmt 0
	call	app_ble_is_running
.LVL103:
	.loc 1 263 20
	beq	a0,zero,.L101
	.loc 1 264 21 is_stmt 1
	call	app_ble_stop
.LVL104:
	j	.L101
.L105:
	.loc 1 268 17
	.loc 1 268 21 is_stmt 0
	call	app_ble_is_running
.LVL105:
	.loc 1 268 20
	beq	a0,zero,.L109
	.loc 1 269 21 is_stmt 1
	call	app_ble_stop
.LVL106:
.L109:
.LBB67:
	.loc 1 272 21
	.loc 1 273 21
	.loc 1 274 21
	.loc 1 274 36 is_stmt 0
	call	aos_now_ms
.LVL107:
	mv	s2,a0
.LVL108:
	.loc 1 276 21 is_stmt 1
	.loc 1 276 26 is_stmt 0
	call	mqtt_if_is_connected
.LVL109:
	.loc 1 276 24
	bne	a0,zero,.L110
	.loc 1 276 52 discriminator 1
	lui	s7,%hi(.LANCHOR9)
	addi	s7,s7,%lo(.LANCHOR9)
	.loc 1 276 49 discriminator 1
	lbu	a5,0(s7)
	bne	a5,zero,.L110
.LBB68:
	.loc 1 277 25 is_stmt 1
.LVL110:
	.loc 1 278 25
	lui	a0,%hi(.LC5)
	li	a2,0
	li	a1,1883
	addi	a0,a0,%lo(.LC5)
	call	app_mqtt_start
.LVL111:
	.loc 1 279 25
	.loc 1 279 48 is_stmt 0
	li	a5,1
	sb	a5,0(s7)
	.loc 1 280 25 is_stmt 1
	.loc 1 280 43 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	sw	s2,%lo(.LANCHOR10)(a5)
.LBE68:
	.loc 1 276 77
	j	.L101
.LVL112:
.L110:
	.loc 1 281 28 is_stmt 1
	.loc 1 281 33 is_stmt 0
	call	mqtt_if_is_connected
.LVL113:
	.loc 1 281 31
	bne	a0,zero,.L111
	.loc 1 281 56 discriminator 1
	lui	a5,%hi(.LANCHOR9)
	lbu	a5,%lo(.LANCHOR9)(a5)
	beq	a5,zero,.L111
	.loc 1 282 25 is_stmt 1
	.loc 1 282 33 is_stmt 0
	lui	s7,%hi(.LANCHOR10)
	addi	s7,s7,%lo(.LANCHOR10)
	lw	a4,0(s7)
	.loc 1 282 28
	li	a5,8192
	addi	a5,a5,1808
	.loc 1 282 33
	sub	a4,s2,a4
	.loc 1 282 28
	bleu	a4,a5,.L101
.LBB69:
	.loc 1 283 29 is_stmt 1
.LVL114:
	.loc 1 284 29
	lui	a0,%hi(.LC5)
	li	a2,0
	li	a1,1883
	addi	a0,a0,%lo(.LC5)
	call	app_mqtt_start
.LVL115:
	.loc 1 285 29
	.loc 1 285 47 is_stmt 0
	sw	s2,0(s7)
	j	.L101
.LVL116:
.L111:
.LBE69:
	.loc 1 287 28 is_stmt 1
	.loc 1 287 32 is_stmt 0
	call	mqtt_if_is_connected
.LVL117:
	.loc 1 287 31
	beq	a0,zero,.L101
	.loc 1 288 25 is_stmt 1
	.loc 1 288 48 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	sb	zero,%lo(.LANCHOR9)(a5)
	j	.L101
.LVL118:
.L102:
.LBE67:
	.loc 1 298 17 is_stmt 1
	.loc 1 298 20 is_stmt 0
	lw	a4,-156(s0)
	li	a5,1
	bne	a4,a5,.L101
	.loc 1 299 21 is_stmt 1
	call	app_ble_master_stop
.LVL119:
	.loc 1 300 21
.LBB70:
.LBB71:
	.loc 1 423 5
	.loc 1 423 32 is_stmt 0
	li	a5,2
	sw	a5,4(s1)
.LVL120:
.LBE71:
.LBE70:
	.loc 1 301 21 is_stmt 1
	.loc 1 301 32 is_stmt 0
	sw	zero,-156(s0)
	j	.L101
.LBE78:
	.cfi_endproc
.LFE8:
	.size	app_task_main, .-app_task_main
	.section	.text.app_button_hold_callback,"ax",@progbits
	.align	1
	.globl	app_button_hold_callback
	.type	app_button_hold_callback, @function
app_button_hold_callback:
.LFB11:
	.loc 1 326 1 is_stmt 1
	.cfi_startproc
.LVL121:
	.loc 1 328 5
	.loc 1 326 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 328 9
	call	app_ble_is_running
.LVL122:
	.loc 1 328 8
	beq	a0,zero,.L150
	.loc 1 329 9 is_stmt 1
	call	app_ble_stop
.LVL123:
	.loc 1 330 9
	li	a0,500
	call	aos_msleep
.LVL124:
.L150:
	.loc 1 333 5
	call	wifi_if_disconnect
.LVL125:
	.loc 1 334 5
	li	a0,2000
	call	aos_msleep
.LVL126:
	.loc 1 336 5
	call	app_config_clear_wifi
.LVL127:
	.loc 1 338 5
	.loc 1 338 17 is_stmt 0
	li	a5,1
	.loc 1 342 5
	addi	a0,s0,-24
	.loc 1 338 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 342 5 is_stmt 1
	call	app_state_process_event
.LVL128:
	.loc 1 343 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	app_button_hold_callback, .-app_button_hold_callback
	.section	.text.app_wifi_connected_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_connected_callback
	.type	app_wifi_connected_callback, @function
app_wifi_connected_callback:
.LFB14:
	.loc 1 376 1 is_stmt 1
	.cfi_startproc
	.loc 1 377 5
	.loc 1 376 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 377 17
	li	a5,3
	.loc 1 380 5
	addi	a0,s0,-24
	.loc 1 377 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 380 5 is_stmt 1
	call	app_state_process_event
.LVL129:
	.loc 1 381 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	app_wifi_connected_callback, .-app_wifi_connected_callback
	.section	.text.app_wifi_disconnected_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_disconnected_callback
	.type	app_wifi_disconnected_callback, @function
app_wifi_disconnected_callback:
.LFB15:
	.loc 1 384 1 is_stmt 1
	.cfi_startproc
	.loc 1 385 5
	.loc 1 384 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 385 17
	li	a5,4
	.loc 1 386 5
	addi	a0,s0,-24
	.loc 1 385 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 386 5 is_stmt 1
	call	app_state_process_event
.LVL130:
	.loc 1 387 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	app_wifi_disconnected_callback, .-app_wifi_disconnected_callback
	.section	.text.app_wifi_connect_failed_callback,"ax",@progbits
	.align	1
	.globl	app_wifi_connect_failed_callback
	.type	app_wifi_connect_failed_callback, @function
app_wifi_connect_failed_callback:
.LFB16:
	.loc 1 390 1 is_stmt 1
	.cfi_startproc
	.loc 1 391 5
	.loc 1 390 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 391 17
	li	a5,5
	.loc 1 392 5
	addi	a0,s0,-24
	.loc 1 391 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 392 5 is_stmt 1
	call	app_state_process_event
.LVL131:
	.loc 1 393 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	app_wifi_connect_failed_callback, .-app_wifi_connect_failed_callback
	.section	.text.app_ble_config_done_callback,"ax",@progbits
	.align	1
	.globl	app_ble_config_done_callback
	.type	app_ble_config_done_callback, @function
app_ble_config_done_callback:
.LFB17:
	.loc 1 396 1 is_stmt 1
	.cfi_startproc
.LVL132:
	.loc 1 397 5
	.loc 1 398 5
	.loc 1 399 5
	.loc 1 396 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 399 17
	li	a5,6
	.loc 1 400 5
	addi	a0,s0,-24
.LVL133:
	.loc 1 399 17
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	.loc 1 400 5 is_stmt 1
	call	app_state_process_event
.LVL134:
	.loc 1 401 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	app_ble_config_done_callback, .-app_ble_config_done_callback
	.section	.text.app_run,"ax",@progbits
	.align	1
	.globl	app_run
	.type	app_run, @function
app_run:
.LFB30:
	.loc 1 527 1 is_stmt 1
	.cfi_startproc
	.loc 1 528 5
	.loc 1 529 5
	.loc 1 527 1 is_stmt 0
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
	.loc 1 529 5
	call	led_init
.LVL135:
	.loc 1 530 5 is_stmt 1
	call	relay_init
.LVL136:
	.loc 1 531 5
	.loc 1 531 9 is_stmt 0
	call	app_config_init
.LVL137:
	.loc 1 531 8
	beq	a0,zero,.L164
.L166:
	.loc 1 533 16
	li	s1,-1
.L163:
	.loc 1 552 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L164:
	.cfi_restore_state
	.loc 1 535 5 is_stmt 1
	.loc 1 535 9 is_stmt 0
	call	wifi_if_init
.LVL138:
	.loc 1 535 8
	bne	a0,zero,.L166
	.loc 1 539 5 is_stmt 1
	lui	a0,%hi(app_wifi_connected_callback)
	addi	a0,a0,%lo(app_wifi_connected_callback)
	call	app_wifi_set_connected_cb
.LVL139:
	.loc 1 540 5
	lui	a0,%hi(app_wifi_disconnected_callback)
	addi	a0,a0,%lo(app_wifi_disconnected_callback)
	call	app_wifi_set_disconnected_cb
.LVL140:
	.loc 1 541 5
	lui	a0,%hi(app_wifi_connect_failed_callback)
	addi	a0,a0,%lo(app_wifi_connect_failed_callback)
	call	app_wifi_set_connect_failed_cb
.LVL141:
	.loc 1 543 5
	.loc 1 543 9 is_stmt 0
	call	app_ble_init
.LVL142:
	mv	s1,a0
	.loc 1 543 8
	bne	a0,zero,.L166
	.loc 1 547 5 is_stmt 1
	lui	a0,%hi(app_ble_config_done_callback)
	addi	a0,a0,%lo(app_ble_config_done_callback)
	call	app_ble_set_config_done_cb
.LVL143:
	.loc 1 549 5
	call	app_task_init
.LVL144:
	.loc 1 551 5
	.loc 1 551 12 is_stmt 0
	j	.L163
	.cfi_endproc
.LFE30:
	.size	app_run, .-app_run
	.globl	g_event_queue_tail
	.globl	g_event_queue_head
	.comm	g_event_queue,80,4
	.globl	g_btn_filter_cnt
	.section	.rodata.state_handlers,"a"
	.align	2
	.set	.LANCHOR7,. + 0
	.type	state_handlers, @object
	.size	state_handlers, 28
state_handlers:
	.word	state_init_handler
	.word	state_check_flash_handler
	.word	state_ble_config_handler
	.word	state_wifi_connecting_handler
	.word	state_wifi_connected_handler
	.word	state_wifi_failed_handler
	.word	state_ble_master_handler
	.section	.sbss.g_event_queue_head,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	g_event_queue_head, @object
	.size	g_event_queue_head, 4
g_event_queue_head:
	.zero	4
	.section	.sbss.g_event_queue_tail,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	g_event_queue_tail, @object
	.size	g_event_queue_tail, 4
g_event_queue_tail:
	.zero	4
	.section	.sbss.g_lock_button,"aw",@nobits
	.set	.LANCHOR6,. + 0
	.type	g_lock_button, @object
	.size	g_lock_button, 1
g_lock_button:
	.zero	1
	.section	.sbss.g_lock_button_loaded,"aw",@nobits
	.set	.LANCHOR5,. + 0
	.type	g_lock_button_loaded, @object
	.size	g_lock_button_loaded, 1
g_lock_button_loaded:
	.zero	1
	.section	.sbss.g_state_machine,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_state_machine, @object
	.size	g_state_machine, 8
g_state_machine:
	.zero	8
	.section	.sbss.g_task_button_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_task_button_handle, @object
	.size	g_task_button_handle, 4
g_task_button_handle:
	.zero	4
	.section	.sbss.g_task_led_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_task_led_handle, @object
	.size	g_task_led_handle, 4
g_task_led_handle:
	.zero	4
	.section	.sbss.g_task_main_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_task_main_handle, @object
	.size	g_task_main_handle, 4
g_task_main_handle:
	.zero	4
	.section	.sbss.mqtt_connect_attempted.1,"aw",@nobits
	.set	.LANCHOR9,. + 0
	.type	mqtt_connect_attempted.1, @object
	.size	mqtt_connect_attempted.1, 1
mqtt_connect_attempted.1:
	.zero	1
	.section	.sbss.mqtt_last_attempt.0,"aw",@nobits
	.align	2
	.set	.LANCHOR10,. + 0
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
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../app_config/app_config.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../third_party/lib_button/app_btn.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/led/led.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/../../hardware/relay/relay.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/../wifi_if/wifi_if.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/../gpio/m_ble.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/ble/../mqtt_if/mqtt_if.h"
	.file 14 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x140d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF173
	.byte	0xc
	.4byte	.LASF174
	.4byte	.LASF175
	.4byte	.Ldebug_ranges0+0xf8
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
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x3
	.byte	0x12
	.byte	0xe
	.4byte	0xc2
	.byte	0x6
	.4byte	.LASF11
	.byte	0
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x6
	.4byte	.LASF18
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x1b
	.byte	0x3
	.4byte	0x83
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x3
	.byte	0x1d
	.byte	0xe
	.4byte	0x143
	.byte	0x6
	.4byte	.LASF20
	.byte	0
	.byte	0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6
	.4byte	.LASF22
	.byte	0x2
	.byte	0x6
	.4byte	.LASF23
	.byte	0x3
	.byte	0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x6
	.4byte	.LASF26
	.byte	0x6
	.byte	0x6
	.4byte	.LASF27
	.byte	0x7
	.byte	0x6
	.4byte	.LASF28
	.byte	0x8
	.byte	0x6
	.4byte	.LASF29
	.byte	0x9
	.byte	0x6
	.4byte	.LASF30
	.byte	0xa
	.byte	0x6
	.4byte	.LASF31
	.byte	0xb
	.byte	0x6
	.4byte	.LASF32
	.byte	0xc
	.byte	0x6
	.4byte	.LASF33
	.byte	0xd
	.byte	0x6
	.4byte	.LASF34
	.byte	0xe
	.byte	0x6
	.4byte	.LASF35
	.byte	0xf
	.byte	0x6
	.4byte	.LASF36
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF37
	.byte	0x3
	.byte	0x2f
	.byte	0x3
	.4byte	0xce
	.byte	0x7
	.byte	0x8
	.byte	0x3
	.byte	0x31
	.byte	0x9
	.4byte	0x173
	.byte	0x8
	.4byte	.LASF38
	.byte	0x3
	.byte	0x32
	.byte	0x16
	.4byte	0x143
	.byte	0
	.byte	0x8
	.4byte	.LASF39
	.byte	0x3
	.byte	0x33
	.byte	0xb
	.4byte	0x173
	.byte	0x4
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x3
	.4byte	.LASF40
	.byte	0x3
	.byte	0x34
	.byte	0x3
	.4byte	0x14f
	.byte	0x7
	.byte	0x8
	.byte	0x3
	.byte	0x36
	.byte	0x9
	.4byte	0x1a5
	.byte	0x8
	.4byte	.LASF41
	.byte	0x3
	.byte	0x37
	.byte	0x11
	.4byte	0xc2
	.byte	0
	.byte	0x8
	.4byte	.LASF42
	.byte	0x3
	.byte	0x38
	.byte	0x11
	.4byte	0xc2
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF43
	.byte	0x3
	.byte	0x39
	.byte	0x3
	.4byte	0x181
	.byte	0x3
	.4byte	.LASF44
	.byte	0x3
	.byte	0x3b
	.byte	0x17
	.4byte	0x1bd
	.byte	0xa
	.byte	0x4
	.4byte	0x1c3
	.byte	0xb
	.4byte	0xc2
	.4byte	0x1d2
	.byte	0xc
	.4byte	0x1d2
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x175
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF45
	.byte	0xd
	.4byte	0x1d8
	.byte	0xa
	.byte	0x4
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF46
	.byte	0x4
	.byte	0x46
	.byte	0x25
	.4byte	0x1f6
	.byte	0xa
	.byte	0x4
	.4byte	0x1fc
	.byte	0xe
	.4byte	.LASF176
	.byte	0xa
	.byte	0x4
	.4byte	0x1df
	.byte	0x7
	.byte	0x63
	.byte	0x5
	.byte	0xe
	.byte	0x9
	.4byte	0x238
	.byte	0x8
	.4byte	.LASF47
	.byte	0x5
	.byte	0xf
	.byte	0xa
	.4byte	0x238
	.byte	0
	.byte	0x8
	.4byte	.LASF48
	.byte	0x5
	.byte	0x10
	.byte	0xa
	.4byte	0x248
	.byte	0x21
	.byte	0x8
	.4byte	.LASF49
	.byte	0x5
	.byte	0x11
	.byte	0x9
	.4byte	0x258
	.byte	0x62
	.byte	0
	.byte	0xf
	.4byte	0x1d8
	.4byte	0x248
	.byte	0x10
	.4byte	0x7c
	.byte	0x20
	.byte	0
	.byte	0xf
	.4byte	0x1d8
	.4byte	0x258
	.byte	0x10
	.4byte	0x7c
	.byte	0x40
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF50
	.byte	0x3
	.4byte	.LASF51
	.byte	0x5
	.byte	0x12
	.byte	0x3
	.4byte	0x207
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x21
	.byte	0x1
	.4byte	0x2b0
	.byte	0x6
	.4byte	.LASF52
	.byte	0
	.byte	0x6
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6
	.4byte	.LASF54
	.byte	0x2
	.byte	0x6
	.4byte	.LASF55
	.byte	0x3
	.byte	0x6
	.4byte	.LASF56
	.byte	0x4
	.byte	0x6
	.4byte	.LASF57
	.byte	0x5
	.byte	0x6
	.4byte	.LASF58
	.byte	0x6
	.byte	0x6
	.4byte	.LASF59
	.byte	0x7
	.byte	0x6
	.4byte	.LASF60
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x10
	.byte	0x6
	.byte	0x2d
	.byte	0x9
	.4byte	0x2fb
	.byte	0x11
	.string	"pin"
	.byte	0x6
	.byte	0x2f
	.byte	0xe
	.4byte	0x5b
	.byte	0
	.byte	0x8
	.4byte	.LASF61
	.byte	0x6
	.byte	0x30
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0x8
	.4byte	.LASF62
	.byte	0x6
	.byte	0x31
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.byte	0x8
	.4byte	.LASF63
	.byte	0x6
	.byte	0x32
	.byte	0xd
	.4byte	0x41
	.byte	0xc
	.byte	0x8
	.4byte	.LASF64
	.byte	0x6
	.byte	0x33
	.byte	0xd
	.4byte	0x41
	.byte	0xd
	.byte	0
	.byte	0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0x34
	.byte	0x3
	.4byte	0x2b0
	.byte	0x3
	.4byte	.LASF66
	.byte	0x6
	.byte	0x36
	.byte	0x14
	.4byte	0x313
	.byte	0xa
	.byte	0x4
	.4byte	0x319
	.byte	0x12
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0x37
	.byte	0x10
	.4byte	0x32a
	.byte	0xa
	.byte	0x4
	.4byte	0x330
	.byte	0x13
	.4byte	0x33b
	.byte	0xc
	.4byte	0x5b
	.byte	0
	.byte	0x3
	.4byte	.LASF68
	.byte	0x6
	.byte	0x38
	.byte	0x14
	.4byte	0x347
	.byte	0xa
	.byte	0x4
	.4byte	0x34d
	.byte	0xb
	.4byte	0x5b
	.4byte	0x35c
	.byte	0xc
	.4byte	0x5b
	.byte	0
	.byte	0x7
	.byte	0x14
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.4byte	0x3a7
	.byte	0x8
	.4byte	.LASF69
	.byte	0x6
	.byte	0x3c
	.byte	0x1a
	.4byte	0x3a7
	.byte	0
	.byte	0x8
	.4byte	.LASF70
	.byte	0x6
	.byte	0x3d
	.byte	0xd
	.4byte	0x41
	.byte	0x4
	.byte	0x8
	.4byte	.LASF71
	.byte	0x6
	.byte	0x3e
	.byte	0x19
	.4byte	0x307
	.byte	0x8
	.byte	0x8
	.4byte	.LASF72
	.byte	0x6
	.byte	0x3f
	.byte	0x1b
	.4byte	0x31e
	.byte	0xc
	.byte	0x8
	.4byte	.LASF73
	.byte	0x6
	.byte	0x40
	.byte	0x1a
	.4byte	0x33b
	.byte	0x10
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x2fb
	.byte	0x3
	.4byte	.LASF74
	.byte	0x6
	.byte	0x41
	.byte	0x3
	.4byte	0x35c
	.byte	0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0x17
	.byte	0x15
	.4byte	0x1ea
	.byte	0x5
	.byte	0x3
	.4byte	g_task_button_handle
	.byte	0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x18
	.byte	0x15
	.4byte	0x1ea
	.byte	0x5
	.byte	0x3
	.4byte	g_task_led_handle
	.byte	0x15
	.4byte	.LASF77
	.byte	0x1
	.byte	0x19
	.byte	0x15
	.4byte	0x1ea
	.byte	0
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x1a
	.byte	0x15
	.4byte	0x1ea
	.byte	0x5
	.byte	0x3
	.4byte	g_task_main_handle
	.byte	0x16
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1b
	.byte	0xc
	.4byte	0x258
	.byte	0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0x1c
	.byte	0x9
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	g_btn_filter_cnt
	.byte	0xf
	.4byte	0x175
	.4byte	0x42a
	.byte	0x10
	.4byte	0x7c
	.byte	0x9
	.byte	0
	.byte	0x17
	.4byte	.LASF80
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.4byte	0x41a
	.byte	0x5
	.byte	0x3
	.4byte	g_event_queue
	.byte	0x17
	.4byte	.LASF81
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	g_event_queue_head
	.byte	0x17
	.4byte	.LASF82
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	g_event_queue_tail
	.byte	0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.4byte	0x258
	.byte	0x5
	.byte	0x3
	.4byte	g_lock_button
	.byte	0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x24
	.byte	0xc
	.4byte	0x258
	.byte	0x5
	.byte	0x3
	.4byte	g_lock_button_loaded
	.byte	0x14
	.4byte	.LASF85
	.byte	0x1
	.byte	0x29
	.byte	0x1c
	.4byte	0x1a5
	.byte	0x5
	.byte	0x3
	.4byte	g_state_machine
	.byte	0xf
	.4byte	0x1b1
	.4byte	0x4a6
	.byte	0x10
	.4byte	0x7c
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LASF86
	.byte	0x1
	.byte	0x36
	.byte	0x1c
	.4byte	0x496
	.byte	0x5
	.byte	0x3
	.4byte	state_handlers
	.byte	0x18
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x20e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x566
	.byte	0x19
	.4byte	.LVL135
	.4byte	0x1209
	.byte	0x19
	.4byte	.LVL136
	.4byte	0x1215
	.byte	0x19
	.4byte	.LVL137
	.4byte	0x1221
	.byte	0x19
	.4byte	.LVL138
	.4byte	0x122d
	.byte	0x1a
	.4byte	.LVL139
	.4byte	0x1239
	.4byte	0x50e
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_wifi_connected_callback
	.byte	0
	.byte	0x1a
	.4byte	.LVL140
	.4byte	0x1245
	.4byte	0x525
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_wifi_disconnected_callback
	.byte	0
	.byte	0x1a
	.4byte	.LVL141
	.4byte	0x1251
	.4byte	0x53c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_wifi_connect_failed_callback
	.byte	0
	.byte	0x19
	.4byte	.LVL142
	.4byte	0x125d
	.byte	0x1a
	.4byte	.LVL143
	.4byte	0x1269
	.4byte	0x55c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_ble_config_done_callback
	.byte	0
	.byte	0x19
	.4byte	.LVL144
	.4byte	0x1002
	.byte	0
	.byte	0x1c
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x203
	.byte	0x14
	.4byte	0xc2
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x593
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x203
	.byte	0x3a
	.4byte	0x1d2
	.4byte	.LLST7
	.byte	0
	.byte	0x1c
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1fa
	.byte	0x14
	.4byte	0xc2
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c0
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1fa
	.byte	0x3b
	.4byte	0x1d2
	.4byte	.LLST6
	.byte	0
	.byte	0x1c
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1ee
	.byte	0x14
	.4byte	0xc2
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ed
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1ee
	.byte	0x3e
	.4byte	0x1d2
	.4byte	.LLST5
	.byte	0
	.byte	0x1c
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1df
	.byte	0x14
	.4byte	0xc2
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x61a
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1df
	.byte	0x3f
	.4byte	0x1d2
	.4byte	.LLST4
	.byte	0
	.byte	0x1c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1d6
	.byte	0x14
	.4byte	0xc2
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x647
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1d6
	.byte	0x3a
	.4byte	0x1d2
	.4byte	.LLST3
	.byte	0
	.byte	0x1c
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1c5
	.byte	0x14
	.4byte	0xc2
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x685
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1c5
	.byte	0x3b
	.4byte	0x1d2
	.4byte	.LLST1
	.byte	0x1e
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1ce
	.byte	0x11
	.4byte	0xc2
	.4byte	.LLST2
	.byte	0
	.byte	0x1c
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1be
	.byte	0x14
	.4byte	0xc2
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b2
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1be
	.byte	0x34
	.4byte	0x1d2
	.4byte	.LLST0
	.byte	0
	.byte	0x18
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1aa
	.byte	0xd
	.4byte	0xc2
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x6fd
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1aa
	.byte	0x32
	.4byte	0x1d2
	.4byte	.LLST17
	.byte	0x1e
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1b4
	.byte	0x11
	.4byte	0xc2
	.4byte	.LLST18
	.byte	0x1f
	.4byte	.LVL54
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1a5
	.byte	0x6
	.byte	0x1
	.4byte	0x719
	.byte	0x21
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1a5
	.byte	0x25
	.4byte	0xc2
	.byte	0
	.byte	0x22
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1a0
	.byte	0xd
	.4byte	0xc2
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.byte	0x23
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x19b
	.byte	0xd
	.4byte	0xc2
	.byte	0x1
	.byte	0x24
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x193
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x770
	.byte	0x25
	.4byte	.LVL51
	.4byte	0x1275
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
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x18b
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x7ca
	.byte	0x1d
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x18b
	.byte	0x2f
	.4byte	0x201
	.4byte	.LLST36
	.byte	0x1d
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x18b
	.byte	0x41
	.4byte	0x201
	.4byte	.LLST37
	.byte	0x26
	.string	"evt"
	.byte	0x1
	.2byte	0x18f
	.byte	0x11
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x25
	.4byte	.LVL134
	.4byte	0x6b2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x185
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x802
	.byte	0x26
	.string	"evt"
	.byte	0x1
	.2byte	0x187
	.byte	0x11
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x25
	.4byte	.LVL131
	.4byte	0x6b2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x17f
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x83a
	.byte	0x26
	.string	"evt"
	.byte	0x1
	.2byte	0x181
	.byte	0x11
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x25
	.4byte	.LVL130
	.4byte	0x6b2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x177
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x872
	.byte	0x26
	.string	"evt"
	.byte	0x1
	.2byte	0x179
	.byte	0x11
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x25
	.4byte	.LVL129
	.4byte	0x6b2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x171
	.byte	0x6
	.byte	0x1
	.4byte	0x88e
	.byte	0x21
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x171
	.byte	0x2a
	.4byte	0x258
	.byte	0
	.byte	0x20
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x159
	.byte	0x6
	.byte	0x1
	.4byte	0x8ff
	.byte	0x27
	.string	"pin"
	.byte	0x1
	.2byte	0x159
	.byte	0x24
	.4byte	0x75
	.byte	0x21
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x159
	.byte	0x2d
	.4byte	0x75
	.byte	0x21
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x159
	.byte	0x3a
	.4byte	0x173
	.byte	0x28
	.4byte	0x8ef
	.byte	0x29
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x15d
	.byte	0x11
	.4byte	0x41
	.byte	0x25
	.4byte	.LVL39
	.4byte	0x1281
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x6f
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x29
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x169
	.byte	0x11
	.4byte	0x41
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x145
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x9b8
	.byte	0x2b
	.string	"pin"
	.byte	0x1
	.2byte	0x145
	.byte	0x23
	.4byte	0x75
	.4byte	.LLST33
	.byte	0x1d
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x145
	.byte	0x2c
	.4byte	0x75
	.4byte	.LLST34
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x145
	.byte	0x39
	.4byte	0x173
	.4byte	.LLST35
	.byte	0x26
	.string	"evt"
	.byte	0x1
	.2byte	0x152
	.byte	0x11
	.4byte	0x175
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x19
	.4byte	.LVL122
	.4byte	0x128d
	.byte	0x19
	.4byte	.LVL123
	.4byte	0x1299
	.byte	0x1a
	.4byte	.LVL124
	.4byte	0x12a5
	.4byte	0x980
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x19
	.4byte	.LVL125
	.4byte	0x12b2
	.byte	0x1a
	.4byte	.LVL126
	.4byte	0x12a5
	.4byte	0x99e
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x19
	.4byte	.LVL127
	.4byte	0x12be
	.byte	0x25
	.4byte	.LVL128
	.4byte	0x6b2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x13e
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ee
	.byte	0x2c
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x13e
	.byte	0x26
	.4byte	0x143
	.byte	0x1
	.byte	0x5a
	.byte	0x2c
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x13e
	.byte	0x32
	.4byte	0x173
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x24
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x138
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xa15
	.byte	0x2c
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x138
	.byte	0x1c
	.4byte	0x258
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2d
	.4byte	.LASF115
	.byte	0x1
	.byte	0x85
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xebe
	.byte	0x2e
	.4byte	.LASF116
	.byte	0x1
	.byte	0x85
	.byte	0x1a
	.4byte	0x173
	.4byte	.LLST19
	.byte	0x14
	.4byte	.LASF117
	.byte	0x1
	.byte	0x87
	.byte	0x13
	.4byte	0x25f
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x14
	.4byte	.LASF89
	.byte	0x1
	.byte	0x88
	.byte	0x11
	.4byte	0x175
	.byte	0x3
	.byte	0x91
	.byte	0xe4,0x7e
	.byte	0x2f
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa0
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST20
	.byte	0x30
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0xb0e
	.byte	0x31
	.4byte	.LASF140
	.byte	0x1
	.byte	0x8e
	.byte	0x14
	.4byte	0x75
	.4byte	0xa8f
	.byte	0xc
	.4byte	0x1e4
	.byte	0xc
	.4byte	0xebe
	.byte	0
	.byte	0x32
	.4byte	.LASF105
	.byte	0x1
	.byte	0x8f
	.byte	0x15
	.4byte	0xaa1
	.byte	0xc
	.4byte	0x258
	.byte	0
	.byte	0x14
	.4byte	.LASF119
	.byte	0x1
	.byte	0x91
	.byte	0x11
	.4byte	0x41
	.byte	0x3
	.byte	0x91
	.byte	0xe3,0x7e
	.byte	0x14
	.4byte	.LASF120
	.byte	0x1
	.byte	0x92
	.byte	0xd
	.4byte	0x258
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x33
	.4byte	0x872
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0x99
	.byte	0xd
	.4byte	0xadf
	.byte	0x34
	.4byte	0x880
	.4byte	.LLST21
	.byte	0
	.byte	0x1a
	.4byte	.LVL59
	.4byte	0x1281
	.4byte	0xafb
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe3,0x7e
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL60
	.4byte	0x12ca
	.byte	0x19
	.4byte	.LVL80
	.4byte	0x12d6
	.byte	0
	.byte	0x30
	.4byte	.Ldebug_ranges0+0x70
	.4byte	0xdd4
	.byte	0x35
	.4byte	.LASF80
	.byte	0x1
	.byte	0xba
	.byte	0x1c
	.4byte	0x41a
	.byte	0x35
	.4byte	.LASF81
	.byte	0x1
	.byte	0xbb
	.byte	0x14
	.4byte	0x75
	.byte	0x35
	.4byte	.LASF82
	.byte	0x1
	.byte	0xbc
	.byte	0x14
	.4byte	0x75
	.byte	0x2f
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc6
	.byte	0x15
	.4byte	0xc2
	.4byte	.LLST23
	.byte	0x36
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.4byte	0xb6e
	.byte	0x16
	.4byte	.LASF110
	.byte	0x1
	.byte	0xcb
	.byte	0x19
	.4byte	0x41
	.byte	0x19
	.4byte	.LVL78
	.4byte	0x12e2
	.byte	0
	.byte	0x30
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0xb91
	.byte	0x2f
	.4byte	.LASF110
	.byte	0x1
	.byte	0xdd
	.byte	0x19
	.4byte	0x41
	.4byte	.LLST24
	.byte	0x19
	.4byte	.LVL76
	.4byte	0x12ee
	.byte	0
	.byte	0x36
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.4byte	0xbdf
	.byte	0x37
	.string	"ret"
	.byte	0x1
	.byte	0xe3
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST25
	.byte	0x33
	.4byte	0x6fd
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.byte	0xe9
	.byte	0xd
	.4byte	0xbcc
	.byte	0x34
	.4byte	0x70b
	.4byte	.LLST26
	.byte	0
	.byte	0x19
	.4byte	.LVL91
	.4byte	0x12fa
	.byte	0x19
	.4byte	.LVL92
	.4byte	0x1306
	.byte	0
	.byte	0x36
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.4byte	0xcc4
	.byte	0x38
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x110
	.byte	0x20
	.4byte	0x258
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_connect_attempted.1
	.byte	0x38
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x111
	.byte	0x25
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_last_attempt.0
	.byte	0x39
	.string	"now"
	.byte	0x1
	.2byte	0x112
	.byte	0x1e
	.4byte	0x5b
	.4byte	.LLST28
	.byte	0x36
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.4byte	0xc61
	.byte	0x1e
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x115
	.byte	0x25
	.4byte	0x201
	.4byte	.LLST29
	.byte	0x25
	.4byte	.LVL111
	.4byte	0x1312
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x75b
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.4byte	0xc9f
	.byte	0x1e
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x11b
	.byte	0x29
	.4byte	0x201
	.4byte	.LLST30
	.byte	0x25
	.4byte	.LVL115
	.4byte	0x1312
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x75b
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL107
	.4byte	0x131e
	.byte	0x19
	.4byte	.LVL109
	.4byte	0x132b
	.byte	0x19
	.4byte	.LVL113
	.4byte	0x132b
	.byte	0x19
	.4byte	.LVL117
	.4byte	0x132b
	.byte	0
	.byte	0x3a
	.4byte	0x730
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xc6
	.byte	0x25
	.byte	0x3b
	.4byte	0x6fd
	.4byte	.LBB63
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xef
	.byte	0xd
	.4byte	0xcf2
	.byte	0x34
	.4byte	0x70b
	.4byte	.LLST27
	.byte	0
	.byte	0x3c
	.4byte	0x6fd
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x12c
	.byte	0x15
	.4byte	0xd11
	.byte	0x34
	.4byte	0x70b
	.4byte	.LLST31
	.byte	0
	.byte	0x19
	.4byte	.LVL74
	.4byte	0x1337
	.byte	0x19
	.4byte	.LVL75
	.4byte	0x132b
	.byte	0x19
	.4byte	.LVL87
	.4byte	0x12ca
	.byte	0x19
	.4byte	.LVL88
	.4byte	0x132b
	.byte	0x19
	.4byte	.LVL89
	.4byte	0x12d6
	.byte	0x19
	.4byte	.LVL90
	.4byte	0x132b
	.byte	0x19
	.4byte	.LVL94
	.4byte	0x1343
	.byte	0x1a
	.4byte	.LVL96
	.4byte	0x134f
	.4byte	0xd63
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL97
	.4byte	0x135b
	.byte	0x19
	.4byte	.LVL98
	.4byte	0x128d
	.byte	0x1a
	.4byte	.LVL99
	.4byte	0x12a5
	.4byte	0xd89
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0x19
	.4byte	.LVL100
	.4byte	0x1367
	.byte	0x1a
	.4byte	.LVL101
	.4byte	0x12a5
	.4byte	0xda6
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x19
	.4byte	.LVL103
	.4byte	0x128d
	.byte	0x19
	.4byte	.LVL104
	.4byte	0x1299
	.byte	0x19
	.4byte	.LVL105
	.4byte	0x128d
	.byte	0x19
	.4byte	.LVL106
	.4byte	0x1299
	.byte	0x19
	.4byte	.LVL119
	.4byte	0x1343
	.byte	0
	.byte	0x3b
	.4byte	0x6fd
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xa9
	.byte	0x11
	.4byte	0xdf2
	.byte	0x34
	.4byte	0x70b
	.4byte	.LLST22
	.byte	0
	.byte	0x3b
	.4byte	0x6fd
	.4byte	.LBB74
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xae
	.byte	0x11
	.4byte	0xe10
	.byte	0x34
	.4byte	0x70b
	.4byte	.LLST32
	.byte	0
	.byte	0x19
	.4byte	.LVL57
	.4byte	0x73e
	.byte	0x19
	.4byte	.LVL58
	.4byte	0x1373
	.byte	0x1a
	.4byte	.LVL62
	.4byte	0x6b2
	.4byte	0xe37
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL63
	.4byte	0x137f
	.byte	0x19
	.4byte	.LVL66
	.4byte	0x137f
	.byte	0x19
	.4byte	.LVL67
	.4byte	0x138b
	.byte	0x1a
	.4byte	.LVL68
	.4byte	0x1397
	.4byte	0xe67
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL71
	.4byte	0x6b2
	.4byte	0xe7c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL72
	.4byte	0x13a3
	.4byte	0xe98
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x8d,0x7f
	.byte	0
	.byte	0x1a
	.4byte	.LVL82
	.4byte	0x12a5
	.4byte	0xeac
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x25
	.4byte	.LVL85
	.4byte	0x6b2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe4,0x7e
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x258
	.byte	0x2d
	.4byte	.LASF124
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xf18
	.byte	0x2e
	.4byte	.LASF116
	.byte	0x1
	.byte	0x72
	.byte	0x19
	.4byte	0x173
	.4byte	.LLST9
	.byte	0x19
	.4byte	.LVL26
	.4byte	0x1209
	.byte	0x19
	.4byte	.LVL27
	.4byte	0x13af
	.byte	0x19
	.4byte	.LVL28
	.4byte	0x13bb
	.byte	0x19
	.4byte	.LVL29
	.4byte	0x12a5
	.byte	0x19
	.4byte	.LVL30
	.4byte	0x13c7
	.byte	0
	.byte	0x2d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xff2
	.byte	0x2e
	.4byte	.LASF116
	.byte	0x1
	.byte	0x50
	.byte	0x1c
	.4byte	0x173
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LASF126
	.byte	0x1
	.byte	0x53
	.byte	0x19
	.4byte	0xff2
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x14
	.4byte	.LASF127
	.byte	0x1
	.byte	0x54
	.byte	0x16
	.4byte	0x3ad
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1a
	.4byte	.LVL18
	.4byte	0x13d3
	.4byte	0xf79
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
	.byte	0x1a
	.4byte	.LVL19
	.4byte	0x13df
	.4byte	0xf8d
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LVL20
	.4byte	0x13eb
	.4byte	0xfae
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	app_button_hold_callback
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL21
	.4byte	0x13eb
	.4byte	0xfcf
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
	.4byte	app_button_press_callback
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL22
	.4byte	0x13f7
	.4byte	0xfe2
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x25
	.4byte	.LVL23
	.4byte	0x12a5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	0x2fb
	.4byte	0x1002
	.byte	0x10
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF128
	.byte	0x1
	.byte	0x48
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x10c3
	.byte	0x1a
	.4byte	.LVL31
	.4byte	0x1403
	.4byte	0x1052
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_button
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x1b
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x1a
	.4byte	.LVL32
	.4byte	0x1403
	.4byte	0x108c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_led
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
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
	.byte	0x34
	.byte	0x1b
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x3d
	.4byte	.LVL33
	.4byte	0x1403
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_task_main
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x32
	.byte	0x1b
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x42
	.byte	0x11
	.4byte	0x5b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x10e7
	.byte	0x19
	.4byte	.LVL24
	.4byte	0x131e
	.byte	0
	.byte	0x3f
	.4byte	0x88e
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x11c4
	.byte	0x34
	.4byte	0x89c
	.4byte	.LLST10
	.byte	0x34
	.4byte	0x8a9
	.4byte	.LLST11
	.byte	0x34
	.4byte	0x8b6
	.4byte	.LLST12
	.byte	0x40
	.4byte	0x8c3
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.4byte	0x112f
	.byte	0x41
	.4byte	0x8c8
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x42
	.4byte	0x88e
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x159
	.byte	0x6
	.byte	0x34
	.4byte	0x89c
	.4byte	.LLST13
	.byte	0x34
	.4byte	0x8a9
	.4byte	.LLST14
	.byte	0x34
	.4byte	0x8b6
	.4byte	.LLST15
	.byte	0x43
	.4byte	0x8ef
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x1184
	.byte	0x44
	.4byte	0x8f0
	.4byte	.LLST16
	.byte	0x19
	.4byte	.LVL43
	.4byte	0x12ee
	.byte	0x19
	.4byte	.LVL45
	.4byte	0x12e2
	.byte	0
	.byte	0x19
	.4byte	.LVL41
	.4byte	0x1337
	.byte	0x19
	.4byte	.LVL42
	.4byte	0x132b
	.byte	0x1a
	.4byte	.LVL46
	.4byte	0x9b8
	.4byte	0x11ae
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3d
	.4byte	.LVL47
	.4byte	0x9b8
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3b
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	0x872
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x11df
	.byte	0x45
	.4byte	0x880
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x46
	.4byte	0x730
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.byte	0x3f
	.4byte	0x6fd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x1209
	.byte	0x45
	.4byte	0x70b
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x47
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x7
	.byte	0x5
	.byte	0x6
	.byte	0x47
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x8
	.byte	0x6
	.byte	0x6
	.byte	0x47
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x5
	.byte	0x14
	.byte	0x5
	.byte	0x47
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x9
	.byte	0x1f
	.byte	0x5
	.byte	0x47
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x9
	.byte	0x19
	.byte	0x6
	.byte	0x47
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x9
	.byte	0x1a
	.byte	0x6
	.byte	0x47
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x9
	.byte	0x1b
	.byte	0x6
	.byte	0x47
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xa
	.byte	0x15
	.byte	0x5
	.byte	0x47
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xa
	.byte	0x19
	.byte	0x6
	.byte	0x47
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x47
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x1
	.byte	0x8e
	.byte	0x14
	.byte	0x47
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xa
	.byte	0x18
	.byte	0x5
	.byte	0x47
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xa
	.byte	0x17
	.byte	0x5
	.byte	0x48
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xc
	.2byte	0x207
	.byte	0xa
	.byte	0x47
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.byte	0x21
	.byte	0x5
	.byte	0x47
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x5
	.byte	0x17
	.byte	0x5
	.byte	0x47
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x8
	.byte	0x7
	.byte	0x6
	.byte	0x47
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x8
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xd
	.byte	0x29
	.byte	0x5
	.byte	0x47
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x8
	.byte	0xa
	.byte	0x9
	.byte	0x47
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xa
	.byte	0x1b
	.byte	0x5
	.byte	0x47
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.byte	0x1c
	.byte	0x5
	.byte	0x47
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xd
	.byte	0x26
	.byte	0x5
	.byte	0x48
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xc
	.2byte	0x1ef
	.byte	0xf
	.byte	0x47
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xd
	.byte	0x1a
	.byte	0x5
	.byte	0x47
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x8
	.byte	0x9
	.byte	0x6
	.byte	0x47
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xa
	.byte	0x1d
	.byte	0x5
	.byte	0x47
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xa
	.byte	0x1e
	.byte	0x5
	.byte	0x47
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xa
	.byte	0x1f
	.byte	0x5
	.byte	0x47
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xa
	.byte	0x16
	.byte	0x5
	.byte	0x47
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xd
	.byte	0x25
	.byte	0x5
	.byte	0x47
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x9
	.byte	0x25
	.byte	0x5
	.byte	0x47
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x5
	.byte	0x18
	.byte	0x5
	.byte	0x47
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x5
	.byte	0x15
	.byte	0x5
	.byte	0x47
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x9
	.byte	0x13
	.byte	0x5
	.byte	0x47
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x9
	.byte	0x24
	.byte	0x5
	.byte	0x47
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x7
	.byte	0x6
	.byte	0x6
	.byte	0x47
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x7
	.byte	0x8
	.byte	0x6
	.byte	0x47
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xe
	.byte	0x10
	.byte	0x5
	.byte	0x47
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x6
	.byte	0x4b
	.byte	0x6
	.byte	0x47
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x6
	.byte	0x59
	.byte	0x6
	.byte	0x47
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x6
	.byte	0x51
	.byte	0x6
	.byte	0x48
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x4
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
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
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
	.byte	0x1c
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x2e
	.byte	0
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
	.byte	0x23
	.byte	0x2e
	.byte	0
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2f
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
	.byte	0x30
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
	.byte	0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x41
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x42
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
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x44
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x45
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x46
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x47
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
	.byte	0x48
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
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x3
	.4byte	g_state_machine+4
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL132
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL134-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL121
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL121
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL122-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL121
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL122-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x8
	.byte	0x65
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x78
	.byte	0xec,0x7e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL86
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL118
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109-1
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0
	.4byte	0
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	0
	.4byte	0
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"password"
.LASF121:
	.string	"mqtt_connect_attempted"
.LASF178:
	.string	"app_state_get_current"
.LASF116:
	.string	"params"
.LASF26:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF158:
	.string	"app_ble_master_disconnect"
.LASF154:
	.string	"mqtt_if_is_connected"
.LASF174:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/app/app_task/app_task.c"
.LASF150:
	.string	"app_ble_master_init"
.LASF176:
	.string	"tskTaskControlBlock"
.LASF112:
	.string	"app_event_post"
.LASF62:
	.string	"idle_level"
.LASF75:
	.string	"g_task_button_handle"
.LASF30:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF10:
	.string	"unsigned int"
.LASF160:
	.string	"app_mqtt_init"
.LASF94:
	.string	"next"
.LASF122:
	.string	"mqtt_last_attempt"
.LASF82:
	.string	"g_event_queue_tail"
.LASF80:
	.string	"g_event_queue"
.LASF42:
	.string	"next_state"
.LASF100:
	.string	"app_ble_config_done_callback"
.LASF51:
	.string	"wifi_config_t"
.LASF173:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF104:
	.string	"app_state_set_next"
.LASF72:
	.string	"btn_initialize"
.LASF136:
	.string	"app_wifi_set_connect_failed_cb"
.LASF54:
	.string	"APP_BTN_EVT_HOLD"
.LASF98:
	.string	"new_state"
.LASF135:
	.string	"app_wifi_set_disconnected_cb"
.LASF19:
	.string	"app_state_t"
.LASF109:
	.string	"dummy_state"
.LASF37:
	.string	"app_event_type_t"
.LASF148:
	.string	"app_mqtt_publish_state"
.LASF162:
	.string	"app_config_has_wifi"
.LASF11:
	.string	"APP_STATE_INIT"
.LASF101:
	.string	"app_wifi_connect_failed_callback"
.LASF27:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF96:
	.string	"app_run"
.LASF142:
	.string	"app_ble_stop"
.LASF28:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF108:
	.string	"g_led_blink_enable"
.LASF87:
	.string	"state_ble_master_handler"
.LASF113:
	.string	"app_set_led_blink"
.LASF163:
	.string	"app_config_load_wifi"
.LASF7:
	.string	"uint32_t"
.LASF20:
	.string	"APP_EVENT_NONE"
.LASF144:
	.string	"wifi_if_disconnect"
.LASF78:
	.string	"g_task_main_handle"
.LASF81:
	.string	"g_event_queue_head"
.LASF89:
	.string	"event"
.LASF129:
	.string	"app_get_tick_ms"
.LASF9:
	.string	"long long unsigned int"
.LASF117:
	.string	"wifi_cfg"
.LASF29:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF83:
	.string	"g_lock_button"
.LASF114:
	.string	"enable"
.LASF93:
	.string	"state_check_flash_handler"
.LASF152:
	.string	"app_mqtt_start"
.LASF128:
	.string	"app_task_init"
.LASF66:
	.string	"app_btn_get_tick_cb"
.LASF153:
	.string	"aos_now_ms"
.LASF111:
	.string	"app_button_hold_callback"
.LASF50:
	.string	"_Bool"
.LASF58:
	.string	"APP_BTN_EVT_IDLE"
.LASF86:
	.string	"state_handlers"
.LASF16:
	.string	"APP_STATE_WIFI_FAILED"
.LASF102:
	.string	"app_wifi_disconnected_callback"
.LASF110:
	.string	"relay_state"
.LASF70:
	.string	"btn_count"
.LASF18:
	.string	"APP_STATE_MAX"
.LASF22:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF47:
	.string	"ssid"
.LASF45:
	.string	"char"
.LASF31:
	.string	"APP_EVENT_RELAY_STATE_CHANGED"
.LASF35:
	.string	"APP_EVENT_MQTT_BLE_MASTER_DISCONNECT"
.LASF166:
	.string	"led_on"
.LASF103:
	.string	"app_wifi_connected_callback"
.LASF34:
	.string	"APP_EVENT_MQTT_BLE_MASTER_CONNECT"
.LASF39:
	.string	"data"
.LASF141:
	.string	"app_ble_is_running"
.LASF115:
	.string	"app_task_main"
.LASF157:
	.string	"app_ble_master_connect"
.LASF63:
	.string	"debounce_val"
.LASF6:
	.string	"uint8_t"
.LASF171:
	.string	"app_btn_scan"
.LASF106:
	.string	"locked"
.LASF71:
	.string	"get_tick_cb"
.LASF124:
	.string	"app_task_led"
.LASF25:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF120:
	.string	"lock_button"
.LASF145:
	.string	"app_config_clear_wifi"
.LASF68:
	.string	"app_btn_get_level_cb"
.LASF3:
	.string	"long long int"
.LASF138:
	.string	"app_ble_set_config_done_cb"
.LASF56:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF99:
	.string	"app_state_init"
.LASF161:
	.string	"wifi_if_is_mgmr_ready"
.LASF36:
	.string	"APP_EVENT_MAX"
.LASF139:
	.string	"memset"
.LASF140:
	.string	"app_config_load_relay_settings"
.LASF88:
	.string	"state_wifi_failed_handler"
.LASF134:
	.string	"app_wifi_set_connected_cb"
.LASF125:
	.string	"app_task_button"
.LASF59:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF46:
	.string	"TaskHandle_t"
.LASF156:
	.string	"app_ble_master_stop"
.LASF119:
	.string	"default_state"
.LASF21:
	.string	"APP_EVENT_BUTTON_HOLD"
.LASF33:
	.string	"APP_EVENT_MQTT_BLE_MASTER_STOP"
.LASF168:
	.string	"bl_gpio_enable_input"
.LASF40:
	.string	"app_event_t"
.LASF61:
	.string	"last_state"
.LASF53:
	.string	"APP_BTN_EVT_RELEASED"
.LASF130:
	.string	"led_init"
.LASF137:
	.string	"app_ble_init"
.LASF97:
	.string	"app_state_process_event"
.LASF146:
	.string	"relay_on"
.LASF12:
	.string	"APP_STATE_CHECK_FLASH"
.LASF69:
	.string	"config"
.LASF127:
	.string	"btn_cfg"
.LASF67:
	.string	"app_btn_initialize_cb"
.LASF1:
	.string	"short int"
.LASF77:
	.string	"g_task_wifi_handle"
.LASF170:
	.string	"app_btn_register_callback"
.LASF2:
	.string	"long int"
.LASF79:
	.string	"g_btn_filter_cnt"
.LASF15:
	.string	"APP_STATE_WIFI_CONNECTED"
.LASF64:
	.string	"debounce_counter"
.LASF55:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF32:
	.string	"APP_EVENT_MQTT_BLE_MASTER_START"
.LASF177:
	.string	"app_state_get_next"
.LASF13:
	.string	"APP_STATE_BLE_CONFIG"
.LASF57:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF92:
	.string	"state_ble_config_handler"
.LASF132:
	.string	"app_config_init"
.LASF43:
	.string	"app_state_machine_t"
.LASF41:
	.string	"current_state"
.LASF14:
	.string	"APP_STATE_WIFI_CONNECTING"
.LASF165:
	.string	"wifi_if_is_connected"
.LASF52:
	.string	"APP_BTN_EVT_PRESSED"
.LASF76:
	.string	"g_task_led_handle"
.LASF8:
	.string	"long unsigned int"
.LASF147:
	.string	"relay_off"
.LASF84:
	.string	"g_lock_button_loaded"
.LASF169:
	.string	"app_btn_initialize"
.LASF74:
	.string	"app_btn_config_t"
.LASF143:
	.string	"aos_msleep"
.LASF91:
	.string	"state_wifi_connecting_handler"
.LASF164:
	.string	"app_wifi_connect"
.LASF159:
	.string	"app_ble_start"
.LASF38:
	.string	"type"
.LASF118:
	.string	"wait_count"
.LASF4:
	.string	"unsigned char"
.LASF73:
	.string	"btn_read"
.LASF90:
	.string	"state_wifi_connected_handler"
.LASF65:
	.string	"app_btn_hw_config_t"
.LASF126:
	.string	"btn_config"
.LASF60:
	.string	"APP_BTN_EVT_MAX"
.LASF175:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/app_task"
.LASF23:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF17:
	.string	"APP_STATE_BLE_MASTER"
.LASF107:
	.string	"app_button_press_callback"
.LASF172:
	.string	"xTaskCreate"
.LASF49:
	.string	"is_valid"
.LASF44:
	.string	"app_state_handler_t"
.LASF123:
	.string	"mqtt_broker"
.LASF149:
	.string	"relay_get_state"
.LASF85:
	.string	"g_state_machine"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF133:
	.string	"wifi_if_init"
.LASF167:
	.string	"led_toggle"
.LASF95:
	.string	"state_init_handler"
.LASF24:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF131:
	.string	"relay_init"
.LASF105:
	.string	"app_callback_update_lock_button"
.LASF151:
	.string	"app_ble_master_start"
.LASF155:
	.string	"relay_toggle"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
