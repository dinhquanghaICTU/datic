	.file	"app_api.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_run,"ax",@progbits
	.align	1
	.globl	app_run
	.type	app_run, @function
app_run:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/app_api.c"
	.loc 1 13 1
	.cfi_startproc
	.loc 1 14 5
	.loc 1 17 5
	.loc 1 13 1 is_stmt 0
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
	.loc 1 17 5
	call	led_init
.LVL0:
	.loc 1 18 5 is_stmt 1
	call	relay_init
.LVL1:
	.loc 1 21 5
	.loc 1 21 9 is_stmt 0
	call	app_config_init
.LVL2:
	.loc 1 21 8
	beq	a0,zero,.L2
.L4:
	.loc 1 23 16
	li	s1,-1
.L1:
	.loc 1 52 1
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
.L2:
	.cfi_restore_state
	.loc 1 27 5 is_stmt 1
	.loc 1 27 9 is_stmt 0
	call	app_wifi_init
.LVL3:
	.loc 1 27 8
	bne	a0,zero,.L4
	.loc 1 33 5 is_stmt 1
	lui	a0,%hi(app_wifi_connected_callback)
	addi	a0,a0,%lo(app_wifi_connected_callback)
	call	app_wifi_set_connected_cb
.LVL4:
	.loc 1 34 5
	lui	a0,%hi(app_wifi_disconnected_callback)
	addi	a0,a0,%lo(app_wifi_disconnected_callback)
	call	app_wifi_set_disconnected_cb
.LVL5:
	.loc 1 35 5
	lui	a0,%hi(app_wifi_connect_failed_callback)
	addi	a0,a0,%lo(app_wifi_connect_failed_callback)
	call	app_wifi_set_connect_failed_cb
.LVL6:
	.loc 1 38 5
	.loc 1 38 9 is_stmt 0
	call	app_ble_init
.LVL7:
	mv	s1,a0
	.loc 1 38 8
	bne	a0,zero,.L4
	.loc 1 44 5 is_stmt 1
	lui	a0,%hi(app_ble_config_done_callback)
	addi	a0,a0,%lo(app_ble_config_done_callback)
	call	app_ble_set_config_done_cb
.LVL8:
	.loc 1 47 5
	call	app_task_init
.LVL9:
	.loc 1 49 5
	.loc 1 51 5
	.loc 1 51 12 is_stmt 0
	j	.L1
	.cfi_endproc
.LFE4:
	.size	app_run, .-app_run
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/../../hardware/led/led.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/../../hardware/relay/relay.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/../app_config/app_config.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/../app_wifi/app_wifi.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/../app_ble/app_ble.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/../app_task/app_task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x163
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xee
	.byte	0x5
	.4byte	.LVL0
	.4byte	0xee
	.byte	0x5
	.4byte	.LVL1
	.4byte	0xfa
	.byte	0x5
	.4byte	.LVL2
	.4byte	0x106
	.byte	0x5
	.4byte	.LVL3
	.4byte	0x112
	.byte	0x5
	.4byte	.LVL4
	.4byte	0x11e
	.byte	0x5
	.4byte	.LVL5
	.4byte	0x12a
	.byte	0x5
	.4byte	.LVL6
	.4byte	0x136
	.byte	0x5
	.4byte	.LVL7
	.4byte	0x142
	.byte	0x5
	.4byte	.LVL8
	.4byte	0x14e
	.byte	0x5
	.4byte	.LVL9
	.4byte	0x15a
	.byte	0
	.byte	0x6
	.4byte	.LASF11
	.4byte	.LASF11
	.byte	0x2
	.byte	0x5
	.byte	0x6
	.byte	0x6
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x3
	.byte	0x6
	.byte	0x6
	.byte	0x6
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x4
	.byte	0x14
	.byte	0x5
	.byte	0x6
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x5
	.byte	0xc
	.byte	0x5
	.byte	0x6
	.4byte	.LASF15
	.4byte	.LASF15
	.byte	0x5
	.byte	0x13
	.byte	0x6
	.byte	0x6
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x5
	.byte	0x14
	.byte	0x6
	.byte	0x6
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.byte	0x15
	.byte	0x6
	.byte	0x6
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x6
	.byte	0xe
	.byte	0x5
	.byte	0x6
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0x12
	.byte	0x6
	.byte	0x6
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x7
	.byte	0x11
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"app_config_init"
.LASF8:
	.string	"unsigned int"
.LASF15:
	.string	"app_wifi_set_connected_cb"
.LASF18:
	.string	"app_ble_init"
.LASF11:
	.string	"led_init"
.LASF5:
	.string	"long unsigned int"
.LASF21:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF12:
	.string	"relay_init"
.LASF4:
	.string	"long int"
.LASF16:
	.string	"app_wifi_set_disconnected_cb"
.LASF10:
	.string	"_Bool"
.LASF24:
	.string	"app_run"
.LASF20:
	.string	"app_task_init"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"app_wifi_set_connect_failed_cb"
.LASF19:
	.string	"app_ble_set_config_done_cb"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_api/app_api.c"
.LASF23:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_api"
.LASF14:
	.string	"app_wifi_init"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
