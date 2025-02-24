///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-lb.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.964408
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x25018e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xeb8befd9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1037 # sub immediate from rs1 to counter offset
sw x28, -1037 (x15) # store value to put something in memory
lb x0, -1037(x15) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x1a3673c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x39463d82 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1273 # sub immediate from rs1 to counter offset
sw x5, 1273 (x13) # store value to put something in memory
lb x1, 1273(x13) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8801af00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x99b88a0c # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1995 # sub immediate from rs1 to counter offset
sw x25, -1995 (x5) # store value to put something in memory
lb x2, -1995(x5) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8c0263e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbde68579 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1663 # sub immediate from rs1 to counter offset
sw x24, 1663 (x16) # store value to put something in memory
lb x3, 1663(x16) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x374ae6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x937f1050 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1551 # sub immediate from rs1 to counter offset
sw x8, 1551 (x3) # store value to put something in memory
lb x4, 1551(x3) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x0f721d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe670ff13 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -998 # sub immediate from rs1 to counter offset
sw x11, 998 (x28) # store value to put something in memory
lb x5, 998(x28) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xfb0b77e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9e776ee3 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1419 # sub immediate from rs1 to counter offset
sw x3, 1419 (x30) # store value to put something in memory
lb x6, 1419(x30) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x1e001f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x64b208d7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 220 # sub immediate from rs1 to counter offset
sw x10, -220 (x9) # store value to put something in memory
lb x7, -220(x9) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd1495ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa894b82c # initialize rs2
la x7, scratch # base address 
addi x7, x7, -553 # sub immediate from rs1 to counter offset
sw x17, 553 (x7) # store value to put something in memory
lb x8, 553(x7) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x32426574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9d0a4664 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -161 # sub immediate from rs1 to counter offset
sw x21, 161 (x1) # store value to put something in memory
lb x9, 161(x1) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xa7474819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x47add318 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1644 # sub immediate from rs1 to counter offset
sw x20, -1644 (x7) # store value to put something in memory
lb x10, -1644(x7) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x042e1442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb91ff966 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1838 # sub immediate from rs1 to counter offset
sw x16, 1838 (x10) # store value to put something in memory
lb x11, 1838(x10) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xec5f1b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ec37e06 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -158 # sub immediate from rs1 to counter offset
sw x21, 158 (x13) # store value to put something in memory
lb x12, 158(x13) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x29185d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb23cbd3b # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1281 # sub immediate from rs1 to counter offset
sw x2, -1281 (x4) # store value to put something in memory
lb x13, -1281(x4) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1a6d6504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb5dba200 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 561 # sub immediate from rs1 to counter offset
sw x2, -561 (x21) # store value to put something in memory
lb x14, -561(x21) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x84066d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0d29a273 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1306 # sub immediate from rs1 to counter offset
sw x5, 1306 (x31) # store value to put something in memory
lb x15, 1306(x31) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x45dfde68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x97927cf7 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -957 # sub immediate from rs1 to counter offset
sw x12, 957 (x27) # store value to put something in memory
lb x16, 957(x27) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x29460716 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd5ac561e # initialize rs2
la x20, scratch # base address 
addi x20, x20, -696 # sub immediate from rs1 to counter offset
sw x18, 696 (x20) # store value to put something in memory
lb x17, 696(x20) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x54b9789f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc6e473c6 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1716 # sub immediate from rs1 to counter offset
sw x11, 1716 (x27) # store value to put something in memory
lb x18, 1716(x27) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8c1ba1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2df27323 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -896 # sub immediate from rs1 to counter offset
sw x23, 896 (x6) # store value to put something in memory
lb x19, 896(x6) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x364ced18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf76968fa # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1427 # sub immediate from rs1 to counter offset
sw x24, 1427 (x27) # store value to put something in memory
lb x20, 1427(x27) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x6cd5c7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd888504b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -404 # sub immediate from rs1 to counter offset
sw x10, 404 (x11) # store value to put something in memory
lb x21, 404(x11) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xfc6cc2c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc782beb4 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1294 # sub immediate from rs1 to counter offset
sw x19, -1294 (x23) # store value to put something in memory
lb x22, -1294(x23) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xe9609a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb3e040a4 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1799 # sub immediate from rs1 to counter offset
sw x23, -1799 (x24) # store value to put something in memory
lb x23, -1799(x24) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x343b9bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x77673ef2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 780 # sub immediate from rs1 to counter offset
sw x7, -780 (x12) # store value to put something in memory
lb x24, -780(x12) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xa9a02b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x68dc237e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1651 # sub immediate from rs1 to counter offset
sw x23, 1651 (x9) # store value to put something in memory
lb x25, 1651(x9) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xbd512714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe55d814c # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1929 # sub immediate from rs1 to counter offset
sw x6, -1929 (x22) # store value to put something in memory
lb x26, -1929(x22) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xb3c689b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4147e1a1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -604 # sub immediate from rs1 to counter offset
sw x26, 604 (x7) # store value to put something in memory
lb x27, 604(x7) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe66c50c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x60577495 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 726 # sub immediate from rs1 to counter offset
sw x17, -726 (x20) # store value to put something in memory
lb x28, -726(x20) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1bc9b3ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x540dc451 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1325 # sub immediate from rs1 to counter offset
sw x4, -1325 (x13) # store value to put something in memory
lb x29, -1325(x13) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3a862f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x69129006 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 745 # sub immediate from rs1 to counter offset
sw x18, -745 (x29) # store value to put something in memory
lb x30, -745(x29) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x854673d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bc713de # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1785 # sub immediate from rs1 to counter offset
sw x4, -1785 (x16) # store value to put something in memory
lb x31, -1785(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x819745a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5c258df3 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -697 # sub immediate from rs1 to counter offset
sw x9, 697 (x1) # store value to put something in memory
lb x25, 697(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0x78c71fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bfc4e82 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 88 # sub immediate from rs1 to counter offset
sw x17, -88 (x2) # store value to put something in memory
lb x11, -88(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x13, 0x9172c95c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x92c227c6 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -428 # sub immediate from rs1 to counter offset
sw x4, 428 (x3) # store value to put something in memory
lb x13, 428(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x22, 0x1ef57de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x633f3c56 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -934 # sub immediate from rs1 to counter offset
sw x19, 934 (x4) # store value to put something in memory
lb x22, 934(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0xee8cd20c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa1461f1b # initialize rs2
la x5, scratch # base address 
addi x5, x5, -410 # sub immediate from rs1 to counter offset
sw x6, 410 (x5) # store value to put something in memory
lb x1, 410(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x8, 0x4e93005a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x70b611ba # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1710 # sub immediate from rs1 to counter offset
sw x14, -1710 (x6) # store value to put something in memory
lb x8, -1710(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x26, 0xc70ef31e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x541b5d4f # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1947 # sub immediate from rs1 to counter offset
sw x11, -1947 (x7) # store value to put something in memory
lb x26, -1947(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x27d34049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4c00514e # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1049 # sub immediate from rs1 to counter offset
sw x1, -1049 (x8) # store value to put something in memory
lb x12, -1049(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x7, 0x46fb70a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6ab1bfcf # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1879 # sub immediate from rs1 to counter offset
sw x17, 1879 (x9) # store value to put something in memory
lb x7, 1879(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x26, 0xe43bd65d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6d9dd769 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1733 # sub immediate from rs1 to counter offset
sw x29, -1733 (x10) # store value to put something in memory
lb x26, -1733(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0x47390169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe452e3fc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -930 # sub immediate from rs1 to counter offset
sw x7, 930 (x11) # store value to put something in memory
lb x28, 930(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0x6ca97e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x90e49237 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1776 # sub immediate from rs1 to counter offset
sw x17, -1776 (x12) # store value to put something in memory
lb x19, -1776(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x18, 0x8d5edb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x808120af # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1786 # sub immediate from rs1 to counter offset
sw x1, -1786 (x13) # store value to put something in memory
lb x18, -1786(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0x01640685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdcc53f02 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1262 # sub immediate from rs1 to counter offset
sw x15, 1262 (x14) # store value to put something in memory
lb x6, 1262(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0x554170a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x56f729a7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1072 # sub immediate from rs1 to counter offset
sw x24, -1072 (x15) # store value to put something in memory
lb x13, -1072(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x11, 0x89816490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe19aa92c # initialize rs2
la x16, scratch # base address 
addi x16, x16, -341 # sub immediate from rs1 to counter offset
sw x7, 341 (x16) # store value to put something in memory
lb x11, 341(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x29, 0x880238b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0b4a238e # initialize rs2
la x17, scratch # base address 
addi x17, x17, -11 # sub immediate from rs1 to counter offset
sw x12, 11 (x17) # store value to put something in memory
lb x29, 11(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x5, 0x4542ad7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc9dca196 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 995 # sub immediate from rs1 to counter offset
sw x24, -995 (x18) # store value to put something in memory
lb x5, -995(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0x176988d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5c519d8a # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1292 # sub immediate from rs1 to counter offset
sw x26, -1292 (x19) # store value to put something in memory
lb x15, -1292(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0x05c9be7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4c5fbe60 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1983 # sub immediate from rs1 to counter offset
sw x14, 1983 (x20) # store value to put something in memory
lb x24, 1983(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x27, 0x514c49f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb2568e47 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -927 # sub immediate from rs1 to counter offset
sw x22, 927 (x21) # store value to put something in memory
lb x27, 927(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0x158f2e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd6c860bb # initialize rs2
la x22, scratch # base address 
addi x22, x22, -82 # sub immediate from rs1 to counter offset
sw x21, 82 (x22) # store value to put something in memory
lb x1, 82(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x17, 0xf40e7aec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa1f3f60e # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1486 # sub immediate from rs1 to counter offset
sw x26, -1486 (x23) # store value to put something in memory
lb x17, -1486(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x13, 0x45a6ef3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1f0d9253 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1228 # sub immediate from rs1 to counter offset
sw x4, 1228 (x24) # store value to put something in memory
lb x13, 1228(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x3, 0xcbd39af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80605300 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -346 # sub immediate from rs1 to counter offset
sw x9, 346 (x25) # store value to put something in memory
lb x3, 346(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x3, 0xb3d348c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7dd64ff1 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 772 # sub immediate from rs1 to counter offset
sw x11, -772 (x26) # store value to put something in memory
lb x3, -772(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0x58f740d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc1d15231 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1067 # sub immediate from rs1 to counter offset
sw x13, 1067 (x27) # store value to put something in memory
lb x9, 1067(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x6, 0x33150f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x85f02748 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1832 # sub immediate from rs1 to counter offset
sw x20, -1832 (x28) # store value to put something in memory
lb x6, -1832(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0xc64f109d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xae439938 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1651 # sub immediate from rs1 to counter offset
sw x10, 1651 (x29) # store value to put something in memory
lb x21, 1651(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0xca0ce3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x19fe5d32 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1113 # sub immediate from rs1 to counter offset
sw x1, 1113 (x30) # store value to put something in memory
lb x12, 1113(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x4, 0x67f44d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xca930c86 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1292 # sub immediate from rs1 to counter offset
sw x6, 1292 (x31) # store value to put something in memory
lb x4, 1292(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0x6fc046ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe2b9b2f4 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x31) # store value to put something in memory
lb x13, 0(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x24e7bcd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sw x5, 0 (x12) # store value to put something in memory
lb x28, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x5fcda46e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sw x15, -1 (x26) # store value to put something in memory
lb x18, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x6bc3c72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2fd0f265 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x9) # store value to put something in memory
lb x2, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0xb65c70f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1 # sub immediate from rs1 to counter offset
sw x29, 1 (x22) # store value to put something in memory
lb x6, 1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0xb6acb1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sw x2, -1 (x10) # store value to put something in memory
lb x4, -1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x850c860e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf044135b # initialize rs2
la x27, scratch # base address 
addi x27, x27, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x27) # store value to put something in memory
lb x31, 0(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x6f6f1d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -2 # sub immediate from rs1 to counter offset
sw x13, 2 (x31) # store value to put something in memory
lb x11, 2(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xa38ca52e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1 # sub immediate from rs1 to counter offset
sw x8, -1 (x17) # store value to put something in memory
lb x2, -1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x5, 0x1087da1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6472ff03 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x25) # store value to put something in memory
lb x5, 0(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x26, 0xd8f00928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000080 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -128 # sub immediate from rs1 to counter offset
sw x29, 128 (x24) # store value to put something in memory
lb x26, 128(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x8, 0x5616a0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000080 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sw x13, -1 (x1) # store value to put something in memory
lb x8, -1(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x14, 0x0a1d22f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcf10c107 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x8) # store value to put something in memory
lb x14, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x29, 0x652918c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000081 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -129 # sub immediate from rs1 to counter offset
sw x27, 129 (x25) # store value to put something in memory
lb x29, 129(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x15, 0xdaad3497 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000081 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1 # sub immediate from rs1 to counter offset
sw x17, -1 (x25) # store value to put something in memory
lb x15, -1(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x11, 0xf3c9b982 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xeb8e313d # initialize rs2
la x3, scratch # base address 
addi x3, x3, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x3) # store value to put something in memory
lb x11, 0(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x1, 0x7921b59a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000007f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -127 # sub immediate from rs1 to counter offset
sw x30, 127 (x13) # store value to put something in memory
lb x1, 127(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x7, 0x068769d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000007f # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sw x30, -1 (x22) # store value to put something in memory
lb x7, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x2, 0x0a4bd301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x32d6d52d # initialize rs2
la x11, scratch # base address 
addi x11, x11, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x11) # store value to put something in memory
lb x2, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x26, 0x3a6c105b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000007e # initialize rs2
la x7, scratch # base address 
addi x7, x7, -126 # sub immediate from rs1 to counter offset
sw x25, 126 (x7) # store value to put something in memory
lb x26, 126(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x20, 0xc3eb9ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000007e # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1 # sub immediate from rs1 to counter offset
sw x5, -1 (x12) # store value to put something in memory
lb x20, -1(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x13, 0x3f58cdd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4d8ebb42 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x8) # store value to put something in memory
lb x13, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x7, 0x56277957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000ff # initialize rs2
la x21, scratch # base address 
addi x21, x21, -255 # sub immediate from rs1 to counter offset
sw x14, 255 (x21) # store value to put something in memory
lb x7, 255(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x7, 0xd4390e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x000000ff # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sw x22, -1 (x2) # store value to put something in memory
lb x7, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x20, 0x9be7fb15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5c10b917 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x28) # store value to put something in memory
lb x20, 0(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x14, 0xabeab952 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x000000fe # initialize rs2
la x28, scratch # base address 
addi x28, x28, -254 # sub immediate from rs1 to counter offset
sw x20, 254 (x28) # store value to put something in memory
lb x14, 254(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x3, 0x4109289d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x000000fe # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1 # sub immediate from rs1 to counter offset
sw x29, -1 (x7) # store value to put something in memory
lb x3, -1(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x6, 0xa931f804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe8586bc5 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x24) # store value to put something in memory
lb x6, 0(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x24, 0x95de7c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000055 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -85 # sub immediate from rs1 to counter offset
sw x27, 85 (x2) # store value to put something in memory
lb x24, 85(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x30, 0x9cefd471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000055 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1 # sub immediate from rs1 to counter offset
sw x19, -1 (x8) # store value to put something in memory
lb x30, -1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x7, 0x5e7a973a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcd98fb39 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x10) # store value to put something in memory
lb x7, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x7, 0x3393e1a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x000000aa # initialize rs2
la x9, scratch # base address 
addi x9, x9, -170 # sub immediate from rs1 to counter offset
sw x6, 170 (x9) # store value to put something in memory
lb x7, 170(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x8, 0xfe8d05ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x000000aa # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1 # sub immediate from rs1 to counter offset
sw x5, -1 (x7) # store value to put something in memory
lb x8, -1(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x15, 0x030e4448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x238faf26 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x17) # store value to put something in memory
lb x15, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x24, 0x6ca64280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000005b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -91 # sub immediate from rs1 to counter offset
sw x23, 91 (x12) # store value to put something in memory
lb x24, 91(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x10, 0x46b59c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000005b # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1 # sub immediate from rs1 to counter offset
sw x30, -1 (x4) # store value to put something in memory
lb x10, -1(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x24, 0x45446a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xaa84c6f4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x10) # store value to put something in memory
lb x24, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x6, 0x7d787fde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000db # initialize rs2
la x9, scratch # base address 
addi x9, x9, -219 # sub immediate from rs1 to counter offset
sw x12, 219 (x9) # store value to put something in memory
lb x6, 219(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x13, 0x113c6947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000db # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1 # sub immediate from rs1 to counter offset
sw x15, -1 (x12) # store value to put something in memory
lb x13, -1(x12) # perform operation

# Testcase cp_imm_zero
li x19, 0xe41804a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xde97e0d1 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sw x27, 0 (x12) # store value to put something in memory
lb x19, 0(x12) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
lb x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
