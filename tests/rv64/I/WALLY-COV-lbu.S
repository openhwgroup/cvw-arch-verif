///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-lbu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.480908
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x9fcc1727580df55d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x344d639cd3f2abfa # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1278 # sub immediate from rs1 to counter offset
sd x10, -1278 (x11) # store value to put something in memory
lbu x0, -1278(x11) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x1e228d9f50eed802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5ea6d69dcf23bda7 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1555 # sub immediate from rs1 to counter offset
sd x13, 1555 (x18) # store value to put something in memory
lbu x1, 1555(x18) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xab0e20e11897cf8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdef164678ce96039 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 902 # sub immediate from rs1 to counter offset
sd x21, -902 (x19) # store value to put something in memory
lbu x2, -902(x19) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7a7e04e3c2a0396e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5777b1033b732912 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1236 # sub immediate from rs1 to counter offset
sd x26, 1236 (x1) # store value to put something in memory
lbu x3, 1236(x1) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x74be0ac6b05f17cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb1446f322f3edb33 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1003 # sub immediate from rs1 to counter offset
sd x30, 1003 (x12) # store value to put something in memory
lbu x4, 1003(x12) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3cfa09dfc00f0f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x62de2e067b2c837a # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1008 # sub immediate from rs1 to counter offset
sd x24, 1008 (x26) # store value to put something in memory
lbu x5, 1008(x26) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x89123a2b6ec1b904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bb9a87ced1d5213 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1461 # sub immediate from rs1 to counter offset
sd x19, -1461 (x17) # store value to put something in memory
lbu x6, -1461(x17) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xae7f83dbc0de6c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x58218cadea08ffb1 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -600 # sub immediate from rs1 to counter offset
sd x20, 600 (x17) # store value to put something in memory
lbu x7, 600(x17) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5468fd4dd6702825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa9a003cf457a4b97 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 526 # sub immediate from rs1 to counter offset
sd x19, -526 (x10) # store value to put something in memory
lbu x8, -526(x10) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2fb661c9ffdcb3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9087249623e33b75 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1683 # sub immediate from rs1 to counter offset
sd x9, 1683 (x18) # store value to put something in memory
lbu x9, 1683(x18) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc4c14ca290e80fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x07429e91f8f1a991 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 632 # sub immediate from rs1 to counter offset
sd x10, -632 (x8) # store value to put something in memory
lbu x10, -632(x8) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9e520a164ff9b5f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcc08a169e3c0fe11 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 912 # sub immediate from rs1 to counter offset
sd x18, -912 (x4) # store value to put something in memory
lbu x11, -912(x4) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x89bcdce7edceada5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc8f6ebb7c3faddbd # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1364 # sub immediate from rs1 to counter offset
sd x19, -1364 (x14) # store value to put something in memory
lbu x12, -1364(x14) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x96339ef55d9e1ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5f5ee9d4cd236227 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1647 # sub immediate from rs1 to counter offset
sd x24, 1647 (x15) # store value to put something in memory
lbu x13, 1647(x15) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1e441a9875c1178b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbf363b92ca6ce833 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 848 # sub immediate from rs1 to counter offset
sd x15, -848 (x18) # store value to put something in memory
lbu x14, -848(x18) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc419669c430a1082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe021e1a5f7d22199 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1934 # sub immediate from rs1 to counter offset
sd x15, -1934 (x25) # store value to put something in memory
lbu x15, -1934(x25) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x003af1e1e8e95cad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x28617776fa67ccdc # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1741 # sub immediate from rs1 to counter offset
sd x20, -1741 (x10) # store value to put something in memory
lbu x16, -1741(x10) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x8a303e9b0eac2d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x10b987c183b16059 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -505 # sub immediate from rs1 to counter offset
sd x18, 505 (x20) # store value to put something in memory
lbu x17, 505(x20) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x304eb9eeb5090a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc70137a7f5598116 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1638 # sub immediate from rs1 to counter offset
sd x19, -1638 (x17) # store value to put something in memory
lbu x18, -1638(x17) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x6a6721bfdc61287d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xda7bf61430bc6671 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 541 # sub immediate from rs1 to counter offset
sd x15, -541 (x9) # store value to put something in memory
lbu x19, -541(x9) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb18b3541350930c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd9f7375b1d65929d # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1830 # sub immediate from rs1 to counter offset
sd x31, 1830 (x6) # store value to put something in memory
lbu x20, 1830(x6) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc6bcf5d5c63692a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6aa48a7f72ca5565 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 540 # sub immediate from rs1 to counter offset
sd x15, -540 (x25) # store value to put something in memory
lbu x21, -540(x25) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xa885269f4ab3a38c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2f48e99418146486 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 701 # sub immediate from rs1 to counter offset
sd x31, -701 (x9) # store value to put something in memory
lbu x22, -701(x9) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x598d441be2d7b2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x21b694578a087411 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -301 # sub immediate from rs1 to counter offset
sd x29, 301 (x10) # store value to put something in memory
lbu x23, 301(x10) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xba9965a438f6e3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1ffb7195bd08d086 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 800 # sub immediate from rs1 to counter offset
sd x8, -800 (x18) # store value to put something in memory
lbu x24, -800(x18) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x81d61f4eadc69b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe616e035f9e1c1c5 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -110 # sub immediate from rs1 to counter offset
sd x10, 110 (x5) # store value to put something in memory
lbu x25, 110(x5) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x96ff1d61bc0aa06f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xae69c1b8e26846ec # initialize rs2
la x10, scratch # base address 
addi x10, x10, -875 # sub immediate from rs1 to counter offset
sd x23, 875 (x10) # store value to put something in memory
lbu x26, 875(x10) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x8befd8460bf367ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf5e75a3c3a7c3782 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -52 # sub immediate from rs1 to counter offset
sd x10, 52 (x13) # store value to put something in memory
lbu x27, 52(x13) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x00b58c0bacaae689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x344526cdd37ac877 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 680 # sub immediate from rs1 to counter offset
sd x29, -680 (x1) # store value to put something in memory
lbu x28, -680(x1) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x67a270bd56b770e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2270adb7901705d3 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1062 # sub immediate from rs1 to counter offset
sd x16, -1062 (x24) # store value to put something in memory
lbu x29, -1062(x24) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xbf04d7ddbfc778c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x61e0871b5b6d47e1 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1367 # sub immediate from rs1 to counter offset
sd x11, 1367 (x30) # store value to put something in memory
lbu x30, 1367(x30) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf1b25abf9623ed14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3b659533a1651f60 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1745 # sub immediate from rs1 to counter offset
sd x18, -1745 (x5) # store value to put something in memory
lbu x31, -1745(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x10, 0x4271c0df359f7137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0a2eb4e3a631b91d # initialize rs2
la x1, scratch # base address 
addi x1, x1, 3 # sub immediate from rs1 to counter offset
sd x30, -3 (x1) # store value to put something in memory
lbu x10, -3(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x27, 0xe83335cdf61de5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2d10bb9d50645d64 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -249 # sub immediate from rs1 to counter offset
sd x12, 249 (x2) # store value to put something in memory
lbu x27, 249(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x80b9e991a257b684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5a57f0667b9c697a # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1076 # sub immediate from rs1 to counter offset
sd x30, 1076 (x3) # store value to put something in memory
lbu x6, 1076(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x28, 0x9c68d13fb48780ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1e6c7b1b92f8204b # initialize rs2
la x4, scratch # base address 
addi x4, x4, 718 # sub immediate from rs1 to counter offset
sd x7, -718 (x4) # store value to put something in memory
lbu x28, -718(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x29, 0x044a8309adcbcc4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x89ccb341ca1572da # initialize rs2
la x5, scratch # base address 
addi x5, x5, -858 # sub immediate from rs1 to counter offset
sd x7, 858 (x5) # store value to put something in memory
lbu x29, 858(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0x498f2f101321288c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55f41b06054c1d08 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1577 # sub immediate from rs1 to counter offset
sd x21, -1577 (x6) # store value to put something in memory
lbu x22, -1577(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x23, 0x1eb7d2144ea9349d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdddba7e55f645545 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1875 # sub immediate from rs1 to counter offset
sd x3, -1875 (x7) # store value to put something in memory
lbu x23, -1875(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0x23a2d2cfa1239903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2b40cc3a6baeb776 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 335 # sub immediate from rs1 to counter offset
sd x18, -335 (x8) # store value to put something in memory
lbu x19, -335(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0xbe0ac1a2e7f85686 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x681dfb4a46c2dfc4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 638 # sub immediate from rs1 to counter offset
sd x29, -638 (x9) # store value to put something in memory
lbu x23, -638(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x8333b362f7fd7fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5a24d8a6de9bbad7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1126 # sub immediate from rs1 to counter offset
sd x3, -1126 (x10) # store value to put something in memory
lbu x9, -1126(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x8c1baaea06e11b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x96f4e4bbbcaa5026 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 657 # sub immediate from rs1 to counter offset
sd x22, -657 (x11) # store value to put something in memory
lbu x27, -657(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x3, 0x77e7270807d1db50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x27d9152e9d23da77 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -609 # sub immediate from rs1 to counter offset
sd x28, 609 (x12) # store value to put something in memory
lbu x3, 609(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0x1f67ac868d970fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xae42e0af199de1ca # initialize rs2
la x13, scratch # base address 
addi x13, x13, -389 # sub immediate from rs1 to counter offset
sd x16, 389 (x13) # store value to put something in memory
lbu x25, 389(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x26, 0x7bdecd3d6103f85b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3af3d26d1726c40a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1321 # sub immediate from rs1 to counter offset
sd x2, 1321 (x14) # store value to put something in memory
lbu x26, 1321(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0x233b9905d2ef71d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x62784c324bc7977c # initialize rs2
la x15, scratch # base address 
addi x15, x15, 354 # sub immediate from rs1 to counter offset
sd x26, -354 (x15) # store value to put something in memory
lbu x1, -354(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x9, 0x0432cc096cd080f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6d6448e0fbdf9f47 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1088 # sub immediate from rs1 to counter offset
sd x23, 1088 (x16) # store value to put something in memory
lbu x9, 1088(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0x2247444b9be26721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa2e58045f1f41e1b # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1608 # sub immediate from rs1 to counter offset
sd x11, -1608 (x17) # store value to put something in memory
lbu x3, -1608(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x83bd9d6072deac7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x88078b7da2ede2f8 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -775 # sub immediate from rs1 to counter offset
sd x24, 775 (x18) # store value to put something in memory
lbu x1, 775(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0x9f9796f97ea97334 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x82884ad87e4075cf # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1844 # sub immediate from rs1 to counter offset
sd x16, -1844 (x19) # store value to put something in memory
lbu x29, -1844(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x27, 0xfdfa976b325ca19a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x375a8cffa13690e3 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1846 # sub immediate from rs1 to counter offset
sd x12, -1846 (x20) # store value to put something in memory
lbu x27, -1846(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x6, 0x951e4e7e73af5659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x060909fdfe79f5c9 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 285 # sub immediate from rs1 to counter offset
sd x19, -285 (x21) # store value to put something in memory
lbu x6, -285(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0xefe73781f74beea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x726e37ca3595e54b # initialize rs2
la x22, scratch # base address 
addi x22, x22, -276 # sub immediate from rs1 to counter offset
sd x16, 276 (x22) # store value to put something in memory
lbu x27, 276(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x20, 0xb6a4582d9b29d713 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0fc2f48f5a9380a3 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1851 # sub immediate from rs1 to counter offset
sd x25, 1851 (x23) # store value to put something in memory
lbu x20, 1851(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0xc323a94dc9ef6851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3afd4ac93515d7ae # initialize rs2
la x24, scratch # base address 
addi x24, x24, -811 # sub immediate from rs1 to counter offset
sd x5, 811 (x24) # store value to put something in memory
lbu x20, 811(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x30, 0x886996123bb114d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6a65704a845f933e # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1735 # sub immediate from rs1 to counter offset
sd x19, 1735 (x25) # store value to put something in memory
lbu x30, 1735(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x18, 0x9fa56de24da5b337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc987bec4564e3cc1 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1633 # sub immediate from rs1 to counter offset
sd x3, 1633 (x26) # store value to put something in memory
lbu x18, 1633(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0x8c00869008211276 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf7ef3094d3c32759 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1523 # sub immediate from rs1 to counter offset
sd x14, 1523 (x27) # store value to put something in memory
lbu x2, 1523(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x2, 0x0286f92a89211820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x22305718094780be # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1039 # sub immediate from rs1 to counter offset
sd x6, 1039 (x28) # store value to put something in memory
lbu x2, 1039(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0xc9c9cbcf6b9452a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5b903d622662fc5d # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1679 # sub immediate from rs1 to counter offset
sd x6, -1679 (x29) # store value to put something in memory
lbu x24, -1679(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0xeceaf3b7358c0734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x803689ffa94ae303 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1227 # sub immediate from rs1 to counter offset
sd x18, -1227 (x30) # store value to put something in memory
lbu x7, -1227(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x25, 0x7d6234492239073f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb38af19f65dd1484 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 737 # sub immediate from rs1 to counter offset
sd x28, -737 (x31) # store value to put something in memory
lbu x25, -737(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x18bc34da8f2163ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x91bd46dda14b2ab5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x12) # store value to put something in memory
lbu x23, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0xde56ddecb24ca780 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sd x10, 0 (x26) # store value to put something in memory
lbu x9, 0(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xa7ab2385a2331a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1 # sub immediate from rs1 to counter offset
sd x22, -1 (x8) # store value to put something in memory
lbu x24, -1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x1, 0x4fc89d3ce4d4fca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4a81c2c259039b18 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x25) # store value to put something in memory
lbu x1, 0(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x3, 0x72f59c57d96a1faa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1 # sub immediate from rs1 to counter offset
sd x22, 1 (x8) # store value to put something in memory
lbu x3, 1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x6942bb1c41792651 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1 # sub immediate from rs1 to counter offset
sd x20, -1 (x15) # store value to put something in memory
lbu x27, -1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xf4192c5979265395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x71ad2b406f61b6d4 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x4) # store value to put something in memory
lbu x18, 0(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x05419df450b4a828 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
sd x12, 2 (x11) # store value to put something in memory
lbu x17, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xe12b62196f381f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x1) # store value to put something in memory
lbu x16, -1(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x15, 0x71531c77945aaa02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa7275993854e4d69 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x31) # store value to put something in memory
lbu x15, 0(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x5, 0x87b2333b34e5841d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000080 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -128 # sub immediate from rs1 to counter offset
sd x23, 128 (x16) # store value to put something in memory
lbu x5, 128(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x6, 0x025b9c330e353beb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000080 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1 # sub immediate from rs1 to counter offset
sd x14, -1 (x31) # store value to put something in memory
lbu x6, -1(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x20, 0x369f683eb7d2db22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5c6115ea44d5e1bb # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x21) # store value to put something in memory
lbu x20, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x30, 0x95a50d5b6e7779f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000081 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -129 # sub immediate from rs1 to counter offset
sd x9, 129 (x5) # store value to put something in memory
lbu x30, 129(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x5, 0xfb2742b26c1dd4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000081 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1 # sub immediate from rs1 to counter offset
sd x17, -1 (x28) # store value to put something in memory
lbu x5, -1(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x13, 0x416ef9e757a550dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe52e1f8594096428 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x26) # store value to put something in memory
lbu x13, 0(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x7, 0x2c585ede82d8cda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000000000007f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -127 # sub immediate from rs1 to counter offset
sd x17, 127 (x10) # store value to put something in memory
lbu x7, 127(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x7, 0xaed1e0372b467b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x000000000000007f # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1 # sub immediate from rs1 to counter offset
sd x2, -1 (x17) # store value to put something in memory
lbu x7, -1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x6, 0x49abb11ef51c2b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x328f0af6365a4bf1 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x26) # store value to put something in memory
lbu x6, 0(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x29, 0x11df69bcc8b69516 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000007e # initialize rs2
la x19, scratch # base address 
addi x19, x19, -126 # sub immediate from rs1 to counter offset
sd x13, 126 (x19) # store value to put something in memory
lbu x29, 126(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x13, 0xa87be3a720cb8d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000007e # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1 # sub immediate from rs1 to counter offset
sd x15, -1 (x4) # store value to put something in memory
lbu x13, -1(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x1, 0x0e57a85668c39272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd376875edd5799fe # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x22) # store value to put something in memory
lbu x1, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x2, 0xe556ecfe9ade6411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000000000ff # initialize rs2
la x31, scratch # base address 
addi x31, x31, -255 # sub immediate from rs1 to counter offset
sd x14, 255 (x31) # store value to put something in memory
lbu x2, 255(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x28, 0xd42947e24c71e2f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000000000ff # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sd x11, -1 (x3) # store value to put something in memory
lbu x28, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x6, 0x9c6df1d49a2c3e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7b70281d74bc3428 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x19) # store value to put something in memory
lbu x6, 0(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x29, 0xcc83d9218785ef34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000000000fe # initialize rs2
la x8, scratch # base address 
addi x8, x8, -254 # sub immediate from rs1 to counter offset
sd x3, 254 (x8) # store value to put something in memory
lbu x29, 254(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x18, 0x71d76b017197f412 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000000000fe # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1 # sub immediate from rs1 to counter offset
sd x6, -1 (x23) # store value to put something in memory
lbu x18, -1(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x5, 0x32d8856ccb38eaad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x27ef14b91d4db4d4 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x17) # store value to put something in memory
lbu x5, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x11, 0xf3b51138b638383b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000055 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -85 # sub immediate from rs1 to counter offset
sd x31, 85 (x24) # store value to put something in memory
lbu x11, 85(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x15, 0x754196f24572afcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000055 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sd x31, -1 (x3) # store value to put something in memory
lbu x15, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x14, 0xc70981102f0d1ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x81977f3521790750 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x18) # store value to put something in memory
lbu x14, 0(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x8, 0x8d433a682613b789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000000000aa # initialize rs2
la x5, scratch # base address 
addi x5, x5, -170 # sub immediate from rs1 to counter offset
sd x1, 170 (x5) # store value to put something in memory
lbu x8, 170(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x6, 0x31fb045157d88466 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000000000aa # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sd x5, -1 (x9) # store value to put something in memory
lbu x6, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x7, 0xb93b07b775b180e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd9bf48084c10961e # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x26) # store value to put something in memory
lbu x7, 0(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x3, 0x8b1698f5ae8e5914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x000000000000005b # initialize rs2
la x25, scratch # base address 
addi x25, x25, -91 # sub immediate from rs1 to counter offset
sd x1, 91 (x25) # store value to put something in memory
lbu x3, 91(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x10, 0xc1e163a5f16591b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x000000000000005b # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1 # sub immediate from rs1 to counter offset
sd x4, -1 (x12) # store value to put something in memory
lbu x10, -1(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x21, 0xb97f76ac7eb8d594 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3134506cb33e8565 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x10) # store value to put something in memory
lbu x21, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x4, 0xda0b00c619a79706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000000000db # initialize rs2
la x20, scratch # base address 
addi x20, x20, -219 # sub immediate from rs1 to counter offset
sd x19, 219 (x20) # store value to put something in memory
lbu x4, 219(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x6, 0xc5e80437f9d23895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000000000db # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x1, -1 (x13) # store value to put something in memory
lbu x6, -1(x13) # perform operation

# Testcase cp_imm_zero
li x29, 0xe09bee5c39739217 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0140756205f1e940 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sd x27, 0 (x10) # store value to put something in memory
lbu x29, 0(x10) # perform operation

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
