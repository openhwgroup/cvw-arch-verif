///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sb.S
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
li x15, 0xd878dded # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1238 # sub immediate from rs1 to counter offset
sb x15, -1238(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x31, 0x7c36145e # initialize rs2
la x2, scratch # base address 
addi x2, x2, -627 # sub immediate from rs1 to counter offset
sb x31, 627(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0x1f86545d # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1764 # sub immediate from rs1 to counter offset
sb x27, -1764(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x7af272e2 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1000 # sub immediate from rs1 to counter offset
sb x17, -1000(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x503ca7fc # initialize rs2
la x5, scratch # base address 
addi x5, x5, -888 # sub immediate from rs1 to counter offset
sb x25, 888(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0xecb7de20 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1278 # sub immediate from rs1 to counter offset
sb x11, -1278(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x2c3990ba # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1653 # sub immediate from rs1 to counter offset
sb x13, 1653(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0xdbe871a2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -688 # sub immediate from rs1 to counter offset
sb x1, 688(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x17f8308b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1417 # sub immediate from rs1 to counter offset
sb x12, 1417(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0xb7cbbdd7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1895 # sub immediate from rs1 to counter offset
sb x23, -1895(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0xbe463505 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -725 # sub immediate from rs1 to counter offset
sb x7, 725(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xbfb10976 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1753 # sub immediate from rs1 to counter offset
sb x11, 1753(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0x3f178d84 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1048 # sub immediate from rs1 to counter offset
sb x25, -1048(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0xeec5b6bb # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1695 # sub immediate from rs1 to counter offset
sb x28, -1695(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0xafebf017 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 367 # sub immediate from rs1 to counter offset
sb x21, -367(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x21, 0x45a6772f # initialize rs2
la x16, scratch # base address 
addi x16, x16, 606 # sub immediate from rs1 to counter offset
sb x21, -606(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0x0cc9e641 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1415 # sub immediate from rs1 to counter offset
sb x15, 1415(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x26, 0x220ab4e3 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1185 # sub immediate from rs1 to counter offset
sb x26, -1185(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0x935343d5 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1812 # sub immediate from rs1 to counter offset
sb x21, -1812(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x5, 0x112c7cc4 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 519 # sub immediate from rs1 to counter offset
sb x5, -519(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x29, 0xef657db4 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1959 # sub immediate from rs1 to counter offset
sb x29, -1959(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0x49ddddc6 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 363 # sub immediate from rs1 to counter offset
sb x15, -363(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x9c775dcc # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1662 # sub immediate from rs1 to counter offset
sb x5, -1662(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x5ff6c78a # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1311 # sub immediate from rs1 to counter offset
sb x11, -1311(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x22, 0x6dffe522 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1609 # sub immediate from rs1 to counter offset
sb x22, 1609(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0x67a38809 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -86 # sub immediate from rs1 to counter offset
sb x12, 86(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x4d29f78d # initialize rs2
la x27, scratch # base address 
addi x27, x27, -563 # sub immediate from rs1 to counter offset
sb x21, 563(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0x21ffb79c # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1005 # sub immediate from rs1 to counter offset
sb x23, -1005(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0x783f5bc8 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 2034 # sub immediate from rs1 to counter offset
sb x24, -2034(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x26, 0x04860d44 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1291 # sub immediate from rs1 to counter offset
sb x26, 1291(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x60a4a2bf # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1800 # sub immediate from rs1 to counter offset
sb x13, -1800(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x5d4d52a7 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 577 # sub immediate from rs1 to counter offset
sb x0, -577(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x743733ed # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1297 # sub immediate from rs1 to counter offset
sb x1, 1297(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x022e0aac # initialize rs2
la x10, scratch # base address 
addi x10, x10, -600 # sub immediate from rs1 to counter offset
sb x2, 600(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xb4180697 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -866 # sub immediate from rs1 to counter offset
sb x3, 866(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xffdb7dcc # initialize rs2
la x6, scratch # base address 
addi x6, x6, -2013 # sub immediate from rs1 to counter offset
sb x4, 2013(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe50d28c4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1506 # sub immediate from rs1 to counter offset
sb x5, -1506(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x17fa9fb8 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -19 # sub immediate from rs1 to counter offset
sb x6, 19(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x02082b4a # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1325 # sub immediate from rs1 to counter offset
sb x7, -1325(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x6a790830 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 65 # sub immediate from rs1 to counter offset
sb x8, -65(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xdd6ac5bf # initialize rs2
la x5, scratch # base address 
addi x5, x5, -177 # sub immediate from rs1 to counter offset
sb x9, 177(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x619bf517 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 7 # sub immediate from rs1 to counter offset
sb x10, -7(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xfa1da9e7 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -173 # sub immediate from rs1 to counter offset
sb x11, 173(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xf1ca1b45 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 56 # sub immediate from rs1 to counter offset
sb x12, -56(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x8312e1de # initialize rs2
la x22, scratch # base address 
addi x22, x22, 81 # sub immediate from rs1 to counter offset
sb x13, -81(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x4585a6f6 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 467 # sub immediate from rs1 to counter offset
sb x14, -467(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xc18d1ee8 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 906 # sub immediate from rs1 to counter offset
sb x15, -906(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x7da3fabe # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1419 # sub immediate from rs1 to counter offset
sb x16, 1419(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x7c2c6f2c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -142 # sub immediate from rs1 to counter offset
sb x17, 142(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x12068e7c # initialize rs2
la x7, scratch # base address 
addi x7, x7, -700 # sub immediate from rs1 to counter offset
sb x18, 700(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xbeb80fa4 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -57 # sub immediate from rs1 to counter offset
sb x19, 57(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x6a356712 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1545 # sub immediate from rs1 to counter offset
sb x20, 1545(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x637e107a # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1484 # sub immediate from rs1 to counter offset
sb x21, -1484(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x9248a44c # initialize rs2
la x12, scratch # base address 
addi x12, x12, -795 # sub immediate from rs1 to counter offset
sb x22, 795(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x2c27fa6d # initialize rs2
la x5, scratch # base address 
addi x5, x5, 131 # sub immediate from rs1 to counter offset
sb x23, -131(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x2d913f4e # initialize rs2
la x5, scratch # base address 
addi x5, x5, -258 # sub immediate from rs1 to counter offset
sb x24, 258(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x8975a52f # initialize rs2
la x30, scratch # base address 
addi x30, x30, 344 # sub immediate from rs1 to counter offset
sb x25, -344(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x551ba70e # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1567 # sub immediate from rs1 to counter offset
sb x26, -1567(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x529750bc # initialize rs2
la x18, scratch # base address 
addi x18, x18, 57 # sub immediate from rs1 to counter offset
sb x27, -57(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xd9f4b29c # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1824 # sub immediate from rs1 to counter offset
sb x28, 1824(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x18b306ee # initialize rs2
la x19, scratch # base address 
addi x19, x19, -654 # sub immediate from rs1 to counter offset
sb x29, 654(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xcb8f7bf3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1389 # sub immediate from rs1 to counter offset
sb x30, -1389(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x40d6ebec # initialize rs2
la x18, scratch # base address 
addi x18, x18, 2031 # sub immediate from rs1 to counter offset
sb x31, -2031(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x00000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -877 # sub immediate from rs1 to counter offset
sb x19, 877(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0x00000001 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1485 # sub immediate from rs1 to counter offset
sb x26, 1485(x30) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x00000002 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1484 # sub immediate from rs1 to counter offset
sb x8, -1484(x5) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x9, 0x80000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1564 # sub immediate from rs1 to counter offset
sb x9, 1564(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0x80000001 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -894 # sub immediate from rs1 to counter offset
sb x31, 894(x1) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs2
la x10, scratch # base address 
addi x10, x10, 288 # sub immediate from rs1 to counter offset
sb x9, -288(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1404 # sub immediate from rs1 to counter offset
sb x1, -1404(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0xffffffff # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1402 # sub immediate from rs1 to counter offset
sb x20, -1402(x24) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0xfffffffe # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1883 # sub immediate from rs1 to counter offset
sb x7, 1883(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x21, 0x5bbc8872 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1370 # sub immediate from rs1 to counter offset
sb x21, 1370(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs2
la x17, scratch # base address 
addi x17, x17, -363 # sub immediate from rs1 to counter offset
sb x11, 363(x17) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x8, 0x55555555 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1047 # sub immediate from rs1 to counter offset
sb x8, -1047(x2) # perform operation 

# Testcase cp_imm_corners
li x11, 0x48ae5640 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 0 # sub immediate from rs1 to counter offset
sb x11, 0(x18) # perform operation 

# Testcase cp_imm_corners
li x17, 0x7a77a582 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1 # sub immediate from rs1 to counter offset
sb x17, 1(x16) # perform operation 

# Testcase cp_imm_corners
li x12, 0x12c80020 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -2 # sub immediate from rs1 to counter offset
sb x12, 2(x17) # perform operation 

# Testcase cp_imm_corners
li x25, 0xe6437158 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -3 # sub immediate from rs1 to counter offset
sb x25, 3(x9) # perform operation 

# Testcase cp_imm_corners
li x1, 0x9e6daeb3 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
sb x1, 4(x9) # perform operation 

# Testcase cp_imm_corners
li x17, 0x4c3b3466 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -8 # sub immediate from rs1 to counter offset
sb x17, 8(x28) # perform operation 

# Testcase cp_imm_corners
li x14, 0x927dd827 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -16 # sub immediate from rs1 to counter offset
sb x14, 16(x25) # perform operation 

# Testcase cp_imm_corners
li x13, 0xb7e23b9a # initialize rs2
la x7, scratch # base address 
addi x7, x7, -32 # sub immediate from rs1 to counter offset
sb x13, 32(x7) # perform operation 

# Testcase cp_imm_corners
li x8, 0x73d3860d # initialize rs2
la x17, scratch # base address 
addi x17, x17, -64 # sub immediate from rs1 to counter offset
sb x8, 64(x17) # perform operation 

# Testcase cp_imm_corners
li x22, 0x5a6815b8 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -128 # sub immediate from rs1 to counter offset
sb x22, 128(x25) # perform operation 

# Testcase cp_imm_corners
li x7, 0x00dbe867 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -256 # sub immediate from rs1 to counter offset
sb x7, 256(x6) # perform operation 

# Testcase cp_imm_corners
li x5, 0x57ae2ebc # initialize rs2
la x15, scratch # base address 
addi x15, x15, -512 # sub immediate from rs1 to counter offset
sb x5, 512(x15) # perform operation 

# Testcase cp_imm_corners
li x26, 0x469c5aac # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1023 # sub immediate from rs1 to counter offset
sb x26, 1023(x15) # perform operation 

# Testcase cp_imm_corners
li x31, 0x1e649552 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1024 # sub immediate from rs1 to counter offset
sb x31, 1024(x20) # perform operation 

# Testcase cp_imm_corners
li x30, 0x22005720 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1795 # sub immediate from rs1 to counter offset
sb x30, 1795(x9) # perform operation 

# Testcase cp_imm_corners
li x31, 0xb70f2faf # initialize rs2
la x20, scratch # base address 
addi x20, x20, -2047 # sub immediate from rs1 to counter offset
sb x31, 2047(x20) # perform operation 

# Testcase cp_imm_corners
li x8, 0xef57a367 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 2047 # increment rs1 by 2047 
addi x12, x12, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sb x8, -2048(x12) # perform operation 

# Testcase cp_imm_corners
li x10, 0x63f6be93 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 2047 # sub immediate from rs1 to counter offset
sb x10, -2047(x12) # perform operation 

# Testcase cp_imm_corners
li x8, 0x66192493 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 2 # sub immediate from rs1 to counter offset
sb x8, -2(x26) # perform operation 

# Testcase cp_imm_corners
li x24, 0x6deb3198 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1 # sub immediate from rs1 to counter offset
sb x24, -1(x7) # perform operation 

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
addi x1, x1, 597
add x6, x12, x24 # perform first operation
sb x7, -597(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x10, scratch
addi x10, x10, 1608
add x12, x25, x2 # perform first operation
sb x27, -1608(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
addi x13, x13, 537
add x1, x3, x8 # perform first operation
sb x11, -537(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
addi x13, x13, -1051
add x13, x13, x0 # perform first operation
sb x19, 1051(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x11, scratch
addi x11, x11, 42
add x3, x3, x0 # perform first operation
sb x3, -42(x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
addi x30, x30, 0
add x19, x19, x0 # perform first operation
sb x6, 0(x30) # perform second (triggering) operation

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
