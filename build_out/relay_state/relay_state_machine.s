	.file	"relay_state_machine.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.relay_handle_event,"ax",@progbits
	.align	1
	.globl	relay_handle_event
	.type	relay_handle_event, @function
relay_handle_event:
.LFB4:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/state_machine/relay_state/relay_state_machine.c"
	.loc 1 19 45
	.cfi_startproc
.LVL0:
	.loc 1 20 5
.LBB2:
	.loc 1 20 9
	.loc 1 20 20
	.loc 1 21 9
.LBE2:
	.loc 1 19 45 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
.LBB3:
	.loc 1 21 11
	bne	a0,zero,.L2
	.loc 1 21 86
	lui	a5,%hi(.LANCHOR0+4)
	.loc 1 21 42
	lw	a4,%lo(.LANCHOR0+4)(a5)
	li	a5,1
	bne	a4,a5,.L1
	.loc 1 20 13
	li	s1,0
.LVL1:
.L3:
	.loc 1 22 13 is_stmt 1
	.loc 1 22 27 is_stmt 0
	slli	a5,s1,4
	lui	s1,%hi(.LANCHOR1)
	addi	s1,s1,%lo(.LANCHOR1)
	add	s1,s1,a5
	.loc 1 22 13
	lw	a5,12(s1)
	jalr	a5
.LVL2:
	.loc 1 23 13 is_stmt 1
	.loc 1 23 37 is_stmt 0
	lw	a4,8(s1)
	lui	a5,%hi(.LANCHOR0+4)
	sw	a4,%lo(.LANCHOR0+4)(a5)
	.loc 1 24 13 is_stmt 1
.LBE3:
	.loc 1 28 1 is_stmt 0
	j	.L1
.LVL3:
.L2:
.LBB4:
	.loc 1 20 68 is_stmt 1
	.loc 1 20 20
	.loc 1 21 9
	.loc 1 21 11 is_stmt 0
	li	a5,1
	bne	a0,a5,.L1
	.loc 1 21 86
	lui	a5,%hi(.LANCHOR0+4)
	.loc 1 21 42
	lw	a5,%lo(.LANCHOR0+4)(a5)
	.loc 1 20 69
	li	s1,1
	.loc 1 21 42
	beq	a5,zero,.L3
.LVL4:
.L1:
.LBE4:
	.loc 1 28 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	relay_handle_event, .-relay_handle_event
	.section	.rodata.relay_state_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	">>> init relay\r\n"
	.section	.text.relay_state_init,"ax",@progbits
	.align	1
	.globl	relay_state_init
	.type	relay_state_init, @function
relay_state_init:
.LFB3:
	.loc 1 13 28 is_stmt 1
	.cfi_startproc
	.loc 1 14 5
	.loc 1 13 28 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.loc 1 14 5
	lui	a0,%hi(.LC0)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 13 28
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 14 5
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL5:
	.loc 1 15 5 is_stmt 1
	call	relay_init
.LVL6:
	.loc 1 16 5
	.loc 1 17 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 16 5
	li	a0,1
	.loc 1 17 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 16 5
	tail	relay_handle_event
.LVL7:
	.cfi_endproc
.LFE3:
	.size	relay_state_init, .-relay_state_init
	.section	.bss.relay_ctx,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	relay_ctx, @object
	.size	relay_ctx, 16
relay_ctx:
	.zero	16
	.section	.rodata.relay_table,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	relay_table, @object
	.size	relay_table, 32
relay_table:
	.word	0
	.word	1
	.word	0
	.word	relay_on
	.word	1
	.word	0
	.word	1
	.word	relay_off
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/state_machine/relay_state/relay_state_machine.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/hardware/relay/relay.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x2
	.byte	0x6
	.byte	0xe
	.4byte	0x86
	.byte	0x5
	.4byte	.LASF9
	.byte	0
	.byte	0x5
	.4byte	.LASF10
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.4byte	0x6b
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x2
	.byte	0xb
	.byte	0xe
	.4byte	0xad
	.byte	0x5
	.4byte	.LASF11
	.byte	0
	.byte	0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.4byte	0x92
	.byte	0x6
	.4byte	.LASF15
	.byte	0x2
	.byte	0x11
	.byte	0x10
	.4byte	0xc5
	.byte	0x7
	.byte	0x4
	.4byte	0xcb
	.byte	0x8
	.byte	0x9
	.byte	0x10
	.byte	0x2
	.byte	0x13
	.byte	0x9
	.4byte	0x10a
	.byte	0xa
	.4byte	.LASF16
	.byte	0x2
	.byte	0x15
	.byte	0x13
	.4byte	0x86
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x2
	.byte	0x16
	.byte	0x13
	.4byte	0xad
	.byte	0x4
	.byte	0xa
	.4byte	.LASF18
	.byte	0x2
	.byte	0x17
	.byte	0x13
	.4byte	0xad
	.byte	0x8
	.byte	0xa
	.4byte	.LASF19
	.byte	0x2
	.byte	0x18
	.byte	0x14
	.4byte	0xb9
	.byte	0xc
	.byte	0
	.byte	0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.4byte	0xcc
	.byte	0xb
	.4byte	0x10a
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6
	.byte	0x14
	.4byte	0x10a
	.byte	0x5
	.byte	0x3
	.4byte	relay_ctx
	.byte	0xd
	.4byte	0x116
	.4byte	0x144
	.byte	0xe
	.4byte	0x64
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	0x134
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8
	.byte	0x1a
	.4byte	0x144
	.byte	0x5
	.byte	0x3
	.4byte	relay_table
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x19f
	.byte	0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.byte	0x27
	.4byte	0x86
	.4byte	.LLST0
	.byte	0x11
	.4byte	.Ldebug_ranges0+0
	.byte	0x12
	.string	"i"
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.4byte	0x5d
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LVL2
	.byte	0x3
	.byte	0x79
	.byte	0xc
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e5
	.byte	0x14
	.4byte	.LVL5
	.4byte	0x1e5
	.4byte	0x1cc
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x16
	.4byte	.LVL6
	.4byte	0x1f1
	.byte	0x17
	.4byte	.LVL7
	.4byte	0x15b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x3
	.byte	0xc8
	.byte	0x5
	.byte	0x18
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x4
	.byte	0x6
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
	.byte	0x5
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
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
	.byte	0x26
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
	.byte	0x10
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
	.byte	0x11
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF14:
	.string	"relay_state_t"
.LASF22:
	.string	"relay_ctx"
.LASF13:
	.string	"relay_event_t"
.LASF29:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/components/middle/state_machine/relay_state/relay_state_machine.c"
.LASF18:
	.string	"next_state"
.LASF27:
	.string	"relay_init"
.LASF24:
	.string	"relay_handle_event"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF10:
	.string	"RELAY_EVENT_OFF"
.LASF11:
	.string	"RELAY_STATE_ON"
.LASF19:
	.string	"action"
.LASF17:
	.string	"current_state"
.LASF16:
	.string	"event"
.LASF23:
	.string	"relay_table"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF20:
	.string	"relay_ctx_t"
.LASF3:
	.string	"long long int"
.LASF21:
	.string	"char"
.LASF26:
	.string	"printf"
.LASF1:
	.string	"short int"
.LASF9:
	.string	"RELAY_EVENT_ON"
.LASF25:
	.string	"relay_state_init"
.LASF2:
	.string	"long int"
.LASF15:
	.string	"relay_action_t"
.LASF30:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/relay_state"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"RELAY_STATE_OFF"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
