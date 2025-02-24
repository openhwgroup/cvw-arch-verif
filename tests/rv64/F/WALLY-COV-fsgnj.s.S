///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fsgnj.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.840092
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x25, 0xbc1fc30e35b00857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x5819d08804fa6c82 # load x3 with value 0x5819d08804fa6c82
sw x3, 0(x2) # store 0x5819d08804fa6c82 in memory
flw f16, 0(x2) # load 0x5819d08804fa6c82 from memory into f16
fsgnj.s f25, f9, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x8, 0x0ffc83c89be448d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x2233abab08f5e4de # load x3 with value 0x2233abab08f5e4de
sw x3, 0(x2) # store 0x2233abab08f5e4de in memory
flw f10, 0(x2) # load 0x2233abab08f5e4de from memory into f10
fsgnj.s f8, f31, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x5, 0x4e9a4b4b08d5c106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x19b22b4adcd13139 # load x3 with value 0x19b22b4adcd13139
sw x3, 0(x2) # store 0x19b22b4adcd13139 in memory
flw f18, 0(x2) # load 0x19b22b4adcd13139 from memory into f18
fsgnj.s f5, f3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x24, 0x115117dd3087ff43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x41ee91dd49038f4d # load x3 with value 0x41ee91dd49038f4d
sw x3, 0(x2) # store 0x41ee91dd49038f4d in memory
flw f5, 0(x2) # load 0x41ee91dd49038f4d from memory into f5
fsgnj.s f24, f30, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x7, 0x1adf736c81ce0ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0xb429b84ac36dce34 # load x3 with value 0xb429b84ac36dce34
sw x3, 0(x2) # store 0xb429b84ac36dce34 in memory
flw f4, 0(x2) # load 0xb429b84ac36dce34 from memory into f4
fsgnj.s f7, f17, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x4, 0x750bdfd44b9df10f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x4ffe4a00887336e9 # load x3 with value 0x4ffe4a00887336e9
sw x3, 0(x2) # store 0x4ffe4a00887336e9 in memory
flw f14, 0(x2) # load 0x4ffe4a00887336e9 from memory into f14
fsgnj.s f4, f13, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x18, 0xef2496a2478d0f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0x8949ac9d8cf898d6 # load x3 with value 0x8949ac9d8cf898d6
sw x3, 0(x2) # store 0x8949ac9d8cf898d6 in memory
flw f13, 0(x2) # load 0x8949ac9d8cf898d6 from memory into f13
fsgnj.s f18, f22, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x24, 0xf6fde33c41a68c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0xda70d2829c76570c # load x3 with value 0xda70d2829c76570c
sw x3, 0(x2) # store 0xda70d2829c76570c in memory
flw f7, 0(x2) # load 0xda70d2829c76570c from memory into f7
fsgnj.s f24, f5, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x24, 0x7af8627633b1db43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x4d12a9dcc12b2cea # load x3 with value 0x4d12a9dcc12b2cea
sw x3, 0(x2) # store 0x4d12a9dcc12b2cea in memory
flw f26, 0(x2) # load 0x4d12a9dcc12b2cea from memory into f26
fsgnj.s f24, f25, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x7, 0x64db63b3630ae262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
li x3, 0xa549d82398c307b9 # load x3 with value 0xa549d82398c307b9
sw x3, 0(x2) # store 0xa549d82398c307b9 in memory
flw f9, 0(x2) # load 0xa549d82398c307b9 from memory into f9
fsgnj.s f7, f6, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x3, 0x08195203f4aafe78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0x7a2e188dd903847d # load x3 with value 0x7a2e188dd903847d
sw x3, 0(x2) # store 0x7a2e188dd903847d in memory
flw f20, 0(x2) # load 0x7a2e188dd903847d from memory into f20
fsgnj.s f3, f21, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x18, 0x49b87ddbd81b21ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x56f3c5de3b034fe8 # load x3 with value 0x56f3c5de3b034fe8
sw x3, 0(x2) # store 0x56f3c5de3b034fe8 in memory
flw f30, 0(x2) # load 0x56f3c5de3b034fe8 from memory into f30
fsgnj.s f18, f10, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x2, 0x799f4e70615bec8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x4e393d1677c47201 # load x3 with value 0x4e393d1677c47201
sw x3, 0(x2) # store 0x4e393d1677c47201 in memory
flw f7, 0(x2) # load 0x4e393d1677c47201 from memory into f7
fsgnj.s f2, f21, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x14, 0xbd59ec064f818311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x1dbc476e1af9baef # load x3 with value 0x1dbc476e1af9baef
sw x3, 0(x2) # store 0x1dbc476e1af9baef in memory
flw f20, 0(x2) # load 0x1dbc476e1af9baef from memory into f20
fsgnj.s f14, f12, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x4, 0xac6a620bf515c0b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0xa331e41203ecbdee # load x3 with value 0xa331e41203ecbdee
sw x3, 0(x2) # store 0xa331e41203ecbdee in memory
flw f31, 0(x2) # load 0xa331e41203ecbdee from memory into f31
fsgnj.s f4, f19, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x27, 0xf9cb25b17e0aef4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x7510c94b6c911ae9 # load x3 with value 0x7510c94b6c911ae9
sw x3, 0(x2) # store 0x7510c94b6c911ae9 in memory
flw f4, 0(x2) # load 0x7510c94b6c911ae9 from memory into f4
fsgnj.s f27, f15, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x16, 0xb2b28bb053b76ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x2e8d62848ecc54ee # load x3 with value 0x2e8d62848ecc54ee
sw x3, 0(x2) # store 0x2e8d62848ecc54ee in memory
flw f20, 0(x2) # load 0x2e8d62848ecc54ee from memory into f20
fsgnj.s f16, f5, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x26, 0xda13aeb68a45d6a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x7d9e9f510ad63a67 # load x3 with value 0x7d9e9f510ad63a67
sw x3, 0(x2) # store 0x7d9e9f510ad63a67 in memory
flw f27, 0(x2) # load 0x7d9e9f510ad63a67 from memory into f27
fsgnj.s f26, f28, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x25, 0xc73b8b5413c3b6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0xf2f7d3605f0f32c8 # load x3 with value 0xf2f7d3605f0f32c8
sw x3, 0(x2) # store 0xf2f7d3605f0f32c8 in memory
flw f30, 0(x2) # load 0xf2f7d3605f0f32c8 from memory into f30
fsgnj.s f25, f14, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x28, 0x592b8a2175193a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0xfa1bad68b1d98141 # load x3 with value 0xfa1bad68b1d98141
sw x3, 0(x2) # store 0xfa1bad68b1d98141 in memory
flw f13, 0(x2) # load 0xfa1bad68b1d98141 from memory into f13
fsgnj.s f28, f25, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x21, 0xa884b77ee566d45e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0x4e38611bda2c85dc # load x3 with value 0x4e38611bda2c85dc
sw x3, 0(x2) # store 0x4e38611bda2c85dc in memory
flw f13, 0(x2) # load 0x4e38611bda2c85dc from memory into f13
fsgnj.s f21, f14, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x16, 0x9d88183fd3a44334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0xa4bfd2687ea9c204 # load x3 with value 0xa4bfd2687ea9c204
sw x3, 0(x2) # store 0xa4bfd2687ea9c204 in memory
flw f23, 0(x2) # load 0xa4bfd2687ea9c204 from memory into f23
fsgnj.s f16, f17, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x1, 0xa279ea13129aed5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x9a67267d1bde76b2 # load x3 with value 0x9a67267d1bde76b2
sw x3, 0(x2) # store 0x9a67267d1bde76b2 in memory
flw f7, 0(x2) # load 0x9a67267d1bde76b2 from memory into f7
fsgnj.s f1, f29, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x16, 0xf22de561a3b2c766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0x78a4323640f18a0e # load x3 with value 0x78a4323640f18a0e
sw x3, 0(x2) # store 0x78a4323640f18a0e in memory
flw f25, 0(x2) # load 0x78a4323640f18a0e from memory into f25
fsgnj.s f16, f30, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x5, 0xeadaa8df8d8c6ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x30e5e1cfb4e8c8c1 # load x3 with value 0x30e5e1cfb4e8c8c1
sw x3, 0(x2) # store 0x30e5e1cfb4e8c8c1 in memory
flw f18, 0(x2) # load 0x30e5e1cfb4e8c8c1 from memory into f18
fsgnj.s f5, f3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x3, 0xb72b27f1fdbabb7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x54298aeaa39fc2d0 # load x3 with value 0x54298aeaa39fc2d0
sw x3, 0(x2) # store 0x54298aeaa39fc2d0 in memory
flw f7, 0(x2) # load 0x54298aeaa39fc2d0 from memory into f7
fsgnj.s f3, f27, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x18, 0x6902ddd681dfca63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17ad32761f4968db # load x3 with value 0x17ad32761f4968db
sw x3, 0(x2) # store 0x17ad32761f4968db in memory
flw f13, 0(x2) # load 0x17ad32761f4968db from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fsgnj.s f18, f13, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x25, 0x0af25979c9e2b15d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31cbb64c7d0d4e0 # load x3 with value 0x31cbb64c7d0d4e0
sw x3, 0(x2) # store 0x31cbb64c7d0d4e0 in memory
flw f28, 0(x2) # load 0x31cbb64c7d0d4e0 from memory into f28
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fsgnj.s f25, f28, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x29, 0x28fee8041733ece0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0a1d65812cdb87c # load x3 with value 0xb0a1d65812cdb87c
sw x3, 0(x2) # store 0xb0a1d65812cdb87c in memory
flw f6, 0(x2) # load 0xb0a1d65812cdb87c from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fsgnj.s f29, f6, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x24, 0x69dcf542eacdeb49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90ac5aba0aa0b4bf # load x3 with value 0x90ac5aba0aa0b4bf
sw x3, 0(x2) # store 0x90ac5aba0aa0b4bf in memory
flw f25, 0(x2) # load 0x90ac5aba0aa0b4bf from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fsgnj.s f24, f25, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x10, 0xd1dcc401b220cd10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62e705e7d5e795a8 # load x3 with value 0x62e705e7d5e795a8
sw x3, 0(x2) # store 0x62e705e7d5e795a8 in memory
flw f18, 0(x2) # load 0x62e705e7d5e795a8 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fsgnj.s f10, f18, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x27, 0xeb2856816968f1c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cf5e9d62a2f86f # load x3 with value 0x5cf5e9d62a2f86f
sw x3, 0(x2) # store 0x5cf5e9d62a2f86f in memory
flw f16, 0(x2) # load 0x5cf5e9d62a2f86f from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fsgnj.s f27, f16, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x25, 0x29c5f4ea0954cd7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a257475e3295670 # load x3 with value 0x1a257475e3295670
sw x3, 0(x2) # store 0x1a257475e3295670 in memory
flw f29, 0(x2) # load 0x1a257475e3295670 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fsgnj.s f25, f29, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x11, 0x2cdb2818a7cb90bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x530171b09131e9a8 # load x3 with value 0x530171b09131e9a8
sw x3, 0(x2) # store 0x530171b09131e9a8 in memory
flw f27, 0(x2) # load 0x530171b09131e9a8 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsgnj.s f11, f27, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x11, 0x000b238a9f280f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bd5b07a395a8aa4 # load x3 with value 0x1bd5b07a395a8aa4
sw x3, 0(x2) # store 0x1bd5b07a395a8aa4 in memory
flw f1, 0(x2) # load 0x1bd5b07a395a8aa4 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fsgnj.s f11, f1, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x18, 0xaf6c724638fa2eef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31b757c6d1dd4cdd # load x3 with value 0x31b757c6d1dd4cdd
sw x3, 0(x2) # store 0x31b757c6d1dd4cdd in memory
flw f21, 0(x2) # load 0x31b757c6d1dd4cdd from memory into f21
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fsgnj.s f18, f21, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x18, 0x9a91a130f2f33932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaad8790ad8faab1a # load x3 with value 0xaad8790ad8faab1a
sw x3, 0(x2) # store 0xaad8790ad8faab1a in memory
flw f31, 0(x2) # load 0xaad8790ad8faab1a from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fsgnj.s f18, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x14, 0x09a72bc7d9a9d1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd59974c7be57f79 # load x3 with value 0xfd59974c7be57f79
sw x3, 0(x2) # store 0xfd59974c7be57f79 in memory
flw f1, 0(x2) # load 0xfd59974c7be57f79 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fsgnj.s f14, f1, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x20, 0x9c484597a0727d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b61a9a9e465fb63 # load x3 with value 0x2b61a9a9e465fb63
sw x3, 0(x2) # store 0x2b61a9a9e465fb63 in memory
flw f15, 0(x2) # load 0x2b61a9a9e465fb63 from memory into f15
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fsgnj.s f20, f15, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x24, 0x99dc87bfc24de575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe2d5fc7856d245 # load x3 with value 0xbe2d5fc7856d245
sw x3, 0(x2) # store 0xbe2d5fc7856d245 in memory
flw f26, 0(x2) # load 0xbe2d5fc7856d245 from memory into f26
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fsgnj.s f24, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x20, 0x7f661493a07696a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3662965dd6e0948a # load x3 with value 0x3662965dd6e0948a
sw x3, 0(x2) # store 0x3662965dd6e0948a in memory
flw f1, 0(x2) # load 0x3662965dd6e0948a from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fsgnj.s f20, f1, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x7, 0x57d29478aa84ab09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf71412575114ae5 # load x3 with value 0xcf71412575114ae5
sw x3, 0(x2) # store 0xcf71412575114ae5 in memory
flw f20, 0(x2) # load 0xcf71412575114ae5 from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fsgnj.s f7, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x30, 0x0a8da788f0360eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11aebffb659c4ea0 # load x3 with value 0x11aebffb659c4ea0
sw x3, 0(x2) # store 0x11aebffb659c4ea0 in memory
flw f22, 0(x2) # load 0x11aebffb659c4ea0 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fsgnj.s f30, f22, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x10, 0xefb097bfb30f113d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76bfe65a62786168 # load x3 with value 0x76bfe65a62786168
sw x3, 0(x2) # store 0x76bfe65a62786168 in memory
flw f26, 0(x2) # load 0x76bfe65a62786168 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fsgnj.s f10, f26, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x15, 0x750688f43603f672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37c06e6f8be28dd5 # load x3 with value 0x37c06e6f8be28dd5
sw x3, 0(x2) # store 0x37c06e6f8be28dd5 in memory
flw f29, 0(x2) # load 0x37c06e6f8be28dd5 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fsgnj.s f15, f29, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x16, 0x623d087caaf85a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c37ec404798995f # load x3 with value 0x1c37ec404798995f
sw x3, 0(x2) # store 0x1c37ec404798995f in memory
flw f11, 0(x2) # load 0x1c37ec404798995f from memory into f11
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fsgnj.s f16, f11, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x14, 0x18618b7d5664b926 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe618d1892953018e # load x3 with value 0xe618d1892953018e
sw x3, 0(x2) # store 0xe618d1892953018e in memory
flw f23, 0(x2) # load 0xe618d1892953018e from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fsgnj.s f14, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x2, 0x29b6def65a715984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed4f5d8329b8c2b1 # load x3 with value 0xed4f5d8329b8c2b1
sw x3, 0(x2) # store 0xed4f5d8329b8c2b1 in memory
flw f30, 0(x2) # load 0xed4f5d8329b8c2b1 from memory into f30
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsgnj.s f2, f30, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x20, 0x3559137696a50194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d08518da15357b1 # load x3 with value 0x4d08518da15357b1
sw x3, 0(x2) # store 0x4d08518da15357b1 in memory
flw f24, 0(x2) # load 0x4d08518da15357b1 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fsgnj.s f20, f24, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x22, 0xca279a351b54af5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b8da4dcf1256dc5 # load x3 with value 0x1b8da4dcf1256dc5
sw x3, 0(x2) # store 0x1b8da4dcf1256dc5 in memory
flw f9, 0(x2) # load 0x1b8da4dcf1256dc5 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fsgnj.s f22, f9, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x18, 0x0eaa1bac366051b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e5970737f8de9be # load x3 with value 0x1e5970737f8de9be
sw x3, 0(x2) # store 0x1e5970737f8de9be in memory
flw f8, 0(x2) # load 0x1e5970737f8de9be from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsgnj.s f18, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x21, 0xcd6f7b9e38c60fab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb33469547a6ac890 # load x3 with value 0xb33469547a6ac890
sw x3, 0(x2) # store 0xb33469547a6ac890 in memory
flw f22, 0(x2) # load 0xb33469547a6ac890 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fsgnj.s f21, f22, f11 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x19a99cf4ffc5a6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c29c075055e9675 # load x3 with value 0x3c29c075055e9675
sw x3, 0(x2) # store 0x3c29c075055e9675 in memory
flw f8, 0(x2) # load 0x3c29c075055e9675 from memory into f8
li x3, 0xf58b05f1da03ac0a # load x3 with value 0xf58b05f1da03ac0a
sw x3, 0(x2) # store 0xf58b05f1da03ac0a in memory
flw f20, 0(x2) # load 0xf58b05f1da03ac0a from memory into f20
fsgnj.s f0, f8, f20 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xdb5527ca3dd5ea79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a926b0d30a60b3a # load x3 with value 0x6a926b0d30a60b3a
sw x3, 0(x2) # store 0x6a926b0d30a60b3a in memory
flw f4, 0(x2) # load 0x6a926b0d30a60b3a from memory into f4
li x3, 0xb3dbabc7d65b1dce # load x3 with value 0xb3dbabc7d65b1dce
sw x3, 0(x2) # store 0xb3dbabc7d65b1dce in memory
flw f25, 0(x2) # load 0xb3dbabc7d65b1dce from memory into f25
fsgnj.s f1, f4, f25 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xc8b5c47ff3a7f59e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8d20de0621022f2 # load x3 with value 0xe8d20de0621022f2
sw x3, 0(x2) # store 0xe8d20de0621022f2 in memory
flw f25, 0(x2) # load 0xe8d20de0621022f2 from memory into f25
li x3, 0xfe578200c41d764a # load x3 with value 0xfe578200c41d764a
sw x3, 0(x2) # store 0xfe578200c41d764a in memory
flw f13, 0(x2) # load 0xfe578200c41d764a from memory into f13
fsgnj.s f2, f25, f13 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xdd19c7c11f00a232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa88b2cf0d6d8586 # load x3 with value 0xfa88b2cf0d6d8586
sw x3, 0(x2) # store 0xfa88b2cf0d6d8586 in memory
flw f16, 0(x2) # load 0xfa88b2cf0d6d8586 from memory into f16
li x3, 0x9fc1d5a0914f1dc6 # load x3 with value 0x9fc1d5a0914f1dc6
sw x3, 0(x2) # store 0x9fc1d5a0914f1dc6 in memory
flw f28, 0(x2) # load 0x9fc1d5a0914f1dc6 from memory into f28
fsgnj.s f3, f16, f28 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x6cebedadd9fe769e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7ade04b9bcd26fc # load x3 with value 0xb7ade04b9bcd26fc
sw x3, 0(x2) # store 0xb7ade04b9bcd26fc in memory
flw f22, 0(x2) # load 0xb7ade04b9bcd26fc from memory into f22
li x3, 0x5a76023e9c1cb260 # load x3 with value 0x5a76023e9c1cb260
sw x3, 0(x2) # store 0x5a76023e9c1cb260 in memory
flw f13, 0(x2) # load 0x5a76023e9c1cb260 from memory into f13
fsgnj.s f4, f22, f13 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x16b4c842ff548e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9633e18c483d386 # load x3 with value 0xf9633e18c483d386
sw x3, 0(x2) # store 0xf9633e18c483d386 in memory
flw f4, 0(x2) # load 0xf9633e18c483d386 from memory into f4
li x3, 0x90eb1c98bc984ce8 # load x3 with value 0x90eb1c98bc984ce8
sw x3, 0(x2) # store 0x90eb1c98bc984ce8 in memory
flw f19, 0(x2) # load 0x90eb1c98bc984ce8 from memory into f19
fsgnj.s f5, f4, f19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x6158ed77167f8aba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d5468db75e1ffa0 # load x3 with value 0x4d5468db75e1ffa0
sw x3, 0(x2) # store 0x4d5468db75e1ffa0 in memory
flw f28, 0(x2) # load 0x4d5468db75e1ffa0 from memory into f28
li x3, 0x2d0f5c3082231d5b # load x3 with value 0x2d0f5c3082231d5b
sw x3, 0(x2) # store 0x2d0f5c3082231d5b in memory
flw f7, 0(x2) # load 0x2d0f5c3082231d5b from memory into f7
fsgnj.s f6, f28, f7 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xa8fd1176c0e21cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c2156de8695b3 # load x3 with value 0x8c2156de8695b3
sw x3, 0(x2) # store 0x8c2156de8695b3 in memory
flw f24, 0(x2) # load 0x8c2156de8695b3 from memory into f24
li x3, 0x8093f16d13ac9d4d # load x3 with value 0x8093f16d13ac9d4d
sw x3, 0(x2) # store 0x8093f16d13ac9d4d in memory
flw f12, 0(x2) # load 0x8093f16d13ac9d4d from memory into f12
fsgnj.s f7, f24, f12 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x33771cede38b3e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefdff4d5c8e7cdf3 # load x3 with value 0xefdff4d5c8e7cdf3
sw x3, 0(x2) # store 0xefdff4d5c8e7cdf3 in memory
flw f22, 0(x2) # load 0xefdff4d5c8e7cdf3 from memory into f22
li x3, 0x9b01a9387201f4bd # load x3 with value 0x9b01a9387201f4bd
sw x3, 0(x2) # store 0x9b01a9387201f4bd in memory
flw f31, 0(x2) # load 0x9b01a9387201f4bd from memory into f31
fsgnj.s f8, f22, f31 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x9ec7257f4147b7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8e825596932904d # load x3 with value 0xa8e825596932904d
sw x3, 0(x2) # store 0xa8e825596932904d in memory
flw f13, 0(x2) # load 0xa8e825596932904d from memory into f13
li x3, 0xd3e6a15b47d96ac6 # load x3 with value 0xd3e6a15b47d96ac6
sw x3, 0(x2) # store 0xd3e6a15b47d96ac6 in memory
flw f26, 0(x2) # load 0xd3e6a15b47d96ac6 from memory into f26
fsgnj.s f9, f13, f26 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x0ece7b6f40d80ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe25dd7850f08f525 # load x3 with value 0xe25dd7850f08f525
sw x3, 0(x2) # store 0xe25dd7850f08f525 in memory
flw f14, 0(x2) # load 0xe25dd7850f08f525 from memory into f14
li x3, 0xa4b26d7ebe44bd6 # load x3 with value 0xa4b26d7ebe44bd6
sw x3, 0(x2) # store 0xa4b26d7ebe44bd6 in memory
flw f7, 0(x2) # load 0xa4b26d7ebe44bd6 from memory into f7
fsgnj.s f10, f14, f7 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x8d73b2c9dd412bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90b445b247c3f466 # load x3 with value 0x90b445b247c3f466
sw x3, 0(x2) # store 0x90b445b247c3f466 in memory
flw f27, 0(x2) # load 0x90b445b247c3f466 from memory into f27
li x3, 0xae03b895ac4aa6af # load x3 with value 0xae03b895ac4aa6af
sw x3, 0(x2) # store 0xae03b895ac4aa6af in memory
flw f14, 0(x2) # load 0xae03b895ac4aa6af from memory into f14
fsgnj.s f11, f27, f14 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xa595aa12f8fb6449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f9117a00ecc3d09 # load x3 with value 0x5f9117a00ecc3d09
sw x3, 0(x2) # store 0x5f9117a00ecc3d09 in memory
flw f28, 0(x2) # load 0x5f9117a00ecc3d09 from memory into f28
li x3, 0x449e6c68d2483581 # load x3 with value 0x449e6c68d2483581
sw x3, 0(x2) # store 0x449e6c68d2483581 in memory
flw f7, 0(x2) # load 0x449e6c68d2483581 from memory into f7
fsgnj.s f12, f28, f7 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8a27b2e1713acf9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x104c1498b7a7ad77 # load x3 with value 0x104c1498b7a7ad77
sw x3, 0(x2) # store 0x104c1498b7a7ad77 in memory
flw f20, 0(x2) # load 0x104c1498b7a7ad77 from memory into f20
li x3, 0x501d454700059c49 # load x3 with value 0x501d454700059c49
sw x3, 0(x2) # store 0x501d454700059c49 in memory
flw f23, 0(x2) # load 0x501d454700059c49 from memory into f23
fsgnj.s f13, f20, f23 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x117f09211cb413f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc45a79e11f4923a9 # load x3 with value 0xc45a79e11f4923a9
sw x3, 0(x2) # store 0xc45a79e11f4923a9 in memory
flw f2, 0(x2) # load 0xc45a79e11f4923a9 from memory into f2
li x3, 0x4e3ed3643948c020 # load x3 with value 0x4e3ed3643948c020
sw x3, 0(x2) # store 0x4e3ed3643948c020 in memory
flw f27, 0(x2) # load 0x4e3ed3643948c020 from memory into f27
fsgnj.s f14, f2, f27 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x557dfc9cef0546db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce59c7ab2dad9329 # load x3 with value 0xce59c7ab2dad9329
sw x3, 0(x2) # store 0xce59c7ab2dad9329 in memory
flw f25, 0(x2) # load 0xce59c7ab2dad9329 from memory into f25
li x3, 0xc9a31644a1d186e1 # load x3 with value 0xc9a31644a1d186e1
sw x3, 0(x2) # store 0xc9a31644a1d186e1 in memory
flw f20, 0(x2) # load 0xc9a31644a1d186e1 from memory into f20
fsgnj.s f15, f25, f20 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xc346911b08bfcb28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2fa3f6e7922f064 # load x3 with value 0xa2fa3f6e7922f064
sw x3, 0(x2) # store 0xa2fa3f6e7922f064 in memory
flw f14, 0(x2) # load 0xa2fa3f6e7922f064 from memory into f14
li x3, 0x3a2aab85a79af1b # load x3 with value 0x3a2aab85a79af1b
sw x3, 0(x2) # store 0x3a2aab85a79af1b in memory
flw f2, 0(x2) # load 0x3a2aab85a79af1b from memory into f2
fsgnj.s f16, f14, f2 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xc8a53d787ce38ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1912b3c6ad87bf6 # load x3 with value 0xc1912b3c6ad87bf6
sw x3, 0(x2) # store 0xc1912b3c6ad87bf6 in memory
flw f15, 0(x2) # load 0xc1912b3c6ad87bf6 from memory into f15
li x3, 0x3ecb680683c02e96 # load x3 with value 0x3ecb680683c02e96
sw x3, 0(x2) # store 0x3ecb680683c02e96 in memory
flw f20, 0(x2) # load 0x3ecb680683c02e96 from memory into f20
fsgnj.s f17, f15, f20 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x4b8346edbda42276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8fe4bc54ebf19d2 # load x3 with value 0xd8fe4bc54ebf19d2
sw x3, 0(x2) # store 0xd8fe4bc54ebf19d2 in memory
flw f16, 0(x2) # load 0xd8fe4bc54ebf19d2 from memory into f16
li x3, 0x86b908159ffe774f # load x3 with value 0x86b908159ffe774f
sw x3, 0(x2) # store 0x86b908159ffe774f in memory
flw f3, 0(x2) # load 0x86b908159ffe774f from memory into f3
fsgnj.s f18, f16, f3 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xf4249658df0cd9a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda8342528dca7683 # load x3 with value 0xda8342528dca7683
sw x3, 0(x2) # store 0xda8342528dca7683 in memory
flw f8, 0(x2) # load 0xda8342528dca7683 from memory into f8
li x3, 0x7a7be9235c8835a6 # load x3 with value 0x7a7be9235c8835a6
sw x3, 0(x2) # store 0x7a7be9235c8835a6 in memory
flw f17, 0(x2) # load 0x7a7be9235c8835a6 from memory into f17
fsgnj.s f19, f8, f17 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xaaad45a83b59f6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f0b95e6c9236a32 # load x3 with value 0x1f0b95e6c9236a32
sw x3, 0(x2) # store 0x1f0b95e6c9236a32 in memory
flw f6, 0(x2) # load 0x1f0b95e6c9236a32 from memory into f6
li x3, 0xb34fe92e518c53e0 # load x3 with value 0xb34fe92e518c53e0
sw x3, 0(x2) # store 0xb34fe92e518c53e0 in memory
flw f23, 0(x2) # load 0xb34fe92e518c53e0 from memory into f23
fsgnj.s f20, f6, f23 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x22bea5a85e27f55a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb79a9ddfc8289d3 # load x3 with value 0xb79a9ddfc8289d3
sw x3, 0(x2) # store 0xb79a9ddfc8289d3 in memory
flw f8, 0(x2) # load 0xb79a9ddfc8289d3 from memory into f8
li x3, 0x835c310b36487619 # load x3 with value 0x835c310b36487619
sw x3, 0(x2) # store 0x835c310b36487619 in memory
flw f4, 0(x2) # load 0x835c310b36487619 from memory into f4
fsgnj.s f21, f8, f4 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xa8e86da2a8f91d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x959fcc0627a75656 # load x3 with value 0x959fcc0627a75656
sw x3, 0(x2) # store 0x959fcc0627a75656 in memory
flw f22, 0(x2) # load 0x959fcc0627a75656 from memory into f22
li x3, 0x70882a8265024bda # load x3 with value 0x70882a8265024bda
sw x3, 0(x2) # store 0x70882a8265024bda in memory
flw f13, 0(x2) # load 0x70882a8265024bda from memory into f13
fsgnj.s f22, f22, f13 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xc139452d20fc4c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca42d22ae8af55ce # load x3 with value 0xca42d22ae8af55ce
sw x3, 0(x2) # store 0xca42d22ae8af55ce in memory
flw f6, 0(x2) # load 0xca42d22ae8af55ce from memory into f6
li x3, 0x99c2c2112c683e19 # load x3 with value 0x99c2c2112c683e19
sw x3, 0(x2) # store 0x99c2c2112c683e19 in memory
flw f8, 0(x2) # load 0x99c2c2112c683e19 from memory into f8
fsgnj.s f23, f6, f8 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x64b5d0dacb876400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b447358245584df # load x3 with value 0x1b447358245584df
sw x3, 0(x2) # store 0x1b447358245584df in memory
flw f31, 0(x2) # load 0x1b447358245584df from memory into f31
li x3, 0x4faa674609b0f872 # load x3 with value 0x4faa674609b0f872
sw x3, 0(x2) # store 0x4faa674609b0f872 in memory
flw f10, 0(x2) # load 0x4faa674609b0f872 from memory into f10
fsgnj.s f24, f31, f10 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xb1b423ad5b0dc3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89346caf618f186d # load x3 with value 0x89346caf618f186d
sw x3, 0(x2) # store 0x89346caf618f186d in memory
flw f8, 0(x2) # load 0x89346caf618f186d from memory into f8
li x3, 0x9227d8200d71528 # load x3 with value 0x9227d8200d71528
sw x3, 0(x2) # store 0x9227d8200d71528 in memory
flw f24, 0(x2) # load 0x9227d8200d71528 from memory into f24
fsgnj.s f25, f8, f24 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x63ac5364d4b13246 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a3fc294b682d176 # load x3 with value 0x3a3fc294b682d176
sw x3, 0(x2) # store 0x3a3fc294b682d176 in memory
flw f10, 0(x2) # load 0x3a3fc294b682d176 from memory into f10
li x3, 0x1bece6ff986437a4 # load x3 with value 0x1bece6ff986437a4
sw x3, 0(x2) # store 0x1bece6ff986437a4 in memory
flw f22, 0(x2) # load 0x1bece6ff986437a4 from memory into f22
fsgnj.s f26, f10, f22 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xe363f76ca2bbe38a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x401921104ae55713 # load x3 with value 0x401921104ae55713
sw x3, 0(x2) # store 0x401921104ae55713 in memory
flw f19, 0(x2) # load 0x401921104ae55713 from memory into f19
li x3, 0x878c242665f9bb28 # load x3 with value 0x878c242665f9bb28
sw x3, 0(x2) # store 0x878c242665f9bb28 in memory
flw f14, 0(x2) # load 0x878c242665f9bb28 from memory into f14
fsgnj.s f27, f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x78ea5f71cd634b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd361fcdae975c852 # load x3 with value 0xd361fcdae975c852
sw x3, 0(x2) # store 0xd361fcdae975c852 in memory
flw f6, 0(x2) # load 0xd361fcdae975c852 from memory into f6
li x3, 0xc21d6f1f2ba701fb # load x3 with value 0xc21d6f1f2ba701fb
sw x3, 0(x2) # store 0xc21d6f1f2ba701fb in memory
flw f16, 0(x2) # load 0xc21d6f1f2ba701fb from memory into f16
fsgnj.s f28, f6, f16 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xb2cbe203b6d82fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3aebc4997a54fa8d # load x3 with value 0x3aebc4997a54fa8d
sw x3, 0(x2) # store 0x3aebc4997a54fa8d in memory
flw f20, 0(x2) # load 0x3aebc4997a54fa8d from memory into f20
li x3, 0x28b6c60acec3d486 # load x3 with value 0x28b6c60acec3d486
sw x3, 0(x2) # store 0x28b6c60acec3d486 in memory
flw f14, 0(x2) # load 0x28b6c60acec3d486 from memory into f14
fsgnj.s f29, f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xc37e2fec3f0540eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43fe3321c423a36d # load x3 with value 0x43fe3321c423a36d
sw x3, 0(x2) # store 0x43fe3321c423a36d in memory
flw f16, 0(x2) # load 0x43fe3321c423a36d from memory into f16
li x3, 0x92721bcca3429e03 # load x3 with value 0x92721bcca3429e03
sw x3, 0(x2) # store 0x92721bcca3429e03 in memory
flw f3, 0(x2) # load 0x92721bcca3429e03 from memory into f3
fsgnj.s f30, f16, f3 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x8e340e40e53eefc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5da25f6e1c2a0f49 # load x3 with value 0x5da25f6e1c2a0f49
sw x3, 0(x2) # store 0x5da25f6e1c2a0f49 in memory
flw f14, 0(x2) # load 0x5da25f6e1c2a0f49 from memory into f14
li x3, 0x5edafb423516602c # load x3 with value 0x5edafb423516602c
sw x3, 0(x2) # store 0x5edafb423516602c in memory
flw f23, 0(x2) # load 0x5edafb423516602c from memory into f23
fsgnj.s f31, f14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x19, 0x041d112a75d5a27b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6259176efab242 # load x3 with value 0x6259176efab242
sw x3, 0(x2) # store 0x6259176efab242 in memory
flw f0, 0(x2) # load 0x6259176efab242 from memory into f0
li x3, 0x93f4567bea36e2c1 # load x3 with value 0x93f4567bea36e2c1
sw x3, 0(x2) # store 0x93f4567bea36e2c1 in memory
flw f28, 0(x2) # load 0x93f4567bea36e2c1 from memory into f28
fsgnj.s f19, f0, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x12, 0xe4bfff8f07934fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72ec712d70ae201a # load x3 with value 0x72ec712d70ae201a
sw x3, 0(x2) # store 0x72ec712d70ae201a in memory
flw f1, 0(x2) # load 0x72ec712d70ae201a from memory into f1
li x3, 0x3bbdf275489515bb # load x3 with value 0x3bbdf275489515bb
sw x3, 0(x2) # store 0x3bbdf275489515bb in memory
flw f26, 0(x2) # load 0x3bbdf275489515bb from memory into f26
fsgnj.s f12, f1, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x13, 0x770b435937f30e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa278862f0bb32d34 # load x3 with value 0xa278862f0bb32d34
sw x3, 0(x2) # store 0xa278862f0bb32d34 in memory
flw f2, 0(x2) # load 0xa278862f0bb32d34 from memory into f2
li x3, 0x20979f68e3e79f3e # load x3 with value 0x20979f68e3e79f3e
sw x3, 0(x2) # store 0x20979f68e3e79f3e in memory
flw f8, 0(x2) # load 0x20979f68e3e79f3e from memory into f8
fsgnj.s f13, f2, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0x4255aeb769db4765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fa86442f98fc073 # load x3 with value 0x8fa86442f98fc073
sw x3, 0(x2) # store 0x8fa86442f98fc073 in memory
flw f3, 0(x2) # load 0x8fa86442f98fc073 from memory into f3
li x3, 0xf90d48df03f6b384 # load x3 with value 0xf90d48df03f6b384
sw x3, 0(x2) # store 0xf90d48df03f6b384 in memory
flw f20, 0(x2) # load 0xf90d48df03f6b384 from memory into f20
fsgnj.s f25, f3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0xb3b58425078644ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd45188a35225877 # load x3 with value 0xd45188a35225877
sw x3, 0(x2) # store 0xd45188a35225877 in memory
flw f4, 0(x2) # load 0xd45188a35225877 from memory into f4
li x3, 0x8046856f899e053b # load x3 with value 0x8046856f899e053b
sw x3, 0(x2) # store 0x8046856f899e053b in memory
flw f10, 0(x2) # load 0x8046856f899e053b from memory into f10
fsgnj.s f15, f4, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x13, 0x712b9b8df4386dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x593db4e1e39ab90a # load x3 with value 0x593db4e1e39ab90a
sw x3, 0(x2) # store 0x593db4e1e39ab90a in memory
flw f5, 0(x2) # load 0x593db4e1e39ab90a from memory into f5
li x3, 0xac0f032b2195ea5b # load x3 with value 0xac0f032b2195ea5b
sw x3, 0(x2) # store 0xac0f032b2195ea5b in memory
flw f21, 0(x2) # load 0xac0f032b2195ea5b from memory into f21
fsgnj.s f13, f5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x4, 0xe459ebb301e1d7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa909207a394c2e42 # load x3 with value 0xa909207a394c2e42
sw x3, 0(x2) # store 0xa909207a394c2e42 in memory
flw f6, 0(x2) # load 0xa909207a394c2e42 from memory into f6
li x3, 0x9a3c9896e19c1790 # load x3 with value 0x9a3c9896e19c1790
sw x3, 0(x2) # store 0x9a3c9896e19c1790 in memory
flw f13, 0(x2) # load 0x9a3c9896e19c1790 from memory into f13
fsgnj.s f4, f6, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0x29c557235f21cf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffd4cc56a25d7a4a # load x3 with value 0xffd4cc56a25d7a4a
sw x3, 0(x2) # store 0xffd4cc56a25d7a4a in memory
flw f7, 0(x2) # load 0xffd4cc56a25d7a4a from memory into f7
li x3, 0xaf0f596a981aa00a # load x3 with value 0xaf0f596a981aa00a
sw x3, 0(x2) # store 0xaf0f596a981aa00a in memory
flw f24, 0(x2) # load 0xaf0f596a981aa00a from memory into f24
fsgnj.s f22, f7, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x4, 0xb7dcc584cffeb438 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7c2e0d4d4398bf3 # load x3 with value 0xf7c2e0d4d4398bf3
sw x3, 0(x2) # store 0xf7c2e0d4d4398bf3 in memory
flw f8, 0(x2) # load 0xf7c2e0d4d4398bf3 from memory into f8
li x3, 0xf9b6b9863de30eb6 # load x3 with value 0xf9b6b9863de30eb6
sw x3, 0(x2) # store 0xf9b6b9863de30eb6 in memory
flw f28, 0(x2) # load 0xf9b6b9863de30eb6 from memory into f28
fsgnj.s f4, f8, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x8, 0xe9c175abe356f038 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ddee9cbbe2137bd # load x3 with value 0x4ddee9cbbe2137bd
sw x3, 0(x2) # store 0x4ddee9cbbe2137bd in memory
flw f9, 0(x2) # load 0x4ddee9cbbe2137bd from memory into f9
li x3, 0x32ba938b2ba810b5 # load x3 with value 0x32ba938b2ba810b5
sw x3, 0(x2) # store 0x32ba938b2ba810b5 in memory
flw f22, 0(x2) # load 0x32ba938b2ba810b5 from memory into f22
fsgnj.s f8, f9, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x23, 0x8879666e2b6e856c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45b06024a9a18d4a # load x3 with value 0x45b06024a9a18d4a
sw x3, 0(x2) # store 0x45b06024a9a18d4a in memory
flw f10, 0(x2) # load 0x45b06024a9a18d4a from memory into f10
li x3, 0xca3f1f7bbc558b8b # load x3 with value 0xca3f1f7bbc558b8b
sw x3, 0(x2) # store 0xca3f1f7bbc558b8b in memory
flw f20, 0(x2) # load 0xca3f1f7bbc558b8b from memory into f20
fsgnj.s f23, f10, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x31, 0x9dbb2cdb33784866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4f71a3a9f26ab35 # load x3 with value 0xe4f71a3a9f26ab35
sw x3, 0(x2) # store 0xe4f71a3a9f26ab35 in memory
flw f11, 0(x2) # load 0xe4f71a3a9f26ab35 from memory into f11
li x3, 0x80ff34049d1af7d4 # load x3 with value 0x80ff34049d1af7d4
sw x3, 0(x2) # store 0x80ff34049d1af7d4 in memory
flw f9, 0(x2) # load 0x80ff34049d1af7d4 from memory into f9
fsgnj.s f31, f11, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x18, 0x2d5d4d015ede436f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa94e823e09e12a6 # load x3 with value 0xa94e823e09e12a6
sw x3, 0(x2) # store 0xa94e823e09e12a6 in memory
flw f12, 0(x2) # load 0xa94e823e09e12a6 from memory into f12
li x3, 0x75156facb402264f # load x3 with value 0x75156facb402264f
sw x3, 0(x2) # store 0x75156facb402264f in memory
flw f17, 0(x2) # load 0x75156facb402264f from memory into f17
fsgnj.s f18, f12, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x24, 0xc981aeee4ef64bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe11b83ce7ea7c351 # load x3 with value 0xe11b83ce7ea7c351
sw x3, 0(x2) # store 0xe11b83ce7ea7c351 in memory
flw f13, 0(x2) # load 0xe11b83ce7ea7c351 from memory into f13
li x3, 0xbf5e8f29912b22b0 # load x3 with value 0xbf5e8f29912b22b0
sw x3, 0(x2) # store 0xbf5e8f29912b22b0 in memory
flw f2, 0(x2) # load 0xbf5e8f29912b22b0 from memory into f2
fsgnj.s f24, f13, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0x187b452f5f2939a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcec8d8225cfe9952 # load x3 with value 0xcec8d8225cfe9952
sw x3, 0(x2) # store 0xcec8d8225cfe9952 in memory
flw f14, 0(x2) # load 0xcec8d8225cfe9952 from memory into f14
li x3, 0x60751a5e57df2d98 # load x3 with value 0x60751a5e57df2d98
sw x3, 0(x2) # store 0x60751a5e57df2d98 in memory
flw f22, 0(x2) # load 0x60751a5e57df2d98 from memory into f22
fsgnj.s f8, f14, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x27, 0xd63aab6b7677a5c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55cb1f35e82e88d4 # load x3 with value 0x55cb1f35e82e88d4
sw x3, 0(x2) # store 0x55cb1f35e82e88d4 in memory
flw f15, 0(x2) # load 0x55cb1f35e82e88d4 from memory into f15
li x3, 0x4687ea3d56b5cb52 # load x3 with value 0x4687ea3d56b5cb52
sw x3, 0(x2) # store 0x4687ea3d56b5cb52 in memory
flw f25, 0(x2) # load 0x4687ea3d56b5cb52 from memory into f25
fsgnj.s f27, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x17, 0xaad09d6a26622322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd075c9633809e92f # load x3 with value 0xd075c9633809e92f
sw x3, 0(x2) # store 0xd075c9633809e92f in memory
flw f16, 0(x2) # load 0xd075c9633809e92f from memory into f16
li x3, 0x909080163d1dc75a # load x3 with value 0x909080163d1dc75a
sw x3, 0(x2) # store 0x909080163d1dc75a in memory
flw f5, 0(x2) # load 0x909080163d1dc75a from memory into f5
fsgnj.s f17, f16, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x20, 0xa49ce12385292bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e9d0411c9e27b67 # load x3 with value 0x2e9d0411c9e27b67
sw x3, 0(x2) # store 0x2e9d0411c9e27b67 in memory
flw f17, 0(x2) # load 0x2e9d0411c9e27b67 from memory into f17
li x3, 0x67aaa97c339c1956 # load x3 with value 0x67aaa97c339c1956
sw x3, 0(x2) # store 0x67aaa97c339c1956 in memory
flw f30, 0(x2) # load 0x67aaa97c339c1956 from memory into f30
fsgnj.s f20, f17, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x21, 0x4b6d073d53c735ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee8f6741a24675d9 # load x3 with value 0xee8f6741a24675d9
sw x3, 0(x2) # store 0xee8f6741a24675d9 in memory
flw f18, 0(x2) # load 0xee8f6741a24675d9 from memory into f18
li x3, 0xc08a24543877b62f # load x3 with value 0xc08a24543877b62f
sw x3, 0(x2) # store 0xc08a24543877b62f in memory
flw f12, 0(x2) # load 0xc08a24543877b62f from memory into f12
fsgnj.s f21, f18, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x7, 0xf491936fabe9fd3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbac803e66527cee # load x3 with value 0xbac803e66527cee
sw x3, 0(x2) # store 0xbac803e66527cee in memory
flw f19, 0(x2) # load 0xbac803e66527cee from memory into f19
li x3, 0xf72409631a71e57f # load x3 with value 0xf72409631a71e57f
sw x3, 0(x2) # store 0xf72409631a71e57f in memory
flw f3, 0(x2) # load 0xf72409631a71e57f from memory into f3
fsgnj.s f7, f19, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x15, 0xa2cd4d156d91c809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac86475e481f7c78 # load x3 with value 0xac86475e481f7c78
sw x3, 0(x2) # store 0xac86475e481f7c78 in memory
flw f20, 0(x2) # load 0xac86475e481f7c78 from memory into f20
li x3, 0x963c707c4875b1d7 # load x3 with value 0x963c707c4875b1d7
sw x3, 0(x2) # store 0x963c707c4875b1d7 in memory
flw f7, 0(x2) # load 0x963c707c4875b1d7 from memory into f7
fsgnj.s f15, f20, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x30, 0xbf0ac52ce11f396a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2501d2c523cab943 # load x3 with value 0x2501d2c523cab943
sw x3, 0(x2) # store 0x2501d2c523cab943 in memory
flw f21, 0(x2) # load 0x2501d2c523cab943 from memory into f21
li x3, 0xdd0bd961937ce5a6 # load x3 with value 0xdd0bd961937ce5a6
sw x3, 0(x2) # store 0xdd0bd961937ce5a6 in memory
flw f15, 0(x2) # load 0xdd0bd961937ce5a6 from memory into f15
fsgnj.s f30, f21, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x8, 0x10963c5d010874a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5233760faf2c86ab # load x3 with value 0x5233760faf2c86ab
sw x3, 0(x2) # store 0x5233760faf2c86ab in memory
flw f22, 0(x2) # load 0x5233760faf2c86ab from memory into f22
li x3, 0x8040fdbe9aba0b52 # load x3 with value 0x8040fdbe9aba0b52
sw x3, 0(x2) # store 0x8040fdbe9aba0b52 in memory
flw f18, 0(x2) # load 0x8040fdbe9aba0b52 from memory into f18
fsgnj.s f8, f22, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x16, 0xd0c450cc2d99cccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2232b7e9a9f3445f # load x3 with value 0x2232b7e9a9f3445f
sw x3, 0(x2) # store 0x2232b7e9a9f3445f in memory
flw f23, 0(x2) # load 0x2232b7e9a9f3445f from memory into f23
li x3, 0x3b0624eb3f174d65 # load x3 with value 0x3b0624eb3f174d65
sw x3, 0(x2) # store 0x3b0624eb3f174d65 in memory
flw f2, 0(x2) # load 0x3b0624eb3f174d65 from memory into f2
fsgnj.s f16, f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x17, 0x38a47d9b156dfd09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec36e9c59e0880b7 # load x3 with value 0xec36e9c59e0880b7
sw x3, 0(x2) # store 0xec36e9c59e0880b7 in memory
flw f24, 0(x2) # load 0xec36e9c59e0880b7 from memory into f24
li x3, 0x94b4a051fe7b6051 # load x3 with value 0x94b4a051fe7b6051
sw x3, 0(x2) # store 0x94b4a051fe7b6051 in memory
flw f6, 0(x2) # load 0x94b4a051fe7b6051 from memory into f6
fsgnj.s f17, f24, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x29, 0x397a18f8ff294a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb9adad53a8a0439 # load x3 with value 0xcb9adad53a8a0439
sw x3, 0(x2) # store 0xcb9adad53a8a0439 in memory
flw f25, 0(x2) # load 0xcb9adad53a8a0439 from memory into f25
li x3, 0x2a165853d316c87d # load x3 with value 0x2a165853d316c87d
sw x3, 0(x2) # store 0x2a165853d316c87d in memory
flw f24, 0(x2) # load 0x2a165853d316c87d from memory into f24
fsgnj.s f29, f25, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x4, 0x0d8fad359bb15de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfdd052932d7ad3c # load x3 with value 0xbfdd052932d7ad3c
sw x3, 0(x2) # store 0xbfdd052932d7ad3c in memory
flw f26, 0(x2) # load 0xbfdd052932d7ad3c from memory into f26
li x3, 0x97ef963e0c40678d # load x3 with value 0x97ef963e0c40678d
sw x3, 0(x2) # store 0x97ef963e0c40678d in memory
flw f14, 0(x2) # load 0x97ef963e0c40678d from memory into f14
fsgnj.s f4, f26, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x11, 0x8d27277e162ba014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60ede2cfd92d1e8a # load x3 with value 0x60ede2cfd92d1e8a
sw x3, 0(x2) # store 0x60ede2cfd92d1e8a in memory
flw f27, 0(x2) # load 0x60ede2cfd92d1e8a from memory into f27
li x3, 0x6f5217f2e41daaf4 # load x3 with value 0x6f5217f2e41daaf4
sw x3, 0(x2) # store 0x6f5217f2e41daaf4 in memory
flw f23, 0(x2) # load 0x6f5217f2e41daaf4 from memory into f23
fsgnj.s f11, f27, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x22, 0x8b10b7728baff66d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1f759d2cc573c40 # load x3 with value 0xb1f759d2cc573c40
sw x3, 0(x2) # store 0xb1f759d2cc573c40 in memory
flw f28, 0(x2) # load 0xb1f759d2cc573c40 from memory into f28
li x3, 0xbf9096cab73a5d46 # load x3 with value 0xbf9096cab73a5d46
sw x3, 0(x2) # store 0xbf9096cab73a5d46 in memory
flw f1, 0(x2) # load 0xbf9096cab73a5d46 from memory into f1
fsgnj.s f22, f28, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x4, 0x120cfd468fb0105e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x553089a88277d2dd # load x3 with value 0x553089a88277d2dd
sw x3, 0(x2) # store 0x553089a88277d2dd in memory
flw f29, 0(x2) # load 0x553089a88277d2dd from memory into f29
li x3, 0xd92c16a06921d846 # load x3 with value 0xd92c16a06921d846
sw x3, 0(x2) # store 0xd92c16a06921d846 in memory
flw f19, 0(x2) # load 0xd92c16a06921d846 from memory into f19
fsgnj.s f4, f29, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x1, 0x7bb599c1e1e3b00b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcfc72607ddffb82 # load x3 with value 0xbcfc72607ddffb82
sw x3, 0(x2) # store 0xbcfc72607ddffb82 in memory
flw f30, 0(x2) # load 0xbcfc72607ddffb82 from memory into f30
li x3, 0xbe652bceace08680 # load x3 with value 0xbe652bceace08680
sw x3, 0(x2) # store 0xbe652bceace08680 in memory
flw f16, 0(x2) # load 0xbe652bceace08680 from memory into f16
fsgnj.s f1, f30, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x29, 0x64f72dbcb82f693c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54ba05c1223f22b9 # load x3 with value 0x54ba05c1223f22b9
sw x3, 0(x2) # store 0x54ba05c1223f22b9 in memory
flw f31, 0(x2) # load 0x54ba05c1223f22b9 from memory into f31
li x3, 0x30bf3a5213ab190 # load x3 with value 0x30bf3a5213ab190
sw x3, 0(x2) # store 0x30bf3a5213ab190 in memory
flw f25, 0(x2) # load 0x30bf3a5213ab190 from memory into f25
fsgnj.s f29, f31, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x31, 0xaa067f46fc12418e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x942507a2a11a24dc # load x3 with value 0x942507a2a11a24dc
sw x3, 0(x2) # store 0x942507a2a11a24dc in memory
flw f22, 0(x2) # load 0x942507a2a11a24dc from memory into f22
li x3, 0xcd212837e3968074 # load x3 with value 0xcd212837e3968074
sw x3, 0(x2) # store 0xcd212837e3968074 in memory
flw f0, 0(x2) # load 0xcd212837e3968074 from memory into f0
fsgnj.s f31, f22, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x6, 0x489ccffa6b2eae80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5661d76cec7cbb2e # load x3 with value 0x5661d76cec7cbb2e
sw x3, 0(x2) # store 0x5661d76cec7cbb2e in memory
flw f30, 0(x2) # load 0x5661d76cec7cbb2e from memory into f30
li x3, 0xdea67342124da31a # load x3 with value 0xdea67342124da31a
sw x3, 0(x2) # store 0xdea67342124da31a in memory
flw f1, 0(x2) # load 0xdea67342124da31a from memory into f1
fsgnj.s f6, f30, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x12, 0x79c73b552d5c0000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1727b0ac114c1ce # load x3 with value 0xf1727b0ac114c1ce
sw x3, 0(x2) # store 0xf1727b0ac114c1ce in memory
flw f30, 0(x2) # load 0xf1727b0ac114c1ce from memory into f30
li x3, 0x931fb74f6d5cf04 # load x3 with value 0x931fb74f6d5cf04
sw x3, 0(x2) # store 0x931fb74f6d5cf04 in memory
flw f2, 0(x2) # load 0x931fb74f6d5cf04 from memory into f2
fsgnj.s f12, f30, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x27, 0x884363c7a999f55d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce79eb968cdae2f4 # load x3 with value 0xce79eb968cdae2f4
sw x3, 0(x2) # store 0xce79eb968cdae2f4 in memory
flw f28, 0(x2) # load 0xce79eb968cdae2f4 from memory into f28
li x3, 0x3efa27bdc19b9886 # load x3 with value 0x3efa27bdc19b9886
sw x3, 0(x2) # store 0x3efa27bdc19b9886 in memory
flw f3, 0(x2) # load 0x3efa27bdc19b9886 from memory into f3
fsgnj.s f27, f28, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x17, 0x0587b2224bc07e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x847388177f2af43 # load x3 with value 0x847388177f2af43
sw x3, 0(x2) # store 0x847388177f2af43 in memory
flw f30, 0(x2) # load 0x847388177f2af43 from memory into f30
li x3, 0x576d4d52b2eb27ce # load x3 with value 0x576d4d52b2eb27ce
sw x3, 0(x2) # store 0x576d4d52b2eb27ce in memory
flw f4, 0(x2) # load 0x576d4d52b2eb27ce from memory into f4
fsgnj.s f17, f30, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x3, 0x0f3a37568965ebf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78084ae59efff600 # load x3 with value 0x78084ae59efff600
sw x3, 0(x2) # store 0x78084ae59efff600 in memory
flw f14, 0(x2) # load 0x78084ae59efff600 from memory into f14
li x3, 0xc43a142f313cbc49 # load x3 with value 0xc43a142f313cbc49
sw x3, 0(x2) # store 0xc43a142f313cbc49 in memory
flw f5, 0(x2) # load 0xc43a142f313cbc49 from memory into f5
fsgnj.s f3, f14, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x11, 0xc36fa91e9973ea05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5982343657a5989c # load x3 with value 0x5982343657a5989c
sw x3, 0(x2) # store 0x5982343657a5989c in memory
flw f8, 0(x2) # load 0x5982343657a5989c from memory into f8
li x3, 0xd2639f2f9d778ac7 # load x3 with value 0xd2639f2f9d778ac7
sw x3, 0(x2) # store 0xd2639f2f9d778ac7 in memory
flw f6, 0(x2) # load 0xd2639f2f9d778ac7 from memory into f6
fsgnj.s f11, f8, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x21, 0xb36bb837bab3fb78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa95dce4512852fa # load x3 with value 0xfa95dce4512852fa
sw x3, 0(x2) # store 0xfa95dce4512852fa in memory
flw f5, 0(x2) # load 0xfa95dce4512852fa from memory into f5
li x3, 0x4e50efb4d2209f69 # load x3 with value 0x4e50efb4d2209f69
sw x3, 0(x2) # store 0x4e50efb4d2209f69 in memory
flw f7, 0(x2) # load 0x4e50efb4d2209f69 from memory into f7
fsgnj.s f21, f5, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x4, 0x69bd13dc3889a9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ac438c2d17bc656 # load x3 with value 0x5ac438c2d17bc656
sw x3, 0(x2) # store 0x5ac438c2d17bc656 in memory
flw f26, 0(x2) # load 0x5ac438c2d17bc656 from memory into f26
li x3, 0x9b390dc32bed3000 # load x3 with value 0x9b390dc32bed3000
sw x3, 0(x2) # store 0x9b390dc32bed3000 in memory
flw f8, 0(x2) # load 0x9b390dc32bed3000 from memory into f8
fsgnj.s f4, f26, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x12, 0xd0fc919d00f70d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb220cf3cccc9525a # load x3 with value 0xb220cf3cccc9525a
sw x3, 0(x2) # store 0xb220cf3cccc9525a in memory
flw f7, 0(x2) # load 0xb220cf3cccc9525a from memory into f7
li x3, 0xc73f869361994bca # load x3 with value 0xc73f869361994bca
sw x3, 0(x2) # store 0xc73f869361994bca in memory
flw f9, 0(x2) # load 0xc73f869361994bca from memory into f9
fsgnj.s f12, f7, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x9, 0x0ccbb0288697627f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2d2fd3c64b21772 # load x3 with value 0xf2d2fd3c64b21772
sw x3, 0(x2) # store 0xf2d2fd3c64b21772 in memory
flw f1, 0(x2) # load 0xf2d2fd3c64b21772 from memory into f1
li x3, 0x66a27fbfe34280c3 # load x3 with value 0x66a27fbfe34280c3
sw x3, 0(x2) # store 0x66a27fbfe34280c3 in memory
flw f10, 0(x2) # load 0x66a27fbfe34280c3 from memory into f10
fsgnj.s f9, f1, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x17, 0x93a0b12aa5e1f713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf44b2cd48dba81c6 # load x3 with value 0xf44b2cd48dba81c6
sw x3, 0(x2) # store 0xf44b2cd48dba81c6 in memory
flw f22, 0(x2) # load 0xf44b2cd48dba81c6 from memory into f22
li x3, 0x475ced4949ee974c # load x3 with value 0x475ced4949ee974c
sw x3, 0(x2) # store 0x475ced4949ee974c in memory
flw f11, 0(x2) # load 0x475ced4949ee974c from memory into f11
fsgnj.s f17, f22, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x9, 0x61f39754bd3cd427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf87d555759878f87 # load x3 with value 0xf87d555759878f87
sw x3, 0(x2) # store 0xf87d555759878f87 in memory
flw f13, 0(x2) # load 0xf87d555759878f87 from memory into f13
li x3, 0xb806ce5d3235ced4 # load x3 with value 0xb806ce5d3235ced4
sw x3, 0(x2) # store 0xb806ce5d3235ced4 in memory
flw f12, 0(x2) # load 0xb806ce5d3235ced4 from memory into f12
fsgnj.s f9, f13, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x6, 0x38bf4863a2cf3d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6dc2614584677f1a # load x3 with value 0x6dc2614584677f1a
sw x3, 0(x2) # store 0x6dc2614584677f1a in memory
flw f8, 0(x2) # load 0x6dc2614584677f1a from memory into f8
li x3, 0xde68a25fe2c860e8 # load x3 with value 0xde68a25fe2c860e8
sw x3, 0(x2) # store 0xde68a25fe2c860e8 in memory
flw f13, 0(x2) # load 0xde68a25fe2c860e8 from memory into f13
fsgnj.s f6, f8, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x8, 0x9e629aca563c55e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3a5d2f8f2dfddfb # load x3 with value 0xb3a5d2f8f2dfddfb
sw x3, 0(x2) # store 0xb3a5d2f8f2dfddfb in memory
flw f20, 0(x2) # load 0xb3a5d2f8f2dfddfb from memory into f20
li x3, 0x34c571ad99e729cb # load x3 with value 0x34c571ad99e729cb
sw x3, 0(x2) # store 0x34c571ad99e729cb in memory
flw f14, 0(x2) # load 0x34c571ad99e729cb from memory into f14
fsgnj.s f8, f20, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x20, 0xf0b4fc03dd8d58a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f46cee5e489f0cf # load x3 with value 0x7f46cee5e489f0cf
sw x3, 0(x2) # store 0x7f46cee5e489f0cf in memory
flw f29, 0(x2) # load 0x7f46cee5e489f0cf from memory into f29
li x3, 0x6e64faf03e5ad9c2 # load x3 with value 0x6e64faf03e5ad9c2
sw x3, 0(x2) # store 0x6e64faf03e5ad9c2 in memory
flw f15, 0(x2) # load 0x6e64faf03e5ad9c2 from memory into f15
fsgnj.s f20, f29, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x27, 0xe099b64ba5c990ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb55a144749f2d183 # load x3 with value 0xb55a144749f2d183
sw x3, 0(x2) # store 0xb55a144749f2d183 in memory
flw f2, 0(x2) # load 0xb55a144749f2d183 from memory into f2
li x3, 0xdac1890024b6a8f # load x3 with value 0xdac1890024b6a8f
sw x3, 0(x2) # store 0xdac1890024b6a8f in memory
flw f16, 0(x2) # load 0xdac1890024b6a8f from memory into f16
fsgnj.s f27, f2, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x18, 0x38f139912f0fd5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8155de194c848413 # load x3 with value 0x8155de194c848413
sw x3, 0(x2) # store 0x8155de194c848413 in memory
flw f10, 0(x2) # load 0x8155de194c848413 from memory into f10
li x3, 0x75d8beac0bcfe831 # load x3 with value 0x75d8beac0bcfe831
sw x3, 0(x2) # store 0x75d8beac0bcfe831 in memory
flw f17, 0(x2) # load 0x75d8beac0bcfe831 from memory into f17
fsgnj.s f18, f10, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x31, 0x6a31c0e069e113f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4322df2b5918edcc # load x3 with value 0x4322df2b5918edcc
sw x3, 0(x2) # store 0x4322df2b5918edcc in memory
flw f7, 0(x2) # load 0x4322df2b5918edcc from memory into f7
li x3, 0xad28cfd39a963f3a # load x3 with value 0xad28cfd39a963f3a
sw x3, 0(x2) # store 0xad28cfd39a963f3a in memory
flw f18, 0(x2) # load 0xad28cfd39a963f3a from memory into f18
fsgnj.s f31, f7, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x2, 0xd5fdb15f573422d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8d80a67f045c0ed # load x3 with value 0xa8d80a67f045c0ed
sw x3, 0(x2) # store 0xa8d80a67f045c0ed in memory
flw f8, 0(x2) # load 0xa8d80a67f045c0ed from memory into f8
li x3, 0x675b44339fcf2013 # load x3 with value 0x675b44339fcf2013
sw x3, 0(x2) # store 0x675b44339fcf2013 in memory
flw f19, 0(x2) # load 0x675b44339fcf2013 from memory into f19
fsgnj.s f2, f8, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x24, 0xcbaa3718b7435db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x848b3d445917a571 # load x3 with value 0x848b3d445917a571
sw x3, 0(x2) # store 0x848b3d445917a571 in memory
flw f5, 0(x2) # load 0x848b3d445917a571 from memory into f5
li x3, 0x90b1b6ffadfde2ce # load x3 with value 0x90b1b6ffadfde2ce
sw x3, 0(x2) # store 0x90b1b6ffadfde2ce in memory
flw f20, 0(x2) # load 0x90b1b6ffadfde2ce from memory into f20
fsgnj.s f24, f5, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x28, 0x1a955f241a85d07c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96002c503fa63b67 # load x3 with value 0x96002c503fa63b67
sw x3, 0(x2) # store 0x96002c503fa63b67 in memory
flw f19, 0(x2) # load 0x96002c503fa63b67 from memory into f19
li x3, 0x20fdedcf70d9c4b3 # load x3 with value 0x20fdedcf70d9c4b3
sw x3, 0(x2) # store 0x20fdedcf70d9c4b3 in memory
flw f21, 0(x2) # load 0x20fdedcf70d9c4b3 from memory into f21
fsgnj.s f28, f19, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x17, 0x92ea2ad126eee9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6fc8c52c757726e # load x3 with value 0xe6fc8c52c757726e
sw x3, 0(x2) # store 0xe6fc8c52c757726e in memory
flw f4, 0(x2) # load 0xe6fc8c52c757726e from memory into f4
li x3, 0xc47dbdf0b6c5fbbf # load x3 with value 0xc47dbdf0b6c5fbbf
sw x3, 0(x2) # store 0xc47dbdf0b6c5fbbf in memory
flw f22, 0(x2) # load 0xc47dbdf0b6c5fbbf from memory into f22
fsgnj.s f17, f4, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x5, 0x89946611386b63b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c99788b3724d144 # load x3 with value 0x4c99788b3724d144
sw x3, 0(x2) # store 0x4c99788b3724d144 in memory
flw f2, 0(x2) # load 0x4c99788b3724d144 from memory into f2
li x3, 0x5ef2f8a7d59932f8 # load x3 with value 0x5ef2f8a7d59932f8
sw x3, 0(x2) # store 0x5ef2f8a7d59932f8 in memory
flw f23, 0(x2) # load 0x5ef2f8a7d59932f8 from memory into f23
fsgnj.s f5, f2, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x25, 0x5f1b32a93bab48e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbc189321dcbac5e # load x3 with value 0xcbc189321dcbac5e
sw x3, 0(x2) # store 0xcbc189321dcbac5e in memory
flw f15, 0(x2) # load 0xcbc189321dcbac5e from memory into f15
li x3, 0xcbacdc001383a235 # load x3 with value 0xcbacdc001383a235
sw x3, 0(x2) # store 0xcbacdc001383a235 in memory
flw f24, 0(x2) # load 0xcbacdc001383a235 from memory into f24
fsgnj.s f25, f15, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x4, 0x7ba3fda2ad5a992a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6c21ef2244c1cd9 # load x3 with value 0xe6c21ef2244c1cd9
sw x3, 0(x2) # store 0xe6c21ef2244c1cd9 in memory
flw f20, 0(x2) # load 0xe6c21ef2244c1cd9 from memory into f20
li x3, 0x88236b6b66fd1c74 # load x3 with value 0x88236b6b66fd1c74
sw x3, 0(x2) # store 0x88236b6b66fd1c74 in memory
flw f25, 0(x2) # load 0x88236b6b66fd1c74 from memory into f25
fsgnj.s f4, f20, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x18, 0x3482199ea632a165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb97973f38b8e9b65 # load x3 with value 0xb97973f38b8e9b65
sw x3, 0(x2) # store 0xb97973f38b8e9b65 in memory
flw f31, 0(x2) # load 0xb97973f38b8e9b65 from memory into f31
li x3, 0x45134dfd04732732 # load x3 with value 0x45134dfd04732732
sw x3, 0(x2) # store 0x45134dfd04732732 in memory
flw f26, 0(x2) # load 0x45134dfd04732732 from memory into f26
fsgnj.s f18, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x23, 0xa35c248459433aac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ec9ac495f56ccf7 # load x3 with value 0x4ec9ac495f56ccf7
sw x3, 0(x2) # store 0x4ec9ac495f56ccf7 in memory
flw f30, 0(x2) # load 0x4ec9ac495f56ccf7 from memory into f30
li x3, 0x51cbcaddc44195be # load x3 with value 0x51cbcaddc44195be
sw x3, 0(x2) # store 0x51cbcaddc44195be in memory
flw f27, 0(x2) # load 0x51cbcaddc44195be from memory into f27
fsgnj.s f23, f30, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x7, 0x4e22d61284f3157e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae418dbbe93c52b2 # load x3 with value 0xae418dbbe93c52b2
sw x3, 0(x2) # store 0xae418dbbe93c52b2 in memory
flw f30, 0(x2) # load 0xae418dbbe93c52b2 from memory into f30
li x3, 0x79ce0863e212e2f5 # load x3 with value 0x79ce0863e212e2f5
sw x3, 0(x2) # store 0x79ce0863e212e2f5 in memory
flw f28, 0(x2) # load 0x79ce0863e212e2f5 from memory into f28
fsgnj.s f7, f30, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x19, 0x5b7e9e392031fe22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c9ec8c0ae361bb8 # load x3 with value 0x7c9ec8c0ae361bb8
sw x3, 0(x2) # store 0x7c9ec8c0ae361bb8 in memory
flw f7, 0(x2) # load 0x7c9ec8c0ae361bb8 from memory into f7
li x3, 0x1f04de4d27189854 # load x3 with value 0x1f04de4d27189854
sw x3, 0(x2) # store 0x1f04de4d27189854 in memory
flw f29, 0(x2) # load 0x1f04de4d27189854 from memory into f29
fsgnj.s f19, f7, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x26, 0x5de09bbe22955a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f50c4273a351884 # load x3 with value 0x6f50c4273a351884
sw x3, 0(x2) # store 0x6f50c4273a351884 in memory
flw f22, 0(x2) # load 0x6f50c4273a351884 from memory into f22
li x3, 0x1fc96325986cf80e # load x3 with value 0x1fc96325986cf80e
sw x3, 0(x2) # store 0x1fc96325986cf80e in memory
flw f30, 0(x2) # load 0x1fc96325986cf80e from memory into f30
fsgnj.s f26, f22, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x7, 0x177672ce2c2aa97a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15c5e8a57f3449e9 # load x3 with value 0x15c5e8a57f3449e9
sw x3, 0(x2) # store 0x15c5e8a57f3449e9 in memory
flw f9, 0(x2) # load 0x15c5e8a57f3449e9 from memory into f9
li x3, 0x987729975fac1a1d # load x3 with value 0x987729975fac1a1d
sw x3, 0(x2) # store 0x987729975fac1a1d in memory
flw f31, 0(x2) # load 0x987729975fac1a1d from memory into f31
fsgnj.s f7, f9, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
