///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sb.S
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
li x15, 0xd10af3ae6fb3ac64 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1103 # sub immediate from rs1 to counter offset
sb x15, 1103(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0xb0b4ffc5d7d4a354 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1611 # sub immediate from rs1 to counter offset
sb x23, -1611(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0xd431bfc197d714c5 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -707 # sub immediate from rs1 to counter offset
sb x12, 707(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x37062cbf137e8bfd # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1931 # sub immediate from rs1 to counter offset
sb x11, 1931(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x7d4a7492dbe871a2 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 712 # sub immediate from rs1 to counter offset
sb x2, -712(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x43c6a0ead303d589 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 358 # sub immediate from rs1 to counter offset
sb x8, -358(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xbe4635057bca2468 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 250 # sub immediate from rs1 to counter offset
sb x8, -250(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0xcde7b335da85fac1 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -960 # sub immediate from rs1 to counter offset
sb x7, 960(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0xde94a0955d0c3e81 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1769 # sub immediate from rs1 to counter offset
sb x5, 1769(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0x96c21637f580af86 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -334 # sub immediate from rs1 to counter offset
sb x19, 334(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x9d89e960b381fa8d # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1194 # sub immediate from rs1 to counter offset
sb x27, 1194(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0x4c076da252c6b964 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 953 # sub immediate from rs1 to counter offset
sb x6, -953(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x19, 0x6414f6ac5dbb7832 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1233 # sub immediate from rs1 to counter offset
sb x19, 1233(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0xb39ab081a7569ce0 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1812 # sub immediate from rs1 to counter offset
sb x10, -1812(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xc20f7df9571c2d33 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1980 # sub immediate from rs1 to counter offset
sb x14, -1980(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x14, 0x49ddddc6cc475993 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -276 # sub immediate from rs1 to counter offset
sb x14, 276(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0xa397dd618d860a1f # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1181 # sub immediate from rs1 to counter offset
sb x10, 1181(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x3, 0xa486158729d1d4dd # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1033 # sub immediate from rs1 to counter offset
sb x3, 1033(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0x4d29f78d090aae2c # initialize rs2
la x19, scratch # base address 
addi x19, x19, -563 # sub immediate from rs1 to counter offset
sb x29, 563(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x13, 0x3b72d46a783f5bc8 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 2034 # sub immediate from rs1 to counter offset
sb x13, -2034(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0xeeebeb72625e490a # initialize rs2
la x21, scratch # base address 
addi x21, x21, -833 # sub immediate from rs1 to counter offset
sb x26, 833(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0x3088629a98148c86 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1219 # sub immediate from rs1 to counter offset
sb x8, 1219(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x24, 0x929a7f38e78da5ed # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1905 # sub immediate from rs1 to counter offset
sb x24, -1905(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0x142ec8ec74695f98 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1931 # sub immediate from rs1 to counter offset
sb x20, -1931(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0x788edef5297f3752 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1495 # sub immediate from rs1 to counter offset
sb x11, -1495(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x16, 0x1c7be8343296dc79 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -682 # sub immediate from rs1 to counter offset
sb x16, 682(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0xd779ee3ee7c22503 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -985 # sub immediate from rs1 to counter offset
sb x30, 985(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0x815703697b02e849 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -704 # sub immediate from rs1 to counter offset
sb x19, 704(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x30, 0x69655d1c88eb616f # initialize rs2
la x29, scratch # base address 
addi x29, x29, 166 # sub immediate from rs1 to counter offset
sb x30, -166(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x26, 0x4f8d8fc3d80783c5 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1686 # sub immediate from rs1 to counter offset
sb x26, 1686(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x22, 0x52a3bd063078a09a # initialize rs2
la x31, scratch # base address 
addi x31, x31, 391 # sub immediate from rs1 to counter offset
sb x22, -391(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xfcd8c7a49578cb00 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1061 # sub immediate from rs1 to counter offset
sb x0, 1061(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x0b898a99dfe67374 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1009 # sub immediate from rs1 to counter offset
sb x1, -1009(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x9e3ebcafb4deebb1 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -2013 # sub immediate from rs1 to counter offset
sb x2, 2013(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x73b0f7fd2a6b987d # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1339 # sub immediate from rs1 to counter offset
sb x3, -1339(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x768eb49802082b4a # initialize rs2
la x13, scratch # base address 
addi x13, x13, 235 # sub immediate from rs1 to counter offset
sb x4, -235(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbff110c26f76cbf9 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1646 # sub immediate from rs1 to counter offset
sb x5, 1646(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc5189ff9cf26039a # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1013 # sub immediate from rs1 to counter offset
sb x6, -1013(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x118b0d6f7b65e704 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1651 # sub immediate from rs1 to counter offset
sb x7, -1651(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd786156450f6b492 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -510 # sub immediate from rs1 to counter offset
sb x8, 510(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xedc259e8ebec3361 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1187 # sub immediate from rs1 to counter offset
sb x9, 1187(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xd466f6e615111f1b # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1689 # sub immediate from rs1 to counter offset
sb x10, -1689(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x0282a17acb595c7c # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1963 # sub immediate from rs1 to counter offset
sb x11, 1963(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xf9ec8e30ddf9d25c # initialize rs2
la x4, scratch # base address 
addi x4, x4, -57 # sub immediate from rs1 to counter offset
sb x12, 57(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xcaf6ab462fa3da90 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -666 # sub immediate from rs1 to counter offset
sb x13, 666(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x78474e2a2944b28f # initialize rs2
la x4, scratch # base address 
addi x4, x4, 736 # sub immediate from rs1 to counter offset
sb x14, -736(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xe95e5306f38b6090 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1838 # sub immediate from rs1 to counter offset
sb x15, -1838(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xfa0a8f2c552c2f3c # initialize rs2
la x30, scratch # base address 
addi x30, x30, 741 # sub immediate from rs1 to counter offset
sb x16, -741(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x529750bc316a4506 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -935 # sub immediate from rs1 to counter offset
sb x17, 935(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x11542caee6b0acbe # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1071 # sub immediate from rs1 to counter offset
sb x18, 1071(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x5fd4d787f99137b6 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1037 # sub immediate from rs1 to counter offset
sb x19, -1037(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x256b8c95b06590ea # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1426 # sub immediate from rs1 to counter offset
sb x20, 1426(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x91ac62518f5a013b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1203 # sub immediate from rs1 to counter offset
sb x21, 1203(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x96d2700daa4febd8 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -154 # sub immediate from rs1 to counter offset
sb x22, 154(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x56d3618fd7645843 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1817 # sub immediate from rs1 to counter offset
sb x23, -1817(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x0fedb53f102e8a07 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 275 # sub immediate from rs1 to counter offset
sb x24, -275(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x0fb7cef1048bebe6 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1541 # sub immediate from rs1 to counter offset
sb x25, -1541(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xb88f32de83f78172 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1202 # sub immediate from rs1 to counter offset
sb x26, 1202(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x0697aa130c4a84f1 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 784 # sub immediate from rs1 to counter offset
sb x27, -784(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x64092e14af854ec7 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -941 # sub immediate from rs1 to counter offset
sb x28, 941(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xa3d018400d8024f1 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 132 # sub immediate from rs1 to counter offset
sb x29, -132(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x9fc5f8848a5f496b # initialize rs2
la x18, scratch # base address 
addi x18, x18, -477 # sub immediate from rs1 to counter offset
sb x30, 477(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xa16d521624c60fa4 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -288 # sub immediate from rs1 to counter offset
sb x31, 288(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x0000000000000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1943 # sub immediate from rs1 to counter offset
sb x19, 1943(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x0000000000000001 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1485 # sub immediate from rs1 to counter offset
sb x9, 1485(x22) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x0000000000000002 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1484 # sub immediate from rs1 to counter offset
sb x3, -1484(x17) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -894 # sub immediate from rs1 to counter offset
sb x30, 894(x17) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -505 # sub immediate from rs1 to counter offset
sb x10, 505(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, 482 # sub immediate from rs1 to counter offset
sb x25, -482(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1437 # sub immediate from rs1 to counter offset
sb x14, -1437(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1965 # sub immediate from rs1 to counter offset
sb x3, 1965(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1999 # sub immediate from rs1 to counter offset
sb x8, -1999(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x17, 0x5bbc887763ae86f2 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1365 # sub immediate from rs1 to counter offset
sb x17, -1365(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1415 # sub immediate from rs1 to counter offset
sb x1, 1415(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1642 # sub immediate from rs1 to counter offset
sb x26, -1642(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1933 # sub immediate from rs1 to counter offset
sb x11, -1933(x1) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1565 # sub immediate from rs1 to counter offset
sb x22, -1565(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x0000000100000000 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1003 # sub immediate from rs1 to counter offset
sb x11, 1003(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x7, 0x0000000100000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -862 # sub immediate from rs1 to counter offset
sb x7, 862(x15) # perform operation 

# Testcase cp_imm_corners
li x11, 0x5c7524fb8901a0ec # initialize rs2
la x18, scratch # base address 
addi x18, x18, 0 # sub immediate from rs1 to counter offset
sb x11, 0(x18) # perform operation 

# Testcase cp_imm_corners
li x19, 0xbfde198c87191592 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
sb x19, 1(x14) # perform operation 

# Testcase cp_imm_corners
li x12, 0x12c800201733f3b4 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -2 # sub immediate from rs1 to counter offset
sb x12, 2(x17) # perform operation 

# Testcase cp_imm_corners
li x22, 0x45396afc12e839ab # initialize rs2
la x25, scratch # base address 
addi x25, x25, -3 # sub immediate from rs1 to counter offset
sb x22, 3(x25) # perform operation 

# Testcase cp_imm_corners
li x29, 0x3bc75a46a0a7ea98 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -4 # sub immediate from rs1 to counter offset
sb x29, 4(x26) # perform operation 

# Testcase cp_imm_corners
li x6, 0xa4ecf7a982710dbd # initialize rs2
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
sb x6, 8(x14) # perform operation 

# Testcase cp_imm_corners
li x3, 0xa7cd8df57b0895ba # initialize rs2
la x19, scratch # base address 
addi x19, x19, -16 # sub immediate from rs1 to counter offset
sb x3, 16(x19) # perform operation 

# Testcase cp_imm_corners
li x9, 0x7135b07a73d3860d # initialize rs2
la x18, scratch # base address 
addi x18, x18, -32 # sub immediate from rs1 to counter offset
sb x9, 32(x18) # perform operation 

# Testcase cp_imm_corners
li x25, 0x258ef87a74e6690d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -64 # sub immediate from rs1 to counter offset
sb x25, 64(x9) # perform operation 

# Testcase cp_imm_corners
li x2, 0x8d42b0f32d7bd483 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -128 # sub immediate from rs1 to counter offset
sb x2, 128(x8) # perform operation 

# Testcase cp_imm_corners
li x4, 0x49778f7e99509d2c # initialize rs2
la x21, scratch # base address 
addi x21, x21, -256 # sub immediate from rs1 to counter offset
sb x4, 256(x21) # perform operation 

# Testcase cp_imm_corners
li x20, 0xd7344cd0e6f3af70 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -512 # sub immediate from rs1 to counter offset
sb x20, 512(x1) # perform operation 

# Testcase cp_imm_corners
li x4, 0x80ceb276876d080b # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1023 # sub immediate from rs1 to counter offset
sb x4, 1023(x26) # perform operation 

# Testcase cp_imm_corners
li x10, 0x5ca963114ae5afa2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1024 # sub immediate from rs1 to counter offset
sb x10, 1024(x12) # perform operation 

# Testcase cp_imm_corners
li x29, 0xae17f69e8f074708 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1795 # sub immediate from rs1 to counter offset
sb x29, 1795(x24) # perform operation 

# Testcase cp_imm_corners
li x19, 0x6faa799870694422 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -2047 # sub immediate from rs1 to counter offset
sb x19, 2047(x28) # perform operation 

# Testcase cp_imm_corners
li x1, 0x8fea06fc8c779201 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 2047 # increment rs1 by 2047 
addi x29, x29, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sb x1, -2048(x29) # perform operation 

# Testcase cp_imm_corners
li x10, 0xf4726d951092a56b # initialize rs2
la x2, scratch # base address 
addi x2, x2, 2047 # sub immediate from rs1 to counter offset
sb x10, -2047(x2) # perform operation 

# Testcase cp_imm_corners
li x9, 0x89527cdf59c3157b # initialize rs2
la x29, scratch # base address 
addi x29, x29, 2 # sub immediate from rs1 to counter offset
sb x9, -2(x29) # perform operation 

# Testcase cp_imm_corners
li x4, 0x37e43ca5844bc9b4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1 # sub immediate from rs1 to counter offset
sb x4, -1(x14) # perform operation 

# Testcase cp_gpr/fpr_hazard nohaz test
la x27, scratch
addi x27, x27, 2039
add x8, x12, x24 # perform first operation
sb x15, -2039(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
addi x17, x17, 1097
add x18, x24, x8 # perform first operation
sb x4, -1097(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x18, scratch
addi x18, x18, -1722
add x7, x28, x15 # perform first operation
sb x17, 1722(x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
addi x31, x31, -684
add x31, x31, x0 # perform first operation
sb x13, 684(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
addi x21, x21, -766
add x30, x30, x0 # perform first operation
sb x30, 766(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x11, scratch
addi x11, x11, 180
add x29, x29, x0 # perform first operation
sb x17, -180(x11) # perform second (triggering) operation

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
