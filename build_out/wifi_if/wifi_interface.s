	.file	"wifi_interface.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.wifi_interface_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[WIFI] Initializing WiFi interface...\r\n"
	.align	2
.LC1:
	.string	"0.0.0.0"
	.align	2
.LC2:
	.string	"[WIFI] WiFi interface initialized (STA will be enabled on first connect)\r\n"
	.section	.text.wifi_interface_init,"ax",@progbits
	.align	1
	.globl	wifi_interface_init
	.type	wifi_interface_init, @function
wifi_interface_init:
.LFB30:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_interface.c"
	.loc 1 13 32
	.cfi_startproc
	.loc 1 14 5
	.loc 1 13 32 is_stmt 0
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
	.loc 1 14 5
	lui	a0,%hi(.LC0)
	.loc 1 13 32
	.loc 1 14 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL0:
	.loc 1 15 5 is_stmt 1
	.loc 1 16 5 is_stmt 0
	lui	s1,%hi(.LANCHOR1)
	.loc 1 15 20
	lui	a5,%hi(.LANCHOR0)
	.loc 1 16 5
	li	a2,16
	li	a1,0
	addi	a0,s1,%lo(.LANCHOR1)
	.loc 1 15 20
	sb	zero,%lo(.LANCHOR0)(a5)
	.loc 1 16 5 is_stmt 1
	call	memset
.LVL1:
	.loc 1 17 5
	lui	a1,%hi(.LC1)
	addi	a0,s1,%lo(.LANCHOR1)
	addi	a1,a1,%lo(.LC1)
	call	strcpy
.LVL2:
	.loc 1 21 5
	.loc 1 24 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 21 20
	lui	a5,%hi(.LANCHOR2)
	sw	zero,%lo(.LANCHOR2)(a5)
	.loc 1 23 5 is_stmt 1
	lui	a0,%hi(.LC2)
	.loc 1 24 1 is_stmt 0
	.loc 1 23 5
	addi	a0,a0,%lo(.LC2)
	.loc 1 24 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 23 5
	tail	printf
.LVL3:
	.cfi_endproc
.LFE30:
	.size	wifi_interface_init, .-wifi_interface_init
	.section	.rodata.wifi_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"[WIFI] Connecting to SSID: %s\r\n"
	.align	2
.LC4:
	.string	"[WIFI] ERROR: Invalid SSID or password!\r\n"
	.align	2
.LC5:
	.string	"[WIFI] Enabling WiFi STA interface...\r\n"
	.align	2
.LC6:
	.string	"[WIFI] ERROR: Failed to enable WiFi STA interface!\r\n"
	.align	2
.LC7:
	.string	"[WIFI] WiFi STA interface enabled\r\n"
	.align	2
.LC8:
	.string	"[WIFI] Disconnecting from current network...\r\n"
	.align	2
.LC9:
	.string	"[WIFI] Connection request sent successfully\r\n"
	.section	.text.wifi_connect,"ax",@progbits
	.align	1
	.globl	wifi_connect
	.type	wifi_connect, @function
wifi_connect:
.LFB31:
	.loc 1 26 55 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 27 5
	.loc 1 26 55 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s4,120(sp)
	sw	ra,140(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	mv	s1,a0
	mv	s4,a1
	.loc 1 27 5
	mv	a1,a0
.LVL5:
	lui	a0,%hi(.LC3)
.LVL6:
	.loc 1 26 55
	.loc 1 27 5
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL7:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 8 is_stmt 0
	beq	s1,zero,.L4
	.loc 1 29 21 discriminator 1
	bne	s4,zero,.L5
.L4:
	.loc 1 30 9 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
.L14:
	.loc 1 67 1 is_stmt 0
	lw	s0,136(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s1,132(sp)
	.cfi_restore 9
.LVL8:
	lw	s2,128(sp)
	.cfi_restore 18
	lw	s3,124(sp)
	.cfi_restore 19
	lw	s4,120(sp)
	.cfi_restore 20
.LVL9:
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	.loc 1 39 13
	tail	printf
.LVL10:
.L5:
	.cfi_restore_state
	.loc 1 35 5 is_stmt 1
	.loc 1 35 24 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	s2,a5,%lo(.LANCHOR2)
	.loc 1 35 8
	lw	a4,0(s2)
	addi	s3,a5,%lo(.LANCHOR2)
	bne	a4,zero,.L6
	.loc 1 36 9 is_stmt 1
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL11:
	.loc 1 37 9
	.loc 1 37 26 is_stmt 0
	call	wifi_mgmr_sta_enable
.LVL12:
	.loc 1 37 24
	sw	a0,0(s2)
	.loc 1 38 9 is_stmt 1
	.loc 1 38 12 is_stmt 0
	bne	a0,zero,.L7
	.loc 1 39 13 is_stmt 1
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	j	.L14
.L7:
	.loc 1 42 9
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL13:
.L6:
	.loc 1 46 5
	.loc 1 47 5 is_stmt 0
	addi	a0,s0,-140
	.loc 1 46 9
	sw	zero,-140(s0)
	.loc 1 47 5 is_stmt 1
	call	wifi_mgmr_sta_state_get
.LVL14:
	.loc 1 48 5
	.loc 1 48 46 is_stmt 0
	lw	a5,-140(s0)
	.loc 1 48 8
	li	a4,1
	.loc 1 48 46
	addi	a5,a5,-3
	.loc 1 48 8
	bgtu	a5,a4,.L8
	.loc 1 49 9 is_stmt 1
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL15:
	.loc 1 50 9
	call	wifi_mgmr_sta_disconnect
.LVL16:
	.loc 1 51 9
	li	a0,500
	call	vTaskDelay
.LVL17:
.L8:
	.loc 1 56 5
	.loc 1 57 5
	.loc 1 58 5
	mv	a1,s1
	li	a2,32
	addi	a0,s0,-136
	call	strncpy
.LVL18:
	.loc 1 59 5
	.loc 1 60 5 is_stmt 0
	mv	a1,s4
	li	a2,64
	addi	a0,s0,-100
	.loc 1 59 36
	sb	zero,-104(s0)
	.loc 1 60 5 is_stmt 1
	call	strncpy
.LVL19:
	.loc 1 61 5
	.loc 1 64 5 is_stmt 0
	lw	a0,0(s3)
	li	a5,0
	addi	a2,s0,-100
	addi	a1,s0,-136
	li	a6,0
	li	a4,0
	li	a3,0
	.loc 1 61 36
	sb	zero,-36(s0)
	.loc 1 64 5 is_stmt 1
	call	wifi_mgmr_sta_connect
.LVL20:
	.loc 1 65 9
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL21:
	.loc 1 66 9
	.loc 1 67 1 is_stmt 0
	lw	ra,140(sp)
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	.loc 1 66 24
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	.loc 1 67 1
	lw	s1,132(sp)
	.cfi_restore 9
.LVL22:
	lw	s2,128(sp)
	.cfi_restore 18
	lw	s3,124(sp)
	.cfi_restore 19
	lw	s4,120(sp)
	.cfi_restore 20
.LVL23:
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	wifi_connect, .-wifi_connect
	.section	.rodata.wifi_is_connected.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"%u.%u.%u.%u"
	.align	2
.LC11:
	.string	"[WIFI] Connected! IP: %s\r\n"
	.align	2
.LC12:
	.string	"[WIFI] Disconnected! State: 0x%02x\r\n"
	.section	.text.wifi_is_connected,"ax",@progbits
	.align	1
	.globl	wifi_is_connected
	.type	wifi_is_connected, @function
wifi_is_connected:
.LFB32:
	.loc 1 69 29 is_stmt 1
	.cfi_startproc
	.loc 1 70 5
	.loc 1 70 8 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a5)
	.loc 1 71 15
	li	a0,0
	.loc 1 70 8
	beq	a5,zero,.L26
	.loc 1 74 5 is_stmt 1
	.loc 1 69 29 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 75 5
	addi	a0,s0,-32
	.loc 1 74 9
	sw	zero,-32(s0)
	.loc 1 75 5 is_stmt 1
	call	wifi_mgmr_sta_state_get
.LVL24:
	.loc 1 78 5
	.loc 1 78 15 is_stmt 0
	lw	a1,-32(s0)
	lui	s1,%hi(.LANCHOR0)
	.loc 1 78 8
	li	a5,4
	addi	s1,s1,%lo(.LANCHOR0)
	bne	a1,a5,.L17
	.loc 1 79 9 is_stmt 1
	.loc 1 79 13 is_stmt 0
	lbu	a0,0(s1)
	.loc 1 79 12
	bne	a0,zero,.L16
.LBB2:
	.loc 1 81 13 is_stmt 1
	.loc 1 82 17 is_stmt 0
	addi	a2,s0,-20
	addi	a1,s0,-24
	addi	a0,s0,-28
	.loc 1 81 22
	sw	zero,-28(s0)
	.loc 1 81 30
	sw	zero,-24(s0)
	.loc 1 81 38
	sw	zero,-20(s0)
	.loc 1 82 13 is_stmt 1
	.loc 1 82 17 is_stmt 0
	call	wifi_mgmr_sta_ip_get
.LVL25:
	.loc 1 82 16
	bne	a0,zero,.L18
	.loc 1 83 17 is_stmt 1
	.loc 1 84 50 is_stmt 0
	lw	a3,-28(s0)
	.loc 1 83 17
	lui	s2,%hi(.LANCHOR1)
	lui	a2,%hi(.LC10)
	.loc 1 85 44
	srli	a5,a3,16
	.loc 1 84 78
	srli	a4,a3,8
	.loc 1 83 17
	srli	a6,a3,24
	li	a1,16
	andi	a5,a5,0xff
	andi	a4,a4,0xff
	andi	a3,a3,0xff
	addi	a2,a2,%lo(.LC10)
	addi	a0,s2,%lo(.LANCHOR1)
	call	snprintf
.LVL26:
	.loc 1 86 17 is_stmt 1
	lui	a0,%hi(.LC11)
	addi	a1,s2,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL27:
.L18:
	.loc 1 88 13
	.loc 1 88 28 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
.LBE2:
	.loc 1 90 15
	li	a0,1
.L16:
	.loc 1 104 1
	lw	ra,28(sp)
	.cfi_remember_state
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
.L17:
	.cfi_restore_state
	.loc 1 91 12 is_stmt 1
	.loc 1 91 15 is_stmt 0
	li	a5,3
	bne	a1,a5,.L19
.L20:
	.loc 1 93 9 is_stmt 1
	.loc 1 93 24 is_stmt 0
	sb	zero,0(s1)
	.loc 1 94 9 is_stmt 1
	.loc 1 94 15 is_stmt 0
	li	a0,0
	j	.L16
.L19:
	.loc 1 97 9 is_stmt 1
	.loc 1 97 12 is_stmt 0
	lbu	a5,0(s1)
	beq	a5,zero,.L20
	.loc 1 98 13 is_stmt 1
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL28:
	.loc 1 99 13
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LANCHOR1)
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	strcpy
.LVL29:
	j	.L20
.L26:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.loc 1 104 1 is_stmt 0
	ret
	.cfi_endproc
.LFE32:
	.size	wifi_is_connected, .-wifi_is_connected
	.section	.rodata.wifi_disconnect.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"[WIFI] Disconnecting...\r\n"
	.section	.text.wifi_disconnect,"ax",@progbits
	.align	1
	.globl	wifi_disconnect
	.type	wifi_disconnect, @function
wifi_disconnect:
.LFB33:
	.loc 1 106 28 is_stmt 1
	.cfi_startproc
	.loc 1 107 5
	.loc 1 106 28 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 107 5
	lui	a0,%hi(.LC13)
	.loc 1 106 28
	.loc 1 107 5
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL30:
	.loc 1 108 5 is_stmt 1
	.loc 1 108 8 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a5)
	beq	a5,zero,.L30
	.loc 1 109 9 is_stmt 1
	call	wifi_mgmr_sta_disconnect
.LVL31:
.L30:
	.loc 1 111 5
	.loc 1 113 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 111 20
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
	.loc 1 112 5 is_stmt 1
	lui	a1,%hi(.LC1)
	lui	a0,%hi(.LANCHOR1)
	.loc 1 113 1 is_stmt 0
	.loc 1 112 5
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(.LANCHOR1)
	.loc 1 113 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 112 5
	tail	strcpy
.LVL32:
	.cfi_endproc
.LFE33:
	.size	wifi_disconnect, .-wifi_disconnect
	.section	.text.wifi_get_ip,"ax",@progbits
	.align	1
	.globl	wifi_get_ip
	.type	wifi_get_ip, @function
wifi_get_ip:
.LFB34:
	.loc 1 115 31 is_stmt 1
	.cfi_startproc
	.loc 1 116 5
	.loc 1 115 31 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 117 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 116 12
	lui	a0,%hi(.LANCHOR1)
	.loc 1 117 1
	addi	a0,a0,%lo(.LANCHOR1)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	wifi_get_ip, .-wifi_get_ip
	.section	.rodata.wifi_disable_autoreconnect.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"[WIFI] Disabling auto-reconnect...\r\n"
	.section	.text.wifi_disable_autoreconnect,"ax",@progbits
	.align	1
	.globl	wifi_disable_autoreconnect
	.type	wifi_disable_autoreconnect, @function
wifi_disable_autoreconnect:
.LFB35:
	.loc 1 119 39 is_stmt 1
	.cfi_startproc
	.loc 1 120 5
	.loc 1 119 39 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 120 5
	lui	a0,%hi(.LC14)
	.loc 1 119 39
	.loc 1 120 5
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL33:
	.loc 1 121 5 is_stmt 1
	.loc 1 122 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 121 5
	tail	wifi_mgmr_api_disable_autoreconnect
.LVL34:
	.cfi_endproc
.LFE35:
	.size	wifi_disable_autoreconnect, .-wifi_disable_autoreconnect
	.section	.rodata.wifi_enable_autoreconnect.str1.4,"aMS",@progbits,1
	.align	2
.LC15:
	.string	"[WIFI] Enabling auto-reconnect...\r\n"
	.section	.text.wifi_enable_autoreconnect,"ax",@progbits
	.align	1
	.globl	wifi_enable_autoreconnect
	.type	wifi_enable_autoreconnect, @function
wifi_enable_autoreconnect:
.LFB36:
	.loc 1 124 38 is_stmt 1
	.cfi_startproc
	.loc 1 125 5
	.loc 1 124 38 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 125 5
	lui	a0,%hi(.LC15)
	.loc 1 124 38
	.loc 1 125 5
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL35:
	.loc 1 126 5 is_stmt 1
	.loc 1 127 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 126 5
	tail	wifi_mgmr_api_enable_autoreconnect
.LVL36:
	.cfi_endproc
.LFE36:
	.size	wifi_enable_autoreconnect, .-wifi_enable_autoreconnect
	.section	.data.wifi_ip,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	wifi_ip, @object
	.size	wifi_ip, 16
wifi_ip:
	.string	"0.0.0.0"
	.zero	8
	.section	.sbss.wifi_connected,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	wifi_connected, @object
	.size	wifi_connected, 1
wifi_connected:
	.zero	1
	.section	.sbss.wifi_interface,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	wifi_interface, @object
	.size	wifi_interface, 4
wifi_interface:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/wifi_mgmr_api.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x76b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
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
	.4byte	0x8c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0xd
	.byte	0x34
	.byte	0xe
	.4byte	0x11e
	.byte	0x9
	.4byte	.LASF14
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9
	.4byte	.LASF16
	.byte	0x2
	.byte	0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9
	.4byte	.LASF21
	.byte	0x7
	.byte	0x9
	.4byte	.LASF22
	.byte	0x8
	.byte	0x9
	.4byte	.LASF23
	.byte	0x9
	.byte	0x9
	.4byte	.LASF24
	.byte	0xa
	.byte	0x9
	.4byte	.LASF25
	.byte	0xb
	.byte	0x9
	.4byte	.LASF26
	.byte	0xc
	.byte	0x9
	.4byte	.LASF27
	.byte	0xd
	.byte	0x9
	.4byte	.LASF28
	.byte	0xe
	.byte	0x9
	.4byte	.LASF29
	.byte	0xf
	.byte	0
	.byte	0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x71
	.byte	0x6
	.4byte	0x143
	.byte	0x9
	.4byte	.LASF30
	.byte	0
	.byte	0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9
	.4byte	.LASF32
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x34
	.byte	0x6
	.4byte	0x186
	.byte	0x9
	.4byte	.LASF35
	.byte	0
	.byte	0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x9
	.4byte	.LASF37
	.byte	0x2
	.byte	0x9
	.4byte	.LASF38
	.byte	0x3
	.byte	0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x9
	.4byte	.LASF40
	.byte	0x5
	.byte	0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x9
	.byte	0xe
	.4byte	0x1e7
	.byte	0x9
	.4byte	.LASF44
	.byte	0xff
	.byte	0x9
	.4byte	.LASF45
	.byte	0
	.byte	0x9
	.4byte	.LASF46
	.byte	0x1
	.byte	0x9
	.4byte	.LASF47
	.byte	0x2
	.byte	0x9
	.4byte	.LASF48
	.byte	0x3
	.byte	0x9
	.4byte	.LASF49
	.byte	0x4
	.byte	0x9
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9
	.4byte	.LASF51
	.byte	0x6
	.byte	0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x9
	.4byte	.LASF55
	.byte	0x9
	.byte	0x9
	.4byte	.LASF56
	.byte	0xa
	.byte	0
	.byte	0xb
	.4byte	0x85
	.4byte	0x1f7
	.byte	0xc
	.4byte	0x7c
	.byte	0x40
	.byte	0
	.byte	0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0x85
	.byte	0xf
	.4byte	0x83
	.byte	0xa
	.4byte	.LASF58
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x96
	.byte	0x6
	.4byte	0x270
	.byte	0x9
	.4byte	.LASF59
	.byte	0
	.byte	0x9
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9
	.4byte	.LASF61
	.byte	0x2
	.byte	0x9
	.4byte	.LASF62
	.byte	0x3
	.byte	0x9
	.4byte	.LASF63
	.byte	0x4
	.byte	0x9
	.4byte	.LASF64
	.byte	0x5
	.byte	0x9
	.4byte	.LASF65
	.byte	0x11
	.byte	0x9
	.4byte	.LASF66
	.byte	0x12
	.byte	0x9
	.4byte	.LASF67
	.byte	0x13
	.byte	0x9
	.4byte	.LASF68
	.byte	0x14
	.byte	0x9
	.4byte	.LASF69
	.byte	0x15
	.byte	0x9
	.4byte	.LASF70
	.byte	0x6
	.byte	0x9
	.4byte	.LASF71
	.byte	0x7
	.byte	0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0x9
	.4byte	.LASF73
	.byte	0x9
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF74
	.byte	0xb
	.4byte	0x85
	.4byte	0x287
	.byte	0xc
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	0x85
	.4byte	0x297
	.byte	0xc
	.4byte	0x7c
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x41
	.byte	0x12
	.4byte	0xa3
	.byte	0xd
	.4byte	.LASF76
	.byte	0x1
	.byte	0x9
	.byte	0xc
	.4byte	0x270
	.byte	0x5
	.byte	0x3
	.4byte	wifi_connected
	.byte	0xd
	.4byte	.LASF77
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.4byte	0x277
	.byte	0x5
	.byte	0x3
	.4byte	wifi_ip
	.byte	0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0xb
	.byte	0x19
	.4byte	0x1f7
	.byte	0x5
	.byte	0x3
	.4byte	wifi_interface
	.byte	0xe
	.4byte	.LASF79
	.byte	0x1
	.byte	0x7c
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x310
	.byte	0xf
	.4byte	.LVL35
	.4byte	0x6d0
	.4byte	0x306
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x11
	.4byte	.LVL36
	.4byte	0x6dc
	.byte	0
	.byte	0xe
	.4byte	.LASF80
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x347
	.byte	0xf
	.4byte	.LVL33
	.4byte	0x6d0
	.4byte	0x33d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x11
	.4byte	.LVL34
	.4byte	0x6e8
	.byte	0
	.byte	0x12
	.4byte	.LASF106
	.byte	0x1
	.byte	0x73
	.byte	0xd
	.4byte	0x91
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF81
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b0
	.byte	0xf
	.4byte	.LVL30
	.4byte	0x6d0
	.4byte	0x38a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x13
	.4byte	.LVL31
	.4byte	0x6f4
	.byte	0x14
	.4byte	.LVL32
	.4byte	0x700
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF107
	.byte	0x1
	.byte	0x45
	.byte	0x5
	.4byte	0x270
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x4bb
	.byte	0xd
	.4byte	.LASF82
	.byte	0x1
	.byte	0x4a
	.byte	0x9
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x473
	.byte	0x17
	.string	"ip"
	.byte	0x1
	.byte	0x51
	.byte	0x16
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x17
	.string	"gw"
	.byte	0x1
	.byte	0x51
	.byte	0x1e
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xd
	.4byte	.LASF83
	.byte	0x1
	.byte	0x51
	.byte	0x26
	.4byte	0xa3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xf
	.4byte	.LVL25
	.4byte	0x70c
	.4byte	0x431
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x64
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0xf
	.4byte	.LVL26
	.4byte	0x718
	.4byte	0x456
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x18
	.4byte	.LVL27
	.4byte	0x6d0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL24
	.4byte	0x725
	.4byte	0x487
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x60
	.byte	0
	.byte	0xf
	.4byte	.LVL28
	.4byte	0x6d0
	.4byte	0x49e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x18
	.4byte	.LVL29
	.4byte	0x700
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF84
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x64e
	.byte	0x19
	.4byte	.LASF85
	.byte	0x1
	.byte	0x1a
	.byte	0x1f
	.4byte	0x91
	.4byte	.LLST0
	.byte	0x19
	.4byte	.LASF86
	.byte	0x1
	.byte	0x1a
	.byte	0x31
	.4byte	0x91
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF82
	.byte	0x1
	.byte	0x2e
	.byte	0x9
	.4byte	0x75
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0xd
	.4byte	.LASF87
	.byte	0x1
	.byte	0x38
	.byte	0xa
	.4byte	0x287
	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0xd
	.4byte	.LASF88
	.byte	0x1
	.byte	0x39
	.byte	0xa
	.4byte	0x1e7
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x6d0
	.4byte	0x53e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL10
	.4byte	0x6d0
	.byte	0xf
	.4byte	.LVL11
	.4byte	0x6d0
	.4byte	0x55e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x13
	.4byte	.LVL12
	.4byte	0x731
	.byte	0xf
	.4byte	.LVL13
	.4byte	0x6d0
	.4byte	0x57e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0xf
	.4byte	.LVL14
	.4byte	0x725
	.4byte	0x593
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf4,0x7e
	.byte	0
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x6d0
	.4byte	0x5aa
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x13
	.4byte	.LVL16
	.4byte	0x6f4
	.byte	0xf
	.4byte	.LVL17
	.4byte	0x73d
	.4byte	0x5c8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0xf
	.4byte	.LVL18
	.4byte	0x74a
	.4byte	0x5e9
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xf8,0x7e
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0xf
	.4byte	.LVL19
	.4byte	0x74a
	.4byte	0x60a
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0x9c,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL20
	.4byte	0x756
	.4byte	0x63a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xf8,0x7e
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x9c,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL21
	.4byte	0x6d0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x6d0
	.byte	0xf
	.4byte	.LVL0
	.4byte	0x6d0
	.4byte	0x67b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xf
	.4byte	.LVL1
	.4byte	0x762
	.4byte	0x69c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0xf
	.4byte	.LVL2
	.4byte	0x700
	.4byte	0x6bc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x6d0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xa
	.byte	0x35
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xa
	.byte	0x34
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x7
	.byte	0xd3
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xb
	.byte	0x26
	.byte	0x7
	.byte	0x1a
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x7
	.byte	0xcc
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x10a
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x7
	.byte	0xd4
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x7
	.byte	0xc6
	.byte	0x12
	.byte	0x1b
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xc
	.2byte	0x2f6
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xb
	.byte	0x2c
	.byte	0x7
	.byte	0x1a
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x7
	.byte	0xd2
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0xb
	.byte	0x21
	.byte	0x8
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1b
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
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL23
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"MEMP_ALTCP_PCB"
.LASF104:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_interface.c"
.LASF73:
	.string	"WIFI_STATE_NO_AP_FOUND"
.LASF100:
	.string	"strncpy"
.LASF67:
	.string	"WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING"
.LASF49:
	.string	"TASK_SM"
.LASF72:
	.string	"WIFI_STATE_PSK_ERROR"
.LASF35:
	.string	"PM_MODE_STA_NONE"
.LASF82:
	.string	"state"
.LASF2:
	.string	"short int"
.LASF85:
	.string	"ssid"
.LASF18:
	.string	"MEMP_TCP_SEG"
.LASF34:
	.string	"PM_LEVEL"
.LASF99:
	.string	"vTaskDelay"
.LASF9:
	.string	"long long unsigned int"
.LASF28:
	.string	"MEMP_PBUF_POOL"
.LASF6:
	.string	"__uint32_t"
.LASF95:
	.string	"wifi_mgmr_sta_ip_get"
.LASF51:
	.string	"TASK_BAM"
.LASF107:
	.string	"wifi_is_connected"
.LASF69:
	.string	"WIFI_STATE_WITH_AP_DISCONNECT"
.LASF91:
	.string	"wifi_mgmr_api_enable_autoreconnect"
.LASF25:
	.string	"MEMP_SYS_TIMEOUT"
.LASF33:
	.string	"lwip_internal_netif_client_data_index"
.LASF42:
	.string	"PM_MODE_MAX"
.LASF71:
	.string	"WIFI_STATE_SNIFFER"
.LASF32:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF58:
	.string	"WIFI_STATE_ENUM_LIST"
.LASF101:
	.string	"wifi_mgmr_sta_connect"
.LASF62:
	.string	"WIFI_STATE_CONNECTED_IP_GETTING"
.LASF17:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF98:
	.string	"wifi_mgmr_sta_enable"
.LASF13:
	.string	"uint32_t"
.LASF55:
	.string	"TASK_API"
.LASF26:
	.string	"MEMP_NETDB"
.LASF50:
	.string	"TASK_APM"
.LASF65:
	.string	"WIFI_STATE_WITH_AP_IDLE"
.LASF37:
	.string	"PM_MODE_STA_MESH"
.LASF60:
	.string	"WIFI_STATE_IDLE"
.LASF38:
	.string	"PM_MODE_STA_DOZE"
.LASF86:
	.string	"pass"
.LASF8:
	.string	"long long int"
.LASF75:
	.string	"TickType_t"
.LASF45:
	.string	"TASK_MM"
.LASF59:
	.string	"WIFI_STATE_UNKNOWN"
.LASF102:
	.string	"memset"
.LASF79:
	.string	"wifi_enable_autoreconnect"
.LASF4:
	.string	"long int"
.LASF53:
	.string	"TASK_CFG"
.LASF106:
	.string	"wifi_get_ip"
.LASF90:
	.string	"printf"
.LASF5:
	.string	"__uint8_t"
.LASF41:
	.string	"PM_MODE_AP_IDLE"
.LASF68:
	.string	"WIFI_STATE_WITH_AP_CONNECTED_IP_GOT"
.LASF96:
	.string	"snprintf"
.LASF30:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF23:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF47:
	.string	"TASK_SCANU"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"TASK_NONE"
.LASF52:
	.string	"TASK_RXU"
.LASF36:
	.string	"PM_MODE_STA_IDLE"
.LASF29:
	.string	"MEMP_MAX"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF105:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/wifi_if"
.LASF54:
	.string	"TASK_LAST_EMB"
.LASF10:
	.string	"unsigned int"
.LASF61:
	.string	"WIFI_STATE_CONNECTING"
.LASF7:
	.string	"long unsigned int"
.LASF24:
	.string	"MEMP_IGMP_GROUP"
.LASF97:
	.string	"wifi_mgmr_sta_state_get"
.LASF88:
	.string	"pass_buf"
.LASF3:
	.string	"short unsigned int"
.LASF43:
	.string	"wifi_fw_task_id"
.LASF78:
	.string	"wifi_interface"
.LASF11:
	.string	"char"
.LASF63:
	.string	"WIFI_STATE_CONNECTED_IP_GOT"
.LASF22:
	.string	"MEMP_TCPIP_MSG_API"
.LASF77:
	.string	"wifi_ip"
.LASF94:
	.string	"strcpy"
.LASF74:
	.string	"_Bool"
.LASF27:
	.string	"MEMP_PBUF"
.LASF46:
	.string	"TASK_SCAN"
.LASF92:
	.string	"wifi_mgmr_api_disable_autoreconnect"
.LASF89:
	.string	"wifi_interface_init"
.LASF76:
	.string	"wifi_connected"
.LASF48:
	.string	"TASK_ME"
.LASF70:
	.string	"WIFI_STATE_IFDOWN"
.LASF14:
	.string	"MEMP_RAW_PCB"
.LASF103:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF64:
	.string	"WIFI_STATE_DISCONNECT"
.LASF83:
	.string	"mask"
.LASF93:
	.string	"wifi_mgmr_sta_disconnect"
.LASF84:
	.string	"wifi_connect"
.LASF80:
	.string	"wifi_disable_autoreconnect"
.LASF81:
	.string	"wifi_disconnect"
.LASF12:
	.string	"uint8_t"
.LASF87:
	.string	"ssid_buf"
.LASF21:
	.string	"MEMP_NETCONN"
.LASF57:
	.string	"wifi_interface_t"
.LASF39:
	.string	"PM_MODE_STA_COEX"
.LASF16:
	.string	"MEMP_TCP_PCB"
.LASF40:
	.string	"PM_MODE_STA_DOWN"
.LASF15:
	.string	"MEMP_UDP_PCB"
.LASF66:
	.string	"WIFI_STATE_WITH_AP_CONNECTING"
.LASF56:
	.string	"TASK_MAX"
.LASF20:
	.string	"MEMP_NETBUF"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
