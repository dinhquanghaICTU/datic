	.file	"bl_clocktree.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.clock_root_clk_sel_0_parent_idx,"ax",@progbits
	.align	1
	.type	clock_root_clk_sel_0_parent_idx, @function
clock_root_clk_sel_0_parent_idx:
.LFB8:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_clocktree.c"
	.loc 1 39 1
	.cfi_startproc
.LVL0:
	.loc 1 40 5
	.loc 1 42 5
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 42 12
	li	a5,1073741824
	lw	a0,0(a5)
.LVL1:
	.loc 1 43 5 is_stmt 1
	.loc 1 47 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 43 58
	srli	a0,a0,6
.LVL2:
	.loc 1 46 5 is_stmt 1
	.loc 1 47 1 is_stmt 0
	andi	a0,a0,1
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	clock_root_clk_sel_0_parent_idx, .-clock_root_clk_sel_0_parent_idx
	.section	.text.clock_root_clk_pll_sel_idx,"ax",@progbits
	.align	1
	.type	clock_root_clk_pll_sel_idx, @function
clock_root_clk_pll_sel_idx:
.LFB9:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 64 5
	.loc 1 66 5
	.loc 1 63 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 66 12
	li	a5,1073741824
	lw	a0,0(a5)
.LVL5:
	.loc 1 67 5 is_stmt 1
	.loc 1 70 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 67 58
	srli	a0,a0,4
.LVL6:
	.loc 1 69 5 is_stmt 1
	.loc 1 70 1 is_stmt 0
	andi	a0,a0,3
.LVL7:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	clock_root_clk_pll_sel_idx, .-clock_root_clk_pll_sel_idx
	.section	.text.clock_root_clk_sel_1_parent_idx,"ax",@progbits
	.align	1
	.type	clock_root_clk_sel_1_parent_idx, @function
clock_root_clk_sel_1_parent_idx:
.LFB10:
	.loc 1 88 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 89 5
	.loc 1 91 5
	.loc 1 88 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 91 12
	li	a5,1073741824
	lw	a0,0(a5)
.LVL9:
	.loc 1 92 5 is_stmt 1
	.loc 1 95 5
	.loc 1 96 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 95 21
	srli	a0,a0,7
.LVL10:
	.loc 1 96 1
	andi	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	clock_root_clk_sel_1_parent_idx, .-clock_root_clk_sel_1_parent_idx
	.section	.text.clock_root_clk_sel_1_div_get,"ax",@progbits
	.align	1
	.type	clock_root_clk_sel_1_div_get, @function
clock_root_clk_sel_1_div_get:
.LFB11:
	.loc 1 99 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 100 5
	.loc 1 102 5
	.loc 1 99 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 102 12
	li	a5,1073741824
	lw	a0,0(a5)
.LVL12:
	.loc 1 103 5 is_stmt 1
	.loc 1 106 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 103 58
	srli	a0,a0,8
.LVL13:
	.loc 1 105 5 is_stmt 1
	.loc 1 103 12 is_stmt 0
	andi	a0,a0,255
.LVL14:
	.loc 1 106 1
	addi	a0,a0,1
.LVL15:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	clock_root_clk_sel_1_div_get, .-clock_root_clk_sel_1_div_get
	.section	.text.clock_root_bclk_div_get,"ax",@progbits
	.align	1
	.type	clock_root_bclk_div_get, @function
clock_root_bclk_div_get:
.LFB12:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 147 5
	.loc 1 149 5
	.loc 1 146 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 149 12
	li	a5,1073741824
	lw	a0,0(a5)
.LVL17:
	.loc 1 150 5 is_stmt 1
	.loc 1 153 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 150 59
	srli	a0,a0,16
.LVL18:
	.loc 1 152 5 is_stmt 1
	.loc 1 150 12 is_stmt 0
	andi	a0,a0,255
.LVL19:
	.loc 1 153 1
	addi	a0,a0,1
.LVL20:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	clock_root_bclk_div_get, .-clock_root_bclk_div_get
	.section	.text.clock_root_clk_pll_root_parent_idx,"ax",@progbits
	.align	1
	.type	clock_root_clk_pll_root_parent_idx, @function
clock_root_clk_pll_root_parent_idx:
.LFB13:
	.loc 1 189 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 190 5
	.loc 1 192 5
	.loc 1 189 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 192 12
	li	a5,1073799168
	lw	a0,1028(a5)
.LVL22:
	.loc 1 193 5 is_stmt 1
	.loc 1 196 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 193 59
	srli	a0,a0,12
.LVL23:
	.loc 1 195 5 is_stmt 1
	.loc 1 196 1 is_stmt 0
	andi	a0,a0,1
.LVL24:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	clock_root_clk_pll_root_parent_idx, .-clock_root_clk_pll_root_parent_idx
	.section	.text.clock_uart_parent_idx,"ax",@progbits
	.align	1
	.type	clock_uart_parent_idx, @function
clock_uart_parent_idx:
.LFB14:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 279 5
	.loc 1 281 5
	.loc 1 278 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 281 12
	li	a5,1073803264
	lw	a0,48(a5)
.LVL26:
	.loc 1 282 5 is_stmt 1
	.loc 1 285 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 282 58
	srli	a0,a0,2
.LVL27:
	.loc 1 284 5 is_stmt 1
	.loc 1 285 1 is_stmt 0
	andi	a0,a0,1
.LVL28:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	clock_uart_parent_idx, .-clock_uart_parent_idx
	.section	.text.clock_uart_gating_status,"ax",@progbits
	.align	1
	.type	clock_uart_gating_status, @function
clock_uart_gating_status:
.LFB15:
	.loc 1 288 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 289 5
	.loc 1 291 5
	.loc 1 288 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 291 12
	li	a5,1073741824
	lw	a0,8(a5)
.LVL30:
	.loc 1 292 5 is_stmt 1
	.loc 1 294 5
	.loc 1 295 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 292 58
	srli	a0,a0,4
.LVL31:
	.loc 1 294 28
	not	a0,a0
	.loc 1 295 1
	andi	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	clock_uart_gating_status, .-clock_uart_gating_status
	.section	.text.clock_uart_div_get,"ax",@progbits
	.align	1
	.type	clock_uart_div_get, @function
clock_uart_div_get:
.LFB16:
	.loc 1 298 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 299 5
	.loc 1 301 5
	.loc 1 298 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 301 12
	li	a5,1073741824
	lw	a0,8(a5)
.LVL33:
	.loc 1 302 5 is_stmt 1
	.loc 1 304 5
	.loc 1 305 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 302 12
	andi	a0,a0,7
.LVL34:
	.loc 1 305 1
	addi	a0,a0,1
.LVL35:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	clock_uart_div_get, .-clock_uart_div_get
	.section	.text.clock_flash_div_get,"ax",@progbits
	.align	1
	.type	clock_flash_div_get, @function
clock_flash_div_get:
.LFB17:
	.loc 1 357 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 358 5
	.loc 1 360 5
	.loc 1 357 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 360 12
	li	a5,1073741824
	lw	a0,8(a5)
.LVL37:
	.loc 1 361 5 is_stmt 1
	.loc 1 364 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 361 58
	srli	a0,a0,8
.LVL38:
	.loc 1 363 5 is_stmt 1
	.loc 1 361 12 is_stmt 0
	andi	a0,a0,7
.LVL39:
	.loc 1 364 1
	addi	a0,a0,1
.LVL40:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	clock_flash_div_get, .-clock_flash_div_get
	.section	.text.clock_flash_gating_status,"ax",@progbits
	.align	1
	.type	clock_flash_gating_status, @function
clock_flash_gating_status:
.LFB18:
	.loc 1 367 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 368 5
	.loc 1 370 5
	.loc 1 367 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 370 12
	li	a5,1073741824
	lw	a0,8(a5)
.LVL42:
	.loc 1 371 5 is_stmt 1
	.loc 1 373 5
	.loc 1 374 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 371 59
	srli	a0,a0,11
.LVL43:
	.loc 1 373 28
	not	a0,a0
	.loc 1 374 1
	andi	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	clock_flash_gating_status, .-clock_flash_gating_status
	.section	.text.clock_flash_parent_idx,"ax",@progbits
	.align	1
	.type	clock_flash_parent_idx, @function
clock_flash_parent_idx:
.LFB19:
	.loc 1 377 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 378 5
	.loc 1 381 5
	.loc 1 377 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 381 12
	li	a4,1073741824
	lw	a5,8(a4)
.LVL45:
	.loc 1 382 5 is_stmt 1
	.loc 1 384 13 is_stmt 0
	lw	a4,8(a4)
.LVL46:
	.loc 1 382 59
	srli	a5,a5,12
.LVL47:
	.loc 1 382 12
	andi	a5,a5,3
.LVL48:
	.loc 1 384 5 is_stmt 1
	.loc 1 385 5
	.loc 1 387 5
	addi	a0,a5,2
.LVL49:
	.loc 1 387 8 is_stmt 0
	bne	a5,zero,.L25
	.loc 1 385 61
	srli	a4,a4,14
.LVL50:
	.loc 1 385 13
	andi	a0,a4,3
.LVL51:
.L25:
	.loc 1 394 5 is_stmt 1
	.loc 1 395 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	clock_flash_parent_idx, .-clock_flash_parent_idx
	.section	.text.clock_i2c_gating_status,"ax",@progbits
	.align	1
	.type	clock_i2c_gating_status, @function
clock_i2c_gating_status:
.LFB20:
	.loc 1 417 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 418 5
	.loc 1 420 5
	.loc 1 417 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 420 12
	li	a5,1073741824
	lw	a0,12(a5)
.LVL53:
	.loc 1 421 5 is_stmt 1
	.loc 1 423 5
	.loc 1 424 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 421 59
	srli	a0,a0,24
.LVL54:
	.loc 1 423 28
	not	a0,a0
	.loc 1 424 1
	andi	a0,a0,1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	clock_i2c_gating_status, .-clock_i2c_gating_status
	.section	.text.clock_i2c_div_get,"ax",@progbits
	.align	1
	.type	clock_i2c_div_get, @function
clock_i2c_div_get:
.LFB21:
	.loc 1 427 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 428 5
	.loc 1 430 5
	.loc 1 427 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 430 12
	li	a5,1073741824
	lw	a0,12(a5)
.LVL56:
	.loc 1 431 5 is_stmt 1
	.loc 1 434 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 431 59
	srli	a0,a0,16
.LVL57:
	.loc 1 433 5 is_stmt 1
	.loc 1 431 12 is_stmt 0
	andi	a0,a0,255
.LVL58:
	.loc 1 434 1
	addi	a0,a0,1
.LVL59:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	clock_i2c_div_get, .-clock_i2c_div_get
	.section	.text.clock_spi_gating_status,"ax",@progbits
	.align	1
	.type	clock_spi_gating_status, @function
clock_spi_gating_status:
.LFB28:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	tail	clock_i2c_gating_status
	.cfi_endproc
.LFE28:
	.size	clock_spi_gating_status, .-clock_spi_gating_status
	.section	.text.clock_spi_div_get,"ax",@progbits
	.align	1
	.type	clock_spi_div_get, @function
clock_spi_div_get:
.LFB30:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	tail	clock_i2c_div_get
	.cfi_endproc
.LFE30:
	.size	clock_spi_div_get, .-clock_spi_div_get
	.section	.rodata.clock_tree_dump.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	""
	.align	2
.LC1:
	.string	"(Gating)"
	.align	2
.LC2:
	.string	" <<<"
	.align	2
.LC3:
	.string	"Clock Tree, ASSERT Here\r\n"
	.align	2
.LC4:
	.string	"\r\n====================\r\n"
	.section	.text.clock_tree_dump,"ax",@progbits
	.align	1
	.globl	clock_tree_dump
	.type	clock_tree_dump, @function
clock_tree_dump:
.LFB26:
	.loc 1 544 1 is_stmt 1
	.cfi_startproc
	.loc 1 545 5
	.loc 1 546 5
	.loc 1 548 5
.LVL60:
	.loc 1 548 17
	.loc 1 544 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	.cfi_offset 18, -16
	lui	s2,%hi(.LANCHOR0)
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s5,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	addi	s2,s2,%lo(.LANCHOR0)
.LBB8:
.LBB9:
	.loc 1 509 5
	lui	s3,%hi(.LC0)
	lui	s4,%hi(.LC1)
.LBE9:
.LBE8:
	.loc 1 544 1
	addi	s6,s2,28
.LBB12:
.LBB10:
	.loc 1 509 5
	addi	s3,s3,%lo(.LC0)
	addi	s4,s4,%lo(.LC1)
	.loc 1 515 5
	lui	s8,%hi(.LC2)
.LBE10:
.LBE12:
	.loc 1 551 9
	lui	s7,%hi(.LC4)
.LVL61:
.L45:
	.loc 1 549 9 is_stmt 1 discriminator 3
	.loc 1 549 14 is_stmt 0 discriminator 3
	lw	s1,0(s2)
.LVL62:
	.loc 1 550 9 is_stmt 1 discriminator 3
.LBB13:
.LBB11:
	.loc 1 509 19 is_stmt 0 discriminator 3
	li	s5,1
.LVL63:
.L44:
	.loc 1 504 5 is_stmt 1
	.loc 1 505 5
	.loc 1 507 5
	lw	a0,0(s1)
	call	puts
.LVL64:
	.loc 1 508 5
	.loc 1 509 5
	.loc 1 509 14 is_stmt 0
	lw	a5,32(s1)
	.loc 1 509 5
	beq	a5,zero,.L37
	.loc 1 509 28
	mv	a0,s1
	jalr	a5
.LVL65:
	.loc 1 509 5
	mv	a5,s4
	.loc 1 509 19
	beq	a0,s5,.L38
.L37:
	.loc 1 509 5
	mv	a5,s3
.L38:
	mv	a0,a5
	call	puts
.LVL66:
	.loc 1 511 5 is_stmt 1
	.loc 1 511 8 is_stmt 0
	lw	a5,4(s1)
	beq	a5,zero,.L39
	.loc 1 515 5 is_stmt 1
	addi	a0,s8,%lo(.LC2)
	call	puts
.LVL67:
	.loc 1 516 5
	.loc 1 516 13 is_stmt 0
	lw	a5,12(s1)
	.loc 1 516 8
	beq	a5,zero,.L40
	.loc 1 517 9 is_stmt 1
	.loc 1 517 15 is_stmt 0
	mv	a0,s1
	jalr	a5
.LVL68:
	.loc 1 518 9 is_stmt 1
	.loc 1 518 12 is_stmt 0
	lw	a5,4(s1)
	bge	a0,a5,.L41
	.loc 1 518 38
	bge	a0,zero,.L42
.L41:
.L52:
	.loc 1 521 13 is_stmt 1
	.loc 1 523 13
	.loc 1 521 19
	j	.L52
.LVL69:
.L40:
	.loc 1 525 12
	.loc 1 525 15 is_stmt 0
	lw	a5,4(s1)
	beq	a5,s5,.L47
	.loc 1 529 9 is_stmt 1
.LVL70:
	.loc 1 530 9
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	puts
.LVL71:
.L43:
	.loc 1 531 9
	.loc 1 532 9
	.loc 1 531 15
	j	.L43
.LVL72:
.L47:
	.loc 1 526 13 is_stmt 0
	li	a0,0
.L42:
.LVL73:
	.loc 1 534 5 is_stmt 1
	.loc 1 535 5
	.loc 1 535 12 is_stmt 0
	lw	a5,8(s1)
	slli	a0,a0,2
.LVL74:
	add	a0,a5,a0
	lw	s1,0(a0)
.LVL75:
	.loc 1 537 5 is_stmt 1
	.loc 1 540 5
	j	.L44
.LVL76:
.L39:
	.loc 1 512 9 discriminator 3
.LBE11:
.LBE13:
	.loc 1 551 9 discriminator 3
	addi	a0,s7,%lo(.LC4)
	.loc 1 548 5 is_stmt 0 discriminator 3
	addi	s2,s2,4
	.loc 1 551 9 discriminator 3
	call	puts
.LVL77:
	.loc 1 548 67 is_stmt 1 discriminator 3
	.loc 1 548 17 discriminator 3
	.loc 1 548 5 is_stmt 0 discriminator 3
	bne	s6,s2,.L45
	.loc 1 553 1
	lw	ra,44(sp)
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
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE26:
	.size	clock_tree_dump, .-clock_tree_dump
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"spi clk"
	.align	2
.LC6:
	.string	"i2c clk"
	.align	2
.LC7:
	.string	"flash clk"
	.align	2
.LC8:
	.string	"MCU bclk"
	.align	2
.LC9:
	.string	"MCU hclk"
	.align	2
.LC10:
	.string	"MCU fclk"
	.align	2
.LC11:
	.string	"uart clk"
	.align	2
.LC12:
	.string	"PLL Root"
	.align	2
.LC13:
	.string	"bclk"
	.align	2
.LC14:
	.string	"hclk"
	.align	2
.LC15:
	.string	"fclk"
	.align	2
.LC16:
	.string	"root_clk_sel_1"
	.align	2
.LC17:
	.string	"root_clk_sel_0"
	.align	2
.LC18:
	.string	"pll_sel"
	.align	2
.LC19:
	.string	"PLL_48m"
	.align	2
.LC20:
	.string	"PLL_80m"
	.align	2
.LC21:
	.string	"PLL_96m"
	.align	2
.LC22:
	.string	"PLL_120M"
	.align	2
.LC23:
	.string	"PLL_160M"
	.align	2
.LC24:
	.string	"PLL_192M"
	.align	2
.LC25:
	.string	"XTAL 40M"
	.align	2
.LC26:
	.string	"RC 32M"
	.section	.data.__compound_literal.0,"aw"
	.align	2
	.type	__compound_literal.0, @object
	.size	__compound_literal.0, 12
__compound_literal.0:
	.word	clock_RC32M
	.word	clock_XTAL
	.word	0
	.section	.data.__compound_literal.1,"aw"
	.align	2
	.type	__compound_literal.1, @object
	.size	__compound_literal.1, 20
__compound_literal.1:
	.word	clock_pll_48m
	.word	clock_pll_120m
	.word	clock_pll_160m
	.word	clock_pll_192m
	.word	0
	.section	.data.__compound_literal.15,"aw"
	.align	2
	.type	__compound_literal.15, @object
	.size	__compound_literal.15, 12
__compound_literal.15:
	.word	clock_root_clk_sel_1
	.word	clock_pll_160m
	.word	0
	.section	.data.__compound_literal.19,"aw"
	.align	2
	.type	__compound_literal.19, @object
	.size	__compound_literal.19, 28
__compound_literal.19:
	.word	clock_pll_120m
	.word	clock_XTAL
	.word	clock_pll_48m
	.word	clock_pll_80m
	.word	clock_bclk
	.word	clock_pll_96m
	.word	0
	.section	.data.__compound_literal.2,"aw"
	.align	2
	.type	__compound_literal.2, @object
	.size	__compound_literal.2, 12
__compound_literal.2:
	.word	clock_root_clk_sel_0
	.word	clock_pll_sel
	.word	0
	.section	.data.__compound_literal.8,"aw"
	.align	2
	.type	__compound_literal.8, @object
	.size	__compound_literal.8, 12
__compound_literal.8:
	.word	clock_XTAL
	.word	clock_RC32M
	.word	0
	.section	.data.clock_PLL,"aw"
	.align	2
	.type	clock_PLL, @object
	.size	clock_PLL, 36
clock_PLL:
	.word	.LC12
	.word	2
	.word	__compound_literal.8
	.word	clock_root_clk_pll_root_parent_idx
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_RC32M,"aw"
	.align	2
	.type	clock_RC32M, @object
	.size	clock_RC32M, 36
clock_RC32M:
	.word	.LC26
	.word	0
	.word	__compound_literal.6
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_XTAL,"aw"
	.align	2
	.type	clock_XTAL, @object
	.size	clock_XTAL, 36
clock_XTAL:
	.word	.LC25
	.word	0
	.word	__compound_literal.7
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_bclk,"aw"
	.align	2
	.type	clock_bclk, @object
	.size	clock_bclk, 36
clock_bclk:
	.word	.LC13
	.word	1
	.word	__compound_literal.5
	.zero	4
	.word	0
	.word	0
	.word	clock_root_bclk_div_get
	.zero	8
	.section	.data.clock_fclk,"aw"
	.align	2
	.type	clock_fclk, @object
	.size	clock_fclk, 36
clock_fclk:
	.word	.LC15
	.word	1
	.word	__compound_literal.3
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_hclk,"aw"
	.align	2
	.type	clock_hclk, @object
	.size	clock_hclk, 36
clock_hclk:
	.word	.LC14
	.word	1
	.word	__compound_literal.4
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_pll_120m,"aw"
	.align	2
	.type	clock_pll_120m, @object
	.size	clock_pll_120m, 36
clock_pll_120m:
	.word	.LC22
	.word	1
	.word	__compound_literal.11
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_pll_160m,"aw"
	.align	2
	.type	clock_pll_160m, @object
	.size	clock_pll_160m, 36
clock_pll_160m:
	.word	.LC23
	.word	1
	.word	__compound_literal.10
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_pll_192m,"aw"
	.align	2
	.type	clock_pll_192m, @object
	.size	clock_pll_192m, 36
clock_pll_192m:
	.word	.LC24
	.word	1
	.word	__compound_literal.9
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_pll_48m,"aw"
	.align	2
	.type	clock_pll_48m, @object
	.size	clock_pll_48m, 36
clock_pll_48m:
	.word	.LC19
	.word	1
	.word	__compound_literal.14
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_pll_80m,"aw"
	.align	2
	.type	clock_pll_80m, @object
	.size	clock_pll_80m, 36
clock_pll_80m:
	.word	.LC20
	.word	1
	.word	__compound_literal.13
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_pll_96m,"aw"
	.align	2
	.type	clock_pll_96m, @object
	.size	clock_pll_96m, 36
clock_pll_96m:
	.word	.LC21
	.word	1
	.word	__compound_literal.12
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_pll_sel,"aw"
	.align	2
	.type	clock_pll_sel, @object
	.size	clock_pll_sel, 36
clock_pll_sel:
	.word	.LC18
	.word	4
	.word	__compound_literal.1
	.word	clock_root_clk_pll_sel_idx
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_root_clk_sel_0,"aw"
	.align	2
	.type	clock_root_clk_sel_0, @object
	.size	clock_root_clk_sel_0, 36
clock_root_clk_sel_0:
	.word	.LC17
	.word	2
	.word	__compound_literal.0
	.word	clock_root_clk_sel_0_parent_idx
	.word	0
	.word	0
	.zero	12
	.section	.data.clock_root_clk_sel_1,"aw"
	.align	2
	.type	clock_root_clk_sel_1, @object
	.size	clock_root_clk_sel_1, 36
clock_root_clk_sel_1:
	.word	.LC16
	.word	2
	.word	__compound_literal.2
	.word	clock_root_clk_sel_1_parent_idx
	.word	0
	.word	0
	.word	clock_root_clk_sel_1_div_get
	.zero	8
	.section	.data.clock_uart,"aw"
	.align	2
	.type	clock_uart, @object
	.size	clock_uart, 36
clock_uart:
	.word	.LC11
	.word	2
	.word	__compound_literal.15
	.word	clock_uart_parent_idx
	.word	0
	.word	0
	.word	clock_uart_div_get
	.zero	4
	.word	clock_uart_gating_status
	.section	.data.flash_clock,"aw"
	.align	2
	.type	flash_clock, @object
	.size	flash_clock, 36
flash_clock:
	.word	.LC7
	.word	6
	.word	__compound_literal.19
	.word	clock_flash_parent_idx
	.word	0
	.word	0
	.word	clock_flash_div_get
	.zero	4
	.word	clock_flash_gating_status
	.section	.data.i2c_clock,"aw"
	.align	2
	.type	i2c_clock, @object
	.size	i2c_clock, 36
i2c_clock:
	.word	.LC6
	.word	1
	.word	__compound_literal.20
	.zero	4
	.word	0
	.word	0
	.word	clock_i2c_div_get
	.zero	4
	.word	clock_i2c_gating_status
	.section	.data.leaf_mcu_bclk,"aw"
	.align	2
	.type	leaf_mcu_bclk, @object
	.size	leaf_mcu_bclk, 36
leaf_mcu_bclk:
	.word	.LC8
	.word	1
	.word	__compound_literal.18
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.leaf_mcu_fclk,"aw"
	.align	2
	.type	leaf_mcu_fclk, @object
	.size	leaf_mcu_fclk, 36
leaf_mcu_fclk:
	.word	.LC10
	.word	1
	.word	__compound_literal.16
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.leaf_mcu_hclk,"aw"
	.align	2
	.type	leaf_mcu_hclk, @object
	.size	leaf_mcu_hclk, 36
leaf_mcu_hclk:
	.word	.LC9
	.word	1
	.word	__compound_literal.17
	.zero	4
	.word	0
	.word	0
	.zero	12
	.section	.data.spi_clock,"aw"
	.align	2
	.type	spi_clock, @object
	.size	spi_clock, 36
spi_clock:
	.word	.LC5
	.word	1
	.word	__compound_literal.21
	.zero	4
	.word	0
	.word	0
	.word	clock_spi_div_get
	.zero	4
	.word	clock_spi_gating_status
	.section	.rodata.clock_leaves,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	clock_leaves, @object
	.size	clock_leaves, 28
clock_leaves:
	.word	flash_clock
	.word	i2c_clock
	.word	spi_clock
	.word	clock_uart
	.word	leaf_mcu_fclk
	.word	leaf_mcu_hclk
	.word	leaf_mcu_bclk
	.section	.sbss.__compound_literal.6,"aw",@nobits
	.align	2
	.type	__compound_literal.6, @object
	.size	__compound_literal.6, 4
__compound_literal.6:
	.zero	4
	.section	.sbss.__compound_literal.7,"aw",@nobits
	.align	2
	.type	__compound_literal.7, @object
	.size	__compound_literal.7, 4
__compound_literal.7:
	.zero	4
	.section	.sdata.__compound_literal.10,"aw"
	.align	2
	.type	__compound_literal.10, @object
	.size	__compound_literal.10, 8
__compound_literal.10:
	.word	clock_PLL
	.word	0
	.section	.sdata.__compound_literal.11,"aw"
	.align	2
	.type	__compound_literal.11, @object
	.size	__compound_literal.11, 8
__compound_literal.11:
	.word	clock_PLL
	.word	0
	.section	.sdata.__compound_literal.12,"aw"
	.align	2
	.type	__compound_literal.12, @object
	.size	__compound_literal.12, 8
__compound_literal.12:
	.word	clock_PLL
	.word	0
	.section	.sdata.__compound_literal.13,"aw"
	.align	2
	.type	__compound_literal.13, @object
	.size	__compound_literal.13, 8
__compound_literal.13:
	.word	clock_PLL
	.word	0
	.section	.sdata.__compound_literal.14,"aw"
	.align	2
	.type	__compound_literal.14, @object
	.size	__compound_literal.14, 8
__compound_literal.14:
	.word	clock_PLL
	.word	0
	.section	.sdata.__compound_literal.16,"aw"
	.align	2
	.type	__compound_literal.16, @object
	.size	__compound_literal.16, 8
__compound_literal.16:
	.word	clock_fclk
	.word	0
	.section	.sdata.__compound_literal.17,"aw"
	.align	2
	.type	__compound_literal.17, @object
	.size	__compound_literal.17, 8
__compound_literal.17:
	.word	clock_hclk
	.word	0
	.section	.sdata.__compound_literal.18,"aw"
	.align	2
	.type	__compound_literal.18, @object
	.size	__compound_literal.18, 8
__compound_literal.18:
	.word	clock_bclk
	.word	0
	.section	.sdata.__compound_literal.20,"aw"
	.align	2
	.type	__compound_literal.20, @object
	.size	__compound_literal.20, 8
__compound_literal.20:
	.word	clock_bclk
	.word	0
	.section	.sdata.__compound_literal.21,"aw"
	.align	2
	.type	__compound_literal.21, @object
	.size	__compound_literal.21, 8
__compound_literal.21:
	.word	clock_bclk
	.word	0
	.section	.sdata.__compound_literal.3,"aw"
	.align	2
	.type	__compound_literal.3, @object
	.size	__compound_literal.3, 8
__compound_literal.3:
	.word	clock_root_clk_sel_1
	.word	0
	.section	.sdata.__compound_literal.4,"aw"
	.align	2
	.type	__compound_literal.4, @object
	.size	__compound_literal.4, 8
__compound_literal.4:
	.word	clock_root_clk_sel_1
	.word	0
	.section	.sdata.__compound_literal.5,"aw"
	.align	2
	.type	__compound_literal.5, @object
	.size	__compound_literal.5, 8
__compound_literal.5:
	.word	clock_root_clk_sel_1
	.word	0
	.section	.sdata.__compound_literal.9,"aw"
	.align	2
	.type	__compound_literal.9, @object
	.size	__compound_literal.9, 8
__compound_literal.9:
	.word	clock_PLL
	.word	0
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x816
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF65
	.byte	0xc
	.4byte	.LASF66
	.4byte	.LASF67
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
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
	.byte	0x4
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
	.byte	0x5
	.4byte	0x77
	.byte	0x6
	.byte	0x4
	.4byte	0x7e
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x7
	.string	"clk"
	.byte	0x24
	.byte	0x1
	.byte	0x5
	.byte	0x8
	.4byte	0x117
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0x83
	.byte	0
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.4byte	0x69
	.byte	0x4
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8
	.byte	0x12
	.4byte	0x117
	.byte	0x8
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.4byte	0x132
	.byte	0xc
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xe
	.byte	0xb
	.4byte	0x132
	.byte	0x10
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0xf
	.byte	0xb
	.4byte	0x132
	.byte	0x14
	.byte	0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.4byte	0x132
	.byte	0x18
	.byte	0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x13
	.byte	0xb
	.4byte	0x14c
	.byte	0x1c
	.byte	0x9
	.string	"cg"
	.byte	0x1
	.byte	0x16
	.byte	0xb
	.4byte	0x132
	.byte	0x20
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x11d
	.byte	0x6
	.byte	0x4
	.4byte	0x95
	.byte	0xa
	.4byte	0x69
	.4byte	0x132
	.byte	0xb
	.4byte	0x11d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x123
	.byte	0xa
	.4byte	0x69
	.4byte	0x14c
	.byte	0xb
	.4byte	0x11d
	.byte	0xb
	.4byte	0x69
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x138
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_RC32M
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1b
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_XTAL
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1c
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_pll_192m
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1d
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_pll_160m
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1e
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_pll_120m
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1f
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_pll_96m
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x20
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_pll_80m
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x21
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_pll_48m
	.byte	0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x22
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_pll_sel
	.byte	0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x23
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_root_clk_sel_0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_root_clk_sel_1
	.byte	0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7a
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_fclk
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x85
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_hclk
	.byte	0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9b
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_bclk
	.byte	0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc6
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_PLL
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x134
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	clock_uart
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x143
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	leaf_mcu_fclk
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x14e
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	leaf_mcu_hclk
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x159
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	leaf_mcu_bclk
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x18d
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	flash_clock
	.byte	0xd
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1c8
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	i2c_clock
	.byte	0xd
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1d5
	.byte	0x13
	.4byte	0x95
	.byte	0x5
	.byte	0x3
	.4byte	spi_clock
	.byte	0xe
	.4byte	0x11d
	.4byte	0x2f5
	.byte	0xf
	.4byte	0x70
	.byte	0x6
	.byte	0
	.byte	0xd
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1e2
	.byte	0x14
	.4byte	0x2e5
	.byte	0x5
	.byte	0x3
	.4byte	clock_leaves
	.byte	0x10
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x21f
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x3e6
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x221
	.byte	0x9
	.4byte	0x69
	.4byte	.LLST29
	.byte	0x12
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x222
	.byte	0x11
	.4byte	0x11d
	.4byte	.LLST30
	.byte	0x13
	.4byte	0x3e6
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x226
	.byte	0x9
	.4byte	0x3d2
	.byte	0x14
	.4byte	0x3f4
	.4byte	.LLST30
	.byte	0x15
	.4byte	.Ldebug_ranges0+0
	.byte	0x16
	.4byte	0x401
	.4byte	.LLST32
	.byte	0x16
	.4byte	0x40e
	.4byte	.LLST33
	.byte	0x17
	.4byte	.LVL64
	.4byte	0x80d
	.byte	0x18
	.4byte	.LVL65
	.4byte	0x38d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL66
	.4byte	0x80d
	.byte	0x1a
	.4byte	.LVL67
	.4byte	0x80d
	.4byte	0x3ad
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x18
	.4byte	.LVL68
	.4byte	0x3bd
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL71
	.4byte	0x80d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL77
	.4byte	0x80d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1f6
	.byte	0xd
	.byte	0x1
	.4byte	0x41c
	.byte	0x1d
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1f6
	.byte	0x29
	.4byte	0x11d
	.byte	0x1e
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x1f8
	.byte	0x11
	.4byte	0x11d
	.byte	0x1f
	.string	"idx"
	.byte	0x1
	.2byte	0x1f9
	.byte	0x9
	.4byte	0x69
	.byte	0
	.byte	0x1c
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1ec
	.byte	0xd
	.byte	0x1
	.4byte	0x443
	.byte	0x1d
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1ec
	.byte	0x24
	.4byte	0x11d
	.byte	0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x1ee
	.byte	0x9
	.4byte	0x69
	.byte	0
	.byte	0x20
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1be
	.byte	0xc
	.4byte	0x69
	.4byte	0x46f
	.byte	0x1d
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1be
	.byte	0x2a
	.4byte	0x11d
	.byte	0x1e
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1c0
	.byte	0xe
	.4byte	0x89
	.byte	0
	.byte	0x20
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1b4
	.byte	0xc
	.4byte	0x69
	.4byte	0x49b
	.byte	0x1d
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1b4
	.byte	0x30
	.4byte	0x11d
	.byte	0x1e
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1b6
	.byte	0xe
	.4byte	0x89
	.byte	0
	.byte	0x21
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1aa
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d9
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1aa
	.byte	0x2a
	.4byte	0x11d
	.4byte	.LLST27
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1ac
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST28
	.byte	0
	.byte	0x21
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1a0
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x517
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1a0
	.byte	0x30
	.4byte	0x11d
	.4byte	.LLST25
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1a2
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST26
	.byte	0
	.byte	0x21
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x178
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x575
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x178
	.byte	0x2f
	.4byte	0x11d
	.4byte	.LLST22
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x17a
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST23
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x17a
	.byte	0x1a
	.4byte	0x89
	.4byte	.LLST24
	.byte	0x23
	.string	"val"
	.byte	0x1
	.2byte	0x17a
	.byte	0x27
	.4byte	0x89
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x21
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x16e
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b3
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x16e
	.byte	0x32
	.4byte	0x11d
	.4byte	.LLST20
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x170
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST21
	.byte	0
	.byte	0x21
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x164
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f1
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x164
	.byte	0x2c
	.4byte	0x11d
	.4byte	.LLST18
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x166
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST19
	.byte	0
	.byte	0x21
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x129
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x62f
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x129
	.byte	0x2b
	.4byte	0x11d
	.4byte	.LLST16
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x12b
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST17
	.byte	0
	.byte	0x21
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x11f
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x66d
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x11f
	.byte	0x31
	.4byte	0x11d
	.4byte	.LLST14
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x121
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST15
	.byte	0
	.byte	0x21
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x115
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x6ab
	.byte	0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x115
	.byte	0x2e
	.4byte	0x11d
	.4byte	.LLST12
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x117
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST13
	.byte	0
	.byte	0x24
	.4byte	.LASF59
	.byte	0x1
	.byte	0xbc
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e6
	.byte	0x25
	.4byte	.LASF46
	.byte	0x1
	.byte	0xbc
	.byte	0x3b
	.4byte	0x11d
	.4byte	.LLST10
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0xbe
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST11
	.byte	0
	.byte	0x24
	.4byte	.LASF60
	.byte	0x1
	.byte	0x91
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x721
	.byte	0x25
	.4byte	.LASF46
	.byte	0x1
	.byte	0x91
	.byte	0x30
	.4byte	0x11d
	.4byte	.LLST8
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0x93
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST9
	.byte	0
	.byte	0x24
	.4byte	.LASF61
	.byte	0x1
	.byte	0x62
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x75c
	.byte	0x25
	.4byte	.LASF46
	.byte	0x1
	.byte	0x62
	.byte	0x35
	.4byte	0x11d
	.4byte	.LLST6
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST7
	.byte	0
	.byte	0x24
	.4byte	.LASF62
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x797
	.byte	0x25
	.4byte	.LASF46
	.byte	0x1
	.byte	0x57
	.byte	0x38
	.4byte	0x11d
	.4byte	.LLST4
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0x59
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST5
	.byte	0
	.byte	0x24
	.4byte	.LASF63
	.byte	0x1
	.byte	0x3e
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d2
	.byte	0x25
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3e
	.byte	0x33
	.4byte	0x11d
	.4byte	.LLST2
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0x40
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST3
	.byte	0
	.byte	0x24
	.4byte	.LASF64
	.byte	0x1
	.byte	0x26
	.byte	0xc
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x80d
	.byte	0x25
	.4byte	.LASF46
	.byte	0x1
	.byte	0x26
	.byte	0x38
	.4byte	0x11d
	.4byte	.LLST0
	.byte	0x26
	.4byte	.LASF48
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST1
	.byte	0
	.byte	0x27
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x4
	.byte	0xdd
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST29:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LFE21
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x48
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0x3e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x3b
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE17
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE16
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x34
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x36
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE9
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
	.4byte	.LFE8
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
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
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"clock_root_clk_sel_0_parent_idx"
.LASF49:
	.string	"clock_spi_gating_status"
.LASF18:
	.string	"div_get"
.LASF31:
	.string	"clock_fclk"
.LASF36:
	.string	"leaf_mcu_fclk"
.LASF39:
	.string	"flash_clock"
.LASF45:
	.string	"_dump_node"
.LASF10:
	.string	"__uint32_t"
.LASF2:
	.string	"short int"
.LASF63:
	.string	"clock_root_clk_pll_sel_idx"
.LASF62:
	.string	"clock_root_clk_sel_1_parent_idx"
.LASF55:
	.string	"clock_flash_div_get"
.LASF47:
	.string	"clock_spi_div_get"
.LASF16:
	.string	"enable"
.LASF15:
	.string	"parent"
.LASF43:
	.string	"leaf"
.LASF41:
	.string	"spi_clock"
.LASF58:
	.string	"clock_uart_parent_idx"
.LASF42:
	.string	"clock_leaves"
.LASF33:
	.string	"clock_bclk"
.LASF56:
	.string	"clock_uart_div_get"
.LASF68:
	.string	"clock_tree_dump"
.LASF6:
	.string	"long long int"
.LASF40:
	.string	"i2c_clock"
.LASF9:
	.string	"char"
.LASF37:
	.string	"leaf_mcu_hclk"
.LASF34:
	.string	"clock_PLL"
.LASF4:
	.string	"long int"
.LASF28:
	.string	"clock_pll_sel"
.LASF54:
	.string	"clock_flash_gating_status"
.LASF46:
	.string	"node"
.LASF59:
	.string	"clock_root_clk_pll_root_parent_idx"
.LASF23:
	.string	"clock_pll_160m"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF67:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF11:
	.string	"uint32_t"
.LASF25:
	.string	"clock_pll_96m"
.LASF8:
	.string	"unsigned int"
.LASF21:
	.string	"clock_XTAL"
.LASF53:
	.string	"tmpVal2"
.LASF32:
	.string	"clock_hclk"
.LASF69:
	.string	"puts"
.LASF50:
	.string	"clock_i2c_div_get"
.LASF3:
	.string	"short unsigned int"
.LASF52:
	.string	"clock_flash_parent_idx"
.LASF48:
	.string	"tmpVal"
.LASF27:
	.string	"clock_pll_48m"
.LASF22:
	.string	"clock_pll_192m"
.LASF19:
	.string	"div_set"
.LASF13:
	.string	"parents_max"
.LASF26:
	.string	"clock_pll_80m"
.LASF20:
	.string	"clock_RC32M"
.LASF5:
	.string	"long unsigned int"
.LASF65:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF38:
	.string	"leaf_mcu_bclk"
.LASF35:
	.string	"clock_uart"
.LASF44:
	.string	"dump_clock_node"
.LASF66:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_clocktree.c"
.LASF29:
	.string	"clock_root_clk_sel_0"
.LASF30:
	.string	"clock_root_clk_sel_1"
.LASF12:
	.string	"name"
.LASF57:
	.string	"clock_uart_gating_status"
.LASF17:
	.string	"disable"
.LASF24:
	.string	"clock_pll_120m"
.LASF14:
	.string	"parents"
.LASF60:
	.string	"clock_root_bclk_div_get"
.LASF51:
	.string	"clock_i2c_gating_status"
.LASF61:
	.string	"clock_root_clk_sel_1_div_get"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
