	.file	"tc_blfdt_dump.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.fdt32_to_cpu,"ax",@progbits
	.align	1
	.type	fdt32_to_cpu, @function
fdt32_to_cpu:
.LFB7:
	.file 1 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt_env.h"
	.loc 1 92 1
	.cfi_startproc
.LVL0:
	.loc 1 93 5
	.loc 1 92 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.loc 1 93 212
	srli	a4,a0,24
	.cfi_offset 8, -4
	.loc 1 92 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 93 12
	slli	a5,a0,24
	.loc 1 92 1
	.loc 1 93 12
	or	a5,a5,a4
	.loc 1 93 112
	srli	a4,a0,8
	.loc 1 94 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 93 112
	andi	a4,a4,0xff
	.loc 1 93 163
	srli	a0,a0,16
.LVL1:
	.loc 1 93 117
	slli	a4,a4,16
	.loc 1 93 163
	andi	a0,a0,0xff
	.loc 1 93 12
	or	a5,a5,a4
	.loc 1 93 168
	slli	a0,a0,8
	.loc 1 94 1
	or	a0,a5,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	fdt32_to_cpu, .-fdt32_to_cpu
	.section	.text.fdt64_to_cpu,"ax",@progbits
	.align	1
	.type	fdt64_to_cpu, @function
fdt64_to_cpu:
.LFB9:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 102 5
	.loc 1 102 112 is_stmt 0
	srli	a4,a0,8
	.loc 1 102 77
	andi	a4,a4,0xff
	.loc 1 102 12
	slli	a3,a0,24
	.loc 1 102 117
	slli	a4,a4,16
	.loc 1 102 12
	or	a3,a3,a4
	.loc 1 102 163
	srli	a4,a0,16
	.loc 1 102 128
	andi	a4,a4,0xff
	.loc 1 102 168
	slli	a4,a4,8
	.loc 1 102 381
	srli	a5,a1,24
	.loc 1 102 12
	or	a3,a3,a4
	.loc 1 102 179
	srli	a4,a0,24
	.loc 1 102 270
	slli	a0,a1,24
.LVL3:
	.loc 1 101 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 102 12
	or	a0,a5,a0
	.loc 1 102 316
	srli	a5,a1,8
	.loc 1 101 1
	sw	s0,12(sp)
	.loc 1 102 281
	andi	a5,a5,0xff
	.cfi_offset 8, -4
	.loc 1 101 1
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 102 321
	slli	a5,a5,16
	.loc 1 103 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 1 102 12
	or	a0,a0,a5
	.loc 1 102 367
	srli	a5,a1,16
	.loc 1 102 332
	andi	a5,a5,0xff
	.loc 1 102 372
	slli	a5,a5,8
	.loc 1 103 1
	or	a0,a0,a5
	or	a1,a3,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	fdt64_to_cpu, .-fdt64_to_cpu
	.section	.text.fdt32_ld,"ax",@progbits
	.align	1
	.type	fdt32_ld, @function
fdt32_ld:
.LFB12:
	.file 2 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
	.loc 2 165 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 2 166 5
	.loc 2 168 5
	.loc 2 165 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 168 13
	lbu	a5,0(a0)
	.loc 2 169 12
	lbu	a4,1(a0)
	.loc 2 172 1
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	.loc 2 168 29
	slli	a5,a5,24
	.loc 2 169 28
	slli	a4,a4,16
	.loc 2 169 9
	or	a5,a5,a4
	.loc 2 171 13
	lbu	a4,3(a0)
	.loc 2 170 12
	lbu	a0,2(a0)
.LVL5:
	.loc 2 172 1
	.loc 2 171 9
	or	a5,a5,a4
	.loc 2 170 28
	slli	a0,a0,8
	.loc 2 172 1
	or	a0,a5,a0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	fdt32_ld, .-fdt32_ld
	.section	.text.util_is_printable_string,"ax",@progbits
	.align	1
	.globl	util_is_printable_string
	.type	util_is_printable_string, @function
util_is_printable_string:
.LFB41:
	.file 3 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/blfdt/test/tc_blfdt_dump.c"
	.loc 3 51 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 3 52 5
	.loc 3 53 5
	.loc 3 56 5
	.loc 3 51 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 3 56 8
	beq	a1,zero,.L17
.LBB7:
.LBB8:
	.loc 3 61 10
	add	a1,a0,a1
.LVL7:
	.loc 3 61 8
	lbu	a4,-1(a1)
	mv	a5,a0
.LVL8:
	.loc 3 61 5 is_stmt 1
.LBE8:
.LBE7:
	.loc 3 57 16 is_stmt 0
	li	a0,0
.LVL9:
.LBB11:
.LBB9:
	.loc 3 61 8
	bne	a4,zero,.L8
	.loc 3 65 5 is_stmt 1
.LVL10:
	.loc 3 67 5
	.loc 3 69 34 is_stmt 0
	lui	a2,%hi(_ctype_+1)
	addi	a2,a2,%lo(_ctype_+1)
.LVL11:
.L9:
	.loc 3 67 11 is_stmt 1
	bgtu	a1,a5,.L18
	.loc 3 81 12 is_stmt 0
	li	a0,1
.LVL12:
.L8:
.LBE9:
.LBE11:
	.loc 3 82 1
	lw	s0,12(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L18:
	.cfi_restore_state
.LBB12:
.LBB10:
	mv	a4,a5
.LVL14:
.L12:
	.loc 3 69 26
	lbu	a3,0(a4)
	.loc 3 69 23
	beq	a3,zero,.L10
	.loc 3 69 34
	add	a3,a3,a2
	.loc 3 69 29
	lbu	a3,0(a3)
	andi	a3,a3,151
	beq	a3,zero,.L10
	.loc 3 70 13 is_stmt 1
	.loc 3 70 14 is_stmt 0
	addi	a4,a4,1
.LVL15:
	.loc 3 69 15 is_stmt 1
	bne	a1,a4,.L12
.L10:
	.loc 3 74 9
	.loc 3 74 12 is_stmt 0
	lbu	a3,0(a4)
	bne	a3,zero,.L17
	.loc 3 74 24
	beq	a5,a4,.L17
	.loc 3 78 9 is_stmt 1
	.loc 3 78 10 is_stmt 0
	addi	a5,a4,1
.LVL16:
	j	.L9
.LVL17:
.L17:
.LBE10:
.LBE12:
	.loc 3 57 16
	li	a0,0
	j	.L8
	.cfi_endproc
.LFE41:
	.size	util_is_printable_string, .-util_is_printable_string
	.section	.rodata.utilfdt_print_data.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	" "
	.align	2
.LC1:
	.string	""
	.align	2
.LC2:
	.string	" = "
	.align	2
.LC3:
	.string	"\"%s\""
	.align	2
.LC4:
	.string	", "
	.align	2
.LC5:
	.string	" = <"
	.align	2
.LC6:
	.string	"0x%08x%s"
	.align	2
.LC7:
	.string	">"
	.align	2
.LC8:
	.string	" = ["
	.align	2
.LC9:
	.string	"%02x%s"
	.align	2
.LC10:
	.string	"]"
	.section	.text.utilfdt_print_data,"ax",@progbits
	.align	1
	.globl	utilfdt_print_data
	.type	utilfdt_print_data, @function
utilfdt_print_data:
.LFB42:
	.loc 3 85 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 3 86 5
	.loc 3 87 5
	.loc 3 90 5
	.loc 3 90 8 is_stmt 0
	beq	a1,zero,.L39
	.loc 3 85 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	s2,a0
	mv	s1,a1
.LVL19:
.LBB17:
.LBB18:
	.loc 3 94 5 is_stmt 1
	.loc 3 94 9 is_stmt 0
	call	util_is_printable_string
.LVL20:
	.loc 3 94 8
	beq	a0,zero,.L26
	.loc 3 95 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL21:
	.loc 3 97 9
	.loc 3 99 13 is_stmt 0
	lui	s4,%hi(.LC3)
	.loc 3 101 26
	add	s1,s2,s1
.LVL22:
	.loc 3 102 17
	lui	s3,%hi(.LC4)
.LVL23:
.L28:
	.loc 3 98 9 is_stmt 1
	.loc 3 99 13
	mv	a1,s2
	addi	a0,s4,%lo(.LC3)
	call	printf
.LVL24:
	.loc 3 100 13
	.loc 3 100 18 is_stmt 0
	mv	a0,s2
	call	strlen
.LVL25:
	.loc 3 100 28
	addi	a0,a0,1
	.loc 3 100 15
	add	s2,s2,a0
.LVL26:
	.loc 3 101 13 is_stmt 1
	.loc 3 101 16 is_stmt 0
	bgeu	s2,s1,.L23
	.loc 3 102 17 is_stmt 1
	addi	a0,s3,%lo(.LC4)
	call	printf
.LVL27:
	.loc 3 103 17
	j	.L28
.LVL28:
.L26:
	.loc 3 105 12
	.loc 3 105 26 is_stmt 0
	andi	a5,s1,3
	.loc 3 105 15
	bne	a5,zero,.L29
.LBB19:
	.loc 3 106 9 is_stmt 1
.LVL29:
	.loc 3 108 9
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL30:
	.loc 3 109 9
	.loc 3 109 25 is_stmt 0
	li	a1,4
	div	s1,s1,a1
.LVL31:
	.loc 3 110 13
	lui	s4,%hi(.LC0)
	lui	s5,%hi(.LC1)
	.loc 3 109 16
	li	s3,0
	.loc 3 110 13
	addi	s4,s4,%lo(.LC0)
	addi	s5,s5,%lo(.LC1)
	lui	s7,%hi(.LC6)
	.loc 3 111 29
	addi	s6,s1,-1
.LVL32:
.L30:
	.loc 3 109 31 is_stmt 1
	.loc 3 109 9 is_stmt 0
	bgt	s1,s3,.L32
	.loc 3 113 9 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
.LVL33:
.L42:
.LBE19:
.LBE18:
.LBE17:
	.loc 3 122 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL34:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL35:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL36:
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LBB24:
.LBB23:
.LBB20:
	.loc 3 120 9
	tail	printf
.LVL37:
.L32:
	.cfi_restore_state
.LBE20:
.LBB21:
	.loc 3 110 13 is_stmt 1
	.loc 3 110 46 is_stmt 0
	slli	a5,s3,2
	add	a5,s2,a5
	lw	a0,0(a5)
	call	fdt32_to_cpu
.LVL38:
	mv	a1,a0
	.loc 3 110 13
	mv	a2,s4
	blt	s3,s6,.L31
	mv	a2,s5
.L31:
	addi	a0,s7,%lo(.LC6)
	call	printf
.LVL39:
	.loc 3 109 40 is_stmt 1
	.loc 3 109 41 is_stmt 0
	addi	s3,s3,1
.LVL40:
	j	.L30
.LVL41:
.L29:
.LBE21:
.LBB22:
	.loc 3 115 9 is_stmt 1
	.loc 3 116 9
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	.loc 3 118 13 is_stmt 0
	lui	s4,%hi(.LC0)
	lui	s5,%hi(.LC1)
	.loc 3 116 9
	call	printf
.LVL42:
	.loc 3 117 9 is_stmt 1
	.loc 3 117 16 is_stmt 0
	li	s3,0
	.loc 3 118 44
	addi	s6,s1,-1
	.loc 3 118 13
	addi	s4,s4,%lo(.LC0)
	addi	s5,s5,%lo(.LC1)
	lui	s7,%hi(.LC9)
.LVL43:
.L33:
	.loc 3 117 21 is_stmt 1
	.loc 3 117 9 is_stmt 0
	bgt	s1,s3,.L35
	.loc 3 120 9 is_stmt 1
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	j	.L42
.L35:
	.loc 3 118 13
.LVL44:
	.loc 3 118 30 is_stmt 0
	add	a5,s2,s3
	.loc 3 118 13
	lbu	a1,0(a5)
	mv	a2,s4
	bgt	s6,s3,.L34
	mv	a2,s5
.L34:
	addi	a0,s7,%lo(.LC9)
	call	printf
.LVL45:
	.loc 3 117 30 is_stmt 1
	.loc 3 117 31 is_stmt 0
	addi	s3,s3,1
.LVL46:
	j	.L33
.LVL47:
.L23:
.LBE22:
.LBE23:
.LBE24:
	.loc 3 122 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL48:
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
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL49:
.L39:
	ret
	.cfi_endproc
.LFE42:
	.size	utilfdt_print_data, .-utilfdt_print_data
	.section	.rodata.tc_blfdtdump.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"FDT_???"
	.align	2
.LC12:
	.string	"/"
	.align	2
.LC13:
	.string	"fdtbuff"
	.align	2
.LC14:
	.string	"%s: skipping fdt magic at offset %#tx\r\n"
	.align	2
.LC15:
	.string	"tc_blfdt_dump.c"
	.align	2
.LC16:
	.string	"ERROR "
	.align	2
.LC17:
	.string	"[%10u][%s: %s:%4d] %s: could not locate fdt magic\r\n"
	.align	2
.LC18:
	.string	"dump failed\r\n"
	.align	2
.LC19:
	.string	"%s: found fdt at offset %#tx\r\n"
	.align	2
.LC20:
	.string	"INFO  "
	.align	2
.LC21:
	.string	"[%10u][%s: %s:%4d] dump_blob."
	.align	2
.LC22:
	.string	"/dts-v1/;\r\n"
	.align	2
.LC23:
	.string	"// magic:\t\t0x%lx\r\n"
	.align	2
.LC24:
	.string	"// totalsize:\t\t0x%lx (%lu)\r\n"
	.align	2
.LC25:
	.string	"// off_dt_struct:\t0x%lx\r\n"
	.align	2
.LC26:
	.string	"// off_dt_strings:\t0x%lx\r\n"
	.align	2
.LC27:
	.string	"// off_mem_rsvmap:\t0x%lx\r\n"
	.align	2
.LC28:
	.string	"// version:\t\t%lu\r\n"
	.align	2
.LC29:
	.string	"// last_comp_version:\t%lu\r\n"
	.align	2
.LC30:
	.string	"// boot_cpuid_phys:\t0x%lx\r\n"
	.align	2
.LC31:
	.string	"// size_dt_strings:\t0x%lx\r\n"
	.align	2
.LC32:
	.string	"// size_dt_struct:\t0x%lx\r\n"
	.align	2
.LC33:
	.string	"\r\n"
	.align	2
.LC34:
	.string	"/memreserve/ %#llx %#llx;\r\n"
	.align	2
.LC35:
	.string	"// %04x: tag: 0x%08lx (%s)\r\n"
	.align	2
.LC36:
	.string	"%*s%s {\r\n"
	.align	2
.LC37:
	.string	"%*s};\r\n"
	.align	2
.LC38:
	.string	"%*s// [NOP]\r\n"
	.align	2
.LC39:
	.string	"[%10u][%s: %s:%4d] %*s ** Unknown tag 0x%08lx\r\n"
	.align	2
.LC40:
	.string	"// %04x: string: %s\r\n"
	.align	2
.LC41:
	.string	"// %04x: value\r\n"
	.align	2
.LC42:
	.string	"%*s%s"
	.align	2
.LC43:
	.string	";\r\n"
	.align	2
.LC44:
	.string	"dump successed\r\n"
	.section	.text.tc_blfdtdump,"ax",@progbits
	.align	1
	.globl	tc_blfdtdump
	.type	tc_blfdtdump, @function
tc_blfdtdump:
.LFB46:
	.loc 3 721 1 is_stmt 1
	.cfi_startproc
	.loc 3 722 5
	.loc 3 724 5
.LVL50:
.LBB38:
.LBB39:
	.loc 3 260 5
	.loc 3 261 5
	.loc 3 262 5
	.loc 3 263 5
	.loc 3 264 5
	.loc 3 265 5
	.loc 3 273 5
.LBB40:
	.loc 3 274 9
	.loc 3 275 9
	.loc 3 276 9
	.loc 3 278 9
.LBB41:
.LBB42:
	.loc 2 266 61
	.loc 2 266 113
.LBE42:
.LBE41:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 93 5
	.loc 3 721 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
.LBB74:
.LBB69:
.LBB49:
	.loc 3 275 15
	lui	s2,%hi(tc_wifi_dtb)
.LBE49:
.LBE69:
.LBE74:
	.loc 3 721 1
	sw	ra,92(sp)
	sw	s4,72(sp)
	sw	s11,44(sp)
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 27, -52
.LBB75:
.LBB70:
.LBB50:
	.loc 3 281 22
	lui	s3,%hi(tc_wifi_dtb+4783)
	.loc 3 286 16
	li	s5,-804388864
	.loc 3 275 15
	addi	s1,s2,%lo(tc_wifi_dtb)
.LBE50:
.LBE70:
.LBE75:
	.loc 3 721 1
	addi	s2,s2,%lo(tc_wifi_dtb)
.LBB76:
.LBB71:
.LBB51:
	.loc 3 281 22
	addi	s3,s3,%lo(tc_wifi_dtb+4783)
	.loc 3 281 15
	li	s7,3
	.loc 3 286 16
	addi	s5,s5,-275
.LBB43:
.LBB44:
	.loc 3 240 8
	li	s8,39
.LBE44:
.LBE43:
	.loc 3 293 21
	lui	s9,%hi(.LC13)
	lui	s10,%hi(.LC14)
.LBB47:
.LBB45:
	.loc 3 241 78
	li	s6,17
.LVL51:
.L44:
.LBE45:
.LBE47:
	.loc 3 281 15 is_stmt 1
	.loc 3 281 22 is_stmt 0
	sub	a2,s3,s1
	.loc 3 281 15
	bgt	a2,s7,.L49
	.loc 3 299 9 is_stmt 1
	.loc 3 299 16 is_stmt 0
	li	a5,39
	bgtu	a2,a5,.L48
.L45:
.LVL52:
	.loc 3 300 13 is_stmt 1
	.loc 3 300 18
	.loc 3 300 20
	.loc 3 300 91 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL53:
	.loc 3 300 20
	beq	a0,zero,.L51
	.loc 3 300 118
	call	xTaskGetTickCountFromISR
.LVL54:
.L81:
	.loc 3 300 147
	mv	a1,a0
	.loc 3 300 20
	lui	a5,%hi(.LC13)
	lui	a3,%hi(.LC15)
	lui	a2,%hi(.LC16)
	lui	a0,%hi(.LC17)
	addi	a5,a5,%lo(.LC13)
	li	a4,300
	addi	a3,a3,%lo(.LC15)
	addi	a2,a2,%lo(.LC16)
	addi	a0,a0,%lo(.LC17)
	call	bl_printk
.LVL55:
	.loc 3 300 210 is_stmt 1
	.loc 3 300 219
	.loc 3 301 13
.LBE51:
.LBE71:
.LBE76:
	.loc 3 726 5
	.loc 3 727 9
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL56:
	li	a0,-1
.LVL57:
.L43:
	.loc 3 736 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL58:
.L49:
	.cfi_restore_state
.LBB77:
.LBB72:
.LBB52:
	.loc 3 282 13 is_stmt 1
	.loc 3 282 17 is_stmt 0
	mv	a0,s1
	addi	a2,a2,-4
	li	a1,208
	call	memchr
.LVL59:
	mv	s1,a0
.LVL60:
	.loc 3 283 13 is_stmt 1
	.loc 3 283 16 is_stmt 0
	beq	a0,zero,.L45
	.loc 3 286 13 is_stmt 1
	.loc 3 286 19 is_stmt 0
	call	fdt32_ld
.LVL61:
	.loc 3 286 16
	bne	a0,s5,.L46
	.loc 3 288 17 is_stmt 1
	.loc 3 288 33 is_stmt 0
	sub	s4,s3,s1
.LVL62:
	.loc 3 289 17 is_stmt 1
.LBB48:
.LBB46:
	.loc 3 240 5
	.loc 3 240 8 is_stmt 0
	bleu	s4,s8,.L47
	.loc 3 242 11
	addi	a0,s1,20
	call	fdt32_ld
.LVL63:
	.loc 3 241 78
	bgtu	a0,s6,.L47
	.loc 3 243 11
	addi	a0,s1,24
	call	fdt32_ld
.LVL64:
	.loc 3 242 71
	bgtu	a0,s6,.L47
	.loc 3 244 11
	addi	a0,s1,4
	call	fdt32_ld
.LVL65:
	.loc 3 243 81
	bleu	s4,a0,.L47
	.loc 3 245 11
	addi	a0,s1,8
	call	fdt32_ld
.LVL66:
	.loc 3 244 75
	bleu	s4,a0,.L47
	.loc 3 246 11
	addi	a0,s1,12
	call	fdt32_ld
.LVL67:
	.loc 3 245 79
	bgtu	s4,a0,.L48
.L47:
	.loc 3 247 13 is_stmt 1
.LVL68:
.LBE46:
.LBE48:
	.loc 3 292 17
	.loc 3 293 21
	sub	a2,s1,s2
	addi	a1,s9,%lo(.LC13)
	addi	a0,s10,%lo(.LC14)
	call	printf
.LVL69:
.L46:
	.loc 3 297 13
	addi	s1,s1,1
.LVL70:
	j	.L44
.LVL71:
.L51:
	.loc 3 300 147 is_stmt 0
	call	xTaskGetTickCount
.LVL72:
	j	.L81
.LVL73:
.L48:
	.loc 3 303 9 is_stmt 1
	lui	a1,%hi(.LC13)
	lui	a0,%hi(.LC19)
	sub	a2,s1,s2
	addi	a1,a1,%lo(.LC13)
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL74:
	.loc 3 304 9
.LBE52:
	.loc 3 310 5
	.loc 3 310 10
	.loc 3 310 12
	.loc 3 310 59 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL75:
	.loc 3 310 12
	beq	a0,zero,.L54
	.loc 3 310 86
	call	xTaskGetTickCountFromISR
.LVL76:
.L82:
	.loc 3 310 115
	mv	a1,a0
	.loc 3 310 12
	lui	s8,%hi(.LC15)
	lui	a2,%hi(.LC20)
	lui	a0,%hi(.LC21)
	li	a4,310
	addi	a3,s8,%lo(.LC15)
	addi	a2,a2,%lo(.LC20)
	addi	a0,a0,%lo(.LC21)
	call	bl_printk
.LVL77:
	.loc 3 310 172 is_stmt 1
	.loc 3 310 181
	.loc 3 312 5
.LBB53:
.LBB54:
	.loc 3 126 5
	.loc 3 127 5
	.loc 3 128 5
	.loc 3 128 31 is_stmt 0
	lw	a0,16(s1)
	call	fdt32_to_cpu
.LVL78:
	mv	s2,a0
.LVL79:
	.loc 3 129 5 is_stmt 1
	.loc 3 129 23 is_stmt 0
	lw	a0,8(s1)
.LVL80:
	call	fdt32_to_cpu
.LVL81:
	mv	s5,a0
.LVL82:
	.loc 3 130 5 is_stmt 1
	.loc 3 130 24 is_stmt 0
	lw	a0,12(s1)
.LVL83:
	.loc 3 133 17
	add	s3,s1,s5
	.loc 3 130 24
	call	fdt32_to_cpu
.LVL84:
	sw	a0,-68(s0)
.LVL85:
	.loc 3 131 5 is_stmt 1
	.loc 3 133 5
	.loc 3 134 5
	.loc 3 135 5
	.loc 3 135 24 is_stmt 0
	lw	a0,20(s1)
.LVL86:
	call	fdt32_to_cpu
.LVL87:
	mv	s4,a0
.LVL88:
	.loc 3 136 5 is_stmt 1
	.loc 3 136 26 is_stmt 0
	lw	a0,4(s1)
.LVL89:
	call	fdt32_to_cpu
.LVL90:
	sw	a0,-72(s0)
.LVL91:
	.loc 3 137 5 is_stmt 1
	.loc 3 138 5
	.loc 3 139 5
	.loc 3 140 5
	.loc 3 141 5
	.loc 3 143 5
	.loc 3 144 5
	.loc 3 146 5
	lui	a0,%hi(.LC22)
.LVL92:
	addi	a0,a0,%lo(.LC22)
	call	printf
.LVL93:
	.loc 3 147 5
	lw	a0,0(s1)
	call	fdt32_to_cpu
.LVL94:
	mv	a1,a0
	lui	a0,%hi(.LC23)
	addi	a0,a0,%lo(.LC23)
	call	printf
.LVL95:
	.loc 3 148 5
	lw	a2,-72(s0)
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	mv	a1,a2
	call	printf
.LVL96:
	.loc 3 150 5
	lui	a0,%hi(.LC25)
	mv	a1,s5
	addi	a0,a0,%lo(.LC25)
	call	printf
.LVL97:
	.loc 3 151 5
	lw	a1,-68(s0)
	lui	a0,%hi(.LC26)
	addi	a0,a0,%lo(.LC26)
	call	printf
.LVL98:
	.loc 3 152 5
	lui	a0,%hi(.LC27)
	mv	a1,s2
	addi	a0,a0,%lo(.LC27)
	call	printf
.LVL99:
	.loc 3 153 5
	lui	a0,%hi(.LC28)
	mv	a1,s4
	addi	a0,a0,%lo(.LC28)
	call	printf
.LVL100:
	.loc 3 154 5
	lw	a0,24(s1)
	call	fdt32_to_cpu
.LVL101:
	mv	a1,a0
	lui	a0,%hi(.LC29)
	addi	a0,a0,%lo(.LC29)
	call	printf
.LVL102:
	.loc 3 156 5
	.loc 3 156 8 is_stmt 0
	li	a5,1
	bleu	s4,a5,.L57
	.loc 3 157 9 is_stmt 1
	lw	a0,28(s1)
	call	fdt32_to_cpu
.LVL103:
	mv	a1,a0
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	call	printf
.LVL104:
	.loc 3 161 5
	.loc 3 161 8 is_stmt 0
	li	a5,2
	beq	s4,a5,.L57
	.loc 3 162 9 is_stmt 1
	lw	a0,32(s1)
	call	fdt32_to_cpu
.LVL105:
	mv	a1,a0
	lui	a0,%hi(.LC31)
	addi	a0,a0,%lo(.LC31)
	call	printf
.LVL106:
	.loc 3 166 5
	.loc 3 166 8 is_stmt 0
	li	a5,16
	bleu	s4,a5,.L57
	.loc 3 167 9 is_stmt 1
	lw	a0,36(s1)
	call	fdt32_to_cpu
.LVL107:
	mv	a1,a0
	lui	a0,%hi(.LC32)
	addi	a0,a0,%lo(.LC32)
	call	printf
.LVL108:
.L57:
	.loc 3 171 5
	lui	a0,%hi(.LC33)
	addi	a0,a0,%lo(.LC33)
	call	printf
.LVL109:
	.loc 3 173 5
	add	s2,s1,s2
.LVL110:
	.loc 3 179 9 is_stmt 0
	lui	s5,%hi(.LC34)
.LVL111:
.L61:
	.loc 3 174 9 is_stmt 1
	.loc 3 174 16 is_stmt 0
	lw	a0,0(s2)
	lw	a1,4(s2)
	.loc 3 176 23
	addi	s2,s2,16
	.loc 3 174 16
	call	fdt64_to_cpu
.LVL112:
	sw	a0,-76(s0)
	sw	a1,-72(s0)
.LVL113:
	.loc 3 175 9 is_stmt 1
	.loc 3 175 16 is_stmt 0
	lw	a0,-8(s2)
.LVL114:
	lw	a1,-4(s2)
.LVL115:
	call	fdt64_to_cpu
.LVL116:
	.loc 3 176 23
	lw	a2,-76(s0)
	lw	a3,-72(s0)
	.loc 3 175 16
	mv	a5,a1
.LVL117:
	.loc 3 176 9 is_stmt 1
	.loc 3 175 16 is_stmt 0
	mv	a4,a0
	.loc 3 176 23
	or	a1,a2,a0
.LVL118:
	or	a0,a3,a5
.LVL119:
	or	a1,a1,a0
	beq	a1,zero,.L74
	.loc 3 179 9 is_stmt 1
	addi	a0,s5,%lo(.LC34)
	call	printf
.LVL120:
	.loc 3 173 19
	.loc 3 173 17
	.loc 3 174 14 is_stmt 0
	j	.L61
.LVL121:
.L54:
.LBE54:
.LBE53:
	.loc 3 310 115
	call	xTaskGetTickCount
.LVL122:
	j	.L82
.LVL123:
.L73:
.LBB67:
.LBB65:
	.loc 3 189 9 is_stmt 1
	.loc 3 189 14
	.loc 3 189 25
	lw	a4,-72(s0)
.LBB55:
.LBB56:
	.loc 3 44 12 is_stmt 0
	mv	a3,s9
.LBE56:
.LBE55:
	.loc 3 189 25
	add	a1,s2,a4
.LVL124:
.LBB61:
.LBB57:
	.loc 3 29 5 is_stmt 1
	.loc 3 38 5
	.loc 3 38 8 is_stmt 0
	bgtu	s10,a5,.L62
	.loc 3 39 9 is_stmt 1
	.loc 3 39 18 is_stmt 0
	lw	a4,-76(s0)
	slli	a5,s10,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 3 39 12
	bne	a3,zero,.L62
	.loc 3 44 12
	mv	a3,s9
.L62:
.LVL125:
.LBE57:
.LBE61:
	.loc 3 189 25
	lui	a0,%hi(.LC35)
.LVL126:
	mv	a2,s10
	addi	a0,a0,%lo(.LC35)
	call	printf
.LVL127:
	.loc 3 189 81 is_stmt 1
	.loc 3 192 9
	.loc 3 192 12 is_stmt 0
	li	a5,1
	lui	s6,%hi(.LC1)
	bne	s10,a5,.L63
	.loc 3 193 13 is_stmt 1
.LVL128:
	.loc 3 194 13
	.loc 3 194 50 is_stmt 0
	mv	a0,s2
	call	strlen
.LVL129:
	.loc 3 196 16
	lbu	a5,4(s3)
	.loc 3 194 60
	add	s10,s2,a0
.LVL130:
	.loc 3 194 66
	addi	s10,s10,4
	.loc 3 194 81
	andi	s10,s10,-4
.LVL131:
	.loc 3 196 13 is_stmt 1
	.loc 3 196 16 is_stmt 0
	bne	a5,zero,.L64
.LVL132:
	.loc 3 197 19
	lw	s2,-80(s0)
.LVL133:
.L64:
	.loc 3 199 13 is_stmt 1
	lui	a0,%hi(.LC36)
	mv	a3,s2
	slli	a1,s5,2
	addi	a2,s6,%lo(.LC1)
	addi	a0,a0,%lo(.LC36)
	call	printf
.LVL134:
	.loc 3 201 13
	.loc 3 201 18 is_stmt 0
	addi	s5,s5,1
.LVL135:
	.loc 3 202 13 is_stmt 1
	.loc 3 194 15 is_stmt 0
	mv	s2,s10
.LVL136:
.L65:
	mv	s3,s2
.LVL137:
.L59:
	.loc 3 186 11 is_stmt 1
	.loc 3 186 19 is_stmt 0
	lw	a0,0(s3)
	.loc 3 186 35
	addi	s2,s3,4
.LVL138:
	.loc 3 186 19
	call	fdt32_to_cpu
.LVL139:
	.loc 3 186 11
	li	a5,9
	.loc 3 186 19
	mv	s10,a0
.LVL140:
	.loc 3 186 11
	bne	a0,a5,.L73
	j	.L71
.LVL141:
.L63:
	.loc 3 205 9 is_stmt 1
	.loc 3 205 12 is_stmt 0
	li	a5,2
	bne	s10,a5,.L66
	.loc 3 206 13 is_stmt 1
	.loc 3 206 18 is_stmt 0
	addi	s5,s5,-1
.LVL142:
	.loc 3 208 13 is_stmt 1
	lui	a0,%hi(.LC37)
	addi	a2,s6,%lo(.LC1)
	slli	a1,s5,2
	addi	a0,a0,%lo(.LC37)
.L84:
	.loc 3 213 13 is_stmt 0
	call	printf
.LVL143:
	.loc 3 214 13 is_stmt 1
	j	.L65
.L66:
	.loc 3 212 9
	.loc 3 212 12 is_stmt 0
	li	a5,4
	.loc 3 199 13
	slli	s11,s5,2
	.loc 3 212 12
	bne	s10,a5,.L67
	.loc 3 213 13 is_stmt 1
	lui	a0,%hi(.LC38)
	addi	a2,s6,%lo(.LC1)
	mv	a1,s11
	addi	a0,a0,%lo(.LC38)
	j	.L84
.L67:
	.loc 3 217 9
	.loc 3 217 12 is_stmt 0
	li	a5,3
	beq	s10,a5,.L68
	.loc 3 218 13 is_stmt 1
	.loc 3 218 18
	.loc 3 218 20
	.loc 3 218 24 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL144:
	.loc 3 218 20
	beq	a0,zero,.L69
	.loc 3 218 51
	call	xTaskGetTickCountFromISR
.LVL145:
.L83:
	.loc 3 218 80
	mv	a1,a0
	.loc 3 218 20
	lui	a2,%hi(.LC16)
	lui	a0,%hi(.LC39)
	mv	a7,s10
	addi	a6,s6,%lo(.LC1)
	mv	a5,s11
	li	a4,218
	addi	a3,s8,%lo(.LC15)
	addi	a2,a2,%lo(.LC16)
	addi	a0,a0,%lo(.LC39)
	call	bl_printk
.LVL146:
	.loc 3 218 161 is_stmt 1
	.loc 3 218 170
	.loc 3 219 13
.LBE65:
.LBE67:
.LBE72:
.LBE77:
	.loc 3 726 5
.L71:
	.loc 3 729 9
	lui	a0,%hi(.LC44)
	addi	a0,a0,%lo(.LC44)
	call	printf
.LVL147:
	li	a0,0
	.loc 3 732 5
	.loc 3 732 12 is_stmt 0
	j	.L43
.LVL148:
.L69:
.LBB78:
.LBB73:
.LBB68:
.LBB66:
	.loc 3 218 80
	call	xTaskGetTickCount
.LVL149:
	j	.L83
.L68:
	.loc 3 221 9 is_stmt 1
.LVL150:
	.loc 3 221 14 is_stmt 0
	lw	a0,4(s3)
	.loc 3 222 41
	addi	s10,s3,12
.LVL151:
	.loc 3 221 14
	call	fdt32_to_cpu
.LVL152:
	mv	s7,a0
.LVL153:
	.loc 3 222 9 is_stmt 1
	.loc 3 222 25 is_stmt 0
	lw	a0,8(s3)
.LVL154:
	call	fdt32_to_cpu
.LVL155:
	lw	a5,-68(s0)
	.loc 3 223 12
	li	a4,15
	add	a1,a5,a0
	.loc 3 222 11
	add	a3,s1,a1
.LVL156:
	.loc 3 223 9 is_stmt 1
	.loc 3 223 12 is_stmt 0
	bgtu	s4,a4,.L72
	.loc 3 223 26
	li	a4,7
	ble	s7,a4,.L72
	.loc 3 224 13 is_stmt 1
	.loc 3 224 50 is_stmt 0
	addi	s3,s3,19
	.loc 3 224 65
	andi	s10,s3,-8
.LVL157:
.L72:
	.loc 3 225 9 is_stmt 1
	.loc 3 227 9
	.loc 3 229 25 is_stmt 0
	lui	a0,%hi(.LC40)
	mv	a2,a3
	addi	a0,a0,%lo(.LC40)
	sw	a3,-84(s0)
	call	printf
.LVL158:
	.loc 3 230 25
	lui	a0,%hi(.LC41)
	sub	a1,s10,s1
	addi	a0,a0,%lo(.LC41)
	call	printf
.LVL159:
	.loc 3 231 9
	lw	a3,-84(s0)
	lui	a0,%hi(.LC42)
	addi	a2,s6,%lo(.LC1)
	mv	a1,s11
	addi	a0,a0,%lo(.LC42)
	call	printf
.LVL160:
	.loc 3 232 9
	mv	a0,s10
	mv	a1,s7
	call	utilfdt_print_data
.LVL161:
	.loc 3 227 44
	add	s2,s10,s7
	.loc 3 233 9
	lui	a0,%hi(.LC43)
	.loc 3 227 51
	addi	s2,s2,3
	.loc 3 233 9
	addi	a0,a0,%lo(.LC43)
	.loc 3 227 66
	andi	s2,s2,-4
.LVL162:
	.loc 3 229 9 is_stmt 1
	.loc 3 229 14
	.loc 3 229 25
	.loc 3 229 103
	.loc 3 230 9
	.loc 3 230 14
	.loc 3 230 25
	.loc 3 230 95
	.loc 3 231 9
	.loc 3 232 9
	.loc 3 233 9
	call	printf
.LVL163:
	j	.L65
.LVL164:
.L74:
	.loc 3 189 25 is_stmt 0
	li	a5,-4
.LVL165:
	sub	a5,a5,s1
	sw	a5,-72(s0)
.LBB62:
.LBB58:
	.loc 3 39 18
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,-76(s0)
.LBE58:
.LBE62:
	.loc 3 197 19
	lui	a5,%hi(.LC12)
.LBB63:
.LBB59:
	.loc 3 44 12
	lui	s9,%hi(.LC11)
.LBE59:
.LBE63:
	.loc 3 197 19
	addi	a5,a5,%lo(.LC12)
	.loc 3 143 11
	li	s5,0
.LBB64:
.LBB60:
	.loc 3 44 12
	addi	s9,s9,%lo(.LC11)
.LBE60:
.LBE64:
	.loc 3 197 19
	sw	a5,-80(s0)
	j	.L59
.LBE66:
.LBE68:
.LBE73:
.LBE78:
	.cfi_endproc
.LFE46:
	.size	tc_blfdtdump, .-tc_blfdtdump
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC45:
	.string	"FDT_BEGIN_NODE"
	.align	2
.LC46:
	.string	"FDT_END_NODE"
	.align	2
.LC47:
	.string	"FDT_PROP"
	.align	2
.LC48:
	.string	"FDT_NOP"
	.align	2
.LC49:
	.string	"FDT_END"
	.globl	tc_wifi_dtb
	.section	.rodata.names.0,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	names.0, @object
	.size	names.0, 40
names.0:
	.zero	4
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.zero	16
	.word	.LC49
	.section	.rodata.tc_wifi_dtb,"a"
	.align	2
	.type	tc_wifi_dtb, @object
	.size	tc_wifi_dtb, 4783
tc_wifi_dtb:
	.string	"\320\r\376\355"
	.string	""
	.string	"\022\253"
	.string	""
	.string	""
	.string	"8"
	.string	""
	.string	"\020\300"
	.string	""
	.string	""
	.string	"("
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001\353"
	.string	""
	.string	"\020\210"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\023"
	.string	""
	.string	""
	.string	""
	.string	"bl bl60x AVB board"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\006bl,bl60x-sample"
	.string	"bl,bl60x-common"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001ipc"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001ipc@4001C000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001\300"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001i2s"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001i2s@40017000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\006bl60x_i2s"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001p"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"7okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"A"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001i2s@40017100"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\006bl60x_i2s"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001q"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"7disable"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"F"
	.string	""
	.string	""
	.string	"\f"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"K"
	.string	""
	.string	""
	.string	"\035"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"N"
	.string	""
	.string	""
	.string	"\036"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"Q"
	.string	""
	.string	""
	.string	"\037"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001i2c"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001i2c@40011000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\006bl60x_i2c"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001\020"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"T"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"X"
	.string	""
	.string	""
	.string	"\r"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001devices"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\\"
	.string	""
	.string	""
	.string	"\030"
	.string	""
	.string	""
	.string	"!"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\027"
	.string	""
	.string	""
	.string	"fi2c_es8311"
	.string	"i2c_gc0308>"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001i2c@40011100"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\006bl60x_i2c"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001mjpeg"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001mjpeg@40016000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\f"
	.string	""
	.string	""
	.string	"\006bl60x_mjpeg"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001`"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001timer"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001timer@40014000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\f"
	.string	""
	.string	""
	.string	"\006bl60x_timer"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001@"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001timer@40014100"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\f"
	.string	""
	.string	""
	.string	"\006bl60x_timer"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001A"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001pwm"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001pwm@40012000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\006bl60x_pwm"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001 "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001uart"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001uart@40010000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"r"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"\006bl60x_uart"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"u/dev/ttyS0"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001"
	.string	""
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"z"
	.string	"\001\302"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001feature"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"~disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\202disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\206disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\211disable"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001uart@40010100"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"r"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"\006bl60x_uart"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"u/dev/ttyS1"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001\001"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\214"
	.string	"\001\302"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001feature"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"~disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\202disable"
	.string	""
	.string	""
	.string	""
	.ascii	"\003"
	.string	""
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\206disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\211disable"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001uart@40010200"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"r"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"\006bl60x_uart"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"u/dev/ttyS2"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@\001\002"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\214"
	.string	"LK@"
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\211"
	.string	""
	.string	""
	.string	"\016"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\206"
	.string	""
	.string	""
	.string	"\007"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001feature"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"\211okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"\206okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"\202disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"~disable"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001spi"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001spi@4000F000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@"
	.string	"\360"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001gpip"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001adc_key"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\225"
	.string	""
	.string	""
	.string	"\t"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\231"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\024"
	.string	""
	.string	""
	.string	"\243"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"d"
	.string	""
	.string	"\001\220"
	.string	""
	.string	"\001,"
	.string	""
	.string	"\001\364"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\024"
	.string	""
	.string	""
	.string	"\253SW1"
	.string	"SW2"
	.string	"SW3"
	.string	"SW4"
	.string	"SW5"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\030"
	.string	""
	.string	""
	.string	"\263Usr1"
	.string	"Usr2"
	.string	"Start"
	.string	"Up"
	.string	"Down"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\024"
	.string	""
	.string	""
	.string	"\275"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001pdm"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001pdm@4000C000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@"
	.string	"\300"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001cam"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001cam@4000B000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\006bl60x_cam"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@"
	.string	"\260"
	.string	""
	.string	""
	.string	"\020"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\305"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\315"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\327"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\340"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\351"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\362"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\373"
	.string	""
	.string	""
	.string	"\006"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001\004"
	.string	""
	.string	""
	.string	"\031"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001\r"
	.string	""
	.string	""
	.string	"\032"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001\026"
	.string	""
	.string	""
	.string	"\033"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001\037"
	.string	""
	.string	""
	.string	"\034"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001("
	.string	""
	.string	""
	.string	"\017"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\0011"
	.string	""
	.string	""
	.string	"\030"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001feature"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\t"
	.string	""
	.string	"\001=HARDWARE"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001conf"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	"\001Bauto"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001qspi"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001qspi@4000A000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	",disable"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@"
	.string	"\240"
	.string	""
	.string	""
	.string	"\020"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001sdh"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001sdh@40003000"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	",okay"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\006bl60x_sdh"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	"3@"
	.string	"0"
	.string	""
	.string	""
	.string	"\020"
	.string	""
	.string	""
	.string	""
	.string	"\001pin"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"B"
	.string	""
	.string	""
	.string	"\020"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001I"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001M"
	.string	""
	.string	""
	.string	"\022"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001R"
	.string	""
	.string	""
	.string	"\023"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001W"
	.string	""
	.string	""
	.string	"\024"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001\\"
	.string	""
	.string	""
	.string	"\025"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001wifi"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\021"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001region"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001a"
	.string	""
	.string	""
	.string	"V"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001mac"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\006"
	.string	""
	.string	"\001n\310CW\202s@"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\006"
	.string	""
	.string	"\001{\310CW\202s\002"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001ap"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\017"
	.string	""
	.string	"\001\207BL60x_Camera03"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\f"
	.string	""
	.string	"\001\2141234567890a"
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001\220"
	.string	""
	.string	""
	.string	"\013"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\b"
	.string	""
	.string	"\001\233disable"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\001brd_rf"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\024"
	.string	""
	.string	"\001\254"
	.string	""
	.string	""
	.string	")"
	.string	""
	.string	""
	.string	")"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"?"
	.string	""
	.string	""
	.string	"?"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\001\261"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\272"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\260"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"\247"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\237"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\225"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\214"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\201"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	"w"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.ascii	"\005"
	.string	""
	.string	""
	.string	""
	.string	"n"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"e"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"["
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"R"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"H"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	""
	.string	">"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\005"
	.string	""
	.string	""
	.string	"4"
	.string	""
	.string	""
	.string	"\001"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\n"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"<"
	.string	""
	.string	"\001\273\024\360"
	.string	""
	.string	"\024\373\034q\025\0068\343\025\021UU\025\034q\307\025'\2168\0252\252\252\025=\307\034\025H\343\216\025T"
	.string	""
	.string	"\025_\034q\025j8\343\025uUU\025\220"
	.string	""
	.string	"\025\300"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"8"
	.string	""
	.string	"\001\315"
	.string	""
	.string	"\247\200"
	.string	""
	.string	"\247\330"
	.string	""
	.string	"\2501"
	.string	""
	.string	"\250\212"
	.string	""
	.string	"\250\343"
	.string	""
	.string	"\251<"
	.string	""
	.string	"\251\225"
	.string	""
	.string	"\251\356"
	.string	""
	.string	"\252G"
	.string	""
	.string	"\252\240"
	.string	""
	.string	"\252\370"
	.string	""
	.string	"\253Q"
	.string	""
	.string	"\253\252"
	.string	""
	.string	"\254\200"
	.string	""
	.string	""
	.string	"\003"
	.string	""
	.string	""
	.string	"\004"
	.string	""
	.string	"\001\337"
	.string	""
	.string	"\b"
	.string	""
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\002"
	.string	""
	.string	""
	.string	"\tmodel"
	.string	"compatible"
	.string	"#address-cells"
	.string	"#size-cells"
	.string	"status"
	.string	"reg"
	.string	"mclk_only"
	.string	"mclk"
	.string	"bclk"
	.string	"fs"
	.string	"do"
	.string	"di"
	.string	"scl"
	.string	"sda"
	.string	"list_addr"
	.string	"list_driver"
	.string	"id"
	.string	"path"
	.string	"cfg"
	.string	"rts"
	.string	"cts"
	.string	"rx"
	.string	"tx"
	.string	"baudrate"
	.string	"pin"
	.string	"interrupt"
	.string	"key_vol"
	.string	"key_pcb"
	.string	"key_event"
	.string	"key_raw"
	.string	"PIX_CLK"
	.string	"FRAME_VLD"
	.string	"LINE_VLD"
	.string	"PIX_DAT0"
	.string	"PIX_DAT1"
	.string	"PIX_DAT2"
	.string	"PIX_DAT3"
	.string	"PIX_DAT4"
	.string	"PIX_DAT5"
	.string	"PIX_DAT6"
	.string	"PIX_DAT7"
	.string	"CAM_PWDN"
	.string	"CAM_REF_CLK"
	.string	"mode"
	.string	"sensor"
	.string	"cmd"
	.string	"dat0"
	.string	"dat1"
	.string	"dat2"
	.string	"dat3"
	.string	"country_code"
	.string	"sta_mac_addr"
	.string	"ap_mac_addr"
	.string	"ssid"
	.string	"pwd"
	.string	"ap_channel"
	.string	"auto_chan_detect"
	.string	"xtal"
	.string	"pwr_table"
	.string	"channel_div_table"
	.string	"channel_cnt_table"
	.string	"lo_fcal_div"
	.string	""
	.zero	3
	.text
.Letext0:
	.file 4 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 5 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/blfdt/inc/fdt.h"
	.file 6 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h"
	.file 7 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 9 "/home/quanghaictu/intern/Ai-Thinker-WB2/components/utils/include/utils_log.h"
	.file 10 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 11 "/home/quanghaictu/intern/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf27
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.LASF76
	.4byte	.Ldebug_ranges0+0x140
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
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
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x59
	.byte	0x4
	.4byte	0x48
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x4
	.4byte	0x59
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x7d
	.byte	0x4
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x37
	.byte	0x20
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x56
	.byte	0x16
	.4byte	0x97
	.byte	0x6
	.4byte	0x59
	.4byte	0xba
	.byte	0x7
	.4byte	0x97
	.byte	0x3
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x9
	.byte	0x4
	.4byte	0xc2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x4
	.4byte	0xc2
	.byte	0x9
	.byte	0x4
	.4byte	0xc9
	.byte	0x4
	.4byte	0xce
	.byte	0x9
	.byte	0x4
	.4byte	0xdf
	.byte	0xa
	.byte	0x6
	.4byte	0xc9
	.4byte	0xeb
	.byte	0xb
	.byte	0
	.byte	0x4
	.4byte	0xe0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x46
	.byte	0x13
	.4byte	0xeb
	.byte	0x3
	.4byte	.LASF14
	.byte	0x1
	.byte	0x46
	.byte	0x12
	.4byte	0x6c
	.byte	0x4
	.4byte	0xfc
	.byte	0x3
	.4byte	.LASF15
	.byte	0x1
	.byte	0x47
	.byte	0x12
	.4byte	0x84
	.byte	0xd
	.4byte	.LASF26
	.byte	0x28
	.byte	0x5
	.byte	0x3a
	.byte	0x8
	.4byte	0x1a9
	.byte	0xe
	.4byte	.LASF16
	.byte	0x5
	.byte	0x3b
	.byte	0xd
	.4byte	0xfc
	.byte	0
	.byte	0xe
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0xfc
	.byte	0x4
	.byte	0xe
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.4byte	0xfc
	.byte	0x8
	.byte	0xe
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3e
	.byte	0xd
	.4byte	0xfc
	.byte	0xc
	.byte	0xe
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3f
	.byte	0xd
	.4byte	0xfc
	.byte	0x10
	.byte	0xe
	.4byte	.LASF21
	.byte	0x5
	.byte	0x40
	.byte	0xd
	.4byte	0xfc
	.byte	0x14
	.byte	0xe
	.4byte	.LASF22
	.byte	0x5
	.byte	0x41
	.byte	0xd
	.4byte	0xfc
	.byte	0x18
	.byte	0xe
	.4byte	.LASF23
	.byte	0x5
	.byte	0x44
	.byte	0xd
	.4byte	0xfc
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF24
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0xfc
	.byte	0x20
	.byte	0xe
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4a
	.byte	0xd
	.4byte	0xfc
	.byte	0x24
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x10
	.byte	0x5
	.byte	0x4d
	.byte	0x8
	.4byte	0x1d1
	.byte	0xe
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4e
	.byte	0xd
	.4byte	0x10d
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x5
	.byte	0x4f
	.byte	0xd
	.4byte	0x10d
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x54
	.4byte	0x1e2
	.byte	0xf
	.4byte	0x97
	.2byte	0x12ae
	.byte	0
	.byte	0x4
	.4byte	0x1d1
	.byte	0x10
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x13e
	.byte	0xf
	.4byte	0x1e2
	.byte	0x5
	.byte	0x3
	.4byte	tc_wifi_dtb
	.byte	0x11
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x2d0
	.byte	0x5
	.4byte	0x90
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x907
	.byte	0x12
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x2d2
	.byte	0x9
	.4byte	0x90
	.4byte	.LLST17
	.byte	0x13
	.4byte	0x907
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x3
	.2byte	0x2d4
	.byte	0xe
	.4byte	0x8dc
	.byte	0x14
	.4byte	0x919
	.byte	0x15
	.4byte	0x926
	.4byte	.LLST18
	.byte	0x15
	.4byte	0x933
	.4byte	.LLST19
	.byte	0x15
	.4byte	0x940
	.4byte	.LLST19
	.byte	0x16
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x17
	.4byte	0x94d
	.byte	0x6
	.byte	0x3
	.4byte	.LC13
	.byte	0x9f
	.byte	0x18
	.4byte	0x95a
	.4byte	.LLST21
	.byte	0x19
	.4byte	0x967
	.byte	0x1
	.byte	0x19
	.4byte	0x974
	.byte	0x1
	.byte	0x1a
	.4byte	0x981
	.2byte	0x12af
	.byte	0x18
	.4byte	0x98e
	.4byte	.LLST22
	.byte	0x1b
	.4byte	0x99b
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x44d
	.byte	0x1c
	.4byte	0x99c
	.byte	0x18
	.4byte	0x9a9
	.4byte	.LLST23
	.byte	0x18
	.4byte	0x9b4
	.4byte	.LLST24
	.byte	0x1d
	.4byte	0xbfe
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x3
	.2byte	0x116
	.byte	0x9
	.4byte	0x2e9
	.byte	0x15
	.4byte	0xc19
	.4byte	.LLST25
	.byte	0x15
	.4byte	0xc0c
	.4byte	.LLST26
	.byte	0x17
	.4byte	0xc26
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+670
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x9c9
	.4byte	.LBB43
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x3
	.2byte	0x121
	.byte	0x15
	.4byte	0x371
	.byte	0x15
	.4byte	0x9e4
	.4byte	.LLST27
	.byte	0x15
	.4byte	0x9da
	.4byte	.LLST28
	.byte	0x1e
	.4byte	.LVL63
	.4byte	0xc34
	.4byte	0x324
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x14
	.byte	0
	.byte	0x1e
	.4byte	.LVL64
	.4byte	0xc34
	.4byte	0x338
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LVL65
	.4byte	0xc34
	.4byte	0x34c
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0
	.byte	0x1e
	.4byte	.LVL66
	.4byte	0xc34
	.4byte	0x360
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x8
	.byte	0
	.byte	0x20
	.4byte	.LVL67
	.4byte	0xc34
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL53
	.4byte	0xed4
	.byte	0x21
	.4byte	.LVL54
	.4byte	0xee0
	.byte	0x1e
	.4byte	.LVL55
	.4byte	0xeed
	.4byte	0x3bc
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x12c
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x1e
	.4byte	.LVL59
	.4byte	0xef9
	.4byte	0x3e1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0xd0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x83
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0
	.byte	0x1e
	.4byte	.LVL61
	.4byte	0xc34
	.4byte	0x3f5
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL69
	.4byte	0xf05
	.4byte	0x41e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0x21
	.4byte	.LVL72
	.4byte	0xf11
	.byte	0x20
	.4byte	.LVL74
	.4byte	0xf05
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x9f8
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x3
	.2byte	0x138
	.byte	0x5
	.4byte	0x88f
	.byte	0x15
	.4byte	0xa11
	.4byte	.LLST29
	.byte	0x15
	.4byte	0xa05
	.4byte	.LLST30
	.byte	0x16
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x18
	.4byte	0xa1d
	.4byte	.LLST30
	.byte	0x18
	.4byte	0xa29
	.4byte	.LLST32
	.byte	0x18
	.4byte	0xa35
	.4byte	.LLST33
	.byte	0x18
	.4byte	0xa41
	.4byte	.LLST34
	.byte	0x18
	.4byte	0xa4d
	.4byte	.LLST35
	.byte	0x18
	.4byte	0xa59
	.4byte	.LLST36
	.byte	0x18
	.4byte	0xa65
	.4byte	.LLST37
	.byte	0x18
	.4byte	0xa71
	.4byte	.LLST38
	.byte	0x18
	.4byte	0xa7d
	.4byte	.LLST39
	.byte	0x18
	.4byte	0xa89
	.4byte	.LLST40
	.byte	0x18
	.4byte	0xa95
	.4byte	.LLST41
	.byte	0x18
	.4byte	0xaa1
	.4byte	.LLST42
	.byte	0x18
	.4byte	0xaab
	.4byte	.LLST43
	.byte	0x18
	.4byte	0xab5
	.4byte	.LLST44
	.byte	0x18
	.4byte	0xabf
	.4byte	.LLST45
	.byte	0x18
	.4byte	0xacb
	.4byte	.LLST46
	.byte	0x18
	.4byte	0xad6
	.4byte	.LLST47
	.byte	0x18
	.4byte	0xae2
	.4byte	.LLST48
	.byte	0x18
	.4byte	0xaec
	.4byte	.LLST49
	.byte	0x18
	.4byte	0xaf8
	.4byte	.LLST50
	.byte	0x22
	.4byte	0xbb9
	.4byte	.LBB55
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x3
	.byte	0xbd
	.byte	0x19
	.4byte	0x550
	.byte	0x15
	.4byte	0xbca
	.4byte	.LLST51
	.byte	0x23
	.4byte	.Ldebug_ranges0+0x110
	.byte	0
	.byte	0x21
	.4byte	.LVL78
	.4byte	0xcb6
	.byte	0x21
	.4byte	.LVL81
	.4byte	0xcb6
	.byte	0x21
	.4byte	.LVL84
	.4byte	0xcb6
	.byte	0x21
	.4byte	.LVL87
	.4byte	0xcb6
	.byte	0x21
	.4byte	.LVL90
	.4byte	0xcb6
	.byte	0x1e
	.4byte	.LVL93
	.4byte	0xf05
	.4byte	0x594
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x21
	.4byte	.LVL94
	.4byte	0xcb6
	.byte	0x1e
	.4byte	.LVL95
	.4byte	0xf05
	.4byte	0x5b4
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x1e
	.4byte	.LVL96
	.4byte	0xf05
	.4byte	0x5db
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0xb8,0x7f
	.byte	0x6
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x78
	.byte	0xb8,0x7f
	.byte	0x6
	.byte	0
	.byte	0x1e
	.4byte	.LVL97
	.4byte	0xf05
	.4byte	0x5f8
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL98
	.4byte	0xf05
	.4byte	0x617
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0
	.byte	0x1e
	.4byte	.LVL99
	.4byte	0xf05
	.4byte	0x634
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL100
	.4byte	0xf05
	.4byte	0x651
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL101
	.4byte	0xcb6
	.byte	0x1e
	.4byte	.LVL102
	.4byte	0xf05
	.4byte	0x671
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0x21
	.4byte	.LVL103
	.4byte	0xcb6
	.byte	0x1e
	.4byte	.LVL104
	.4byte	0xf05
	.4byte	0x691
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0x21
	.4byte	.LVL105
	.4byte	0xcb6
	.byte	0x1e
	.4byte	.LVL106
	.4byte	0xf05
	.4byte	0x6b1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0
	.byte	0x21
	.4byte	.LVL107
	.4byte	0xcb6
	.byte	0x1e
	.4byte	.LVL108
	.4byte	0xf05
	.4byte	0x6d1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.byte	0x1e
	.4byte	.LVL109
	.4byte	0xf05
	.4byte	0x6e8
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.byte	0x21
	.4byte	.LVL112
	.4byte	0xc72
	.byte	0x21
	.4byte	.LVL116
	.4byte	0xc72
	.byte	0x1e
	.4byte	.LVL120
	.4byte	0xf05
	.4byte	0x711
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.byte	0x1e
	.4byte	.LVL127
	.4byte	0xf05
	.4byte	0x72e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL129
	.4byte	0xf1e
	.4byte	0x742
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL134
	.4byte	0xf05
	.4byte	0x770
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x85
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL139
	.4byte	0xcb6
	.byte	0x21
	.4byte	.LVL143
	.4byte	0xf05
	.byte	0x21
	.4byte	.LVL144
	.4byte	0xed4
	.byte	0x21
	.4byte	.LVL145
	.4byte	0xee0
	.byte	0x1e
	.4byte	.LVL146
	.4byte	0xeed
	.4byte	0x7d8
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xda
	.byte	0x1f
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1f
	.byte	0x1
	.byte	0x61
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL149
	.4byte	0xf11
	.byte	0x21
	.4byte	.LVL152
	.4byte	0xcb6
	.byte	0x21
	.4byte	.LVL155
	.4byte	0xcb6
	.byte	0x1e
	.4byte	.LVL158
	.4byte	0xf05
	.4byte	0x812
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x78
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0
	.byte	0x1e
	.4byte	.LVL159
	.4byte	0xf05
	.4byte	0x832
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x8a
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0
	.byte	0x1e
	.4byte	.LVL160
	.4byte	0xf05
	.4byte	0x860
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x78
	.byte	0xac,0x7f
	.byte	0x6
	.byte	0
	.byte	0x1e
	.4byte	.LVL161
	.4byte	0xb11
	.4byte	0x87a
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL163
	.4byte	0xf05
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL75
	.4byte	0xed4
	.byte	0x21
	.4byte	.LVL76
	.4byte	0xee0
	.byte	0x1e
	.4byte	.LVL77
	.4byte	0xeed
	.4byte	0x8d1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x136
	.byte	0
	.byte	0x21
	.4byte	.LVL122
	.4byte	0xf11
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL56
	.4byte	0xf05
	.4byte	0x8f3
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x20
	.4byte	.LVL147
	.4byte	0xf05
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x102
	.byte	0xc
	.4byte	0x90
	.byte	0x1
	.4byte	0x9c3
	.byte	0x25
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x102
	.byte	0x2b
	.4byte	0x9c3
	.byte	0x25
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x102
	.byte	0x45
	.4byte	0x78
	.byte	0x25
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x102
	.byte	0x58
	.4byte	0x48
	.byte	0x25
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x102
	.byte	0x6b
	.4byte	0x48
	.byte	0x26
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x104
	.byte	0x11
	.4byte	0xce
	.byte	0x27
	.string	"buf"
	.byte	0x3
	.2byte	0x105
	.byte	0xb
	.4byte	0xbc
	.byte	0x26
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x106
	.byte	0xd
	.4byte	0x48
	.byte	0x26
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x107
	.byte	0xd
	.4byte	0x48
	.byte	0x27
	.string	"len"
	.byte	0x3
	.2byte	0x108
	.byte	0xe
	.4byte	0x6c
	.byte	0x26
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x109
	.byte	0xe
	.4byte	0x6c
	.byte	0x28
	.byte	0x26
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x112
	.byte	0x17
	.4byte	0xaa
	.byte	0x27
	.string	"p"
	.byte	0x3
	.2byte	0x113
	.byte	0xf
	.4byte	0xbc
	.byte	0x26
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x114
	.byte	0xf
	.4byte	0xbc
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x60
	.byte	0x29
	.4byte	.LASF43
	.byte	0x3
	.byte	0xee
	.byte	0xc
	.4byte	0x9f1
	.byte	0x1
	.4byte	0x9f1
	.byte	0x2a
	.string	"p"
	.byte	0x3
	.byte	0xee
	.byte	0x1f
	.4byte	0xbc
	.byte	0x2a
	.string	"len"
	.byte	0x3
	.byte	0xee
	.byte	0x2b
	.4byte	0x6c
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF44
	.byte	0x2b
	.4byte	.LASF60
	.byte	0x3
	.byte	0x7c
	.byte	0xd
	.byte	0x1
	.4byte	0xb05
	.byte	0x2c
	.4byte	.LASF45
	.byte	0x3
	.byte	0x7c
	.byte	0x1d
	.4byte	0xba
	.byte	0x2c
	.4byte	.LASF37
	.byte	0x3
	.byte	0x7c
	.byte	0x27
	.4byte	0x9f1
	.byte	0x2d
	.4byte	.LASF46
	.byte	0x3
	.byte	0x7e
	.byte	0xf
	.4byte	0x9e
	.byte	0x2e
	.string	"bph"
	.byte	0x3
	.byte	0x7f
	.byte	0x18
	.4byte	0xb05
	.byte	0x2d
	.4byte	.LASF20
	.byte	0x3
	.byte	0x80
	.byte	0xe
	.4byte	0x6c
	.byte	0x2d
	.4byte	.LASF47
	.byte	0x3
	.byte	0x81
	.byte	0xe
	.4byte	0x6c
	.byte	0x2d
	.4byte	.LASF48
	.byte	0x3
	.byte	0x82
	.byte	0xe
	.4byte	0x6c
	.byte	0x2d
	.4byte	.LASF49
	.byte	0x3
	.byte	0x83
	.byte	0x1f
	.4byte	0xb0b
	.byte	0x2d
	.4byte	.LASF50
	.byte	0x3
	.byte	0x85
	.byte	0x11
	.4byte	0xce
	.byte	0x2d
	.4byte	.LASF51
	.byte	0x3
	.byte	0x86
	.byte	0x11
	.4byte	0xce
	.byte	0x2d
	.4byte	.LASF21
	.byte	0x3
	.byte	0x87
	.byte	0xe
	.4byte	0x6c
	.byte	0x2d
	.4byte	.LASF17
	.byte	0x3
	.byte	0x88
	.byte	0xe
	.4byte	0x6c
	.byte	0x2e
	.string	"tag"
	.byte	0x3
	.byte	0x89
	.byte	0xe
	.4byte	0x6c
	.byte	0x2e
	.string	"p"
	.byte	0x3
	.byte	0x8a
	.byte	0x11
	.4byte	0xce
	.byte	0x2e
	.string	"s"
	.byte	0x3
	.byte	0x8a
	.byte	0x15
	.4byte	0xce
	.byte	0x2e
	.string	"t"
	.byte	0x3
	.byte	0x8a
	.byte	0x19
	.4byte	0xce
	.byte	0x2d
	.4byte	.LASF52
	.byte	0x3
	.byte	0x8b
	.byte	0x9
	.4byte	0x90
	.byte	0x2e
	.string	"sz"
	.byte	0x3
	.byte	0x8b
	.byte	0x10
	.4byte	0x90
	.byte	0x2d
	.4byte	.LASF53
	.byte	0x3
	.byte	0x8b
	.byte	0x14
	.4byte	0x90
	.byte	0x2e
	.string	"i"
	.byte	0x3
	.byte	0x8c
	.byte	0x9
	.4byte	0x90
	.byte	0x2d
	.4byte	.LASF54
	.byte	0x3
	.byte	0x8d
	.byte	0xe
	.4byte	0x84
	.byte	0x2d
	.4byte	.LASF29
	.byte	0x3
	.byte	0x8d
	.byte	0x14
	.4byte	0x84
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x119
	.byte	0x9
	.byte	0x4
	.4byte	0x1a9
	.byte	0x2f
	.4byte	.LASF78
	.byte	0x3
	.byte	0x54
	.byte	0x6
	.byte	0x1
	.4byte	0xb69
	.byte	0x2c
	.4byte	.LASF55
	.byte	0x3
	.byte	0x54
	.byte	0x25
	.4byte	0xce
	.byte	0x2a
	.string	"len"
	.byte	0x3
	.byte	0x54
	.byte	0x2f
	.4byte	0x90
	.byte	0x2e
	.string	"i"
	.byte	0x3
	.byte	0x56
	.byte	0x9
	.4byte	0x90
	.byte	0x2e
	.string	"s"
	.byte	0x3
	.byte	0x57
	.byte	0x11
	.4byte	0xce
	.byte	0x30
	.4byte	0xb5c
	.byte	0x2d
	.4byte	.LASF56
	.byte	0x3
	.byte	0x6a
	.byte	0x18
	.4byte	0xb69
	.byte	0
	.byte	0x28
	.byte	0x2e
	.string	"p"
	.byte	0x3
	.byte	0x73
	.byte	0x1e
	.4byte	0x9c3
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x108
	.byte	0x31
	.4byte	.LASF79
	.byte	0x3
	.byte	0x32
	.byte	0x5
	.4byte	0x9f1
	.byte	0x1
	.4byte	0xbb9
	.byte	0x2c
	.4byte	.LASF55
	.byte	0x3
	.byte	0x32
	.byte	0x2a
	.4byte	0xd9
	.byte	0x2a
	.string	"len"
	.byte	0x3
	.byte	0x32
	.byte	0x34
	.4byte	0x90
	.byte	0x2e
	.string	"s"
	.byte	0x3
	.byte	0x34
	.byte	0x11
	.4byte	0xce
	.byte	0x2e
	.string	"ss"
	.byte	0x3
	.byte	0x35
	.byte	0x11
	.4byte	0xce
	.byte	0x2e
	.string	"se"
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0xce
	.byte	0
	.byte	0x29
	.4byte	.LASF57
	.byte	0x3
	.byte	0x1b
	.byte	0x14
	.4byte	0xce
	.byte	0x1
	.4byte	0xbe9
	.byte	0x2a
	.string	"tag"
	.byte	0x3
	.byte	0x1b
	.byte	0x25
	.4byte	0x6c
	.byte	0x32
	.4byte	.LASF59
	.byte	0x3
	.byte	0x1d
	.byte	0x1f
	.4byte	0xbf9
	.byte	0x5
	.byte	0x3
	.4byte	names.0
	.byte	0
	.byte	0x6
	.4byte	0xd4
	.4byte	0xbf9
	.byte	0x7
	.4byte	0x97
	.byte	0x9
	.byte	0
	.byte	0x4
	.4byte	0xbe9
	.byte	0x33
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x10a
	.byte	0x14
	.byte	0x3
	.4byte	0xc34
	.byte	0x34
	.string	"fdt"
	.byte	0x2
	.2byte	0x10a
	.byte	0x28
	.4byte	0xba
	.byte	0x34
	.string	"val"
	.byte	0x2
	.2byte	0x10a
	.byte	0x36
	.4byte	0x6c
	.byte	0x26
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x10a
	.byte	0x50
	.4byte	0xb05
	.byte	0
	.byte	0x35
	.4byte	.LASF63
	.byte	0x2
	.byte	0xa4
	.byte	0x18
	.4byte	0x6c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xc6c
	.byte	0x36
	.string	"p"
	.byte	0x2
	.byte	0xa4
	.byte	0x30
	.4byte	0xb69
	.4byte	.LLST2
	.byte	0x37
	.string	"bp"
	.byte	0x2
	.byte	0xa6
	.byte	0x14
	.4byte	0xc6c
	.4byte	.LLST3
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x54
	.byte	0x35
	.4byte	.LASF64
	.byte	0x1
	.byte	0x64
	.byte	0x18
	.4byte	0x84
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xc9b
	.byte	0x36
	.string	"x"
	.byte	0x1
	.byte	0x64
	.byte	0x2d
	.4byte	0x10d
	.4byte	.LLST1
	.byte	0
	.byte	0x38
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5f
	.byte	0x17
	.4byte	0xfc
	.4byte	0xcb6
	.byte	0x2a
	.string	"x"
	.byte	0x1
	.byte	0x5f
	.byte	0x2d
	.4byte	0x6c
	.byte	0
	.byte	0x29
	.4byte	.LASF66
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x6c
	.byte	0x3
	.4byte	0xcd2
	.byte	0x2a
	.string	"x"
	.byte	0x1
	.byte	0x5b
	.byte	0x2d
	.4byte	0xfc
	.byte	0
	.byte	0x39
	.4byte	0xcb6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xcef
	.byte	0x15
	.4byte	0xcc7
	.4byte	.LLST0
	.byte	0
	.byte	0x39
	.4byte	0xb6f
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0xd60
	.byte	0x15
	.4byte	0xb80
	.4byte	.LLST4
	.byte	0x15
	.4byte	0xb8c
	.4byte	.LLST5
	.byte	0x18
	.4byte	0xb98
	.4byte	.LLST6
	.byte	0x1c
	.4byte	0xba2
	.byte	0x1c
	.4byte	0xbad
	.byte	0x3a
	.4byte	0xb6f
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0
	.byte	0x3
	.byte	0x32
	.byte	0x5
	.byte	0x14
	.4byte	0xb8c
	.byte	0x15
	.4byte	0xb80
	.4byte	.LLST7
	.byte	0x16
	.4byte	.Ldebug_ranges0+0
	.byte	0x18
	.4byte	0xb98
	.4byte	.LLST8
	.byte	0x1c
	.4byte	0xba2
	.byte	0x1c
	.4byte	0xbad
	.byte	0
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	0xb11
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xed4
	.byte	0x15
	.4byte	0xb1e
	.4byte	.LLST9
	.byte	0x15
	.4byte	0xb2a
	.4byte	.LLST10
	.byte	0x1c
	.4byte	0xb36
	.byte	0x1c
	.4byte	0xb40
	.byte	0x3a
	.4byte	0xb11
	.4byte	.LBB17
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x3
	.byte	0x54
	.byte	0x6
	.byte	0x15
	.4byte	0xb2a
	.4byte	.LLST11
	.byte	0x15
	.4byte	0xb1e
	.4byte	.LLST12
	.byte	0x16
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x18
	.4byte	0xb36
	.4byte	.LLST13
	.byte	0x18
	.4byte	0xb40
	.4byte	.LLST14
	.byte	0x1b
	.4byte	0xb4a
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0xe12
	.byte	0x18
	.4byte	0xb4f
	.4byte	.LLST15
	.byte	0x1e
	.4byte	.LVL30
	.4byte	0xf05
	.4byte	0xdf5
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x21
	.4byte	.LVL38
	.4byte	0xcb6
	.byte	0x20
	.4byte	.LVL39
	.4byte	0xf05
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0xb5c
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0xe5c
	.byte	0x18
	.4byte	0xb5d
	.4byte	.LLST16
	.byte	0x3b
	.4byte	.LVL37
	.4byte	0xf05
	.byte	0x1e
	.4byte	.LVL42
	.4byte	0xf05
	.4byte	0xe48
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x20
	.4byte	.LVL45
	.4byte	0xf05
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL20
	.4byte	0xb6f
	.4byte	0xe76
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL21
	.4byte	0xf05
	.4byte	0xe8d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x1e
	.4byte	.LVL24
	.4byte	0xf05
	.4byte	0xeaa
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL25
	.4byte	0xf1e
	.4byte	0xebe
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL27
	.4byte	0xf05
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3c
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x7
	.byte	0x98
	.byte	0xc
	.byte	0x3d
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x558
	.byte	0xc
	.byte	0x3c
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x9
	.byte	0x81
	.byte	0x6
	.byte	0x3c
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0xa
	.byte	0x1d
	.byte	0x8
	.byte	0x3c
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x3d
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x547
	.byte	0xc
	.byte	0x3c
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xa
	.byte	0x29
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x5
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
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0xb
	.byte	0
	.byte	0x55
	.byte	0x17
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
	.byte	0x5
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xa
	.2byte	0x12af
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xa
	.2byte	0x12af
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xa
	.2byte	0x12af
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL74
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x3
	.4byte	tc_wifi_dtb+4783
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL146
	.2byte	0x6
	.byte	0x3
	.4byte	tc_wifi_dtb+4783
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x6
	.byte	0x3
	.4byte	tc_wifi_dtb+4783
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0xd00dfeed
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+670
	.byte	0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL62
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL62
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL77
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL123
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL77
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL123
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.4byte	.LVL123
	.4byte	.LVL146
	.2byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x3
	.byte	0x78
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL85
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL85
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL164
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL121
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE46
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x78
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL123
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL148
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x78
	.byte	0xb8,0x7f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL123
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL131
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL138
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL150
	.4byte	.LVL153
	.2byte	0x3
	.byte	0x82
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x6
	.byte	0x3
	.4byte	.LC12
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL156
	.4byte	.LVL158-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL158-1
	.4byte	.LVL164
	.2byte	0x3
	.byte	0x78
	.byte	0xac,0x7f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL157
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL91
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL148
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL164
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL91
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE46
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x8
	.byte	0x78
	.byte	0xb4,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL115
	.4byte	.LVL121
	.2byte	0xa
	.byte	0x78
	.byte	0xb4,0x7f
	.byte	0x93
	.byte	0x4
	.byte	0x78
	.byte	0xb8,0x7f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL164
	.4byte	.LFE46
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5d
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL119
	.4byte	.LVL120-1
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE12
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
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL3
	.4byte	.LFE9
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x8
	.byte	0x82
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"result"
.LASF66:
	.string	"fdt32_to_cpu"
.LASF21:
	.string	"version"
.LASF22:
	.string	"last_comp_version"
.LASF34:
	.string	"arg_debug"
.LASF49:
	.string	"p_rsvmap"
.LASF10:
	.string	"uint64_t"
.LASF61:
	.string	"fdt_set_magic"
.LASF2:
	.string	"short int"
.LASF39:
	.string	"this_len"
.LASF48:
	.string	"off_str"
.LASF15:
	.string	"fdt64_t"
.LASF55:
	.string	"data"
.LASF76:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/datic/build_out/blfdt"
.LASF36:
	.string	"file"
.LASF17:
	.string	"totalsize"
.LASF20:
	.string	"off_mem_rsvmap"
.LASF7:
	.string	"uint8_t"
.LASF62:
	.string	"fdth"
.LASF32:
	.string	"input_buf"
.LASF41:
	.string	"endp"
.LASF67:
	.string	"xPortIsInsideInterrupt"
.LASF65:
	.string	"cpu_to_fdt32"
.LASF63:
	.string	"fdt32_ld"
.LASF30:
	.string	"_ctype_"
.LASF51:
	.string	"p_strings"
.LASF4:
	.string	"long long int"
.LASF18:
	.string	"off_dt_struct"
.LASF75:
	.string	"/home/quanghaictu/intern/Ai-Thinker-WB2/components/stage/blfdt/test/tc_blfdt_dump.c"
.LASF23:
	.string	"boot_cpuid_phys"
.LASF40:
	.string	"smagic"
.LASF3:
	.string	"long int"
.LASF53:
	.string	"shift"
.LASF28:
	.string	"address"
.LASF71:
	.string	"printf"
.LASF26:
	.string	"fdt_header"
.LASF57:
	.string	"tagname"
.LASF72:
	.string	"xTaskGetTickCount"
.LASF47:
	.string	"off_dt"
.LASF19:
	.string	"off_dt_strings"
.LASF24:
	.string	"size_dt_strings"
.LASF5:
	.string	"unsigned char"
.LASF79:
	.string	"util_is_printable_string"
.LASF50:
	.string	"p_struct"
.LASF31:
	.string	"tc_wifi_dtb"
.LASF1:
	.string	"signed char"
.LASF60:
	.string	"dump_blob"
.LASF0:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF78:
	.string	"utilfdt_print_data"
.LASF11:
	.string	"unsigned int"
.LASF77:
	.string	"tc_blfdtdump"
.LASF59:
	.string	"names"
.LASF37:
	.string	"debug"
.LASF45:
	.string	"blob"
.LASF14:
	.string	"fdt32_t"
.LASF6:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF35:
	.string	"arg_scan"
.LASF73:
	.string	"strlen"
.LASF54:
	.string	"addr"
.LASF44:
	.string	"_Bool"
.LASF43:
	.string	"valid_header"
.LASF52:
	.string	"depth"
.LASF29:
	.string	"size"
.LASF64:
	.string	"fdt64_to_cpu"
.LASF25:
	.string	"size_dt_struct"
.LASF42:
	.string	"blfdtdump"
.LASF9:
	.string	"long unsigned int"
.LASF12:
	.string	"uintptr_t"
.LASF74:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing -fno-omit-frame-pointer"
.LASF68:
	.string	"xTaskGetTickCountFromISR"
.LASF33:
	.string	"input_len"
.LASF69:
	.string	"bl_printk"
.LASF56:
	.string	"cell"
.LASF27:
	.string	"fdt_reserve_entry"
.LASF16:
	.string	"magic"
.LASF38:
	.string	"scan"
.LASF46:
	.string	"blob_off"
.LASF70:
	.string	"memchr"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
