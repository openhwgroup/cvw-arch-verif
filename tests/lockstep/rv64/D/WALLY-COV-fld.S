///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fld.S
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
addi x1, x1, -1846 # sub immediate from rs1 to counter offset
li x28, 0x1af5c21ab435cafd # load x3 with value 0x1af5c21ab435cafd
sd x28, 1846(x1) # store 0x1af5c21ab435cafd in memory
fld f7, 1846(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, -589 # sub immediate from rs1 to counter offset
li x30, 0x08bb59cb29a511a9 # load x3 with value 0x08bb59cb29a511a9
sd x30, 589(x2) # store 0x08bb59cb29a511a9 in memory
fld f8, 589(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, -1270 # sub immediate from rs1 to counter offset
li x24, 0x4523c5a3caa3c8f4 # load x3 with value 0x4523c5a3caa3c8f4
sd x24, 1270(x3) # store 0x4523c5a3caa3c8f4 in memory
fld f7, 1270(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, -648 # sub immediate from rs1 to counter offset
li x20, 0x04d9d721ea8ca3bf # load x3 with value 0x04d9d721ea8ca3bf
sd x20, 648(x4) # store 0x04d9d721ea8ca3bf in memory
fld f2, 648(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, 111 # sub immediate from rs1 to counter offset
li x30, 0x75d5d8abb2308b19 # load x3 with value 0x75d5d8abb2308b19
sd x30, -111(x5) # store 0x75d5d8abb2308b19 in memory
fld f26, -111(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # base address 
addi x6, x6, -482 # sub immediate from rs1 to counter offset
li x10, 0x4617608a4d06f7c9 # load x3 with value 0x4617608a4d06f7c9
sd x10, 482(x6) # store 0x4617608a4d06f7c9 in memory
fld f24, 482(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, -361 # sub immediate from rs1 to counter offset
li x28, 0xfc5a087e9e231832 # load x3 with value 0xfc5a087e9e231832
sd x28, 361(x7) # store 0xfc5a087e9e231832 in memory
fld f5, 361(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, 1069 # sub immediate from rs1 to counter offset
li x25, 0xc0512b43379c64e3 # load x3 with value 0xc0512b43379c64e3
sd x25, -1069(x8) # store 0xc0512b43379c64e3 in memory
fld f21, -1069(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, 935 # sub immediate from rs1 to counter offset
li x15, 0x3fdbc9433c67b16d # load x3 with value 0x3fdbc9433c67b16d
sd x15, -935(x9) # store 0x3fdbc9433c67b16d in memory
fld f8, -935(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, 1070 # sub immediate from rs1 to counter offset
li x17, 0xffac0f688cdbbf76 # load x3 with value 0xffac0f688cdbbf76
sd x17, -1070(x10) # store 0xffac0f688cdbbf76 in memory
fld f28, -1070(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, 618 # sub immediate from rs1 to counter offset
li x12, 0xbb43f85a1a477519 # load x3 with value 0xbb43f85a1a477519
sd x12, -618(x11) # store 0xbb43f85a1a477519 in memory
fld f12, -618(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, -429 # sub immediate from rs1 to counter offset
li x14, 0xca27bbe1da0e6b8b # load x3 with value 0xca27bbe1da0e6b8b
sd x14, 429(x12) # store 0xca27bbe1da0e6b8b in memory
fld f14, 429(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, -1438 # sub immediate from rs1 to counter offset
li x19, 0x4e4e37ea08cc73c7 # load x3 with value 0x4e4e37ea08cc73c7
sd x19, 1438(x13) # store 0x4e4e37ea08cc73c7 in memory
fld f27, 1438(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, -1474 # sub immediate from rs1 to counter offset
li x31, 0xa34ae60547e8d467 # load x3 with value 0xa34ae60547e8d467
sd x31, 1474(x14) # store 0xa34ae60547e8d467 in memory
fld f21, 1474(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, 57 # sub immediate from rs1 to counter offset
li x9, 0xe50043a26bf3b007 # load x3 with value 0xe50043a26bf3b007
sd x9, -57(x15) # store 0xe50043a26bf3b007 in memory
fld f20, -57(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, -1847 # sub immediate from rs1 to counter offset
li x3, 0xd4892e33418bb77c # load x3 with value 0xd4892e33418bb77c
sd x3, 1847(x16) # store 0xd4892e33418bb77c in memory
fld f31, 1847(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, 1685 # sub immediate from rs1 to counter offset
li x19, 0xf367e81e7b7303b8 # load x3 with value 0xf367e81e7b7303b8
sd x19, -1685(x17) # store 0xf367e81e7b7303b8 in memory
fld f9, -1685(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, 496 # sub immediate from rs1 to counter offset
li x28, 0x4991b95bf0bfc33b # load x3 with value 0x4991b95bf0bfc33b
sd x28, -496(x18) # store 0x4991b95bf0bfc33b in memory
fld f16, -496(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, 916 # sub immediate from rs1 to counter offset
li x17, 0x7ec7eb05b31843f9 # load x3 with value 0x7ec7eb05b31843f9
sd x17, -916(x19) # store 0x7ec7eb05b31843f9 in memory
fld f16, -916(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, 64 # sub immediate from rs1 to counter offset
li x29, 0x8943bc7023f73751 # load x3 with value 0x8943bc7023f73751
sd x29, -64(x20) # store 0x8943bc7023f73751 in memory
fld f15, -64(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -1369 # sub immediate from rs1 to counter offset
li x23, 0x014eefd9fe7a793b # load x3 with value 0x014eefd9fe7a793b
sd x23, 1369(x21) # store 0x014eefd9fe7a793b in memory
fld f7, 1369(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, -551 # sub immediate from rs1 to counter offset
li x17, 0xe2b9609ab1443ddf # load x3 with value 0xe2b9609ab1443ddf
sd x17, 551(x22) # store 0xe2b9609ab1443ddf in memory
fld f7, 551(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, 1283 # sub immediate from rs1 to counter offset
li x12, 0x511dbbeb57552061 # load x3 with value 0x511dbbeb57552061
sd x12, -1283(x23) # store 0x511dbbeb57552061 in memory
fld f17, -1283(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, 78 # sub immediate from rs1 to counter offset
li x15, 0x22b7508f528998e4 # load x3 with value 0x22b7508f528998e4
sd x15, -78(x24) # store 0x22b7508f528998e4 in memory
fld f30, -78(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, 1465 # sub immediate from rs1 to counter offset
li x31, 0x2bdefe0f45e421f5 # load x3 with value 0x2bdefe0f45e421f5
sd x31, -1465(x25) # store 0x2bdefe0f45e421f5 in memory
fld f24, -1465(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, -279 # sub immediate from rs1 to counter offset
li x21, 0x5ea1316c7af825e0 # load x3 with value 0x5ea1316c7af825e0
sd x21, 279(x26) # store 0x5ea1316c7af825e0 in memory
fld f8, 279(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, 1474 # sub immediate from rs1 to counter offset
li x11, 0xc39fd8a0582e0989 # load x3 with value 0xc39fd8a0582e0989
sd x11, -1474(x27) # store 0xc39fd8a0582e0989 in memory
fld f28, -1474(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, 494 # sub immediate from rs1 to counter offset
li x5, 0xc7056f47f85ac0c7 # load x3 with value 0xc7056f47f85ac0c7
sd x5, -494(x28) # store 0xc7056f47f85ac0c7 in memory
fld f24, -494(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, 1485 # sub immediate from rs1 to counter offset
li x8, 0x3ad2925801a26746 # load x3 with value 0x3ad2925801a26746
sd x8, -1485(x29) # store 0x3ad2925801a26746 in memory
fld f19, -1485(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, -524 # sub immediate from rs1 to counter offset
li x5, 0x05f8aaeef355f7ee # load x3 with value 0x05f8aaeef355f7ee
sd x5, 524(x30) # store 0x05f8aaeef355f7ee in memory
fld f10, 524(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, -1347 # sub immediate from rs1 to counter offset
li x28, 0x852151c033bff724 # load x3 with value 0x852151c033bff724
sd x28, 1347(x31) # store 0x852151c033bff724 in memory
fld f6, 1347(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch # base address 
addi x2, x2, 0 # sub immediate from rs1 to counter offset
li x26, 0xc8dd148e0f8fc457 # load x3 with value 0xc8dd148e0f8fc457
sd x26, 0(x2) # store 0xc8dd148e0f8fc457 in memory
fld f23, 0(x2) # perform operation

# Testcase cp_imm_corners
la x17, scratch # base address 
addi x17, x17, -1 # sub immediate from rs1 to counter offset
li x8, 0xb20abd0e7325900e # load x3 with value 0xb20abd0e7325900e
sd x8, 1(x17) # store 0xb20abd0e7325900e in memory
fld f13, 1(x17) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, -2 # sub immediate from rs1 to counter offset
li x14, 0x11740eade5d713a5 # load x3 with value 0x11740eade5d713a5
sd x14, 2(x20) # store 0x11740eade5d713a5 in memory
fld f25, 2(x20) # perform operation

# Testcase cp_imm_corners
la x8, scratch # base address 
addi x8, x8, -3 # sub immediate from rs1 to counter offset
li x9, 0x3118d967d137e749 # load x3 with value 0x3118d967d137e749
sd x9, 3(x8) # store 0x3118d967d137e749 in memory
fld f29, 3(x8) # perform operation

# Testcase cp_imm_corners
la x22, scratch # base address 
addi x22, x22, -4 # sub immediate from rs1 to counter offset
li x23, 0x937a4feeb9d79a1d # load x3 with value 0x937a4feeb9d79a1d
sd x23, 4(x22) # store 0x937a4feeb9d79a1d in memory
fld f24, 4(x22) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, -8 # sub immediate from rs1 to counter offset
li x20, 0xb194c372010e3ff7 # load x3 with value 0xb194c372010e3ff7
sd x20, 8(x9) # store 0xb194c372010e3ff7 in memory
fld f23, 8(x9) # perform operation

# Testcase cp_imm_corners
la x5, scratch # base address 
addi x5, x5, -16 # sub immediate from rs1 to counter offset
li x31, 0x77502cfe734e8672 # load x3 with value 0x77502cfe734e8672
sd x31, 16(x5) # store 0x77502cfe734e8672 in memory
fld f19, 16(x5) # perform operation

# Testcase cp_imm_corners
la x24, scratch # base address 
addi x24, x24, -32 # sub immediate from rs1 to counter offset
li x15, 0x987f2ba9731d2768 # load x3 with value 0x987f2ba9731d2768
sd x15, 32(x24) # store 0x987f2ba9731d2768 in memory
fld f7, 32(x24) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, -64 # sub immediate from rs1 to counter offset
li x7, 0x782e6b7c68178586 # load x3 with value 0x782e6b7c68178586
sd x7, 64(x28) # store 0x782e6b7c68178586 in memory
fld f16, 64(x28) # perform operation

# Testcase cp_imm_corners
la x7, scratch # base address 
addi x7, x7, -128 # sub immediate from rs1 to counter offset
li x10, 0xed2c9fc36ebf3ba6 # load x3 with value 0xed2c9fc36ebf3ba6
sd x10, 128(x7) # store 0xed2c9fc36ebf3ba6 in memory
fld f24, 128(x7) # perform operation

# Testcase cp_imm_corners
la x19, scratch # base address 
addi x19, x19, -256 # sub immediate from rs1 to counter offset
li x23, 0x7282a80ff78a9774 # load x3 with value 0x7282a80ff78a9774
sd x23, 256(x19) # store 0x7282a80ff78a9774 in memory
fld f2, 256(x19) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, -512 # sub immediate from rs1 to counter offset
li x27, 0x294525d7564ebf50 # load x3 with value 0x294525d7564ebf50
sd x27, 512(x9) # store 0x294525d7564ebf50 in memory
fld f2, 512(x9) # perform operation

# Testcase cp_imm_corners
la x24, scratch # base address 
addi x24, x24, -1023 # sub immediate from rs1 to counter offset
li x6, 0xe830fc026f66a74c # load x3 with value 0xe830fc026f66a74c
sd x6, 1023(x24) # store 0xe830fc026f66a74c in memory
fld f23, 1023(x24) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -1024 # sub immediate from rs1 to counter offset
li x9, 0xbfa7203d7b17ce63 # load x3 with value 0xbfa7203d7b17ce63
sd x9, 1024(x3) # store 0xbfa7203d7b17ce63 in memory
fld f26, 1024(x3) # perform operation

# Testcase cp_imm_corners
la x13, scratch # base address 
addi x13, x13, -1795 # sub immediate from rs1 to counter offset
li x10, 0x4b020da71132e8bf # load x3 with value 0x4b020da71132e8bf
sd x10, 1795(x13) # store 0x4b020da71132e8bf in memory
fld f25, 1795(x13) # perform operation

# Testcase cp_imm_corners
la x14, scratch # base address 
addi x14, x14, -2047 # sub immediate from rs1 to counter offset
li x24, 0x3e441d4d543d0e5f # load x3 with value 0x3e441d4d543d0e5f
sd x24, 2047(x14) # store 0x3e441d4d543d0e5f in memory
fld f24, 2047(x14) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, 2047 # increment rs1 by 2047 
addi x9, x9, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x31, 0x0c7a639ca74096d5 # load x3 with value 0x0c7a639ca74096d5
sd x31, -2048(x9) # store 0x0c7a639ca74096d5 in memory
fld f20, -2048(x9) # perform operation

# Testcase cp_imm_corners
la x21, scratch # base address 
addi x21, x21, 2047 # sub immediate from rs1 to counter offset
li x11, 0x17a177972be7418e # load x3 with value 0x17a177972be7418e
sd x11, -2047(x21) # store 0x17a177972be7418e in memory
fld f24, -2047(x21) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, 2 # sub immediate from rs1 to counter offset
li x10, 0x7c2878dff1f1f825 # load x3 with value 0x7c2878dff1f1f825
sd x10, -2(x20) # store 0x7c2878dff1f1f825 in memory
fld f25, -2(x20) # perform operation

# Testcase cp_imm_corners
la x21, scratch # base address 
addi x21, x21, 1 # sub immediate from rs1 to counter offset
li x22, 0xb00a535e6fd1d89b # load x3 with value 0xb00a535e6fd1d89b
sd x22, -1(x21) # store 0xb00a535e6fd1d89b in memory
fld f20, -1(x21) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
addi x13, x13, 1543
add x1, x23, x18 # perform first operation
fld f21, -1543(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x27, scratch
addi x27, x27, 158
add x28, x7, x21 # perform first operation
fld f30, -158(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x7, scratch
addi x7, x7, -389
add x26, x24, x20 # perform first operation
fld f18, 389(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
addi x13, x13, 595
fmul.s f24, f20, f30 # perform first operation
fld f24, -595(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
addi x25, x25, -120
fmul.s f3, f2, f18 # perform first operation
fld f3, 120(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
addi x25, x25, 1807
fmul.s f10, f26, f5 # perform first operation
fld f10, -1807(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x7, scratch
addi x7, x7, 824
fmul.s f13, f30, f9 # perform first operation
fld f30, -824(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
addi x5, x5, -33
fmul.s f21, f15, f13 # perform first operation
fld f13, 33(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x3, scratch
addi x3, x3, -1666
fmul.s f20, f7, f27 # perform first operation
fld f31, 1666(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
addi x17, x17, -1463
add x2, x18, x21 # perform first operation
fld f3, 1463(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -500
add x25, x12, x13 # perform first operation
fld f17, 500(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
addi x21, x21, 494
add x15, x26, x7 # perform first operation
fld f8, -494(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
addi x17, x17, -1247
add x17, x17, x0 # perform first operation
fld f17, 1247(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
addi x28, x28, 551
add x28, x28, x0 # perform first operation
fld f29, -551(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
addi x31, x31, -364
add x31, x31, x0 # perform first operation
fld f6, 364(x31) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x27, scratch # base address 
addi x27, x27, 1590 # sub immediate from rs1 to counter offset
li x23, 0x7386aad7e8b9d21f # load x3 with value 0x7386aad7e8b9d21f
sd x23, -1590(x27) # store 0x7386aad7e8b9d21f in memory
fld f0, -1590(x27) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x23, scratch # base address 
addi x23, x23, -1656 # sub immediate from rs1 to counter offset
li x9, 0xc672b3f9c8d65217 # load x3 with value 0xc672b3f9c8d65217
sd x9, 1656(x23) # store 0xc672b3f9c8d65217 in memory
fld f1, 1656(x23) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x17, scratch # base address 
addi x17, x17, -632 # sub immediate from rs1 to counter offset
li x22, 0x7a7d6d3951e0d74e # load x3 with value 0x7a7d6d3951e0d74e
sd x22, 632(x17) # store 0x7a7d6d3951e0d74e in memory
fld f2, 632(x17) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x24, scratch # base address 
addi x24, x24, 1963 # sub immediate from rs1 to counter offset
li x2, 0x20017e29bfb25ce9 # load x3 with value 0x20017e29bfb25ce9
sd x2, -1963(x24) # store 0x20017e29bfb25ce9 in memory
fld f3, -1963(x24) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x3, scratch # base address 
addi x3, x3, -801 # sub immediate from rs1 to counter offset
li x4, 0xd1f3922138bf1c88 # load x3 with value 0xd1f3922138bf1c88
sd x4, 801(x3) # store 0xd1f3922138bf1c88 in memory
fld f4, 801(x3) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x12, scratch # base address 
addi x12, x12, -1734 # sub immediate from rs1 to counter offset
li x28, 0xba21c823a9cb3fdf # load x3 with value 0xba21c823a9cb3fdf
sd x28, 1734(x12) # store 0xba21c823a9cb3fdf in memory
fld f5, 1734(x12) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x22, scratch # base address 
addi x22, x22, 245 # sub immediate from rs1 to counter offset
li x10, 0xfbbeb6d9c20e0ea2 # load x3 with value 0xfbbeb6d9c20e0ea2
sd x10, -245(x22) # store 0xfbbeb6d9c20e0ea2 in memory
fld f6, -245(x22) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x30, scratch # base address 
addi x30, x30, -561 # sub immediate from rs1 to counter offset
li x13, 0x3145c16bdcbb1ed4 # load x3 with value 0x3145c16bdcbb1ed4
sd x13, 561(x30) # store 0x3145c16bdcbb1ed4 in memory
fld f7, 561(x30) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x22, scratch # base address 
addi x22, x22, 959 # sub immediate from rs1 to counter offset
li x8, 0x83d4f96bd16344c7 # load x3 with value 0x83d4f96bd16344c7
sd x8, -959(x22) # store 0x83d4f96bd16344c7 in memory
fld f8, -959(x22) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x1, scratch # base address 
addi x1, x1, -1612 # sub immediate from rs1 to counter offset
li x24, 0xae20f2c2a4ed49d6 # load x3 with value 0xae20f2c2a4ed49d6
sd x24, 1612(x1) # store 0xae20f2c2a4ed49d6 in memory
fld f9, 1612(x1) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x26, scratch # base address 
addi x26, x26, 567 # sub immediate from rs1 to counter offset
li x2, 0xf8abfdaa66065c10 # load x3 with value 0xf8abfdaa66065c10
sd x2, -567(x26) # store 0xf8abfdaa66065c10 in memory
fld f10, -567(x26) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x6, scratch # base address 
addi x6, x6, -1392 # sub immediate from rs1 to counter offset
li x2, 0x72bd7fd974bf28a8 # load x3 with value 0x72bd7fd974bf28a8
sd x2, 1392(x6) # store 0x72bd7fd974bf28a8 in memory
fld f11, 1392(x6) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x21, scratch # base address 
addi x21, x21, -1759 # sub immediate from rs1 to counter offset
li x11, 0x63fda414bf0c914a # load x3 with value 0x63fda414bf0c914a
sd x11, 1759(x21) # store 0x63fda414bf0c914a in memory
fld f12, 1759(x21) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x11, scratch # base address 
addi x11, x11, -969 # sub immediate from rs1 to counter offset
li x12, 0x650fddea237b95e2 # load x3 with value 0x650fddea237b95e2
sd x12, 969(x11) # store 0x650fddea237b95e2 in memory
fld f13, 969(x11) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x24, scratch # base address 
addi x24, x24, 1894 # sub immediate from rs1 to counter offset
li x27, 0x00897a460b2abd75 # load x3 with value 0x00897a460b2abd75
sd x27, -1894(x24) # store 0x00897a460b2abd75 in memory
fld f14, -1894(x24) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x22, scratch # base address 
addi x22, x22, 1473 # sub immediate from rs1 to counter offset
li x30, 0xc14e98bbd00102ac # load x3 with value 0xc14e98bbd00102ac
sd x30, -1473(x22) # store 0xc14e98bbd00102ac in memory
fld f15, -1473(x22) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x26, scratch # base address 
addi x26, x26, 628 # sub immediate from rs1 to counter offset
li x3, 0xca59c7d08acb7921 # load x3 with value 0xca59c7d08acb7921
sd x3, -628(x26) # store 0xca59c7d08acb7921 in memory
fld f16, -628(x26) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x26, scratch # base address 
addi x26, x26, -1488 # sub immediate from rs1 to counter offset
li x8, 0xe0a40d3c2cee9169 # load x3 with value 0xe0a40d3c2cee9169
sd x8, 1488(x26) # store 0xe0a40d3c2cee9169 in memory
fld f17, 1488(x26) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x22, scratch # base address 
addi x22, x22, 644 # sub immediate from rs1 to counter offset
li x6, 0x7355f7aea1336b2e # load x3 with value 0x7355f7aea1336b2e
sd x6, -644(x22) # store 0x7355f7aea1336b2e in memory
fld f18, -644(x22) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x16, scratch # base address 
addi x16, x16, 1495 # sub immediate from rs1 to counter offset
li x5, 0x9f6cf09d264a1123 # load x3 with value 0x9f6cf09d264a1123
sd x5, -1495(x16) # store 0x9f6cf09d264a1123 in memory
fld f19, -1495(x16) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x10, scratch # base address 
addi x10, x10, 1664 # sub immediate from rs1 to counter offset
li x8, 0xffe2f6742c663f98 # load x3 with value 0xffe2f6742c663f98
sd x8, -1664(x10) # store 0xffe2f6742c663f98 in memory
fld f20, -1664(x10) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x12, scratch # base address 
addi x12, x12, -1988 # sub immediate from rs1 to counter offset
li x20, 0x4aa0637a0aeb026c # load x3 with value 0x4aa0637a0aeb026c
sd x20, 1988(x12) # store 0x4aa0637a0aeb026c in memory
fld f21, 1988(x12) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x8, scratch # base address 
addi x8, x8, -673 # sub immediate from rs1 to counter offset
li x19, 0xa7a313052d18fc11 # load x3 with value 0xa7a313052d18fc11
sd x19, 673(x8) # store 0xa7a313052d18fc11 in memory
fld f22, 673(x8) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x16, scratch # base address 
addi x16, x16, -1668 # sub immediate from rs1 to counter offset
li x17, 0xa57c4812593e9043 # load x3 with value 0xa57c4812593e9043
sd x17, 1668(x16) # store 0xa57c4812593e9043 in memory
fld f23, 1668(x16) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x11, scratch # base address 
addi x11, x11, 468 # sub immediate from rs1 to counter offset
li x27, 0xd1d4765aa8969f97 # load x3 with value 0xd1d4765aa8969f97
sd x27, -468(x11) # store 0xd1d4765aa8969f97 in memory
fld f24, -468(x11) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x29, scratch # base address 
addi x29, x29, -1443 # sub immediate from rs1 to counter offset
li x8, 0x26b2339222fbc12f # load x3 with value 0x26b2339222fbc12f
sd x8, 1443(x29) # store 0x26b2339222fbc12f in memory
fld f25, 1443(x29) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x9, scratch # base address 
addi x9, x9, -415 # sub immediate from rs1 to counter offset
li x30, 0xcf9adbe2696166cb # load x3 with value 0xcf9adbe2696166cb
sd x30, 415(x9) # store 0xcf9adbe2696166cb in memory
fld f26, 415(x9) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x16, scratch # base address 
addi x16, x16, 842 # sub immediate from rs1 to counter offset
li x13, 0x86ba3410cf3a9f03 # load x3 with value 0x86ba3410cf3a9f03
sd x13, -842(x16) # store 0x86ba3410cf3a9f03 in memory
fld f27, -842(x16) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x13, scratch # base address 
addi x13, x13, 287 # sub immediate from rs1 to counter offset
li x25, 0x6480ca9d4038548d # load x3 with value 0x6480ca9d4038548d
sd x25, -287(x13) # store 0x6480ca9d4038548d in memory
fld f28, -287(x13) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x7, scratch # base address 
addi x7, x7, -594 # sub immediate from rs1 to counter offset
li x26, 0xf1cdec3f236ff2f0 # load x3 with value 0xf1cdec3f236ff2f0
sd x26, 594(x7) # store 0xf1cdec3f236ff2f0 in memory
fld f29, 594(x7) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x14, scratch # base address 
addi x14, x14, -960 # sub immediate from rs1 to counter offset
li x21, 0x39fa5923fce668d1 # load x3 with value 0x39fa5923fce668d1
sd x21, 960(x14) # store 0x39fa5923fce668d1 in memory
fld f30, 960(x14) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x17, scratch # base address 
addi x17, x17, -1525 # sub immediate from rs1 to counter offset
li x26, 0xdc527a3c006b1ddc # load x3 with value 0xdc527a3c006b1ddc
sd x26, 1525(x17) # store 0xdc527a3c006b1ddc in memory
fld f31, 1525(x17) # perform operation

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
