///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sh.S
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
li x16, 0x1d5cf035150208d0 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1001 # sub immediate from rs1 to counter offset
sh x16, -1001(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0x42856846a8edb60d # initialize rs2
la x2, scratch # base address 
addi x2, x2, -23 # sub immediate from rs1 to counter offset
sh x11, 23(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x14, 0x817b8df90233022b # initialize rs2
la x3, scratch # base address 
addi x3, x3, 12 # sub immediate from rs1 to counter offset
sh x14, -12(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0xac0766701c8ac3ad # initialize rs2
la x4, scratch # base address 
addi x4, x4, 990 # sub immediate from rs1 to counter offset
sh x17, -990(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x35ee4058d59877e1 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 948 # sub immediate from rs1 to counter offset
sh x23, -948(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x77e87769a8f7966a # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1645 # sub immediate from rs1 to counter offset
sh x2, 1645(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xa48d5709e9bdf051 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1678 # sub immediate from rs1 to counter offset
sh x6, -1678(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xf7e4349d8177b24b # initialize rs2
la x8, scratch # base address 
addi x8, x8, 591 # sub immediate from rs1 to counter offset
sh x9, -591(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x4fd6b60c8164cbc5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 857 # sub immediate from rs1 to counter offset
sh x13, -857(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x17, 0x83d866376a5739c1 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 665 # sub immediate from rs1 to counter offset
sh x17, -665(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x5, 0xcee4d4f329bca108 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1781 # sub immediate from rs1 to counter offset
sh x5, -1781(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0x6417801539b7e54d # initialize rs2
la x12, scratch # base address 
addi x12, x12, 94 # sub immediate from rs1 to counter offset
sh x18, -94(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x19, 0xcc2d99656d248ffc # initialize rs2
la x13, scratch # base address 
addi x13, x13, 990 # sub immediate from rs1 to counter offset
sh x19, -990(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x19, 0x542816879b6d70ff # initialize rs2
la x14, scratch # base address 
addi x14, x14, 481 # sub immediate from rs1 to counter offset
sh x19, -481(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x86405baa36f97adf # initialize rs2
la x15, scratch # base address 
addi x15, x15, -88 # sub immediate from rs1 to counter offset
sh x14, 88(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x8, 0x714a34447c259537 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 441 # sub immediate from rs1 to counter offset
sh x8, -441(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x22, 0xde13fd1275df3a4b # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1089 # sub immediate from rs1 to counter offset
sh x22, 1089(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0x14ab94ac8766e116 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 328 # sub immediate from rs1 to counter offset
sh x10, -328(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0x0b7fda7207d5f572 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1318 # sub immediate from rs1 to counter offset
sh x8, -1318(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0xda0198125c1d7bfe # initialize rs2
la x20, scratch # base address 
addi x20, x20, -422 # sub immediate from rs1 to counter offset
sh x2, 422(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x1, 0x612cb7887dd55d3b # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1135 # sub immediate from rs1 to counter offset
sh x1, -1135(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0xdc3c38165fe2eb39 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -649 # sub immediate from rs1 to counter offset
sh x7, 649(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x29, 0x7866d7b945f99435 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 261 # sub immediate from rs1 to counter offset
sh x29, -261(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x28, 0xed07146aad6eb725 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -790 # sub immediate from rs1 to counter offset
sh x28, 790(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x26, 0x41b16496d1cb81bd # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1739 # sub immediate from rs1 to counter offset
sh x26, -1739(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x19, 0x8fab5e9e8850800a # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1497 # sub immediate from rs1 to counter offset
sh x19, -1497(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0x7db8eee9b55ba674 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1716 # sub immediate from rs1 to counter offset
sh x17, 1716(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0xa89a35efd31cf2ab # initialize rs2
la x28, scratch # base address 
addi x28, x28, -661 # sub immediate from rs1 to counter offset
sh x11, 661(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x14, 0xae470f0205d59987 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1636 # sub immediate from rs1 to counter offset
sh x14, -1636(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0xe3d849286ea8ecf7 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1902 # sub immediate from rs1 to counter offset
sh x13, -1902(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x3b30691b607ddb62 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 319 # sub immediate from rs1 to counter offset
sh x13, -319(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x25fcef361013d4a8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1412 # sub immediate from rs1 to counter offset
sh x0, -1412(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x15575ee78b647e3f # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1362 # sub immediate from rs1 to counter offset
sh x1, -1362(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x294829adfd20c1a4 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -53 # sub immediate from rs1 to counter offset
sh x2, 53(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x2f79f4e48f762ff3 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1777 # sub immediate from rs1 to counter offset
sh x3, 1777(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x13061109a38cbdcd # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1304 # sub immediate from rs1 to counter offset
sh x4, 1304(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa6c7449bd6af7d41 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1180 # sub immediate from rs1 to counter offset
sh x5, 1180(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1c1cd5bedad5f19e # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1663 # sub immediate from rs1 to counter offset
sh x6, -1663(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x980910a19326002f # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1257 # sub immediate from rs1 to counter offset
sh x7, -1257(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x1828d52a52448b7e # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1641 # sub immediate from rs1 to counter offset
sh x8, 1641(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x6bc553c306f1f765 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 983 # sub immediate from rs1 to counter offset
sh x9, -983(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x3c6dbc07a59cf10a # initialize rs2
la x26, scratch # base address 
addi x26, x26, -519 # sub immediate from rs1 to counter offset
sh x10, 519(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x56bd6b7081ccd45b # initialize rs2
la x17, scratch # base address 
addi x17, x17, -919 # sub immediate from rs1 to counter offset
sh x11, 919(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x3f2ebe4c75ca6c81 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -764 # sub immediate from rs1 to counter offset
sh x12, 764(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x92576993c1bc16c7 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1881 # sub immediate from rs1 to counter offset
sh x13, 1881(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xe52aaa955d851e26 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 145 # sub immediate from rs1 to counter offset
sh x14, -145(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x13ec773da56f4080 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1840 # sub immediate from rs1 to counter offset
sh x15, 1840(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x9ccbaec9eb1665b7 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 709 # sub immediate from rs1 to counter offset
sh x16, -709(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xc63d4141e7f84065 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1011 # sub immediate from rs1 to counter offset
sh x17, 1011(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x013269115c4f2a6c # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1862 # sub immediate from rs1 to counter offset
sh x18, -1862(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x31124a7eb73cc2d3 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1691 # sub immediate from rs1 to counter offset
sh x19, -1691(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xaa101720dd7d54cb # initialize rs2
la x10, scratch # base address 
addi x10, x10, 895 # sub immediate from rs1 to counter offset
sh x20, -895(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xae4ff3757becd1e2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1972 # sub immediate from rs1 to counter offset
sh x21, -1972(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x05e3b0eb26bde9f0 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1770 # sub immediate from rs1 to counter offset
sh x22, -1770(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x792eaa8f6be058f9 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1913 # sub immediate from rs1 to counter offset
sh x23, -1913(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xf519d2f2b1f3cfec # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1953 # sub immediate from rs1 to counter offset
sh x24, 1953(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xaac02ca7ed85f054 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 108 # sub immediate from rs1 to counter offset
sh x25, -108(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x405aa12071637f04 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 469 # sub immediate from rs1 to counter offset
sh x26, -469(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x0b16c9f7b21b9183 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1526 # sub immediate from rs1 to counter offset
sh x27, -1526(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xe9628a637c751435 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1463 # sub immediate from rs1 to counter offset
sh x28, 1463(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xb7a655737dba2b66 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -860 # sub immediate from rs1 to counter offset
sh x29, 860(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xa8a130c5337d41be # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1099 # sub immediate from rs1 to counter offset
sh x30, -1099(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x312ac65e58f09d78 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1509 # sub immediate from rs1 to counter offset
sh x31, 1509(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x0000000000000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1699 # sub immediate from rs1 to counter offset
sh x20, -1699(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x0000000000000001 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -153 # sub immediate from rs1 to counter offset
sh x15, 153(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x0000000000000002 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 643 # sub immediate from rs1 to counter offset
sh x11, -643(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -992 # sub immediate from rs1 to counter offset
sh x29, 992(x23) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 476 # sub immediate from rs1 to counter offset
sh x15, -476(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1854 # sub immediate from rs1 to counter offset
sh x17, 1854(x7) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1340 # sub immediate from rs1 to counter offset
sh x3, -1340(x17) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs2
la x24, scratch # base address 
addi x24, x24, -585 # sub immediate from rs1 to counter offset
sh x21, 585(x24) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1778 # sub immediate from rs1 to counter offset
sh x2, -1778(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 454 # sub immediate from rs1 to counter offset
sh x7, -454(x22) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x26, scratch # base address 
addi x26, x26, -391 # sub immediate from rs1 to counter offset
sh x6, 391(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1684 # sub immediate from rs1 to counter offset
sh x13, 1684(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1847 # sub immediate from rs1 to counter offset
sh x9, 1847(x23) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs2
la x16, scratch # base address 
addi x16, x16, -401 # sub immediate from rs1 to counter offset
sh x15, 401(x16) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 758 # sub immediate from rs1 to counter offset
sh x19, -758(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x3, 0x0000000100000001 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1413 # sub immediate from rs1 to counter offset
sh x3, 1413(x2) # perform operation 

# Testcase cp_imm_corners
li x25, 0xdf0c3b19dda1eefa # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sh x25, 0(x24) # perform operation 

# Testcase cp_imm_corners
li x17, 0xdfbf56583d49e2fb # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1 # sub immediate from rs1 to counter offset
sh x17, 1(x19) # perform operation 

# Testcase cp_imm_corners
li x20, 0x2a8612db928ec444 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -2 # sub immediate from rs1 to counter offset
sh x20, 2(x17) # perform operation 

# Testcase cp_imm_corners
li x12, 0xe9c248e932335870 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -3 # sub immediate from rs1 to counter offset
sh x12, 3(x18) # perform operation 

# Testcase cp_imm_corners
li x5, 0xc464eaf7fac731b7 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -4 # sub immediate from rs1 to counter offset
sh x5, 4(x28) # perform operation 

# Testcase cp_imm_corners
li x21, 0x57166e7628e52ca4 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -8 # sub immediate from rs1 to counter offset
sh x21, 8(x25) # perform operation 

# Testcase cp_imm_corners
li x20, 0x9b6bff9df1380775 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -16 # sub immediate from rs1 to counter offset
sh x20, 16(x30) # perform operation 

# Testcase cp_imm_corners
li x9, 0xa2459044bbf79f2e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -32 # sub immediate from rs1 to counter offset
sh x9, 32(x10) # perform operation 

# Testcase cp_imm_corners
li x12, 0x8871f376d20dc04a # initialize rs2
la x20, scratch # base address 
addi x20, x20, -64 # sub immediate from rs1 to counter offset
sh x12, 64(x20) # perform operation 

# Testcase cp_imm_corners
li x30, 0xb87c8af3f6955a9b # initialize rs2
la x18, scratch # base address 
addi x18, x18, -128 # sub immediate from rs1 to counter offset
sh x30, 128(x18) # perform operation 

# Testcase cp_imm_corners
li x6, 0x026cce213f72bafe # initialize rs2
la x19, scratch # base address 
addi x19, x19, -256 # sub immediate from rs1 to counter offset
sh x6, 256(x19) # perform operation 

# Testcase cp_imm_corners
li x28, 0xd9cbd8685f26a785 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -512 # sub immediate from rs1 to counter offset
sh x28, 512(x6) # perform operation 

# Testcase cp_imm_corners
li x12, 0x43d0d81b282fa1dc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1023 # sub immediate from rs1 to counter offset
sh x12, 1023(x9) # perform operation 

# Testcase cp_imm_corners
li x8, 0x45802d7475ebc337 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1024 # sub immediate from rs1 to counter offset
sh x8, 1024(x1) # perform operation 

# Testcase cp_imm_corners
li x24, 0xb9cf4f86b9a39c82 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1795 # sub immediate from rs1 to counter offset
sh x24, 1795(x12) # perform operation 

# Testcase cp_imm_corners
li x28, 0x4a40fbef087e925e # initialize rs2
la x17, scratch # base address 
addi x17, x17, -2047 # sub immediate from rs1 to counter offset
sh x28, 2047(x17) # perform operation 

# Testcase cp_imm_corners
li x18, 0x20baa56b03e22629 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2047 # increment rs1 by 2047 
addi x1, x1, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sh x18, -2048(x1) # perform operation 

# Testcase cp_imm_corners
li x15, 0x4037d3a0d54adb5b # initialize rs2
la x24, scratch # base address 
addi x24, x24, 2047 # sub immediate from rs1 to counter offset
sh x15, -2047(x24) # perform operation 

# Testcase cp_imm_corners
li x20, 0xeaefbadf88173728 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2 # sub immediate from rs1 to counter offset
sh x20, -2(x1) # perform operation 

# Testcase cp_imm_corners
li x10, 0xa3c560f0ce0da3a6 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1 # sub immediate from rs1 to counter offset
sh x10, -1(x15) # perform operation 

# Testcase cp_gpr/fpr_hazard nohaz test
la x10, scratch
addi x10, x10, -1960
add x16, x24, x9 # perform first operation
sh x27, 1960(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
addi x20, x20, 374
add x1, x17, x24 # perform first operation
sh x19, -374(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
addi x3, x3, -422
add x2, x27, x17 # perform first operation
sh x29, 422(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
addi x7, x7, -220
add x1, x1, x0 # perform first operation
sh x14, 220(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
addi x28, x28, 108
add x21, x21, x0 # perform first operation
sh x21, -108(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
addi x17, x17, -1106
add x13, x13, x0 # perform first operation
sh x21, 1106(x17) # perform second (triggering) operation

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
