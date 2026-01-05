	.file	"button.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.internal_button_callback,"ax",@progbits
	.align	1
	.type	internal_button_callback, @function
internal_button_callback:
.LFB8:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/button/button.c"
	.loc 1 46 74
	.cfi_startproc
.LVL0:
	.loc 1 47 5
.LBB4:
.LBB5:
	.loc 1 43 5
.LBE5:
.LBE4:
	.loc 1 46 74 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB7:
.LBB6:
	.loc 1 43 27
	li	a4,4
	bne	a0,a4,.L1
.LVL1:
.LBE6:
.LBE7:
	.loc 1 49 5 is_stmt 1
	.loc 1 51 5
	.loc 1 54 5
	.loc 1 54 23 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	slli	a4,a1,2
	addi	a5,a5,%lo(.LANCHOR0)
	add	a5,a5,a4
	lw	a5,0(a5)
	.loc 1 54 8
	beq	a5,zero,.L1
	.loc 1 55 9 is_stmt 1
	.loc 1 57 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 55 9
	li	a0,0
.LVL2:
	.loc 1 57 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 55 9
	jr	a5
.LVL3:
.L1:
	.cfi_restore_state
	.loc 1 57 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	internal_button_callback, .-internal_button_callback
	.section	.text.button_get_tick_ms,"ax",@progbits
	.align	1
	.globl	button_get_tick_ms
	.type	button_get_tick_ms, @function
button_get_tick_ms:
.LFB4:
	.loc 1 19 35 is_stmt 1
	.cfi_startproc
	.loc 1 20 5
	.loc 1 19 35 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 20 22
	call	aos_now_ms
.LVL4:
	.loc 1 21 1
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
	.size	button_get_tick_ms, .-button_get_tick_ms
	.section	.text.button_gpio_init,"ax",@progbits
	.align	1
	.globl	button_gpio_init
	.type	button_gpio_init, @function
button_gpio_init:
.LFB5:
	.loc 1 32 37 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 33 5
	.loc 1 32 37 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 34 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 33 5
	li	a2,0
	li	a1,1
	.loc 1 34 1
	.loc 1 33 5
	andi	a0,a0,0xff
.LVL6:
	.loc 1 34 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 33 5
	tail	bl_gpio_enable_input
.LVL7:
	.cfi_endproc
.LFE5:
	.size	button_gpio_init, .-button_gpio_init
	.section	.text.button_read_level,"ax",@progbits
	.align	1
	.globl	button_read_level
	.type	button_read_level, @function
button_read_level:
.LFB6:
	.loc 1 37 42 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 38 5
	.loc 1 37 42 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 39 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 38 12
	andi	a0,a0,0xff
.LVL9:
	.loc 1 39 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 38 12
	tail	bl_gpio_input_get_value
.LVL10:
	.cfi_endproc
.LFE6:
	.size	button_read_level, .-button_read_level
	.section	.text.button_scan_task,"ax",@progbits
	.align	1
	.type	button_scan_task, @function
button_scan_task:
.LFB9:
	.loc 1 60 43 is_stmt 1
	.cfi_startproc
.LVL11:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LVL12:
.L14:
	.loc 1 61 5 discriminator 1
	.loc 1 63 5 discriminator 1
	.loc 1 64 9 discriminator 1
	li	a0,0
	call	app_btn_scan
.LVL13:
	.loc 1 65 9 discriminator 1
	li	a0,20
	call	aos_msleep
.LVL14:
	.loc 1 63 10 discriminator 1
	j	.L14
	.cfi_endproc
.LFE9:
	.size	button_scan_task, .-button_scan_task
	.section	.rodata.button_driver_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"btn_scan"
	.section	.text.button_driver_init,"ax",@progbits
	.align	1
	.globl	button_driver_init
	.type	button_driver_init, @function
button_driver_init:
.LFB10:
	.loc 1 69 31
	.cfi_startproc
	.loc 1 70 5
	.loc 1 73 5
	.loc 1 69 31 is_stmt 0
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
	.loc 1 73 5
	lui	a0,%hi(.LANCHOR1)
	.loc 1 69 31
	.loc 1 73 5
	addi	a0,a0,%lo(.LANCHOR1)
	call	app_btn_initialize
.LVL15:
	.loc 1 74 5 is_stmt 1
	lui	s1,%hi(internal_button_callback)
	addi	a1,s1,%lo(internal_button_callback)
	li	a2,0
	li	a0,0
	call	app_btn_register_callback
.LVL16:
	.loc 1 75 5
	addi	a1,s1,%lo(internal_button_callback)
	li	a2,0
	li	a0,2
	call	app_btn_register_callback
.LVL17:
	.loc 1 76 5
	.loc 1 79 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 76 5
	li	a4,4096
	lui	a2,%hi(button_scan_task)
	lui	a1,%hi(.LC0)
	.loc 1 79 1
	.loc 1 76 5
	li	a5,5
	addi	a4,a4,-2048
	li	a3,0
	addi	a2,a2,%lo(button_scan_task)
	addi	a1,a1,%lo(.LC0)
	li	a0,0
	.loc 1 79 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 76 5
	tail	aos_task_new_ext
.LVL18:
	.cfi_endproc
.LFE10:
	.size	button_driver_init, .-button_driver_init
	.section	.text.button_register_callback,"ax",@progbits
	.align	1
	.globl	button_register_callback
	.type	button_register_callback, @function
button_register_callback:
.LFB11:
	.loc 1 81 82 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 82 5
	.loc 1 81 82 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 82 27
	slli	a5,a0,2
	lui	a0,%hi(.LANCHOR0)
.LVL20:
	.loc 1 81 82
	sw	s0,12(sp)
	.loc 1 82 27
	addi	a0,a0,%lo(.LANCHOR0)
	.cfi_offset 8, -4
	.loc 1 81 82
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 82 27
	add	a0,a0,a5
	sw	a1,0(a0)
	.loc 1 83 5 is_stmt 1
	.loc 1 84 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	button_register_callback, .-button_register_callback
	.globl	btn_config
	.globl	btn_hw_config
	.globl	g_btn_filter_cnt
	.section	.bss.user_callbacks,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	user_callbacks, @object
	.size	user_callbacks, 32
user_callbacks:
	.zero	32
	.section	.data.btn_config,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	btn_config, @object
	.size	btn_config, 20
btn_config:
	.word	btn_hw_config
	.byte	1
	.zero	3
	.word	button_get_tick_ms
	.word	button_gpio_init
	.word	button_read_level
	.section	.data.btn_hw_config,"aw"
	.align	2
	.type	btn_hw_config, @object
	.size	btn_hw_config, 16
btn_hw_config:
	.word	4
	.zero	4
	.word	1
	.byte	0
	.byte	0
	.zero	2
	.section	.sdata.g_btn_filter_cnt,"aw"
	.type	g_btn_filter_cnt, @object
	.size	g_btn_filter_cnt, 1
g_btn_filter_cnt:
	.byte	8
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/third_party/lib_button/app_btn.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/button/button.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x54e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x46
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6e
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0xe9
	.byte	0x7
	.4byte	.LASF14
	.byte	0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x7
	.4byte	.LASF16
	.byte	0x2
	.byte	0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x7
	.4byte	.LASF20
	.byte	0x6
	.byte	0x7
	.4byte	.LASF21
	.byte	0x7
	.byte	0x7
	.4byte	.LASF22
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2b
	.byte	0x3
	.4byte	0xa4
	.byte	0x8
	.byte	0x10
	.byte	0x4
	.byte	0x2d
	.byte	0x9
	.4byte	0x140
	.byte	0x9
	.string	"pin"
	.byte	0x4
	.byte	0x2f
	.byte	0xe
	.4byte	0x91
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x30
	.byte	0xd
	.4byte	0x85
	.byte	0x4
	.byte	0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x31
	.byte	0xe
	.4byte	0x91
	.byte	0x8
	.byte	0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x32
	.byte	0xd
	.4byte	0x85
	.byte	0xc
	.byte	0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x33
	.byte	0xd
	.4byte	0x85
	.byte	0xd
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x34
	.byte	0x3
	.4byte	0xf5
	.byte	0x4
	.4byte	.LASF29
	.byte	0x4
	.byte	0x36
	.byte	0x14
	.4byte	0x158
	.byte	0xb
	.byte	0x4
	.4byte	0x15e
	.byte	0xc
	.4byte	0x91
	.byte	0x4
	.4byte	.LASF30
	.byte	0x4
	.byte	0x37
	.byte	0x10
	.4byte	0x16f
	.byte	0xb
	.byte	0x4
	.4byte	0x175
	.byte	0xd
	.4byte	0x180
	.byte	0xe
	.4byte	0x91
	.byte	0
	.byte	0x4
	.4byte	.LASF31
	.byte	0x4
	.byte	0x38
	.byte	0x14
	.4byte	0x18c
	.byte	0xb
	.byte	0x4
	.4byte	0x192
	.byte	0xf
	.4byte	0x91
	.4byte	0x1a1
	.byte	0xe
	.4byte	0x91
	.byte	0
	.byte	0x8
	.byte	0x14
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.4byte	0x1ec
	.byte	0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x3c
	.byte	0x1a
	.4byte	0x1ec
	.byte	0
	.byte	0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x85
	.byte	0x4
	.byte	0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x3e
	.byte	0x19
	.4byte	0x14c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x3f
	.byte	0x1b
	.4byte	0x163
	.byte	0xc
	.byte	0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x40
	.byte	0x1a
	.4byte	0x180
	.byte	0x10
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x140
	.byte	0x4
	.4byte	.LASF37
	.byte	0x4
	.byte	0x41
	.byte	0x3
	.4byte	0x1a1
	.byte	0x4
	.4byte	.LASF38
	.byte	0x5
	.byte	0x7
	.byte	0x10
	.4byte	0x20a
	.byte	0xb
	.byte	0x4
	.4byte	0x210
	.byte	0xd
	.4byte	0x220
	.byte	0xe
	.4byte	0x25
	.byte	0xe
	.4byte	0xe9
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb
	.byte	0x9
	.4byte	0x85
	.byte	0x5
	.byte	0x3
	.4byte	g_btn_filter_cnt
	.byte	0x11
	.4byte	0x1fe
	.4byte	0x242
	.byte	0x12
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc
	.byte	0x1a
	.4byte	0x232
	.byte	0x5
	.byte	0x3
	.4byte	user_callbacks
	.byte	0x11
	.4byte	0x140
	.4byte	0x264
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe
	.byte	0x15
	.4byte	0x254
	.byte	0x5
	.byte	0x3
	.4byte	btn_hw_config
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x17
	.byte	0x12
	.4byte	0x1f2
	.byte	0x5
	.byte	0x3
	.4byte	btn_config
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bd
	.byte	0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0x51
	.byte	0x2f
	.4byte	0xe9
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0x51
	.byte	0x48
	.4byte	0x1fe
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x45
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x35f
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x4ef
	.4byte	0x2ea
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x17
	.4byte	.LVL16
	.4byte	0x4fb
	.4byte	0x30b
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	internal_button_callback
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL17
	.4byte	0x4fb
	.4byte	0x32c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	internal_button_callback
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x19
	.4byte	.LVL18
	.4byte	0x507
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	button_scan_task
	.byte	0x18
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x18
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3c
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a8
	.byte	0x15
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3c
	.byte	0x24
	.4byte	0x83
	.4byte	.LLST7
	.byte	0x17
	.4byte	.LVL13
	.4byte	0x513
	.4byte	0x398
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1b
	.4byte	.LVL14
	.4byte	0x51f
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x42f
	.byte	0x1c
	.string	"pin"
	.byte	0x1
	.byte	0x2e
	.byte	0x2a
	.4byte	0x25
	.4byte	.LLST0
	.byte	0x15
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2e
	.byte	0x33
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2e
	.byte	0x44
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x1d
	.4byte	.LASF52
	.byte	0x1
	.byte	0x2f
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x1e
	.4byte	0x42f
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2f
	.byte	0x15
	.4byte	0x41c
	.byte	0x1f
	.4byte	0x440
	.4byte	.LLST4
	.byte	0
	.byte	0x20
	.4byte	.LVL3
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF67
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x44d
	.byte	0x22
	.string	"pin"
	.byte	0x1
	.byte	0x2a
	.byte	0x26
	.4byte	0x91
	.byte	0
	.byte	0x23
	.4byte	.LASF54
	.byte	0x1
	.byte	0x25
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x489
	.byte	0x1c
	.string	"pin"
	.byte	0x1
	.byte	0x25
	.byte	0x25
	.4byte	0x91
	.4byte	.LLST6
	.byte	0x19
	.4byte	.LVL10
	.4byte	0x52c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4cb
	.byte	0x1c
	.string	"pin"
	.byte	0x1
	.byte	0x20
	.byte	0x20
	.4byte	0x91
	.4byte	.LLST5
	.byte	0x19
	.4byte	.LVL7
	.4byte	0x538
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
	.byte	0x1
	.byte	0x31
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF55
	.byte	0x1
	.byte	0x13
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ef
	.byte	0x24
	.4byte	.LVL4
	.4byte	0x544
	.byte	0
	.byte	0x25
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x4
	.byte	0x4b
	.byte	0x6
	.byte	0x25
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x4
	.byte	0x59
	.byte	0x6
	.byte	0x25
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.byte	0x59
	.byte	0x9
	.byte	0x25
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x4
	.byte	0x51
	.byte	0x6
	.byte	0x26
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x207
	.byte	0xa
	.byte	0x25
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x7
	.byte	0x13
	.byte	0x5
	.byte	0x25
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x7
	.byte	0x10
	.byte	0x5
	.byte	0x26
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x1ef
	.byte	0xf
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
	.byte	0x8
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
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x18
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
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
	.byte	0x22
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
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
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE8
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"button_get_tick_ms"
.LASF59:
	.string	"app_btn_scan"
.LASF60:
	.string	"aos_msleep"
.LASF25:
	.string	"idle_level"
.LASF34:
	.string	"get_tick_cb"
.LASF45:
	.string	"button_driver_init"
.LASF44:
	.string	"button_register_callback"
.LASF30:
	.string	"app_btn_initialize_cb"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"APP_BTN_EVT_IDLE"
.LASF42:
	.string	"event"
.LASF56:
	.string	"app_btn_initialize"
.LASF3:
	.string	"short int"
.LASF32:
	.string	"config"
.LASF22:
	.string	"APP_BTN_EVT_MAX"
.LASF11:
	.string	"uint8_t"
.LASF66:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/button"
.LASF38:
	.string	"button_callback_t"
.LASF31:
	.string	"app_btn_get_level_cb"
.LASF33:
	.string	"btn_count"
.LASF63:
	.string	"aos_now_ms"
.LASF53:
	.string	"button_gpio_init"
.LASF9:
	.string	"long long int"
.LASF62:
	.string	"bl_gpio_enable_input"
.LASF40:
	.string	"btn_hw_config"
.LASF17:
	.string	"APP_BTN_EVT_HOLD_LONG"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"app_btn_event_t"
.LASF18:
	.string	"APP_BTN_EVT_DOUBLE_CLICK"
.LASF14:
	.string	"APP_BTN_EVT_PRESSED"
.LASF6:
	.string	"__uint8_t"
.LASF39:
	.string	"g_btn_filter_cnt"
.LASF67:
	.string	"pin_to_button_id"
.LASF24:
	.string	"last_state"
.LASF47:
	.string	"button_scan_task"
.LASF2:
	.string	"unsigned char"
.LASF54:
	.string	"button_read_level"
.LASF41:
	.string	"btn_config"
.LASF29:
	.string	"app_btn_get_tick_cb"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"app_btn_config_t"
.LASF46:
	.string	"param"
.LASF35:
	.string	"btn_initialize"
.LASF4:
	.string	"short unsigned int"
.LASF28:
	.string	"app_btn_hw_config_t"
.LASF16:
	.string	"APP_BTN_EVT_HOLD"
.LASF13:
	.string	"char"
.LASF51:
	.string	"user_callbacks"
.LASF58:
	.string	"aos_task_new_ext"
.LASF61:
	.string	"bl_gpio_input_get_value"
.LASF50:
	.string	"data"
.LASF15:
	.string	"APP_BTN_EVT_RELEASED"
.LASF26:
	.string	"debounce_val"
.LASF49:
	.string	"lib_event"
.LASF8:
	.string	"long unsigned int"
.LASF36:
	.string	"btn_read"
.LASF64:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF57:
	.string	"app_btn_register_callback"
.LASF65:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/button/button.c"
.LASF19:
	.string	"APP_BTN_EVT_TRIPLE_CLICK"
.LASF52:
	.string	"button_id"
.LASF48:
	.string	"internal_button_callback"
.LASF21:
	.string	"APP_BTN_EVT_IDLE_BREAK"
.LASF27:
	.string	"debounce_counter"
.LASF43:
	.string	"callback"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
