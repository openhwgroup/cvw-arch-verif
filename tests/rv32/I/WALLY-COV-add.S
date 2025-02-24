///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-add.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.921645
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xd4713d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe3e70682 # initialize rs1
li x13, 0x0a5d2f34 # initialize rs2
add x0, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc17c6279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe87a1613 # initialize rs1
li x16, 0x81332876 # initialize rs2
add x1, x31, x16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x5a921187 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x259f4329 # initialize rs1
li x26, 0x5487ce1e # initialize rs2
add x2, x20, x26 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x03983ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe9bb17bc # initialize rs1
li x20, 0x7a1d5006 # initialize rs2
add x3, x11, x20 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xbaf3897a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa0116be5 # initialize rs1
li x27, 0x9ca5499d # initialize rs2
add x4, x24, x27 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xeece328b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9148624f # initialize rs1
li x28, 0xf7b0b7d2 # initialize rs2
add x5, x23, x28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x2f120554 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x49a3e80e # initialize rs1
li x10, 0xcc457821 # initialize rs2
add x6, x4, x10 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe07405eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa81ad477 # initialize rs1
li x6, 0x79fdef7c # initialize rs2
add x7, x27, x6 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5b7c709a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaef9c00b # initialize rs1
li x2, 0x864a7a50 # initialize rs2
add x8, x30, x2 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xbb42e0b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa1515607 # initialize rs1
li x20, 0xd8570102 # initialize rs2
add x9, x11, x20 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x38018b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2ba4b180 # initialize rs1
li x23, 0x0febd845 # initialize rs2
add x10, x4, x23 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9371a71f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xae3b16ec # initialize rs1
li x19, 0x06d599e8 # initialize rs2
add x11, x27, x19 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb7d6467b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1db53334 # initialize rs1
li x3, 0x9b025244 # initialize rs2
add x12, x13, x3 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa59cec98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xccfdba9b # initialize rs1
li x7, 0x428a1c22 # initialize rs2
add x13, x16, x7 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x429817c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7795e986 # initialize rs1
li x14, 0x98b33c6e # initialize rs2
add x14, x12, x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x402d0baf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xac322c12 # initialize rs1
li x24, 0xad1b8f60 # initialize rs2
add x15, x29, x24 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xeae2025e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaa6524ab # initialize rs1
li x30, 0x0361524c # initialize rs2
add x16, x20, x30 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x47e7f593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x403d1f83 # initialize rs1
li x12, 0x032f06ca # initialize rs2
add x17, x21, x12 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4f6fa985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7b59051b # initialize rs1
li x25, 0x9c31d9b2 # initialize rs2
add x18, x8, x25 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa32c9b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa69cfb85 # initialize rs1
li x14, 0x559b5975 # initialize rs2
add x19, x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb5816b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdfe1b307 # initialize rs1
li x23, 0x08135d58 # initialize rs2
add x20, x13, x23 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x7e9cf84f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x285e25b4 # initialize rs1
li x15, 0xc167733f # initialize rs2
add x21, x6, x15 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x6ae04d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6a46721a # initialize rs1
li x27, 0xfa83ada4 # initialize rs2
add x22, x10, x27 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x4d6b234f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc1378be5 # initialize rs1
li x7, 0x9cb017c1 # initialize rs2
add x23, x1, x7 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe9f41cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xec3aa314 # initialize rs1
li x6, 0xa0acf4c9 # initialize rs2
add x24, x23, x6 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd9ead926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x41a93f90 # initialize rs1
li x4, 0xa51ad4f3 # initialize rs2
add x25, x26, x4 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x4a814d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd974c146 # initialize rs1
li x7, 0x6f790959 # initialize rs2
add x26, x2, x7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x955d0e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x17fd3736 # initialize rs1
li x9, 0x09215f4f # initialize rs2
add x27, x5, x9 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xef0a81ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2130260c # initialize rs1
li x13, 0x1d69d9fc # initialize rs2
add x28, x12, x13 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe89dc815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x122411e6 # initialize rs1
li x6, 0x5419eefc # initialize rs2
add x29, x10, x6 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x09aedbd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcff4c56b # initialize rs1
li x11, 0x1fd3c017 # initialize rs2
add x30, x16, x11 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x15ace7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe4f7625e # initialize rs1
li x24, 0xeb70ba65 # initialize rs2
add x31, x11, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x8, 0xade6c5e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0fa7ee05 # initialize rs1
li x24, 0x0202861c # initialize rs2
add x8, x0, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x3, 0x5bc7fdeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5e4af862 # initialize rs1
li x14, 0xc6f00933 # initialize rs2
add x3, x1, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x27, 0x65e04993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb3b68b57 # initialize rs1
li x3, 0xad4ab155 # initialize rs2
add x27, x2, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0x26bdd974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x25777cf0 # initialize rs1
li x7, 0x32ae2a20 # initialize rs2
add x21, x3, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x16, 0xd17034ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xae0fdbc8 # initialize rs1
li x20, 0x38018399 # initialize rs2
add x16, x4, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0xce9b2e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc8bf23fb # initialize rs1
li x2, 0xd7a3283c # initialize rs2
add x17, x5, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0xd80d6a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0a1727f7 # initialize rs1
li x3, 0x399f8a8f # initialize rs2
add x26, x6, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x28, 0x809f2923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa7f5195c # initialize rs1
li x11, 0xf7f60e7f # initialize rs2
add x28, x7, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x3, 0x993ec8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfd938adc # initialize rs1
li x19, 0xbf391fbb # initialize rs2
add x3, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x91fcfe88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf8e45086 # initialize rs1
li x27, 0xe2a01335 # initialize rs2
add x16, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0xef7e85ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd334886f # initialize rs1
li x11, 0xc5c14262 # initialize rs2
add x3, x10, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x2412579d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5582a3bd # initialize rs1
li x8, 0xf11ddff7 # initialize rs2
add x10, x11, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x28, 0x7579501a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb2ddc481 # initialize rs1
li x29, 0x5a4f4145 # initialize rs2
add x28, x12, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0xa6245b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc734bb05 # initialize rs1
li x4, 0x052daad3 # initialize rs2
add x16, x13, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xa6855857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc707aef9 # initialize rs1
li x7, 0xb368c553 # initialize rs2
add x13, x14, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0xcf6c9992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9f3dd894 # initialize rs1
li x22, 0xe96aa1af # initialize rs2
add x23, x15, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0xc1b199c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x306aa871 # initialize rs1
li x17, 0xc838a145 # initialize rs2
add x28, x16, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x12, 0x374a6cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xef2d9a38 # initialize rs1
li x15, 0x7c7550f2 # initialize rs2
add x12, x17, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0xef8d9ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1d0ab994 # initialize rs1
li x3, 0x90e639e1 # initialize rs2
add x25, x18, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0xafb918c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1965e435 # initialize rs1
li x14, 0xc618fc1e # initialize rs2
add x3, x19, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0x12011caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf655860b # initialize rs1
li x1, 0xb8f8903b # initialize rs2
add x16, x20, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0xd1aa6c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x078548d7 # initialize rs1
li x12, 0x590e83da # initialize rs2
add x23, x21, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0x9ad7558f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe4b82987 # initialize rs1
li x3, 0x353e0c86 # initialize rs2
add x20, x22, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x215203c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2fdeb035 # initialize rs1
li x28, 0x1cc5a8a0 # initialize rs2
add x5, x23, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0xfe3216bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5cbbc080 # initialize rs1
li x31, 0x4ae9ee11 # initialize rs2
add x7, x24, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x18, 0xf217faac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x94b28b9d # initialize rs1
li x4, 0x280a07ee # initialize rs2
add x18, x25, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0xa9c72e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x82221345 # initialize rs1
li x8, 0x2f16fb50 # initialize rs2
add x11, x26, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0x21cc14b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x99e8c828 # initialize rs1
li x28, 0x64d02759 # initialize rs2
add x5, x27, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x18, 0x3f80c31f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xed28508d # initialize rs1
li x10, 0x9750ca7e # initialize rs2
add x18, x28, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x12, 0xe6b920da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x877a2133 # initialize rs1
li x21, 0x605dd4d6 # initialize rs2
add x12, x29, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0xb3dd77e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5f20f406 # initialize rs1
li x15, 0xf3cc9d8a # initialize rs2
add x7, x30, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x85fa2d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6bf4d047 # initialize rs1
li x30, 0x2cbb93c2 # initialize rs2
add x13, x31, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x15, 0x764657ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1624d318 # initialize rs1
li x0, 0xc149fa8e # initialize rs2
add x15, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x67c21355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9bf1f1d1 # initialize rs1
li x1, 0xc058a332 # initialize rs2
add x10, x7, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0x656fa7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1eeed219 # initialize rs1
li x2, 0x0a614be3 # initialize rs2
add x1, x21, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x09135087 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x40aaec7a # initialize rs1
li x3, 0xe8a56f31 # initialize rs2
add x24, x4, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x9, 0x8513d91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x57030ede # initialize rs1
li x4, 0x29deb984 # initialize rs2
add x9, x26, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x17, 0x4ad12b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa08c3a00 # initialize rs1
li x5, 0x88083ebc # initialize rs2
add x17, x19, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x19, 0x61a53fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa0f9c074 # initialize rs1
li x6, 0x2835bcdb # initialize rs2
add x19, x12, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x15, 0x51783032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xab12fb53 # initialize rs1
li x7, 0x6a447a90 # initialize rs2
add x15, x19, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x31, 0x9f032cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0f6ab75b # initialize rs1
li x8, 0x4cd8ef24 # initialize rs2
add x31, x21, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x12, 0x01a4f7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x78b61daf # initialize rs1
li x9, 0xddfae808 # initialize rs2
add x12, x1, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x3a082921 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9ef1c846 # initialize rs1
li x10, 0xffeb5d5f # initialize rs2
add x4, x2, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0x2b12c92c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x49b564fb # initialize rs1
li x11, 0x1aff71ae # initialize rs2
add x19, x25, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0x2114c2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6f6ddf79 # initialize rs1
li x12, 0xb575bc6e # initialize rs2
add x21, x14, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x3239d04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x71b221e4 # initialize rs1
li x13, 0x638d521a # initialize rs2
add x6, x30, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0x9c5c11eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x636abf8c # initialize rs1
li x14, 0x2fcf3b87 # initialize rs2
add x7, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x94b9cdb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5a62ddc4 # initialize rs1
li x15, 0x7552c6e8 # initialize rs2
add x3, x20, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0x0d742256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x79c45c38 # initialize rs1
li x16, 0x56525ce0 # initialize rs2
add x23, x12, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x10, 0xae358290 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa795ac54 # initialize rs1
li x17, 0x23f1b67e # initialize rs2
add x10, x1, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x51abf5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3891aef5 # initialize rs1
li x18, 0x315e8080 # initialize rs2
add x13, x20, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0x30ac79dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe4bacd78 # initialize rs1
li x19, 0x4168705a # initialize rs2
add x15, x18, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x6279d944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5882e3bb # initialize rs1
li x20, 0xd658b1b3 # initialize rs2
add x7, x3, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x702dc88a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3d6e2667 # initialize rs1
li x21, 0x8d4e2753 # initialize rs2
add x12, x16, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x26, 0x3dbba3af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7e5b637d # initialize rs1
li x22, 0x70aaf525 # initialize rs2
add x26, x30, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x25, 0xd16903f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x275f275c # initialize rs1
li x23, 0x36a5be06 # initialize rs2
add x25, x27, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0x38553ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x64fc0dba # initialize rs1
li x24, 0xf57b8a92 # initialize rs2
add x25, x18, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x28, 0xc9fe6036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5a23754b # initialize rs1
li x25, 0xfea2a33a # initialize rs2
add x28, x27, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x043d2c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc707e77b # initialize rs1
li x26, 0xa2652c9e # initialize rs2
add x10, x23, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x0cbdc014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb63f83c6 # initialize rs1
li x27, 0x6a27241f # initialize rs2
add x26, x20, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0xe6cd3595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x45c190a8 # initialize rs1
li x28, 0x908e0372 # initialize rs2
add x21, x13, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0x813dd49a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x53ca8c05 # initialize rs1
li x29, 0x7af2f402 # initialize rs2
add x17, x3, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0xfdc12930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa2834536 # initialize rs1
li x30, 0xcfdef303 # initialize rs2
add x19, x12, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x25, 0x989bb030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf8247e70 # initialize rs1
li x31, 0x62759469 # initialize rs2
add x25, x5, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xa71b80ef)
li x10, 0x9ab3cc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9ab3cc27 # initialize rs1
li x0, 0xd9082a42 # initialize rs2
add x10, x16, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x3fe65f90)
li x27, 0x3fe65f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3fe65f90 # initialize rs1
li x7, 0x3fe65f90 # initialize rs2
add x27, x0, x7 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xa867a0f0)
li x22, 0x4e0e15d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa867a0f0 # initialize rs1
li x15, 0xa867a0f0 # initialize rs2
add x22, x28, x15 # perform operation

# Testcase cmp_gpr_hazard raw test
add x1, x12, x19 # perform first operation
add x29, x1, x2 # perform second operation

# Testcase cmp_gpr_hazard raw test
add x13, x21, x11 # perform first operation
add x1, x19, x13 # perform second operation

# Testcase cmp_gpr_hazard waw test
add x28, x31, x1 # perform first operation
add x28, x1, x21 # perform second operation

# Testcase cmp_gpr_hazard waw test
add x1, x9, x26 # perform first operation
add x1, x15, x13 # perform second operation

# Testcase cmp_gpr_hazard war test
add x26, x27, x9 # perform first operation
add x27, x19, x5 # perform second operation

# Testcase cmp_gpr_hazard war test
add x5, x6, x1 # perform first operation
add x1, x17, x6 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x5c66a9bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x0, 0xd840fccb # initialize rs2
add x14, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0xb3390a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
add x18, x31, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0xb6bca2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x24, 0x00000000 # initialize rs2
add x8, x1, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0xec6e61bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x0, 0xf53fc3dd # initialize rs2
add x29, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0x7e15aa2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x14, 0x00000001 # initialize rs2
add x21, x30, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0xb5e2834d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
add x7, x25, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x5c6be596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x0, 0x22a5a421 # initialize rs2
add x1, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x5096ccf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
add x23, x3, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x82f1240d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
add x25, x29, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x8f4ed442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs1
li x0, 0xf31e2448 # initialize rs2
add x29, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0xe8f58c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
add x7, x27, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x15, 0x1257363c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
add x15, x25, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0xb5a3cece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x0, 0xcff0c8ac # initialize rs2
add x15, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x5, 0x147a08ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
add x5, x30, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x12, 0xeceec38d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
add x12, x14, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x13d1ea49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x0, 0x317eeb1d # initialize rs2
add x5, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x12, 0xf30459cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
add x12, x2, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x4, 0x037e5725 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
add x4, x3, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0xeceb9505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x0, 0x79fe0a1b # initialize rs2
add x18, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0x08771fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
add x17, x1, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x21, 0x5672ebc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
add x21, x30, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x23, 0xf212cc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x0, 0xebbe1a41 # initialize rs2
add x23, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x541d1a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
add x29, x16, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x12, 0x2353d455 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
add x12, x31, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0x00f24603 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x0, 0xafdb4e0b # initialize rs2
add x1, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x2348e1b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
add x30, x2, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x18, 0xe54ce0de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
add x18, x17, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x13, 0xd5e8b89c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x0, 0xa53011a2 # initialize rs2
add x13, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x17, 0xb6a659ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
add x17, x9, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x14, 0x796f9881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
add x14, x1, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x30, 0xa0ec3e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # initialize rs1
li x0, 0xeef67139 # initialize rs2
add x30, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0x0a9d499c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
add x21, x25, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0x58ccf9b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
add x2, x18, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x20, 0x76a933cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x0, 0x07fe6a4e # initialize rs2
add x20, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0x7e3801af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
add x22, x21, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x24, 0x2887a3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
add x24, x29, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0xfe1c51e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x17, 0xe983cc1d # initialize rs2
add x31, x21, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x83719849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x13, 0x25cc2478 # initialize rs2
add x31, x12, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x02af3382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x23, 0x603803f3 # initialize rs2
add x24, x9, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0xb259a6a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x12, 0x517fa07e # initialize rs2
add x27, x29, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0xd97d2b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
li x16, 0xec3826bc # initialize rs2
add x26, x22, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0xe29b24d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
li x17, 0x67af36d9 # initialize rs2
add x14, x29, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x30, 0x0a02da60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x2, 0x67ba6b1a # initialize rs2
add x30, x19, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x8a7f03ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x4, 0x79017990 # initialize rs2
add x9, x20, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0x7a658abe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x10, 0x74f8c57b # initialize rs2
add x28, x6, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x14, 0x241d3e27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x31, 0x43f98cbd # initialize rs2
add x14, x19, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x5, 0xc7afae8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x4, 0x32d116fe # initialize rs2
add x5, x26, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x22, 0x398071b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x4, 0x3a05c0b7 # initialize rs2
add x22, x28, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x31, 0xbd2cdb8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xed3032ed # initialize rs1
li x12, 0x00000000 # initialize rs2
add x31, x16, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x28, 0x5bf26ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc2185e77 # initialize rs1
li x13, 0x00000001 # initialize rs2
add x28, x31, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x5bd71dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1e94eb4b # initialize rs1
li x20, 0x00000002 # initialize rs2
add x5, x13, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x277dfc7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1af4321a # initialize rs1
li x12, 0x80000000 # initialize rs2
add x13, x9, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x24, 0x8376ffa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf4b445aa # initialize rs1
li x8, 0x80000001 # initialize rs2
add x24, x30, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x27, 0x7c96eefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9e3b3f04 # initialize rs1
li x19, 0x7fffffff # initialize rs2
add x27, x30, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x22, 0xc57842a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x006b8fd6 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
add x22, x11, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0x0b2f8580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x53a9ec5d # initialize rs1
li x3, 0xffffffff # initialize rs2
add x9, x14, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0xd9073286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x213124bd # initialize rs1
li x18, 0xfffffffe # initialize rs2
add x1, x13, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x20, 0x61c61ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd89a9500 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
add x20, x17, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0x1a7e256d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x35c9599f # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
add x14, x26, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0x339fbb69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa8aa7d13 # initialize rs1
li x23, 0x55555555 # initialize rs2
add x5, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x18, 0x56fe2301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
add x18, x17, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x13, 0x59de5319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
add x13, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x14, 0x40d2d16f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x30, 0x00000002 # initialize rs2
add x14, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x8, 0x0f1a6c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
add x8, x16, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x28, 0x2ae201c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
add x28, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x31, 0x6f1d5baf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
add x31, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x20, 0xbb296639 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
add x20, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0xaedab7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x2, 0xffffffff # initialize rs2
add x5, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x77f4531b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x22, 0xfffffffe # initialize rs2
add x7, x16, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x25, 0x67f8ab57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
add x25, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0xc1d7fbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
add x14, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x24, 0x773b8350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
add x24, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x15, 0x27a0008c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x19, 0x00000000 # initialize rs2
add x15, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0xf64e8f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
add x16, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0xa11b26b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x5, 0x00000002 # initialize rs2
add x29, x25, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x4, 0xdcebef56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x13, 0x80000000 # initialize rs2
add x4, x9, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x12, 0x393031a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
add x12, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x27, 0x66270136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x18, 0x7fffffff # initialize rs2
add x27, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x24, 0x33672754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
add x24, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x11, 0xf33c4233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
add x11, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0xdd7516f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x3, 0xfffffffe # initialize rs2
add x20, x2, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x17, 0x2c94151d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
add x17, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x49954cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
add x14, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x8, 0x6b291a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000001 # initialize rs1
li x23, 0x55555555 # initialize rs2
add x8, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x9, 0xb550f221 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x8, 0x00000000 # initialize rs2
add x9, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x3d0daad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x12, 0x00000001 # initialize rs2
add x6, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x7ff5101d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x4, 0x00000002 # initialize rs2
add x27, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x14, 0x25323fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x13, 0x80000000 # initialize rs2
add x14, x9, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x1, 0xae63ad3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x9, 0x80000001 # initialize rs2
add x1, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x17, 0x0ff73f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x8, 0x7fffffff # initialize rs2
add x17, x24, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0xdb160641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
add x17, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x29, 0x65739938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x1, 0xffffffff # initialize rs2
add x29, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x29, 0xdba620f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x3, 0xfffffffe # initialize rs2
add x29, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x2, 0xaab6941b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
add x2, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x31, 0x9bcae27d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
add x31, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x10, 0x94291726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x16, 0x55555555 # initialize rs2
add x10, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x17, 0xeac503ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
add x17, x23, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0xdfa2e52b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
add x10, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x6, 0xa81b3fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
add x6, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x30, 0x9502e1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
add x30, x1, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x23, 0x624aadae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x4, 0x80000001 # initialize rs2
add x23, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x26, 0xdc7843b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
add x26, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x2, 0x0fbc0318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
add x2, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0xc1308a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
add x22, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x17, 0xc42b43fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x4, 0xfffffffe # initialize rs2
add x17, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x31, 0xc3ac232c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
add x31, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x4, 0xfa4abdec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
add x4, x9, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x11, 0x3590a2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
add x11, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x1, 0x8adab689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x29, 0x00000000 # initialize rs2
add x1, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x29, 0x49adce95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
add x29, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x13, 0xe04ee43c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x7, 0x00000002 # initialize rs2
add x13, x9, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x5, 0x25365ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
add x5, x21, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x3, 0xaeaaec48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
add x3, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x17, 0xa4efedef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x18, 0x7fffffff # initialize rs2
add x17, x16, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x17, 0x08d17e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
add x17, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x4, 0xba13834f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x19, 0xffffffff # initialize rs2
add x4, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0xb9a6edc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
add x27, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x11, 0x5e349e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
add x11, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x8, 0x2e0885fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000001 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
add x8, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x25, 0xbd2098c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
add x25, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x30, 0x7111f1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x22, 0x00000000 # initialize rs2
add x30, x17, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x14, 0x5e5ecd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
add x14, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x3e5aed83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
add x7, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x9, 0xb11bb2df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
add x9, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x8, 0x681e5658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
add x8, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x2, 0xd05d2cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
add x2, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x24, 0xc34dfc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
add x24, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x18, 0xa0ce5b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
add x18, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x4fe5143b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x1, 0xfffffffe # initialize rs2
add x28, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x28, 0x39dc2c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
add x28, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x8, 0x3455f1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
add x8, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x27, 0x45568d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
add x27, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x23, 0xacea35a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x24, 0x00000000 # initialize rs2
add x23, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x16, 0xab78a4ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
add x16, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x22, 0x598c8a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
add x22, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0xa6d5eb2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
li x12, 0x80000000 # initialize rs2
add x18, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x5, 0x1184d8fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
add x5, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x13, 0x9de0103a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x11, 0x7fffffff # initialize rs2
add x13, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x19, 0xfd642ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
add x19, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x13, 0x3d9f3e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
add x13, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x14, 0x83615006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
add x14, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x18, 0xf9873b5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
add x18, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x17, 0x74286356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
add x17, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x9, 0xa7713b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
add x9, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x5, 0xad5ac10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x28, 0x00000000 # initialize rs2
add x5, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x11, 0x60fc01e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
add x11, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0x95dd24bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
add x15, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x14, 0x8946352d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
add x14, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x27, 0xaeb59644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
add x27, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x4, 0x95f9d782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
add x4, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x26, 0xdf302d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
add x26, x23, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0x9f7a46b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
add x5, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0xfaa83536 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x25, 0xfffffffe # initialize rs2
add x9, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x11, 0xa724dc8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
add x11, x2, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x3, 0xc3e53827 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
add x3, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x17, 0xc66456bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
add x17, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x5, 0x847eabd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
add x5, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0x32a59e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
add x1, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0x56c16359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x16, 0x00000002 # initialize rs2
add x9, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x27, 0x5496a305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x28, 0x80000000 # initialize rs2
add x27, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x5, 0x6fb5545c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x30, 0x80000001 # initialize rs2
add x5, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x4, 0xb3670f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
add x4, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x8, 0x565e5ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
add x8, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x3, 0x924dbea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
add x3, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x6, 0x1b6d6ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
add x6, x9, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x10, 0x2a1fff41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x7, 0x5bbc8877 # initialize rs2
add x10, x24, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x9, 0x19b6b91b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
add x9, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x25, 0xce65b211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x21, 0x55555555 # initialize rs2
add x25, x3, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x31, 0xbcccc53a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x14, 0x00000000 # initialize rs2
add x31, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x23, 0x76579644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x24, 0x00000001 # initialize rs2
add x23, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x12, 0x2ea5cef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
li x1, 0x00000002 # initialize rs2
add x12, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x31, 0xe08aec96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x13, 0x80000000 # initialize rs2
add x31, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x7, 0xa8e19b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc8877 # initialize rs1
li x1, 0x80000001 # initialize rs2
add x7, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x23, 0x6d9635ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x17, 0x7fffffff # initialize rs2
add x23, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x23, 0x6b3bc4cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
add x23, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x10, 0xc579009c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
li x17, 0xffffffff # initialize rs2
add x10, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x13, 0xac606a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x16, 0xfffffffe # initialize rs2
add x13, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x22, 0x4dd6862a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
add x22, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x19, 0x54d6aa2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
add x19, x27, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x20, 0xc696ebab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x1, 0x55555555 # initialize rs2
add x20, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x20, 0x4a18bafe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # initialize rs1
li x31, 0x00000000 # initialize rs2
add x20, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0xa934abd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
add x31, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x24, 0x76181f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
add x24, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x21, 0x0a5a61a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x25, 0x80000000 # initialize rs2
add x21, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x3, 0x0b08da95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x30, 0x80000001 # initialize rs2
add x3, x26, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x6, 0x1da5a563 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x20, 0x7fffffff # initialize rs2
add x6, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x30, 0x1a143f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
li x4, 0x7ffffffe # initialize rs2
add x30, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x24, 0xfea0eb70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x12, 0xffffffff # initialize rs2
add x24, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x17, 0x9ade0a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x12, 0xfffffffe # initialize rs2
add x17, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x31, 0xb15a8171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
add x31, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x5, 0xaaa91ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
add x5, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x27, 0x7eb78350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x31, 0x55555555 # initialize rs2
add x27, x9, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x11, 0xf5199484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x9, 0x00000000 # initialize rs2
add x11, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x13, 0xccbc2cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x30, 0x00000001 # initialize rs2
add x13, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x2, 0x1d0820e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x9, 0x00000002 # initialize rs2
add x2, x30, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x28, 0x420fedb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x7, 0x80000000 # initialize rs2
add x28, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x20, 0x30814e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x26, 0x80000001 # initialize rs2
add x20, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x22, 0x5d1a74c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x55555555 # initialize rs1
li x18, 0x7fffffff # initialize rs2
add x22, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0xc1f1011b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
add x29, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x22, 0xeec6c987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x5, 0xffffffff # initialize rs2
add x22, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x1, 0x65decf1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
add x1, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x21, 0x50abc451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
add x21, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x10, 0x8e383437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
add x10, x9, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0x4ed00818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
add x9, x31, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd894f84e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9b39285e # initialize rs1
li x8, 0xa0fe1900 # initialize rs2
add x0, x0, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x985cb514 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x409b0a7a # initialize rs1
li x23, 0x0b7ffede # initialize rs2
add x1, x1, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x31cef544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x81001b5e # initialize rs1
li x29, 0x25390215 # initialize rs2
add x2, x2, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x902a94ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0cf04051 # initialize rs1
li x16, 0xa0fdd91b # initialize rs2
add x3, x3, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x0af23ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xeb8313a8 # initialize rs1
li x10, 0xe1b9f50e # initialize rs2
add x4, x4, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x67ab4d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xad5a14c7 # initialize rs1
li x29, 0x9482b15d # initialize rs2
add x5, x5, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x253a974c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7c7e8bd2 # initialize rs1
li x7, 0xab5c3122 # initialize rs2
add x6, x6, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x77092293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc55f2b17 # initialize rs1
li x7, 0x4483cf58 # initialize rs2
add x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf9c8d852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcf762ef8 # initialize rs1
li x10, 0x57f599d1 # initialize rs2
add x8, x8, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xbaaafc6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x38168876 # initialize rs1
li x11, 0x2783662b # initialize rs2
add x9, x9, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc2450788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x50ecb7bf # initialize rs1
li x3, 0x1ddbb059 # initialize rs2
add x10, x10, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf565e82a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x006287fa # initialize rs1
li x11, 0x2fc1ea7d # initialize rs2
add x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x76bfaa9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe5379893 # initialize rs1
li x23, 0x1b13a405 # initialize rs2
add x12, x12, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x48040c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x24020912 # initialize rs1
li x5, 0xebde3e11 # initialize rs2
add x13, x13, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xea853efa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe64f0edb # initialize rs1
li x4, 0xcefad840 # initialize rs2
add x14, x14, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xff6dc856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbc5115e7 # initialize rs1
li x24, 0x173e585c # initialize rs2
add x15, x15, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc3c02b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x23d8c480 # initialize rs1
li x26, 0x2ce42e41 # initialize rs2
add x16, x16, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8c17edfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc069f48d # initialize rs1
li x4, 0x1eff1078 # initialize rs2
add x17, x17, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xeab5f50a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdb45d35d # initialize rs1
li x16, 0xe0c012d2 # initialize rs2
add x18, x18, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0c6d93b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd54f58b7 # initialize rs1
li x7, 0x4fd0fda2 # initialize rs2
add x19, x19, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfde60dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6b7a00d8 # initialize rs1
li x18, 0x567ffb07 # initialize rs2
add x20, x20, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xdf0644a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbd08b032 # initialize rs1
li x17, 0xce5e761b # initialize rs2
add x21, x21, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe55ef749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc8e8868f # initialize rs1
li x11, 0xf497b5a6 # initialize rs2
add x22, x22, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xbce77742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbca1e7cd # initialize rs1
li x13, 0x91a7859b # initialize rs2
add x23, x23, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe20e2224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x337faf64 # initialize rs1
li x5, 0xc9aadaa6 # initialize rs2
add x24, x24, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb25cc9a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x69d144d1 # initialize rs1
li x29, 0xdebec758 # initialize rs2
add x25, x25, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xaeb405f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb6bd58d6 # initialize rs1
li x27, 0xc0b2ae8b # initialize rs2
add x26, x26, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa94f30d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7a31daf1 # initialize rs1
li x31, 0x31660e65 # initialize rs2
add x27, x27, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8410ebdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3f848dfc # initialize rs1
li x16, 0xf7f6b599 # initialize rs2
add x28, x28, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x19912186 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb9020590 # initialize rs1
li x24, 0x975e2ac2 # initialize rs2
add x29, x29, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x21583621 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x49777f5b # initialize rs1
li x16, 0x23ed6d79 # initialize rs2
add x30, x30, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x02f2da9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xad26ebe4 # initialize rs1
li x23, 0x2b4d0a93 # initialize rs2
add x31, x31, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x96d53ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe27770d5 # initialize rs1
li x0, 0xcd656a21 # initialize rs2
add x0, x7, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x584957f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9ba78849 # initialize rs1
li x1, 0x4c041d5a # initialize rs2
add x1, x11, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x77dd2307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x754c97c0 # initialize rs1
li x2, 0x913e7095 # initialize rs2
add x2, x6, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x545dfd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe7b15c59 # initialize rs1
li x3, 0xcfa243f7 # initialize rs2
add x3, x1, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xcfc76634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcceeba87 # initialize rs1
li x4, 0x27bcb21a # initialize rs2
add x4, x20, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xd03e6d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdd159d1d # initialize rs1
li x5, 0xf5a182c5 # initialize rs2
add x5, x3, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x546e8226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x33c4eb7a # initialize rs1
li x6, 0xf1525077 # initialize rs2
add x6, x3, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x794824ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x09d31730 # initialize rs1
li x7, 0xdfa1084f # initialize rs2
add x7, x12, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xcd024ec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbace4b08 # initialize rs1
li x8, 0xcfc2df16 # initialize rs2
add x8, x17, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xd3e4df8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x47f559ef # initialize rs1
li x9, 0xf26b659b # initialize rs2
add x9, x6, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xe56a3078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x63eca19a # initialize rs1
li x10, 0x140d016e # initialize rs2
add x10, x28, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x7e5c99ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9bbab50a # initialize rs1
li x11, 0x429a8f86 # initialize rs2
add x11, x25, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x267ce9c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x981f25ed # initialize rs1
li x12, 0x2bdccad0 # initialize rs2
add x12, x1, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xcabfcd94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xca6838d1 # initialize rs1
li x13, 0x9ec80afb # initialize rs2
add x13, x28, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xd219c778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x92ecd51d # initialize rs1
li x14, 0x5aa27950 # initialize rs2
add x14, x19, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x022b6290 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5a23c2f2 # initialize rs1
li x15, 0xb927ee07 # initialize rs2
add x15, x10, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xab39109c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x91fd7815 # initialize rs1
li x16, 0x0114a577 # initialize rs2
add x16, x8, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x1b85e81d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x64b57def # initialize rs1
li x17, 0x99063e5b # initialize rs2
add x17, x26, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xd4055fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x48719831 # initialize rs1
li x18, 0xd79d92bc # initialize rs2
add x18, x28, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xc1e1b6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x327bb556 # initialize rs1
li x19, 0x09224fa0 # initialize rs2
add x19, x11, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xf1fb9fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcb574070 # initialize rs1
li x20, 0xb8772d29 # initialize rs2
add x20, x11, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xa1bfefca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xeaf9de49 # initialize rs1
li x21, 0x38d34dd6 # initialize rs2
add x21, x26, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x664aaa39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd05366cc # initialize rs1
li x22, 0xeb4194a0 # initialize rs2
add x22, x29, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x51b316f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1c6d0e35 # initialize rs1
li x23, 0xe134e7a5 # initialize rs2
add x23, x8, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x5dce8477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xca1871c6 # initialize rs1
li x24, 0x8be6aeb4 # initialize rs2
add x24, x5, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x7df8b7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb71df25e # initialize rs1
li x25, 0x44296fe7 # initialize rs2
add x25, x2, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x572de2ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfee2f56b # initialize rs1
li x26, 0xb2764173 # initialize rs2
add x26, x27, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x1c0989b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x60e248c1 # initialize rs1
li x27, 0xf61d103d # initialize rs2
add x27, x8, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x5a5915c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x82dcf736 # initialize rs1
li x28, 0xbc896faf # initialize rs2
add x28, x26, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x13e34b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4b7118ac # initialize rs1
li x29, 0x4b6250da # initialize rs2
add x29, x5, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x23f4fe14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6d2db46a # initialize rs1
li x30, 0xee51bca0 # initialize rs2
add x30, x26, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x4fc3489b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x81b377bd # initialize rs1
li x31, 0xc40732b4 # initialize rs2
add x31, x27, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xde6ff3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcccb4dfb # initialize rs1
li x0, 0x2d716023 # initialize rs2
add x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x90e79b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1b742111 # initialize rs1
li x1, 0xf6714d76 # initialize rs2
add x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xf323e434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8615ad73 # initialize rs1
li x2, 0xc6950d85 # initialize rs2
add x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x5776da51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4bc3915a # initialize rs1
li x3, 0x3f077696 # initialize rs2
add x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x3f74df9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x059251e1 # initialize rs1
li x4, 0x265a9190 # initialize rs2
add x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x17323565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaeef4b09 # initialize rs1
li x5, 0xeef42592 # initialize rs2
add x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xd4323934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x676b94a1 # initialize rs1
li x6, 0x570e3fe6 # initialize rs2
add x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x7194a9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xabe04a61 # initialize rs1
li x7, 0xb5743132 # initialize rs2
add x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x1e6ad906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x600cea03 # initialize rs1
li x8, 0x047595fb # initialize rs2
add x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5c88c320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x20025f82 # initialize rs1
li x9, 0x8e6b81a3 # initialize rs2
add x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf106892b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6ed4e645 # initialize rs1
li x10, 0x4962073b # initialize rs2
add x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe922ba0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe9a28f3c # initialize rs1
li x11, 0x02c81d11 # initialize rs2
add x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc68ddf7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x39e65a53 # initialize rs1
li x12, 0x415fd4f3 # initialize rs2
add x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x9d672b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3b6b8130 # initialize rs1
li x13, 0x23f33d55 # initialize rs2
add x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8dcdfa95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf631dae1 # initialize rs1
li x14, 0x35f295fa # initialize rs2
add x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x725964c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0cdff20e # initialize rs1
li x15, 0x64851962 # initialize rs2
add x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xddb3d8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4fa09d36 # initialize rs1
li x16, 0xb020b8d4 # initialize rs2
add x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbfad2f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb7068b26 # initialize rs1
li x17, 0xee2f75b1 # initialize rs2
add x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x439c6004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe8294364 # initialize rs1
li x18, 0x3c8c7cf6 # initialize rs2
add x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc6400708 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9a7945cf # initialize rs1
li x19, 0xe85c7c1b # initialize rs2
add x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf7d9dde9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1756e0d4 # initialize rs1
li x20, 0x628f2a7a # initialize rs2
add x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc68b1f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x180f7232 # initialize rs1
li x21, 0xff52f3ab # initialize rs2
add x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x79e32aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x551a9eb6 # initialize rs1
li x22, 0x0e9920ec # initialize rs2
add x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xb1d1958c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x51e1cdaa # initialize rs1
li x23, 0x9f51a24a # initialize rs2
add x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd5df6c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x286334df # initialize rs1
li x24, 0x3bbaa05b # initialize rs2
add x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x0e45aea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x033f692f # initialize rs1
li x25, 0xf7a2b187 # initialize rs2
add x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x559a5f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x02af87f5 # initialize rs1
li x26, 0x1177fc2c # initialize rs2
add x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe0db4322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3cf2d95c # initialize rs1
li x27, 0xd1576498 # initialize rs2
add x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9271c546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8fb91db8 # initialize rs1
li x28, 0xf8f24123 # initialize rs2
add x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x462e8578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2e001a75 # initialize rs1
li x29, 0x43305aa1 # initialize rs2
add x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xef59b502 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf26093e5 # initialize rs1
li x30, 0x9054a516 # initialize rs2
add x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5e86f6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x141ba7b1 # initialize rs1
li x31, 0x2fca7a04 # initialize rs2
add x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x19, 0x57a47b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc3a577a2 # initialize rs1
li x0, 0xeb59d49f # initialize rs2
add x19, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x12, 0x1c8e8f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5d81778a # initialize rs1
li x1, 0x68d0b7bc # initialize rs2
add x12, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x21, 0x77cc7a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9ee3efdb # initialize rs1
li x2, 0x9dd0630e # initialize rs2
add x21, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x13, 0x2de85756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6b28d7d6 # initialize rs1
li x3, 0x18ef618f # initialize rs2
add x13, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x3, 0x33213ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5fb2e686 # initialize rs1
li x4, 0x260098e5 # initialize rs2
add x3, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x20, 0x07e53dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb4095a99 # initialize rs1
li x5, 0xc3ee79d1 # initialize rs2
add x20, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x19, 0xf1903287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6369bae7 # initialize rs1
li x6, 0x3306f416 # initialize rs2
add x19, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x13, 0x52068f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xedeeefbd # initialize rs1
li x7, 0x0fa0ab35 # initialize rs2
add x13, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x15, 0x5048b85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xde2b5082 # initialize rs1
li x8, 0x20309b59 # initialize rs2
add x15, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x17, 0x34fef750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc17fe224 # initialize rs1
li x9, 0xd561d047 # initialize rs2
add x17, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8dc118ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9f95ecca # initialize rs1
li x10, 0x01b62820 # initialize rs2
add x10, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x29, 0xccbcb225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfce10181 # initialize rs1
li x11, 0xbd153a7f # initialize rs2
add x29, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x20, 0x7facf1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd3f1e7df # initialize rs1
li x12, 0x58500c02 # initialize rs2
add x20, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x20, 0xf1140c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd78f94a7 # initialize rs1
li x13, 0xf25dcd20 # initialize rs2
add x20, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x30, 0x4f219ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x68f8a67a # initialize rs1
li x14, 0x86d26605 # initialize rs2
add x30, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x25, 0x28c04ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x35959257 # initialize rs1
li x15, 0x2160af29 # initialize rs2
add x25, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x30, 0x69e5ab7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x495f3505 # initialize rs1
li x16, 0x2f8b977b # initialize rs2
add x30, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x20, 0x07991818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa0279980 # initialize rs1
li x17, 0xd9c18645 # initialize rs2
add x20, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x20, 0xdf56a02c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcd1fe22d # initialize rs1
li x18, 0x1e8be9c3 # initialize rs2
add x20, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x18, 0xd2eaa2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfe90db0b # initialize rs1
li x19, 0x0a53381b # initialize rs2
add x18, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x12, 0x3613b453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcf77fa97 # initialize rs1
li x20, 0xb6997df2 # initialize rs2
add x12, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x13, 0xa54b260f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x24f1b0a6 # initialize rs1
li x21, 0x5abd752e # initialize rs2
add x13, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x11, 0xd92685d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x172c8302 # initialize rs1
li x22, 0x232e5fab # initialize rs2
add x11, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x28, 0x9db0a770 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x340ace11 # initialize rs1
li x23, 0x47d0964d # initialize rs2
add x28, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x21, 0x1bb19aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdd28c2a1 # initialize rs1
li x24, 0xff555ae5 # initialize rs2
add x21, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x4, 0x9f1be635 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc82dd858 # initialize rs1
li x25, 0x199459c4 # initialize rs2
add x4, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x8, 0xe80c5c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x920fdf72 # initialize rs1
li x26, 0x18c2a569 # initialize rs2
add x8, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x2, 0x18e8dd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0ddf3846 # initialize rs1
li x27, 0x8d40d542 # initialize rs2
add x2, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x10, 0xc92c663c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1a1d81de # initialize rs1
li x28, 0x736243ad # initialize rs2
add x10, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x15, 0x6e15039a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xab48e297 # initialize rs1
li x29, 0x9a4ac3d9 # initialize rs2
add x15, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x5, 0x01e50dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8aaafcb8 # initialize rs1
li x30, 0xe76ba165 # initialize rs2
add x5, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x29, 0x0640151e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3633cb67 # initialize rs1
li x31, 0x3988ba0f # initialize rs2
add x29, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x4078dac2)
li x14, 0x0daa0344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4078dac2 # initialize rs1
li x2, 0xca7b0dc6 # initialize rs2
add x14, x27, x2 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x73fa5ecd)
li x10, 0x6bb639cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8c05a133 # initialize rs1
li x20, 0xa4cbda99 # initialize rs2
add x10, x31, x20 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0xb6129ff)
li x2, 0x8a68c17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xccd6126b # initialize rs1
li x24, 0x0b6129ff # initialize rs2
add x2, x26, x24 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x19c87c07)
li x14, 0xdce4708a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd3f54817 # initialize rs1
li x19, 0xe63783f9 # initialize rs2
add x14, x7, x19 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
