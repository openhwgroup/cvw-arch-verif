///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sh.S
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
li x16, 0xf5b679d5 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2004 # sub immediate from rs1 to counter offset
sh x16, -2004(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x21, 0x9501e2b7 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -53 # sub immediate from rs1 to counter offset
sh x21, 53(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x23, 0x319ee573 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -951 # sub immediate from rs1 to counter offset
sh x23, 951(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x11d15f14 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1157 # sub immediate from rs1 to counter offset
sh x12, -1157(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x817b8df9 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 295 # sub immediate from rs1 to counter offset
sh x17, -295(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x48f3b3f4 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -262 # sub immediate from rs1 to counter offset
sh x29, 262(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0xf311fe41 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 990 # sub immediate from rs1 to counter offset
sh x1, -990(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0xd59877e1 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1583 # sub immediate from rs1 to counter offset
sh x14, -1583(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x7502296d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1897 # sub immediate from rs1 to counter offset
sh x5, 1897(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x27, 0x5d2c8b51 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -823 # sub immediate from rs1 to counter offset
sh x27, 823(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0xf7e4349d # initialize rs2
la x11, scratch # base address 
addi x11, x11, 591 # sub immediate from rs1 to counter offset
sh x7, -591(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x28, 0x155676c8 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -739 # sub immediate from rs1 to counter offset
sh x28, 739(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x29, 0x5fbe9ad0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1225 # sub immediate from rs1 to counter offset
sh x29, -1225(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x24bea887 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 665 # sub immediate from rs1 to counter offset
sh x17, -665(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0xf690d206 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1065 # sub immediate from rs1 to counter offset
sh x22, 1065(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x75d70c54 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -2015 # sub immediate from rs1 to counter offset
sh x18, 2015(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x5, 0x0968fcdf # initialize rs2
la x17, scratch # base address 
addi x17, x17, 91 # sub immediate from rs1 to counter offset
sh x5, -91(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x21, 0xe9eef2cc # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1205 # sub immediate from rs1 to counter offset
sh x21, -1205(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0xde8ddeea # initialize rs2
la x19, scratch # base address 
addi x19, x19, -957 # sub immediate from rs1 to counter offset
sh x7, 957(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0x53e870af # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1671 # sub immediate from rs1 to counter offset
sh x14, 1671(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x200a185e # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1901 # sub immediate from rs1 to counter offset
sh x26, -1901(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x0c43e99d # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1432 # sub immediate from rs1 to counter offset
sh x9, -1432(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0x714a3444 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -423 # sub immediate from rs1 to counter offset
sh x7, 423(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x14, 0x958e3c03 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -989 # sub immediate from rs1 to counter offset
sh x14, 989(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x15, 0x155f200b # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1016 # sub immediate from rs1 to counter offset
sh x15, -1016(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0x76d5e6fb # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1422 # sub immediate from rs1 to counter offset
sh x9, -1422(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0xda019812 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 538 # sub immediate from rs1 to counter offset
sh x2, -538(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x9, 0x3fa9e905 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1560 # sub immediate from rs1 to counter offset
sh x9, -1560(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0x7dd55d3b # initialize rs2
la x29, scratch # base address 
addi x29, x29, 581 # sub immediate from rs1 to counter offset
sh x1, -581(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0x05b5a686 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1505 # sub immediate from rs1 to counter offset
sh x25, -1505(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0x64c85289 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -243 # sub immediate from rs1 to counter offset
sh x28, 243(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x25fcef36 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1691 # sub immediate from rs1 to counter offset
sh x0, -1691(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x8b647e3f # initialize rs2
la x13, scratch # base address 
addi x13, x13, 919 # sub immediate from rs1 to counter offset
sh x1, -919(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x8177e6e8 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1174 # sub immediate from rs1 to counter offset
sh x2, -1174(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x58cdcc6b # initialize rs2
la x12, scratch # base address 
addi x12, x12, 792 # sub immediate from rs1 to counter offset
sh x3, -792(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2f79f4e4 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1777 # sub immediate from rs1 to counter offset
sh x4, 1777(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb57e7dde # initialize rs2
la x9, scratch # base address 
addi x9, x9, -19 # sub immediate from rs1 to counter offset
sh x5, 19(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8ef7f005 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sh x6, 0(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa6c7449b # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1727 # sub immediate from rs1 to counter offset
sh x7, -1727(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x537439cc # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1741 # sub immediate from rs1 to counter offset
sh x8, 1741(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xa9659b14 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1365 # sub immediate from rs1 to counter offset
sh x9, 1365(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xbcf8ffca # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1702 # sub immediate from rs1 to counter offset
sh x10, 1702(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x52448b7e # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1355 # sub immediate from rs1 to counter offset
sh x11, -1355(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1b77418c # initialize rs2
la x13, scratch # base address 
addi x13, x13, 78 # sub immediate from rs1 to counter offset
sh x12, -78(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xcf819dad # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1020 # sub immediate from rs1 to counter offset
sh x13, 1020(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x9e33fa5f # initialize rs2
la x26, scratch # base address 
addi x26, x26, -686 # sub immediate from rs1 to counter offset
sh x14, 686(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xd7fd5207 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -890 # sub immediate from rs1 to counter offset
sh x15, 890(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x06f78b77 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1733 # sub immediate from rs1 to counter offset
sh x16, 1733(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xbcd8da61 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 44 # sub immediate from rs1 to counter offset
sh x17, -44(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x2127baf6 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1115 # sub immediate from rs1 to counter offset
sh x18, 1115(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xb10e1b39 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 874 # sub immediate from rs1 to counter offset
sh x19, -874(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xcccc8c2e # initialize rs2
la x15, scratch # base address 
addi x15, x15, 547 # sub immediate from rs1 to counter offset
sh x20, -547(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xf20b70d6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -588 # sub immediate from rs1 to counter offset
sh x21, 588(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x80b33f9a # initialize rs2
la x15, scratch # base address 
addi x15, x15, 765 # sub immediate from rs1 to counter offset
sh x22, -765(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x6f152468 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 264 # sub immediate from rs1 to counter offset
sh x23, -264(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xc8765439 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -2027 # sub immediate from rs1 to counter offset
sh x24, 2027(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x646cd68d # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1645 # sub immediate from rs1 to counter offset
sh x25, -1645(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x5ecd6243 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1298 # sub immediate from rs1 to counter offset
sh x26, -1298(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x3b06fd25 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 788 # sub immediate from rs1 to counter offset
sh x27, -788(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xd4f85b7c # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1179 # sub immediate from rs1 to counter offset
sh x28, -1179(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xb2cb13b7 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1000 # sub immediate from rs1 to counter offset
sh x29, 1000(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x49985fbc # initialize rs2
la x8, scratch # base address 
addi x8, x8, 794 # sub immediate from rs1 to counter offset
sh x30, -794(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xfb96c627 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -499 # sub immediate from rs1 to counter offset
sh x31, 499(x17) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x00000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 622 # sub immediate from rs1 to counter offset
sh x20, -622(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x00000001 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1620 # sub immediate from rs1 to counter offset
sh x7, 1620(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x00000002 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1954 # sub immediate from rs1 to counter offset
sh x21, -1954(x3) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x29, 0x80000000 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 358 # sub immediate from rs1 to counter offset
sh x29, -358(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x20, 0x80000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 694 # sub immediate from rs1 to counter offset
sh x20, -694(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs2
la x30, scratch # base address 
addi x30, x30, 583 # sub immediate from rs1 to counter offset
sh x14, -583(x30) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1492 # sub immediate from rs1 to counter offset
sh x7, 1492(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xffffffff # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1291 # sub immediate from rs1 to counter offset
sh x16, -1291(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0xfffffffe # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1826 # sub immediate from rs1 to counter offset
sh x20, 1826(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1932 # sub immediate from rs1 to counter offset
sh x16, 1932(x24) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs2
la x3, scratch # base address 
addi x3, x3, 980 # sub immediate from rs1 to counter offset
sh x11, -980(x3) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0x55555555 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -40 # sub immediate from rs1 to counter offset
sh x1, 40(x21) # perform operation 

# Testcase cp_imm_corners
li x25, 0x91d85dcc # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sh x25, 0(x24) # perform operation 

# Testcase cp_imm_corners
li x28, 0xcc1ed0da # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1 # sub immediate from rs1 to counter offset
sh x28, 1(x3) # perform operation 

# Testcase cp_imm_corners
li x19, 0xf39ec1d8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2 # sub immediate from rs1 to counter offset
sh x19, 2(x14) # perform operation 

# Testcase cp_imm_corners
li x13, 0x9ba8dceb # initialize rs2
la x21, scratch # base address 
addi x21, x21, -3 # sub immediate from rs1 to counter offset
sh x13, 3(x21) # perform operation 

# Testcase cp_imm_corners
li x18, 0xd330b73d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -4 # sub immediate from rs1 to counter offset
sh x18, 4(x10) # perform operation 

# Testcase cp_imm_corners
li x12, 0xed75f5d6 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -8 # sub immediate from rs1 to counter offset
sh x12, 8(x7) # perform operation 

# Testcase cp_imm_corners
li x31, 0x23191895 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -16 # sub immediate from rs1 to counter offset
sh x31, 16(x2) # perform operation 

# Testcase cp_imm_corners
li x25, 0xf2aa4659 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -32 # sub immediate from rs1 to counter offset
sh x25, 32(x9) # perform operation 

# Testcase cp_imm_corners
li x31, 0x32c1793e # initialize rs2
la x28, scratch # base address 
addi x28, x28, -64 # sub immediate from rs1 to counter offset
sh x31, 64(x28) # perform operation 

# Testcase cp_imm_corners
li x10, 0xc44c0811 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -128 # sub immediate from rs1 to counter offset
sh x10, 128(x17) # perform operation 

# Testcase cp_imm_corners
li x23, 0x9afac659 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -256 # sub immediate from rs1 to counter offset
sh x23, 256(x7) # perform operation 

# Testcase cp_imm_corners
li x9, 0xa2459044 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -512 # sub immediate from rs1 to counter offset
sh x9, 512(x10) # perform operation 

# Testcase cp_imm_corners
li x22, 0x8871f376 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1023 # sub immediate from rs1 to counter offset
sh x22, 1023(x24) # perform operation 

# Testcase cp_imm_corners
li x29, 0x80abb4c2 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1024 # sub immediate from rs1 to counter offset
sh x29, 1024(x3) # perform operation 

# Testcase cp_imm_corners
li x5, 0xff9c1eb7 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1795 # sub immediate from rs1 to counter offset
sh x5, 1795(x19) # perform operation 

# Testcase cp_imm_corners
li x27, 0xa060160a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2047 # sub immediate from rs1 to counter offset
sh x27, 2047(x10) # perform operation 

# Testcase cp_imm_corners
li x6, 0xa14e7a13 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 2047 # increment rs1 by 2047 
addi x15, x15, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sh x6, -2048(x15) # perform operation 

# Testcase cp_imm_corners
li x8, 0x75706b98 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 2047 # sub immediate from rs1 to counter offset
sh x8, -2047(x18) # perform operation 

# Testcase cp_imm_corners
li x14, 0x282fa1dc # initialize rs2
la x12, scratch # base address 
addi x12, x12, 2 # sub immediate from rs1 to counter offset
sh x14, -2(x12) # perform operation 

# Testcase cp_imm_corners
li x8, 0x87f30723 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sh x8, -1(x1) # perform operation 

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
addi x1, x1, 1220
add x19, x24, x9 # perform first operation
sh x11, -1220(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -2035
add x8, x20, x17 # perform first operation
sh x25, 2035(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -2033
add x20, x22, x31 # perform first operation
sh x12, 2033(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, -990
add x21, x21, x0 # perform first operation
sh x1, 990(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x6, scratch
addi x6, x6, -1824
add x14, x14, x0 # perform first operation
sh x14, 1824(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
addi x28, x28, -1273
add x28, x28, x0 # perform first operation
sh x25, 1273(x28) # perform second (triggering) operation

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
