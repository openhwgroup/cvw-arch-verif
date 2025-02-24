///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-lbu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.965743
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xd6c8acfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb19d0e4c # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1497 # sub immediate from rs1 to counter offset
sw x17, 1497 (x27) # store value to put something in memory
lbu x0, 1497(x27) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xa8da1011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xee2ce757 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 341 # sub immediate from rs1 to counter offset
sw x11, -341 (x6) # store value to put something in memory
lbu x1, -341(x6) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xb0e2fe21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa2c2bbcb # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1908 # sub immediate from rs1 to counter offset
sw x15, -1908 (x13) # store value to put something in memory
lbu x2, -1908(x13) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x32dfdf6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x46b0fb80 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1321 # sub immediate from rs1 to counter offset
sw x3, -1321 (x11) # store value to put something in memory
lbu x3, -1321(x11) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x19eb319f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc4ce3d97 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 2019 # sub immediate from rs1 to counter offset
sw x8, -2019 (x16) # store value to put something in memory
lbu x4, -2019(x16) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x080c4ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd6874e97 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -744 # sub immediate from rs1 to counter offset
sw x26, 744 (x22) # store value to put something in memory
lbu x5, 744(x22) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4be8aa6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6b58426c # initialize rs2
la x1, scratch # base address 
addi x1, x1, -490 # sub immediate from rs1 to counter offset
sw x5, 490 (x1) # store value to put something in memory
lbu x6, 490(x1) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x27dfd8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x87ef427f # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1448 # sub immediate from rs1 to counter offset
sw x26, 1448 (x21) # store value to put something in memory
lbu x7, 1448(x21) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2f30525f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xad316de6 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1834 # sub immediate from rs1 to counter offset
sw x23, 1834 (x31) # store value to put something in memory
lbu x8, 1834(x31) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xd7bf4555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf88b6c3b # initialize rs2
la x20, scratch # base address 
addi x20, x20, 730 # sub immediate from rs1 to counter offset
sw x16, -730 (x20) # store value to put something in memory
lbu x9, -730(x20) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x0dbf001a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b2997b2 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 486 # sub immediate from rs1 to counter offset
sw x8, -486 (x31) # store value to put something in memory
lbu x10, -486(x31) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6f4759c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3a5e7215 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -2030 # sub immediate from rs1 to counter offset
sw x2, 2030 (x19) # store value to put something in memory
lbu x11, 2030(x19) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x24f45dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80333ca7 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -558 # sub immediate from rs1 to counter offset
sw x5, 558 (x26) # store value to put something in memory
lbu x12, 558(x26) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd3946ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf6d2eb49 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -369 # sub immediate from rs1 to counter offset
sw x14, 369 (x31) # store value to put something in memory
lbu x13, 369(x31) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x23c69378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xac6c9363 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 538 # sub immediate from rs1 to counter offset
sw x5, -538 (x26) # store value to put something in memory
lbu x14, -538(x26) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x76dc3d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7cb79efe # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1906 # sub immediate from rs1 to counter offset
sw x12, 1906 (x14) # store value to put something in memory
lbu x15, 1906(x14) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0f2f928a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe91e34de # initialize rs2
la x18, scratch # base address 
addi x18, x18, -772 # sub immediate from rs1 to counter offset
sw x28, 772 (x18) # store value to put something in memory
lbu x16, 772(x18) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x746bcfc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc0d5a721 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -212 # sub immediate from rs1 to counter offset
sw x16, 212 (x9) # store value to put something in memory
lbu x17, 212(x9) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xa40e8fd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9bbee701 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -741 # sub immediate from rs1 to counter offset
sw x1, 741 (x31) # store value to put something in memory
lbu x18, 741(x31) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x92423aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xba34dac3 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 697 # sub immediate from rs1 to counter offset
sw x30, -697 (x16) # store value to put something in memory
lbu x19, -697(x16) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xec2a5073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f82d8a4 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 224 # sub immediate from rs1 to counter offset
sw x11, -224 (x2) # store value to put something in memory
lbu x20, -224(x2) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xdb164d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x65c60cd9 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 731 # sub immediate from rs1 to counter offset
sw x19, -731 (x23) # store value to put something in memory
lbu x21, -731(x23) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc65eb45b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x543f2399 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1864 # sub immediate from rs1 to counter offset
sw x2, 1864 (x28) # store value to put something in memory
lbu x22, 1864(x28) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xfb3ec1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd52f2396 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 115 # sub immediate from rs1 to counter offset
sw x17, -115 (x19) # store value to put something in memory
lbu x23, -115(x19) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x7939a56e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x10d4830e # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1656 # sub immediate from rs1 to counter offset
sw x1, -1656 (x4) # store value to put something in memory
lbu x24, -1656(x4) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd0f7285a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0383eabc # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1884 # sub immediate from rs1 to counter offset
sw x29, -1884 (x25) # store value to put something in memory
lbu x25, -1884(x25) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3edcb5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6d10c4fa # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1622 # sub immediate from rs1 to counter offset
sw x27, 1622 (x18) # store value to put something in memory
lbu x26, 1622(x18) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x562dd8e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0814ce2b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -290 # sub immediate from rs1 to counter offset
sw x5, 290 (x14) # store value to put something in memory
lbu x27, 290(x14) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x39c102dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4289fefb # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1557 # sub immediate from rs1 to counter offset
sw x23, -1557 (x31) # store value to put something in memory
lbu x28, -1557(x31) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7aff7c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x866db1fb # initialize rs2
la x8, scratch # base address 
addi x8, x8, -183 # sub immediate from rs1 to counter offset
sw x9, 183 (x8) # store value to put something in memory
lbu x29, 183(x8) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x0f240625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0c538ffc # initialize rs2
la x28, scratch # base address 
addi x28, x28, -145 # sub immediate from rs1 to counter offset
sw x8, 145 (x28) # store value to put something in memory
lbu x30, 145(x28) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xb1194b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x870909f5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -677 # sub immediate from rs1 to counter offset
sw x15, 677 (x13) # store value to put something in memory
lbu x31, 677(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x21, 0xf9c35503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc3b4a148 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -704 # sub immediate from rs1 to counter offset
sw x27, 704 (x1) # store value to put something in memory
lbu x21, 704(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0x04d7d868 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xda09c9ce # initialize rs2
la x2, scratch # base address 
addi x2, x2, -324 # sub immediate from rs1 to counter offset
sw x7, 324 (x2) # store value to put something in memory
lbu x19, 324(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x11, 0x80a7f32b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa1f37513 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1766 # sub immediate from rs1 to counter offset
sw x2, -1766 (x3) # store value to put something in memory
lbu x11, -1766(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0xce71a818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xad7b873c # initialize rs2
la x4, scratch # base address 
addi x4, x4, -207 # sub immediate from rs1 to counter offset
sw x1, 207 (x4) # store value to put something in memory
lbu x25, 207(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x23, 0x33fb4b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x39953c6d # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1098 # sub immediate from rs1 to counter offset
sw x2, 1098 (x5) # store value to put something in memory
lbu x23, 1098(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x23, 0xcfca5d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe7c605cb # initialize rs2
la x6, scratch # base address 
addi x6, x6, -248 # sub immediate from rs1 to counter offset
sw x15, 248 (x6) # store value to put something in memory
lbu x23, 248(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x29, 0x080efa81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x42965ded # initialize rs2
la x7, scratch # base address 
addi x7, x7, 198 # sub immediate from rs1 to counter offset
sw x23, -198 (x7) # store value to put something in memory
lbu x29, -198(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0xf4c57a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1179096d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1220 # sub immediate from rs1 to counter offset
sw x26, 1220 (x8) # store value to put something in memory
lbu x4, 1220(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x6e02c1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc4546765 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
sw x15, 4 (x9) # store value to put something in memory
lbu x5, 4(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0x0a3dbe23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbf81071d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -218 # sub immediate from rs1 to counter offset
sw x8, 218 (x10) # store value to put something in memory
lbu x19, 218(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x0849bd7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3cfb34a8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1731 # sub immediate from rs1 to counter offset
sw x13, -1731 (x11) # store value to put something in memory
lbu x14, -1731(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0xacc4e204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x66c5ed11 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1170 # sub immediate from rs1 to counter offset
sw x6, 1170 (x12) # store value to put something in memory
lbu x31, 1170(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x5d5573d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x354d2248 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 817 # sub immediate from rs1 to counter offset
sw x3, -817 (x13) # store value to put something in memory
lbu x7, -817(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0x45878c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7bfce3c8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1082 # sub immediate from rs1 to counter offset
sw x9, -1082 (x14) # store value to put something in memory
lbu x27, -1082(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x20, 0xd251dae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4d8171e3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1468 # sub immediate from rs1 to counter offset
sw x23, -1468 (x15) # store value to put something in memory
lbu x20, -1468(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0x67b933a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa47eabe8 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -624 # sub immediate from rs1 to counter offset
sw x28, 624 (x16) # store value to put something in memory
lbu x4, 624(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0x7f6e9405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x89e546e1 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1643 # sub immediate from rs1 to counter offset
sw x14, -1643 (x17) # store value to put something in memory
lbu x15, -1643(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0x7896fbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbd519940 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -532 # sub immediate from rs1 to counter offset
sw x2, 532 (x18) # store value to put something in memory
lbu x4, 532(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0x8904fb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x90abd9c9 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -444 # sub immediate from rs1 to counter offset
sw x20, 444 (x19) # store value to put something in memory
lbu x3, 444(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x31, 0x11709b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9b1b905e # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1299 # sub immediate from rs1 to counter offset
sw x7, -1299 (x20) # store value to put something in memory
lbu x31, -1299(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0xdb8b6450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa85c33f8 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 454 # sub immediate from rs1 to counter offset
sw x15, -454 (x21) # store value to put something in memory
lbu x10, -454(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0x9f69e9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2a906767 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 995 # sub immediate from rs1 to counter offset
sw x19, -995 (x22) # store value to put something in memory
lbu x1, -995(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0x5b4bedbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xef90136f # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1732 # sub immediate from rs1 to counter offset
sw x15, 1732 (x23) # store value to put something in memory
lbu x8, 1732(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0xd15b83fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00486652 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1826 # sub immediate from rs1 to counter offset
sw x1, -1826 (x24) # store value to put something in memory
lbu x3, -1826(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0x10270b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x78ac3c99 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1261 # sub immediate from rs1 to counter offset
sw x23, 1261 (x25) # store value to put something in memory
lbu x17, 1261(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x3, 0xc280434c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xab7aa819 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1327 # sub immediate from rs1 to counter offset
sw x22, 1327 (x26) # store value to put something in memory
lbu x3, 1327(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0xb0fb99d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6c66b309 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -201 # sub immediate from rs1 to counter offset
sw x19, 201 (x27) # store value to put something in memory
lbu x3, 201(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x2, 0x536d0382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x37755bf7 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 156 # sub immediate from rs1 to counter offset
sw x10, -156 (x28) # store value to put something in memory
lbu x2, -156(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x9, 0x19295964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x91967d30 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 419 # sub immediate from rs1 to counter offset
sw x21, -419 (x29) # store value to put something in memory
lbu x9, -419(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x41fecb3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1615b588 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -881 # sub immediate from rs1 to counter offset
sw x27, 881 (x30) # store value to put something in memory
lbu x3, 881(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0x7a705992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbdc214af # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1059 # sub immediate from rs1 to counter offset
sw x5, -1059 (x31) # store value to put something in memory
lbu x11, -1059(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0x5a7187a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x00f6e9ef # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x10) # store value to put something in memory
lbu x5, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0xcf487016 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 0 # sub immediate from rs1 to counter offset
sw x30, 0 (x11) # store value to put something in memory
lbu x21, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0xa4fb0893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sw x9, -1 (x22) # store value to put something in memory
lbu x19, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0xf38e19ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x483432d6 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x1) # store value to put something in memory
lbu x16, 0(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0x93cd45b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1 # sub immediate from rs1 to counter offset
sw x14, 1 (x23) # store value to put something in memory
lbu x18, 1(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0xc66cbf32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1 # sub immediate from rs1 to counter offset
sw x23, -1 (x29) # store value to put something in memory
lbu x11, -1(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0x694ce61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6ad0d2b5 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x21) # store value to put something in memory
lbu x14, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0x56b9bb73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -2 # sub immediate from rs1 to counter offset
sw x3, 2 (x5) # store value to put something in memory
lbu x8, 2(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x8be8a6ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1 # sub immediate from rs1 to counter offset
sw x3, -1 (x5) # store value to put something in memory
lbu x23, -1(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x19, 0x8f048ded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3f67f31a # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x24) # store value to put something in memory
lbu x19, 0(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x23, 0x8538416f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000080 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -128 # sub immediate from rs1 to counter offset
sw x7, 128 (x1) # store value to put something in memory
lbu x23, 128(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x20, 0x032e8fcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000080 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sw x19, -1 (x22) # store value to put something in memory
lbu x20, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x20, 0x23a2eb83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8ae5b1cf # initialize rs2
la x28, scratch # base address 
addi x28, x28, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x28) # store value to put something in memory
lbu x20, 0(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x28, 0x2dbe20a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000081 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -129 # sub immediate from rs1 to counter offset
sw x6, 129 (x27) # store value to put something in memory
lbu x28, 129(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x28, 0x6402e2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000081 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sw x11, -1 (x22) # store value to put something in memory
lbu x28, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x13, 0x7151b386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd5469204 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x17) # store value to put something in memory
lbu x13, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x22, 0xca647fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000007f # initialize rs2
la x23, scratch # base address 
addi x23, x23, -127 # sub immediate from rs1 to counter offset
sw x10, 127 (x23) # store value to put something in memory
lbu x22, 127(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x23, 0x0fdd4348 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000007f # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1 # sub immediate from rs1 to counter offset
sw x13, -1 (x29) # store value to put something in memory
lbu x23, -1(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x29, 0xab582129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x257fe2a4 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x21) # store value to put something in memory
lbu x29, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x7, 0x0d093b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000007e # initialize rs2
la x24, scratch # base address 
addi x24, x24, -126 # sub immediate from rs1 to counter offset
sw x11, 126 (x24) # store value to put something in memory
lbu x7, 126(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x23, 0x339cf83d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000007e # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1 # sub immediate from rs1 to counter offset
sw x20, -1 (x8) # store value to put something in memory
lbu x23, -1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x18, 0xba192cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x74e16702 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x25) # store value to put something in memory
lbu x18, 0(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x14, 0xd6ce27cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x000000ff # initialize rs2
la x11, scratch # base address 
addi x11, x11, -255 # sub immediate from rs1 to counter offset
sw x21, 255 (x11) # store value to put something in memory
lbu x14, 255(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x9, 0x105fa5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x000000ff # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1 # sub immediate from rs1 to counter offset
sw x18, -1 (x7) # store value to put something in memory
lbu x9, -1(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x11, 0xbca6e90a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x85aa9de8 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x1) # store value to put something in memory
lbu x11, 0(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x7, 0x82fb4ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000fe # initialize rs2
la x20, scratch # base address 
addi x20, x20, -254 # sub immediate from rs1 to counter offset
sw x17, 254 (x20) # store value to put something in memory
lbu x7, 254(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x4, 0x757bb711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000fe # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1 # sub immediate from rs1 to counter offset
sw x13, -1 (x21) # store value to put something in memory
lbu x4, -1(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x12, 0x7260d2a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2f94dd25 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x11) # store value to put something in memory
lbu x12, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x31, 0x88332d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000055 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -85 # sub immediate from rs1 to counter offset
sw x12, 85 (x20) # store value to put something in memory
lbu x31, 85(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x26, 0xf89e6f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000055 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sw x4, -1 (x9) # store value to put something in memory
lbu x26, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x14, 0xa862287e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x918b786b # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x31) # store value to put something in memory
lbu x14, 0(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x26, 0xd93281b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x000000aa # initialize rs2
la x16, scratch # base address 
addi x16, x16, -170 # sub immediate from rs1 to counter offset
sw x27, 170 (x16) # store value to put something in memory
lbu x26, 170(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x10, 0x93ffd752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x000000aa # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sw x2, -1 (x9) # store value to put something in memory
lbu x10, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x9, 0x633ce3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb560ff8e # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x26) # store value to put something in memory
lbu x9, 0(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x21, 0xe12f8c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000005b # initialize rs2
la x4, scratch # base address 
addi x4, x4, -91 # sub immediate from rs1 to counter offset
sw x28, 91 (x4) # store value to put something in memory
lbu x21, 91(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x15, 0x81087dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000005b # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1 # sub immediate from rs1 to counter offset
sw x16, -1 (x21) # store value to put something in memory
lbu x15, -1(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x11, 0x22e2deda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xddb68cdc # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x6) # store value to put something in memory
lbu x11, 0(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x2, 0x1680a9f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000db # initialize rs2
la x5, scratch # base address 
addi x5, x5, -219 # sub immediate from rs1 to counter offset
sw x12, 219 (x5) # store value to put something in memory
lbu x2, 219(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x22, 0x1d7c19d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000db # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1 # sub immediate from rs1 to counter offset
sw x15, -1 (x31) # store value to put something in memory
lbu x22, -1(x31) # perform operation

# Testcase cp_imm_zero
li x19, 0xb05ce250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xeb9d1c7c # initialize rs2
la x1, scratch # base address 
addi x1, x1, 0 # sub immediate from rs1 to counter offset
sw x7, 0 (x1) # store value to put something in memory
lbu x19, 0(x1) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
lbu x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
