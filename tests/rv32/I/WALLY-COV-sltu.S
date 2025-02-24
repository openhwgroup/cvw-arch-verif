///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sltu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.990804
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x64a6ee47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcddb1ca4 # initialize rs1
li x2, 0xfe8b0571 # initialize rs2
sltu x0, x28, x2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x377a178c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa64f90ef # initialize rs1
li x16, 0x60d3968c # initialize rs2
sltu x1, x6, x16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xad25c945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf5478cf4 # initialize rs1
li x7, 0x4ad24f2c # initialize rs2
sltu x2, x30, x7 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc7ad2771 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x36ed4232 # initialize rs1
li x25, 0x2acbf690 # initialize rs2
sltu x3, x14, x25 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x251e7da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbb4d35d7 # initialize rs1
li x19, 0x590c1699 # initialize rs2
sltu x4, x4, x19 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x27fd6331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcebe0fa5 # initialize rs1
li x11, 0xf666a670 # initialize rs2
sltu x5, x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf7e690a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x39d6f516 # initialize rs1
li x5, 0x1a5917fb # initialize rs2
sltu x6, x25, x5 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x8741b630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd4ffd01c # initialize rs1
li x5, 0x59fc30c6 # initialize rs2
sltu x7, x23, x5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe9f62d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaf05b6c # initialize rs1
li x9, 0x098988c8 # initialize rs2
sltu x8, x22, x9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x61a445cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa89197e7 # initialize rs1
li x23, 0xe41efbfb # initialize rs2
sltu x9, x6, x23 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x0b718920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x60898ae3 # initialize rs1
li x14, 0xf1594266 # initialize rs2
sltu x10, x7, x14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x4d337e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc7639385 # initialize rs1
li x18, 0xb70a0c65 # initialize rs2
sltu x11, x8, x18 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x146976f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xac851432 # initialize rs1
li x11, 0x30ab432f # initialize rs2
sltu x12, x21, x11 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7d3591c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfae2e320 # initialize rs1
li x25, 0x07d40afe # initialize rs2
sltu x13, x23, x25 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd2289058 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x573a9030 # initialize rs1
li x12, 0x42dcdd9d # initialize rs2
sltu x14, x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x834f4185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0cb64a65 # initialize rs1
li x6, 0x3a58862b # initialize rs2
sltu x15, x2, x6 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xfba007d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb9a67039 # initialize rs1
li x27, 0x49294df0 # initialize rs2
sltu x16, x4, x27 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x19e0d740 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc2558384 # initialize rs1
li x20, 0x11b97aa9 # initialize rs2
sltu x17, x14, x20 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xc0a5a61f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x943f201f # initialize rs1
li x26, 0x8737f163 # initialize rs2
sltu x18, x22, x26 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xcb9aafd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x31d8666c # initialize rs1
li x26, 0xcffa0c45 # initialize rs2
sltu x19, x7, x26 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf4944fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0b419d40 # initialize rs1
li x19, 0xd1c39f67 # initialize rs2
sltu x20, x17, x19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xb26333d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcfecac65 # initialize rs1
li x31, 0xbe91ea74 # initialize rs2
sltu x21, x15, x31 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x46f24c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x99804415 # initialize rs1
li x4, 0x5e328969 # initialize rs2
sltu x22, x26, x4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8e5f99f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5d4a5d87 # initialize rs1
li x28, 0x0d7ab617 # initialize rs2
sltu x23, x4, x28 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9bc850f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7bba1354 # initialize rs1
li x7, 0x71474b50 # initialize rs2
sltu x24, x22, x7 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xbd6ce1d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0d976624 # initialize rs1
li x22, 0x36d7ad76 # initialize rs2
sltu x25, x10, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xbd899495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3ae73cda # initialize rs1
li x24, 0x93925496 # initialize rs2
sltu x26, x30, x24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa00656bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaff01435 # initialize rs1
li x24, 0xc55962c1 # initialize rs2
sltu x27, x17, x24 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe54f96f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd3c8efc1 # initialize rs1
li x22, 0x692990a5 # initialize rs2
sltu x28, x13, x22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x9cb24327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0c35a0aa # initialize rs1
li x9, 0x3fdcaa7d # initialize rs2
sltu x29, x25, x9 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1565c659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6e2e4867 # initialize rs1
li x5, 0x77257d7f # initialize rs2
sltu x30, x3, x5 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x54faf849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf115f0f9 # initialize rs1
li x15, 0xd0361a96 # initialize rs2
sltu x31, x10, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x21, 0x3945c8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa45bd315 # initialize rs1
li x16, 0x9a7593b0 # initialize rs2
sltu x21, x0, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x23, 0x98dcc97a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfd2a1227 # initialize rs1
li x24, 0x1ed9b3c2 # initialize rs2
sltu x23, x1, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x31, 0x0fe2c52b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x59e054de # initialize rs1
li x9, 0x2573350a # initialize rs2
sltu x31, x2, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0x60168b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa27b9afe # initialize rs1
li x4, 0x8bd12b45 # initialize rs2
sltu x21, x3, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x15, 0xbf613345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc1032a17 # initialize rs1
li x12, 0xbb4d148b # initialize rs2
sltu x15, x4, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x27, 0x02582329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb8e5517e # initialize rs1
li x30, 0x8533f0cb # initialize rs2
sltu x27, x5, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0x53499bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3a674a76 # initialize rs1
li x31, 0xa79675cd # initialize rs2
sltu x29, x6, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x28, 0x5588b3f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe80dbd7d # initialize rs1
li x1, 0x96f2f2be # initialize rs2
sltu x28, x7, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x74ee5cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf5622897 # initialize rs1
li x19, 0x983176b7 # initialize rs2
sltu x12, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x01088202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xae79c17f # initialize rs1
li x19, 0xaa5a6d15 # initialize rs2
sltu x25, x9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0xaad23b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x817d187f # initialize rs1
li x22, 0xe0377256 # initialize rs2
sltu x24, x10, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0x4718c2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6595ede9 # initialize rs1
li x22, 0xbebc6311 # initialize rs2
sltu x21, x11, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0x811cfaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x822e425c # initialize rs1
li x22, 0xbb67ff60 # initialize rs2
sltu x6, x12, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x8954613f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x59587c89 # initialize rs1
li x12, 0x6e1740b2 # initialize rs2
sltu x10, x13, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0x7b79c452 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3dee6ba5 # initialize rs1
li x7, 0xd891ce0e # initialize rs2
sltu x28, x14, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0xe94369f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd20cfbc7 # initialize rs1
li x19, 0xb0b435f7 # initialize rs2
sltu x11, x15, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0xb2061b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7556ca77 # initialize rs1
li x7, 0x08742943 # initialize rs2
sltu x18, x16, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x99386927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6eb632ab # initialize rs1
li x20, 0x1562ceff # initialize rs2
sltu x30, x17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0xe680a7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x60e13f3c # initialize rs1
li x23, 0x46ae92c1 # initialize rs2
sltu x20, x18, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x11, 0x2971ab28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x330b1b66 # initialize rs1
li x15, 0x8ea6721d # initialize rs2
sltu x11, x19, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x5, 0x2d9f23c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7200722d # initialize rs1
li x26, 0x9737754e # initialize rs2
sltu x5, x20, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x0d3e45ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdba9663d # initialize rs1
li x24, 0x3990dd0f # initialize rs2
sltu x26, x21, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x5b1b8fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9c6fd88c # initialize rs1
li x29, 0x37efe846 # initialize rs2
sltu x9, x22, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x6, 0x5efa2327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdf68c171 # initialize rs1
li x16, 0xba1e8a6a # initialize rs2
sltu x6, x23, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x27, 0xe1cb9588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9bdc4f1c # initialize rs1
li x10, 0x801aab28 # initialize rs2
sltu x27, x24, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0x0948a1d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0865bb71 # initialize rs1
li x30, 0x95929c4b # initialize rs2
sltu x7, x25, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x152126c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xde9982ed # initialize rs1
li x21, 0x22e2a576 # initialize rs2
sltu x2, x26, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x15, 0xb41b65fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe0c4488a # initialize rs1
li x14, 0x196fc7c0 # initialize rs2
sltu x15, x27, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0xbfc2ce57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xde3474de # initialize rs1
li x4, 0xb1dc5a04 # initialize rs2
sltu x12, x28, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x883a3dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1686421f # initialize rs1
li x2, 0xb2ecdb2c # initialize rs2
sltu x27, x29, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0x22158072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa7b88419 # initialize rs1
li x1, 0xf0840405 # initialize rs2
sltu x17, x30, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0xcedd1048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcd258515 # initialize rs1
li x10, 0x45d2f36a # initialize rs2
sltu x28, x31, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x19, 0x01440417 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9c4572ee # initialize rs1
li x0, 0x8d15b311 # initialize rs2
sltu x19, x30, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x20, 0x9cab5524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf72e4375 # initialize rs1
li x1, 0xe49548dd # initialize rs2
sltu x20, x13, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x25, 0xa8c5ee42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc58f6f4d # initialize rs1
li x2, 0x5a2f2307 # initialize rs2
sltu x25, x6, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x2, 0xcc798d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe5373567 # initialize rs1
li x3, 0x28680b65 # initialize rs2
sltu x2, x24, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x5, 0x78f0cd1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5e80ea29 # initialize rs1
li x4, 0xfc5d3476 # initialize rs2
sltu x5, x28, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x23, 0x6f46cf6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfad9cc2f # initialize rs1
li x5, 0x3f88753c # initialize rs2
sltu x23, x13, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x10, 0xa52d2422 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7770eabb # initialize rs1
li x6, 0x9bea115e # initialize rs2
sltu x10, x8, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x30, 0xda1de4b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5766dc1b # initialize rs1
li x7, 0xc8562f06 # initialize rs2
sltu x30, x4, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x5, 0xe46b97ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7991a686 # initialize rs1
li x8, 0xb66ad683 # initialize rs2
sltu x5, x3, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0xcceefc68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc89dcb3d # initialize rs1
li x9, 0x2f5d4968 # initialize rs2
sltu x11, x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x4109cf8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb232147d # initialize rs1
li x10, 0x9518263c # initialize rs2
sltu x4, x17, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x5082fa64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x47013035 # initialize rs1
li x11, 0x2b7bbe2b # initialize rs2
sltu x26, x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0x03642ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2d49a4b1 # initialize rs1
li x12, 0x58b9436f # initialize rs2
sltu x8, x29, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x4ef665e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcf1952dd # initialize rs1
li x13, 0x0580b3a2 # initialize rs2
sltu x22, x2, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0xbcd4e0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3c60271c # initialize rs1
li x14, 0xa0712a5d # initialize rs2
sltu x8, x23, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0xe58458a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x51fc65c4 # initialize rs1
li x15, 0x4ea43bdb # initialize rs2
sltu x23, x3, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0xb903894c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xde0a298e # initialize rs1
li x16, 0xec4b71e9 # initialize rs2
sltu x7, x27, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0x0275cdab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x533e9f06 # initialize rs1
li x17, 0x540418b4 # initialize rs2
sltu x30, x12, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x21, 0xd84c8858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf4ee4945 # initialize rs1
li x18, 0xdbd90a2d # initialize rs2
sltu x21, x2, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x7e206f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3c3c1a34 # initialize rs1
li x19, 0xd913638e # initialize rs2
sltu x8, x4, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x41c652b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x450792c1 # initialize rs1
li x20, 0x778908a0 # initialize rs2
sltu x31, x19, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0x3b0d925b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8ac3e03d # initialize rs1
li x21, 0xec171b4d # initialize rs2
sltu x26, x23, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0xe2285db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x014ed90c # initialize rs1
li x22, 0x4bfa159b # initialize rs2
sltu x7, x19, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0x16508330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x871cb980 # initialize rs1
li x23, 0x2026d655 # initialize rs2
sltu x10, x17, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0xf9a61474 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x074e865e # initialize rs1
li x24, 0x33057b73 # initialize rs2
sltu x6, x23, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0xeff43fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x334d4f11 # initialize rs1
li x25, 0x4b3ec529 # initialize rs2
sltu x15, x5, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0x7018db05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbcb11cfd # initialize rs1
li x26, 0x1a2935a5 # initialize rs2
sltu x16, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0xd375fb7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xef2fc625 # initialize rs1
li x27, 0xe6b8c8c5 # initialize rs2
sltu x9, x15, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0xa293d8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x65115e6f # initialize rs1
li x28, 0x0dcc3345 # initialize rs2
sltu x16, x21, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0x53513f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x104ff33e # initialize rs1
li x29, 0x312a15a0 # initialize rs2
sltu x8, x7, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0xb4a24be2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x31e14883 # initialize rs1
li x30, 0x78f13719 # initialize rs2
sltu x27, x21, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x27, 0xca47fc4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x54cec697 # initialize rs1
li x31, 0xffb900d5 # initialize rs2
sltu x27, x29, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x60dbd12a)
li x10, 0xaecac6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaecac6b0 # initialize rs1
li x0, 0xe9e78059 # initialize rs2
sltu x10, x3, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x83063e33)
li x9, 0x83063e33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x83063e33 # initialize rs1
li x20, 0x83063e33 # initialize rs2
sltu x9, x0, x20 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xac1a786)
li x9, 0xdf43718b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0ac1a786 # initialize rs1
li x15, 0x0ac1a786 # initialize rs2
sltu x9, x11, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0xba0fad17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x9, 0xbb52ee66 # initialize rs2
sltu x22, x24, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0xf7be5a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x2, 0x7846a387 # initialize rs2
sltu x29, x30, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x57ec4793 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x6, 0xca85c349 # initialize rs2
sltu x21, x14, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x17, 0xec9aa9c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x14, 0x6307481f # initialize rs2
sltu x17, x29, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x31, 0x0bfe4008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x17, 0x9c362d1e # initialize rs2
sltu x31, x22, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0x686197a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x2, 0x142479de # initialize rs2
sltu x31, x11, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0x53348e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x1, 0xc49f4310 # initialize rs2
sltu x10, x24, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xfffd185e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x18, 0xafd84504 # initialize rs2
sltu x17, x28, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x5c4552b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x8, 0xf5ad2ead # initialize rs2
sltu x14, x18, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x23, 0x65d822ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x22, 0x756532b6 # initialize rs2
sltu x23, x13, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x18, 0x388b212a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x15, 0xc995f978 # initialize rs2
sltu x18, x3, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x1202d020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
li x25, 0xe332423f # initialize rs2
sltu x19, x24, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x77fb427e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcf59a9df # initialize rs1
li x10, 0x00000000 # initialize rs2
sltu x9, x14, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0xc4472ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf0d1192b # initialize rs1
li x11, 0x00000001 # initialize rs2
sltu x20, x22, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xdaf31cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x11fbc691 # initialize rs1
li x27, 0x00000002 # initialize rs2
sltu x24, x1, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x8, 0xf544742d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x261224e9 # initialize rs1
li x3, 0x80000000 # initialize rs2
sltu x8, x17, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x5, 0x71494dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x10beb0f2 # initialize rs1
li x4, 0x80000001 # initialize rs2
sltu x5, x2, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x8, 0x678bf55f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb88aa43d # initialize rs1
li x27, 0x7fffffff # initialize rs2
sltu x8, x3, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0xcb73fc53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2e5833ca # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sltu x2, x15, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xc6a40ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1b48e9a9 # initialize rs1
li x3, 0xffffffff # initialize rs2
sltu x2, x25, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0x91164938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6df055ac # initialize rs1
li x22, 0xfffffffe # initialize rs2
sltu x14, x2, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x1, 0x1d3940ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbd204ee2 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
sltu x1, x11, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x5, 0xc781c2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb658e10f # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
sltu x5, x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x17, 0xea18f090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbbfa5648 # initialize rs1
li x19, 0x55555555 # initialize rs2
sltu x17, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0xf15d18ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
sltu x30, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0x4971d4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000 # initialize rs1
li x29, 0x00000001 # initialize rs2
sltu x2, x26, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x2c304882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x18, 0x00000002 # initialize rs2
sltu x2, x20, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0xfd6c2f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
sltu x21, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x6, 0x15722c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
sltu x6, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x17, 0xffb75a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sltu x17, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x22, 0x53e5df6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sltu x22, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x9cd3c6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x2, 0xffffffff # initialize rs2
sltu x31, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0xd956509f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x12, 0xfffffffe # initialize rs2
sltu x6, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x2, 0x22c0c34d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
sltu x2, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x20, 0x53df0b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
sltu x20, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x15, 0xf475c4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
sltu x15, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0xffb1432d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
sltu x12, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x26, 0x2d3a610e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
sltu x26, x6, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0xb7001c18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
sltu x21, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x12, 0x68d16585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x4, 0x80000000 # initialize rs2
sltu x12, x17, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x6, 0x694a6966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
sltu x6, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x23, 0x93d13ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x30, 0x7fffffff # initialize rs2
sltu x23, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x2, 0x338f9719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sltu x2, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x29, 0xadbf6c65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
sltu x29, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x18, 0x8060e097 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
sltu x18, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x26, 0xd40b0db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
sltu x26, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x20, 0x4439d680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
sltu x20, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x14, 0xb037fd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x25, 0x55555555 # initialize rs2
sltu x14, x12, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x13, 0x1b54e8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
sltu x13, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0xeb4634fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x21, 0x00000001 # initialize rs2
sltu x9, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0xefc97e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
sltu x23, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x3, 0xd119f0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x20, 0x80000000 # initialize rs2
sltu x3, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x28, 0x6812bd63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
sltu x28, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x31, 0x7f56a169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sltu x31, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x15, 0x76e60c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sltu x15, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0x8f210f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x22, 0xffffffff # initialize rs2
sltu x27, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x1, 0x95be3bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sltu x1, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x29, 0x56993e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
sltu x29, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x1, 0xeb1f67ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sltu x1, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0xf3155749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x29, 0x55555555 # initialize rs2
sltu x9, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x5, 0xafdff611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
sltu x5, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x29, 0x19bd2b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x12, 0x00000001 # initialize rs2
sltu x29, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x4, 0xf40e0c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
sltu x4, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x7, 0xd758f2be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
sltu x7, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x24, 0xde19042d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000000 # initialize rs1
li x1, 0x80000001 # initialize rs2
sltu x24, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x10, 0x864962b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sltu x10, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x26, 0xc27a71f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sltu x26, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x5, 0x74ca6520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
sltu x5, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x6, 0x0e23377e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
sltu x6, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x22, 0x7434f515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
sltu x22, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0xd679f5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sltu x22, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x7, 0xbf97b2ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
sltu x7, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x23, 0xf5cdf624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x28, 0x00000000 # initialize rs2
sltu x23, x15, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x28, 0x911643c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
sltu x28, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x9, 0x0e770b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x29, 0x00000002 # initialize rs2
sltu x9, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0xd0ef6d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x15, 0x80000000 # initialize rs2
sltu x23, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x31, 0x1c8cddb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
sltu x31, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x25, 0xeb5c7e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
sltu x25, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x15, 0xb2cf2bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sltu x15, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x20, 0x10db9704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
sltu x20, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x6, 0x7c61760e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sltu x6, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x28, 0x1da2e05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
sltu x28, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x93fee803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sltu x31, x12, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x2, 0x285b9f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x15, 0x55555555 # initialize rs2
sltu x2, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x9, 0xf0d2ec36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
sltu x9, x15, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x7, 0xefa6bc1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
sltu x7, x2, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x1, 0xeba94b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
sltu x1, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x11, 0x82e6eb85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
sltu x11, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x18, 0xfc010a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x25, 0x80000001 # initialize rs2
sltu x18, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x23, 0x33f24ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
sltu x23, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x2, 0x0c4139cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sltu x2, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x19, 0x507573ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
sltu x19, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x3ec16007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x29, 0xfffffffe # initialize rs2
sltu x28, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x22, 0x7876aaec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
sltu x22, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x1, 0xe4498a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sltu x1, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x5, 0xcf6c67c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
sltu x5, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x19, 0xfdcc95c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x30, 0x00000000 # initialize rs2
sltu x19, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x4, 0x8913ec80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
sltu x4, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x23, 0xcccdac75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x19, 0x00000002 # initialize rs2
sltu x23, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x4, 0x319839af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
sltu x4, x13, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x8, 0xd8ff872e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
sltu x8, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x13, 0x90c2d008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
sltu x13, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x10, 0x3046337a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sltu x10, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x27, 0x20e53c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x24, 0xffffffff # initialize rs2
sltu x27, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x24, 0xeb2df51e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
sltu x24, x4, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x4, 0xa4e50ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
sltu x4, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x15, 0x3fc86b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sltu x15, x25, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x9, 0xbb9bc0db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x7, 0x55555555 # initialize rs2
sltu x9, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0xad771cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
sltu x6, x24, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x28, 0x1955676e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
sltu x28, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0x445e58a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x21, 0x00000002 # initialize rs2
sltu x8, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x23, 0x8a4f5e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
sltu x23, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x24, 0x2b784300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
sltu x24, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x24, 0x36166ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
sltu x24, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x2, 0xe2df03d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sltu x2, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x27, 0x0cd4a342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
sltu x27, x11, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x24, 0xc421b0fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x13, 0xfffffffe # initialize rs2
sltu x24, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x25, 0x5c92e67c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
sltu x25, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0x03660117 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sltu x2, x3, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x8, 0xd5b8d90f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
sltu x8, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0x1d33299f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
sltu x23, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x28, 0x7311a05a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x11, 0x00000001 # initialize rs2
sltu x28, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0x00173870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x4, 0x00000002 # initialize rs2
sltu x28, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x29, 0xc615b4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
sltu x29, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x1, 0xf0878f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
sltu x1, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x16, 0x9cf19248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
sltu x16, x10, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x7, 0x7e44fe90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sltu x7, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0xb0886232 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x23, 0xffffffff # initialize rs2
sltu x26, x15, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x6, 0x4e865608 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
sltu x6, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x21, 0x6357b190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
sltu x21, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x22, 0xdf6cc6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sltu x22, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xa1e8a88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x7, 0x55555555 # initialize rs2
sltu x11, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x12, 0x9859b226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x19, 0x00000000 # initialize rs2
sltu x12, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x24, 0xa5e72e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x18, 0x00000001 # initialize rs2
sltu x24, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x4, 0xbc44bb3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x3, 0x00000002 # initialize rs2
sltu x4, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x28, 0xe998fe6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x24, 0x80000000 # initialize rs2
sltu x28, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x23, 0x532bc37f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x8, 0x80000001 # initialize rs2
sltu x23, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x10, 0x27475d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x31, 0x7fffffff # initialize rs2
sltu x10, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x30, 0xb3411755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sltu x30, x9, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x1, 0x3db953de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x23, 0xffffffff # initialize rs2
sltu x1, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x12, 0xadda2ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x14, 0xfffffffe # initialize rs2
sltu x12, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x4, 0x8249c500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
sltu x4, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x9, 0x35c7fe60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
sltu x9, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x29, 0x1162d5df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x17, 0x55555555 # initialize rs2
sltu x29, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x29, 0xdcfe77e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
sltu x29, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x28, 0xd34e50bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x4, 0x00000001 # initialize rs2
sltu x28, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x15, 0x3a69e847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
li x19, 0x00000002 # initialize rs2
sltu x15, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x26, 0x4b67a2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaa # initialize rs1
li x11, 0x80000000 # initialize rs2
sltu x26, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x26, 0xf65309aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x16, 0x80000001 # initialize rs2
sltu x26, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x27, 0x156568ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x21, 0x7fffffff # initialize rs2
sltu x27, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x11, 0xa7e22568 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sltu x11, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x29, 0x9675cf2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x21, 0xffffffff # initialize rs2
sltu x29, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x18, 0x9378fcff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x25, 0xfffffffe # initialize rs2
sltu x18, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x22, 0x04bbdb57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
sltu x22, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x2, 0xdba79181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sltu x2, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x25, 0x72b66654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x3, 0x55555555 # initialize rs2
sltu x25, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x24, 0x91468113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x15, 0x00000000 # initialize rs2
sltu x24, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x20, 0xc4982b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x28, 0x00000001 # initialize rs2
sltu x20, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x16, 0x830b692e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
sltu x16, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x19, 0x6a0c172d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x11, 0x80000000 # initialize rs2
sltu x19, x6, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x25, 0xf7052ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x7, 0x80000001 # initialize rs2
sltu x25, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x3f670c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55555555 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sltu x14, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0xa824072b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sltu x29, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x15, 0x711aacd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x3, 0xffffffff # initialize rs2
sltu x15, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x24, 0xf8dd71ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x23, 0xfffffffe # initialize rs2
sltu x24, x15, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x6, 0x2a6d21b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
sltu x6, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x22, 0xecb62371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sltu x22, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x21, 0x1007f5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
sltu x21, x15, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf908fc23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x29a31f39 # initialize rs1
li x25, 0x99c32abc # initialize rs2
sltu x0, x0, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x28a93f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1f68c152 # initialize rs1
li x5, 0x77316e72 # initialize rs2
sltu x1, x1, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x94988814 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x94365303 # initialize rs1
li x5, 0x42847bfd # initialize rs2
sltu x2, x2, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0c33e493 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2312be54 # initialize rs1
li x12, 0x44408d24 # initialize rs2
sltu x3, x3, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x6d786660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x98fab48b # initialize rs1
li x2, 0xd8531bd8 # initialize rs2
sltu x4, x4, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xa683ef91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6c2981be # initialize rs1
li x11, 0xdeb63790 # initialize rs2
sltu x5, x5, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x728d5d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5ef2a177 # initialize rs1
li x18, 0x0b279305 # initialize rs2
sltu x6, x6, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xcbce8d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6c8a42f1 # initialize rs1
li x31, 0x86c9769d # initialize rs2
sltu x7, x7, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa790a57e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc935a12 # initialize rs1
li x13, 0x49adf38d # initialize rs2
sltu x8, x8, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x539a50e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x928877c5 # initialize rs1
li x8, 0x522f2ef0 # initialize rs2
sltu x9, x9, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd3d39aa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4f32a30e # initialize rs1
li x15, 0xb4891207 # initialize rs2
sltu x10, x10, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1638c2ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9bba83ce # initialize rs1
li x19, 0x520dcdde # initialize rs2
sltu x11, x11, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xede82a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa32387fe # initialize rs1
li x31, 0x3538e705 # initialize rs2
sltu x12, x12, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x52e6b616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55f39392 # initialize rs1
li x22, 0xcd43afdc # initialize rs2
sltu x13, x13, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xaeb72a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb0828995 # initialize rs1
li x9, 0xcb943da9 # initialize rs2
sltu x14, x14, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1e303dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x102590a1 # initialize rs1
li x31, 0xa0786900 # initialize rs2
sltu x15, x15, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb962d59f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x511d79be # initialize rs1
li x14, 0xd65bdcd0 # initialize rs2
sltu x16, x16, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4ee3b09a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfee47cfa # initialize rs1
li x25, 0x7a2f2cc9 # initialize rs2
sltu x17, x17, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x88d16085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa9e08f38 # initialize rs1
li x31, 0x2f872c57 # initialize rs2
sltu x18, x18, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x51ade47b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x990ae92a # initialize rs1
li x26, 0x6b645286 # initialize rs2
sltu x19, x19, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0bb23aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xce3c55c2 # initialize rs1
li x24, 0x6efacd3f # initialize rs2
sltu x20, x20, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfbe7ff57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8727ea2d # initialize rs1
li x10, 0xc434807c # initialize rs2
sltu x21, x21, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbb1544eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0c221e20 # initialize rs1
li x22, 0x7a83871e # initialize rs2
sltu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1a1cf705 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x570b4885 # initialize rs1
li x18, 0xf585a85e # initialize rs2
sltu x23, x23, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6c90bb74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x75dea3c2 # initialize rs1
li x5, 0xc2fdc768 # initialize rs2
sltu x24, x24, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb686bf36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ee8deae # initialize rs1
li x19, 0x1eb5fe8e # initialize rs2
sltu x25, x25, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe1bf8474 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x66375e9b # initialize rs1
li x27, 0x6c78adfb # initialize rs2
sltu x26, x26, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd14cd0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb14d4349 # initialize rs1
li x31, 0x544298d0 # initialize rs2
sltu x27, x27, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x3c3b3a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf68c653c # initialize rs1
li x11, 0x702c4227 # initialize rs2
sltu x28, x28, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x2d5a5c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcf3abd01 # initialize rs1
li x14, 0x37f7e8f1 # initialize rs2
sltu x29, x29, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9ba7091a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe59d1d9f # initialize rs1
li x1, 0x1aa689e8 # initialize rs2
sltu x30, x30, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x51799b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8c3bd162 # initialize rs1
li x25, 0x6ff300f0 # initialize rs2
sltu x31, x31, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xbf0229cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2e1601e5 # initialize rs1
li x0, 0x02ef14c8 # initialize rs2
sltu x0, x29, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x686b293c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x74363a60 # initialize rs1
li x1, 0x30647bd0 # initialize rs2
sltu x1, x27, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x2264a819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfc879411 # initialize rs1
li x2, 0x2fe9defc # initialize rs2
sltu x2, x19, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xf89558e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x63e8aeca # initialize rs1
li x3, 0x55e30a34 # initialize rs2
sltu x3, x28, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x2b35c767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x528bad71 # initialize rs1
li x4, 0x27754af6 # initialize rs2
sltu x4, x22, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x7a3c98b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xddb76408 # initialize rs1
li x5, 0xfa048ce2 # initialize rs2
sltu x5, x2, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x3e485978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa9dad576 # initialize rs1
li x6, 0x5e26a4f9 # initialize rs2
sltu x6, x25, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xe3bd4170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6b1caa90 # initialize rs1
li x7, 0x8d413bb8 # initialize rs2
sltu x7, x30, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x0ae61fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x07630f18 # initialize rs1
li x8, 0xd8f66325 # initialize rs2
sltu x8, x14, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x73bbdc26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc611c370 # initialize rs1
li x9, 0x79ff9159 # initialize rs2
sltu x9, x12, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x962b098b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd3cd5a63 # initialize rs1
li x10, 0xf77eef71 # initialize rs2
sltu x10, x29, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x9b8dab2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdd7bff14 # initialize rs1
li x11, 0xca4855f5 # initialize rs2
sltu x11, x24, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x6676f935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1dea395b # initialize rs1
li x12, 0x478bfced # initialize rs2
sltu x12, x10, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xf15e8f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5c4ffedf # initialize rs1
li x13, 0x2406218d # initialize rs2
sltu x13, x1, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x37dc6ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x46671d71 # initialize rs1
li x14, 0x75a053c2 # initialize rs2
sltu x14, x6, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xfd63b446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf4de6103 # initialize rs1
li x15, 0xb8fba449 # initialize rs2
sltu x15, x17, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x0273d9f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x838da743 # initialize rs1
li x16, 0x4c93f800 # initialize rs2
sltu x16, x30, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x2b825e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7cff64ae # initialize rs1
li x17, 0x92d6fa21 # initialize rs2
sltu x17, x14, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xe1bd739a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xcc52e772 # initialize rs1
li x18, 0x4ed4a0ed # initialize rs2
sltu x18, x30, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x00029b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa56a98a5 # initialize rs1
li x19, 0xdca87593 # initialize rs2
sltu x19, x27, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x26361a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1ebf5a88 # initialize rs1
li x20, 0x9c662e2f # initialize rs2
sltu x20, x10, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x7695a011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3d044e4a # initialize rs1
li x21, 0x04144969 # initialize rs2
sltu x21, x2, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xea9cb8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8e671aa0 # initialize rs1
li x22, 0xdc8dd877 # initialize rs2
sltu x22, x31, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xf2364119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26032814 # initialize rs1
li x23, 0xac894772 # initialize rs2
sltu x23, x15, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x6cbe2494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x81ab6075 # initialize rs1
li x24, 0xaf3887f5 # initialize rs2
sltu x24, x12, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x159860fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe9e26498 # initialize rs1
li x25, 0x84762732 # initialize rs2
sltu x25, x30, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x3bd715ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd9f601ce # initialize rs1
li x26, 0x0fcbdf1a # initialize rs2
sltu x26, x3, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x13b7713d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x83edd8f3 # initialize rs1
li x27, 0x088123bb # initialize rs2
sltu x27, x3, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xb5372ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd3167530 # initialize rs1
li x28, 0x5dd1c700 # initialize rs2
sltu x28, x29, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xac8247f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcf7a6fed # initialize rs1
li x29, 0x1b7cb619 # initialize rs2
sltu x29, x12, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x14626f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2ca2748a # initialize rs1
li x30, 0xe57396ae # initialize rs2
sltu x30, x21, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xe37655c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfb777a34 # initialize rs1
li x31, 0xf25a0c75 # initialize rs2
sltu x31, x10, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x37b7013e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x93c62e9c # initialize rs1
li x0, 0x0f72ae63 # initialize rs2
sltu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2fae0de3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9a9c34f5 # initialize rs1
li x1, 0x22a66c63 # initialize rs2
sltu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x6f4ab1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf61fefb5 # initialize rs1
li x2, 0xb104dfd4 # initialize rs2
sltu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x999874f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x047b71b6 # initialize rs1
li x3, 0x554ff560 # initialize rs2
sltu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x60e4bcff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfa77fd09 # initialize rs1
li x4, 0x5e5845c1 # initialize rs2
sltu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x364859ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe07aa6d4 # initialize rs1
li x5, 0x540309b8 # initialize rs2
sltu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xed58f9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x31825c6e # initialize rs1
li x6, 0x0ee3c60b # initialize rs2
sltu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xd444cd69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x64df110e # initialize rs1
li x7, 0xbdc834b6 # initialize rs2
sltu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6eeee810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3706acc5 # initialize rs1
li x8, 0x647719d6 # initialize rs2
sltu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x59d8e7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8a077605 # initialize rs1
li x9, 0xc9d84087 # initialize rs2
sltu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2d2f010b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcc203cd6 # initialize rs1
li x10, 0x28febb68 # initialize rs2
sltu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x71198fac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcf94323c # initialize rs1
li x11, 0xb1bd3de6 # initialize rs2
sltu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xec117a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x02b070f6 # initialize rs1
li x12, 0x90a05175 # initialize rs2
sltu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb56535cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4a1cf2ab # initialize rs1
li x13, 0x7f545d0a # initialize rs2
sltu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x33886736 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc1bd5155 # initialize rs1
li x14, 0x83aac0a5 # initialize rs2
sltu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x63389445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5836d8f5 # initialize rs1
li x15, 0xe890ba35 # initialize rs2
sltu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x5b469103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x77fd986c # initialize rs1
li x16, 0x0950a417 # initialize rs2
sltu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x9ea4ba31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd468c318 # initialize rs1
li x17, 0xe052611c # initialize rs2
sltu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x04600a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa8fce825 # initialize rs1
li x18, 0x4829efe3 # initialize rs2
sltu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd104e9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x45af7be4 # initialize rs1
li x19, 0x72c86e34 # initialize rs2
sltu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x4aed5b97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x329eae5e # initialize rs1
li x20, 0xed7d8873 # initialize rs2
sltu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xb69d1156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xeb32ad78 # initialize rs1
li x21, 0xd2d2feae # initialize rs2
sltu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x81ccd268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8859ef17 # initialize rs1
li x22, 0x980f69f0 # initialize rs2
sltu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xffca66b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x14efd005 # initialize rs1
li x23, 0x44c6011a # initialize rs2
sltu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x3c87721c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1808c17a # initialize rs1
li x24, 0x7c1ccb88 # initialize rs2
sltu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1e02ba59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9d7cfd2d # initialize rs1
li x25, 0xa922901b # initialize rs2
sltu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xbdc2951a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3b46bcc5 # initialize rs1
li x26, 0x7820b206 # initialize rs2
sltu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc1d9e7ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x92aa9e11 # initialize rs1
li x27, 0x03db1829 # initialize rs2
sltu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x6c882981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x929e5e59 # initialize rs1
li x28, 0x3558e971 # initialize rs2
sltu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6d87f50d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ae5772f # initialize rs1
li x29, 0x3a342116 # initialize rs2
sltu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x505c147c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdf253d86 # initialize rs1
li x30, 0xa5461ba8 # initialize rs2
sltu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe23282a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0c105e31 # initialize rs1
li x31, 0x92b48bd2 # initialize rs2
sltu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x16, 0xb35c377a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x637812fb # initialize rs1
li x0, 0xbfe81111 # initialize rs2
sltu x16, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x9, 0xfb1119f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc6354c04 # initialize rs1
li x1, 0xd0e29498 # initialize rs2
sltu x9, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x16, 0xc9c64bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcda94068 # initialize rs1
li x2, 0xd12f9672 # initialize rs2
sltu x16, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x27, 0x1bf0ab9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x88c36e48 # initialize rs1
li x3, 0x610f9744 # initialize rs2
sltu x27, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x28, 0x93522b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x75b63903 # initialize rs1
li x4, 0x51269700 # initialize rs2
sltu x28, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x2, 0xdc721412 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x33264a9e # initialize rs1
li x5, 0x44cdee00 # initialize rs2
sltu x2, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x29, 0x3a6bd75d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf4634edc # initialize rs1
li x6, 0x7311dc11 # initialize rs2
sltu x29, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x20, 0x07d39fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xedcf06e6 # initialize rs1
li x7, 0x7694e512 # initialize rs2
sltu x20, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x22, 0x556afd5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1bc2e7a3 # initialize rs1
li x8, 0xd0c2b017 # initialize rs2
sltu x22, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x7, 0xb0a718d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x62abd856 # initialize rs1
li x9, 0xcab83e30 # initialize rs2
sltu x7, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x20, 0x7c224710 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x79fc3c4d # initialize rs1
li x10, 0x112696ca # initialize rs2
sltu x20, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x31, 0x2d9cf5fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5e379992 # initialize rs1
li x11, 0xefc33974 # initialize rs2
sltu x31, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x1, 0xdf9a108c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x584069ff # initialize rs1
li x12, 0xf0e6a991 # initialize rs2
sltu x1, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x17, 0xa7bbc733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc0f9b32a # initialize rs1
li x13, 0xace7fde6 # initialize rs2
sltu x17, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x890f0200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x745b9ad8 # initialize rs1
li x14, 0x23ca3d7d # initialize rs2
sltu x14, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x2, 0xd95f0ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb7ebabea # initialize rs1
li x15, 0x0c713327 # initialize rs2
sltu x2, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x12, 0xa8c61d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcabc1500 # initialize rs1
li x16, 0xb5d2f56f # initialize rs2
sltu x12, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x22, 0x53a97617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4420ec71 # initialize rs1
li x17, 0x43e6d9fc # initialize rs2
sltu x22, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x31, 0xc5ed135a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6ffdf360 # initialize rs1
li x18, 0xc03a2a76 # initialize rs2
sltu x31, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x20, 0x512d2da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdbbbb22b # initialize rs1
li x19, 0xd2b316e0 # initialize rs2
sltu x20, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x9, 0xcd81ad8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x525c9090 # initialize rs1
li x20, 0xafb19525 # initialize rs2
sltu x9, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x8, 0xcfc6e657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x37d7d61f # initialize rs1
li x21, 0x8432a6e9 # initialize rs2
sltu x8, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x24, 0x27f9f3da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7c459682 # initialize rs1
li x22, 0xf198ea56 # initialize rs2
sltu x24, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x31, 0x43818a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd17d661b # initialize rs1
li x23, 0xa3cb8e41 # initialize rs2
sltu x31, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x8, 0x98a77401 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4aab1b79 # initialize rs1
li x24, 0x5de223aa # initialize rs2
sltu x8, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x4, 0x5163b5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x56330537 # initialize rs1
li x25, 0x5fafbac3 # initialize rs2
sltu x4, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x9, 0xd0bca89d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcffd7a14 # initialize rs1
li x26, 0xf7cf12b8 # initialize rs2
sltu x9, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x6, 0x00aa6e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x45fcee6d # initialize rs1
li x27, 0x1fff6f07 # initialize rs2
sltu x6, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x6, 0x5f69290e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc1d68088 # initialize rs1
li x28, 0xa5c017f5 # initialize rs2
sltu x6, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x21, 0x1e146ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x531f09e7 # initialize rs1
li x29, 0xda96f678 # initialize rs2
sltu x21, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x25, 0xc99bd87a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfa0f2188 # initialize rs1
li x30, 0x6bcb3145 # initialize rs2
sltu x25, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x2, 0xd17a5f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0ca3604c # initialize rs1
li x31, 0x5ff793cb # initialize rs2
sltu x2, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x505413a2)
li x3, 0xf106d51b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x505413a2 # initialize rs1
li x4, 0x489bb7ee # initialize rs2
sltu x3, x10, x4 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x7897d422)
li x26, 0x9e65aa73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x87682bde # initialize rs1
li x28, 0x479ab95b # initialize rs2
sltu x26, x6, x28 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x5b67fbb6)
li x18, 0xa9979a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbbde4112 # initialize rs1
li x7, 0x5b67fbb6 # initialize rs2
sltu x18, x19, x7 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x165c4fe1)
li x2, 0xf35a78dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbfb0c2bf # initialize rs1
li x4, 0xe9a3b01f # initialize rs2
sltu x2, x19, x4 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
