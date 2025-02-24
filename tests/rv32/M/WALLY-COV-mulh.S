///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-mulh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.067575
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xb5f854af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x83db1c18 # initialize rs1
li x6, 0xbc571c8e # initialize rs2
mulh x0, x7, x6 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x49139073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x92f474b6 # initialize rs1
li x29, 0x1b47d8fe # initialize rs2
mulh x1, x17, x29 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x0977375d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1802daba # initialize rs1
li x12, 0x37e21557 # initialize rs2
mulh x2, x11, x12 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x0662036c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8383b7ea # initialize rs1
li x13, 0xad76ab28 # initialize rs2
mulh x3, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x92a3bf98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x25b3b778 # initialize rs1
li x3, 0xa629058f # initialize rs2
mulh x4, x21, x3 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xa289da73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xac684543 # initialize rs1
li x28, 0xfea8ca36 # initialize rs2
mulh x5, x17, x28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xaeadd886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdf4fecb0 # initialize rs1
li x2, 0x512474e7 # initialize rs2
mulh x6, x1, x2 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xbd0bc4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x831e5ba6 # initialize rs1
li x21, 0x113ffdc4 # initialize rs2
mulh x7, x20, x21 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x3c2b444e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x56e0f90c # initialize rs1
li x22, 0xe6c9a988 # initialize rs2
mulh x8, x10, x22 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x523ccaf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x28ca21b8 # initialize rs1
li x14, 0x4959a0d8 # initialize rs2
mulh x9, x29, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x328d7cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x766294fe # initialize rs1
li x18, 0x2e1e956a # initialize rs2
mulh x10, x1, x18 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x474b1fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7af9386e # initialize rs1
li x25, 0x6797b778 # initialize rs2
mulh x11, x8, x25 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x738a82d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdacfc456 # initialize rs1
li x16, 0x3ee202ff # initialize rs2
mulh x12, x13, x16 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb39a807c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4081dd6c # initialize rs1
li x17, 0x71c2f118 # initialize rs2
mulh x13, x27, x17 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8f0f3109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8ad987bc # initialize rs1
li x13, 0x1036bcf9 # initialize rs2
mulh x14, x30, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6214bc36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6ffd1749 # initialize rs1
li x20, 0xe4cd18dc # initialize rs2
mulh x15, x9, x20 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd73417bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6b6fccc5 # initialize rs1
li x10, 0x28d701bd # initialize rs2
mulh x16, x26, x10 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6bdaf26f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa92d3555 # initialize rs1
li x14, 0xd8b219db # initialize rs2
mulh x17, x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x6d19a247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbe29242b # initialize rs1
li x12, 0x7e8b4e34 # initialize rs2
mulh x18, x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x4ed54c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x37b158b2 # initialize rs1
li x18, 0xea9c03c1 # initialize rs2
mulh x19, x3, x18 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x024ddf24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe14a473e # initialize rs1
li x27, 0x41217eed # initialize rs2
mulh x20, x31, x27 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf15e32af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x38fa2bef # initialize rs1
li x16, 0x4722572f # initialize rs2
mulh x21, x13, x16 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x000e768d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2522678c # initialize rs1
li x10, 0xe58a647f # initialize rs2
mulh x22, x31, x10 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x3d546bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf708611d # initialize rs1
li x20, 0x2e5a37f9 # initialize rs2
mulh x23, x27, x20 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x382a71d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe3da12ca # initialize rs1
li x5, 0xe0bf945d # initialize rs2
mulh x24, x20, x5 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xdcb33f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x61a79553 # initialize rs1
li x16, 0x6a2c68f9 # initialize rs2
mulh x25, x6, x16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x1ed42020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd62918b2 # initialize rs1
li x23, 0x95de3972 # initialize rs2
mulh x26, x2, x23 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x82643b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe2359a86 # initialize rs1
li x25, 0x7741b5ad # initialize rs2
mulh x27, x12, x25 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x98fff89c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x46158823 # initialize rs1
li x11, 0x6386f5ff # initialize rs2
mulh x28, x31, x11 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3b405a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2c7d9f3f # initialize rs1
li x19, 0x634d61e7 # initialize rs2
mulh x29, x27, x19 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xfcbf24b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x50750bca # initialize rs1
li x31, 0x9963121e # initialize rs2
mulh x30, x1, x31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x41e8150a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf4770e20 # initialize rs1
li x21, 0xf92b2342 # initialize rs2
mulh x31, x28, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x28, 0xbce28ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x427fbb83 # initialize rs1
li x18, 0x1ef722fd # initialize rs2
mulh x28, x0, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x12, 0x817c9a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe98d9133 # initialize rs1
li x4, 0xa20afb40 # initialize rs2
mulh x12, x1, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0x2492bd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbbabb355 # initialize rs1
li x31, 0xdd9597a9 # initialize rs2
mulh x10, x2, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x1b88f799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0784ea3c # initialize rs1
li x21, 0x465e0e49 # initialize rs2
mulh x2, x3, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x15, 0xd346af6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf505e072 # initialize rs1
li x9, 0x9d20e66b # initialize rs2
mulh x15, x4, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x3, 0xf52d3cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0bf5604a # initialize rs1
li x28, 0x148df53c # initialize rs2
mulh x3, x5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x10, 0x33cdf870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdcba7c89 # initialize rs1
li x29, 0x58866934 # initialize rs2
mulh x10, x6, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0xfc47b42c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x938fb4ef # initialize rs1
li x24, 0x94e5a57e # initialize rs2
mulh x5, x7, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x30, 0x87374e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc8459166 # initialize rs1
li x19, 0x02768930 # initialize rs2
mulh x30, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x8ec79340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4c1f85d9 # initialize rs1
li x27, 0x853d8195 # initialize rs2
mulh x19, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xaa20f136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1b577845 # initialize rs1
li x13, 0xe837e03e # initialize rs2
mulh x8, x10, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x05c83f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x90025107 # initialize rs1
li x14, 0x8d75d539 # initialize rs2
mulh x12, x11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0x2f4888a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0933a049 # initialize rs1
li x31, 0x2ee2c42a # initialize rs2
mulh x25, x12, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0xeb8f4d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdafe5caa # initialize rs1
li x10, 0x671e921b # initialize rs2
mulh x2, x13, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x4ca3d4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x452fb580 # initialize rs1
li x11, 0xef2d7a5a # initialize rs2
mulh x20, x14, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x46bdca66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd9bb89b4 # initialize rs1
li x19, 0x3bd07271 # initialize rs2
mulh x5, x15, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x43d7fc62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x83b0aca0 # initialize rs1
li x14, 0x452e42d5 # initialize rs2
mulh x18, x16, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x25, 0x7145511b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaa27953f # initialize rs1
li x8, 0x72433edc # initialize rs2
mulh x25, x17, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0x1cc8d961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x45174faf # initialize rs1
li x22, 0x2cf246f3 # initialize rs2
mulh x19, x18, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x30, 0xe6ec24ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xde5b12e3 # initialize rs1
li x10, 0xeb992807 # initialize rs2
mulh x30, x19, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0xc605f7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3fcefb3f # initialize rs1
li x13, 0x341b94c8 # initialize rs2
mulh x14, x20, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0x1e09892c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb5af3bf2 # initialize rs1
li x13, 0x44ea5e8b # initialize rs2
mulh x10, x21, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0x9cea10d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e1d4c6d # initialize rs1
li x8, 0xd0f79f70 # initialize rs2
mulh x24, x22, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0x4f13dc00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb2df6def # initialize rs1
li x14, 0xf779b4d1 # initialize rs2
mulh x26, x23, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0xcdb8a89d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1b5d1d9c # initialize rs1
li x18, 0x9f1c8acf # initialize rs2
mulh x22, x24, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x28, 0xc7c522e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3520ca6e # initialize rs1
li x17, 0xa70ca1a4 # initialize rs2
mulh x28, x25, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0xa590186a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x092b1376 # initialize rs1
li x12, 0x4f06c562 # initialize rs2
mulh x2, x26, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x19, 0xb7bd5f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x70be0c98 # initialize rs1
li x9, 0x0f7ba24f # initialize rs2
mulh x19, x27, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0xdfdc228d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0bfdeff6 # initialize rs1
li x25, 0xb960ef38 # initialize rs2
mulh x7, x28, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0x0543fc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xef6131c0 # initialize rs1
li x7, 0x851cd7ef # initialize rs2
mulh x16, x29, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x11aa17ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x683c81b9 # initialize rs1
li x20, 0x094109c7 # initialize rs2
mulh x16, x30, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x4, 0xc58089a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x39e518b0 # initialize rs1
li x7, 0xa9e723ab # initialize rs2
mulh x4, x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x26a09344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5f049fef # initialize rs1
li x0, 0xb39be80b # initialize rs2
mulh x7, x22, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0x57c7a648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x628cfb8f # initialize rs1
li x1, 0xaa6e51c7 # initialize rs2
mulh x23, x15, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x4, 0x7567c074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd57521b # initialize rs1
li x2, 0x4cea5213 # initialize rs2
mulh x4, x7, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0xb604e79b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3a213ed8 # initialize rs1
li x3, 0xecdfef99 # initialize rs2
mulh x27, x11, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x2, 0x2a53baef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf4d696cb # initialize rs1
li x4, 0x2d3c3a0e # initialize rs2
mulh x2, x12, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x4, 0xcaa6d124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xeaf80c89 # initialize rs1
li x5, 0xca3f2459 # initialize rs2
mulh x4, x31, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x10, 0xe3405677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb8e811be # initialize rs1
li x6, 0x4766f3e0 # initialize rs2
mulh x10, x2, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x23, 0xf883bb10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa918d96d # initialize rs1
li x7, 0x5c5fdeb6 # initialize rs2
mulh x23, x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0x9ae07602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf629978e # initialize rs1
li x8, 0x6f7ec2fd # initialize rs2
mulh x27, x4, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0x89e2c010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5207e21f # initialize rs1
li x9, 0x456fd17d # initialize rs2
mulh x31, x15, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x21, 0x92c47cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x482b80aa # initialize rs1
li x10, 0x218aae26 # initialize rs2
mulh x21, x5, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0xdf8c2a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa15de23d # initialize rs1
li x11, 0x81ec4498 # initialize rs2
mulh x25, x24, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0xe61886d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0f12cbcf # initialize rs1
li x12, 0x7902097b # initialize rs2
mulh x27, x24, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x4, 0x3b586812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaedae82e # initialize rs1
li x13, 0xe94d9c5c # initialize rs2
mulh x4, x23, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0x36110ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4586df71 # initialize rs1
li x14, 0x86f1dba0 # initialize rs2
mulh x29, x1, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0x2c6748b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x84514c4a # initialize rs1
li x15, 0x7d3be8e7 # initialize rs2
mulh x9, x14, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x22cfecf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x85915234 # initialize rs1
li x16, 0x6c324279 # initialize rs2
mulh x6, x2, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0x1a1ccbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2aa39683 # initialize rs1
li x17, 0xc2e67449 # initialize rs2
mulh x26, x20, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0xe20ee5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa21f6bcb # initialize rs1
li x18, 0xe8fe34b8 # initialize rs2
mulh x14, x13, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0x7bf071d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5d3b6ae9 # initialize rs1
li x19, 0xe3069933 # initialize rs2
mulh x3, x21, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0xd957e7f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x460db701 # initialize rs1
li x20, 0x33f093aa # initialize rs2
mulh x11, x17, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0x07a97cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x40677bef # initialize rs1
li x21, 0xea9c5d60 # initialize rs2
mulh x16, x30, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x4, 0xadba4399 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbafffa9c # initialize rs1
li x22, 0x4c8a3a44 # initialize rs2
mulh x4, x17, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x126242fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd8d7c6c6 # initialize rs1
li x23, 0x4497603b # initialize rs2
mulh x26, x17, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0xe9ab143b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x520e0659 # initialize rs1
li x24, 0xa263ac9d # initialize rs2
mulh x19, x6, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0x0f60f262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x75cf563b # initialize rs1
li x25, 0xe4c22ca2 # initialize rs2
mulh x29, x2, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0xff2fa148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0e61ade8 # initialize rs1
li x26, 0xc0efeee6 # initialize rs2
mulh x23, x2, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x21, 0xe3ddeeda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b8f6bae # initialize rs1
li x27, 0x84671361 # initialize rs2
mulh x21, x18, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xf6833cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcb331783 # initialize rs1
li x28, 0x26c7686f # initialize rs2
mulh x11, x14, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0xc6bdb8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55b6eb3c # initialize rs1
li x29, 0x7c8b581e # initialize rs2
mulh x23, x8, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0xe8c53a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4b9b08ce # initialize rs1
li x30, 0x867a7cec # initialize rs2
mulh x29, x21, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0x137726f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc2ad6520 # initialize rs1
li x31, 0xb0c0ff59 # initialize rs2
mulh x16, x9, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xfb0fa051)
li x13, 0x75890fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x75890fb5 # initialize rs1
li x0, 0xdb1573d5 # initialize rs2
mulh x13, x15, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x2433d07)
li x11, 0x02433d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x02433d07 # initialize rs1
li x13, 0x02433d07 # initialize rs2
mulh x11, x0, x13 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x584331b3)
li x30, 0x2fcdcf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x584331b3 # initialize rs1
li x20, 0x584331b3 # initialize rs2
mulh x30, x28, x20 # perform operation

# Testcase cmp_gpr_hazard raw test
mulh x12, x17, x2 # perform first operation
mulh x23, x12, x24 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulh x6, x30, x10 # perform first operation
mulh x5, x29, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulh x28, x15, x22 # perform first operation
mulh x28, x6, x28 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulh x27, x5, x26 # perform first operation
mulh x27, x10, x16 # perform second operation

# Testcase cmp_gpr_hazard war test
mulh x11, x12, x18 # perform first operation
mulh x12, x31, x15 # perform second operation

# Testcase cmp_gpr_hazard war test
mulh x5, x15, x17 # perform first operation
mulh x17, x21, x14 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x6c3718b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x28, 0x5da449d0 # initialize rs2
mulh x3, x11, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x5a57a712 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x27, 0x67aba2ca # initialize rs2
mulh x11, x9, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0xc348d113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x9, 0x5915bb16 # initialize rs2
mulh x21, x3, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x1c927f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x9, 0xe9c928bc # initialize rs2
mulh x10, x19, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x6, 0x7fb45c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x18, 0xb87261c2 # initialize rs2
mulh x6, x24, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x52dca52e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
li x10, 0x7ea066c0 # initialize rs2
mulh x8, x23, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x26, 0x57413969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x3, 0x8c4c3f50 # initialize rs2
mulh x26, x6, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x2717fb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x16, 0xe5403c92 # initialize rs2
mulh x13, x28, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0xc16331f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x16, 0x9eeb9da5 # initialize rs2
mulh x30, x28, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x25, 0x0240df95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x9, 0x1b930055 # initialize rs2
mulh x25, x22, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0xda684e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x15, 0x6df7bfd1 # initialize rs2
mulh x13, x28, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x1, 0x8e24fb6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x8, 0xc53ac460 # initialize rs2
mulh x1, x3, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0xbc1d031d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x29bbda9c # initialize rs1
li x11, 0x00000000 # initialize rs2
mulh x25, x19, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x0aaa8ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb180b696 # initialize rs1
li x30, 0x00000001 # initialize rs2
mulh x6, x26, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x795f603c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x630e899a # initialize rs1
li x24, 0x00000002 # initialize rs2
mulh x25, x10, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0xace0bf26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x27359a01 # initialize rs1
li x1, 0x80000000 # initialize rs2
mulh x12, x13, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x25, 0xe10bd11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc03f0109 # initialize rs1
li x12, 0x80000001 # initialize rs2
mulh x25, x16, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x3, 0xa0f0d523 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xeaa17489 # initialize rs1
li x12, 0x7fffffff # initialize rs2
mulh x3, x2, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x2956de86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4d0e033e # initialize rs1
li x17, 0x7ffffffe # initialize rs2
mulh x23, x20, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x5, 0x18e46d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaf714170 # initialize rs1
li x16, 0xffffffff # initialize rs2
mulh x5, x28, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0x71b26591 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdb4834b7 # initialize rs1
li x2, 0xfffffffe # initialize rs2
mulh x22, x18, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x12, 0x3e8a1182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0a784102 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
mulh x12, x6, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x8, 0x4912bbac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb13814ee # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
mulh x8, x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x24, 0xaed70d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb17ac661 # initialize rs1
li x3, 0x55555555 # initialize rs2
mulh x24, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0xa99d3454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
mulh x6, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x0eb1cc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
mulh x12, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x1dc17a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
mulh x18, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x14, 0x7eb581e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
mulh x14, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x1, 0xc4b7fc7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x1, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x9d7b16d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
mulh x23, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x31, 0x3a5c681f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
mulh x31, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0xedb6cfc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
mulh x26, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0xd9f1b791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulh x8, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x1, 0x729be1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
mulh x1, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x6, 0xd4ab4065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
mulh x6, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x22, 0xd63ec575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
mulh x22, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x19, 0x3fdc4d24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x25, 0x00000000 # initialize rs2
mulh x19, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x007191f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
mulh x3, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0xcfe1c484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
mulh x8, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x18, 0x3ddc0682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x26, 0x80000000 # initialize rs2
mulh x18, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x9, 0xbaf29c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
mulh x9, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x15, 0x918c14d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulh x15, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x7, 0x3056a804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
mulh x7, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x16, 0x1aaaf794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x19, 0xffffffff # initialize rs2
mulh x16, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x4, 0x5eb9244d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x3, 0xfffffffe # initialize rs2
mulh x4, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x24, 0xe1d038c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
mulh x24, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0xea31699c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
mulh x13, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x15, 0x9eee4b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
mulh x15, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x4243dd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x28, 0x00000000 # initialize rs2
mulh x24, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x6e73b310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x23, 0x00000001 # initialize rs2
mulh x7, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x9, 0x4907ed4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
mulh x9, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x19, 0x8507f833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # initialize rs1
li x3, 0x80000000 # initialize rs2
mulh x19, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x26, 0x53830d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x3, 0x80000001 # initialize rs2
mulh x26, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x388f4c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
li x25, 0x7fffffff # initialize rs2
mulh x19, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0xdbdedca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
mulh x10, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x90195166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x28, 0xffffffff # initialize rs2
mulh x10, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0xa0060f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x14, 0xfffffffe # initialize rs2
mulh x18, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x28, 0xd678d86f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
mulh x28, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0xf7c075c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
mulh x14, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x15, 0xf887e7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x9, 0x55555555 # initialize rs2
mulh x15, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x29, 0xe1d6de64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
mulh x29, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x7, 0x0b6121f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
mulh x7, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x5, 0x812eb08d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
mulh x5, x1, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x6, 0xa3cb6346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
mulh x6, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x26, 0x5013924e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
mulh x26, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x4, 0xb7cd70ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x28, 0x7fffffff # initialize rs2
mulh x4, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x10af11cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mulh x27, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x46dc2c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
mulh x22, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x919b4c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mulh x8, x15, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x25, 0xfec62f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulh x25, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x24, 0xab884b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mulh x24, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x57db1d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
mulh x22, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x19, 0xc4468663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
mulh x19, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x22, 0x0401c639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
mulh x22, x19, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x2, 0x743a3aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x4, 0x00000002 # initialize rs2
mulh x2, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x29, 0x0e6b111a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
mulh x29, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x28, 0x3e0d9bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x4, 0x80000001 # initialize rs2
mulh x28, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x9, 0x0bdab552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulh x9, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x18, 0xad5c5505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mulh x18, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x31, 0x29102865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x11, 0xffffffff # initialize rs2
mulh x31, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x3, 0x6e27f33d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulh x3, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x8, 0xb8b2619f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
mulh x8, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x364a368c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
mulh x28, x23, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x1, 0x6b106727 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
mulh x1, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0x24744d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
mulh x12, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x14, 0xecf79aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
mulh x14, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x90e76682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
mulh x7, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x9, 0xf4954f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x9, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x28, 0x54225a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x28, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x25, 0xd7066589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
mulh x25, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x14, 0xc11f90ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
mulh x14, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x5, 0x2ff7956a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
mulh x5, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x10, 0x66245cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
mulh x10, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x20, 0xea1af5cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
mulh x20, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x26, 0x7c663a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
mulh x26, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x17, 0xb59e634a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x10, 0x55555555 # initialize rs2
mulh x17, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x9, 0x8b608b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
mulh x9, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x18, 0x6e1ddc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x13, 0x00000001 # initialize rs2
mulh x18, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x10, 0x6878f04f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x27, 0x00000002 # initialize rs2
mulh x10, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x20, 0x8798cf02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
mulh x20, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x28, 0x99d86ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
mulh x28, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x23, 0xb9ad5f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
mulh x23, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x27, 0x4964ee92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
mulh x27, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x2, 0x4b52e917 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
mulh x2, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x45ab481d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
mulh x25, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x31, 0xc5001f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
mulh x31, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x8, 0xc4654a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mulh x8, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x15, 0x8ac7cf6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
mulh x15, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0x8c31cc52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
mulh x6, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0xf88f0a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x4, 0x00000001 # initialize rs2
mulh x18, x13, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x7, 0xfecf5262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
mulh x7, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x6, 0x47ec8c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
mulh x6, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0x28f07356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x5, 0x80000001 # initialize rs2
mulh x31, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x12, 0xa9a42acb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
mulh x12, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x18, 0xe227de98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
mulh x18, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0x2f5cb0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
mulh x6, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0xbaaa4695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
mulh x10, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x23, 0x78038b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
mulh x23, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x18, 0xab0635fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mulh x18, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x11, 0xe7b27f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
mulh x11, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0x657d5ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
mulh x11, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0xeb891502 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
mulh x21, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x4, 0x57adcd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x31, 0x00000002 # initialize rs2
mulh x4, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x25, 0x6c74e326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x27, 0x80000000 # initialize rs2
mulh x25, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0x56c08e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
mulh x27, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x29, 0x5f0b9232 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
mulh x29, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0x63c1aa61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
mulh x31, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x18, 0x31327e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x31, 0xffffffff # initialize rs2
mulh x18, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x13, 0x386cead6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
mulh x13, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x17, 0x6659cfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x16, 0x5bbc8877 # initialize rs2
mulh x17, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x9, 0xc39da56b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
mulh x9, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x12, 0x5587b2e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
mulh x12, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x9, 0xb9642bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x7, 0x00000000 # initialize rs2
mulh x9, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x6, 0x218c4031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x14, 0x00000001 # initialize rs2
mulh x6, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x5, 0x669c7b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x8, 0x00000002 # initialize rs2
mulh x5, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x27, 0x00692051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x11, 0x80000000 # initialize rs2
mulh x27, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x17, 0x92a84179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x14, 0x80000001 # initialize rs2
mulh x17, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x5, 0x46da33c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x30, 0x7fffffff # initialize rs2
mulh x5, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x12, 0x9bd2055f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mulh x12, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x17, 0x5ba51ded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x11, 0xffffffff # initialize rs2
mulh x17, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x31, 0x32ee9ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x27, 0xfffffffe # initialize rs2
mulh x31, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x21, 0x7ff4f494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
mulh x21, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x4, 0xd724c3ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
mulh x4, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x28, 0x5e09c4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x20, 0x55555555 # initialize rs2
mulh x28, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x9, 0xe68e7055 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x31, 0x00000000 # initialize rs2
mulh x9, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x16, 0x441b7933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x2, 0x00000001 # initialize rs2
mulh x16, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xf9a08cba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x8, 0x00000002 # initialize rs2
mulh x2, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x14, 0xae0586f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x17, 0x80000000 # initialize rs2
mulh x14, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x16, 0xd4499ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # initialize rs1
li x7, 0x80000001 # initialize rs2
mulh x16, x6, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x15, 0x28608ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x29, 0x7fffffff # initialize rs2
mulh x15, x19, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x31, 0x5d722489 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x1, 0x7ffffffe # initialize rs2
mulh x31, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x22, 0x0abf207d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x7, 0xffffffff # initialize rs2
mulh x22, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xbfaf0b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x26, 0xfffffffe # initialize rs2
mulh x28, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x30, 0x5e2acb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
mulh x30, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x27, 0x0d30b12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
mulh x27, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0x652b8b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x3, 0x55555555 # initialize rs2
mulh x21, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x27, 0xb698b462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x2, 0x00000000 # initialize rs2
mulh x27, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x2, 0x0a6a959e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x21, 0x00000001 # initialize rs2
mulh x2, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x19, 0xb7cb1f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
mulh x19, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x29, 0x3fe55161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x27, 0x80000000 # initialize rs2
mulh x29, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x16, 0x27dfd95f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x10, 0x80000001 # initialize rs2
mulh x16, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x4, 0xcad39a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x14, 0x7fffffff # initialize rs2
mulh x4, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x15, 0x1e246601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mulh x15, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x24, 0x088ceb23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x55555555 # initialize rs1
li x31, 0xffffffff # initialize rs2
mulh x24, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x6, 0xada605b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x18, 0xfffffffe # initialize rs2
mulh x6, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x3, 0x56d0b8c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
mulh x3, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x28, 0xad75fbd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
mulh x28, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0xa937580f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
mulh x28, x24, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf59fb23b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x75d147ec # initialize rs1
li x4, 0x49c7bd78 # initialize rs2
mulh x0, x0, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf91f959e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0e2c4321 # initialize rs1
li x12, 0xcbf60014 # initialize rs2
mulh x1, x1, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1974727e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9ebacc4b # initialize rs1
li x5, 0x4c6cc3ad # initialize rs2
mulh x2, x2, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5eef0e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x373c3ce4 # initialize rs1
li x7, 0x58c162a6 # initialize rs2
mulh x3, x3, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x85e41363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcd23da36 # initialize rs1
li x15, 0x0ac8a123 # initialize rs2
mulh x4, x4, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x8bb9de34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0616fa78 # initialize rs1
li x17, 0x0f5e0089 # initialize rs2
mulh x5, x5, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xeeae41c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfeeb224d # initialize rs1
li x13, 0x4ea34ada # initialize rs2
mulh x6, x6, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xa462a2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1af95591 # initialize rs1
li x16, 0x7d2f49c7 # initialize rs2
mulh x7, x7, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2ba49089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1206d1a1 # initialize rs1
li x15, 0x47f2ddfe # initialize rs2
mulh x8, x8, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd895cd8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbe7038d2 # initialize rs1
li x8, 0x4a8b4c24 # initialize rs2
mulh x9, x9, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x45d2e1c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7d005f37 # initialize rs1
li x12, 0xd8346204 # initialize rs2
mulh x10, x10, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x16a30d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0adefbdb # initialize rs1
li x12, 0xf9a1f6e1 # initialize rs2
mulh x11, x11, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xeec5cdd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc48ea410 # initialize rs1
li x23, 0x532c278d # initialize rs2
mulh x12, x12, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa13644b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x698d35ed # initialize rs1
li x5, 0x056bb45a # initialize rs2
mulh x13, x13, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8bf01350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x82069dad # initialize rs1
li x27, 0xe201e462 # initialize rs2
mulh x14, x14, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7a9d9ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xea5cf8c7 # initialize rs1
li x28, 0x27247e93 # initialize rs2
mulh x15, x15, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2196b7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe11dec18 # initialize rs1
li x4, 0x1e42fa48 # initialize rs2
mulh x16, x16, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x34cabc72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x92745ac6 # initialize rs1
li x16, 0x869f2803 # initialize rs2
mulh x17, x17, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb2cd0a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x60f02a20 # initialize rs1
li x2, 0xdb87b021 # initialize rs2
mulh x18, x18, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5ff6de55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7aecbafd # initialize rs1
li x1, 0xe8ee7b52 # initialize rs2
mulh x19, x19, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa4d597b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb877a6ee # initialize rs1
li x21, 0xa534d68e # initialize rs2
mulh x20, x20, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8f2122dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x790eb9fb # initialize rs1
li x6, 0xde926122 # initialize rs2
mulh x21, x21, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x49862b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5b827546 # initialize rs1
li x26, 0x2b5470fe # initialize rs2
mulh x22, x22, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x24988db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaab3376e # initialize rs1
li x12, 0x90c20a3d # initialize rs2
mulh x23, x23, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe821ce44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x91d968c5 # initialize rs1
li x4, 0x4d591b13 # initialize rs2
mulh x24, x24, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xde3dee23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x106e58ce # initialize rs1
li x14, 0x507522d0 # initialize rs2
mulh x25, x25, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x944ee9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3c989ecb # initialize rs1
li x25, 0x317399d7 # initialize rs2
mulh x26, x26, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7573e985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7d735ebb # initialize rs1
li x16, 0xd2f7719e # initialize rs2
mulh x27, x27, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x48d9bb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1b0833e0 # initialize rs1
li x19, 0x587363bb # initialize rs2
mulh x28, x28, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x28d7458d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5ccd91d5 # initialize rs1
li x8, 0x55d95cc9 # initialize rs2
mulh x29, x29, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x02ed0c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x42fac2d5 # initialize rs1
li x13, 0x265febbb # initialize rs2
mulh x30, x30, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8fb17298 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bf08bad # initialize rs1
li x27, 0xfcb83e0a # initialize rs2
mulh x31, x31, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x0510de78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xeaf1b807 # initialize rs1
li x0, 0x507aeea0 # initialize rs2
mulh x0, x1, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x92a145d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc1306e7a # initialize rs1
li x1, 0x7a05293b # initialize rs2
mulh x1, x23, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xa1e25283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0c4df70b # initialize rs1
li x2, 0x11260798 # initialize rs2
mulh x2, x15, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x0f22d950 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xec812a9e # initialize rs1
li x3, 0x0dd7f4ff # initialize rs2
mulh x3, x8, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x3748ee51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe24be1b3 # initialize rs1
li x4, 0xf655a77c # initialize rs2
mulh x4, x20, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xeeb0ef39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x153a6050 # initialize rs1
li x5, 0x4e123794 # initialize rs2
mulh x5, x9, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x72121510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1efcc17b # initialize rs1
li x6, 0x0aac2367 # initialize rs2
mulh x6, x8, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x4ef9323f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1d80ffeb # initialize rs1
li x7, 0x4da879c8 # initialize rs2
mulh x7, x7, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xd67905bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcd54628c # initialize rs1
li x8, 0x6f680451 # initialize rs2
mulh x8, x24, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xf5b01b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4ef70bce # initialize rs1
li x9, 0x5aa00c71 # initialize rs2
mulh x9, x8, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xfe25eb12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x67e14c3a # initialize rs1
li x10, 0x6d4a93a4 # initialize rs2
mulh x10, x7, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xfec5dc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x459098b3 # initialize rs1
li x11, 0x06362fa5 # initialize rs2
mulh x11, x19, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x0703dad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa34a4cef # initialize rs1
li x12, 0xa3907a7f # initialize rs2
mulh x12, x14, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x19842522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x792afd71 # initialize rs1
li x13, 0x8536c10d # initialize rs2
mulh x13, x2, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x0834405d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x866338ea # initialize rs1
li x14, 0x482074be # initialize rs2
mulh x14, x9, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x64f09919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0cbf62fe # initialize rs1
li x15, 0x623cf9e5 # initialize rs2
mulh x15, x18, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xf47d40ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a43b122 # initialize rs1
li x16, 0x9720ed09 # initialize rs2
mulh x16, x10, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xf7bd5ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa41442d7 # initialize rs1
li x17, 0x241b193d # initialize rs2
mulh x17, x25, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x31d6202c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc975126f # initialize rs1
li x18, 0x7c04d1e3 # initialize rs2
mulh x18, x7, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x414b4f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x62727771 # initialize rs1
li x19, 0x1e33e4b1 # initialize rs2
mulh x19, x14, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x99844ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3cd7d570 # initialize rs1
li x20, 0x93fae8e2 # initialize rs2
mulh x20, x16, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xa2652957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5b29cc3d # initialize rs1
li x21, 0x52411de5 # initialize rs2
mulh x21, x11, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xffa69a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0fca1887 # initialize rs1
li x22, 0x2c694163 # initialize rs2
mulh x22, x13, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xb9d60e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa6ea19c8 # initialize rs1
li x23, 0x565a63a1 # initialize rs2
mulh x23, x23, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x79c5a7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdf535c2d # initialize rs1
li x24, 0xc1006914 # initialize rs2
mulh x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x76bb4bed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbdfb0afe # initialize rs1
li x25, 0xba9fd3e7 # initialize rs2
mulh x25, x22, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x9d804f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0fe92e91 # initialize rs1
li x26, 0xacaa73bb # initialize rs2
mulh x26, x6, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xf691ec71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9681a18a # initialize rs1
li x27, 0xbdcdb3c5 # initialize rs2
mulh x27, x15, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x6537068e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb8534cf3 # initialize rs1
li x28, 0xa50b3abb # initialize rs2
mulh x28, x8, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x41c12b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd3da99b3 # initialize rs1
li x29, 0x50cd6e66 # initialize rs2
mulh x29, x12, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x06789b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe650b463 # initialize rs1
li x30, 0x6848fa42 # initialize rs2
mulh x30, x29, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x7dab608b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb0b9d437 # initialize rs1
li x31, 0xefd60d4e # initialize rs2
mulh x31, x23, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe0d9e233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa11dd1a9 # initialize rs1
li x0, 0x0aa52a85 # initialize rs2
mulh x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4cba947c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x88841c73 # initialize rs1
li x1, 0x6adbac4a # initialize rs2
mulh x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x78e57e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x14bad99e # initialize rs1
li x2, 0xf7fdedcb # initialize rs2
mulh x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x8271204c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4c5d7f25 # initialize rs1
li x3, 0x6167fa50 # initialize rs2
mulh x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xf68ceb73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x85042936 # initialize rs1
li x4, 0xb4406976 # initialize rs2
mulh x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x2c539933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa3a20f17 # initialize rs1
li x5, 0x9dd08b59 # initialize rs2
mulh x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x5280448a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1b69a692 # initialize rs1
li x6, 0x6485dbfd # initialize rs2
mulh x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x07cd7f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe996894b # initialize rs1
li x7, 0xf9f4efc1 # initialize rs2
mulh x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x2be23ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6020f167 # initialize rs1
li x8, 0x03c7c33c # initialize rs2
mulh x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xde37e8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2eedb4b3 # initialize rs1
li x9, 0xe428f5e5 # initialize rs2
mulh x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbcac3e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc3d5fbf6 # initialize rs1
li x10, 0x17cf62f1 # initialize rs2
mulh x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1237a7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd92ef64 # initialize rs1
li x11, 0x5631043c # initialize rs2
mulh x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xaa9aeb40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6171ecfa # initialize rs1
li x12, 0x8a92ea39 # initialize rs2
mulh x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x772ea997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7f4eff1d # initialize rs1
li x13, 0x49ef2caa # initialize rs2
mulh x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x50431af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd45d44ce # initialize rs1
li x14, 0x611f849a # initialize rs2
mulh x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb371ae54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0c7f098c # initialize rs1
li x15, 0x167dfd88 # initialize rs2
mulh x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3c81a107 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd543319f # initialize rs1
li x16, 0x549dec91 # initialize rs2
mulh x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xdca2becf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbf5d2642 # initialize rs1
li x17, 0x8f1de101 # initialize rs2
mulh x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x9324bedd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x76ffce52 # initialize rs1
li x18, 0x2d161563 # initialize rs2
mulh x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5aafa08c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x230853b6 # initialize rs1
li x19, 0x50872d4d # initialize rs2
mulh x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x95318d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x61f97ca2 # initialize rs1
li x20, 0x34f3f13a # initialize rs2
mulh x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd27df333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x879852eb # initialize rs1
li x21, 0x4034f2a3 # initialize rs2
mulh x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x90f5cb11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd6c296fd # initialize rs1
li x22, 0x646b1210 # initialize rs2
mulh x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcc21f683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe499b6d9 # initialize rs1
li x23, 0xf953d5c1 # initialize rs2
mulh x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xdff400bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbb8215a6 # initialize rs1
li x24, 0xd1487d0c # initialize rs2
mulh x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x744198fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x07ed74f6 # initialize rs1
li x25, 0x119e3647 # initialize rs2
mulh x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x99702b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcafa222c # initialize rs1
li x26, 0x2860a5a7 # initialize rs2
mulh x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe6c0d5de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x86b2bfd4 # initialize rs1
li x27, 0x6619c825 # initialize rs2
mulh x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xfb6214c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd0397e87 # initialize rs1
li x28, 0x9c8cc679 # initialize rs2
mulh x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xca024b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x67bce262 # initialize rs1
li x29, 0xa6b995cc # initialize rs2
mulh x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcdf62498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x490e0933 # initialize rs1
li x30, 0x74abd87f # initialize rs2
mulh x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd7b5b262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf86b07ed # initialize rs1
li x31, 0xa178aeef # initialize rs2
mulh x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x1, 0x5c063320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfaffa8fe # initialize rs1
li x0, 0xed06e46a # initialize rs2
mulh x1, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x14, 0x81f68bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x10aee5df # initialize rs1
li x1, 0x70253544 # initialize rs2
mulh x14, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x6, 0xd183a22f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc7972178 # initialize rs1
li x2, 0xc90a9f07 # initialize rs2
mulh x6, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x27, 0x17c9ab53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf938b4f2 # initialize rs1
li x3, 0x5d6d144c # initialize rs2
mulh x27, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x17, 0x8c4097d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2f837070 # initialize rs1
li x4, 0x582bed7f # initialize rs2
mulh x17, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x27, 0x18969f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x63183fd9 # initialize rs1
li x5, 0x528a15e9 # initialize rs2
mulh x27, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x13, 0x1ca7f8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0ba35248 # initialize rs1
li x6, 0xdde745a9 # initialize rs2
mulh x13, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x30, 0x64ad3c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x22af9171 # initialize rs1
li x7, 0xe1593a02 # initialize rs2
mulh x30, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x31, 0xa5343407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x759c8bdb # initialize rs1
li x8, 0xa24a3954 # initialize rs2
mulh x31, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x2, 0x9169677f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9a31fa72 # initialize rs1
li x9, 0x5d45150b # initialize rs2
mulh x2, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x28, 0x6586837c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb6055b0e # initialize rs1
li x10, 0xe84d172e # initialize rs2
mulh x28, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x8, 0xd9fbf4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7e2f5b04 # initialize rs1
li x11, 0x0cfa4f19 # initialize rs2
mulh x8, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x205983dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0cb77992 # initialize rs1
li x12, 0x4153e13d # initialize rs2
mulh x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x22, 0x7c8e23ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x17794614 # initialize rs1
li x13, 0xafa980ae # initialize rs2
mulh x22, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x17, 0x647b754c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6ac0f376 # initialize rs1
li x14, 0xc5469d75 # initialize rs2
mulh x17, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x14, 0x29b8b662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x10c0518c # initialize rs1
li x15, 0x056e2945 # initialize rs2
mulh x14, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x7, 0xa996501c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf1b8b98a # initialize rs1
li x16, 0x9cca12ff # initialize rs2
mulh x7, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x18, 0x487c384f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x68720de7 # initialize rs1
li x17, 0xf3b19979 # initialize rs2
mulh x18, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x7, 0x035e77de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf4b6bf3a # initialize rs1
li x18, 0xccfde2c3 # initialize rs2
mulh x7, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x13, 0x5cdae385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6166889c # initialize rs1
li x19, 0x28a60770 # initialize rs2
mulh x13, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x21, 0xa5d08182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3428adfc # initialize rs1
li x20, 0xb3f53cf8 # initialize rs2
mulh x21, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x23, 0x10c5fe2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xca087f60 # initialize rs1
li x21, 0xbce5db1d # initialize rs2
mulh x23, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x27, 0xe86e9656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x26b3ec64 # initialize rs1
li x22, 0x845cfe11 # initialize rs2
mulh x27, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x10, 0x10e8e5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe61ac29b # initialize rs1
li x23, 0x3d8b0b71 # initialize rs2
mulh x10, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x26, 0x99dd720b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7a130f39 # initialize rs1
li x24, 0x61ebd4b2 # initialize rs2
mulh x26, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x27, 0x9a148d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xad75a49d # initialize rs1
li x25, 0x2d36ccdd # initialize rs2
mulh x27, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x10, 0x2e08afc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcdfa5e56 # initialize rs1
li x26, 0x8528567b # initialize rs2
mulh x10, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x13, 0xcc96d833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd598f1ad # initialize rs1
li x27, 0x3412d312 # initialize rs2
mulh x13, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x8, 0xf239d812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x11cd4f8d # initialize rs1
li x28, 0x75d30fd1 # initialize rs2
mulh x8, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x9, 0x28f7735e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x919d4e9a # initialize rs1
li x29, 0x29fd4636 # initialize rs2
mulh x9, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x23, 0x223b1377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3cb7e7d1 # initialize rs1
li x30, 0xc86b1bb7 # initialize rs2
mulh x23, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x7, 0xbef53d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x37fc015b # initialize rs1
li x31, 0x511c84a2 # initialize rs2
mulh x7, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x6a8300a)
li x12, 0x76711aca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x06a8300a # initialize rs1
li x4, 0x463eb8dc # initialize rs2
mulh x12, x7, x4 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x7a464d9d)
li x27, 0xbccd4b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x85b9b263 # initialize rs1
li x14, 0x6a82834e # initialize rs2
mulh x27, x31, x14 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x792561b)
li x9, 0x83ee6036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2f14abd3 # initialize rs1
li x15, 0x0792561b # initialize rs2
mulh x9, x28, x15 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x49b956b6)
li x4, 0xcc729152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3451021f # initialize rs1
li x16, 0xb646a94a # initialize rs2
mulh x4, x23, x16 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
