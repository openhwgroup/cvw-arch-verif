///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sra.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.994168
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x0973b93b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5d12b2cb # initialize rs1
li x8, 0x3835c1a2 # initialize rs2
sra x0, x7, x8 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x8cd400d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ac69881 # initialize rs1
li x11, 0x22114947 # initialize rs2
sra x1, x8, x11 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x5e7d1d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdf13c768 # initialize rs1
li x10, 0x9b4d5e02 # initialize rs2
sra x2, x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x60107b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7151c8bf # initialize rs1
li x8, 0xbca89b47 # initialize rs2
sra x3, x5, x8 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x5ddd91b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf35d1cfc # initialize rs1
li x6, 0x22b3f177 # initialize rs2
sra x4, x13, x6 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xd3a55f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6364f1a4 # initialize rs1
li x29, 0xb64bda58 # initialize rs2
sra x5, x16, x29 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xdece38ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfbd70852 # initialize rs1
li x23, 0x306e345f # initialize rs2
sra x6, x19, x23 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x641e7796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeaf9c75f # initialize rs1
li x29, 0x107d9555 # initialize rs2
sra x7, x8, x29 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4b8cccdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc41c30fb # initialize rs1
li x30, 0xbf81854d # initialize rs2
sra x8, x3, x30 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x434055ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x649a34bb # initialize rs1
li x23, 0xc4326691 # initialize rs2
sra x9, x30, x23 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb0e52e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa6b9e558 # initialize rs1
li x17, 0xe9ccca8d # initialize rs2
sra x10, x9, x17 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x126abfb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x99a1673b # initialize rs1
li x30, 0xbd74b0d9 # initialize rs2
sra x11, x25, x30 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8feba470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3920ed6e # initialize rs1
li x22, 0x2e348612 # initialize rs2
sra x12, x9, x22 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb063df5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x58863631 # initialize rs1
li x11, 0x575507bc # initialize rs2
sra x13, x21, x11 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8489ea48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x37d1e4cf # initialize rs1
li x22, 0x64f26ae7 # initialize rs2
sra x14, x5, x22 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x37a160c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf4afcb64 # initialize rs1
li x12, 0x345e1ab5 # initialize rs2
sra x15, x19, x12 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x72794f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6a59fbc3 # initialize rs1
li x31, 0x64183323 # initialize rs2
sra x16, x16, x31 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xec5fe27a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe19fb479 # initialize rs1
li x5, 0x197972cf # initialize rs2
sra x17, x22, x5 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x717c083b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2dbcbc87 # initialize rs1
li x8, 0x2ea8555c # initialize rs2
sra x18, x2, x8 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x0934a5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa831c444 # initialize rs1
li x25, 0x7c493038 # initialize rs2
sra x19, x5, x25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x2a9037b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6ad0fed3 # initialize rs1
li x31, 0xd5eda5df # initialize rs2
sra x20, x30, x31 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x6de52b4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89ab02b5 # initialize rs1
li x3, 0xcd703cc7 # initialize rs2
sra x21, x8, x3 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x36450e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb2105e93 # initialize rs1
li x21, 0x40ae5e72 # initialize rs2
sra x22, x23, x21 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8e10a74a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf675a02c # initialize rs1
li x1, 0x4ca50bc0 # initialize rs2
sra x23, x22, x1 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xfbc60c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7cb27a9f # initialize rs1
li x4, 0x4bddc561 # initialize rs2
sra x24, x21, x4 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3d68a542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x246a6ba2 # initialize rs1
li x19, 0x12adaada # initialize rs2
sra x25, x20, x19 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x131f417f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2e1afcbf # initialize rs1
li x4, 0x497bdeee # initialize rs2
sra x26, x16, x4 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xc07b19e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x30614a39 # initialize rs1
li x27, 0x49c9a126 # initialize rs2
sra x27, x20, x27 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x15d44220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xac095d9e # initialize rs1
li x22, 0x43fe28ac # initialize rs2
sra x28, x7, x22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x06fe686b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd5608eee # initialize rs1
li x10, 0x92c7c9c6 # initialize rs2
sra x29, x16, x10 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xdf05c499 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x34ec137c # initialize rs1
li x25, 0x5f306562 # initialize rs2
sra x30, x14, x25 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x837f4b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x81345144 # initialize rs1
li x6, 0xfdc5b142 # initialize rs2
sra x31, x30, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x12, 0x43b5edca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6ec1a2b6 # initialize rs1
li x13, 0x7fd78f1a # initialize rs2
sra x12, x0, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0x71f4a616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x279e51d7 # initialize rs1
li x26, 0xee25afc5 # initialize rs2
sra x4, x1, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x20, 0x0d408b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe13ddaf1 # initialize rs1
li x7, 0x4e1f9dca # initialize rs2
sra x20, x2, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x5, 0x4919c61d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9f36439c # initialize rs1
li x19, 0x39a656bf # initialize rs2
sra x5, x3, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x12, 0x2a719e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd5308955 # initialize rs1
li x8, 0x9920520b # initialize rs2
sra x12, x4, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x13, 0xc8d311d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3e0a9fd6 # initialize rs1
li x31, 0xf73eeab3 # initialize rs2
sra x13, x5, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x10, 0xdeb1ad1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xecb92864 # initialize rs1
li x16, 0xe23a026a # initialize rs2
sra x10, x6, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x31, 0x16e4e13e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x301843c1 # initialize rs1
li x19, 0xa0a6e7fd # initialize rs2
sra x31, x7, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xdeb8aee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb5d43d02 # initialize rs1
li x18, 0x50087eaa # initialize rs2
sra x12, x8, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x26, 0x74416af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x451383cc # initialize rs1
li x27, 0xf7979b08 # initialize rs2
sra x26, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0xc10ba662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x23e05f27 # initialize rs1
li x8, 0x95c23c03 # initialize rs2
sra x31, x10, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x5, 0xd47dee96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x680532f3 # initialize rs1
li x18, 0x705f62fa # initialize rs2
sra x5, x11, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x1f1eba83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x115a2855 # initialize rs1
li x18, 0xcab05b10 # initialize rs2
sra x31, x12, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0xd5aba50e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa2469a2c # initialize rs1
li x28, 0x43f4a768 # initialize rs2
sra x14, x13, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x24, 0x793d0086 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x71b5d308 # initialize rs1
li x28, 0x61639f4d # initialize rs2
sra x24, x14, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x435dfe98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x35db8f4e # initialize rs1
li x8, 0xf3f53754 # initialize rs2
sra x16, x15, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x29, 0x6142de9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x16303074 # initialize rs1
li x5, 0x653b24bf # initialize rs2
sra x29, x16, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x4, 0xc42bdd30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbe690b66 # initialize rs1
li x25, 0x2ecaf8de # initialize rs2
sra x4, x17, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0x3f2bd65c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x75540a21 # initialize rs1
li x6, 0xb9c3435b # initialize rs2
sra x14, x18, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0x4ccd8fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x736f6f21 # initialize rs1
li x17, 0x451eec7f # initialize rs2
sra x13, x19, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x8, 0x8f5bfc79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x92cc79f1 # initialize rs1
li x10, 0xd19251b8 # initialize rs2
sra x8, x20, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0xde14b418 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7a66f617 # initialize rs1
li x14, 0x8dbdc951 # initialize rs2
sra x28, x21, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0x8316b3a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe157b5d5 # initialize rs1
li x27, 0x22e3a781 # initialize rs2
sra x31, x22, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x15, 0xa3560178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3064e8ca # initialize rs1
li x27, 0x950f7bd4 # initialize rs2
sra x15, x23, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x8, 0x5674b8bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd792a599 # initialize rs1
li x3, 0xe574545b # initialize rs2
sra x8, x24, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x6, 0x98f3f7c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd58fce92 # initialize rs1
li x28, 0xfca1762b # initialize rs2
sra x6, x25, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x7, 0xfe24aee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7da299ec # initialize rs1
li x14, 0x01c465e0 # initialize rs2
sra x7, x26, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x4, 0xb67a91d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe7004df1 # initialize rs1
li x10, 0xa3bf5928 # initialize rs2
sra x4, x27, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x6, 0xcf64e46a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf9d1a2ff # initialize rs1
li x17, 0x0fe70368 # initialize rs2
sra x6, x28, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x11, 0x679024fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4b6985b4 # initialize rs1
li x9, 0xa836c078 # initialize rs2
sra x11, x29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x8, 0x5a90fcea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3ac042e9 # initialize rs1
li x5, 0xc9be6f99 # initialize rs2
sra x8, x30, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0x63c664b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd8767f91 # initialize rs1
li x25, 0x279c318a # initialize rs2
sra x14, x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x29, 0x6a958333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x831e6ab9 # initialize rs1
li x0, 0x1b5a8398 # initialize rs2
sra x29, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0xfa527158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x24e1b11a # initialize rs1
li x1, 0x0eafe7c3 # initialize rs2
sra x28, x7, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x15, 0xa0313ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x57c80b00 # initialize rs1
li x2, 0x21ec3dd2 # initialize rs2
sra x15, x12, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x45f8429f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3998eed8 # initialize rs1
li x3, 0x9efffcf2 # initialize rs2
sra x24, x19, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x10, 0x0a933f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4b5bfda1 # initialize rs1
li x4, 0x022fbf32 # initialize rs2
sra x10, x25, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x14, 0x81139479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x95fea4bd # initialize rs1
li x5, 0x3e609eae # initialize rs2
sra x14, x31, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x19, 0x93748cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdc74599a # initialize rs1
li x6, 0xd761187e # initialize rs2
sra x19, x4, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x25, 0xc514e07d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb62ae5a8 # initialize rs1
li x7, 0xa402bd7c # initialize rs2
sra x25, x5, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0xf6a8311d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8e2287c2 # initialize rs1
li x8, 0x37fe0d12 # initialize rs2
sra x26, x6, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x27, 0x2f3355c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8258fc16 # initialize rs1
li x9, 0x6b7e9139 # initialize rs2
sra x27, x2, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x2653442f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1f7f32c4 # initialize rs1
li x10, 0xd71cd45d # initialize rs2
sra x5, x8, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0xb401f071 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfd963192 # initialize rs1
li x11, 0x41f44e7b # initialize rs2
sra x24, x4, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x3fadaea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3ce2def4 # initialize rs1
li x12, 0x9ce6deb3 # initialize rs2
sra x27, x11, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0x5434e3ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4e8f9984 # initialize rs1
li x13, 0xfd851f6a # initialize rs2
sra x25, x16, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0x101b65c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd5765223 # initialize rs1
li x14, 0x2bdd27df # initialize rs2
sra x17, x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x9ae0c6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe919adde # initialize rs1
li x15, 0x21becec2 # initialize rs2
sra x7, x27, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x25, 0xf2867ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa11258dc # initialize rs1
li x16, 0x929c2d8e # initialize rs2
sra x25, x2, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x4, 0xd99550f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9e6a4e7a # initialize rs1
li x17, 0xfafa8c00 # initialize rs2
sra x4, x18, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x1ee19d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb9d69402 # initialize rs1
li x18, 0xbb25650d # initialize rs2
sra x30, x28, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x13, 0x48fef831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0d9187e4 # initialize rs1
li x19, 0xf3b4360c # initialize rs2
sra x13, x12, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x8c1de638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa1c9e07c # initialize rs1
li x20, 0xe6212368 # initialize rs2
sra x18, x30, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0xc932d586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xacbdbe93 # initialize rs1
li x21, 0x8e2a09be # initialize rs2
sra x30, x3, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0xe4ef93f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf62b870e # initialize rs1
li x22, 0x2f225e7b # initialize rs2
sra x17, x29, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0xe3b35fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x318ff9a3 # initialize rs1
li x23, 0xdc0e9b06 # initialize rs2
sra x30, x15, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x20, 0x1ff5a23c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa65f16a5 # initialize rs1
li x24, 0x32d7c9fd # initialize rs2
sra x20, x30, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x18, 0x35a94922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x76619af1 # initialize rs1
li x25, 0xf6ed697e # initialize rs2
sra x18, x24, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0xb2dcca14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x02fde862 # initialize rs1
li x26, 0xe5267ddf # initialize rs2
sra x10, x16, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0x0557afda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5ddff25e # initialize rs1
li x27, 0xefdebd57 # initialize rs2
sra x3, x6, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0x948a763c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4d201318 # initialize rs1
li x28, 0x47448901 # initialize rs2
sra x16, x27, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x514cd0eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0ee0f373 # initialize rs1
li x29, 0x04faea44 # initialize rs2
sra x10, x10, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0xf2f56d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf0ad05c0 # initialize rs1
li x30, 0x78b7b410 # initialize rs2
sra x5, x3, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x25, 0x53283380 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6dfcf535 # initialize rs1
li x31, 0x59a084c4 # initialize rs2
sra x25, x23, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x5a648830)
li x14, 0x4fb9673f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4fb9673f # initialize rs1
li x0, 0x29f19109 # initialize rs2
sra x14, x25, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xd2ac2b7c)
li x16, 0xd2ac2b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd2ac2b7c # initialize rs1
li x30, 0xd2ac2b7c # initialize rs2
sra x16, x0, x30 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x8bc0c940)
li x4, 0xb2e1bfc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8bc0c940 # initialize rs1
li x28, 0x8bc0c940 # initialize rs2
sra x4, x17, x28 # perform operation

# Testcase cmp_gpr_hazard raw test
sra x19, x13, x26 # perform first operation
sra x27, x19, x15 # perform second operation

# Testcase cmp_gpr_hazard raw test
sra x20, x26, x30 # perform first operation
sra x29, x13, x20 # perform second operation

# Testcase cmp_gpr_hazard waw test
sra x21, x26, x9 # perform first operation
sra x21, x13, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
sra x13, x27, x18 # perform first operation
sra x13, x23, x1 # perform second operation

# Testcase cmp_gpr_hazard war test
sra x27, x5, x2 # perform first operation
sra x5, x4, x21 # perform second operation

# Testcase cmp_gpr_hazard war test
sra x14, x17, x15 # perform first operation
sra x15, x28, x4 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0x321e1efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x0, 0xfa0f2d39 # initialize rs2
sra x8, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0x03398ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
sra x25, x16, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x614bc7cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
sra x31, x29, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x254502f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x0, 0x6b7c8036 # initialize rs2
sra x27, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0xaecc2ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
sra x25, x3, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0x92dffef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x4, 0x00000001 # initialize rs2
sra x7, x22, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0x8c2bbc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x0, 0x808d700f # initialize rs2
sra x22, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0xbddff8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
sra x10, x24, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x24, 0x56ffa4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
sra x24, x1, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0x41b60622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x0, 0x923f213b # initialize rs2
sra x6, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x28, 0x8450f303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
sra x28, x7, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x4, 0xdebf701d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
sra x4, x16, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x3, 0x21179794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x0, 0x0fbd0b00 # initialize rs2
sra x3, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x23, 0x4e7361d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
sra x23, x27, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0xc7c55a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x13, 0x80000001 # initialize rs2
sra x19, x1, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0x203c0cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
li x0, 0x208a7484 # initialize rs2
sra x31, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0x0437fd0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
sra x14, x17, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x8, 0x40432cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
sra x8, x11, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x15, 0x63fd0b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x0, 0x39c81077 # initialize rs2
sra x15, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x11, 0x5eb77b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sra x11, x1, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x15, 0x7c971ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sra x15, x18, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x576a5977 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x0, 0xc1c96aad # initialize rs2
sra x11, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0xa9f3c7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
sra x16, x30, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0x78f8e93f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
sra x10, x6, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0x18e00482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x0, 0x23b29264 # initialize rs2
sra x29, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xbe6dbf78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
sra x13, x25, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x6, 0x2323b700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
sra x6, x8, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0xcc2e1ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x0, 0xd8f5a85b # initialize rs2
sra x11, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x16, 0xe91db3cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
sra x16, x2, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x3, 0x4287f572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x1, 0x5bbc8877 # initialize rs2
sra x3, x8, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xcef9b768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x0, 0x8552dcae # initialize rs2
sra x27, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x31, 0x06050870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sra x31, x10, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x12, 0xbd1a8a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sra x12, x28, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x26, 0xa6f30b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x0, 0x15ce1c04 # initialize rs2
sra x26, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0x6f764494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
sra x29, x5, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x19, 0x937772df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x24, 0x55555555 # initialize rs2
sra x19, x12, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x588d513b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x9, 0x981b34e2 # initialize rs2
sra x21, x7, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0aba2baf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x26, 0x9320600f # initialize rs2
sra x31, x17, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0xce3868b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x31, 0x7ade700d # initialize rs2
sra x15, x22, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x17, 0xbdc11d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x5, 0xdec4fda6 # initialize rs2
sra x17, x13, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0xad2196ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001 # initialize rs1
li x14, 0x84e48172 # initialize rs2
sra x8, x7, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x8f12c6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x8, 0x89536705 # initialize rs2
sra x21, x28, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x1, 0x84eceaa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
li x5, 0x320b6cec # initialize rs2
sra x1, x21, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x8a5adb0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x30, 0x20c49f2d # initialize rs2
sra x19, x20, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x2b1fe811 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x30, 0xb560c0c5 # initialize rs2
sra x23, x24, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x26, 0xc7a51100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x2, 0xe11bf1e9 # initialize rs2
sra x26, x24, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0x7857b22b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x18, 0x8ec59837 # initialize rs2
sra x1, x23, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0xfd182bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x6, 0xa09f45d1 # initialize rs2
sra x9, x15, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x2, 0x0c3afa03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x11f9f0da # initialize rs1
li x25, 0x00000000 # initialize rs2
sra x2, x18, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x9a3fd5a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa7767a99 # initialize rs1
li x1, 0x00000001 # initialize rs2
sra x7, x11, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x728475f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x811e2348 # initialize rs1
li x22, 0x00000002 # initialize rs2
sra x12, x25, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x19, 0x5f12d0ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x89fc9408 # initialize rs1
li x8, 0x80000000 # initialize rs2
sra x19, x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x29, 0x63e1118a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xde23e8de # initialize rs1
li x19, 0x80000001 # initialize rs2
sra x29, x2, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0xe5f975ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80cf5e23 # initialize rs1
li x30, 0x7fffffff # initialize rs2
sra x17, x29, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x22, 0xc5761929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x593938cd # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sra x22, x5, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x5, 0x8cb07139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb7ba693b # initialize rs1
li x2, 0xffffffff # initialize rs2
sra x5, x20, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x0cdf25b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfc4e544e # initialize rs1
li x31, 0xfffffffe # initialize rs2
sra x12, x6, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x1, 0x68427342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2565cd4b # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
sra x1, x10, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x30, 0x10c4df6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5b8c1302 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sra x30, x28, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x7, 0xe1a4afc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55c766d6 # initialize rs1
li x5, 0x55555555 # initialize rs2
sra x7, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x29, 0x7b3bdf8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
sra x29, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x71a8d8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
sra x5, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0xdd48f46f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000 # initialize rs1
li x21, 0x00000002 # initialize rs2
sra x28, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x90eb9eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
sra x2, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x16, 0xd540e8c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x7, 0x80000001 # initialize rs2
sra x16, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x15, 0x710a34ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sra x15, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x11, 0xeb9db877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sra x11, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x29, 0x6a142161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
sra x29, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x8159bb3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x17, 0xfffffffe # initialize rs2
sra x10, x28, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x26, 0x8a83ee93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
sra x26, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x21, 0x27e7bbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
sra x21, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x18, 0x1fec7fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
sra x18, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x9372a6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
li x23, 0x00000000 # initialize rs2
sra x22, x28, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0xa8720026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
sra x25, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0x95489063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x12, 0x00000002 # initialize rs2
sra x21, x10, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x30, 0xe582bc68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
sra x30, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x665163f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
sra x29, x10, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x72097c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x22, 0x7fffffff # initialize rs2
sra x5, x29, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x22, 0xd21a1fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sra x22, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x85224927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
sra x17, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x5741ec60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
sra x19, x22, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x25, 0xf29d4fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
sra x25, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x28, 0xcea29f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sra x28, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x18, 0xb4f7745a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
sra x18, x4, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x97388544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs1
li x18, 0x00000000 # initialize rs2
sra x21, x8, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x68ab974e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x16, 0x00000001 # initialize rs2
sra x3, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x3ed40c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
sra x30, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x23, 0x708039bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x17, 0x80000000 # initialize rs2
sra x23, x3, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x12, 0xc71c4d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
li x26, 0x80000001 # initialize rs2
sra x12, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x11, 0xcd67bfad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sra x11, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x25, 0x8d0c8ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sra x25, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x13, 0x1b73e8f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
li x9, 0xffffffff # initialize rs2
sra x13, x21, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x674bb42d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sra x30, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x9, 0x82f88a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000002 # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
sra x9, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x10, 0xf845df2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sra x10, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x2, 0x47299d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x3, 0x55555555 # initialize rs2
sra x2, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x10, 0xc46fd6a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
sra x10, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x29, 0xa45f95c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
sra x29, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0xe96cb723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
sra x1, x5, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x22ce3fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
sra x31, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x1, 0x008d933e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
sra x1, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x29, 0x3c03e357 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sra x29, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x24, 0xb9f46856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sra x24, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x20, 0xc9568c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
sra x20, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x10, 0x250e2eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x9, 0xfffffffe # initialize rs2
sra x10, x12, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x4, 0x02b70d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
sra x4, x2, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x663904bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
sra x22, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x23, 0x26e36dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs1
li x13, 0x55555555 # initialize rs2
sra x23, x9, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x10, 0xdc32d296 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x11, 0x00000000 # initialize rs2
sra x10, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x30, 0xacbaa789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
sra x30, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x9, 0x27d1b0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x3, 0x00000002 # initialize rs2
sra x9, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x29, 0x6d21c50d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x24, 0x80000000 # initialize rs2
sra x29, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x20, 0x52bbafda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
sra x20, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x16, 0xdaf39f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
sra x16, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0x8661af37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sra x1, x27, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x20, 0xab287b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
sra x20, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x6, 0xd639a6c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000001 # initialize rs1
li x29, 0xfffffffe # initialize rs2
sra x6, x26, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x22, 0xf2108ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
sra x22, x19, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x4, 0x66919126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sra x4, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x7, 0x1d8eb165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
sra x7, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x16, 0xc088eca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
sra x16, x12, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x4, 0xf87fc1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
sra x4, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x23, 0xbcc33d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x9, 0x00000002 # initialize rs2
sra x23, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x21, 0x64c8a74c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x28, 0x80000000 # initialize rs2
sra x21, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x14, 0x0548cf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
sra x14, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x19, 0x17a43937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
sra x19, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x15, 0x664740d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sra x15, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x12, 0xbda44910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
sra x12, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x5f85e404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
sra x6, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x7, 0xcd6bbc1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
sra x7, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x7, 0xd6f94108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
sra x7, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x30, 0x61226d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
sra x30, x15, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x24, 0x3b351a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
sra x24, x4, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x14, 0x6ca2e449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x30, 0x00000001 # initialize rs2
sra x14, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x27, 0x1dd3ef46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
sra x27, x2, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0x553336a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
sra x18, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x12, 0xffbc2777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x24, 0x80000001 # initialize rs2
sra x12, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x7, 0x29f384c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
sra x7, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x20, 0xdddf5628 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sra x20, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x5, 0xcae9d722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
sra x5, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x4, 0x93409469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sra x4, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x20, 0xef073be7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x8, 0x5bbc8877 # initialize rs2
sra x20, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x23, 0xc8ac6e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sra x23, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x6, 0x6760d7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
sra x6, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x5, 0x16979abe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
sra x5, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0xef9e0564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x8, 0x00000001 # initialize rs2
sra x25, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x21, 0xc1b0343b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x4, 0x00000002 # initialize rs2
sra x21, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x26, 0x45415e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
sra x26, x30, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x10, 0x5162a6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
sra x10, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x13, 0x14bd98bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
sra x13, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x9, 0xc2c9c3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sra x9, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x9, 0xeeb87882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
sra x9, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x21, 0xf5e33918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
sra x21, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x18, 0xb44b674a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
sra x18, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x24, 0x38a86140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
sra x24, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x3, 0x1b99ffb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
sra x3, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x12, 0x246d277b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x31, 0x00000000 # initialize rs2
sra x12, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0xa3c0c359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
sra x20, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x16, 0x76f280a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
sra x16, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x1, 0x2895a707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffe # initialize rs1
li x20, 0x80000000 # initialize rs2
sra x1, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x24, 0x0ba0f43b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
sra x24, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x26, 0x455adee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
sra x26, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x5, 0x6488495f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sra x5, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0x9da5ed30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x30, 0xffffffff # initialize rs2
sra x7, x18, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x6, 0xa30cf555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
sra x6, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x1, 0x5ac52486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
sra x1, x8, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x7, 0x5f13b473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
sra x7, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x4, 0x93be6bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
sra x4, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x24, 0x0a388fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x9, 0x00000000 # initialize rs2
sra x24, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x22, 0xcbe7422e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x6, 0x00000001 # initialize rs2
sra x22, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x18, 0x4cc70649 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x14, 0x00000002 # initialize rs2
sra x18, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x11, 0x6d8832ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize rs1
li x19, 0x80000000 # initialize rs2
sra x11, x8, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x15, 0x5c0bf48b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x4, 0x80000001 # initialize rs2
sra x15, x5, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x2, 0x457ffef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sra x2, x17, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x7, 0xe10d642d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sra x7, x9, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x2, 0x4b1f2ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x1, 0xffffffff # initialize rs2
sra x2, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x26, 0x1627c1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sra x26, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x18, 0x3b6541c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
sra x18, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x10, 0xd1b56e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sra x10, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x8, 0xa17a3378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x4, 0x55555555 # initialize rs2
sra x8, x24, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x18, 0xeed992ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rs1
li x23, 0x00000000 # initialize rs2
sra x18, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x16, 0xbff6990c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x4, 0x00000001 # initialize rs2
sra x16, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x10, 0x5dd63818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x17, 0x00000002 # initialize rs2
sra x10, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0x4a6e477c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
li x23, 0x80000000 # initialize rs2
sra x31, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0x53ac1533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
li x2, 0x80000001 # initialize rs2
sra x6, x3, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x1, 0x67c37bca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
sra x1, x17, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x31, 0xfe202cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sra x31, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x15, 0xd71e7642 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
li x27, 0xffffffff # initialize rs2
sra x15, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x8, 0x5da3e542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
li x29, 0xfffffffe # initialize rs2
sra x8, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x10, 0x3e853130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
sra x10, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x4, 0x0e657e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sra x4, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x4, 0x2f0693b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x27, 0x55555555 # initialize rs2
sra x4, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x2, 0xe30cdac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x10, 0x00000000 # initialize rs2
sra x2, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x5, 0xecf32d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x13, 0x00000001 # initialize rs2
sra x5, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x4eb2b059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x3, 0x00000002 # initialize rs2
sra x6, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x16, 0xc18093b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x26, 0x80000000 # initialize rs2
sra x16, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x31, 0xe485a9c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x8, 0x80000001 # initialize rs2
sra x31, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x4, 0xfd46f738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sra x4, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x13, 0x3d8d0bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sra x13, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x10, 0x3e0dd54a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x5, 0xffffffff # initialize rs2
sra x10, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x23, 0xf59ae220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sra x23, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x12, 0xcb3a87e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
sra x12, x15, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x3, 0x9fe8386a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55555555 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
sra x3, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x4, 0x9058d109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x6, 0x55555555 # initialize rs2
sra x4, x27, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4d56d6ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe2fc4253 # initialize rs1
li x20, 0xe8c5f72e # initialize rs2
sra x0, x0, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xfc6a2903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x16c3eb04 # initialize rs1
li x29, 0xb626275d # initialize rs2
sra x1, x1, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x69ff53f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x53a21fef # initialize rs1
li x20, 0x67e6c2fe # initialize rs2
sra x2, x2, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6e692a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x16625ab9 # initialize rs1
li x2, 0x6a5b509d # initialize rs2
sra x3, x3, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xe6facf34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb5a87a39 # initialize rs1
li x13, 0xef118231 # initialize rs2
sra x4, x4, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x7dfddc23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x191a989d # initialize rs1
li x26, 0x8f444346 # initialize rs2
sra x5, x5, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x8ee1db37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3842a951 # initialize rs1
li x20, 0x38cf6643 # initialize rs2
sra x6, x6, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x6c92fa53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4aab4669 # initialize rs1
li x20, 0xd3b1752b # initialize rs2
sra x7, x7, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x884e2b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89926553 # initialize rs1
li x4, 0x5645b779 # initialize rs2
sra x8, x8, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8c2e22ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6285c30d # initialize rs1
li x19, 0x9c39545a # initialize rs2
sra x9, x9, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xdc986fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb57513e2 # initialize rs1
li x14, 0x3be1c4a1 # initialize rs2
sra x10, x10, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3f24b152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6fe487c8 # initialize rs1
li x21, 0xde46c6b4 # initialize rs2
sra x11, x11, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x63814260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x38f43944 # initialize rs1
li x12, 0xf6229d6b # initialize rs2
sra x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xbfdf6d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf0d794d0 # initialize rs1
li x28, 0x5cf76ee6 # initialize rs2
sra x13, x13, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf6157c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5902b2bd # initialize rs1
li x18, 0xe9862413 # initialize rs2
sra x14, x14, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x36864d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf0b737bf # initialize rs1
li x4, 0x78a8aefa # initialize rs2
sra x15, x15, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x43552dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbe287914 # initialize rs1
li x1, 0xdfe6da76 # initialize rs2
sra x16, x16, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbdc1093e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x93741f7a # initialize rs1
li x14, 0x611ff4f5 # initialize rs2
sra x17, x17, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe73bdfc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb0a1f011 # initialize rs1
li x30, 0xb4aabf4f # initialize rs2
sra x18, x18, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x97b5bbd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa0076ced # initialize rs1
li x16, 0xf514e47c # initialize rs2
sra x19, x19, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x764e1d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x85aaa91f # initialize rs1
li x12, 0x159df19d # initialize rs2
sra x20, x20, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7dc5b547 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x77d6e05c # initialize rs1
li x16, 0xfe099994 # initialize rs2
sra x21, x21, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xcbfe05c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xda1f8534 # initialize rs1
li x25, 0x240c73fa # initialize rs2
sra x22, x22, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2ef09178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xad00261f # initialize rs1
li x16, 0x041e5b01 # initialize rs2
sra x23, x23, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7bae3a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x47a0c731 # initialize rs1
li x3, 0xf336eb01 # initialize rs2
sra x24, x24, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xcc373b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd003ae7d # initialize rs1
li x25, 0x226dcece # initialize rs2
sra x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa70ff2c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x97ec0ace # initialize rs1
li x7, 0xff6d4ce1 # initialize rs2
sra x26, x26, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x65c54cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x46146875 # initialize rs1
li x28, 0xd34959f1 # initialize rs2
sra x27, x27, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x0922d91a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xea62f9ec # initialize rs1
li x31, 0xe5d38df7 # initialize rs2
sra x28, x28, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x79d5a54e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcb5c7ef8 # initialize rs1
li x21, 0xe3df9a10 # initialize rs2
sra x29, x29, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6a642ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa7d59368 # initialize rs1
li x15, 0x7a8b1bcb # initialize rs2
sra x30, x30, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x754633f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd6d3cea5 # initialize rs1
li x10, 0x5d80ba0a # initialize rs2
sra x31, x31, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xcd88ec1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe5894fd5 # initialize rs1
li x0, 0x42f11f63 # initialize rs2
sra x0, x25, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x5dc8e19c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4aec930f # initialize rs1
li x1, 0xac62c95e # initialize rs2
sra x1, x27, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x07e82d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x92cb318b # initialize rs1
li x2, 0x974e836a # initialize rs2
sra x2, x8, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x7cba72a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0c563859 # initialize rs1
li x3, 0xf38f7106 # initialize rs2
sra x3, x24, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x8ae2b081 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6499450b # initialize rs1
li x4, 0x3273f81f # initialize rs2
sra x4, x26, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x376837f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1eda9b47 # initialize rs1
li x5, 0x962e78a7 # initialize rs2
sra x5, x5, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x1fe50883 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x70507306 # initialize rs1
li x6, 0xb48d4b2f # initialize rs2
sra x6, x5, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x034eace6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0850364a # initialize rs1
li x7, 0x98d56077 # initialize rs2
sra x7, x2, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xcda4b41b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4bdaaae6 # initialize rs1
li x8, 0x8f6458ee # initialize rs2
sra x8, x17, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x2fd4a776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb171a4df # initialize rs1
li x9, 0xe0e90192 # initialize rs2
sra x9, x2, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xca843769 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb3d28f56 # initialize rs1
li x10, 0x4d3f8948 # initialize rs2
sra x10, x25, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x95c822d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x036943f2 # initialize rs1
li x11, 0xf418534a # initialize rs2
sra x11, x8, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x888f6df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5907bd6d # initialize rs1
li x12, 0xc25dad69 # initialize rs2
sra x12, x28, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xcff54f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe4be25e4 # initialize rs1
li x13, 0xcf1ae339 # initialize rs2
sra x13, x30, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x72aad2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x92ab634e # initialize rs1
li x14, 0x3044069b # initialize rs2
sra x14, x2, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x86c250df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x50f7de06 # initialize rs1
li x15, 0xf16ef454 # initialize rs2
sra x15, x22, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x060f4afe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf1fe5cea # initialize rs1
li x16, 0xcd5b35c7 # initialize rs2
sra x16, x18, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x11cab50e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4c72a89f # initialize rs1
li x17, 0xa86fadee # initialize rs2
sra x17, x8, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xe3de1d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4fcb4111 # initialize rs1
li x18, 0x55347fe6 # initialize rs2
sra x18, x18, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x3f4a0305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8d021dca # initialize rs1
li x19, 0x30cc030a # initialize rs2
sra x19, x17, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x08d84668 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfd3f6bbe # initialize rs1
li x20, 0x68e95b26 # initialize rs2
sra x20, x26, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x8ac24edb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x621e901e # initialize rs1
li x21, 0x786eb275 # initialize rs2
sra x21, x21, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x57ecdb78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5af9ea40 # initialize rs1
li x22, 0xb31059dd # initialize rs2
sra x22, x7, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x40fd9165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb6e36ed9 # initialize rs1
li x23, 0x57bc2da9 # initialize rs2
sra x23, x16, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xa8dfcfe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7881b308 # initialize rs1
li x24, 0xce5cde60 # initialize rs2
sra x24, x23, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x86a4adb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa20b36bc # initialize rs1
li x25, 0xc49b0a44 # initialize rs2
sra x25, x10, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xadf5c72b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4f03f92e # initialize rs1
li x26, 0xb1e04c4b # initialize rs2
sra x26, x10, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x4eb7f682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x33d0cb33 # initialize rs1
li x27, 0xca2c0034 # initialize rs2
sra x27, x15, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x5dd43f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xadb5b030 # initialize rs1
li x28, 0x0d983645 # initialize rs2
sra x28, x6, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x4413f3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x886f93da # initialize rs1
li x29, 0x809b156f # initialize rs2
sra x29, x6, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x29ed805a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x66f67d18 # initialize rs1
li x30, 0x2d67b39c # initialize rs2
sra x30, x23, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xe32fd593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaab925f8 # initialize rs1
li x31, 0xc4e44f51 # initialize rs2
sra x31, x8, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x33b0800c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x084cf26e # initialize rs1
li x0, 0xf1952758 # initialize rs2
sra x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x8fbcb4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x245a9d76 # initialize rs1
li x1, 0x3ae353ab # initialize rs2
sra x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x188d6c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x03ddf76a # initialize rs1
li x2, 0x2d77a5f4 # initialize rs2
sra x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf58cc26a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ad76d6b # initialize rs1
li x3, 0xbf698182 # initialize rs2
sra x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x60ba1e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xde1b4b8d # initialize rs1
li x4, 0x4dfc2de8 # initialize rs2
sra x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xfc4f857f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x49f469b9 # initialize rs1
li x5, 0x831d19f0 # initialize rs2
sra x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x8e7a30a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x517fc618 # initialize rs1
li x6, 0xc8edb5f4 # initialize rs2
sra x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x3ef95164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf5d521bb # initialize rs1
li x7, 0x6075c9db # initialize rs2
sra x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x5042f431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x08e96740 # initialize rs1
li x8, 0x30dfed40 # initialize rs2
sra x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf2f4ef62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xee86416b # initialize rs1
li x9, 0x04d065b5 # initialize rs2
sra x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x08a5fd15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3e79120e # initialize rs1
li x10, 0xa4daeb8f # initialize rs2
sra x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe629115c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0f9b5d2f # initialize rs1
li x11, 0xcbf6d5a5 # initialize rs2
sra x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x420f5d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x940ca2b1 # initialize rs1
li x12, 0xfa9c8623 # initialize rs2
sra x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x86367cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc127bd29 # initialize rs1
li x13, 0xbc5a5597 # initialize rs2
sra x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe00e27e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2b4ff0f5 # initialize rs1
li x14, 0xd8b6b666 # initialize rs2
sra x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf3b88fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x444b9cc4 # initialize rs1
li x15, 0x514fdcaa # initialize rs2
sra x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xab00361c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4a2e5fa6 # initialize rs1
li x16, 0xf41c3002 # initialize rs2
sra x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x23df1b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbd014bbc # initialize rs1
li x17, 0xce118ed1 # initialize rs2
sra x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x557c8579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x248816d0 # initialize rs1
li x18, 0xbc572e1e # initialize rs2
sra x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xbc61e20f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x879340d5 # initialize rs1
li x19, 0xd11b8663 # initialize rs2
sra x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2d88087b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x19cb59e8 # initialize rs1
li x20, 0x1ef3e140 # initialize rs2
sra x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf7cec574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xac5a3dc8 # initialize rs1
li x21, 0x1b34ca7c # initialize rs2
sra x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x286cdf12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4634053e # initialize rs1
li x22, 0xf7171ce1 # initialize rs2
sra x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfc4562ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe5b62e98 # initialize rs1
li x23, 0xd9ce27fe # initialize rs2
sra x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x031eff41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfd724859 # initialize rs1
li x24, 0x672403c2 # initialize rs2
sra x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf883d4c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6ef41128 # initialize rs1
li x25, 0x5c87ed53 # initialize rs2
sra x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xf89100ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xde8075f0 # initialize rs1
li x26, 0x5d8dd385 # initialize rs2
sra x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5e4880da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2c390311 # initialize rs1
li x27, 0x18054adf # initialize rs2
sra x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x1e6671c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xea342593 # initialize rs1
li x28, 0x8ca08002 # initialize rs2
sra x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xfaf6fc1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc9a5b895 # initialize rs1
li x29, 0x237f957e # initialize rs2
sra x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x3c4d816d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x955e73f8 # initialize rs1
li x30, 0x32ce5c3a # initialize rs2
sra x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x962d9797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf5aa1b83 # initialize rs1
li x31, 0xa10931fd # initialize rs2
sra x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x7, 0x7e5e5f08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4803d380 # initialize rs1
li x0, 0x422b41d9 # initialize rs2
sra x7, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x18, 0x22fa2381 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4e7090a0 # initialize rs1
li x1, 0x09fb90c6 # initialize rs2
sra x18, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x16, 0x8bac1453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x258ab236 # initialize rs1
li x2, 0xd0939233 # initialize rs2
sra x16, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x7, 0x726fb088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4271fc19 # initialize rs1
li x3, 0x859a53e6 # initialize rs2
sra x7, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x27, 0x87ff39a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3eac3bc4 # initialize rs1
li x4, 0xabf4639a # initialize rs2
sra x27, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x25, 0x5195a178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x59e9f3fb # initialize rs1
li x5, 0xdd19a27f # initialize rs2
sra x25, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x17, 0x6d34afaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa2057f36 # initialize rs1
li x6, 0x662c5e48 # initialize rs2
sra x17, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x15, 0xcb6af527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x96de1941 # initialize rs1
li x7, 0x0872d261 # initialize rs2
sra x15, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x23, 0x46abf1f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x82ed88e4 # initialize rs1
li x8, 0xfaeebf39 # initialize rs2
sra x23, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x17, 0x2a96288e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x23737dc1 # initialize rs1
li x9, 0xb934a2e7 # initialize rs2
sra x17, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x27, 0xbdda4d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x52bbbb5f # initialize rs1
li x10, 0x0881240d # initialize rs2
sra x27, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x15, 0xe8ada1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7a874ef7 # initialize rs1
li x11, 0xf654ba18 # initialize rs2
sra x15, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x10, 0xbdc9708b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1cbe5fb4 # initialize rs1
li x12, 0xab6a2738 # initialize rs2
sra x10, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x20, 0x10d4b972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x04fb20c1 # initialize rs1
li x13, 0xc6960e89 # initialize rs2
sra x20, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x16, 0x3b3837c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xddabb43f # initialize rs1
li x14, 0xd40be523 # initialize rs2
sra x16, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x21, 0xf8e54978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbd7baf29 # initialize rs1
li x15, 0xb25f7b0e # initialize rs2
sra x21, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x10, 0xe86ab778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x43f8acd3 # initialize rs1
li x16, 0x0f78a0e3 # initialize rs2
sra x10, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x24, 0xf9f7b934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x82e8d820 # initialize rs1
li x17, 0x3b17fdf8 # initialize rs2
sra x24, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x26, 0x29a43eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3ece4012 # initialize rs1
li x18, 0xf92a06f6 # initialize rs2
sra x26, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x25, 0x34ac8d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa2223171 # initialize rs1
li x19, 0xd1af9d8c # initialize rs2
sra x25, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x9, 0x487468c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0ead4284 # initialize rs1
li x20, 0x8684dc61 # initialize rs2
sra x9, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x26, 0x40f92b58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0ed70d2c # initialize rs1
li x21, 0xd33f4b7f # initialize rs2
sra x26, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x16, 0xd95a6e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1c1dc067 # initialize rs1
li x22, 0x86c3cd5a # initialize rs2
sra x16, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x13, 0x4a18ba05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xee58873f # initialize rs1
li x23, 0x80ef8ac5 # initialize rs2
sra x13, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x23, 0x51eb1f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbd012827 # initialize rs1
li x24, 0x930d6420 # initialize rs2
sra x23, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x23, 0x89f1cb2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x757205c3 # initialize rs1
li x25, 0xdc21152d # initialize rs2
sra x23, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x13, 0x957ab9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x62aaa431 # initialize rs1
li x26, 0x5a2a7d92 # initialize rs2
sra x13, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x15, 0x02b41df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x05eac7b9 # initialize rs1
li x27, 0x88b57d43 # initialize rs2
sra x15, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x8, 0xf2b7b41d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4dc78533 # initialize rs1
li x28, 0x3d2a4c93 # initialize rs2
sra x8, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x26, 0xa3d3225e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfa9f49b0 # initialize rs1
li x29, 0x0bfc6733 # initialize rs2
sra x26, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x16, 0x018d0392 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdac58cbd # initialize rs1
li x30, 0x7b07a426 # initialize rs2
sra x16, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x23, 0x22440ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe8875aad # initialize rs1
li x31, 0xdd03b06e # initialize rs2
sra x23, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x327fd9e7)
li x9, 0x8cf2410a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x327fd9e7 # initialize rs1
li x1, 0xd8dbfc62 # initialize rs2
sra x9, x29, x1 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1177c54)
li x23, 0x311d7095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfee883ac # initialize rs1
li x16, 0x5a5bad0e # initialize rs2
sra x23, x13, x16 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x18058750)
li x31, 0x880fea88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4bdf2252 # initialize rs1
li x14, 0x18058750 # initialize rs2
sra x31, x29, x14 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x28c2b360)
li x7, 0xcbe01c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x76d178b9 # initialize rs1
li x11, 0xd73d4ca0 # initialize rs2
sra x7, x16, x11 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
