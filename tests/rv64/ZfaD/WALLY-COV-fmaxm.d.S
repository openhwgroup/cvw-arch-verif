///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaD//WALLY-COV-fmaxm.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.968192
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


# Testcase cmp_gpr_hazard raw test
fmaxm.d f24, f3, f26 # perform first operation
fmaxm.d f19, f24, f4 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmaxm.d f1, f2, f21 # perform first operation
fmaxm.d f4, f7, f1 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmaxm.d f16, f20, f1 # perform first operation
fmaxm.d f16, f17, f6 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmaxm.d f3, f14, f11 # perform first operation
fmaxm.d f3, f14, f31 # perform second operation

# Testcase cmp_gpr_hazard war test
fmaxm.d f9, f16, f13 # perform first operation
fmaxm.d f16, f24, f7 # perform second operation

# Testcase cmp_gpr_hazard war test
fmaxm.d f2, f14, f26 # perform first operation
fmaxm.d f26, f7, f3 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x13880247405ab5b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56b4f6a56179ffad # load x3 with value 0x56b4f6a56179ffad
sd x3, 0(x2) # store 0x56b4f6a56179ffad in memory
fld f0, 0(x2) # load 0x56b4f6a56179ffad from memory into f0
li x3, 0xfcc2a7ca193b18f1 # load x3 with value 0xfcc2a7ca193b18f1
sd x3, 0(x2) # store 0xfcc2a7ca193b18f1 in memory
fld f3, 0(x2) # load 0xfcc2a7ca193b18f1 from memory into f3
fmaxm.d f0, f0, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xedfae35734c4b162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88789383ba7398a4 # load x3 with value 0x88789383ba7398a4
sd x3, 0(x2) # store 0x88789383ba7398a4 in memory
fld f1, 0(x2) # load 0x88789383ba7398a4 from memory into f1
li x3, 0x6137336718873d8a # load x3 with value 0x6137336718873d8a
sd x3, 0(x2) # store 0x6137336718873d8a in memory
fld f1, 0(x2) # load 0x6137336718873d8a from memory into f1
fmaxm.d f1, f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xfec12f0f345d953c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x564863bceb3a1e75 # load x3 with value 0x564863bceb3a1e75
sd x3, 0(x2) # store 0x564863bceb3a1e75 in memory
fld f2, 0(x2) # load 0x564863bceb3a1e75 from memory into f2
li x3, 0xbfbeb752165eb142 # load x3 with value 0xbfbeb752165eb142
sd x3, 0(x2) # store 0xbfbeb752165eb142 in memory
fld f11, 0(x2) # load 0xbfbeb752165eb142 from memory into f11
fmaxm.d f2, f2, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x5e5fd4e1c853ec06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x697390e643510d13 # load x3 with value 0x697390e643510d13
sd x3, 0(x2) # store 0x697390e643510d13 in memory
fld f3, 0(x2) # load 0x697390e643510d13 from memory into f3
li x3, 0xc39a2c847ed2868d # load x3 with value 0xc39a2c847ed2868d
sd x3, 0(x2) # store 0xc39a2c847ed2868d in memory
fld f30, 0(x2) # load 0xc39a2c847ed2868d from memory into f30
fmaxm.d f3, f3, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x83f1fcdfbc199412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x164aab6320769874 # load x3 with value 0x164aab6320769874
sd x3, 0(x2) # store 0x164aab6320769874 in memory
fld f4, 0(x2) # load 0x164aab6320769874 from memory into f4
li x3, 0x21d093e7d02261b8 # load x3 with value 0x21d093e7d02261b8
sd x3, 0(x2) # store 0x21d093e7d02261b8 in memory
fld f31, 0(x2) # load 0x21d093e7d02261b8 from memory into f31
fmaxm.d f4, f4, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xb049d1c5a24e21a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x955d6a1b916b713d # load x3 with value 0x955d6a1b916b713d
sd x3, 0(x2) # store 0x955d6a1b916b713d in memory
fld f5, 0(x2) # load 0x955d6a1b916b713d from memory into f5
li x3, 0x51780366dd154087 # load x3 with value 0x51780366dd154087
sd x3, 0(x2) # store 0x51780366dd154087 in memory
fld f26, 0(x2) # load 0x51780366dd154087 from memory into f26
fmaxm.d f5, f5, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x9dd4cbc9aa2f9c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd451ec71b8f82580 # load x3 with value 0xd451ec71b8f82580
sd x3, 0(x2) # store 0xd451ec71b8f82580 in memory
fld f6, 0(x2) # load 0xd451ec71b8f82580 from memory into f6
li x3, 0x48fd2d31d936c2da # load x3 with value 0x48fd2d31d936c2da
sd x3, 0(x2) # store 0x48fd2d31d936c2da in memory
fld f26, 0(x2) # load 0x48fd2d31d936c2da from memory into f26
fmaxm.d f6, f6, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xeed0fa7331a46900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93d8ef8a195b215b # load x3 with value 0x93d8ef8a195b215b
sd x3, 0(x2) # store 0x93d8ef8a195b215b in memory
fld f7, 0(x2) # load 0x93d8ef8a195b215b from memory into f7
li x3, 0xd45deceb287f7604 # load x3 with value 0xd45deceb287f7604
sd x3, 0(x2) # store 0xd45deceb287f7604 in memory
fld f30, 0(x2) # load 0xd45deceb287f7604 from memory into f30
fmaxm.d f7, f7, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xced9553d500ca624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4b8d6c80b0591f7 # load x3 with value 0xc4b8d6c80b0591f7
sd x3, 0(x2) # store 0xc4b8d6c80b0591f7 in memory
fld f8, 0(x2) # load 0xc4b8d6c80b0591f7 from memory into f8
li x3, 0x015fffe94de81e1a # load x3 with value 0x015fffe94de81e1a
sd x3, 0(x2) # store 0x015fffe94de81e1a in memory
fld f25, 0(x2) # load 0x015fffe94de81e1a from memory into f25
fmaxm.d f8, f8, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xc8eb264ec42f0bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3137671a78aca033 # load x3 with value 0x3137671a78aca033
sd x3, 0(x2) # store 0x3137671a78aca033 in memory
fld f9, 0(x2) # load 0x3137671a78aca033 from memory into f9
li x3, 0x551f2ca72b9eca24 # load x3 with value 0x551f2ca72b9eca24
sd x3, 0(x2) # store 0x551f2ca72b9eca24 in memory
fld f4, 0(x2) # load 0x551f2ca72b9eca24 from memory into f4
fmaxm.d f9, f9, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x183f7a0ae5c4af42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd2c3215792671c2 # load x3 with value 0xbd2c3215792671c2
sd x3, 0(x2) # store 0xbd2c3215792671c2 in memory
fld f10, 0(x2) # load 0xbd2c3215792671c2 from memory into f10
li x3, 0x6b9ed68c932d00f4 # load x3 with value 0x6b9ed68c932d00f4
sd x3, 0(x2) # store 0x6b9ed68c932d00f4 in memory
fld f9, 0(x2) # load 0x6b9ed68c932d00f4 from memory into f9
fmaxm.d f10, f10, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xca42581aa1403116 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5963c75db21ca9d8 # load x3 with value 0x5963c75db21ca9d8
sd x3, 0(x2) # store 0x5963c75db21ca9d8 in memory
fld f11, 0(x2) # load 0x5963c75db21ca9d8 from memory into f11
li x3, 0x3b279609a4cf0e94 # load x3 with value 0x3b279609a4cf0e94
sd x3, 0(x2) # store 0x3b279609a4cf0e94 in memory
fld f26, 0(x2) # load 0x3b279609a4cf0e94 from memory into f26
fmaxm.d f11, f11, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x0b1c9d678b32d53d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5564ee7f1f37a021 # load x3 with value 0x5564ee7f1f37a021
sd x3, 0(x2) # store 0x5564ee7f1f37a021 in memory
fld f12, 0(x2) # load 0x5564ee7f1f37a021 from memory into f12
li x3, 0xa3f4cd12456edb5d # load x3 with value 0xa3f4cd12456edb5d
sd x3, 0(x2) # store 0xa3f4cd12456edb5d in memory
fld f2, 0(x2) # load 0xa3f4cd12456edb5d from memory into f2
fmaxm.d f12, f12, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x3762710434072f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b69f8bc5a224803 # load x3 with value 0x8b69f8bc5a224803
sd x3, 0(x2) # store 0x8b69f8bc5a224803 in memory
fld f13, 0(x2) # load 0x8b69f8bc5a224803 from memory into f13
li x3, 0x6c2746ec9610b864 # load x3 with value 0x6c2746ec9610b864
sd x3, 0(x2) # store 0x6c2746ec9610b864 in memory
fld f6, 0(x2) # load 0x6c2746ec9610b864 from memory into f6
fmaxm.d f13, f13, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xa2ad7deea352c3b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80fc57b0cff2dd1d # load x3 with value 0x80fc57b0cff2dd1d
sd x3, 0(x2) # store 0x80fc57b0cff2dd1d in memory
fld f14, 0(x2) # load 0x80fc57b0cff2dd1d from memory into f14
li x3, 0xfb3e85152f3a740b # load x3 with value 0xfb3e85152f3a740b
sd x3, 0(x2) # store 0xfb3e85152f3a740b in memory
fld f29, 0(x2) # load 0xfb3e85152f3a740b from memory into f29
fmaxm.d f14, f14, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x2584c15f86f0ecf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15052a9cd1790c31 # load x3 with value 0x15052a9cd1790c31
sd x3, 0(x2) # store 0x15052a9cd1790c31 in memory
fld f15, 0(x2) # load 0x15052a9cd1790c31 from memory into f15
li x3, 0x5729644848e33afb # load x3 with value 0x5729644848e33afb
sd x3, 0(x2) # store 0x5729644848e33afb in memory
fld f21, 0(x2) # load 0x5729644848e33afb from memory into f21
fmaxm.d f15, f15, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xac02b6a5076876a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e2765e4bc737c1f # load x3 with value 0x2e2765e4bc737c1f
sd x3, 0(x2) # store 0x2e2765e4bc737c1f in memory
fld f16, 0(x2) # load 0x2e2765e4bc737c1f from memory into f16
li x3, 0x8c8a395331eea7e7 # load x3 with value 0x8c8a395331eea7e7
sd x3, 0(x2) # store 0x8c8a395331eea7e7 in memory
fld f29, 0(x2) # load 0x8c8a395331eea7e7 from memory into f29
fmaxm.d f16, f16, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xac230c8b85c3c6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40a68e2672ea047e # load x3 with value 0x40a68e2672ea047e
sd x3, 0(x2) # store 0x40a68e2672ea047e in memory
fld f17, 0(x2) # load 0x40a68e2672ea047e from memory into f17
li x3, 0x901a5e7d524bf9e9 # load x3 with value 0x901a5e7d524bf9e9
sd x3, 0(x2) # store 0x901a5e7d524bf9e9 in memory
fld f11, 0(x2) # load 0x901a5e7d524bf9e9 from memory into f11
fmaxm.d f17, f17, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x647dc8095b69addc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10b7451b3066a1df # load x3 with value 0x10b7451b3066a1df
sd x3, 0(x2) # store 0x10b7451b3066a1df in memory
fld f18, 0(x2) # load 0x10b7451b3066a1df from memory into f18
li x3, 0x95760ba78ea79dcd # load x3 with value 0x95760ba78ea79dcd
sd x3, 0(x2) # store 0x95760ba78ea79dcd in memory
fld f1, 0(x2) # load 0x95760ba78ea79dcd from memory into f1
fmaxm.d f18, f18, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xa47f8e1ccb100715 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c3f662bc241be22 # load x3 with value 0x9c3f662bc241be22
sd x3, 0(x2) # store 0x9c3f662bc241be22 in memory
fld f19, 0(x2) # load 0x9c3f662bc241be22 from memory into f19
li x3, 0x2ba220e2e57442b6 # load x3 with value 0x2ba220e2e57442b6
sd x3, 0(x2) # store 0x2ba220e2e57442b6 in memory
fld f8, 0(x2) # load 0x2ba220e2e57442b6 from memory into f8
fmaxm.d f19, f19, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xdb3bae58882a5ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd27a3e2fd3b47d05 # load x3 with value 0xd27a3e2fd3b47d05
sd x3, 0(x2) # store 0xd27a3e2fd3b47d05 in memory
fld f20, 0(x2) # load 0xd27a3e2fd3b47d05 from memory into f20
li x3, 0x0d6569cf291e4626 # load x3 with value 0x0d6569cf291e4626
sd x3, 0(x2) # store 0x0d6569cf291e4626 in memory
fld f24, 0(x2) # load 0x0d6569cf291e4626 from memory into f24
fmaxm.d f20, f20, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x632775f97bf829a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39d5b7d38f0348b6 # load x3 with value 0x39d5b7d38f0348b6
sd x3, 0(x2) # store 0x39d5b7d38f0348b6 in memory
fld f21, 0(x2) # load 0x39d5b7d38f0348b6 from memory into f21
li x3, 0x5134a1b9741573be # load x3 with value 0x5134a1b9741573be
sd x3, 0(x2) # store 0x5134a1b9741573be in memory
fld f5, 0(x2) # load 0x5134a1b9741573be from memory into f5
fmaxm.d f21, f21, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x8daa68547a2db77e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ebd111908ea145f # load x3 with value 0x4ebd111908ea145f
sd x3, 0(x2) # store 0x4ebd111908ea145f in memory
fld f22, 0(x2) # load 0x4ebd111908ea145f from memory into f22
li x3, 0x6f412143fb5a241a # load x3 with value 0x6f412143fb5a241a
sd x3, 0(x2) # store 0x6f412143fb5a241a in memory
fld f23, 0(x2) # load 0x6f412143fb5a241a from memory into f23
fmaxm.d f22, f22, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x6060be614edee902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c7803f5f87591fb # load x3 with value 0x8c7803f5f87591fb
sd x3, 0(x2) # store 0x8c7803f5f87591fb in memory
fld f23, 0(x2) # load 0x8c7803f5f87591fb from memory into f23
li x3, 0xbec98cb095d1e3b1 # load x3 with value 0xbec98cb095d1e3b1
sd x3, 0(x2) # store 0xbec98cb095d1e3b1 in memory
fld f7, 0(x2) # load 0xbec98cb095d1e3b1 from memory into f7
fmaxm.d f23, f23, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x35a0151d0e1703f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6500ba1fd7ff7022 # load x3 with value 0x6500ba1fd7ff7022
sd x3, 0(x2) # store 0x6500ba1fd7ff7022 in memory
fld f24, 0(x2) # load 0x6500ba1fd7ff7022 from memory into f24
li x3, 0x6c24352774a52e03 # load x3 with value 0x6c24352774a52e03
sd x3, 0(x2) # store 0x6c24352774a52e03 in memory
fld f22, 0(x2) # load 0x6c24352774a52e03 from memory into f22
fmaxm.d f24, f24, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x7342c39176f2246c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5e4df646035a784 # load x3 with value 0xc5e4df646035a784
sd x3, 0(x2) # store 0xc5e4df646035a784 in memory
fld f25, 0(x2) # load 0xc5e4df646035a784 from memory into f25
li x3, 0x8d8c61cd42c96862 # load x3 with value 0x8d8c61cd42c96862
sd x3, 0(x2) # store 0x8d8c61cd42c96862 in memory
fld f10, 0(x2) # load 0x8d8c61cd42c96862 from memory into f10
fmaxm.d f25, f25, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x005dd1e057c4c6f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04dea91d06da0a02 # load x3 with value 0x04dea91d06da0a02
sd x3, 0(x2) # store 0x04dea91d06da0a02 in memory
fld f26, 0(x2) # load 0x04dea91d06da0a02 from memory into f26
li x3, 0x460df1bb6b0b2d4d # load x3 with value 0x460df1bb6b0b2d4d
sd x3, 0(x2) # store 0x460df1bb6b0b2d4d in memory
fld f2, 0(x2) # load 0x460df1bb6b0b2d4d from memory into f2
fmaxm.d f26, f26, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x6afc9cc43c97c818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2da89fbccef51d1 # load x3 with value 0xf2da89fbccef51d1
sd x3, 0(x2) # store 0xf2da89fbccef51d1 in memory
fld f27, 0(x2) # load 0xf2da89fbccef51d1 from memory into f27
li x3, 0xc56ef0c1224eb380 # load x3 with value 0xc56ef0c1224eb380
sd x3, 0(x2) # store 0xc56ef0c1224eb380 in memory
fld f25, 0(x2) # load 0xc56ef0c1224eb380 from memory into f25
fmaxm.d f27, f27, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x6e5bf5c2b79e6afb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe04219df07fa70d6 # load x3 with value 0xe04219df07fa70d6
sd x3, 0(x2) # store 0xe04219df07fa70d6 in memory
fld f28, 0(x2) # load 0xe04219df07fa70d6 from memory into f28
li x3, 0x10b211a83c693556 # load x3 with value 0x10b211a83c693556
sd x3, 0(x2) # store 0x10b211a83c693556 in memory
fld f15, 0(x2) # load 0x10b211a83c693556 from memory into f15
fmaxm.d f28, f28, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xe8ab392d335d8c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x042f315b5e631062 # load x3 with value 0x042f315b5e631062
sd x3, 0(x2) # store 0x042f315b5e631062 in memory
fld f29, 0(x2) # load 0x042f315b5e631062 from memory into f29
li x3, 0xf89da319a4133661 # load x3 with value 0xf89da319a4133661
sd x3, 0(x2) # store 0xf89da319a4133661 in memory
fld f26, 0(x2) # load 0xf89da319a4133661 from memory into f26
fmaxm.d f29, f29, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x1f01dba5eb613507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3723799cd9c724e7 # load x3 with value 0x3723799cd9c724e7
sd x3, 0(x2) # store 0x3723799cd9c724e7 in memory
fld f30, 0(x2) # load 0x3723799cd9c724e7 from memory into f30
li x3, 0x66cb0d8a9c9d2e5a # load x3 with value 0x66cb0d8a9c9d2e5a
sd x3, 0(x2) # store 0x66cb0d8a9c9d2e5a in memory
fld f20, 0(x2) # load 0x66cb0d8a9c9d2e5a from memory into f20
fmaxm.d f30, f30, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xcf1513212f775853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24643be923f30c4e # load x3 with value 0x24643be923f30c4e
sd x3, 0(x2) # store 0x24643be923f30c4e in memory
fld f31, 0(x2) # load 0x24643be923f30c4e from memory into f31
li x3, 0x2f23d2c31f045774 # load x3 with value 0x2f23d2c31f045774
sd x3, 0(x2) # store 0x2f23d2c31f045774 in memory
fld f3, 0(x2) # load 0x2f23d2c31f045774 from memory into f3
fmaxm.d f31, f31, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x1ae43b4bacde7905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6dd1c83c1fb2af63 # load x3 with value 0x6dd1c83c1fb2af63
sd x3, 0(x2) # store 0x6dd1c83c1fb2af63 in memory
fld f27, 0(x2) # load 0x6dd1c83c1fb2af63 from memory into f27
li x3, 0x2512b645b75abf83 # load x3 with value 0x2512b645b75abf83
sd x3, 0(x2) # store 0x2512b645b75abf83 in memory
fld f0, 0(x2) # load 0x2512b645b75abf83 from memory into f0
fmaxm.d f0, f27, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x835bfbf544265254 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69e0b46b40719f08 # load x3 with value 0x69e0b46b40719f08
sd x3, 0(x2) # store 0x69e0b46b40719f08 in memory
fld f2, 0(x2) # load 0x69e0b46b40719f08 from memory into f2
li x3, 0x672aa19400886d50 # load x3 with value 0x672aa19400886d50
sd x3, 0(x2) # store 0x672aa19400886d50 in memory
fld f1, 0(x2) # load 0x672aa19400886d50 from memory into f1
fmaxm.d f1, f2, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xe12edf4415080c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc6a724c731b6a50 # load x3 with value 0xbc6a724c731b6a50
sd x3, 0(x2) # store 0xbc6a724c731b6a50 in memory
fld f12, 0(x2) # load 0xbc6a724c731b6a50 from memory into f12
li x3, 0xafdc121f0bacd2e1 # load x3 with value 0xafdc121f0bacd2e1
sd x3, 0(x2) # store 0xafdc121f0bacd2e1 in memory
fld f2, 0(x2) # load 0xafdc121f0bacd2e1 from memory into f2
fmaxm.d f2, f12, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xf028e007a017fe83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa41bbb63bc4b51c9 # load x3 with value 0xa41bbb63bc4b51c9
sd x3, 0(x2) # store 0xa41bbb63bc4b51c9 in memory
fld f29, 0(x2) # load 0xa41bbb63bc4b51c9 from memory into f29
li x3, 0x3075bcaf1dce3bd9 # load x3 with value 0x3075bcaf1dce3bd9
sd x3, 0(x2) # store 0x3075bcaf1dce3bd9 in memory
fld f3, 0(x2) # load 0x3075bcaf1dce3bd9 from memory into f3
fmaxm.d f3, f29, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xe21ae17368937733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x282dc3ff8193f5b8 # load x3 with value 0x282dc3ff8193f5b8
sd x3, 0(x2) # store 0x282dc3ff8193f5b8 in memory
fld f16, 0(x2) # load 0x282dc3ff8193f5b8 from memory into f16
li x3, 0x25c2b59c7b11bc76 # load x3 with value 0x25c2b59c7b11bc76
sd x3, 0(x2) # store 0x25c2b59c7b11bc76 in memory
fld f4, 0(x2) # load 0x25c2b59c7b11bc76 from memory into f4
fmaxm.d f4, f16, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x429e9eee016b2ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb49f6b5a1db98d5 # load x3 with value 0xcb49f6b5a1db98d5
sd x3, 0(x2) # store 0xcb49f6b5a1db98d5 in memory
fld f21, 0(x2) # load 0xcb49f6b5a1db98d5 from memory into f21
li x3, 0x35f91343f1d24c93 # load x3 with value 0x35f91343f1d24c93
sd x3, 0(x2) # store 0x35f91343f1d24c93 in memory
fld f5, 0(x2) # load 0x35f91343f1d24c93 from memory into f5
fmaxm.d f5, f21, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x910b93836e70fa81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdac7c3c6cd3cb910 # load x3 with value 0xdac7c3c6cd3cb910
sd x3, 0(x2) # store 0xdac7c3c6cd3cb910 in memory
fld f26, 0(x2) # load 0xdac7c3c6cd3cb910 from memory into f26
li x3, 0x8dcfe8a52c5b7520 # load x3 with value 0x8dcfe8a52c5b7520
sd x3, 0(x2) # store 0x8dcfe8a52c5b7520 in memory
fld f6, 0(x2) # load 0x8dcfe8a52c5b7520 from memory into f6
fmaxm.d f6, f26, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x4233400c79007518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc246370997c29ca # load x3 with value 0xfc246370997c29ca
sd x3, 0(x2) # store 0xfc246370997c29ca in memory
fld f17, 0(x2) # load 0xfc246370997c29ca from memory into f17
li x3, 0xf709d11fb6660de7 # load x3 with value 0xf709d11fb6660de7
sd x3, 0(x2) # store 0xf709d11fb6660de7 in memory
fld f7, 0(x2) # load 0xf709d11fb6660de7 from memory into f7
fmaxm.d f7, f17, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xfa3c00024dd58640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcce45683df5beb3 # load x3 with value 0xbcce45683df5beb3
sd x3, 0(x2) # store 0xbcce45683df5beb3 in memory
fld f17, 0(x2) # load 0xbcce45683df5beb3 from memory into f17
li x3, 0xf5492c1d5a4e0f4c # load x3 with value 0xf5492c1d5a4e0f4c
sd x3, 0(x2) # store 0xf5492c1d5a4e0f4c in memory
fld f8, 0(x2) # load 0xf5492c1d5a4e0f4c from memory into f8
fmaxm.d f8, f17, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x41485af83c4834d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x266f5d20ce0f65f8 # load x3 with value 0x266f5d20ce0f65f8
sd x3, 0(x2) # store 0x266f5d20ce0f65f8 in memory
fld f17, 0(x2) # load 0x266f5d20ce0f65f8 from memory into f17
li x3, 0x8d70c85a233922dd # load x3 with value 0x8d70c85a233922dd
sd x3, 0(x2) # store 0x8d70c85a233922dd in memory
fld f9, 0(x2) # load 0x8d70c85a233922dd from memory into f9
fmaxm.d f9, f17, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x2be27160deadf7d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc4e42d4d119b252 # load x3 with value 0xcc4e42d4d119b252
sd x3, 0(x2) # store 0xcc4e42d4d119b252 in memory
fld f11, 0(x2) # load 0xcc4e42d4d119b252 from memory into f11
li x3, 0x92d6833973395c79 # load x3 with value 0x92d6833973395c79
sd x3, 0(x2) # store 0x92d6833973395c79 in memory
fld f10, 0(x2) # load 0x92d6833973395c79 from memory into f10
fmaxm.d f10, f11, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x42404aad4e8ef8f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ca7367feed776e8 # load x3 with value 0x3ca7367feed776e8
sd x3, 0(x2) # store 0x3ca7367feed776e8 in memory
fld f5, 0(x2) # load 0x3ca7367feed776e8 from memory into f5
li x3, 0xe7ed5a6048d12603 # load x3 with value 0xe7ed5a6048d12603
sd x3, 0(x2) # store 0xe7ed5a6048d12603 in memory
fld f11, 0(x2) # load 0xe7ed5a6048d12603 from memory into f11
fmaxm.d f11, f5, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x6f0798638b1ede31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe98150658d781970 # load x3 with value 0xe98150658d781970
sd x3, 0(x2) # store 0xe98150658d781970 in memory
fld f8, 0(x2) # load 0xe98150658d781970 from memory into f8
li x3, 0x2beecad1a3cd25ce # load x3 with value 0x2beecad1a3cd25ce
sd x3, 0(x2) # store 0x2beecad1a3cd25ce in memory
fld f12, 0(x2) # load 0x2beecad1a3cd25ce from memory into f12
fmaxm.d f12, f8, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x550923c10da7b730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2344753f9dc4db8e # load x3 with value 0x2344753f9dc4db8e
sd x3, 0(x2) # store 0x2344753f9dc4db8e in memory
fld f16, 0(x2) # load 0x2344753f9dc4db8e from memory into f16
li x3, 0xee8e2a803ca0cf92 # load x3 with value 0xee8e2a803ca0cf92
sd x3, 0(x2) # store 0xee8e2a803ca0cf92 in memory
fld f13, 0(x2) # load 0xee8e2a803ca0cf92 from memory into f13
fmaxm.d f13, f16, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x84b67d978f9d0526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf74ea273cfd8f85 # load x3 with value 0xaf74ea273cfd8f85
sd x3, 0(x2) # store 0xaf74ea273cfd8f85 in memory
fld f8, 0(x2) # load 0xaf74ea273cfd8f85 from memory into f8
li x3, 0xb265edf9846dd30a # load x3 with value 0xb265edf9846dd30a
sd x3, 0(x2) # store 0xb265edf9846dd30a in memory
fld f14, 0(x2) # load 0xb265edf9846dd30a from memory into f14
fmaxm.d f14, f8, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x7f5aa157bb42de04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x149ad68aaa544db2 # load x3 with value 0x149ad68aaa544db2
sd x3, 0(x2) # store 0x149ad68aaa544db2 in memory
fld f15, 0(x2) # load 0x149ad68aaa544db2 from memory into f15
li x3, 0xa1dcc75a426f75cf # load x3 with value 0xa1dcc75a426f75cf
sd x3, 0(x2) # store 0xa1dcc75a426f75cf in memory
fld f15, 0(x2) # load 0xa1dcc75a426f75cf from memory into f15
fmaxm.d f15, f15, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xf4c514bc45b4b892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ed1176cea6f4952 # load x3 with value 0x1ed1176cea6f4952
sd x3, 0(x2) # store 0x1ed1176cea6f4952 in memory
fld f21, 0(x2) # load 0x1ed1176cea6f4952 from memory into f21
li x3, 0xe77c726876a0da1a # load x3 with value 0xe77c726876a0da1a
sd x3, 0(x2) # store 0xe77c726876a0da1a in memory
fld f16, 0(x2) # load 0xe77c726876a0da1a from memory into f16
fmaxm.d f16, f21, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x17c2e307f9dba7de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1be72741e0c4011 # load x3 with value 0xa1be72741e0c4011
sd x3, 0(x2) # store 0xa1be72741e0c4011 in memory
fld f28, 0(x2) # load 0xa1be72741e0c4011 from memory into f28
li x3, 0x8d108b981fd8ecb6 # load x3 with value 0x8d108b981fd8ecb6
sd x3, 0(x2) # store 0x8d108b981fd8ecb6 in memory
fld f17, 0(x2) # load 0x8d108b981fd8ecb6 from memory into f17
fmaxm.d f17, f28, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x525b9ec1d0a59ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e3166a7e5dcc981 # load x3 with value 0x9e3166a7e5dcc981
sd x3, 0(x2) # store 0x9e3166a7e5dcc981 in memory
fld f16, 0(x2) # load 0x9e3166a7e5dcc981 from memory into f16
li x3, 0xb1ec08f3adb6b0ac # load x3 with value 0xb1ec08f3adb6b0ac
sd x3, 0(x2) # store 0xb1ec08f3adb6b0ac in memory
fld f18, 0(x2) # load 0xb1ec08f3adb6b0ac from memory into f18
fmaxm.d f18, f16, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x9afc545fb28a6cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9eef7e45dc085c7 # load x3 with value 0xb9eef7e45dc085c7
sd x3, 0(x2) # store 0xb9eef7e45dc085c7 in memory
fld f29, 0(x2) # load 0xb9eef7e45dc085c7 from memory into f29
li x3, 0xe70bce6261704ae6 # load x3 with value 0xe70bce6261704ae6
sd x3, 0(x2) # store 0xe70bce6261704ae6 in memory
fld f19, 0(x2) # load 0xe70bce6261704ae6 from memory into f19
fmaxm.d f19, f29, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x7f206c7501c469f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d7e90651861beb7 # load x3 with value 0x3d7e90651861beb7
sd x3, 0(x2) # store 0x3d7e90651861beb7 in memory
fld f24, 0(x2) # load 0x3d7e90651861beb7 from memory into f24
li x3, 0x5b591070157a81c8 # load x3 with value 0x5b591070157a81c8
sd x3, 0(x2) # store 0x5b591070157a81c8 in memory
fld f20, 0(x2) # load 0x5b591070157a81c8 from memory into f20
fmaxm.d f20, f24, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x84fd853f06546316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38b3435633b09184 # load x3 with value 0x38b3435633b09184
sd x3, 0(x2) # store 0x38b3435633b09184 in memory
fld f23, 0(x2) # load 0x38b3435633b09184 from memory into f23
li x3, 0xdc71c56e6d4ea20b # load x3 with value 0xdc71c56e6d4ea20b
sd x3, 0(x2) # store 0xdc71c56e6d4ea20b in memory
fld f21, 0(x2) # load 0xdc71c56e6d4ea20b from memory into f21
fmaxm.d f21, f23, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x3a8a2927d749d0aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37a17f5a58235dad # load x3 with value 0x37a17f5a58235dad
sd x3, 0(x2) # store 0x37a17f5a58235dad in memory
fld f30, 0(x2) # load 0x37a17f5a58235dad from memory into f30
li x3, 0xfeea9562a3570fcd # load x3 with value 0xfeea9562a3570fcd
sd x3, 0(x2) # store 0xfeea9562a3570fcd in memory
fld f22, 0(x2) # load 0xfeea9562a3570fcd from memory into f22
fmaxm.d f22, f30, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xa89266755146cea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f1aa8f9643fc893 # load x3 with value 0x0f1aa8f9643fc893
sd x3, 0(x2) # store 0x0f1aa8f9643fc893 in memory
fld f23, 0(x2) # load 0x0f1aa8f9643fc893 from memory into f23
li x3, 0x8298e09b098aefa7 # load x3 with value 0x8298e09b098aefa7
sd x3, 0(x2) # store 0x8298e09b098aefa7 in memory
fld f23, 0(x2) # load 0x8298e09b098aefa7 from memory into f23
fmaxm.d f23, f23, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xf9d2dfdab79f2d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1c6b4177c5f7492 # load x3 with value 0xe1c6b4177c5f7492
sd x3, 0(x2) # store 0xe1c6b4177c5f7492 in memory
fld f29, 0(x2) # load 0xe1c6b4177c5f7492 from memory into f29
li x3, 0xdeab400ae2515670 # load x3 with value 0xdeab400ae2515670
sd x3, 0(x2) # store 0xdeab400ae2515670 in memory
fld f24, 0(x2) # load 0xdeab400ae2515670 from memory into f24
fmaxm.d f24, f29, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x3366be747200076d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fc1111e3a668ad8 # load x3 with value 0x9fc1111e3a668ad8
sd x3, 0(x2) # store 0x9fc1111e3a668ad8 in memory
fld f24, 0(x2) # load 0x9fc1111e3a668ad8 from memory into f24
li x3, 0x8caf269da207f6f5 # load x3 with value 0x8caf269da207f6f5
sd x3, 0(x2) # store 0x8caf269da207f6f5 in memory
fld f25, 0(x2) # load 0x8caf269da207f6f5 from memory into f25
fmaxm.d f25, f24, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x3e321c8e14cf502d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75f33c715dee8db8 # load x3 with value 0x75f33c715dee8db8
sd x3, 0(x2) # store 0x75f33c715dee8db8 in memory
fld f14, 0(x2) # load 0x75f33c715dee8db8 from memory into f14
li x3, 0xcacd54b2382eeea7 # load x3 with value 0xcacd54b2382eeea7
sd x3, 0(x2) # store 0xcacd54b2382eeea7 in memory
fld f26, 0(x2) # load 0xcacd54b2382eeea7 from memory into f26
fmaxm.d f26, f14, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xfa88397684ea47ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41818f7da1544db9 # load x3 with value 0x41818f7da1544db9
sd x3, 0(x2) # store 0x41818f7da1544db9 in memory
fld f23, 0(x2) # load 0x41818f7da1544db9 from memory into f23
li x3, 0x308f11054dd36895 # load x3 with value 0x308f11054dd36895
sd x3, 0(x2) # store 0x308f11054dd36895 in memory
fld f27, 0(x2) # load 0x308f11054dd36895 from memory into f27
fmaxm.d f27, f23, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x0826d3a20b3a2cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15f73850945f676d # load x3 with value 0x15f73850945f676d
sd x3, 0(x2) # store 0x15f73850945f676d in memory
fld f27, 0(x2) # load 0x15f73850945f676d from memory into f27
li x3, 0xd3dd08d89354f5a8 # load x3 with value 0xd3dd08d89354f5a8
sd x3, 0(x2) # store 0xd3dd08d89354f5a8 in memory
fld f28, 0(x2) # load 0xd3dd08d89354f5a8 from memory into f28
fmaxm.d f28, f27, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x84542063d1752d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd5e6ebb5bfa849d # load x3 with value 0xcd5e6ebb5bfa849d
sd x3, 0(x2) # store 0xcd5e6ebb5bfa849d in memory
fld f5, 0(x2) # load 0xcd5e6ebb5bfa849d from memory into f5
li x3, 0xcab8e6e97b0c0cbc # load x3 with value 0xcab8e6e97b0c0cbc
sd x3, 0(x2) # store 0xcab8e6e97b0c0cbc in memory
fld f29, 0(x2) # load 0xcab8e6e97b0c0cbc from memory into f29
fmaxm.d f29, f5, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x3c7577e6024a9ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bd2415d640a38d3 # load x3 with value 0x4bd2415d640a38d3
sd x3, 0(x2) # store 0x4bd2415d640a38d3 in memory
fld f19, 0(x2) # load 0x4bd2415d640a38d3 from memory into f19
li x3, 0xbc1c7fbc34e46dd2 # load x3 with value 0xbc1c7fbc34e46dd2
sd x3, 0(x2) # store 0xbc1c7fbc34e46dd2 in memory
fld f30, 0(x2) # load 0xbc1c7fbc34e46dd2 from memory into f30
fmaxm.d f30, f19, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xec60d000955a74be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a83204001e1cafb # load x3 with value 0x3a83204001e1cafb
sd x3, 0(x2) # store 0x3a83204001e1cafb in memory
fld f25, 0(x2) # load 0x3a83204001e1cafb from memory into f25
li x3, 0xc0c02f575447f3e1 # load x3 with value 0xc0c02f575447f3e1
sd x3, 0(x2) # store 0xc0c02f575447f3e1 in memory
fld f31, 0(x2) # load 0xc0c02f575447f3e1 from memory into f31
fmaxm.d f31, f25, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x16, 0xa8994273c63bd9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
li x3, 0xd6c902e8ccbb6ce4 # load x3 with value 0xd6c902e8ccbb6ce4
sd x3, 0(x2) # store 0xd6c902e8ccbb6ce4 in memory
fld f28, 0(x2) # load 0xd6c902e8ccbb6ce4 from memory into f28
fmaxm.d f16, f1, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x24, 0xe2ab9da7920ecd37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
li x3, 0xd04d51e17c0897b3 # load x3 with value 0xd04d51e17c0897b3
sd x3, 0(x2) # store 0xd04d51e17c0897b3 in memory
fld f12, 0(x2) # load 0xd04d51e17c0897b3 from memory into f12
fmaxm.d f24, f18, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x14, 0x214b6dba10f410e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0x9febb13abd928b6f # load x3 with value 0x9febb13abd928b6f
sd x3, 0(x2) # store 0x9febb13abd928b6f in memory
fld f22, 0(x2) # load 0x9febb13abd928b6f from memory into f22
fmaxm.d f14, f13, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x30, 0x7d67f80671f163d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0xc5cb6646e248b6d9 # load x3 with value 0xc5cb6646e248b6d9
sd x3, 0(x2) # store 0xc5cb6646e248b6d9 in memory
fld f13, 0(x2) # load 0xc5cb6646e248b6d9 from memory into f13
fmaxm.d f30, f29, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x1, 0x88df1b3c31f8648a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
li x3, 0xd7da0229383c5ded # load x3 with value 0xd7da0229383c5ded
sd x3, 0(x2) # store 0xd7da0229383c5ded in memory
fld f21, 0(x2) # load 0xd7da0229383c5ded from memory into f21
fmaxm.d f1, f18, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x6, 0xbc4c109ac049efec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
li x3, 0x1c4cd3f67e39f581 # load x3 with value 0x1c4cd3f67e39f581
sd x3, 0(x2) # store 0x1c4cd3f67e39f581 in memory
fld f31, 0(x2) # load 0x1c4cd3f67e39f581 from memory into f31
fmaxm.d f6, f14, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x1, 0xb008f4f678309eff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
li x3, 0x9e9d0c67e4a6cead # load x3 with value 0x9e9d0c67e4a6cead
sd x3, 0(x2) # store 0x9e9d0c67e4a6cead in memory
fld f17, 0(x2) # load 0x9e9d0c67e4a6cead from memory into f17
fmaxm.d f1, f28, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x15, 0x2701db498f1f2e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
li x3, 0x49737a71e0bba794 # load x3 with value 0x49737a71e0bba794
sd x3, 0(x2) # store 0x49737a71e0bba794 in memory
fld f17, 0(x2) # load 0x49737a71e0bba794 from memory into f17
fmaxm.d f15, f9, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x21, 0x25b72c07733d0f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
li x3, 0x0bc510b71ba3acde # load x3 with value 0x0bc510b71ba3acde
sd x3, 0(x2) # store 0x0bc510b71ba3acde in memory
fld f10, 0(x2) # load 0x0bc510b71ba3acde from memory into f10
fmaxm.d f21, f24, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x20, 0x121996f112fa7471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0x2251f21bd1f832e3 # load x3 with value 0x2251f21bd1f832e3
sd x3, 0(x2) # store 0x2251f21bd1f832e3 in memory
fld f2, 0(x2) # load 0x2251f21bd1f832e3 from memory into f2
fmaxm.d f20, f30, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x20, 0xed52f3940e54c595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
li x3, 0x79e314707f5dbc9c # load x3 with value 0x79e314707f5dbc9c
sd x3, 0(x2) # store 0x79e314707f5dbc9c in memory
fld f2, 0(x2) # load 0x79e314707f5dbc9c from memory into f2
fmaxm.d f20, f25, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x12, 0x98085b81c8194470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x2dafc8add4571110 # load x3 with value 0x2dafc8add4571110
sd x3, 0(x2) # store 0x2dafc8add4571110 in memory
fld f10, 0(x2) # load 0x2dafc8add4571110 from memory into f10
fmaxm.d f12, f6, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x25, 0x342452f8b16c4c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
li x3, 0xbb479e17b474960c # load x3 with value 0xbb479e17b474960c
sd x3, 0(x2) # store 0xbb479e17b474960c in memory
fld f23, 0(x2) # load 0xbb479e17b474960c from memory into f23
fmaxm.d f25, f12, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x15, 0x14182bc01c5efded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0xf46b46c13d5fe633 # load x3 with value 0xf46b46c13d5fe633
sd x3, 0(x2) # store 0xf46b46c13d5fe633 in memory
fld f29, 0(x2) # load 0xf46b46c13d5fe633 from memory into f29
fmaxm.d f15, f6, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x12, 0x457d068d6af1f677 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x0257a1cddbd2c241 # load x3 with value 0x0257a1cddbd2c241
sd x3, 0(x2) # store 0x0257a1cddbd2c241 in memory
fld f17, 0(x2) # load 0x0257a1cddbd2c241 from memory into f17
fmaxm.d f12, f27, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x24, 0x882f62cecef38c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
li x3, 0xfaaad2183fb33ce6 # load x3 with value 0xfaaad2183fb33ce6
sd x3, 0(x2) # store 0xfaaad2183fb33ce6 in memory
fld f31, 0(x2) # load 0xfaaad2183fb33ce6 from memory into f31
fmaxm.d f24, f20, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x26, 0xce9af3e9ed2a97bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
li x3, 0x9b89935b814ab877 # load x3 with value 0x9b89935b814ab877
sd x3, 0(x2) # store 0x9b89935b814ab877 in memory
fld f5, 0(x2) # load 0x9b89935b814ab877 from memory into f5
fmaxm.d f26, f27, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x26, 0x7e1cba5f5948c886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
li x3, 0xe8d8b21f45c40dd2 # load x3 with value 0xe8d8b21f45c40dd2
sd x3, 0(x2) # store 0xe8d8b21f45c40dd2 in memory
fld f7, 0(x2) # load 0xe8d8b21f45c40dd2 from memory into f7
fmaxm.d f26, f13, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x26, 0x45700e8a3927c8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0xcff31cdb3193d307 # load x3 with value 0xcff31cdb3193d307
sd x3, 0(x2) # store 0xcff31cdb3193d307 in memory
fld f1, 0(x2) # load 0xcff31cdb3193d307 from memory into f1
fmaxm.d f26, f7, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x31, 0x1fb3f731d3c6ab23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x9769a08f3fdaa073 # load x3 with value 0x9769a08f3fdaa073
sd x3, 0(x2) # store 0x9769a08f3fdaa073 in memory
fld f12, 0(x2) # load 0x9769a08f3fdaa073 from memory into f12
fmaxm.d f31, f25, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x13, 0x0b12da9b5ea2474d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0x633a016eeb873b38 # load x3 with value 0x633a016eeb873b38
sd x3, 0(x2) # store 0x633a016eeb873b38 in memory
fld f16, 0(x2) # load 0x633a016eeb873b38 from memory into f16
fmaxm.d f13, f11, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x5, 0x7a53a034da40bde4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
li x3, 0xc079d4a8b799dad7 # load x3 with value 0xc079d4a8b799dad7
sd x3, 0(x2) # store 0xc079d4a8b799dad7 in memory
fld f10, 0(x2) # load 0xc079d4a8b799dad7 from memory into f10
fmaxm.d f5, f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x21, 0xfcfe85e0b41b938f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
li x3, 0x45e0e9b346061a66 # load x3 with value 0x45e0e9b346061a66
sd x3, 0(x2) # store 0x45e0e9b346061a66 in memory
fld f30, 0(x2) # load 0x45e0e9b346061a66 from memory into f30
fmaxm.d f21, f24, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x8, 0xc8d5212f5c50bc85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
li x3, 0x479a5f6c14d7672b # load x3 with value 0x479a5f6c14d7672b
sd x3, 0(x2) # store 0x479a5f6c14d7672b in memory
fld f26, 0(x2) # load 0x479a5f6c14d7672b from memory into f26
fmaxm.d f8, f17, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x3, 0xafabe2201c056222 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x754f2289ffd1aba3 # load x3 with value 0x754f2289ffd1aba3
sd x3, 0(x2) # store 0x754f2289ffd1aba3 in memory
fld f24, 0(x2) # load 0x754f2289ffd1aba3 from memory into f24
fmaxm.d f3, f30, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x8, 0x690972edec85d1f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0xe1bd076eb32e8359 # load x3 with value 0xe1bd076eb32e8359
sd x3, 0(x2) # store 0xe1bd076eb32e8359 in memory
fld f6, 0(x2) # load 0xe1bd076eb32e8359 from memory into f6
fmaxm.d f8, f26, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x26, 0xbca7c2f24ae62b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74305c11112de99e # load x3 with value 0x74305c11112de99e
sd x3, 0(x2) # store 0x74305c11112de99e in memory
fld f20, 0(x2) # load 0x74305c11112de99e from memory into f20
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fmaxm.d f26, f20, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x15, 0xf46a2dd595ddd01c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33e993adf659b473 # load x3 with value 0x33e993adf659b473
sd x3, 0(x2) # store 0x33e993adf659b473 in memory
fld f2, 0(x2) # load 0x33e993adf659b473 from memory into f2
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fmaxm.d f15, f2, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x13, 0x765207e67b4c2d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c1cd4edc1de070d # load x3 with value 0x1c1cd4edc1de070d
sd x3, 0(x2) # store 0x1c1cd4edc1de070d in memory
fld f3, 0(x2) # load 0x1c1cd4edc1de070d from memory into f3
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fmaxm.d f13, f3, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x23, 0xcf2e55ccb431da92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59dbfcb84776bd07 # load x3 with value 0x59dbfcb84776bd07
sd x3, 0(x2) # store 0x59dbfcb84776bd07 in memory
fld f13, 0(x2) # load 0x59dbfcb84776bd07 from memory into f13
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fmaxm.d f23, f13, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x22, 0xd4677b8995e6b2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f70c477246fb6c1 # load x3 with value 0x8f70c477246fb6c1
sd x3, 0(x2) # store 0x8f70c477246fb6c1 in memory
fld f21, 0(x2) # load 0x8f70c477246fb6c1 from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fmaxm.d f22, f21, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x28, 0x975a09ee931aaee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d865627397fafdf # load x3 with value 0x4d865627397fafdf
sd x3, 0(x2) # store 0x4d865627397fafdf in memory
fld f19, 0(x2) # load 0x4d865627397fafdf from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fmaxm.d f28, f19, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x22, 0xfc366b28244e0ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43f56e8eaac85ada # load x3 with value 0x43f56e8eaac85ada
sd x3, 0(x2) # store 0x43f56e8eaac85ada in memory
fld f29, 0(x2) # load 0x43f56e8eaac85ada from memory into f29
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fmaxm.d f22, f29, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x6, 0x14d7ed38e11ad361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80c59fa87cd78e2c # load x3 with value 0x80c59fa87cd78e2c
sd x3, 0(x2) # store 0x80c59fa87cd78e2c in memory
fld f14, 0(x2) # load 0x80c59fa87cd78e2c from memory into f14
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fmaxm.d f6, f14, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x8, 0x3208ea96f6616c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1cce6a39ea6bbd3 # load x3 with value 0xc1cce6a39ea6bbd3
sd x3, 0(x2) # store 0xc1cce6a39ea6bbd3 in memory
fld f1, 0(x2) # load 0xc1cce6a39ea6bbd3 from memory into f1
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fmaxm.d f8, f1, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x26, 0x4153ba960d10d306 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ebda45472ce9ecd # load x3 with value 0x2ebda45472ce9ecd
sd x3, 0(x2) # store 0x2ebda45472ce9ecd in memory
fld f22, 0(x2) # load 0x2ebda45472ce9ecd from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fmaxm.d f26, f22, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x17, 0x7f97f0bbf12d7f06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9801a72d01c23b39 # load x3 with value 0x9801a72d01c23b39
sd x3, 0(x2) # store 0x9801a72d01c23b39 in memory
fld f24, 0(x2) # load 0x9801a72d01c23b39 from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fmaxm.d f17, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x12, 0x50431694415b9d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff6153a8b90112b4 # load x3 with value 0xff6153a8b90112b4
sd x3, 0(x2) # store 0xff6153a8b90112b4 in memory
fld f11, 0(x2) # load 0xff6153a8b90112b4 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fmaxm.d f12, f11, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x8, 0xd78948178a0abf6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30f1a5126cac0478 # load x3 with value 0x30f1a5126cac0478
sd x3, 0(x2) # store 0x30f1a5126cac0478 in memory
fld f26, 0(x2) # load 0x30f1a5126cac0478 from memory into f26
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
fmaxm.d f8, f26, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x22, 0x63f77951a071cc06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd207e654fa41bcd1 # load x3 with value 0xd207e654fa41bcd1
sd x3, 0(x2) # store 0xd207e654fa41bcd1 in memory
fld f18, 0(x2) # load 0xd207e654fa41bcd1 from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fmaxm.d f22, f18, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x27, 0xc43564ec921dbbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5175d07c8539f88 # load x3 with value 0xa5175d07c8539f88
sd x3, 0(x2) # store 0xa5175d07c8539f88 in memory
fld f5, 0(x2) # load 0xa5175d07c8539f88 from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fmaxm.d f27, f5, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x3, 0x8cfa4efb6c7d4c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9be72077fe6c8f7 # load x3 with value 0xf9be72077fe6c8f7
sd x3, 0(x2) # store 0xf9be72077fe6c8f7 in memory
fld f2, 0(x2) # load 0xf9be72077fe6c8f7 from memory into f2
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fmaxm.d f3, f2, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x28, 0xf1865814baa9422c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6997eca410f4040d # load x3 with value 0x6997eca410f4040d
sd x3, 0(x2) # store 0x6997eca410f4040d in memory
fld f19, 0(x2) # load 0x6997eca410f4040d from memory into f19
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmaxm.d f28, f19, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x20, 0x3b3751404808692d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e3d7f82a251106b # load x3 with value 0x2e3d7f82a251106b
sd x3, 0(x2) # store 0x2e3d7f82a251106b in memory
fld f16, 0(x2) # load 0x2e3d7f82a251106b from memory into f16
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fmaxm.d f20, f16, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x15, 0x579bc2e6ea68b376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x965c40353b0fef2c # load x3 with value 0x965c40353b0fef2c
sd x3, 0(x2) # store 0x965c40353b0fef2c in memory
fld f8, 0(x2) # load 0x965c40353b0fef2c from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
fmaxm.d f15, f8, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x27, 0x7a569128f52f69bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1a7d93fb33eec16 # load x3 with value 0xa1a7d93fb33eec16
sd x3, 0(x2) # store 0xa1a7d93fb33eec16 in memory
fld f20, 0(x2) # load 0xa1a7d93fb33eec16 from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fmaxm.d f27, f20, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x20, 0x9e9bb17dd0eb7514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6691c56dd684c6f5 # load x3 with value 0x6691c56dd684c6f5
sd x3, 0(x2) # store 0x6691c56dd684c6f5 in memory
fld f6, 0(x2) # load 0x6691c56dd684c6f5 from memory into f6
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
fmaxm.d f20, f6, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x4, 0x9ec60955e38e18ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x912ca4d0d7d523e6 # load x3 with value 0x912ca4d0d7d523e6
sd x3, 0(x2) # store 0x912ca4d0d7d523e6 in memory
fld f3, 0(x2) # load 0x912ca4d0d7d523e6 from memory into f3
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmaxm.d f4, f3, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x5, 0xe9987d9e06214e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c9fbda1d7ce93a2 # load x3 with value 0x3c9fbda1d7ce93a2
sd x3, 0(x2) # store 0x3c9fbda1d7ce93a2 in memory
fld f15, 0(x2) # load 0x3c9fbda1d7ce93a2 from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fmaxm.d f5, f15, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x13, 0x521a7a8cb159087d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e98e2dcc2cd82e6 # load x3 with value 0x4e98e2dcc2cd82e6
sd x3, 0(x2) # store 0x4e98e2dcc2cd82e6 in memory
fld f29, 0(x2) # load 0x4e98e2dcc2cd82e6 from memory into f29
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fmaxm.d f13, f29, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x22, 0xe12812687a52f10a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a8d27028e9d1512 # load x3 with value 0x7a8d27028e9d1512
sd x3, 0(x2) # store 0x7a8d27028e9d1512 in memory
fld f17, 0(x2) # load 0x7a8d27028e9d1512 from memory into f17
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fmaxm.d f22, f17, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x25, 0x6eb5f8d9f5f3738e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78bb0c6d6b1ee778 # load x3 with value 0x78bb0c6d6b1ee778
sd x3, 0(x2) # store 0x78bb0c6d6b1ee778 in memory
fld f4, 0(x2) # load 0x78bb0c6d6b1ee778 from memory into f4
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fmaxm.d f25, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x5, 0x002a1c187484d57d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmaxm.d f5, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x9, 0x9ff00cbea74c4cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
fmaxm.d f9, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x1, 0xe9f10e90c30ef9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fmaxm.d f1, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x14, 0xa00c805c71bf64fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fmaxm.d f14, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x18, 0x5e55c08b2cd6a520 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fmaxm.d f18, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x24, 0x586fef9cb367f77a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fmaxm.d f24, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x2, 0x9b472e6dd92df89f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fmaxm.d f2, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x23, 0x750691c89dfe4cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fmaxm.d f23, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x4, 0x2e1aa85148fdd4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fmaxm.d f4, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x31, 0x010f9cde26d08f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fmaxm.d f31, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x11, 0xf63ca08d435824b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fmaxm.d f11, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x30, 0x5aa7f96a53016af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fmaxm.d f30, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x6, 0xf80bce593ed735b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fmaxm.d f6, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x8, 0xa33dae77cd2e7a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fmaxm.d f8, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x18, 0x13f7a973e8ba0e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fmaxm.d f18, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x13, 0xc307661cb8c8dd10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fmaxm.d f13, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x24, 0xd9dea50195434a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
fmaxm.d f24, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x16, 0x7202bfbdc7c5d959 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fmaxm.d f16, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x10, 0xf5a60919d9efcef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fmaxm.d f10, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x16, 0xaf5427c965695584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmaxm.d f16, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x11, 0x24193f5440716011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fmaxm.d f11, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x12, 0xd62c70cd8ee9dbcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
fmaxm.d f12, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x19, 0xc7f76eb0ba495d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fmaxm.d f19, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x2, 0x0414d51faec65aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fmaxm.d f2, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x28, 0x3f3fe791280e2180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fmaxm.d f28, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x9, 0xb4337d96f139901b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fmaxm.d f9, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x24, 0x5d3d6bc777b2fdc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fmaxm.d f24, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x2, 0xa44521d509c22498 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fmaxm.d f2, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x9, 0xda049e4fcc0d10c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fmaxm.d f9, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x29, 0x090832b61512e487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fmaxm.d f29, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x18, 0x05af3912ee718cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fmaxm.d f18, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x13, 0xe0cc3d350fb26bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fmaxm.d f13, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x14, 0x56d65db860320da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fmaxm.d f14, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x12, 0xaeb54ba6fc0a56ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fmaxm.d f12, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x24, 0xdbf9896cbd76b35e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fmaxm.d f24, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x18, 0x6c869749193f81c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmaxm.d f18, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x23, 0x4760372405d82122 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fmaxm.d f23, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x22, 0x0a8af8caf426ff1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fmaxm.d f22, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x7, 0xe03a47a778fc496e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fmaxm.d f7, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x9, 0x97e1256016e5932f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fmaxm.d f9, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x12, 0x0135c9f9565826ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fmaxm.d f12, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x16, 0xbb10b866c20c140d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fmaxm.d f16, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x6, 0x613e1983bf7a9904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fmaxm.d f6, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x25, 0xc60d3527bc7f3cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fmaxm.d f25, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x11, 0xa9a78d7d1e25cbda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
fmaxm.d f11, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x17, 0xe9fb9ab4e276d525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fmaxm.d f17, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x19, 0x9e0cfa3d84db3d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fmaxm.d f19, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x24, 0x5eae776cb26598ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
fmaxm.d f24, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x27, 0xdc7b52e423dd63b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fmaxm.d f27, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x4, 0x8cc1b09798bc026c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fmaxm.d f4, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x22, 0x8e3936bba0c0e765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fmaxm.d f22, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x15, 0x309d445828aaf665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fmaxm.d f15, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x12, 0xc124b0396ea1ece1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmaxm.d f12, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x7, 0x935f4000153f8617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fmaxm.d f7, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x7, 0xa044430a53dd1047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
fmaxm.d f7, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x31, 0x4a896562bc2f09aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fmaxm.d f31, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x28, 0xc93fc91d76c34574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fmaxm.d f28, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x12, 0x1ee7a4c45735add8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fmaxm.d f12, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x12, 0x18527a12fc0c3222 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
fmaxm.d f12, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x5, 0xdcf7db44314ef027 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fmaxm.d f5, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x20, 0x03a629646e061e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fmaxm.d f20, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x30, 0x7c4bdd44c4657287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fmaxm.d f30, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x19, 0xbdd71db3ef236188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fmaxm.d f19, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x17, 0xbe78194b9d867cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fmaxm.d f17, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x5, 0xa3f01f93d82bdc11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fmaxm.d f5, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x14, 0xbc5c4ca2df20a0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fmaxm.d f14, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x28, 0x957abd8eb831f190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fmaxm.d f28, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x11, 0xbb9dffd912e8f501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fmaxm.d f11, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x10, 0x1b1e8176ada83d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fmaxm.d f10, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x1, 0x7e0a32e0ba8a3541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fmaxm.d f1, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x19, 0xe30368281c8911d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fmaxm.d f19, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x16, 0xed5ef6fe568233a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fmaxm.d f16, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x24, 0xd7ddc32a9079e03c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fmaxm.d f24, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x4, 0xa70e2f10879cfb9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fmaxm.d f4, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x16, 0xd98bf2c02d63bd12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fmaxm.d f16, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x17, 0xeef6c191a3d1adf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fmaxm.d f17, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x21, 0xc15cfcc95f8828ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fmaxm.d f21, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x18, 0x9d387d876f5f9c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
fmaxm.d f18, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x17, 0xe7bbad9596560d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
fmaxm.d f17, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x10, 0xcdb01ffa5120d2ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fmaxm.d f10, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x1, 0xee3d4f2a06ba172e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fmaxm.d f1, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x20, 0x5dbd5d68ad17716d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fmaxm.d f20, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x15, 0xbb003c4c9e9692e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fmaxm.d f15, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x11, 0x32d0fb4358f57d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
fmaxm.d f11, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x23, 0xa79e01bd298eff1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fmaxm.d f23, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x3, 0x13bdcdf35e9f6185 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fmaxm.d f3, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x25, 0x52f81e6abc9e8a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fmaxm.d f25, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x14, 0xe0dac518ecab83b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fmaxm.d f14, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x10, 0x7000e69799e6c6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fmaxm.d f10, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x24, 0x7c66189ef8199606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
fmaxm.d f24, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x13, 0x861957af791ed5e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fmaxm.d f13, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x8, 0x5e1e65bd9c646765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fmaxm.d f8, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x30, 0x2317d0621853b75c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fmaxm.d f30, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x31, 0xbf4208f00bc7e212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fmaxm.d f31, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x27, 0xbd929ed5e5b9c058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fmaxm.d f27, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x26, 0xc2115f32d0c24238 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fmaxm.d f26, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x1, 0xe5c5598ffade4ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
fmaxm.d f1, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x14, 0x2ecf83b92227f29d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmaxm.d f14, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x18, 0x94ae75a5c37ae296 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fmaxm.d f18, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x25, 0x43bc9a884c73d032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fmaxm.d f25, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x28, 0x07dea772c13a48d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
fmaxm.d f28, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x23, 0x11a9cc52649f0f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
fmaxm.d f23, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x11, 0xe640e8996b2067a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fmaxm.d f11, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x12, 0x6aa2efb759da571a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fmaxm.d f12, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x17, 0x813a3b40ee54a4ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmaxm.d f17, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x12, 0xe5845a2aec86b2a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fmaxm.d f12, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x11, 0xccf92cbaebc1e0fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fmaxm.d f11, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x18, 0x663a2035b23abebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
fmaxm.d f18, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x7, 0x20802cb13ff7d63e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fmaxm.d f7, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x27, 0x5f7a2bdc22a1950c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fmaxm.d f27, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x24, 0xc16b159313ebb45f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fmaxm.d f24, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x15, 0x58b215a250e2b4d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
fmaxm.d f15, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x26, 0xc20854642de6b8f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fmaxm.d f26, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x13, 0x97d56974f9a07f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fmaxm.d f13, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x23, 0xa1ac762acbb14e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fmaxm.d f23, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x27, 0xafbf857ad86c1ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fmaxm.d f27, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x16, 0x692050ae50976494 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
fmaxm.d f16, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x17, 0x2f3321226736102a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fmaxm.d f17, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x26, 0x977a79de30808704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
fmaxm.d f26, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x26, 0x1d4ae531b5254445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fmaxm.d f26, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x11, 0x8f9b931114a23482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fmaxm.d f11, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x14, 0xb08d046164eaf444 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fmaxm.d f14, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x23, 0xf414d6df6bcef535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fmaxm.d f23, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x21, 0xe1dcc64f210cbf00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fmaxm.d f21, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x21, 0xa210c9996b3c61d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
fmaxm.d f21, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x1, 0x6e2d810ab1b24509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmaxm.d f1, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x29, 0x5c3fc0ba3d47b94b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fmaxm.d f29, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x4, 0x4a62c0e826328395 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fmaxm.d f4, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x3, 0x075eca28424e6db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fmaxm.d f3, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x21, 0x6139af57dfab7ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fmaxm.d f21, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x3, 0x1421b4a44dd713e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmaxm.d f3, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x1, 0x33381ba493185d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fmaxm.d f1, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x9, 0xf3ecea35ad723702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fmaxm.d f9, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x22, 0xef095cfaed1cb012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fmaxm.d f22, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x20, 0xef4c5ce64b371c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fmaxm.d f20, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x10, 0xa521f085600c9dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmaxm.d f10, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x12, 0x92b47a36ee910466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fmaxm.d f12, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x21, 0x4876bbafa2e33890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fmaxm.d f21, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x1, 0xe6255be93e55b0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fmaxm.d f1, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x16, 0x92cd3815354a8d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fmaxm.d f16, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x28, 0xb8d2627c9fd98de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fmaxm.d f28, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x12, 0x97b8fddffc11dd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
fmaxm.d f12, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x24, 0xa18c44ec33f32f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fmaxm.d f24, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x14, 0xdccc6dc5a1dc034d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fmaxm.d f14, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x28, 0xa94c46ae4b55d5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fmaxm.d f28, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x21, 0xdb89604c8bf92809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fmaxm.d f21, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x20, 0x200d78f61cb65d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fmaxm.d f20, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x16, 0x38e458979bb7703e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fmaxm.d f16, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x18, 0x47e7cb2ee23dbf33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fmaxm.d f18, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x11, 0x4845f01c37fc8709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
fmaxm.d f11, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x30, 0xa2c5fe27083861fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fmaxm.d f30, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x14, 0x343a4ab6aaaef2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fmaxm.d f14, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x9, 0xf238e48904bb31f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fmaxm.d f9, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x6, 0x66115f264f36be7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fmaxm.d f6, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x14, 0xb721d93a67de578b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fmaxm.d f14, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x17, 0x96dd1bb170cf6500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fmaxm.d f17, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x26, 0xa88b781e438e5db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fmaxm.d f26, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x10, 0x466c760398c2c50f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
fmaxm.d f10, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x21, 0xb22d6d1c2363f993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fmaxm.d f21, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x1, 0x2b9239588da85877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
fmaxm.d f1, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x7, 0x34647b7bcfe0e180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fmaxm.d f7, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x21, 0x10704132d151c94a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fmaxm.d f21, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x9, 0x169a86b23e2d050e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fmaxm.d f9, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x27, 0x82023c680aa96f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fmaxm.d f27, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x25, 0xeb08b57aeac682a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
fmaxm.d f25, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x29, 0x85328ac2b3a13b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
fmaxm.d f29, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x7, 0x7847b38f41faa755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fmaxm.d f7, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x2, 0x3ff3b60368881218 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fmaxm.d f2, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x25, 0xb11b9efa15b7dc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fmaxm.d f25, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x24, 0x18c008b5951c8bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fmaxm.d f24, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x16, 0x06d880027457507d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fmaxm.d f16, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x17, 0x40754ebf87c267e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fmaxm.d f17, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x31, 0x375fa31d946c5d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fmaxm.d f31, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x18, 0x772cb7a9ace9d971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
fmaxm.d f18, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x2, 0xa83a8281dbcb8fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmaxm.d f2, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x14, 0xc5df2502ad1b4314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fmaxm.d f14, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x11, 0x9c170b41c1e988b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fmaxm.d f11, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x11, 0x512e69df99ded1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fmaxm.d f11, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x26, 0x347abcf635b2b9dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmaxm.d f26, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x8, 0x89fa96c074e3a4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmaxm.d f8, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x9, 0x0f402970d4ecbe4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
fmaxm.d f9, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x20, 0xcedb7fa2fc81a4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fmaxm.d f20, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x1, 0x2813477b3bad0c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fmaxm.d f1, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x19, 0xe53a20400e70a666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmaxm.d f19, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x28, 0xa411f0d974d4f011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
fmaxm.d f28, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x20, 0x401ae7f2cbfede53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fmaxm.d f20, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x10, 0x6fbe4ec6b0fb0956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fmaxm.d f10, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x31, 0x4bf20b9807ee9918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fmaxm.d f31, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x9, 0x9e79483497b4d70c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fmaxm.d f9, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x17, 0xfeb182fda7ebde03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
fmaxm.d f17, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x5, 0x7904d1863c7c915f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
fmaxm.d f5, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x2, 0x44a7c38069eb21b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fmaxm.d f2, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x7, 0x4f5ca8c0bfe2ede5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fmaxm.d f7, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x17, 0xeba5cbeca2be753d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fmaxm.d f17, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x10, 0x1319380d37401a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fmaxm.d f10, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x19, 0x09145a1ed02f48d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fmaxm.d f19, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x31, 0x60fbf54a547dd9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
fmaxm.d f31, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x2, 0xd95757419c092585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fmaxm.d f2, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x7, 0xe14b2055a741f5f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fmaxm.d f7, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x10, 0xc8ea7d240fb1285c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fmaxm.d f10, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x3, 0x7eaa828e1d2c89e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fmaxm.d f3, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x28, 0x22d54038ebc19710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmaxm.d f28, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x10, 0xb1b30013df314f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fmaxm.d f10, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x9, 0xae71cca7cf0fbdfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fmaxm.d f9, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x1, 0x8746adc405742e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fmaxm.d f1, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x14, 0x1e6d33b29cd63980 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fmaxm.d f14, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x2, 0x5bb9db8668921b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fmaxm.d f2, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x1, 0xf984a031cd667d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fmaxm.d f1, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x6, 0x4056246bf593dff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fmaxm.d f6, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x26, 0x32ed4844505da51a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fmaxm.d f26, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x23, 0x516d18a7b026a215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fmaxm.d f23, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x6, 0x25e44f585483d9ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fmaxm.d f6, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x9, 0x90dce65b7b63eca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fmaxm.d f9, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x31, 0x1a54efe5446bdc44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fmaxm.d f31, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x18, 0x9bf55b9ae15b30e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fmaxm.d f18, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x1, 0x586caabc615fbc13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
fmaxm.d f1, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x6, 0x3aa579ea847dedbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmaxm.d f6, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x6, 0x72e020a633668764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
fmaxm.d f6, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x14, 0x7a7a37fb1ea88402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fmaxm.d f14, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x3, 0xe4b5bc59bb652fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fmaxm.d f3, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x16, 0xd97a4338ec3927a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fmaxm.d f16, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x21, 0x49db2789d4f17223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fmaxm.d f21, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x22, 0x3673ec5c1f927a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fmaxm.d f22, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x18, 0x56a0353d503a098a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fmaxm.d f18, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x18, 0xdbc0d2142586dc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
fmaxm.d f18, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x8, 0xe02dbf746089f6ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fmaxm.d f8, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x9, 0x83be2470693131b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fmaxm.d f9, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x1, 0xf6ed738b3614c8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmaxm.d f1, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x25, 0xfc9ce99e1ecd8930 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
fmaxm.d f25, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x4, 0x8a44706c96312f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fmaxm.d f4, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x18, 0xb7f65e584d489dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
fmaxm.d f18, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x19, 0xa155883b435356e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fmaxm.d f19, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x14, 0x0d91c3e2fcaa37e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fmaxm.d f14, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x22, 0xd73e78fbd7940582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
fmaxm.d f22, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x15, 0xc0ddec9712f1f9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
fmaxm.d f15, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x5, 0xdce0616daa0798f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmaxm.d f5, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x26, 0x3e8dd6ec13e55608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fmaxm.d f26, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x24, 0xc56b01c6a09f3733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
fmaxm.d f24, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x30, 0xcf050baa881c9ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fmaxm.d f30, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x17, 0xafdae95655119bd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmaxm.d f17, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x10, 0xad05fbf1670458f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fmaxm.d f10, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x15, 0x7453ff1d4842173d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fmaxm.d f15, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x31, 0x508084fb5f63d07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fmaxm.d f31, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x8, 0x6acd91ea01c8ace8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fmaxm.d f8, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x31, 0x0c620dc12dc5a0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fmaxm.d f31, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x3, 0x2e52caa8241815ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fmaxm.d f3, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x20, 0x1391f217d88aea39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fmaxm.d f20, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x19, 0x883794703b67d31d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fmaxm.d f19, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x4, 0xc479858e173ed6de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fmaxm.d f4, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x29, 0x2558b7cd778831c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
fmaxm.d f29, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x1, 0x70d2c58c11df15d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fmaxm.d f1, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x23, 0x3a65ebd673428668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fmaxm.d f23, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x16, 0xcae93130462c2738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fmaxm.d f16, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x27, 0x896c94a458b1db6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmaxm.d f27, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x2, 0x0ef6f62a930cf424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fmaxm.d f2, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x18, 0x3c87f7ebbbe72bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
fmaxm.d f18, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x16, 0x8d68cee95ba20e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fmaxm.d f16, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0x1bf91bb175b37c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
fmaxm.d f11, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0x07e5f50c925f71f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
fmaxm.d f12, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x31, 0x7011614e0093f8de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fmaxm.d f31, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x11, 0x5608bbe2159c706a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fmaxm.d f11, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x13, 0xc12ec2c2ee128cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmaxm.d f13, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x27, 0x71de05fca6d8e35e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fmaxm.d f27, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x12, 0xe21e8fb1c376ecf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
fmaxm.d f12, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x16, 0x57a1222057a7a99b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
fmaxm.d f16, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x4, 0xaec1c8ebfe62d5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fmaxm.d f4, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x15, 0x5ebf4c66ab5e809a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
fmaxm.d f15, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x16, 0xdcc17b34b155f983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fmaxm.d f16, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x20, 0x2eaa76ee1c24714d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fmaxm.d f20, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x31, 0x3d240812111ff82b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmaxm.d f31, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x16, 0x403dd710e5482d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fmaxm.d f16, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x22, 0x3735a2acd57f9d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fmaxm.d f22, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x29, 0x2c48f8f38b09ede1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fmaxm.d f29, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x15, 0x6718e827b7f72577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fmaxm.d f15, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x13, 0xb8b2ea834258dc4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fmaxm.d f13, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x9, 0xe31de7381ace073e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fmaxm.d f9, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x7, 0xe61d8e4962f50f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fmaxm.d f7, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x2, 0x545f7b1ca9c2f168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fmaxm.d f2, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x22, 0x4ed13b37e8297ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fmaxm.d f22, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x29, 0x168a0015905138e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fmaxm.d f29, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x7, 0x7e66884a4f63292e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fmaxm.d f7, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x27, 0x6406da74b83241d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fmaxm.d f27, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x6, 0xb196175c621fcfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fmaxm.d f6, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x4, 0x5a6911c6ae87ab14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fmaxm.d f4, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x24, 0x9ca785d63ab27f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fmaxm.d f24, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x4, 0x812b106823643a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fmaxm.d f4, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x26, 0x593b06f6b7666d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fmaxm.d f26, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x18, 0xc57a38b1b3b6833b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fmaxm.d f18, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x1, 0x6e4acd37cc2942a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fmaxm.d f1, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x18, 0x8e8563a49d94f4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fmaxm.d f18, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x5, 0x1a0da9f69d0cc47b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fmaxm.d f5, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x23, 0x4b48947d1b6d1edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fmaxm.d f23, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x31, 0x6fd8b54807e89546 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
fmaxm.d f31, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x2, 0x76a9065f4b9da194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fmaxm.d f2, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x31, 0x758c8c143e22b7da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fmaxm.d f31, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x19, 0x0a33360a7ebcfe4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fmaxm.d f19, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x3, 0xbfe2519f5691e5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f15, 0(x2) # load 0x7fefffffffffffff from memory into f15
fmaxm.d f3, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x24, 0xfd3ebfe40600f640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
fmaxm.d f24, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x1, 0xb48c306794564f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fmaxm.d f1, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x29, 0x493c6850dcd92a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fmaxm.d f29, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x10, 0x5b8905e07192760e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fmaxm.d f10, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x15, 0x954dc8d66d8bb234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fmaxm.d f15, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x21, 0x0009314b8725647a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fmaxm.d f21, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x7, 0xc304d4ba495f2ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fmaxm.d f7, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x8, 0x641ec3f8d5b22c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fmaxm.d f8, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x16, 0x6af054c2c495d0b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fmaxm.d f16, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x29, 0xbbe7f2f0967bb1cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fmaxm.d f29, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x11, 0x24a338b88def1ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fmaxm.d f11, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x14, 0xfa7d9bb78e676ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fmaxm.d f14, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x11, 0xed6395fc37fbdfce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fmaxm.d f11, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x2, 0xfcf0956fbf0fe2b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fmaxm.d f2, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x26, 0xb2e1b9f7ecccd11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fmaxm.d f26, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x8, 0xdb96bf5b57078598 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmaxm.d f8, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x20, 0x20f8693e0004c4c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fmaxm.d f20, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x9, 0x9a3e32071b4a9baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fmaxm.d f9, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x23, 0xc3457861e936cd78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fmaxm.d f23, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x17, 0x0b47df48c34b0595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fmaxm.d f17, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x5, 0x5a0ac5157c920118 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fmaxm.d f5, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x6, 0x82806c0a06edf285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
fmaxm.d f6, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x4, 0xb15524a4a1c9c844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fmaxm.d f4, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x27, 0x10c15edd667a35f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fmaxm.d f27, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x20, 0x3c975ee98d0f1ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fmaxm.d f20, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x8, 0x46da42d19dc633d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fmaxm.d f8, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x27, 0xa710d8401464954b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fmaxm.d f27, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x2, 0x14ace90605ea3f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fmaxm.d f2, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x7, 0x476f349886a2de43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fmaxm.d f7, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x8, 0xc4c9b280060933c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fmaxm.d f8, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x10, 0x3665b65ec81fa364 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fmaxm.d f10, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x7, 0xecca139240f3f8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fmaxm.d f7, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x3, 0xa47c66e3d1935989 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
fmaxm.d f3, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x25, 0xd5f1fda41bd0a1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fmaxm.d f25, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x9, 0x7a062303bb89a69f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fmaxm.d f9, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x19, 0x4b4cff321eda3e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fmaxm.d f19, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x28, 0x261fb85a72da8e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fmaxm.d f28, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x31, 0xda0672ee69a54e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
fmaxm.d f31, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x24, 0xea2149deefb63b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fmaxm.d f24, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x27, 0x721f074aaf6d6bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fmaxm.d f27, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x3, 0xf318992a5b91d541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fmaxm.d f3, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x25, 0xb2b7f54eef924df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
fmaxm.d f25, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x12, 0x242b652bdb0e35bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fmaxm.d f12, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x26, 0xa2d872c828709a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fmaxm.d f26, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x26, 0x2ad1f5abd35ba84c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fmaxm.d f26, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x10, 0x214e4c9d481f1fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fmaxm.d f10, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x28, 0x5a4b56eca650e2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmaxm.d f28, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x27, 0x1e714cfe908ce5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fmaxm.d f27, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x29, 0xfab403a67399a068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fmaxm.d f29, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x12, 0x831b827c97340112 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fmaxm.d f12, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x16, 0x81abb66dfde2d169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fmaxm.d f16, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x5, 0xaacfff2b87a95477 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fmaxm.d f5, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x5, 0xb6b27d9612806722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmaxm.d f5, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x3, 0x074408f05fbab191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fmaxm.d f3, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x24, 0xf82bc924b11bddb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fmaxm.d f24, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x13, 0x4cbe0e205aeb7625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
fmaxm.d f13, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x11, 0x511754405fb98195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fmaxm.d f11, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x16, 0x2610cf1657b26e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fmaxm.d f16, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x27, 0xc598fdb61a00e7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f21, 0(x2) # load 0x8000000000000001 from memory into f21
fmaxm.d f27, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x4, 0x0ae819da4b6d8e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
fmaxm.d f4, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x2, 0x4286824bd420908d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fmaxm.d f2, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x2, 0x83afc58cc72d8b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
fmaxm.d f2, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x21, 0xf2dc3798b9c6646f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
fmaxm.d f21, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x15, 0xbe50ba2c2b5dd525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
fmaxm.d f15, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x14, 0x3b376b6b8d525607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fmaxm.d f14, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x13, 0x04fd1901871df97a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fmaxm.d f13, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x20, 0xe943ddb3978ff6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
fmaxm.d f20, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x19, 0x1b1475c85a3d10f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fmaxm.d f19, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x17, 0x185ea04aab6eec8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmaxm.d f17, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x1, 0x3385ea521c21b9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fmaxm.d f1, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x13, 0x05c4c9c582a3e450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fmaxm.d f13, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x27, 0xcc9cce3ac9daa8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fmaxm.d f27, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x14, 0x215da44b14a68644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
fmaxm.d f14, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x5, 0xe9a187a7e7fb4409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmaxm.d f5, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x15, 0xd6264b398bf43886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fmaxm.d f15, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x10, 0x707fbcc5d5b2c117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fmaxm.d f10, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x11, 0x5f3cc30f2c12267f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
fmaxm.d f11, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x22, 0x302cb3a4f0ef163b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fmaxm.d f22, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x12, 0x2aa513dab1ea420f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fmaxm.d f12, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x15, 0x4f489d32840e0517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fmaxm.d f15, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x6, 0x980ab9099adfc83e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fmaxm.d f6, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x23, 0x003cc93e07b83e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fmaxm.d f23, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x3, 0x40c194ab69f72081 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fmaxm.d f3, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x2, 0xa4e4b198476c6dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
fmaxm.d f2, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x21, 0xda4c186075eeeabf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fmaxm.d f21, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x10, 0xb54c51a452c7977e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fmaxm.d f10, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x31, 0x5d4042e47c316dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmaxm.d f31, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x30, 0xaebb7dadae3127b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
fmaxm.d f30, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x17, 0xa195fa8a59b22686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fmaxm.d f17, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x28, 0xc50a8d24fd8465fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fmaxm.d f28, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x6, 0xe781cfca55a18624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fmaxm.d f6, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x21, 0x44c53f97f405d2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fmaxm.d f21, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x13, 0x8e663bbd57286fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fmaxm.d f13, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x28, 0x029cea923b5909c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fmaxm.d f28, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x31, 0x68a7be3f382177e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fmaxm.d f31, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x31, 0x41e93f7f4947498f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fmaxm.d f31, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x20, 0xa9e425f9badb7508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
fmaxm.d f20, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x21, 0x85d7df180db18dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fmaxm.d f21, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x13, 0x68cfca3bb7867ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fmaxm.d f13, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x21, 0xc7721414a8bf92ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fmaxm.d f21, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x5, 0x88ad078505634ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fmaxm.d f5, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x26, 0xa2ba8bb1fb48cfa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fmaxm.d f26, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x12, 0x3b051611e825f31c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fmaxm.d f12, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x18, 0xc783b23940bcb773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fmaxm.d f18, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x2, 0xfcdcf4584004ac7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fmaxm.d f2, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x27, 0xf4fe01f7339086ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
fmaxm.d f27, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x25, 0x6c80e7b331f3d8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fmaxm.d f25, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x28, 0xb5e26dfe1d0592ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fmaxm.d f28, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x3, 0x9d7d2d6da1246267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fmaxm.d f3, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x9, 0x84b0b5b028a83fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fmaxm.d f9, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x13, 0x76d6a544c867f735 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fmaxm.d f13, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x25, 0x3abd751bda33b077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fmaxm.d f25, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x24, 0xf4191b7f51880388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fmaxm.d f24, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x26, 0x395aa1450d0276c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmaxm.d f26, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x6, 0xf6cdfe26caf7b18c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fmaxm.d f6, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x15, 0x1a91f614f3122968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fmaxm.d f15, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x6, 0xa54f628aea7eb563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fmaxm.d f6, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x23, 0xf4d0fe38298f7338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fmaxm.d f23, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x1, 0x30f0c1eee20f7ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fmaxm.d f1, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x4, 0x7b0b2a4b2bbf6659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fmaxm.d f4, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x16, 0xfec0353b299cba69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmaxm.d f16, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x17, 0xb54089d98de6031c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fmaxm.d f17, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x18, 0x7d821190ec2d3ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fmaxm.d f18, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x19, 0x2d5ddcd147296eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fmaxm.d f19, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x4, 0x707b3fad53e86fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fmaxm.d f4, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x5, 0x2e1f63a71eb4bd5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fmaxm.d f5, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x30, 0xe095899bf5830424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fmaxm.d f30, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x25, 0x5c58357372335d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fmaxm.d f25, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x15, 0x43bb259ad25ef3bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fmaxm.d f15, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x10, 0xae33397d34e557b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fmaxm.d f10, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x25, 0x1568ee95622656f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fmaxm.d f25, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x15, 0x0739937924ba0fae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fmaxm.d f15, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x1, 0x906e535267fa5dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fmaxm.d f1, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x28, 0x58b6cf3ac5d4ee45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
fmaxm.d f28, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x14, 0xe07a917ff9316b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
fmaxm.d f14, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x23, 0xec503156ba95d69e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fmaxm.d f23, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x28, 0x65fad2d0e86d807c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fmaxm.d f28, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x7, 0x104dbe9d9fd6d0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fmaxm.d f7, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x30, 0xd3093ddb0c48d10b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fmaxm.d f30, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x9, 0x2fc86132fd005c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fmaxm.d f9, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x10, 0x2efa3bcd4d6dc49b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fmaxm.d f10, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x17, 0x9455ecaf77760a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fmaxm.d f17, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x1, 0x5186028df03d29b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fmaxm.d f1, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x15, 0x4c3260dec910be22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fmaxm.d f15, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x4, 0x8816f5be6967c398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fmaxm.d f4, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x17, 0x997324c5725a8dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fmaxm.d f17, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x13, 0x9c9d6a590aab69d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fmaxm.d f13, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x4, 0xe089b5fed99775c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fmaxm.d f4, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x23, 0xf29853a7f69b9e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fmaxm.d f23, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x14, 0x237d64e75d312ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fmaxm.d f14, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x14, 0x2c32c4d215b69066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fmaxm.d f14, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x26, 0xa1079ec0171ccd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
fmaxm.d f26, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x13, 0x83bf4be3b38db270 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fmaxm.d f13, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x19, 0x6b940c33b3348203 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmaxm.d f19, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x3, 0xe1e6b5bac8879754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fmaxm.d f3, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x12, 0xcad6a17174c72e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
fmaxm.d f12, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x13, 0x4660592c891ce653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fmaxm.d f13, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x17, 0x723e2d38439cb8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fmaxm.d f17, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x20, 0xb0781c61ca97f6c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fmaxm.d f20, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x24, 0xc1bcc70e90b6d7c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fmaxm.d f24, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x14, 0x4780cdab792d8ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fmaxm.d f14, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x8, 0xd00c1480996e4810 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fmaxm.d f8, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x16, 0xf46750c13c3232d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fmaxm.d f16, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x8, 0xc6af5e1f1fdb62cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fmaxm.d f8, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x6, 0x24f52aaaedb96526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fmaxm.d f6, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x19, 0x80f79165f0a606c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
fmaxm.d f19, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x24, 0x37da48abdad8c99e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fmaxm.d f24, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x1, 0x85a17842a645e2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fmaxm.d f1, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x21, 0xa005dbdead138264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fmaxm.d f21, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x2, 0xd3ac44ede6083bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fmaxm.d f2, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x12, 0xd146db7406725896 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fmaxm.d f12, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x6, 0xf589f24b5cc29582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fmaxm.d f6, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x20, 0x7aec162ea7dc3c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fmaxm.d f20, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x22, 0x1fc6b870bbf3f334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
fmaxm.d f22, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x23, 0x7981e2d28368d53c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fmaxm.d f23, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x18, 0x5504538dc1f9a908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fmaxm.d f18, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x19, 0xa2495fa655240cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmaxm.d f19, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x15, 0x278c1946358636bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fmaxm.d f15, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x20, 0x8e9e14ef179cfb45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fmaxm.d f20, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x4, 0xa216251b3e6e6b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
fmaxm.d f4, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x15, 0x75b800af9c9916c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fmaxm.d f15, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x9, 0x7670336bf71cd7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fmaxm.d f9, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x17, 0x54a26ef0bd6064f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fmaxm.d f17, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x25, 0xa5077b1b5d67af2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
fmaxm.d f25, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x27, 0x048e32a56dfc6504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fmaxm.d f27, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x10, 0xd4c378d837cfda6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fmaxm.d f10, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x4, 0x74d73304152e5cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fmaxm.d f4, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x24, 0x26be3cafda59c374 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fmaxm.d f24, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x2, 0x28748e792849748e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fmaxm.d f2, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x3, 0xadf224bf7f54826c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fmaxm.d f3, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x11, 0x91ecf0e985314fef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmaxm.d f11, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x23, 0xfa5fce0f6aecc86d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fmaxm.d f23, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x31, 0x1006e65be747c2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fmaxm.d f31, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x28, 0x9398f053fb720c14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
fmaxm.d f28, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x4, 0x2c5710917d14c5da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmaxm.d f4, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x13, 0x28cc765670342422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fmaxm.d f13, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x9, 0xa16777763baf91fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fmaxm.d f9, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x11, 0x508ec8bb2cba9440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fmaxm.d f11, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x9, 0x4bafc2253d01b811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fmaxm.d f9, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x30, 0xfe6b0017331c4934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fmaxm.d f30, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x19, 0xa30acb4a47e287e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fmaxm.d f19, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x21, 0xfcea8c22bbd8b358 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fmaxm.d f21, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x23, 0xa8fcdc862c3a66cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
fmaxm.d f23, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x29, 0xcbae630865243f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmaxm.d f29, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x28, 0xa96635b5494636f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fmaxm.d f28, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x7, 0x85b057ae8307d847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
fmaxm.d f7, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x17, 0x711108585b0b0b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fmaxm.d f17, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x25, 0x5bdaea5baeb2ec01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fmaxm.d f25, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x29, 0x2c0fffdd92178e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fmaxm.d f29, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x6, 0xba472ccb0d60eafc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fmaxm.d f6, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x5, 0x07d80327239b9f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
fmaxm.d f5, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x15, 0x2c8531b8e8323c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fmaxm.d f15, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x3, 0x40fe88f8b23d787f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fmaxm.d f3, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x25, 0x661b5f564aa3332b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fmaxm.d f25, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x28, 0x6451b1f80cf3234c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
fmaxm.d f28, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x29, 0x3e35a3de505b94f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fmaxm.d f29, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x21, 0x1dbfe3dc41ed9abb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fmaxm.d f21, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x4, 0x8f2445af47901bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fmaxm.d f4, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x12, 0x3ae3ee203b245109 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmaxm.d f12, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x27, 0x58b00e0096ebccfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fmaxm.d f27, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x27, 0x9bc580eb9452a060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fmaxm.d f27, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x30, 0x345ff628e9ed2fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fmaxm.d f30, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x2, 0xf5e45ba7f532e950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fmaxm.d f2, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x6, 0x5390a4a0f6113fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fmaxm.d f6, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x25, 0x29ace77a058c4324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fmaxm.d f25, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x11, 0x667fce4c3a82c2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fmaxm.d f11, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x7, 0xb76af586dea74f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fmaxm.d f7, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x20, 0x243439cafa4ee2cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
fmaxm.d f20, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x31, 0xf4cac5c2cf38c7f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fmaxm.d f31, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x6, 0x6dfb258e1f4ffeca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmaxm.d f6, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x20, 0x530962847b3af4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fmaxm.d f20, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x16, 0xcecfd3fed7a86e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fmaxm.d f16, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x20, 0xb1bea47aedaece84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fmaxm.d f20, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x21, 0x66a8973d3c08ef37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fmaxm.d f21, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x26, 0x7c4721f47050661a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fmaxm.d f26, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x28, 0xedd8d0c5b0080312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fmaxm.d f28, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x22, 0x82f459e5e272b01e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fmaxm.d f22, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x19, 0xa183a7fd629df492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fmaxm.d f19, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x23, 0x32fd6f38de543b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fmaxm.d f23, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x21, 0xad18ef99561f3e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fmaxm.d f21, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x24, 0x4035e438f3931ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fmaxm.d f24, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x6, 0xa3a2ff1406a5c40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fmaxm.d f6, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x1, 0x6cc10ac304b6c9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fmaxm.d f1, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x25, 0xcc3731b232724d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fmaxm.d f25, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x15, 0x851b190476c7ac5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fmaxm.d f15, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x7, 0x2306c1fc6f7f7e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fmaxm.d f7, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x30, 0x0c906628f842bcd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fmaxm.d f30, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x3, 0x0a2ffd46ffe3bf3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
fmaxm.d f3, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x5, 0xeba2c117d6006e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fmaxm.d f5, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x29, 0x224d430334134bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
fmaxm.d f29, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x2, 0x4e07ca1e5fae83a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fmaxm.d f2, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x23, 0x6c78c2c8accfb274 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
fmaxm.d f23, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x13, 0x0ddad472baaf55ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fmaxm.d f13, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x25, 0xa19adcb7f6b41770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
fmaxm.d f25, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x11, 0xc6221ab92c59a9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fmaxm.d f11, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x17, 0x11742b467adf1e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fmaxm.d f17, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x9, 0x799163272977480d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fmaxm.d f9, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x6, 0xa46796f34f5534bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fmaxm.d f6, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x6, 0x12512325bdd4cc9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
fmaxm.d f6, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x19, 0xb8a025897cc012b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
fmaxm.d f19, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x6, 0x210da10bc12c7d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmaxm.d f6, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x11, 0xadce40f9d988f9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fmaxm.d f11, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x20, 0x4adb9aa63ad5ec1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fmaxm.d f20, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x16, 0xc29ac4e7da96908e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fmaxm.d f16, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x12, 0x239000331dfb36bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fmaxm.d f12, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x22, 0x1ed0c9c001059cca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmaxm.d f22, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x14, 0xa967f073219873c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
fmaxm.d f14, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x31, 0xc3d9c65bc7392893 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fmaxm.d f31, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x20, 0x79c189f8b8bb26e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
fmaxm.d f20, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x10, 0x26e294826fb8553e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fmaxm.d f10, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x21, 0x0d0ce365be4242b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fmaxm.d f21, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x12, 0xb37a7d47589ec5fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fmaxm.d f12, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x25, 0xb152803a2a5cd360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fmaxm.d f25, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x17, 0x04090ff772628473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
fmaxm.d f17, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x2, 0x0a9fd9cb8eaa8266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fmaxm.d f2, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x12, 0xf46d559632f05579 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fmaxm.d f12, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x30, 0xf8d2775f4e3074df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmaxm.d f30, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x22, 0xb6007851136348f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fmaxm.d f22, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x6, 0x14fa341363bcb436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fmaxm.d f6, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x4, 0x736b47c04f2377c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fmaxm.d f4, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x22, 0x437358f2ff66329b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fmaxm.d f22, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x8, 0xb4c200e201c9f3fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fmaxm.d f8, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x13, 0x79bddf919a9cc037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fmaxm.d f13, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x29, 0xe4c9856d46d996a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
fmaxm.d f29, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x13, 0x4e3a54d34f5023b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fmaxm.d f13, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x30, 0x230c56b8376091f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fmaxm.d f30, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x31, 0x1f22a095f8fdb278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fmaxm.d f31, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x3, 0x654512e82c1ce0aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fmaxm.d f3, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x7, 0x7381fa13d9a73948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fmaxm.d f7, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x19, 0x7650da05f38368a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fmaxm.d f19, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x4, 0x3c859ae05850ded4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fmaxm.d f4, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x26, 0x28ddd47e284d332a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fmaxm.d f26, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x3, 0xdd157f122470fc2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fmaxm.d f3, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x14, 0xa1e3a4dfbbe53ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fmaxm.d f14, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x2, 0x6cc6897bc206db87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fmaxm.d f2, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x12, 0xd94995b85e0c8c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fmaxm.d f12, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x25, 0xc407cb9f16e8bdd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fmaxm.d f25, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x23, 0xdaaf1a9c96b66523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fmaxm.d f23, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x14, 0x02c79975d305df03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fmaxm.d f14, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x28, 0x8bc8bac394fe86a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
fmaxm.d f28, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x9, 0x227075107fb0227d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fmaxm.d f9, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x25, 0xb60ffea26da925bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fmaxm.d f25, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x22, 0x87ca064399b340c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fmaxm.d f22, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x22, 0x88ed038b2f0dac66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fmaxm.d f22, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x3, 0xf32f69cc038716ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fmaxm.d f3, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x3, 0x8334bd5d3aa6abf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fmaxm.d f3, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x10, 0x696f58753e77c43d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fmaxm.d f10, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x29, 0x3042b1789ff48761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fmaxm.d f29, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x4, 0x7ccc2c4c8424d2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fmaxm.d f4, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x7, 0xcafe58d189bdf057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fmaxm.d f7, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x30, 0x716c43a513a961e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fmaxm.d f30, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x7, 0x2a79d787217afa1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fmaxm.d f7, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x17, 0xa7b5983e797fa2ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fmaxm.d f17, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x21, 0x047efa44f23f6bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fmaxm.d f21, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x13, 0x5187949ee344a816 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fmaxm.d f13, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x17, 0xe89269b03251f582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fmaxm.d f17, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x5, 0xbc5ee5e49ab3484e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fmaxm.d f5, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x23, 0x23df8ff6c127f89b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmaxm.d f23, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x23, 0x81cf31bbdcf057b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
fmaxm.d f23, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x19, 0x38e05d1c732a397d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
fmaxm.d f19, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x5, 0xc56b6432c7e6f5f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
fmaxm.d f5, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x4, 0xcd2d3a89b053ed1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fmaxm.d f4, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x19, 0xb764586f36315716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fmaxm.d f19, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x9, 0x074c4574afbf2205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fmaxm.d f9, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x15, 0xea25867f8b7e624c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fmaxm.d f15, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x24, 0x8cd8d9632792099b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
fmaxm.d f24, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x30, 0xd9b303e57bb20cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fmaxm.d f30, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x8, 0x70c2b25c883bca3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fmaxm.d f8, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x17, 0x2476274b411935d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fmaxm.d f17, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x1, 0xf7cb8fde64e7ff83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fmaxm.d f1, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x23, 0xf800e136dbd498e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
fmaxm.d f23, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x22, 0xfd7f17427df486d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
fmaxm.d f22, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x29, 0xac8e1659184b67d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fmaxm.d f29, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x10, 0xb63a87ea1997f2a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fmaxm.d f10, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x31, 0x1952fcf0266bb30d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
fmaxm.d f31, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x23, 0x34205a4d01407511 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmaxm.d f23, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x11, 0x351a91810d90a4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fmaxm.d f11, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x16, 0x183e7b68ac2034de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fmaxm.d f16, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x23, 0x5ec84896ae88173a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fmaxm.d f23, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x7, 0x0dd2ab99c3f451ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fmaxm.d f7, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x26, 0x7912d09d1dfcfb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fmaxm.d f26, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x22, 0xd39a540908fc726a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fmaxm.d f22, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x18, 0x5fc070d4e9c03709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fmaxm.d f18, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x23, 0x3516c59b27ad574b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmaxm.d f23, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x25, 0x395ae4d793a4bb2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fmaxm.d f25, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x14, 0xf08541d4629ac8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fmaxm.d f14, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x28, 0xb7c1f48db406c2b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fmaxm.d f28, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x12, 0x3af09b12f7d75f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fmaxm.d f12, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x23, 0xfe86fd465602892a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fmaxm.d f23, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x14, 0xbfb7e0ae9f0f795d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fmaxm.d f14, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x19, 0x441a6cd63e0ffa1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
fmaxm.d f19, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x3, 0x18fd51d853dfe11f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fmaxm.d f3, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x6, 0x2d41eec5972b9c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f4, 0(x2) # load 0xa6e895993737426c from memory into f4
fmaxm.d f6, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x11, 0x9fe4278e107fa7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fmaxm.d f11, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x21, 0x0c36a89720907900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fmaxm.d f21, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x16, 0x3e1620e4ff465020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fmaxm.d f16, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x21, 0x0835578128f8abcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fmaxm.d f21, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x19, 0x7b8eb4c226220616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
fmaxm.d f19, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x22, 0xdb92daa094c0ab38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fmaxm.d f22, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x30, 0xf9bc3c7d2fd4c1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fmaxm.d f30, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x13, 0xaa827fe1122fb0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fmaxm.d f13, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x7, 0x627baec7881ec105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fmaxm.d f7, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x26, 0x0da1fb500c059c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fmaxm.d f26, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x10, 0x65551ad3387b1522 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fmaxm.d f10, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x14, 0x6677d6806fda21cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fmaxm.d f14, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x22, 0x84f7f04079b6390e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fmaxm.d f22, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x28, 0xee419d94e7b20e61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
fmaxm.d f28, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x26, 0xc8872e6e7ab74db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fmaxm.d f26, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x3, 0x993d5078eb5d66fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fmaxm.d f3, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x29, 0x00661672c0276376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fmaxm.d f29, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x8, 0x43bcdddc9e0d8dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fmaxm.d f8, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x28, 0xabefc29cf0bd84e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fmaxm.d f28, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x24, 0xd5ad7b158bae2bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fmaxm.d f24, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x16, 0xaf8394c8bd6e7622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fmaxm.d f16, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x25, 0xf9bc0c9f558c80e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fmaxm.d f25, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x7, 0x37fee83518f82906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmaxm.d f7, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x25, 0x8bb4a034c060ff6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fmaxm.d f25, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x16, 0x92b19470016b10d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fmaxm.d f16, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x31, 0xc0f26111b73d9db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fmaxm.d f31, f28, f11 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xba978f204834cc09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92aa3ec1ac3acdac # load x3 with value 0x92aa3ec1ac3acdac
sd x3, 0(x2) # store 0x92aa3ec1ac3acdac in memory
fld f2, 0(x2) # load 0x92aa3ec1ac3acdac from memory into f2
li x3, 0x0cef9dabae32e5db # load x3 with value 0x0cef9dabae32e5db
sd x3, 0(x2) # store 0x0cef9dabae32e5db in memory
fld f23, 0(x2) # load 0x0cef9dabae32e5db from memory into f23
fmaxm.d f0, f2, f23 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xe5d2d55c1bb84193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88b154138c0c6b70 # load x3 with value 0x88b154138c0c6b70
sd x3, 0(x2) # store 0x88b154138c0c6b70 in memory
fld f18, 0(x2) # load 0x88b154138c0c6b70 from memory into f18
li x3, 0xbeca1a9e03703bfc # load x3 with value 0xbeca1a9e03703bfc
sd x3, 0(x2) # store 0xbeca1a9e03703bfc in memory
fld f24, 0(x2) # load 0xbeca1a9e03703bfc from memory into f24
fmaxm.d f1, f18, f24 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x1d92092aaade1ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8aab00e27d97579d # load x3 with value 0x8aab00e27d97579d
sd x3, 0(x2) # store 0x8aab00e27d97579d in memory
fld f4, 0(x2) # load 0x8aab00e27d97579d from memory into f4
li x3, 0xccbae858995915b8 # load x3 with value 0xccbae858995915b8
sd x3, 0(x2) # store 0xccbae858995915b8 in memory
fld f10, 0(x2) # load 0xccbae858995915b8 from memory into f10
fmaxm.d f2, f4, f10 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x79906ec299569b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfcf23d3dc4112de2 # load x3 with value 0xfcf23d3dc4112de2
sd x3, 0(x2) # store 0xfcf23d3dc4112de2 in memory
fld f30, 0(x2) # load 0xfcf23d3dc4112de2 from memory into f30
li x3, 0x6eed00a41dc3105c # load x3 with value 0x6eed00a41dc3105c
sd x3, 0(x2) # store 0x6eed00a41dc3105c in memory
fld f22, 0(x2) # load 0x6eed00a41dc3105c from memory into f22
fmaxm.d f3, f30, f22 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x2882bf6d2d488977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fb55d90b9ff7320 # load x3 with value 0x2fb55d90b9ff7320
sd x3, 0(x2) # store 0x2fb55d90b9ff7320 in memory
fld f23, 0(x2) # load 0x2fb55d90b9ff7320 from memory into f23
li x3, 0xf163fc8d07a95bff # load x3 with value 0xf163fc8d07a95bff
sd x3, 0(x2) # store 0xf163fc8d07a95bff in memory
fld f12, 0(x2) # load 0xf163fc8d07a95bff from memory into f12
fmaxm.d f4, f23, f12 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x7871d95fc84405ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x968a6d36790006d6 # load x3 with value 0x968a6d36790006d6
sd x3, 0(x2) # store 0x968a6d36790006d6 in memory
fld f23, 0(x2) # load 0x968a6d36790006d6 from memory into f23
li x3, 0x066534da5b4bb78d # load x3 with value 0x066534da5b4bb78d
sd x3, 0(x2) # store 0x066534da5b4bb78d in memory
fld f28, 0(x2) # load 0x066534da5b4bb78d from memory into f28
fmaxm.d f5, f23, f28 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x1aa6c434a6bf28b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x141219c172d2c185 # load x3 with value 0x141219c172d2c185
sd x3, 0(x2) # store 0x141219c172d2c185 in memory
fld f24, 0(x2) # load 0x141219c172d2c185 from memory into f24
li x3, 0x652681a16c0c21f9 # load x3 with value 0x652681a16c0c21f9
sd x3, 0(x2) # store 0x652681a16c0c21f9 in memory
fld f26, 0(x2) # load 0x652681a16c0c21f9 from memory into f26
fmaxm.d f6, f24, f26 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x61d06bd6477c39e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9491246f0baf8f54 # load x3 with value 0x9491246f0baf8f54
sd x3, 0(x2) # store 0x9491246f0baf8f54 in memory
fld f19, 0(x2) # load 0x9491246f0baf8f54 from memory into f19
li x3, 0x730200dde515d41b # load x3 with value 0x730200dde515d41b
sd x3, 0(x2) # store 0x730200dde515d41b in memory
fld f13, 0(x2) # load 0x730200dde515d41b from memory into f13
fmaxm.d f7, f19, f13 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x35a5178e77865d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6735e9ec491879dc # load x3 with value 0x6735e9ec491879dc
sd x3, 0(x2) # store 0x6735e9ec491879dc in memory
fld f21, 0(x2) # load 0x6735e9ec491879dc from memory into f21
li x3, 0x2de678707156085e # load x3 with value 0x2de678707156085e
sd x3, 0(x2) # store 0x2de678707156085e in memory
fld f23, 0(x2) # load 0x2de678707156085e from memory into f23
fmaxm.d f8, f21, f23 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xfe545c5cc7ce30bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc06a267df296f82e # load x3 with value 0xc06a267df296f82e
sd x3, 0(x2) # store 0xc06a267df296f82e in memory
fld f28, 0(x2) # load 0xc06a267df296f82e from memory into f28
li x3, 0x06f2e87a1180d220 # load x3 with value 0x06f2e87a1180d220
sd x3, 0(x2) # store 0x06f2e87a1180d220 in memory
fld f31, 0(x2) # load 0x06f2e87a1180d220 from memory into f31
fmaxm.d f9, f28, f31 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xb3296631a1813cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbdf62d43b463910 # load x3 with value 0xdbdf62d43b463910
sd x3, 0(x2) # store 0xdbdf62d43b463910 in memory
fld f14, 0(x2) # load 0xdbdf62d43b463910 from memory into f14
li x3, 0x1312f5aab664a491 # load x3 with value 0x1312f5aab664a491
sd x3, 0(x2) # store 0x1312f5aab664a491 in memory
fld f22, 0(x2) # load 0x1312f5aab664a491 from memory into f22
fmaxm.d f10, f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x4e8d32b8e92047ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a3d8caabf390d8d # load x3 with value 0x1a3d8caabf390d8d
sd x3, 0(x2) # store 0x1a3d8caabf390d8d in memory
fld f29, 0(x2) # load 0x1a3d8caabf390d8d from memory into f29
li x3, 0xfbd177f43e67e94d # load x3 with value 0xfbd177f43e67e94d
sd x3, 0(x2) # store 0xfbd177f43e67e94d in memory
fld f28, 0(x2) # load 0xfbd177f43e67e94d from memory into f28
fmaxm.d f11, f29, f28 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x50b3d232a39832e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x228c44de490ac350 # load x3 with value 0x228c44de490ac350
sd x3, 0(x2) # store 0x228c44de490ac350 in memory
fld f8, 0(x2) # load 0x228c44de490ac350 from memory into f8
li x3, 0x9ae96cd5b3f4b139 # load x3 with value 0x9ae96cd5b3f4b139
sd x3, 0(x2) # store 0x9ae96cd5b3f4b139 in memory
fld f1, 0(x2) # load 0x9ae96cd5b3f4b139 from memory into f1
fmaxm.d f12, f8, f1 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8f3e93d23a423590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeefa7484267f11b0 # load x3 with value 0xeefa7484267f11b0
sd x3, 0(x2) # store 0xeefa7484267f11b0 in memory
fld f5, 0(x2) # load 0xeefa7484267f11b0 from memory into f5
li x3, 0xd0c88425dbdada6c # load x3 with value 0xd0c88425dbdada6c
sd x3, 0(x2) # store 0xd0c88425dbdada6c in memory
fld f16, 0(x2) # load 0xd0c88425dbdada6c from memory into f16
fmaxm.d f13, f5, f16 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xc6c645b4d34918c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9bb35c601cd8e72 # load x3 with value 0xe9bb35c601cd8e72
sd x3, 0(x2) # store 0xe9bb35c601cd8e72 in memory
fld f24, 0(x2) # load 0xe9bb35c601cd8e72 from memory into f24
li x3, 0x0f8e9a94d1f853d1 # load x3 with value 0x0f8e9a94d1f853d1
sd x3, 0(x2) # store 0x0f8e9a94d1f853d1 in memory
fld f19, 0(x2) # load 0x0f8e9a94d1f853d1 from memory into f19
fmaxm.d f14, f24, f19 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4c0fb647f761b660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9568c7238c684dc0 # load x3 with value 0x9568c7238c684dc0
sd x3, 0(x2) # store 0x9568c7238c684dc0 in memory
fld f13, 0(x2) # load 0x9568c7238c684dc0 from memory into f13
li x3, 0x38f5b67eaeb58bf2 # load x3 with value 0x38f5b67eaeb58bf2
sd x3, 0(x2) # store 0x38f5b67eaeb58bf2 in memory
fld f30, 0(x2) # load 0x38f5b67eaeb58bf2 from memory into f30
fmaxm.d f15, f13, f30 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xd924d2c6b6d7fa8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5082420b715bdb45 # load x3 with value 0x5082420b715bdb45
sd x3, 0(x2) # store 0x5082420b715bdb45 in memory
fld f26, 0(x2) # load 0x5082420b715bdb45 from memory into f26
li x3, 0x5e7aa35375ae9cdc # load x3 with value 0x5e7aa35375ae9cdc
sd x3, 0(x2) # store 0x5e7aa35375ae9cdc in memory
fld f30, 0(x2) # load 0x5e7aa35375ae9cdc from memory into f30
fmaxm.d f16, f26, f30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x7fdd20d207cfddd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe682f94cc3e26841 # load x3 with value 0xe682f94cc3e26841
sd x3, 0(x2) # store 0xe682f94cc3e26841 in memory
fld f9, 0(x2) # load 0xe682f94cc3e26841 from memory into f9
li x3, 0x42a0807e7ae051a7 # load x3 with value 0x42a0807e7ae051a7
sd x3, 0(x2) # store 0x42a0807e7ae051a7 in memory
fld f24, 0(x2) # load 0x42a0807e7ae051a7 from memory into f24
fmaxm.d f17, f9, f24 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x3086baddbe134454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23ed09f7e7c05955 # load x3 with value 0x23ed09f7e7c05955
sd x3, 0(x2) # store 0x23ed09f7e7c05955 in memory
fld f16, 0(x2) # load 0x23ed09f7e7c05955 from memory into f16
li x3, 0xee7de483e9fb6e26 # load x3 with value 0xee7de483e9fb6e26
sd x3, 0(x2) # store 0xee7de483e9fb6e26 in memory
fld f23, 0(x2) # load 0xee7de483e9fb6e26 from memory into f23
fmaxm.d f18, f16, f23 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x3d902890433d9654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1f2f0bf408bbcd8 # load x3 with value 0xd1f2f0bf408bbcd8
sd x3, 0(x2) # store 0xd1f2f0bf408bbcd8 in memory
fld f16, 0(x2) # load 0xd1f2f0bf408bbcd8 from memory into f16
li x3, 0x6f0d7773e9a43783 # load x3 with value 0x6f0d7773e9a43783
sd x3, 0(x2) # store 0x6f0d7773e9a43783 in memory
fld f15, 0(x2) # load 0x6f0d7773e9a43783 from memory into f15
fmaxm.d f19, f16, f15 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x01eb861c9866284d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ab017bdae68cbda # load x3 with value 0x4ab017bdae68cbda
sd x3, 0(x2) # store 0x4ab017bdae68cbda in memory
fld f23, 0(x2) # load 0x4ab017bdae68cbda from memory into f23
li x3, 0x6ebdba3f03e7062e # load x3 with value 0x6ebdba3f03e7062e
sd x3, 0(x2) # store 0x6ebdba3f03e7062e in memory
fld f25, 0(x2) # load 0x6ebdba3f03e7062e from memory into f25
fmaxm.d f20, f23, f25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x76b6332094156a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf7d9c151688d762 # load x3 with value 0xcf7d9c151688d762
sd x3, 0(x2) # store 0xcf7d9c151688d762 in memory
fld f17, 0(x2) # load 0xcf7d9c151688d762 from memory into f17
li x3, 0xdb80ad4989400664 # load x3 with value 0xdb80ad4989400664
sd x3, 0(x2) # store 0xdb80ad4989400664 in memory
fld f9, 0(x2) # load 0xdb80ad4989400664 from memory into f9
fmaxm.d f21, f17, f9 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x0a0696c6d27e260c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6b08345bd9aa599 # load x3 with value 0xe6b08345bd9aa599
sd x3, 0(x2) # store 0xe6b08345bd9aa599 in memory
fld f4, 0(x2) # load 0xe6b08345bd9aa599 from memory into f4
li x3, 0xff58927613d23641 # load x3 with value 0xff58927613d23641
sd x3, 0(x2) # store 0xff58927613d23641 in memory
fld f18, 0(x2) # load 0xff58927613d23641 from memory into f18
fmaxm.d f22, f4, f18 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x3695a8beaec8f7e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b215ae60c39670b # load x3 with value 0x5b215ae60c39670b
sd x3, 0(x2) # store 0x5b215ae60c39670b in memory
fld f17, 0(x2) # load 0x5b215ae60c39670b from memory into f17
li x3, 0xc740fe88c11309b7 # load x3 with value 0xc740fe88c11309b7
sd x3, 0(x2) # store 0xc740fe88c11309b7 in memory
fld f16, 0(x2) # load 0xc740fe88c11309b7 from memory into f16
fmaxm.d f23, f17, f16 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xfe64e736798dec4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69fde52c09ae873d # load x3 with value 0x69fde52c09ae873d
sd x3, 0(x2) # store 0x69fde52c09ae873d in memory
fld f7, 0(x2) # load 0x69fde52c09ae873d from memory into f7
li x3, 0x5813babc698a9b15 # load x3 with value 0x5813babc698a9b15
sd x3, 0(x2) # store 0x5813babc698a9b15 in memory
fld f24, 0(x2) # load 0x5813babc698a9b15 from memory into f24
fmaxm.d f24, f7, f24 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x2b4f5a15cea5d1d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61524aadc3b7f582 # load x3 with value 0x61524aadc3b7f582
sd x3, 0(x2) # store 0x61524aadc3b7f582 in memory
fld f14, 0(x2) # load 0x61524aadc3b7f582 from memory into f14
li x3, 0x044a9e1553c06ab0 # load x3 with value 0x044a9e1553c06ab0
sd x3, 0(x2) # store 0x044a9e1553c06ab0 in memory
fld f8, 0(x2) # load 0x044a9e1553c06ab0 from memory into f8
fmaxm.d f25, f14, f8 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xbc50ba49cb9f3c86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd972bebdbbec3af2 # load x3 with value 0xd972bebdbbec3af2
sd x3, 0(x2) # store 0xd972bebdbbec3af2 in memory
fld f15, 0(x2) # load 0xd972bebdbbec3af2 from memory into f15
li x3, 0xc36f2c5af97b34b2 # load x3 with value 0xc36f2c5af97b34b2
sd x3, 0(x2) # store 0xc36f2c5af97b34b2 in memory
fld f8, 0(x2) # load 0xc36f2c5af97b34b2 from memory into f8
fmaxm.d f26, f15, f8 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x09d9d78b7caf2a88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc19b7d8662f96e4e # load x3 with value 0xc19b7d8662f96e4e
sd x3, 0(x2) # store 0xc19b7d8662f96e4e in memory
fld f11, 0(x2) # load 0xc19b7d8662f96e4e from memory into f11
li x3, 0x330d823efc98e962 # load x3 with value 0x330d823efc98e962
sd x3, 0(x2) # store 0x330d823efc98e962 in memory
fld f5, 0(x2) # load 0x330d823efc98e962 from memory into f5
fmaxm.d f27, f11, f5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xd40cf306e9898716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1c5051a67c3e8e0 # load x3 with value 0xf1c5051a67c3e8e0
sd x3, 0(x2) # store 0xf1c5051a67c3e8e0 in memory
fld f23, 0(x2) # load 0xf1c5051a67c3e8e0 from memory into f23
li x3, 0xa80f0e8b6eb9e803 # load x3 with value 0xa80f0e8b6eb9e803
sd x3, 0(x2) # store 0xa80f0e8b6eb9e803 in memory
fld f19, 0(x2) # load 0xa80f0e8b6eb9e803 from memory into f19
fmaxm.d f28, f23, f19 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xe5b74198edabe292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7912cb7afc28245e # load x3 with value 0x7912cb7afc28245e
sd x3, 0(x2) # store 0x7912cb7afc28245e in memory
fld f1, 0(x2) # load 0x7912cb7afc28245e from memory into f1
li x3, 0xd3f5d584b2ca3392 # load x3 with value 0xd3f5d584b2ca3392
sd x3, 0(x2) # store 0xd3f5d584b2ca3392 in memory
fld f20, 0(x2) # load 0xd3f5d584b2ca3392 from memory into f20
fmaxm.d f29, f1, f20 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf27cb0b3a878eae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x812b1f176d262046 # load x3 with value 0x812b1f176d262046
sd x3, 0(x2) # store 0x812b1f176d262046 in memory
fld f30, 0(x2) # load 0x812b1f176d262046 from memory into f30
li x3, 0xf5e6198c3c433e5e # load x3 with value 0xf5e6198c3c433e5e
sd x3, 0(x2) # store 0xf5e6198c3c433e5e in memory
fld f24, 0(x2) # load 0xf5e6198c3c433e5e from memory into f24
fmaxm.d f30, f30, f24 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x7bd7f9b902dd4365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ee10850741256e4 # load x3 with value 0x3ee10850741256e4
sd x3, 0(x2) # store 0x3ee10850741256e4 in memory
fld f16, 0(x2) # load 0x3ee10850741256e4 from memory into f16
li x3, 0xc24c28f11269a759 # load x3 with value 0xc24c28f11269a759
sd x3, 0(x2) # store 0xc24c28f11269a759 in memory
fld f9, 0(x2) # load 0xc24c28f11269a759 from memory into f9
fmaxm.d f31, f16, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x17, 0xab40d9ec0a86d418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38a134564d36caff # load x3 with value 0x38a134564d36caff
sd x3, 0(x2) # store 0x38a134564d36caff in memory
fld f0, 0(x2) # load 0x38a134564d36caff from memory into f0
li x3, 0x828675130d187f4c # load x3 with value 0x828675130d187f4c
sd x3, 0(x2) # store 0x828675130d187f4c in memory
fld f13, 0(x2) # load 0x828675130d187f4c from memory into f13
fmaxm.d f17, f0, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x31, 0x6c3617663418bc69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaec64660adf6847c # load x3 with value 0xaec64660adf6847c
sd x3, 0(x2) # store 0xaec64660adf6847c in memory
fld f1, 0(x2) # load 0xaec64660adf6847c from memory into f1
li x3, 0x366f15c0571a3c7f # load x3 with value 0x366f15c0571a3c7f
sd x3, 0(x2) # store 0x366f15c0571a3c7f in memory
fld f13, 0(x2) # load 0x366f15c0571a3c7f from memory into f13
fmaxm.d f31, f1, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x24, 0x176b8ae42a066150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39d160efb46a4411 # load x3 with value 0x39d160efb46a4411
sd x3, 0(x2) # store 0x39d160efb46a4411 in memory
fld f2, 0(x2) # load 0x39d160efb46a4411 from memory into f2
li x3, 0x9dc2f63f4f42ae8f # load x3 with value 0x9dc2f63f4f42ae8f
sd x3, 0(x2) # store 0x9dc2f63f4f42ae8f in memory
fld f7, 0(x2) # load 0x9dc2f63f4f42ae8f from memory into f7
fmaxm.d f24, f2, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x21, 0xad8dc312b9b37a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xecdaf8840c73d4ac # load x3 with value 0xecdaf8840c73d4ac
sd x3, 0(x2) # store 0xecdaf8840c73d4ac in memory
fld f3, 0(x2) # load 0xecdaf8840c73d4ac from memory into f3
li x3, 0x4a1f216f2eb7347a # load x3 with value 0x4a1f216f2eb7347a
sd x3, 0(x2) # store 0x4a1f216f2eb7347a in memory
fld f16, 0(x2) # load 0x4a1f216f2eb7347a from memory into f16
fmaxm.d f21, f3, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x7, 0xa9b7ba2f55460725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e84f7e88ec9ba8a # load x3 with value 0x4e84f7e88ec9ba8a
sd x3, 0(x2) # store 0x4e84f7e88ec9ba8a in memory
fld f4, 0(x2) # load 0x4e84f7e88ec9ba8a from memory into f4
li x3, 0xdd188e5b2a67f809 # load x3 with value 0xdd188e5b2a67f809
sd x3, 0(x2) # store 0xdd188e5b2a67f809 in memory
fld f26, 0(x2) # load 0xdd188e5b2a67f809 from memory into f26
fmaxm.d f7, f4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x28, 0x1c1e6d4d7ddfa23d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc6e2ddca0eb6f75 # load x3 with value 0xfc6e2ddca0eb6f75
sd x3, 0(x2) # store 0xfc6e2ddca0eb6f75 in memory
fld f5, 0(x2) # load 0xfc6e2ddca0eb6f75 from memory into f5
li x3, 0x10db175515457869 # load x3 with value 0x10db175515457869
sd x3, 0(x2) # store 0x10db175515457869 in memory
fld f25, 0(x2) # load 0x10db175515457869 from memory into f25
fmaxm.d f28, f5, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x28, 0x4de502f71620e3ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f36207dd1ab1812 # load x3 with value 0x9f36207dd1ab1812
sd x3, 0(x2) # store 0x9f36207dd1ab1812 in memory
fld f6, 0(x2) # load 0x9f36207dd1ab1812 from memory into f6
li x3, 0x8a024f1aad44758c # load x3 with value 0x8a024f1aad44758c
sd x3, 0(x2) # store 0x8a024f1aad44758c in memory
fld f21, 0(x2) # load 0x8a024f1aad44758c from memory into f21
fmaxm.d f28, f6, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x4, 0x31a5138a49d0f857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7107f0dabdc61acf # load x3 with value 0x7107f0dabdc61acf
sd x3, 0(x2) # store 0x7107f0dabdc61acf in memory
fld f7, 0(x2) # load 0x7107f0dabdc61acf from memory into f7
li x3, 0x131546b757863b32 # load x3 with value 0x131546b757863b32
sd x3, 0(x2) # store 0x131546b757863b32 in memory
fld f10, 0(x2) # load 0x131546b757863b32 from memory into f10
fmaxm.d f4, f7, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x6, 0x02ed2cb8b23e1c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a127009740fde41 # load x3 with value 0x4a127009740fde41
sd x3, 0(x2) # store 0x4a127009740fde41 in memory
fld f8, 0(x2) # load 0x4a127009740fde41 from memory into f8
li x3, 0xd32c423bee2f5801 # load x3 with value 0xd32c423bee2f5801
sd x3, 0(x2) # store 0xd32c423bee2f5801 in memory
fld f11, 0(x2) # load 0xd32c423bee2f5801 from memory into f11
fmaxm.d f6, f8, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x12, 0x15f977edd7e03389 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86711144d593faf6 # load x3 with value 0x86711144d593faf6
sd x3, 0(x2) # store 0x86711144d593faf6 in memory
fld f9, 0(x2) # load 0x86711144d593faf6 from memory into f9
li x3, 0x55358a9028f2ace4 # load x3 with value 0x55358a9028f2ace4
sd x3, 0(x2) # store 0x55358a9028f2ace4 in memory
fld f5, 0(x2) # load 0x55358a9028f2ace4 from memory into f5
fmaxm.d f12, f9, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x22, 0xa82eee3a11c60ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68db8f03a613eb75 # load x3 with value 0x68db8f03a613eb75
sd x3, 0(x2) # store 0x68db8f03a613eb75 in memory
fld f10, 0(x2) # load 0x68db8f03a613eb75 from memory into f10
li x3, 0x39647010e022de8d # load x3 with value 0x39647010e022de8d
sd x3, 0(x2) # store 0x39647010e022de8d in memory
fld f26, 0(x2) # load 0x39647010e022de8d from memory into f26
fmaxm.d f22, f10, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x10, 0x89d571aad54e11e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca56b36b0583d8fc # load x3 with value 0xca56b36b0583d8fc
sd x3, 0(x2) # store 0xca56b36b0583d8fc in memory
fld f11, 0(x2) # load 0xca56b36b0583d8fc from memory into f11
li x3, 0xee18daf092e8cfa6 # load x3 with value 0xee18daf092e8cfa6
sd x3, 0(x2) # store 0xee18daf092e8cfa6 in memory
fld f7, 0(x2) # load 0xee18daf092e8cfa6 from memory into f7
fmaxm.d f10, f11, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x6, 0xa7ab64b95df0aa27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x307a990cced653f9 # load x3 with value 0x307a990cced653f9
sd x3, 0(x2) # store 0x307a990cced653f9 in memory
fld f12, 0(x2) # load 0x307a990cced653f9 from memory into f12
li x3, 0xbdf4dc9433f95e0b # load x3 with value 0xbdf4dc9433f95e0b
sd x3, 0(x2) # store 0xbdf4dc9433f95e0b in memory
fld f10, 0(x2) # load 0xbdf4dc9433f95e0b from memory into f10
fmaxm.d f6, f12, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x2, 0xab6260934e811744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03e3d22063773129 # load x3 with value 0x03e3d22063773129
sd x3, 0(x2) # store 0x03e3d22063773129 in memory
fld f13, 0(x2) # load 0x03e3d22063773129 from memory into f13
li x3, 0xdc0acf45d5f40d65 # load x3 with value 0xdc0acf45d5f40d65
sd x3, 0(x2) # store 0xdc0acf45d5f40d65 in memory
fld f16, 0(x2) # load 0xdc0acf45d5f40d65 from memory into f16
fmaxm.d f2, f13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x28, 0x54dc4f1fc9ad01b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68e309eefcad2528 # load x3 with value 0x68e309eefcad2528
sd x3, 0(x2) # store 0x68e309eefcad2528 in memory
fld f14, 0(x2) # load 0x68e309eefcad2528 from memory into f14
li x3, 0xd4c4ce83bee3e091 # load x3 with value 0xd4c4ce83bee3e091
sd x3, 0(x2) # store 0xd4c4ce83bee3e091 in memory
fld f20, 0(x2) # load 0xd4c4ce83bee3e091 from memory into f20
fmaxm.d f28, f14, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x13, 0x897971e00f18a33c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3523f9a613f5b6a # load x3 with value 0xc3523f9a613f5b6a
sd x3, 0(x2) # store 0xc3523f9a613f5b6a in memory
fld f15, 0(x2) # load 0xc3523f9a613f5b6a from memory into f15
li x3, 0x5d13abbadf1145a2 # load x3 with value 0x5d13abbadf1145a2
sd x3, 0(x2) # store 0x5d13abbadf1145a2 in memory
fld f1, 0(x2) # load 0x5d13abbadf1145a2 from memory into f1
fmaxm.d f13, f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x31, 0x89bede6f611c84a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68f93d6c5365af37 # load x3 with value 0x68f93d6c5365af37
sd x3, 0(x2) # store 0x68f93d6c5365af37 in memory
fld f16, 0(x2) # load 0x68f93d6c5365af37 from memory into f16
li x3, 0x5a9a4e25a146ca74 # load x3 with value 0x5a9a4e25a146ca74
sd x3, 0(x2) # store 0x5a9a4e25a146ca74 in memory
fld f19, 0(x2) # load 0x5a9a4e25a146ca74 from memory into f19
fmaxm.d f31, f16, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x11, 0xfab8ab6681eb109a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa70be465d9dda4dd # load x3 with value 0xa70be465d9dda4dd
sd x3, 0(x2) # store 0xa70be465d9dda4dd in memory
fld f17, 0(x2) # load 0xa70be465d9dda4dd from memory into f17
li x3, 0x53c36cf86f1674d0 # load x3 with value 0x53c36cf86f1674d0
sd x3, 0(x2) # store 0x53c36cf86f1674d0 in memory
fld f11, 0(x2) # load 0x53c36cf86f1674d0 from memory into f11
fmaxm.d f11, f17, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x11, 0x35d142923c749a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e3092f189076389 # load x3 with value 0x0e3092f189076389
sd x3, 0(x2) # store 0x0e3092f189076389 in memory
fld f18, 0(x2) # load 0x0e3092f189076389 from memory into f18
li x3, 0x352591ba04fef008 # load x3 with value 0x352591ba04fef008
sd x3, 0(x2) # store 0x352591ba04fef008 in memory
fld f28, 0(x2) # load 0x352591ba04fef008 from memory into f28
fmaxm.d f11, f18, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x5, 0xa3cad776de7d044b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5ca634263e491ba # load x3 with value 0xc5ca634263e491ba
sd x3, 0(x2) # store 0xc5ca634263e491ba in memory
fld f19, 0(x2) # load 0xc5ca634263e491ba from memory into f19
li x3, 0x3cce685d0918dd16 # load x3 with value 0x3cce685d0918dd16
sd x3, 0(x2) # store 0x3cce685d0918dd16 in memory
fld f17, 0(x2) # load 0x3cce685d0918dd16 from memory into f17
fmaxm.d f5, f19, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x20, 0xb1f52474cb4b2cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa80c290c0b5e69b3 # load x3 with value 0xa80c290c0b5e69b3
sd x3, 0(x2) # store 0xa80c290c0b5e69b3 in memory
fld f20, 0(x2) # load 0xa80c290c0b5e69b3 from memory into f20
li x3, 0x64e18ce185b2a0ed # load x3 with value 0x64e18ce185b2a0ed
sd x3, 0(x2) # store 0x64e18ce185b2a0ed in memory
fld f14, 0(x2) # load 0x64e18ce185b2a0ed from memory into f14
fmaxm.d f20, f20, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x31, 0x4df283693082bf31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e557af42a8ab3ec # load x3 with value 0x7e557af42a8ab3ec
sd x3, 0(x2) # store 0x7e557af42a8ab3ec in memory
fld f21, 0(x2) # load 0x7e557af42a8ab3ec from memory into f21
li x3, 0x9b3f96e75c30d09d # load x3 with value 0x9b3f96e75c30d09d
sd x3, 0(x2) # store 0x9b3f96e75c30d09d in memory
fld f15, 0(x2) # load 0x9b3f96e75c30d09d from memory into f15
fmaxm.d f31, f21, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x2, 0x65f5c2967f5bbeca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a4cf1de7e591858 # load x3 with value 0x8a4cf1de7e591858
sd x3, 0(x2) # store 0x8a4cf1de7e591858 in memory
fld f22, 0(x2) # load 0x8a4cf1de7e591858 from memory into f22
li x3, 0x4084d4b2b8520e72 # load x3 with value 0x4084d4b2b8520e72
sd x3, 0(x2) # store 0x4084d4b2b8520e72 in memory
fld f29, 0(x2) # load 0x4084d4b2b8520e72 from memory into f29
fmaxm.d f2, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x1, 0xf63ee03095614829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4c9046a4df5e929 # load x3 with value 0xc4c9046a4df5e929
sd x3, 0(x2) # store 0xc4c9046a4df5e929 in memory
fld f23, 0(x2) # load 0xc4c9046a4df5e929 from memory into f23
li x3, 0xfe533695fee95e32 # load x3 with value 0xfe533695fee95e32
sd x3, 0(x2) # store 0xfe533695fee95e32 in memory
fld f7, 0(x2) # load 0xfe533695fee95e32 from memory into f7
fmaxm.d f1, f23, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x15, 0xfb1ece85b6d717f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85de421aac044ede # load x3 with value 0x85de421aac044ede
sd x3, 0(x2) # store 0x85de421aac044ede in memory
fld f24, 0(x2) # load 0x85de421aac044ede from memory into f24
li x3, 0x81f836681f64d8b1 # load x3 with value 0x81f836681f64d8b1
sd x3, 0(x2) # store 0x81f836681f64d8b1 in memory
fld f12, 0(x2) # load 0x81f836681f64d8b1 from memory into f12
fmaxm.d f15, f24, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x30, 0x6fdae847d9653abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf85d00720fbf4de2 # load x3 with value 0xf85d00720fbf4de2
sd x3, 0(x2) # store 0xf85d00720fbf4de2 in memory
fld f25, 0(x2) # load 0xf85d00720fbf4de2 from memory into f25
li x3, 0x456bcfb0cd3cec61 # load x3 with value 0x456bcfb0cd3cec61
sd x3, 0(x2) # store 0x456bcfb0cd3cec61 in memory
fld f1, 0(x2) # load 0x456bcfb0cd3cec61 from memory into f1
fmaxm.d f30, f25, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x1, 0x39e1797736dd9e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f513e3ec8b4ec44 # load x3 with value 0x9f513e3ec8b4ec44
sd x3, 0(x2) # store 0x9f513e3ec8b4ec44 in memory
fld f26, 0(x2) # load 0x9f513e3ec8b4ec44 from memory into f26
li x3, 0x0c442f92d35f1e51 # load x3 with value 0x0c442f92d35f1e51
sd x3, 0(x2) # store 0x0c442f92d35f1e51 in memory
fld f14, 0(x2) # load 0x0c442f92d35f1e51 from memory into f14
fmaxm.d f1, f26, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x6, 0xb5aaf96074ea12de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ef4738d054a1864 # load x3 with value 0x2ef4738d054a1864
sd x3, 0(x2) # store 0x2ef4738d054a1864 in memory
fld f27, 0(x2) # load 0x2ef4738d054a1864 from memory into f27
li x3, 0x1ea4dc0070d6fc3a # load x3 with value 0x1ea4dc0070d6fc3a
sd x3, 0(x2) # store 0x1ea4dc0070d6fc3a in memory
fld f31, 0(x2) # load 0x1ea4dc0070d6fc3a from memory into f31
fmaxm.d f6, f27, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x5, 0xba32d520c9716bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3596be5fa8ab612 # load x3 with value 0xf3596be5fa8ab612
sd x3, 0(x2) # store 0xf3596be5fa8ab612 in memory
fld f28, 0(x2) # load 0xf3596be5fa8ab612 from memory into f28
li x3, 0x9ca99b57f1a829be # load x3 with value 0x9ca99b57f1a829be
sd x3, 0(x2) # store 0x9ca99b57f1a829be in memory
fld f3, 0(x2) # load 0x9ca99b57f1a829be from memory into f3
fmaxm.d f5, f28, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x12, 0x72484d29b691083a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09ea7960de83b8f0 # load x3 with value 0x09ea7960de83b8f0
sd x3, 0(x2) # store 0x09ea7960de83b8f0 in memory
fld f29, 0(x2) # load 0x09ea7960de83b8f0 from memory into f29
li x3, 0x7985c6d1b71f3154 # load x3 with value 0x7985c6d1b71f3154
sd x3, 0(x2) # store 0x7985c6d1b71f3154 in memory
fld f6, 0(x2) # load 0x7985c6d1b71f3154 from memory into f6
fmaxm.d f12, f29, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x31, 0xc185c1b93b59d0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc7cd2223b5c22d8 # load x3 with value 0xbc7cd2223b5c22d8
sd x3, 0(x2) # store 0xbc7cd2223b5c22d8 in memory
fld f30, 0(x2) # load 0xbc7cd2223b5c22d8 from memory into f30
li x3, 0x9812a0b104c6c55b # load x3 with value 0x9812a0b104c6c55b
sd x3, 0(x2) # store 0x9812a0b104c6c55b in memory
fld f2, 0(x2) # load 0x9812a0b104c6c55b from memory into f2
fmaxm.d f31, f30, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x23, 0xb1ec896fd32904a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69b38742c44fc3ee # load x3 with value 0x69b38742c44fc3ee
sd x3, 0(x2) # store 0x69b38742c44fc3ee in memory
fld f31, 0(x2) # load 0x69b38742c44fc3ee from memory into f31
li x3, 0x900db23f24829bab # load x3 with value 0x900db23f24829bab
sd x3, 0(x2) # store 0x900db23f24829bab in memory
fld f14, 0(x2) # load 0x900db23f24829bab from memory into f14
fmaxm.d f23, f31, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x4, 0x11e97e9bc0941dad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f53e7c378c7ba1c # load x3 with value 0x1f53e7c378c7ba1c
sd x3, 0(x2) # store 0x1f53e7c378c7ba1c in memory
fld f9, 0(x2) # load 0x1f53e7c378c7ba1c from memory into f9
li x3, 0x29f25bb7f472edf3 # load x3 with value 0x29f25bb7f472edf3
sd x3, 0(x2) # store 0x29f25bb7f472edf3 in memory
fld f0, 0(x2) # load 0x29f25bb7f472edf3 from memory into f0
fmaxm.d f4, f9, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x5, 0x468cf63dbcdcaecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01ad90d22fb69346 # load x3 with value 0x01ad90d22fb69346
sd x3, 0(x2) # store 0x01ad90d22fb69346 in memory
fld f31, 0(x2) # load 0x01ad90d22fb69346 from memory into f31
li x3, 0x29d13a61e04965ed # load x3 with value 0x29d13a61e04965ed
sd x3, 0(x2) # store 0x29d13a61e04965ed in memory
fld f1, 0(x2) # load 0x29d13a61e04965ed from memory into f1
fmaxm.d f5, f31, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x8, 0x5c6bad64908c6685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4791bc796b8edc9 # load x3 with value 0xc4791bc796b8edc9
sd x3, 0(x2) # store 0xc4791bc796b8edc9 in memory
fld f31, 0(x2) # load 0xc4791bc796b8edc9 from memory into f31
li x3, 0x4b4b70d1324b0bde # load x3 with value 0x4b4b70d1324b0bde
sd x3, 0(x2) # store 0x4b4b70d1324b0bde in memory
fld f2, 0(x2) # load 0x4b4b70d1324b0bde from memory into f2
fmaxm.d f8, f31, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x20, 0xe9e5ec17df083d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2eafffdebacf18b # load x3 with value 0xb2eafffdebacf18b
sd x3, 0(x2) # store 0xb2eafffdebacf18b in memory
fld f28, 0(x2) # load 0xb2eafffdebacf18b from memory into f28
li x3, 0xf6c3766cdebc9286 # load x3 with value 0xf6c3766cdebc9286
sd x3, 0(x2) # store 0xf6c3766cdebc9286 in memory
fld f3, 0(x2) # load 0xf6c3766cdebc9286 from memory into f3
fmaxm.d f20, f28, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x22, 0x4cf32305a9f6127f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c27b7c6157b82d7 # load x3 with value 0x4c27b7c6157b82d7
sd x3, 0(x2) # store 0x4c27b7c6157b82d7 in memory
fld f15, 0(x2) # load 0x4c27b7c6157b82d7 from memory into f15
li x3, 0x0a66e57375f50a40 # load x3 with value 0x0a66e57375f50a40
sd x3, 0(x2) # store 0x0a66e57375f50a40 in memory
fld f4, 0(x2) # load 0x0a66e57375f50a40 from memory into f4
fmaxm.d f22, f15, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x4, 0x3b42912d3bdc3b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbeba3db7e692640d # load x3 with value 0xbeba3db7e692640d
sd x3, 0(x2) # store 0xbeba3db7e692640d in memory
fld f1, 0(x2) # load 0xbeba3db7e692640d from memory into f1
li x3, 0xcd8c00d433cfa000 # load x3 with value 0xcd8c00d433cfa000
sd x3, 0(x2) # store 0xcd8c00d433cfa000 in memory
fld f5, 0(x2) # load 0xcd8c00d433cfa000 from memory into f5
fmaxm.d f4, f1, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x14, 0xc720ce6cec26874f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74f1704fe5aee8c0 # load x3 with value 0x74f1704fe5aee8c0
sd x3, 0(x2) # store 0x74f1704fe5aee8c0 in memory
fld f22, 0(x2) # load 0x74f1704fe5aee8c0 from memory into f22
li x3, 0x0851ce7f90dc3fcd # load x3 with value 0x0851ce7f90dc3fcd
sd x3, 0(x2) # store 0x0851ce7f90dc3fcd in memory
fld f6, 0(x2) # load 0x0851ce7f90dc3fcd from memory into f6
fmaxm.d f14, f22, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x23, 0x3a1b66ccef80ec5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcd1fcf6dafa8348 # load x3 with value 0xbcd1fcf6dafa8348
sd x3, 0(x2) # store 0xbcd1fcf6dafa8348 in memory
fld f24, 0(x2) # load 0xbcd1fcf6dafa8348 from memory into f24
li x3, 0x6d058586adf208ee # load x3 with value 0x6d058586adf208ee
sd x3, 0(x2) # store 0x6d058586adf208ee in memory
fld f7, 0(x2) # load 0x6d058586adf208ee from memory into f7
fmaxm.d f23, f24, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x7, 0x5eb32897f9d0ba9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53fec6c1d369347a # load x3 with value 0x53fec6c1d369347a
sd x3, 0(x2) # store 0x53fec6c1d369347a in memory
fld f25, 0(x2) # load 0x53fec6c1d369347a from memory into f25
li x3, 0xe263b48471ed7ac2 # load x3 with value 0xe263b48471ed7ac2
sd x3, 0(x2) # store 0xe263b48471ed7ac2 in memory
fld f8, 0(x2) # load 0xe263b48471ed7ac2 from memory into f8
fmaxm.d f7, f25, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x10, 0x9e85f9b9e03a29d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8210657707e958d1 # load x3 with value 0x8210657707e958d1
sd x3, 0(x2) # store 0x8210657707e958d1 in memory
fld f17, 0(x2) # load 0x8210657707e958d1 from memory into f17
li x3, 0xfe9f976e93e01e7d # load x3 with value 0xfe9f976e93e01e7d
sd x3, 0(x2) # store 0xfe9f976e93e01e7d in memory
fld f9, 0(x2) # load 0xfe9f976e93e01e7d from memory into f9
fmaxm.d f10, f17, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0xf8f29903059045bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6ee84c3650252d7 # load x3 with value 0xb6ee84c3650252d7
sd x3, 0(x2) # store 0xb6ee84c3650252d7 in memory
fld f13, 0(x2) # load 0xb6ee84c3650252d7 from memory into f13
li x3, 0x57b27e64e62afc47 # load x3 with value 0x57b27e64e62afc47
sd x3, 0(x2) # store 0x57b27e64e62afc47 in memory
fld f10, 0(x2) # load 0x57b27e64e62afc47 from memory into f10
fmaxm.d f10, f13, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x3, 0xc3715a4beaac574b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7d4ce5bb4e6b4a3 # load x3 with value 0xf7d4ce5bb4e6b4a3
sd x3, 0(x2) # store 0xf7d4ce5bb4e6b4a3 in memory
fld f5, 0(x2) # load 0xf7d4ce5bb4e6b4a3 from memory into f5
li x3, 0xa2f7dd35ffd74360 # load x3 with value 0xa2f7dd35ffd74360
sd x3, 0(x2) # store 0xa2f7dd35ffd74360 in memory
fld f11, 0(x2) # load 0xa2f7dd35ffd74360 from memory into f11
fmaxm.d f3, f5, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x5, 0x169dc64d505e130b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1722b0c4e18161d0 # load x3 with value 0x1722b0c4e18161d0
sd x3, 0(x2) # store 0x1722b0c4e18161d0 in memory
fld f4, 0(x2) # load 0x1722b0c4e18161d0 from memory into f4
li x3, 0xba40d4c02831fa61 # load x3 with value 0xba40d4c02831fa61
sd x3, 0(x2) # store 0xba40d4c02831fa61 in memory
fld f12, 0(x2) # load 0xba40d4c02831fa61 from memory into f12
fmaxm.d f5, f4, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x16, 0x4e1e350869d562f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab61921cd98c2428 # load x3 with value 0xab61921cd98c2428
sd x3, 0(x2) # store 0xab61921cd98c2428 in memory
fld f7, 0(x2) # load 0xab61921cd98c2428 from memory into f7
li x3, 0xeb90aad87ea257db # load x3 with value 0xeb90aad87ea257db
sd x3, 0(x2) # store 0xeb90aad87ea257db in memory
fld f13, 0(x2) # load 0xeb90aad87ea257db from memory into f13
fmaxm.d f16, f7, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x30, 0xc064c9a34fb7cce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb020d77a64f9d1b4 # load x3 with value 0xb020d77a64f9d1b4
sd x3, 0(x2) # store 0xb020d77a64f9d1b4 in memory
fld f23, 0(x2) # load 0xb020d77a64f9d1b4 from memory into f23
li x3, 0xd2a094bb22192f8d # load x3 with value 0xd2a094bb22192f8d
sd x3, 0(x2) # store 0xd2a094bb22192f8d in memory
fld f14, 0(x2) # load 0xd2a094bb22192f8d from memory into f14
fmaxm.d f30, f23, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x22, 0xd87e44099eb65398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66b2bc5f0608129e # load x3 with value 0x66b2bc5f0608129e
sd x3, 0(x2) # store 0x66b2bc5f0608129e in memory
fld f1, 0(x2) # load 0x66b2bc5f0608129e from memory into f1
li x3, 0x2fdc8eb08d039e97 # load x3 with value 0x2fdc8eb08d039e97
sd x3, 0(x2) # store 0x2fdc8eb08d039e97 in memory
fld f15, 0(x2) # load 0x2fdc8eb08d039e97 from memory into f15
fmaxm.d f22, f1, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x22, 0x0321841d84098cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafa326f3da717a6c # load x3 with value 0xafa326f3da717a6c
sd x3, 0(x2) # store 0xafa326f3da717a6c in memory
fld f25, 0(x2) # load 0xafa326f3da717a6c from memory into f25
li x3, 0x7f8ba447e2aa1d70 # load x3 with value 0x7f8ba447e2aa1d70
sd x3, 0(x2) # store 0x7f8ba447e2aa1d70 in memory
fld f16, 0(x2) # load 0x7f8ba447e2aa1d70 from memory into f16
fmaxm.d f22, f25, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x4, 0xbbbca228c1fdbe44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1b36fad64f2d0e2 # load x3 with value 0xa1b36fad64f2d0e2
sd x3, 0(x2) # store 0xa1b36fad64f2d0e2 in memory
fld f9, 0(x2) # load 0xa1b36fad64f2d0e2 from memory into f9
li x3, 0x4cd50ad581900cc2 # load x3 with value 0x4cd50ad581900cc2
sd x3, 0(x2) # store 0x4cd50ad581900cc2 in memory
fld f17, 0(x2) # load 0x4cd50ad581900cc2 from memory into f17
fmaxm.d f4, f9, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x5, 0x486aaa02ce0c7986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc262675cbe81147c # load x3 with value 0xc262675cbe81147c
sd x3, 0(x2) # store 0xc262675cbe81147c in memory
fld f16, 0(x2) # load 0xc262675cbe81147c from memory into f16
li x3, 0x18899b2ded9a764d # load x3 with value 0x18899b2ded9a764d
sd x3, 0(x2) # store 0x18899b2ded9a764d in memory
fld f18, 0(x2) # load 0x18899b2ded9a764d from memory into f18
fmaxm.d f5, f16, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x18, 0x28d666ec13f63cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52954de11f02ae49 # load x3 with value 0x52954de11f02ae49
sd x3, 0(x2) # store 0x52954de11f02ae49 in memory
fld f16, 0(x2) # load 0x52954de11f02ae49 from memory into f16
li x3, 0xe9bc3cf54d9bd6a1 # load x3 with value 0xe9bc3cf54d9bd6a1
sd x3, 0(x2) # store 0xe9bc3cf54d9bd6a1 in memory
fld f19, 0(x2) # load 0xe9bc3cf54d9bd6a1 from memory into f19
fmaxm.d f18, f16, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x26, 0x3b4ba8f42d235acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe97d985f9e2095a # load x3 with value 0xbe97d985f9e2095a
sd x3, 0(x2) # store 0xbe97d985f9e2095a in memory
fld f7, 0(x2) # load 0xbe97d985f9e2095a from memory into f7
li x3, 0x432a0f2f97047221 # load x3 with value 0x432a0f2f97047221
sd x3, 0(x2) # store 0x432a0f2f97047221 in memory
fld f20, 0(x2) # load 0x432a0f2f97047221 from memory into f20
fmaxm.d f26, f7, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x12, 0xa1c7793c132ba54e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd06eed66c975a185 # load x3 with value 0xd06eed66c975a185
sd x3, 0(x2) # store 0xd06eed66c975a185 in memory
fld f18, 0(x2) # load 0xd06eed66c975a185 from memory into f18
li x3, 0x1dc8ff0936c0adf2 # load x3 with value 0x1dc8ff0936c0adf2
sd x3, 0(x2) # store 0x1dc8ff0936c0adf2 in memory
fld f21, 0(x2) # load 0x1dc8ff0936c0adf2 from memory into f21
fmaxm.d f12, f18, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x1, 0x38f74d73cc070ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17cdff5d30feb753 # load x3 with value 0x17cdff5d30feb753
sd x3, 0(x2) # store 0x17cdff5d30feb753 in memory
fld f21, 0(x2) # load 0x17cdff5d30feb753 from memory into f21
li x3, 0x4a05920c6e161a02 # load x3 with value 0x4a05920c6e161a02
sd x3, 0(x2) # store 0x4a05920c6e161a02 in memory
fld f22, 0(x2) # load 0x4a05920c6e161a02 from memory into f22
fmaxm.d f1, f21, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x4, 0x10f7bf378739071e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd34603a31b9445ca # load x3 with value 0xd34603a31b9445ca
sd x3, 0(x2) # store 0xd34603a31b9445ca in memory
fld f27, 0(x2) # load 0xd34603a31b9445ca from memory into f27
li x3, 0xd37f36f2f754ed0b # load x3 with value 0xd37f36f2f754ed0b
sd x3, 0(x2) # store 0xd37f36f2f754ed0b in memory
fld f23, 0(x2) # load 0xd37f36f2f754ed0b from memory into f23
fmaxm.d f4, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x1, 0x31ff930fba6ccd1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x184b4d3f70149ccd # load x3 with value 0x184b4d3f70149ccd
sd x3, 0(x2) # store 0x184b4d3f70149ccd in memory
fld f4, 0(x2) # load 0x184b4d3f70149ccd from memory into f4
li x3, 0x369920bd028877fa # load x3 with value 0x369920bd028877fa
sd x3, 0(x2) # store 0x369920bd028877fa in memory
fld f24, 0(x2) # load 0x369920bd028877fa from memory into f24
fmaxm.d f1, f4, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x30, 0x26aeddeae18fc53e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7adb33c884751bf7 # load x3 with value 0x7adb33c884751bf7
sd x3, 0(x2) # store 0x7adb33c884751bf7 in memory
fld f28, 0(x2) # load 0x7adb33c884751bf7 from memory into f28
li x3, 0xadce9837c5bfa88a # load x3 with value 0xadce9837c5bfa88a
sd x3, 0(x2) # store 0xadce9837c5bfa88a in memory
fld f25, 0(x2) # load 0xadce9837c5bfa88a from memory into f25
fmaxm.d f30, f28, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x15, 0x6eda406e58e51a71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02980409e9bf10e6 # load x3 with value 0x02980409e9bf10e6
sd x3, 0(x2) # store 0x02980409e9bf10e6 in memory
fld f30, 0(x2) # load 0x02980409e9bf10e6 from memory into f30
li x3, 0x5935b36f352aa0dd # load x3 with value 0x5935b36f352aa0dd
sd x3, 0(x2) # store 0x5935b36f352aa0dd in memory
fld f26, 0(x2) # load 0x5935b36f352aa0dd from memory into f26
fmaxm.d f15, f30, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x22, 0xb13953a31b52ca0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf9a6b25a3fca006 # load x3 with value 0xcf9a6b25a3fca006
sd x3, 0(x2) # store 0xcf9a6b25a3fca006 in memory
fld f24, 0(x2) # load 0xcf9a6b25a3fca006 from memory into f24
li x3, 0x916c3ce584148499 # load x3 with value 0x916c3ce584148499
sd x3, 0(x2) # store 0x916c3ce584148499 in memory
fld f27, 0(x2) # load 0x916c3ce584148499 from memory into f27
fmaxm.d f22, f24, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x10, 0x5e796698a0cf79cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ba39c7b76a0d230 # load x3 with value 0x6ba39c7b76a0d230
sd x3, 0(x2) # store 0x6ba39c7b76a0d230 in memory
fld f11, 0(x2) # load 0x6ba39c7b76a0d230 from memory into f11
li x3, 0x529e374a48fea054 # load x3 with value 0x529e374a48fea054
sd x3, 0(x2) # store 0x529e374a48fea054 in memory
fld f28, 0(x2) # load 0x529e374a48fea054 from memory into f28
fmaxm.d f10, f11, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x18, 0xd28840b2e8c11a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7e6ba22720d60fb # load x3 with value 0xc7e6ba22720d60fb
sd x3, 0(x2) # store 0xc7e6ba22720d60fb in memory
fld f12, 0(x2) # load 0xc7e6ba22720d60fb from memory into f12
li x3, 0x698b23fd8e44c1d3 # load x3 with value 0x698b23fd8e44c1d3
sd x3, 0(x2) # store 0x698b23fd8e44c1d3 in memory
fld f29, 0(x2) # load 0x698b23fd8e44c1d3 from memory into f29
fmaxm.d f18, f12, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x13, 0x228cf3052168c662 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44a03daee861e35f # load x3 with value 0x44a03daee861e35f
sd x3, 0(x2) # store 0x44a03daee861e35f in memory
fld f15, 0(x2) # load 0x44a03daee861e35f from memory into f15
li x3, 0xa5a763ea92f82e2a # load x3 with value 0xa5a763ea92f82e2a
sd x3, 0(x2) # store 0xa5a763ea92f82e2a in memory
fld f30, 0(x2) # load 0xa5a763ea92f82e2a from memory into f30
fmaxm.d f13, f15, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x8, 0x8fbf258539693ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04e6d34e0b5bd8b1 # load x3 with value 0x04e6d34e0b5bd8b1
sd x3, 0(x2) # store 0x04e6d34e0b5bd8b1 in memory
fld f16, 0(x2) # load 0x04e6d34e0b5bd8b1 from memory into f16
li x3, 0x7e1bb5776577f49e # load x3 with value 0x7e1bb5776577f49e
sd x3, 0(x2) # store 0x7e1bb5776577f49e in memory
fld f31, 0(x2) # load 0x7e1bb5776577f49e from memory into f31
fmaxm.d f8, f16, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
