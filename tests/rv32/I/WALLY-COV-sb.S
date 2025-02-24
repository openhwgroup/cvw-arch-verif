///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sb.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.977087
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x9, 0xb4ccd453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0bc46d96 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1719 # sub immediate from rs1 to counter offset
sb x10, -1719(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x18, 0xde2309e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0abf6fd1 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 331 # sub immediate from rs1 to counter offset
sb x30, -331(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0x7fa67b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa2a44067 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1704 # sub immediate from rs1 to counter offset
sb x1, 1704(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
li x19, 0x738d2b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x347f77dc # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1593 # sub immediate from rs1 to counter offset
sb x28, -1593(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x8, 0x6f306b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x54abd448 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 813 # sub immediate from rs1 to counter offset
sb x18, -813(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x42e108ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x83262167 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -421 # sub immediate from rs1 to counter offset
sb x5, 421(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x3f76e6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9a08eab2 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1120 # sub immediate from rs1 to counter offset
sb x19, -1120(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0x1bf6e73e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4a808ff4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1521 # sub immediate from rs1 to counter offset
sb x4, 1521(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x28, 0x2404bbea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa4f1395e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1804 # sub immediate from rs1 to counter offset
sb x5, 1804(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x2beea375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x02831e1e # initialize rs2
la x10, scratch # base address 
addi x10, x10, 550 # sub immediate from rs1 to counter offset
sb x30, -550(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x4db10a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdbcd0c1a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1475 # sub immediate from rs1 to counter offset
sb x28, 1475(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0x6b00d031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc1af86fb # initialize rs2
la x12, scratch # base address 
addi x12, x12, -14 # sub immediate from rs1 to counter offset
sb x13, 14(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x19, 0xf1cd5fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbf6d4f95 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -275 # sub immediate from rs1 to counter offset
sb x5, 275(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x29, 0x4c69d2db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xad814356 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1519 # sub immediate from rs1 to counter offset
sb x24, 1519(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xe9dc7d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf1a55083 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 688 # sub immediate from rs1 to counter offset
sb x3, -688(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x10, 0x9c8f30c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xea56c971 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1288 # sub immediate from rs1 to counter offset
sb x1, 1288(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x22, 0xe86746f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x08b617d1 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -75 # sub immediate from rs1 to counter offset
sb x31, 75(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x26, 0x8797aee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1b96bfd4 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1749 # sub immediate from rs1 to counter offset
sb x29, -1749(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0x119bcfb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcaba98b0 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -337 # sub immediate from rs1 to counter offset
sb x28, 337(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0xff460250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x37cea2a7 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -475 # sub immediate from rs1 to counter offset
sb x17, 475(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0xe8818413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd706fdc0 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 541 # sub immediate from rs1 to counter offset
sb x9, -541(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0x3cbcc8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x791973eb # initialize rs2
la x22, scratch # base address 
addi x22, x22, -336 # sub immediate from rs1 to counter offset
sb x15, 336(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x40433557 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x702a1383 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1478 # sub immediate from rs1 to counter offset
sb x18, 1478(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0x3a2a612c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb8d2264a # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1578 # sub immediate from rs1 to counter offset
sb x31, -1578(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0xc80d4800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5562b511 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1115 # sub immediate from rs1 to counter offset
sb x11, 1115(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x6, 0x735543fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x89588cc7 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1306 # sub immediate from rs1 to counter offset
sb x2, -1306(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x24, 0x8ebfcef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x64fa4a79 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 997 # sub immediate from rs1 to counter offset
sb x7, -997(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x8, 0x5693b42e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb27f6467 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1862 # sub immediate from rs1 to counter offset
sb x17, -1862(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0x678f54ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2c0c0302 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -485 # sub immediate from rs1 to counter offset
sb x13, 485(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x6, 0x7dc80896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2fc350af # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1272 # sub immediate from rs1 to counter offset
sb x12, -1272(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0x2c17cab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa805ae1b # initialize rs2
la x31, scratch # base address 
addi x31, x31, 462 # sub immediate from rs1 to counter offset
sb x4, -462(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x74461e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6ee27d50 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1811 # sub immediate from rs1 to counter offset
sb x0, -1811(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0x7356623c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x922a1f5b # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1147 # sub immediate from rs1 to counter offset
sb x1, -1147(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0x071e0941 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc46f6459 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 590 # sub immediate from rs1 to counter offset
sb x2, -590(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0x77f9b9c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe6372d9e # initialize rs2
la x22, scratch # base address 
addi x22, x22, 2042 # sub immediate from rs1 to counter offset
sb x3, -2042(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
li x13, 0x1fbfa8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x978e634a # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1248 # sub immediate from rs1 to counter offset
sb x4, -1248(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
li x30, 0x32a0037e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7b1f9aa0 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1762 # sub immediate from rs1 to counter offset
sb x5, 1762(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
li x27, 0x956095d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfbf44fa8 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1279 # sub immediate from rs1 to counter offset
sb x6, 1279(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x12, 0xf2ec83a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8eaa6026 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -696 # sub immediate from rs1 to counter offset
sb x7, 696(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xc17a5385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55bb8753 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1848 # sub immediate from rs1 to counter offset
sb x8, -1848(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x5, 0x1822da02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xac1c2662 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1532 # sub immediate from rs1 to counter offset
sb x9, -1532(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x37c8a3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x17eacfab # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1657 # sub immediate from rs1 to counter offset
sb x10, 1657(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x7dcc5d24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xacdb0ca4 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 888 # sub immediate from rs1 to counter offset
sb x11, -888(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x23, 0x33574931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc47b43b3 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 2043 # sub immediate from rs1 to counter offset
sb x12, -2043(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x23, 0x0c169171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4b302ff2 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 625 # sub immediate from rs1 to counter offset
sb x13, -625(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0xa43852a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9cecf600 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1101 # sub immediate from rs1 to counter offset
sb x14, 1101(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x17, 0xefb42758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb879ec2c # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1385 # sub immediate from rs1 to counter offset
sb x15, -1385(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0x7a305e1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x90a8397a # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1594 # sub immediate from rs1 to counter offset
sb x16, -1594(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0x356c6233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa96f9270 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -339 # sub immediate from rs1 to counter offset
sb x17, 339(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0x5c6a9e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xac4f652d # initialize rs2
la x28, scratch # base address 
addi x28, x28, -29 # sub immediate from rs1 to counter offset
sb x18, 29(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0xcb13e122 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2016b7f7 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1903 # sub immediate from rs1 to counter offset
sb x19, -1903(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0x01072a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9106705d # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1031 # sub immediate from rs1 to counter offset
sb x20, -1031(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0xaf36857e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd0637f28 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 654 # sub immediate from rs1 to counter offset
sb x21, -654(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x29, 0x1fe055e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9baac109 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1672 # sub immediate from rs1 to counter offset
sb x22, 1672(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x1, 0x9337d83d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa2548c36 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1032 # sub immediate from rs1 to counter offset
sb x23, -1032(x2) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0xf4413bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x128961db # initialize rs2
la x4, scratch # base address 
addi x4, x4, 52 # sub immediate from rs1 to counter offset
sb x24, -52(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0x7448f75c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x88b85b6e # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1003 # sub immediate from rs1 to counter offset
sb x25, -1003(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0xefe7ee6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf47895d1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -247 # sub immediate from rs1 to counter offset
sb x26, 247(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x11, 0x5da51798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x57dbfc49 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1795 # sub immediate from rs1 to counter offset
sb x27, -1795(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xa9a461d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdfe86023 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 967 # sub immediate from rs1 to counter offset
sb x28, -967(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0xd3ed0451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x18aefe2e # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1344 # sub immediate from rs1 to counter offset
sb x29, -1344(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x1bb6f033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xab46046a # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1150 # sub immediate from rs1 to counter offset
sb x30, -1150(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x09fb0585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5d1401fc # initialize rs2
la x9, scratch # base address 
addi x9, x9, 327 # sub immediate from rs1 to counter offset
sb x31, -327(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0xaf68f325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1727 # sub immediate from rs1 to counter offset
sb x15, -1727(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x84ea012c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1980 # sub immediate from rs1 to counter offset
sb x3, -1980(x31) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x6c3300b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 2040 # sub immediate from rs1 to counter offset
sb x18, -2040(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x22ca246b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 956 # sub immediate from rs1 to counter offset
sb x12, -956(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x4, 0x07cf53a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1932 # sub immediate from rs1 to counter offset
sb x19, 1932(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x10, 0xe21577f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs2
la x4, scratch # base address 
addi x4, x4, 32 # sub immediate from rs1 to counter offset
sb x29, -32(x4) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x12, 0xdd99e9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs2
la x31, scratch # base address 
addi x31, x31, -726 # sub immediate from rs1 to counter offset
sb x17, 726(x31) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0xd567e22a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -568 # sub immediate from rs1 to counter offset
sb x7, 568(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0x3947c1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1347 # sub immediate from rs1 to counter offset
sb x22, -1347(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x25, 0xe5bdceee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 968 # sub immediate from rs1 to counter offset
sb x30, -968(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0x652d75a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1417 # sub immediate from rs1 to counter offset
sb x30, 1417(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x3, 0xa2672f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1062 # sub immediate from rs1 to counter offset
sb x28, 1062(x29) # perform operation 

# Testcase cp_imm_zero
li x20, 0xa43f808a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb30595d4 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 0 # sub immediate from rs1 to counter offset
sb x10, 0(x4) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
