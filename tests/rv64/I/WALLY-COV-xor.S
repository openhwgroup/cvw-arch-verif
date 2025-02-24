///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-xor.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.520062
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xb6f4d0179ce9af57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x571aafdf60d68c43 # initialize rs1
li x12, 0x78bdf5f930b0ce59 # initialize rs2
xor x0, x16, x12 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5df517e9f368f82d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xea2c3808f6578160 # initialize rs1
li x31, 0x23df0a4f52acab55 # initialize rs2
xor x1, x1, x31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x80a8291fd6073b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc61ea7b0c5082d34 # initialize rs1
li x29, 0x9a8b5d268b888d79 # initialize rs2
xor x2, x1, x29 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x00b7734efb23032f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf7205912ef332b9d # initialize rs1
li x14, 0xd239013b59b337a0 # initialize rs2
xor x3, x21, x14 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x873e79c1afb05b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x01d3689abcec0c8e # initialize rs1
li x16, 0xa4c43c082443247f # initialize rs2
xor x4, x21, x16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x37d2114c6d06dade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x87112b6496df4c2d # initialize rs1
li x5, 0x84850e428cbde77c # initialize rs2
xor x5, x2, x5 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf9e9431a1db8e378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa9557497e2376dfb # initialize rs1
li x19, 0x027ac090120490e8 # initialize rs2
xor x6, x11, x19 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x2f3c468589fd31eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x14ccbe866d5295fd # initialize rs1
li x5, 0xddec2f4d3031619f # initialize rs2
xor x7, x3, x5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe4d46864f0dcc8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x36a3114f73b9cc78 # initialize rs1
li x25, 0xd683647cde720e25 # initialize rs2
xor x8, x10, x25 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x944926a41f098bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdf2640c6969c7122 # initialize rs1
li x20, 0x6e7e2b3360e175ea # initialize rs2
xor x9, x19, x20 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x1e971850cf9a36b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf3551896126f7b67 # initialize rs1
li x10, 0xfbdccd6a5aa8b03a # initialize rs2
xor x10, x9, x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x183b46a155db0263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb0a5d2d1fb1c9408 # initialize rs1
li x18, 0x76ad1e2e8b0e28f7 # initialize rs2
xor x11, x6, x18 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc592e8daeb7899eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x08e3f05830b9ce90 # initialize rs1
li x18, 0xecb85760c154cea7 # initialize rs2
xor x12, x20, x18 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9eaa354b7b213899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x986dd09bb65440b9 # initialize rs1
li x8, 0x86fbcd317d4b1f48 # initialize rs2
xor x13, x25, x8 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x232ce0c686358ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd2df65134ab6d080 # initialize rs1
li x24, 0x5446ef40da8531a5 # initialize rs2
xor x14, x31, x24 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x45d97aad27720b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6e15bb9fa0f9c912 # initialize rs1
li x28, 0xfc126eb23e5325d8 # initialize rs2
xor x15, x30, x28 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xe58aa9fb1375e953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x22002799f29bc769 # initialize rs1
li x15, 0x8e51fa6d17e17511 # initialize rs2
xor x16, x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x9d90e6d5e46135bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb923bfb4b3d5cfdf # initialize rs1
li x5, 0x70799e3c89fa6f60 # initialize rs2
xor x17, x2, x5 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x2f3cc68595a73b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa72ca9a89267aafb # initialize rs1
li x7, 0x4fe6c4541327982f # initialize rs2
xor x18, x13, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x7a0287419063e3f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6ebeae74f7c097f7 # initialize rs1
li x31, 0x43bfa83f9b3d7055 # initialize rs2
xor x19, x11, x31 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xac0d1c148ed89098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x87fdc077fe66491a # initialize rs1
li x20, 0xa9d5b96aeff0e836 # initialize rs2
xor x20, x22, x20 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd2dc8f2442dc4a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4330bc97bfa66f40 # initialize rs1
li x26, 0xa0412eb2d0c474bb # initialize rs2
xor x21, x30, x26 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x191290e98a09e870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x496e8dbda998d59d # initialize rs1
li x2, 0xdb3a0ff5588d7664 # initialize rs2
xor x22, x22, x2 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x82da9d311bb9ef53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf0052be24ceb719e # initialize rs1
li x18, 0xfa309e72ad5d5a2d # initialize rs2
xor x23, x15, x18 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xf326073077c15a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcb782d3dec1e33b5 # initialize rs1
li x21, 0x64b67b94112b8697 # initialize rs2
xor x24, x28, x21 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xe619f92312c709c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9ffbd0b1c5a85918 # initialize rs1
li x29, 0xa0e62878730b8208 # initialize rs2
xor x25, x24, x29 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0bfb30d5aaa7218f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4be9d017ec1016f9 # initialize rs1
li x9, 0x33e366401b349821 # initialize rs2
xor x26, x14, x9 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xc5ec4e5f50ca6243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa677a464b027606a # initialize rs1
li x27, 0x6257e2b53e42dc6d # initialize rs2
xor x27, x13, x27 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe93a6cbde56a7486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1352c27550b8afa6 # initialize rs1
li x5, 0x9630e1ba37ea957d # initialize rs2
xor x28, x7, x5 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x229dd9e4fddcd0ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xae7e11537efa5d10 # initialize rs1
li x7, 0x2625bace1b0532e1 # initialize rs2
xor x29, x23, x7 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xc1baaff2e3379c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6aaecf59f3674ff5 # initialize rs1
li x19, 0xb5054e98ab0c1290 # initialize rs2
xor x30, x18, x19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf805d1a7ab98c0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x651cb48f445a176d # initialize rs1
li x14, 0x516f948b0202d854 # initialize rs2
xor x31, x10, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x27, 0x75c8e52d891a435f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5da10c775f5a612e # initialize rs1
li x4, 0x710c9f3bc86ab48e # initialize rs2
xor x27, x0, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x30, 0xb2fde38cac6d17cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc6d91e41793ab349 # initialize rs1
li x12, 0xb8aef8a11875a4ca # initialize rs2
xor x30, x1, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x31, 0xbf3048a6a7bfa75d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb7f02632eb13336f # initialize rs1
li x29, 0xef636fc2cc90f3be # initialize rs2
xor x31, x2, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0x6b1f0dd436e4e3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa2e223ceb9093c71 # initialize rs1
li x9, 0x652285dc4b3fa7af # initialize rs2
xor x29, x3, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x23, 0x47d1f242c0bb79f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1de7f9ced7a5e12a # initialize rs1
li x12, 0xc5c9b45d81b2a421 # initialize rs2
xor x23, x4, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0x6d4ca84a25ba68f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3a2032854a8122b3 # initialize rs1
li x7, 0x4d800833b03a9680 # initialize rs2
xor x14, x5, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x5, 0x3b8b4a220efb665a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0dc9e06e5b52a593 # initialize rs1
li x8, 0x380c83b0515b261c # initialize rs2
xor x5, x6, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x12, 0xbb56e90b3cb831f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3cc792a9acc4d53f # initialize rs1
li x5, 0x9e3fc4fca4b90768 # initialize rs2
xor x12, x7, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0xd206322c98c0d934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x62e4c48393a834ae # initialize rs1
li x10, 0x9c17193ac43c7d96 # initialize rs2
xor x16, x8, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x6f12b21bc99a1a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x521ef479a1b299f3 # initialize rs1
li x27, 0xac26f413e2c588f5 # initialize rs2
xor x25, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x3d60e59f70301c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb86ad670eb4f1d68 # initialize rs1
li x2, 0xd52261fbd6b9ce0a # initialize rs2
xor x11, x10, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x2d12cd93a446a805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8282a0596310e637 # initialize rs1
li x2, 0xec6b051514a8f490 # initialize rs2
xor x15, x11, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0x15b2306782d6c047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x192f8eadb040eb35 # initialize rs1
li x6, 0xeeb31de2158cdb03 # initialize rs2
xor x23, x12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x0fa1dba7f4cf23ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc6b73dee0aee75f2 # initialize rs1
li x11, 0x43662e59d23f3261 # initialize rs2
xor x23, x13, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x7b08951cee7d7a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe99fc670142ab646 # initialize rs1
li x23, 0x720167478362bee7 # initialize rs2
xor x9, x14, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0xcd60cc88061d666c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf0ee06bc8f1c311b # initialize rs1
li x25, 0x49d880a2dc2f40d4 # initialize rs2
xor x31, x15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0x1481e99cd178e09a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x38cb611574a973c5 # initialize rs1
li x25, 0x53eeb65d4aaae3c0 # initialize rs2
xor x2, x16, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x5e327324a62271d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1eae272ad6353b34 # initialize rs1
li x8, 0x5a12d9d20636748f # initialize rs2
xor x2, x17, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x9, 0x94494d94bb893b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x49da516977e29f2c # initialize rs1
li x25, 0x585a46c474517593 # initialize rs2
xor x9, x18, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0x1677e755ced295bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0602fabde113d5ad # initialize rs1
li x18, 0x6bd909d91ec81d24 # initialize rs2
xor x28, x19, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x8, 0xdc2d7ae2acbfe2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6687cf4786d784d0 # initialize rs1
li x11, 0x41880b00de4d5391 # initialize rs2
xor x8, x20, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0x64103fc0641ddd1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6b9db861833e25f8 # initialize rs1
li x24, 0x2f4d191e79e08242 # initialize rs2
xor x8, x21, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x13, 0xeb6fa0e914a86090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x672dc37df402a7a6 # initialize rs1
li x25, 0xcf1dabd001c2e3d4 # initialize rs2
xor x13, x22, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x59af399170a8bd02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2c42e335b2692869 # initialize rs1
li x1, 0x5689278b9753779a # initialize rs2
xor x5, x23, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x25, 0x3a17e808fd03aef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4d82d89620ec58ba # initialize rs1
li x9, 0x59b4355af90f7992 # initialize rs2
xor x25, x24, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x6, 0x4e7115866bea79b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x844d0073441d00ce # initialize rs1
li x13, 0xbc84159d84f37a94 # initialize rs2
xor x6, x25, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0x1efa84fe3fd3cfe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x44087ca33194d587 # initialize rs1
li x3, 0xc3016fab46426d28 # initialize rs2
xor x11, x26, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0x4d6b1141748c54ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe97ad28d0d2be855 # initialize rs1
li x22, 0x3f8a43e9a9bd06b9 # initialize rs2
xor x12, x27, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0x0bfc659e1a5c5270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6ea5edcc38eddebe # initialize rs1
li x12, 0xbafe0d45ff3f8369 # initialize rs2
xor x1, x28, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0xc2e1d94819d50249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x81c9f9a9c2adc371 # initialize rs1
li x27, 0x53e41299ab54be14 # initialize rs2
xor x31, x29, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x20, 0xe5d27c934b19b90b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x71a856b07ef2ddfc # initialize rs1
li x14, 0x6931bcc9012497f1 # initialize rs2
xor x20, x30, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0x67fdfc0052c29214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5da0464e5fae90a0 # initialize rs1
li x11, 0x5612e8e72155f18e # initialize rs2
xor x29, x31, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x10, 0x77cf21774cc8f6cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6aa3cea9f6a68f78 # initialize rs1
li x0, 0xad4a7c01d2889b20 # initialize rs2
xor x10, x11, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0x481b9616f8deb6a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x75d8468894a45e42 # initialize rs1
li x1, 0x9947cea646df49a5 # initialize rs2
xor x23, x14, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0xca1a70eb06764215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5e0d657fef72fa6e # initialize rs1
li x2, 0xd1a6258d30d063d7 # initialize rs2
xor x20, x5, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0x43be09708ebe47a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf700f3818190c8c8 # initialize rs1
li x3, 0xb446ba9ace7759b3 # initialize rs2
xor x26, x10, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x30, 0x60e32ef486a15c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb83c42333042c26b # initialize rs1
li x4, 0xd879e284d1b53efc # initialize rs2
xor x30, x29, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0xa2c97139e8a4c245 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x59b16464213c2efa # initialize rs1
li x5, 0xbc4321d08905cb19 # initialize rs2
xor x28, x29, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x24, 0x5b0a68b8b091d657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7c5ecb4c942273f4 # initialize rs1
li x6, 0xfac243df7dd1a02c # initialize rs2
xor x24, x16, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x17, 0xb5e0edaa81e0770d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x20aaa0c7807296b2 # initialize rs1
li x7, 0xf0ddc89afc136b7e # initialize rs2
xor x17, x21, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0x9d5405a212bea711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x97e961ad5a6dd353 # initialize rs1
li x8, 0x24c23cf2056501c5 # initialize rs2
xor x10, x1, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x95ea07a54087509c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2d1585887b97222a # initialize rs1
li x9, 0x516e1551de71ddda # initialize rs2
xor x17, x4, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x4635fff6fad28084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfc9247c722dc4aa1 # initialize rs1
li x10, 0x856eb7b104616a28 # initialize rs2
xor x4, x23, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0x8018bfad3def8c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbb9737438b736133 # initialize rs1
li x11, 0xc38db54bb1b3218c # initialize rs2
xor x22, x4, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x14, 0xa99284d5afe6d18d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb3fd1d7a085ec129 # initialize rs1
li x12, 0x179cd5bb8831da8c # initialize rs2
xor x14, x6, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x0aa7292c54bd506e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb83317f58026921d # initialize rs1
li x13, 0xd839214212985991 # initialize rs2
xor x11, x8, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0x6403a9672d4a7b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x58cfa0674cc2c600 # initialize rs1
li x14, 0xb734fc62c7168be5 # initialize rs2
xor x29, x26, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0x83dc3b551b47d12f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x06b9b735799f2e18 # initialize rs1
li x15, 0x18e1f0dd966246c8 # initialize rs2
xor x6, x23, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x13, 0xc63646de3766867e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbd3b356b6dc32287 # initialize rs1
li x16, 0x73925191d9c55f94 # initialize rs2
xor x13, x24, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0xa02fd70a60638e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbfedaa5b0cc993e2 # initialize rs1
li x17, 0xf2f03b7b1ef25807 # initialize rs2
xor x2, x31, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0xc52ee5512ad2ea9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x887c80d444333e37 # initialize rs1
li x18, 0xdaefa1a6608800a8 # initialize rs2
xor x20, x16, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x23, 0xd7ee9c94f03dd6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4e7277c46cd489b3 # initialize rs1
li x19, 0xbd1f292b53833c9f # initialize rs2
xor x23, x17, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0x6d02eeaf3f248448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9154f8f0add99d93 # initialize rs1
li x20, 0x33b2b1ea8d7cedde # initialize rs2
xor x13, x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0xea48922811b1f755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x26f90d05b3a5223e # initialize rs1
li x21, 0x322a558157f7936e # initialize rs2
xor x8, x1, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x7c0510c38839cd9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x79e6251d37f6a2bb # initialize rs1
li x22, 0x5fb2c033eb3aaf5c # initialize rs2
xor x9, x14, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x7dcf589c64eec3b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa66d9ab0830a2572 # initialize rs1
li x23, 0x6cc74c307156c9c9 # initialize rs2
xor x15, x29, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x26, 0x21704440480a6b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x68357db0998a9c3a # initialize rs1
li x24, 0x52b105927ead5116 # initialize rs2
xor x26, x19, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0x51efaf475f2a8745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffc274291b4870f0 # initialize rs1
li x25, 0xd999ee662702ad0a # initialize rs2
xor x6, x5, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0x582318b0973b9a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1c4148c5603d78e6 # initialize rs1
li x26, 0x7223b8450343c01e # initialize rs2
xor x11, x27, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0xa97a3dc26adef7a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa88e2e1bbe681882 # initialize rs1
li x27, 0x457ecfb2b2ed9247 # initialize rs2
xor x1, x9, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0x4923a4a2974b4842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x298f2f55cb95e0a5 # initialize rs1
li x28, 0xd8aaa6d8997293fb # initialize rs2
xor x11, x30, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0xd44a57045824fd2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6a0c1de238a07d77 # initialize rs1
li x29, 0x4fb7e317a5effb5a # initialize rs2
xor x8, x19, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0xc92665e892a06d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdfa2b88dba2592f3 # initialize rs1
li x30, 0x4fabafd10d4c0bdf # initialize rs2
xor x16, x1, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0xaafc2dd0242bd49b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1dff00e5b7188391 # initialize rs1
li x31, 0x2f6cf62a6abef0ce # initialize rs2
xor x26, x3, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x5db78f359d28f4fa)
li x5, 0xb14f9a6bacde3244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb14f9a6bacde3244 # initialize rs1
li x0, 0x774c8a753ff9f991 # initialize rs2
xor x5, x9, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x267a6ee9f50f3f9a)
li x24, 0x267a6ee9f50f3f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x267a6ee9f50f3f9a # initialize rs1
li x3, 0x267a6ee9f50f3f9a # initialize rs2
xor x24, x0, x3 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xf563213a572201de)
li x26, 0xc932157498805788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf563213a572201de # initialize rs1
li x15, 0xf563213a572201de # initialize rs2
xor x26, x31, x15 # perform operation

# Testcase cmp_gpr_hazard raw test
xor x19, x23, x22 # perform first operation
xor x30, x19, x11 # perform second operation

# Testcase cmp_gpr_hazard raw test
xor x30, x24, x12 # perform first operation
xor x21, x30, x30 # perform second operation

# Testcase cmp_gpr_hazard waw test
xor x11, x4, x19 # perform first operation
xor x11, x28, x12 # perform second operation

# Testcase cmp_gpr_hazard waw test
xor x21, x17, x28 # perform first operation
xor x21, x18, x12 # perform second operation

# Testcase cmp_gpr_hazard war test
xor x26, x8, x31 # perform first operation
xor x8, x19, x30 # perform second operation

# Testcase cmp_gpr_hazard war test
xor x9, x31, x17 # perform first operation
xor x17, x6, x3 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0xf80a7a6d6e5b61b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x0, 0xc9db353d2706cdf7 # initialize rs2
xor x23, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0xa83b7146127bdb63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
xor x29, x1, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xddb5cd2bb005a8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
xor x7, x11, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x666f70c109f5183e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x0, 0x0737c9e77c840314 # initialize rs2
xor x14, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x854ca60dcbf80072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
xor x14, x5, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x943548fa7eb85f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
xor x28, x20, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0xf1e19a4ea630ebed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x0, 0x8be3c6214ad51686 # initialize rs2
xor x10, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x65a186898fdbbf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
xor x1, x9, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x43469fe2c6f6db0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
xor x23, x24, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x20, 0xeb5983ba8d19ee9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x0, 0xaca0b1a6be5351ec # initialize rs2
xor x20, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x16, 0x5b54a9db79c68fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
xor x16, x10, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x12, 0xb8a1a96fb2f9c155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
xor x12, x7, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x4, 0x28b3bd1d890cf0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x0, 0xa74134ad9e8df8a4 # initialize rs2
xor x4, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x7, 0xdb0fb6f122116829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
xor x7, x20, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x5, 0x43cd906e3178f109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
xor x5, x21, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x18, 0x108bcea216f5caf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x0, 0x531a8c78710784d9 # initialize rs2
xor x18, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x30, 0xb04d46bec5331738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
xor x30, x21, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x1, 0xa0910984c26a63f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
xor x1, x23, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x11, 0xbd9ba4f78e6ef31c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x0, 0x4050ca87ea9789e4 # initialize rs2
xor x11, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x21, 0xc700bcc2d63e744d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
xor x21, x4, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x27, 0xc914e8dbb88d4e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
xor x27, x24, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x10, 0x2731d482ff1a1c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x0, 0x265b13fce0104cb0 # initialize rs2
xor x10, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x18, 0x9260cbaee7a895a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
xor x18, x30, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x31, 0xd34578e8e572fce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
xor x31, x25, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x24, 0x5b20d7b1f04de457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x0, 0x44a4338f4c2778d2 # initialize rs2
xor x24, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x27, 0x4d2ea01481eff868 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
xor x27, x26, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x21, 0x78c6360db74f10c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
xor x21, x15, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x5, 0xa288dec108b78128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x714f225da36db5bc # initialize rs2
xor x5, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x31, 0xce8e780961c04485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
xor x31, x19, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x26, 0x64abaa8579ad4e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
xor x26, x29, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x114a5e52e62c3ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x9cb4fa171a483335 # initialize rs2
xor x1, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x25, 0x009ce006404fae77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x25, x7, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x63491d177f7559b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x10, x1, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x20, 0xd7c6d579da0745ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x0, 0x7b232a6de25fbd43 # initialize rs2
xor x20, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x3, 0xef971ea43da83637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
xor x3, x14, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0x4289a7972e15d8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xor x25, x20, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0x82a54bf4c1b698b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x0, 0x28002a111a4fab6a # initialize rs2
xor x10, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x25, 0xca452277fc6594f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
xor x25, x8, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0x9afa4a5e5aafa860 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
xor x9, x29, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x5, 0x7edb0f8c0b5f69ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x0, 0x443fb664065c8b86 # initialize rs2
xor x5, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0x8c336825e8275351 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
xor x31, x9, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0x127d17c046470beb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
xor x28, x13, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0xa551018a38760374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x0, 0xef489afd7c0e3522 # initialize rs2
xor x22, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x3, 0xc309a4ffcfc3cb06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
xor x3, x15, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x12, 0x754d4fb84ad47bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
xor x12, x13, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x24, 0xa72ab56d763bac32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x0, 0x60bdb4b50e31ce72 # initialize rs2
xor x24, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x17, 0x2369624914ce9114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
xor x17, x3, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x15, 0x0722147e224f5339 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
xor x15, x2, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x0947c7b6c75b2d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x14, 0x9c9bcbfc5fcc33b1 # initialize rs2
xor x13, x16, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x0088daa5459ed088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x25, 0xa323ac35ae50a033 # initialize rs2
xor x15, x13, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x67a77e36b20039cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x31, 0x2671c26db64364a0 # initialize rs2
xor x7, x13, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x17, 0x3c1602f677493c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x21, 0x0cfdbed6661681a7 # initialize rs2
xor x17, x19, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x8d5177aac8facff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x13, 0x6869477a5a945bad # initialize rs2
xor x27, x4, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x29, 0x4a00295ce8653a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x6, 0xf012ef9da9ead6ce # initialize rs2
xor x29, x8, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x10ccc8d525e7aca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x12, 0xe58a4c5bbf414363 # initialize rs2
xor x18, x27, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x4, 0x34c0a9095e98b00e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x14, 0xeefa7fa870609aa5 # initialize rs2
xor x4, x12, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0x42e946f151958d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x13, 0xbaebdb96da1c880f # initialize rs2
xor x17, x14, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x11, 0xcab076d550795271 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0xd05ffc51eea87141 # initialize rs2
xor x11, x8, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x6cac0c1bca5257db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x6e8c1b1801cbe902 # initialize rs2
xor x27, x30, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x11, 0xe98d9f122f6b4dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x8, 0xfe03a87e9c5de773 # initialize rs2
xor x11, x13, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xd90528177f051193 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x29, 0x71ebf9d747e7c9ab # initialize rs2
xor x9, x16, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x6d37f68a14f972e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x31, 0x252660c3cefe3036 # initialize rs2
xor x14, x21, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0xb8d0ec90675b99d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x17, 0xdd9f68f298d81838 # initialize rs2
xor x24, x26, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x58f4fb28e77a0085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x31, 0xbe1a5bcf08c183ad # initialize rs2
xor x13, x21, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0xb7f0e4dd0fbba81d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf3bf3c8b37cb21e4 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
xor x14, x15, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x27, 0x07243ec473f4e917 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7952849997125bab # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
xor x27, x11, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0x0e59e8af0c67adb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x82175b2b0553d990 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
xor x5, x10, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x610b47b1c6e52359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb7b9efa3a5a49da9 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
xor x13, x4, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x17, 0xa1207ca2f3748f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf4082d3aaaaf51ae # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
xor x17, x14, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x25, 0x75f3afb7183c9525 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x25343ac32b59520f # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
xor x25, x16, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x30, 0x4820d2765213cb76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x95b27bc28386990a # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
xor x30, x2, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x2398d475a4e42cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3e58dcd2cb976043 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
xor x7, x24, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0xd5b426bb43543d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb1b2423af4fe13f9 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
xor x31, x15, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x4, 0x125c71961a9a2766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9c185a236bde7a85 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
xor x4, x9, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0x80f238fb6b377d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc274562424d0c157 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x6, x8, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xf7b7eb4fb96a4509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcb81f9ec4b40ba37 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
xor x19, x29, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x3f77cca40e2b2508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x01b2de4548974168 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
xor x13, x26, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x6fe2cca64b81ad64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x04a04b15b475b00e # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
xor x3, x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x382b067c41ceefa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa31ef11df58a9ca4 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
xor x9, x15, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0x6e1b90dda549a951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa4255140a08f7d71 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
xor x17, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0xd0e45af070e822df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
xor x2, x3, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x10, 0x3e8957afccdaee01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
xor x10, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x17, 0x899027fb814a544b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
xor x17, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x4, 0x686515a1959e85cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
xor x4, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x26, 0xcab6c8b519de1e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
xor x26, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x1, 0x7a11e9c27d185c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
xor x1, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x8, 0xe9ace4da1d8e2953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
xor x8, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0xcfd05e8f8254e2e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xor x15, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x18, 0x348fb1e50e845f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
xor x18, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x25, 0x9deb4b9154cc7c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
xor x25, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xee69c52459efb14a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x22, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x4, 0xbf123f8e3cc2b356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
xor x4, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x28, 0xf880a3c5d94a714b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
xor x28, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0x76071cf7c991431e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
xor x8, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x31, 0xf041d5a8ff784915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
xor x31, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x21, 0xa3f16aafb2a95be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
xor x21, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0xcb162c0d13c53086 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
xor x9, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0xccfe3e174ff46551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
xor x14, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x9ca97a2224a024b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
xor x8, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x25, 0x24db5fe89373c5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
xor x25, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x22, 0xb07685c288eaff94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
xor x22, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x4, 0xa15cc9f619871a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
xor x4, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x4, 0x719e9fa38e751f67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
xor x4, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0xe8ed08a082f13e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
xor x28, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0xb37e136966f20be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
xor x27, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x15, 0xea7fbcedbe9d261f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
xor x15, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7862ae3f6b1a5092 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x10, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x25, 0x35fde55bd55c68cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xor x25, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x11, 0xfe5f40c6ee108530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
xor x11, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x16, 0xd7f90ef0b136b93d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
xor x16, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x4, 0x5555400b73cadcaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
xor x4, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x15, 0x94c64787447874d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
xor x15, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0xd7a8a57fb32f7625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
xor x15, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0xcca6abe8e47fc407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
xor x27, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0xd497a0bdba95c051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
xor x23, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x13, 0x5aee6ddf43bd8e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
xor x13, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x20, 0x292432d973261d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
xor x20, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x5503c2b2ba852873 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
xor x22, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x6, 0x5d30c07523bb6fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
xor x6, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x29, 0x1a46422c47c5ec25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
xor x29, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x17, 0x476a9d21839d8a00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
xor x17, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x19, 0xa6c146d11f5be119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
xor x19, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x771e7a094599e024 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x11, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x2, 0xba0c79e1b52f35f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
xor x2, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0x379efd15e1d65d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
xor x6, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x9, 0xa9be77232742e21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
xor x9, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x6, 0xcdda9fcf02212ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
xor x6, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x27, 0x89adfe27c59473c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
xor x27, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x31, 0x11af0005f3ffc455 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
xor x31, x24, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x2, 0x31eb6a3f89060d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
xor x2, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x14, 0x4c2fe7348b7edd4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
xor x14, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x3, 0x838f6c6f81f95f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
xor x3, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x24, 0x2af8611f20554959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
xor x24, x13, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x12, 0xdcf32029cd1e6f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
xor x12, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0xdfe10e411d222b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
xor x31, x4, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0x8890dcdbfd2d111f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
xor x9, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x22, 0x8059898a8bdcbb21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
xor x22, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x7, 0x6429e2715c48e75a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
xor x7, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xb8c25f2f142cd366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x30, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x23, 0x8d8c028fc745f8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
xor x23, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x22, 0xe55a62f95a5b017e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
xor x22, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x25, 0x03d425e30125d216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
xor x25, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0xbdc5ada0a1179a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
xor x15, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x2, 0x391d5db3d9080e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
xor x2, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x16, 0x5e5c5409c205b319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
xor x16, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x1, 0xaec478cc680527d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
xor x1, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x7, 0xd0ec90931989addc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
xor x7, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x30, 0x865ee208026e0a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
xor x30, x22, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0x99095c442910ba18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
xor x6, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x16, 0x7b708f904f270111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
xor x16, x18, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x1, 0x7aed37d96b193605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
xor x1, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x10, 0x751e345f4596688a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
xor x10, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x16, 0xb1634ee8af73645c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
xor x16, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x3, 0x92f73d0e14aca96a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
xor x3, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7a6491cb989dcb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x9, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x18, 0xd42b50f09d47aff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
xor x18, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x25, 0x4df4442be92e4caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
xor x25, x14, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x10, 0xa8ae6a230e97c5be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
xor x10, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x8, 0x9d82d752bfd4221c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
xor x8, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x31, 0x1978854f978fcda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
xor x31, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x24, 0x6da346332055ff9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
xor x24, x12, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x17, 0x8c0abf8ac8090899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
xor x17, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x9, 0xf152dd5f3b3ba5e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
xor x9, x14, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x9, 0xecaa7efe21e23de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
xor x9, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x983be53a4a215dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
xor x1, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x4, 0x799b47c10e6c36d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
xor x4, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x2da1a3eafbe3ccdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
xor x26, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xa75597adfb34c3af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
xor x21, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x4, 0xc8cb67439636fb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
xor x4, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x11, 0x3c99948719a2beb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
xor x11, x13, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x3ffa17ef640313cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x10, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x21, 0x9e0f35c62aa1a258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
xor x21, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x19, 0x62be0fa30cdb48a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
xor x19, x23, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x28, 0x4e96bcd2fda800ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
xor x28, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0xfbeeb8dcf24806d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
xor x16, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x9, 0x9458beaa14c75537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
xor x9, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x8, 0xdb601c2aa0ca1cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
xor x8, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x12, 0x271949411e822d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
xor x12, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x9f48e720864cc646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
xor x27, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x15, 0x6da38bb7b2bba98f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
xor x15, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x4, 0x15c21c346926b731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
xor x4, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x4f77f904e88b1987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
xor x7, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0xc3909eddec20d819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
xor x10, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0x79ad131a67d14b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
xor x3, x6, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x9211ae472b35d1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
xor x2, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x11, 0x901ba7711abcf035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
xor x11, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x88c3e574b8ab0e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x9, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0x99fd7e5c8d6eff78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
xor x21, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x14a3ff311a9b70e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
xor x15, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x14, 0x1e819ec9a7d28be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
xor x14, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x3, 0xb351f0c4cb486428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
xor x3, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x22, 0x9c82994f39e44fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
xor x22, x19, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x16, 0x0c6710ca5c135136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
xor x16, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x11, 0x7195a8ca382e7c22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
xor x11, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x29, 0x4a3c5743554167e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
xor x29, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0x1f55429a0e13e50d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
xor x24, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x15, 0xccae415925eb721c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
xor x15, x16, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x552cf9b0466bcb55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
xor x18, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xdf6aa9a67de7c022 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
xor x23, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0x69b88d30b84921e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
xor x5, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0xbd340ceb79f3bc53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
xor x3, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x9, 0xce5b6ce40f94d274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
xor x9, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x2113cf7bcacc5c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x23, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xa881b02a8512e9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
xor x15, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x8, 0xd4199a2f4d6fe98c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
xor x8, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x21, 0x269fe54ca2f3ac96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
xor x21, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x1, 0xbcf355c53f0de1de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
xor x1, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x2, 0x56f8804024e2b4ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
xor x2, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x22, 0xa469aa295f350c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
xor x22, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x5, 0x84d81cf8e631e5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
xor x5, x12, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x28, 0x36ef87f22348fdd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
xor x28, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xe44c27fca5c7f61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
xor x18, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x25, 0xdfa4076360d586fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
xor x25, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0x10c3f2a25b837cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
xor x26, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x25, 0xc180ac38a6433988 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
xor x25, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0x6d56879b0c54679c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
xor x18, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0xfb3290954a2dc33a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
xor x10, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x18, 0x70080d6c7b8aead3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
xor x18, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x81a4eee6daec6eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x4, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xd23ced0c65742fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
xor x30, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0x62e74c564abcd32e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
xor x30, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x91e904e1684f2bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
xor x27, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x10, 0x479a6a09a919f080 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
xor x10, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x15, 0x7822601801165d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
xor x15, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x25, 0xec05dd9707631903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
xor x25, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x10, 0x3f9f5f04ac8d3877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
xor x10, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x20, 0xb84c0862776acc80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
xor x20, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x30, 0x8f3a34d5d9dc6cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
xor x30, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x31, 0xfa02581e17ebe753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
xor x31, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x8, 0x23572b5d0c5253ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
xor x8, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x24, 0x008f0da09fe531ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
xor x24, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x17, 0x241a5601fa0ea079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
xor x17, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x15, 0x1e806f97e08646fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
xor x15, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x22, 0x322b5d308f775567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
xor x22, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8cd861fd57d70e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x7, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x29, 0xb7300f8b86839fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
xor x29, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x14, 0xf41202504fb1a2ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
xor x14, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x16, 0x4f8f86c6b5e8e233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
xor x16, x4, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x22, 0xefae877ee8f4909e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
xor x22, x8, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x22, 0x47b7cee2542c36f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
xor x22, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0xfa729eb030ff0db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
xor x28, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x9, 0xa34cda924c305c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
xor x9, x18, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x11, 0x485856ab090a26c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
xor x11, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x13, 0x3dbca2a1fab79e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
xor x13, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0x9eb17c664336aa67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
xor x2, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x29, 0x100ea2642ef049ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
xor x29, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x5, 0x364550a4b32d9232 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
xor x5, x27, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0x03ed5b73ac83f4e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
xor x16, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x9, 0x8067fc945f7bac8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
xor x9, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x31, 0x87ad55405113b0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
xor x31, x18, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8705029728de9a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x28, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xd90888647493b578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
xor x26, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xff1b6a589402d81e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
xor x28, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x10, 0x62d2a72b48bac124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
xor x10, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x1, 0xd3196a93682c505f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
xor x1, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x13, 0xb4825341153f12d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
xor x13, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x13, 0x1c01bc71bc0fd96b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
xor x13, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x19, 0x9c41b0661b1c9b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
xor x19, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x15, 0xb5ead684735b9c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
xor x15, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x12, 0xd740e193965da9c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
xor x12, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x14, 0xf5d49de1d4940c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
xor x14, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x32358e49c94072b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
xor x6, x1, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x18, 0x11d01ef942aa9e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
xor x18, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x4a317faa84321b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
xor x18, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0xf0ec869b3a0945ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
xor x16, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x17, 0xc5ddcdd7d94d1e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
xor x17, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0308fc77ecb58169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x20, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x18, 0xa0b85975377d2eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
xor x18, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x9, 0xfc23f86b066eef9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
xor x9, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0xa19eb791526e83dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
xor x3, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0x418b026288bcd4f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
xor x23, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x17, 0xe368a9a67fd70011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
xor x17, x27, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x21, 0xab2f1ad87c3ddceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
xor x21, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x24, 0x995407e965f1ffa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
xor x24, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0xb883e4864373a315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
xor x8, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x23, 0xa4d0ec25916e7e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
xor x23, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x21, 0xe5f8b31a52050e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
xor x21, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x15, 0xf8c2abb735942dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
xor x15, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0x04f8358a90b3f3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
xor x30, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x16, 0x31c126a951dc14cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
xor x16, x3, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x2bbd4e1667b685ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
xor x28, x1, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x22, 0x1e81ad69e9d8064d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
xor x22, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xd2902994782fd546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x10, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x23, 0x8affd0db6485f4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
xor x23, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0xdc45bb80d0f37571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
xor x16, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0xf5eaf1b64318bef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
xor x10, x11, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x9, 0x6180100718b6b485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
xor x9, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x22, 0x7f321667c85a84ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
xor x22, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0x24aba78feab10557 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
xor x23, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x96315cb12e071416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
xor x21, x15, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0xca1f8a152e994d29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
xor x24, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x13, 0x63b7a91f181fa04e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
xor x13, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x13, 0xe767f0948a014421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
xor x13, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x27, 0xf9d433ab2e76a28c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
xor x27, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0x9e1aa37174ca6084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
xor x26, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x6c24ade86d7d4b5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
xor x20, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x5d939649b985e002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
xor x19, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x11, 0x27506e81a3f3353f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
xor x11, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xe3418dc27f18c709 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x24, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0xef5501777a44e670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
xor x17, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x12, 0x89b8bc467fc5aef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
xor x12, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0xb2c341c5d22e3938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
xor x11, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x13, 0x60edfc5105b16551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
xor x13, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x16, 0xc0d8ea5248258f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
xor x16, x12, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0xd01a0860e9ab9a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
xor x24, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x11, 0x9585e97c05ffbf8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
xor x11, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x1, 0x81f020e8eb9fa301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
xor x1, x25, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x12, 0xc1cdd5e394e5536d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
xor x12, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x31, 0x2d3e81ea57d77932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
xor x31, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x16, 0x82e8212581e90e0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
xor x16, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x4, 0xb527ca57bf7cef41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
xor x4, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x25, 0x104db399c1be5483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
xor x25, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x23, 0x4db1108163f439e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
xor x23, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x19, 0x57d930a320f81c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
xor x19, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xcc2b851c9c99f90b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x21, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x27, 0xc3f41c33ebebe163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
xor x27, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x21, 0xc8a7af6ee2cc2f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
xor x21, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x16, 0x6528fcbb834030b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
xor x16, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x17, 0x3ed7bf04fbaf7e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
xor x17, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x9, 0x0b87e925b5548f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
xor x9, x27, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x30, 0x9c0ed504e4ff8361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
xor x30, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x21, 0x19a1b9964a8d065d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
xor x21, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x1, 0xfc38364b19a58634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
xor x1, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x1b49d0b407a576b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
xor x29, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x22, 0x88848cc7f434a739 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
xor x22, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x19, 0x310935294717d3a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
xor x19, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x83abc3242dc6eacb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
xor x3, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x17, 0x3608c4266603bb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
xor x17, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x10, 0xfa9ccebeb37e4b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
xor x10, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x16, 0x52699389b72f9eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
xor x16, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x88b9f97f9c0f80fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x19, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x17, 0x0defc29d1c270e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
xor x17, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x22, 0x92e28d94a759c41f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
xor x22, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x24, 0x177c31c7fda2f089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
xor x24, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x31, 0xe0db3e86a9c6c406 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
xor x31, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x4, 0x68de71a109ab6111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
xor x4, x12, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6f50b02036e9cd73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7031bbef928273e9 # initialize rs1
li x6, 0x4b66a26a4b221adf # initialize rs2
xor x0, x0, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc3be53f34ee7fff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x703f8859fe0fc4fa # initialize rs1
li x6, 0xdecbe1c41a87761c # initialize rs2
xor x1, x1, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbe515858c6495bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1653dd1dee41001f # initialize rs1
li x10, 0x997158632ad73544 # initialize rs2
xor x2, x2, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0fffa4dabe0017f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7692edce5706aa37 # initialize rs1
li x21, 0xd41b1ed7e4243bf8 # initialize rs2
xor x3, x3, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x2826dcbb8150843d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb9b02d22ac7707db # initialize rs1
li x16, 0x32cc2acf28d053a4 # initialize rs2
xor x4, x4, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xea7102b08ed1dd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7b9ffd5258e5a3aa # initialize rs1
li x27, 0x03b923fbb748dfa3 # initialize rs2
xor x5, x5, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xfeb0ac4fb9ee278d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x84bfd4b2af0747ff # initialize rs1
li x27, 0xdcfad1cc0fb71b52 # initialize rs2
xor x6, x6, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x68db17b9d0214ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x04cb90984a3f3568 # initialize rs1
li x6, 0xf330b39a4a792fcc # initialize rs2
xor x7, x7, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa0173975cd659896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa76e166fb2b293c6 # initialize rs1
li x18, 0xea75613110a4486a # initialize rs2
xor x8, x8, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xfacfa804f3a62282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x17aabbbd97caff94 # initialize rs1
li x29, 0x9b4e38cfd5bf90f1 # initialize rs2
xor x9, x9, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbbfcf58ed4c53bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5148be1750dea1ee # initialize rs1
li x13, 0x0d1ba2e36e18ff29 # initialize rs2
xor x10, x10, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x28ec3bed83791ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x69f1deb8f9c4b6bf # initialize rs1
li x16, 0x627baf84bfba7f0b # initialize rs2
xor x11, x11, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9223358de5a74559 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc389a530c6c41b05 # initialize rs1
li x3, 0xcc1c16d9970b39b7 # initialize rs2
xor x12, x12, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xfc11321d8e3f3e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x42d5d9a2c90b5ebe # initialize rs1
li x7, 0xcc12547eb1ff88c7 # initialize rs2
xor x13, x13, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x75b2dab5b783e65e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6c70b5442a6f6b5f # initialize rs1
li x25, 0x4ddcafd7560ea866 # initialize rs2
xor x14, x14, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdc49ac1724aee5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x08b52c04d05e7919 # initialize rs1
li x17, 0x5b33f7d84cc26dec # initialize rs2
xor x15, x15, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6ac304e27652901d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7e6648b4e860fab6 # initialize rs1
li x29, 0xbaab7b4e3438273b # initialize rs2
xor x16, x16, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd182d05ccbe1c3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x930184e10cdad773 # initialize rs1
li x11, 0x3ebaabb002060553 # initialize rs2
xor x17, x17, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x27c591149cd40a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x18eabca33ca93750 # initialize rs1
li x15, 0x991ba01d750280b9 # initialize rs2
xor x18, x18, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3d59fa5aff9a8fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc2acd62ce1f9d0a1 # initialize rs1
li x9, 0x178a851b8ce04a77 # initialize rs2
xor x19, x19, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe89cdd71b57c275e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xccc8979d9f1d5b42 # initialize rs1
li x12, 0xb143e919d551563d # initialize rs2
xor x20, x20, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x38d5934de9c56a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xefeb28f3e28a4b60 # initialize rs1
li x2, 0xe956a78359fa4553 # initialize rs2
xor x21, x21, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6b2c457cbfe44ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x65f15a6afb5252ee # initialize rs1
li x10, 0x075928b4cdac4ab1 # initialize rs2
xor x22, x22, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x42c24a901c928cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x60b053e155d2693d # initialize rs1
li x8, 0xfc339e7eb868acdf # initialize rs2
xor x23, x23, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf05deeec7f4948f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1392ba73fb070229 # initialize rs1
li x14, 0x96762e630ef7ecc5 # initialize rs2
xor x24, x24, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x60c752d8a41968f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x467344256374d362 # initialize rs1
li x7, 0xbce72d6d6f1eabb0 # initialize rs2
xor x25, x25, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x282cdc069536bbd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x933df9b9f23a20e9 # initialize rs1
li x14, 0x8cff1eb63a57ce76 # initialize rs2
xor x26, x26, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7e183e94174e4d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe82b55863aa7707b # initialize rs1
li x13, 0x2c582e9924bb0e5c # initialize rs2
xor x27, x27, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6863e2b4e1bc893e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3776167ad40e3ee3 # initialize rs1
li x31, 0xed3850c69e563a42 # initialize rs2
xor x28, x28, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xea226742c1c71fea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x51b660e873f128c1 # initialize rs1
li x11, 0xfdbc5774586c4a3d # initialize rs2
xor x29, x29, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xfe79f944fc58f309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdaf9c90dc6689f2d # initialize rs1
li x13, 0x150723a98f211b43 # initialize rs2
xor x30, x30, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x083c13dab01442fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x704d044860e6c80b # initialize rs1
li x7, 0x9b14bd5e97143ede # initialize rs2
xor x31, x31, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x368ef4e66ccafad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2e5733b32639b012 # initialize rs1
li x0, 0x24d98340f423f1f2 # initialize rs2
xor x0, x6, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x4e32c491f31ab41f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd6162a28759c7549 # initialize rs1
li x1, 0xf9b29ee87639977c # initialize rs2
xor x1, x31, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xb1f72e8b96bb576b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2d2e9198810ebd69 # initialize rs1
li x2, 0x65d1e7f03c47a48e # initialize rs2
xor x2, x9, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xa96e8727cbe9ab6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2a87911cb7d5b286 # initialize rs1
li x3, 0x61a7fd215a41c2df # initialize rs2
xor x3, x22, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xfe97f8aa2f6c735f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd4e9889822db4604 # initialize rs1
li x4, 0xf3bdd8b62ffcda12 # initialize rs2
xor x4, x23, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x47d0f371d01f5b5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb2665e95db22f20d # initialize rs1
li x5, 0xa83618a9f15d7970 # initialize rs2
xor x5, x20, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x8169fc8744f0d12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x679390d7df55b47e # initialize rs1
li x6, 0x17576d71f3598624 # initialize rs2
xor x6, x25, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x51d0d48d2cb86f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4180891263eac0d5 # initialize rs1
li x7, 0xeaaa0aced11b2cce # initialize rs2
xor x7, x2, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x21eaed77bbe1edd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5e81bb78719c09ba # initialize rs1
li x8, 0x225c613b92549fca # initialize rs2
xor x8, x4, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x0f5225c7ccea0c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xea819dfd35fdb9d7 # initialize rs1
li x9, 0x9a671112a1e5cc00 # initialize rs2
xor x9, x24, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x93645581df9f1019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf52fce9b3b0cae6a # initialize rs1
li x10, 0x529653966a42218d # initialize rs2
xor x10, x30, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x33b218513f089403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6e3cfb0617d47685 # initialize rs1
li x11, 0x1b5dd50374002e7f # initialize rs2
xor x11, x9, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x18fbda83436d7734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf958e6e8b8a34f41 # initialize rs1
li x12, 0xc22ab36d1423f0f8 # initialize rs2
xor x12, x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x3d2b84ddd659529e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5d0bba63810be1ea # initialize rs1
li x13, 0xf4e53073111f59ce # initialize rs2
xor x13, x14, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x342e97e302ad2254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x26197f4334a81357 # initialize rs1
li x14, 0x825c135f34c1df5d # initialize rs2
xor x14, x22, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x9861b5eda5e0c4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb137628061474def # initialize rs1
li x15, 0x8e59ddce76946977 # initialize rs2
xor x15, x12, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xa913b28ac922e8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x590843976123ed70 # initialize rs1
li x16, 0x182826aa06e35af9 # initialize rs2
xor x16, x19, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x07957e753833061b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5d63999aadafc214 # initialize rs1
li x17, 0x139ddb113f84af72 # initialize rs2
xor x17, x26, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x611fecf871b3e3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x570eb266743c93db # initialize rs1
li x18, 0xf7ad1ea97086581d # initialize rs2
xor x18, x28, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x29faa580b0cf5c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x24a820aea38b6845 # initialize rs1
li x19, 0x72a67b8dd7d148c9 # initialize rs2
xor x19, x7, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xd50f367d8337b3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0c71d98d109aaadd # initialize rs1
li x20, 0x39de774621411be6 # initialize rs2
xor x20, x9, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xdda8c53f281305e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x471b6e6ff4513442 # initialize rs1
li x21, 0xd1c19dcd82c52ee3 # initialize rs2
xor x21, x13, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xfcf4d0892b93ce03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x38e6bf16206c1687 # initialize rs1
li x22, 0x14271a57d060f125 # initialize rs2
xor x22, x23, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xb69b4670779f65ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x38513adcae741c4b # initialize rs1
li x23, 0xd3217c4f0b94b3ca # initialize rs2
xor x23, x6, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xf6f53e89d4956d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb12cee28c828526a # initialize rs1
li x24, 0x81cf843610d49389 # initialize rs2
xor x24, x22, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x27ed013c1fe8ffa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbc9c6daae7889390 # initialize rs1
li x25, 0x40b61c8bb1d42864 # initialize rs2
xor x25, x24, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x892eddf317b88c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb7433b5c80766347 # initialize rs1
li x26, 0x3fcabe0fc71beab8 # initialize rs2
xor x26, x1, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x963c70889f250393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6e7f11f20d6fd910 # initialize rs1
li x27, 0x1e0e4c8b88a0c988 # initialize rs2
xor x27, x22, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x213512ad2468ad9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0dba3ae86be135ee # initialize rs1
li x28, 0x0cc60d489f723d20 # initialize rs2
xor x28, x16, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa4c91dd4c751f29f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4b635e5005724f91 # initialize rs1
li x29, 0x56a485e5899009d4 # initialize rs2
xor x29, x12, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x82994bf014003009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6b430e993e61b227 # initialize rs1
li x30, 0x25246e056a1ff334 # initialize rs2
xor x30, x2, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x869e65d6e3c66e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdb0c0266f9c0969e # initialize rs1
li x31, 0x9ba5c4ce7002a47c # initialize rs2
xor x31, x1, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xee38c1feb1b5515a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2bffd5315802b2bf # initialize rs1
li x0, 0xb88e328371560964 # initialize rs2
xor x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x90dced90351ccab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x58504319908deac1 # initialize rs1
li x1, 0x582bd1257cd8aefa # initialize rs2
xor x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8c2108ee5d4409e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa6276a2e5ccf73c0 # initialize rs1
li x2, 0xc66aced9481fc330 # initialize rs2
xor x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x04199d2b8f55c291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xeff79b1882e4b529 # initialize rs1
li x3, 0x4359a68e7db59f45 # initialize rs2
xor x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xabed4681d4ee1566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfcc0d623d5edc2c4 # initialize rs1
li x4, 0xc16ad3ded53f295a # initialize rs2
xor x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x4876b3df9e61465b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x97172671c176fd39 # initialize rs1
li x5, 0x58789507423021b1 # initialize rs2
xor x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xe9969ee6c1818e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x13e388237c205627 # initialize rs1
li x6, 0x582db55c57ede022 # initialize rs2
xor x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x5c66b23261c559cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf30507d0bea152bb # initialize rs1
li x7, 0x38a7588eae9398a5 # initialize rs2
xor x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x46eb05acdfc5651a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8055bcdc2f88f199 # initialize rs1
li x8, 0xc6876119526e4807 # initialize rs2
xor x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6eb3d5e51e2c61be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb193fb0663e163bd # initialize rs1
li x9, 0xf5073e82d9e82d39 # initialize rs2
xor x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xd0fd02f5ba7073f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8145acaf7b591b63 # initialize rs1
li x10, 0x4be24a3e205f7a8b # initialize rs2
xor x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2858ba9e9e5e92d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2abab03357536078 # initialize rs1
li x11, 0x3d8248a45a36c44a # initialize rs2
xor x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x85869f92a2eeac8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x22a71aa83991614e # initialize rs1
li x12, 0x792a625a87465b3c # initialize rs2
xor x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xce992d04d91f9b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x258936257c1d0b2b # initialize rs1
li x13, 0x06240671bf25ec35 # initialize rs2
xor x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xfa95f40b336cd5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1e2ce3f400a4b6c6 # initialize rs1
li x14, 0xc6b3fd664afcd78d # initialize rs2
xor x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7f010f1083309dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb81782c08e68d6b1 # initialize rs1
li x15, 0x93c882a19f520697 # initialize rs2
xor x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xb4abf60955aabbfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x49501e96b1ee633b # initialize rs1
li x16, 0xd52874e75812d7ba # initialize rs2
xor x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x64a338180cf7b199 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x617d42fa06950451 # initialize rs1
li x17, 0x329157e0242d8064 # initialize rs2
xor x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x99cfeb9dcb969c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa7cb5bffa6f38061 # initialize rs1
li x18, 0xe7926ce1266d6ad4 # initialize rs2
xor x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x1a68121ba65ec1a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x09e71b23e75d4f70 # initialize rs1
li x19, 0x9f091fac50560250 # initialize rs2
xor x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xea3192ac0c7bc56d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5fd8404fb04d0b25 # initialize rs1
li x20, 0x63bb19560466cf72 # initialize rs2
xor x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x1ea7a500cc341888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5007927f44d6af8d # initialize rs1
li x21, 0xeada6c07c0adbfe4 # initialize rs2
xor x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe4f0126d07ccff3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf891054dab60bab1 # initialize rs1
li x22, 0xe43b4aad67d558a2 # initialize rs2
xor x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x78de652f67ce8d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x15c63d56ec183225 # initialize rs1
li x23, 0xee61853be46b7aba # initialize rs2
xor x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xee5b2d1cc911a26e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe8a8d0eeca7ba9d3 # initialize rs1
li x24, 0x183f802702d06707 # initialize rs2
xor x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3ecf3e2794564ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x987bb2733503f6bd # initialize rs1
li x25, 0x1510600c579fd1a4 # initialize rs2
xor x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xbe34c3b47ae197fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x548b80fd75460f4b # initialize rs1
li x26, 0x15193109370be0e0 # initialize rs2
xor x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x055d59062b148774 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4d526cffea144095 # initialize rs1
li x27, 0x03244192781bb721 # initialize rs2
xor x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xfad96c88cded677c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcdb0e15e1c34b096 # initialize rs1
li x28, 0xb4a79e384b67c21f # initialize rs2
xor x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x55822dc29f836e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa486e266d7e3b20f # initialize rs1
li x29, 0x4a8bcfa96c61fc4b # initialize rs2
xor x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6f3f7cc3951f4d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x065dc17f7061c1b8 # initialize rs1
li x30, 0xc2be8764004b2184 # initialize rs2
xor x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd1f5054d4dd5a5de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa373afd8510e31ed # initialize rs1
li x31, 0x99dfb3dd71b10b7c # initialize rs2
xor x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x29, 0x75d06a8df0c21d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x727ad8136b7beda8 # initialize rs1
li x0, 0xe4cfc5ee293580d8 # initialize rs2
xor x29, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x8, 0x7e0bc9a7ba9eb2e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbb2da96eb7748bf1 # initialize rs1
li x1, 0x4733f3a1b10b8771 # initialize rs2
xor x8, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x22, 0x171f2cc18607f9fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4efb8718864f5ded # initialize rs1
li x2, 0x9ad5e24ad921caf4 # initialize rs2
xor x22, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x15, 0x5d7ec9836156b70e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1b77901b1a844c92 # initialize rs1
li x3, 0x968b4457af5fbea6 # initialize rs2
xor x15, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x17, 0x441cc3b669e46ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x90b1375fed4dee1d # initialize rs1
li x4, 0x1b7fd11438483e3a # initialize rs2
xor x17, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x31, 0xd0876fb6384858bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc39d4198ba1b9986 # initialize rs1
li x5, 0x827d896bbdd02a69 # initialize rs2
xor x31, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x7, 0xd91c823d905afe6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7edbdd4b0c709be8 # initialize rs1
li x6, 0xbca7e138c256aded # initialize rs2
xor x7, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x11, 0x9ffbc26fffeb95a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0b7aaeeb9bc5156d # initialize rs1
li x7, 0xc4ffe4c3056c2947 # initialize rs2
xor x11, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x28, 0x41da17ff0d704b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe55f062cd113997c # initialize rs1
li x8, 0xeca98ce12f6d8b2e # initialize rs2
xor x28, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x26, 0xc360fb4dfad48dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x866f56bb53197580 # initialize rs1
li x9, 0x55d50cd2fb621745 # initialize rs2
xor x26, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x28, 0xb15e5c6b564d1ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1079586e23905010 # initialize rs1
li x10, 0x7cfcb7c954332adc # initialize rs2
xor x28, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x27, 0x78dfa0eda285f821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x880d3bb96d2fdcb1 # initialize rs1
li x11, 0x82f86fe74e31e722 # initialize rs2
xor x27, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x22, 0x51339b5d1d5b2314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1b2d070f238a2054 # initialize rs1
li x12, 0xa9a93fede1829ceb # initialize rs2
xor x22, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x28, 0xc5e2b6d04f67fe6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xebaf7fcdde966b67 # initialize rs1
li x13, 0x70afecd26d8db186 # initialize rs2
xor x28, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x28, 0x6093e3c82d640337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf4cd61bad52c5784 # initialize rs1
li x14, 0xa0bbca022a166fc6 # initialize rs2
xor x28, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x1, 0x2d749c9a0c454e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa4f6d83bdd5b2c98 # initialize rs1
li x15, 0x9c9a7b0b2e4be074 # initialize rs2
xor x1, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x31, 0xfa3465f91097b927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc4a389339bbbc613 # initialize rs1
li x16, 0x64702027926b4a51 # initialize rs2
xor x31, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x31, 0xc89fb75f214c86c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdf18406a0dd38b80 # initialize rs1
li x17, 0x7ba76d4ddb690386 # initialize rs2
xor x31, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x1, 0x8a0d7b75dc4b61dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5811538085d8baf3 # initialize rs1
li x18, 0x6470bf67bf30bdee # initialize rs2
xor x1, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x31, 0xe695a3a0a7b90048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd6f09215a764b5d0 # initialize rs1
li x19, 0x4bc5eca24afda0ed # initialize rs2
xor x31, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x13, 0xa8f34d636897b9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x19466707e1f48d82 # initialize rs1
li x20, 0x278a5e001729d928 # initialize rs2
xor x13, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x5, 0x1307d12a6bf12f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x839d64b0fa2562e9 # initialize rs1
li x21, 0xc3bc325a892337be # initialize rs2
xor x5, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x23, 0x2dd2eba656e7f38c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x85dce6b6a53f647d # initialize rs1
li x22, 0x69ae27f02d4c56c1 # initialize rs2
xor x23, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x9, 0x0223dc248d123bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb3bf7ae6be629490 # initialize rs1
li x23, 0x61298c1e21930a3d # initialize rs2
xor x9, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x14, 0x11f49d1c7b6685a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8874f7a8cc885322 # initialize rs1
li x24, 0xa8fa2077dd3b3e6b # initialize rs2
xor x14, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x9, 0xade697596075e833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc840c516d804c0c8 # initialize rs1
li x25, 0xbd60e9a64d17f359 # initialize rs2
xor x9, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x18, 0x1357f2e54ba8135a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x895bafcfc2eb2f32 # initialize rs1
li x26, 0xb762fbc2bc067881 # initialize rs2
xor x18, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x25, 0x079127fd96aa00e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf20d0a2ee0eca96b # initialize rs1
li x27, 0x90685e2f676f071c # initialize rs2
xor x25, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x10, 0xc77d4622cf3a9133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdf83ceae26f64fc5 # initialize rs1
li x28, 0x4104f5631d076fc5 # initialize rs2
xor x10, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x16, 0x17cce278fc9c566d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xda0ae94881e61c67 # initialize rs1
li x29, 0x0f35a9a2ffe570e7 # initialize rs2
xor x16, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4256fe86ede4e3ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2ba0afada83980c9 # initialize rs1
li x30, 0x8968a24530e9c99f # initialize rs2
xor x30, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xb33131798d60e98f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2bcaaae3d3fe513a # initialize rs1
li x31, 0x7f58f9fe31de9479 # initialize rs2
xor x31, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x727d17a5f9b57603)
li x19, 0x4b8f16128d60de25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x727d17a5f9b57603 # initialize rs1
li x2, 0x9075c47721de41e4 # initialize rs2
xor x19, x17, x2 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x5a58386eb56f3736)
li x9, 0x87c1cf454f4e6bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa5a7c7914a90c8ca # initialize rs1
li x26, 0xbdc43d110aa146a9 # initialize rs2
xor x9, x12, x26 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x500d4d581b72fa06)
li x24, 0x6b72958c4e05ac70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc6b37940b19c01ed # initialize rs1
li x6, 0x500d4d581b72fa06 # initialize rs2
xor x24, x13, x6 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x3a51505bb7b982a8)
li x31, 0x1b19b9a25b173f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0c0bb2f5407498e3 # initialize rs1
li x5, 0xc5aeafa448467d58 # initialize rs2
xor x31, x14, x5 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
