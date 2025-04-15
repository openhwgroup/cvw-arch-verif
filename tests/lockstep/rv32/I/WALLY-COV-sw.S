///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sw.S
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

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x15, 0x1ec9c302 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -454 # sub immediate from rs1 to counter offset
sw x15, 454(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x7, 0x760a696f # initialize rs2
la x2, scratch # base address 
addi x2, x2, 89 # sub immediate from rs1 to counter offset
sw x7, -89(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0xd3e79e84 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 765 # sub immediate from rs1 to counter offset
sw x15, -765(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x5a62b98b # initialize rs2
la x4, scratch # base address 
addi x4, x4, -678 # sub immediate from rs1 to counter offset
sw x30, 678(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0x02fc6094 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 60 # sub immediate from rs1 to counter offset
sw x30, -60(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x1345bd53 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1463 # sub immediate from rs1 to counter offset
sw x24, -1463(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xf4dc0be9 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1378 # sub immediate from rs1 to counter offset
sw x3, -1378(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x3, 0xad85a6c8 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2030 # sub immediate from rs1 to counter offset
sw x3, 2030(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x8c31c85f # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1470 # sub immediate from rs1 to counter offset
sw x29, 1470(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0x73537511 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1735 # sub immediate from rs1 to counter offset
sw x30, 1735(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0xab4e0745 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1253 # sub immediate from rs1 to counter offset
sw x28, -1253(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x3ebc9120 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1762 # sub immediate from rs1 to counter offset
sw x31, 1762(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0xd4f9d668 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -394 # sub immediate from rs1 to counter offset
sw x26, 394(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xec9f636d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1033 # sub immediate from rs1 to counter offset
sw x5, 1033(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x7, 0x6629dd50 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1106 # sub immediate from rs1 to counter offset
sw x7, -1106(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x9, 0x9a38fa63 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1644 # sub immediate from rs1 to counter offset
sw x9, -1644(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0xac0eb5e3 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 2037 # sub immediate from rs1 to counter offset
sw x10, -2037(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0x9fec4622 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1522 # sub immediate from rs1 to counter offset
sw x22, 1522(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x27, 0x431ad048 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1557 # sub immediate from rs1 to counter offset
sw x27, 1557(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x26, 0x5e9dad94 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -446 # sub immediate from rs1 to counter offset
sw x26, 446(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0x65134e8d # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1694 # sub immediate from rs1 to counter offset
sw x8, -1694(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0xde359ce2 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1071 # sub immediate from rs1 to counter offset
sw x18, 1071(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0x2ecbe2e9 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1291 # sub immediate from rs1 to counter offset
sw x28, -1291(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x26, 0x3df52242 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -423 # sub immediate from rs1 to counter offset
sw x26, 423(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x5, 0xc0efd703 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1084 # sub immediate from rs1 to counter offset
sw x5, 1084(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x6, 0xfea82cb6 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1100 # sub immediate from rs1 to counter offset
sw x6, 1100(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x24, 0xe34b5edd # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1522 # sub immediate from rs1 to counter offset
sw x24, 1522(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x22, 0x82ee546b # initialize rs2
la x28, scratch # base address 
addi x28, x28, -894 # sub immediate from rs1 to counter offset
sw x22, 894(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x30, 0x98190cfd # initialize rs2
la x29, scratch # base address 
addi x29, x29, 502 # sub immediate from rs1 to counter offset
sw x30, -502(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x31, 0x752e90a6 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 967 # sub immediate from rs1 to counter offset
sw x31, -967(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x7, 0x6dedbf6f # initialize rs2
la x31, scratch # base address 
addi x31, x31, -969 # sub immediate from rs1 to counter offset
sw x7, 969(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x1a9800b7 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -24 # sub immediate from rs1 to counter offset
sw x0, 24(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x3e0bc484 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1349 # sub immediate from rs1 to counter offset
sw x1, -1349(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xb50c5339 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 179 # sub immediate from rs1 to counter offset
sw x2, -179(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x92f744d9 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 564 # sub immediate from rs1 to counter offset
sw x3, -564(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4ec1f7ec # initialize rs2
la x26, scratch # base address 
addi x26, x26, -895 # sub immediate from rs1 to counter offset
sw x4, 895(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0c6947c0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1304 # sub immediate from rs1 to counter offset
sw x5, 1304(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5feb3a32 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -215 # sub immediate from rs1 to counter offset
sw x6, 215(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x7, 0x39672434 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 118 # sub immediate from rs1 to counter offset
sw x7, -118(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xa9cbd5b1 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -954 # sub immediate from rs1 to counter offset
sw x8, 954(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x1f944934 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1235 # sub immediate from rs1 to counter offset
sw x9, 1235(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xd5a67381 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 723 # sub immediate from rs1 to counter offset
sw x10, -723(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xe97aec28 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1055 # sub immediate from rs1 to counter offset
sw x11, -1055(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xe9af0c06 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 648 # sub immediate from rs1 to counter offset
sw x12, -648(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x108958c5 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1743 # sub immediate from rs1 to counter offset
sw x13, -1743(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xdf360834 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1280 # sub immediate from rs1 to counter offset
sw x14, 1280(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x50a3dc83 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -2026 # sub immediate from rs1 to counter offset
sw x15, 2026(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xb928116d # initialize rs2
la x21, scratch # base address 
addi x21, x21, 496 # sub immediate from rs1 to counter offset
sw x16, -496(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xc4c9edd1 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1979 # sub immediate from rs1 to counter offset
sw x17, 1979(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x1429b876 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -406 # sub immediate from rs1 to counter offset
sw x18, 406(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xbfde4f01 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1683 # sub immediate from rs1 to counter offset
sw x19, -1683(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xf4a84645 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -894 # sub immediate from rs1 to counter offset
sw x20, 894(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x1cefdde0 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1486 # sub immediate from rs1 to counter offset
sw x21, -1486(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xd5356823 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 137 # sub immediate from rs1 to counter offset
sw x22, -137(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xb236d7b8 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1992 # sub immediate from rs1 to counter offset
sw x23, -1992(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x679b13c9 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1284 # sub immediate from rs1 to counter offset
sw x24, -1284(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x55809462 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 608 # sub immediate from rs1 to counter offset
sw x25, -608(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xf0388e52 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 2044 # sub immediate from rs1 to counter offset
sw x26, -2044(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x84a3fcfc # initialize rs2
la x1, scratch # base address 
addi x1, x1, -540 # sub immediate from rs1 to counter offset
sw x27, 540(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x60843eeb # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1452 # sub immediate from rs1 to counter offset
sw x28, -1452(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x38e008f7 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1601 # sub immediate from rs1 to counter offset
sw x29, -1601(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x53f876d1 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1534 # sub immediate from rs1 to counter offset
sw x30, 1534(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x7d41bbf4 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1333 # sub immediate from rs1 to counter offset
sw x31, 1333(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x00000000 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 835 # sub immediate from rs1 to counter offset
sw x1, -835(x3) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x00000001 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 358 # sub immediate from rs1 to counter offset
sw x9, -358(x30) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x00000002 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1903 # sub immediate from rs1 to counter offset
sw x21, -1903(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x9, 0x80000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1387 # sub immediate from rs1 to counter offset
sw x9, -1387(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x29, 0x80000001 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1573 # sub immediate from rs1 to counter offset
sw x29, -1573(x17) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x24, 0x7fffffff # initialize rs2
la x25, scratch # base address 
addi x25, x25, -675 # sub immediate from rs1 to counter offset
sw x24, 675(x25) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs2
la x3, scratch # base address 
addi x3, x3, 545 # sub immediate from rs1 to counter offset
sw x28, -545(x3) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xffffffff # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1806 # sub immediate from rs1 to counter offset
sw x2, -1806(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xfffffffe # initialize rs2
la x20, scratch # base address 
addi x20, x20, -439 # sub immediate from rs1 to counter offset
sw x18, 439(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1441 # sub immediate from rs1 to counter offset
sw x18, 1441(x5) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0xaaaaaaaa # initialize rs2
la x18, scratch # base address 
addi x18, x18, -409 # sub immediate from rs1 to counter offset
sw x16, 409(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x28, 0x55555555 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1235 # sub immediate from rs1 to counter offset
sw x28, -1235(x19) # perform operation 

# Testcase cp_imm_corners
li x14, 0x26c87c05 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 0 # sub immediate from rs1 to counter offset
sw x14, 0(x2) # perform operation 

# Testcase cp_imm_corners
li x10, 0x3d8845f8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1 # sub immediate from rs1 to counter offset
sw x10, 1(x17) # perform operation 

# Testcase cp_imm_corners
li x13, 0xabc67eef # initialize rs2
la x24, scratch # base address 
addi x24, x24, -2 # sub immediate from rs1 to counter offset
sw x13, 2(x24) # perform operation 

# Testcase cp_imm_corners
li x29, 0x618858e0 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -3 # sub immediate from rs1 to counter offset
sw x29, 3(x27) # perform operation 

# Testcase cp_imm_corners
li x20, 0x9661dc0a # initialize rs2
la x30, scratch # base address 
addi x30, x30, -4 # sub immediate from rs1 to counter offset
sw x20, 4(x30) # perform operation 

# Testcase cp_imm_corners
li x20, 0xac6aceb3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -8 # sub immediate from rs1 to counter offset
sw x20, 8(x15) # perform operation 

# Testcase cp_imm_corners
li x18, 0x525bb30c # initialize rs2
la x3, scratch # base address 
addi x3, x3, -16 # sub immediate from rs1 to counter offset
sw x18, 16(x3) # perform operation 

# Testcase cp_imm_corners
li x3, 0x7546a63e # initialize rs2
la x22, scratch # base address 
addi x22, x22, -32 # sub immediate from rs1 to counter offset
sw x3, 32(x22) # perform operation 

# Testcase cp_imm_corners
li x24, 0x6748695f # initialize rs2
la x1, scratch # base address 
addi x1, x1, -64 # sub immediate from rs1 to counter offset
sw x24, 64(x1) # perform operation 

# Testcase cp_imm_corners
li x22, 0xcf014752 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -128 # sub immediate from rs1 to counter offset
sw x22, 128(x2) # perform operation 

# Testcase cp_imm_corners
li x29, 0xe041b612 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -256 # sub immediate from rs1 to counter offset
sw x29, 256(x9) # perform operation 

# Testcase cp_imm_corners
li x7, 0xb2f7c279 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -512 # sub immediate from rs1 to counter offset
sw x7, 512(x8) # perform operation 

# Testcase cp_imm_corners
li x16, 0xcedb5ce4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1023 # sub immediate from rs1 to counter offset
sw x16, 1023(x10) # perform operation 

# Testcase cp_imm_corners
li x18, 0xbbcd2bce # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1024 # sub immediate from rs1 to counter offset
sw x18, 1024(x25) # perform operation 

# Testcase cp_imm_corners
li x26, 0x4c4903e0 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1795 # sub immediate from rs1 to counter offset
sw x26, 1795(x10) # perform operation 

# Testcase cp_imm_corners
li x7, 0xd59b5317 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -2047 # sub immediate from rs1 to counter offset
sw x7, 2047(x18) # perform operation 

# Testcase cp_imm_corners
li x16, 0x6ebe1cd3 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 2047 # increment rs1 by 2047 
addi x3, x3, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sw x16, -2048(x3) # perform operation 

# Testcase cp_imm_corners
li x11, 0xe17bf501 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 2047 # sub immediate from rs1 to counter offset
sw x11, -2047(x14) # perform operation 

# Testcase cp_imm_corners
li x27, 0x23d6eb8f # initialize rs2
la x17, scratch # base address 
addi x17, x17, 2 # sub immediate from rs1 to counter offset
sw x27, -2(x17) # perform operation 

# Testcase cp_imm_corners
li x28, 0x995dadcb # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1 # sub immediate from rs1 to counter offset
sw x28, -1(x14) # perform operation 

# Testcase cp_gpr/fpr_hazard nohaz test
la x14, scratch
addi x14, x14, 451
add x3, x12, x19 # perform first operation
sw x1, -451(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
addi x3, x3, 1213
add x9, x15, x13 # perform first operation
sw x22, -1213(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -286
add x15, x10, x29 # perform first operation
sw x17, 286(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
addi x22, x22, 849
add x22, x22, x0 # perform first operation
sw x19, -849(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x14, scratch
addi x14, x14, 1982
add x3, x3, x0 # perform first operation
sw x3, -1982(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x3, scratch
addi x3, x3, 801
add x25, x25, x0 # perform first operation
sw x14, -801(x3) # perform second (triggering) operation

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
