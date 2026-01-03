	.file	"hal_hwtimer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_hwtimer_init,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_init
	.type	hal_hwtimer_init, @function
hal_hwtimer_init:
.LFB30:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_hwtimer.c"
	.loc 1 211 1
	.cfi_startproc
	.loc 1 212 5
	.loc 1 211 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 213 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	hal_hwtimer_init, .-hal_hwtimer_init
	.section	.rodata.hal_hwtimer_create.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hw_timer"
	.section	.text.hal_hwtimer_create,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_create
	.type	hal_hwtimer_create, @function
hal_hwtimer_create:
.LFB31:
	.loc 1 216 1 is_stmt 1
	.cfi_startproc
.LVL0:
	.loc 1 217 5
	.loc 1 219 5
	.loc 1 216 1 is_stmt 0
	mv	a4,a1
	.loc 1 221 64
	li	a1,1000
.LVL1:
	mul	a0,a0,a1
.LVL2:
	.loc 1 216 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 219 14
	addi	a3,s0,-20
	li	a2,1
.LVL3:
	divu	a1,a0,a1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	xTimerCreate
.LVL4:
	.loc 1 219 12
	sw	a0,-20(s0)
	.loc 1 226 5 is_stmt 1
	.loc 1 226 8 is_stmt 0
	beq	a0,zero,.L4
	mv	s1,a0
	.loc 1 227 10 is_stmt 1
	call	xTaskGetTickCount
.LVL5:
	mv	a2,a0
	li	a4,-1
	li	a3,0
	li	a1,1
	mv	a0,s1
	call	xTimerGenericCommand
.LVL6:
.L4:
	.loc 1 229 5
	.loc 1 230 1 is_stmt 0
	lw	a0,-20(s0)
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	hal_hwtimer_create, .-hal_hwtimer_create
	.section	.text.hal_hwtimer_delete,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_delete
	.type	hal_hwtimer_delete, @function
hal_hwtimer_delete:
.LFB32:
	.loc 1 233 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 234 5
	.loc 1 233 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 234 33
	li	a4,-1
	li	a3,0
	li	a2,0
	li	a1,5
	call	xTimerGenericCommand
.LVL8:
	.loc 1 238 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 234 8
	seqz	a0,a0
	.loc 1 238 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	hal_hwtimer_delete, .-hal_hwtimer_delete
	.section	.text.hal_hwtimer_change_period,"ax",@progbits
	.align	1
	.globl	hal_hwtimer_change_period
	.type	hal_hwtimer_change_period, @function
hal_hwtimer_change_period:
.LFB33:
	.loc 1 241 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 242 5
	.loc 1 242 154 is_stmt 0
	li	a2,1000
	mul	a1,a1,a2
.LVL10:
	.loc 1 241 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 242 33
	li	a4,-1
	li	a3,0
	divu	a2,a1,a2
	li	a1,4
	call	xTimerGenericCommand
.LVL11:
	.loc 1 246 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 242 8
	seqz	a0,a0
	.loc 1 246 1
	neg	a0,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	hal_hwtimer_change_period, .-hal_hwtimer_change_period
	.text
.Letext0:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_hwtimer.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x46
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6e
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
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x8b
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x62
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4d
	.byte	0x22
	.4byte	0xb7
	.byte	0x6
	.byte	0x4
	.4byte	0xbd
	.byte	0x8
	.4byte	.LASF31
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x52
	.byte	0x10
	.4byte	0xce
	.byte	0x6
	.byte	0x4
	.4byte	0xd4
	.byte	0x9
	.4byte	0xdf
	.byte	0xa
	.4byte	0xab
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x9
	.byte	0x10
	.4byte	0x85
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.byte	0x1c
	.byte	0x9
	.4byte	0x102
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x1d
	.byte	0xb
	.4byte	0x83
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1e
	.byte	0x3
	.4byte	0xeb
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf0
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x17f
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf0
	.byte	0x2b
	.4byte	0x17f
	.4byte	.LLST4
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0xf0
	.byte	0x3d
	.4byte	0x62
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LVL11
	.4byte	0x2ad
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x102
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe8
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d6
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe8
	.byte	0x24
	.4byte	0x17f
	.4byte	.LLST3
	.byte	0xf
	.4byte	.LVL8
	.4byte	0x2ad
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd7
	.byte	0xd
	.4byte	0x17f
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x297
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0xd7
	.byte	0x29
	.4byte	0x62
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xd7
	.byte	0x36
	.4byte	0xdf
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd7
	.byte	0x43
	.4byte	0x7c
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd9
	.byte	0x13
	.4byte	0xab
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.4byte	.LVL4
	.4byte	0x2ba
	.4byte	0x26d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0x6c
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x2c6
	.byte	0xf
	.4byte	.LVL6
	.4byte	0x2ad
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd2
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x502
	.byte	0xc
	.byte	0x16
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x4
	.byte	0xe4
	.byte	0x10
	.byte	0x15
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x547
	.byte	0xc
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x12
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
	.byte	0x15
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
	.byte	0x16
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
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE32
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
	.4byte	.LFE31
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
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF18:
	.string	"pstnode"
.LASF13:
	.string	"TickType_t"
.LASF17:
	.string	"hw_timer_t"
.LASF26:
	.string	"xTimerCreate"
.LASF0:
	.string	"unsigned int"
.LASF32:
	.string	"null"
.LASF10:
	.string	"long long unsigned int"
.LASF20:
	.string	"hal_hwtimer_change_period"
.LASF5:
	.string	"unsigned char"
.LASF29:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_hwtimer.c"
.LASF23:
	.string	"handler"
.LASF34:
	.string	"hal_hwtimer_init"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF33:
	.string	"handle"
.LASF22:
	.string	"hal_hwtimer_create"
.LASF25:
	.string	"xTimerGenericCommand"
.LASF21:
	.string	"hal_hwtimer_delete"
.LASF31:
	.string	"tmrTimerControl"
.LASF30:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/hosal"
.LASF15:
	.string	"TimerCallbackFunction_t"
.LASF14:
	.string	"TimerHandle_t"
.LASF11:
	.string	"char"
.LASF24:
	.string	"repeat"
.LASF19:
	.string	"period"
.LASF7:
	.string	"int32_t"
.LASF4:
	.string	"long long int"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"hw_t"
.LASF8:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF27:
	.string	"xTaskGetTickCount"
.LASF12:
	.string	"BaseType_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
