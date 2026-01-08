	.file	"mqtt_interface.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.mqtt_interface_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[MQTT] Initializing MQTT interface...\r\n"
	.align	2
.LC1:
	.string	"mqtt_broker"
	.align	2
.LC2:
	.string	"mqtt_port"
	.align	2
.LC3:
	.string	"mqtt_client_id"
	.align	2
.LC4:
	.string	"mqtt_topic_control"
	.align	2
.LC5:
	.string	"mqtt_topic_status"
	.align	2
.LC6:
	.string	"[MQTT] Config: broker=%s, port=%d, client_id=%s\r\n"
	.align	2
.LC7:
	.string	"[MQTT] Topics: control=%s, status=%s\r\n"
	.align	2
.LC8:
	.string	"[MQTT] MQTT interface initialized\r\n"
	.section	.text.mqtt_interface_init,"ax",@progbits
	.align	1
	.globl	mqtt_interface_init
	.type	mqtt_interface_init, @function
mqtt_interface_init:
.LFB5:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/mqtt/mqtt_interface.c"
	.loc 1 61 32
	.cfi_startproc
	.loc 1 62 5
	.loc 1 61 32 is_stmt 0
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
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.loc 1 62 5
	lui	a0,%hi(.LC0)
	.loc 1 61 32
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 62 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL0:
	.loc 1 63 5 is_stmt 1
	.loc 1 66 20 is_stmt 0
	lui	a0,%hi(.LC1)
	.loc 1 63 20
	lui	a5,%hi(.LANCHOR0)
	.loc 1 66 20
	addi	a0,a0,%lo(.LC1)
	.loc 1 63 20
	sb	zero,%lo(.LANCHOR0)(a5)
	.loc 1 66 5 is_stmt 1
	.loc 1 66 20 is_stmt 0
	call	ef_get_env
.LVL1:
	mv	s1,a0
.LVL2:
	.loc 1 67 5 is_stmt 1
	.loc 1 67 22 is_stmt 0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	ef_get_env
.LVL3:
	mv	s5,a0
.LVL4:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 23 is_stmt 0
	lui	a0,%hi(.LC3)
.LVL5:
	addi	a0,a0,%lo(.LC3)
	call	ef_get_env
.LVL6:
	mv	s4,a0
.LVL7:
	.loc 1 69 5 is_stmt 1
	.loc 1 69 27 is_stmt 0
	lui	a0,%hi(.LC4)
.LVL8:
	addi	a0,a0,%lo(.LC4)
	call	ef_get_env
.LVL9:
	mv	s3,a0
.LVL10:
	.loc 1 70 5 is_stmt 1
	.loc 1 70 26 is_stmt 0
	lui	a0,%hi(.LC5)
.LVL11:
	addi	a0,a0,%lo(.LC5)
	call	ef_get_env
.LVL12:
	mv	s2,a0
.LVL13:
	.loc 1 72 5 is_stmt 1
	lui	s6,%hi(.LANCHOR1)
	.loc 1 72 8 is_stmt 0
	beq	s1,zero,.L3
	.loc 1 72 19 discriminator 1
	mv	a0,s1
.LVL14:
	call	strlen
.LVL15:
	.loc 1 72 16 discriminator 1
	beq	a0,zero,.L3
	.loc 1 73 9 is_stmt 1
	li	a2,63
	mv	a1,s1
	addi	a0,s6,%lo(.LANCHOR1)
	call	strncpy
.LVL16:
.L3:
	.loc 1 75 5
	lui	s1,%hi(.LANCHOR2)
.LVL17:
	addi	s1,s1,%lo(.LANCHOR2)
	.loc 1 75 8 is_stmt 0
	beq	s5,zero,.L6
	.loc 1 76 9 is_stmt 1
	.loc 1 76 21 is_stmt 0
	mv	a0,s5
	call	atoi
.LVL18:
	.loc 1 77 9 is_stmt 1
	.loc 1 77 12 is_stmt 0
	ble	a0,zero,.L7
	.loc 1 76 19
	sw	a0,0(s1)
.L6:
	.loc 1 79 5 is_stmt 1
	lui	s5,%hi(.LANCHOR3)
.LVL19:
	.loc 1 79 8 is_stmt 0
	beq	s4,zero,.L10
	.loc 1 79 22 discriminator 1
	mv	a0,s4
	call	strlen
.LVL20:
	.loc 1 79 19 discriminator 1
	beq	a0,zero,.L10
	.loc 1 80 9 is_stmt 1
	li	a2,31
	mv	a1,s4
	addi	a0,s5,%lo(.LANCHOR3)
	call	strncpy
.LVL21:
.L10:
	.loc 1 82 5
	lui	s4,%hi(.LANCHOR4)
.LVL22:
	.loc 1 82 8 is_stmt 0
	beq	s3,zero,.L13
	.loc 1 82 26 discriminator 1
	mv	a0,s3
	call	strlen
.LVL23:
	.loc 1 82 23 discriminator 1
	beq	a0,zero,.L13
	.loc 1 83 9 is_stmt 1
	li	a2,63
	mv	a1,s3
	addi	a0,s4,%lo(.LANCHOR4)
	call	strncpy
.LVL24:
.L13:
	.loc 1 85 5
	lui	s3,%hi(.LANCHOR5)
.LVL25:
	.loc 1 85 8 is_stmt 0
	beq	s2,zero,.L16
	.loc 1 85 25 discriminator 1
	mv	a0,s2
	call	strlen
.LVL26:
	.loc 1 85 22 discriminator 1
	beq	a0,zero,.L16
	.loc 1 86 9 is_stmt 1
	li	a2,63
	mv	a1,s2
	addi	a0,s3,%lo(.LANCHOR5)
	call	strncpy
.LVL27:
.L16:
	.loc 1 89 5
	lw	a2,0(s1)
	lui	a0,%hi(.LC6)
	addi	a3,s5,%lo(.LANCHOR3)
	addi	a1,s6,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL28:
	.loc 1 91 5
	lui	a0,%hi(.LC7)
	addi	a2,s3,%lo(.LANCHOR5)
	addi	a1,s4,%lo(.LANCHOR4)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL29:
	.loc 1 93 5
	.loc 1 94 1 is_stmt 0
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
.LVL30:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	.loc 1 93 5
	lui	a0,%hi(.LC8)
	.loc 1 94 1
	.loc 1 93 5
	addi	a0,a0,%lo(.LC8)
	.loc 1 94 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 93 5
	tail	printf
.LVL31:
.L7:
	.cfi_restore_state
	.loc 1 77 29 is_stmt 1 discriminator 1
	.loc 1 77 39 is_stmt 0 discriminator 1
	li	a5,1883
	sw	a5,0(s1)
	j	.L6
	.cfi_endproc
.LFE5:
	.size	mqtt_interface_init, .-mqtt_interface_init
	.section	.text.mqtt_is_connected,"ax",@progbits
	.align	1
	.globl	mqtt_is_connected
	.type	mqtt_is_connected, @function
mqtt_is_connected:
.LFB7:
	.loc 1 125 29 is_stmt 1
	.cfi_startproc
	.loc 1 127 5
	.loc 1 125 29 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 128 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR0)
	lbu	a0,%lo(.LANCHOR0)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	mqtt_is_connected, .-mqtt_is_connected
	.section	.rodata.mqtt_disconnect.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"[MQTT] Disconnecting...\r\n"
	.section	.text.mqtt_disconnect,"ax",@progbits
	.align	1
	.globl	mqtt_disconnect
	.type	mqtt_disconnect, @function
mqtt_disconnect:
.LFB8:
	.loc 1 130 28 is_stmt 1
	.cfi_startproc
	.loc 1 131 5
	.loc 1 130 28 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 131 5
	lui	a0,%hi(.LC9)
	.loc 1 130 28
	.loc 1 131 5
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL32:
	.loc 1 133 5 is_stmt 1
	.loc 1 134 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 133 20
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	.loc 1 134 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	mqtt_disconnect, .-mqtt_disconnect
	.section	.rodata.mqtt_publish.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"[MQTT] Not connected, cannot publish\r\n"
	.align	2
.LC11:
	.string	"[MQTT] Publish to %s: %s\r\n"
	.section	.text.mqtt_publish,"ax",@progbits
	.align	1
	.globl	mqtt_publish
	.type	mqtt_publish, @function
mqtt_publish:
.LFB9:
	.loc 1 136 59 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 137 5
.LBB6:
.LBB7:
	.loc 1 127 5
.LBE7:
.LBE6:
	.loc 1 136 59 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 137 8
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	bne	a5,zero,.L36
	.loc 1 138 9 is_stmt 1
	.loc 1 145 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 138 9
	lui	a0,%hi(.LC10)
.LVL34:
	addi	a0,a0,%lo(.LC10)
	.loc 1 145 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 138 9
	tail	printf
.LVL35:
.L36:
	.cfi_restore_state
	.loc 1 145 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a2,a1
	.loc 1 142 5 is_stmt 1
	mv	a1,a0
.LVL36:
	lui	a0,%hi(.LC11)
.LVL37:
	.loc 1 145 1 is_stmt 0
	.loc 1 142 5
	addi	a0,a0,%lo(.LC11)
	.loc 1 145 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 142 5
	tail	printf
.LVL38:
	.cfi_endproc
.LFE9:
	.size	mqtt_publish, .-mqtt_publish
	.section	.rodata.mqtt_subscribe.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"[MQTT] Not connected, cannot subscribe\r\n"
	.align	2
.LC13:
	.string	"[MQTT] Subscribe to %s\r\n"
	.section	.text.mqtt_subscribe,"ax",@progbits
	.align	1
	.globl	mqtt_subscribe
	.type	mqtt_subscribe, @function
mqtt_subscribe:
.LFB10:
	.loc 1 147 40 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 148 5
.LBB8:
.LBB9:
	.loc 1 127 5
.LBE9:
.LBE8:
	.loc 1 147 40 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 148 8
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	bne	a5,zero,.L39
	.loc 1 149 9 is_stmt 1
	.loc 1 156 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 149 9
	lui	a0,%hi(.LC12)
.LVL40:
	addi	a0,a0,%lo(.LC12)
	.loc 1 156 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 149 9
	tail	printf
.LVL41:
.L39:
	.cfi_restore_state
	.loc 1 156 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	mv	a1,a0
	.loc 1 153 5 is_stmt 1
	lui	a0,%hi(.LC13)
.LVL42:
	.loc 1 156 1 is_stmt 0
	.loc 1 153 5
	addi	a0,a0,%lo(.LC13)
	.loc 1 156 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 153 5
	tail	printf
.LVL43:
	.cfi_endproc
.LFE10:
	.size	mqtt_subscribe, .-mqtt_subscribe
	.section	.rodata.mqtt_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"[MQTT] Connecting to MQTT broker %s:%d...\r\n"
	.align	2
.LC15:
	.string	"[MQTT] Connected to broker (simulated)\r\n"
	.align	2
.LC16:
	.string	"{\"state\":\"ON\"}"
	.align	2
.LC17:
	.string	"{\"state\":\"OFF\"}"
	.section	.text.mqtt_connect,"ax",@progbits
	.align	1
	.globl	mqtt_connect
	.type	mqtt_connect, @function
mqtt_connect:
.LFB6:
	.loc 1 96 25 is_stmt 1
	.cfi_startproc
	.loc 1 97 5
	.loc 1 96 25 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 97 5
	lui	a5,%hi(.LANCHOR2)
	.loc 1 96 25
	.loc 1 97 5
	lw	a2,%lo(.LANCHOR2)(a5)
	lui	a1,%hi(.LANCHOR1)
	lui	a0,%hi(.LC14)
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL44:
	.loc 1 109 5 is_stmt 1
	li	a0,1000
	call	vTaskDelay
.LVL45:
	.loc 1 110 5
	.loc 1 111 5 is_stmt 0
	lui	a0,%hi(.LC15)
	.loc 1 110 20
	lui	a5,%hi(.LANCHOR0)
	li	a4,1
	.loc 1 111 5
	addi	a0,a0,%lo(.LC15)
	.loc 1 110 20
	sb	a4,%lo(.LANCHOR0)(a5)
	.loc 1 111 5 is_stmt 1
	call	printf
.LVL46:
	.loc 1 114 5
	lui	a0,%hi(.LANCHOR4)
	addi	a0,a0,%lo(.LANCHOR4)
	call	mqtt_subscribe
.LVL47:
	.loc 1 117 5
	.loc 1 117 27 is_stmt 0
	call	relay_get_state
.LVL48:
	.loc 1 118 5 is_stmt 1
	lui	a5,%hi(.LANCHOR5)
	.loc 1 118 8 is_stmt 0
	beq	a0,zero,.L42
	.loc 1 119 9 is_stmt 1
	lui	a1,%hi(.LC16)
	addi	a1,a1,%lo(.LC16)
.L44:
	.loc 1 123 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 121 9
	addi	a0,a5,%lo(.LANCHOR5)
.LVL49:
	.loc 1 123 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 121 9
	tail	mqtt_publish
.LVL50:
.L42:
	.cfi_restore_state
	.loc 1 121 9 is_stmt 1
	lui	a1,%hi(.LC17)
	addi	a1,a1,%lo(.LC17)
	j	.L44
	.cfi_endproc
.LFE6:
	.size	mqtt_connect, .-mqtt_connect
	.section	.rodata.mqtt_message_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"[MQTT] Message received on topic %s: %.*s\r\n"
	.align	2
.LC19:
	.string	"[MQTT] Received relay command: %s\r\n"
	.align	2
.LC20:
	.string	"ON"
	.align	2
.LC21:
	.string	"[MQTT] Turning relay ON\r\n"
	.align	2
.LC22:
	.string	"1"
	.align	2
.LC23:
	.string	"TRUE"
	.align	2
.LC24:
	.string	"OFF"
	.align	2
.LC25:
	.string	"[MQTT] Turning relay OFF\r\n"
	.align	2
.LC26:
	.string	"0"
	.align	2
.LC27:
	.string	"FALSE"
	.align	2
.LC28:
	.string	"[MQTT] Unknown command: %s\r\n"
	.section	.text.mqtt_message_handler,"ax",@progbits
	.align	1
	.globl	mqtt_message_handler
	.type	mqtt_message_handler, @function
mqtt_message_handler:
.LFB11:
	.loc 1 159 84
	.cfi_startproc
.LVL51:
	.loc 1 160 5
	.loc 1 159 84 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	s3,a0
	.loc 1 160 5
	mv	a3,a1
	.loc 1 159 84
	mv	s2,a1
	.loc 1 160 5
	mv	a1,a0
.LVL52:
	lui	a0,%hi(.LC18)
.LVL53:
	.loc 1 159 84
	.loc 1 160 5
	addi	a0,a0,%lo(.LC18)
	.loc 1 159 84
	mv	s1,a2
	.loc 1 160 5
	call	printf
.LVL54:
	.loc 1 163 5 is_stmt 1
	.loc 1 163 9 is_stmt 0
	lui	a1,%hi(.LANCHOR4)
	addi	a1,a1,%lo(.LANCHOR4)
	mv	a0,s3
	call	strcmp
.LVL55:
	.loc 1 163 8
	bne	a0,zero,.L45
	.loc 1 164 9 is_stmt 1
.LVL56:
.LBB13:
.LBB14:
	.loc 1 26 5
	.loc 1 26 8 is_stmt 0
	beq	s2,zero,.L45
	.loc 1 26 24
	ble	s1,zero,.L45
	.loc 1 31 5 is_stmt 1
	.loc 1 31 10 is_stmt 0
	sw	zero,-48(s0)
	sw	zero,-44(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	.loc 1 32 5 is_stmt 1
	.loc 1 32 9 is_stmt 0
	li	a5,15
	ble	s1,a5,.L49
	li	s1,15
.LVL57:
.L49:
	.loc 1 33 5 is_stmt 1
	mv	a2,s1
	mv	a1,s2
	addi	a0,s0,-48
	call	strncpy
.LVL58:
	.loc 1 34 5
	.loc 1 34 14 is_stmt 0
	addi	a5,s0,-32
	add	a5,a5,s1
	sb	zero,-16(a5)
	.loc 1 37 5 is_stmt 1
.LBB15:
	.loc 1 37 10
.LVL59:
	.loc 1 37 21
	addi	a5,s0,-48
	add	s1,a5,s1
.LVL60:
	.loc 1 38 12 is_stmt 0
	li	a2,25
.LVL61:
.L51:
	.loc 1 38 9 is_stmt 1
	.loc 1 38 16 is_stmt 0
	lbu	a4,0(a5)
	.loc 1 38 27
	addi	a3,a4,-97
	.loc 1 38 12
	andi	a3,a3,0xff
	bgtu	a3,a2,.L50
	.loc 1 39 13 is_stmt 1
	.loc 1 39 35 is_stmt 0
	addi	a4,a4,-32
	.loc 1 39 20
	sb	a4,0(a5)
.L50:
	.loc 1 37 30 is_stmt 1
.LVL62:
	.loc 1 37 21
	.loc 1 37 5 is_stmt 0
	addi	a5,a5,1
.LVL63:
	bne	a5,s1,.L51
.LBE15:
	.loc 1 43 5 is_stmt 1
	lui	a0,%hi(.LC19)
	addi	a1,s0,-48
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL64:
	.loc 1 46 5
	.loc 1 46 9 is_stmt 0
	lui	a1,%hi(.LC20)
	addi	a1,a1,%lo(.LC20)
	addi	a0,s0,-48
	call	strcmp
.LVL65:
	.loc 1 46 8
	bne	a0,zero,.L52
.L53:
	.loc 1 47 9 is_stmt 1
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL66:
	.loc 1 48 9
	call	relay_on
.LVL67:
	.loc 1 50 9
	lui	a1,%hi(.LC16)
	addi	a1,a1,%lo(.LC16)
.L73:
	.loc 1 55 9 is_stmt 0
	lui	a0,%hi(.LANCHOR5)
	addi	a0,a0,%lo(.LANCHOR5)
	call	mqtt_publish
.LVL68:
.L45:
.LBE14:
.LBE13:
	.loc 1 166 1
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
.LVL69:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL70:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL71:
.L52:
	.cfi_restore_state
.LBB17:
.LBB16:
	.loc 1 46 35
	lui	a1,%hi(.LC22)
	addi	a1,a1,%lo(.LC22)
	addi	a0,s0,-48
	call	strcmp
.LVL72:
	.loc 1 46 32
	beq	a0,zero,.L53
	.loc 1 46 60
	lui	a1,%hi(.LC23)
	addi	a1,a1,%lo(.LC23)
	addi	a0,s0,-48
	call	strcmp
.LVL73:
	.loc 1 46 57
	beq	a0,zero,.L53
	.loc 1 51 12 is_stmt 1
	.loc 1 51 16 is_stmt 0
	lui	a1,%hi(.LC24)
	addi	a1,a1,%lo(.LC24)
	addi	a0,s0,-48
	call	strcmp
.LVL74:
	.loc 1 51 15
	bne	a0,zero,.L54
.L55:
	.loc 1 52 9 is_stmt 1
	lui	a0,%hi(.LC25)
	addi	a0,a0,%lo(.LC25)
	call	printf
.LVL75:
	.loc 1 53 9
	call	relay_off
.LVL76:
	.loc 1 55 9
	lui	a1,%hi(.LC17)
	addi	a1,a1,%lo(.LC17)
	j	.L73
.L54:
	.loc 1 51 43 is_stmt 0
	lui	a1,%hi(.LC26)
	addi	a1,a1,%lo(.LC26)
	addi	a0,s0,-48
	call	strcmp
.LVL77:
	.loc 1 51 40
	beq	a0,zero,.L55
	.loc 1 51 68
	lui	a1,%hi(.LC27)
	addi	a1,a1,%lo(.LC27)
	addi	a0,s0,-48
	call	strcmp
.LVL78:
	.loc 1 51 65
	beq	a0,zero,.L55
	.loc 1 57 9 is_stmt 1
	lui	a0,%hi(.LC28)
	addi	a1,s0,-48
	addi	a0,a0,%lo(.LC28)
	call	printf
.LVL79:
	j	.L45
.LBE16:
.LBE17:
	.cfi_endproc
.LFE11:
	.size	mqtt_message_handler, .-mqtt_message_handler
	.section	.data.mqtt_broker,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	mqtt_broker, @object
	.size	mqtt_broker, 64
mqtt_broker:
	.string	"broker.hivemq.com"
	.zero	46
	.section	.data.mqtt_client_id,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	mqtt_client_id, @object
	.size	mqtt_client_id, 32
mqtt_client_id:
	.string	"datic_device"
	.zero	19
	.section	.data.mqtt_topic_control,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	mqtt_topic_control, @object
	.size	mqtt_topic_control, 64
mqtt_topic_control:
	.string	"device/relay/control"
	.zero	43
	.section	.data.mqtt_topic_status,"aw"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	mqtt_topic_status, @object
	.size	mqtt_topic_status, 64
mqtt_topic_status:
	.string	"device/relay/status"
	.zero	44
	.section	.sbss.mqtt_connected,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	mqtt_connected, @object
	.size	mqtt_connected, 1
mqtt_connected:
	.zero	1
	.section	.sdata.mqtt_port,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	mqtt_port, @object
	.size	mqtt_port, 4
mqtt_port:
	.word	1883
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/relay/relay.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x85f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	0x89
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x89
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.byte	0x7
	.4byte	0x89
	.4byte	0xac
	.byte	0x8
	.4byte	0x7c
	.byte	0x3f
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x90
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x5b
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x11
	.byte	0xc
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_connected
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	0x9c
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_broker
	.byte	0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.byte	0xc
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_port
	.byte	0x7
	.4byte	0x89
	.4byte	0x104
	.byte	0x8
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.4byte	0xf4
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_client_id
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0x9c
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_topic_control
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x16
	.byte	0xd
	.4byte	0x9c
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_topic_status
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x377
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9f
	.byte	0x27
	.4byte	0xac
	.4byte	.LLST9
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9f
	.byte	0x3a
	.4byte	0xac
	.4byte	.LLST10
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x9f
	.byte	0x47
	.4byte	0x75
	.4byte	.LLST11
	.byte	0xc
	.4byte	0x780
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa4
	.byte	0x9
	.4byte	0x334
	.byte	0xd
	.4byte	0x799
	.4byte	.LLST12
	.byte	0xd
	.4byte	0x78d
	.4byte	.LLST13
	.byte	0xe
	.4byte	.Ldebug_ranges0+0
	.byte	0xf
	.4byte	0x7a5
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x10
	.4byte	0x7b1
	.4byte	.LLST14
	.byte	0x11
	.4byte	0x7bd
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x1d7
	.byte	0x10
	.4byte	0x7be
	.4byte	.LLST15
	.byte	0
	.byte	0x12
	.4byte	.LVL58
	.4byte	0x7e9
	.4byte	0x1f7
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL64
	.4byte	0x7f5
	.4byte	0x214
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0x12
	.4byte	.LVL65
	.4byte	0x801
	.4byte	0x231
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x12
	.4byte	.LVL66
	.4byte	0x7f5
	.4byte	0x248
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x14
	.4byte	.LVL67
	.4byte	0x80d
	.byte	0x12
	.4byte	.LVL68
	.4byte	0x3df
	.4byte	0x268
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.byte	0x12
	.4byte	.LVL72
	.4byte	0x801
	.4byte	0x285
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x12
	.4byte	.LVL73
	.4byte	0x801
	.4byte	0x2a2
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x12
	.4byte	.LVL74
	.4byte	0x801
	.4byte	0x2bf
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x12
	.4byte	.LVL75
	.4byte	0x7f5
	.4byte	0x2d6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0x14
	.4byte	.LVL76
	.4byte	0x819
	.byte	0x12
	.4byte	.LVL77
	.4byte	0x801
	.4byte	0x2fc
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0x12
	.4byte	.LVL78
	.4byte	0x801
	.4byte	0x319
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0x15
	.4byte	.LVL79
	.4byte	0x7f5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL54
	.4byte	0x7f5
	.4byte	0x35d
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL55
	.4byte	0x801
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x93
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3df
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x93
	.byte	0x21
	.4byte	0xac
	.4byte	.LLST7
	.byte	0x16
	.4byte	0x488
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x94
	.byte	0xa
	.byte	0x17
	.4byte	.LVL41
	.4byte	0x7f5
	.4byte	0x3c4
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x18
	.4byte	.LVL43
	.4byte	0x7f5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x88
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x45e
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x88
	.byte	0x1f
	.4byte	0xac
	.4byte	.LLST5
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x88
	.byte	0x32
	.4byte	0xac
	.4byte	.LLST6
	.byte	0x16
	.4byte	0x488
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x89
	.byte	0xa
	.byte	0x17
	.4byte	.LVL35
	.4byte	0x7f5
	.4byte	0x43c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x18
	.4byte	.LVL38
	.4byte	0x7f5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x82
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x488
	.byte	0x15
	.4byte	.LVL32
	.4byte	0x7f5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF48
	.byte	0x1
	.byte	0x7d
	.byte	0x5
	.4byte	0x95
	.byte	0x1
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x60
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x53b
	.byte	0x1a
	.4byte	.LASF28
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LVL44
	.4byte	0x7f5
	.4byte	0x4db
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x12
	.4byte	.LVL45
	.4byte	0x825
	.4byte	0x4f0
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x12
	.4byte	.LVL46
	.4byte	0x7f5
	.4byte	0x507
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x12
	.4byte	.LVL47
	.4byte	0x377
	.4byte	0x51e
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x14
	.4byte	.LVL48
	.4byte	0x832
	.byte	0x18
	.4byte	.LVL50
	.4byte	0x3df
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x780
	.byte	0x1a
	.4byte	.LASF30
	.byte	0x1
	.byte	0x42
	.byte	0xb
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x1a
	.4byte	.LASF31
	.byte	0x1
	.byte	0x43
	.byte	0xb
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x1a
	.4byte	.LASF32
	.byte	0x1
	.byte	0x44
	.byte	0xb
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x1a
	.4byte	.LASF33
	.byte	0x1
	.byte	0x45
	.byte	0xb
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x1a
	.4byte	.LASF34
	.byte	0x1
	.byte	0x46
	.byte	0xb
	.4byte	0x83
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LVL0
	.4byte	0x7f5
	.4byte	0x5b8
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x83e
	.4byte	0x5cf
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x83e
	.4byte	0x5e6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x83e
	.4byte	0x5fd
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x12
	.4byte	.LVL9
	.4byte	0x83e
	.4byte	0x614
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x12
	.4byte	.LVL12
	.4byte	0x83e
	.4byte	0x62b
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x12
	.4byte	.LVL15
	.4byte	0x84a
	.4byte	0x63f
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL16
	.4byte	0x7e9
	.4byte	0x662
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.byte	0x12
	.4byte	.LVL18
	.4byte	0x856
	.4byte	0x676
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL20
	.4byte	0x84a
	.4byte	0x68a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL21
	.4byte	0x7e9
	.4byte	0x6ac
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x12
	.4byte	.LVL23
	.4byte	0x84a
	.4byte	0x6c0
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL24
	.4byte	0x7e9
	.4byte	0x6e3
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.byte	0x12
	.4byte	.LVL26
	.4byte	0x84a
	.4byte	0x6f7
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL27
	.4byte	0x7e9
	.4byte	0x71a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.byte	0x12
	.4byte	.LVL28
	.4byte	0x7f5
	.4byte	0x743
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0x12
	.4byte	.LVL29
	.4byte	0x7f5
	.4byte	0x76c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.byte	0x18
	.4byte	.LVL31
	.4byte	0x7f5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.byte	0x1
	.4byte	0x7ca
	.byte	0x1c
	.4byte	.LASF21
	.byte	0x1
	.byte	0x19
	.byte	0x35
	.4byte	0xac
	.byte	0x1c
	.4byte	.LASF22
	.byte	0x1
	.byte	0x19
	.byte	0x42
	.4byte	0x75
	.byte	0x1d
	.string	"cmd"
	.byte	0x1
	.byte	0x1f
	.byte	0xa
	.4byte	0x7ca
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.4byte	0x75
	.byte	0x1e
	.byte	0x1d
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x75
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	0x89
	.4byte	0x7da
	.byte	0x8
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0x1f
	.4byte	0x488
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x20
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x2c
	.byte	0x7
	.byte	0x20
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x20
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x4
	.byte	0x24
	.byte	0x5
	.byte	0x20
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x7
	.byte	0x6
	.byte	0x20
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x8
	.byte	0x6
	.byte	0x21
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x2f6
	.byte	0x6
	.byte	0x20
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0xa
	.byte	0x9
	.byte	0x20
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x3c
	.byte	0x7
	.byte	0x20
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x4
	.byte	0x29
	.byte	0x8
	.byte	0x20
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x51
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1d
	.byte	0
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0xb
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST9:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54-1
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL54-1
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54-1
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL71
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"TickType_t"
.LASF11:
	.string	"char"
.LASF45:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF25:
	.string	"mqtt_publish"
.LASF48:
	.string	"mqtt_is_connected"
.LASF10:
	.string	"unsigned int"
.LASF36:
	.string	"printf"
.LASF49:
	.string	"mqtt_relay_control_callback"
.LASF24:
	.string	"mqtt_subscribe"
.LASF15:
	.string	"mqtt_broker"
.LASF44:
	.string	"atoi"
.LASF14:
	.string	"mqtt_connected"
.LASF17:
	.string	"mqtt_client_id"
.LASF34:
	.string	"topic_status"
.LASF22:
	.string	"payload_len"
.LASF4:
	.string	"unsigned char"
.LASF41:
	.string	"relay_get_state"
.LASF29:
	.string	"mqtt_interface_init"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"strncpy"
.LASF42:
	.string	"ef_get_env"
.LASF26:
	.string	"mqtt_disconnect"
.LASF18:
	.string	"mqtt_topic_control"
.LASF31:
	.string	"port_str"
.LASF43:
	.string	"strlen"
.LASF28:
	.string	"relay_state"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint8_t"
.LASF20:
	.string	"topic"
.LASF21:
	.string	"payload"
.LASF37:
	.string	"strcmp"
.LASF3:
	.string	"long long int"
.LASF30:
	.string	"broker"
.LASF27:
	.string	"mqtt_connect"
.LASF39:
	.string	"relay_off"
.LASF23:
	.string	"mqtt_message_handler"
.LASF38:
	.string	"relay_on"
.LASF1:
	.string	"short int"
.LASF7:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF40:
	.string	"vTaskDelay"
.LASF33:
	.string	"topic_control"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"mqtt_port"
.LASF12:
	.string	"_Bool"
.LASF47:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/mqtt"
.LASF32:
	.string	"client_id"
.LASF46:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/mqtt/mqtt_interface.c"
.LASF19:
	.string	"mqtt_topic_status"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
