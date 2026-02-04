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
	.string	"[WIFI_IF] WiFi INIT DONE\r\n"
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
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_if.c"
	.loc 1 31 1
	.cfi_startproc
.LVL0:
	.loc 1 32 5
	.loc 1 34 5
	.loc 1 34 8 is_stmt 0
	lhu	a4,4(a0)
	li	a5,2
	bne	a4,a5,.L23
.LVL1:
.LBB15:
.LBB16:
	.loc 1 38 5 is_stmt 1
	lhu	a5,6(a0)
	li	a4,7
	addi	a5,a5,-1
	slli	a5,a5,16
	srli	a5,a5,16
	bgtu	a5,a4,.L23
.LBE16:
.LBE15:
	.loc 1 31 1 is_stmt 0
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
.LBB29:
.LBB20:
	.loc 1 40 13 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL2:
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL3:
	.loc 1 41 13
.LBE20:
.LBE29:
	.loc 1 90 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
.LBB30:
.LBB21:
	.loc 1 41 13
	lui	a0,%hi(.LANCHOR0)
.LBE21:
.LBE30:
	.loc 1 90 1
.LBB31:
.LBB22:
	.loc 1 41 13
	addi	a0,a0,%lo(.LANCHOR0)
.LBE22:
.LBE31:
	.loc 1 90 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB32:
.LBB23:
	.loc 1 41 13
	tail	wifi_mgmr_start_background
.LVL4:
.L9:
	.cfi_restore_state
	.loc 1 45 13 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL5:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL6:
	.loc 1 46 13
	.loc 1 46 31 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	li	a4,1
	sb	a4,%lo(.LANCHOR1)(a5)
	.loc 1 47 13 is_stmt 1
.L1:
.LBE23:
.LBE32:
	.loc 1 90 1 is_stmt 0
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
.LBB33:
.LBB24:
	.loc 1 50 13 is_stmt 1
	lui	a0,%hi(.LC2)
.LVL8:
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL9:
	.loc 1 51 13
	.loc 1 51 30 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	li	a4,1
	sb	a4,%lo(.LANCHOR2)(a5)
	.loc 1 52 13 is_stmt 1
	.loc 1 52 31 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 53 13 is_stmt 1
	.loc 1 53 17 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a5,%lo(.LANCHOR4)(a5)
.L28:
.LBB17:
	.loc 1 80 20
	beq	a5,zero,.L1
	.loc 1 81 21 is_stmt 1
.LBE17:
.LBE24:
.LBE33:
	.loc 1 90 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB34:
.LBB25:
.LBB18:
	.loc 1 81 21
	jr	a5
.LVL10:
.L8:
	.cfi_restore_state
.LBE18:
	.loc 1 59 13 is_stmt 1
.LBE25:
.LBE34:
	.loc 1 90 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
.LBB35:
.LBB26:
	.loc 1 59 13
	lui	a0,%hi(.LC3)
.LVL11:
.LBE26:
.LBE35:
	.loc 1 90 1
.LBB36:
.LBB27:
	.loc 1 59 13
	addi	a0,a0,%lo(.LC3)
.LBE27:
.LBE36:
	.loc 1 90 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB37:
.LBB28:
	.loc 1 59 13
	tail	printf
.LVL12:
.L4:
	.cfi_restore_state
	.loc 1 64 13 is_stmt 1
	lui	a0,%hi(.LC4)
.LVL13:
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL14:
	.loc 1 65 13
	.loc 1 65 31 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	li	a4,1
	sb	a4,%lo(.LANCHOR3)(a5)
	.loc 1 66 13 is_stmt 1
	j	.L1
.LVL15:
.L7:
.LBB19:
	.loc 1 69 13
	lui	a0,%hi(.LC5)
.LVL16:
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL17:
	.loc 1 70 12
	.loc 1 70 17 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	lbu	a4,0(a5)
.LVL18:
	.loc 1 71 13 is_stmt 1
	.loc 1 71 30 is_stmt 0
	sb	zero,0(a5)
	.loc 1 72 13 is_stmt 1
	.loc 1 72 31 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 74 13 is_stmt 1
	.loc 1 74 16 is_stmt 0
	beq	a4,zero,.L12
	.loc 1 75 17 is_stmt 1
	.loc 1 75 21 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a5,%lo(.LANCHOR5)(a5)
	j	.L28
.L12:
	.loc 1 80 17 is_stmt 1
	.loc 1 80 21 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	lw	a5,%lo(.LANCHOR6)(a5)
	j	.L28
.LVL19:
.L23:
	.cfi_def_cfa_register 2
	.cfi_restore 1
	.cfi_restore 8
	ret
.LBE19:
.LBE28:
.LBE37:
	.cfi_endproc
.LFE29:
	.size	wifi_event_handler, .-wifi_event_handler
	.section	.rodata.wifi_if_init.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"[WIFI_IF] Initializing WiFi...\r\n"
	.section	.text.wifi_if_init,"ax",@progbits
	.align	1
	.globl	wifi_if_init
	.type	wifi_if_init, @function
wifi_if_init:
.LFB30:
	.loc 1 93 1 is_stmt 1
	.cfi_startproc
	.loc 1 94 5
	.loc 1 96 5
	.loc 1 96 9 is_stmt 0
	lui	a5,%hi(.LANCHOR7)
	addi	a5,a5,%lo(.LANCHOR7)
	.loc 1 96 8
	lbu	a4,0(a5)
	bne	a4,zero,.L33
	.loc 1 100 5 is_stmt 1
	.loc 1 93 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 101 5
	lui	a0,%hi(.LC6)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 93 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 100 20
	li	a4,1
	.loc 1 101 5
	addi	a0,a0,%lo(.LC6)
	.loc 1 100 20
	sb	a4,0(a5)
	.loc 1 101 5 is_stmt 1
	call	printf
.LVL20:
	.loc 1 103 5
	lui	a1,%hi(wifi_event_handler)
	li	a2,0
	addi	a1,a1,%lo(wifi_event_handler)
	li	a0,2
	call	aos_register_event_filter
.LVL21:
	.loc 1 106 5
	call	hal_wifi_start_firmware_task
.LVL22:
	.loc 1 109 5
	li	a2,0
	li	a1,1
	li	a0,2
	call	aos_post_event
.LVL23:
	.loc 1 111 5
	.loc 1 112 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L33:
	li	a0,0
	ret
	.cfi_endproc
.LFE30:
	.size	wifi_if_init, .-wifi_if_init
	.section	.rodata.wifi_if_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"[WIFI_IF] WiFi already connecting\r\n"
	.align	2
.LC8:
	.string	"[WIFI_IF] WiFi MGMR not ready, cannot connect yet\r\n"
	.align	2
.LC9:
	.string	"[WIFI_IF] Connecting to WiFi: %s\r\n"
	.section	.text.wifi_if_connect,"ax",@progbits
	.align	1
	.globl	wifi_if_connect
	.type	wifi_if_connect, @function
wifi_if_connect:
.LFB31:
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 115 1 is_stmt 0
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
	.loc 1 115 1
	mv	s1,a0
	mv	s3,a1
	.loc 1 117 27
	li	a2,28
	li	a1,0
.LVL25:
	addi	a0,s0,-60
.LVL26:
	call	memset
.LVL27:
	.loc 1 119 5 is_stmt 1
	.loc 1 120 16 is_stmt 0
	li	a0,-1
	.loc 1 119 8
	beq	s1,zero,.L36
	.loc 1 119 21 discriminator 1
	beq	s3,zero,.L36
	.loc 1 123 5 is_stmt 1
	.loc 1 123 9 is_stmt 0
	lui	s2,%hi(.LANCHOR3)
	addi	s2,s2,%lo(.LANCHOR3)
	.loc 1 123 8
	lbu	a5,0(s2)
	beq	a5,zero,.L38
	.loc 1 124 9 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL28:
	.loc 1 125 9
.L43:
	.loc 1 131 9
	.loc 1 131 16 is_stmt 0
	li	a0,-1
.L36:
	.loc 1 152 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	lw	s1,52(sp)
	.cfi_restore 9
.LVL29:
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL30:
	lw	s4,40(sp)
	.cfi_restore 20
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL31:
.L38:
	.cfi_restore_state
	.loc 1 128 5 is_stmt 1
	.loc 1 128 8 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lbu	a5,%lo(.LANCHOR1)(a5)
	bne	a5,zero,.L39
	.loc 1 129 9 is_stmt 1
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL32:
	.loc 1 130 9
	.loc 1 130 27 is_stmt 0
	sb	zero,0(s2)
	j	.L43
.L39:
	.loc 1 134 5 is_stmt 1
	lui	a0,%hi(.LC9)
	mv	a1,s1
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL33:
	.loc 1 135 5
	.loc 1 135 23 is_stmt 0
	li	s4,1
	sb	s4,0(s2)
	.loc 1 138 5 is_stmt 1
	.loc 1 138 22 is_stmt 0
	call	wifi_mgmr_sta_enable
.LVL34:
	mv	s2,a0
.LVL35:
	.loc 1 141 5 is_stmt 1
	call	wifi_mgmr_sta_autoconnect_enable
.LVL36:
	.loc 1 144 5
	li	a2,28
	li	a1,0
	addi	a0,s0,-60
	call	memset
.LVL37:
	.loc 1 145 5
	.loc 1 147 36 is_stmt 0
	li	a5,5
	.loc 1 151 12
	addi	a3,s0,-60
	mv	a2,s3
	mv	a1,s1
	mv	a0,s2
	.loc 1 145 19
	sw	zero,-60(s0)
	.loc 1 146 5 is_stmt 1
	.loc 1 146 28 is_stmt 0
	sw	s4,-56(s0)
	.loc 1 147 5 is_stmt 1
	.loc 1 147 36 is_stmt 0
	sw	a5,-52(s0)
	.loc 1 148 5 is_stmt 1
	.loc 1 148 28 is_stmt 0
	sb	zero,-44(s0)
	.loc 1 149 5 is_stmt 1
	.loc 1 149 32 is_stmt 0
	sb	s4,-40(s0)
	.loc 1 151 5 is_stmt 1
	.loc 1 151 12 is_stmt 0
	call	wifi_mgmr_sta_connect_ext
.LVL38:
	j	.L36
	.cfi_endproc
.LFE31:
	.size	wifi_if_connect, .-wifi_if_connect
	.section	.text.wifi_if_disconnect,"ax",@progbits
	.align	1
	.globl	wifi_if_disconnect
	.type	wifi_if_disconnect, @function
wifi_if_disconnect:
.LFB32:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
	.loc 1 157 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 157 5
	call	wifi_mgmr_sta_autoconnect_disable
.LVL39:
	.loc 1 158 5 is_stmt 1
	call	wifi_mgmr_sta_disconnect
.LVL40:
	.loc 1 161 5
	.loc 1 162 5
	call	wifi_mgmr_api_idle
.LVL41:
	.loc 1 164 5
	.loc 1 167 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 164 22
	lui	a5,%hi(.LANCHOR2)
	sb	zero,%lo(.LANCHOR2)(a5)
	.loc 1 165 5 is_stmt 1
	.loc 1 165 23 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	zero,%lo(.LANCHOR3)(a5)
	.loc 1 166 5 is_stmt 1
	.loc 1 167 1 is_stmt 0
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	wifi_if_disconnect, .-wifi_if_disconnect
	.section	.rodata.wifi_if_disable.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"[WIFI_IF] Completely disabling WiFi STA to release radio for BLE\r\n"
	.align	2
.LC11:
	.string	"[WIFI_IF] Disabling WiFi STA interface to release radio...\r\n"
	.align	2
.LC12:
	.string	"[WIFI_IF] Warning: Could not get WiFi interface, may already be disabled\r\n"
	.align	2
.LC13:
	.string	"[WIFI_IF] Waiting for WiFi stack to fully release radio...\r\n"
	.align	2
.LC14:
	.string	"[WIFI_IF] WiFi STA disabled and radio should be released\r\n"
	.section	.text.wifi_if_disable,"ax",@progbits
	.align	1
	.globl	wifi_if_disable
	.type	wifi_if_disable, @function
wifi_if_disable:
.LFB33:
	.loc 1 170 1 is_stmt 1
	.cfi_startproc
	.loc 1 171 5
	.loc 1 170 1 is_stmt 0
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
	.loc 1 171 5
	lui	a0,%hi(.LC10)
	.loc 1 170 1
	.loc 1 171 5
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL42:
	.loc 1 174 5 is_stmt 1
	call	wifi_mgmr_sta_autoconnect_disable
.LVL43:
	.loc 1 177 5
	.loc 1 177 9 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	.loc 1 177 8
	lbu	a4,%lo(.LANCHOR2)(a5)
	lui	s1,%hi(.LANCHOR3)
	addi	s2,a5,%lo(.LANCHOR2)
	addi	s1,s1,%lo(.LANCHOR3)
	bne	a4,zero,.L47
	.loc 1 177 26 discriminator 1
	lbu	a5,0(s1)
	beq	a5,zero,.L48
.L47:
	.loc 1 178 9 is_stmt 1
	call	wifi_mgmr_sta_disconnect
.LVL44:
.L48:
	.loc 1 182 5
	.loc 1 183 5
	call	wifi_mgmr_api_idle
.LVL45:
	.loc 1 188 5
	.loc 1 189 5
	.loc 1 189 22 is_stmt 0
	call	wifi_mgmr_sta_enable
.LVL46:
	.loc 1 189 20
	sw	a0,-20(s0)
	.loc 1 190 5 is_stmt 1
	.loc 1 190 8 is_stmt 0
	beq	a0,zero,.L49
	.loc 1 191 9 is_stmt 1
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL47:
	.loc 1 192 9
	addi	a0,s0,-20
	call	wifi_mgmr_sta_disable
.LVL48:
.L50:
	.loc 1 197 5
	.loc 1 201 5 is_stmt 0
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	.loc 1 197 22
	sb	zero,0(s2)
	.loc 1 198 5 is_stmt 1
	.loc 1 198 23 is_stmt 0
	sb	zero,0(s1)
	.loc 1 201 5 is_stmt 1
	call	printf
.LVL49:
	.loc 1 202 5
	li	a0,4096
	addi	a0,a0,-1096
	call	aos_msleep
.LVL50:
	.loc 1 204 5
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL51:
	.loc 1 205 5
	.loc 1 206 1 is_stmt 0
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
.L49:
	.cfi_restore_state
	.loc 1 194 9 is_stmt 1
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL52:
	j	.L50
	.cfi_endproc
.LFE33:
	.size	wifi_if_disable, .-wifi_if_disable
	.section	.rodata.wifi_if_enable.str1.4,"aMS",@progbits,1
	.align	2
.LC15:
	.string	"[WIFI_IF] Re-enabling WiFi STA interface...\r\n"
	.align	2
.LC16:
	.string	"[WIFI_IF] WiFi STA interface re-enabled\r\n"
	.align	2
.LC17:
	.string	"[WIFI_IF] Warning: Failed to re-enable WiFi STA interface\r\n"
	.section	.text.wifi_if_enable,"ax",@progbits
	.align	1
	.globl	wifi_if_enable
	.type	wifi_if_enable, @function
wifi_if_enable:
.LFB34:
	.loc 1 209 1
	.cfi_startproc
	.loc 1 210 5
	.loc 1 209 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 210 5
	lui	a0,%hi(.LC15)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 209 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 210 5
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL53:
	.loc 1 213 5 is_stmt 1
	.loc 1 214 5
	.loc 1 214 22 is_stmt 0
	call	wifi_mgmr_sta_enable
.LVL54:
	.loc 1 216 5 is_stmt 1
	.loc 1 216 8 is_stmt 0
	beq	a0,zero,.L56
	.loc 1 217 9 is_stmt 1
	lui	a0,%hi(.LC16)
.LVL55:
	addi	a0,a0,%lo(.LC16)
.L59:
	.loc 1 219 9 is_stmt 0
	call	printf
.LVL56:
	.loc 1 222 5 is_stmt 1
	.loc 1 223 1 is_stmt 0
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
.LVL57:
.L56:
	.cfi_restore_state
	.loc 1 219 9 is_stmt 1
	lui	a0,%hi(.LC17)
.LVL58:
	addi	a0,a0,%lo(.LC17)
	j	.L59
	.cfi_endproc
.LFE34:
	.size	wifi_if_enable, .-wifi_if_enable
	.section	.text.wifi_if_is_connected,"ax",@progbits
	.align	1
	.globl	wifi_if_is_connected
	.type	wifi_if_is_connected, @function
wifi_if_is_connected:
.LFB35:
	.loc 1 226 1
	.cfi_startproc
	.loc 1 227 5
	.loc 1 226 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 228 1
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
	.loc 1 231 1 is_stmt 1
	.cfi_startproc
	.loc 1 232 5
	.loc 1 231 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 233 1
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
	.loc 1 236 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 237 5
	.loc 1 236 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 238 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 237 20
	lui	a5,%hi(.LANCHOR4)
	sw	a0,%lo(.LANCHOR4)(a5)
	.loc 1 238 1
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
	.loc 1 241 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 242 5
	.loc 1 241 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 243 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 242 23
	lui	a5,%hi(.LANCHOR5)
	sw	a0,%lo(.LANCHOR5)(a5)
	.loc 1 243 1
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
	.loc 1 246 1 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 247 5
	.loc 1 246 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 248 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 247 25
	lui	a5,%hi(.LANCHOR6)
	sw	a0,%lo(.LANCHOR6)(a5)
	.loc 1 248 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	wifi_if_set_connect_failed_cb, .-wifi_if_set_connect_failed_cb
	.section	.rodata.app_wifi_connect.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"[APP][WiFi] MGMR not ready, cannot connect\r\n"
	.section	.text.app_wifi_connect,"ax",@progbits
	.align	1
	.globl	app_wifi_connect
	.type	app_wifi_connect, @function
app_wifi_connect:
.LFB40:
	.loc 1 251 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 252 5
	.loc 1 252 8 is_stmt 0
	beq	a0,zero,.L82
	.loc 1 252 21 discriminator 1
	beq	a1,zero,.L82
	.loc 1 256 5 is_stmt 1
.LBB38:
.LBB39:
	.loc 1 232 5
.LBE39:
.LBE38:
	.loc 1 256 8 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lbu	a5,%lo(.LANCHOR1)(a5)
	bne	a5,zero,.L74
	.loc 1 257 9 is_stmt 1
	.loc 1 251 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 257 9
	lui	a0,%hi(.LC18)
.LVL63:
	.loc 1 251 1
	.loc 1 257 9
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL64:
	.loc 1 258 9 is_stmt 1
	.loc 1 258 13 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	lw	a5,%lo(.LANCHOR8)(a5)
	.loc 1 258 12
	beq	a5,zero,.L70
	.loc 1 259 13 is_stmt 1
	jalr	a5
.LVL65:
.L70:
	.loc 1 265 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL66:
.L74:
	.loc 1 264 5 is_stmt 1
	.loc 1 264 12 is_stmt 0
	tail	wifi_if_connect
.LVL67:
.L82:
	.loc 1 265 1
	li	a0,-1
.LVL68:
	ret
	.cfi_endproc
.LFE40:
	.size	app_wifi_connect, .-app_wifi_connect
	.section	.text.app_wifi_set_connected_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_connected_cb
	.type	app_wifi_set_connected_cb, @function
app_wifi_set_connected_cb:
.LFB41:
	.loc 1 269 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 270 5
	.loc 1 271 5
.LBB40:
.LBB41:
	.loc 1 237 5
.LBE41:
.LBE40:
	.loc 1 269 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 272 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
.LBB43:
.LBB42:
	.loc 1 237 20
	lui	a5,%hi(.LANCHOR4)
	sw	a0,%lo(.LANCHOR4)(a5)
.LVL70:
.LBE42:
.LBE43:
	.loc 1 272 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE41:
	.size	app_wifi_set_connected_cb, .-app_wifi_set_connected_cb
	.section	.text.app_wifi_set_disconnected_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_disconnected_cb
	.type	app_wifi_set_disconnected_cb, @function
app_wifi_set_disconnected_cb:
.LFB42:
	.loc 1 275 1 is_stmt 1
	.cfi_startproc
.LVL71:
	.loc 1 276 5
	.loc 1 277 5
.LBB44:
.LBB45:
	.loc 1 242 5
.LBE45:
.LBE44:
	.loc 1 275 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 278 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
.LBB47:
.LBB46:
	.loc 1 242 23
	lui	a5,%hi(.LANCHOR5)
	sw	a0,%lo(.LANCHOR5)(a5)
.LVL72:
.LBE46:
.LBE47:
	.loc 1 278 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE42:
	.size	app_wifi_set_disconnected_cb, .-app_wifi_set_disconnected_cb
	.section	.text.app_wifi_set_connect_failed_cb,"ax",@progbits
	.align	1
	.globl	app_wifi_set_connect_failed_cb
	.type	app_wifi_set_connect_failed_cb, @function
app_wifi_set_connect_failed_cb:
.LFB43:
	.loc 1 281 1 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 282 5
	.loc 1 281 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 284 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 282 25
	lui	a5,%hi(.LANCHOR8)
	sw	a0,%lo(.LANCHOR8)(a5)
	.loc 1 283 5 is_stmt 1
.LVL74:
.LBB48:
.LBB49:
	.loc 1 247 5
	.loc 1 247 25 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	sw	a0,%lo(.LANCHOR6)(a5)
.LVL75:
.LBE49:
.LBE48:
	.loc 1 284 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE43:
	.size	app_wifi_set_connect_failed_cb, .-app_wifi_set_connect_failed_cb
	.section	.sbss.g_connect_failed_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	g_connect_failed_cb, @object
	.size	g_connect_failed_cb, 4
g_connect_failed_cb:
	.zero	4
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
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_if.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 12 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_wifi.h"
	.file 13 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF130
	.byte	0xc
	.4byte	.LASF131
	.4byte	.LASF132
	.4byte	.Ldebug_ranges0+0xa8
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
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x60
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	0x8f
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa
	.byte	0x10
	.4byte	0xae
	.byte	0x6
	.byte	0x4
	.4byte	0xb4
	.byte	0x7
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0xb
	.byte	0x10
	.4byte	0xae
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0xc
	.byte	0x10
	.4byte	0xae
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0xe
	.byte	0x10
	.4byte	0xae
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0xf
	.byte	0x10
	.4byte	0xae
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x10
	.byte	0x10
	.4byte	0xae
	.byte	0x8
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x8f
	.byte	0x6
	.byte	0x4
	.4byte	0x96
	.byte	0x9
	.byte	0x10
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x14a
	.byte	0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x68
	.byte	0xe
	.4byte	0x67
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6a
	.byte	0xe
	.4byte	0x54
	.byte	0x4
	.byte	0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6c
	.byte	0xe
	.4byte	0x54
	.byte	0x6
	.byte	0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6e
	.byte	0x13
	.4byte	0x73
	.byte	0x8
	.byte	0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x70
	.byte	0x13
	.4byte	0x73
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x71
	.byte	0x3
	.4byte	0xff
	.byte	0x6
	.byte	0x4
	.4byte	0x14a
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0xd
	.byte	0x34
	.byte	0xe
	.4byte	0x1cb
	.byte	0xc
	.4byte	.LASF26
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc
	.4byte	.LASF28
	.byte	0x2
	.byte	0xc
	.4byte	.LASF29
	.byte	0x3
	.byte	0xc
	.4byte	.LASF30
	.byte	0x4
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0xc
	.4byte	.LASF33
	.byte	0x7
	.byte	0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0xc
	.4byte	.LASF35
	.byte	0x9
	.byte	0xc
	.4byte	.LASF36
	.byte	0xa
	.byte	0xc
	.4byte	.LASF37
	.byte	0xb
	.byte	0xc
	.4byte	.LASF38
	.byte	0xc
	.byte	0xc
	.4byte	.LASF39
	.byte	0xd
	.byte	0xc
	.4byte	.LASF40
	.byte	0xe
	.byte	0xc
	.4byte	.LASF41
	.byte	0xf
	.byte	0
	.byte	0xd
	.4byte	.LASF45
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x5
	.byte	0x71
	.byte	0x6
	.4byte	0x1f0
	.byte	0xc
	.4byte	.LASF42
	.byte	0
	.byte	0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc
	.4byte	.LASF44
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	.LASF46
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x6
	.byte	0x34
	.byte	0x6
	.4byte	0x233
	.byte	0xc
	.4byte	.LASF47
	.byte	0
	.byte	0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc
	.4byte	.LASF49
	.byte	0x2
	.byte	0xc
	.4byte	.LASF50
	.byte	0x3
	.byte	0xc
	.4byte	.LASF51
	.byte	0x4
	.byte	0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x41
	.byte	0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.byte	0x9
	.byte	0xe
	.4byte	0x29a
	.byte	0xc
	.4byte	.LASF56
	.byte	0xff
	.byte	0xc
	.4byte	.LASF57
	.byte	0
	.byte	0xc
	.4byte	.LASF58
	.byte	0x1
	.byte	0xc
	.4byte	.LASF59
	.byte	0x2
	.byte	0xc
	.4byte	.LASF60
	.byte	0x3
	.byte	0xc
	.4byte	.LASF61
	.byte	0x4
	.byte	0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0xc
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0xc
	.4byte	.LASF66
	.byte	0x8
	.byte	0xc
	.4byte	.LASF67
	.byte	0x9
	.byte	0xc
	.4byte	.LASF68
	.byte	0xa
	.byte	0
	.byte	0xd
	.4byte	.LASF69
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x8
	.byte	0xb
	.byte	0x6
	.4byte	0x2b9
	.byte	0xc
	.4byte	.LASF70
	.byte	0
	.byte	0xc
	.4byte	.LASF71
	.byte	0x1
	.byte	0
	.byte	0xe
	.4byte	.LASF77
	.byte	0x14
	.byte	0x8
	.byte	0x1a
	.byte	0x8
	.4byte	0x315
	.byte	0xa
	.4byte	.LASF21
	.byte	0x8
	.byte	0x1b
	.byte	0x17
	.4byte	0x29a
	.byte	0
	.byte	0xa
	.4byte	.LASF72
	.byte	0x8
	.byte	0x20
	.byte	0x9
	.4byte	0x81
	.byte	0x4
	.byte	0xa
	.4byte	.LASF73
	.byte	0x8
	.byte	0x23
	.byte	0xe
	.4byte	0x233
	.byte	0x8
	.byte	0xa
	.4byte	.LASF74
	.byte	0x8
	.byte	0x26
	.byte	0xd
	.4byte	0x41
	.byte	0xc
	.byte	0xa
	.4byte	.LASF75
	.byte	0x8
	.byte	0x29
	.byte	0xe
	.4byte	0x54
	.byte	0xe
	.byte	0xa
	.4byte	.LASF76
	.byte	0x8
	.byte	0x2b
	.byte	0xd
	.4byte	0x41
	.byte	0x10
	.byte	0
	.byte	0xe
	.4byte	.LASF78
	.byte	0x1c
	.byte	0x8
	.byte	0x2f
	.byte	0x8
	.4byte	0x34a
	.byte	0xf
	.string	"psk"
	.byte	0x8
	.byte	0x31
	.byte	0xb
	.4byte	0xf3
	.byte	0
	.byte	0xa
	.4byte	.LASF77
	.byte	0x8
	.byte	0x34
	.byte	0x14
	.4byte	0x2b9
	.byte	0x4
	.byte	0xa
	.4byte	.LASF79
	.byte	0x8
	.byte	0x3d
	.byte	0xe
	.4byte	0x67
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF80
	.byte	0x8
	.byte	0x85
	.byte	0xf
	.4byte	0xf1
	.byte	0xe
	.4byte	.LASF81
	.byte	0x8
	.byte	0x8
	.byte	0xb9
	.byte	0x10
	.4byte	0x37e
	.byte	0xa
	.4byte	.LASF82
	.byte	0x8
	.byte	0xba
	.byte	0xa
	.4byte	0x37e
	.byte	0
	.byte	0xa
	.4byte	.LASF83
	.byte	0x8
	.byte	0xbb
	.byte	0x9
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	0x8f
	.4byte	0x38e
	.byte	0x11
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF84
	.byte	0x8
	.byte	0xbc
	.byte	0x3
	.4byte	0x356
	.byte	0x12
	.4byte	.LASF85
	.byte	0x1
	.byte	0xc
	.byte	0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_connected
	.byte	0x12
	.4byte	.LASF86
	.byte	0x1
	.byte	0xd
	.byte	0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_connecting
	.byte	0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0x9b
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_mgmr_ready
	.byte	0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x10
	.byte	0x20
	.4byte	0xcd
	.byte	0x13
	.4byte	.LASF89
	.byte	0x1
	.byte	0x11
	.byte	0x23
	.4byte	0xd9
	.byte	0x12
	.4byte	.LASF90
	.byte	0x1
	.byte	0x12
	.byte	0x25
	.4byte	0xe5
	.byte	0x5
	.byte	0x3
	.4byte	g_connect_failed_cb
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x14
	.byte	0x1f
	.4byte	0xa2
	.byte	0x5
	.byte	0x3
	.4byte	s_connected_cb
	.byte	0x12
	.4byte	.LASF92
	.byte	0x1
	.byte	0x15
	.byte	0x22
	.4byte	0xb5
	.byte	0x5
	.byte	0x3
	.4byte	s_disconnected_cb
	.byte	0x12
	.4byte	.LASF93
	.byte	0x1
	.byte	0x16
	.byte	0x24
	.4byte	0xc1
	.byte	0x5
	.byte	0x3
	.4byte	s_connect_failed_cb
	.byte	0x12
	.4byte	.LASF94
	.byte	0x1
	.byte	0x19
	.byte	0x14
	.4byte	0x38e
	.byte	0x5
	.byte	0x3
	.4byte	s_wifi_conf
	.byte	0x14
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x118
	.byte	0x6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x483
	.byte	0x15
	.string	"cb"
	.byte	0x1
	.2byte	0x118
	.byte	0x42
	.4byte	0xe5
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	0x571
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x11b
	.byte	0x5
	.byte	0x17
	.4byte	0x57e
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x112
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c4
	.byte	0x15
	.string	"cb"
	.byte	0x1
	.2byte	0x112
	.byte	0x3e
	.4byte	0xd9
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.4byte	0x58a
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x115
	.byte	0x5
	.byte	0x17
	.4byte	0x597
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x10c
	.byte	0x6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0x505
	.byte	0x15
	.string	"cb"
	.byte	0x1
	.2byte	0x10c
	.byte	0x38
	.4byte	0xcd
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.4byte	0x5a3
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x10f
	.byte	0x5
	.byte	0x17
	.4byte	0x5b0
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF103
	.byte	0x1
	.byte	0xfa
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x571
	.byte	0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0xfa
	.byte	0x22
	.4byte	0xf9
	.4byte	.LLST8
	.byte	0x1a
	.4byte	.LASF99
	.byte	0x1
	.byte	0xfa
	.byte	0x34
	.4byte	0xf9
	.4byte	.LLST9
	.byte	0x1b
	.4byte	0x5bc
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.2byte	0x100
	.byte	0xa
	.byte	0x1c
	.4byte	.LVL64
	.4byte	0xa91
	.4byte	0x567
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x1e
	.4byte	.LVL67
	.4byte	0x767
	.byte	0
	.byte	0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0xf5
	.byte	0x6
	.byte	0x1
	.4byte	0x58a
	.byte	0x20
	.string	"cb"
	.byte	0x1
	.byte	0xf5
	.byte	0x40
	.4byte	0xc1
	.byte	0
	.byte	0x1f
	.4byte	.LASF101
	.byte	0x1
	.byte	0xf0
	.byte	0x6
	.byte	0x1
	.4byte	0x5a3
	.byte	0x20
	.string	"cb"
	.byte	0x1
	.byte	0xf0
	.byte	0x3c
	.4byte	0xb5
	.byte	0
	.byte	0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xeb
	.byte	0x6
	.byte	0x1
	.4byte	0x5bc
	.byte	0x20
	.string	"cb"
	.byte	0x1
	.byte	0xeb
	.byte	0x36
	.4byte	0xa2
	.byte	0
	.byte	0x21
	.4byte	.LASF107
	.byte	0x1
	.byte	0xe6
	.byte	0x5
	.4byte	0x9b
	.byte	0x1
	.byte	0x22
	.4byte	.LASF133
	.byte	0x1
	.byte	0xe1
	.byte	0x5
	.4byte	0x9b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.byte	0x23
	.4byte	.LASF104
	.byte	0x1
	.byte	0xd0
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x633
	.byte	0x24
	.4byte	.LASF105
	.byte	0x1
	.byte	0xd5
	.byte	0x16
	.4byte	0x34a
	.4byte	.LLST7
	.byte	0x1c
	.4byte	.LVL53
	.4byte	0xa91
	.4byte	0x620
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x25
	.4byte	.LVL54
	.4byte	0xa9d
	.byte	0x25
	.4byte	.LVL56
	.4byte	0xa91
	.byte	0
	.byte	0x23
	.4byte	.LASF106
	.byte	0x1
	.byte	0xa9
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x725
	.byte	0x26
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb6
	.byte	0x10
	.4byte	0x81
	.byte	0x12
	.4byte	.LASF105
	.byte	0x1
	.byte	0xbc
	.byte	0x16
	.4byte	0x34a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1c
	.4byte	.LVL42
	.4byte	0xa91
	.4byte	0x67f
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x25
	.4byte	.LVL43
	.4byte	0xaa9
	.byte	0x25
	.4byte	.LVL44
	.4byte	0xab5
	.byte	0x25
	.4byte	.LVL45
	.4byte	0xac1
	.byte	0x25
	.4byte	.LVL46
	.4byte	0xa9d
	.byte	0x1c
	.4byte	.LVL47
	.4byte	0xa91
	.4byte	0x6ba
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x1c
	.4byte	.LVL48
	.4byte	0xacd
	.4byte	0x6ce
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0
	.byte	0x1c
	.4byte	.LVL49
	.4byte	0xa91
	.4byte	0x6e5
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x1c
	.4byte	.LVL50
	.4byte	0xad9
	.4byte	0x6fa
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0xbb8
	.byte	0
	.byte	0x1c
	.4byte	.LVL51
	.4byte	0xa91
	.4byte	0x711
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x27
	.4byte	.LVL52
	.4byte	0xa91
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF109
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x767
	.byte	0x26
	.4byte	.LASF108
	.byte	0x1
	.byte	0xa1
	.byte	0x10
	.4byte	0x81
	.byte	0x25
	.4byte	.LVL39
	.4byte	0xaa9
	.byte	0x25
	.4byte	.LVL40
	.4byte	0xab5
	.byte	0x25
	.4byte	.LVL41
	.4byte	0xac1
	.byte	0
	.byte	0x23
	.4byte	.LASF110
	.byte	0x1
	.byte	0x72
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x87c
	.byte	0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0x72
	.byte	0x21
	.4byte	0xf9
	.4byte	.LLST4
	.byte	0x1a
	.4byte	.LASF99
	.byte	0x1
	.byte	0x72
	.byte	0x33
	.4byte	0xf9
	.4byte	.LLST5
	.byte	0x24
	.4byte	.LASF105
	.byte	0x1
	.byte	0x74
	.byte	0x16
	.4byte	0x34a
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LASF111
	.byte	0x1
	.byte	0x75
	.byte	0x1b
	.4byte	0x315
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x1c
	.4byte	.LVL27
	.4byte	0xae6
	.4byte	0x7de
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x1c
	.4byte	.LVL28
	.4byte	0xa91
	.4byte	0x7f5
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1c
	.4byte	.LVL32
	.4byte	0xa91
	.4byte	0x80c
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x1c
	.4byte	.LVL33
	.4byte	0xa91
	.4byte	0x829
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL34
	.4byte	0xa9d
	.byte	0x25
	.4byte	.LVL36
	.4byte	0xaf1
	.byte	0x1c
	.4byte	.LVL37
	.4byte	0xafd
	.4byte	0x859
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x27
	.4byte	.LVL38
	.4byte	0xb09
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF112
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x903
	.byte	0x12
	.4byte	.LASF113
	.byte	0x1
	.byte	0x5e
	.byte	0x14
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	wifi_init_done.0
	.byte	0x1c
	.4byte	.LVL20
	.4byte	0xa91
	.4byte	0x8bf
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1c
	.4byte	.LVL21
	.4byte	0xb15
	.4byte	0x8e0
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	wifi_event_handler
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x25
	.4byte	.LVL22
	.4byte	0xb21
	.byte	0x27
	.4byte	.LVL23
	.4byte	0xb2d
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF134
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.byte	0x1
	.4byte	0x937
	.byte	0x29
	.4byte	.LASF114
	.byte	0x1
	.byte	0x1e
	.byte	0x2f
	.4byte	0x156
	.byte	0x29
	.4byte	.LASF115
	.byte	0x1
	.byte	0x1e
	.byte	0x3c
	.4byte	0xf1
	.byte	0x2a
	.byte	0x13
	.4byte	.LASF116
	.byte	0x1
	.byte	0x46
	.byte	0x11
	.4byte	0x9b
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	0x903
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xa31
	.byte	0x17
	.4byte	0x910
	.4byte	.LLST0
	.byte	0x17
	.4byte	0x91c
	.4byte	.LLST1
	.byte	0x2c
	.4byte	0x903
	.4byte	.LBB15
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.byte	0x2d
	.4byte	0x910
	.byte	0x2d
	.4byte	0x910
	.byte	0x17
	.4byte	0x91c
	.4byte	.LLST2
	.byte	0x2e
	.4byte	0x928
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0x9a9
	.byte	0x2f
	.4byte	0x929
	.4byte	.LLST3
	.byte	0x27
	.4byte	.LVL17
	.4byte	0xa91
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL3
	.4byte	0xa91
	.4byte	0x9c0
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x30
	.4byte	.LVL4
	.4byte	0xb39
	.4byte	0x9d7
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x1c
	.4byte	.LVL6
	.4byte	0xa91
	.4byte	0x9ee
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x1c
	.4byte	.LVL9
	.4byte	0xa91
	.4byte	0xa05
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x30
	.4byte	.LVL12
	.4byte	0xa91
	.4byte	0xa1c
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x27
	.4byte	.LVL14
	.4byte	0xa91
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	0x5bc
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.byte	0x32
	.4byte	0x5a3
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0xa5b
	.byte	0x33
	.4byte	0x5b0
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x32
	.4byte	0x58a
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0xa76
	.byte	0x33
	.4byte	0x597
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x32
	.4byte	0x571
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0xa91
	.byte	0x33
	.4byte	0x57e
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x34
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x34
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0x8
	.byte	0xc6
	.byte	0x12
	.byte	0x34
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x8
	.byte	0xd9
	.byte	0x5
	.byte	0x34
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x8
	.byte	0xd3
	.byte	0x5
	.byte	0x34
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb6
	.byte	0x10
	.byte	0x34
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x8
	.byte	0xc7
	.byte	0x5
	.byte	0x35
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x207
	.byte	0xa
	.byte	0x36
	.4byte	.LASF124
	.4byte	.LASF135
	.byte	0xe
	.byte	0
	.byte	0x34
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x8
	.byte	0xd8
	.byte	0x5
	.byte	0x34
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x34
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x8
	.byte	0xd0
	.byte	0x5
	.byte	0x34
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x4
	.byte	0x83
	.byte	0x5
	.byte	0x34
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xc
	.byte	0x8
	.byte	0x5
	.byte	0x34
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x4
	.byte	0x99
	.byte	0x5
	.byte	0x34
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x8
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x21
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
.LLST12:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64-1
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
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
	.4byte	0x8c
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
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
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF117:
	.string	"printf"
.LASF91:
	.string	"s_connected_cb"
.LASF104:
	.string	"wifi_if_enable"
.LASF37:
	.string	"MEMP_SYS_TIMEOUT"
.LASF128:
	.string	"aos_post_event"
.LASF53:
	.string	"PM_MODE_AP_IDLE"
.LASF38:
	.string	"MEMP_NETDB"
.LASF76:
	.string	"use_dhcp"
.LASF84:
	.string	"wifi_conf_t"
.LASF18:
	.string	"app_wifi_disconnected_cb_t"
.LASF0:
	.string	"signed char"
.LASF56:
	.string	"TASK_NONE"
.LASF21:
	.string	"type"
.LASF118:
	.string	"wifi_mgmr_sta_enable"
.LASF99:
	.string	"password"
.LASF135:
	.string	"__builtin_memset"
.LASF10:
	.string	"long long unsigned int"
.LASF30:
	.string	"MEMP_TCP_SEG"
.LASF15:
	.string	"wifi_if_disconnected_cb_t"
.LASF108:
	.string	"wifi_mgmr_api_idle"
.LASF3:
	.string	"long long int"
.LASF129:
	.string	"wifi_mgmr_start_background"
.LASF75:
	.string	"freq"
.LASF120:
	.string	"wifi_mgmr_sta_disconnect"
.LASF100:
	.string	"wifi_if_set_connect_failed_cb"
.LASF71:
	.string	"AP_INFO_TYPE_PRESIST"
.LASF125:
	.string	"wifi_mgmr_sta_connect_ext"
.LASF47:
	.string	"PM_MODE_STA_NONE"
.LASF25:
	.string	"input_event_t"
.LASF119:
	.string	"wifi_mgmr_sta_autoconnect_disable"
.LASF2:
	.string	"long int"
.LASF82:
	.string	"country_code"
.LASF26:
	.string	"MEMP_RAW_PCB"
.LASF22:
	.string	"code"
.LASF46:
	.string	"PM_LEVEL"
.LASF44:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF6:
	.string	"uint16_t"
.LASF131:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/components/middle/wifi_if/wifi_if.c"
.LASF51:
	.string	"PM_MODE_STA_COEX"
.LASF27:
	.string	"MEMP_UDP_PCB"
.LASF93:
	.string	"s_connect_failed_cb"
.LASF54:
	.string	"PM_MODE_MAX"
.LASF23:
	.string	"value"
.LASF16:
	.string	"wifi_if_connect_failed_cb_t"
.LASF11:
	.string	"unsigned int"
.LASF36:
	.string	"MEMP_IGMP_GROUP"
.LASF61:
	.string	"TASK_SM"
.LASF81:
	.string	"wifi_conf"
.LASF98:
	.string	"ssid"
.LASF9:
	.string	"long unsigned int"
.LASF101:
	.string	"wifi_if_set_disconnected_cb"
.LASF87:
	.string	"s_wifi_mgmr_ready"
.LASF28:
	.string	"MEMP_TCP_PCB"
.LASF114:
	.string	"event"
.LASF7:
	.string	"short unsigned int"
.LASF132:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/wifi_if"
.LASF103:
	.string	"app_wifi_connect"
.LASF66:
	.string	"TASK_LAST_EMB"
.LASF88:
	.string	"g_connected_cb"
.LASF48:
	.string	"PM_MODE_STA_IDLE"
.LASF96:
	.string	"app_wifi_set_disconnected_cb"
.LASF63:
	.string	"TASK_BAM"
.LASF17:
	.string	"app_wifi_connected_cb_t"
.LASF110:
	.string	"wifi_if_connect"
.LASF52:
	.string	"PM_MODE_STA_DOWN"
.LASF41:
	.string	"MEMP_MAX"
.LASF68:
	.string	"TASK_MAX"
.LASF60:
	.string	"TASK_ME"
.LASF89:
	.string	"g_disconnected_cb"
.LASF113:
	.string	"wifi_init_done"
.LASF57:
	.string	"TASK_MM"
.LASF85:
	.string	"s_wifi_connected"
.LASF86:
	.string	"s_wifi_connecting"
.LASF90:
	.string	"g_connect_failed_cb"
.LASF20:
	.string	"time"
.LASF115:
	.string	"private_data"
.LASF59:
	.string	"TASK_SCANU"
.LASF127:
	.string	"hal_wifi_start_firmware_task"
.LASF73:
	.string	"bssid"
.LASF55:
	.string	"wifi_fw_task_id"
.LASF67:
	.string	"TASK_API"
.LASF64:
	.string	"TASK_RXU"
.LASF62:
	.string	"TASK_APM"
.LASF83:
	.string	"channel_nums"
.LASF126:
	.string	"aos_register_event_filter"
.LASF13:
	.string	"_Bool"
.LASF4:
	.string	"unsigned char"
.LASF97:
	.string	"app_wifi_set_connected_cb"
.LASF122:
	.string	"aos_msleep"
.LASF43:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF1:
	.string	"short int"
.LASF70:
	.string	"AP_INFO_TYPE_SUGGEST"
.LASF109:
	.string	"wifi_if_disconnect"
.LASF77:
	.string	"ap_info"
.LASF112:
	.string	"wifi_if_init"
.LASF95:
	.string	"app_wifi_set_connect_failed_cb"
.LASF42:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF102:
	.string	"wifi_if_set_connected_cb"
.LASF116:
	.string	"was_connected"
.LASF8:
	.string	"uint32_t"
.LASF49:
	.string	"PM_MODE_STA_MESH"
.LASF34:
	.string	"MEMP_TCPIP_MSG_API"
.LASF12:
	.string	"char"
.LASF94:
	.string	"s_wifi_conf"
.LASF133:
	.string	"wifi_if_is_connected"
.LASF78:
	.string	"ap_connect_adv"
.LASF32:
	.string	"MEMP_NETBUF"
.LASF29:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF33:
	.string	"MEMP_NETCONN"
.LASF80:
	.string	"wifi_interface_t"
.LASF31:
	.string	"MEMP_ALTCP_PCB"
.LASF40:
	.string	"MEMP_PBUF_POOL"
.LASF69:
	.string	"ap_info_type"
.LASF111:
	.string	"ext_param"
.LASF74:
	.string	"band"
.LASF107:
	.string	"wifi_if_is_mgmr_ready"
.LASF130:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF19:
	.string	"app_wifi_connect_failed_cb_t"
.LASF50:
	.string	"PM_MODE_STA_DOZE"
.LASF121:
	.string	"wifi_mgmr_sta_disable"
.LASF124:
	.string	"memset"
.LASF45:
	.string	"lwip_internal_netif_client_data_index"
.LASF5:
	.string	"uint8_t"
.LASF123:
	.string	"wifi_mgmr_sta_autoconnect_enable"
.LASF134:
	.string	"wifi_event_handler"
.LASF79:
	.string	"flags"
.LASF14:
	.string	"wifi_if_connected_cb_t"
.LASF106:
	.string	"wifi_if_disable"
.LASF65:
	.string	"TASK_CFG"
.LASF24:
	.string	"extra"
.LASF72:
	.string	"time_to_live"
.LASF105:
	.string	"wifi_interface"
.LASF92:
	.string	"s_disconnected_cb"
.LASF39:
	.string	"MEMP_PBUF"
.LASF58:
	.string	"TASK_SCAN"
.LASF35:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
