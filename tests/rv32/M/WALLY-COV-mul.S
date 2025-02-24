///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-mul.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.063623
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x7f5a802c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1aaf9321 # initialize rs1
li x31, 0x60320710 # initialize rs2
mul x0, x5, x31 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xcffbaca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6181b589 # initialize rs1
li x2, 0x430e8806 # initialize rs2
mul x1, x7, x2 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xea5567ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5324985e # initialize rs1
li x19, 0x53fe2406 # initialize rs2
mul x2, x21, x19 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x214e1886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2fdb22fb # initialize rs1
li x25, 0xbb7cef52 # initialize rs2
mul x3, x27, x25 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x44017b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55092dec # initialize rs1
li x4, 0x49ae9c81 # initialize rs2
mul x4, x20, x4 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x1f9258d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9fc93ac1 # initialize rs1
li x22, 0xade5a182 # initialize rs2
mul x5, x6, x22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe4b8bc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8fd0b3cd # initialize rs1
li x12, 0x5e686f84 # initialize rs2
mul x6, x4, x12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x00715c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3548339d # initialize rs1
li x19, 0x62ea1e72 # initialize rs2
mul x7, x20, x19 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf6fcf2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x765e433c # initialize rs1
li x2, 0x513cc4d6 # initialize rs2
mul x8, x29, x2 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xfb784268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdbbbdebd # initialize rs1
li x19, 0x6b2ee91f # initialize rs2
mul x9, x21, x19 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x72ff6233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb313267d # initialize rs1
li x18, 0x733c4df3 # initialize rs2
mul x10, x28, x18 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x22d86764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x41b0e73c # initialize rs1
li x22, 0xa2c72460 # initialize rs2
mul x11, x19, x22 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x091e91c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6b1e148a # initialize rs1
li x3, 0x919a83d5 # initialize rs2
mul x12, x11, x3 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc00c5e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa9c69c26 # initialize rs1
li x13, 0xbeb6cd94 # initialize rs2
mul x13, x1, x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc767698e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x046093a2 # initialize rs1
li x13, 0xd5d2673f # initialize rs2
mul x14, x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6d2f0ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x916f170d # initialize rs1
li x7, 0x9937e601 # initialize rs2
mul x15, x23, x7 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x4c217329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x62d26994 # initialize rs1
li x17, 0x1f24a8f2 # initialize rs2
mul x16, x30, x17 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3637a58e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x45248016 # initialize rs1
li x7, 0xde67b23d # initialize rs2
mul x17, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb4554110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd78bf99d # initialize rs1
li x7, 0x8815b09f # initialize rs2
mul x18, x24, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x970f33a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xca45f6dc # initialize rs1
li x22, 0x2d97c2d2 # initialize rs2
mul x19, x2, x22 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x4ef8837a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x144ef59b # initialize rs1
li x2, 0xd03db6e4 # initialize rs2
mul x20, x23, x2 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x04b4bb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf0172337 # initialize rs1
li x17, 0x7614198c # initialize rs2
mul x21, x27, x17 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf435aec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x546eed06 # initialize rs1
li x23, 0xdabd6cee # initialize rs2
mul x22, x3, x23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xed4391b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x737d63c2 # initialize rs1
li x3, 0x6cc693ad # initialize rs2
mul x23, x31, x3 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x04e1b777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x890ef132 # initialize rs1
li x12, 0x3e21d1a0 # initialize rs2
mul x24, x21, x12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x563f9046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5e3ee5a0 # initialize rs1
li x24, 0xc17d42cf # initialize rs2
mul x25, x3, x24 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x7d7e25fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb03332fb # initialize rs1
li x15, 0xedc835a1 # initialize rs2
mul x26, x2, x15 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x678daf3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x67dc1ba7 # initialize rs1
li x6, 0xa29ae857 # initialize rs2
mul x27, x17, x6 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x872c1c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4735bbe1 # initialize rs1
li x7, 0x3f76a14e # initialize rs2
mul x28, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x74b97bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xab43e7e6 # initialize rs1
li x21, 0x35e1238f # initialize rs2
mul x29, x22, x21 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa0e7e1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb3ba7c7b # initialize rs1
li x24, 0xe516ab0e # initialize rs2
mul x30, x14, x24 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x3455db42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf30307c9 # initialize rs1
li x17, 0x23be65b2 # initialize rs2
mul x31, x20, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x30, 0x7ff7c0e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x52baec3f # initialize rs1
li x15, 0x119fbc9a # initialize rs2
mul x30, x0, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x62e82a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x35f77e98 # initialize rs1
li x27, 0x99e77786 # initialize rs2
mul x25, x1, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0xcba5c9df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x06c585c2 # initialize rs1
li x18, 0x1c98c31d # initialize rs2
mul x19, x2, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0xd40fb0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x097b57c0 # initialize rs1
li x19, 0xf4710f0d # initialize rs2
mul x20, x3, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x2, 0x9cd800d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7f5dd477 # initialize rs1
li x14, 0x478e4020 # initialize rs2
mul x2, x4, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x4, 0x23d98961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2e87dfd4 # initialize rs1
li x28, 0xe84d7c20 # initialize rs2
mul x4, x5, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x30, 0x5b77e2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x949a70c3 # initialize rs1
li x29, 0xb95d3b32 # initialize rs2
mul x30, x6, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x94054415 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdff122f6 # initialize rs1
li x14, 0xd8bb5709 # initialize rs2
mul x16, x7, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0x7643c318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1ce33e25 # initialize rs1
li x21, 0xb3e136fb # initialize rs2
mul x7, x8, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0xab235219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5c3337b0 # initialize rs1
li x7, 0x12d3c3b9 # initialize rs2
mul x21, x9, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0x4ed82093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80adb4ae # initialize rs1
li x18, 0xba20573d # initialize rs2
mul x31, x10, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0x4434b671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x11c68477 # initialize rs1
li x5, 0xe461a461 # initialize rs2
mul x28, x11, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x14, 0x0a5abd5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbf14d4fd # initialize rs1
li x2, 0x1c3606f2 # initialize rs2
mul x14, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xcdab7dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4ddc995e # initialize rs1
li x9, 0xb667e224 # initialize rs2
mul x12, x13, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0xc5d3132a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x51758c1e # initialize rs1
li x19, 0xb4fed07f # initialize rs2
mul x8, x14, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x25967aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa19d1987 # initialize rs1
li x4, 0x4cad54d7 # initialize rs2
mul x9, x15, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x31, 0xe0a9e6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x99c9ea8d # initialize rs1
li x27, 0xd1b3969e # initialize rs2
mul x31, x16, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x7f97641d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x38593421 # initialize rs1
li x10, 0xcec42e26 # initialize rs2
mul x9, x17, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0xe88f5836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x31b85885 # initialize rs1
li x24, 0x74e4b6ae # initialize rs2
mul x8, x18, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x31, 0xbe870c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x875d86d0 # initialize rs1
li x20, 0x6a1fea12 # initialize rs2
mul x31, x19, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0xcecefe0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x47eb7220 # initialize rs1
li x15, 0x4e17ed11 # initialize rs2
mul x16, x20, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x19, 0x62001443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x17c47374 # initialize rs1
li x7, 0xb40cc6cf # initialize rs2
mul x19, x21, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0xca17b175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd9af3377 # initialize rs1
li x1, 0x0bc06557 # initialize rs2
mul x24, x22, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x17, 0x94081fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x03403b19 # initialize rs1
li x7, 0x50a73032 # initialize rs2
mul x17, x23, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x6, 0xd60341c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x54948bd9 # initialize rs1
li x15, 0xb8b589a2 # initialize rs2
mul x6, x24, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0x3652ed19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1bb62d73 # initialize rs1
li x22, 0x35cb45e0 # initialize rs2
mul x10, x25, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x19, 0x1d2234d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3718bb00 # initialize rs1
li x17, 0x4647c974 # initialize rs2
mul x19, x26, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x96e3f748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5b4c4814 # initialize rs1
li x11, 0x709e7d75 # initialize rs2
mul x30, x27, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x3, 0x42086244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x934546ff # initialize rs1
li x18, 0x7913630d # initialize rs2
mul x3, x28, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x28, 0xc9faec65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8bbb5260 # initialize rs1
li x7, 0x12e35e37 # initialize rs2
mul x28, x29, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x31, 0x8e83d788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x70911fdc # initialize rs1
li x21, 0xbc92d1ea # initialize rs2
mul x31, x30, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x3, 0xdee36c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xed49d6ae # initialize rs1
li x26, 0xa25542f4 # initialize rs2
mul x3, x31, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x36b4752c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x18731e19 # initialize rs1
li x0, 0xdc9a11b4 # initialize rs2
mul x25, x10, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x8, 0x6cc3c9f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x12ff8efe # initialize rs1
li x1, 0x90fc819b # initialize rs2
mul x8, x28, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x26d728e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xacb831df # initialize rs1
li x2, 0xe7e56917 # initialize rs2
mul x6, x27, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x91e4ff1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7410cff3 # initialize rs1
li x3, 0xa6d2b5c8 # initialize rs2
mul x23, x4, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x26, 0x4da9660f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe1cfdf21 # initialize rs1
li x4, 0xccf693c1 # initialize rs2
mul x26, x12, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x12, 0x8c4d3347 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x20902142 # initialize rs1
li x5, 0xbbea931f # initialize rs2
mul x12, x22, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x29, 0x1d085ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6827cb35 # initialize rs1
li x6, 0x05bfc400 # initialize rs2
mul x29, x12, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x14, 0xc9cecb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7984f5cf # initialize rs1
li x7, 0x68df92ea # initialize rs2
mul x14, x15, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0x68402edb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf9843a0e # initialize rs1
li x8, 0xf49bf670 # initialize rs2
mul x1, x9, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x2a3e2318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0fd99361 # initialize rs1
li x9, 0x27ddef75 # initialize rs2
mul x7, x23, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x05f27e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd442f3dc # initialize rs1
li x10, 0xbf0188f0 # initialize rs2
mul x20, x29, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x251ae3d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x39842a25 # initialize rs1
li x11, 0xc1e563a4 # initialize rs2
mul x14, x30, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x6b3c4580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x52dadf58 # initialize rs1
li x12, 0xbd145146 # initialize rs2
mul x15, x23, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x83b2c67e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4c79e951 # initialize rs1
li x13, 0xa8d433b3 # initialize rs2
mul x3, x5, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0xd16cab60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0abef4e5 # initialize rs1
li x14, 0x13f997ee # initialize rs2
mul x6, x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x11f8a697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4f023b28 # initialize rs1
li x15, 0xc2b4f0c2 # initialize rs2
mul x5, x22, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0x7a0043cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb84cba18 # initialize rs1
li x16, 0xbb99884f # initialize rs2
mul x31, x19, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x14, 0xcd99c2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x42940939 # initialize rs1
li x17, 0x366170cd # initialize rs2
mul x14, x15, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0x9cb0a307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3fc94e12 # initialize rs1
li x18, 0x144012fc # initialize rs2
mul x26, x19, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xba898e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7195cd81 # initialize rs1
li x19, 0xe9acc68b # initialize rs2
mul x10, x7, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x99dd1204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe4baaa5d # initialize rs1
li x20, 0x781fcc61 # initialize rs2
mul x18, x1, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x60b82bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1376bb66 # initialize rs1
li x21, 0x3105e100 # initialize rs2
mul x18, x8, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0xa70dffec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa7bc7499 # initialize rs1
li x22, 0xac46c5fe # initialize rs2
mul x17, x6, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0xb2604ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc0eb5729 # initialize rs1
li x23, 0x2f1974b9 # initialize rs2
mul x12, x20, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0x6cf7d96f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x914d6c28 # initialize rs1
li x24, 0x2bd6f451 # initialize rs2
mul x22, x26, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x28, 0xe543538f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfd307267 # initialize rs1
li x25, 0x772c6bad # initialize rs2
mul x28, x10, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0x83b2d04d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3c02bff2 # initialize rs1
li x26, 0x8ebaf00b # initialize rs2
mul x30, x7, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0xf974832f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe6160a68 # initialize rs1
li x27, 0xfc22acf4 # initialize rs2
mul x3, x21, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xa539e22e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe50bbbeb # initialize rs1
li x28, 0xb62c0dc4 # initialize rs2
mul x30, x2, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x16, 0x6e84d9be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbb6fc44b # initialize rs1
li x29, 0x11cb9298 # initialize rs2
mul x16, x11, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0xa4d5fc54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc29bb274 # initialize rs1
li x30, 0x35cf880b # initialize rs2
mul x8, x5, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0x8441c260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbdd58462 # initialize rs1
li x31, 0x13d5452b # initialize rs2
mul x5, x28, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xd3d6e566)
li x26, 0xa5bf8b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa5bf8b2a # initialize rs1
li x0, 0x360e3ed0 # initialize rs2
mul x26, x18, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xfa4de78a)
li x31, 0xfa4de78a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfa4de78a # initialize rs1
li x8, 0xfa4de78a # initialize rs2
mul x31, x0, x8 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xe79f3526)
li x19, 0x6578b251 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe79f3526 # initialize rs1
li x29, 0xe79f3526 # initialize rs2
mul x19, x26, x29 # perform operation

# Testcase cmp_gpr_hazard raw test
mul x23, x14, x15 # perform first operation
mul x11, x23, x10 # perform second operation

# Testcase cmp_gpr_hazard raw test
mul x19, x21, x20 # perform first operation
mul x28, x2, x19 # perform second operation

# Testcase cmp_gpr_hazard waw test
mul x14, x15, x18 # perform first operation
mul x14, x6, x2 # perform second operation

# Testcase cmp_gpr_hazard waw test
mul x8, x15, x27 # perform first operation
mul x8, x1, x14 # perform second operation

# Testcase cmp_gpr_hazard war test
mul x29, x23, x24 # perform first operation
mul x23, x26, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
mul x5, x21, x14 # perform first operation
mul x14, x15, x23 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0xcd81a4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x0, 0x0fd15a00 # initialize rs2
mul x8, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x9f4e1333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
mul x22, x7, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0x5f8fd7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
mul x17, x14, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0xa5fa779c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x0, 0x64431af9 # initialize rs2
mul x10, x3, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x61689390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
mul x28, x7, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0x5747489d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
mul x18, x27, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x09ac766e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x0, 0x79ce1aa2 # initialize rs2
mul x5, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0xa97cdbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
mul x25, x16, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x2b6f274c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
mul x21, x28, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0xfe7b1831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x0, 0x5291f8a4 # initialize rs2
mul x6, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x15, 0x47940dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
mul x15, x26, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0x79180876 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
mul x9, x25, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x13, 0xd4f7ee6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x0, 0x9ce27634 # initialize rs2
mul x13, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x26, 0x5eeb2672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
mul x26, x27, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0x603509a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x21, 0x80000001 # initialize rs2
mul x15, x31, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0xe5c7577f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x0, 0xb7bb4d69 # initialize rs2
mul x14, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x68100647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
mul x24, x13, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x3, 0xec295ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
mul x3, x2, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0xa99155fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x0, 0xb57f54ad # initialize rs2
mul x18, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0xa9fc147b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mul x24, x10, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0x35987678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x4, 0x7ffffffe # initialize rs2
mul x18, x16, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x14, 0x7ed9f06f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x0, 0x13c0bb83 # initialize rs2
mul x14, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0x35e5b27b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
mul x5, x17, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0x745c233d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
mul x19, x6, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0x94cc490a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x0, 0x3f701b8c # initialize rs2
mul x13, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0x84e2b207 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
mul x1, x12, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0x2485777d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x13, 0xfffffffe # initialize rs2
mul x28, x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x27, 0x845cd133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # initialize rs1
li x0, 0x3763e50f # initialize rs2
mul x27, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x8, 0x677356a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
mul x8, x30, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x18, 0x6b5bbcd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x5, 0x5bbc8877 # initialize rs2
mul x18, x21, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x4, 0x8bb92edb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x0, 0x75006c4e # initialize rs2
mul x4, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x30, 0xbd68d43e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mul x30, x19, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x22, 0x396dc3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
mul x22, x3, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x28, 0xacd829d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x0, 0x184c448b # initialize rs2
mul x28, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x25, 0xbe951a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
mul x25, x3, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0xe4c29e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
mul x22, x2, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0x8cd88ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x2, 0xc5811fe0 # initialize rs2
mul x28, x19, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0xfdce8759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x26, 0x2b488444 # initialize rs2
mul x7, x1, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0xda737946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x18, 0x3a3464ba # initialize rs2
mul x21, x14, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x8a209db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x11, 0xa991451e # initialize rs2
mul x5, x15, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x3fe1b50a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x31, 0xdf5e10c0 # initialize rs2
mul x17, x6, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x401140de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x25, 0x170ce964 # initialize rs2
mul x8, x22, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0x1cc079f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x29, 0xd4784946 # initialize rs2
mul x10, x4, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0xb8537e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x11, 0x1746bc51 # initialize rs2
mul x5, x13, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xd92db762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x22, 0x47b49ceb # initialize rs2
mul x2, x21, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x1, 0x15795ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x15, 0x372a5a55 # initialize rs2
mul x1, x27, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x4, 0xc8da8d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaa # initialize rs1
li x3, 0x3cc34489 # initialize rs2
mul x4, x22, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x20, 0x4048c1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x29, 0x7ce13cbf # initialize rs2
mul x20, x23, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x0b9c1c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8e941b51 # initialize rs1
li x4, 0x00000000 # initialize rs2
mul x27, x22, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x84f4b324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0250e91a # initialize rs1
li x13, 0x00000001 # initialize rs2
mul x14, x2, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x3087a52a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe1219837 # initialize rs1
li x27, 0x00000002 # initialize rs2
mul x29, x11, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0x78edc97e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x27e7f09b # initialize rs1
li x24, 0x80000000 # initialize rs2
mul x3, x7, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x1, 0xb694ac91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8bd7fe58 # initialize rs1
li x4, 0x80000001 # initialize rs2
mul x1, x15, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x12, 0x31d82ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8aaac9ed # initialize rs1
li x26, 0x7fffffff # initialize rs2
mul x12, x3, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x15, 0x50635eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3d87b4a6 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
mul x15, x29, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xd13be057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa2beab9f # initialize rs1
li x25, 0xffffffff # initialize rs2
mul x24, x17, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x066db590 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd2472156 # initialize rs1
li x12, 0xfffffffe # initialize rs2
mul x23, x2, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x28, 0xcf9717d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x70f14637 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
mul x28, x29, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x30, 0xddf1435a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xff4489e5 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x30, x22, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0xfe6c5ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd6d11fdf # initialize rs1
li x29, 0x55555555 # initialize rs2
mul x14, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0xd02e2864 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
mul x2, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x14, 0xcb5cd4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
mul x14, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x511cf38d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
mul x30, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x320cbf79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
mul x1, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x11, 0x1a3a0cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
mul x11, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x29, 0x9bee2473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
mul x29, x28, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x24, 0x990262ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
mul x24, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x9a7d3faa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
mul x8, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x14b4990c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
mul x3, x29, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x27, 0xc3923e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
mul x27, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0xa1916f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mul x19, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x3, 0x0b9967cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x2, 0x55555555 # initialize rs2
mul x3, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x55a645dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
li x12, 0x00000000 # initialize rs2
mul x9, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x9f292179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
mul x3, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x17, 0x951716df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
mul x17, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x4, 0x094190e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x3, 0x80000000 # initialize rs2
mul x4, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0xff617e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x18, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x15, 0x968f6fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x30, 0x7fffffff # initialize rs2
mul x15, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x20, 0xf817deef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mul x20, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0xc1f13054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
mul x14, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x9df4ce1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
mul x19, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x7, 0x2f41ae6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
mul x7, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x4a496511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
mul x31, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x664086b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
mul x12, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x1af885b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
mul x14, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x14, 0xaec5816a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x11, 0x00000001 # initialize rs2
mul x14, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0xe618d39d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x28, 0x00000002 # initialize rs2
mul x10, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x16, 0x2d43d838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x20, 0x80000000 # initialize rs2
mul x16, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x15, 0x637a971f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x10, 0x80000001 # initialize rs2
mul x15, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x78284893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x7, 0x7fffffff # initialize rs2
mul x14, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x28, 0x5a2f5e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mul x28, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x6e400f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
mul x30, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0xbdd3d4cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x25, 0xfffffffe # initialize rs2
mul x8, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x30, 0xba6b7efe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mul x30, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x26, 0xccc0eca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x26, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x11, 0x6afabf19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x2, 0x55555555 # initialize rs2
mul x11, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x11, 0x4fe73262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
mul x11, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x27, 0xa7192256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
mul x27, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x15, 0xa64fb647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000000 # initialize rs1
li x24, 0x00000002 # initialize rs2
mul x15, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x17, 0xc6b30d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
mul x17, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x16, 0xea22794f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
mul x16, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x14, 0x06975566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
li x30, 0x7fffffff # initialize rs2
mul x14, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x1, 0xe8df7074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
mul x1, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x3, 0xbe42df78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x3, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0xa93c0c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
mul x23, x24, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x6, 0xc775efa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
mul x6, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0x8a4f8445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
mul x25, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x31, 0x11589f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
mul x31, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x11, 0x3e54dce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x3, 0x00000000 # initialize rs2
mul x11, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x18, 0x9be32720 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
mul x18, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x20, 0xaba94ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
mul x20, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x12, 0xb7baf1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
mul x12, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x29, 0x533e7416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
mul x29, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x28, 0x6af62b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mul x28, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0xe9a93f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
mul x1, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x22, 0xaca03dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x22, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x148b4b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x24, 0xfffffffe # initialize rs2
mul x23, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x6, 0xdc986bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
mul x6, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x29, 0x0877e705 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
mul x29, x6, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x9, 0x9144460b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
mul x9, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x20, 0xac0e594c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
mul x20, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x25, 0x6b4c45d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
mul x25, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x3, 0xee7944da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
li x9, 0x00000002 # initialize rs2
mul x3, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x11, 0x426a5ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
mul x11, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x8d193577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x17, 0x80000001 # initialize rs2
mul x20, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0xf57f7103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
mul x31, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x18, 0xbaf9d023 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
mul x18, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x20, 0xf4e3e99c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
mul x20, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x22, 0xf419a961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x20, 0xfffffffe # initialize rs2
mul x22, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x19, 0xad3bcfa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mul x19, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0xeea9a38d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
mul x6, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x29, 0xdb2e2f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
mul x29, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x28, 0xa904d220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
mul x28, x18, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x21, 0x44b80b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x25, 0x00000001 # initialize rs2
mul x21, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x29, 0x3de657bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
mul x29, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x3, 0xc50b0d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x17, 0x80000000 # initialize rs2
mul x3, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0x2037113c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x30, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x7, 0xa2a049d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
mul x7, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x3dcb49a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
mul x23, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x17, 0xd86b814f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x25, 0xffffffff # initialize rs2
mul x17, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x30, 0xefe6246e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
mul x30, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x2, 0x118ceddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
mul x2, x30, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x8, 0xe00fa08b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
mul x8, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x5b41c831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x7, 0x55555555 # initialize rs2
mul x10, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xba2f5754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
mul x29, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0xca962449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
mul x1, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x48a7e351 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
mul x12, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x15, 0x9fe2e9d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
mul x15, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x15, 0x4dce45e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x2, 0x80000001 # initialize rs2
mul x15, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x26, 0x53e34477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
mul x26, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x21, 0x5bb9db75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
mul x21, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x26, 0xb5873ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
mul x26, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0xec7636c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
mul x20, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x5, 0x0a2336de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
mul x5, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x6, 0x1b642454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mul x6, x10, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x25, 0x0b3a066f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
mul x25, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x28, 0x240c6c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
mul x28, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x0ea4c94c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
mul x21, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0xa5f7b8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x28, 0x00000002 # initialize rs2
mul x25, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x4, 0x70adad27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
mul x4, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x21, 0x1d36bc1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x11, 0x80000001 # initialize rs2
mul x21, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x13, 0x26d608ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x23, 0x7fffffff # initialize rs2
mul x13, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x10, 0x49eca9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
mul x10, x13, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0xdb8ec8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x26, 0xffffffff # initialize rs2
mul x6, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x16, 0xbd319016 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
mul x16, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x20, 0xe679a309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
mul x20, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x4, 0x099d24d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mul x4, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0x892f1ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x31, 0x55555555 # initialize rs2
mul x27, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x13, 0x1076f179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x8, 0x00000000 # initialize rs2
mul x13, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x9, 0x6c6eb5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x11, 0x00000001 # initialize rs2
mul x9, x31, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x13, 0x4a42319e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x31, 0x00000002 # initialize rs2
mul x13, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x27, 0xab70b045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x13, 0x80000000 # initialize rs2
mul x27, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x11, 0xf89736b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x11, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x3, 0xe7421409 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x14, 0x7fffffff # initialize rs2
mul x3, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x20, 0xe660f05b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mul x20, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x26, 0x30231325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x16, 0xffffffff # initialize rs2
mul x26, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x30, 0x94a211bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x12, 0xfffffffe # initialize rs2
mul x30, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x29, 0xf7946398 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x18, 0x5bbc8877 # initialize rs2
mul x29, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x9, 0x894bcc21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
mul x9, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x17, 0x0c179ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x22, 0x55555555 # initialize rs2
mul x17, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x24, 0x2c6cf82d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x29, 0x00000000 # initialize rs2
mul x24, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x7, 0xf1d5d9c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x4, 0x00000001 # initialize rs2
mul x7, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x19, 0x253538d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x23, 0x00000002 # initialize rs2
mul x19, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x23, 0x80554242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x1, 0x80000000 # initialize rs2
mul x23, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x4, 0x9f207871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x17, 0x80000001 # initialize rs2
mul x4, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x19, 0xc1bbafd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x22, 0x7fffffff # initialize rs2
mul x19, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x6, 0x9a20fa15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mul x6, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x12, 0xfdb1e012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x12, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x26, 0x8dad2b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x14, 0xfffffffe # initialize rs2
mul x26, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x19, 0xbe8cd992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
mul x19, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x6, 0x458ea834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x6, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x14, 0xda7f352e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x23, 0x55555555 # initialize rs2
mul x14, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x21, 0xb072d0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
mul x21, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x13, 0x2818016c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x19, 0x00000001 # initialize rs2
mul x13, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x10, 0x03d10e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x16, 0x00000002 # initialize rs2
mul x10, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x5e786ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x22, 0x80000000 # initialize rs2
mul x25, x16, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x21, 0x3b57cc74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x21, x12, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x4, 0x61860b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555 # initialize rs1
li x22, 0x7fffffff # initialize rs2
mul x4, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x1c4b9f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
mul x25, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x10, 0xbc4fd277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x2, 0xffffffff # initialize rs2
mul x10, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x25, 0xb3d4a2e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
li x7, 0xfffffffe # initialize rs2
mul x25, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x10, 0xc4726e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x31, 0x5bbc8877 # initialize rs2
mul x10, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x24, 0xc5156777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mul x24, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x10, 0x4f8c4566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
mul x10, x8, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd2b903b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2b8252ce # initialize rs1
li x25, 0x5fc4bd67 # initialize rs2
mul x0, x0, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x54ccaf92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe808119e # initialize rs1
li x29, 0x1ec837ce # initialize rs2
mul x1, x1, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8b59b368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2d8b58b3 # initialize rs1
li x29, 0x79b30561 # initialize rs2
mul x2, x2, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0475d070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa87c880f # initialize rs1
li x16, 0x1d856d95 # initialize rs2
mul x3, x3, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xe7fe309f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xacf57bb0 # initialize rs1
li x9, 0xee56281f # initialize rs2
mul x4, x4, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x7c136cef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x21cec6f3 # initialize rs1
li x28, 0x8617ebaf # initialize rs2
mul x5, x5, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xde7f41f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x19cc38a7 # initialize rs1
li x21, 0x21b50c3d # initialize rs2
mul x6, x6, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x71d0fd8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd336076 # initialize rs1
li x11, 0x2e5c8ce2 # initialize rs2
mul x7, x7, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4e408c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xea3423ef # initialize rs1
li x3, 0x37f83b71 # initialize rs2
mul x8, x8, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd350423c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaee812a9 # initialize rs1
li x9, 0x4a5958af # initialize rs2
mul x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3513f8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc409dd5d # initialize rs1
li x4, 0xfee08b3d # initialize rs2
mul x10, x10, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x301ef5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb0d167b3 # initialize rs1
li x20, 0x36ac3190 # initialize rs2
mul x11, x11, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1cd157b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x82638d89 # initialize rs1
li x10, 0xc224d074 # initialize rs2
mul x12, x12, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9088aae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x959746b9 # initialize rs1
li x28, 0xe4844d2d # initialize rs2
mul x13, x13, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe042fdc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9d3aa74c # initialize rs1
li x25, 0xb680fbb0 # initialize rs2
mul x14, x14, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0cf145ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd2cbb06a # initialize rs1
li x28, 0x68799bca # initialize rs2
mul x15, x15, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6408412f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x29b97dea # initialize rs1
li x23, 0x7fef2393 # initialize rs2
mul x16, x16, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x84db6bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x084cc4a1 # initialize rs1
li x20, 0x7b12561e # initialize rs2
mul x17, x17, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2bd59294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xad199095 # initialize rs1
li x6, 0x5dfe4951 # initialize rs2
mul x18, x18, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9df99130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xed971bb2 # initialize rs1
li x13, 0x454c632f # initialize rs2
mul x19, x19, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x27311669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9826ad4d # initialize rs1
li x10, 0x939c971f # initialize rs2
mul x20, x20, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd93a2762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb1ce2f41 # initialize rs1
li x19, 0xfcaa80b7 # initialize rs2
mul x21, x21, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xaa71c487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x37332da4 # initialize rs1
li x13, 0x700c9ae4 # initialize rs2
mul x22, x22, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x593ed0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x62c31bea # initialize rs1
li x4, 0x4c44ad30 # initialize rs2
mul x23, x23, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe8feba8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xab254a39 # initialize rs1
li x7, 0x65e59bd8 # initialize rs2
mul x24, x24, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x50a77f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4be7921b # initialize rs1
li x4, 0x80de0c7c # initialize rs2
mul x25, x25, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcf5fa389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x02e99b42 # initialize rs1
li x26, 0x3dfe3b5b # initialize rs2
mul x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb6690244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcef1b1e4 # initialize rs1
li x17, 0x8482db13 # initialize rs2
mul x27, x27, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe153ddba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfa507aa5 # initialize rs1
li x19, 0x4a019c06 # initialize rs2
mul x28, x28, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3a544b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4d686b6d # initialize rs1
li x12, 0x6675e435 # initialize rs2
mul x29, x29, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd623db2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3b651b53 # initialize rs1
li x12, 0xaa23f223 # initialize rs2
mul x30, x30, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbd3081d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x845f08c5 # initialize rs1
li x31, 0xcc54eb4c # initialize rs2
mul x31, x31, x31 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xaab89ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x908143f4 # initialize rs1
li x0, 0x3fe28011 # initialize rs2
mul x0, x19, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xadc73b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2b9152f5 # initialize rs1
li x1, 0x33a7c24d # initialize rs2
mul x1, x17, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x25b99d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x282acb96 # initialize rs1
li x2, 0x619bd08d # initialize rs2
mul x2, x24, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x14420d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x851c02e5 # initialize rs1
li x3, 0xdd9919b6 # initialize rs2
mul x3, x9, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x5c571a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc0a78610 # initialize rs1
li x4, 0x3239a640 # initialize rs2
mul x4, x6, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xeaf1dccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8f4a0d7f # initialize rs1
li x5, 0x8441203f # initialize rs2
mul x5, x1, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x909b36d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa5d28f94 # initialize rs1
li x6, 0x2c147c65 # initialize rs2
mul x6, x31, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xee15427e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x909e3f5f # initialize rs1
li x7, 0x18012ecd # initialize rs2
mul x7, x31, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x2e0f0328 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3b7c52ed # initialize rs1
li x8, 0xf6ebbc3e # initialize rs2
mul x8, x16, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xdf5e3c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc294c637 # initialize rs1
li x9, 0xfda86137 # initialize rs2
mul x9, x31, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xa1751344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x06f8dde0 # initialize rs1
li x10, 0x429b8702 # initialize rs2
mul x10, x26, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x37ee5791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe85f2113 # initialize rs1
li x11, 0x07b8f344 # initialize rs2
mul x11, x24, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x8847a5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x069bdc97 # initialize rs1
li x12, 0xac08a14f # initialize rs2
mul x12, x1, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x121912c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4771f331 # initialize rs1
li x13, 0xda11d1ac # initialize rs2
mul x13, x16, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x8b0e4b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x77c2a84b # initialize rs1
li x14, 0xd6fff9dc # initialize rs2
mul x14, x31, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x786ae732 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x063711f7 # initialize rs1
li x15, 0xc0e5c6b0 # initialize rs2
mul x15, x1, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xd254a2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd0e899bf # initialize rs1
li x16, 0xf7150e53 # initialize rs2
mul x16, x12, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xb5df0e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x634fe714 # initialize rs1
li x17, 0xccc1bb9c # initialize rs2
mul x17, x18, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x1c04686e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd3de2ec2 # initialize rs1
li x18, 0xb4979e56 # initialize rs2
mul x18, x30, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x961e98c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf0f23f26 # initialize rs1
li x19, 0x6e7586ae # initialize rs2
mul x19, x2, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa79cba01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x726441e3 # initialize rs1
li x20, 0x8518e5c3 # initialize rs2
mul x20, x18, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x1eda3c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdc7dced5 # initialize rs1
li x21, 0xf7760bc6 # initialize rs2
mul x21, x21, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x5cde1ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6a2ea202 # initialize rs1
li x22, 0x95c6e4de # initialize rs2
mul x22, x11, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x28d419a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd5217506 # initialize rs1
li x23, 0x013d1a90 # initialize rs2
mul x23, x8, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x3f5d4b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe39551be # initialize rs1
li x24, 0xe6554e92 # initialize rs2
mul x24, x24, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x144dbdda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x19dee5d8 # initialize rs1
li x25, 0x2090da68 # initialize rs2
mul x25, x28, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xc279bc71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xebd5bfc9 # initialize rs1
li x26, 0x85712def # initialize rs2
mul x26, x10, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x178f0c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x405b6b7c # initialize rs1
li x27, 0x1f17942b # initialize rs2
mul x27, x17, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x2832a53a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xad230c92 # initialize rs1
li x28, 0x72c70808 # initialize rs2
mul x28, x5, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x81edcdf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8867d514 # initialize rs1
li x29, 0xfb18aeba # initialize rs2
mul x29, x16, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x1a427eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1c45b957 # initialize rs1
li x30, 0x6b44a162 # initialize rs2
mul x30, x17, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x4f324002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2184f7c3 # initialize rs1
li x31, 0xb66a9f2e # initialize rs2
mul x31, x23, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd965b8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x33f734f9 # initialize rs1
li x0, 0x628892ad # initialize rs2
mul x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xaac99555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7f9d25a1 # initialize rs1
li x1, 0x7c24c903 # initialize rs2
mul x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xf99e0e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfe08b5a9 # initialize rs1
li x2, 0xb8a63d2a # initialize rs2
mul x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb97045f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x787a46b7 # initialize rs1
li x3, 0xa5ffdf75 # initialize rs2
mul x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x02fa0ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x44c6bc23 # initialize rs1
li x4, 0xfa40eb4e # initialize rs2
mul x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x0fa08db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0b9de160 # initialize rs1
li x5, 0x200d82c4 # initialize rs2
mul x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xeccc5ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x58f67e2f # initialize rs1
li x6, 0x73bc486e # initialize rs2
mul x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x2c3f0437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x14f1ce48 # initialize rs1
li x7, 0xd6a6ceb9 # initialize rs2
mul x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x922e7c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x46cb3186 # initialize rs1
li x8, 0xe7ffcec0 # initialize rs2
mul x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x27376417 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4b8ad74a # initialize rs1
li x9, 0x215eb95d # initialize rs2
mul x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3f21ba3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5ae37c04 # initialize rs1
li x10, 0x390f16a5 # initialize rs2
mul x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa0262acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa12d0868 # initialize rs1
li x11, 0x0a0c7787 # initialize rs2
mul x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xfba2fdfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x33c6e03e # initialize rs1
li x12, 0x62dcc602 # initialize rs2
mul x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd8a22de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe15fc5e5 # initialize rs1
li x13, 0x2e58dcba # initialize rs2
mul x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xfd693588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x894f6f19 # initialize rs1
li x14, 0x31fe2cdf # initialize rs2
mul x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8cfb1948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xda9ff723 # initialize rs1
li x15, 0x85d2510a # initialize rs2
mul x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc45fe789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc2dbbb2e # initialize rs1
li x16, 0xc3a014af # initialize rs2
mul x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xdbd75371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf2cb9c4f # initialize rs1
li x17, 0x01bbb605 # initialize rs2
mul x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xbc6311e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa2d7e85d # initialize rs1
li x18, 0xf0a833ba # initialize rs2
mul x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x37483ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2193bc01 # initialize rs1
li x19, 0xcdbf8f89 # initialize rs2
mul x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x90e22e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8cd83ad8 # initialize rs1
li x20, 0xed60e374 # initialize rs2
mul x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x790984ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xca837a63 # initialize rs1
li x21, 0x38b1efeb # initialize rs2
mul x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x19fa3b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf60ffb71 # initialize rs1
li x22, 0x912fdb8d # initialize rs2
mul x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4f39ef9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7c5f4ea9 # initialize rs1
li x23, 0x96bf20f0 # initialize rs2
mul x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x6a325b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8234bb3b # initialize rs1
li x24, 0xc8bfa277 # initialize rs2
mul x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf6db5077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa1518387 # initialize rs1
li x25, 0x0433ebbd # initialize rs2
mul x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa28a1180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf8a87140 # initialize rs1
li x26, 0x47eeb1ef # initialize rs2
mul x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc1178002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2be78fee # initialize rs1
li x27, 0x8d35956d # initialize rs2
mul x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xf85d75b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcb4745fe # initialize rs1
li x28, 0x49135c6e # initialize rs2
mul x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb1e8de12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcf1dda03 # initialize rs1
li x29, 0xcf79a508 # initialize rs2
mul x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xdb04cb1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0963aaea # initialize rs1
li x30, 0xe95dbd3c # initialize rs2
mul x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x49b8486f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xdd582da2 # initialize rs1
li x31, 0x6b530585 # initialize rs2
mul x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x1, 0x4e6790da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x97c169de # initialize rs1
li x0, 0x9a607909 # initialize rs2
mul x1, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x22, 0xcf2d0b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7df468a6 # initialize rs1
li x1, 0xf9224f34 # initialize rs2
mul x22, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x6, 0x1b90010c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x50a7f9b3 # initialize rs1
li x2, 0x0a15b9d1 # initialize rs2
mul x6, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x8, 0xb7b8ba99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0db63701 # initialize rs1
li x3, 0x0018c60c # initialize rs2
mul x8, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x17, 0xccd819db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdbf895f6 # initialize rs1
li x4, 0x2d0cd3e1 # initialize rs2
mul x17, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x28, 0x0b9e2b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf0158494 # initialize rs1
li x5, 0x0894d3cb # initialize rs2
mul x28, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x17, 0xabf0dbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x650c06c4 # initialize rs1
li x6, 0x1c43691e # initialize rs2
mul x17, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x31, 0xbd1f9814 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4c7896bf # initialize rs1
li x7, 0xb5dd6f30 # initialize rs2
mul x31, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x232f5d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb561f175 # initialize rs1
li x8, 0x1ab34c0e # initialize rs2
mul x8, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x25, 0x32f190fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2b2be0fa # initialize rs1
li x9, 0xee17123f # initialize rs2
mul x25, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x03dfcdc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf80d618e # initialize rs1
li x10, 0xba864a26 # initialize rs2
mul x10, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x14, 0x8da0306f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8e80b120 # initialize rs1
li x11, 0x74763116 # initialize rs2
mul x14, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x3, 0x0d9dca5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb210dced # initialize rs1
li x12, 0x5a6fab77 # initialize rs2
mul x3, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x7, 0xa3483778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdb3a61c9 # initialize rs1
li x13, 0x8d620b63 # initialize rs2
mul x7, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x13, 0xd152a88a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf14f15e # initialize rs1
li x14, 0x760f7c15 # initialize rs2
mul x13, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x28, 0xaab0a078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4fef1b57 # initialize rs1
li x15, 0x73d6bc4d # initialize rs2
mul x28, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x11, 0x98ad81e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x73d9ecaf # initialize rs1
li x16, 0x3ce37f5e # initialize rs2
mul x11, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x24, 0x5df64b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa02d9b54 # initialize rs1
li x17, 0xc15add3d # initialize rs2
mul x24, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x28, 0x72f1a6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf848086c # initialize rs1
li x18, 0xe94c22a6 # initialize rs2
mul x28, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x24, 0x8431de30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8e5c855e # initialize rs1
li x19, 0xc4c4d1d3 # initialize rs2
mul x24, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x27, 0x8e84e451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x005e857c # initialize rs1
li x20, 0xc985d0b2 # initialize rs2
mul x27, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x20, 0x85f89e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa8837b96 # initialize rs1
li x21, 0x10d7ba5c # initialize rs2
mul x20, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x16, 0xdfc7a53b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x353dab1b # initialize rs1
li x22, 0x004c7416 # initialize rs2
mul x16, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x17, 0x011b9469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x60f4b4ad # initialize rs1
li x23, 0x86281c99 # initialize rs2
mul x17, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4ee22de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5d149368 # initialize rs1
li x24, 0xb270c878 # initialize rs2
mul x24, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x24, 0x72e5ccb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa332872d # initialize rs1
li x25, 0x850788a0 # initialize rs2
mul x24, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x11, 0x6f2f6b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x93eb2201 # initialize rs1
li x26, 0x2c1fc853 # initialize rs2
mul x11, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x5, 0xac3d54a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3df665d3 # initialize rs1
li x27, 0xa73f9f76 # initialize rs2
mul x5, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x1, 0x35c165af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8e71213d # initialize rs1
li x28, 0xe52ea421 # initialize rs2
mul x1, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x8, 0xd25bd4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd13a12c9 # initialize rs1
li x29, 0x3de1b1c5 # initialize rs2
mul x8, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x26, 0xe6cba2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2b514217 # initialize rs1
li x30, 0x3601aee1 # initialize rs2
mul x26, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x13, 0xe64d69dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa75ad9d9 # initialize rs1
li x31, 0xffd6066d # initialize rs2
mul x13, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x164146be)
li x20, 0x6c8054cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x164146be # initialize rs1
li x28, 0x750995e8 # initialize rs2
mul x20, x7, x28 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x5a239287)
li x15, 0xacefc5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa5dc6d79 # initialize rs1
li x25, 0xc4a7c4fb # initialize rs2
mul x15, x30, x25 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x1e63d3cf)
li x16, 0xf9ce766e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa3270d0a # initialize rs1
li x22, 0x1e63d3cf # initialize rs2
mul x16, x25, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x1ddae068)
li x9, 0x32ce14a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x215bd4c6 # initialize rs1
li x5, 0xe2251f98 # initialize rs2
mul x9, x28, x5 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
