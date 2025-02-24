///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-lb.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.480244
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x15c6df93b13ef6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x11e28af5d18fed39 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 994 # sub immediate from rs1 to counter offset
sd x5, -994 (x7) # store value to put something in memory
lb x0, -994(x7) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xef0e22facb8438b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5aba11732b0c4aba # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1138 # sub immediate from rs1 to counter offset
sd x6, -1138 (x24) # store value to put something in memory
lb x1, -1138(x24) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xb16435a78d68e28a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdb95292b1da28b20 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 955 # sub immediate from rs1 to counter offset
sd x26, -955 (x13) # store value to put something in memory
lb x2, -955(x13) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe486086bb4428b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7c18a06078017849 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -161 # sub immediate from rs1 to counter offset
sd x12, 161 (x3) # store value to put something in memory
lb x3, 161(x3) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x1471b5b75c1ea726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd57688c06111c2c0 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1381 # sub immediate from rs1 to counter offset
sd x14, 1381 (x15) # store value to put something in memory
lb x4, 1381(x15) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x81b4c906d531a25e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x260db9be36ce954f # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1138 # sub immediate from rs1 to counter offset
sd x10, -1138 (x15) # store value to put something in memory
lb x5, -1138(x15) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x5cfabc680ced2010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6e6c500e7b39471b # initialize rs2
la x8, scratch # base address 
addi x8, x8, 818 # sub immediate from rs1 to counter offset
sd x28, -818 (x8) # store value to put something in memory
lb x6, -818(x8) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x30b585ca4e7ca0cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x31b0e08e43a213f8 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -553 # sub immediate from rs1 to counter offset
sd x5, 553 (x8) # store value to put something in memory
lb x7, 553(x8) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf644c6a86f324551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa04d1f084cf8e50c # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1123 # sub immediate from rs1 to counter offset
sd x21, 1123 (x29) # store value to put something in memory
lb x8, 1123(x29) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x599739c544a92d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfd7667b0a3bd1c8c # initialize rs2
la x11, scratch # base address 
addi x11, x11, 354 # sub immediate from rs1 to counter offset
sd x13, -354 (x11) # store value to put something in memory
lb x9, -354(x11) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x32448f42b86ba360 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa280c2983e1731ed # initialize rs2
la x13, scratch # base address 
addi x13, x13, -896 # sub immediate from rs1 to counter offset
sd x7, 896 (x13) # store value to put something in memory
lb x10, 896(x13) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x0762ce2a1e8ad2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6bd31a7db79e5f12 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -669 # sub immediate from rs1 to counter offset
sd x22, 669 (x3) # store value to put something in memory
lb x11, 669(x3) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1ec8fbbf07ae8f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc321f14f548bc0e9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1754 # sub immediate from rs1 to counter offset
sd x8, 1754 (x15) # store value to put something in memory
lb x12, 1754(x15) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7854b15c7ad53947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5f3be99129ce054a # initialize rs2
la x19, scratch # base address 
addi x19, x19, -643 # sub immediate from rs1 to counter offset
sd x8, 643 (x19) # store value to put something in memory
lb x13, 643(x19) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x71c7073752090bee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x486853b9e8e61ab6 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 306 # sub immediate from rs1 to counter offset
sd x28, -306 (x19) # store value to put something in memory
lb x14, -306(x19) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xcaa599c675c0702c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0666f6e2296d3b3f # initialize rs2
la x6, scratch # base address 
addi x6, x6, -622 # sub immediate from rs1 to counter offset
sd x18, 622 (x6) # store value to put something in memory
lb x15, 622(x6) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x101b28e0996668bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1f1a1c584f0fb20b # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1562 # sub immediate from rs1 to counter offset
sd x15, 1562 (x27) # store value to put something in memory
lb x16, 1562(x27) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xe4ba6825e1f20727 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc71e0ffa6051ccb1 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -149 # sub immediate from rs1 to counter offset
sd x11, 149 (x19) # store value to put something in memory
lb x17, 149(x19) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xa122a6a2a3c45a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9bd0e0dc105f18db # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1086 # sub immediate from rs1 to counter offset
sd x3, 1086 (x13) # store value to put something in memory
lb x18, 1086(x13) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9b481cf7718559a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1976429554f580ff # initialize rs2
la x21, scratch # base address 
addi x21, x21, 836 # sub immediate from rs1 to counter offset
sd x1, -836 (x21) # store value to put something in memory
lb x19, -836(x21) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x30628e4d051de5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd898fb6ed13abd3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1780 # sub immediate from rs1 to counter offset
sd x11, 1780 (x8) # store value to put something in memory
lb x20, 1780(x8) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8416b6c709f3d7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4ae6912027daaf96 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 875 # sub immediate from rs1 to counter offset
sd x22, -875 (x30) # store value to put something in memory
lb x21, -875(x30) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x739d908e4416d0ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x92e93ca1589fdf54 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 890 # sub immediate from rs1 to counter offset
sd x21, -890 (x13) # store value to put something in memory
lb x22, -890(x13) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7273d8324a20e35e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7f3f7139fc1df7dc # initialize rs2
la x26, scratch # base address 
addi x26, x26, 728 # sub immediate from rs1 to counter offset
sd x13, -728 (x26) # store value to put something in memory
lb x23, -728(x26) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x78bfce6deb693be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8bb3948e3af8790c # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1642 # sub immediate from rs1 to counter offset
sd x5, 1642 (x10) # store value to put something in memory
lb x24, 1642(x10) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x828bf1269a503f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8f3c04c849f1c9a5 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -456 # sub immediate from rs1 to counter offset
sd x6, 456 (x29) # store value to put something in memory
lb x25, 456(x29) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x75fe1bee4e7ff757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x25c04312041870c8 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1548 # sub immediate from rs1 to counter offset
sd x14, 1548 (x29) # store value to put something in memory
lb x26, 1548(x29) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x5c7fb03db701f2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4b6f8fda1224f6d0 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1578 # sub immediate from rs1 to counter offset
sd x6, 1578 (x30) # store value to put something in memory
lb x27, 1578(x30) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x7be3e0c62e724536 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc7265ff1000538e8 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -736 # sub immediate from rs1 to counter offset
sd x8, 736 (x6) # store value to put something in memory
lb x28, 736(x6) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd95139fa7b645b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x751b3c4fa9c99ddb # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1761 # sub immediate from rs1 to counter offset
sd x1, 1761 (x6) # store value to put something in memory
lb x29, 1761(x6) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x47f792db76f6fa0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6d0acd499c403efd # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1891 # sub immediate from rs1 to counter offset
sd x11, 1891 (x23) # store value to put something in memory
lb x30, 1891(x23) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x27df4bfc0323d7c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0c946605753812da # initialize rs2
la x11, scratch # base address 
addi x11, x11, -334 # sub immediate from rs1 to counter offset
sd x21, 334 (x11) # store value to put something in memory
lb x31, 334(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x9, 0x4c849ddab25c7a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd410b3770db552f6 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1927 # sub immediate from rs1 to counter offset
sd x30, 1927 (x1) # store value to put something in memory
lb x9, 1927(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0x1f089c19c8fdce5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7253ccc5763b3fa9 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1843 # sub immediate from rs1 to counter offset
sd x19, -1843 (x2) # store value to put something in memory
lb x12, -1843(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x23, 0x9f39690804857710 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xebe43b984ec4dd9c # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1615 # sub immediate from rs1 to counter offset
sd x6, -1615 (x3) # store value to put something in memory
lb x23, -1615(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x29, 0xb759f10b36d31ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x11c819940d6b8882 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1984 # sub immediate from rs1 to counter offset
sd x21, -1984 (x4) # store value to put something in memory
lb x29, -1984(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x31, 0xc7a9c1966624af8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe489588e7045a629 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1330 # sub immediate from rs1 to counter offset
sd x14, -1330 (x5) # store value to put something in memory
lb x31, -1330(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0x9def516ca352a1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x68c163a02d206a0b # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1010 # sub immediate from rs1 to counter offset
sd x4, 1010 (x6) # store value to put something in memory
lb x31, 1010(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x2, 0x5ee971e6819c5abc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xad3ff7c430c48e4b # initialize rs2
la x7, scratch # base address 
addi x7, x7, -292 # sub immediate from rs1 to counter offset
sd x28, 292 (x7) # store value to put something in memory
lb x2, 292(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x394de7e058ec2796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xccd6bd1235b9d10d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1515 # sub immediate from rs1 to counter offset
sd x29, 1515 (x8) # store value to put something in memory
lb x9, 1515(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x6, 0xc6c3edb6bb89194d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3b1bf116a14cf10a # initialize rs2
la x9, scratch # base address 
addi x9, x9, 689 # sub immediate from rs1 to counter offset
sd x29, -689 (x9) # store value to put something in memory
lb x6, -689(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x70c05c13b032902b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7beb850cd2400b59 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1430 # sub immediate from rs1 to counter offset
sd x2, 1430 (x10) # store value to put something in memory
lb x21, 1430(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0x44e9c284f625ee23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1b0fc3c5e68617d6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1191 # sub immediate from rs1 to counter offset
sd x10, -1191 (x11) # store value to put something in memory
lb x29, -1191(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x52b8d8914818f4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcfee4bc028aa4f41 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1896 # sub immediate from rs1 to counter offset
sd x23, -1896 (x12) # store value to put something in memory
lb x25, -1896(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0x6963c7f14e262146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf6a653d4912c4fe8 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1591 # sub immediate from rs1 to counter offset
sd x7, -1591 (x13) # store value to put something in memory
lb x21, -1591(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0xdd9d5a296337733e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x91efec2440686b94 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1189 # sub immediate from rs1 to counter offset
sd x6, -1189 (x14) # store value to put something in memory
lb x27, -1189(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0xf45c175ca602a0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x773d7549d7259d93 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1688 # sub immediate from rs1 to counter offset
sd x27, 1688 (x15) # store value to put something in memory
lb x28, 1688(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x10, 0xd832e38ce23c212a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x323f23aa8abf2795 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1057 # sub immediate from rs1 to counter offset
sd x22, -1057 (x16) # store value to put something in memory
lb x10, -1057(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0xe1de70032a7aea91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2a9866a479fd6948 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1741 # sub immediate from rs1 to counter offset
sd x12, -1741 (x17) # store value to put something in memory
lb x15, -1741(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0x9cfecac89c0de002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe68f7d1b31fc67aa # initialize rs2
la x18, scratch # base address 
addi x18, x18, 107 # sub immediate from rs1 to counter offset
sd x11, -107 (x18) # store value to put something in memory
lb x22, -107(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0xd77db22f264d929f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb0966416c0a30e46 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -543 # sub immediate from rs1 to counter offset
sd x6, 543 (x19) # store value to put something in memory
lb x10, 543(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x3bfb185968da4cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x34147509bc031b25 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 616 # sub immediate from rs1 to counter offset
sd x18, -616 (x20) # store value to put something in memory
lb x22, -616(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0x52456a493988ac98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8caa65c7690fc3d9 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1973 # sub immediate from rs1 to counter offset
sd x9, 1973 (x21) # store value to put something in memory
lb x28, 1973(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x4, 0x18b1507f4c0dd019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa1d0f574fa814f2a # initialize rs2
la x22, scratch # base address 
addi x22, x22, 321 # sub immediate from rs1 to counter offset
sd x25, -321 (x22) # store value to put something in memory
lb x4, -321(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0xd434b7c14ab4ce37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbbd025c74d1077e7 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1933 # sub immediate from rs1 to counter offset
sd x26, -1933 (x23) # store value to put something in memory
lb x27, -1933(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xcf4ceb18e7bd901b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd186a34cde0e2bc0 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 2024 # sub immediate from rs1 to counter offset
sd x13, -2024 (x24) # store value to put something in memory
lb x19, -2024(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x30, 0xa5a35b1a54e2821c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x071a3f29a664c1c0 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 556 # sub immediate from rs1 to counter offset
sd x11, -556 (x25) # store value to put something in memory
lb x30, -556(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x501317f259ca3e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc96f21b032c94029 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1336 # sub immediate from rs1 to counter offset
sd x11, -1336 (x26) # store value to put something in memory
lb x13, -1336(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x29, 0x6b8b721811c2f458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xec878465fb60fbc5 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -517 # sub immediate from rs1 to counter offset
sd x31, 517 (x27) # store value to put something in memory
lb x29, 517(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x1ce2f985181698fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x746c95c7117b030a # initialize rs2
la x28, scratch # base address 
addi x28, x28, -838 # sub immediate from rs1 to counter offset
sd x16, 838 (x28) # store value to put something in memory
lb x4, 838(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0x01a673764f7c39f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8372b44c7107a4c9 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1559 # sub immediate from rs1 to counter offset
sd x24, -1559 (x29) # store value to put something in memory
lb x21, -1559(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0xe8629525de46fb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x516953d08295a911 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1901 # sub immediate from rs1 to counter offset
sd x14, -1901 (x30) # store value to put something in memory
lb x25, -1901(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x19, 0xeaf54955ab3926e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x869e5f2bd1c25144 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1086 # sub immediate from rs1 to counter offset
sd x7, 1086 (x31) # store value to put something in memory
lb x19, 1086(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xfc62c90d09ca4ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9908e02eb66e7160 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x7) # store value to put something in memory
lb x22, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0x78d17e9948e19fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sd x13, 0 (x16) # store value to put something in memory
lb x27, 0(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x83fbaa448a5fec78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x5) # store value to put something in memory
lb x19, -1(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0x2cad226ab5284a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x993bd1de54b8676b # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x14) # store value to put something in memory
lb x8, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0xa037644e364576bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1 # sub immediate from rs1 to counter offset
sd x4, 1 (x18) # store value to put something in memory
lb x8, 1(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0x00897b412b7d8413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sd x4, -1 (x26) # store value to put something in memory
lb x12, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xa5becfcdc8a55efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3366c6ff324ad4b5 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x15) # store value to put something in memory
lb x13, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x30, 0xab69c8380ae0519a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -2 # sub immediate from rs1 to counter offset
sd x9, 2 (x6) # store value to put something in memory
lb x30, 2(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0x81cccfbb594a21a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sd x19, -1 (x11) # store value to put something in memory
lb x22, -1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x23, 0x312233d0de4b51e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6c115de3dd3e91e2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x9) # store value to put something in memory
lb x23, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x22, 0x7794cb49367ecb1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000080 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -128 # sub immediate from rs1 to counter offset
sd x31, 128 (x20) # store value to put something in memory
lb x22, 128(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x19, 0x6b942b74c5f48cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000080 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sd x8, -1 (x1) # store value to put something in memory
lb x19, -1(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x17, 0xdcabddd43bccf7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x206ccf21159f45c5 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x24) # store value to put something in memory
lb x17, 0(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x19, 0x385e1613f1697ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000081 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -129 # sub immediate from rs1 to counter offset
sd x31, 129 (x13) # store value to put something in memory
lb x19, 129(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x25, 0xe121204122d850b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000081 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sd x31, -1 (x22) # store value to put something in memory
lb x25, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x4, 0x3a3f4d2a6a1057b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9b2b833a63b6bb4e # initialize rs2
la x5, scratch # base address 
addi x5, x5, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x5) # store value to put something in memory
lb x4, 0(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x19, 0x2c1db6c1d0c64554 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x000000000000007f # initialize rs2
la x7, scratch # base address 
addi x7, x7, -127 # sub immediate from rs1 to counter offset
sd x30, 127 (x7) # store value to put something in memory
lb x19, 127(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x22, 0x9a12ef54b50b832b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x000000000000007f # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sd x30, -1 (x1) # store value to put something in memory
lb x22, -1(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x24, 0x7aa2e803f6b8a345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9d2014162e557e42 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x14) # store value to put something in memory
lb x24, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x25, 0xdccff1f766cb612d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x000000000000007e # initialize rs2
la x30, scratch # base address 
addi x30, x30, -126 # sub immediate from rs1 to counter offset
sd x5, 126 (x30) # store value to put something in memory
lb x25, 126(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x4, 0xe6646b9869aae0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x000000000000007e # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x9) # store value to put something in memory
lb x4, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x26, 0x8ceca82558a0a23a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb9f531602bd50129 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x1) # store value to put something in memory
lb x26, 0(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x22, 0xac06beb950c01768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000000000ff # initialize rs2
la x31, scratch # base address 
addi x31, x31, -255 # sub immediate from rs1 to counter offset
sd x29, 255 (x31) # store value to put something in memory
lb x22, 255(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x1, 0x6cdb87e02a59da25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000000000ff # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1 # sub immediate from rs1 to counter offset
sd x19, -1 (x8) # store value to put something in memory
lb x1, -1(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x12, 0x8d2635fef44e7783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xeb7f8c3d2df34367 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x1) # store value to put something in memory
lb x12, 0(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x24, 0x580621dac18ac310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000000000fe # initialize rs2
la x6, scratch # base address 
addi x6, x6, -254 # sub immediate from rs1 to counter offset
sd x12, 254 (x6) # store value to put something in memory
lb x24, 254(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x1, 0x0e365fc978c5b282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000000000fe # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sd x4, -1 (x22) # store value to put something in memory
lb x1, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x13, 0xe420f024792bc2fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb7b5caaf044c1bf1 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x3) # store value to put something in memory
lb x13, 0(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x25, 0xd8b894ba37dcd6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000055 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -85 # sub immediate from rs1 to counter offset
sd x11, 85 (x19) # store value to put something in memory
lb x25, 85(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x23, 0xb3a0c9e1835eda5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000055 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sd x5, -1 (x1) # store value to put something in memory
lb x23, -1(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x2, 0x4c1e861c20b98d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd176e3bf9710cc9a # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x20) # store value to put something in memory
lb x2, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x20, 0x73d727eb1424aebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000000000aa # initialize rs2
la x24, scratch # base address 
addi x24, x24, -170 # sub immediate from rs1 to counter offset
sd x30, 170 (x24) # store value to put something in memory
lb x20, 170(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x1, 0x15e1acf3c65daab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000000000aa # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1 # sub immediate from rs1 to counter offset
sd x28, -1 (x30) # store value to put something in memory
lb x1, -1(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x18, 0xce8dfc022c3862f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0ce9c11a0b461c3b # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x20) # store value to put something in memory
lb x18, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x29, 0x56472303b0d94e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x000000000000005b # initialize rs2
la x23, scratch # base address 
addi x23, x23, -91 # sub immediate from rs1 to counter offset
sd x7, 91 (x23) # store value to put something in memory
lb x29, 91(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x18, 0x47fdf12353daa246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x000000000000005b # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x17) # store value to put something in memory
lb x18, -1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x28, 0xfc7bb2a899c6ce85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x322d39288d82cfa8 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x20) # store value to put something in memory
lb x28, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x17, 0xefefc3c6afcc4a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000000000db # initialize rs2
la x28, scratch # base address 
addi x28, x28, -219 # sub immediate from rs1 to counter offset
sd x21, 219 (x28) # store value to put something in memory
lb x17, 219(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x3, 0xc4d58d9cea778fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000000000db # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1 # sub immediate from rs1 to counter offset
sd x2, -1 (x25) # store value to put something in memory
lb x3, -1(x25) # perform operation

# Testcase cp_imm_zero
li x14, 0xebb7b0ba8c0e79a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe0780947e87aeae9 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 0 # sub immediate from rs1 to counter offset
sd x10, 0 (x19) # store value to put something in memory
lb x14, 0(x19) # perform operation

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
