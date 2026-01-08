	.file	"wifi_if.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.wifi_event_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[WIFI_IF] WiFi INIT DONE, starting background\r\n"
	.align	2
.LC1:
	.string	"[WIFI_IF] WiFi MGMR DONE\r\n"
	.align	2
.LC2:
	.string	"[WIFI_IF] WiFi connected and got IP\r\n"
	.align	2
.LC3:
	.string	"[WIFI_IF] WiFi connected (no IP yet), waiting for DHCP...\r\n"
	.align	2
.LC4:
	.string	"[WIFI_IF] WiFi connecting...\r\n"
	.align	2
.LC5:
	.string	"[WIFI_IF] WiFi disconnected\r\n"
	.section	.text.wifi_event_handler,"ax",@progbits
	.align	1
	.type	wifi_event_handler, @function
wifi_event_handler:
.LFB29:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_if.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 31 8 is_stmt 0
	lhu	a4,4(a0)
	li	a5,2
	bne	a4,a5,.L23
.LVL1:
.LBB7:
.LBB8:
	.loc 1 35 5 is_stmt 1
	lhu	a5,6(a0)
	li	a4,7
	addi	a5,a5,-1
	slli	a5,a5,16
	srli	a5,a5,16
	bgtu	a5,a4,.L23
.LBE8:
.LBE7:
	.loc 1 28 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	lui	a4,%hi(.L5)
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	slli	a5,a5,2
	addi	a4,a4,%lo(.L5)
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.wifi_event_handler,"a",@progbits
	.align	2
	.align	2
.L5:
	.word	.L10
	.word	.L9
	.word	.L1
	.word	.L8
	.word	.L7
	.word	.L1
	.word	.L6
	.word	.L4
	.section	.text.wifi_event_handler
.L10:
.LBB21:
.LBB12:
	.loc 1 37 13 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL2:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL3:
	.loc 1 38 13
.LBE12:
.LBE21:
	.loc 1 87 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
.LBB22:
.LBB13:
	.loc 1 38 13
	lui	a0,%hi(.LANCHOR0)
.LBE13:
.LBE22:
	.loc 1 87 1
.LBB23:
.LBB14:
	.loc 1 38 13
	addi	a0,a0,%lo(.LANCHOR0)
.LBE14:
.LBE23:
	.loc 1 87 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB24:
.LBB15:
	.loc 1 38 13
	tail	wifi_mgmr_start_background
.LVL4:
.L9:
	.cfi_restore_state
	.loc 1 42 13 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL5:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL6:
	.loc 1 43 13
	.loc 1 43 31 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	li	a4,1
	sb	a4,%lo(.LANCHOR1)(a5)
	.loc 1 44 13 is_stmt 1
.L1:
.LBE15:
.LBE24:
	.loc 1 87 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L6:
	.cfi_restore_state
.LBB25:
.LBB16:
	.loc 1 47 13 is_stmt 1
	lui	a0,%hi(.LC2)
.LVL8:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL9:
	.loc 1 48 13
	.loc 1 48 30 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	li	a4,1
	sb	a4,%lo(.LANCHOR2)(a5)
	.loc 1 49 13 is_stmt 1
	.loc 1 49 31 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 50 13 is_stmt 1
	.loc 1 50 17 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a5,%lo(.LANCHOR4)(a5)
.L28:
.LBB9:
	.loc 1 77 20
	beq	a5,zero,.L1
	.loc 1 78 21 is_stmt 1
.LBE9:
.LBE16:
.LBE25:
	.loc 1 87 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB26:
.LBB17:
.LBB10:
	.loc 1 78 21
	jr	a5
.LVL10:
.L8:
	.cfi_restore_state
.LBE10:
	.loc 1 56 13 is_stmt 1
.LBE17:
.LBE26:
	.loc 1 87 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
.LBB27:
.LBB18:
	.loc 1 56 13
	lui	a0,%hi(.LC3)
.LVL11:
.LBE18:
.LBE27:
	.loc 1 87 1
.LBB28:
.LBB19:
	.loc 1 56 13
	addi	a0,a0,%lo(.LC3)
.LBE19:
.LBE28:
	.loc 1 87 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB29:
.LBB20:
	.loc 1 56 13
	tail	printf
.LVL12:
.L4:
	.cfi_restore_state
	.loc 1 61 13 is_stmt 1
	lui	a0,%hi(.LC4)
.LVL13:
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL14:
	.loc 1 62 13
	.loc 1 62 31 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	li	a4,1
	sb	a4,%lo(.LANCHOR3)(a5)
	.loc 1 63 13 is_stmt 1
	j	.L1
.LVL15:
.L7:
.LBB11:
	.loc 1 66 13
	lui	a0,%hi(.LC5)
.LVL16:
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL17:
	.loc 1 67 12
	.loc 1 67 17 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	lbu	a4,0(a5)
.LVL18:
	.loc 1 68 13 is_stmt 1
	.loc 1 68 30 is_stmt 0
	sb	zero,0(a5)
	.loc 1 69 13 is_stmt 1
	.loc 1 69 31 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 71 13 is_stmt 1
	.loc 1 71 16 is_stmt 0
	beq	a4,zero,.L12
	.loc 1 72 17 is_stmt 1
	.loc 1 72 21 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a5,%lo(.LANCHOR5)(a5)
	j	.L28
.L12:
	.loc 1 77 17 is_stmt 1
	.loc 1 77 21 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	lw	a5,%lo(.LANCHOR6)(a5)
	j	.L28
.LVL19:
.L23:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	ret
.LBE11:
.LBE20:
.LBE29:
	.cfi_endproc
.LFE29:
	.size	wifi_event_handler, .-wifi_event_handler
	.section	.rodata.wifi_if_init.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"[WIFI_IF] WiFi already initialized\r\n"
	.align	2
.LC7:
	.string	"[WIFI_IF] Initializing WiFi...\r\n"
	.section	.text.wifi_if_init,"ax",@progbits
	.align	1
	.globl	wifi_if_init
	.type	wifi_if_init, @function
wifi_if_init:
.LFB30:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
	.loc 1 91 5
	.loc 1 93 5
	.loc 1 90 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 93 9
	lui	a5,%hi(.LANCHOR7)
	.loc 1 90 1
	.loc 1 93 9
	addi	a5,a5,%lo(.LANCHOR7)
	.loc 1 93 8
	lbu	a4,0(a5)
	beq	a4,zero,.L31
	.loc 1 94 9 is_stmt 1
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL20:
	.loc 1 95 9
.L32:
	.loc 1 110 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L31:
	.cfi_restore_state
	.loc 1 98 5 is_stmt 1
	.loc 1 99 5 is_stmt 0
	lui	a0,%hi(.LC7)
	.loc 1 98 20
	li	a4,1
	.loc 1 99 5
	addi	a0,a0,%lo(.LC7)
	.loc 1 98 20
	sb	a4,0(a5)
	.loc 1 99 5 is_stmt 1
	call	printf
.LVL21:
	.loc 1 101 5
	lui	a1,%hi(wifi_event_handler)
	li	a2,0
	addi	a1,a1,%lo(wifi_event_handler)
	li	a0,2
	call	aos_register_event_filter
.LVL22:
	.loc 1 104 5
	call	hal_wifi_start_firmware_task
.LVL23:
	.loc 1 107 5
	li	a2,0
	li	a1,1
	li	a0,2
	call	aos_post_event
.LVL24:
	.loc 1 109 5
	.loc 1 109 12 is_stmt 0
	j	.L32
	.cfi_endproc
.LFE30:
	.size	wifi_if_init, .-wifi_if_init
	.section	.rodata.wifi_if_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"[WIFI_IF] WiFi already connecting\r\n"
	.align	2
.LC9:
	.string	"[WIFI_IF] WiFi MGMR not ready, cannot connect yet\r\n"
	.align	2
.LC10:
	.string	"[WIFI_IF] Connecting to WiFi: %s\r\n"
	.section	.text.wifi_if_connect,"ax",@progbits
	.align	1
	.globl	wifi_if_connect
	.type	wifi_if_connect, @function
wifi_if_connect:
.LFB31:
	.loc 1 113 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 114 5
	.loc 1 115 5
	.loc 1 113 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	ra,60(sp)
	sw	s2,48(sp)
	sw	s4,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.loc 1 113 1
	mv	s1,a0
	mv	s3,a1
	.loc 1 115 27
	li	a2,28
	li	a1,0
.LVL26:
	addi	a0,s0,-60
.LVL27:
	call	memset
.LVL28:
	.loc 1 117 5 is_stmt 1
	.loc 1 118 16 is_stmt 0
	li	a0,-1
	.loc 1 117 8
	beq	s1,zero,.L34
	.loc 1 117 21 discriminator 1
	beq	s3,zero,.L34
	.loc 1 121 5 is_stmt 1
	.loc 1 121 9 is_stmt 0
	lui	s2,%hi(.LANCHOR3)
	addi	s2,s2,%lo(.LANCHOR3)
	.loc 1 121 8
	lbu	a5,0(s2)
	beq	a5,zero,.L36
	.loc 1 122 9 is_stmt 1
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL29:
	.loc 1 123 9
.L41:
	.loc 1 129 9
	.loc 1 129 16 is_stmt 0
	li	a0,-1
.L34:
	.loc 1 150 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL30:
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL31:
	lw	s4,40(sp)
	.cfi_restore 20
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL32:
.L36:
	.cfi_restore_state
	.loc 1 126 5 is_stmt 1
	.loc 1 126 8 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lbu	a5,%lo(.LANCHOR1)(a5)
	bne	a5,zero,.L37
	.loc 1 127 9 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL33:
	.loc 1 128 9
	.loc 1 128 27 is_stmt 0
	sb	zero,0(s2)
	j	.L41
.L37:
	.loc 1 132 5 is_stmt 1
	lui	a0,%hi(.LC10)
	mv	a1,s1
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL34:
	.loc 1 133 5
	.loc 1 133 23 is_stmt 0
	li	s4,1
	sb	s4,0(s2)
	.loc 1 136 5 is_stmt 1
	.loc 1 136 22 is_stmt 0
	call	wifi_mgmr_sta_enable
.LVL35:
	mv	s2,a0
.LVL36:
	.loc 1 139 5 is_stmt 1
	call	wifi_mgmr_sta_autoconnect_enable
.LVL37:
	.loc 1 142 5
	li	a2,28
	li	a1,0
	addi	a0,s0,-60
	call	memset
.LVL38:
	.loc 1 143 5
	.loc 1 145 36 is_stmt 0
	li	a5,5
	.loc 1 149 12
	addi	a3,s0,-60
	mv	a2,s3
	mv	a1,s1
	mv	a0,s2
	.loc 1 143 19
	sw	zero,-60(s0)
	.loc 1 144 5 is_stmt 1
	.loc 1 144 28 is_stmt 0
	sw	s4,-56(s0)
	.loc 1 145 5 is_stmt 1
	.loc 1 145 36 is_stmt 0
	sw	a5,-52(s0)
	.loc 1 146 5 is_stmt 1
	.loc 1 146 28 is_stmt 0
	sb	zero,-44(s0)
	.loc 1 147 5 is_stmt 1
	.loc 1 147 32 is_stmt 0
	sb	s4,-40(s0)
	.loc 1 149 5 is_stmt 1
	.loc 1 149 12 is_stmt 0
	call	wifi_mgmr_sta_connect_ext
.LVL39:
	j	.L34
	.cfi_endproc
.LFE31:
	.size	wifi_if_connect, .-wifi_if_connect
	.section	.text.wifi_if_disconnect,"ax",@progbits
	.align	1
	.globl	wifi_if_disconnect
	.type	wifi_if_disconnect, @function
wifi_if_disconnect:
.LFB32:
	.loc 1 153 1 is_stmt 1
	.cfi_startproc
	.loc 1 155 5
	.loc 1 153 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 155 5
	call	wifi_mgmr_sta_autoconnect_disable
.LVL40:
	.loc 1 156 5 is_stmt 1
	call	wifi_mgmr_sta_disconnect
.LVL41:
	.loc 1 159 5
	.loc 1 160 5
	call	wifi_mgmr_api_idle
.LVL42:
	.loc 1 162 5
	.loc 1 165 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 162 22
	lui	a5,%hi(.LANCHOR2)
	sb	zero,%lo(.LANCHOR2)(a5)
	.loc 1 163 5 is_stmt 1
	.loc 1 163 23 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 164 5 is_stmt 1
	.loc 1 165 1 is_stmt 0
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	wifi_if_disconnect, .-wifi_if_disconnect
	.section	.rodata.wifi_if_disable.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"[WIFI_IF] Completely disabling WiFi STA to release radio for BLE\r\n"
	.align	2
.LC12:
	.string	"[WIFI_IF] Disabling WiFi STA interface to release radio...\r\n"
	.align	2
.LC13:
	.string	"[WIFI_IF] Warning: Could not get WiFi interface, may already be disabled\r\n"
	.align	2
.LC14:
	.string	"[WIFI_IF] Waiting for WiFi stack to fully release radio...\r\n"
	.align	2
.LC15:
	.string	"[WIFI_IF] WiFi STA disabled and radio should be released\r\n"
	.section	.text.wifi_if_disable,"ax",@progbits
	.align	1
	.globl	wifi_if_disable
	.type	wifi_if_disable, @function
wifi_if_disable:
.LFB33:
	.loc 1 168 1 is_stmt 1
	.cfi_startproc
	.loc 1 169 5
	.loc 1 168 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 169 5
	lui	a0,%hi(.LC11)
	.loc 1 168 1
	.loc 1 169 5
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL43:
	.loc 1 172 5 is_stmt 1
	call	wifi_mgmr_sta_autoconnect_disable
.LVL44:
	.loc 1 175 5
	.loc 1 175 9 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	.loc 1 175 8
	lbu	a4,%lo(.LANCHOR2)(a5)
	lui	s1,%hi(.LANCHOR3)
	addi	s2,a5,%lo(.LANCHOR2)
	addi	s1,s1,%lo(.LANCHOR3)
	bne	a4,zero,.L45
	.loc 1 175 26 discriminator 1
	lbu	a5,0(s1)
	beq	a5,zero,.L46
.L45:
	.loc 1 176 9 is_stmt 1
	call	wifi_mgmr_sta_disconnect
.LVL45:
.L46:
	.loc 1 180 5
	.loc 1 181 5
	call	wifi_mgmr_api_idle
.LVL46:
	.loc 1 186 5
	.loc 1 187 5
	.loc 1 187 22 is_stmt 0
	call	wifi_mgmr_sta_enable
.LVL47:
	.loc 1 187 20
	sw	a0,-20(s0)
	.loc 1 188 5 is_stmt 1
	.loc 1 188 8 is_stmt 0
	beq	a0,zero,.L47
	.loc 1 189 9 is_stmt 1
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL48:
	.loc 1 190 9
	addi	a0,s0,-20
	call	wifi_mgmr_sta_disable
.LVL49:
.L48:
	.loc 1 195 5
	.loc 1 199 5 is_stmt 0
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	.loc 1 195 22
	sb	zero,0(s2)
	.loc 1 196 5 is_stmt 1
	.loc 1 196 23 is_stmt 0
	sb	zero,0(s1)
	.loc 1 199 5 is_stmt 1
	call	printf
.LVL50:
	.loc 1 200 5
	li	a0,4096
	addi	a0,a0,-1096
	call	aos_msleep
.LVL51:
	.loc 1 202 5
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL52:
	.loc 1 203 5
	.loc 1 204 1 is_stmt 0
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
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L47:
	.cfi_restore_state
	.loc 1 192 9 is_stmt 1
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL53:
	j	.L48
	.cfi_endproc
.LFE33:
	.size	wifi_if_disable, .-wifi_if_disable
	.section	.rodata.wifi_if_enable.str1.4,"aMS",@progbits,1
	.align	2
.LC16:
	.string	"[WIFI_IF] Re-enabling WiFi STA interface...\r\n"
	.align	2
.LC17:
	.string	"[WIFI_IF] WiFi STA interface re-enabled\r\n"
	.align	2
.LC18:
	.string	"[WIFI_IF] Warning: Failed to re-enable WiFi STA interface\r\n"
	.section	.text.wifi_if_enable,"ax",@progbits
	.align	1
	.globl	wifi_if_enable
	.type	wifi_if_enable, @function
wifi_if_enable:
.LFB34:
	.loc 1 207 1
	.cfi_startproc
	.loc 1 208 5
	.loc 1 207 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 208 5
	lui	a0,%hi(.LC16)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 207 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 208 5
	addi	a0,a0,%lo(.LC16)
	call	printf
.LVL54:
	.loc 1 211 5 is_stmt 1
	.loc 1 212 5
	.loc 1 212 22 is_stmt 0
	call	wifi_mgmr_sta_enable
.LVL55:
	.loc 1 214 5 is_stmt 1
	.loc 1 214 8 is_stmt 0
	beq	a0,zero,.L54
	.loc 1 215 9 is_stmt 1
	lui	a0,%hi(.LC17)
.LVL56:
	addi	a0,a0,%lo(.LC17)
.L57:
	.loc 1 217 9 is_stmt 0
	call	printf
.LVL57:
	.loc 1 220 5 is_stmt 1
	.loc 1 221 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL58:
.L54:
	.cfi_restore_state
	.loc 1 217 9 is_stmt 1
	lui	a0,%hi(.LC18)
.LVL59:
	addi	a0,a0,%lo(.LC18)
	j	.L57
	.cfi_endproc
.LFE34:
	.size	wifi_if_enable, .-wifi_if_enable
	.section	.text.wifi_if_is_connected,"ax",@progbits
	.align	1
	.globl	wifi_if_is_connected
	.type	wifi_if_is_connected, @function
wifi_if_is_connected:
.LFB35:
	.loc 1 224 1
	.cfi_startproc
	.loc 1 225 5
	.loc 1 224 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 226 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR2)
	lbu	a0,%lo(.LANCHOR2)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	wifi_if_is_connected, .-wifi_if_is_connected
	.section	.text.wifi_if_is_mgmr_ready,"ax",@progbits
	.align	1
	.globl	wifi_if_is_mgmr_ready
	.type	wifi_if_is_mgmr_ready, @function
wifi_if_is_mgmr_ready:
.LFB36:
	.loc 1 229 1 is_stmt 1
	.cfi_startproc
	.loc 1 230 5
	.loc 1 229 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 231 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lui	a5,%hi(.LANCHOR1)
	lbu	a0,%lo(.LANCHOR1)(a5)
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	wifi_if_is_mgmr_ready, .-wifi_if_is_mgmr_ready
	.section	.text.wifi_if_set_connected_cb,"ax",@progbits
	.align	1
	.globl	wifi_if_set_connected_cb
	.type	wifi_if_set_connected_cb, @function
wifi_if_set_connected_cb:
.LFB37:
	.loc 1 234 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 235 5
	.loc 1 234 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 236 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 235 20
	lui	a5,%hi(.LANCHOR4)
	sw	a0,%lo(.LANCHOR4)(a5)
	.loc 1 236 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	wifi_if_set_connected_cb, .-wifi_if_set_connected_cb
	.section	.text.wifi_if_set_disconnected_cb,"ax",@progbits
	.align	1
	.globl	wifi_if_set_disconnected_cb
	.type	wifi_if_set_disconnected_cb, @function
wifi_if_set_disconnected_cb:
.LFB38:
	.loc 1 239 1 is_stmt 1
	.cfi_startproc
.LVL61:
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
	.loc 1 240 23
	lui	a5,%hi(.LANCHOR5)
	sw	a0,%lo(.LANCHOR5)(a5)
	.loc 1 241 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	wifi_if_set_disconnected_cb, .-wifi_if_set_disconnected_cb
	.section	.text.wifi_if_set_connect_failed_cb,"ax",@progbits
	.align	1
	.globl	wifi_if_set_connect_failed_cb
	.type	wifi_if_set_connect_failed_cb, @function
wifi_if_set_connect_failed_cb:
.LFB39:
	.loc 1 244 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 245 5
	.loc 1 244 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 246 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 245 25
	lui	a5,%hi(.LANCHOR6)
	sw	a0,%lo(.LANCHOR6)(a5)
	.loc 1 246 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	wifi_if_set_connect_failed_cb, .-wifi_if_set_connect_failed_cb
	.section	.sbss.s_connect_failed_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	s_connect_failed_cb, @object
	.size	s_connect_failed_cb, 4
s_connect_failed_cb:
	.zero	4
	.section	.sbss.s_connected_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	s_connected_cb, @object
	.size	s_connected_cb, 4
s_connected_cb:
	.zero	4
	.section	.sbss.s_disconnected_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	s_disconnected_cb, @object
	.size	s_disconnected_cb, 4
s_disconnected_cb:
	.zero	4
	.section	.sbss.s_wifi_connected,"aw",@nobits
	.set	.LANCHOR2,. + 0
	.type	s_wifi_connected, @object
	.size	s_wifi_connected, 1
s_wifi_connected:
	.zero	1
	.section	.sbss.s_wifi_connecting,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	s_wifi_connecting, @object
	.size	s_wifi_connecting, 1
s_wifi_connecting:
	.zero	1
	.section	.sbss.s_wifi_mgmr_ready,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	s_wifi_mgmr_ready, @object
	.size	s_wifi_mgmr_ready, 1
s_wifi_mgmr_ready:
	.zero	1
	.section	.sbss.wifi_init_done.0,"aw",@nobits
	.set	.LANCHOR7,. + 0
	.type	wifi_init_done.0, @object
	.size	wifi_init_done.0, 1
wifi_init_done.0:
	.zero	1
	.section	.sdata.s_wifi_conf,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_wifi_conf, @object
	.size	s_wifi_conf, 8
s_wifi_conf:
	.string	"VN"
	.zero	1
	.word	0
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_if.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 12 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 13 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_wifi.h"
	.file 14 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 15 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9ca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF123
	.byte	0xc
	.4byte	.LASF124
	.4byte	.LASF125
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x6
	.byte	0x10
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.4byte	0x37
	.byte	0x4
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x7
	.byte	0x10
	.4byte	0x31
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x10
	.4byte	0x31
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x63
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x7d
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x97
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x7
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.4byte	0xc2
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x8
	.4byte	0xc2
	.byte	0x3
	.byte	0x4
	.4byte	0xc9
	.byte	0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x57
	.byte	0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x71
	.byte	0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x8b
	.byte	0x9
	.byte	0x10
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x143
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x68
	.byte	0xe
	.4byte	0xec
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x6a
	.byte	0xe
	.4byte	0xe0
	.byte	0x4
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6c
	.byte	0xe
	.4byte	0xe0
	.byte	0x6
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6e
	.byte	0x13
	.4byte	0x97
	.byte	0x8
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x70
	.byte	0x13
	.4byte	0x97
	.byte	0xc
	.byte	0
	.byte	0x2
	.4byte	.LASF24
	.byte	0x5
	.byte	0x71
	.byte	0x3
	.4byte	0xf8
	.byte	0x3
	.byte	0x4
	.4byte	0x143
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0xe
	.byte	0x34
	.byte	0xe
	.4byte	0x1c4
	.byte	0xc
	.4byte	.LASF25
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc
	.4byte	.LASF27
	.byte	0x2
	.byte	0xc
	.4byte	.LASF28
	.byte	0x3
	.byte	0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0xc
	.4byte	.LASF32
	.byte	0x7
	.byte	0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0xc
	.4byte	.LASF34
	.byte	0x9
	.byte	0xc
	.4byte	.LASF35
	.byte	0xa
	.byte	0xc
	.4byte	.LASF36
	.byte	0xb
	.byte	0xc
	.4byte	.LASF37
	.byte	0xc
	.byte	0xc
	.4byte	.LASF38
	.byte	0xd
	.byte	0xc
	.4byte	.LASF39
	.byte	0xe
	.byte	0xc
	.4byte	.LASF40
	.byte	0xf
	.byte	0
	.byte	0xd
	.4byte	.LASF44
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0x6
	.byte	0x71
	.byte	0x6
	.4byte	0x1e9
	.byte	0xc
	.4byte	.LASF41
	.byte	0
	.byte	0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0xc
	.4byte	.LASF43
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0x7
	.byte	0x34
	.byte	0x6
	.4byte	0x22c
	.byte	0xc
	.4byte	.LASF46
	.byte	0
	.byte	0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc
	.4byte	.LASF48
	.byte	0x2
	.byte	0xc
	.4byte	.LASF49
	.byte	0x3
	.byte	0xc
	.4byte	.LASF50
	.byte	0x4
	.byte	0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0
	.byte	0x3
	.byte	0x4
	.4byte	0xd4
	.byte	0xd
	.4byte	.LASF54
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0x8
	.byte	0x9
	.byte	0xe
	.4byte	0x293
	.byte	0xc
	.4byte	.LASF55
	.byte	0xff
	.byte	0xc
	.4byte	.LASF56
	.byte	0
	.byte	0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc
	.4byte	.LASF58
	.byte	0x2
	.byte	0xc
	.4byte	.LASF59
	.byte	0x3
	.byte	0xc
	.4byte	.LASF60
	.byte	0x4
	.byte	0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0xc
	.4byte	.LASF63
	.byte	0x7
	.byte	0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0xc
	.4byte	.LASF66
	.byte	0x9
	.byte	0xc
	.4byte	.LASF67
	.byte	0xa
	.byte	0
	.byte	0xd
	.4byte	.LASF68
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0x9
	.byte	0xb
	.byte	0x6
	.4byte	0x2b2
	.byte	0xc
	.4byte	.LASF69
	.byte	0
	.byte	0xc
	.4byte	.LASF70
	.byte	0x1
	.byte	0
	.byte	0xe
	.4byte	.LASF76
	.byte	0x14
	.byte	0x9
	.byte	0x1a
	.byte	0x8
	.4byte	0x30e
	.byte	0xa
	.4byte	.LASF20
	.byte	0x9
	.byte	0x1b
	.byte	0x17
	.4byte	0x293
	.byte	0
	.byte	0xa
	.4byte	.LASF71
	.byte	0x9
	.byte	0x20
	.byte	0x9
	.4byte	0xac
	.byte	0x4
	.byte	0xa
	.4byte	.LASF72
	.byte	0x9
	.byte	0x23
	.byte	0xe
	.4byte	0x22c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF73
	.byte	0x9
	.byte	0x26
	.byte	0xd
	.4byte	0xd4
	.byte	0xc
	.byte	0xa
	.4byte	.LASF74
	.byte	0x9
	.byte	0x29
	.byte	0xe
	.4byte	0xe0
	.byte	0xe
	.byte	0xa
	.4byte	.LASF75
	.byte	0x9
	.byte	0x2b
	.byte	0xd
	.4byte	0xd4
	.byte	0x10
	.byte	0
	.byte	0xe
	.4byte	.LASF77
	.byte	0x1c
	.byte	0x9
	.byte	0x2f
	.byte	0x8
	.4byte	0x343
	.byte	0xf
	.string	"psk"
	.byte	0x9
	.byte	0x31
	.byte	0xb
	.4byte	0xbc
	.byte	0
	.byte	0xa
	.4byte	.LASF76
	.byte	0x9
	.byte	0x34
	.byte	0x14
	.4byte	0x2b2
	.byte	0x4
	.byte	0xa
	.4byte	.LASF78
	.byte	0x9
	.byte	0x3d
	.byte	0xe
	.4byte	0xec
	.byte	0x18
	.byte	0
	.byte	0x2
	.4byte	.LASF79
	.byte	0x9
	.byte	0x85
	.byte	0xf
	.4byte	0xba
	.byte	0xe
	.4byte	.LASF80
	.byte	0x8
	.byte	0x9
	.byte	0xb9
	.byte	0x10
	.4byte	0x377
	.byte	0xa
	.4byte	.LASF81
	.byte	0x9
	.byte	0xba
	.byte	0xa
	.4byte	0x377
	.byte	0
	.byte	0xa
	.4byte	.LASF82
	.byte	0x9
	.byte	0xbb
	.byte	0x9
	.4byte	0xac
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	0xc2
	.4byte	0x387
	.byte	0x11
	.4byte	0xb3
	.byte	0x2
	.byte	0
	.byte	0x2
	.4byte	.LASF83
	.byte	0x9
	.byte	0xbc
	.byte	0x3
	.4byte	0x34f
	.byte	0x12
	.4byte	.LASF85
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.4byte	0x3a5
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_connected
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF84
	.byte	0x12
	.4byte	.LASF86
	.byte	0x1
	.byte	0xd
	.byte	0xc
	.4byte	0x3a5
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_connecting
	.byte	0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x3a5
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_mgmr_ready
	.byte	0x12
	.4byte	.LASF88
	.byte	0x1
	.byte	0x11
	.byte	0x1f
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	s_connected_cb
	.byte	0x12
	.4byte	.LASF89
	.byte	0x1
	.byte	0x12
	.byte	0x22
	.4byte	0x38
	.byte	0x5
	.byte	0x3
	.4byte	s_disconnected_cb
	.byte	0x12
	.4byte	.LASF90
	.byte	0x1
	.byte	0x13
	.byte	0x24
	.4byte	0x44
	.byte	0x5
	.byte	0x3
	.4byte	s_connect_failed_cb
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x16
	.byte	0x14
	.4byte	0x387
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_conf
	.byte	0x13
	.4byte	.LASF92
	.byte	0x1
	.byte	0xf3
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0x43c
	.byte	0x14
	.string	"cb"
	.byte	0x1
	.byte	0xf3
	.byte	0x40
	.4byte	0x44
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x13
	.4byte	.LASF93
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x460
	.byte	0x14
	.string	"cb"
	.byte	0x1
	.byte	0xee
	.byte	0x3c
	.4byte	0x38
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x13
	.4byte	.LASF94
	.byte	0x1
	.byte	0xe9
	.byte	0x6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x484
	.byte	0x14
	.string	"cb"
	.byte	0x1
	.byte	0xe9
	.byte	0x36
	.4byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x15
	.4byte	.LASF95
	.byte	0x1
	.byte	0xe4
	.byte	0x5
	.4byte	0x3a5
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.4byte	.LASF96
	.byte	0x1
	.byte	0xdf
	.byte	0x5
	.4byte	0x3a5
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0xce
	.byte	0x5
	.4byte	0xac
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x504
	.byte	0x17
	.4byte	.LASF97
	.byte	0x1
	.byte	0xd3
	.byte	0x16
	.4byte	0x343
	.4byte	.LLST7
	.byte	0x18
	.4byte	.LVL54
	.4byte	0x919
	.4byte	0x4f1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x1a
	.4byte	.LVL55
	.4byte	0x925
	.byte	0x1a
	.4byte	.LVL57
	.4byte	0x919
	.byte	0
	.byte	0x16
	.4byte	.LASF99
	.byte	0x1
	.byte	0xa7
	.byte	0x5
	.4byte	0xac
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f6
	.byte	0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb4
	.byte	0x10
	.4byte	0xac
	.byte	0x12
	.4byte	.LASF97
	.byte	0x1
	.byte	0xba
	.byte	0x16
	.4byte	0x343
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.4byte	.LVL43
	.4byte	0x919
	.4byte	0x550
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x1a
	.4byte	.LVL44
	.4byte	0x931
	.byte	0x1a
	.4byte	.LVL45
	.4byte	0x93d
	.byte	0x1a
	.4byte	.LVL46
	.4byte	0x949
	.byte	0x1a
	.4byte	.LVL47
	.4byte	0x925
	.byte	0x18
	.4byte	.LVL48
	.4byte	0x919
	.4byte	0x58b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x18
	.4byte	.LVL49
	.4byte	0x955
	.4byte	0x59f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0x18
	.4byte	.LVL50
	.4byte	0x919
	.4byte	0x5b6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x18
	.4byte	.LVL51
	.4byte	0x961
	.4byte	0x5cb
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0xbb8
	.byte	0
	.byte	0x18
	.4byte	.LVL52
	.4byte	0x919
	.4byte	0x5e2
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x1c
	.4byte	.LVL53
	.4byte	0x919
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF100
	.byte	0x1
	.byte	0x98
	.byte	0x5
	.4byte	0xac
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x638
	.byte	0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0x9f
	.byte	0x10
	.4byte	0xac
	.byte	0x1a
	.4byte	.LVL40
	.4byte	0x931
	.byte	0x1a
	.4byte	.LVL41
	.4byte	0x93d
	.byte	0x1a
	.4byte	.LVL42
	.4byte	0x949
	.byte	0
	.byte	0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0x70
	.byte	0x5
	.4byte	0xac
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x74d
	.byte	0x1d
	.4byte	.LASF103
	.byte	0x1
	.byte	0x70
	.byte	0x21
	.4byte	0xce
	.4byte	.LLST4
	.byte	0x1d
	.4byte	.LASF104
	.byte	0x1
	.byte	0x70
	.byte	0x33
	.4byte	0xce
	.4byte	.LLST5
	.byte	0x17
	.4byte	.LASF97
	.byte	0x1
	.byte	0x72
	.byte	0x16
	.4byte	0x343
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LASF105
	.byte	0x1
	.byte	0x73
	.byte	0x1b
	.4byte	0x30e
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x18
	.4byte	.LVL28
	.4byte	0x96e
	.4byte	0x6af
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x18
	.4byte	.LVL29
	.4byte	0x919
	.4byte	0x6c6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x18
	.4byte	.LVL33
	.4byte	0x919
	.4byte	0x6dd
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x18
	.4byte	.LVL34
	.4byte	0x919
	.4byte	0x6fa
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL35
	.4byte	0x925
	.byte	0x1a
	.4byte	.LVL37
	.4byte	0x979
	.byte	0x18
	.4byte	.LVL38
	.4byte	0x985
	.4byte	0x72a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x1c
	.4byte	.LVL39
	.4byte	0x991
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF106
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0xac
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x7eb
	.byte	0x12
	.4byte	.LASF107
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	wifi_init_done.0
	.byte	0x18
	.4byte	.LVL20
	.4byte	0x919
	.4byte	0x790
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x18
	.4byte	.LVL21
	.4byte	0x919
	.4byte	0x7a7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x18
	.4byte	.LVL22
	.4byte	0x99d
	.4byte	0x7c8
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	wifi_event_handler
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1a
	.4byte	.LVL23
	.4byte	0x9a9
	.byte	0x1c
	.4byte	.LVL24
	.4byte	0x9b5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF126
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.byte	0x1
	.4byte	0x81f
	.byte	0x1f
	.4byte	.LASF108
	.byte	0x1
	.byte	0x1b
	.byte	0x2f
	.4byte	0x14f
	.byte	0x1f
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1b
	.byte	0x3c
	.4byte	0xba
	.byte	0x20
	.byte	0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x43
	.byte	0x11
	.4byte	0x3a5
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x7eb
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x919
	.byte	0x23
	.4byte	0x7f8
	.4byte	.LLST0
	.byte	0x23
	.4byte	0x804
	.4byte	.LLST1
	.byte	0x24
	.4byte	0x7eb
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.byte	0x25
	.4byte	0x7f8
	.byte	0x25
	.4byte	0x7f8
	.byte	0x23
	.4byte	0x804
	.4byte	.LLST2
	.byte	0x26
	.4byte	0x810
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0x891
	.byte	0x27
	.4byte	0x811
	.4byte	.LLST3
	.byte	0x1c
	.4byte	.LVL17
	.4byte	0x919
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL3
	.4byte	0x919
	.4byte	0x8a8
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x28
	.4byte	.LVL4
	.4byte	0x9c1
	.4byte	0x8bf
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x18
	.4byte	.LVL6
	.4byte	0x919
	.4byte	0x8d6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x18
	.4byte	.LVL9
	.4byte	0x919
	.4byte	0x8ed
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x28
	.4byte	.LVL12
	.4byte	0x919
	.4byte	0x904
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1c
	.4byte	.LVL14
	.4byte	0x919
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0xa
	.byte	0xc8
	.byte	0x5
	.byte	0x29
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x9
	.byte	0xc6
	.byte	0x12
	.byte	0x29
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x9
	.byte	0xd9
	.byte	0x5
	.byte	0x29
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
	.byte	0xd3
	.byte	0x5
	.byte	0x29
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb4
	.byte	0x10
	.byte	0x29
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x9
	.byte	0xc7
	.byte	0x5
	.byte	0x2a
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x207
	.byte	0xa
	.byte	0x2b
	.4byte	.LASF117
	.4byte	.LASF128
	.byte	0xf
	.byte	0
	.byte	0x29
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x9
	.byte	0xd8
	.byte	0x5
	.byte	0x29
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.byte	0x29
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x9
	.byte	0xd0
	.byte	0x5
	.byte	0x29
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x5
	.byte	0x83
	.byte	0x5
	.byte	0x29
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xd
	.byte	0x8
	.byte	0x5
	.byte	0x29
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x5
	.byte	0x99
	.byte	0x5
	.byte	0x29
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x9
	.byte	0xc3
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x14
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37-1
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB29
	.4byte	.LFE29
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
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF110:
	.string	"printf"
.LASF88:
	.string	"s_connected_cb"
.LASF98:
	.string	"wifi_if_enable"
.LASF36:
	.string	"MEMP_SYS_TIMEOUT"
.LASF121:
	.string	"aos_post_event"
.LASF52:
	.string	"PM_MODE_AP_IDLE"
.LASF37:
	.string	"MEMP_NETDB"
.LASF75:
	.string	"use_dhcp"
.LASF83:
	.string	"wifi_conf_t"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"__uint8_t"
.LASF55:
	.string	"TASK_NONE"
.LASF20:
	.string	"type"
.LASF111:
	.string	"wifi_mgmr_sta_enable"
.LASF104:
	.string	"password"
.LASF128:
	.string	"__builtin_memset"
.LASF13:
	.string	"long long unsigned int"
.LASF29:
	.string	"MEMP_TCP_SEG"
.LASF1:
	.string	"wifi_if_disconnected_cb_t"
.LASF101:
	.string	"wifi_mgmr_api_idle"
.LASF12:
	.string	"long long int"
.LASF122:
	.string	"wifi_mgmr_start_background"
.LASF74:
	.string	"freq"
.LASF113:
	.string	"wifi_mgmr_sta_disconnect"
.LASF92:
	.string	"wifi_if_set_connect_failed_cb"
.LASF70:
	.string	"AP_INFO_TYPE_PRESIST"
.LASF118:
	.string	"wifi_mgmr_sta_connect_ext"
.LASF46:
	.string	"PM_MODE_STA_NONE"
.LASF24:
	.string	"input_event_t"
.LASF112:
	.string	"wifi_mgmr_sta_autoconnect_disable"
.LASF9:
	.string	"long int"
.LASF81:
	.string	"country_code"
.LASF25:
	.string	"MEMP_RAW_PCB"
.LASF21:
	.string	"code"
.LASF45:
	.string	"PM_LEVEL"
.LASF43:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF17:
	.string	"uint16_t"
.LASF50:
	.string	"PM_MODE_STA_COEX"
.LASF26:
	.string	"MEMP_UDP_PCB"
.LASF10:
	.string	"__uint32_t"
.LASF53:
	.string	"PM_MODE_MAX"
.LASF22:
	.string	"value"
.LASF2:
	.string	"wifi_if_connect_failed_cb_t"
.LASF14:
	.string	"unsigned int"
.LASF35:
	.string	"MEMP_IGMP_GROUP"
.LASF60:
	.string	"TASK_SM"
.LASF80:
	.string	"wifi_conf"
.LASF103:
	.string	"ssid"
.LASF11:
	.string	"long unsigned int"
.LASF93:
	.string	"wifi_if_set_disconnected_cb"
.LASF87:
	.string	"s_wifi_mgmr_ready"
.LASF27:
	.string	"MEMP_TCP_PCB"
.LASF108:
	.string	"event"
.LASF8:
	.string	"short unsigned int"
.LASF79:
	.string	"wifi_interface_t"
.LASF125:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/wifi_if"
.LASF65:
	.string	"TASK_LAST_EMB"
.LASF47:
	.string	"PM_MODE_STA_IDLE"
.LASF54:
	.string	"wifi_fw_task_id"
.LASF62:
	.string	"TASK_BAM"
.LASF102:
	.string	"wifi_if_connect"
.LASF51:
	.string	"PM_MODE_STA_DOWN"
.LASF40:
	.string	"MEMP_MAX"
.LASF67:
	.string	"TASK_MAX"
.LASF59:
	.string	"TASK_ME"
.LASF95:
	.string	"wifi_if_is_mgmr_ready"
.LASF107:
	.string	"wifi_init_done"
.LASF56:
	.string	"TASK_MM"
.LASF85:
	.string	"s_wifi_connected"
.LASF86:
	.string	"s_wifi_connecting"
.LASF19:
	.string	"time"
.LASF109:
	.string	"private_data"
.LASF58:
	.string	"TASK_SCANU"
.LASF120:
	.string	"hal_wifi_start_firmware_task"
.LASF72:
	.string	"bssid"
.LASF66:
	.string	"TASK_API"
.LASF63:
	.string	"TASK_RXU"
.LASF61:
	.string	"TASK_APM"
.LASF82:
	.string	"channel_nums"
.LASF119:
	.string	"aos_register_event_filter"
.LASF84:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF124:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_if.c"
.LASF115:
	.string	"aos_msleep"
.LASF42:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF6:
	.string	"short int"
.LASF69:
	.string	"AP_INFO_TYPE_SUGGEST"
.LASF100:
	.string	"wifi_if_disconnect"
.LASF76:
	.string	"ap_info"
.LASF106:
	.string	"wifi_if_init"
.LASF41:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF94:
	.string	"wifi_if_set_connected_cb"
.LASF127:
	.string	"was_connected"
.LASF18:
	.string	"uint32_t"
.LASF48:
	.string	"PM_MODE_STA_MESH"
.LASF33:
	.string	"MEMP_TCPIP_MSG_API"
.LASF15:
	.string	"char"
.LASF91:
	.string	"s_wifi_conf"
.LASF96:
	.string	"wifi_if_is_connected"
.LASF77:
	.string	"ap_connect_adv"
.LASF31:
	.string	"MEMP_NETBUF"
.LASF7:
	.string	"__uint16_t"
.LASF28:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF32:
	.string	"MEMP_NETCONN"
.LASF30:
	.string	"MEMP_ALTCP_PCB"
.LASF39:
	.string	"MEMP_PBUF_POOL"
.LASF68:
	.string	"ap_info_type"
.LASF105:
	.string	"ext_param"
.LASF90:
	.string	"s_connect_failed_cb"
.LASF73:
	.string	"band"
.LASF123:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF49:
	.string	"PM_MODE_STA_DOZE"
.LASF114:
	.string	"wifi_mgmr_sta_disable"
.LASF117:
	.string	"memset"
.LASF44:
	.string	"lwip_internal_netif_client_data_index"
.LASF16:
	.string	"uint8_t"
.LASF116:
	.string	"wifi_mgmr_sta_autoconnect_enable"
.LASF126:
	.string	"wifi_event_handler"
.LASF78:
	.string	"flags"
.LASF0:
	.string	"wifi_if_connected_cb_t"
.LASF99:
	.string	"wifi_if_disable"
.LASF64:
	.string	"TASK_CFG"
.LASF23:
	.string	"extra"
.LASF71:
	.string	"time_to_live"
.LASF97:
	.string	"wifi_interface"
.LASF89:
	.string	"s_disconnected_cb"
.LASF38:
	.string	"MEMP_PBUF"
.LASF57:
	.string	"TASK_SCAN"
.LASF34:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
