	.file	"mqtt_if.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mqtt_encode_remaining_length,"ax",@progbits
	.align	1
	.type	mqtt_encode_remaining_length, @function
mqtt_encode_remaining_length:
.LFB6:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/mqtt_if/mqtt_if.c"
	.loc 1 64 1
	.cfi_startproc
.LVL0:
	.loc 1 65 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	a4,a0
	.loc 1 65 9
	li	a0,0
.LVL1:
.LBB2:
	.loc 1 69 12
	li	a3,127
.LVL2:
.L3:
.LBE2:
	.loc 1 66 5 is_stmt 1
.LBB3:
	.loc 1 67 9
	mv	a2,a1
	.loc 1 67 17 is_stmt 0
	andi	a5,a1,127
.LVL3:
	.loc 1 68 9 is_stmt 1
	.loc 1 68 16 is_stmt 0
	srli	a1,a1,7
.LVL4:
	.loc 1 69 9 is_stmt 1
	.loc 1 69 12 is_stmt 0
	bleu	a2,a3,.L2
	.loc 1 70 13 is_stmt 1
.LVL5:
	.loc 1 70 19 is_stmt 0
	ori	a5,a5,128
.LVL6:
.L2:
	.loc 1 72 9 is_stmt 1
	.loc 1 72 14 is_stmt 0
	addi	a0,a0,1
.LVL7:
	.loc 1 72 18
	add	a6,a4,a0
	sb	a5,-1(a6)
.LBE3:
	.loc 1 73 13 is_stmt 1
	.loc 1 73 5 is_stmt 0
	bgtu	a2,a3,.L3
	.loc 1 74 5 is_stmt 1
	.loc 1 75 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	mqtt_encode_remaining_length, .-mqtt_encode_remaining_length
	.section	.text.mqtt_encode_string,"ax",@progbits
	.align	1
	.type	mqtt_encode_string, @function
mqtt_encode_string:
.LFB5:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 55 5
	.loc 1 54 1 is_stmt 0
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
	.cfi_offset 18, -16
	.loc 1 54 1
	mv	s2,a0
	.loc 1 55 20
	mv	a0,a1
.LVL9:
	sw	a1,-20(s0)
	call	strlen
.LVL10:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 12 is_stmt 0
	slli	a5,a0,16
	.loc 1 58 5
	lw	a1,-20(s0)
	slli	s1,a0,16
	.loc 1 56 12
	srli	a5,a5,16
	srli	s1,s1,16
	srli	a5,a5,8
	.loc 1 57 12
	sb	a0,1(s2)
	.loc 1 56 12
	sb	a5,0(s2)
	.loc 1 57 5 is_stmt 1
	.loc 1 58 5
	mv	a2,s1
	addi	a0,s2,2
.LVL11:
	call	memcpy
.LVL12:
	.loc 1 59 5
	.loc 1 60 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
.LVL13:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL14:
	addi	a0,s1,2
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	mqtt_encode_string, .-mqtt_encode_string
	.section	.rodata.mqtt_send_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"MQTT"
	.align	2
.LC1:
	.string	"[MQTT_IF] Failed to send CONNECT packet\r\n"
	.align	2
.LC2:
	.string	"[MQTT_IF] CONNECT packet sent (%d bytes)\r\n"
	.section	.text.mqtt_send_connect,"ax",@progbits
	.align	1
	.type	mqtt_send_connect, @function
mqtt_send_connect:
.LFB7:
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
	.loc 1 80 5
	.loc 1 81 5
.LVL15:
	.loc 1 84 5
	.loc 1 79 1 is_stmt 0
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sw	s0,264(sp)
	sw	s2,256(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	sw	ra,268(sp)
	sw	s1,260(sp)
	.loc 1 91 12
	lui	a1,%hi(.LC0)
	.loc 1 84 19
	li	a5,16
	.loc 1 79 1
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 91 12
	addi	a1,a1,%lo(.LC0)
	addi	a0,s0,-267
	.loc 1 84 19
	sb	a5,-272(s0)
	.loc 1 87 5 is_stmt 1
.LVL16:
	.loc 1 88 5
	.loc 1 91 5
	.loc 1 91 12 is_stmt 0
	call	mqtt_encode_string
.LVL17:
	.loc 1 94 5 is_stmt 1
	.loc 1 94 19 is_stmt 0
	addi	a5,s0,-16
	add	a2,a5,a0
	.loc 1 98 31
	lui	s2,%hi(.LANCHOR0)
	.loc 1 94 19
	li	a5,4
	sb	a5,-251(a2)
	.loc 1 98 31
	addi	a5,s2,%lo(.LANCHOR0)
	.loc 1 98 8
	lbu	a4,196(a5)
	.loc 1 94 15
	addi	a3,a0,6
.LVL18:
	.loc 1 97 5 is_stmt 1
	.loc 1 98 5
	addi	s2,s2,%lo(.LANCHOR0)
	.loc 1 99 15 is_stmt 0
	li	a5,130
	.loc 1 98 8
	bne	a4,zero,.L9
	li	a5,2
.L9:
.LVL19:
	.loc 1 101 5 is_stmt 1
	.loc 1 101 8 is_stmt 0
	lbu	a4,260(s2)
	beq	a4,zero,.L10
	.loc 1 102 9 is_stmt 1
	.loc 1 102 15 is_stmt 0
	ori	a5,a5,64
.LVL20:
.L10:
	.loc 1 104 5 is_stmt 1
	.loc 1 104 19 is_stmt 0
	addi	a1,s0,-16
	add	a3,a1,a3
.LVL21:
	sb	a5,-256(a3)
	.loc 1 107 39
	lw	a5,324(s2)
.LVL22:
	.loc 1 104 15
	addi	a4,a0,7
.LVL23:
	.loc 1 107 5 is_stmt 1
	.loc 1 107 14 is_stmt 0
	bgt	a5,zero,.L11
	li	a5,60
.L11:
.LVL24:
	.loc 1 108 5 is_stmt 1 discriminator 4
	.loc 1 108 19 is_stmt 0 discriminator 4
	addi	a3,s0,-16
.LVL25:
	add	a4,a3,a4
	slli	a3,a5,16
	srli	a3,a3,16
	srli	a3,a3,8
	sb	a3,-256(a4)
.LVL26:
	.loc 1 109 5 is_stmt 1 discriminator 4
	.loc 1 109 15 is_stmt 0 discriminator 4
	addi	s1,a0,9
.LVL27:
	.loc 1 109 19 discriminator 4
	sb	a5,-248(a2)
	.loc 1 112 5 is_stmt 1 discriminator 4
	.loc 1 112 12 is_stmt 0 discriminator 4
	addi	a5,s0,-272
.LVL28:
	add	a0,a5,s1
	addi	a1,s2,132
	call	mqtt_encode_string
.LVL29:
	.loc 1 115 8 discriminator 4
	lbu	a5,196(s2)
	.loc 1 112 9 discriminator 4
	add	s1,s1,a0
.LVL30:
	.loc 1 115 5 is_stmt 1 discriminator 4
	.loc 1 115 8 is_stmt 0 discriminator 4
	beq	a5,zero,.L12
	.loc 1 116 9 is_stmt 1
	.loc 1 116 16 is_stmt 0
	addi	a5,s0,-272
	add	a0,a5,s1
	addi	a1,s2,196
	call	mqtt_encode_string
.LVL31:
	.loc 1 116 13
	add	s1,s1,a0
.LVL32:
.L12:
	.loc 1 120 5 is_stmt 1
	.loc 1 120 8 is_stmt 0
	lbu	a5,260(s2)
	beq	a5,zero,.L13
	.loc 1 121 9 is_stmt 1
	.loc 1 121 16 is_stmt 0
	addi	a5,s0,-272
	add	a0,a5,s1
	addi	a1,s2,260
	call	mqtt_encode_string
.LVL33:
	.loc 1 121 13
	add	s1,s1,a0
.LVL34:
.L13:
	.loc 1 125 5 is_stmt 1
	.loc 1 125 51 is_stmt 0
	addi	s1,s1,-5
.LVL35:
	.loc 1 126 5 is_stmt 1
	.loc 1 126 25 is_stmt 0
	mv	a1,s1
	addi	a0,s0,-271
	call	mqtt_encode_remaining_length
.LVL36:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 8 is_stmt 0
	li	a5,3
	addi	s2,a0,1
	bgt	a0,a5,.L14
	.loc 1 130 9 is_stmt 1
	addi	a5,s0,-272
	mv	a2,s1
	addi	a1,s0,-267
	add	a0,a5,s2
.LVL37:
	call	memmove
.LVL38:
.L14:
	.loc 1 134 5
	.loc 1 135 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 134 49
	add	s1,s2,s1
.LVL39:
	.loc 1 135 5 is_stmt 1
	.loc 1 135 16 is_stmt 0
	li	a3,0
	mv	a2,s1
	addi	a1,s0,-272
	call	lwip_send
.LVL40:
	.loc 1 137 5 is_stmt 1
	.loc 1 137 8 is_stmt 0
	beq	s1,a0,.L15
	.loc 1 138 9 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL41:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL42:
	.loc 1 139 9
	.loc 1 139 16 is_stmt 0
	li	a0,-1
.L8:
	.loc 1 144 1
	lw	ra,268(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,264(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	lw	s1,260(sp)
	.cfi_restore 9
.LVL43:
	lw	s2,256(sp)
	.cfi_restore 18
.LVL44:
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L15:
	.cfi_restore_state
	.loc 1 142 5 is_stmt 1
	lui	a0,%hi(.LC2)
.LVL46:
	mv	a1,s1
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL47:
	.loc 1 143 5
	.loc 1 143 12 is_stmt 0
	li	a0,0
	j	.L8
	.cfi_endproc
.LFE7:
	.size	mqtt_send_connect, .-mqtt_send_connect
	.section	.rodata.mqtt_send_publish.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"[MQTT_IF] Failed to send PUBLISH packet\r\n"
	.align	2
.LC4:
	.string	"[MQTT_IF] PUBLISH sent: %s (%d bytes)\r\n"
	.section	.text.mqtt_send_publish,"ax",@progbits
	.align	1
	.type	mqtt_send_publish, @function
mqtt_send_publish:
.LFB9:
	.loc 1 203 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 204 5
	.loc 1 205 5
	.loc 1 208 5
	.loc 1 209 5
	.loc 1 203 1 is_stmt 0
	addi	sp,sp,-544
	.cfi_def_cfa_offset 544
	.loc 1 210 22
	snez	a3,a3
.LVL49:
	.loc 1 203 1
	sw	ra,540(sp)
	sw	s0,536(sp)
	sw	s1,532(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,544
	.cfi_def_cfa 8, 0
	sw	s2,528(sp)
	sw	s3,524(sp)
	sw	s4,520(sp)
	.loc 1 210 22
	addi	a3,a3,48
.LVL50:
	.loc 1 212 5 is_stmt 1
	.loc 1 213 5
	.loc 1 212 18 is_stmt 0
	ori	a3,a3,2
.LVL51:
	.loc 1 203 1
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 213 19
	sb	a3,-544(s0)
	.loc 1 216 5 is_stmt 1
.LVL52:
	.loc 1 217 5
	.loc 1 220 5
	.loc 1 203 1 is_stmt 0
	mv	s4,a0
	mv	s3,a1
	mv	s2,a2
	.loc 1 220 21
	call	strlen
.LVL53:
	.loc 1 221 32
	srai	a5,a0,8
	.loc 1 220 21
	mv	s1,a0
.LVL54:
	.loc 1 221 5 is_stmt 1
	.loc 1 223 5 is_stmt 0
	mv	a2,a0
	.loc 1 222 19
	sb	a0,-538(s0)
	.loc 1 223 5
	mv	a1,s4
	addi	a0,s0,-537
	.loc 1 221 19
	sb	a5,-539(s0)
	.loc 1 222 5 is_stmt 1
.LVL55:
	.loc 1 223 5
	call	memcpy
.LVL56:
	.loc 1 224 5
	.loc 1 227 5
	.loc 1 228 5
	.loc 1 228 19 is_stmt 0
	lui	a4,%hi(.LANCHOR2)
	addi	a4,a4,%lo(.LANCHOR2)
	lhu	a5,0(a4)
.LVL57:
	addi	a3,s0,-32
	add	a3,a3,s1
	srli	a2,a5,8
	.loc 1 229 19
	sb	a5,-504(a3)
	.loc 1 230 18
	addi	a5,a5,1
	.loc 1 228 19
	sb	a2,-505(a3)
	.loc 1 229 5 is_stmt 1
	.loc 1 230 18 is_stmt 0
	sh	a5,0(a4)
	.loc 1 229 15
	addi	s1,s1,9
.LVL58:
	.loc 1 230 5 is_stmt 1
	.loc 1 233 5
	.loc 1 233 8 is_stmt 0
	beq	s3,zero,.L33
	.loc 1 233 17 discriminator 1
	ble	s2,zero,.L33
	.loc 1 234 9 is_stmt 1
	addi	a5,s0,-544
	add	a0,a5,s1
	mv	a2,s2
	mv	a1,s3
	call	memcpy
.LVL59:
	.loc 1 235 9
	.loc 1 235 13 is_stmt 0
	add	s1,s1,s2
.LVL60:
.L33:
	.loc 1 239 5 is_stmt 1
	.loc 1 239 51 is_stmt 0
	addi	s1,s1,-5
.LVL61:
	.loc 1 240 5 is_stmt 1
	.loc 1 240 25 is_stmt 0
	mv	a1,s1
	addi	a0,s0,-543
	call	mqtt_encode_remaining_length
.LVL62:
	.loc 1 242 5 is_stmt 1
	.loc 1 242 8 is_stmt 0
	li	a5,3
	addi	s3,a0,1
.LVL63:
	bgt	a0,a5,.L34
	.loc 1 243 9 is_stmt 1
	addi	a5,s0,-544
	mv	a2,s1
	addi	a1,s0,-539
	add	a0,a5,s3
.LVL64:
	call	memmove
.LVL65:
.L34:
	.loc 1 246 5
	.loc 1 247 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 246 49
	add	s1,s3,s1
.LVL66:
	.loc 1 247 5 is_stmt 1
	.loc 1 247 16 is_stmt 0
	li	a3,0
	mv	a2,s1
	addi	a1,s0,-544
	call	lwip_send
.LVL67:
	.loc 1 249 5 is_stmt 1
	.loc 1 249 8 is_stmt 0
	beq	s1,a0,.L35
	.loc 1 250 9 is_stmt 1
	lui	a0,%hi(.LC3)
.LVL68:
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL69:
	.loc 1 251 9
	.loc 1 251 16 is_stmt 0
	li	a0,-1
.L31:
	.loc 1 256 1
	lw	ra,540(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,536(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 544
	lw	s1,532(sp)
	.cfi_restore 9
.LVL70:
	lw	s2,528(sp)
	.cfi_restore 18
.LVL71:
	lw	s3,524(sp)
	.cfi_restore 19
.LVL72:
	lw	s4,520(sp)
	.cfi_restore 20
.LVL73:
	addi	sp,sp,544
	.cfi_def_cfa_offset 0
	jr	ra
.LVL74:
.L35:
	.cfi_restore_state
	.loc 1 254 5 is_stmt 1
	lui	a0,%hi(.LC4)
.LVL75:
	mv	a2,s2
	mv	a1,s4
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL76:
	.loc 1 255 5
	.loc 1 255 12 is_stmt 0
	li	a0,0
	j	.L31
	.cfi_endproc
.LFE9:
	.size	mqtt_send_publish, .-mqtt_send_publish
	.globl	__divdi3
	.section	.rodata.mqtt_recv_task.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"[MQTT_IF] Message too short (%d bytes)\r\n"
	.align	2
.LC6:
	.string	"[MQTT_IF] Received packet type: 0x%02X, len: %d\r\n"
	.align	2
.LC7:
	.string	"[MQTT_IF] Connected to broker\r\n"
	.align	2
.LC8:
	.string	"[MQTT_IF] Connection refused (code: 0x%02X)\r\n"
	.align	2
.LC9:
	.string	"[MQTT_IF] Invalid PUBLISH: packet ID out of bounds\r\n"
	.align	2
.LC10:
	.string	"[MQTT_IF] Received message: %s = %.*s\r\n"
	.align	2
.LC11:
	.string	"[MQTT_IF] Received message: %s (empty)\r\n"
	.align	2
.LC12:
	.string	""
	.align	2
.LC13:
	.string	"[MQTT_IF] PINGRESP received\r\n"
	.align	2
.LC14:
	.string	"[MQTT_IF] SUBACK received\r\n"
	.align	2
.LC15:
	.string	"[MQTT_IF] PUBACK received\r\n"
	.align	2
.LC16:
	.string	"[MQTT_IF] Unknown packet type: 0x%02X\r\n"
	.align	2
.LC17:
	.string	"[MQTT_IF] Connection closed by broker\r\n"
	.align	2
.LC18:
	.string	"[MQTT_IF] Connection closed (recv returned < 0, errno=0)\r\n"
	.align	2
.LC19:
	.string	"[MQTT_IF] Receive error (errno: %d)\r\n"
	.align	2
.LC20:
	.string	"[MQTT_IF] Select error (errno: %d)\r\n"
	.align	2
.LC21:
	.string	"[MQTT_IF] Receive task exited\r\n"
	.section	.text.mqtt_recv_task,"ax",@progbits
	.align	1
	.type	mqtt_recv_task, @function
mqtt_recv_task:
.LFB12:
	.loc 1 391 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 392 5
	.loc 1 393 5
	.loc 1 394 5
	.loc 1 396 5
	.loc 1 391 1 is_stmt 0
	addi	sp,sp,-1520
	.cfi_def_cfa_offset 1520
	sw	s0,1512(sp)
	sw	s2,1504(sp)
	sw	s3,1500(sp)
	sw	s4,1496(sp)
	sw	s5,1492(sp)
	sw	s6,1488(sp)
	sw	s7,1484(sp)
	sw	s8,1480(sp)
	sw	s9,1476(sp)
	sw	ra,1516(sp)
	sw	s1,1508(sp)
	sw	s10,1472(sp)
	sw	s11,1468(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	addi	s0,sp,1520
	.cfi_def_cfa 8, 0
.LBB15:
.LBB16:
	.loc 1 400 48
	lui	s3,%hi(.LANCHOR0)
.LBE16:
.LBE15:
	.loc 1 391 1
	.loc 1 394 14
	li	s2,0
	.loc 1 396 26
	lui	s4,%hi(.LANCHOR1)
.LBB40:
	.loc 1 397 13
	lui	s5,%hi(.LANCHOR3)
.LBB21:
	.loc 1 400 48
	addi	s3,s3,%lo(.LANCHOR0)
.LBE21:
.LBB22:
.LBB23:
.LBB24:
	.loc 1 281 5
	lui	s6,%hi(.LC6)
	.loc 1 380 13
	lui	s7,%hi(.LC15)
	.loc 1 384 13
	lui	s8,%hi(.LC16)
	.loc 1 376 13
	lui	s9,%hi(.LC14)
.LVL78:
.L43:
.LBE24:
.LBE23:
.LBE22:
.LBE40:
	.loc 1 396 11 is_stmt 1
	lw	a5,%lo(.LANCHOR1)(s4)
	addi	s1,s4,%lo(.LANCHOR1)
	blt	a5,zero,.L80
.LBB41:
	.loc 1 397 9
	.loc 1 397 12 is_stmt 0
	lbu	a5,%lo(.LANCHOR3)(s5)
	addi	s11,s5,%lo(.LANCHOR3)
	beq	a5,zero,.L44
.LBB34:
	.loc 1 399 13 is_stmt 1
	.loc 1 399 28 is_stmt 0
	call	aos_now_ms
.LVL79:
	.loc 1 399 41
	li	a2,1000
	li	a3,0
	call	__divdi3
.LVL80:
	.loc 1 400 48
	lw	a5,324(s3)
	.loc 1 399 41
	mv	s10,a0
.LVL81:
	.loc 1 400 13 is_stmt 1
	.loc 1 400 89 is_stmt 0
	bgt	a5,zero,.L45
	li	a5,60
.L45:
.LVL82:
	.loc 1 401 13 is_stmt 1 discriminator 4
	.loc 1 401 16 is_stmt 0 discriminator 4
	beq	s2,zero,.L46
	.loc 1 401 40 discriminator 1
	sub	a4,s10,s2
	.loc 1 401 32 discriminator 1
	bltu	a4,a5,.L44
.L46:
	.loc 1 402 17 is_stmt 1
.LBB17:
.LBB18:
	.loc 1 261 5
	.loc 1 262 5
	.loc 1 263 5
	.loc 1 265 16 is_stmt 0
	lw	a0,0(s1)
.LVL83:
	.loc 1 262 15
	li	a5,192
.LVL84:
	.loc 1 265 16
	li	a3,0
	li	a2,2
	addi	a1,s0,-1344
	.loc 1 262 15
	sh	a5,-1344(s0)
	.loc 1 265 5 is_stmt 1
.LBE18:
.LBE17:
	.loc 1 403 27 is_stmt 0
	mv	s2,s10
.LVL85:
.LBB20:
.LBB19:
	.loc 1 265 16
	call	lwip_send
.LVL86:
	.loc 1 266 5 is_stmt 1
.L44:
.LBE19:
.LBE20:
.LBE34:
	.loc 1 408 9
	.loc 1 409 9
	.loc 1 410 8
.LBB35:
	.loc 1 410 13
	.loc 1 410 25
	.loc 1 410 38
	.loc 1 410 11
	.loc 1 410 98
	.loc 1 410 104
	.loc 1 410 113
.LBE35:
	.loc 1 411 27 is_stmt 0
	lw	a0,0(s1)
.LBB36:
	.loc 1 410 134
	sw	zero,-1492(s0)
	.loc 1 410 104 is_stmt 1
	.loc 1 410 113
.LVL87:
	.loc 1 410 134 is_stmt 0
	sw	zero,-1496(s0)
	.loc 1 410 104 is_stmt 1
.LBE36:
	.loc 1 410 147
	.loc 1 411 9
	.loc 1 411 12 is_stmt 0
	blt	a0,zero,.L47
	.loc 1 412 12 is_stmt 1
	.loc 1 412 13 is_stmt 0
	srai	a5,a0,5
	.loc 1 412 44
	addi	a4,s0,-64
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,-1432(a5)
	.loc 1 412 61
	li	a4,1
	sll	a4,a4,a0
	.loc 1 412 44
	or	a4,a4,a3
	sw	a4,-1432(a5)
.L47:
	.loc 1 414 9 is_stmt 1
	.loc 1 414 24 is_stmt 0
	li	a4,1
	li	a5,0
	sw	a4,-1488(s0)
	.loc 1 417 19
	li	a3,0
	addi	a4,s0,-1488
	li	a2,0
	addi	a1,s0,-1496
.LVL88:
	addi	a0,a0,1
	.loc 1 414 24
	sw	a5,-1484(s0)
	.loc 1 415 9 is_stmt 1
	.loc 1 415 25 is_stmt 0
	sw	zero,-1480(s0)
	.loc 1 417 9 is_stmt 1
	.loc 1 417 19 is_stmt 0
	call	lwip_select
.LVL89:
	.loc 1 418 9 is_stmt 1
	.loc 1 418 12 is_stmt 0
	ble	a0,zero,.L48
	.loc 1 418 38 discriminator 1
	lw	a0,0(s1)
.LVL90:
	.loc 1 418 21 discriminator 1
	blt	a0,zero,.L52
	.loc 1 418 46 discriminator 2
	srai	a5,a0,5
	.loc 1 418 58 discriminator 2
	slli	a5,a5,2
	addi	a4,s0,-64
	add	a5,a4,a5
	.loc 1 418 81 discriminator 2
	lw	s1,-1432(a5)
	srl	s1,s1,a0
	andi	s1,s1,1
	.loc 1 418 43 discriminator 2
	beq	s1,zero,.L52
.LBB37:
	.loc 1 419 13 is_stmt 1
	.loc 1 419 28 is_stmt 0
	li	a3,0
	li	a2,1024
	addi	a1,s0,-1088
	call	lwip_recv
.LVL91:
	mv	s10,a0
.LVL92:
	.loc 1 420 13 is_stmt 1
	.loc 1 420 16 is_stmt 0
	ble	a0,zero,.L50
	.loc 1 421 17 is_stmt 1
.LVL93:
.LBB30:
.LBB28:
	.loc 1 275 5
	.loc 1 275 8 is_stmt 0
	li	a5,1
	bne	a0,a5,.L51
	.loc 1 276 9 is_stmt 1
	lui	a0,%hi(.LC5)
.LVL94:
	li	a1,1
	addi	a0,a0,%lo(.LC5)
.L121:
	.loc 1 384 13 is_stmt 0
	call	printf
.LVL95:
	.loc 1 385 13 is_stmt 1
	j	.L52
.LVL96:
.L51:
	.loc 1 280 5
	.loc 1 280 13 is_stmt 0
	lbu	a1,-1088(s0)
	.loc 1 281 5
	mv	a2,a0
	addi	a0,s6,%lo(.LC6)
.LVL97:
	.loc 1 280 13
	andi	a1,a1,240
.LVL98:
	.loc 1 281 5 is_stmt 1
	sw	a1,-1508(s0)
	call	printf
.LVL99:
	.loc 1 283 5
	lw	a1,-1508(s0)
	li	a5,64
	beq	a1,a5,.L53
	bgtu	a1,a5,.L54
	li	a5,32
	beq	a1,a5,.L55
	li	a5,48
	li	s11,0
	li	a4,1
	beq	a1,a5,.L56
.L57:
	.loc 1 384 13
	addi	a0,s8,%lo(.LC16)
	j	.L121
.L54:
	.loc 1 283 5 is_stmt 0
	li	a5,144
	beq	a1,a5,.L58
	li	a5,208
	bne	a1,a5,.L57
	.loc 1 372 13 is_stmt 1
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	j	.L122
.L55:
	.loc 1 285 13
	lui	s1,%hi(.LANCHOR4)
	.loc 1 285 16 is_stmt 0
	li	a5,3
	addi	s1,s1,%lo(.LANCHOR4)
	ble	s10,a5,.L84
	.loc 1 285 33
	lbu	a1,-1085(s0)
	.loc 1 285 26
	bne	a1,zero,.L60
	.loc 1 286 17 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL100:
	.loc 1 287 17
	.loc 1 287 34 is_stmt 0
	li	a5,1
	sb	a5,0(s11)
	.loc 1 288 17 is_stmt 1
	.loc 1 289 21 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a5,%lo(.LANCHOR5)(a5)
	.loc 1 288 35
	sb	zero,0(s1)
	.loc 1 289 17 is_stmt 1
	.loc 1 289 20 is_stmt 0
	beq	a5,zero,.L52
	.loc 1 290 21 is_stmt 1
	jalr	a5
.LVL101:
.L52:
.LBE28:
.LBE30:
.LBE37:
	.loc 1 461 9 discriminator 1
	li	a0,100
	call	aos_msleep
.LVL102:
	j	.L43
.LVL103:
.L84:
.LBB38:
.LBB31:
.LBB29:
	.loc 1 293 17 is_stmt 0
	li	a1,0
.L60:
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL104:
	.loc 1 294 17 is_stmt 1
	.loc 1 294 35 is_stmt 0
	sb	zero,0(s1)
	j	.L52
.LVL105:
.L63:
.LBB25:
	.loc 1 303 13 is_stmt 1
	.loc 1 304 13
	.loc 1 305 17
	.loc 1 305 20 is_stmt 0
	ble	s10,s1,.L52
.LVL106:
.L56:
	mv	a1,s1
.LVL107:
	.loc 1 306 17 is_stmt 1
	.loc 1 306 23 is_stmt 0
	addi	a5,s0,-1088
.LVL108:
	add	a5,a5,a1
.LVL109:
	lbu	a5,0(a5)
	addi	s1,s1,1
.LVL110:
	.loc 1 307 17 is_stmt 1
	.loc 1 307 44 is_stmt 0
	andi	a3,a5,127
	.loc 1 307 52
	mul	a3,a3,a4
	.loc 1 309 13
	slli	a5,a5,24
.LVL111:
	srai	a5,a5,24
	.loc 1 308 28
	slli	a4,a4,7
.LVL112:
	.loc 1 307 34
	add	s11,s11,a3
.LVL113:
	.loc 1 308 17 is_stmt 1
	.loc 1 309 21
	.loc 1 309 13 is_stmt 0
	blt	a5,zero,.L63
	.loc 1 311 13 is_stmt 1
	.loc 1 311 25 is_stmt 0
	addi	a5,a1,2
	.loc 1 311 16
	ble	s10,a5,.L52
	.loc 1 312 13 is_stmt 1
	.loc 1 312 39 is_stmt 0
	addi	a5,s0,-64
	add	a5,a5,s1
	lbu	s1,-1024(a5)
.LVL114:
	.loc 1 312 57
	addi	a5,s0,-64
	add	a5,a5,a1
	.loc 1 312 51
	lbu	a2,-1022(a5)
	.loc 1 312 45
	slli	s1,s1,8
	.loc 1 313 17
	addi	a1,a1,3
.LVL115:
	.loc 1 312 22
	or	s1,s1,a2
.LVL116:
	.loc 1 313 13 is_stmt 1
	.loc 1 315 13
	.loc 1 315 21 is_stmt 0
	add	a3,a1,s1
	.loc 1 315 16
	sw	a3,-1508(s0)
.LVL117:
	blt	s10,a3,.L52
	.loc 1 316 13 is_stmt 1
	.loc 1 317 13
	.loc 1 317 16 is_stmt 0
	li	a5,127
	bgtu	s1,a5,.L52
	.loc 1 318 17 is_stmt 1
	addi	a5,s0,-1088
.LVL118:
	add	a1,a5,a1
.LVL119:
	mv	a2,s1
	addi	a0,s0,-1472
	call	memcpy
.LVL120:
	.loc 1 319 17
	lbu	a4,-1088(s0)
	.loc 1 319 34 is_stmt 0
	addi	a5,s0,-64
	add	a5,a5,s1
	sb	zero,-1408(a5)
	.loc 1 320 17 is_stmt 1
.LVL121:
	.loc 1 326 13
	andi	a4,a4,6
	.loc 1 326 16 is_stmt 0
	li	a5,2
	lw	a3,-1508(s0)
	bne	a4,a5,.L64
	.loc 1 327 17 is_stmt 1
	.loc 1 327 29 is_stmt 0
	addi	a5,a3,1
	.loc 1 331 21
	addi	a3,a3,2
	.loc 1 327 20
	bgt	s10,a5,.L64
	.loc 1 328 21 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
.LVL122:
.L122:
.LBE25:
	.loc 1 380 13 is_stmt 0
	call	printf
.LVL123:
	.loc 1 381 13 is_stmt 1
	j	.L52
.LVL124:
.L64:
.LBB27:
	.loc 1 336 13
	.loc 1 337 13
	.loc 1 337 61 is_stmt 0
	li	a2,127
	li	a5,1
	bleu	s11,a2,.L67
	.loc 1 337 92
	li	a2,16384
	li	a5,2
	bltu	s11,a2,.L67
	.loc 1 337 125
	li	a2,2097152
	li	a5,3
	bltu	s11,a2,.L67
	li	a5,4
.L67:
.LVL125:
	.loc 1 338 13 is_stmt 1
	.loc 1 339 13
	.loc 1 339 24 is_stmt 0
	addi	a2,a5,3
.LVL126:
	.loc 1 340 13 is_stmt 1
	.loc 1 340 24 is_stmt 0
	add	s1,s1,a2
.LVL127:
	.loc 1 341 13 is_stmt 1
	.loc 1 341 16 is_stmt 0
	li	a2,2
	bne	a4,a2,.L68
	.loc 1 342 17 is_stmt 1
	.loc 1 342 28 is_stmt 0
	addi	s1,s1,2
.LVL128:
.L68:
	.loc 1 345 13 is_stmt 1
	.loc 1 345 62 is_stmt 0
	addi	s1,s1,-1
.LVL129:
	.loc 1 345 66
	sub	s1,s1,a5
.LVL130:
	.loc 1 345 48
	sub	s1,s11,s1
.LVL131:
	.loc 1 346 13 is_stmt 1
	mv	a2,s1
	bge	s1,zero,.L69
	li	a2,0
.L69:
.LVL132:
	.loc 1 348 13
	.loc 1 348 21 is_stmt 0
	add	a5,a2,a3
.LVL133:
	.loc 1 348 16
	blt	s10,a5,.L70
	.loc 1 348 42
	ble	s1,zero,.L71
.LBB26:
	.loc 1 349 17 is_stmt 1
	.loc 1 350 17
	.loc 1 350 82 is_stmt 0
	li	a5,255
	bleu	a2,a5,.L72
	li	a2,255
.LVL134:
.L72:
	.loc 1 351 17 is_stmt 1
	.loc 1 351 25 is_stmt 0
	add	a5,a3,a2
	.loc 1 351 20
	blt	s10,a5,.L52
	.loc 1 352 21 is_stmt 1
	addi	a5,s0,-1088
.LVL135:
	add	a1,a5,a3
	addi	a0,s0,-1344
	sw	a2,-1508(s0)
	call	memcpy
.LVL136:
	.loc 1 353 21
	.loc 1 353 39 is_stmt 0
	lw	a2,-1508(s0)
	addi	a5,s0,-64
	.loc 1 355 21
	lui	a0,%hi(.LC10)
	.loc 1 353 39
	add	a5,a5,a2
	sb	zero,-1280(a5)
	.loc 1 355 21 is_stmt 1
	addi	a3,s0,-1344
	addi	a1,s0,-1472
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL137:
	.loc 1 357 21
	.loc 1 357 25 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	lw	a5,%lo(.LANCHOR6)(a5)
	.loc 1 357 24
	beq	a5,zero,.L52
	.loc 1 358 25 is_stmt 1
	lw	a2,-1508(s0)
	addi	a1,s0,-1344
.LVL138:
.L120:
.LBE26:
	.loc 1 365 21 is_stmt 0
	addi	a0,s0,-1472
	jalr	a5
.LVL139:
	j	.L52
.LVL140:
.L70:
	.loc 1 361 20 is_stmt 1
	.loc 1 361 23 is_stmt 0
	bgt	s1,zero,.L52
.L71:
	.loc 1 363 17 is_stmt 1
	lui	a0,%hi(.LC11)
	addi	a1,s0,-1472
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL141:
	.loc 1 364 17
	.loc 1 364 21 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	lw	a5,%lo(.LANCHOR6)(a5)
	.loc 1 364 20
	beq	a5,zero,.L52
	.loc 1 365 21 is_stmt 1
	lui	a1,%hi(.LC12)
	li	a2,0
	addi	a1,a1,%lo(.LC12)
	j	.L120
.LVL142:
.L58:
.LBE27:
	.loc 1 376 13
	addi	a0,s9,%lo(.LC14)
	j	.L122
.L53:
	.loc 1 380 13
	addi	a0,s7,%lo(.LC15)
	j	.L122
.LVL143:
.L50:
.LBE29:
.LBE31:
	.loc 1 422 20
	.loc 1 422 23 is_stmt 0
	bne	a0,zero,.L76
	.loc 1 423 17 is_stmt 1
	lui	a0,%hi(.LC17)
.LVL144:
	addi	a0,a0,%lo(.LC17)
.L127:
.LBB32:
	.loc 1 435 21 is_stmt 0
	call	printf
.LVL145:
	.loc 1 436 21 is_stmt 1
.L125:
	.loc 1 444 21
	.loc 1 445 39 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sb	zero,%lo(.LANCHOR4)(a5)
	.loc 1 446 25
	lui	a5,%hi(.LANCHOR7)
	lw	a5,%lo(.LANCHOR7)(a5)
	.loc 1 444 38
	sb	zero,0(s11)
	.loc 1 445 21 is_stmt 1
	.loc 1 446 21
	.loc 1 446 24 is_stmt 0
	beq	a5,zero,.L80
	.loc 1 447 25 is_stmt 1
	jalr	a5
.LVL146:
.L80:
.LBE32:
.LBE38:
.LBE41:
	.loc 1 464 5
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL147:
	.loc 1 465 5
	.loc 1 465 24 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	.loc 1 466 5
	li	a0,0
	.loc 1 465 24
	sw	zero,%lo(.LANCHOR8)(a5)
	.loc 1 466 5 is_stmt 1
	call	vTaskDelete
.LVL148:
	.loc 1 467 1 is_stmt 0
	lw	ra,1516(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,1512(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1520
	lw	s1,1508(sp)
	.cfi_restore 9
	lw	s2,1504(sp)
	.cfi_restore 18
.LVL149:
	lw	s3,1500(sp)
	.cfi_restore 19
	lw	s4,1496(sp)
	.cfi_restore 20
	lw	s5,1492(sp)
	.cfi_restore 21
	lw	s6,1488(sp)
	.cfi_restore 22
	lw	s7,1484(sp)
	.cfi_restore 23
	lw	s8,1480(sp)
	.cfi_restore 24
	lw	s9,1476(sp)
	.cfi_restore 25
	lw	s10,1472(sp)
	.cfi_restore 26
	lw	s11,1468(sp)
	.cfi_restore 27
	addi	sp,sp,1520
	.cfi_def_cfa_offset 0
	jr	ra
.LVL150:
.L76:
	.cfi_restore_state
.LBB42:
.LBB39:
.LBB33:
	.loc 1 432 17 is_stmt 1
	.loc 1 432 28 is_stmt 0
	call	__errno
.LVL151:
	.loc 1 432 21
	lw	a1,0(a0)
.LVL152:
	.loc 1 433 17 is_stmt 1
	.loc 1 433 20 is_stmt 0
	bne	a1,zero,.L79
	.loc 1 435 21 is_stmt 1
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	j	.L127
.L79:
	.loc 1 442 24
	.loc 1 442 27 is_stmt 0
	li	a5,11
	beq	a1,a5,.L52
	.loc 1 442 63 discriminator 1
	li	a5,4
	beq	a1,a5,.L52
	.loc 1 443 21 is_stmt 1
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL153:
	j	.L125
.LVL154:
.L48:
.LBE33:
.LBE39:
	.loc 1 453 16
	.loc 1 453 19 is_stmt 0
	beq	a0,zero,.L52
	.loc 1 455 13 is_stmt 1
	.loc 1 455 18 is_stmt 0
	call	__errno
.LVL155:
	.loc 1 455 16
	lw	a4,0(a0)
	li	a5,4
	beq	a4,a5,.L52
	.loc 1 456 17 is_stmt 1
	.loc 1 456 67 is_stmt 0
	call	__errno
.LVL156:
	.loc 1 456 17
	lw	a1,0(a0)
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	printf
.LVL157:
	.loc 1 457 17 is_stmt 1
	j	.L80
.LBE42:
	.cfi_endproc
.LFE12:
	.size	mqtt_recv_task, .-mqtt_recv_task
	.section	.rodata.mqtt_if_init.str1.4,"aMS",@progbits,1
	.align	2
.LC22:
	.string	"[MQTT_IF] Initializing MQTT interface\r\n"
	.align	2
.LC23:
	.string	"device_"
	.section	.text.mqtt_if_init,"ax",@progbits
	.align	1
	.globl	mqtt_if_init
	.type	mqtt_if_init, @function
mqtt_if_init:
.LFB13:
	.loc 1 471 1
	.cfi_startproc
	.loc 1 472 5
	.loc 1 471 1 is_stmt 0
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
	.loc 1 472 5
	lui	a0,%hi(.LC22)
	.loc 1 471 1
	.loc 1 472 5
	addi	a0,a0,%lo(.LC22)
	call	printf
.LVL158:
	.loc 1 473 5 is_stmt 1
	lui	a0,%hi(.LANCHOR0)
	addi	s1,a0,%lo(.LANCHOR0)
	li	a2,328
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR0)
	call	memset
.LVL159:
	.loc 1 474 5
	.loc 1 474 24 is_stmt 0
	li	a5,1883
	.loc 1 476 5
	lui	a1,%hi(.LC23)
	.loc 1 474 24
	sw	a5,128(s1)
	.loc 1 475 5 is_stmt 1
	.loc 1 476 5 is_stmt 0
	addi	a0,s1,132
	.loc 1 475 29
	li	a5,60
	.loc 1 476 5
	addi	a1,a1,%lo(.LC23)
	.loc 1 475 29
	sw	a5,324(s1)
	.loc 1 476 5 is_stmt 1
	call	strcpy
.LVL160:
	.loc 1 477 5
	.loc 1 478 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	mqtt_if_init, .-mqtt_if_init
	.section	.rodata.mqtt_if_set_config.str1.4,"aMS",@progbits,1
	.align	2
.LC24:
	.string	"device_%d"
	.align	2
.LC25:
	.string	"[MQTT_IF] Config set: broker=%s:%d, client_id=%s\r\n"
	.section	.text.mqtt_if_set_config,"ax",@progbits
	.align	1
	.globl	mqtt_if_set_config
	.type	mqtt_if_set_config, @function
mqtt_if_set_config:
.LFB14:
	.loc 1 481 1 is_stmt 1
	.cfi_startproc
.LVL161:
	.loc 1 482 5
	.loc 1 482 8 is_stmt 0
	beq	a0,zero,.L133
	.loc 1 481 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 486 5
	lui	s1,%hi(.LANCHOR0)
	.loc 1 481 1
	sw	ra,28(sp)
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.cfi_offset 1, -4
	mv	a1,a0
	.loc 1 486 5 is_stmt 1
	.loc 1 481 1 is_stmt 0
	.loc 1 486 5
	li	a2,328
	addi	a0,s1,%lo(.LANCHOR0)
.LVL162:
	addi	s2,s1,%lo(.LANCHOR0)
	call	memcpy
.LVL163:
	.loc 1 489 5 is_stmt 1
	.loc 1 489 8 is_stmt 0
	lbu	a5,132(s2)
	lui	s2,%hi(.LANCHOR0+132)
	addi	s3,s1,%lo(.LANCHOR0)
	addi	s4,s2,%lo(.LANCHOR0+132)
	bne	a5,zero,.L132
	.loc 1 490 9 is_stmt 1
	.loc 1 490 94 is_stmt 0
	call	aos_now_ms
.LVL164:
	.loc 1 490 9
	lui	a2,%hi(.LC24)
	.loc 1 490 94
	mv	a3,a0
	.loc 1 490 9
	addi	a2,a2,%lo(.LC24)
	li	a1,64
	addi	a0,s2,%lo(.LANCHOR0+132)
	call	snprintf
.LVL165:
.L132:
	.loc 1 493 5 is_stmt 1
	lw	a2,128(s3)
	lui	a0,%hi(.LC25)
	mv	a3,s4
	addi	a1,s1,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC25)
	call	printf
.LVL166:
	.loc 1 496 5
	.loc 1 497 1 is_stmt 0
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
	.loc 1 496 12
	li	a0,0
	.loc 1 497 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL167:
.L133:
	.loc 1 483 16
	li	a0,-1
.LVL168:
	.loc 1 497 1
	ret
	.cfi_endproc
.LFE14:
	.size	mqtt_if_set_config, .-mqtt_if_set_config
	.section	.rodata.mqtt_if_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC26:
	.string	"[MQTT_IF] Already connected or connecting\r\n"
	.align	2
.LC27:
	.string	"[MQTT_IF] Broker not configured\r\n"
	.align	2
.LC28:
	.string	"[MQTT_IF] Connecting to %s:%d...\r\n"
	.align	2
.LC29:
	.string	"[MQTT_IF] Failed to resolve hostname\r\n"
	.align	2
.LC30:
	.string	"[MQTT_IF] Failed to create socket\r\n"
	.align	2
.LC31:
	.string	"[MQTT_IF] Failed to connect to broker (errno: %d)\r\n"
	.align	2
.LC32:
	.string	"[MQTT_IF] Make sure MQTT broker is running on %s:%d\r\n"
	.align	2
.LC33:
	.string	"[MQTT_IF] TCP connected, sending MQTT CONNECT...\r\n"
	.align	2
.LC34:
	.string	"mqtt_recv"
	.section	.text.mqtt_if_connect,"ax",@progbits
	.align	1
	.globl	mqtt_if_connect
	.type	mqtt_if_connect, @function
mqtt_if_connect:
.LFB15:
	.loc 1 500 1 is_stmt 1
	.cfi_startproc
	.loc 1 501 5
	.loc 1 500 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 501 9
	lui	s2,%hi(.LANCHOR4)
	.loc 1 500 1
	.loc 1 501 9
	addi	s2,s2,%lo(.LANCHOR4)
	.loc 1 501 8
	lbu	a5,0(s2)
	bne	a5,zero,.L139
	.loc 1 501 27 discriminator 1
	lui	a5,%hi(.LANCHOR3)
	lbu	a5,%lo(.LANCHOR3)(a5)
	beq	a5,zero,.L140
.L139:
	.loc 1 502 9 is_stmt 1
	lui	a0,%hi(.LC26)
	addi	a0,a0,%lo(.LC26)
.L150:
	.loc 1 523 9 is_stmt 0
	call	printf
.LVL169:
	.loc 1 524 9 is_stmt 1
.L149:
	.loc 1 552 9
	.loc 1 552 16 is_stmt 0
	li	a0,-1
.L138:
	.loc 1 564 1
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
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L140:
	.cfi_restore_state
	.loc 1 506 5 is_stmt 1
	.loc 1 506 29 is_stmt 0
	lui	s4,%hi(.LANCHOR0)
	addi	s5,s4,%lo(.LANCHOR0)
	.loc 1 506 8
	lbu	a5,0(s5)
	bne	a5,zero,.L142
	.loc 1 507 9 is_stmt 1
	lui	a0,%hi(.LC27)
	addi	a0,a0,%lo(.LC27)
	j	.L150
.L142:
	.loc 1 511 5
	lw	a2,128(s5)
	lui	a0,%hi(.LC28)
	addi	a1,s4,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC28)
	call	printf
.LVL170:
	.loc 1 514 5
	.loc 1 514 28 is_stmt 0
	addi	a0,s4,%lo(.LANCHOR0)
	call	lwip_gethostbyname
.LVL171:
	mv	s3,a0
.LVL172:
	.loc 1 515 5 is_stmt 1
	.loc 1 515 8 is_stmt 0
	bne	a0,zero,.L143
	.loc 1 516 9 is_stmt 1
	lui	a0,%hi(.LC29)
.LVL173:
	addi	a0,a0,%lo(.LC29)
	j	.L150
.LVL174:
.L143:
	.loc 1 521 5
	.loc 1 521 21 is_stmt 0
	li	a2,0
	li	a1,1
	li	a0,2
.LVL175:
	.loc 1 521 19
	lui	s1,%hi(.LANCHOR1)
	.loc 1 521 21
	call	lwip_socket
.LVL176:
	.loc 1 521 19
	addi	s1,s1,%lo(.LANCHOR1)
	sw	a0,0(s1)
	.loc 1 522 5 is_stmt 1
	.loc 1 522 8 is_stmt 0
	bge	a0,zero,.L144
	.loc 1 523 9 is_stmt 1
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	j	.L150
.L144:
	.loc 1 528 5
	.loc 1 529 5
	li	a2,16
	li	a1,0
	addi	a0,s0,-48
	call	memset
.LVL177:
	.loc 1 530 5
	.loc 1 531 28 is_stmt 0
	lhu	a0,128(s5)
	.loc 1 530 28
	li	a5,2
	sb	a5,-47(s0)
	.loc 1 531 5 is_stmt 1
	.loc 1 531 28 is_stmt 0
	call	lwip_htons
.LVL178:
	.loc 1 532 5
	lw	a5,16(s3)
	.loc 1 531 26
	sh	a0,-46(s0)
	.loc 1 532 5 is_stmt 1
	lw	a2,12(s3)
	lw	a1,0(a5)
	addi	a0,s0,-44
	call	memcpy
.LVL179:
	.loc 1 534 5
	.loc 1 534 26 is_stmt 0
	lw	a0,0(s1)
	li	a2,16
	addi	a1,s0,-48
	call	lwip_connect
.LVL180:
	.loc 1 535 5 is_stmt 1
	.loc 1 535 8 is_stmt 0
	bge	a0,zero,.L145
	.loc 1 536 9 is_stmt 1
	.loc 1 536 74 is_stmt 0
	call	__errno
.LVL181:
	.loc 1 536 9
	lw	a1,0(a0)
	lui	a0,%hi(.LC31)
	addi	a0,a0,%lo(.LC31)
	call	printf
.LVL182:
	.loc 1 537 9 is_stmt 1
	lw	a2,128(s5)
	lui	a0,%hi(.LC32)
	addi	a1,s4,%lo(.LANCHOR0)
	addi	a0,a0,%lo(.LC32)
	call	printf
.LVL183:
	.loc 1 538 9
	lw	a0,0(s1)
	call	lwip_close
.LVL184:
	.loc 1 539 9
	.loc 1 539 23 is_stmt 0
	li	a5,-1
	sw	a5,0(s1)
	.loc 1 540 9 is_stmt 1
	j	.L149
.LVL185:
.L145:
	.loc 1 543 5
	lui	a0,%hi(.LC33)
.LVL186:
	addi	a0,a0,%lo(.LC33)
	call	printf
.LVL187:
	.loc 1 545 5
	.loc 1 545 23 is_stmt 0
	li	a5,1
	sb	a5,0(s2)
	.loc 1 548 5 is_stmt 1
	.loc 1 548 9 is_stmt 0
	call	mqtt_send_connect
.LVL188:
	.loc 1 548 8
	bge	a0,zero,.L146
	.loc 1 549 9 is_stmt 1
	lw	a0,0(s1)
	call	lwip_close
.LVL189:
	.loc 1 550 9
	.loc 1 550 23 is_stmt 0
	li	a5,-1
	sw	a5,0(s1)
	.loc 1 551 9 is_stmt 1
	.loc 1 551 27 is_stmt 0
	sb	zero,0(s2)
	j	.L149
.L146:
	.loc 1 556 5 is_stmt 1
	.loc 1 556 28 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	.loc 1 556 8
	lw	a4,%lo(.LANCHOR8)(a5)
	bne	a4,zero,.L147
	.loc 1 557 9 is_stmt 1
	lui	a1,%hi(.LC34)
	lui	a0,%hi(mqtt_recv_task)
	addi	a5,a5,%lo(.LANCHOR8)
	li	a4,5
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC34)
	addi	a0,a0,%lo(mqtt_recv_task)
	call	xTaskCreate
.LVL190:
.L147:
	.loc 1 561 5
	li	a0,1000
	call	aos_msleep
.LVL191:
	.loc 1 563 5
	.loc 1 563 12 is_stmt 0
	li	a0,0
	j	.L138
	.cfi_endproc
.LFE15:
	.size	mqtt_if_connect, .-mqtt_if_connect
	.section	.rodata.mqtt_if_disconnect.str1.4,"aMS",@progbits,1
	.align	2
.LC35:
	.string	"[MQTT_IF] Disconnecting...\r\n"
	.align	2
.LC36:
	.string	"[MQTT_IF] Disconnected\r\n"
	.section	.text.mqtt_if_disconnect,"ax",@progbits
	.align	1
	.globl	mqtt_if_disconnect
	.type	mqtt_if_disconnect, @function
mqtt_if_disconnect:
.LFB16:
	.loc 1 567 1 is_stmt 1
	.cfi_startproc
	.loc 1 568 5
	.loc 1 567 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 568 23
	lui	s1,%hi(.LANCHOR1)
	.loc 1 567 1
	.loc 1 568 23
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 568 8
	lw	a5,0(s1)
	blt	a5,zero,.L153
	.loc 1 572 5 is_stmt 1
	lui	a0,%hi(.LC35)
	addi	a0,a0,%lo(.LC35)
	call	printf
.LVL192:
	.loc 1 575 5
	.loc 1 576 5
	.loc 1 577 5
	.loc 1 578 5 is_stmt 0
	lw	a0,0(s1)
	.loc 1 576 15
	li	a5,224
	.loc 1 578 5
	li	a3,0
	li	a2,2
	addi	a1,s0,-20
	.loc 1 576 15
	sh	a5,-20(s0)
	.loc 1 578 5 is_stmt 1
	call	lwip_send
.LVL193:
	.loc 1 580 5
	lw	a0,0(s1)
	call	lwip_close
.LVL194:
	.loc 1 581 5
	.loc 1 581 19 is_stmt 0
	li	a5,-1
	sw	a5,0(s1)
	.loc 1 582 5 is_stmt 1
	.loc 1 585 5 is_stmt 0
	lui	a0,%hi(.LC36)
	.loc 1 582 22
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 583 5 is_stmt 1
	.loc 1 585 5 is_stmt 0
	addi	a0,a0,%lo(.LC36)
	.loc 1 583 23
	lui	a5,%hi(.LANCHOR4)
	sb	zero,%lo(.LANCHOR4)(a5)
	.loc 1 585 5 is_stmt 1
	call	printf
.LVL195:
	.loc 1 587 5
	.loc 1 587 9 is_stmt 0
	lui	a5,%hi(.LANCHOR7)
	lw	a5,%lo(.LANCHOR7)(a5)
	.loc 1 587 8
	beq	a5,zero,.L153
	.loc 1 588 9 is_stmt 1
	jalr	a5
.LVL196:
.L153:
	.loc 1 592 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	mqtt_if_disconnect, .-mqtt_if_disconnect
	.section	.text.mqtt_if_is_connected,"ax",@progbits
	.align	1
	.globl	mqtt_if_is_connected
	.type	mqtt_if_is_connected, @function
mqtt_if_is_connected:
.LFB17:
	.loc 1 595 1 is_stmt 1
	.cfi_startproc
	.loc 1 596 5
	.loc 1 595 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 597 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR3)
	lbu	a0,%lo(.LANCHOR3)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	mqtt_if_is_connected, .-mqtt_if_is_connected
	.section	.rodata.mqtt_if_subscribe.str1.4,"aMS",@progbits,1
	.align	2
.LC37:
	.string	"[MQTT_IF] Failed to send SUBSCRIBE packet\r\n"
	.align	2
.LC38:
	.string	"[MQTT_IF] SUBSCRIBE sent: %s (len=%d)\r\n"
	.section	.text.mqtt_if_subscribe,"ax",@progbits
	.align	1
	.globl	mqtt_if_subscribe
	.type	mqtt_if_subscribe, @function
mqtt_if_subscribe:
.LFB18:
	.loc 1 600 1 is_stmt 1
	.cfi_startproc
.LVL197:
	.loc 1 601 5
	.loc 1 601 8 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lbu	a5,%lo(.LANCHOR3)(a5)
	beq	a5,zero,.L166
	.loc 1 600 1 discriminator 1
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sw	s0,296(sp)
	sw	s3,284(sp)
	sw	ra,300(sp)
	sw	s1,292(sp)
	sw	s2,288(sp)
	sw	s4,280(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	addi	s0,sp,304
	.cfi_def_cfa 8, 0
	mv	s3,a0
	.loc 1 602 16 discriminator 1
	li	a5,-1
	.loc 1 601 27 discriminator 1
	beq	a0,zero,.L161
	.loc 1 605 5 is_stmt 1
.LVL198:
.LBB45:
.LBB46:
	.loc 1 149 5
	.loc 1 150 5
	.loc 1 153 5
	.loc 1 164 22 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	addi	a4,a4,%lo(.LANCHOR9)
	.loc 1 153 19
	li	a5,-126
	sb	a5,-288(s0)
	.loc 1 160 5 is_stmt 1
.LVL199:
	.loc 1 163 5
	.loc 1 164 5
	.loc 1 164 22 is_stmt 0
	lhu	a5,0(a4)
.LVL200:
	.loc 1 165 5 is_stmt 1
	.loc 1 176 22 is_stmt 0
	li	s4,1
	.loc 1 164 22
	srli	a2,a5,8
	slli	a3,a5,8
	or	a3,a3,a2
	.loc 1 166 14
	addi	a5,a5,1
	.loc 1 164 22
	sh	a3,-286(s0)
	.loc 1 166 5 is_stmt 1
	.loc 1 166 14 is_stmt 0
	sh	a5,0(a4)
	.loc 1 169 5 is_stmt 1
	.loc 1 169 21 is_stmt 0
	call	strlen
.LVL201:
	.loc 1 170 22
	slli	a4,a0,16
	srli	a4,a4,16
	srli	a4,a4,8
	slli	a5,a0,8
	or	a5,a5,a4
	.loc 1 169 21
	mv	s1,a0
.LVL202:
	.loc 1 170 5 is_stmt 1
	.loc 1 171 5
	.loc 1 172 5 is_stmt 0
	mv	a2,a0
	mv	a1,s3
	addi	a0,s0,-282
	.loc 1 170 22
	sh	a5,-284(s0)
	.loc 1 172 5 is_stmt 1
	call	memcpy
.LVL203:
	.loc 1 173 5
	.loc 1 176 5
	.loc 1 176 22 is_stmt 0
	addi	a5,s0,-32
	add	a5,a5,s1
	.loc 1 179 40
	addi	s1,s1,5
.LVL204:
	.loc 1 176 22
	sb	s4,-250(a5)
	.loc 1 179 5 is_stmt 1
.LVL205:
	.loc 1 182 5
	.loc 1 182 25 is_stmt 0
	mv	a1,s1
	addi	a0,s0,-287
	call	mqtt_encode_remaining_length
.LVL206:
	.loc 1 185 5 is_stmt 1
	addi	s2,a0,1
	.loc 1 185 8 is_stmt 0
	ble	a0,s4,.L163
	.loc 1 186 9 is_stmt 1
	addi	a5,s0,-288
	mv	a2,s1
	addi	a1,s0,-286
	add	a0,a5,s2
.LVL207:
	call	memmove
.LVL208:
.L163:
	.loc 1 189 5
	.loc 1 190 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 189 39
	add	a2,s2,s1
.LVL209:
	.loc 1 190 5 is_stmt 1
	.loc 1 190 16 is_stmt 0
	li	a3,0
	addi	a1,s0,-288
	sw	a2,-292(s0)
	call	lwip_send
.LVL210:
	.loc 1 192 5 is_stmt 1
	.loc 1 192 8 is_stmt 0
	lw	a2,-292(s0)
	beq	a2,a0,.L164
	.loc 1 193 9 is_stmt 1
	lui	a0,%hi(.LC37)
.LVL211:
	addi	a0,a0,%lo(.LC37)
	call	printf
.LVL212:
	.loc 1 194 9
	.loc 1 194 16 is_stmt 0
	li	a5,-1
.LVL213:
.L161:
.LBE46:
.LBE45:
	.loc 1 606 1
	lw	ra,300(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,296(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 304
	lw	s1,292(sp)
	.cfi_restore 9
	lw	s2,288(sp)
	.cfi_restore 18
	lw	s3,284(sp)
	.cfi_restore 19
.LVL214:
	lw	s4,280(sp)
	.cfi_restore 20
	mv	a0,a5
	addi	sp,sp,304
	.cfi_def_cfa_offset 0
	jr	ra
.LVL215:
.L164:
	.cfi_restore_state
.LBB48:
.LBB47:
	.loc 1 197 5 is_stmt 1
	lui	a0,%hi(.LC38)
.LVL216:
	mv	a1,s3
	addi	a0,a0,%lo(.LC38)
	call	printf
.LVL217:
	.loc 1 198 5
	.loc 1 198 12 is_stmt 0
	li	a5,0
.LVL218:
.LBE47:
.LBE48:
	.loc 1 605 12
	j	.L161
.LVL219:
.L166:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.loc 1 602 16
	li	a5,-1
	.loc 1 606 1
	mv	a0,a5
.LVL220:
	ret
	.cfi_endproc
.LFE18:
	.size	mqtt_if_subscribe, .-mqtt_if_subscribe
	.section	.text.mqtt_if_unsubscribe,"ax",@progbits
	.align	1
	.globl	mqtt_if_unsubscribe
	.type	mqtt_if_unsubscribe, @function
mqtt_if_unsubscribe:
.LFB19:
	.loc 1 609 1 is_stmt 1
	.cfi_startproc
.LVL221:
	.loc 1 611 5
	.loc 1 612 5
	.loc 1 609 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 613 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
.LVL222:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	mqtt_if_unsubscribe, .-mqtt_if_unsubscribe
	.section	.text.mqtt_if_publish,"ax",@progbits
	.align	1
	.globl	mqtt_if_publish
	.type	mqtt_if_publish, @function
mqtt_if_publish:
.LFB20:
	.loc 1 616 1 is_stmt 1
	.cfi_startproc
.LVL223:
	.loc 1 617 5
	.loc 1 617 8 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lbu	a5,%lo(.LANCHOR3)(a5)
	beq	a5,zero,.L182
	.loc 1 616 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	s1,a0
	.loc 1 617 27 discriminator 1
	beq	a0,zero,.L174
	.loc 1 621 5 is_stmt 1
	.loc 1 621 8 is_stmt 0
	bge	a2,zero,.L176
	.loc 1 622 23
	mv	a0,a1
.LVL224:
	sw	a3,-24(s0)
	.loc 1 622 9 is_stmt 1
	.loc 1 622 23 is_stmt 0
	sw	a1,-20(s0)
	call	strlen
.LVL225:
	lw	a3,-24(s0)
	lw	a1,-20(s0)
	mv	a2,a0
.LVL226:
.L176:
	.loc 1 625 5 is_stmt 1
	.loc 1 626 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 625 12
	mv	a0,s1
	.loc 1 626 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL227:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 625 12
	tail	mqtt_send_publish
.LVL228:
.L174:
	.cfi_restore_state
	.loc 1 626 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL229:
	li	a0,-1
.LVL230:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL231:
.L182:
	li	a0,-1
.LVL232:
	ret
	.cfi_endproc
.LFE20:
	.size	mqtt_if_publish, .-mqtt_if_publish
	.section	.text.mqtt_if_set_connected_cb,"ax",@progbits
	.align	1
	.globl	mqtt_if_set_connected_cb
	.type	mqtt_if_set_connected_cb, @function
mqtt_if_set_connected_cb:
.LFB21:
	.loc 1 629 1 is_stmt 1
	.cfi_startproc
.LVL233:
	.loc 1 630 5
	.loc 1 629 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 631 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 630 20
	lui	a5,%hi(.LANCHOR5)
	sw	a0,%lo(.LANCHOR5)(a5)
	.loc 1 631 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	mqtt_if_set_connected_cb, .-mqtt_if_set_connected_cb
	.section	.text.mqtt_if_set_disconnected_cb,"ax",@progbits
	.align	1
	.globl	mqtt_if_set_disconnected_cb
	.type	mqtt_if_set_disconnected_cb, @function
mqtt_if_set_disconnected_cb:
.LFB22:
	.loc 1 634 1 is_stmt 1
	.cfi_startproc
.LVL234:
	.loc 1 635 5
	.loc 1 634 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 636 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 635 23
	lui	a5,%hi(.LANCHOR7)
	sw	a0,%lo(.LANCHOR7)(a5)
	.loc 1 636 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	mqtt_if_set_disconnected_cb, .-mqtt_if_set_disconnected_cb
	.section	.text.mqtt_if_set_message_cb,"ax",@progbits
	.align	1
	.globl	mqtt_if_set_message_cb
	.type	mqtt_if_set_message_cb, @function
mqtt_if_set_message_cb:
.LFB23:
	.loc 1 639 1 is_stmt 1
	.cfi_startproc
.LVL235:
	.loc 1 640 5
	.loc 1 639 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 641 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 640 18
	lui	a5,%hi(.LANCHOR6)
	sw	a0,%lo(.LANCHOR6)(a5)
	.loc 1 641 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	mqtt_if_set_message_cb, .-mqtt_if_set_message_cb
	.section	.bss.s_mqtt_config,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_mqtt_config, @object
	.size	s_mqtt_config, 328
s_mqtt_config:
	.zero	328
	.section	.sbss.s_connected_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	s_connected_cb, @object
	.size	s_connected_cb, 4
s_connected_cb:
	.zero	4
	.section	.sbss.s_disconnected_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	s_disconnected_cb, @object
	.size	s_disconnected_cb, 4
s_disconnected_cb:
	.zero	4
	.section	.sbss.s_message_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	s_message_cb, @object
	.size	s_message_cb, 4
s_message_cb:
	.zero	4
	.section	.sbss.s_mqtt_connected,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	s_mqtt_connected, @object
	.size	s_mqtt_connected, 1
s_mqtt_connected:
	.zero	1
	.section	.sbss.s_mqtt_connecting,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	s_mqtt_connecting, @object
	.size	s_mqtt_connecting, 1
s_mqtt_connecting:
	.zero	1
	.section	.sbss.s_mqtt_task_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	s_mqtt_task_handle, @object
	.size	s_mqtt_task_handle, 4
s_mqtt_task_handle:
	.zero	4
	.section	.sdata.packet_id.1,"aw"
	.align	1
	.set	.LANCHOR9,. + 0
	.type	packet_id.1, @object
	.size	packet_id.1, 2
packet_id.1:
	.half	1
	.section	.sdata.pub_packet_id.0,"aw"
	.align	1
	.set	.LANCHOR2,. + 0
	.type	pub_packet_id.0, @object
	.size	pub_packet_id.0, 2
pub_packet_id.0:
	.half	1
	.section	.sdata.s_mqtt_socket,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	s_mqtt_socket, @object
	.size	s_mqtt_socket, 4
s_mqtt_socket:
	.word	-1
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/mqtt_if/mqtt_if.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/inet.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netdb.h"
	.file 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 15 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 16 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h"
	.file 17 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h"
	.file 18 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 19 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 20 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1603
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF157
	.byte	0xc
	.4byte	.LASF158
	.4byte	.LASF159
	.4byte	.Ldebug_ranges0+0x120
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x7
	.byte	0x10
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.4byte	0x37
	.byte	0x4
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x8
	.byte	0x10
	.4byte	0x31
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x9
	.byte	0x10
	.4byte	0x50
	.byte	0x3
	.byte	0x4
	.4byte	0x56
	.byte	0x5
	.4byte	0x6b
	.byte	0x6
	.4byte	0x6b
	.byte	0x6
	.4byte	0x6b
	.byte	0x6
	.4byte	0x7d
	.byte	0
	.byte	0x3
	.byte	0x4
	.4byte	0x78
	.byte	0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x8
	.4byte	0x71
	.byte	0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0xa
	.2byte	0x148
	.byte	0x2
	.byte	0xc
	.byte	0x9
	.4byte	0xdf
	.byte	0xb
	.4byte	.LASF4
	.byte	0x2
	.byte	0xd
	.byte	0xa
	.4byte	0xdf
	.byte	0
	.byte	0xb
	.4byte	.LASF5
	.byte	0x2
	.byte	0xe
	.byte	0x9
	.4byte	0x7d
	.byte	0x80
	.byte	0xb
	.4byte	.LASF6
	.byte	0x2
	.byte	0xf
	.byte	0xa
	.4byte	0xf6
	.byte	0x84
	.byte	0xb
	.4byte	.LASF7
	.byte	0x2
	.byte	0x10
	.byte	0xa
	.4byte	0xf6
	.byte	0xc4
	.byte	0xc
	.4byte	.LASF8
	.byte	0x2
	.byte	0x11
	.byte	0xa
	.4byte	0xf6
	.2byte	0x104
	.byte	0xc
	.4byte	.LASF9
	.byte	0x2
	.byte	0x12
	.byte	0x9
	.4byte	0x7d
	.2byte	0x144
	.byte	0
	.byte	0xd
	.4byte	0x71
	.4byte	0xef
	.byte	0xe
	.4byte	0xef
	.byte	0x7f
	.byte	0
	.byte	0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0xd
	.4byte	0x71
	.4byte	0x106
	.byte	0xe
	.4byte	0xef
	.byte	0x3f
	.byte	0
	.byte	0x2
	.4byte	.LASF11
	.byte	0x2
	.byte	0x13
	.byte	0x3
	.4byte	0x84
	.byte	0x8
	.4byte	0x106
	.byte	0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x12a
	.byte	0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x144
	.byte	0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF17
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF18
	.byte	0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x15e
	.byte	0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.byte	0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF21
	.byte	0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF22
	.byte	0x2
	.4byte	.LASF23
	.byte	0x3
	.byte	0xc8
	.byte	0x17
	.4byte	0x165
	.byte	0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0x83
	.byte	0x16
	.4byte	0xef
	.byte	0xf
	.byte	0x4
	.byte	0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0xd2
	.byte	0xe
	.4byte	0x14b
	.byte	0x3
	.byte	0x4
	.4byte	0x71
	.byte	0xd
	.4byte	0x71
	.4byte	0x1af
	.byte	0xe
	.4byte	0xef
	.byte	0x7
	.byte	0
	.byte	0x2
	.4byte	.LASF26
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x11e
	.byte	0x2
	.4byte	.LASF27
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x138
	.byte	0x2
	.4byte	.LASF28
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x152
	.byte	0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0x25
	.byte	0x17
	.4byte	0x18d
	.byte	0x2
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2a
	.byte	0x19
	.4byte	0x173
	.byte	0x10
	.4byte	.LASF34
	.byte	0x10
	.byte	0x6
	.byte	0x36
	.byte	0x8
	.4byte	0x213
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.4byte	0x1df
	.byte	0
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0x1d3
	.byte	0x8
	.byte	0
	.byte	0x2
	.4byte	.LASF33
	.byte	0x7
	.byte	0x22
	.byte	0x17
	.4byte	0x15e
	.byte	0x10
	.4byte	.LASF35
	.byte	0x8
	.byte	0x7
	.byte	0x30
	.byte	0x10
	.4byte	0x23a
	.byte	0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x31
	.byte	0xc
	.4byte	0x23a
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x213
	.4byte	0x24a
	.byte	0xe
	.4byte	0xef
	.byte	0x1
	.byte	0
	.byte	0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x32
	.byte	0x3
	.4byte	0x21f
	.byte	0x2
	.4byte	.LASF37
	.byte	0x8
	.byte	0x37
	.byte	0x14
	.4byte	0x152
	.byte	0x2
	.4byte	.LASF38
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.4byte	0x138
	.byte	0x3
	.byte	0x4
	.4byte	0x1af
	.byte	0xd
	.4byte	0x1af
	.4byte	0x284
	.byte	0xe
	.4byte	0xef
	.byte	0x1
	.byte	0
	.byte	0x2
	.4byte	.LASF39
	.byte	0x9
	.byte	0x46
	.byte	0x25
	.4byte	0x290
	.byte	0x3
	.byte	0x4
	.4byte	0x296
	.byte	0x11
	.4byte	.LASF160
	.byte	0x2
	.4byte	.LASF40
	.byte	0xa
	.byte	0x7d
	.byte	0x11
	.4byte	0x1af
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0xef
	.byte	0x13
	.byte	0x34
	.byte	0xe
	.4byte	0x316
	.byte	0x13
	.4byte	.LASF41
	.byte	0
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0x13
	.4byte	.LASF44
	.byte	0x3
	.byte	0x13
	.4byte	.LASF45
	.byte	0x4
	.byte	0x13
	.4byte	.LASF46
	.byte	0x5
	.byte	0x13
	.4byte	.LASF47
	.byte	0x6
	.byte	0x13
	.4byte	.LASF48
	.byte	0x7
	.byte	0x13
	.4byte	.LASF49
	.byte	0x8
	.byte	0x13
	.4byte	.LASF50
	.byte	0x9
	.byte	0x13
	.4byte	.LASF51
	.byte	0xa
	.byte	0x13
	.4byte	.LASF52
	.byte	0xb
	.byte	0x13
	.4byte	.LASF53
	.byte	0xc
	.byte	0x13
	.4byte	.LASF54
	.byte	0xd
	.byte	0x13
	.4byte	.LASF55
	.byte	0xe
	.byte	0x13
	.4byte	.LASF56
	.byte	0xf
	.byte	0
	.byte	0x14
	.4byte	.LASF161
	.byte	0x7
	.byte	0x4
	.4byte	0xef
	.byte	0x14
	.byte	0x71
	.byte	0x6
	.4byte	0x33b
	.byte	0x13
	.4byte	.LASF57
	.byte	0
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x13
	.4byte	.LASF59
	.byte	0x2
	.byte	0
	.byte	0x10
	.4byte	.LASF60
	.byte	0x4
	.byte	0xb
	.byte	0x3a
	.byte	0x8
	.4byte	0x356
	.byte	0xb
	.4byte	.LASF61
	.byte	0xb
	.byte	0x3b
	.byte	0xd
	.4byte	0x256
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF62
	.byte	0xc
	.byte	0x3d
	.byte	0xe
	.4byte	0x29b
	.byte	0x10
	.4byte	.LASF63
	.byte	0x10
	.byte	0xc
	.byte	0x47
	.byte	0x8
	.4byte	0x3b1
	.byte	0xb
	.4byte	.LASF64
	.byte	0xc
	.byte	0x48
	.byte	0x8
	.4byte	0x29b
	.byte	0
	.byte	0xb
	.4byte	.LASF65
	.byte	0xc
	.byte	0x49
	.byte	0xf
	.4byte	0x356
	.byte	0x1
	.byte	0xb
	.4byte	.LASF66
	.byte	0xc
	.byte	0x4a
	.byte	0xd
	.4byte	0x262
	.byte	0x2
	.byte	0xb
	.4byte	.LASF67
	.byte	0xc
	.byte	0x4b
	.byte	0x12
	.4byte	0x33b
	.byte	0x4
	.byte	0xb
	.4byte	.LASF68
	.byte	0xc
	.byte	0x4d
	.byte	0x8
	.4byte	0x19f
	.byte	0x8
	.byte	0
	.byte	0x10
	.4byte	.LASF69
	.byte	0x10
	.byte	0xc
	.byte	0x5c
	.byte	0x8
	.4byte	0x3e6
	.byte	0xb
	.4byte	.LASF70
	.byte	0xc
	.byte	0x5d
	.byte	0x8
	.4byte	0x29b
	.byte	0
	.byte	0xb
	.4byte	.LASF71
	.byte	0xc
	.byte	0x5e
	.byte	0xf
	.4byte	0x356
	.byte	0x1
	.byte	0xb
	.4byte	.LASF72
	.byte	0xc
	.byte	0x5f
	.byte	0x8
	.4byte	0x3e6
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	0x71
	.4byte	0x3f6
	.byte	0xe
	.4byte	0xef
	.byte	0xd
	.byte	0
	.byte	0x10
	.4byte	.LASF73
	.byte	0x14
	.byte	0xd
	.byte	0x5c
	.byte	0x8
	.4byte	0x445
	.byte	0xb
	.4byte	.LASF74
	.byte	0xd
	.byte	0x5d
	.byte	0xb
	.4byte	0x199
	.byte	0
	.byte	0xb
	.4byte	.LASF75
	.byte	0xd
	.byte	0x5e
	.byte	0xc
	.4byte	0x445
	.byte	0x4
	.byte	0xb
	.4byte	.LASF76
	.byte	0xd
	.byte	0x60
	.byte	0x9
	.4byte	0x7d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF77
	.byte	0xd
	.byte	0x61
	.byte	0x9
	.4byte	0x7d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF78
	.byte	0xd
	.byte	0x62
	.byte	0xc
	.4byte	0x445
	.byte	0x10
	.byte	0
	.byte	0x3
	.byte	0x4
	.4byte	0x199
	.byte	0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0x11
	.byte	0xc
	.4byte	0x45d
	.byte	0x5
	.byte	0x3
	.4byte	s_mqtt_connected
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF79
	.byte	0x15
	.4byte	.LASF81
	.byte	0x1
	.byte	0x12
	.byte	0xc
	.4byte	0x45d
	.byte	0x5
	.byte	0x3
	.4byte	s_mqtt_connecting
	.byte	0x15
	.4byte	.LASF82
	.byte	0x1
	.byte	0x13
	.byte	0x19
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	s_mqtt_config
	.byte	0x15
	.4byte	.LASF83
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.4byte	0x7d
	.byte	0x5
	.byte	0x3
	.4byte	s_mqtt_socket
	.byte	0x15
	.4byte	.LASF84
	.byte	0x1
	.byte	0x17
	.byte	0x1f
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	s_connected_cb
	.byte	0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x18
	.byte	0x22
	.4byte	0x38
	.byte	0x5
	.byte	0x3
	.4byte	s_disconnected_cb
	.byte	0x15
	.4byte	.LASF86
	.byte	0x1
	.byte	0x19
	.byte	0x1d
	.4byte	0x44
	.byte	0x5
	.byte	0x3
	.4byte	s_message_cb
	.byte	0x15
	.4byte	.LASF87
	.byte	0x1
	.byte	0x1c
	.byte	0x15
	.4byte	0x284
	.byte	0x5
	.byte	0x3
	.4byte	s_mqtt_task_handle
	.byte	0x16
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x27e
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x508
	.byte	0x17
	.string	"cb"
	.byte	0x1
	.2byte	0x27e
	.byte	0x32
	.4byte	0x44
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x16
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x279
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x52e
	.byte	0x17
	.string	"cb"
	.byte	0x1
	.2byte	0x279
	.byte	0x3c
	.4byte	0x38
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x16
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x274
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x554
	.byte	0x17
	.string	"cb"
	.byte	0x1
	.2byte	0x274
	.byte	0x36
	.4byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x18
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x267
	.byte	0x5
	.4byte	0x7d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x5da
	.byte	0x19
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x267
	.byte	0x21
	.4byte	0x6b
	.4byte	.LLST59
	.byte	0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x267
	.byte	0x34
	.4byte	0x6b
	.4byte	.LLST60
	.byte	0x19
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x267
	.byte	0x41
	.4byte	0x7d
	.4byte	.LLST61
	.byte	0x19
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x267
	.byte	0x52
	.4byte	0x45d
	.4byte	.LLST62
	.byte	0x1a
	.4byte	.LVL225
	.4byte	0x1502
	.4byte	0x5c8
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x1c
	.4byte	.LVL228
	.4byte	0xfc7
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x260
	.byte	0x5
	.4byte	0x7d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x607
	.byte	0x19
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x260
	.byte	0x25
	.4byte	0x6b
	.4byte	.LLST58
	.byte	0
	.byte	0x18
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x257
	.byte	0x5
	.4byte	0x7d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x767
	.byte	0x19
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x257
	.byte	0x23
	.4byte	0x6b
	.4byte	.LLST49
	.byte	0x1d
	.4byte	0x11c7
	.4byte	.LBB45
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x1
	.2byte	0x25d
	.byte	0xc
	.byte	0x1e
	.4byte	0x11d8
	.4byte	.LLST50
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x20
	.4byte	0x11e4
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7d
	.byte	0x21
	.4byte	0x11f0
	.4byte	.LLST51
	.byte	0x21
	.4byte	0x11fc
	.4byte	.LLST52
	.byte	0x21
	.4byte	0x121a
	.4byte	.LLST53
	.byte	0x21
	.4byte	0x1226
	.4byte	.LLST54
	.byte	0x21
	.4byte	0x1232
	.4byte	.LLST55
	.byte	0x21
	.4byte	0x123e
	.4byte	.LLST56
	.byte	0x21
	.4byte	0x124a
	.4byte	.LLST57
	.byte	0x1a
	.4byte	.LVL201
	.4byte	0x1502
	.4byte	0x6ae
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL203
	.4byte	0x150e
	.4byte	0x6cf
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe6,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL206
	.4byte	0x1426
	.4byte	0x6ea
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe1,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL208
	.4byte	0x151a
	.4byte	0x712
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x120
	.byte	0x1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xe2,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL210
	.4byte	0x1526
	.4byte	0x734
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x78
	.byte	0xdc,0x7d
	.byte	0x6
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL212
	.4byte	0x1533
	.4byte	0x74b
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0x22
	.4byte	.LVL217
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x252
	.byte	0x5
	.4byte	0x45d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.byte	0x24
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x236
	.byte	0x5
	.4byte	0x7d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x7fb
	.byte	0x25
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x23f
	.byte	0xd
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1a
	.4byte	.LVL192
	.4byte	0x1533
	.4byte	0x7c0
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0
	.byte	0x1a
	.4byte	.LVL193
	.4byte	0x1526
	.4byte	0x7de
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL194
	.4byte	0x153f
	.byte	0x22
	.4byte	.LVL195
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1f3
	.byte	0x5
	.4byte	0x7d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x9b7
	.byte	0x27
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x202
	.byte	0x15
	.4byte	0x9b7
	.4byte	.LLST47
	.byte	0x25
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x210
	.byte	0x18
	.4byte	0x362
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x27
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x216
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST48
	.byte	0x26
	.4byte	.LVL169
	.4byte	0x1533
	.byte	0x1a
	.4byte	.LVL170
	.4byte	0x1533
	.4byte	0x871
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1a
	.4byte	.LVL171
	.4byte	0x154c
	.4byte	0x888
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1a
	.4byte	.LVL176
	.4byte	0x1558
	.4byte	0x8a5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL177
	.4byte	0x1565
	.4byte	0x8c3
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x26
	.4byte	.LVL178
	.4byte	0x1571
	.byte	0x1a
	.4byte	.LVL179
	.4byte	0x150e
	.4byte	0x8e0
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x54
	.byte	0
	.byte	0x1a
	.4byte	.LVL180
	.4byte	0x157d
	.4byte	0x8f9
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x50
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x26
	.4byte	.LVL181
	.4byte	0x158a
	.byte	0x1a
	.4byte	.LVL182
	.4byte	0x1533
	.4byte	0x919
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.byte	0x1a
	.4byte	.LVL183
	.4byte	0x1533
	.4byte	0x939
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x26
	.4byte	.LVL184
	.4byte	0x153f
	.byte	0x1a
	.4byte	.LVL187
	.4byte	0x1533
	.4byte	0x959
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.byte	0x26
	.4byte	.LVL188
	.4byte	0x1267
	.byte	0x26
	.4byte	.LVL189
	.4byte	0x153f
	.byte	0x1a
	.4byte	.LVL190
	.4byte	0x1596
	.4byte	0x9a5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_recv_task
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
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
	.byte	0x35
	.byte	0x1b
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR8
	.byte	0
	.byte	0x22
	.4byte	.LVL191
	.4byte	0x15a3
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x4
	.4byte	0x3f6
	.byte	0x18
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1e0
	.byte	0x5
	.4byte	0x7d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xa5a
	.byte	0x19
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1e0
	.byte	0x30
	.4byte	0xa5a
	.4byte	.LLST46
	.byte	0x1a
	.4byte	.LVL163
	.4byte	0x150e
	.4byte	0xa0b
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x148
	.byte	0
	.byte	0x26
	.4byte	.LVL164
	.4byte	0x15b0
	.byte	0x1a
	.4byte	.LVL165
	.4byte	0x15bd
	.4byte	0xa37
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x22
	.4byte	.LVL166
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x4
	.4byte	0x112
	.byte	0x18
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1d6
	.byte	0x5
	.4byte	0x7d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xacd
	.byte	0x1a
	.4byte	.LVL158
	.4byte	0x1533
	.4byte	0xa92
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x1a
	.4byte	.LVL159
	.4byte	0x1565
	.4byte	0xab2
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
	.byte	0x3
	.byte	0xa
	.2byte	0x148
	.byte	0
	.byte	0x22
	.4byte	.LVL160
	.4byte	0x15ca
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0x84,0x1
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x186
	.byte	0xd
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xeaa
	.byte	0x19
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x186
	.byte	0x22
	.4byte	0x18b
	.4byte	.LLST25
	.byte	0x25
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x189
	.byte	0xd
	.4byte	0xeaa
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x77
	.byte	0x27
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x18a
	.byte	0xe
	.4byte	0x1c7
	.4byte	.LLST26
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe83
	.byte	0x25
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x198
	.byte	0x10
	.4byte	0x24a
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x74
	.byte	0x25
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x199
	.byte	0x18
	.4byte	0x1eb
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x74
	.byte	0x2a
	.string	"ret"
	.byte	0x1
	.2byte	0x1a1
	.byte	0xd
	.4byte	0x7d
	.4byte	.LLST27
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0xbd6
	.byte	0x2a
	.string	"now"
	.byte	0x1
	.2byte	0x18f
	.byte	0x16
	.4byte	0x1c7
	.4byte	.LLST28
	.byte	0x27
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x190
	.byte	0x16
	.4byte	0x1c7
	.4byte	.LLST29
	.byte	0x2b
	.4byte	0xf9a
	.4byte	.LBB17
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x192
	.byte	0x11
	.4byte	0xbc3
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x20
	.4byte	0xfac
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x75
	.byte	0x2c
	.4byte	0xfb9
	.byte	0x22
	.4byte	.LVL86
	.4byte	0x1526
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x75
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL79
	.4byte	0x15b0
	.byte	0x26
	.4byte	.LVL80
	.4byte	0x15d6
	.byte	0
	.byte	0x29
	.4byte	.Ldebug_ranges0+0xf0
	.4byte	0xc00
	.byte	0x2a
	.string	"_p"
	.byte	0x1
	.2byte	0x19a
	.byte	0x15
	.4byte	0xebb
	.4byte	.LLST44
	.byte	0x2a
	.string	"_n"
	.byte	0x1
	.2byte	0x19a
	.byte	0x22
	.4byte	0x17f
	.4byte	.LLST45
	.byte	0
	.byte	0x29
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0xe23
	.byte	0x27
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1a3
	.byte	0x11
	.4byte	0x7d
	.4byte	.LLST30
	.byte	0x29
	.4byte	.Ldebug_ranges0+0xd8
	.4byte	0xc5a
	.byte	0x2a
	.string	"err"
	.byte	0x1
	.2byte	0x1b0
	.byte	0x15
	.4byte	0x7d
	.4byte	.LLST43
	.byte	0x26
	.4byte	.LVL145
	.4byte	0x1533
	.byte	0x26
	.4byte	.LVL151
	.4byte	0x158a
	.byte	0x22
	.4byte	.LVL153
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	0xec1
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x1a5
	.byte	0x11
	.4byte	0xe05
	.byte	0x1e
	.4byte	0xedc
	.4byte	.LLST31
	.byte	0x1e
	.4byte	0xecf
	.4byte	.LLST32
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x21
	.4byte	0xee9
	.4byte	.LLST33
	.byte	0x2d
	.4byte	0xef6
	.4byte	.Ldebug_ranges0+0xc0
	.4byte	0xd9e
	.byte	0x21
	.4byte	0xef7
	.4byte	.LLST34
	.byte	0x21
	.4byte	0xf04
	.4byte	.LLST35
	.byte	0x21
	.4byte	0xf11
	.4byte	.LLST36
	.byte	0x21
	.4byte	0xf1e
	.4byte	.LLST37
	.byte	0x21
	.4byte	0xf2b
	.4byte	.LLST38
	.byte	0x20
	.4byte	0xf38
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x74
	.byte	0x21
	.4byte	0xf45
	.4byte	.LLST39
	.byte	0x21
	.4byte	0xf52
	.4byte	.LLST40
	.byte	0x21
	.4byte	0xf5f
	.4byte	.LLST41
	.byte	0x2e
	.4byte	0xf6c
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0xd57
	.byte	0x20
	.4byte	0xf6d
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x75
	.byte	0x21
	.4byte	0xf7a
	.4byte	.LLST42
	.byte	0x1a
	.4byte	.LVL136
	.4byte	0x150e
	.4byte	0xd2d
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x75
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x78
	.byte	0x9c,0x74
	.byte	0x6
	.byte	0
	.byte	0x22
	.4byte	.LVL137
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x74
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x78
	.byte	0x9c,0x74
	.byte	0x6
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x75
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL120
	.4byte	0x150e
	.4byte	0xd72
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x74
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL139
	.4byte	0xd83
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x74
	.byte	0
	.byte	0x22
	.4byte	.LVL141
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x74
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL95
	.4byte	0x1533
	.byte	0x1a
	.4byte	.LVL99
	.4byte	0x1533
	.4byte	0xdcc
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0x9c,0x74
	.byte	0x6
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL100
	.4byte	0x1533
	.4byte	0xde3
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1a
	.4byte	.LVL104
	.4byte	0x1533
	.4byte	0xdfa
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x26
	.4byte	.LVL123
	.4byte	0x1533
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL91
	.4byte	0x15df
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xc0,0x77
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
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL89
	.4byte	0x15ec
	.4byte	0xe49
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xa8,0x74
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1b
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x78
	.byte	0xb0,0x74
	.byte	0
	.byte	0x1a
	.4byte	.LVL102
	.4byte	0x15a3
	.4byte	0xe5d
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x26
	.4byte	.LVL155
	.4byte	0x158a
	.byte	0x26
	.4byte	.LVL156
	.4byte	0x158a
	.byte	0x22
	.4byte	.LVL157
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL147
	.4byte	0x1533
	.4byte	0xe9a
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x22
	.4byte	.LVL148
	.4byte	0x15f9
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x1af
	.4byte	0xebb
	.byte	0x30
	.4byte	0xef
	.2byte	0x3ff
	.byte	0
	.byte	0x3
	.byte	0x4
	.4byte	0x24a
	.byte	0x31
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x111
	.byte	0xd
	.byte	0x1
	.4byte	0xf8a
	.byte	0x32
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x111
	.byte	0x29
	.4byte	0x26e
	.byte	0x33
	.string	"len"
	.byte	0x1
	.2byte	0x111
	.byte	0x33
	.4byte	0x7d
	.byte	0x34
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x118
	.byte	0xd
	.4byte	0x1af
	.byte	0x35
	.byte	0x36
	.string	"pos"
	.byte	0x1
	.2byte	0x12c
	.byte	0x11
	.4byte	0x7d
	.byte	0x34
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x12d
	.byte	0x16
	.4byte	0x1c7
	.byte	0x34
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x12e
	.byte	0x11
	.4byte	0x7d
	.byte	0x34
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x12f
	.byte	0x15
	.4byte	0x1af
	.byte	0x34
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x138
	.byte	0x16
	.4byte	0x1bb
	.byte	0x34
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x13c
	.byte	0x12
	.4byte	0xdf
	.byte	0x34
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x150
	.byte	0x11
	.4byte	0x7d
	.byte	0x34
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x151
	.byte	0x11
	.4byte	0x7d
	.byte	0x34
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x159
	.byte	0x11
	.4byte	0x7d
	.byte	0x35
	.byte	0x34
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x15d
	.byte	0x16
	.4byte	0xf8a
	.byte	0x34
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x15e
	.byte	0x15
	.4byte	0x7d
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x71
	.4byte	0xf9a
	.byte	0xe
	.4byte	0xef
	.byte	0xff
	.byte	0
	.byte	0x37
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x103
	.byte	0xc
	.4byte	0x7d
	.byte	0x1
	.4byte	0xfc7
	.byte	0x34
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x105
	.byte	0xd
	.4byte	0x274
	.byte	0x34
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x109
	.byte	0x9
	.4byte	0x7d
	.byte	0
	.byte	0x38
	.4byte	.LASF131
	.byte	0x1
	.byte	0xca
	.byte	0xc
	.4byte	0x7d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x11b6
	.byte	0x39
	.4byte	.LASF91
	.byte	0x1
	.byte	0xca
	.byte	0x2a
	.4byte	0x6b
	.4byte	.LLST14
	.byte	0x39
	.4byte	.LASF92
	.byte	0x1
	.byte	0xca
	.byte	0x3d
	.4byte	0x6b
	.4byte	.LLST15
	.byte	0x39
	.4byte	.LASF93
	.byte	0x1
	.byte	0xca
	.byte	0x4a
	.4byte	0x7d
	.4byte	.LLST16
	.byte	0x39
	.4byte	.LASF94
	.byte	0x1
	.byte	0xca
	.byte	0x5b
	.4byte	0x45d
	.4byte	.LLST17
	.byte	0x15
	.4byte	.LASF99
	.byte	0x1
	.byte	0xcc
	.byte	0xd
	.4byte	0x11b6
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7b
	.byte	0x3a
	.string	"pos"
	.byte	0x1
	.byte	0xcd
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST18
	.byte	0x3b
	.4byte	.LASF123
	.byte	0x1
	.byte	0xd0
	.byte	0xd
	.4byte	0x1af
	.4byte	.LLST19
	.byte	0x3c
	.4byte	.LASF124
	.byte	0x1
	.byte	0xd8
	.byte	0x9
	.4byte	0x7d
	.byte	0x1
	.byte	0x3b
	.4byte	.LASF118
	.byte	0x1
	.byte	0xdc
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST20
	.byte	0x15
	.4byte	.LASF125
	.byte	0x1
	.byte	0xe3
	.byte	0x15
	.4byte	0x1bb
	.byte	0x5
	.byte	0x3
	.4byte	pub_packet_id.0
	.byte	0x3b
	.4byte	.LASF115
	.byte	0x1
	.byte	0xef
	.byte	0xe
	.4byte	0x1c7
	.4byte	.LLST21
	.byte	0x3b
	.4byte	.LASF120
	.byte	0x1
	.byte	0xf0
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST22
	.byte	0x3b
	.4byte	.LASF126
	.byte	0x1
	.byte	0xf6
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST23
	.byte	0x3b
	.4byte	.LASF122
	.byte	0x1
	.byte	0xf7
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST24
	.byte	0x1a
	.4byte	.LVL53
	.4byte	0x1502
	.4byte	0x10d4
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL56
	.4byte	0x150e
	.4byte	0x10f5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe7,0x7b
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL59
	.4byte	0x150e
	.4byte	0x111c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x220
	.byte	0x1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL62
	.4byte	0x1426
	.4byte	0x1137
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xe1,0x7b
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL65
	.4byte	0x151a
	.4byte	0x115f
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x220
	.byte	0x1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xe5,0x7b
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL67
	.4byte	0x1526
	.4byte	0x117f
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xe0,0x7b
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL69
	.4byte	0x1533
	.4byte	0x1196
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x22
	.4byte	.LVL76
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x1af
	.4byte	0x11c7
	.byte	0x30
	.4byte	0xef
	.2byte	0x1ff
	.byte	0
	.byte	0x3d
	.4byte	.LASF128
	.byte	0x1
	.byte	0x93
	.byte	0xc
	.4byte	0x7d
	.byte	0x1
	.4byte	0x1257
	.byte	0x3e
	.4byte	.LASF91
	.byte	0x1
	.byte	0x93
	.byte	0x2c
	.4byte	0x6b
	.byte	0x3f
	.4byte	.LASF99
	.byte	0x1
	.byte	0x95
	.byte	0xd
	.4byte	0x1257
	.byte	0x40
	.string	"pos"
	.byte	0x1
	.byte	0x96
	.byte	0x9
	.4byte	0x7d
	.byte	0x3f
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa0
	.byte	0x9
	.4byte	0x7d
	.byte	0x15
	.4byte	.LASF130
	.byte	0x1
	.byte	0xa3
	.byte	0x15
	.4byte	0x1bb
	.byte	0x5
	.byte	0x3
	.4byte	packet_id.1
	.byte	0x3f
	.4byte	.LASF118
	.byte	0x1
	.byte	0xa9
	.byte	0x9
	.4byte	0x7d
	.byte	0x3f
	.4byte	.LASF115
	.byte	0x1
	.byte	0xb3
	.byte	0xe
	.4byte	0x1c7
	.byte	0x3f
	.4byte	.LASF120
	.byte	0x1
	.byte	0xb6
	.byte	0x9
	.4byte	0x7d
	.byte	0x3f
	.4byte	.LASF126
	.byte	0x1
	.byte	0xbd
	.byte	0x9
	.4byte	0x7d
	.byte	0x3f
	.4byte	.LASF122
	.byte	0x1
	.byte	0xbe
	.byte	0x9
	.4byte	0x7d
	.byte	0
	.byte	0xd
	.4byte	0x1af
	.4byte	0x1267
	.byte	0xe
	.4byte	0xef
	.byte	0xff
	.byte	0
	.byte	0x38
	.4byte	.LASF132
	.byte	0x1
	.byte	0x4e
	.byte	0xc
	.4byte	0x7d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1426
	.byte	0x15
	.4byte	.LASF99
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x1257
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x3a
	.string	"pos"
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST7
	.byte	0x3c
	.4byte	.LASF124
	.byte	0x1
	.byte	0x57
	.byte	0x9
	.4byte	0x7d
	.byte	0x1
	.byte	0x3b
	.4byte	.LASF133
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.4byte	0x1af
	.4byte	.LLST8
	.byte	0x3b
	.4byte	.LASF9
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.4byte	0x1bb
	.4byte	.LLST9
	.byte	0x3b
	.4byte	.LASF115
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.4byte	0x1c7
	.4byte	.LLST10
	.byte	0x3b
	.4byte	.LASF120
	.byte	0x1
	.byte	0x7e
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST11
	.byte	0x3b
	.4byte	.LASF126
	.byte	0x1
	.byte	0x86
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST12
	.byte	0x3b
	.4byte	.LASF122
	.byte	0x1
	.byte	0x87
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST13
	.byte	0x1a
	.4byte	.LVL17
	.4byte	0x1485
	.4byte	0x132c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf5,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1a
	.4byte	.LVL29
	.4byte	0x1485
	.4byte	0x134e
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x110
	.byte	0x1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x82
	.byte	0x84,0x1
	.byte	0
	.byte	0x1a
	.4byte	.LVL31
	.4byte	0x1485
	.4byte	0x1370
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x110
	.byte	0x1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x82
	.byte	0xc4,0x1
	.byte	0
	.byte	0x1a
	.4byte	.LVL33
	.4byte	0x1485
	.4byte	0x1392
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x110
	.byte	0x1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x82
	.byte	0x84,0x2
	.byte	0
	.byte	0x1a
	.4byte	.LVL36
	.4byte	0x1426
	.4byte	0x13ad
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf1,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL38
	.4byte	0x151a
	.4byte	0x13d5
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x110
	.byte	0x1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xf5,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL40
	.4byte	0x1526
	.4byte	0x13f5
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xf0,0x7d
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL42
	.4byte	0x1533
	.4byte	0x140c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x22
	.4byte	.LVL47
	.4byte	0x1533
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	.LASF134
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.4byte	0x7d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1485
	.byte	0x41
	.string	"buf"
	.byte	0x1
	.byte	0x3f
	.byte	0x32
	.4byte	0x26e
	.4byte	.LLST0
	.byte	0x39
	.4byte	.LASF135
	.byte	0x1
	.byte	0x3f
	.byte	0x40
	.4byte	0x1c7
	.4byte	.LLST1
	.byte	0x3a
	.string	"i"
	.byte	0x1
	.byte	0x41
	.byte	0x9
	.4byte	0x7d
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0
	.byte	0x3b
	.4byte	.LASF117
	.byte	0x1
	.byte	0x43
	.byte	0x11
	.4byte	0x1af
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0x38
	.4byte	.LASF136
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x7d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1502
	.byte	0x41
	.string	"buf"
	.byte	0x1
	.byte	0x35
	.byte	0x28
	.4byte	0x26e
	.4byte	.LLST4
	.byte	0x41
	.string	"str"
	.byte	0x1
	.byte	0x35
	.byte	0x39
	.4byte	0x6b
	.4byte	.LLST5
	.byte	0x3a
	.string	"len"
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x1bb
	.4byte	.LLST6
	.byte	0x1a
	.4byte	.LVL10
	.4byte	0x1502
	.4byte	0x14e4
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x22
	.4byte	.LVL12
	.4byte	0x150e
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0x2
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x6c
	.byte	0x6
	.byte	0x1b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x42
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xe
	.byte	0x29
	.byte	0x8
	.byte	0x42
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.byte	0x42
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xe
	.byte	0x20
	.byte	0x8
	.byte	0x43
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xc
	.2byte	0x250
	.byte	0x9
	.byte	0x42
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xf
	.byte	0xc8
	.byte	0x5
	.byte	0x43
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xc
	.2byte	0x247
	.byte	0x6
	.byte	0x42
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xd
	.byte	0x7a
	.byte	0x11
	.byte	0x43
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xc
	.2byte	0x254
	.byte	0x5
	.byte	0x42
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xe
	.byte	0x21
	.byte	0x8
	.byte	0x42
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x10
	.byte	0x60
	.byte	0x7
	.byte	0x43
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xc
	.2byte	0x248
	.byte	0x5
	.byte	0x42
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x11
	.byte	0xf
	.byte	0xd
	.byte	0x43
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x14a
	.byte	0xd
	.byte	0x43
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x12
	.2byte	0x207
	.byte	0xa
	.byte	0x43
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x12
	.2byte	0x1ef
	.byte	0xf
	.byte	0x43
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xf
	.2byte	0x10a
	.byte	0x5
	.byte	0x42
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xe
	.byte	0x26
	.byte	0x7
	.byte	0x44
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x43
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xc
	.2byte	0x24a
	.byte	0x9
	.byte	0x43
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xc
	.2byte	0x258
	.byte	0x5
	.byte	0x43
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x2c2
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
	.byte	0x3
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x13
	.byte	0x1
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
	.byte	0xb
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
	.byte	0x5
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
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
	.byte	0x43
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
	.byte	0x44
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST59:
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL224
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL227
	.4byte	.LVL228-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL228-1
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL232
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL223
	.4byte	.LVL225-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL225-1
	.4byte	.LVL226
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL226
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL223
	.4byte	.LVL225-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL225-1
	.4byte	.LVL226
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL228-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL228
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL223
	.4byte	.LVL225-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL225-1
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL222
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL197
	.4byte	.LVL201-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL201-1
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL198
	.4byte	.LVL201-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL201-1
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL198
	.4byte	.LVL213
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL219
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x3
	.byte	0x79
	.byte	0x7
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL213
	.2byte	0x3
	.byte	0x79
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x3
	.byte	0x79
	.byte	0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL204
	.4byte	.LVL213
	.2byte	0x3
	.byte	0x79
	.byte	0x7b
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x3
	.byte	0x79
	.byte	0x7b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL205
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL207
	.4byte	.LVL213
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL210-1
	.4byte	.LVL213
	.2byte	0x3
	.byte	0x78
	.byte	0xdc,0x7d
	.4byte	.LVL215
	.4byte	.LVL218
	.2byte	0x3
	.byte	0x78
	.byte	0xdc,0x7d
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL175
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL180
	.4byte	.LVL181-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL162
	.4byte	.LVL163-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL163-1
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL168
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL86
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL150
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x4
	.byte	0x78
	.byte	0xa8,0x74
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89-1
	.4byte	.LVL146
	.2byte	0x4
	.byte	0x78
	.byte	0xa8,0x74
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LFE12
	.2byte	0x4
	.byte	0x78
	.byte	0xa8,0x74
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL103
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL150
	.4byte	.LVL151-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151-1
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL152
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL103
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL93
	.4byte	.LVL101
	.2byte	0x4
	.byte	0x78
	.byte	0xc0,0x77
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x4
	.byte	0x78
	.byte	0xc0,0x77
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL109
	.4byte	.LVL118
	.2byte	0x4
	.byte	0x78
	.byte	0xc0,0x77
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL120-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL120-1
	.4byte	.LVL135
	.2byte	0x4
	.byte	0x78
	.byte	0xc0,0x77
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL136-1
	.4byte	.LVL143
	.2byte	0x4
	.byte	0x78
	.byte	0xc0,0x77
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99-1
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x74
	.4byte	.LVL103
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x74
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x74
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL107
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x3
	.byte	0x7b
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x74
	.4byte	.LVL124
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL140
	.4byte	.LVL141-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL107
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL124
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL113
	.4byte	.LVL120-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x440
	.byte	0x1c
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x440
	.byte	0x1c
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x9
	.byte	0x78
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x443
	.byte	0x1c
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x33
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL116
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL125
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL140
	.4byte	.LVL141-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL134
	.4byte	.LVL136-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL136-1
	.4byte	.LVL138
	.2byte	0x3
	.byte	0x78
	.byte	0x9c,0x74
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-1
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53-1
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL63
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL48
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL53-1
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x79
	.byte	0x7
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x79
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x79
	.byte	0x5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x7d
	.byte	0
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x79
	.byte	0x77
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7a
	.byte	0x5
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7a
	.byte	0x6
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7a
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x79
	.byte	0x5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x7d
	.byte	0x80,0x7e
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0xfa
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE7
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
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
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0x80
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL14
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
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
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
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
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF84:
	.string	"s_connected_cb"
.LASF109:
	.string	"last_ping"
.LASF42:
	.string	"MEMP_UDP_PCB"
.LASF52:
	.string	"MEMP_SYS_TIMEOUT"
.LASF126:
	.string	"total_len"
.LASF25:
	.string	"__suseconds_t"
.LASF13:
	.string	"__uint8_t"
.LASF8:
	.string	"password"
.LASF123:
	.string	"fixed_header"
.LASF94:
	.string	"retain"
.LASF141:
	.string	"printf"
.LASF22:
	.string	"long long unsigned int"
.LASF37:
	.string	"in_addr_t"
.LASF0:
	.string	"mqtt_if_connected_cb_t"
.LASF9:
	.string	"keepalive"
.LASF140:
	.string	"lwip_send"
.LASF53:
	.string	"MEMP_NETDB"
.LASF23:
	.string	"__int_least64_t"
.LASF21:
	.string	"long long int"
.LASF12:
	.string	"signed char"
.LASF147:
	.string	"lwip_connect"
.LASF118:
	.string	"topic_len"
.LASF114:
	.string	"packet_type"
.LASF20:
	.string	"long unsigned int"
.LASF117:
	.string	"digit"
.LASF148:
	.string	"__errno"
.LASF18:
	.string	"long int"
.LASF160:
	.string	"tskTaskControlBlock"
.LASF41:
	.string	"MEMP_RAW_PCB"
.LASF91:
	.string	"topic"
.LASF10:
	.string	"unsigned int"
.LASF39:
	.string	"TaskHandle_t"
.LASF138:
	.string	"memcpy"
.LASF134:
	.string	"mqtt_encode_remaining_length"
.LASF73:
	.string	"hostent"
.LASF59:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF106:
	.string	"mqtt_if_init"
.LASF27:
	.string	"uint16_t"
.LASF129:
	.string	"vh_pos"
.LASF29:
	.string	"suseconds_t"
.LASF132:
	.string	"mqtt_send_connect"
.LASF56:
	.string	"MEMP_MAX"
.LASF16:
	.string	"__uint16_t"
.LASF19:
	.string	"__uint32_t"
.LASF6:
	.string	"client_id"
.LASF68:
	.string	"sin_zero"
.LASF155:
	.string	"lwip_select"
.LASF24:
	.string	"__size_t"
.LASF5:
	.string	"port"
.LASF88:
	.string	"mqtt_if_set_message_cb"
.LASF90:
	.string	"mqtt_if_set_connected_cb"
.LASF101:
	.string	"host"
.LASF61:
	.string	"s_addr"
.LASF51:
	.string	"MEMP_IGMP_GROUP"
.LASF137:
	.string	"strlen"
.LASF136:
	.string	"mqtt_encode_string"
.LASF83:
	.string	"s_mqtt_socket"
.LASF74:
	.string	"h_name"
.LASF122:
	.string	"sent"
.LASF7:
	.string	"username"
.LASF150:
	.string	"aos_msleep"
.LASF43:
	.string	"MEMP_TCP_PCB"
.LASF113:
	.string	"data"
.LASF17:
	.string	"short unsigned int"
.LASF67:
	.string	"sin_addr"
.LASF127:
	.string	"mqtt_send_ping"
.LASF128:
	.string	"mqtt_send_subscribe"
.LASF97:
	.string	"mqtt_if_subscribe"
.LASF164:
	.string	"mqtt_parse_message"
.LASF76:
	.string	"h_addrtype"
.LASF125:
	.string	"pub_packet_id"
.LASF153:
	.string	"strcpy"
.LASF96:
	.string	"mqtt_if_unsubscribe"
.LASF35:
	.string	"fd_set"
.LASF159:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/mqtt_if"
.LASF34:
	.string	"timeval"
.LASF146:
	.string	"lwip_htons"
.LASF45:
	.string	"MEMP_TCP_SEG"
.LASF86:
	.string	"s_message_cb"
.LASF70:
	.string	"sa_len"
.LASF65:
	.string	"sin_family"
.LASF103:
	.string	"connect_result"
.LASF121:
	.string	"copy_len"
.LASF2:
	.string	"mqtt_if_message_cb_t"
.LASF149:
	.string	"xTaskCreate"
.LASF92:
	.string	"payload"
.LASF98:
	.string	"mqtt_if_disconnect"
.LASF75:
	.string	"h_aliases"
.LASF130:
	.string	"packet_id"
.LASF116:
	.string	"multiplier"
.LASF89:
	.string	"mqtt_if_set_disconnected_cb"
.LASF64:
	.string	"sin_len"
.LASF131:
	.string	"mqtt_send_publish"
.LASF99:
	.string	"packet"
.LASF30:
	.string	"time_t"
.LASF66:
	.string	"sin_port"
.LASF71:
	.string	"sa_family"
.LASF31:
	.string	"tv_sec"
.LASF77:
	.string	"h_length"
.LASF78:
	.string	"h_addr_list"
.LASF80:
	.string	"s_mqtt_connected"
.LASF4:
	.string	"broker"
.LASF120:
	.string	"rem_len_bytes"
.LASF79:
	.string	"_Bool"
.LASF104:
	.string	"mqtt_if_set_config"
.LASF14:
	.string	"unsigned char"
.LASF58:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF33:
	.string	"__fd_mask"
.LASF15:
	.string	"short int"
.LASF82:
	.string	"s_mqtt_config"
.LASF57:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF124:
	.string	"rem_len_pos"
.LASF32:
	.string	"tv_usec"
.LASF28:
	.string	"uint32_t"
.LASF1:
	.string	"mqtt_if_disconnected_cb_t"
.LASF112:
	.string	"recv_len"
.LASF49:
	.string	"MEMP_TCPIP_MSG_API"
.LASF143:
	.string	"lwip_gethostbyname"
.LASF87:
	.string	"s_mqtt_task_handle"
.LASF3:
	.string	"char"
.LASF105:
	.string	"config"
.LASF165:
	.string	"__divdi3"
.LASF47:
	.string	"MEMP_NETBUF"
.LASF107:
	.string	"params"
.LASF44:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF156:
	.string	"vTaskDelete"
.LASF46:
	.string	"MEMP_ALTCP_PCB"
.LASF55:
	.string	"MEMP_PBUF_POOL"
.LASF108:
	.string	"buffer"
.LASF154:
	.string	"lwip_recv"
.LASF102:
	.string	"server_addr"
.LASF142:
	.string	"lwip_close"
.LASF93:
	.string	"payload_len"
.LASF135:
	.string	"length"
.LASF110:
	.string	"read_fds"
.LASF11:
	.string	"mqtt_if_config_t"
.LASF157:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF152:
	.string	"snprintf"
.LASF62:
	.string	"sa_family_t"
.LASF100:
	.string	"mqtt_if_connect"
.LASF145:
	.string	"memset"
.LASF144:
	.string	"lwip_socket"
.LASF161:
	.string	"lwip_internal_netif_client_data_index"
.LASF48:
	.string	"MEMP_NETCONN"
.LASF69:
	.string	"sockaddr"
.LASF139:
	.string	"memmove"
.LASF63:
	.string	"sockaddr_in"
.LASF158:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/mqtt_if/mqtt_if.c"
.LASF26:
	.string	"uint8_t"
.LASF115:
	.string	"remaining_length"
.LASF133:
	.string	"flags"
.LASF151:
	.string	"aos_now_ms"
.LASF95:
	.string	"mqtt_if_publish"
.LASF162:
	.string	"mqtt_if_is_connected"
.LASF72:
	.string	"sa_data"
.LASF81:
	.string	"s_mqtt_connecting"
.LASF111:
	.string	"timeout"
.LASF163:
	.string	"mqtt_recv_task"
.LASF85:
	.string	"s_disconnected_cb"
.LASF119:
	.string	"header_len"
.LASF54:
	.string	"MEMP_PBUF"
.LASF38:
	.string	"in_port_t"
.LASF40:
	.string	"u8_t"
.LASF50:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF60:
	.string	"in_addr"
.LASF36:
	.string	"__fds_bits"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
