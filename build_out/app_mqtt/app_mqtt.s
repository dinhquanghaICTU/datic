	.file	"app_mqtt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mqtt_disconnected_handler,"ax",@progbits
	.align	1
	.type	mqtt_disconnected_handler, @function
mqtt_disconnected_handler:
.LFB6:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_mqtt/app_mqtt.c"
	.loc 1 67 1
	.cfi_startproc
	.loc 1 68 1
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 68 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	mqtt_disconnected_handler, .-mqtt_disconnected_handler
	.section	.rodata.mqtt_message_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"/command"
	.section	.text.mqtt_message_handler,"ax",@progbits
	.align	1
	.type	mqtt_message_handler, @function
mqtt_message_handler:
.LFB4:
	.loc 1 24 1 is_stmt 1
	.cfi_startproc
.LVL0:
	.loc 1 25 5
	.loc 1 24 1 is_stmt 0
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
	mv	s1,a1
	.loc 1 25 9
	lui	a1,%hi(.LC0)
.LVL1:
	.loc 1 24 1
	.loc 1 25 9
	addi	a1,a1,%lo(.LC0)
	.loc 1 24 1
	mv	s2,a2
	.loc 1 25 9
	call	strstr
.LVL2:
	.loc 1 25 8
	beq	a0,zero,.L3
.LVL3:
.LBB10:
.LBB11:
.LBB12:
	.loc 1 26 9 is_stmt 1
	.loc 1 27 9
	.loc 1 27 13 is_stmt 0
	addi	a2,s0,-28
	mv	a1,s2
	mv	a0,s1
	call	mqtt_cmd_parse
.LVL4:
	.loc 1 27 12
	bne	a0,zero,.L3
	.loc 1 28 13 is_stmt 1
	.loc 1 28 24 is_stmt 0
	lw	a5,-28(s0)
	.loc 1 28 13
	li	a4,2
	beq	a5,a4,.L6
	li	a4,7
	beq	a5,a4,.L7
	li	a4,1
	bne	a5,a4,.L3
	.loc 1 30 21 is_stmt 1
	li	a1,0
	li	a0,8
.L13:
	.loc 1 36 25 is_stmt 0
	call	app_event_post
.LVL5:
.L3:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 57 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
.LVL6:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL7:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L6:
	.cfi_restore_state
.LBB16:
.LBB15:
.LBB14:
	.loc 1 33 21 is_stmt 1
	.loc 1 33 24 is_stmt 0
	lw	a4,-24(s0)
	li	a5,1
	.loc 1 34 25
	li	a1,0
	li	a0,9
	.loc 1 33 24
	beq	a4,a5,.L13
	.loc 1 36 25 is_stmt 1
	li	a0,10
	j	.L13
.L7:
.LBB13:
	.loc 1 41 25
.LVL9:
	.loc 1 42 25
	.loc 1 41 107 is_stmt 0
	lw	a0,-24(s0)
	.loc 1 42 25
	lbu	a1,-20(s0)
	.loc 1 41 107
	addi	a0,a0,-1
	.loc 1 42 25
	seqz	a0,a0
	call	app_config_save_relay_settings
.LVL10:
	.loc 1 43 25 is_stmt 1
	.loc 1 44 25
	lbu	a0,-20(s0)
	call	app_callback_update_lock_button
.LVL11:
.LBE13:
	.loc 1 46 21
.LBE14:
.LBE15:
.LBE16:
	.loc 1 57 1 is_stmt 0
	j	.L3
	.cfi_endproc
.LFE4:
	.size	mqtt_message_handler, .-mqtt_message_handler
	.section	.rodata.app_mqtt_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"%s%s"
	.align	2
.LC2:
	.string	"/state"
	.section	.text.app_mqtt_init,"ax",@progbits
	.align	1
	.globl	app_mqtt_init
	.type	app_mqtt_init, @function
app_mqtt_init:
.LFB7:
	.loc 1 71 1 is_stmt 1
	.cfi_startproc
	.loc 1 73 5
	.loc 1 71 1 is_stmt 0
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
	sw	s2,0(sp)
	.cfi_offset 18, -16
	.loc 1 73 5
	call	mqtt_if_init
.LVL12:
	.loc 1 74 5 is_stmt 1
	lui	a0,%hi(mqtt_connected_handler)
	addi	a0,a0,%lo(mqtt_connected_handler)
	call	mqtt_if_set_connected_cb
.LVL13:
	.loc 1 75 5
	lui	a0,%hi(mqtt_disconnected_handler)
	addi	a0,a0,%lo(mqtt_disconnected_handler)
	call	mqtt_if_set_disconnected_cb
.LVL14:
	.loc 1 76 5
	lui	a0,%hi(mqtt_message_handler)
	addi	a0,a0,%lo(mqtt_message_handler)
	call	mqtt_if_set_message_cb
.LVL15:
	.loc 1 78 5
	lui	s2,%hi(.LANCHOR0)
	lui	s1,%hi(.LC1)
	lui	a4,%hi(.LC0)
	lui	a0,%hi(.LANCHOR1)
	addi	a3,s2,%lo(.LANCHOR0)
	addi	a2,s1,%lo(.LC1)
	addi	a4,a4,%lo(.LC0)
	li	a1,128
	addi	a0,a0,%lo(.LANCHOR1)
	call	snprintf
.LVL16:
	.loc 1 79 5
	lui	a4,%hi(.LC2)
	lui	a0,%hi(.LANCHOR2)
	addi	a3,s2,%lo(.LANCHOR0)
	addi	a2,s1,%lo(.LC1)
	addi	a4,a4,%lo(.LC2)
	li	a1,128
	addi	a0,a0,%lo(.LANCHOR2)
	call	snprintf
.LVL17:
	.loc 1 81 5
	.loc 1 82 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	app_mqtt_init, .-app_mqtt_init
	.section	.rodata.app_mqtt_start.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"device_%d"
	.section	.text.app_mqtt_start,"ax",@progbits
	.align	1
	.globl	app_mqtt_start
	.type	app_mqtt_start, @function
app_mqtt_start:
.LFB8:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 86 5
	.loc 1 86 8 is_stmt 0
	beq	a0,zero,.L21
	.loc 1 85 1
	addi	sp,sp,-368
	.cfi_def_cfa_offset 368
	sw	s0,360(sp)
	sw	s1,356(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,368
	.cfi_def_cfa 8, 0
	sw	s2,352(sp)
	sw	s3,348(sp)
	sw	ra,364(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	mv	s3,a0
	mv	s1,a1
	.loc 1 90 22
	li	a1,0
.LVL19:
	mv	s2,a2
	.loc 1 90 5 is_stmt 1
	.loc 1 90 22 is_stmt 0
	addi	a0,s0,-360
.LVL20:
	li	a2,328
.LVL21:
	call	memset
.LVL22:
	.loc 1 91 5 is_stmt 1
	li	a2,127
	mv	a1,s3
	addi	a0,s0,-360
	call	strncpy
.LVL23:
	.loc 1 92 5
	.loc 1 92 35 is_stmt 0
	bgt	s1,zero,.L18
	li	s1,1883
.LVL24:
.L18:
	.loc 1 92 17 discriminator 4
	sw	s1,-232(s0)
	.loc 1 94 5 is_stmt 1 discriminator 4
	.loc 1 94 8 is_stmt 0 discriminator 4
	beq	s2,zero,.L19
	.loc 1 95 9 is_stmt 1
	li	a2,63
	mv	a1,s2
	addi	a0,s0,-228
	call	strncpy
.LVL25:
.L20:
	.loc 1 100 5
	.loc 1 100 22 is_stmt 0
	li	a5,60
	.loc 1 101 5
	addi	a0,s0,-360
	.loc 1 100 22
	sw	a5,-36(s0)
	.loc 1 101 5 is_stmt 1
	call	mqtt_if_set_config
.LVL26:
	.loc 1 102 5
	.loc 1 102 12 is_stmt 0
	call	mqtt_if_connect
.LVL27:
	.loc 1 103 1
	lw	ra,364(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,360(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 368
	lw	s1,356(sp)
	.cfi_restore 9
	lw	s2,352(sp)
	.cfi_restore 18
.LVL28:
	lw	s3,348(sp)
	.cfi_restore 19
.LVL29:
	addi	sp,sp,368
	.cfi_def_cfa_offset 0
	jr	ra
.LVL30:
.L19:
	.cfi_restore_state
	.loc 1 97 9 is_stmt 1
	.loc 1 97 80 is_stmt 0
	call	aos_now_ms
.LVL31:
	.loc 1 97 9
	lui	a2,%hi(.LC3)
	.loc 1 97 80
	mv	a3,a0
	.loc 1 97 9
	addi	a2,a2,%lo(.LC3)
	li	a1,64
	addi	a0,s0,-228
	call	snprintf
.LVL32:
	j	.L20
.LVL33:
.L21:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.loc 1 87 16
	li	a0,-1
.LVL34:
	.loc 1 103 1
	ret
	.cfi_endproc
.LFE8:
	.size	app_mqtt_start, .-app_mqtt_start
	.section	.text.app_mqtt_stop,"ax",@progbits
	.align	1
	.globl	app_mqtt_stop
	.type	app_mqtt_stop, @function
app_mqtt_stop:
.LFB9:
	.loc 1 106 1 is_stmt 1
	.cfi_startproc
	.loc 1 107 5
	.loc 1 106 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 108 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 107 12
	tail	mqtt_if_disconnect
.LVL35:
	.cfi_endproc
.LFE9:
	.size	app_mqtt_stop, .-app_mqtt_stop
	.section	.text.app_mqtt_is_connected,"ax",@progbits
	.align	1
	.globl	app_mqtt_is_connected
	.type	app_mqtt_is_connected, @function
app_mqtt_is_connected:
.LFB10:
	.loc 1 111 1 is_stmt 1
	.cfi_startproc
	.loc 1 113 5
	.loc 1 111 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 114 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 113 12
	tail	mqtt_if_is_connected
.LVL36:
	.cfi_endproc
.LFE10:
	.size	app_mqtt_is_connected, .-app_mqtt_is_connected
	.section	.text.app_mqtt_publish_state,"ax",@progbits
	.align	1
	.globl	app_mqtt_publish_state
	.type	app_mqtt_publish_state, @function
app_mqtt_publish_state:
.LFB11:
	.loc 1 117 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 118 5
	.loc 1 117 1 is_stmt 0
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
	.loc 1 117 1
	mv	s1,a0
	.loc 1 118 10
	call	mqtt_if_is_connected
.LVL38:
	.loc 1 118 8
	beq	a0,zero,.L30
	.loc 1 118 33 discriminator 1
	beq	s1,zero,.L30
	.loc 1 121 5 is_stmt 1
	.loc 1 121 50 is_stmt 0
	mv	a0,s1
	call	strlen
.LVL39:
	.loc 1 122 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 121 12
	mv	a1,s1
	.loc 1 122 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL40:
	.loc 1 121 50
	mv	a2,a0
	.loc 1 121 12
	lui	a0,%hi(.LANCHOR2)
	.loc 1 122 1
	.loc 1 121 12
	li	a3,1
	addi	a0,a0,%lo(.LANCHOR2)
	.loc 1 122 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 121 12
	tail	mqtt_if_publish
.LVL41:
.L30:
	.cfi_restore_state
	.loc 1 122 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL42:
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	app_mqtt_publish_state, .-app_mqtt_publish_state
	.section	.rodata.mqtt_connected_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"ON"
	.align	2
.LC5:
	.string	"OFF"
	.section	.text.mqtt_connected_handler,"ax",@progbits
	.align	1
	.type	mqtt_connected_handler, @function
mqtt_connected_handler:
.LFB5:
	.loc 1 60 1 is_stmt 1
	.cfi_startproc
	.loc 1 61 5
	.loc 1 60 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 61 5
	lui	a0,%hi(.LANCHOR1)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 60 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 61 5
	addi	a0,a0,%lo(.LANCHOR1)
	call	mqtt_if_subscribe
.LVL43:
	.loc 1 62 5 is_stmt 1
	.loc 1 62 27 is_stmt 0
	call	relay_get_state
.LVL44:
	.loc 1 63 5 is_stmt 1
	bne	a0,zero,.L39
	lui	a0,%hi(.LC5)
.LVL45:
	addi	a0,a0,%lo(.LC5)
.L38:
	.loc 1 64 1 is_stmt 0 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 63 5 discriminator 4
	tail	app_mqtt_publish_state
.LVL46:
.L39:
	.cfi_restore_state
	.loc 1 63 5
	lui	a0,%hi(.LC4)
.LVL47:
	addi	a0,a0,%lo(.LC4)
	j	.L38
	.cfi_endproc
.LFE5:
	.size	mqtt_connected_handler, .-mqtt_connected_handler
	.section	.text.app_mqtt_get_command_topic,"ax",@progbits
	.align	1
	.globl	app_mqtt_get_command_topic
	.type	app_mqtt_get_command_topic, @function
app_mqtt_get_command_topic:
.LFB12:
	.loc 1 125 1 is_stmt 1
	.cfi_startproc
	.loc 1 126 5
	.loc 1 125 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 127 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 126 12
	lui	a0,%hi(.LANCHOR1)
	.loc 1 127 1
	addi	a0,a0,%lo(.LANCHOR1)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	app_mqtt_get_command_topic, .-app_mqtt_get_command_topic
	.section	.text.app_mqtt_get_state_topic,"ax",@progbits
	.align	1
	.globl	app_mqtt_get_state_topic
	.type	app_mqtt_get_state_topic, @function
app_mqtt_get_state_topic:
.LFB13:
	.loc 1 130 1 is_stmt 1
	.cfi_startproc
	.loc 1 131 5
	.loc 1 130 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 132 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 131 12
	lui	a0,%hi(.LANCHOR2)
	.loc 1 132 1
	addi	a0,a0,%lo(.LANCHOR2)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	app_mqtt_get_state_topic, .-app_mqtt_get_state_topic
	.section	.bss.s_command_topic,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	s_command_topic, @object
	.size	s_command_topic, 128
s_command_topic:
	.zero	128
	.section	.bss.s_state_topic,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	s_state_topic, @object
	.size	s_state_topic, 128
s_state_topic:
	.zero	128
	.section	.data.s_topic_prefix,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_topic_prefix, @object
	.size	s_topic_prefix, 64
s_topic_prefix:
	.string	"device/relay01"
	.zero	49
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_mqtt/../../middle/mqtt_if/mqtt_if.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_mqtt/../../middle/mqtt_cmd_parser/mqtt_cmd_parser.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_mqtt/../app_event/app_event.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_mqtt/../../hardware/relay/relay.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_mqtt/../app_config/app_config.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x883
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF96
	.byte	0xc
	.4byte	.LASF97
	.4byte	.LASF98
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.4byte	0x32
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.byte	0x4
	.4byte	0x2b
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.2byte	0x148
	.byte	0x2
	.byte	0xc
	.byte	0x9
	.4byte	0x99
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0xd
	.byte	0xa
	.4byte	0x99
	.byte	0
	.byte	0x7
	.4byte	.LASF2
	.byte	0x2
	.byte	0xe
	.byte	0x9
	.4byte	0x37
	.byte	0x80
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0xf
	.byte	0xa
	.4byte	0xb0
	.byte	0x84
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x10
	.byte	0xa
	.4byte	0xb0
	.byte	0xc4
	.byte	0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x11
	.byte	0xa
	.4byte	0xb0
	.2byte	0x104
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x12
	.byte	0x9
	.4byte	0x37
	.2byte	0x144
	.byte	0
	.byte	0x9
	.4byte	0x2b
	.4byte	0xa9
	.byte	0xa
	.4byte	0xa9
	.byte	0x7f
	.byte	0
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x9
	.4byte	0x2b
	.4byte	0xc0
	.byte	0xa
	.4byte	0xa9
	.byte	0x3f
	.byte	0
	.byte	0xb
	.4byte	.LASF12
	.byte	0x2
	.byte	0x13
	.byte	0x3
	.4byte	0x3e
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0xf4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.byte	0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x10e
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF18
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.4byte	0x161
	.byte	0xd
	.4byte	.LASF19
	.byte	0
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd
	.4byte	.LASF21
	.byte	0x2
	.byte	0xd
	.4byte	.LASF22
	.byte	0x3
	.byte	0xd
	.4byte	.LASF23
	.byte	0x4
	.byte	0xd
	.4byte	.LASF24
	.byte	0x5
	.byte	0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0xd
	.4byte	.LASF26
	.byte	0x7
	.byte	0xd
	.4byte	.LASF27
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x12
	.byte	0x3
	.4byte	0x11c
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x4
	.byte	0x15
	.byte	0xe
	.4byte	0x188
	.byte	0xd
	.4byte	.LASF29
	.byte	0
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x18
	.byte	0x3
	.4byte	0x16d
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x4
	.byte	0x1b
	.byte	0xe
	.4byte	0x1af
	.byte	0xd
	.4byte	.LASF32
	.byte	0
	.byte	0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1e
	.byte	0x3
	.4byte	0x194
	.byte	0xe
	.byte	0x4
	.byte	0x4
	.byte	0x24
	.byte	0x9
	.4byte	0x1d2
	.byte	0x7
	.4byte	.LASF35
	.byte	0x4
	.byte	0x25
	.byte	0x1b
	.4byte	0x188
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.byte	0x27
	.byte	0x9
	.4byte	0x1f6
	.byte	0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x28
	.byte	0x1c
	.4byte	0x1af
	.byte	0
	.byte	0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x29
	.byte	0x16
	.4byte	0x102
	.byte	0x4
	.byte	0
	.byte	0xe
	.byte	0x4
	.byte	0x4
	.byte	0x2b
	.byte	0x9
	.4byte	0x20d
	.byte	0x7
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2c
	.byte	0x16
	.4byte	0x102
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.byte	0x2e
	.byte	0x9
	.4byte	0x231
	.byte	0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x2f
	.byte	0x1b
	.4byte	0x188
	.byte	0
	.byte	0x7
	.4byte	.LASF40
	.byte	0x4
	.byte	0x30
	.byte	0x11
	.4byte	0x231
	.byte	0x4
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF41
	.byte	0xf
	.byte	0x8
	.byte	0x4
	.byte	0x23
	.byte	0x5
	.4byte	0x272
	.byte	0x10
	.string	"set"
	.byte	0x4
	.byte	0x26
	.byte	0xb
	.4byte	0x1bb
	.byte	0x11
	.4byte	.LASF42
	.byte	0x4
	.byte	0x2a
	.byte	0xb
	.4byte	0x1d2
	.byte	0x11
	.4byte	.LASF43
	.byte	0x4
	.byte	0x2d
	.byte	0xb
	.4byte	0x1f6
	.byte	0x11
	.4byte	.LASF44
	.byte	0x4
	.byte	0x31
	.byte	0xb
	.4byte	0x20d
	.byte	0
	.byte	0xe
	.byte	0xc
	.byte	0x4
	.byte	0x21
	.byte	0x9
	.4byte	0x296
	.byte	0x7
	.4byte	.LASF45
	.byte	0x4
	.byte	0x22
	.byte	0x15
	.4byte	0x161
	.byte	0
	.byte	0x7
	.4byte	.LASF46
	.byte	0x4
	.byte	0x32
	.byte	0x7
	.4byte	0x238
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF47
	.byte	0x4
	.byte	0x33
	.byte	0x3
	.4byte	0x272
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0xa9
	.byte	0x5
	.byte	0x6
	.byte	0xe
	.4byte	0x2ff
	.byte	0xd
	.4byte	.LASF48
	.byte	0
	.byte	0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd
	.4byte	.LASF50
	.byte	0x2
	.byte	0xd
	.4byte	.LASF51
	.byte	0x3
	.byte	0xd
	.4byte	.LASF52
	.byte	0x4
	.byte	0xd
	.4byte	.LASF53
	.byte	0x5
	.byte	0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0xd
	.4byte	.LASF57
	.byte	0x9
	.byte	0xd
	.4byte	.LASF58
	.byte	0xa
	.byte	0xd
	.4byte	.LASF59
	.byte	0xb
	.byte	0xd
	.4byte	.LASF60
	.byte	0xc
	.byte	0
	.byte	0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.4byte	0x99
	.byte	0x5
	.byte	0x3
	.4byte	s_command_topic
	.byte	0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.4byte	0x99
	.byte	0x5
	.byte	0x3
	.4byte	s_state_topic
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0xb0
	.byte	0x5
	.byte	0x3
	.4byte	s_topic_prefix
	.byte	0x13
	.4byte	.LASF64
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7c
	.byte	0xd
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x74
	.byte	0x5
	.4byte	0x37
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c8
	.byte	0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x74
	.byte	0x28
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x16
	.4byte	.LVL38
	.4byte	0x789
	.byte	0x17
	.4byte	.LVL39
	.4byte	0x795
	.4byte	0x3a8
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL41
	.4byte	0x7a1
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x231
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ec
	.byte	0x1a
	.4byte	.LVL36
	.4byte	0x789
	.byte	0
	.byte	0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x69
	.byte	0x5
	.4byte	0x37
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x410
	.byte	0x1a
	.4byte	.LVL35
	.4byte	0x7ad
	.byte	0
	.byte	0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.4byte	0x37
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x515
	.byte	0x15
	.4byte	.LASF1
	.byte	0x1
	.byte	0x54
	.byte	0x20
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LASF2
	.byte	0x1
	.byte	0x54
	.byte	0x2c
	.4byte	0x37
	.4byte	.LLST8
	.byte	0x15
	.4byte	.LASF3
	.byte	0x1
	.byte	0x54
	.byte	0x3e
	.4byte	0x25
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	0xc0
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7d
	.byte	0x17
	.4byte	.LVL22
	.4byte	0x7b9
	.4byte	0x48b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x98,0x7d
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x148
	.byte	0
	.byte	0x17
	.4byte	.LVL23
	.4byte	0x7c4
	.4byte	0x4ac
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x98,0x7d
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x17
	.4byte	.LVL25
	.4byte	0x7c4
	.4byte	0x4cd
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x9c,0x7e
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.byte	0x17
	.4byte	.LVL26
	.4byte	0x7d0
	.4byte	0x4e2
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x98,0x7d
	.byte	0
	.byte	0x16
	.4byte	.LVL27
	.4byte	0x7dc
	.byte	0x16
	.4byte	.LVL31
	.4byte	0x7e8
	.byte	0x1b
	.4byte	.LVL32
	.4byte	0x7f5
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x9c,0x7e
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x37
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ea
	.byte	0x16
	.4byte	.LVL12
	.4byte	0x802
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x80e
	.4byte	0x54f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_connected_handler
	.byte	0
	.byte	0x17
	.4byte	.LVL14
	.4byte	0x81a
	.4byte	0x566
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_disconnected_handler
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x826
	.4byte	0x57d
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	mqtt_message_handler
	.byte	0
	.byte	0x17
	.4byte	.LVL16
	.4byte	0x7f5
	.4byte	0x5b5
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1b
	.4byte	.LVL17
	.4byte	0x7f5
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3b
	.byte	0xd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x64c
	.byte	0x1e
	.4byte	.LASF72
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.4byte	0xe8
	.4byte	.LLST11
	.byte	0x17
	.4byte	.LVL43
	.4byte	0x832
	.4byte	0x639
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x16
	.4byte	.LVL44
	.4byte	0x83e
	.byte	0x1a
	.4byte	.LVL46
	.4byte	0x361
	.byte	0
	.byte	0x1f
	.4byte	.LASF101
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.byte	0x1
	.4byte	0x6a8
	.byte	0x20
	.4byte	.LASF73
	.byte	0x1
	.byte	0x17
	.byte	0x2e
	.4byte	0x25
	.byte	0x20
	.4byte	.LASF74
	.byte	0x1
	.byte	0x17
	.byte	0x41
	.4byte	0x25
	.byte	0x20
	.4byte	.LASF75
	.byte	0x1
	.byte	0x17
	.byte	0x4e
	.4byte	0x37
	.byte	0x21
	.byte	0x22
	.string	"cmd"
	.byte	0x1
	.byte	0x1a
	.byte	0x14
	.4byte	0x296
	.byte	0x21
	.byte	0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x29
	.byte	0x21
	.4byte	0xe8
	.byte	0x24
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2b
	.byte	0x25
	.byte	0x25
	.4byte	0x231
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	0x64c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x789
	.byte	0x27
	.4byte	0x659
	.4byte	.LLST0
	.byte	0x27
	.4byte	0x665
	.4byte	.LLST1
	.byte	0x27
	.4byte	0x671
	.4byte	.LLST2
	.byte	0x28
	.4byte	0x64c
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.4byte	0x76e
	.byte	0x27
	.4byte	0x659
	.4byte	.LLST3
	.byte	0x27
	.4byte	0x671
	.4byte	.LLST4
	.byte	0x27
	.4byte	0x665
	.4byte	.LLST5
	.byte	0x29
	.4byte	0x67d
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2a
	.4byte	0x67e
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2b
	.4byte	0x68a
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x743
	.byte	0x2c
	.4byte	0x68b
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LVL10
	.4byte	0x84a
	.byte	0x16
	.4byte	.LVL11
	.4byte	0x856
	.byte	0
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x862
	.4byte	0x763
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x86e
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL2
	.4byte	0x87a
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x2
	.byte	0x22
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.byte	0x2d
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x2
	.byte	0x2b
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x2
	.byte	0x1f
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF102
	.4byte	.LASF103
	.byte	0xb
	.byte	0
	.byte	0x2d
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.byte	0x2c
	.byte	0x7
	.byte	0x2d
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x2
	.byte	0x19
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x2
	.byte	0x1c
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x1ef
	.byte	0xf
	.byte	0x2f
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x10a
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x2
	.byte	0x16
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x2
	.byte	0x2f
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x2
	.byte	0x30
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x2
	.byte	0x25
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.byte	0xa
	.byte	0x9
	.byte	0x2d
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0x1b
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2b
	.byte	0x25
	.byte	0x2d
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x4
	.byte	0x36
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x1
	.byte	0xd
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x6
	.byte	0x30
	.byte	0x7
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x2e
	.byte	0
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
	.byte	0xb
	.byte	0x1
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
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
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x6
	.byte	0x78
	.byte	0x68
	.byte	0x6
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB14
	.4byte	.LBE14
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
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"APP_EVENT_MQTT_TOGGLE"
.LASF88:
	.string	"mqtt_if_set_message_cb"
.LASF80:
	.string	"strncpy"
.LASF61:
	.string	"s_command_topic"
.LASF73:
	.string	"topic"
.LASF85:
	.string	"mqtt_if_init"
.LASF82:
	.string	"mqtt_if_connect"
.LASF35:
	.string	"state"
.LASF3:
	.string	"client_id"
.LASF9:
	.string	"short int"
.LASF98:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_mqtt"
.LASF97:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_mqtt/app_mqtt.c"
.LASF5:
	.string	"password"
.LASF62:
	.string	"s_state_topic"
.LASF52:
	.string	"APP_EVENT_WIFI_DISCONNECTED"
.LASF30:
	.string	"RELAY_STATE_ON"
.LASF92:
	.string	"app_callback_update_lock_button"
.LASF70:
	.string	"config"
.LASF45:
	.string	"type"
.LASF103:
	.string	"__builtin_memset"
.LASF68:
	.string	"app_mqtt_stop"
.LASF28:
	.string	"mqtt_cmd_type_t"
.LASF13:
	.string	"uint8_t"
.LASF40:
	.string	"lock_button"
.LASF22:
	.string	"MQTT_CMD_TIMER"
.LASF54:
	.string	"APP_EVENT_BLE_CONFIG_DONE"
.LASF44:
	.string	"settings"
.LASF69:
	.string	"app_mqtt_start"
.LASF66:
	.string	"app_mqtt_publish_state"
.LASF49:
	.string	"APP_EVENT_BUTTON_HOLD"
.LASF83:
	.string	"aos_now_ms"
.LASF34:
	.string	"timer_action_t"
.LASF24:
	.string	"MQTT_CMD_AUTO_TOGGLE_START"
.LASF11:
	.string	"long long int"
.LASF101:
	.string	"mqtt_message_handler"
.LASF36:
	.string	"action"
.LASF102:
	.string	"memset"
.LASF71:
	.string	"app_mqtt_init"
.LASF53:
	.string	"APP_EVENT_WIFI_CONNECT_FAILED"
.LASF29:
	.string	"RELAY_STATE_OFF"
.LASF27:
	.string	"MQTT_CMD_INVALID"
.LASF14:
	.string	"unsigned char"
.LASF87:
	.string	"mqtt_if_set_disconnected_cb"
.LASF86:
	.string	"mqtt_if_set_connected_cb"
.LASF1:
	.string	"broker"
.LASF42:
	.string	"timer"
.LASF46:
	.string	"params"
.LASF84:
	.string	"snprintf"
.LASF57:
	.string	"APP_EVENT_MQTT_SET_ON"
.LASF99:
	.string	"mqtt_disconnected_handler"
.LASF39:
	.string	"default_state"
.LASF78:
	.string	"mqtt_if_publish"
.LASF67:
	.string	"app_mqtt_is_connected"
.LASF47:
	.string	"mqtt_cmd_t"
.LASF79:
	.string	"mqtt_if_disconnect"
.LASF8:
	.string	"signed char"
.LASF18:
	.string	"long long unsigned int"
.LASF16:
	.string	"uint32_t"
.LASF94:
	.string	"app_event_post"
.LASF64:
	.string	"app_mqtt_get_state_topic"
.LASF90:
	.string	"relay_get_state"
.LASF33:
	.string	"TIMER_ACTION_OFF"
.LASF91:
	.string	"app_config_save_relay_settings"
.LASF23:
	.string	"MQTT_CMD_TIMER_CANCEL"
.LASF15:
	.string	"short unsigned int"
.LASF50:
	.string	"APP_EVENT_BUTTON_PRESS"
.LASF37:
	.string	"seconds"
.LASF0:
	.string	"char"
.LASF10:
	.string	"long int"
.LASF12:
	.string	"mqtt_if_config_t"
.LASF77:
	.string	"strlen"
.LASF41:
	.string	"_Bool"
.LASF20:
	.string	"MQTT_CMD_TOGGLE"
.LASF6:
	.string	"keepalive"
.LASF100:
	.string	"mqtt_connected_handler"
.LASF59:
	.string	"APP_EVENT_RELAY_STATE_CHANGED"
.LASF93:
	.string	"mqtt_cmd_parse"
.LASF2:
	.string	"port"
.LASF17:
	.string	"long unsigned int"
.LASF43:
	.string	"auto_toggle"
.LASF51:
	.string	"APP_EVENT_WIFI_CONNECTED"
.LASF38:
	.string	"interval"
.LASF25:
	.string	"MQTT_CMD_AUTO_TOGGLE_STOP"
.LASF48:
	.string	"APP_EVENT_NONE"
.LASF55:
	.string	"APP_EVENT_BLE_CONFIG_TIMEOUT"
.LASF96:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF19:
	.string	"MQTT_CMD_NONE"
.LASF31:
	.string	"relay_state_t"
.LASF4:
	.string	"username"
.LASF63:
	.string	"s_topic_prefix"
.LASF58:
	.string	"APP_EVENT_MQTT_SET_OFF"
.LASF95:
	.string	"strstr"
.LASF75:
	.string	"payload_len"
.LASF89:
	.string	"mqtt_if_subscribe"
.LASF7:
	.string	"unsigned int"
.LASF72:
	.string	"relay_state"
.LASF65:
	.string	"app_mqtt_get_command_topic"
.LASF21:
	.string	"MQTT_CMD_SET"
.LASF26:
	.string	"MQTT_CMD_SETTINGS"
.LASF81:
	.string	"mqtt_if_set_config"
.LASF60:
	.string	"APP_EVENT_MAX"
.LASF74:
	.string	"payload"
.LASF32:
	.string	"TIMER_ACTION_ON"
.LASF76:
	.string	"mqtt_if_is_connected"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
