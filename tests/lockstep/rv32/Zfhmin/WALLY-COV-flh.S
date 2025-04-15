///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfhmin/WALLY-COV-flh.S
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
la x1, scratch # base address 
addi x1, x1, 455 # sub immediate from rs1 to counter offset
li x10, 0x9726a2d2 # load x3 with value 0x9726a2d2
sw x10, -455(x1) # store 0x9726a2d2 in memory
flh f16, -455(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, -2043 # sub immediate from rs1 to counter offset
li x6, 0x1a927f11 # load x3 with value 0x1a927f11
sw x6, 2043(x2) # store 0x1a927f11 in memory
flh f29, 2043(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, 1547 # sub immediate from rs1 to counter offset
li x26, 0x40f5eebe # load x3 with value 0x40f5eebe
sw x26, -1547(x3) # store 0x40f5eebe in memory
flh f13, -1547(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, 373 # sub immediate from rs1 to counter offset
li x12, 0x73930e44 # load x3 with value 0x73930e44
sw x12, -373(x4) # store 0x73930e44 in memory
flh f30, -373(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, 1309 # sub immediate from rs1 to counter offset
li x20, 0x21667fad # load x3 with value 0x21667fad
sw x20, -1309(x5) # store 0x21667fad in memory
flh f14, -1309(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # base address 
addi x6, x6, -9 # sub immediate from rs1 to counter offset
li x22, 0x4e25fe83 # load x3 with value 0x4e25fe83
sw x22, 9(x6) # store 0x4e25fe83 in memory
flh f2, 9(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, -1891 # sub immediate from rs1 to counter offset
li x13, 0xd92d5717 # load x3 with value 0xd92d5717
sw x13, 1891(x7) # store 0xd92d5717 in memory
flh f9, 1891(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, 1301 # sub immediate from rs1 to counter offset
li x20, 0x7c150da7 # load x3 with value 0x7c150da7
sw x20, -1301(x8) # store 0x7c150da7 in memory
flh f15, -1301(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, 336 # sub immediate from rs1 to counter offset
li x27, 0xe831fa76 # load x3 with value 0xe831fa76
sw x27, -336(x9) # store 0xe831fa76 in memory
flh f6, -336(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, 197 # sub immediate from rs1 to counter offset
li x2, 0xb99c7a4f # load x3 with value 0xb99c7a4f
sw x2, -197(x10) # store 0xb99c7a4f in memory
flh f12, -197(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, 1106 # sub immediate from rs1 to counter offset
li x6, 0x908dd8a0 # load x3 with value 0x908dd8a0
sw x6, -1106(x11) # store 0x908dd8a0 in memory
flh f3, -1106(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 1844 # sub immediate from rs1 to counter offset
li x15, 0x3f8a4a8a # load x3 with value 0x3f8a4a8a
sw x15, -1844(x12) # store 0x3f8a4a8a in memory
flh f22, -1844(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, 480 # sub immediate from rs1 to counter offset
li x3, 0x93da507e # load x3 with value 0x93da507e
sw x3, -480(x13) # store 0x93da507e in memory
flh f26, -480(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, -366 # sub immediate from rs1 to counter offset
li x18, 0x624bf504 # load x3 with value 0x624bf504
sw x18, 366(x14) # store 0x624bf504 in memory
flh f13, 366(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, -548 # sub immediate from rs1 to counter offset
li x10, 0x9261b5d4 # load x3 with value 0x9261b5d4
sw x10, 548(x15) # store 0x9261b5d4 in memory
flh f14, 548(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, 598 # sub immediate from rs1 to counter offset
li x30, 0xd6d2be62 # load x3 with value 0xd6d2be62
sw x30, -598(x16) # store 0xd6d2be62 in memory
flh f2, -598(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, 61 # sub immediate from rs1 to counter offset
li x21, 0xdc6662ba # load x3 with value 0xdc6662ba
sw x21, -61(x17) # store 0xdc6662ba in memory
flh f5, -61(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, -1746 # sub immediate from rs1 to counter offset
li x30, 0x83f5bccb # load x3 with value 0x83f5bccb
sw x30, 1746(x18) # store 0x83f5bccb in memory
flh f2, 1746(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, -961 # sub immediate from rs1 to counter offset
li x30, 0x8e80ce5b # load x3 with value 0x8e80ce5b
sw x30, 961(x19) # store 0x8e80ce5b in memory
flh f28, 961(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, -666 # sub immediate from rs1 to counter offset
li x19, 0x1e9cc045 # load x3 with value 0x1e9cc045
sw x19, 666(x20) # store 0x1e9cc045 in memory
flh f7, 666(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -1696 # sub immediate from rs1 to counter offset
li x31, 0xd36162c8 # load x3 with value 0xd36162c8
sw x31, 1696(x21) # store 0xd36162c8 in memory
flh f1, 1696(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, 1445 # sub immediate from rs1 to counter offset
li x3, 0x279c2878 # load x3 with value 0x279c2878
sw x3, -1445(x22) # store 0x279c2878 in memory
flh f21, -1445(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, -2012 # sub immediate from rs1 to counter offset
li x16, 0x734fcc50 # load x3 with value 0x734fcc50
sw x16, 2012(x23) # store 0x734fcc50 in memory
flh f12, 2012(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, 1500 # sub immediate from rs1 to counter offset
li x31, 0x952e4a34 # load x3 with value 0x952e4a34
sw x31, -1500(x24) # store 0x952e4a34 in memory
flh f9, -1500(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, -136 # sub immediate from rs1 to counter offset
li x26, 0xb6d20a56 # load x3 with value 0xb6d20a56
sw x26, 136(x25) # store 0xb6d20a56 in memory
flh f29, 136(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, 426 # sub immediate from rs1 to counter offset
li x22, 0x4001f50a # load x3 with value 0x4001f50a
sw x22, -426(x26) # store 0x4001f50a in memory
flh f8, -426(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, -1015 # sub immediate from rs1 to counter offset
li x9, 0xa78989f5 # load x3 with value 0xa78989f5
sw x9, 1015(x27) # store 0xa78989f5 in memory
flh f20, 1015(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, 1689 # sub immediate from rs1 to counter offset
li x19, 0x1b177ed8 # load x3 with value 0x1b177ed8
sw x19, -1689(x28) # store 0x1b177ed8 in memory
flh f13, -1689(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, -937 # sub immediate from rs1 to counter offset
li x17, 0x1aec32c6 # load x3 with value 0x1aec32c6
sw x17, 937(x29) # store 0x1aec32c6 in memory
flh f10, 937(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, 205 # sub immediate from rs1 to counter offset
li x14, 0x1cf337b9 # load x3 with value 0x1cf337b9
sw x14, -205(x30) # store 0x1cf337b9 in memory
flh f13, -205(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, 404 # sub immediate from rs1 to counter offset
li x1, 0xbf2caf37 # load x3 with value 0xbf2caf37
sw x1, -404(x31) # store 0xbf2caf37 in memory
flh f3, -404(x31) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
li x13, 0x221d136e # load x3 with value 0x221d136e
sw x13, 0(x9) # store 0x221d136e in memory
flh f24, 0(x9) # perform operation

# Testcase cp_imm_corners
la x29, scratch # base address 
addi x29, x29, -1 # sub immediate from rs1 to counter offset
li x9, 0x674f2273 # load x3 with value 0x674f2273
sw x9, 1(x29) # store 0x674f2273 in memory
flh f17, 1(x29) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -2 # sub immediate from rs1 to counter offset
li x23, 0x23067ec1 # load x3 with value 0x23067ec1
sw x23, 2(x3) # store 0x23067ec1 in memory
flh f10, 2(x3) # perform operation

# Testcase cp_imm_corners
la x24, scratch # base address 
addi x24, x24, -3 # sub immediate from rs1 to counter offset
li x20, 0xe26eb9d5 # load x3 with value 0xe26eb9d5
sw x20, 3(x24) # store 0xe26eb9d5 in memory
flh f28, 3(x24) # perform operation

# Testcase cp_imm_corners
la x12, scratch # base address 
addi x12, x12, -4 # sub immediate from rs1 to counter offset
li x18, 0xe5f08976 # load x3 with value 0xe5f08976
sw x18, 4(x12) # store 0xe5f08976 in memory
flh f7, 4(x12) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, -8 # sub immediate from rs1 to counter offset
li x14, 0x73fb92e5 # load x3 with value 0x73fb92e5
sw x14, 8(x20) # store 0x73fb92e5 in memory
flh f7, 8(x20) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -16 # sub immediate from rs1 to counter offset
li x1, 0x5b6e3aaf # load x3 with value 0x5b6e3aaf
sw x1, 16(x18) # store 0x5b6e3aaf in memory
flh f17, 16(x18) # perform operation

# Testcase cp_imm_corners
la x6, scratch # base address 
addi x6, x6, -32 # sub immediate from rs1 to counter offset
li x23, 0x7462a0c0 # load x3 with value 0x7462a0c0
sw x23, 32(x6) # store 0x7462a0c0 in memory
flh f27, 32(x6) # perform operation

# Testcase cp_imm_corners
la x23, scratch # base address 
addi x23, x23, -64 # sub immediate from rs1 to counter offset
li x9, 0x4b9587ea # load x3 with value 0x4b9587ea
sw x9, 64(x23) # store 0x4b9587ea in memory
flh f17, 64(x23) # perform operation

# Testcase cp_imm_corners
la x19, scratch # base address 
addi x19, x19, -128 # sub immediate from rs1 to counter offset
li x17, 0x0ed937f9 # load x3 with value 0x0ed937f9
sw x17, 128(x19) # store 0x0ed937f9 in memory
flh f18, 128(x19) # perform operation

# Testcase cp_imm_corners
la x21, scratch # base address 
addi x21, x21, -256 # sub immediate from rs1 to counter offset
li x29, 0x7777ddf1 # load x3 with value 0x7777ddf1
sw x29, 256(x21) # store 0x7777ddf1 in memory
flh f14, 256(x21) # perform operation

# Testcase cp_imm_corners
la x2, scratch # base address 
addi x2, x2, -512 # sub immediate from rs1 to counter offset
li x30, 0x92dc42a2 # load x3 with value 0x92dc42a2
sw x30, 512(x2) # store 0x92dc42a2 in memory
flh f18, 512(x2) # perform operation

# Testcase cp_imm_corners
la x26, scratch # base address 
addi x26, x26, -1023 # sub immediate from rs1 to counter offset
li x9, 0xc950a8cc # load x3 with value 0xc950a8cc
sw x9, 1023(x26) # store 0xc950a8cc in memory
flh f13, 1023(x26) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, -1024 # sub immediate from rs1 to counter offset
li x23, 0xdb313207 # load x3 with value 0xdb313207
sw x23, 1024(x28) # store 0xdb313207 in memory
flh f29, 1024(x28) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -1795 # sub immediate from rs1 to counter offset
li x28, 0x2ce53189 # load x3 with value 0x2ce53189
sw x28, 1795(x3) # store 0x2ce53189 in memory
flh f20, 1795(x3) # perform operation

# Testcase cp_imm_corners
la x23, scratch # base address 
addi x23, x23, -2047 # sub immediate from rs1 to counter offset
li x25, 0xb6a30134 # load x3 with value 0xb6a30134
sw x25, 2047(x23) # store 0xb6a30134 in memory
flh f18, 2047(x23) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, 2047 # increment rs1 by 2047 
addi x28, x28, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x9, 0x3219aadc # load x3 with value 0x3219aadc
sw x9, -2048(x28) # store 0x3219aadc in memory
flh f19, -2048(x28) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, 2047 # sub immediate from rs1 to counter offset
li x1, 0x4bc01fde # load x3 with value 0x4bc01fde
sw x1, -2047(x3) # store 0x4bc01fde in memory
flh f21, -2047(x3) # perform operation

# Testcase cp_imm_corners
la x7, scratch # base address 
addi x7, x7, 2 # sub immediate from rs1 to counter offset
li x16, 0x58686093 # load x3 with value 0x58686093
sw x16, -2(x7) # store 0x58686093 in memory
flh f22, -2(x7) # perform operation

# Testcase cp_imm_corners
la x31, scratch # base address 
addi x31, x31, 1 # sub immediate from rs1 to counter offset
li x21, 0xdaae753e # load x3 with value 0xdaae753e
sw x21, -1(x31) # store 0xdaae753e in memory
flh f29, -1(x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, scratch
addi x12, x12, -1333
add x20, x11, x7 # perform first operation
flh f3, 1333(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
addi x17, x17, 2039
add x13, x23, x26 # perform first operation
flh f19, -2039(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 1623
add x26, x13, x30 # perform first operation
flh f21, -1623(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
addi x13, x13, -1813
fmul.s f24, f2, f18 # perform first operation
flh f24, 1813(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x26, scratch
addi x26, x26, -1287
fmul.s f18, f13, f2 # perform first operation
flh f18, 1287(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x17, scratch
addi x17, x17, -1649
fmul.s f18, f26, f12 # perform first operation
flh f18, 1649(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x13, scratch
addi x13, x13, -279
fmul.s f2, f11, f28 # perform first operation
flh f11, 279(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x22, scratch
addi x22, x22, 1031
fmul.s f23, f12, f28 # perform first operation
flh f28, -1031(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x9, scratch
addi x9, x9, 1457
fmul.s f7, f17, f28 # perform first operation
flh f30, -1457(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
addi x6, x6, -840
add x12, x13, x18 # perform first operation
flh f26, 840(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
addi x6, x6, 734
add x5, x20, x16 # perform first operation
flh f18, -734(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 104
add x26, x20, x18 # perform first operation
flh f31, -104(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
addi x23, x23, 885
add x23, x23, x0 # perform first operation
flh f22, -885(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x8, scratch
addi x8, x8, 1302
add x8, x8, x0 # perform first operation
flh f24, -1302(x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
addi x30, x30, 891
add x30, x30, x0 # perform first operation
flh f21, -891(x30) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x20, scratch # base address 
addi x20, x20, 946 # sub immediate from rs1 to counter offset
li x25, 0x7078f7ab # load x3 with value 0x7078f7ab
sw x25, -946(x20) # store 0x7078f7ab in memory
flh f0, -946(x20) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x9, scratch # base address 
addi x9, x9, 566 # sub immediate from rs1 to counter offset
li x21, 0xe6256089 # load x3 with value 0xe6256089
sw x21, -566(x9) # store 0xe6256089 in memory
flh f1, -566(x9) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x3, scratch # base address 
addi x3, x3, 1217 # sub immediate from rs1 to counter offset
li x6, 0xe09e8ca9 # load x3 with value 0xe09e8ca9
sw x6, -1217(x3) # store 0xe09e8ca9 in memory
flh f2, -1217(x3) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x10, scratch # base address 
addi x10, x10, -1193 # sub immediate from rs1 to counter offset
li x21, 0x2660e6ab # load x3 with value 0x2660e6ab
sw x21, 1193(x10) # store 0x2660e6ab in memory
flh f3, 1193(x10) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x9, scratch # base address 
addi x9, x9, 1659 # sub immediate from rs1 to counter offset
li x26, 0x58b522fc # load x3 with value 0x58b522fc
sw x26, -1659(x9) # store 0x58b522fc in memory
flh f4, -1659(x9) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x10, scratch # base address 
addi x10, x10, -517 # sub immediate from rs1 to counter offset
li x14, 0x3d0c8e66 # load x3 with value 0x3d0c8e66
sw x14, 517(x10) # store 0x3d0c8e66 in memory
flh f5, 517(x10) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x13, scratch # base address 
addi x13, x13, -1430 # sub immediate from rs1 to counter offset
li x17, 0x80d2aac0 # load x3 with value 0x80d2aac0
sw x17, 1430(x13) # store 0x80d2aac0 in memory
flh f6, 1430(x13) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, -1007 # sub immediate from rs1 to counter offset
li x27, 0x5108a321 # load x3 with value 0x5108a321
sw x27, 1007(x5) # store 0x5108a321 in memory
flh f7, 1007(x5) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x25, scratch # base address 
addi x25, x25, 210 # sub immediate from rs1 to counter offset
li x5, 0x29a37144 # load x3 with value 0x29a37144
sw x5, -210(x25) # store 0x29a37144 in memory
flh f8, -210(x25) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x7, scratch # base address 
addi x7, x7, 550 # sub immediate from rs1 to counter offset
li x16, 0x43b5468d # load x3 with value 0x43b5468d
sw x16, -550(x7) # store 0x43b5468d in memory
flh f9, -550(x7) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x6, scratch # base address 
addi x6, x6, -1390 # sub immediate from rs1 to counter offset
li x9, 0x65ef909f # load x3 with value 0x65ef909f
sw x9, 1390(x6) # store 0x65ef909f in memory
flh f10, 1390(x6) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x16, scratch # base address 
addi x16, x16, 553 # sub immediate from rs1 to counter offset
li x1, 0x9a64c15f # load x3 with value 0x9a64c15f
sw x1, -553(x16) # store 0x9a64c15f in memory
flh f11, -553(x16) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x7, scratch # base address 
addi x7, x7, -1395 # sub immediate from rs1 to counter offset
li x11, 0xb369174e # load x3 with value 0xb369174e
sw x11, 1395(x7) # store 0xb369174e in memory
flh f12, 1395(x7) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x18, scratch # base address 
addi x18, x18, 335 # sub immediate from rs1 to counter offset
li x29, 0x7bed1723 # load x3 with value 0x7bed1723
sw x29, -335(x18) # store 0x7bed1723 in memory
flh f13, -335(x18) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x28, scratch # base address 
addi x28, x28, -1510 # sub immediate from rs1 to counter offset
li x16, 0x9d9ef3be # load x3 with value 0x9d9ef3be
sw x16, 1510(x28) # store 0x9d9ef3be in memory
flh f14, 1510(x28) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x10, scratch # base address 
addi x10, x10, -6 # sub immediate from rs1 to counter offset
li x14, 0xe519c305 # load x3 with value 0xe519c305
sw x14, 6(x10) # store 0xe519c305 in memory
flh f15, 6(x10) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x10, scratch # base address 
addi x10, x10, 593 # sub immediate from rs1 to counter offset
li x27, 0xf7141713 # load x3 with value 0xf7141713
sw x27, -593(x10) # store 0xf7141713 in memory
flh f16, -593(x10) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x7, scratch # base address 
addi x7, x7, 1236 # sub immediate from rs1 to counter offset
li x11, 0x4ae87e00 # load x3 with value 0x4ae87e00
sw x11, -1236(x7) # store 0x4ae87e00 in memory
flh f17, -1236(x7) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x3, scratch # base address 
addi x3, x3, -285 # sub immediate from rs1 to counter offset
li x25, 0x8d1d790d # load x3 with value 0x8d1d790d
sw x25, 285(x3) # store 0x8d1d790d in memory
flh f18, 285(x3) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x28, scratch # base address 
addi x28, x28, 1282 # sub immediate from rs1 to counter offset
li x11, 0x748f3a1f # load x3 with value 0x748f3a1f
sw x11, -1282(x28) # store 0x748f3a1f in memory
flh f19, -1282(x28) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x30, scratch # base address 
addi x30, x30, 534 # sub immediate from rs1 to counter offset
li x9, 0x28f97c84 # load x3 with value 0x28f97c84
sw x9, -534(x30) # store 0x28f97c84 in memory
flh f20, -534(x30) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x8, scratch # base address 
addi x8, x8, -1653 # sub immediate from rs1 to counter offset
li x24, 0xc596b34b # load x3 with value 0xc596b34b
sw x24, 1653(x8) # store 0xc596b34b in memory
flh f21, 1653(x8) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x15, scratch # base address 
addi x15, x15, 1318 # sub immediate from rs1 to counter offset
li x9, 0x73cfcf08 # load x3 with value 0x73cfcf08
sw x9, -1318(x15) # store 0x73cfcf08 in memory
flh f22, -1318(x15) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x8, scratch # base address 
addi x8, x8, 229 # sub immediate from rs1 to counter offset
li x6, 0x2a667207 # load x3 with value 0x2a667207
sw x6, -229(x8) # store 0x2a667207 in memory
flh f23, -229(x8) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x27, scratch # base address 
addi x27, x27, 1273 # sub immediate from rs1 to counter offset
li x17, 0x9ad2ec8e # load x3 with value 0x9ad2ec8e
sw x17, -1273(x27) # store 0x9ad2ec8e in memory
flh f24, -1273(x27) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x5, scratch # base address 
addi x5, x5, -1912 # sub immediate from rs1 to counter offset
li x31, 0xcff4564c # load x3 with value 0xcff4564c
sw x31, 1912(x5) # store 0xcff4564c in memory
flh f25, 1912(x5) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x8, scratch # base address 
addi x8, x8, 881 # sub immediate from rs1 to counter offset
li x2, 0x3b849fe5 # load x3 with value 0x3b849fe5
sw x2, -881(x8) # store 0x3b849fe5 in memory
flh f26, -881(x8) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x22, scratch # base address 
addi x22, x22, 94 # sub immediate from rs1 to counter offset
li x20, 0x5e3cf1e0 # load x3 with value 0x5e3cf1e0
sw x20, -94(x22) # store 0x5e3cf1e0 in memory
flh f27, -94(x22) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x8, scratch # base address 
addi x8, x8, 168 # sub immediate from rs1 to counter offset
li x11, 0x580e84a0 # load x3 with value 0x580e84a0
sw x11, -168(x8) # store 0x580e84a0 in memory
flh f28, -168(x8) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x30, scratch # base address 
addi x30, x30, 891 # sub immediate from rs1 to counter offset
li x17, 0x5af2cce6 # load x3 with value 0x5af2cce6
sw x17, -891(x30) # store 0x5af2cce6 in memory
flh f29, -891(x30) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x24, scratch # base address 
addi x24, x24, -1198 # sub immediate from rs1 to counter offset
li x15, 0x52aa13e1 # load x3 with value 0x52aa13e1
sw x15, 1198(x24) # store 0x52aa13e1 in memory
flh f30, 1198(x24) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x26, scratch # base address 
addi x26, x26, -269 # sub immediate from rs1 to counter offset
li x17, 0x63d757bf # load x3 with value 0x63d757bf
sw x17, 269(x26) # store 0x63d757bf in memory
flh f31, 269(x26) # perform operation

# Testcase Random test for cp_NaNBox 
la x31, scratch # base address 
addi x31, x31, 1349 # sub immediate from rs1 to counter offset
li x6, 0xe9a7bce9 # load x3 with value 0xe9a7bce9
sw x6, -1349(x31) # store 0xe9a7bce9 in memory
flh f23, -1349(x31) # perform operation

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
