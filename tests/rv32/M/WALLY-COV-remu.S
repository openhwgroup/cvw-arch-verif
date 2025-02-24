///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-remu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.083785
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xe1411df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb72dd9fe # initialize rs1
li x3, 0x085a88f1 # initialize rs2
remu x0, x13, x3 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5596082a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xab3ed0f8 # initialize rs1
li x4, 0xc49c27e0 # initialize rs2
remu x1, x24, x4 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xb043787e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xac12d12f # initialize rs1
li x29, 0x20e2d785 # initialize rs2
remu x2, x28, x29 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe35c9395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x232dbe60 # initialize rs1
li x7, 0x063fe24c # initialize rs2
remu x3, x27, x7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xb028573f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd23d78f1 # initialize rs1
li x24, 0xf63f69bb # initialize rs2
remu x4, x13, x24 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x1721544a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x77b222e9 # initialize rs1
li x15, 0x597bb3a9 # initialize rs2
remu x5, x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xdb9efa4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6f13a912 # initialize rs1
li x8, 0x672d6fb8 # initialize rs2
remu x6, x19, x8 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x2f79241e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x38b66084 # initialize rs1
li x11, 0x313a80a2 # initialize rs2
remu x7, x31, x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6ebb32b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa404ca95 # initialize rs1
li x8, 0x4923821f # initialize rs2
remu x8, x26, x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x43dc1ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffe67f5b # initialize rs1
li x4, 0x6291fa1b # initialize rs2
remu x9, x3, x4 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xfec415b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9d128ccd # initialize rs1
li x27, 0xc23406fa # initialize rs2
remu x10, x26, x27 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc3180e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xee54014c # initialize rs1
li x5, 0xa73ac303 # initialize rs2
remu x11, x17, x5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x363c3115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55ded971 # initialize rs1
li x15, 0x121c18e6 # initialize rs2
remu x12, x20, x15 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x36a8da69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf876d43e # initialize rs1
li x1, 0xcf543630 # initialize rs2
remu x13, x11, x1 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa986690a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb079bd3a # initialize rs1
li x7, 0xd0ab5fa1 # initialize rs2
remu x14, x6, x7 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2dc461f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1879eb64 # initialize rs1
li x3, 0x13bdb925 # initialize rs2
remu x15, x14, x3 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x9a36106f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x70d6a5c5 # initialize rs1
li x15, 0x0f705a4f # initialize rs2
remu x16, x6, x15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x9bb8d9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe26472f5 # initialize rs1
li x20, 0xe488fc6e # initialize rs2
remu x17, x13, x20 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xe7386906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0c90c273 # initialize rs1
li x4, 0xd6b263fc # initialize rs2
remu x18, x30, x4 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe10377a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd78e942d # initialize rs1
li x17, 0x08e3c22f # initialize rs2
remu x19, x23, x17 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xbc90220c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x454b6ab6 # initialize rs1
li x21, 0xc83c67d1 # initialize rs2
remu x20, x16, x21 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf29adf6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x12ab7a0b # initialize rs1
li x31, 0x5e18ef7f # initialize rs2
remu x21, x4, x31 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x9c82dbad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5410d37d # initialize rs1
li x12, 0x8bf87550 # initialize rs2
remu x22, x4, x12 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x93da327b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2b83dd22 # initialize rs1
li x8, 0xdc37273e # initialize rs2
remu x23, x24, x8 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x49432d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb238c37c # initialize rs1
li x27, 0x50b0cc70 # initialize rs2
remu x24, x30, x27 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xafc12511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4496bf23 # initialize rs1
li x22, 0xc1c36d9d # initialize rs2
remu x25, x29, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9e753056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe085026b # initialize rs1
li x24, 0xab6c9492 # initialize rs2
remu x26, x1, x24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf9fe4682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf71244f1 # initialize rs1
li x20, 0xa1a5852c # initialize rs2
remu x27, x26, x20 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0e925f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4f586a56 # initialize rs1
li x25, 0xbe09f6d2 # initialize rs2
remu x28, x17, x25 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd055877b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x51ae0dfc # initialize rs1
li x15, 0xbe0a32b4 # initialize rs2
remu x29, x21, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xdb1402d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2510f0f0 # initialize rs1
li x31, 0xdc722097 # initialize rs2
remu x30, x7, x31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5546207d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc5333862 # initialize rs1
li x19, 0x7e6bbf4c # initialize rs2
remu x31, x28, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x14, 0x469db2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5e64b12a # initialize rs1
li x12, 0x84a97f40 # initialize rs2
remu x14, x0, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0x2879eae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc97badd5 # initialize rs1
li x10, 0xc7e50dd7 # initialize rs2
remu x22, x1, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x23a7b903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf810c483 # initialize rs1
li x13, 0x9565fc07 # initialize rs2
remu x23, x2, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0xd28e6f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa2274379 # initialize rs1
li x11, 0x26d28c78 # initialize rs2
remu x16, x3, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0xca7dc94c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa48803e7 # initialize rs1
li x3, 0x5b7aef4a # initialize rs2
remu x1, x4, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x16, 0x02766503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa489d7c2 # initialize rs1
li x30, 0x5d4c5a3e # initialize rs2
remu x16, x5, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x16, 0xf2794999 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x91be465c # initialize rs1
li x1, 0xe8d3ee8e # initialize rs2
remu x16, x6, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x12, 0xe20b8681 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x98b8a248 # initialize rs1
li x22, 0x4b83ecfc # initialize rs2
remu x12, x7, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0xcb685b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xadb42d52 # initialize rs1
li x13, 0x2bc177db # initialize rs2
remu x11, x8, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0xd90141c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x21b8fb6a # initialize rs1
li x19, 0x46132568 # initialize rs2
remu x16, x9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0x4b3481e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe1c35f41 # initialize rs1
li x4, 0xe1bc69c8 # initialize rs2
remu x23, x10, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x66804456 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x46e2ffcc # initialize rs1
li x14, 0xd82636af # initialize rs2
remu x10, x11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0xd7697958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc7de25e8 # initialize rs1
li x26, 0xe32897c7 # initialize rs2
remu x31, x12, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0x897fe17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1fa99fb6 # initialize rs1
li x5, 0x228de55b # initialize rs2
remu x31, x13, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0xb20e0e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1af77192 # initialize rs1
li x27, 0x12b89d0b # initialize rs2
remu x11, x14, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0x7b39e163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0f94282f # initialize rs1
li x29, 0x710dd396 # initialize rs2
remu x28, x15, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x17, 0xd50f73ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb8531f12 # initialize rs1
li x11, 0x14884153 # initialize rs2
remu x17, x16, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0x80637622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd3c52de1 # initialize rs1
li x27, 0xd007539a # initialize rs2
remu x18, x17, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0x6e31908e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7dee9872 # initialize rs1
li x20, 0x0e739f89 # initialize rs2
remu x10, x18, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x11, 0x99b6af16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3d3cbdee # initialize rs1
li x7, 0x5d017ba5 # initialize rs2
remu x11, x19, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0x30e51cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc0165bf0 # initialize rs1
li x24, 0xb99799da # initialize rs2
remu x16, x20, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0xe9a449d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x75cd9ac1 # initialize rs1
li x10, 0xa1ba9486 # initialize rs2
remu x7, x21, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0xb4899cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2906958d # initialize rs1
li x16, 0x5b997bc6 # initialize rs2
remu x18, x22, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0x42a17e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5f491ad5 # initialize rs1
li x31, 0x967f7168 # initialize rs2
remu x4, x23, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0xc529aaed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd2534bb8 # initialize rs1
li x12, 0xe6092861 # initialize rs2
remu x18, x24, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0xdcf25b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4c595094 # initialize rs1
li x11, 0x0eccac35 # initialize rs2
remu x16, x25, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0xb99918ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcb9c17b9 # initialize rs1
li x17, 0x8df5ef19 # initialize rs2
remu x1, x26, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x29, 0xf4149b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xeca8ce7b # initialize rs1
li x25, 0x8f40e9b8 # initialize rs2
remu x29, x27, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0x8eaef88b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x75cc7499 # initialize rs1
li x16, 0x14bb6992 # initialize rs2
remu x11, x28, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x970d6dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb202c42b # initialize rs1
li x9, 0x95dc3a19 # initialize rs2
remu x23, x29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x10, 0xd08147f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x395c896e # initialize rs1
li x31, 0x90faa099 # initialize rs2
remu x10, x30, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x28, 0xa9a5240c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x378e4e6a # initialize rs1
li x23, 0x797deeea # initialize rs2
remu x28, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0xd3025616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa5691f0c # initialize rs1
li x0, 0x1fa38539 # initialize rs2
remu x27, x24, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0x4917c571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xce9669fe # initialize rs1
li x1, 0xb96164d1 # initialize rs2
remu x16, x22, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xfc5a6d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd09f8664 # initialize rs1
li x2, 0xaae5c46d # initialize rs2
remu x3, x18, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x82682255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x27cead73 # initialize rs1
li x3, 0xb63862fc # initialize rs2
remu x30, x9, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x2, 0x5d655f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x41a45f9a # initialize rs1
li x4, 0xb022920d # initialize rs2
remu x2, x24, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x6, 0xecb9cb7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x79e33e21 # initialize rs1
li x5, 0xf56105d1 # initialize rs2
remu x6, x7, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x5, 0x3fa8b0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3f1bbb42 # initialize rs1
li x6, 0x64595094 # initialize rs2
remu x5, x16, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x12, 0x1935ec14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xdf8ffe47 # initialize rs1
li x7, 0xfb53c275 # initialize rs2
remu x12, x16, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0x910278e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd2e68254 # initialize rs1
li x8, 0xf847d201 # initialize rs2
remu x13, x28, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x92a7d6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x26bb8a5c # initialize rs1
li x9, 0x84ee0f63 # initialize rs2
remu x14, x6, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x36c497d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb222576b # initialize rs1
li x10, 0x6ced8b66 # initialize rs2
remu x4, x26, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x4980a01d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x15a27eb9 # initialize rs1
li x11, 0x3cce5a56 # initialize rs2
remu x14, x30, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0xe036adbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x71cf951c # initialize rs1
li x12, 0xac836991 # initialize rs2
remu x7, x15, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x7, 0xb6c447a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf4e29b74 # initialize rs1
li x13, 0x91106712 # initialize rs2
remu x7, x3, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0xa849403b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x72c10010 # initialize rs1
li x14, 0xfae69f52 # initialize rs2
remu x8, x23, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0xf836c88b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8efd8fe8 # initialize rs1
li x15, 0x0af84c82 # initialize rs2
remu x12, x6, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0xdb7223ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf1bcd01d # initialize rs1
li x16, 0x19ecc048 # initialize rs2
remu x1, x28, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0xbf899c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x62365407 # initialize rs1
li x17, 0x632d3dae # initialize rs2
remu x26, x18, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0xe19b14db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe88d80d2 # initialize rs1
li x18, 0x950672ea # initialize rs2
remu x7, x17, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x2, 0xbf52b3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf9d75511 # initialize rs1
li x19, 0x3803bc9d # initialize rs2
remu x2, x22, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xa0fee298 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x341536fd # initialize rs1
li x20, 0xd7b1b4f5 # initialize rs2
remu x18, x9, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0x6ed55ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x81faaa45 # initialize rs1
li x21, 0x5bf885ae # initialize rs2
remu x28, x23, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x36eb413a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb4e20677 # initialize rs1
li x22, 0x1868b6d7 # initialize rs2
remu x10, x18, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x997c9cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x57acc31f # initialize rs1
li x23, 0x74d98c83 # initialize rs2
remu x5, x28, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0x85e7469c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x58efacc5 # initialize rs1
li x24, 0xa0d1d75f # initialize rs2
remu x13, x1, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0x8d0f3fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x46aef286 # initialize rs1
li x25, 0xfc55204d # initialize rs2
remu x23, x3, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0xb991e25c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcebcf508 # initialize rs1
li x26, 0x5f263bd8 # initialize rs2
remu x30, x12, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x4, 0xbfa34a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf314f1f8 # initialize rs1
li x27, 0x2b5afa75 # initialize rs2
remu x4, x23, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x9b646277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe1afe028 # initialize rs1
li x28, 0xc0d8c4ad # initialize rs2
remu x22, x20, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x7f001172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x496dcfd0 # initialize rs1
li x29, 0x1c9f1934 # initialize rs2
remu x26, x4, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x21, 0xa78b43c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2bd7e7d4 # initialize rs1
li x30, 0x8be19f65 # initialize rs2
remu x21, x16, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x629343b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe6de9d9a # initialize rs1
li x31, 0x4818266f # initialize rs2
remu x19, x15, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x276c8cdb)
li x5, 0x6e30dd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6e30dd35 # initialize rs1
li x0, 0x179828eb # initialize rs2
remu x5, x12, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x45dd285c)
li x22, 0x45dd285c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x45dd285c # initialize rs1
li x29, 0x45dd285c # initialize rs2
remu x22, x0, x29 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x39f7442c)
li x6, 0x010a8fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x39f7442c # initialize rs1
li x9, 0x39f7442c # initialize rs2
remu x6, x31, x9 # perform operation

# Testcase cmp_gpr_hazard raw test
remu x19, x2, x26 # perform first operation
remu x17, x19, x15 # perform second operation

# Testcase cmp_gpr_hazard raw test
remu x31, x1, x27 # perform first operation
remu x6, x4, x31 # perform second operation

# Testcase cmp_gpr_hazard waw test
remu x13, x23, x4 # perform first operation
remu x13, x1, x23 # perform second operation

# Testcase cmp_gpr_hazard waw test
remu x26, x25, x5 # perform first operation
remu x26, x22, x7 # perform second operation

# Testcase cmp_gpr_hazard war test
remu x1, x14, x3 # perform first operation
remu x14, x4, x24 # perform second operation

# Testcase cmp_gpr_hazard war test
remu x1, x13, x26 # perform first operation
remu x26, x12, x30 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xa74fe374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x0, 0x2a632129 # initialize rs2
remu x10, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x75a907df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
remu x22, x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0x95df17ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
remu x17, x1, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x24, 0x9e927836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x0, 0xd1661f6c # initialize rs2
remu x24, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x93fe0d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
remu x19, x31, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0x2a15d935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
remu x13, x3, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x7f4cfd13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x0, 0x008c614f # initialize rs2
remu x13, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0xd67c2237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
remu x23, x26, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x6f3d1b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
remu x4, x29, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x26, 0x8fb4b4e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x0, 0x1031530d # initialize rs2
remu x26, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0x1839f699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
remu x21, x15, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0x0e6af1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
remu x11, x23, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x17, 0xece94af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x0, 0x7b7a5748 # initialize rs2
remu x17, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x18, 0xef6464aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
remu x18, x22, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0xf83013e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
remu x22, x9, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x8a4407b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x0, 0x7e11566d # initialize rs2
remu x30, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x179c7cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
remu x5, x2, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0xadccdc2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
remu x28, x9, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x22, 0x10e20af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x0, 0xc46a0d66 # initialize rs2
remu x22, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x30, 0x09be59b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
remu x30, x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x31, 0x03050e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x1, 0x7ffffffe # initialize rs2
remu x31, x7, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x15, 0x40578aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x0, 0xb3095c4c # initialize rs2
remu x15, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0x41f7c31a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
remu x21, x23, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0x3328adc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
remu x6, x23, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x81763ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x0, 0x9669fa38 # initialize rs2
remu x12, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xbf5c4b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x4, 0xfffffffe # initialize rs2
remu x1, x6, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x13413471 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
remu x10, x26, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x6, 0x8aaab4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x0, 0x18b793e0 # initialize rs2
remu x6, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x7, 0xbab1b18b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
remu x7, x30, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0x4f355dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
remu x19, x31, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0x70b2fbf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x0, 0x5778b39d # initialize rs2
remu x14, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x10, 0x2e01ce40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
remu x10, x19, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0x8c7bb4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
remu x8, x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xbbd9251a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55555555 # initialize rs1
li x0, 0x4c3f95de # initialize rs2
remu x5, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xe8b0334c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
remu x5, x26, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x4, 0x1937020d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
remu x4, x8, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0xec924524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x25, 0x81b9fd86 # initialize rs2
remu x26, x3, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x6156530f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x12, 0xb852b819 # initialize rs2
remu x8, x5, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x444ecb49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x2, 0xf6e971bd # initialize rs2
remu x23, x28, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x33f437f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x12, 0x88b21870 # initialize rs2
remu x6, x4, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x908e7128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x6, 0x3486c765 # initialize rs2
remu x8, x9, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0xc5769a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x31, 0xf0f13b38 # initialize rs2
remu x18, x29, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0xfcd87a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x18, 0xa62e04cb # initialize rs2
remu x10, x13, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x6f42d026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x20, 0xa03237e4 # initialize rs2
remu x9, x23, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0x47fa7aea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x21, 0x4bfec38e # initialize rs2
remu x16, x29, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x20, 0x52562bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc8877 # initialize rs1
li x12, 0x90bcf8b3 # initialize rs2
remu x20, x3, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x14, 0xf2b5fd3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x7, 0x42e13d3c # initialize rs2
remu x14, x24, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x17, 0x069090c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x24, 0xd07c4a2a # initialize rs2
remu x17, x14, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0x82c5d3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3f765926 # initialize rs1
li x31, 0x00000000 # initialize rs2
remu x10, x3, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0xa2f939c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0c4d15c9 # initialize rs1
li x27, 0x00000001 # initialize rs2
remu x20, x19, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0xea123a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd68d9114 # initialize rs1
li x15, 0x00000002 # initialize rs2
remu x2, x16, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x16, 0x933bfd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xacb17774 # initialize rs1
li x9, 0x80000000 # initialize rs2
remu x16, x18, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0x7c782646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb3dd0536 # initialize rs1
li x19, 0x80000001 # initialize rs2
remu x16, x28, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0x03cf6754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe881d393 # initialize rs1
li x22, 0x7fffffff # initialize rs2
remu x30, x21, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x29, 0x87300d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8981d9c0 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
remu x29, x4, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0xa7ca8438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1cb559ef # initialize rs1
li x7, 0xffffffff # initialize rs2
remu x1, x14, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x378b97e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1cf2e1b9 # initialize rs1
li x3, 0xfffffffe # initialize rs2
remu x6, x22, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x21, 0xe96467b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc012cbda # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
remu x21, x30, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x13, 0x7982447b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x53f6e97c # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
remu x13, x9, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0xb42c212a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2210d296 # initialize rs1
li x5, 0x55555555 # initialize rs2
remu x18, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0x98b02044 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
remu x6, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x10, 0x791314a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x25, 0x00000001 # initialize rs2
remu x10, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x95c22b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
remu x28, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x131fa063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
remu x2, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x12, 0xa604d7da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x13, 0x80000001 # initialize rs2
remu x12, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x2, 0x945cc62f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
remu x2, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0x4419d4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
remu x3, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x4371d522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
remu x11, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x42d206f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x14, 0xfffffffe # initialize rs2
remu x1, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x18, 0x3f967404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
remu x18, x8, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x7, 0x87a25be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
remu x7, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x21, 0xdc8aecaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
remu x21, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x7ca4506a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
remu x25, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x82c1e190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
remu x14, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0xb0cc902f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
remu x27, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x30, 0x524a460f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x30, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x10, 0x092c8dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
remu x10, x19, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x13, 0x40cb659b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
remu x13, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x23, 0xe308eeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
remu x23, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x13, 0x32a908fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
remu x13, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x6e0bcc8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x24, 0xfffffffe # initialize rs2
remu x28, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x26, 0xc66f3198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
remu x26, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x9, 0x6ff4cb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
remu x9, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x27, 0x3d37b6d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
remu x27, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x338db19c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
remu x23, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0xe6dd3a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
remu x27, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x69d0710b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
remu x21, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x2, 0xd9b2e427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x22, 0x80000000 # initialize rs2
remu x2, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x16, 0x8cebe78d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs1
li x12, 0x80000001 # initialize rs2
remu x16, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0xb6e0701e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x26, 0x7fffffff # initialize rs2
remu x14, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x3, 0x5d270e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
remu x3, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x48838176 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x14, 0xffffffff # initialize rs2
remu x17, x5, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x56ce7282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x30, 0xfffffffe # initialize rs2
remu x17, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x3, 0x769deae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
remu x3, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x18, 0xf1443e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
remu x18, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x29, 0x4efd494c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x10, 0x55555555 # initialize rs2
remu x29, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x4, 0x5e2f608d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
remu x4, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0xa713b44f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x7, 0x00000001 # initialize rs2
remu x1, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x29, 0xf6df3463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
remu x29, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x8, 0x161f5b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
remu x8, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x5ba466e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
remu x28, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x25, 0x0b5d5180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x22, 0x7fffffff # initialize rs2
remu x25, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x28, 0x7f6a4c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
remu x28, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0x155569b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x23, 0xffffffff # initialize rs2
remu x8, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0xab105d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x7, 0xfffffffe # initialize rs2
remu x23, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x8, 0x4cc05047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
remu x8, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x26, 0x9759aa2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
remu x26, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x8, 0x4c936b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
remu x8, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x6dc39e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x3, 0x00000000 # initialize rs2
remu x13, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x27, 0xa6da9bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
remu x27, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x5ac192c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
remu x31, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x3, 0xb4c55247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x13, 0x80000000 # initialize rs2
remu x3, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x8, 0xf4f8a6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
remu x8, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x24, 0xe963aebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
remu x24, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x22, 0x462fb83b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
remu x22, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x25, 0x9f2a59eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x29, 0xffffffff # initialize rs2
remu x25, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x8, 0x60cc9210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x14, 0xfffffffe # initialize rs2
remu x8, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x28, 0xb2925275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
remu x28, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x8, 0x46b4134a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
remu x8, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x8, 0xd3927ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
remu x8, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0xbacd5560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
remu x12, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x15, 0x53b86512 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x25, 0x00000001 # initialize rs2
remu x15, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x8, 0xdc312074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x21, 0x00000002 # initialize rs2
remu x8, x19, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x2, 0x78a5502f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
remu x2, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x30, 0x44a6023c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
remu x30, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x21, 0xaa9ae6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
remu x21, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x12, 0x3b7c967d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
remu x12, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x30, 0x62c3294c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
remu x30, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x13, 0xfd6f55bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
remu x13, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x22, 0x717ba9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
remu x22, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x25, 0xfbfb6b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
remu x25, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x17, 0xe0fc5da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
remu x17, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x26, 0xac5871f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x16, 0x00000000 # initialize rs2
remu x26, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x12, 0xef994a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
remu x12, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x28, 0xd436355b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
remu x28, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x19, 0x90b017da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x2, 0x80000000 # initialize rs2
remu x19, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x11, 0xda339cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
remu x11, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x30, 0x567abe9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
remu x30, x28, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x7, 0x04c153c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
remu x7, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x1, 0x374386f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x5, 0xffffffff # initialize rs2
remu x1, x9, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x1, 0xad82dc3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
remu x1, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x18, 0x2d5150e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
remu x18, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x21, 0xc0d659f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
remu x21, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x27, 0xe3ca6dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
remu x27, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0x77b76db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
remu x6, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x27, 0xcc3f5854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
remu x27, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x20, 0x66906655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
remu x20, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x8, 0xd2ac5945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x8, x13, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x11, 0x4ef2fa09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
remu x11, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x3, 0x1e570def # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
remu x3, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x14, 0x5f239626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
remu x14, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0x6c7170df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
remu x30, x15, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0xb6efc843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x4, 0xfffffffe # initialize rs2
remu x5, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x27, 0x201a5ec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
remu x27, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x14, 0xdc24b9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
remu x14, x21, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0xebb164fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
remu x24, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x2, 0x12d6df57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x14, 0x00000000 # initialize rs2
remu x2, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xfc38dad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
remu x13, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0x659a35c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
remu x31, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x20, 0xefd4b117 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
remu x20, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xd73cb2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
remu x27, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x23, 0x3f43b5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
remu x23, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0xc361d6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
remu x11, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x13, 0xfbdb7873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
remu x13, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x17, 0x84e6f337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
remu x17, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x15, 0x788f05ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
remu x15, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x4, 0xd787347a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
remu x4, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x17, 0xed3997a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
remu x17, x21, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x4, 0x0705d15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x19, 0x00000000 # initialize rs2
remu x4, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x26, 0xc5e9b586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x24, 0x00000001 # initialize rs2
remu x26, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x13, 0x6e01035e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x28, 0x00000002 # initialize rs2
remu x13, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x2, 0xbd8f2c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x14, 0x80000000 # initialize rs2
remu x2, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x12, 0x9475ba87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x27, 0x80000001 # initialize rs2
remu x12, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x8, 0x97870c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x15, 0x7fffffff # initialize rs2
remu x8, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x25, 0x19738e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
remu x25, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x18, 0xce4d9270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x3, 0xffffffff # initialize rs2
remu x18, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x2, 0x4b475aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
li x30, 0xfffffffe # initialize rs2
remu x2, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x11, 0xe8d8d04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
remu x11, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x2, 0x99df7c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
remu x2, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x10, 0xf69bc76e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x8, 0x55555555 # initialize rs2
remu x10, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x7, 0xf2689346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x4, 0x00000000 # initialize rs2
remu x7, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x29, 0xe82d5683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
li x5, 0x00000001 # initialize rs2
remu x29, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x27, 0x95e0ea97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x22, 0x00000002 # initialize rs2
remu x27, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x15, 0x9d3983ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x11, 0x80000000 # initialize rs2
remu x15, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x22, 0x1ab7d30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x10, 0x80000001 # initialize rs2
remu x22, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x27, 0x3d44d72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaa # initialize rs1
li x28, 0x7fffffff # initialize rs2
remu x27, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x5, 0x9291f21d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x31, 0x7ffffffe # initialize rs2
remu x5, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x31, 0xfcf6500e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x30, 0xffffffff # initialize rs2
remu x31, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x12, 0xdacc804e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x13, 0xfffffffe # initialize rs2
remu x12, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x26, 0xbff5478b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
remu x26, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x26, 0xe870cde3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
remu x26, x9, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x3, 0xf1a87995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x55555555 # initialize rs2
remu x3, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x14, 0xd1e03009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
remu x14, x9, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x8, 0xe73d58e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x11, 0x00000001 # initialize rs2
remu x8, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x10, 0x89a274ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x7, 0x00000002 # initialize rs2
remu x10, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x10, 0x6fb8e873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x3, 0x80000000 # initialize rs2
remu x10, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x1, 0x5326ceed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
remu x1, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x7, 0x57002d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x9, 0x7fffffff # initialize rs2
remu x7, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x11, 0x5edade40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
remu x11, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x3, 0x07872f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x24, 0xffffffff # initialize rs2
remu x3, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x21, 0x7500ec45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
remu x21, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x10, 0xd629b203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
remu x10, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x28, 0xb8af9327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
remu x28, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x24, 0x8ec3a07d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
remu x24, x8, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7bf01fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcd559c74 # initialize rs1
li x15, 0x79b326ea # initialize rs2
remu x0, x0, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3ea7dc88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe84bb944 # initialize rs1
li x8, 0x60202d84 # initialize rs2
remu x1, x1, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xecf98b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb5286140 # initialize rs1
li x26, 0x01bc73df # initialize rs2
remu x2, x2, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc208314c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x359b82ec # initialize rs1
li x14, 0xf3f2d21b # initialize rs2
remu x3, x3, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xa1ab3ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7e7179c2 # initialize rs1
li x17, 0x9307f716 # initialize rs2
remu x4, x4, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x61f8fccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2650504c # initialize rs1
li x26, 0x85ceb539 # initialize rs2
remu x5, x5, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x6008e44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0d888571 # initialize rs1
li x7, 0x2094cab3 # initialize rs2
remu x6, x6, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xa0c3e294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3c6d42c5 # initialize rs1
li x15, 0x844e3287 # initialize rs2
remu x7, x7, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd61928f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ec702be # initialize rs1
li x4, 0xb9f824f9 # initialize rs2
remu x8, x8, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc63dce2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd3e06ed7 # initialize rs1
li x28, 0xf6b0ea78 # initialize rs2
remu x9, x9, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8cb483f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4e8115c0 # initialize rs1
li x19, 0x50a28f77 # initialize rs2
remu x10, x10, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9f39d007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x63ee2a27 # initialize rs1
li x2, 0x9c605d54 # initialize rs2
remu x11, x11, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8890f1a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe717c508 # initialize rs1
li x6, 0x67a2bcea # initialize rs2
remu x12, x12, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3d749be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeffaa3b4 # initialize rs1
li x2, 0xc3266818 # initialize rs2
remu x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xdc563504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x486207f9 # initialize rs1
li x12, 0xd014f523 # initialize rs2
remu x14, x14, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xbefb7020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4260431f # initialize rs1
li x22, 0x3daccb57 # initialize rs2
remu x15, x15, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x09948f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa11f7b58 # initialize rs1
li x29, 0x1ddf1270 # initialize rs2
remu x16, x16, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x91b5144d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x64aeda2b # initialize rs1
li x21, 0x016b2019 # initialize rs2
remu x17, x17, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x9b6f3c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bc15476 # initialize rs1
li x22, 0x6763a00c # initialize rs2
remu x18, x18, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9afebed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe12a13d0 # initialize rs1
li x17, 0xe69e40e5 # initialize rs2
remu x19, x19, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xbee15882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf563e6dc # initialize rs1
li x11, 0x49b4e6b8 # initialize rs2
remu x20, x20, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9706f2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8f56a2df # initialize rs1
li x14, 0x58d36ed0 # initialize rs2
remu x21, x21, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x83eb39b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x13f588a7 # initialize rs1
li x19, 0x0d0dba2c # initialize rs2
remu x22, x22, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb596b69f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x66cbc5da # initialize rs1
li x21, 0x51d9a1db # initialize rs2
remu x23, x23, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb0dbdb64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8f0d6903 # initialize rs1
li x15, 0x3c4d4394 # initialize rs2
remu x24, x24, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf5bdb6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x41724494 # initialize rs1
li x27, 0x7c2dd88b # initialize rs2
remu x25, x25, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf9e899e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x626aeef7 # initialize rs1
li x15, 0xb9457f06 # initialize rs2
remu x26, x26, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe80ae1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x089b2a42 # initialize rs1
li x26, 0x99c3e417 # initialize rs2
remu x27, x27, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa78edc4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x539663a9 # initialize rs1
li x31, 0x04328da7 # initialize rs2
remu x28, x28, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xcc079c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc5bd0b6b # initialize rs1
li x28, 0x8f632247 # initialize rs2
remu x29, x29, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xce657c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1aedb75a # initialize rs1
li x22, 0xe6f3d9e7 # initialize rs2
remu x30, x30, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa45f69e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc8a163aa # initialize rs1
li x5, 0x4f8381da # initialize rs2
remu x31, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xeb5ed1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0a514329 # initialize rs1
li x0, 0xce320ab7 # initialize rs2
remu x0, x27, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xa24e1c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x73ca05c7 # initialize rs1
li x1, 0x082cb0ec # initialize rs2
remu x1, x26, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x409f6601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf823df79 # initialize rs1
li x2, 0xfa829071 # initialize rs2
remu x2, x27, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x5d62ea45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb86e08aa # initialize rs1
li x3, 0x647aa03d # initialize rs2
remu x3, x5, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xa04694d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x299fff83 # initialize rs1
li x4, 0x34a55723 # initialize rs2
remu x4, x24, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xb91e87d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa435f3b2 # initialize rs1
li x5, 0xf554d494 # initialize rs2
remu x5, x2, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xf76941f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1ef97f1a # initialize rs1
li x6, 0x8b7eed7a # initialize rs2
remu x6, x19, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xd597da6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdaf7c721 # initialize rs1
li x7, 0x2997aa19 # initialize rs2
remu x7, x28, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x12a60447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa382f008 # initialize rs1
li x8, 0x72d8e94d # initialize rs2
remu x8, x29, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x59996ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6e423ee6 # initialize rs1
li x9, 0x7d4e22c8 # initialize rs2
remu x9, x2, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xf1b02af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x25c8d919 # initialize rs1
li x10, 0x5cf8cf08 # initialize rs2
remu x10, x31, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xf5a6d98c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x696e208b # initialize rs1
li x11, 0xd3edf3d8 # initialize rs2
remu x11, x27, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x40d06edb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf5d303f6 # initialize rs1
li x12, 0x2b09c879 # initialize rs2
remu x12, x5, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x74ce89ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7dfdf9ac # initialize rs1
li x13, 0x1436d687 # initialize rs2
remu x13, x2, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xfac8143f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0267222a # initialize rs1
li x14, 0xb8303051 # initialize rs2
remu x14, x4, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xf08b53f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3e508d30 # initialize rs1
li x15, 0xe8a692a7 # initialize rs2
remu x15, x1, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xe46a801f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb3bcc99c # initialize rs1
li x16, 0x285e3297 # initialize rs2
remu x16, x28, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xcd8d8620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb6f2f193 # initialize rs1
li x17, 0x858eafb3 # initialize rs2
remu x17, x25, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x7d027281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcc514a1d # initialize rs1
li x18, 0xbd17f36a # initialize rs2
remu x18, x27, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x3b1ead8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf7f8a910 # initialize rs1
li x19, 0xcfa0c8c9 # initialize rs2
remu x19, x25, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x03481115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0d36c154 # initialize rs1
li x20, 0xb520d834 # initialize rs2
remu x20, x29, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xa504f839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55386abf # initialize rs1
li x21, 0x9879936d # initialize rs2
remu x21, x14, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x1b47fe2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x623dc3f6 # initialize rs1
li x22, 0xcb3fdc87 # initialize rs2
remu x22, x15, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x50a784e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb4e0dcb0 # initialize rs1
li x23, 0xefca80a6 # initialize rs2
remu x23, x13, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xa12100b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb60ca022 # initialize rs1
li x24, 0x20d16bf8 # initialize rs2
remu x24, x31, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xe6e98bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x79259c24 # initialize rs1
li x25, 0xba5c3d67 # initialize rs2
remu x25, x24, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x9c3111de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd5104b6c # initialize rs1
li x26, 0xffb6410e # initialize rs2
remu x26, x18, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xe205fe1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9f9cabc4 # initialize rs1
li x27, 0xd34e5420 # initialize rs2
remu x27, x18, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x4a5998bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1b798a16 # initialize rs1
li x28, 0xfd4e1ac7 # initialize rs2
remu x28, x23, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x91661284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb34c409b # initialize rs1
li x29, 0xa785e1a5 # initialize rs2
remu x29, x7, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xcbd063ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9d18ddfe # initialize rs1
li x30, 0x8c34dea8 # initialize rs2
remu x30, x18, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xbe6598c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfff98890 # initialize rs1
li x31, 0x1325ab48 # initialize rs2
remu x31, x4, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x97698325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcf4ffac0 # initialize rs1
li x0, 0x46fd468b # initialize rs2
remu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x0a309600 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe3cde135 # initialize rs1
li x1, 0xb86f777e # initialize rs2
remu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x724bb90c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfd4da0da # initialize rs1
li x2, 0xf23be004 # initialize rs2
remu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x48c5c387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0ac275ee # initialize rs1
li x3, 0x4f4509a8 # initialize rs2
remu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x264b96cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7a4d49f5 # initialize rs1
li x4, 0x4a1209f5 # initialize rs2
remu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x481d9446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xecb85438 # initialize rs1
li x5, 0xa551811b # initialize rs2
remu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xe3246b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x01d7c996 # initialize rs1
li x6, 0x31f1b59d # initialize rs2
remu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x4c04af0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xff8e35a6 # initialize rs1
li x7, 0xce27ecbc # initialize rs2
remu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfabdab4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89e2b272 # initialize rs1
li x8, 0x5fe27471 # initialize rs2
remu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6be20d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9a90613a # initialize rs1
li x9, 0xae7687b3 # initialize rs2
remu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xda6850a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd830d61d # initialize rs1
li x10, 0x8367955e # initialize rs2
remu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf22aaf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd6a01dbf # initialize rs1
li x11, 0x4fe0f857 # initialize rs2
remu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x5f53ea10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0d40ad58 # initialize rs1
li x12, 0x6f916465 # initialize rs2
remu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb70c7548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x156f5473 # initialize rs1
li x13, 0xc9c37a78 # initialize rs2
remu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x00bd1844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x25aec763 # initialize rs1
li x14, 0xd103e342 # initialize rs2
remu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb5d99c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2470b8d6 # initialize rs1
li x15, 0xd7131471 # initialize rs2
remu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf5d60670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf47932a7 # initialize rs1
li x16, 0xfd72d09d # initialize rs2
remu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5ccff4de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x324f48a4 # initialize rs1
li x17, 0x4bade7cd # initialize rs2
remu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc7ab2c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x84e245dc # initialize rs1
li x18, 0x45e808ce # initialize rs2
remu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xcc977e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9895f112 # initialize rs1
li x19, 0x008065f4 # initialize rs2
remu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xb1842136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4c8d1b6a # initialize rs1
li x20, 0x71eb38ca # initialize rs2
remu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x42b2d64d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x365be181 # initialize rs1
li x21, 0xa012d9a1 # initialize rs2
remu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2ca3165b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x076073cb # initialize rs1
li x22, 0x9a64a27f # initialize rs2
remu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xa606856e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb1d90fdd # initialize rs1
li x23, 0x930c8f7d # initialize rs2
remu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xaf54359f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7f8ffb95 # initialize rs1
li x24, 0x95215f13 # initialize rs2
remu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xcef87fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd6cdd23a # initialize rs1
li x25, 0x6b9d2e50 # initialize rs2
remu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe19ac2b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab33963a # initialize rs1
li x26, 0x8889dc80 # initialize rs2
remu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x48328e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2c190fa2 # initialize rs1
li x27, 0x210e40c1 # initialize rs2
remu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x52777ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2546ea3e # initialize rs1
li x28, 0x50ce8a99 # initialize rs2
remu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x152d86d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x45ffa3f9 # initialize rs1
li x29, 0x7acf667d # initialize rs2
remu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xad8ca59a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe6827e31 # initialize rs1
li x30, 0x76f7bf32 # initialize rs2
remu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xac457ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd4fac456 # initialize rs1
li x31, 0x8a78ac56 # initialize rs2
remu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x4, 0x8223b2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0f4a47b0 # initialize rs1
li x0, 0x88d81ef8 # initialize rs2
remu x4, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x13, 0x63618043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5703a775 # initialize rs1
li x1, 0xdcf229fd # initialize rs2
remu x13, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x28, 0x05a6c4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa3f7b157 # initialize rs1
li x2, 0x5b50dc77 # initialize rs2
remu x28, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x30, 0x6a2ae1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xba50ea69 # initialize rs1
li x3, 0x8d95d0cc # initialize rs2
remu x30, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x1, 0x71570d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x447c8c88 # initialize rs1
li x4, 0x5753f3db # initialize rs2
remu x1, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x26, 0xdcddd777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb18f6d64 # initialize rs1
li x5, 0xf1c5906c # initialize rs2
remu x26, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x31, 0x724759b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6c9a5ce1 # initialize rs1
li x6, 0x1ac6a642 # initialize rs2
remu x31, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x6, 0x9d9a10f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x732cbb42 # initialize rs1
li x7, 0x31f4959a # initialize rs2
remu x6, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x12, 0x86b67cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x92a36855 # initialize rs1
li x8, 0x8b43a01d # initialize rs2
remu x12, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x11, 0xadf1f956 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x088a4c46 # initialize rs1
li x9, 0x61f9665d # initialize rs2
remu x11, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x24, 0x11130496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x427294f1 # initialize rs1
li x10, 0xe8a85503 # initialize rs2
remu x24, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x2, 0x73b59ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x49f139b3 # initialize rs1
li x11, 0x7c4f9c9a # initialize rs2
remu x2, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x544e333e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x87d86a5c # initialize rs1
li x12, 0x59cfc6cd # initialize rs2
remu x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x12, 0x24773896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5fa4665b # initialize rs1
li x13, 0x74aef436 # initialize rs2
remu x12, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x3, 0xd9a04ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x443e31bc # initialize rs1
li x14, 0x96028a17 # initialize rs2
remu x3, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x29, 0xa6ffdee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7327f6c8 # initialize rs1
li x15, 0x38a6562f # initialize rs2
remu x29, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x6, 0x7af37102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2c51b14d # initialize rs1
li x16, 0x10d3e577 # initialize rs2
remu x6, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x14, 0x13e56e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3e557611 # initialize rs1
li x17, 0xd794f0a3 # initialize rs2
remu x14, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x10, 0x9b253a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc0f2e614 # initialize rs1
li x18, 0x7bdf5237 # initialize rs2
remu x10, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x22, 0x04d002ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc14ef247 # initialize rs1
li x19, 0xca5026c3 # initialize rs2
remu x22, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xffdb130f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x21cdcbbb # initialize rs1
li x20, 0x5623d469 # initialize rs2
remu x20, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc9126e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4102c4ef # initialize rs1
li x21, 0xa13c3409 # initialize rs2
remu x21, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x2, 0x40fcd699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x53a2780c # initialize rs1
li x22, 0x299e7fc0 # initialize rs2
remu x2, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x20, 0xc4dc5993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x04863876 # initialize rs1
li x23, 0xd774d634 # initialize rs2
remu x20, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x31, 0x1d23b4ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x660bb9cc # initialize rs1
li x24, 0x5547b552 # initialize rs2
remu x31, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x8, 0x79d785fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xea5ba119 # initialize rs1
li x25, 0xa7c40538 # initialize rs2
remu x8, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x19, 0x1211aa40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8647d339 # initialize rs1
li x26, 0x21035b03 # initialize rs2
remu x19, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x23, 0x490bb71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5601b5ef # initialize rs1
li x27, 0x5e1b5fec # initialize rs2
remu x23, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x30, 0x81009bce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x08663afe # initialize rs1
li x28, 0x9cfe1419 # initialize rs2
remu x30, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x17, 0xb22b9269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf8b0864d # initialize rs1
li x29, 0xac72b9a1 # initialize rs2
remu x17, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x21, 0x13b6ee83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8adb3937 # initialize rs1
li x30, 0x766728a4 # initialize rs2
remu x21, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x25, 0x59070fae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x68b113c7 # initialize rs1
li x31, 0x040c004c # initialize rs2
remu x25, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x20d59715)
li x11, 0x542221ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x20d59715 # initialize rs1
li x12, 0xfaf86069 # initialize rs2
remu x11, x28, x12 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2076169d)
li x31, 0x92e92800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdf89e963 # initialize rs1
li x23, 0x61773b5c # initialize rs2
remu x31, x12, x23 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x691f85c7)
li x10, 0x04999be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x408152f7 # initialize rs1
li x9, 0x691f85c7 # initialize rs2
remu x10, x6, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x3de2b05b)
li x7, 0x5e58df4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x512265c3 # initialize rs1
li x31, 0xc21d4fa5 # initialize rs2
remu x7, x12, x31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
