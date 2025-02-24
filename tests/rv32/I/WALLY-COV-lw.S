///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-lw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.969913
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x1f28d1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcfd0a359 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 58 # sub immediate from rs1 to counter offset
sw x17, -58 (x16) # store value to put something in memory
lw x0, -58(x16) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xce15d847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf5c05841 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1920 # sub immediate from rs1 to counter offset
sw x30, 1920 (x8) # store value to put something in memory
lw x1, 1920(x8) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe6c19b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9c2cc1b3 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -845 # sub immediate from rs1 to counter offset
sw x7, 845 (x26) # store value to put something in memory
lw x2, 845(x26) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1e66f3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa5645cff # initialize rs2
la x9, scratch # base address 
addi x9, x9, -591 # sub immediate from rs1 to counter offset
sw x18, 591 (x9) # store value to put something in memory
lw x3, 591(x9) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xdf3bdef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7e52935d # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1596 # sub immediate from rs1 to counter offset
sw x23, 1596 (x1) # store value to put something in memory
lw x4, 1596(x1) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x57c75d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb72f4860 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -85 # sub immediate from rs1 to counter offset
sw x2, 85 (x6) # store value to put something in memory
lw x5, 85(x6) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x9f1aee7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x51ed5d65 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 651 # sub immediate from rs1 to counter offset
sw x24, -651 (x27) # store value to put something in memory
lw x6, -651(x27) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x72bb9fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3f17135a # initialize rs2
la x3, scratch # base address 
addi x3, x3, -280 # sub immediate from rs1 to counter offset
sw x25, 280 (x3) # store value to put something in memory
lw x7, 280(x3) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x027e4b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe3c561d3 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 432 # sub immediate from rs1 to counter offset
sw x5, -432 (x24) # store value to put something in memory
lw x8, -432(x24) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x49aaba77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3f439846 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1791 # sub immediate from rs1 to counter offset
sw x11, 1791 (x27) # store value to put something in memory
lw x9, 1791(x27) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x1b860646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf4175c41 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 485 # sub immediate from rs1 to counter offset
sw x16, -485 (x8) # store value to put something in memory
lw x10, -485(x8) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x978d47e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbecd2128 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -890 # sub immediate from rs1 to counter offset
sw x18, 890 (x8) # store value to put something in memory
lw x11, 890(x8) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6f41cec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xab4a9107 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1558 # sub immediate from rs1 to counter offset
sw x21, 1558 (x28) # store value to put something in memory
lw x12, 1558(x28) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x727bada6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x98693018 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -65 # sub immediate from rs1 to counter offset
sw x27, 65 (x3) # store value to put something in memory
lw x13, 65(x3) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd272d8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5a866aec # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1191 # sub immediate from rs1 to counter offset
sw x27, -1191 (x12) # store value to put something in memory
lw x14, -1191(x12) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf77e1da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe23e176b # initialize rs2
la x30, scratch # base address 
addi x30, x30, 459 # sub immediate from rs1 to counter offset
sw x7, -459 (x30) # store value to put something in memory
lw x15, -459(x30) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x1da060c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9c9c364c # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1847 # sub immediate from rs1 to counter offset
sw x16, -1847 (x28) # store value to put something in memory
lw x16, -1847(x28) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x4bef5784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7e2f1daf # initialize rs2
la x29, scratch # base address 
addi x29, x29, -138 # sub immediate from rs1 to counter offset
sw x5, 138 (x29) # store value to put something in memory
lw x17, 138(x29) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x254431ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x44931026 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -658 # sub immediate from rs1 to counter offset
sw x21, 658 (x2) # store value to put something in memory
lw x18, 658(x2) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xff72eb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7eab2fd1 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -747 # sub immediate from rs1 to counter offset
sw x24, 747 (x16) # store value to put something in memory
lw x19, 747(x16) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x31626236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x385879ce # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1268 # sub immediate from rs1 to counter offset
sw x17, 1268 (x6) # store value to put something in memory
lw x20, 1268(x6) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd187e5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbdc53740 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -799 # sub immediate from rs1 to counter offset
sw x12, 799 (x27) # store value to put something in memory
lw x21, 799(x27) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x9b5e7871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5108b25a # initialize rs2
la x13, scratch # base address 
addi x13, x13, 420 # sub immediate from rs1 to counter offset
sw x18, -420 (x13) # store value to put something in memory
lw x22, -420(x13) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2afea019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd29e4379 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1607 # sub immediate from rs1 to counter offset
sw x16, -1607 (x17) # store value to put something in memory
lw x23, -1607(x17) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x74472da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x89b2e870 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -231 # sub immediate from rs1 to counter offset
sw x1, 231 (x30) # store value to put something in memory
lw x24, 231(x30) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x576db382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x92e73785 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1363 # sub immediate from rs1 to counter offset
sw x29, 1363 (x5) # store value to put something in memory
lw x25, 1363(x5) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb972cf68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9a50faef # initialize rs2
la x30, scratch # base address 
addi x30, x30, 343 # sub immediate from rs1 to counter offset
sw x2, -343 (x30) # store value to put something in memory
lw x26, -343(x30) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf1391c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb818bef1 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1477 # sub immediate from rs1 to counter offset
sw x12, 1477 (x29) # store value to put something in memory
lw x27, 1477(x29) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9a0bfdc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2360cd55 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1217 # sub immediate from rs1 to counter offset
sw x7, 1217 (x3) # store value to put something in memory
lw x28, 1217(x3) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7ca80db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6e41329f # initialize rs2
la x23, scratch # base address 
addi x23, x23, 791 # sub immediate from rs1 to counter offset
sw x6, -791 (x23) # store value to put something in memory
lw x29, -791(x23) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3c424148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc6aca53c # initialize rs2
la x6, scratch # base address 
addi x6, x6, -168 # sub immediate from rs1 to counter offset
sw x21, 168 (x6) # store value to put something in memory
lw x30, 168(x6) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2a27c028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x87d17c10 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -242 # sub immediate from rs1 to counter offset
sw x6, 242 (x13) # store value to put something in memory
lw x31, 242(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x11, 0x36f357b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x500bb596 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1376 # sub immediate from rs1 to counter offset
sw x3, -1376 (x1) # store value to put something in memory
lw x11, -1376(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x14, 0xcc0b0121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x701996e5 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1705 # sub immediate from rs1 to counter offset
sw x29, 1705 (x2) # store value to put something in memory
lw x14, 1705(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x23, 0x61a19d29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4ff5055f # initialize rs2
la x3, scratch # base address 
addi x3, x3, -539 # sub immediate from rs1 to counter offset
sw x30, 539 (x3) # store value to put something in memory
lw x23, 539(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x30, 0xad830d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdeafd881 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 553 # sub immediate from rs1 to counter offset
sw x29, -553 (x4) # store value to put something in memory
lw x30, -553(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x26, 0x5a27de54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x95251dc9 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1687 # sub immediate from rs1 to counter offset
sw x21, 1687 (x5) # store value to put something in memory
lw x26, 1687(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0x517d13ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5c621678 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1764 # sub immediate from rs1 to counter offset
sw x23, -1764 (x6) # store value to put something in memory
lw x31, -1764(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x24188f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x89967ebb # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1047 # sub immediate from rs1 to counter offset
sw x23, 1047 (x7) # store value to put something in memory
lw x16, 1047(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x31, 0x946a66ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc4ccdb8b # initialize rs2
la x8, scratch # base address 
addi x8, x8, -296 # sub immediate from rs1 to counter offset
sw x20, 296 (x8) # store value to put something in memory
lw x31, 296(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0xc7c56a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xea7b7e63 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -623 # sub immediate from rs1 to counter offset
sw x18, 623 (x9) # store value to put something in memory
lw x29, 623(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0x0de0afda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xea1ea788 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1039 # sub immediate from rs1 to counter offset
sw x4, 1039 (x10) # store value to put something in memory
lw x25, 1039(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xa4f85d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x35a4bb3f # initialize rs2
la x11, scratch # base address 
addi x11, x11, 856 # sub immediate from rs1 to counter offset
sw x4, -856 (x11) # store value to put something in memory
lw x13, -856(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0x5eb0e39e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6686e64d # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1215 # sub immediate from rs1 to counter offset
sw x6, 1215 (x12) # store value to put something in memory
lw x27, 1215(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0x2b2660da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0a9e2e0a # initialize rs2
la x13, scratch # base address 
addi x13, x13, 799 # sub immediate from rs1 to counter offset
sw x20, -799 (x13) # store value to put something in memory
lw x25, -799(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0xc89783bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe584c266 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1325 # sub immediate from rs1 to counter offset
sw x8, 1325 (x14) # store value to put something in memory
lw x23, 1325(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xe3de7ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0e7ea684 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 966 # sub immediate from rs1 to counter offset
sw x14, -966 (x15) # store value to put something in memory
lw x12, -966(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x3e78c578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc02ea725 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1078 # sub immediate from rs1 to counter offset
sw x3, 1078 (x16) # store value to put something in memory
lw x20, 1078(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0x33a21c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x807091a4 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1101 # sub immediate from rs1 to counter offset
sw x5, -1101 (x17) # store value to put something in memory
lw x15, -1101(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x29bcf3dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0d984575 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -952 # sub immediate from rs1 to counter offset
sw x5, 952 (x18) # store value to put something in memory
lw x1, 952(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x5, 0x58713d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa8d6cef5 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -19 # sub immediate from rs1 to counter offset
sw x8, 19 (x19) # store value to put something in memory
lw x5, 19(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0x4b960f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1cf3562f # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1377 # sub immediate from rs1 to counter offset
sw x28, 1377 (x20) # store value to put something in memory
lw x15, 1377(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x691efecd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd26cbe3e # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1029 # sub immediate from rs1 to counter offset
sw x20, -1029 (x21) # store value to put something in memory
lw x26, -1029(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0x431b96bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf88435b2 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 691 # sub immediate from rs1 to counter offset
sw x8, -691 (x22) # store value to put something in memory
lw x18, -691(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x16, 0x1c9ef2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcdf4bd90 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -633 # sub immediate from rs1 to counter offset
sw x28, 633 (x23) # store value to put something in memory
lw x16, 633(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0x5f053d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x105a02e7 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 64 # sub immediate from rs1 to counter offset
sw x26, -64 (x24) # store value to put something in memory
lw x10, -64(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x26, 0xa7742254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x690c7bf9 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1590 # sub immediate from rs1 to counter offset
sw x20, -1590 (x25) # store value to put something in memory
lw x26, -1590(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x45e4ae9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7e06c71a # initialize rs2
la x26, scratch # base address 
addi x26, x26, 516 # sub immediate from rs1 to counter offset
sw x19, -516 (x26) # store value to put something in memory
lw x21, -516(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0x2b7c0ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb0e4571d # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1319 # sub immediate from rs1 to counter offset
sw x8, 1319 (x27) # store value to put something in memory
lw x31, 1319(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x5, 0x9cb22c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa7f296af # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1855 # sub immediate from rs1 to counter offset
sw x14, -1855 (x28) # store value to put something in memory
lw x5, -1855(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0x7132aa3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x026252c5 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1675 # sub immediate from rs1 to counter offset
sw x21, 1675 (x29) # store value to put something in memory
lw x31, 1675(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x26, 0x38e2545d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6a2edce8 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 542 # sub immediate from rs1 to counter offset
sw x28, -542 (x30) # store value to put something in memory
lw x26, -542(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x8, 0x51389f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x60320a57 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 586 # sub immediate from rs1 to counter offset
sw x23, -586 (x31) # store value to put something in memory
lw x8, -586(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0x556e55b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6ae68456 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x27) # store value to put something in memory
lw x12, 0(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0x4edd9ad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sw x6, 0 (x21) # store value to put something in memory
lw x20, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0x46e4a1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1 # sub immediate from rs1 to counter offset
sw x13, -1 (x8) # store value to put something in memory
lw x12, -1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0xcf75fc50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcf67f1ec # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x17) # store value to put something in memory
lw x29, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0x7515e4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1 # sub immediate from rs1 to counter offset
sw x16, 1 (x3) # store value to put something in memory
lw x10, 1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x8b4bf620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1 # sub immediate from rs1 to counter offset
sw x25, -1 (x5) # store value to put something in memory
lw x26, -1(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x3e5cdb9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x65f1a3a3 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x5) # store value to put something in memory
lw x27, 0(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0x48577e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -2 # sub immediate from rs1 to counter offset
sw x9, 2 (x18) # store value to put something in memory
lw x3, 2(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0xe4578e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1 # sub immediate from rs1 to counter offset
sw x6, -1 (x17) # store value to put something in memory
lw x4, -1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x19, 0xd4afd79a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb632dd02 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x22) # store value to put something in memory
lw x19, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x26, 0x3ff9a1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sw x24, 0 (x16) # store value to put something in memory
lw x26, 0(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0x87a3692a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1 # sub immediate from rs1 to counter offset
sw x18, -1 (x6) # store value to put something in memory
lw x7, -1(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0xcc5a8d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcf0d75e0 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x10) # store value to put something in memory
lw x28, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x3, 0xecdce3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1 # sub immediate from rs1 to counter offset
sw x9, 1 (x23) # store value to put something in memory
lw x3, 1(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x20, 0xfe783d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1 # sub immediate from rs1 to counter offset
sw x1, -1 (x5) # store value to put something in memory
lw x20, -1(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x2, 0x965da173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb2156135 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x21) # store value to put something in memory
lw x2, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x22, 0xb4b0b961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1 # sub immediate from rs1 to counter offset
sw x6, -1 (x17) # store value to put something in memory
lw x22, -1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0xd293a830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sw x10, -1 (x11) # store value to put something in memory
lw x17, -1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x1, 0xf1085f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb39a7769 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x15) # store value to put something in memory
lw x1, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x12, 0xff3ce846 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, 2 # sub immediate from rs1 to counter offset
sw x31, -2 (x9) # store value to put something in memory
lw x12, -2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x29, 0x48e8ac3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sw x22, -1 (x1) # store value to put something in memory
lw x29, -1(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0x1d43c44f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa0e3b4a8 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x22) # store value to put something in memory
lw x19, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x16f0e855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sw x29, -1 (x26) # store value to put something in memory
lw x22, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x8031faf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sw x3, -1 (x26) # store value to put something in memory
lw x17, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0x93fb469a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3f163394 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x25) # store value to put something in memory
lw x22, 0(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0xae4dcd14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs2
la x20, scratch # base address 
addi x20, x20, 2 # sub immediate from rs1 to counter offset
sw x3, -2 (x20) # store value to put something in memory
lw x31, -2(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x2, 0x4d97a99c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1 # sub immediate from rs1 to counter offset
sw x27, -1 (x18) # store value to put something in memory
lw x2, -1(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x9, 0x12d3cb1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4898f340 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x15) # store value to put something in memory
lw x9, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x31, 0x2d80e61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1929 # sub immediate from rs1 to counter offset
sw x3, -1929 (x27) # store value to put something in memory
lw x31, -1929(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x31, 0x083628c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sw x3, -1 (x11) # store value to put something in memory
lw x31, -1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x20, 0xf66eaf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb44c716a # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x14) # store value to put something in memory
lw x20, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x19, 0xcb0938da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1366 # sub immediate from rs1 to counter offset
sw x12, -1366 (x22) # store value to put something in memory
lw x19, -1366(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x7, 0xf4d0c857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sw x17, -1 (x10) # store value to put something in memory
lw x7, -1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xea0b560d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0c45c90f # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x16) # store value to put something in memory
lw x5, 0(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x31, 0x166a7c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1365 # sub immediate from rs1 to counter offset
sw x19, 1365 (x16) # store value to put something in memory
lw x31, 1365(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x23, 0xb9225842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1 # sub immediate from rs1 to counter offset
sw x29, -1 (x24) # store value to put something in memory
lw x23, -1(x24) # perform operation

# Testcase cp_imm_zero
li x1, 0xb98b3278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe88f9fd0 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sw x22, 0 (x14) # store value to put something in memory
lw x1, 0(x14) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
lw x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
