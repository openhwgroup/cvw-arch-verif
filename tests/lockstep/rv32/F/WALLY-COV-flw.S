///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-flw.S
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
addi x1, x1, -1561 # sub immediate from rs1 to counter offset
li x9, 0x8533c4d1 # load x3 with value 0x8533c4d1
sw x9, 1561(x1) # store 0x8533c4d1 in memory
flw f5, 1561(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, -279 # sub immediate from rs1 to counter offset
li x27, 0x63b7e629 # load x3 with value 0x63b7e629
sw x27, 279(x2) # store 0x63b7e629 in memory
flw f12, 279(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, 374 # sub immediate from rs1 to counter offset
li x10, 0x0b257679 # load x3 with value 0x0b257679
sw x10, -374(x3) # store 0x0b257679 in memory
flw f19, -374(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, -1256 # sub immediate from rs1 to counter offset
li x2, 0xd02b40ef # load x3 with value 0xd02b40ef
sw x2, 1256(x4) # store 0xd02b40ef in memory
flw f31, 1256(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, 1697 # sub immediate from rs1 to counter offset
li x28, 0x093a366c # load x3 with value 0x093a366c
sw x28, -1697(x5) # store 0x093a366c in memory
flw f8, -1697(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
la x6, scratch # base address 
addi x6, x6, -1027 # sub immediate from rs1 to counter offset
li x8, 0x0ccb2bd0 # load x3 with value 0x0ccb2bd0
sw x8, 1027(x6) # store 0x0ccb2bd0 in memory
flw f11, 1027(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, -1658 # sub immediate from rs1 to counter offset
li x24, 0x00952b57 # load x3 with value 0x00952b57
sw x24, 1658(x7) # store 0x00952b57 in memory
flw f2, 1658(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, -353 # sub immediate from rs1 to counter offset
li x20, 0xf0f32c2d # load x3 with value 0xf0f32c2d
sw x20, 353(x8) # store 0xf0f32c2d in memory
flw f16, 353(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, -1166 # sub immediate from rs1 to counter offset
li x20, 0x4cf11460 # load x3 with value 0x4cf11460
sw x20, 1166(x9) # store 0x4cf11460 in memory
flw f22, 1166(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, -1332 # sub immediate from rs1 to counter offset
li x7, 0x8cda0f88 # load x3 with value 0x8cda0f88
sw x7, 1332(x10) # store 0x8cda0f88 in memory
flw f27, 1332(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, -276 # sub immediate from rs1 to counter offset
li x14, 0x0a0ba4bc # load x3 with value 0x0a0ba4bc
sw x14, 276(x11) # store 0x0a0ba4bc in memory
flw f22, 276(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, -1522 # sub immediate from rs1 to counter offset
li x1, 0xf957b7aa # load x3 with value 0xf957b7aa
sw x1, 1522(x12) # store 0xf957b7aa in memory
flw f6, 1522(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, -2044 # sub immediate from rs1 to counter offset
li x8, 0xc73f64a6 # load x3 with value 0xc73f64a6
sw x8, 2044(x13) # store 0xc73f64a6 in memory
flw f23, 2044(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, -1371 # sub immediate from rs1 to counter offset
li x8, 0xade13f7b # load x3 with value 0xade13f7b
sw x8, 1371(x14) # store 0xade13f7b in memory
flw f24, 1371(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, 922 # sub immediate from rs1 to counter offset
li x28, 0x385e12bd # load x3 with value 0x385e12bd
sw x28, -922(x15) # store 0x385e12bd in memory
flw f19, -922(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, -1930 # sub immediate from rs1 to counter offset
li x20, 0xdf013ecd # load x3 with value 0xdf013ecd
sw x20, 1930(x16) # store 0xdf013ecd in memory
flw f29, 1930(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, 1732 # sub immediate from rs1 to counter offset
li x13, 0x93b02e45 # load x3 with value 0x93b02e45
sw x13, -1732(x17) # store 0x93b02e45 in memory
flw f27, -1732(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, -287 # sub immediate from rs1 to counter offset
li x7, 0x709757cb # load x3 with value 0x709757cb
sw x7, 287(x18) # store 0x709757cb in memory
flw f11, 287(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, 1740 # sub immediate from rs1 to counter offset
li x13, 0x0803b423 # load x3 with value 0x0803b423
sw x13, -1740(x19) # store 0x0803b423 in memory
flw f25, -1740(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, 1397 # sub immediate from rs1 to counter offset
li x13, 0x2ae5ac41 # load x3 with value 0x2ae5ac41
sw x13, -1397(x20) # store 0x2ae5ac41 in memory
flw f1, -1397(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -1624 # sub immediate from rs1 to counter offset
li x20, 0x0529e995 # load x3 with value 0x0529e995
sw x20, 1624(x21) # store 0x0529e995 in memory
flw f14, 1624(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, 1258 # sub immediate from rs1 to counter offset
li x26, 0x976d4d69 # load x3 with value 0x976d4d69
sw x26, -1258(x22) # store 0x976d4d69 in memory
flw f17, -1258(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, 346 # sub immediate from rs1 to counter offset
li x27, 0x38868731 # load x3 with value 0x38868731
sw x27, -346(x23) # store 0x38868731 in memory
flw f26, -346(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, -51 # sub immediate from rs1 to counter offset
li x16, 0x2ccfec2e # load x3 with value 0x2ccfec2e
sw x16, 51(x24) # store 0x2ccfec2e in memory
flw f2, 51(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, -378 # sub immediate from rs1 to counter offset
li x26, 0x004a9b73 # load x3 with value 0x004a9b73
sw x26, 378(x25) # store 0x004a9b73 in memory
flw f11, 378(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, -1580 # sub immediate from rs1 to counter offset
li x11, 0xf8d9d649 # load x3 with value 0xf8d9d649
sw x11, 1580(x26) # store 0xf8d9d649 in memory
flw f20, 1580(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, 976 # sub immediate from rs1 to counter offset
li x16, 0xa28ac6f3 # load x3 with value 0xa28ac6f3
sw x16, -976(x27) # store 0xa28ac6f3 in memory
flw f7, -976(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, 1017 # sub immediate from rs1 to counter offset
li x21, 0xb59a3afa # load x3 with value 0xb59a3afa
sw x21, -1017(x28) # store 0xb59a3afa in memory
flw f13, -1017(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, 371 # sub immediate from rs1 to counter offset
li x10, 0xb1db3e7e # load x3 with value 0xb1db3e7e
sw x10, -371(x29) # store 0xb1db3e7e in memory
flw f11, -371(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, -1620 # sub immediate from rs1 to counter offset
li x15, 0xe867519e # load x3 with value 0xe867519e
sw x15, 1620(x30) # store 0xe867519e in memory
flw f1, 1620(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, -174 # sub immediate from rs1 to counter offset
li x23, 0x70176168 # load x3 with value 0x70176168
sw x23, 174(x31) # store 0x70176168 in memory
flw f25, 174(x31) # perform operation

# Testcase cp_imm_corners
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
li x12, 0x2cb92194 # load x3 with value 0x2cb92194
sw x12, 0(x7) # store 0x2cb92194 in memory
flw f24, 0(x7) # perform operation

# Testcase cp_imm_corners
la x26, scratch # base address 
addi x26, x26, -1 # sub immediate from rs1 to counter offset
li x21, 0x703cb57c # load x3 with value 0x703cb57c
sw x21, 1(x26) # store 0x703cb57c in memory
flw f13, 1(x26) # perform operation

# Testcase cp_imm_corners
la x1, scratch # base address 
addi x1, x1, -2 # sub immediate from rs1 to counter offset
li x8, 0x49c89933 # load x3 with value 0x49c89933
sw x8, 2(x1) # store 0x49c89933 in memory
flw f3, 2(x1) # perform operation

# Testcase cp_imm_corners
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
li x9, 0x16ae0611 # load x3 with value 0x16ae0611
sw x9, 3(x12) # store 0x16ae0611 in memory
flw f19, 3(x12) # perform operation

# Testcase cp_imm_corners
la x16, scratch # base address 
addi x16, x16, -4 # sub immediate from rs1 to counter offset
li x11, 0x73988c9a # load x3 with value 0x73988c9a
sw x11, 4(x16) # store 0x73988c9a in memory
flw f17, 4(x16) # perform operation

# Testcase cp_imm_corners
la x22, scratch # base address 
addi x22, x22, -8 # sub immediate from rs1 to counter offset
li x8, 0x6042a33e # load x3 with value 0x6042a33e
sw x8, 8(x22) # store 0x6042a33e in memory
flw f27, 8(x22) # perform operation

# Testcase cp_imm_corners
la x15, scratch # base address 
addi x15, x15, -16 # sub immediate from rs1 to counter offset
li x23, 0x28684403 # load x3 with value 0x28684403
sw x23, 16(x15) # store 0x28684403 in memory
flw f16, 16(x15) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, -32 # sub immediate from rs1 to counter offset
li x18, 0x3ed4edff # load x3 with value 0x3ed4edff
sw x18, 32(x20) # store 0x3ed4edff in memory
flw f11, 32(x20) # perform operation

# Testcase cp_imm_corners
la x21, scratch # base address 
addi x21, x21, -64 # sub immediate from rs1 to counter offset
li x19, 0x632a1d7d # load x3 with value 0x632a1d7d
sw x19, 64(x21) # store 0x632a1d7d in memory
flw f26, 64(x21) # perform operation

# Testcase cp_imm_corners
la x15, scratch # base address 
addi x15, x15, -128 # sub immediate from rs1 to counter offset
li x20, 0x0fdd74b9 # load x3 with value 0x0fdd74b9
sw x20, 128(x15) # store 0x0fdd74b9 in memory
flw f31, 128(x15) # perform operation

# Testcase cp_imm_corners
la x25, scratch # base address 
addi x25, x25, -256 # sub immediate from rs1 to counter offset
li x3, 0x80f2f659 # load x3 with value 0x80f2f659
sw x3, 256(x25) # store 0x80f2f659 in memory
flw f27, 256(x25) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -512 # sub immediate from rs1 to counter offset
li x10, 0xb1e06089 # load x3 with value 0xb1e06089
sw x10, 512(x18) # store 0xb1e06089 in memory
flw f26, 512(x18) # perform operation

# Testcase cp_imm_corners
la x8, scratch # base address 
addi x8, x8, -1023 # sub immediate from rs1 to counter offset
li x14, 0x1e355b13 # load x3 with value 0x1e355b13
sw x14, 1023(x8) # store 0x1e355b13 in memory
flw f17, 1023(x8) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, -1024 # sub immediate from rs1 to counter offset
li x8, 0x802154f6 # load x3 with value 0x802154f6
sw x8, 1024(x9) # store 0x802154f6 in memory
flw f24, 1024(x9) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, -1795 # sub immediate from rs1 to counter offset
li x8, 0x07f88643 # load x3 with value 0x07f88643
sw x8, 1795(x20) # store 0x07f88643 in memory
flw f16, 1795(x20) # perform operation

# Testcase cp_imm_corners
la x8, scratch # base address 
addi x8, x8, -2047 # sub immediate from rs1 to counter offset
li x26, 0xfafc3950 # load x3 with value 0xfafc3950
sw x26, 2047(x8) # store 0xfafc3950 in memory
flw f13, 2047(x8) # perform operation

# Testcase cp_imm_corners
la x25, scratch # base address 
addi x25, x25, 2047 # increment rs1 by 2047 
addi x25, x25, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x18, 0x2eca3956 # load x3 with value 0x2eca3956
sw x18, -2048(x25) # store 0x2eca3956 in memory
flw f13, -2048(x25) # perform operation

# Testcase cp_imm_corners
la x10, scratch # base address 
addi x10, x10, 2047 # sub immediate from rs1 to counter offset
li x5, 0xc2ff8045 # load x3 with value 0xc2ff8045
sw x5, -2047(x10) # store 0xc2ff8045 in memory
flw f30, -2047(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch # base address 
addi x2, x2, 2 # sub immediate from rs1 to counter offset
li x24, 0x33a94eb0 # load x3 with value 0x33a94eb0
sw x24, -2(x2) # store 0x33a94eb0 in memory
flw f1, -2(x2) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, 1 # sub immediate from rs1 to counter offset
li x2, 0xc419dee7 # load x3 with value 0xc419dee7
sw x2, -1(x28) # store 0xc419dee7 in memory
flw f26, -1(x28) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
addi x1, x1, 231
add x16, x7, x25 # perform first operation
flw f26, -231(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
addi x19, x19, -87
add x11, x26, x14 # perform first operation
flw f17, 87(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -323
add x29, x18, x1 # perform first operation
flw f14, 323(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x22, scratch
addi x22, x22, 563
fmul.s f29, f28, f27 # perform first operation
flw f29, -563(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x31, scratch
addi x31, x31, -1737
fmul.s f17, f30, f25 # perform first operation
flw f17, 1737(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x31, scratch
addi x31, x31, 1803
fmul.s f25, f12, f17 # perform first operation
flw f25, -1803(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
addi x5, x5, 1562
fmul.s f20, f3, f10 # perform first operation
flw f3, -1562(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x26, scratch
addi x26, x26, -799
fmul.s f18, f10, f8 # perform first operation
flw f8, 799(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x30, scratch
addi x30, x30, -717
fmul.s f23, f15, f11 # perform first operation
flw f27, 717(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 726
add x9, x16, x2 # perform first operation
flw f27, -726(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
addi x19, x19, 124
add x14, x22, x5 # perform first operation
flw f21, -124(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, -902
add x5, x18, x12 # perform first operation
flw f22, 902(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
addi x9, x9, -1875
add x9, x9, x0 # perform first operation
flw f31, 1875(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
addi x31, x31, -319
add x31, x31, x0 # perform first operation
flw f14, 319(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
addi x16, x16, -988
add x16, x16, x0 # perform first operation
flw f19, 988(x16) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x26, scratch # base address 
addi x26, x26, 1458 # sub immediate from rs1 to counter offset
li x12, 0xd31f60a1 # load x3 with value 0xd31f60a1
sw x12, -1458(x26) # store 0xd31f60a1 in memory
flw f0, -1458(x26) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x5, scratch # base address 
addi x5, x5, 312 # sub immediate from rs1 to counter offset
li x21, 0x6e67984c # load x3 with value 0x6e67984c
sw x21, -312(x5) # store 0x6e67984c in memory
flw f1, -312(x5) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x21, scratch # base address 
addi x21, x21, 1782 # sub immediate from rs1 to counter offset
li x10, 0x8597222f # load x3 with value 0x8597222f
sw x10, -1782(x21) # store 0x8597222f in memory
flw f2, -1782(x21) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x25, scratch # base address 
addi x25, x25, -821 # sub immediate from rs1 to counter offset
li x23, 0x2f5a7886 # load x3 with value 0x2f5a7886
sw x23, 821(x25) # store 0x2f5a7886 in memory
flw f3, 821(x25) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x10, scratch # base address 
addi x10, x10, -476 # sub immediate from rs1 to counter offset
li x12, 0x30dfa6d7 # load x3 with value 0x30dfa6d7
sw x12, 476(x10) # store 0x30dfa6d7 in memory
flw f4, 476(x10) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x11, scratch # base address 
addi x11, x11, -1103 # sub immediate from rs1 to counter offset
li x1, 0x7d3105f4 # load x3 with value 0x7d3105f4
sw x1, 1103(x11) # store 0x7d3105f4 in memory
flw f5, 1103(x11) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x24, scratch # base address 
addi x24, x24, 506 # sub immediate from rs1 to counter offset
li x17, 0x860ae693 # load x3 with value 0x860ae693
sw x17, -506(x24) # store 0x860ae693 in memory
flw f6, -506(x24) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x16, scratch # base address 
addi x16, x16, -1550 # sub immediate from rs1 to counter offset
li x23, 0x933b98a7 # load x3 with value 0x933b98a7
sw x23, 1550(x16) # store 0x933b98a7 in memory
flw f7, 1550(x16) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x13, scratch # base address 
addi x13, x13, -1416 # sub immediate from rs1 to counter offset
li x21, 0x8d3f3357 # load x3 with value 0x8d3f3357
sw x21, 1416(x13) # store 0x8d3f3357 in memory
flw f8, 1416(x13) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x28, scratch # base address 
addi x28, x28, -2038 # sub immediate from rs1 to counter offset
li x3, 0xfc84bec4 # load x3 with value 0xfc84bec4
sw x3, 2038(x28) # store 0xfc84bec4 in memory
flw f9, 2038(x28) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x6, scratch # base address 
addi x6, x6, 937 # sub immediate from rs1 to counter offset
li x31, 0xef3359e3 # load x3 with value 0xef3359e3
sw x31, -937(x6) # store 0xef3359e3 in memory
flw f10, -937(x6) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x6, scratch # base address 
addi x6, x6, -824 # sub immediate from rs1 to counter offset
li x7, 0x84b22a1b # load x3 with value 0x84b22a1b
sw x7, 824(x6) # store 0x84b22a1b in memory
flw f11, 824(x6) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x13, scratch # base address 
addi x13, x13, 1931 # sub immediate from rs1 to counter offset
li x20, 0xc4d5ea7e # load x3 with value 0xc4d5ea7e
sw x20, -1931(x13) # store 0xc4d5ea7e in memory
flw f12, -1931(x13) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x27, scratch # base address 
addi x27, x27, 658 # sub immediate from rs1 to counter offset
li x28, 0x98894d06 # load x3 with value 0x98894d06
sw x28, -658(x27) # store 0x98894d06 in memory
flw f13, -658(x27) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x12, scratch # base address 
addi x12, x12, 92 # sub immediate from rs1 to counter offset
li x26, 0xe1892b17 # load x3 with value 0xe1892b17
sw x26, -92(x12) # store 0xe1892b17 in memory
flw f14, -92(x12) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x24, scratch # base address 
addi x24, x24, -202 # sub immediate from rs1 to counter offset
li x26, 0x01a6d53e # load x3 with value 0x01a6d53e
sw x26, 202(x24) # store 0x01a6d53e in memory
flw f15, 202(x24) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x19, scratch # base address 
addi x19, x19, 590 # sub immediate from rs1 to counter offset
li x15, 0x309ed8d8 # load x3 with value 0x309ed8d8
sw x15, -590(x19) # store 0x309ed8d8 in memory
flw f16, -590(x19) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x21, scratch # base address 
addi x21, x21, -1000 # sub immediate from rs1 to counter offset
li x30, 0xbfba7357 # load x3 with value 0xbfba7357
sw x30, 1000(x21) # store 0xbfba7357 in memory
flw f17, 1000(x21) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x20, scratch # base address 
addi x20, x20, -712 # sub immediate from rs1 to counter offset
li x10, 0xf799974c # load x3 with value 0xf799974c
sw x10, 712(x20) # store 0xf799974c in memory
flw f18, 712(x20) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x5, scratch # base address 
addi x5, x5, -456 # sub immediate from rs1 to counter offset
li x29, 0xf2dd21f0 # load x3 with value 0xf2dd21f0
sw x29, 456(x5) # store 0xf2dd21f0 in memory
flw f19, 456(x5) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x29, scratch # base address 
addi x29, x29, -138 # sub immediate from rs1 to counter offset
li x17, 0xf62a32bb # load x3 with value 0xf62a32bb
sw x17, 138(x29) # store 0xf62a32bb in memory
flw f20, 138(x29) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x13, scratch # base address 
addi x13, x13, 1461 # sub immediate from rs1 to counter offset
li x18, 0x7c664ee1 # load x3 with value 0x7c664ee1
sw x18, -1461(x13) # store 0x7c664ee1 in memory
flw f21, -1461(x13) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x28, scratch # base address 
addi x28, x28, 768 # sub immediate from rs1 to counter offset
li x30, 0x7147fa30 # load x3 with value 0x7147fa30
sw x30, -768(x28) # store 0x7147fa30 in memory
flw f22, -768(x28) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x20, scratch # base address 
addi x20, x20, -521 # sub immediate from rs1 to counter offset
li x7, 0x33851759 # load x3 with value 0x33851759
sw x7, 521(x20) # store 0x33851759 in memory
flw f23, 521(x20) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x27, scratch # base address 
addi x27, x27, -521 # sub immediate from rs1 to counter offset
li x6, 0x14f39f74 # load x3 with value 0x14f39f74
sw x6, 521(x27) # store 0x14f39f74 in memory
flw f24, 521(x27) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x11, scratch # base address 
addi x11, x11, -911 # sub immediate from rs1 to counter offset
li x29, 0xf355d070 # load x3 with value 0xf355d070
sw x29, 911(x11) # store 0xf355d070 in memory
flw f25, 911(x11) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x25, scratch # base address 
addi x25, x25, 1683 # sub immediate from rs1 to counter offset
li x2, 0x8fa5d018 # load x3 with value 0x8fa5d018
sw x2, -1683(x25) # store 0x8fa5d018 in memory
flw f26, -1683(x25) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x24, scratch # base address 
addi x24, x24, 1933 # sub immediate from rs1 to counter offset
li x7, 0x750e7b26 # load x3 with value 0x750e7b26
sw x7, -1933(x24) # store 0x750e7b26 in memory
flw f27, -1933(x24) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x29, scratch # base address 
addi x29, x29, 1455 # sub immediate from rs1 to counter offset
li x15, 0xbcaf313d # load x3 with value 0xbcaf313d
sw x15, -1455(x29) # store 0xbcaf313d in memory
flw f28, -1455(x29) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x18, scratch # base address 
addi x18, x18, -616 # sub immediate from rs1 to counter offset
li x8, 0xb2941d0f # load x3 with value 0xb2941d0f
sw x8, 616(x18) # store 0xb2941d0f in memory
flw f29, 616(x18) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x22, scratch # base address 
addi x22, x22, 1038 # sub immediate from rs1 to counter offset
li x20, 0x95337605 # load x3 with value 0x95337605
sw x20, -1038(x22) # store 0x95337605 in memory
flw f30, -1038(x22) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x19, scratch # base address 
addi x19, x19, -39 # sub immediate from rs1 to counter offset
li x15, 0x0ebdc164 # load x3 with value 0x0ebdc164
sw x15, 39(x19) # store 0x0ebdc164 in memory
flw f31, 39(x19) # perform operation

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
