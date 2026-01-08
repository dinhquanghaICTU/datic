	.file	"app_event.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.Event_GetName.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"UNKNOWN"
	.section	.text.Event_GetName,"ax",@progbits
	.align	1
	.globl	Event_GetName
	.type	Event_GetName, @function
Event_GetName:
.LFB3:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_event/app_event.c"
	.loc 1 4 45
	.cfi_startproc
.LVL0:
	.loc 1 5 5
	.loc 1 4 45 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a5,10
	bgtu	a0,a5,.L3
	lui	a5,%hi(.LANCHOR0)
	slli	a0,a0,2
.LVL1:
	addi	a5,a5,%lo(.LANCHOR0)
	add	a0,a5,a0
	lw	a0,0(a0)
.L1:
	.loc 1 19 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL2:
.L3:
	.cfi_restore_state
	.loc 1 4 45
	lui	a0,%hi(.LC0)
.LVL3:
	addi	a0,a0,%lo(.LC0)
	j	.L1
	.cfi_endproc
.LFE3:
	.size	Event_GetName, .-Event_GetName
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"NONE"
	.align	2
.LC2:
	.string	"CRED_FOUND"
	.align	2
.LC3:
	.string	"CRED_NOT_FOUND"
	.align	2
.LC4:
	.string	"BLE_CONFIG_DONE"
	.align	2
.LC5:
	.string	"WIFI_CONNECTED"
	.align	2
.LC6:
	.string	"WIFI_FAILED"
	.align	2
.LC7:
	.string	"WIFI_DISCONNECTED"
	.align	2
.LC8:
	.string	"MQTT_CONNECTED"
	.align	2
.LC9:
	.string	"MQTT_FAILED"
	.align	2
.LC10:
	.string	"MQTT_DISCONNECTED"
	.align	2
.LC11:
	.string	"BUTTON_HOLD"
	.section	.rodata.CSWTCH.1,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.1, @object
	.size	CSWTCH.1, 44
CSWTCH.1:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_event/app_event.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x104
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x2
	.byte	0x5
	.byte	0xe
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF0
	.byte	0
	.byte	0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x9
	.byte	0x3
	.4byte	.LASF10
	.byte	0xa
	.byte	0x3
	.4byte	.LASF11
	.byte	0xb
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.4byte	.LASF25
	.byte	0x2
	.byte	0x1d
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF19
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.byte	0x7
	.4byte	0xce
	.byte	0x8
	.byte	0x4
	.4byte	0xd5
	.byte	0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4
	.byte	0xd
	.4byte	0xda
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4
	.byte	0x26
	.4byte	0x83
	.4byte	.LLST0
	.byte	0
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
	.byte	0x3
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"long long int"
.LASF16:
	.string	"short unsigned int"
.LASF22:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF12:
	.string	"unsigned int"
.LASF5:
	.string	"EVENT_WIFI_FAILED"
.LASF27:
	.string	"event"
.LASF24:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_event"
.LASF18:
	.string	"long unsigned int"
.LASF20:
	.string	"long long unsigned int"
.LASF25:
	.string	"AppEvent_t"
.LASF3:
	.string	"EVENT_BLE_CONFIG_DONE"
.LASF23:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_event/app_event.c"
.LASF9:
	.string	"EVENT_MQTT_DISCONNECTED"
.LASF6:
	.string	"EVENT_WIFI_DISCONNECTED"
.LASF14:
	.string	"unsigned char"
.LASF8:
	.string	"EVENT_MQTT_FAILED"
.LASF21:
	.string	"char"
.LASF17:
	.string	"long int"
.LASF1:
	.string	"EVENT_CRED_FOUND"
.LASF7:
	.string	"EVENT_MQTT_CONNECTED"
.LASF0:
	.string	"EVENT_NONE"
.LASF11:
	.string	"EVENT_MAX"
.LASF13:
	.string	"signed char"
.LASF4:
	.string	"EVENT_WIFI_CONNECTED"
.LASF2:
	.string	"EVENT_CRED_NOT_FOUND"
.LASF26:
	.string	"Event_GetName"
.LASF15:
	.string	"short int"
.LASF10:
	.string	"EVENT_BUTTON_HOLD"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
