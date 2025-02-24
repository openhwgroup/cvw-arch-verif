///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/M//WALLY-COV-rem.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.079614
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x003c3ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc8b1b4fe # initialize rs1
li x2, 0xb1036550 # initialize rs2
rem x0, x18, x2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x481b6025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x839bf88f # initialize rs1
li x28, 0xb2e165e1 # initialize rs2
rem x1, x13, x28 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xae29652c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x84179b56 # initialize rs1
li x14, 0xc31bc1ea # initialize rs2
rem x2, x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x76bf2b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd307435a # initialize rs1
li x24, 0x02b12eaf # initialize rs2
rem x3, x9, x24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x2b72ec70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x71bf951c # initialize rs1
li x15, 0x542918ba # initialize rs2
rem x4, x10, x15 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x8db2de91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf4720047 # initialize rs1
li x22, 0x9e46c552 # initialize rs2
rem x5, x10, x22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xba4899ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xebd4c03a # initialize rs1
li x28, 0x631c783f # initialize rs2
rem x6, x23, x28 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x553137b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcfefde41 # initialize rs1
li x28, 0x11e062b0 # initialize rs2
rem x7, x19, x28 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc2db2f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1fa42255 # initialize rs1
li x22, 0x7bd4a2cc # initialize rs2
rem x8, x30, x22 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2ffb54db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc6ef594a # initialize rs1
li x11, 0xb2236c7b # initialize rs2
rem x9, x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb42d7ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3fb03548 # initialize rs1
li x16, 0x690eeb30 # initialize rs2
rem x10, x17, x16 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x42564ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xab01cdb6 # initialize rs1
li x1, 0x1f16cb7c # initialize rs2
rem x11, x31, x1 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xef692277 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0e32780a # initialize rs1
li x17, 0x24e10952 # initialize rs2
rem x12, x31, x17 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x48318ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8fc4c71d # initialize rs1
li x21, 0xa6e92456 # initialize rs2
rem x13, x27, x21 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x50b2fda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe7844b77 # initialize rs1
li x31, 0x61b033dd # initialize rs2
rem x14, x30, x31 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x11cff1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x840255c3 # initialize rs1
li x4, 0x30b97a2d # initialize rs2
rem x15, x23, x4 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x53bbda33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbf631519 # initialize rs1
li x11, 0xea4fa56d # initialize rs2
rem x16, x6, x11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x45b7d447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80d911fb # initialize rs1
li x19, 0x8e1f254a # initialize rs2
rem x17, x16, x19 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x5e2061d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdd0bc99b # initialize rs1
li x30, 0xdc54571a # initialize rs2
rem x18, x23, x30 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x99cb1087 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7b2a7402 # initialize rs1
li x21, 0x25c5952e # initialize rs2
rem x19, x25, x21 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xcd4aa934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed3c974f # initialize rs1
li x24, 0x93e20506 # initialize rs2
rem x20, x10, x24 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xcc1fc87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb16192b3 # initialize rs1
li x13, 0xe9344b04 # initialize rs2
rem x21, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xa0a3d5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x541d6bb2 # initialize rs1
li x1, 0x85252f44 # initialize rs2
rem x22, x29, x1 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf62f93a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xab91a4e1 # initialize rs1
li x27, 0x776e65d3 # initialize rs2
rem x23, x18, x27 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x4f1997ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfe797d65 # initialize rs1
li x9, 0xb7d9af2c # initialize rs2
rem x24, x22, x9 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xf4e5c2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x567a9c22 # initialize rs1
li x31, 0x7c94e899 # initialize rs2
rem x25, x14, x31 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xaedbbe0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6544ced9 # initialize rs1
li x7, 0x7857fdf6 # initialize rs2
rem x26, x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x26e52aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0824d7cf # initialize rs1
li x13, 0xf5eb0f41 # initialize rs2
rem x27, x19, x13 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xd255a839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3a1d22a4 # initialize rs1
li x22, 0x4a33a90a # initialize rs2
rem x28, x16, x22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x6adc7aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7bfde838 # initialize rs1
li x8, 0xd426ef31 # initialize rs2
rem x29, x6, x8 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x403e3971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8b2abe71 # initialize rs1
li x6, 0xab6009f5 # initialize rs2
rem x30, x8, x6 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x22482860 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7a592424 # initialize rs1
li x20, 0x6dbad2ef # initialize rs2
rem x31, x17, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x10, 0x30a4b46d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x092af65f # initialize rs1
li x3, 0x1677fd66 # initialize rs2
rem x10, x0, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0x86f58fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55e54aba # initialize rs1
li x17, 0x9ee69ad9 # initialize rs2
rem x26, x1, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0x123a1a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x77c2b846 # initialize rs1
li x27, 0xc4c3dbee # initialize rs2
rem x10, x2, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0xb5b00a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0c7ce1ea # initialize rs1
li x28, 0x896ab812 # initialize rs2
rem x16, x3, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x21, 0x6b804e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb7f093e9 # initialize rs1
li x10, 0xc4f92029 # initialize rs2
rem x21, x4, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x24, 0xde5aa7ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfd8b8ad0 # initialize rs1
li x7, 0xc1b8a0ee # initialize rs2
rem x24, x5, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x3, 0x4447cddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3cb640aa # initialize rs1
li x8, 0x928bdd6c # initialize rs2
rem x3, x6, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0xc142c677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3054cdc2 # initialize rs1
li x22, 0xbac2ecf1 # initialize rs2
rem x5, x7, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x8d189dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x18130049 # initialize rs1
li x19, 0x2010f088 # initialize rs2
rem x9, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0xc5dd1d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6253a6ba # initialize rs1
li x27, 0x8556ca8d # initialize rs2
rem x3, x9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x267d93d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdac820cd # initialize rs1
li x16, 0x2d6c3682 # initialize rs2
rem x3, x10, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0x3e0c51ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7d39be84 # initialize rs1
li x9, 0x5646674c # initialize rs2
rem x4, x11, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xaff38748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfe92ef3b # initialize rs1
li x15, 0x35975ca2 # initialize rs2
rem x13, x12, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x54895f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa04f7aa6 # initialize rs1
li x4, 0x91398414 # initialize rs2
rem x10, x13, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0xbc5aed95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3c75a817 # initialize rs1
li x8, 0xfa57dbc5 # initialize rs2
rem x6, x14, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x58f1cdd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4793b3db # initialize rs1
li x25, 0x972c602d # initialize rs2
rem x21, x15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0xaeacd28b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf17d8573 # initialize rs1
li x10, 0x45f1d5c3 # initialize rs2
rem x5, x16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x20, 0x84695f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6b2c4e63 # initialize rs1
li x26, 0x456883eb # initialize rs2
rem x20, x17, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0x296f9c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8a2daa74 # initialize rs1
li x10, 0xa3a1e708 # initialize rs2
rem x19, x18, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0xd3d3127c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2544bc00 # initialize rs1
li x15, 0x08a6915e # initialize rs2
rem x12, x19, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x26, 0x29b2eab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaf55e636 # initialize rs1
li x19, 0x243b2dfc # initialize rs2
rem x26, x20, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x20, 0x71977425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc3a3c481 # initialize rs1
li x25, 0xb22f23d7 # initialize rs2
rem x20, x21, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x2, 0xc40ee358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5447674d # initialize rs1
li x16, 0x8e8caecf # initialize rs2
rem x2, x22, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x884fd6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2173c63a # initialize rs1
li x10, 0x558c1928 # initialize rs2
rem x31, x23, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0x760f7e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf2e2e21c # initialize rs1
li x17, 0xa74291e5 # initialize rs2
rem x18, x24, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xf5121f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7d7a0d14 # initialize rs1
li x12, 0x116608f5 # initialize rs2
rem x11, x25, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x9093e62d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x30c2e609 # initialize rs1
li x10, 0x2f53eab0 # initialize rs2
rem x1, x26, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x13, 0xa7c6b1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe1207a39 # initialize rs1
li x6, 0xa35dfb14 # initialize rs2
rem x13, x27, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x21, 0xde454870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe7dd10ef # initialize rs1
li x7, 0xa7fce21b # initialize rs2
rem x21, x28, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x8, 0x7d9a3eec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6a06e865 # initialize rs1
li x5, 0xf93aae7b # initialize rs2
rem x8, x29, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x18, 0x71094cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaeb844b1 # initialize rs1
li x11, 0x37eb9852 # initialize rs2
rem x18, x30, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x13bb5d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xabe6a5e9 # initialize rs1
li x21, 0x2d83ecbb # initialize rs2
rem x10, x31, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x67a2a02c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2b804cbf # initialize rs1
li x0, 0xda6e6a05 # initialize rs2
rem x3, x30, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x4, 0x8411d9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe77fcbaa # initialize rs1
li x1, 0x444a5ea2 # initialize rs2
rem x4, x30, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x20730542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5e29785f # initialize rs1
li x2, 0x5ef4f700 # initialize rs2
rem x11, x23, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0xefb1ba8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6bb2d3b8 # initialize rs1
li x3, 0x56ad3a6b # initialize rs2
rem x18, x2, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x30, 0x10ecf4e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf56fa93c # initialize rs1
li x4, 0x5251f239 # initialize rs2
rem x30, x22, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x9bb046e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x23fd69c5 # initialize rs1
li x5, 0x4f886e0a # initialize rs2
rem x28, x21, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x27, 0x12f63e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xac3defc8 # initialize rs1
li x6, 0x3cdfbde2 # initialize rs2
rem x27, x12, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x3, 0x1096a0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc2e96a4b # initialize rs1
li x7, 0xc4c0dbc4 # initialize rs2
rem x3, x1, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0xc5c10233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x065a1413 # initialize rs1
li x8, 0x230c92aa # initialize rs2
rem x10, x24, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0xa2005d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc961a69b # initialize rs1
li x9, 0x5497bbef # initialize rs2
rem x15, x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0x93dce8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x738053a1 # initialize rs1
li x10, 0x7c9f8862 # initialize rs2
rem x8, x30, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x7bbc982d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf71c462d # initialize rs1
li x11, 0x68d3b6fb # initialize rs2
rem x24, x4, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0xf7aae24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3c341935 # initialize rs1
li x12, 0x28b434a6 # initialize rs2
rem x5, x20, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x809e4aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb103f08d # initialize rs1
li x13, 0x72302989 # initialize rs2
rem x14, x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0xafc98233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xea5050dd # initialize rs1
li x14, 0xac39652a # initialize rs2
rem x18, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x30eb2067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5d1218b6 # initialize rs1
li x15, 0x8c82b7e0 # initialize rs2
rem x20, x19, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xd74dea8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6220b2cb # initialize rs1
li x16, 0xf54b55ae # initialize rs2
rem x27, x6, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0xdd07d585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf9d2b73e # initialize rs1
li x17, 0xde91706e # initialize rs2
rem x24, x31, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0xd9d5ac4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x977db53c # initialize rs1
li x18, 0xda89e269 # initialize rs2
rem x11, x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x4798cc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x92fb1d4e # initialize rs1
li x19, 0x39a0efa7 # initialize rs2
rem x24, x17, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x9456fbe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xae6a6ece # initialize rs1
li x20, 0xc782abf3 # initialize rs2
rem x7, x4, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x45203e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x06326a3a # initialize rs1
li x21, 0xccae5b0f # initialize rs2
rem x18, x4, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0x50e877de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x56e4c5f6 # initialize rs1
li x22, 0x9e467a9d # initialize rs2
rem x3, x10, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xcda145a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9409f443 # initialize rs1
li x23, 0x841e3235 # initialize rs2
rem x13, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0x7c46eb65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7b9687e8 # initialize rs1
li x24, 0x1175a3ab # initialize rs2
rem x21, x21, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xff5cef78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa9c22754 # initialize rs1
li x25, 0x0e335bfa # initialize rs2
rem x8, x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0xdcd1f96e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x95c45c7a # initialize rs1
li x26, 0xa08ea276 # initialize rs2
rem x24, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x814aae54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x38aa8a7a # initialize rs1
li x27, 0x8a567d01 # initialize rs2
rem x1, x7, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0xeec23286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcc652e44 # initialize rs1
li x28, 0x7d740215 # initialize rs2
rem x14, x3, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0x9351492b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5a01f3aa # initialize rs1
li x29, 0xc1b0e065 # initialize rs2
rem x12, x3, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x9e702064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa52ef039 # initialize rs1
li x30, 0xbdce476b # initialize rs2
rem x31, x8, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0x8bd681a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb5369ab9 # initialize rs1
li x31, 0xa9d33005 # initialize rs2
rem x13, x27, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xcee71e85)
li x22, 0x94cb935e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x94cb935e # initialize rs1
li x0, 0x8b0536da # initialize rs2
rem x22, x2, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x3b0628a7)
li x4, 0x3b0628a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3b0628a7 # initialize rs1
li x15, 0x3b0628a7 # initialize rs2
rem x4, x0, x15 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x8464952f)
li x9, 0x971071b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8464952f # initialize rs1
li x8, 0x8464952f # initialize rs2
rem x9, x23, x8 # perform operation

# Testcase cmp_gpr_hazard raw test
rem x22, x4, x1 # perform first operation
rem x23, x22, x19 # perform second operation

# Testcase cmp_gpr_hazard raw test
rem x8, x31, x29 # perform first operation
rem x12, x27, x8 # perform second operation

# Testcase cmp_gpr_hazard waw test
rem x11, x7, x24 # perform first operation
rem x11, x14, x10 # perform second operation

# Testcase cmp_gpr_hazard waw test
rem x24, x30, x23 # perform first operation
rem x24, x20, x4 # perform second operation

# Testcase cmp_gpr_hazard war test
rem x16, x25, x27 # perform first operation
rem x25, x5, x27 # perform second operation

# Testcase cmp_gpr_hazard war test
rem x31, x11, x23 # perform first operation
rem x23, x7, x11 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0xfda7cee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x0, 0x7e7b699d # initialize rs2
rem x30, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0xf8531a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x4, 0x00000000 # initialize rs2
rem x26, x13, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x387f006f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
rem x29, x13, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x0e39e48f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x0, 0x64363956 # initialize rs2
rem x15, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x20530490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
rem x6, x16, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0xab5ce5ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
rem x14, x31, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x72853084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x0, 0xa0095767 # initialize rs2
rem x10, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0xbda14168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
rem x17, x14, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xf8d36337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
li x15, 0x00000002 # initialize rs2
rem x3, x17, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0x5b4b3198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x0, 0xedc40a8b # initialize rs2
rem x9, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0x3733dc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
rem x6, x29, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x06b9b11e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
rem x29, x26, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x3, 0xd29f0e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x0, 0x3baa8fee # initialize rs2
rem x3, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x6, 0x0b36eff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # initialize rs1
li x4, 0x80000001 # initialize rs2
rem x6, x1, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x24, 0x1b09087f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
rem x24, x26, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x11, 0xce9e497b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x0, 0xb1f5a58c # initialize rs2
rem x11, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x94fbb22c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rem x30, x22, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x10, 0xa9b344e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rem x10, x9, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x31, 0x9a423b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x0, 0x55c08f15 # initialize rs2
rem x31, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x13, 0x33856ad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
rem x13, x10, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x23, 0xafc78b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
rem x23, x4, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x32ad6d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
li x0, 0x43745a55 # initialize rs2
rem x1, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x569cc47b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
rem x17, x12, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x2695cf7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
rem x22, x16, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0xa2603e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x0, 0xadb7aec2 # initialize rs2
rem x19, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x21, 0xf3a5177d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x27, 0xfffffffe # initialize rs2
rem x21, x15, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0x7b9b960a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x8, 0xfffffffe # initialize rs2
rem x17, x19, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x4, 0xe7fc0110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rs1
li x0, 0x57f8d9bd # initialize rs2
rem x4, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x12, 0xaf37fb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # initialize rs1
li x22, 0x5bbc8877 # initialize rs2
rem x12, x2, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0xd2ff913e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
rem x11, x13, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0x11587820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x0, 0x4e7b55e3 # initialize rs2
rem x2, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x630e3cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
rem x17, x8, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x26, 0x08a90970 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
rem x26, x8, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x31, 0x77293df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x0, 0x7f3bb254 # initialize rs2
rem x31, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x9, 0x619731a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
rem x9, x10, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x20, 0x497fe3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x2, 0x55555555 # initialize rs2
rem x20, x18, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0xca89503c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x4, 0xcf8d62ef # initialize rs2
rem x1, x13, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x0b9bfdf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
li x28, 0x6e1b56d2 # initialize rs2
rem x23, x5, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x26bc3a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x23, 0x8b3df2ce # initialize rs2
rem x10, x16, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0xa2221f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000000 # initialize rs1
li x3, 0x233bf94a # initialize rs2
rem x10, x22, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x30, 0x872568ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x4, 0xb43be6ab # initialize rs2
rem x30, x23, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x22, 0x2e56951d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x8, 0x1d408c6c # initialize rs2
rem x22, x26, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x3a920667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x28, 0x59316c6c # initialize rs2
rem x20, x10, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xa357b0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x10, 0xe1b39893 # initialize rs2
rem x28, x22, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x016519fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x31, 0x6f2dc55b # initialize rs2
rem x8, x9, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x30, 0x218892c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x2, 0x87b640fe # initialize rs2
rem x30, x27, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0x02e4581c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x14, 0xf6a89c34 # initialize rs2
rem x3, x5, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x58c17880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x14, 0xd5db817f # initialize rs2
rem x21, x4, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x31, 0xdc2801a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x587e516f # initialize rs1
li x2, 0x00000000 # initialize rs2
rem x31, x28, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x0d6c79c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9cdd8b81 # initialize rs1
li x15, 0x00000001 # initialize rs2
rem x14, x17, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x2b8d35e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x95acc5cd # initialize rs1
li x29, 0x00000002 # initialize rs2
rem x25, x11, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x16, 0x63b63c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1ac22f92 # initialize rs1
li x8, 0x80000000 # initialize rs2
rem x16, x26, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0xcb4fda99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x07bad70b # initialize rs1
li x22, 0x80000001 # initialize rs2
rem x27, x19, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0x67454b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2d414ab5 # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x6, x22, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x16, 0x720064f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x582dc546 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
rem x16, x15, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x9caf3943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa3ba1283 # initialize rs1
li x15, 0xffffffff # initialize rs2
rem x22, x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x30, 0x30b93f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdce9862d # initialize rs1
li x4, 0xfffffffe # initialize rs2
rem x30, x29, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x14, 0x0d4eb093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x757b5323 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
rem x14, x8, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x19, 0x7aec42cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x42d1c2ab # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
rem x19, x6, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0xf9fa55a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x926e3882 # initialize rs1
li x3, 0x55555555 # initialize rs2
rem x14, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x60b11d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x30, 0x00000000 # initialize rs2
rem x2, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0xe23b65bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
rem x2, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0xc39bc0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
rem x24, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x6, 0x7521d1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
rem x6, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x10, 0x9b2e1c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x24, 0x80000001 # initialize rs2
rem x10, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x17, 0x91bca56f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x26, 0x7fffffff # initialize rs2
rem x17, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x28, 0xb090b9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
rem x28, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x7443e60d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
rem x23, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x622a199d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x29, 0xfffffffe # initialize rs2
rem x3, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x9, 0x9e45c8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
rem x9, x13, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0x74ef611e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
rem x18, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x28, 0x98f0a70d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
rem x28, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x97b13fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
rem x18, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0xd3a842b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
rem x25, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x25, 0x97a9a98e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
rem x25, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x139f0319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
rem x22, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x21, 0xdcac14be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
rem x21, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x19, 0xafb35539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000001 # initialize rs1
li x11, 0x7fffffff # initialize rs2
rem x19, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x13, 0x447f1e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
rem x13, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x5f336119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
rem x6, x27, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x30, 0xf71b0315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
rem x30, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x30, 0x4992a57f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000001 # initialize rs1
li x29, 0x5bbc8877 # initialize rs2
rem x30, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x30, 0x3ecda9ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
rem x30, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x16, 0x70797c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x27, 0x55555555 # initialize rs2
rem x16, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0xab172941 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x13, 0x00000000 # initialize rs2
rem x19, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0e06c423 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
li x6, 0x00000001 # initialize rs2
rem x21, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x8328e566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
rem x28, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x23, 0xa1b2154c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
rem x23, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x10, 0xc67337f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
rem x10, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x18, 0xdc25c129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x20, 0x7fffffff # initialize rs2
rem x18, x2, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x13, 0xe20b45b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
rem x13, x6, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x21, 0x945b17e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x18, 0xffffffff # initialize rs2
rem x21, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x1777eeff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x22, 0xfffffffe # initialize rs2
rem x7, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x30, 0x123635d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
rem x30, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0xbf66bd06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
rem x13, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x25, 0x346693b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
rem x25, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x18, 0x1a85b8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
rem x18, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x23, 0xb2b64181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
rem x23, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x5, 0xd866d1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
rem x5, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x3, 0xa855ab9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
rem x3, x2, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x6d932320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x30, 0x80000001 # initialize rs2
rem x29, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x16, 0x61d4f6df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x16, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x30a9d65e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
rem x27, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x12, 0x9a72943c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x7, 0xffffffff # initialize rs2
rem x12, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x5, 0x66cfbb8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
rem x5, x15, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x2, 0x2a1c84ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # initialize rs1
li x20, 0x5bbc8877 # initialize rs2
rem x2, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x18, 0xf195756b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
rem x18, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x27, 0xc40328de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
rem x27, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x4, 0x88441367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
rem x4, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x3, 0x0147cd39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
rem x3, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x25, 0xb3f21e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
rem x25, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x08137f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
rem x1, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x9f603509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
rem x21, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x4, 0x8e4171eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x30, 0x7fffffff # initialize rs2
rem x4, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x10, 0x4240d7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
rem x10, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x19, 0x6d490b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x26, 0xffffffff # initialize rs2
rem x19, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x9, 0xc075a57c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000001 # initialize rs1
li x20, 0xfffffffe # initialize rs2
rem x9, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x3, 0x90ea684f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
rem x3, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x21, 0xd9e6a0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
rem x21, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x28, 0x486cb8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
rem x28, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x21, 0x4751c674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
rem x21, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x29, 0x74e82a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
rem x29, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x23, 0x3b4c2cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x2, 0x00000002 # initialize rs2
rem x23, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x4, 0x08dcf10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
rem x4, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x23, 0xb8d835e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
rem x23, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0xd602301d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rem x29, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x15, 0xcaf79d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
rem x15, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x31, 0x3d4a99fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
rem x31, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x17, 0x72b40e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
rem x17, x5, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x10, 0x81cfba19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
rem x10, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x16, 0xae059d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
rem x16, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x18, 0x284195c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
rem x18, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x6, 0xa71fc990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
rem x6, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x8, 0x7200d1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
rem x8, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x23, 0xe94f3b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
rem x23, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x23, 0xc73355b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffe # initialize rs1
li x10, 0x80000000 # initialize rs2
rem x23, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0xf80e4ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x31, 0x80000001 # initialize rs2
rem x30, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x24, 0xf636c3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
rem x24, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x31, 0x01d87fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
rem x31, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x21, 0x9ca68e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
rem x21, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x8, 0xd33b5178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
rem x8, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x10, 0x753d8d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
rem x10, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x27, 0xe0f595c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
rem x27, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x19, 0xdb17474c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
rem x19, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0x6ce48b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x11, 0x00000000 # initialize rs2
rem x24, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0xd125d346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
rem x25, x3, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0x527e80fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x4, 0x00000002 # initialize rs2
rem x28, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x15, 0x526da3e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
rem x15, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x28, 0xe3c2243d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
rem x28, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x4, 0x299aa9f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
rem x4, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x13, 0xe1663a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x15, 0x7ffffffe # initialize rs2
rem x13, x18, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x26, 0x3c50d8a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
rem x26, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0xeadb4617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
rem x15, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x25, 0xd9590a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
li x10, 0x5bbc8877 # initialize rs2
rem x25, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffd1cc36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
rem x2, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x23, 0x7d1c4bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
li x28, 0x55555555 # initialize rs2
rem x23, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0x03f2e74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x1, 0x00000000 # initialize rs2
rem x13, x5, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x2, 0x8d1a3867 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x21, 0x00000001 # initialize rs2
rem x2, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x12, 0x99120e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
rem x12, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x18, 0x791c2991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
rem x18, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x25, 0x59de1a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
rem x25, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x15, 0x15d8d370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
rem x15, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0xd3371ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
rem x31, x8, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x19, 0x151ac2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x4, 0xffffffff # initialize rs2
rem x19, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x23, 0x53183aa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
rem x23, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x18, 0x9ad2aaa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
rem x18, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x5, 0x0a98e0bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
rem x5, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x13, 0x95d58c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
rem x13, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x7, 0x3c19a6af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x23, 0x00000000 # initialize rs2
rem x7, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x8, 0xefff0117 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x10, 0x00000001 # initialize rs2
rem x8, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x31, 0x9628c861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x13, 0x00000002 # initialize rs2
rem x31, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x31, 0xb84ca1be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
li x5, 0x80000000 # initialize rs2
rem x31, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x22, 0xce45ae92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x24, 0x80000001 # initialize rs2
rem x22, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x29, 0x07c449ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x28, 0x7fffffff # initialize rs2
rem x29, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x8, 0xb73bec5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
rem x8, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x19, 0x2a8ed8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs1
li x14, 0xffffffff # initialize rs2
rem x19, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x18, 0xb5cd1307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x31, 0xfffffffe # initialize rs2
rem x18, x7, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x13, 0x643662c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
rem x13, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x6, 0x45c4ade4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
rem x6, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x14, 0xbc80965b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x27, 0x55555555 # initialize rs2
rem x14, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x31, 0xcfd9668b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x9, 0x00000000 # initialize rs2
rem x31, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x25, 0x943d650e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaa # initialize rs1
li x20, 0x00000001 # initialize rs2
rem x25, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x18, 0xd22346ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaa # initialize rs1
li x9, 0x00000002 # initialize rs2
rem x18, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x23, 0x2d7f6ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
rem x23, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x17, 0xbf905da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x29, 0x80000001 # initialize rs2
rem x17, x12, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x18, 0xbbb55784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
rem x18, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x21, 0x4fe420cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x11, 0x7ffffffe # initialize rs2
rem x21, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x30, 0x06bb3d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x2, 0xffffffff # initialize rs2
rem x30, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xd4b069bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
li x22, 0xfffffffe # initialize rs2
rem x16, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x29, 0xc61e6cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
rem x29, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x24, 0xed225e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
rem x24, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x17, 0xbb4d9361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x3, 0x55555555 # initialize rs2
rem x17, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x17, 0x1734656d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x9, 0x00000000 # initialize rs2
rem x17, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0xb96e091e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x20, 0x00000001 # initialize rs2
rem x7, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x29, 0x7ec7902d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
li x11, 0x00000002 # initialize rs2
rem x29, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x3b15fdc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x31, 0x80000000 # initialize rs2
rem x25, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x10, 0xf23fa806 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x17, 0x80000001 # initialize rs2
rem x10, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x19, 0x15472f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x24, 0x7fffffff # initialize rs2
rem x19, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0xc2427d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
rem x30, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x28, 0x8895a753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
li x9, 0xffffffff # initialize rs2
rem x28, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x31, 0xd2318815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
rem x31, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x24, 0x14e7a392 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
rem x24, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x13, 0xaa09f1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
rem x13, x3, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x18, 0x21066f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
rem x18, x23, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x08658734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc36944ea # initialize rs1
li x22, 0x5f52f343 # initialize rs2
rem x0, x0, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xadb72373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb95a6f73 # initialize rs1
li x27, 0x3127ba25 # initialize rs2
rem x1, x1, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x24525163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd96b6553 # initialize rs1
li x28, 0x1d1cbb78 # initialize rs2
rem x2, x2, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xec1f5bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe1d9b369 # initialize rs1
li x1, 0xb8b38115 # initialize rs2
rem x3, x3, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x91137df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8509af4f # initialize rs1
li x24, 0x6027199d # initialize rs2
rem x4, x4, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x03fbe836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbdf2a30f # initialize rs1
li x27, 0x7d4a1b93 # initialize rs2
rem x5, x5, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x0f335a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa2357a91 # initialize rs1
li x4, 0x71a00398 # initialize rs2
rem x6, x6, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xbd0f189a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x721d6448 # initialize rs1
li x15, 0x567a9d01 # initialize rs2
rem x7, x7, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0fc8c09a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6efa1ded # initialize rs1
li x21, 0xf79d1b5a # initialize rs2
rem x8, x8, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9b1477db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7025b3eb # initialize rs1
li x5, 0x64cd4c41 # initialize rs2
rem x9, x9, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x57ac815c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6716e4b4 # initialize rs1
li x1, 0x7ab24053 # initialize rs2
rem x10, x10, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9272025f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8b99986e # initialize rs1
li x2, 0x6d45b1dd # initialize rs2
rem x11, x11, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x34559bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdf427a7b # initialize rs1
li x12, 0x91817b08 # initialize rs2
rem x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x61cc752f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe086f331 # initialize rs1
li x29, 0xd2280957 # initialize rs2
rem x13, x13, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbd9bac26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf4582f03 # initialize rs1
li x11, 0x0115afd8 # initialize rs2
rem x14, x14, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9b7e6dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3ba1c8c9 # initialize rs1
li x12, 0xa88627c2 # initialize rs2
rem x15, x15, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x603daa2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x66149d63 # initialize rs1
li x2, 0x4d410925 # initialize rs2
rem x16, x16, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd0bb90c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x40c33057 # initialize rs1
li x25, 0x46c07eeb # initialize rs2
rem x17, x17, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x397ebefb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xeca36729 # initialize rs1
li x1, 0xb1a32b9f # initialize rs2
rem x18, x18, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb850641e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1c481c8a # initialize rs1
li x2, 0x559b07cb # initialize rs2
rem x19, x19, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x786b144e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd47d0cad # initialize rs1
li x2, 0xbb84d8c1 # initialize rs2
rem x20, x20, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x457d346f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xded7a532 # initialize rs1
li x16, 0x5d2efb74 # initialize rs2
rem x21, x21, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5783b133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbda5ff1e # initialize rs1
li x20, 0x6bcf382f # initialize rs2
rem x22, x22, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x697ea352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd3913865 # initialize rs1
li x25, 0x8ea82af2 # initialize rs2
rem x23, x23, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcb952a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x97a23748 # initialize rs1
li x3, 0x2d1c6101 # initialize rs2
rem x24, x24, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x47f454ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3ecf0c0f # initialize rs1
li x11, 0x1216aa43 # initialize rs2
rem x25, x25, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x6125c130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x99ae2138 # initialize rs1
li x4, 0x3cb52dd0 # initialize rs2
rem x26, x26, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe9c275b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x40a967f0 # initialize rs1
li x28, 0xee3d7f9e # initialize rs2
rem x27, x27, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x008773f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9477433c # initialize rs1
li x14, 0xde8ca1b3 # initialize rs2
rem x28, x28, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x2ac9b989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5d7da9c1 # initialize rs1
li x14, 0x54e64b21 # initialize rs2
rem x29, x29, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd2586c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb47830cb # initialize rs1
li x20, 0xc8b7d534 # initialize rs2
rem x30, x30, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe9bea2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd98cacc0 # initialize rs1
li x31, 0x6fb813eb # initialize rs2
rem x31, x31, x31 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x044aed48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x86c9fbf0 # initialize rs1
li x0, 0xa66ef1e6 # initialize rs2
rem x0, x1, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x38eff9dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x24e53e2c # initialize rs1
li x1, 0x937e70e7 # initialize rs2
rem x1, x11, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xd567e21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3f1b6c02 # initialize rs1
li x2, 0x2e7ae344 # initialize rs2
rem x2, x11, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xff0bdc85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4795e06e # initialize rs1
li x3, 0xf58b5694 # initialize rs2
rem x3, x16, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x6bad423d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x452c31e1 # initialize rs1
li x4, 0xd0595c49 # initialize rs2
rem x4, x13, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xac9a6fad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6004d231 # initialize rs1
li x5, 0x5ceb439b # initialize rs2
rem x5, x20, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x2182ff2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1e1ab9b4 # initialize rs1
li x6, 0x0de57b0a # initialize rs2
rem x6, x15, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x978f7f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe7e002de # initialize rs1
li x7, 0xf832af0c # initialize rs2
rem x7, x29, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x89f62ded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x64dfff32 # initialize rs1
li x8, 0xec423769 # initialize rs2
rem x8, x3, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xd54714a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x03f7b69d # initialize rs1
li x9, 0x603adbfb # initialize rs2
rem x9, x10, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xa7ac8ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3ce85f07 # initialize rs1
li x10, 0xfcdad186 # initialize rs2
rem x10, x16, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xa5a083bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8a30ee05 # initialize rs1
li x11, 0xb1568f58 # initialize rs2
rem x11, x16, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xedc0515f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6d1e8f0e # initialize rs1
li x12, 0xcf2a70d5 # initialize rs2
rem x12, x6, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xee849268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xde068ba0 # initialize rs1
li x13, 0x03006fb5 # initialize rs2
rem x13, x3, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xed6fc00c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcc9ae298 # initialize rs1
li x14, 0x0fd1cf3e # initialize rs2
rem x14, x26, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xa5d8ef65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf0f3fce4 # initialize rs1
li x15, 0xe545f1bf # initialize rs2
rem x15, x19, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x13190d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcbe94090 # initialize rs1
li x16, 0x70037457 # initialize rs2
rem x16, x4, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x6a9213e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa0dd756d # initialize rs1
li x17, 0x25a5cdb8 # initialize rs2
rem x17, x22, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x8bdd7ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf91e2bfa # initialize rs1
li x18, 0xf0332e69 # initialize rs2
rem x18, x29, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x23f65646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x178cf556 # initialize rs1
li x19, 0x14dc9c4e # initialize rs2
rem x19, x31, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x8aebb461 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb88b3e38 # initialize rs1
li x20, 0xef5e4c1e # initialize rs2
rem x20, x15, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xfa953dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf176a9c6 # initialize rs1
li x21, 0x2bef5b05 # initialize rs2
rem x21, x5, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xb4898e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x20006a53 # initialize rs1
li x22, 0x3c612728 # initialize rs2
rem x22, x30, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xd2083da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x83677ab6 # initialize rs1
li x23, 0xd12efbfc # initialize rs2
rem x23, x31, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x69129bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3edbc905 # initialize rs1
li x24, 0x8ba3c8a1 # initialize rs2
rem x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x98ffae06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe501c1dd # initialize rs1
li x25, 0xe4f23a31 # initialize rs2
rem x25, x2, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xd75ada3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x677eec04 # initialize rs1
li x26, 0x14713f00 # initialize rs2
rem x26, x6, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xe52ed953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x017fd9dd # initialize rs1
li x27, 0x83dabe89 # initialize rs2
rem x27, x27, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x92d76fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2ff9f7f6 # initialize rs1
li x28, 0xee5da930 # initialize rs2
rem x28, x20, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa6b57605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9bd63b7b # initialize rs1
li x29, 0xad73f0a4 # initialize rs2
rem x29, x11, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x7e81faef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x81ac22f8 # initialize rs1
li x30, 0x78053a50 # initialize rs2
rem x30, x17, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x8bf14b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd936c567 # initialize rs1
li x31, 0xaafed6c0 # initialize rs2
rem x31, x2, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x39b9018f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd54f0c11 # initialize rs1
li x0, 0x68c83776 # initialize rs2
rem x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x9e568841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xff7d3f08 # initialize rs1
li x1, 0x6164502e # initialize rs2
rem x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x43a55fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdba8a358 # initialize rs1
li x2, 0x8ded31ec # initialize rs2
rem x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd58649b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6085cb71 # initialize rs1
li x3, 0xe28f3795 # initialize rs2
rem x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xd1f58e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fa17518 # initialize rs1
li x4, 0x51f0f851 # initialize rs2
rem x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x54f272f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xecf5f384 # initialize rs1
li x5, 0x22f425ac # initialize rs2
rem x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xb5140db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5a45d41e # initialize rs1
li x6, 0x7fabbebd # initialize rs2
rem x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x7f063e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xcf2de7d0 # initialize rs1
li x7, 0xe2b9f0fa # initialize rs2
rem x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x079fd96d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x42325d14 # initialize rs1
li x8, 0x938dc8e9 # initialize rs2
rem x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7e8e1700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x728f3885 # initialize rs1
li x9, 0x948b7653 # initialize rs2
rem x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xea2c6d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf63f073 # initialize rs1
li x10, 0xec62ce40 # initialize rs2
rem x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe0e72238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd0a7e4e9 # initialize rs1
li x11, 0x37465514 # initialize rs2
rem x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa3414043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x024a7da9 # initialize rs1
li x12, 0x7113832f # initialize rs2
rem x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x73aa9677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd4d074aa # initialize rs1
li x13, 0xf64a892f # initialize rs2
rem x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x92937476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe3e0771f # initialize rs1
li x14, 0x5e567760 # initialize rs2
rem x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8b05f817 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf35ba21f # initialize rs1
li x15, 0x5b3110ff # initialize rs2
rem x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x61e4a86d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x89aa0f2a # initialize rs1
li x16, 0xa8dec6de # initialize rs2
rem x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe7a265e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x84071b09 # initialize rs1
li x17, 0xdfb3c4e0 # initialize rs2
rem x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd2d4a1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa572190d # initialize rs1
li x18, 0xe50416f9 # initialize rs2
rem x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0c5ce006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbd1ecf15 # initialize rs1
li x19, 0xab988d5a # initialize rs2
rem x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x52021eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x44826b69 # initialize rs1
li x20, 0xe2a7cfda # initialize rs2
rem x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x55daa6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3c2f6127 # initialize rs1
li x21, 0xb6a79605 # initialize rs2
rem x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xb63ea36e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x558b297e # initialize rs1
li x22, 0xcde7a4bb # initialize rs2
rem x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xf7825e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8fda8630 # initialize rs1
li x23, 0x35e12fad # initialize rs2
rem x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0fe40c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6149a9c9 # initialize rs1
li x24, 0x47def9a3 # initialize rs2
rem x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3f9f5129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x05ac9f0e # initialize rs1
li x25, 0x7f4428ab # initialize rs2
rem x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2b0ecca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x83822175 # initialize rs1
li x26, 0xa26a548d # initialize rs2
rem x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc9aa336d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd4778efe # initialize rs1
li x27, 0x1751030e # initialize rs2
rem x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5ea1be11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3acc5e2c # initialize rs1
li x28, 0x82b120e7 # initialize rs2
rem x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x953cb670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x19e4eefb # initialize rs1
li x29, 0x9e60bd25 # initialize rs2
rem x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0abb7949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x61bafa27 # initialize rs1
li x30, 0xab1d4f3b # initialize rs2
rem x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x48992a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaf464484 # initialize rs1
li x31, 0x131e69b1 # initialize rs2
rem x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x8, 0x21157107 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd9fbc7bf # initialize rs1
li x0, 0x0ffd9cc4 # initialize rs2
rem x8, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x21, 0x1d6400e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2cc55de7 # initialize rs1
li x1, 0x8dd67eb4 # initialize rs2
rem x21, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x19, 0xf02f7606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x98bfd2cd # initialize rs1
li x2, 0x4e2ff074 # initialize rs2
rem x19, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x31, 0xe6092e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb218e74e # initialize rs1
li x3, 0x03ba558a # initialize rs2
rem x31, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x1, 0xf75f6a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9cdd6bcf # initialize rs1
li x4, 0x48969cc2 # initialize rs2
rem x1, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x3, 0xef61a46f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7e34c5bd # initialize rs1
li x5, 0xb5f54803 # initialize rs2
rem x3, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x26, 0xe2385ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd8efce72 # initialize rs1
li x6, 0x7fdfd246 # initialize rs2
rem x26, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x19, 0x9910033a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x454bd7be # initialize rs1
li x7, 0x8158afce # initialize rs2
rem x19, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x31, 0x1cd64e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x490aa18b # initialize rs1
li x8, 0x756e671c # initialize rs2
rem x31, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x10, 0xc8158832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x27da4c42 # initialize rs1
li x9, 0xd4ac47fd # initialize rs2
rem x10, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x7, 0x89a66fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaa418ed0 # initialize rs1
li x10, 0x1447e37e # initialize rs2
rem x7, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x9, 0x50f7d2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5c5f918e # initialize rs1
li x11, 0x12c5f78f # initialize rs2
rem x9, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x31, 0x79ac9ecc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3f4a24b7 # initialize rs1
li x12, 0x669fe6c4 # initialize rs2
rem x31, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x30, 0xccc83c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd529b4b0 # initialize rs1
li x13, 0xcc7d0e8e # initialize rs2
rem x30, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x8, 0xad27f270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcb84553c # initialize rs1
li x14, 0xc4e87812 # initialize rs2
rem x8, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x21, 0xdafd6a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1b2c5599 # initialize rs1
li x15, 0x0c73ae49 # initialize rs2
rem x21, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x17, 0xcf4b6d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc14a0343 # initialize rs1
li x16, 0x9c23b4ba # initialize rs2
rem x17, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x25, 0x56657aff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb5a513a3 # initialize rs1
li x17, 0x98ab4ed1 # initialize rs2
rem x25, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x8, 0x843a0612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6d09aeef # initialize rs1
li x18, 0xe6c42a5d # initialize rs2
rem x8, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x12, 0x44411d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2a6b3dc0 # initialize rs1
li x19, 0xbe3c55ac # initialize rs2
rem x12, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x11, 0x0cedc969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x56ad9f47 # initialize rs1
li x20, 0xaf844aaf # initialize rs2
rem x11, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x15, 0x7e8540ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x60c37b53 # initialize rs1
li x21, 0xeda6c3c6 # initialize rs2
rem x15, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x14, 0xf8b9e410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x19c31ab0 # initialize rs1
li x22, 0x7605aa8d # initialize rs2
rem x14, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x13, 0x40d016c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x73e8e88a # initialize rs1
li x23, 0xb59dbf73 # initialize rs2
rem x13, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x8, 0x01fddb52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa33c4b3b # initialize rs1
li x24, 0x3f552127 # initialize rs2
rem x8, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x7, 0x4961dbb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5e8ba2ac # initialize rs1
li x25, 0x14359449 # initialize rs2
rem x7, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x5, 0x931a86bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8db0e61b # initialize rs1
li x26, 0x0d4b96e5 # initialize rs2
rem x5, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x13, 0x86b59011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb2fe8ad8 # initialize rs1
li x27, 0xa4b76929 # initialize rs2
rem x13, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x11, 0xda40af7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x92bff8f0 # initialize rs1
li x28, 0xb8d76a99 # initialize rs2
rem x11, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x8, 0x6f602d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3e093829 # initialize rs1
li x29, 0x015f5d5f # initialize rs2
rem x8, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x10, 0x0cbd8a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5cd59ceb # initialize rs1
li x30, 0x48db19d2 # initialize rs2
rem x10, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x17, 0x96536e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc4172344 # initialize rs1
li x31, 0xf2b79964 # initialize rs2
rem x17, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x35541c6d)
li x15, 0x2dadacd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x35541c6d # initialize rs1
li x29, 0x01b48ae7 # initialize rs2
rem x15, x6, x29 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2da50c44)
li x16, 0xf26523f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd25af3bc # initialize rs1
li x24, 0x3a306b17 # initialize rs2
rem x16, x4, x24 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x7becc8b0)
li x1, 0xf641d80d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xce7edab3 # initialize rs1
li x26, 0x7becc8b0 # initialize rs2
rem x1, x7, x26 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x64a07975)
li x27, 0x0eec5a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xec1afcec # initialize rs1
li x15, 0x9b5f868b # initialize rs2
rem x27, x23, x15 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
