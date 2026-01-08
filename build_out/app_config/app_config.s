	.file	"app_config.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_config_init,"ax",@progbits
	.align	1
	.globl	app_config_init
	.type	app_config_init, @function
app_config_init:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_config/app_config.c"
	.loc 1 7 1
	.cfi_startproc
	.loc 1 8 5
	.loc 1 7 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 8 5
	call	easyflash_init
.LVL0:
	.loc 1 9 5 is_stmt 1
	.loc 1 10 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	app_config_init, .-app_config_init
	.section	.rodata.app_config_load_wifi.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"wifi_ssid"
	.align	2
.LC1:
	.string	"wifi_pass"
	.section	.text.app_config_load_wifi,"ax",@progbits
	.align	1
	.globl	app_config_load_wifi
	.type	app_config_load_wifi, @function
app_config_load_wifi:
.LFB5:
	.loc 1 13 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 14 5
	.loc 1 16 5
	.loc 1 16 8 is_stmt 0
	bne	a0,zero,.L4
	.loc 1 17 16
	li	a0,-1
.LVL2:
	.loc 1 37 1
	ret
.LVL3:
.L6:
	.cfi_def_cfa_register 8
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 17 16
	li	a0,-1
.LVL4:
.L3:
	.loc 1 37 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L4:
	.loc 1 13 1
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
	.loc 1 20 5
	li	a2,99
	li	a1,0
	.loc 1 13 1
	mv	s1,a0
	.loc 1 20 5 is_stmt 1
	call	memset
.LVL7:
	.loc 1 22 5
	.loc 1 22 11 is_stmt 0
	lui	a0,%hi(.LC0)
	li	a3,0
	li	a2,32
	mv	a1,s1
	addi	a0,a0,%lo(.LC0)
	call	ef_get_env_blob
.LVL8:
	.loc 1 23 5 is_stmt 1
	.loc 1 23 17 is_stmt 0
	addi	a4,a0,-1
	.loc 1 23 8
	li	a5,31
	bgtu	a4,a5,.L6
	.loc 1 24 9 is_stmt 1
	.loc 1 24 27 is_stmt 0
	add	a0,s1,a0
.LVL9:
	sb	zero,0(a0)
	.loc 1 29 5 is_stmt 1
	.loc 1 29 11 is_stmt 0
	lui	a0,%hi(.LC1)
	li	a3,0
	li	a2,64
	addi	a1,s1,33
	addi	a0,a0,%lo(.LC1)
	call	ef_get_env_blob
.LVL10:
	.loc 1 30 5 is_stmt 1
	.loc 1 30 17 is_stmt 0
	addi	a4,a0,-1
	.loc 1 30 8
	li	a5,63
	bgtu	a4,a5,.L6
	.loc 1 31 9 is_stmt 1
	.loc 1 31 31 is_stmt 0
	add	a0,s1,a0
.LVL11:
	sb	zero,33(a0)
	.loc 1 32 9 is_stmt 1
	.loc 1 32 26 is_stmt 0
	li	a5,1
	sb	a5,98(s1)
	.loc 1 33 9 is_stmt 1
	.loc 1 33 16 is_stmt 0
	li	a0,0
	j	.L3
	.cfi_endproc
.LFE5:
	.size	app_config_load_wifi, .-app_config_load_wifi
	.section	.text.app_config_save_wifi,"ax",@progbits
	.align	1
	.globl	app_config_save_wifi
	.type	app_config_save_wifi, @function
app_config_save_wifi:
.LFB6:
	.loc 1 40 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 41 5
	.loc 1 41 8 is_stmt 0
	bne	a0,zero,.L11
	.loc 1 42 16
	li	a0,-1
.LVL13:
	.loc 1 54 1
	ret
.LVL14:
.L13:
	.cfi_def_cfa_register 8
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 42 16
	li	a0,-1
.L10:
	.loc 1 54 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
.LVL15:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L11:
	.loc 1 40 1 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s1,a1
	.loc 1 41 21 discriminator 1
	beq	a1,zero,.L13
.LVL17:
	mv	s2,a0
	.loc 1 45 5 is_stmt 1
	.loc 1 45 9 is_stmt 0
	call	strlen
.LVL18:
	.loc 1 45 8
	li	a5,32
	bgtu	a0,a5,.L13
	.loc 1 45 30 discriminator 1
	mv	a0,s1
	call	strlen
.LVL19:
	.loc 1 45 27 discriminator 1
	li	a5,64
	bgtu	a0,a5,.L13
	.loc 1 49 5 is_stmt 1
	mv	a0,s2
	call	strlen
.LVL20:
	mv	a2,a0
	lui	a0,%hi(.LC0)
	mv	a1,s2
	addi	a0,a0,%lo(.LC0)
	call	ef_set_env_blob
.LVL21:
	.loc 1 50 5
	mv	a0,s1
	call	strlen
.LVL22:
	mv	a2,a0
	lui	a0,%hi(.LC1)
	mv	a1,s1
	addi	a0,a0,%lo(.LC1)
	call	ef_set_env_blob
.LVL23:
	.loc 1 51 5
	call	ef_save_env
.LVL24:
	.loc 1 53 5
	.loc 1 53 12 is_stmt 0
	li	a0,0
	j	.L10
	.cfi_endproc
.LFE6:
	.size	app_config_save_wifi, .-app_config_save_wifi
	.section	.text.app_config_clear_wifi,"ax",@progbits
	.align	1
	.globl	app_config_clear_wifi
	.type	app_config_clear_wifi, @function
app_config_clear_wifi:
.LFB7:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
	.loc 1 58 5
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 58 5
	lui	a0,%hi(.LC0)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 57 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 58 5
	addi	a0,a0,%lo(.LC0)
	call	ef_del_env
.LVL25:
	.loc 1 59 5 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	ef_del_env
.LVL26:
	.loc 1 60 5
	call	ef_save_env
.LVL27:
	.loc 1 61 5
	.loc 1 62 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	app_config_clear_wifi, .-app_config_clear_wifi
	.section	.text.app_config_has_wifi,"ax",@progbits
	.align	1
	.globl	app_config_has_wifi
	.type	app_config_has_wifi, @function
app_config_has_wifi:
.LFB8:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 68 5
	.loc 1 70 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	sw	s1,116(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	.loc 1 70 16
	lui	a0,%hi(.LC0)
	li	a3,0
	li	a2,32
	addi	a1,s0,-120
	.loc 1 65 1
	.loc 1 70 16
	addi	a0,a0,%lo(.LC0)
	call	ef_get_env_blob
.LVL28:
	mv	s1,a0
.LVL29:
	.loc 1 71 5 is_stmt 1
	.loc 1 71 16 is_stmt 0
	lui	a0,%hi(.LC1)
	li	a3,0
	li	a2,64
	addi	a1,s0,-84
	addi	a0,a0,%lo(.LC1)
	call	ef_get_env_blob
.LVL30:
	.loc 1 74 5 is_stmt 1
	.loc 1 74 26 is_stmt 0
	addi	s1,s1,-1
.LVL31:
	.loc 1 75 26
	li	a4,31
	bgtu	s1,a4,.L25
	.loc 1 74 44
	addi	a5,a0,-1
	sltiu	a0,a5,64
.LVL32:
.L23:
	.loc 1 76 1 discriminator 5
	lw	ra,124(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	lw	s1,116(sp)
	.cfi_restore 9
.LVL33:
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L25:
	.cfi_restore_state
	li	a0,0
.LVL35:
	j	.L23
	.cfi_endproc
.LFE8:
	.size	app_config_has_wifi, .-app_config_has_wifi
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_config/app_config.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3d7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.byte	0x4
	.byte	0x63
	.byte	0x2
	.byte	0xc
	.byte	0x9
	.4byte	0x9c
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd
	.byte	0xa
	.4byte	0x9c
	.byte	0
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe
	.byte	0xa
	.4byte	0xb8
	.byte	0x21
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0xf
	.byte	0x9
	.4byte	0xc8
	.byte	0x62
	.byte	0
	.byte	0x6
	.4byte	0xac
	.4byte	0xac
	.byte	0x7
	.4byte	0x64
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x8
	.4byte	0xac
	.byte	0x6
	.4byte	0xac
	.4byte	0xc8
	.byte	0x7
	.4byte	0x64
	.byte	0x40
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.byte	0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x10
	.byte	0x3
	.4byte	0x6b
	.byte	0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0xa
	.byte	0x4
	.4byte	0xb3
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0xc8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x196
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x42
	.byte	0xc
	.4byte	0xdb
	.4byte	.LLST4
	.byte	0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x42
	.byte	0x16
	.4byte	0xdb
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF9
	.byte	0x1
	.byte	0x43
	.byte	0xa
	.4byte	0x9c
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0xd
	.4byte	.LASF10
	.byte	0x1
	.byte	0x44
	.byte	0xa
	.4byte	0xb8
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0xe
	.4byte	.LVL28
	.4byte	0x386
	.4byte	0x170
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0x88,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL30
	.4byte	0x386
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x78
	.byte	0xac,0x7f
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x38
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e8
	.byte	0xe
	.4byte	.LVL25
	.4byte	0x392
	.4byte	0x1c7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xe
	.4byte	.LVL26
	.4byte	0x392
	.4byte	0x1de
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x11
	.4byte	.LVL27
	.4byte	0x39e
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x27
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b6
	.byte	0x12
	.4byte	.LASF9
	.byte	0x1
	.byte	0x27
	.byte	0x26
	.4byte	0xe7
	.4byte	.LLST2
	.byte	0x12
	.4byte	.LASF10
	.byte	0x1
	.byte	0x27
	.byte	0x38
	.4byte	0xe7
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LVL18
	.4byte	0x3aa
	.4byte	0x236
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL19
	.4byte	0x3aa
	.4byte	0x24a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL20
	.4byte	0x3aa
	.4byte	0x25e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL21
	.4byte	0x3b6
	.4byte	0x27b
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL22
	.4byte	0x3aa
	.4byte	0x28f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL23
	.4byte	0x3b6
	.4byte	0x2ac
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL24
	.4byte	0x39e
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x35c
	.byte	0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc
	.byte	0x29
	.4byte	0x35c
	.4byte	.LLST0
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0xe
	.byte	0xc
	.4byte	0xdb
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LVL7
	.4byte	0x3c2
	.4byte	0x30f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.byte	0xe
	.4byte	.LVL8
	.4byte	0x386
	.4byte	0x337
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL10
	.4byte	0x386
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0x21
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xcf
	.byte	0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x386
	.byte	0x11
	.4byte	.LVL0
	.4byte	0x3ce
	.byte	0
	.byte	0x14
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x4
	.byte	0x30
	.byte	0x8
	.byte	0x14
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3e
	.byte	0xb
	.byte	0x14
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0x3f
	.byte	0xb
	.byte	0x14
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x5
	.byte	0x29
	.byte	0x8
	.byte	0x14
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x4
	.byte	0x33
	.byte	0xb
	.byte	0x14
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x14
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x4
	.byte	0x2c
	.byte	0xb
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
	.byte	0x5
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
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x17
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
.LLST4:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE8
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7-1
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"size_t"
.LASF31:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF28:
	.string	"ef_set_env_blob"
.LASF23:
	.string	"app_config_init"
.LASF25:
	.string	"ef_del_env"
.LASF21:
	.string	"app_config_load_wifi"
.LASF27:
	.string	"strlen"
.LASF14:
	.string	"wifi_config_t"
.LASF33:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/app_config"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF29:
	.string	"memset"
.LASF16:
	.string	"len_ssid"
.LASF18:
	.string	"app_config_has_wifi"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF26:
	.string	"ef_save_env"
.LASF19:
	.string	"app_config_clear_wifi"
.LASF22:
	.string	"config"
.LASF20:
	.string	"app_config_save_wifi"
.LASF32:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/app/app_config/app_config.c"
.LASF3:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF30:
	.string	"easyflash_init"
.LASF9:
	.string	"ssid"
.LASF1:
	.string	"short int"
.LASF11:
	.string	"is_valid"
.LASF2:
	.string	"long int"
.LASF24:
	.string	"ef_get_env_blob"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"_Bool"
.LASF17:
	.string	"len_pass"
.LASF10:
	.string	"password"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
