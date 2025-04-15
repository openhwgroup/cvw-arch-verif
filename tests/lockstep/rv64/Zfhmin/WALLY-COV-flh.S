///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfhmin/WALLY-COV-flh.S
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
addi x1, x1, 1461 # sub immediate from rs1 to counter offset
li x2, 0x8e70ae39488adce6 # load x3 with value 0x8e70ae39488adce6
sw x2, -1461(x1) # store 0x8e70ae39488adce6 in memory
flh f16, -1461(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, -1453 # sub immediate from rs1 to counter offset
li x27, 0xbdebc1f9baf456dc # load x3 with value 0xbdebc1f9baf456dc
sw x27, 1453(x2) # store 0xbdebc1f9baf456dc in memory
flh f30, 1453(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, 971 # sub immediate from rs1 to counter offset
li x18, 0xaf1ebd6cb4b34071 # load x3 with value 0xaf1ebd6cb4b34071
sw x18, -971(x3) # store 0xaf1ebd6cb4b34071 in memory
flh f9, -971(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, -485 # sub immediate from rs1 to counter offset
li x10, 0x80d3be8ba3947032 # load x3 with value 0x80d3be8ba3947032
sw x10, 485(x4) # store 0x80d3be8ba3947032 in memory
flh f15, 485(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, 1770 # sub immediate from rs1 to counter offset
li x22, 0x789221cf6332f968 # load x3 with value 0x789221cf6332f968
sw x22, -1770(x5) # store 0x789221cf6332f968 in memory
flh f8, -1770(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # base address 
addi x6, x6, -1815 # sub immediate from rs1 to counter offset
li x13, 0x8e101cbb348673ec # load x3 with value 0x8e101cbb348673ec
sw x13, 1815(x6) # store 0x8e101cbb348673ec in memory
flh f9, 1815(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, -686 # sub immediate from rs1 to counter offset
li x30, 0x828d7d1c2d0f3928 # load x3 with value 0x828d7d1c2d0f3928
sw x30, 686(x7) # store 0x828d7d1c2d0f3928 in memory
flh f15, 686(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, -1241 # sub immediate from rs1 to counter offset
li x27, 0x5af58185b04d43e3 # load x3 with value 0x5af58185b04d43e3
sw x27, 1241(x8) # store 0x5af58185b04d43e3 in memory
flh f25, 1241(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, 1752 # sub immediate from rs1 to counter offset
li x11, 0xacd003e9e46b7738 # load x3 with value 0xacd003e9e46b7738
sw x11, -1752(x9) # store 0xacd003e9e46b7738 in memory
flh f31, -1752(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, 307 # sub immediate from rs1 to counter offset
li x2, 0x95586e2048854ef9 # load x3 with value 0x95586e2048854ef9
sw x2, -307(x10) # store 0x95586e2048854ef9 in memory
flh f21, -307(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, -185 # sub immediate from rs1 to counter offset
li x5, 0xe5f7416e69d891b7 # load x3 with value 0xe5f7416e69d891b7
sw x5, 185(x11) # store 0xe5f7416e69d891b7 in memory
flh f15, 185(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 1754 # sub immediate from rs1 to counter offset
li x3, 0x9261b5d428ed78b5 # load x3 with value 0x9261b5d428ed78b5
sw x3, -1754(x12) # store 0x9261b5d428ed78b5 in memory
flh f25, -1754(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, -1689 # sub immediate from rs1 to counter offset
li x17, 0xa04300afe6c4c209 # load x3 with value 0xa04300afe6c4c209
sw x17, 1689(x13) # store 0xa04300afe6c4c209 in memory
flh f3, 1689(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, 940 # sub immediate from rs1 to counter offset
li x24, 0x9b320ab93a0c557 # load x3 with value 0x9b320ab93a0c557
sw x24, -940(x14) # store 0x9b320ab93a0c557 in memory
flh f16, -940(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, -2037 # sub immediate from rs1 to counter offset
li x5, 0xc34cc3610068cfdf # load x3 with value 0xc34cc3610068cfdf
sw x5, 2037(x15) # store 0xc34cc3610068cfdf in memory
flh f16, 2037(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, 236 # sub immediate from rs1 to counter offset
li x7, 0xea140a3c6c964b60 # load x3 with value 0xea140a3c6c964b60
sw x7, -236(x16) # store 0xea140a3c6c964b60 in memory
flh f30, -236(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, -601 # sub immediate from rs1 to counter offset
li x7, 0x1333757489cdf43f # load x3 with value 0x1333757489cdf43f
sw x7, 601(x17) # store 0x1333757489cdf43f in memory
flh f11, 601(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, 469 # sub immediate from rs1 to counter offset
li x1, 0x6e0efe5fec7e6088 # load x3 with value 0x6e0efe5fec7e6088
sw x1, -469(x18) # store 0x6e0efe5fec7e6088 in memory
flh f7, -469(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, -1154 # sub immediate from rs1 to counter offset
li x10, 0x145a9301d7869494 # load x3 with value 0x145a9301d7869494
sw x10, 1154(x19) # store 0x145a9301d7869494 in memory
flh f9, 1154(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, 1689 # sub immediate from rs1 to counter offset
li x27, 0xe0f12388fae35d72 # load x3 with value 0xe0f12388fae35d72
sw x27, -1689(x20) # store 0xe0f12388fae35d72 in memory
flh f15, -1689(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -1325 # sub immediate from rs1 to counter offset
li x26, 0x1aec32c6cec67145 # load x3 with value 0x1aec32c6cec67145
sw x26, 1325(x21) # store 0x1aec32c6cec67145 in memory
flh f17, 1325(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, 1145 # sub immediate from rs1 to counter offset
li x24, 0x6794d76f7e655f33 # load x3 with value 0x6794d76f7e655f33
sw x24, -1145(x22) # store 0x6794d76f7e655f33 in memory
flh f29, -1145(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, 147 # sub immediate from rs1 to counter offset
li x10, 0xcb2f59df8ae5a59 # load x3 with value 0xcb2f59df8ae5a59
sw x10, -147(x23) # store 0xcb2f59df8ae5a59 in memory
flh f22, -147(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, 128 # sub immediate from rs1 to counter offset
li x17, 0x795463bcf92d7f8c # load x3 with value 0x795463bcf92d7f8c
sw x17, -128(x24) # store 0x795463bcf92d7f8c in memory
flh f28, -128(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, 168 # sub immediate from rs1 to counter offset
li x22, 0x9c82ed1368cf7d9f # load x3 with value 0x9c82ed1368cf7d9f
sw x22, -168(x25) # store 0x9c82ed1368cf7d9f in memory
flh f16, -168(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, 377 # sub immediate from rs1 to counter offset
li x8, 0xa7195448fb8e0b8f # load x3 with value 0xa7195448fb8e0b8f
sw x8, -377(x26) # store 0xa7195448fb8e0b8f in memory
flh f2, -377(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, -1514 # sub immediate from rs1 to counter offset
li x16, 0x1f148f6673f3c26d # load x3 with value 0x1f148f6673f3c26d
sw x16, 1514(x27) # store 0x1f148f6673f3c26d in memory
flh f25, 1514(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, -1571 # sub immediate from rs1 to counter offset
li x29, 0x83b02f725c3533ad # load x3 with value 0x83b02f725c3533ad
sw x29, 1571(x28) # store 0x83b02f725c3533ad in memory
flh f10, 1571(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, 1720 # sub immediate from rs1 to counter offset
li x27, 0xc7e969e7e6b694fd # load x3 with value 0xc7e969e7e6b694fd
sw x27, -1720(x29) # store 0xc7e969e7e6b694fd in memory
flh f9, -1720(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, 1178 # sub immediate from rs1 to counter offset
li x25, 0x1fcbb4a6e30c8d55 # load x3 with value 0x1fcbb4a6e30c8d55
sw x25, -1178(x30) # store 0x1fcbb4a6e30c8d55 in memory
flh f19, -1178(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, 1818 # sub immediate from rs1 to counter offset
li x10, 0xa71f4e379f09209f # load x3 with value 0xa71f4e379f09209f
sw x10, -1818(x31) # store 0xa71f4e379f09209f in memory
flh f27, -1818(x31) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
li x10, 0x9ee63866273aadac # load x3 with value 0x9ee63866273aadac
sw x10, 0(x9) # store 0x9ee63866273aadac in memory
flh f24, 0(x9) # perform operation

# Testcase cp_imm_corners
la x5, scratch # base address 
addi x5, x5, -1 # sub immediate from rs1 to counter offset
li x1, 0x9c6a93324600ea2c # load x3 with value 0x9c6a93324600ea2c
sw x1, 1(x5) # store 0x9c6a93324600ea2c in memory
flh f31, 1(x5) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -2 # sub immediate from rs1 to counter offset
li x29, 0xf9a03d7e259040ff # load x3 with value 0xf9a03d7e259040ff
sw x29, 2(x18) # store 0xf9a03d7e259040ff in memory
flh f25, 2(x18) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -3 # sub immediate from rs1 to counter offset
li x15, 0x527e136bd3f8e4ff # load x3 with value 0x527e136bd3f8e4ff
sw x15, 3(x3) # store 0x527e136bd3f8e4ff in memory
flh f29, 3(x3) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -4 # sub immediate from rs1 to counter offset
li x1, 0x456532c41e354a4b # load x3 with value 0x456532c41e354a4b
sw x1, 4(x18) # store 0x456532c41e354a4b in memory
flh f17, 4(x18) # perform operation

# Testcase cp_imm_corners
la x6, scratch # base address 
addi x6, x6, -8 # sub immediate from rs1 to counter offset
li x13, 0x9e29fc5319eed6a0 # load x3 with value 0x9e29fc5319eed6a0
sw x13, 8(x6) # store 0x9e29fc5319eed6a0 in memory
flh f27, 8(x6) # perform operation

# Testcase cp_imm_corners
la x7, scratch # base address 
addi x7, x7, -16 # sub immediate from rs1 to counter offset
li x15, 0xef1c976e8f665790 # load x3 with value 0xef1c976e8f665790
sw x15, 16(x7) # store 0xef1c976e8f665790 in memory
flh f6, 16(x7) # perform operation

# Testcase cp_imm_corners
la x19, scratch # base address 
addi x19, x19, -32 # sub immediate from rs1 to counter offset
li x30, 0xe1b2f17d2e5709af # load x3 with value 0xe1b2f17d2e5709af
sw x30, 32(x19) # store 0xe1b2f17d2e5709af in memory
flh f14, 32(x19) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -64 # sub immediate from rs1 to counter offset
li x5, 0xfaaa639268774d65 # load x3 with value 0xfaaa639268774d65
sw x5, 64(x3) # store 0xfaaa639268774d65 in memory
flh f13, 64(x3) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, -128 # sub immediate from rs1 to counter offset
li x23, 0xdb313207b48e31b9 # load x3 with value 0xdb313207b48e31b9
sw x23, 128(x28) # store 0xdb313207b48e31b9 in memory
flh f29, 128(x28) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -256 # sub immediate from rs1 to counter offset
li x25, 0x2ce53189e805bee9 # load x3 with value 0x2ce53189e805bee9
sw x25, 256(x3) # store 0x2ce53189e805bee9 in memory
flh f20, 256(x3) # perform operation

# Testcase cp_imm_corners
la x11, scratch # base address 
addi x11, x11, -512 # sub immediate from rs1 to counter offset
li x9, 0x242ccb033219aadc # load x3 with value 0x242ccb033219aadc
sw x9, 512(x11) # store 0x242ccb033219aadc in memory
flh f7, 512(x11) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -1023 # sub immediate from rs1 to counter offset
li x2, 0x324c083c761545d2 # load x3 with value 0x324c083c761545d2
sw x2, 1023(x3) # store 0x324c083c761545d2 in memory
flh f21, 1023(x3) # perform operation

# Testcase cp_imm_corners
la x31, scratch # base address 
addi x31, x31, -1024 # sub immediate from rs1 to counter offset
li x16, 0x8c347ffb4e5abf77 # load x3 with value 0x8c347ffb4e5abf77
sw x16, 1024(x31) # store 0x8c347ffb4e5abf77 in memory
flh f10, 1024(x31) # perform operation

# Testcase cp_imm_corners
la x5, scratch # base address 
addi x5, x5, -1795 # sub immediate from rs1 to counter offset
li x15, 0x7d25844adaae753e # load x3 with value 0x7d25844adaae753e
sw x15, 1795(x5) # store 0x7d25844adaae753e in memory
flh f7, 1795(x5) # perform operation

# Testcase cp_imm_corners
la x16, scratch # base address 
addi x16, x16, -2047 # sub immediate from rs1 to counter offset
li x1, 0x5592c050815f0cbe # load x3 with value 0x5592c050815f0cbe
sw x1, 2047(x16) # store 0x5592c050815f0cbe in memory
flh f5, 2047(x16) # perform operation

# Testcase cp_imm_corners
la x29, scratch # base address 
addi x29, x29, 2047 # increment rs1 by 2047 
addi x29, x29, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x2, 0xac3c87d4ca25f3e2 # load x3 with value 0xac3c87d4ca25f3e2
sw x2, -2048(x29) # store 0xac3c87d4ca25f3e2 in memory
flh f31, -2048(x29) # perform operation

# Testcase cp_imm_corners
la x9, scratch # base address 
addi x9, x9, 2047 # sub immediate from rs1 to counter offset
li x7, 0x4e76f051dd76b58e # load x3 with value 0x4e76f051dd76b58e
sw x7, -2047(x9) # store 0x4e76f051dd76b58e in memory
flh f20, -2047(x9) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, 2 # sub immediate from rs1 to counter offset
li x31, 0x37f3b77c2c8e1366 # load x3 with value 0x37f3b77c2c8e1366
sw x31, -2(x3) # store 0x37f3b77c2c8e1366 in memory
flh f31, -2(x3) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
li x6, 0x4fc1f2bc8808eebf # load x3 with value 0x4fc1f2bc8808eebf
sw x6, -1(x3) # store 0x4fc1f2bc8808eebf in memory
flh f2, -1(x3) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
addi x16, x16, -1613
add x21, x11, x7 # perform first operation
flh f3, 1613(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
addi x16, x16, 159
add x26, x30, x8 # perform first operation
flh f10, -159(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
addi x25, x25, 249
add x9, x19, x10 # perform first operation
flh f23, -249(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x17, scratch
addi x17, x17, -787
fmul.s f28, f5, f24 # perform first operation
flh f28, 787(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x19, scratch
addi x19, x19, 441
fmul.s f24, f8, f10 # perform first operation
flh f24, -441(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x30, scratch
addi x30, x30, 964
fmul.s f12, f27, f5 # perform first operation
flh f12, -964(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x12, scratch
addi x12, x12, -477
fmul.s f21, f15, f31 # perform first operation
flh f15, 477(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
addi x19, x19, -1766
fmul.s f31, f25, f18 # perform first operation
flh f18, 1766(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x15, scratch
addi x15, x15, 1672
fmul.s f6, f14, f8 # perform first operation
flh f10, -1672(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
addi x5, x5, -1187
add x7, x13, x18 # perform first operation
flh f12, 1187(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x7, scratch
addi x7, x7, 1371
add x19, x8, x29 # perform first operation
flh f28, -1371(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x27, scratch
addi x27, x27, 898
add x29, x18, x13 # perform first operation
flh f7, -898(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
addi x27, x27, -707
add x27, x27, x0 # perform first operation
flh f25, 707(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x14, scratch
addi x14, x14, -55
add x14, x14, x0 # perform first operation
flh f6, 55(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, 382
add x29, x29, x0 # perform first operation
flh f13, -382(x29) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x20, scratch # base address 
addi x20, x20, -1963 # sub immediate from rs1 to counter offset
li x25, 0xa895219ae47957b2 # load x3 with value 0xa895219ae47957b2
sw x25, 1963(x20) # store 0xa895219ae47957b2 in memory
flh f0, 1963(x20) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x9, scratch # base address 
addi x9, x9, 1658 # sub immediate from rs1 to counter offset
li x3, 0x12d74e77a02cfdca # load x3 with value 0x12d74e77a02cfdca
sw x3, -1658(x9) # store 0x12d74e77a02cfdca in memory
flh f1, -1658(x9) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x20, scratch # base address 
addi x20, x20, 222 # sub immediate from rs1 to counter offset
li x15, 0xd82ebd442ca61bba # load x3 with value 0xd82ebd442ca61bba
sw x15, -222(x20) # store 0xd82ebd442ca61bba in memory
flh f2, -222(x20) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x29, scratch # base address 
addi x29, x29, -1885 # sub immediate from rs1 to counter offset
li x30, 0x4b10071468d18289 # load x3 with value 0x4b10071468d18289
sw x30, 1885(x29) # store 0x4b10071468d18289 in memory
flh f3, 1885(x29) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x30, scratch # base address 
addi x30, x30, -1458 # sub immediate from rs1 to counter offset
li x15, 0x485172b7cfa9a1e5 # load x3 with value 0x485172b7cfa9a1e5
sw x15, 1458(x30) # store 0x485172b7cfa9a1e5 in memory
flh f4, 1458(x30) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x14, scratch # base address 
addi x14, x14, 409 # sub immediate from rs1 to counter offset
li x21, 0x6b037ebf244ac311 # load x3 with value 0x6b037ebf244ac311
sw x21, -409(x14) # store 0x6b037ebf244ac311 in memory
flh f5, -409(x14) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x23, scratch # base address 
addi x23, x23, 1983 # sub immediate from rs1 to counter offset
li x5, 0xa5ad72e0b9d193e0 # load x3 with value 0xa5ad72e0b9d193e0
sw x5, -1983(x23) # store 0xa5ad72e0b9d193e0 in memory
flh f6, -1983(x23) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x19, scratch # base address 
addi x19, x19, 1545 # sub immediate from rs1 to counter offset
li x30, 0x3c4d96197dfe03bb # load x3 with value 0x3c4d96197dfe03bb
sw x30, -1545(x19) # store 0x3c4d96197dfe03bb in memory
flh f7, -1545(x19) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x24, scratch # base address 
addi x24, x24, -426 # sub immediate from rs1 to counter offset
li x1, 0xe585c2e3facb7e19 # load x3 with value 0xe585c2e3facb7e19
sw x1, 426(x24) # store 0xe585c2e3facb7e19 in memory
flh f8, 426(x24) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x26, scratch # base address 
addi x26, x26, -438 # sub immediate from rs1 to counter offset
li x18, 0x4147038bc381c88a # load x3 with value 0x4147038bc381c88a
sw x18, 438(x26) # store 0x4147038bc381c88a in memory
flh f9, 438(x26) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x25, scratch # base address 
addi x25, x25, 1075 # sub immediate from rs1 to counter offset
li x6, 0x889b33dbcfb8a452 # load x3 with value 0x889b33dbcfb8a452
sw x6, -1075(x25) # store 0x889b33dbcfb8a452 in memory
flh f10, -1075(x25) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x24, scratch # base address 
addi x24, x24, 252 # sub immediate from rs1 to counter offset
li x8, 0x78d03c98a4edc105 # load x3 with value 0x78d03c98a4edc105
sw x8, -252(x24) # store 0x78d03c98a4edc105 in memory
flh f11, -252(x24) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x30, scratch # base address 
addi x30, x30, 1685 # sub immediate from rs1 to counter offset
li x25, 0x207bc2c6c4fc3ceb # load x3 with value 0x207bc2c6c4fc3ceb
sw x25, -1685(x30) # store 0x207bc2c6c4fc3ceb in memory
flh f12, -1685(x30) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x20, scratch # base address 
addi x20, x20, -1785 # sub immediate from rs1 to counter offset
li x23, 0x24ff87750e4bf9e1 # load x3 with value 0x24ff87750e4bf9e1
sw x23, 1785(x20) # store 0x24ff87750e4bf9e1 in memory
flh f13, 1785(x20) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x19, scratch # base address 
addi x19, x19, -1799 # sub immediate from rs1 to counter offset
li x10, 0xe1231b2c55244391 # load x3 with value 0xe1231b2c55244391
sw x10, 1799(x19) # store 0xe1231b2c55244391 in memory
flh f14, 1799(x19) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x15, scratch # base address 
addi x15, x15, 1490 # sub immediate from rs1 to counter offset
li x9, 0x40acdfbaae57a330 # load x3 with value 0x40acdfbaae57a330
sw x9, -1490(x15) # store 0x40acdfbaae57a330 in memory
flh f15, -1490(x15) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x15, scratch # base address 
addi x15, x15, 1193 # sub immediate from rs1 to counter offset
li x20, 0x43800d0016546102 # load x3 with value 0x43800d0016546102
sw x20, -1193(x15) # store 0x43800d0016546102 in memory
flh f16, -1193(x15) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x6, scratch # base address 
addi x6, x6, 540 # sub immediate from rs1 to counter offset
li x12, 0xcd99a92e3c0c77f1 # load x3 with value 0xcd99a92e3c0c77f1
sw x12, -540(x6) # store 0xcd99a92e3c0c77f1 in memory
flh f17, -540(x6) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x11, scratch # base address 
addi x11, x11, -1703 # sub immediate from rs1 to counter offset
li x14, 0x7b0a77877462f82 # load x3 with value 0x7b0a77877462f82
sw x14, 1703(x11) # store 0x7b0a77877462f82 in memory
flh f18, 1703(x11) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x24, scratch # base address 
addi x24, x24, 1888 # sub immediate from rs1 to counter offset
li x31, 0x48a37792f4497af5 # load x3 with value 0x48a37792f4497af5
sw x31, -1888(x24) # store 0x48a37792f4497af5 in memory
flh f19, -1888(x24) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x5, scratch # base address 
addi x5, x5, 99 # sub immediate from rs1 to counter offset
li x10, 0x580e84a0552ab7c0 # load x3 with value 0x580e84a0552ab7c0
sw x10, -99(x5) # store 0x580e84a0552ab7c0 in memory
flh f20, -99(x5) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x16, scratch # base address 
addi x16, x16, -1198 # sub immediate from rs1 to counter offset
li x27, 0xc57fe6812cdbe90 # load x3 with value 0xc57fe6812cdbe90
sw x27, 1198(x16) # store 0xc57fe6812cdbe90 in memory
flh f21, 1198(x16) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x18, scratch # base address 
addi x18, x18, -237 # sub immediate from rs1 to counter offset
li x3, 0xb5db01a68e68cb83 # load x3 with value 0xb5db01a68e68cb83
sw x3, 237(x18) # store 0xb5db01a68e68cb83 in memory
flh f22, 237(x18) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x15, scratch # base address 
addi x15, x15, 900 # sub immediate from rs1 to counter offset
li x6, 0x4041b6af8aafde4 # load x3 with value 0x4041b6af8aafde4
sw x6, -900(x15) # store 0x4041b6af8aafde4 in memory
flh f23, -900(x15) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x31, scratch # base address 
addi x31, x31, -53 # sub immediate from rs1 to counter offset
li x8, 0xbbf2fb740a88cdd6 # load x3 with value 0xbbf2fb740a88cdd6
sw x8, 53(x31) # store 0xbbf2fb740a88cdd6 in memory
flh f24, 53(x31) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x16, scratch # base address 
addi x16, x16, -128 # sub immediate from rs1 to counter offset
li x9, 0xc224a7962bef7fb7 # load x3 with value 0xc224a7962bef7fb7
sw x9, 128(x16) # store 0xc224a7962bef7fb7 in memory
flh f25, 128(x16) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x27, scratch # base address 
addi x27, x27, -937 # sub immediate from rs1 to counter offset
li x10, 0xbf76b3f376d99e58 # load x3 with value 0xbf76b3f376d99e58
sw x10, 937(x27) # store 0xbf76b3f376d99e58 in memory
flh f26, 937(x27) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x25, scratch # base address 
addi x25, x25, 242 # sub immediate from rs1 to counter offset
li x27, 0x58ef409fe32fd5c9 # load x3 with value 0x58ef409fe32fd5c9
sw x27, -242(x25) # store 0x58ef409fe32fd5c9 in memory
flh f27, -242(x25) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x12, scratch # base address 
addi x12, x12, 955 # sub immediate from rs1 to counter offset
li x14, 0x8a65dcf8e3058dfc # load x3 with value 0x8a65dcf8e3058dfc
sw x14, -955(x12) # store 0x8a65dcf8e3058dfc in memory
flh f28, -955(x12) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x27, scratch # base address 
addi x27, x27, -2030 # sub immediate from rs1 to counter offset
li x22, 0x35814fbb29780f5d # load x3 with value 0x35814fbb29780f5d
sw x22, 2030(x27) # store 0x35814fbb29780f5d in memory
flh f29, 2030(x27) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x1, scratch # base address 
addi x1, x1, -931 # sub immediate from rs1 to counter offset
li x20, 0x879680d0b90cb1ff # load x3 with value 0x879680d0b90cb1ff
sw x20, 931(x1) # store 0x879680d0b90cb1ff in memory
flh f30, 931(x1) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x20, scratch # base address 
addi x20, x20, 284 # sub immediate from rs1 to counter offset
li x7, 0x3ca9949d84e24fb5 # load x3 with value 0x3ca9949d84e24fb5
sw x7, -284(x20) # store 0x3ca9949d84e24fb5 in memory
flh f31, -284(x20) # perform operation

# Testcase Random test for cp_NaNBox 
la x31, scratch # base address 
addi x31, x31, -1600 # sub immediate from rs1 to counter offset
li x17, 0x449ebabbe9f816ea # load x3 with value 0x449ebabbe9f816ea
sw x17, 1600(x31) # store 0x449ebabbe9f816ea in memory
flh f23, 1600(x31) # perform operation

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
