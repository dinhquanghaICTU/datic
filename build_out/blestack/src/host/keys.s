	.file	"keys.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bt_keys_get_addr,"ax",@progbits
	.align	1
	.globl	bt_keys_get_addr
	.type	bt_keys_get_addr, @function
bt_keys_get_addr:
.LFB73:
	.file 1 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.c"
	.loc 1 44 1
	.cfi_startproc
.LVL0:
	.loc 1 45 2
	.loc 1 46 2
	.loc 1 47 2
	.loc 1 49 2
	.loc 1 51 2
	.loc 1 51 14
	.loc 1 66 2
.LBB16:
	.loc 1 67 3
	.loc 1 69 3
	.loc 1 69 15
	.loc 1 77 3
.LBE16:
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB22:
	.loc 1 77 3
	lui	a5,%hi(.LANCHOR0)
.LBE22:
	.loc 1 44 1
.LBB23:
	.loc 1 77 3
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a0,0(a5)
.LVL1:
	addi	s1,a5,1
	mv	a1,s1
.LVL2:
	call	bt_unpair
.LVL3:
	.loc 1 78 3 is_stmt 1
.LBB17:
.LBB18:
.LBB19:
	.file 2 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/addr.h"
	.loc 2 49 9 is_stmt 0
	addi	a1,s0,-24
	mv	a0,s1
	li	a2,7
.LBE19:
.LBE18:
	.loc 1 78 55
	sw	zero,-24(s0)
	sh	zero,-20(s0)
	sb	zero,-18(s0)
.LVL4:
.LBB21:
.LBB20:
	.loc 2 49 2 is_stmt 1
	.loc 2 49 9 is_stmt 0
	call	memcmp
.LVL5:
.LBE20:
.LBE21:
.LBE17:
.LBE23:
	.loc 1 84 2 is_stmt 1
	.loc 1 96 2
	.loc 1 98 2
	.loc 1 99 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE73:
	.size	bt_keys_get_addr, .-bt_keys_get_addr
	.section	.text.bt_foreach_bond,"ax",@progbits
	.align	1
	.globl	bt_foreach_bond
	.type	bt_foreach_bond, @function
bt_foreach_bond:
.LFB74:
	.loc 1 104 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 105 2
	.loc 1 107 2
	.loc 1 107 14
	.loc 1 104 1 is_stmt 0
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
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE74:
	.size	bt_foreach_bond, .-bt_foreach_bond
	.section	.text.bt_keys_foreach,"ax",@progbits
	.align	1
	.globl	bt_keys_foreach
	.type	bt_keys_foreach, @function
bt_keys_foreach:
.LFB75:
	.loc 1 121 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 122 2
	.loc 1 124 2
	.loc 1 124 14
	.loc 1 121 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 129 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE75:
	.size	bt_keys_foreach, .-bt_keys_foreach
	.section	.text.bt_keys_find,"ax",@progbits
	.align	1
	.globl	bt_keys_find
	.type	bt_keys_find, @function
bt_keys_find:
.LFB76:
	.loc 1 132 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 133 2
	.loc 1 135 2
	.loc 1 137 2
	.loc 1 137 14
	.loc 1 144 2
	.loc 1 132 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 145 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	bt_keys_find, .-bt_keys_find
	.section	.text.bt_keys_get_type,"ax",@progbits
	.align	1
	.globl	bt_keys_get_type
	.type	bt_keys_get_type, @function
bt_keys_get_type:
.LFB77:
	.loc 1 148 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 149 2
	.loc 1 151 2
	.loc 1 153 2
	.loc 1 148 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	mv	s1,a0
.LVL11:
	.loc 1 148 1
	mv	a0,a1
.LVL12:
	.loc 1 133 2 is_stmt 1
	.loc 1 135 2
	.loc 1 137 2
	.loc 1 137 14
	.loc 1 144 2
	.loc 1 154 2
	.loc 1 158 2
	.loc 1 158 9 is_stmt 0
	mv	a1,a2
.LVL13:
	call	bt_keys_get_addr
.LVL14:
	.loc 1 159 2 is_stmt 1
	.loc 1 159 5 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 163 2 is_stmt 1
.LVL15:
.LBB24:
.LBB25:
	.loc 1 251 2
	.loc 1 251 13 is_stmt 0
	lhu	a5,10(a0)
	or	s1,s1,a5
.LVL16:
	sh	s1,10(a0)
.LVL17:
.LBE25:
.LBE24:
	.loc 1 165 2 is_stmt 1
.L9:
	.loc 1 166 1 is_stmt 0
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
.LFE77:
	.size	bt_keys_get_type, .-bt_keys_get_type
	.section	.text.bt_keys_find_irk,"ax",@progbits
	.align	1
	.globl	bt_keys_find_irk
	.type	bt_keys_find_irk, @function
bt_keys_find_irk:
.LFB78:
	.loc 1 169 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 170 2
	.loc 1 172 2
	.loc 1 174 2
	.loc 1 169 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 215 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	li	a0,0
.LVL19:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE78:
	.size	bt_keys_find_irk, .-bt_keys_find_irk
	.section	.text.bt_keys_find_addr,"ax",@progbits
	.align	1
	.globl	bt_keys_find_addr
	.type	bt_keys_find_addr, @function
bt_keys_find_addr:
.LFB86:
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
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE86:
	.size	bt_keys_find_addr, .-bt_keys_find_addr
	.section	.text.bt_keys_add_type,"ax",@progbits
	.align	1
	.globl	bt_keys_add_type
	.type	bt_keys_add_type, @function
bt_keys_add_type:
.LFB80:
	.loc 1 250 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 251 2
	.loc 1 250 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 251 13
	lhu	a5,10(a0)
	.loc 1 252 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 251 13
	or	a1,a1,a5
.LVL21:
	sh	a1,10(a0)
	.loc 1 252 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	bt_keys_add_type, .-bt_keys_add_type
	.section	.text.bt_keys_clear,"ax",@progbits
	.align	1
	.globl	bt_keys_clear
	.type	bt_keys_clear, @function
bt_keys_clear:
.LFB81:
	.loc 1 255 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 257 5
	.loc 1 255 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 257 8
	lhu	a5,10(a0)
	.loc 1 255 1
	mv	s1,a0
	.loc 1 257 8
	andi	a5,a5,2
	beq	a5,zero,.L22
	.loc 1 258 3 is_stmt 1
	call	bt_id_del
.LVL23:
.L22:
	.loc 1 261 5
	.loc 1 294 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 261 5
	mv	a0,s1
	.loc 1 294 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL24:
	.loc 1 261 5
	li	a2,132
	.loc 1 294 1
	.loc 1 261 5
	li	a1,0
	.loc 1 294 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 261 5
	tail	memset
.LVL25:
	.cfi_endproc
.LFE81:
	.size	bt_keys_clear, .-bt_keys_clear
	.section	.text.bt_keys_clear_all,"ax",@progbits
	.align	1
	.globl	bt_keys_clear_all
	.type	bt_keys_clear_all, @function
bt_keys_clear_all:
.LFB83:
	.loc 1 310 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 311 2
	.loc 1 122 2
	.loc 1 124 2
	.loc 1 124 14
	.loc 1 310 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 312 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE83:
	.size	bt_keys_clear_all, .-bt_keys_clear_all
	.section	.text.bt_keys_update_usage,"ax",@progbits
	.align	1
	.globl	bt_keys_update_usage
	.type	bt_keys_update_usage, @function
bt_keys_update_usage:
.LFB84:
	.loc 1 485 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 486 2
	.loc 1 219 2
	.loc 1 221 2
	.loc 1 223 2
	.loc 1 223 14
	.loc 1 230 2
	.loc 1 488 2
	.loc 1 489 3
	.loc 1 485 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 505 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE84:
	.size	bt_keys_update_usage, .-bt_keys_update_usage
	.section	.bss.key_pool,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	key_pool, @object
	.size	key_pool, 0
key_pool:
	.text
.Letext0:
	.file 3 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 5 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 6 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 7 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/bluetooth.h"
	.file 8 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/include/bluetooth/gatt.h"
	.file 9 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/hci_core.h"
	.file 10 "/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.h"
	.file 11 "/home/dinhquangha/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x961
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
	.4byte	.Ldebug_ranges0+0x38
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x5b
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x70
	.byte	0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x15
	.byte	0x17
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x16
	.byte	0x18
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x17
	.byte	0x12
	.4byte	0x4f
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x6
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x6
	.byte	0x36
	.byte	0x6
	.4byte	0xe1
	.byte	0x7
	.4byte	.LASF15
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x7
	.4byte	.LASF17
	.byte	0x2
	.byte	0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	.LASF21
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x6
	.byte	0x40
	.byte	0x6
	.4byte	0x112
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.byte	0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x83
	.byte	0x9
	.byte	0x6
	.byte	0x2
	.byte	0x19
	.byte	0x9
	.4byte	0x12f
	.byte	0xa
	.string	"val"
	.byte	0x2
	.byte	0x1a
	.byte	0x7
	.4byte	0x12f
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	0x83
	.4byte	0x13f
	.byte	0xc
	.4byte	0x70
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x1b
	.byte	0x3
	.4byte	0x118
	.byte	0x9
	.byte	0x7
	.byte	0x2
	.byte	0x1e
	.byte	0x9
	.4byte	0x16d
	.byte	0xd
	.4byte	.LASF28
	.byte	0x2
	.byte	0x1f
	.byte	0x7
	.4byte	0x83
	.byte	0
	.byte	0xa
	.string	"a"
	.byte	0x2
	.byte	0x20
	.byte	0xc
	.4byte	0x13f
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x2
	.byte	0x21
	.byte	0x3
	.4byte	0x14b
	.byte	0xe
	.4byte	0x16d
	.byte	0xb
	.4byte	0x83
	.4byte	0x18e
	.byte	0xc
	.4byte	0x70
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	0x83
	.4byte	0x19e
	.byte	0xc
	.4byte	0x70
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.byte	0x8
	.byte	0x4
	.4byte	0x179
	.byte	0xf
	.4byte	.LASF62
	.byte	0x7
	.byte	0x7
	.2byte	0x349
	.byte	0x8
	.4byte	0x1c8
	.byte	0x10
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x34b
	.byte	0xf
	.4byte	0x16d
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	0x1ab
	.byte	0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x8
	.2byte	0x50e
	.byte	0x6
	.4byte	0x1ef
	.byte	0x7
	.4byte	.LASF32
	.byte	0
	.byte	0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7
	.4byte	.LASF34
	.byte	0x2
	.byte	0
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x9
	.byte	0x2a
	.byte	0x6
	.4byte	0x276
	.byte	0x7
	.4byte	.LASF35
	.byte	0
	.byte	0x7
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7
	.4byte	.LASF37
	.byte	0x2
	.byte	0x7
	.4byte	.LASF38
	.byte	0x3
	.byte	0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x7
	.4byte	.LASF42
	.byte	0x7
	.byte	0x7
	.4byte	.LASF43
	.byte	0x8
	.byte	0x7
	.4byte	.LASF44
	.byte	0x9
	.byte	0x7
	.4byte	.LASF45
	.byte	0xa
	.byte	0x7
	.4byte	.LASF46
	.byte	0xb
	.byte	0x7
	.4byte	.LASF47
	.byte	0xc
	.byte	0x7
	.4byte	.LASF48
	.byte	0xd
	.byte	0x7
	.4byte	.LASF49
	.byte	0xe
	.byte	0x7
	.4byte	.LASF50
	.byte	0xf
	.byte	0x7
	.4byte	.LASF51
	.byte	0x10
	.byte	0x7
	.4byte	.LASF52
	.byte	0x11
	.byte	0x7
	.4byte	.LASF53
	.byte	0x12
	.byte	0x7
	.4byte	.LASF54
	.byte	0x13
	.byte	0
	.byte	0xb
	.4byte	0x83
	.4byte	0x286
	.byte	0xc
	.4byte	0x70
	.byte	0x1
	.byte	0
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0xa
	.byte	0x9
	.byte	0x6
	.4byte	0x2bf
	.byte	0x7
	.4byte	.LASF55
	.byte	0x1
	.byte	0x7
	.4byte	.LASF56
	.byte	0x2
	.byte	0x7
	.4byte	.LASF57
	.byte	0x4
	.byte	0x7
	.4byte	.LASF58
	.byte	0x8
	.byte	0x7
	.4byte	.LASF59
	.byte	0x10
	.byte	0x7
	.4byte	.LASF60
	.byte	0x20
	.byte	0x7
	.4byte	.LASF61
	.byte	0x3f
	.byte	0
	.byte	0x13
	.4byte	.LASF63
	.byte	0x1a
	.byte	0xa
	.byte	0x1e
	.byte	0x8
	.4byte	0x2f4
	.byte	0xd
	.4byte	.LASF64
	.byte	0xa
	.byte	0x1f
	.byte	0x7
	.4byte	0x18e
	.byte	0
	.byte	0xd
	.4byte	.LASF65
	.byte	0xa
	.byte	0x20
	.byte	0x7
	.4byte	0x276
	.byte	0x8
	.byte	0xa
	.string	"val"
	.byte	0xa
	.byte	0x21
	.byte	0x7
	.4byte	0x17e
	.byte	0xa
	.byte	0
	.byte	0x13
	.4byte	.LASF66
	.byte	0x16
	.byte	0xa
	.byte	0x24
	.byte	0x8
	.4byte	0x31c
	.byte	0xa
	.string	"val"
	.byte	0xa
	.byte	0x25
	.byte	0x7
	.4byte	0x17e
	.byte	0
	.byte	0xa
	.string	"rpa"
	.byte	0xa
	.byte	0x26
	.byte	0xc
	.4byte	0x13f
	.byte	0x10
	.byte	0
	.byte	0x13
	.4byte	.LASF67
	.byte	0x14
	.byte	0xa
	.byte	0x29
	.byte	0x8
	.4byte	0x344
	.byte	0xa
	.string	"val"
	.byte	0xa
	.byte	0x2a
	.byte	0x7
	.4byte	0x17e
	.byte	0
	.byte	0xa
	.string	"cnt"
	.byte	0xa
	.byte	0x2b
	.byte	0x8
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.byte	0x13
	.4byte	.LASF68
	.byte	0x84
	.byte	0xa
	.byte	0x2e
	.byte	0x8
	.4byte	0x3e0
	.byte	0xa
	.string	"id"
	.byte	0xa
	.byte	0x2f
	.byte	0x7
	.4byte	0x83
	.byte	0
	.byte	0xd
	.4byte	.LASF31
	.byte	0xa
	.byte	0x30
	.byte	0xf
	.4byte	0x16d
	.byte	0x1
	.byte	0xd
	.4byte	.LASF69
	.byte	0xa
	.byte	0x34
	.byte	0x7
	.4byte	0x83
	.byte	0x8
	.byte	0xd
	.4byte	.LASF70
	.byte	0xa
	.byte	0x35
	.byte	0x7
	.4byte	0x83
	.byte	0x9
	.byte	0xd
	.4byte	.LASF71
	.byte	0xa
	.byte	0x36
	.byte	0x8
	.4byte	0x8f
	.byte	0xa
	.byte	0xa
	.string	"ltk"
	.byte	0xa
	.byte	0x37
	.byte	0x10
	.4byte	0x2bf
	.byte	0xc
	.byte	0xa
	.string	"irk"
	.byte	0xa
	.byte	0x38
	.byte	0x10
	.4byte	0x2f4
	.byte	0x26
	.byte	0xd
	.4byte	.LASF72
	.byte	0xa
	.byte	0x3a
	.byte	0x11
	.4byte	0x31c
	.byte	0x3c
	.byte	0xd
	.4byte	.LASF73
	.byte	0xa
	.byte	0x3b
	.byte	0x11
	.4byte	0x31c
	.byte	0x50
	.byte	0xd
	.4byte	.LASF74
	.byte	0xa
	.byte	0x3e
	.byte	0x10
	.4byte	0x2bf
	.byte	0x64
	.byte	0xd
	.4byte	.LASF75
	.byte	0xa
	.byte	0x41
	.byte	0x8
	.4byte	0x9b
	.byte	0x80
	.byte	0
	.byte	0xb
	.4byte	0x344
	.4byte	0x3f0
	.byte	0x14
	.4byte	0x70
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.4byte	0x3e0
	.byte	0x5
	.byte	0x3
	.4byte	key_pool
	.byte	0x16
	.4byte	.LASF76
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0x9b
	.byte	0x16
	.4byte	.LASF77
	.byte	0x1
	.byte	0x28
	.byte	0x18
	.4byte	0x41a
	.byte	0x8
	.byte	0x4
	.4byte	0x344
	.byte	0x17
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1e4
	.byte	0x6
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x1
	.byte	0x9c
	.4byte	0x463
	.byte	0x18
	.string	"id"
	.byte	0x1
	.2byte	0x1e4
	.byte	0x20
	.4byte	0x83
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1e4
	.byte	0x38
	.4byte	0x1a5
	.byte	0x1
	.byte	0x5b
	.byte	0x1a
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1e6
	.byte	0x12
	.4byte	0x41a
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x135
	.byte	0x6
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x1
	.byte	0x9c
	.4byte	0x489
	.byte	0x18
	.string	"id"
	.byte	0x1
	.2byte	0x135
	.byte	0x1d
	.4byte	0x83
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1b
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x128
	.byte	0xd
	.4byte	0x4bd
	.byte	0x1c
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x128
	.byte	0x2b
	.4byte	0x41a
	.byte	0x1c
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x128
	.byte	0x37
	.4byte	0xa7
	.byte	0x1d
	.string	"id"
	.byte	0x1
	.2byte	0x12a
	.byte	0x8
	.4byte	0x112
	.byte	0
	.byte	0x1e
	.4byte	.LASF82
	.byte	0x1
	.byte	0xfe
	.byte	0x6
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x1
	.byte	0x9c
	.4byte	0x514
	.byte	0x1f
	.4byte	.LASF71
	.byte	0x1
	.byte	0xfe
	.byte	0x24
	.4byte	0x41a
	.4byte	.LLST14
	.byte	0x20
	.4byte	.LVL23
	.4byte	0x932
	.4byte	0x4f7
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL25
	.4byte	0x93f
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x21
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x21
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF86
	.byte	0x1
	.byte	0xf9
	.byte	0x6
	.byte	0x1
	.4byte	0x53a
	.byte	0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0xf9
	.byte	0x27
	.4byte	0x41a
	.byte	0x24
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf9
	.byte	0x31
	.4byte	0x69
	.byte	0
	.byte	0x25
	.4byte	.LASF83
	.byte	0x1
	.byte	0xd9
	.byte	0x11
	.4byte	0x41a
	.byte	0x1
	.4byte	0x56d
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0xd9
	.byte	0x28
	.4byte	0x83
	.byte	0x24
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd9
	.byte	0x40
	.4byte	0x1a5
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0xdb
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x25
	.4byte	.LASF84
	.byte	0x1
	.byte	0xa8
	.byte	0x11
	.4byte	0x41a
	.byte	0x1
	.4byte	0x5a0
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0xa8
	.byte	0x27
	.4byte	0x83
	.byte	0x24
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa8
	.byte	0x3f
	.4byte	0x1a5
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x28
	.4byte	.LASF92
	.byte	0x1
	.byte	0x93
	.byte	0x11
	.4byte	0x41a
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x632
	.byte	0x1f
	.4byte	.LASF28
	.byte	0x1
	.byte	0x93
	.byte	0x26
	.4byte	0x69
	.4byte	.LLST6
	.byte	0x29
	.string	"id"
	.byte	0x1
	.byte	0x93
	.byte	0x31
	.4byte	0x83
	.4byte	.LLST7
	.byte	0x1f
	.4byte	.LASF31
	.byte	0x1
	.byte	0x93
	.byte	0x49
	.4byte	0x1a5
	.4byte	.LLST8
	.byte	0x2a
	.4byte	.LASF71
	.byte	0x1
	.byte	0x95
	.byte	0x12
	.4byte	0x41a
	.4byte	.LLST9
	.byte	0x2b
	.4byte	0x514
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0xa3
	.byte	0x2
	.4byte	0x620
	.byte	0x2c
	.4byte	0x52d
	.4byte	.LLST10
	.byte	0x2c
	.4byte	0x521
	.4byte	.LLST11
	.byte	0
	.byte	0x2d
	.4byte	.LVL14
	.4byte	0x746
	.byte	0x21
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF85
	.byte	0x1
	.byte	0x83
	.byte	0x11
	.4byte	0x41a
	.byte	0x1
	.4byte	0x671
	.byte	0x24
	.4byte	.LASF28
	.byte	0x1
	.byte	0x83
	.byte	0x22
	.4byte	0x69
	.byte	0x26
	.string	"id"
	.byte	0x1
	.byte	0x83
	.byte	0x2d
	.4byte	0x83
	.byte	0x24
	.4byte	.LASF31
	.byte	0x1
	.byte	0x83
	.byte	0x45
	.4byte	0x1a5
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x85
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x23
	.4byte	.LASF87
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.byte	0x1
	.4byte	0x6ad
	.byte	0x24
	.4byte	.LASF28
	.byte	0x1
	.byte	0x77
	.byte	0x1a
	.4byte	0x69
	.byte	0x24
	.4byte	.LASF88
	.byte	0x1
	.byte	0x77
	.byte	0x27
	.4byte	0x6bd
	.byte	0x24
	.4byte	.LASF81
	.byte	0x1
	.byte	0x78
	.byte	0xe
	.4byte	0xa7
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x7a
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x2e
	.4byte	0x6bd
	.byte	0x2f
	.4byte	0x41a
	.byte	0x2f
	.4byte	0xa7
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6ad
	.byte	0x1e
	.4byte	.LASF89
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x72a
	.byte	0x30
	.string	"id"
	.byte	0x1
	.byte	0x65
	.byte	0x1b
	.4byte	0x83
	.byte	0x1
	.byte	0x5a
	.byte	0x31
	.4byte	.LASF88
	.byte	0x1
	.byte	0x65
	.byte	0x26
	.4byte	0x740
	.byte	0x1
	.byte	0x5b
	.byte	0x31
	.4byte	.LASF90
	.byte	0x1
	.byte	0x67
	.byte	0xe
	.4byte	0xa7
	.byte	0x1
	.byte	0x5c
	.byte	0x32
	.string	"i"
	.byte	0x1
	.byte	0x69
	.byte	0x6
	.4byte	0x69
	.byte	0
	.byte	0x33
	.byte	0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x6c
	.byte	0x13
	.4byte	0x41a
	.byte	0x33
	.byte	0x16
	.4byte	.LASF91
	.byte	0x1
	.byte	0x6f
	.byte	0x18
	.4byte	0x1ab
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	0x73a
	.byte	0x2f
	.4byte	0x73a
	.byte	0x2f
	.4byte	0xa7
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1c8
	.byte	0x8
	.byte	0x4
	.4byte	0x72a
	.byte	0x28
	.4byte	.LASF93
	.byte	0x1
	.byte	0x2b
	.byte	0x11
	.4byte	0x41a
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x824
	.byte	0x29
	.string	"id"
	.byte	0x1
	.byte	0x2b
	.byte	0x27
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x1f
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.byte	0x3f
	.4byte	0x1a5
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2d
	.byte	0x12
	.4byte	0x41a
	.byte	0x32
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	0x69
	.byte	0x1
	.byte	0x2a
	.4byte	.LASF94
	.byte	0x1
	.byte	0x2f
	.byte	0x9
	.4byte	0x77
	.4byte	.LLST2
	.byte	0x34
	.4byte	.Ldebug_ranges0+0
	.byte	0x15
	.4byte	.LASF95
	.byte	0x1
	.byte	0x43
	.byte	0x13
	.4byte	0x41a
	.byte	0x6
	.byte	0x3
	.4byte	key_pool
	.byte	0x9f
	.byte	0x35
	.4byte	0x7d0
	.byte	0x16
	.4byte	.LASF96
	.byte	0x1
	.byte	0x46
	.byte	0x14
	.4byte	0x41a
	.byte	0
	.byte	0x36
	.4byte	0x85f
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x4e
	.byte	0x8
	.4byte	0x812
	.byte	0x2c
	.4byte	0x870
	.4byte	.LLST3
	.byte	0x2c
	.4byte	0x87a
	.4byte	.LLST4
	.byte	0x2d
	.4byte	.LVL5
	.4byte	0x94b
	.byte	0x21
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x21
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0x68
	.byte	0x21
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL3
	.4byte	0x957
	.byte	0x21
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	.LASF97
	.byte	0xa
	.byte	0x61
	.byte	0x13
	.4byte	0x69
	.byte	0x3
	.4byte	0x842
	.byte	0x24
	.4byte	.LASF71
	.byte	0xa
	.byte	0x61
	.byte	0x31
	.4byte	0x41a
	.byte	0
	.byte	0x38
	.4byte	.LASF107
	.byte	0x2
	.byte	0x49
	.byte	0x13
	.4byte	0x19e
	.4byte	0x85f
	.byte	0x24
	.4byte	.LASF31
	.byte	0x2
	.byte	0x49
	.byte	0x39
	.4byte	0x1a5
	.byte	0
	.byte	0x37
	.4byte	.LASF98
	.byte	0x2
	.byte	0x2f
	.byte	0x13
	.4byte	0x69
	.byte	0x3
	.4byte	0x885
	.byte	0x26
	.string	"a"
	.byte	0x2
	.byte	0x2f
	.byte	0x36
	.4byte	0x1a5
	.byte	0x26
	.string	"b"
	.byte	0x2
	.byte	0x2f
	.byte	0x4d
	.4byte	0x1a5
	.byte	0
	.byte	0x39
	.4byte	0x671
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x8b4
	.byte	0x3a
	.4byte	0x67e
	.byte	0x1
	.byte	0x5a
	.byte	0x3a
	.4byte	0x68a
	.byte	0x1
	.byte	0x5b
	.byte	0x3a
	.4byte	0x696
	.byte	0x1
	.byte	0x5c
	.byte	0x3b
	.4byte	0x6a2
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	0x632
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x8e5
	.byte	0x2c
	.4byte	0x643
	.4byte	.LLST5
	.byte	0x3a
	.4byte	0x64f
	.byte	0x1
	.byte	0x5b
	.byte	0x3a
	.4byte	0x65a
	.byte	0x1
	.byte	0x5c
	.byte	0x3b
	.4byte	0x666
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	0x56d
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x90e
	.byte	0x2c
	.4byte	0x57e
	.4byte	.LLST12
	.byte	0x3a
	.4byte	0x589
	.byte	0x1
	.byte	0x5b
	.byte	0x3c
	.4byte	0x595
	.byte	0
	.byte	0x39
	.4byte	0x514
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x932
	.byte	0x3a
	.4byte	0x521
	.byte	0x1
	.byte	0x5a
	.byte	0x2c
	.4byte	0x52d
	.4byte	.LLST13
	.byte	0
	.byte	0x3d
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x101
	.byte	0x6
	.byte	0x3e
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0xb
	.byte	0x21
	.byte	0x8
	.byte	0x3e
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0xb
	.byte	0x1e
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x346
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xe
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x37
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
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
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0x3e
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
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LFE81
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14-1
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE77
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL15
	.4byte	.LVL17
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
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x3
	.4byte	key_pool+1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x78
	.byte	0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LFE80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"bt_addr_t"
.LASF9:
	.string	"uint32_t"
.LASF22:
	.string	"_POLL_STATE_NOT_READY"
.LASF19:
	.string	"_POLL_NUM_TYPES"
.LASF51:
	.string	"BT_DEV_RPA_VALID"
.LASF77:
	.string	"last_keys_updated"
.LASF72:
	.string	"local_csrk"
.LASF45:
	.string	"BT_DEV_SCANNING"
.LASF24:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF35:
	.string	"BT_DEV_ENABLE"
.LASF48:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF52:
	.string	"BT_DEV_ID_PENDING"
.LASF87:
	.string	"bt_keys_foreach"
.LASF1:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF102:
	.string	"bt_unpair"
.LASF84:
	.string	"bt_keys_find_irk"
.LASF74:
	.string	"slave_ltk"
.LASF33:
	.string	"BT_GATT_SUBSCRIBE_FLAG_WRITE_PENDING"
.LASF54:
	.string	"BT_DEV_NUM_FLAGS"
.LASF49:
	.string	"BT_DEV_SCAN_WL"
.LASF92:
	.string	"bt_keys_get_type"
.LASF34:
	.string	"BT_GATT_SUBSCRIBE_NUM_FLAGS"
.LASF26:
	.string	"_POLL_NUM_STATES"
.LASF32:
	.string	"BT_GATT_SUBSCRIBE_FLAG_VOLATILE"
.LASF39:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF90:
	.string	"user_data"
.LASF64:
	.string	"rand"
.LASF104:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/components/network/ble/blestack/src/host/keys.c"
.LASF46:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF95:
	.string	"oldest"
.LASF3:
	.string	"long long int"
.LASF53:
	.string	"BT_DEV_ASSIST_RUN"
.LASF100:
	.string	"memset"
.LASF105:
	.string	"/home/dinhquangha/intern/Ai-Thinker-WB2/datic/build_out/blestack"
.LASF40:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF2:
	.string	"long int"
.LASF85:
	.string	"bt_keys_find"
.LASF89:
	.string	"bt_foreach_bond"
.LASF31:
	.string	"addr"
.LASF36:
	.string	"BT_DEV_READY"
.LASF47:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF44:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF59:
	.string	"BT_KEYS_REMOTE_CSRK"
.LASF16:
	.string	"_POLL_TYPE_SIGNAL"
.LASF69:
	.string	"enc_size"
.LASF94:
	.string	"first_free_slot"
.LASF60:
	.string	"BT_KEYS_LTK_P256"
.LASF71:
	.string	"keys"
.LASF106:
	.string	"keys_clear_id"
.LASF56:
	.string	"BT_KEYS_IRK"
.LASF4:
	.string	"unsigned char"
.LASF17:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF68:
	.string	"bt_keys"
.LASF101:
	.string	"memcmp"
.LASF15:
	.string	"_POLL_TYPE_IGNORE"
.LASF93:
	.string	"bt_keys_get_addr"
.LASF0:
	.string	"signed char"
.LASF70:
	.string	"flags"
.LASF7:
	.string	"long long unsigned int"
.LASF73:
	.string	"remote_csrk"
.LASF28:
	.string	"type"
.LASF78:
	.string	"key_pool"
.LASF25:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF96:
	.string	"current"
.LASF80:
	.string	"bt_keys_clear_all"
.LASF5:
	.string	"short unsigned int"
.LASF79:
	.string	"bt_keys_update_usage"
.LASF55:
	.string	"BT_KEYS_SLAVE_LTK"
.LASF14:
	.string	"char"
.LASF37:
	.string	"BT_DEV_PRESET_ID"
.LASF66:
	.string	"bt_irk"
.LASF86:
	.string	"bt_keys_add_type"
.LASF57:
	.string	"BT_KEYS_LTK"
.LASF88:
	.string	"func"
.LASF42:
	.string	"BT_DEV_ADVERTISING_NAME"
.LASF30:
	.string	"_Bool"
.LASF107:
	.string	"bt_addr_le_is_rpa"
.LASF76:
	.string	"aging_counter_val"
.LASF81:
	.string	"data"
.LASF58:
	.string	"BT_KEYS_LOCAL_CSRK"
.LASF62:
	.string	"bt_bond_info"
.LASF38:
	.string	"BT_DEV_USER_ID_ADDR"
.LASF43:
	.string	"BT_DEV_ADVERTISING_CONNECTABLE"
.LASF50:
	.string	"BT_DEV_AUTO_CONN"
.LASF6:
	.string	"long unsigned int"
.LASF41:
	.string	"BT_DEV_ADVERTISING"
.LASF65:
	.string	"ediv"
.LASF23:
	.string	"_POLL_STATE_SIGNALED"
.LASF103:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF20:
	.string	"_poll_types_bits"
.LASF61:
	.string	"BT_KEYS_ALL"
.LASF91:
	.string	"info"
.LASF11:
	.string	"u8_t"
.LASF13:
	.string	"u32_t"
.LASF99:
	.string	"bt_id_del"
.LASF63:
	.string	"bt_ltk"
.LASF12:
	.string	"u16_t"
.LASF29:
	.string	"bt_addr_le_t"
.LASF82:
	.string	"bt_keys_clear"
.LASF21:
	.string	"_poll_states_bits"
.LASF97:
	.string	"bt_keys_store"
.LASF67:
	.string	"bt_csrk"
.LASF75:
	.string	"aging_counter"
.LASF83:
	.string	"bt_keys_find_addr"
.LASF8:
	.string	"unsigned int"
.LASF18:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF98:
	.string	"bt_addr_le_cmp"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
