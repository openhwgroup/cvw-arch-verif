///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fsw.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x1)
la x2, scratch
li x3, 0xa1cc015f # load x3 with value 0xa1cc015f
sw x3, 0(x2) # store 0xa1cc015f in memory
flw f27, 0(x2) # load 0xa1cc015f from memory into f27
la x1, scratch # base address
addi x1, x1, -1836 # sub immediate from rs1 to counter offset
fsw f27, 1836(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0xd82c1f1f # load x3 with value 0xd82c1f1f
sw x3, 0(x2) # store 0xd82c1f1f in memory
flw f7, 0(x2) # load 0xd82c1f1f from memory into f7
la x2, scratch # base address
addi x2, x2, 701 # sub immediate from rs1 to counter offset
fsw f7, -701(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0x89e465ae # load x3 with value 0x89e465ae
sw x3, 0(x2) # store 0x89e465ae in memory
flw f2, 0(x2) # load 0x89e465ae from memory into f2
la x3, scratch # base address
addi x3, x3, -1786 # sub immediate from rs1 to counter offset
fsw f2, 1786(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa8f3a108 # load x3 with value 0xa8f3a108
sw x3, 0(x2) # store 0xa8f3a108 in memory
flw f23, 0(x2) # load 0xa8f3a108 from memory into f23
la x4, scratch # base address
addi x4, x4, 660 # sub immediate from rs1 to counter offset
fsw f23, -660(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd6bd12e8 # load x3 with value 0xd6bd12e8
sw x3, 0(x2) # store 0xd6bd12e8 in memory
flw f16, 0(x2) # load 0xd6bd12e8 from memory into f16
la x5, scratch # base address
addi x5, x5, -748 # sub immediate from rs1 to counter offset
fsw f16, 748(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x88ced095 # load x3 with value 0x88ced095
sw x3, 0(x2) # store 0x88ced095 in memory
flw f5, 0(x2) # load 0x88ced095 from memory into f5
la x6, scratch # base address
addi x6, x6, 224 # sub immediate from rs1 to counter offset
fsw f5, -224(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7bf022b7 # load x3 with value 0x7bf022b7
sw x3, 0(x2) # store 0x7bf022b7 in memory
flw f2, 0(x2) # load 0x7bf022b7 from memory into f2
la x7, scratch # base address
addi x7, x7, -847 # sub immediate from rs1 to counter offset
fsw f2, 847(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0x3764489f # load x3 with value 0x3764489f
sw x3, 0(x2) # store 0x3764489f in memory
flw f5, 0(x2) # load 0x3764489f from memory into f5
la x8, scratch # base address
addi x8, x8, 223 # sub immediate from rs1 to counter offset
fsw f5, -223(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0xfbc4b52e # load x3 with value 0xfbc4b52e
sw x3, 0(x2) # store 0xfbc4b52e in memory
flw f11, 0(x2) # load 0xfbc4b52e from memory into f11
la x9, scratch # base address
addi x9, x9, -1695 # sub immediate from rs1 to counter offset
fsw f11, 1695(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0xe2fb3058 # load x3 with value 0xe2fb3058
sw x3, 0(x2) # store 0xe2fb3058 in memory
flw f12, 0(x2) # load 0xe2fb3058 from memory into f12
la x10, scratch # base address
addi x10, x10, -1003 # sub immediate from rs1 to counter offset
fsw f12, 1003(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0x2e0dfa58 # load x3 with value 0x2e0dfa58
sw x3, 0(x2) # store 0x2e0dfa58 in memory
flw f14, 0(x2) # load 0x2e0dfa58 from memory into f14
la x11, scratch # base address
addi x11, x11, -799 # sub immediate from rs1 to counter offset
fsw f14, 799(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0x3de478c9 # load x3 with value 0x3de478c9
sw x3, 0(x2) # store 0x3de478c9 in memory
flw f14, 0(x2) # load 0x3de478c9 from memory into f14
la x12, scratch # base address
addi x12, x12, -795 # sub immediate from rs1 to counter offset
fsw f14, 795(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0xfe8a34df # load x3 with value 0xfe8a34df
sw x3, 0(x2) # store 0xfe8a34df in memory
flw f21, 0(x2) # load 0xfe8a34df from memory into f21
la x13, scratch # base address
addi x13, x13, 1542 # sub immediate from rs1 to counter offset
fsw f21, -1542(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0x933ed429 # load x3 with value 0x933ed429
sw x3, 0(x2) # store 0x933ed429 in memory
flw f29, 0(x2) # load 0x933ed429 from memory into f29
la x14, scratch # base address
addi x14, x14, -483 # sub immediate from rs1 to counter offset
fsw f29, 483(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0x09b4a987 # load x3 with value 0x09b4a987
sw x3, 0(x2) # store 0x09b4a987 in memory
flw f1, 0(x2) # load 0x09b4a987 from memory into f1
la x15, scratch # base address
addi x15, x15, 191 # sub immediate from rs1 to counter offset
fsw f1, -191(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0xc4bbd893 # load x3 with value 0xc4bbd893
sw x3, 0(x2) # store 0xc4bbd893 in memory
flw f29, 0(x2) # load 0xc4bbd893 from memory into f29
la x16, scratch # base address
addi x16, x16, -855 # sub immediate from rs1 to counter offset
fsw f29, 855(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0x7404d3ac # load x3 with value 0x7404d3ac
sw x3, 0(x2) # store 0x7404d3ac in memory
flw f13, 0(x2) # load 0x7404d3ac from memory into f13
la x17, scratch # base address
addi x17, x17, 1388 # sub immediate from rs1 to counter offset
fsw f13, -1388(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0x430456b3 # load x3 with value 0x430456b3
sw x3, 0(x2) # store 0x430456b3 in memory
flw f5, 0(x2) # load 0x430456b3 from memory into f5
la x18, scratch # base address
addi x18, x18, -442 # sub immediate from rs1 to counter offset
fsw f5, 442(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0x9feaf4eb # load x3 with value 0x9feaf4eb
sw x3, 0(x2) # store 0x9feaf4eb in memory
flw f8, 0(x2) # load 0x9feaf4eb from memory into f8
la x19, scratch # base address
addi x19, x19, 668 # sub immediate from rs1 to counter offset
fsw f8, -668(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0x107e1487 # load x3 with value 0x107e1487
sw x3, 0(x2) # store 0x107e1487 in memory
flw f29, 0(x2) # load 0x107e1487 from memory into f29
la x20, scratch # base address
addi x20, x20, -130 # sub immediate from rs1 to counter offset
fsw f29, 130(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0xee1f97fd # load x3 with value 0xee1f97fd
sw x3, 0(x2) # store 0xee1f97fd in memory
flw f11, 0(x2) # load 0xee1f97fd from memory into f11
la x21, scratch # base address
addi x21, x21, 652 # sub immediate from rs1 to counter offset
fsw f11, -652(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0x0a4ffed4 # load x3 with value 0x0a4ffed4
sw x3, 0(x2) # store 0x0a4ffed4 in memory
flw f28, 0(x2) # load 0x0a4ffed4 from memory into f28
la x22, scratch # base address
addi x22, x22, 289 # sub immediate from rs1 to counter offset
fsw f28, -289(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0x96ffc209 # load x3 with value 0x96ffc209
sw x3, 0(x2) # store 0x96ffc209 in memory
flw f11, 0(x2) # load 0x96ffc209 from memory into f11
la x23, scratch # base address
addi x23, x23, 491 # sub immediate from rs1 to counter offset
fsw f11, -491(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0x5950952a # load x3 with value 0x5950952a
sw x3, 0(x2) # store 0x5950952a in memory
flw f12, 0(x2) # load 0x5950952a from memory into f12
la x24, scratch # base address
addi x24, x24, 1325 # sub immediate from rs1 to counter offset
fsw f12, -1325(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0x7bacd0fe # load x3 with value 0x7bacd0fe
sw x3, 0(x2) # store 0x7bacd0fe in memory
flw f6, 0(x2) # load 0x7bacd0fe from memory into f6
la x25, scratch # base address
addi x25, x25, -946 # sub immediate from rs1 to counter offset
fsw f6, 946(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0xf3221f3a # load x3 with value 0xf3221f3a
sw x3, 0(x2) # store 0xf3221f3a in memory
flw f19, 0(x2) # load 0xf3221f3a from memory into f19
la x26, scratch # base address
addi x26, x26, 1712 # sub immediate from rs1 to counter offset
fsw f19, -1712(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0x69a87262 # load x3 with value 0x69a87262
sw x3, 0(x2) # store 0x69a87262 in memory
flw f29, 0(x2) # load 0x69a87262 from memory into f29
la x27, scratch # base address
addi x27, x27, 660 # sub immediate from rs1 to counter offset
fsw f29, -660(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0x77d10e05 # load x3 with value 0x77d10e05
sw x3, 0(x2) # store 0x77d10e05 in memory
flw f12, 0(x2) # load 0x77d10e05 from memory into f12
la x28, scratch # base address
addi x28, x28, -735 # sub immediate from rs1 to counter offset
fsw f12, 735(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0x91ccef9d # load x3 with value 0x91ccef9d
sw x3, 0(x2) # store 0x91ccef9d in memory
flw f1, 0(x2) # load 0x91ccef9d from memory into f1
la x29, scratch # base address
addi x29, x29, -1732 # sub immediate from rs1 to counter offset
fsw f1, 1732(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0xfecb1a2f # load x3 with value 0xfecb1a2f
sw x3, 0(x2) # store 0xfecb1a2f in memory
flw f15, 0(x2) # load 0xfecb1a2f from memory into f15
la x30, scratch # base address
addi x30, x30, -659 # sub immediate from rs1 to counter offset
fsw f15, 659(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0xc06d906f # load x3 with value 0xc06d906f
sw x3, 0(x2) # store 0xc06d906f in memory
flw f15, 0(x2) # load 0xc06d906f from memory into f15
la x31, scratch # base address
addi x31, x31, 43 # sub immediate from rs1 to counter offset
fsw f15, -43(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xdf638ba7 # load x3 with value 0xdf638ba7
sw x3, 0(x2) # store 0xdf638ba7 in memory
flw f7, 0(x2) # load 0xdf638ba7 from memory into f7
la x2, scratch # base address
addi x2, x2, 0 # sub immediate from rs1 to counter offset
fsw f7, 0(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x0816a031 # load x3 with value 0x0816a031
sw x3, 0(x2) # store 0x0816a031 in memory
flw f29, 0(x2) # load 0x0816a031 from memory into f29
la x6, scratch # base address
addi x6, x6, -1 # sub immediate from rs1 to counter offset
fsw f29, 1(x6) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x99be6ab4 # load x3 with value 0x99be6ab4
sw x3, 0(x2) # store 0x99be6ab4 in memory
flw f12, 0(x2) # load 0x99be6ab4 from memory into f12
la x8, scratch # base address
addi x8, x8, -2 # sub immediate from rs1 to counter offset
fsw f12, 2(x8) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x684d857e # load x3 with value 0x684d857e
sw x3, 0(x2) # store 0x684d857e in memory
flw f13, 0(x2) # load 0x684d857e from memory into f13
la x16, scratch # base address
addi x16, x16, -3 # sub immediate from rs1 to counter offset
fsw f13, 3(x16) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xa7479fd1 # load x3 with value 0xa7479fd1
sw x3, 0(x2) # store 0xa7479fd1 in memory
flw f26, 0(x2) # load 0xa7479fd1 from memory into f26
la x9, scratch # base address
addi x9, x9, -4 # sub immediate from rs1 to counter offset
fsw f26, 4(x9) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xbac19ef8 # load x3 with value 0xbac19ef8
sw x3, 0(x2) # store 0xbac19ef8 in memory
flw f24, 0(x2) # load 0xbac19ef8 from memory into f24
la x11, scratch # base address
addi x11, x11, -8 # sub immediate from rs1 to counter offset
fsw f24, 8(x11) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x457e31eb # load x3 with value 0x457e31eb
sw x3, 0(x2) # store 0x457e31eb in memory
flw f5, 0(x2) # load 0x457e31eb from memory into f5
la x15, scratch # base address
addi x15, x15, -16 # sub immediate from rs1 to counter offset
fsw f5, 16(x15) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xf10f5393 # load x3 with value 0xf10f5393
sw x3, 0(x2) # store 0xf10f5393 in memory
flw f3, 0(x2) # load 0xf10f5393 from memory into f3
la x16, scratch # base address
addi x16, x16, -32 # sub immediate from rs1 to counter offset
fsw f3, 32(x16) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xa3a9a605 # load x3 with value 0xa3a9a605
sw x3, 0(x2) # store 0xa3a9a605 in memory
flw f19, 0(x2) # load 0xa3a9a605 from memory into f19
la x24, scratch # base address
addi x24, x24, -64 # sub immediate from rs1 to counter offset
fsw f19, 64(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x82488db0 # load x3 with value 0x82488db0
sw x3, 0(x2) # store 0x82488db0 in memory
flw f5, 0(x2) # load 0x82488db0 from memory into f5
la x12, scratch # base address
addi x12, x12, -128 # sub immediate from rs1 to counter offset
fsw f5, 128(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5ee1c05e # load x3 with value 0x5ee1c05e
sw x3, 0(x2) # store 0x5ee1c05e in memory
flw f25, 0(x2) # load 0x5ee1c05e from memory into f25
la x3, scratch # base address
addi x3, x3, -256 # sub immediate from rs1 to counter offset
fsw f25, 256(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xf4b865cc # load x3 with value 0xf4b865cc
sw x3, 0(x2) # store 0xf4b865cc in memory
flw f17, 0(x2) # load 0xf4b865cc from memory into f17
la x5, scratch # base address
addi x5, x5, -512 # sub immediate from rs1 to counter offset
fsw f17, 512(x5) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2eacc9af # load x3 with value 0x2eacc9af
sw x3, 0(x2) # store 0x2eacc9af in memory
flw f18, 0(x2) # load 0x2eacc9af from memory into f18
la x16, scratch # base address
addi x16, x16, -1023 # sub immediate from rs1 to counter offset
fsw f18, 1023(x16) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5234ddfa # load x3 with value 0x5234ddfa
sw x3, 0(x2) # store 0x5234ddfa in memory
flw f6, 0(x2) # load 0x5234ddfa from memory into f6
la x10, scratch # base address
addi x10, x10, -1024 # sub immediate from rs1 to counter offset
fsw f6, 1024(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x0514cdbb # load x3 with value 0x0514cdbb
sw x3, 0(x2) # store 0x0514cdbb in memory
flw f25, 0(x2) # load 0x0514cdbb from memory into f25
la x29, scratch # base address
addi x29, x29, -1795 # sub immediate from rs1 to counter offset
fsw f25, 1795(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xbf87cdac # load x3 with value 0xbf87cdac
sw x3, 0(x2) # store 0xbf87cdac in memory
flw f8, 0(x2) # load 0xbf87cdac from memory into f8
la x30, scratch # base address
addi x30, x30, -2047 # sub immediate from rs1 to counter offset
fsw f8, 2047(x30) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xb88d23ac # load x3 with value 0xb88d23ac
sw x3, 0(x2) # store 0xb88d23ac in memory
flw f9, 0(x2) # load 0xb88d23ac from memory into f9
la x29, scratch # base address
addi x29, x29, 2047 # increment rs1 by 2047 
addi x29, x29, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsw f9, -2048(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xe7ed397d # load x3 with value 0xe7ed397d
sw x3, 0(x2) # store 0xe7ed397d in memory
flw f31, 0(x2) # load 0xe7ed397d from memory into f31
la x25, scratch # base address
addi x25, x25, 2047 # sub immediate from rs1 to counter offset
fsw f31, -2047(x25) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x1d9fec86 # load x3 with value 0x1d9fec86
sw x3, 0(x2) # store 0x1d9fec86 in memory
flw f14, 0(x2) # load 0x1d9fec86 from memory into f14
la x10, scratch # base address
addi x10, x10, 2 # sub immediate from rs1 to counter offset
fsw f14, -2(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x35f9f3f1 # load x3 with value 0x35f9f3f1
sw x3, 0(x2) # store 0x35f9f3f1 in memory
flw f3, 0(x2) # load 0x35f9f3f1 from memory into f3
la x11, scratch # base address
addi x11, x11, 1 # sub immediate from rs1 to counter offset
fsw f3, -1(x11) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
addi x15, x15, -1939
add x8, x13, x27 # perform first operation
fsw f26, 1939(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x8, scratch
addi x8, x8, 659
add x17, x16, x3 # perform first operation
fsw f27, -659(x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
addi x1, x1, 1592
add x10, x3, x28 # perform first operation
fsw f7, -1592(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
addi x9, x9, -1523
add x9, x9, x0 # perform first operation
fsw f2, 1523(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x6, scratch
addi x6, x6, -1316
fmul.s f16, f16, f0 # perform first operation
fsw f16, 1316(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
addi x9, x9, 378
add x25, x25, x0 # perform first operation
fsw f17, -378(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
addi x20, x20, -1333
add x7, x8, x30 # perform first operation
fsw f14, 1333(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
addi x5, x5, 1956
add x6, x24, x15 # perform first operation
fsw f31, -1956(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, 439
add x24, x15, x30 # perform first operation
fsw f3, -439(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x11, scratch
addi x11, x11, 249
add x11, x11, x0 # perform first operation
fsw f20, -249(x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, -1996
fmul.s f5, f5, f0 # perform first operation
fsw f5, 1996(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, 432
add x25, x25, x0 # perform first operation
fsw f22, -432(x29) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xff5a765f # load x3 with value 0xff5a765f
sw x3, 0(x2) # store 0xff5a765f in memory
flw f0, 0(x2) # load 0xff5a765f from memory into f0
la x13, scratch # base address
addi x13, x13, 1743 # sub immediate from rs1 to counter offset
fsw f0, -1743(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xc11e7339 # load x3 with value 0xc11e7339
sw x3, 0(x2) # store 0xc11e7339 in memory
flw f1, 0(x2) # load 0xc11e7339 from memory into f1
la x14, scratch # base address
addi x14, x14, 1324 # sub immediate from rs1 to counter offset
fsw f1, -1324(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0xefd3f5cb # load x3 with value 0xefd3f5cb
sw x3, 0(x2) # store 0xefd3f5cb in memory
flw f2, 0(x2) # load 0xefd3f5cb from memory into f2
la x23, scratch # base address
addi x23, x23, -200 # sub immediate from rs1 to counter offset
fsw f2, 200(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x38b07a3b # load x3 with value 0x38b07a3b
sw x3, 0(x2) # store 0x38b07a3b in memory
flw f3, 0(x2) # load 0x38b07a3b from memory into f3
la x20, scratch # base address
addi x20, x20, 1163 # sub immediate from rs1 to counter offset
fsw f3, -1163(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd9f027bd # load x3 with value 0xd9f027bd
sw x3, 0(x2) # store 0xd9f027bd in memory
flw f4, 0(x2) # load 0xd9f027bd from memory into f4
la x30, scratch # base address
addi x30, x30, -179 # sub immediate from rs1 to counter offset
fsw f4, 179(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9c28455c # load x3 with value 0x9c28455c
sw x3, 0(x2) # store 0x9c28455c in memory
flw f5, 0(x2) # load 0x9c28455c from memory into f5
la x16, scratch # base address
addi x16, x16, 1411 # sub immediate from rs1 to counter offset
fsw f5, -1411(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdc60a1df # load x3 with value 0xdc60a1df
sw x3, 0(x2) # store 0xdc60a1df in memory
flw f6, 0(x2) # load 0xdc60a1df from memory into f6
la x23, scratch # base address
addi x23, x23, 1750 # sub immediate from rs1 to counter offset
fsw f6, -1750(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x285a24d1 # load x3 with value 0x285a24d1
sw x3, 0(x2) # store 0x285a24d1 in memory
flw f7, 0(x2) # load 0x285a24d1 from memory into f7
la x16, scratch # base address
addi x16, x16, 846 # sub immediate from rs1 to counter offset
fsw f7, -846(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x0005b02c # load x3 with value 0x0005b02c
sw x3, 0(x2) # store 0x0005b02c in memory
flw f8, 0(x2) # load 0x0005b02c from memory into f8
la x22, scratch # base address
addi x22, x22, -949 # sub immediate from rs1 to counter offset
fsw f8, 949(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xd04b408a # load x3 with value 0xd04b408a
sw x3, 0(x2) # store 0xd04b408a in memory
flw f9, 0(x2) # load 0xd04b408a from memory into f9
la x30, scratch # base address
addi x30, x30, -512 # sub immediate from rs1 to counter offset
fsw f9, 512(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x5ab4fc39 # load x3 with value 0x5ab4fc39
sw x3, 0(x2) # store 0x5ab4fc39 in memory
flw f10, 0(x2) # load 0x5ab4fc39 from memory into f10
la x24, scratch # base address
addi x24, x24, -394 # sub immediate from rs1 to counter offset
fsw f10, 394(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xa6cde0d1 # load x3 with value 0xa6cde0d1
sw x3, 0(x2) # store 0xa6cde0d1 in memory
flw f11, 0(x2) # load 0xa6cde0d1 from memory into f11
la x27, scratch # base address
addi x27, x27, 606 # sub immediate from rs1 to counter offset
fsw f11, -606(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x4358c0a6 # load x3 with value 0x4358c0a6
sw x3, 0(x2) # store 0x4358c0a6 in memory
flw f12, 0(x2) # load 0x4358c0a6 from memory into f12
la x14, scratch # base address
addi x14, x14, -266 # sub immediate from rs1 to counter offset
fsw f12, 266(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x351bc184 # load x3 with value 0x351bc184
sw x3, 0(x2) # store 0x351bc184 in memory
flw f13, 0(x2) # load 0x351bc184 from memory into f13
la x10, scratch # base address
addi x10, x10, 840 # sub immediate from rs1 to counter offset
fsw f13, -840(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xe005d6fd # load x3 with value 0xe005d6fd
sw x3, 0(x2) # store 0xe005d6fd in memory
flw f14, 0(x2) # load 0xe005d6fd from memory into f14
la x11, scratch # base address
addi x11, x11, -1412 # sub immediate from rs1 to counter offset
fsw f14, 1412(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xcd9a7c53 # load x3 with value 0xcd9a7c53
sw x3, 0(x2) # store 0xcd9a7c53 in memory
flw f15, 0(x2) # load 0xcd9a7c53 from memory into f15
la x16, scratch # base address
addi x16, x16, -422 # sub immediate from rs1 to counter offset
fsw f15, 422(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x2bba8856 # load x3 with value 0x2bba8856
sw x3, 0(x2) # store 0x2bba8856 in memory
flw f16, 0(x2) # load 0x2bba8856 from memory into f16
la x19, scratch # base address
addi x19, x19, -1325 # sub immediate from rs1 to counter offset
fsw f16, 1325(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x0bafe598 # load x3 with value 0x0bafe598
sw x3, 0(x2) # store 0x0bafe598 in memory
flw f17, 0(x2) # load 0x0bafe598 from memory into f17
la x19, scratch # base address
addi x19, x19, 2035 # sub immediate from rs1 to counter offset
fsw f17, -2035(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x7f5440da # load x3 with value 0x7f5440da
sw x3, 0(x2) # store 0x7f5440da in memory
flw f18, 0(x2) # load 0x7f5440da from memory into f18
la x23, scratch # base address
addi x23, x23, -1975 # sub immediate from rs1 to counter offset
fsw f18, 1975(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x42609ed0 # load x3 with value 0x42609ed0
sw x3, 0(x2) # store 0x42609ed0 in memory
flw f19, 0(x2) # load 0x42609ed0 from memory into f19
la x23, scratch # base address
addi x23, x23, -1709 # sub immediate from rs1 to counter offset
fsw f19, 1709(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xfa54d867 # load x3 with value 0xfa54d867
sw x3, 0(x2) # store 0xfa54d867 in memory
flw f20, 0(x2) # load 0xfa54d867 from memory into f20
la x11, scratch # base address
addi x11, x11, 1945 # sub immediate from rs1 to counter offset
fsw f20, -1945(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x8d0fb345 # load x3 with value 0x8d0fb345
sw x3, 0(x2) # store 0x8d0fb345 in memory
flw f21, 0(x2) # load 0x8d0fb345 from memory into f21
la x26, scratch # base address
addi x26, x26, 1267 # sub immediate from rs1 to counter offset
fsw f21, -1267(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x254e2fc3 # load x3 with value 0x254e2fc3
sw x3, 0(x2) # store 0x254e2fc3 in memory
flw f22, 0(x2) # load 0x254e2fc3 from memory into f22
la x23, scratch # base address
addi x23, x23, -1540 # sub immediate from rs1 to counter offset
fsw f22, 1540(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xf73efb9d # load x3 with value 0xf73efb9d
sw x3, 0(x2) # store 0xf73efb9d in memory
flw f23, 0(x2) # load 0xf73efb9d from memory into f23
la x16, scratch # base address
addi x16, x16, 150 # sub immediate from rs1 to counter offset
fsw f23, -150(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x223f2b6a # load x3 with value 0x223f2b6a
sw x3, 0(x2) # store 0x223f2b6a in memory
flw f24, 0(x2) # load 0x223f2b6a from memory into f24
la x14, scratch # base address
addi x14, x14, -1622 # sub immediate from rs1 to counter offset
fsw f24, 1622(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xf7c3e160 # load x3 with value 0xf7c3e160
sw x3, 0(x2) # store 0xf7c3e160 in memory
flw f25, 0(x2) # load 0xf7c3e160 from memory into f25
la x22, scratch # base address
addi x22, x22, 1107 # sub immediate from rs1 to counter offset
fsw f25, -1107(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x7afc6e63 # load x3 with value 0x7afc6e63
sw x3, 0(x2) # store 0x7afc6e63 in memory
flw f26, 0(x2) # load 0x7afc6e63 from memory into f26
la x12, scratch # base address
addi x12, x12, -735 # sub immediate from rs1 to counter offset
fsw f26, 735(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x4a7818d3 # load x3 with value 0x4a7818d3
sw x3, 0(x2) # store 0x4a7818d3 in memory
flw f27, 0(x2) # load 0x4a7818d3 from memory into f27
la x19, scratch # base address
addi x19, x19, 1683 # sub immediate from rs1 to counter offset
fsw f27, -1683(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x84fa34f0 # load x3 with value 0x84fa34f0
sw x3, 0(x2) # store 0x84fa34f0 in memory
flw f28, 0(x2) # load 0x84fa34f0 from memory into f28
la x21, scratch # base address
addi x21, x21, -1757 # sub immediate from rs1 to counter offset
fsw f28, 1757(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x2783ec74 # load x3 with value 0x2783ec74
sw x3, 0(x2) # store 0x2783ec74 in memory
flw f29, 0(x2) # load 0x2783ec74 from memory into f29
la x14, scratch # base address
addi x14, x14, 1201 # sub immediate from rs1 to counter offset
fsw f29, -1201(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x520cb528 # load x3 with value 0x520cb528
sw x3, 0(x2) # store 0x520cb528 in memory
flw f30, 0(x2) # load 0x520cb528 from memory into f30
la x19, scratch # base address
addi x19, x19, 339 # sub immediate from rs1 to counter offset
fsw f30, -339(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xd7a267ce # load x3 with value 0xd7a267ce
sw x3, 0(x2) # store 0xd7a267ce in memory
flw f31, 0(x2) # load 0xd7a267ce from memory into f31
la x27, scratch # base address
addi x27, x27, -1151 # sub immediate from rs1 to counter offset
fsw f31, 1151(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
la x17, scratch # base address
addi x17, x17, -607 # sub immediate from rs1 to counter offset
fsw f16, 607(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x11, scratch # base address
addi x11, x11, 134 # sub immediate from rs1 to counter offset
fsw f29, -134(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
la x7, scratch # base address
addi x7, x7, 750 # sub immediate from rs1 to counter offset
fsw f5, -750(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x28, scratch # base address
addi x28, x28, 227 # sub immediate from rs1 to counter offset
fsw f25, -227(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x18, scratch # base address
addi x18, x18, -1813 # sub immediate from rs1 to counter offset
fsw f3, 1813(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x14, scratch # base address
addi x14, x14, -1171 # sub immediate from rs1 to counter offset
fsw f23, 1171(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x12, scratch # base address
addi x12, x12, -1785 # sub immediate from rs1 to counter offset
fsw f5, 1785(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x23, scratch # base address
addi x23, x23, 577 # sub immediate from rs1 to counter offset
fsw f15, -577(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
la x28, scratch # base address
addi x28, x28, -751 # sub immediate from rs1 to counter offset
fsw f25, 751(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
la x26, scratch # base address
addi x26, x26, 1374 # sub immediate from rs1 to counter offset
fsw f13, -1374(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
la x15, scratch # base address
addi x15, x15, -1450 # sub immediate from rs1 to counter offset
fsw f3, 1450(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x7, scratch # base address
addi x7, x7, 1367 # sub immediate from rs1 to counter offset
fsw f17, -1367(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x30, scratch # base address
addi x30, x30, 589 # sub immediate from rs1 to counter offset
fsw f19, -589(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
la x31, scratch # base address
addi x31, x31, 779 # sub immediate from rs1 to counter offset
fsw f6, -779(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x25, scratch # base address
addi x25, x25, 889 # sub immediate from rs1 to counter offset
fsw f2, -889(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x1, scratch # base address
addi x1, x1, -1689 # sub immediate from rs1 to counter offset
fsw f11, 1689(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
la x18, scratch # base address
addi x18, x18, 1751 # sub immediate from rs1 to counter offset
fsw f8, -1751(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
la x25, scratch # base address
addi x25, x25, -698 # sub immediate from rs1 to counter offset
fsw f28, 698(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x17, scratch # base address
addi x17, x17, 2027 # sub immediate from rs1 to counter offset
fsw f7, -2027(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
la x1, scratch # base address
addi x1, x1, 1116 # sub immediate from rs1 to counter offset
fsw f12, -1116(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
la x31, scratch # base address
addi x31, x31, -2033 # sub immediate from rs1 to counter offset
fsw f26, 2033(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
la x11, scratch # base address
addi x11, x11, 1611 # sub immediate from rs1 to counter offset
fsw f20, -1611(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
la x31, scratch # base address
addi x31, x31, 511 # sub immediate from rs1 to counter offset
fsw f10, -511(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x13, scratch # base address
addi x13, x13, -801 # sub immediate from rs1 to counter offset
fsw f27, 801(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x1, scratch # base address
addi x1, x1, -1185 # sub immediate from rs1 to counter offset
fsw f19, 1185(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x8, scratch # base address
addi x8, x8, -1491 # sub immediate from rs1 to counter offset
fsw f25, 1491(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x29, scratch # base address
addi x29, x29, -394 # sub immediate from rs1 to counter offset
fsw f14, 394(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x17, scratch # base address
addi x17, x17, -1554 # sub immediate from rs1 to counter offset
fsw f15, 1554(x17) # perform operation

.EQU SIGSIZE,0


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
