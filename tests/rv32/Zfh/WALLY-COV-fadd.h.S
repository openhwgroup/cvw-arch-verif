///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fadd.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.519380
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
fadd.h f27, f2, f22 # perform first operation
fadd.h f6, f27, f4 # perform second operation

# Testcase cmp_gpr_hazard raw test
fadd.h f12, f28, f11 # perform first operation
fadd.h f18, f30, f12 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.h f26, f14, f1 # perform first operation
fadd.h f26, f16, f25 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.h f19, f15, f6 # perform first operation
fadd.h f19, f11, f5 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.h f26, f7, f13 # perform first operation
fadd.h f7, f5, f1 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.h f29, f5, f24 # perform first operation
fadd.h f24, f22, f23 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xa5fe92f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83a45f16 # load x3 with value 0x83a45f16
sw x3, 0(x2) # store 0x83a45f16 in memory
flh f0, 0(x2) # load 0x83a45f16 from memory into f0
li x3, 0x4d481a52 # load x3 with value 0x4d481a52
sw x3, 0(x2) # store 0x4d481a52 in memory
flh f25, 0(x2) # load 0x4d481a52 from memory into f25
fadd.h f0, f0, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x09cb6d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1808bacd # load x3 with value 0x1808bacd
sw x3, 0(x2) # store 0x1808bacd in memory
flh f1, 0(x2) # load 0x1808bacd from memory into f1
li x3, 0x1bcd87ed # load x3 with value 0x1bcd87ed
sw x3, 0(x2) # store 0x1bcd87ed in memory
flh f24, 0(x2) # load 0x1bcd87ed from memory into f24
fadd.h f1, f1, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x9f3221d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87f2a9b0 # load x3 with value 0x87f2a9b0
sw x3, 0(x2) # store 0x87f2a9b0 in memory
flh f2, 0(x2) # load 0x87f2a9b0 from memory into f2
li x3, 0x5a964955 # load x3 with value 0x5a964955
sw x3, 0(x2) # store 0x5a964955 in memory
flh f17, 0(x2) # load 0x5a964955 from memory into f17
fadd.h f2, f2, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x9faefe8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27c96146 # load x3 with value 0x27c96146
sw x3, 0(x2) # store 0x27c96146 in memory
flh f3, 0(x2) # load 0x27c96146 from memory into f3
li x3, 0xbd9a7983 # load x3 with value 0xbd9a7983
sw x3, 0(x2) # store 0xbd9a7983 in memory
flh f18, 0(x2) # load 0xbd9a7983 from memory into f18
fadd.h f3, f3, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x55a84fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3250410 # load x3 with value 0xb3250410
sw x3, 0(x2) # store 0xb3250410 in memory
flh f4, 0(x2) # load 0xb3250410 from memory into f4
li x3, 0xd287fccb # load x3 with value 0xd287fccb
sw x3, 0(x2) # store 0xd287fccb in memory
flh f8, 0(x2) # load 0xd287fccb from memory into f8
fadd.h f4, f4, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xea51fb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae96f8eb # load x3 with value 0xae96f8eb
sw x3, 0(x2) # store 0xae96f8eb in memory
flh f5, 0(x2) # load 0xae96f8eb from memory into f5
li x3, 0x081af3b1 # load x3 with value 0x081af3b1
sw x3, 0(x2) # store 0x081af3b1 in memory
flh f1, 0(x2) # load 0x081af3b1 from memory into f1
fadd.h f5, f5, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xe8217640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6dda9489 # load x3 with value 0x6dda9489
sw x3, 0(x2) # store 0x6dda9489 in memory
flh f6, 0(x2) # load 0x6dda9489 from memory into f6
li x3, 0x27f6e537 # load x3 with value 0x27f6e537
sw x3, 0(x2) # store 0x27f6e537 in memory
flh f4, 0(x2) # load 0x27f6e537 from memory into f4
fadd.h f6, f6, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x119a2ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c9bb107 # load x3 with value 0x6c9bb107
sw x3, 0(x2) # store 0x6c9bb107 in memory
flh f7, 0(x2) # load 0x6c9bb107 from memory into f7
li x3, 0x988ff2e1 # load x3 with value 0x988ff2e1
sw x3, 0(x2) # store 0x988ff2e1 in memory
flh f22, 0(x2) # load 0x988ff2e1 from memory into f22
fadd.h f7, f7, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x136e6273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c954589 # load x3 with value 0x1c954589
sw x3, 0(x2) # store 0x1c954589 in memory
flh f8, 0(x2) # load 0x1c954589 from memory into f8
li x3, 0xbf65ff2e # load x3 with value 0xbf65ff2e
sw x3, 0(x2) # store 0xbf65ff2e in memory
flh f18, 0(x2) # load 0xbf65ff2e from memory into f18
fadd.h f8, f8, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xaaf03259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2ba10be # load x3 with value 0xa2ba10be
sw x3, 0(x2) # store 0xa2ba10be in memory
flh f9, 0(x2) # load 0xa2ba10be from memory into f9
li x3, 0x05e29c84 # load x3 with value 0x05e29c84
sw x3, 0(x2) # store 0x05e29c84 in memory
flh f14, 0(x2) # load 0x05e29c84 from memory into f14
fadd.h f9, f9, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x78a85528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c1295b0 # load x3 with value 0x1c1295b0
sw x3, 0(x2) # store 0x1c1295b0 in memory
flh f10, 0(x2) # load 0x1c1295b0 from memory into f10
li x3, 0xdd14fe72 # load x3 with value 0xdd14fe72
sw x3, 0(x2) # store 0xdd14fe72 in memory
flh f14, 0(x2) # load 0xdd14fe72 from memory into f14
fadd.h f10, f10, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xdd2a5d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32fc4f73 # load x3 with value 0x32fc4f73
sw x3, 0(x2) # store 0x32fc4f73 in memory
flh f11, 0(x2) # load 0x32fc4f73 from memory into f11
li x3, 0xfc0cc619 # load x3 with value 0xfc0cc619
sw x3, 0(x2) # store 0xfc0cc619 in memory
flh f20, 0(x2) # load 0xfc0cc619 from memory into f20
fadd.h f11, f11, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x598cec05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fae116b # load x3 with value 0x0fae116b
sw x3, 0(x2) # store 0x0fae116b in memory
flh f12, 0(x2) # load 0x0fae116b from memory into f12
li x3, 0xb68250da # load x3 with value 0xb68250da
sw x3, 0(x2) # store 0xb68250da in memory
flh f2, 0(x2) # load 0xb68250da from memory into f2
fadd.h f12, f12, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xd4d6a9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb020fc6 # load x3 with value 0xeb020fc6
sw x3, 0(x2) # store 0xeb020fc6 in memory
flh f13, 0(x2) # load 0xeb020fc6 from memory into f13
li x3, 0x3d4b4796 # load x3 with value 0x3d4b4796
sw x3, 0(x2) # store 0x3d4b4796 in memory
flh f25, 0(x2) # load 0x3d4b4796 from memory into f25
fadd.h f13, f13, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xe59c933f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53195f7f # load x3 with value 0x53195f7f
sw x3, 0(x2) # store 0x53195f7f in memory
flh f14, 0(x2) # load 0x53195f7f from memory into f14
li x3, 0x9769c0c1 # load x3 with value 0x9769c0c1
sw x3, 0(x2) # store 0x9769c0c1 in memory
flh f6, 0(x2) # load 0x9769c0c1 from memory into f6
fadd.h f14, f14, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x8dabe0b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x773342eb # load x3 with value 0x773342eb
sw x3, 0(x2) # store 0x773342eb in memory
flh f15, 0(x2) # load 0x773342eb from memory into f15
li x3, 0xc0ebf84e # load x3 with value 0xc0ebf84e
sw x3, 0(x2) # store 0xc0ebf84e in memory
flh f16, 0(x2) # load 0xc0ebf84e from memory into f16
fadd.h f15, f15, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x7bf336c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07c44ef0 # load x3 with value 0x07c44ef0
sw x3, 0(x2) # store 0x07c44ef0 in memory
flh f16, 0(x2) # load 0x07c44ef0 from memory into f16
li x3, 0x54172b5a # load x3 with value 0x54172b5a
sw x3, 0(x2) # store 0x54172b5a in memory
flh f31, 0(x2) # load 0x54172b5a from memory into f31
fadd.h f16, f16, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x9bd11161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34ceb0b8 # load x3 with value 0x34ceb0b8
sw x3, 0(x2) # store 0x34ceb0b8 in memory
flh f17, 0(x2) # load 0x34ceb0b8 from memory into f17
li x3, 0xae003008 # load x3 with value 0xae003008
sw x3, 0(x2) # store 0xae003008 in memory
flh f31, 0(x2) # load 0xae003008 from memory into f31
fadd.h f17, f17, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x20a34bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07eaf629 # load x3 with value 0x07eaf629
sw x3, 0(x2) # store 0x07eaf629 in memory
flh f18, 0(x2) # load 0x07eaf629 from memory into f18
li x3, 0x25b9f2fe # load x3 with value 0x25b9f2fe
sw x3, 0(x2) # store 0x25b9f2fe in memory
flh f30, 0(x2) # load 0x25b9f2fe from memory into f30
fadd.h f18, f18, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xca371ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f90cb15 # load x3 with value 0x6f90cb15
sw x3, 0(x2) # store 0x6f90cb15 in memory
flh f19, 0(x2) # load 0x6f90cb15 from memory into f19
li x3, 0xc5a7826b # load x3 with value 0xc5a7826b
sw x3, 0(x2) # store 0xc5a7826b in memory
flh f2, 0(x2) # load 0xc5a7826b from memory into f2
fadd.h f19, f19, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x900aa472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc15a38f # load x3 with value 0xfc15a38f
sw x3, 0(x2) # store 0xfc15a38f in memory
flh f20, 0(x2) # load 0xfc15a38f from memory into f20
li x3, 0x77c1e976 # load x3 with value 0x77c1e976
sw x3, 0(x2) # store 0x77c1e976 in memory
flh f5, 0(x2) # load 0x77c1e976 from memory into f5
fadd.h f20, f20, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xd5ae9406 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4af9851 # load x3 with value 0xb4af9851
sw x3, 0(x2) # store 0xb4af9851 in memory
flh f21, 0(x2) # load 0xb4af9851 from memory into f21
li x3, 0xa1adfdd0 # load x3 with value 0xa1adfdd0
sw x3, 0(x2) # store 0xa1adfdd0 in memory
flh f31, 0(x2) # load 0xa1adfdd0 from memory into f31
fadd.h f21, f21, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x8720dabb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5bab958 # load x3 with value 0xf5bab958
sw x3, 0(x2) # store 0xf5bab958 in memory
flh f22, 0(x2) # load 0xf5bab958 from memory into f22
li x3, 0x200d96df # load x3 with value 0x200d96df
sw x3, 0(x2) # store 0x200d96df in memory
flh f19, 0(x2) # load 0x200d96df from memory into f19
fadd.h f22, f22, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x5f8f30fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a55dddf # load x3 with value 0x5a55dddf
sw x3, 0(x2) # store 0x5a55dddf in memory
flh f23, 0(x2) # load 0x5a55dddf from memory into f23
li x3, 0xeb1b3fe3 # load x3 with value 0xeb1b3fe3
sw x3, 0(x2) # store 0xeb1b3fe3 in memory
flh f15, 0(x2) # load 0xeb1b3fe3 from memory into f15
fadd.h f23, f23, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xc04d8b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6e95214 # load x3 with value 0xe6e95214
sw x3, 0(x2) # store 0xe6e95214 in memory
flh f24, 0(x2) # load 0xe6e95214 from memory into f24
li x3, 0x2b7ffe6b # load x3 with value 0x2b7ffe6b
sw x3, 0(x2) # store 0x2b7ffe6b in memory
flh f31, 0(x2) # load 0x2b7ffe6b from memory into f31
fadd.h f24, f24, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x613c89a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ffd78cf # load x3 with value 0x5ffd78cf
sw x3, 0(x2) # store 0x5ffd78cf in memory
flh f25, 0(x2) # load 0x5ffd78cf from memory into f25
li x3, 0x93897035 # load x3 with value 0x93897035
sw x3, 0(x2) # store 0x93897035 in memory
flh f19, 0(x2) # load 0x93897035 from memory into f19
fadd.h f25, f25, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x418529b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a1990b7 # load x3 with value 0x5a1990b7
sw x3, 0(x2) # store 0x5a1990b7 in memory
flh f26, 0(x2) # load 0x5a1990b7 from memory into f26
li x3, 0xf1f5c33a # load x3 with value 0xf1f5c33a
sw x3, 0(x2) # store 0xf1f5c33a in memory
flh f25, 0(x2) # load 0xf1f5c33a from memory into f25
fadd.h f26, f26, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x065e05bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8e54f8d # load x3 with value 0xb8e54f8d
sw x3, 0(x2) # store 0xb8e54f8d in memory
flh f27, 0(x2) # load 0xb8e54f8d from memory into f27
li x3, 0x8d278386 # load x3 with value 0x8d278386
sw x3, 0(x2) # store 0x8d278386 in memory
flh f28, 0(x2) # load 0x8d278386 from memory into f28
fadd.h f27, f27, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xb14c7faf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccdb49d2 # load x3 with value 0xccdb49d2
sw x3, 0(x2) # store 0xccdb49d2 in memory
flh f28, 0(x2) # load 0xccdb49d2 from memory into f28
li x3, 0x11e2d3c5 # load x3 with value 0x11e2d3c5
sw x3, 0(x2) # store 0x11e2d3c5 in memory
flh f2, 0(x2) # load 0x11e2d3c5 from memory into f2
fadd.h f28, f28, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x851d5f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86868f53 # load x3 with value 0x86868f53
sw x3, 0(x2) # store 0x86868f53 in memory
flh f29, 0(x2) # load 0x86868f53 from memory into f29
li x3, 0x5730637f # load x3 with value 0x5730637f
sw x3, 0(x2) # store 0x5730637f in memory
flh f4, 0(x2) # load 0x5730637f from memory into f4
fadd.h f29, f29, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x5458ab0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d2943da # load x3 with value 0x2d2943da
sw x3, 0(x2) # store 0x2d2943da in memory
flh f30, 0(x2) # load 0x2d2943da from memory into f30
li x3, 0x8f22756c # load x3 with value 0x8f22756c
sw x3, 0(x2) # store 0x8f22756c in memory
flh f5, 0(x2) # load 0x8f22756c from memory into f5
fadd.h f30, f30, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x43a7b1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x346f91ca # load x3 with value 0x346f91ca
sw x3, 0(x2) # store 0x346f91ca in memory
flh f31, 0(x2) # load 0x346f91ca from memory into f31
li x3, 0x572e8cc4 # load x3 with value 0x572e8cc4
sw x3, 0(x2) # store 0x572e8cc4 in memory
flh f9, 0(x2) # load 0x572e8cc4 from memory into f9
fadd.h f31, f31, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x0326aaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca112e7b # load x3 with value 0xca112e7b
sw x3, 0(x2) # store 0xca112e7b in memory
flh f28, 0(x2) # load 0xca112e7b from memory into f28
li x3, 0x494c579c # load x3 with value 0x494c579c
sw x3, 0(x2) # store 0x494c579c in memory
flh f0, 0(x2) # load 0x494c579c from memory into f0
fadd.h f0, f28, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x33746fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x166ff77d # load x3 with value 0x166ff77d
sw x3, 0(x2) # store 0x166ff77d in memory
flh f13, 0(x2) # load 0x166ff77d from memory into f13
li x3, 0x34e5fda4 # load x3 with value 0x34e5fda4
sw x3, 0(x2) # store 0x34e5fda4 in memory
flh f1, 0(x2) # load 0x34e5fda4 from memory into f1
fadd.h f1, f13, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x47398c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6bee775 # load x3 with value 0xd6bee775
sw x3, 0(x2) # store 0xd6bee775 in memory
flh f13, 0(x2) # load 0xd6bee775 from memory into f13
li x3, 0x6cfb2cfd # load x3 with value 0x6cfb2cfd
sw x3, 0(x2) # store 0x6cfb2cfd in memory
flh f2, 0(x2) # load 0x6cfb2cfd from memory into f2
fadd.h f2, f13, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x727fc44f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98a87e32 # load x3 with value 0x98a87e32
sw x3, 0(x2) # store 0x98a87e32 in memory
flh f3, 0(x2) # load 0x98a87e32 from memory into f3
li x3, 0xe93c4748 # load x3 with value 0xe93c4748
sw x3, 0(x2) # store 0xe93c4748 in memory
flh f3, 0(x2) # load 0xe93c4748 from memory into f3
fadd.h f3, f3, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x3dffaf36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x465a93a0 # load x3 with value 0x465a93a0
sw x3, 0(x2) # store 0x465a93a0 in memory
flh f22, 0(x2) # load 0x465a93a0 from memory into f22
li x3, 0x9904aa69 # load x3 with value 0x9904aa69
sw x3, 0(x2) # store 0x9904aa69 in memory
flh f4, 0(x2) # load 0x9904aa69 from memory into f4
fadd.h f4, f22, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x2c85bb13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbfe0196 # load x3 with value 0xdbfe0196
sw x3, 0(x2) # store 0xdbfe0196 in memory
flh f14, 0(x2) # load 0xdbfe0196 from memory into f14
li x3, 0x4bd4e472 # load x3 with value 0x4bd4e472
sw x3, 0(x2) # store 0x4bd4e472 in memory
flh f5, 0(x2) # load 0x4bd4e472 from memory into f5
fadd.h f5, f14, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x1f1f5d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c84006b # load x3 with value 0x6c84006b
sw x3, 0(x2) # store 0x6c84006b in memory
flh f25, 0(x2) # load 0x6c84006b from memory into f25
li x3, 0x08261d14 # load x3 with value 0x08261d14
sw x3, 0(x2) # store 0x08261d14 in memory
flh f6, 0(x2) # load 0x08261d14 from memory into f6
fadd.h f6, f25, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xab7409cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x827ad89a # load x3 with value 0x827ad89a
sw x3, 0(x2) # store 0x827ad89a in memory
flh f12, 0(x2) # load 0x827ad89a from memory into f12
li x3, 0xdbb777d5 # load x3 with value 0xdbb777d5
sw x3, 0(x2) # store 0xdbb777d5 in memory
flh f7, 0(x2) # load 0xdbb777d5 from memory into f7
fadd.h f7, f12, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x328f2681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d9f8ca2 # load x3 with value 0x9d9f8ca2
sw x3, 0(x2) # store 0x9d9f8ca2 in memory
flh f3, 0(x2) # load 0x9d9f8ca2 from memory into f3
li x3, 0x8ba8b636 # load x3 with value 0x8ba8b636
sw x3, 0(x2) # store 0x8ba8b636 in memory
flh f8, 0(x2) # load 0x8ba8b636 from memory into f8
fadd.h f8, f3, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x3a7eb0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x162e8df5 # load x3 with value 0x162e8df5
sw x3, 0(x2) # store 0x162e8df5 in memory
flh f17, 0(x2) # load 0x162e8df5 from memory into f17
li x3, 0x89e0410d # load x3 with value 0x89e0410d
sw x3, 0(x2) # store 0x89e0410d in memory
flh f9, 0(x2) # load 0x89e0410d from memory into f9
fadd.h f9, f17, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x8458fbf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01951791 # load x3 with value 0x01951791
sw x3, 0(x2) # store 0x01951791 in memory
flh f31, 0(x2) # load 0x01951791 from memory into f31
li x3, 0x3a995128 # load x3 with value 0x3a995128
sw x3, 0(x2) # store 0x3a995128 in memory
flh f10, 0(x2) # load 0x3a995128 from memory into f10
fadd.h f10, f31, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x37b7ec22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb66f3646 # load x3 with value 0xb66f3646
sw x3, 0(x2) # store 0xb66f3646 in memory
flh f27, 0(x2) # load 0xb66f3646 from memory into f27
li x3, 0x5bdd92c3 # load x3 with value 0x5bdd92c3
sw x3, 0(x2) # store 0x5bdd92c3 in memory
flh f11, 0(x2) # load 0x5bdd92c3 from memory into f11
fadd.h f11, f27, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xfa7f06b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa96ebb90 # load x3 with value 0xa96ebb90
sw x3, 0(x2) # store 0xa96ebb90 in memory
flh f14, 0(x2) # load 0xa96ebb90 from memory into f14
li x3, 0x26b2b076 # load x3 with value 0x26b2b076
sw x3, 0(x2) # store 0x26b2b076 in memory
flh f12, 0(x2) # load 0x26b2b076 from memory into f12
fadd.h f12, f14, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x2defa090 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fbd7c04 # load x3 with value 0x4fbd7c04
sw x3, 0(x2) # store 0x4fbd7c04 in memory
flh f24, 0(x2) # load 0x4fbd7c04 from memory into f24
li x3, 0x9a85ece7 # load x3 with value 0x9a85ece7
sw x3, 0(x2) # store 0x9a85ece7 in memory
flh f13, 0(x2) # load 0x9a85ece7 from memory into f13
fadd.h f13, f24, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xefa57eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1634ff47 # load x3 with value 0x1634ff47
sw x3, 0(x2) # store 0x1634ff47 in memory
flh f30, 0(x2) # load 0x1634ff47 from memory into f30
li x3, 0x79873ae4 # load x3 with value 0x79873ae4
sw x3, 0(x2) # store 0x79873ae4 in memory
flh f14, 0(x2) # load 0x79873ae4 from memory into f14
fadd.h f14, f30, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x651efe68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccb5ad68 # load x3 with value 0xccb5ad68
sw x3, 0(x2) # store 0xccb5ad68 in memory
flh f10, 0(x2) # load 0xccb5ad68 from memory into f10
li x3, 0xae1e6498 # load x3 with value 0xae1e6498
sw x3, 0(x2) # store 0xae1e6498 in memory
flh f15, 0(x2) # load 0xae1e6498 from memory into f15
fadd.h f15, f10, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xe86498b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf274cadb # load x3 with value 0xf274cadb
sw x3, 0(x2) # store 0xf274cadb in memory
flh f9, 0(x2) # load 0xf274cadb from memory into f9
li x3, 0xe9b97e29 # load x3 with value 0xe9b97e29
sw x3, 0(x2) # store 0xe9b97e29 in memory
flh f16, 0(x2) # load 0xe9b97e29 from memory into f16
fadd.h f16, f9, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x17d09cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x095118c8 # load x3 with value 0x095118c8
sw x3, 0(x2) # store 0x095118c8 in memory
flh f1, 0(x2) # load 0x095118c8 from memory into f1
li x3, 0x2f50333f # load x3 with value 0x2f50333f
sw x3, 0(x2) # store 0x2f50333f in memory
flh f17, 0(x2) # load 0x2f50333f from memory into f17
fadd.h f17, f1, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x8a32e7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6103132 # load x3 with value 0xc6103132
sw x3, 0(x2) # store 0xc6103132 in memory
flh f12, 0(x2) # load 0xc6103132 from memory into f12
li x3, 0xfdd256e0 # load x3 with value 0xfdd256e0
sw x3, 0(x2) # store 0xfdd256e0 in memory
flh f18, 0(x2) # load 0xfdd256e0 from memory into f18
fadd.h f18, f12, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x63bfab84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14e5805d # load x3 with value 0x14e5805d
sw x3, 0(x2) # store 0x14e5805d in memory
flh f3, 0(x2) # load 0x14e5805d from memory into f3
li x3, 0x16d016a0 # load x3 with value 0x16d016a0
sw x3, 0(x2) # store 0x16d016a0 in memory
flh f19, 0(x2) # load 0x16d016a0 from memory into f19
fadd.h f19, f3, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xacddb27b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x221ecd66 # load x3 with value 0x221ecd66
sw x3, 0(x2) # store 0x221ecd66 in memory
flh f12, 0(x2) # load 0x221ecd66 from memory into f12
li x3, 0x9f9fc9d1 # load x3 with value 0x9f9fc9d1
sw x3, 0(x2) # store 0x9f9fc9d1 in memory
flh f20, 0(x2) # load 0x9f9fc9d1 from memory into f20
fadd.h f20, f12, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xde6e0808 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed57ad28 # load x3 with value 0xed57ad28
sw x3, 0(x2) # store 0xed57ad28 in memory
flh f19, 0(x2) # load 0xed57ad28 from memory into f19
li x3, 0x5b461ed5 # load x3 with value 0x5b461ed5
sw x3, 0(x2) # store 0x5b461ed5 in memory
flh f21, 0(x2) # load 0x5b461ed5 from memory into f21
fadd.h f21, f19, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x3bba3aed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5d32406 # load x3 with value 0xc5d32406
sw x3, 0(x2) # store 0xc5d32406 in memory
flh f23, 0(x2) # load 0xc5d32406 from memory into f23
li x3, 0xf3b0168d # load x3 with value 0xf3b0168d
sw x3, 0(x2) # store 0xf3b0168d in memory
flh f22, 0(x2) # load 0xf3b0168d from memory into f22
fadd.h f22, f23, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x7225052f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x526f3789 # load x3 with value 0x526f3789
sw x3, 0(x2) # store 0x526f3789 in memory
flh f11, 0(x2) # load 0x526f3789 from memory into f11
li x3, 0x70fc3d18 # load x3 with value 0x70fc3d18
sw x3, 0(x2) # store 0x70fc3d18 in memory
flh f23, 0(x2) # load 0x70fc3d18 from memory into f23
fadd.h f23, f11, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x17da44bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0abb31c3 # load x3 with value 0x0abb31c3
sw x3, 0(x2) # store 0x0abb31c3 in memory
flh f12, 0(x2) # load 0x0abb31c3 from memory into f12
li x3, 0xfd657c62 # load x3 with value 0xfd657c62
sw x3, 0(x2) # store 0xfd657c62 in memory
flh f24, 0(x2) # load 0xfd657c62 from memory into f24
fadd.h f24, f12, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xcfdf4fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24908826 # load x3 with value 0x24908826
sw x3, 0(x2) # store 0x24908826 in memory
flh f29, 0(x2) # load 0x24908826 from memory into f29
li x3, 0x57bc9192 # load x3 with value 0x57bc9192
sw x3, 0(x2) # store 0x57bc9192 in memory
flh f25, 0(x2) # load 0x57bc9192 from memory into f25
fadd.h f25, f29, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x925d680a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb5d40fc # load x3 with value 0xeb5d40fc
sw x3, 0(x2) # store 0xeb5d40fc in memory
flh f21, 0(x2) # load 0xeb5d40fc from memory into f21
li x3, 0x276b15c5 # load x3 with value 0x276b15c5
sw x3, 0(x2) # store 0x276b15c5 in memory
flh f26, 0(x2) # load 0x276b15c5 from memory into f26
fadd.h f26, f21, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x38abd57b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x519a60d5 # load x3 with value 0x519a60d5
sw x3, 0(x2) # store 0x519a60d5 in memory
flh f23, 0(x2) # load 0x519a60d5 from memory into f23
li x3, 0x63d634b5 # load x3 with value 0x63d634b5
sw x3, 0(x2) # store 0x63d634b5 in memory
flh f27, 0(x2) # load 0x63d634b5 from memory into f27
fadd.h f27, f23, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xc33225ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26aae77e # load x3 with value 0x26aae77e
sw x3, 0(x2) # store 0x26aae77e in memory
flh f4, 0(x2) # load 0x26aae77e from memory into f4
li x3, 0x16d2f871 # load x3 with value 0x16d2f871
sw x3, 0(x2) # store 0x16d2f871 in memory
flh f28, 0(x2) # load 0x16d2f871 from memory into f28
fadd.h f28, f4, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x78f86c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9609ed30 # load x3 with value 0x9609ed30
sw x3, 0(x2) # store 0x9609ed30 in memory
flh f1, 0(x2) # load 0x9609ed30 from memory into f1
li x3, 0x6f4ada9a # load x3 with value 0x6f4ada9a
sw x3, 0(x2) # store 0x6f4ada9a in memory
flh f29, 0(x2) # load 0x6f4ada9a from memory into f29
fadd.h f29, f1, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xb18534bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a0aae5d # load x3 with value 0x2a0aae5d
sw x3, 0(x2) # store 0x2a0aae5d in memory
flh f7, 0(x2) # load 0x2a0aae5d from memory into f7
li x3, 0xa50f9f97 # load x3 with value 0xa50f9f97
sw x3, 0(x2) # store 0xa50f9f97 in memory
flh f30, 0(x2) # load 0xa50f9f97 from memory into f30
fadd.h f30, f7, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x3ac42ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d2398fc # load x3 with value 0x6d2398fc
sw x3, 0(x2) # store 0x6d2398fc in memory
flh f30, 0(x2) # load 0x6d2398fc from memory into f30
li x3, 0x3155e4da # load x3 with value 0x3155e4da
sw x3, 0(x2) # store 0x3155e4da in memory
flh f31, 0(x2) # load 0x3155e4da from memory into f31
fadd.h f31, f30, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x21, 0x90e51e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x5e83cce7 # load x3 with value 0x5e83cce7
sw x3, 0(x2) # store 0x5e83cce7 in memory
flh f3, 0(x2) # load 0x5e83cce7 from memory into f3
fadd.h f21, f17, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x18, 0x2f6bbfc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
li x3, 0x3941bb1a # load x3 with value 0x3941bb1a
sw x3, 0(x2) # store 0x3941bb1a in memory
flh f20, 0(x2) # load 0x3941bb1a from memory into f20
fadd.h f18, f24, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x11, 0x0c6d6d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0xa81ef517 # load x3 with value 0xa81ef517
sw x3, 0(x2) # store 0xa81ef517 in memory
flh f27, 0(x2) # load 0xa81ef517 from memory into f27
fadd.h f11, f7, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x25, 0xec7ef60d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x89f2a109 # load x3 with value 0x89f2a109
sw x3, 0(x2) # store 0x89f2a109 in memory
flh f14, 0(x2) # load 0x89f2a109 from memory into f14
fadd.h f25, f22, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x25, 0xbcdf5bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x8f0b9afc # load x3 with value 0x8f0b9afc
sw x3, 0(x2) # store 0x8f0b9afc in memory
flh f12, 0(x2) # load 0x8f0b9afc from memory into f12
fadd.h f25, f29, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x12, 0xfb63efe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x198ca81f # load x3 with value 0x198ca81f
sw x3, 0(x2) # store 0x198ca81f in memory
flh f27, 0(x2) # load 0x198ca81f from memory into f27
fadd.h f12, f5, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x10, 0x766df7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x30188b5b # load x3 with value 0x30188b5b
sw x3, 0(x2) # store 0x30188b5b in memory
flh f30, 0(x2) # load 0x30188b5b from memory into f30
fadd.h f10, f31, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x30, 0xc6ebbfcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x61e4a555 # load x3 with value 0x61e4a555
sw x3, 0(x2) # store 0x61e4a555 in memory
flh f17, 0(x2) # load 0x61e4a555 from memory into f17
fadd.h f30, f19, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x27, 0x67cbd183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0xa14bb16c # load x3 with value 0xa14bb16c
sw x3, 0(x2) # store 0xa14bb16c in memory
flh f1, 0(x2) # load 0xa14bb16c from memory into f1
fadd.h f27, f6, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x3, 0xe06b1db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0xee5201d7 # load x3 with value 0xee5201d7
sw x3, 0(x2) # store 0xee5201d7 in memory
flh f24, 0(x2) # load 0xee5201d7 from memory into f24
fadd.h f3, f6, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x19, 0x6dd09ade # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0xdb5ddf5b # load x3 with value 0xdb5ddf5b
sw x3, 0(x2) # store 0xdb5ddf5b in memory
flh f26, 0(x2) # load 0xdb5ddf5b from memory into f26
fadd.h f19, f16, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x27, 0xb7a0f12a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
li x3, 0xf12df7c6 # load x3 with value 0xf12df7c6
sw x3, 0(x2) # store 0xf12df7c6 in memory
flh f8, 0(x2) # load 0xf12df7c6 from memory into f8
fadd.h f27, f3, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x30, 0xe89f6213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x4e465b20 # load x3 with value 0x4e465b20
sw x3, 0(x2) # store 0x4e465b20 in memory
flh f12, 0(x2) # load 0x4e465b20 from memory into f12
fadd.h f30, f10, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x6, 0x1e5f4a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x8e5c9f74 # load x3 with value 0x8e5c9f74
sw x3, 0(x2) # store 0x8e5c9f74 in memory
flh f23, 0(x2) # load 0x8e5c9f74 from memory into f23
fadd.h f6, f21, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x14, 0x10e88ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0xacb94c6e # load x3 with value 0xacb94c6e
sw x3, 0(x2) # store 0xacb94c6e in memory
flh f29, 0(x2) # load 0xacb94c6e from memory into f29
fadd.h f14, f5, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x13, 0x6065a757 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0xabfb975f # load x3 with value 0xabfb975f
sw x3, 0(x2) # store 0xabfb975f in memory
flh f4, 0(x2) # load 0xabfb975f from memory into f4
fadd.h f13, f12, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x7, 0x097febce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x72fdb7e6 # load x3 with value 0x72fdb7e6
sw x3, 0(x2) # store 0x72fdb7e6 in memory
flh f19, 0(x2) # load 0x72fdb7e6 from memory into f19
fadd.h f7, f22, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x15, 0xea012eea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0xbb8cbe06 # load x3 with value 0xbb8cbe06
sw x3, 0(x2) # store 0xbb8cbe06 in memory
flh f16, 0(x2) # load 0xbb8cbe06 from memory into f16
fadd.h f15, f14, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x13, 0xfcf1be4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0xdc3aabf4 # load x3 with value 0xdc3aabf4
sw x3, 0(x2) # store 0xdc3aabf4 in memory
flh f8, 0(x2) # load 0xdc3aabf4 from memory into f8
fadd.h f13, f21, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x22, 0x069fa15e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x466c1131 # load x3 with value 0x466c1131
sw x3, 0(x2) # store 0x466c1131 in memory
flh f10, 0(x2) # load 0x466c1131 from memory into f10
fadd.h f22, f25, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x27, 0xc09feaff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x78124d1c # load x3 with value 0x78124d1c
sw x3, 0(x2) # store 0x78124d1c in memory
flh f12, 0(x2) # load 0x78124d1c from memory into f12
fadd.h f27, f2, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x20, 0x1ab323af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0xfdb63dfa # load x3 with value 0xfdb63dfa
sw x3, 0(x2) # store 0xfdb63dfa in memory
flh f19, 0(x2) # load 0xfdb63dfa from memory into f19
fadd.h f20, f5, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x28, 0x461b1bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0xfe3ab331 # load x3 with value 0xfe3ab331
sw x3, 0(x2) # store 0xfe3ab331 in memory
flh f21, 0(x2) # load 0xfe3ab331 from memory into f21
fadd.h f28, f4, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x14, 0x24090ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0xd49c7920 # load x3 with value 0xd49c7920
sw x3, 0(x2) # store 0xd49c7920 in memory
flh f4, 0(x2) # load 0xd49c7920 from memory into f4
fadd.h f14, f24, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x27, 0x6085ef45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x8fb0d9d2 # load x3 with value 0x8fb0d9d2
sw x3, 0(x2) # store 0x8fb0d9d2 in memory
flh f1, 0(x2) # load 0x8fb0d9d2 from memory into f1
fadd.h f27, f26, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x31, 0xbb0ac714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x0cc5273e # load x3 with value 0x0cc5273e
sw x3, 0(x2) # store 0x0cc5273e in memory
flh f14, 0(x2) # load 0x0cc5273e from memory into f14
fadd.h f31, f21, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x5, 0xad425d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9091157 # load x3 with value 0xf9091157
sw x3, 0(x2) # store 0xf9091157 in memory
flh f12, 0(x2) # load 0xf9091157 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fadd.h f5, f12, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x14, 0xc9439933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6317958a # load x3 with value 0x6317958a
sw x3, 0(x2) # store 0x6317958a in memory
flh f13, 0(x2) # load 0x6317958a from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fadd.h f14, f13, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x6, 0xb10e41df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb36344f # load x3 with value 0xfb36344f
sw x3, 0(x2) # store 0xfb36344f in memory
flh f20, 0(x2) # load 0xfb36344f from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fadd.h f6, f20, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x31, 0xacf95727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe95caf96 # load x3 with value 0xe95caf96
sw x3, 0(x2) # store 0xe95caf96 in memory
flh f16, 0(x2) # load 0xe95caf96 from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fadd.h f31, f16, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x27, 0xd6ffee1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea9bf23f # load x3 with value 0xea9bf23f
sw x3, 0(x2) # store 0xea9bf23f in memory
flh f8, 0(x2) # load 0xea9bf23f from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fadd.h f27, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x6, 0x2e2f319f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf83283d # load x3 with value 0xdf83283d
sw x3, 0(x2) # store 0xdf83283d in memory
flh f22, 0(x2) # load 0xdf83283d from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fadd.h f6, f22, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x25, 0x24ab9f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21b54ab9 # load x3 with value 0x21b54ab9
sw x3, 0(x2) # store 0x21b54ab9 in memory
flh f17, 0(x2) # load 0x21b54ab9 from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fadd.h f25, f17, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x23, 0x8381301b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57d6ad8a # load x3 with value 0x57d6ad8a
sw x3, 0(x2) # store 0x57d6ad8a in memory
flh f9, 0(x2) # load 0x57d6ad8a from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fadd.h f23, f9, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x12, 0xfc2f9bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf17c2808 # load x3 with value 0xf17c2808
sw x3, 0(x2) # store 0xf17c2808 in memory
flh f13, 0(x2) # load 0xf17c2808 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fadd.h f12, f13, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x8, 0x15661b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24339fc8 # load x3 with value 0x24339fc8
sw x3, 0(x2) # store 0x24339fc8 in memory
flh f12, 0(x2) # load 0x24339fc8 from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fadd.h f8, f12, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x17, 0x66d67435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x870db69f # load x3 with value 0x870db69f
sw x3, 0(x2) # store 0x870db69f in memory
flh f27, 0(x2) # load 0x870db69f from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fadd.h f17, f27, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x18, 0xfb43e7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe00f593b # load x3 with value 0xe00f593b
sw x3, 0(x2) # store 0xe00f593b in memory
flh f9, 0(x2) # load 0xe00f593b from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fadd.h f18, f9, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x24, 0xcf59830e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c4a9dc6 # load x3 with value 0x6c4a9dc6
sw x3, 0(x2) # store 0x6c4a9dc6 in memory
flh f1, 0(x2) # load 0x6c4a9dc6 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fadd.h f24, f1, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x1, 0xfc8ddd86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d2759ae # load x3 with value 0x5d2759ae
sw x3, 0(x2) # store 0x5d2759ae in memory
flh f24, 0(x2) # load 0x5d2759ae from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fadd.h f1, f24, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x13, 0x9c6171dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75a8eb81 # load x3 with value 0x75a8eb81
sw x3, 0(x2) # store 0x75a8eb81 in memory
flh f19, 0(x2) # load 0x75a8eb81 from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fadd.h f13, f19, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x2, 0xe619d148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d96060e # load x3 with value 0x9d96060e
sw x3, 0(x2) # store 0x9d96060e in memory
flh f17, 0(x2) # load 0x9d96060e from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fadd.h f2, f17, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x11, 0x9345c0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe16aef93 # load x3 with value 0xe16aef93
sw x3, 0(x2) # store 0xe16aef93 in memory
flh f22, 0(x2) # load 0xe16aef93 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fadd.h f11, f22, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x12, 0x6b120907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x753f8050 # load x3 with value 0x753f8050
sw x3, 0(x2) # store 0x753f8050 in memory
flh f25, 0(x2) # load 0x753f8050 from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fadd.h f12, f25, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x31, 0xa0cfb10b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7699611d # load x3 with value 0x7699611d
sw x3, 0(x2) # store 0x7699611d in memory
flh f7, 0(x2) # load 0x7699611d from memory into f7
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fadd.h f31, f7, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x9, 0x23da441e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80291eb3 # load x3 with value 0x80291eb3
sw x3, 0(x2) # store 0x80291eb3 in memory
flh f15, 0(x2) # load 0x80291eb3 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fadd.h f9, f15, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x10, 0x30c668fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb801dec # load x3 with value 0xeb801dec
sw x3, 0(x2) # store 0xeb801dec in memory
flh f7, 0(x2) # load 0xeb801dec from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fadd.h f10, f7, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x3, 0xc25988ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1280470 # load x3 with value 0xa1280470
sw x3, 0(x2) # store 0xa1280470 in memory
flh f26, 0(x2) # load 0xa1280470 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fadd.h f3, f26, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x2, 0x27f2e9bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfdc13e2 # load x3 with value 0xcfdc13e2
sw x3, 0(x2) # store 0xcfdc13e2 in memory
flh f24, 0(x2) # load 0xcfdc13e2 from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fadd.h f2, f24, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x28, 0x460231b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc13b905d # load x3 with value 0xc13b905d
sw x3, 0(x2) # store 0xc13b905d in memory
flh f15, 0(x2) # load 0xc13b905d from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fadd.h f28, f15, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x17, 0x11b59bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b169185 # load x3 with value 0x1b169185
sw x3, 0(x2) # store 0x1b169185 in memory
flh f4, 0(x2) # load 0x1b169185 from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f17, f4, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x10, 0x95e9265a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f6499d7 # load x3 with value 0x7f6499d7
sw x3, 0(x2) # store 0x7f6499d7 in memory
flh f31, 0(x2) # load 0x7f6499d7 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fadd.h f10, f31, f21 # perform operation

# Testcase cp_frm
li x2, 0xe2ae0cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb42f1445 # load x3 with value 0xb42f1445
sw x3, 0(x2) # store 0xb42f1445 in memory
flh f1, 0(x2) # load 0xb42f1445 from memory into f1
li x3, 0x709d1454 # load x3 with value 0x709d1454
sw x3, 0(x2) # store 0x709d1454 in memory
flh f27, 0(x2) # load 0x709d1454 from memory into f27
fadd.h f2, f1, f27, dyn # perform operation
fadd.h f2, f1, f27, rdn # perform operation
fadd.h f2, f1, f27, rmm # perform operation
fadd.h f2, f1, f27, rne # perform operation
fadd.h f2, f1, f27, rtz # perform operation
fadd.h f2, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x25, 0xe9049d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fadd.h f25, f6, f11, dyn # perform operation
fadd.h f25, f6, f11, rdn # perform operation
fadd.h f25, f6, f11, rmm # perform operation
fadd.h f25, f6, f11, rne # perform operation
fadd.h f25, f6, f11, rtz # perform operation
fadd.h f25, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x8, 0x7b171bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fadd.h f8, f7, f21, dyn # perform operation
fadd.h f8, f7, f21, rdn # perform operation
fadd.h f8, f7, f21, rmm # perform operation
fadd.h f8, f7, f21, rne # perform operation
fadd.h f8, f7, f21, rtz # perform operation
fadd.h f8, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x30, 0xbef3204e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f30, f31, f15, dyn # perform operation
fadd.h f30, f31, f15, rdn # perform operation
fadd.h f30, f31, f15, rmm # perform operation
fadd.h f30, f31, f15, rne # perform operation
fadd.h f30, f31, f15, rtz # perform operation
fadd.h f30, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x23, 0xa9d3accb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fadd.h f23, f12, f14, dyn # perform operation
fadd.h f23, f12, f14, rdn # perform operation
fadd.h f23, f12, f14, rmm # perform operation
fadd.h f23, f12, f14, rne # perform operation
fadd.h f23, f12, f14, rtz # perform operation
fadd.h f23, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x5, 0x812f339c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fadd.h f5, f26, f14, dyn # perform operation
fadd.h f5, f26, f14, rdn # perform operation
fadd.h f5, f26, f14, rmm # perform operation
fadd.h f5, f26, f14, rne # perform operation
fadd.h f5, f26, f14, rtz # perform operation
fadd.h f5, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x9, 0xe5abbf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fadd.h f9, f26, f30, dyn # perform operation
fadd.h f9, f26, f30, rdn # perform operation
fadd.h f9, f26, f30, rmm # perform operation
fadd.h f9, f26, f30, rne # perform operation
fadd.h f9, f26, f30, rtz # perform operation
fadd.h f9, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x28, 0x711a3fcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fadd.h f28, f14, f18, dyn # perform operation
fadd.h f28, f14, f18, rdn # perform operation
fadd.h f28, f14, f18, rmm # perform operation
fadd.h f28, f14, f18, rne # perform operation
fadd.h f28, f14, f18, rtz # perform operation
fadd.h f28, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x8, 0x1a063331 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fadd.h f8, f19, f15, dyn # perform operation
fadd.h f8, f19, f15, rdn # perform operation
fadd.h f8, f19, f15, rmm # perform operation
fadd.h f8, f19, f15, rne # perform operation
fadd.h f8, f19, f15, rtz # perform operation
fadd.h f8, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x21, 0x3ca7c88b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fadd.h f21, f10, f8, dyn # perform operation
fadd.h f21, f10, f8, rdn # perform operation
fadd.h f21, f10, f8, rmm # perform operation
fadd.h f21, f10, f8, rne # perform operation
fadd.h f21, f10, f8, rtz # perform operation
fadd.h f21, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x4, 0x7031bbf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fadd.h f4, f30, f22, dyn # perform operation
fadd.h f4, f30, f22, rdn # perform operation
fadd.h f4, f30, f22, rmm # perform operation
fadd.h f4, f30, f22, rne # perform operation
fadd.h f4, f30, f22, rtz # perform operation
fadd.h f4, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x10, 0x1da25385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fadd.h f10, f19, f16, dyn # perform operation
fadd.h f10, f19, f16, rdn # perform operation
fadd.h f10, f19, f16, rmm # perform operation
fadd.h f10, f19, f16, rne # perform operation
fadd.h f10, f19, f16, rtz # perform operation
fadd.h f10, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x8, 0xf71ad66f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fadd.h f8, f30, f16, dyn # perform operation
fadd.h f8, f30, f16, rdn # perform operation
fadd.h f8, f30, f16, rmm # perform operation
fadd.h f8, f30, f16, rne # perform operation
fadd.h f8, f30, f16, rtz # perform operation
fadd.h f8, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x20, 0x69a38958 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fadd.h f20, f16, f31, dyn # perform operation
fadd.h f20, f16, f31, rdn # perform operation
fadd.h f20, f16, f31, rmm # perform operation
fadd.h f20, f16, f31, rne # perform operation
fadd.h f20, f16, f31, rtz # perform operation
fadd.h f20, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x25, 0x492e0c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fadd.h f25, f30, f15, dyn # perform operation
fadd.h f25, f30, f15, rdn # perform operation
fadd.h f25, f30, f15, rmm # perform operation
fadd.h f25, f30, f15, rne # perform operation
fadd.h f25, f30, f15, rtz # perform operation
fadd.h f25, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x22, 0xec13c25a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fadd.h f22, f16, f7, dyn # perform operation
fadd.h f22, f16, f7, rdn # perform operation
fadd.h f22, f16, f7, rmm # perform operation
fadd.h f22, f16, f7, rne # perform operation
fadd.h f22, f16, f7, rtz # perform operation
fadd.h f22, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x1, 0xc5e573db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f1, f16, f7, dyn # perform operation
fadd.h f1, f16, f7, rdn # perform operation
fadd.h f1, f16, f7, rmm # perform operation
fadd.h f1, f16, f7, rne # perform operation
fadd.h f1, f16, f7, rtz # perform operation
fadd.h f1, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x2, 0x87ec61cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fadd.h f2, f31, f6, dyn # perform operation
fadd.h f2, f31, f6, rdn # perform operation
fadd.h f2, f31, f6, rmm # perform operation
fadd.h f2, f31, f6, rne # perform operation
fadd.h f2, f31, f6, rtz # perform operation
fadd.h f2, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x20, 0xe95ce4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fadd.h f20, f21, f11, dyn # perform operation
fadd.h f20, f21, f11, rdn # perform operation
fadd.h f20, f21, f11, rmm # perform operation
fadd.h f20, f21, f11, rne # perform operation
fadd.h f20, f21, f11, rtz # perform operation
fadd.h f20, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x27, 0x91f7c188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fadd.h f27, f20, f5, dyn # perform operation
fadd.h f27, f20, f5, rdn # perform operation
fadd.h f27, f20, f5, rmm # perform operation
fadd.h f27, f20, f5, rne # perform operation
fadd.h f27, f20, f5, rtz # perform operation
fadd.h f27, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x6, 0x7778cf8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fadd.h f6, f30, f8, dyn # perform operation
fadd.h f6, f30, f8, rdn # perform operation
fadd.h f6, f30, f8, rmm # perform operation
fadd.h f6, f30, f8, rne # perform operation
fadd.h f6, f30, f8, rtz # perform operation
fadd.h f6, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x1, 0xbac28f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fadd.h f1, f23, f20, dyn # perform operation
fadd.h f1, f23, f20, rdn # perform operation
fadd.h f1, f23, f20, rmm # perform operation
fadd.h f1, f23, f20, rne # perform operation
fadd.h f1, f23, f20, rtz # perform operation
fadd.h f1, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x17, 0x6658db97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fadd.h f17, f16, f25, dyn # perform operation
fadd.h f17, f16, f25, rdn # perform operation
fadd.h f17, f16, f25, rmm # perform operation
fadd.h f17, f16, f25, rne # perform operation
fadd.h f17, f16, f25, rtz # perform operation
fadd.h f17, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x26, 0x5a440340 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fadd.h f26, f25, f21, dyn # perform operation
fadd.h f26, f25, f21, rdn # perform operation
fadd.h f26, f25, f21, rmm # perform operation
fadd.h f26, f25, f21, rne # perform operation
fadd.h f26, f25, f21, rtz # perform operation
fadd.h f26, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x17, 0xc4354676 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fadd.h f17, f22, f29, dyn # perform operation
fadd.h f17, f22, f29, rdn # perform operation
fadd.h f17, f22, f29, rmm # perform operation
fadd.h f17, f22, f29, rne # perform operation
fadd.h f17, f22, f29, rtz # perform operation
fadd.h f17, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x22, 0xf4e3a331 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fadd.h f22, f21, f1, dyn # perform operation
fadd.h f22, f21, f1, rdn # perform operation
fadd.h f22, f21, f1, rmm # perform operation
fadd.h f22, f21, f1, rne # perform operation
fadd.h f22, f21, f1, rtz # perform operation
fadd.h f22, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x30, 0xc0b693ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fadd.h f30, f28, f1, dyn # perform operation
fadd.h f30, f28, f1, rdn # perform operation
fadd.h f30, f28, f1, rmm # perform operation
fadd.h f30, f28, f1, rne # perform operation
fadd.h f30, f28, f1, rtz # perform operation
fadd.h f30, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x10, 0x2baa907d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fadd.h f10, f22, f23, dyn # perform operation
fadd.h f10, f22, f23, rdn # perform operation
fadd.h f10, f22, f23, rmm # perform operation
fadd.h f10, f22, f23, rne # perform operation
fadd.h f10, f22, f23, rtz # perform operation
fadd.h f10, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x24, 0x4c106dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fadd.h f24, f8, f10, dyn # perform operation
fadd.h f24, f8, f10, rdn # perform operation
fadd.h f24, f8, f10, rmm # perform operation
fadd.h f24, f8, f10, rne # perform operation
fadd.h f24, f8, f10, rtz # perform operation
fadd.h f24, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x14, 0x6e5891c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fadd.h f14, f1, f21, dyn # perform operation
fadd.h f14, f1, f21, rdn # perform operation
fadd.h f14, f1, f21, rmm # perform operation
fadd.h f14, f1, f21, rne # perform operation
fadd.h f14, f1, f21, rtz # perform operation
fadd.h f14, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x19, 0x9f769143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fadd.h f19, f18, f20, dyn # perform operation
fadd.h f19, f18, f20, rdn # perform operation
fadd.h f19, f18, f20, rmm # perform operation
fadd.h f19, f18, f20, rne # perform operation
fadd.h f19, f18, f20, rtz # perform operation
fadd.h f19, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x30, 0xcb9130f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fadd.h f30, f18, f12, dyn # perform operation
fadd.h f30, f18, f12, rdn # perform operation
fadd.h f30, f18, f12, rmm # perform operation
fadd.h f30, f18, f12, rne # perform operation
fadd.h f30, f18, f12, rtz # perform operation
fadd.h f30, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x30, 0x2a1d54e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fadd.h f30, f14, f16, dyn # perform operation
fadd.h f30, f14, f16, rdn # perform operation
fadd.h f30, f14, f16, rmm # perform operation
fadd.h f30, f14, f16, rne # perform operation
fadd.h f30, f14, f16, rtz # perform operation
fadd.h f30, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x10, 0xb772a736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f10, f7, f13, dyn # perform operation
fadd.h f10, f7, f13, rdn # perform operation
fadd.h f10, f7, f13, rmm # perform operation
fadd.h f10, f7, f13, rne # perform operation
fadd.h f10, f7, f13, rtz # perform operation
fadd.h f10, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x20, 0xa1b43c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fadd.h f20, f13, f8, dyn # perform operation
fadd.h f20, f13, f8, rdn # perform operation
fadd.h f20, f13, f8, rmm # perform operation
fadd.h f20, f13, f8, rne # perform operation
fadd.h f20, f13, f8, rtz # perform operation
fadd.h f20, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x8, 0xfe779151 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fadd.h f8, f21, f29, dyn # perform operation
fadd.h f8, f21, f29, rdn # perform operation
fadd.h f8, f21, f29, rmm # perform operation
fadd.h f8, f21, f29, rne # perform operation
fadd.h f8, f21, f29, rtz # perform operation
fadd.h f8, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x15, 0x260cf2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f15, f4, f1, dyn # perform operation
fadd.h f15, f4, f1, rdn # perform operation
fadd.h f15, f4, f1, rmm # perform operation
fadd.h f15, f4, f1, rne # perform operation
fadd.h f15, f4, f1, rtz # perform operation
fadd.h f15, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x1, 0xc4f3c1c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f1, f21, f20, dyn # perform operation
fadd.h f1, f21, f20, rdn # perform operation
fadd.h f1, f21, f20, rmm # perform operation
fadd.h f1, f21, f20, rne # perform operation
fadd.h f1, f21, f20, rtz # perform operation
fadd.h f1, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x8, 0x7d42f1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fadd.h f8, f26, f17, dyn # perform operation
fadd.h f8, f26, f17, rdn # perform operation
fadd.h f8, f26, f17, rmm # perform operation
fadd.h f8, f26, f17, rne # perform operation
fadd.h f8, f26, f17, rtz # perform operation
fadd.h f8, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x22, 0xb8f0a704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fadd.h f22, f29, f28, dyn # perform operation
fadd.h f22, f29, f28, rdn # perform operation
fadd.h f22, f29, f28, rmm # perform operation
fadd.h f22, f29, f28, rne # perform operation
fadd.h f22, f29, f28, rtz # perform operation
fadd.h f22, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x13, 0x53b62ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fadd.h f13, f10, f5, dyn # perform operation
fadd.h f13, f10, f5, rdn # perform operation
fadd.h f13, f10, f5, rmm # perform operation
fadd.h f13, f10, f5, rne # perform operation
fadd.h f13, f10, f5, rtz # perform operation
fadd.h f13, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x4, 0x61cd3f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fadd.h f4, f7, f22, dyn # perform operation
fadd.h f4, f7, f22, rdn # perform operation
fadd.h f4, f7, f22, rmm # perform operation
fadd.h f4, f7, f22, rne # perform operation
fadd.h f4, f7, f22, rtz # perform operation
fadd.h f4, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x24, 0xfd3e96aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fadd.h f24, f21, f20, dyn # perform operation
fadd.h f24, f21, f20, rdn # perform operation
fadd.h f24, f21, f20, rmm # perform operation
fadd.h f24, f21, f20, rne # perform operation
fadd.h f24, f21, f20, rtz # perform operation
fadd.h f24, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x18, 0xc84299f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fadd.h f18, f2, f15, dyn # perform operation
fadd.h f18, f2, f15, rdn # perform operation
fadd.h f18, f2, f15, rmm # perform operation
fadd.h f18, f2, f15, rne # perform operation
fadd.h f18, f2, f15, rtz # perform operation
fadd.h f18, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x10, 0xe2ca209e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fadd.h f10, f11, f1, dyn # perform operation
fadd.h f10, f11, f1, rdn # perform operation
fadd.h f10, f11, f1, rmm # perform operation
fadd.h f10, f11, f1, rne # perform operation
fadd.h f10, f11, f1, rtz # perform operation
fadd.h f10, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x6, 0xd74ca8dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fadd.h f6, f26, f15, dyn # perform operation
fadd.h f6, f26, f15, rdn # perform operation
fadd.h f6, f26, f15, rmm # perform operation
fadd.h f6, f26, f15, rne # perform operation
fadd.h f6, f26, f15, rtz # perform operation
fadd.h f6, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x31, 0x90989cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fadd.h f31, f20, f27, dyn # perform operation
fadd.h f31, f20, f27, rdn # perform operation
fadd.h f31, f20, f27, rmm # perform operation
fadd.h f31, f20, f27, rne # perform operation
fadd.h f31, f20, f27, rtz # perform operation
fadd.h f31, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x23, 0x69574b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fadd.h f23, f31, f18, dyn # perform operation
fadd.h f23, f31, f18, rdn # perform operation
fadd.h f23, f31, f18, rmm # perform operation
fadd.h f23, f31, f18, rne # perform operation
fadd.h f23, f31, f18, rtz # perform operation
fadd.h f23, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x10, 0xa1bd81b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fadd.h f10, f29, f11, dyn # perform operation
fadd.h f10, f29, f11, rdn # perform operation
fadd.h f10, f29, f11, rmm # perform operation
fadd.h f10, f29, f11, rne # perform operation
fadd.h f10, f29, f11, rtz # perform operation
fadd.h f10, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x5, 0xeb0be81a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fadd.h f5, f9, f31, dyn # perform operation
fadd.h f5, f9, f31, rdn # perform operation
fadd.h f5, f9, f31, rmm # perform operation
fadd.h f5, f9, f31, rne # perform operation
fadd.h f5, f9, f31, rtz # perform operation
fadd.h f5, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x14, 0x7e72a7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fadd.h f14, f29, f11, dyn # perform operation
fadd.h f14, f29, f11, rdn # perform operation
fadd.h f14, f29, f11, rmm # perform operation
fadd.h f14, f29, f11, rne # perform operation
fadd.h f14, f29, f11, rtz # perform operation
fadd.h f14, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x30, 0x35c38f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fadd.h f30, f4, f26, dyn # perform operation
fadd.h f30, f4, f26, rdn # perform operation
fadd.h f30, f4, f26, rmm # perform operation
fadd.h f30, f4, f26, rne # perform operation
fadd.h f30, f4, f26, rtz # perform operation
fadd.h f30, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x14, 0x119de4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fadd.h f14, f8, f15, dyn # perform operation
fadd.h f14, f8, f15, rdn # perform operation
fadd.h f14, f8, f15, rmm # perform operation
fadd.h f14, f8, f15, rne # perform operation
fadd.h f14, f8, f15, rtz # perform operation
fadd.h f14, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x16, 0x22ea80f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fadd.h f16, f11, f10, dyn # perform operation
fadd.h f16, f11, f10, rdn # perform operation
fadd.h f16, f11, f10, rmm # perform operation
fadd.h f16, f11, f10, rne # perform operation
fadd.h f16, f11, f10, rtz # perform operation
fadd.h f16, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x14, 0x13f8893f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fadd.h f14, f26, f11, dyn # perform operation
fadd.h f14, f26, f11, rdn # perform operation
fadd.h f14, f26, f11, rmm # perform operation
fadd.h f14, f26, f11, rne # perform operation
fadd.h f14, f26, f11, rtz # perform operation
fadd.h f14, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x20, 0xbd56e122 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fadd.h f20, f24, f30, dyn # perform operation
fadd.h f20, f24, f30, rdn # perform operation
fadd.h f20, f24, f30, rmm # perform operation
fadd.h f20, f24, f30, rne # perform operation
fadd.h f20, f24, f30, rtz # perform operation
fadd.h f20, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x19, 0xf9a11da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fadd.h f19, f24, f29, dyn # perform operation
fadd.h f19, f24, f29, rdn # perform operation
fadd.h f19, f24, f29, rmm # perform operation
fadd.h f19, f24, f29, rne # perform operation
fadd.h f19, f24, f29, rtz # perform operation
fadd.h f19, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x4, 0x84ad6972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fadd.h f4, f23, f20, dyn # perform operation
fadd.h f4, f23, f20, rdn # perform operation
fadd.h f4, f23, f20, rmm # perform operation
fadd.h f4, f23, f20, rne # perform operation
fadd.h f4, f23, f20, rtz # perform operation
fadd.h f4, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x19, 0xbe169aef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fadd.h f19, f4, f28, dyn # perform operation
fadd.h f19, f4, f28, rdn # perform operation
fadd.h f19, f4, f28, rmm # perform operation
fadd.h f19, f4, f28, rne # perform operation
fadd.h f19, f4, f28, rtz # perform operation
fadd.h f19, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x8, 0x7afa0d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f8, f19, f13, dyn # perform operation
fadd.h f8, f19, f13, rdn # perform operation
fadd.h f8, f19, f13, rmm # perform operation
fadd.h f8, f19, f13, rne # perform operation
fadd.h f8, f19, f13, rtz # perform operation
fadd.h f8, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x24, 0xb33fa988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f24, f13, f25, dyn # perform operation
fadd.h f24, f13, f25, rdn # perform operation
fadd.h f24, f13, f25, rmm # perform operation
fadd.h f24, f13, f25, rne # perform operation
fadd.h f24, f13, f25, rtz # perform operation
fadd.h f24, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x11, 0xc4813dca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fadd.h f11, f8, f1, dyn # perform operation
fadd.h f11, f8, f1, rdn # perform operation
fadd.h f11, f8, f1, rmm # perform operation
fadd.h f11, f8, f1, rne # perform operation
fadd.h f11, f8, f1, rtz # perform operation
fadd.h f11, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x13, 0xde9f1a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f13, f29, f1, dyn # perform operation
fadd.h f13, f29, f1, rdn # perform operation
fadd.h f13, f29, f1, rmm # perform operation
fadd.h f13, f29, f1, rne # perform operation
fadd.h f13, f29, f1, rtz # perform operation
fadd.h f13, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x27, 0x46cdc43a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fadd.h f27, f21, f9, dyn # perform operation
fadd.h f27, f21, f9, rdn # perform operation
fadd.h f27, f21, f9, rmm # perform operation
fadd.h f27, f21, f9, rne # perform operation
fadd.h f27, f21, f9, rtz # perform operation
fadd.h f27, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x15, 0xe80b35e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fadd.h f15, f8, f20, dyn # perform operation
fadd.h f15, f8, f20, rdn # perform operation
fadd.h f15, f8, f20, rmm # perform operation
fadd.h f15, f8, f20, rne # perform operation
fadd.h f15, f8, f20, rtz # perform operation
fadd.h f15, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x24, 0x15093738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fadd.h f24, f7, f30, dyn # perform operation
fadd.h f24, f7, f30, rdn # perform operation
fadd.h f24, f7, f30, rmm # perform operation
fadd.h f24, f7, f30, rne # perform operation
fadd.h f24, f7, f30, rtz # perform operation
fadd.h f24, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x6, 0xc7d69f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fadd.h f6, f17, f13, dyn # perform operation
fadd.h f6, f17, f13, rdn # perform operation
fadd.h f6, f17, f13, rmm # perform operation
fadd.h f6, f17, f13, rne # perform operation
fadd.h f6, f17, f13, rtz # perform operation
fadd.h f6, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x28, 0xa310e950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fadd.h f28, f15, f27, dyn # perform operation
fadd.h f28, f15, f27, rdn # perform operation
fadd.h f28, f15, f27, rmm # perform operation
fadd.h f28, f15, f27, rne # perform operation
fadd.h f28, f15, f27, rtz # perform operation
fadd.h f28, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x8, 0x8e58bc51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
fadd.h f8, f22, f4, dyn # perform operation
fadd.h f8, f22, f4, rdn # perform operation
fadd.h f8, f22, f4, rmm # perform operation
fadd.h f8, f22, f4, rne # perform operation
fadd.h f8, f22, f4, rtz # perform operation
fadd.h f8, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x9, 0x1cab98e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fadd.h f9, f12, f16, dyn # perform operation
fadd.h f9, f12, f16, rdn # perform operation
fadd.h f9, f12, f16, rmm # perform operation
fadd.h f9, f12, f16, rne # perform operation
fadd.h f9, f12, f16, rtz # perform operation
fadd.h f9, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x4, 0xd226959a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fadd.h f4, f10, f1, dyn # perform operation
fadd.h f4, f10, f1, rdn # perform operation
fadd.h f4, f10, f1, rmm # perform operation
fadd.h f4, f10, f1, rne # perform operation
fadd.h f4, f10, f1, rtz # perform operation
fadd.h f4, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x10, 0xf551cd13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fadd.h f10, f18, f14, dyn # perform operation
fadd.h f10, f18, f14, rdn # perform operation
fadd.h f10, f18, f14, rmm # perform operation
fadd.h f10, f18, f14, rne # perform operation
fadd.h f10, f18, f14, rtz # perform operation
fadd.h f10, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x11, 0xb61897b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fadd.h f11, f15, f12, dyn # perform operation
fadd.h f11, f15, f12, rdn # perform operation
fadd.h f11, f15, f12, rmm # perform operation
fadd.h f11, f15, f12, rne # perform operation
fadd.h f11, f15, f12, rtz # perform operation
fadd.h f11, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x31, 0x64302272 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fadd.h f31, f17, f11, dyn # perform operation
fadd.h f31, f17, f11, rdn # perform operation
fadd.h f31, f17, f11, rmm # perform operation
fadd.h f31, f17, f11, rne # perform operation
fadd.h f31, f17, f11, rtz # perform operation
fadd.h f31, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x11, 0xc84ef397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fadd.h f11, f26, f14, dyn # perform operation
fadd.h f11, f26, f14, rdn # perform operation
fadd.h f11, f26, f14, rmm # perform operation
fadd.h f11, f26, f14, rne # perform operation
fadd.h f11, f26, f14, rtz # perform operation
fadd.h f11, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x15, 0x5c80c8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fadd.h f15, f11, f21, dyn # perform operation
fadd.h f15, f11, f21, rdn # perform operation
fadd.h f15, f11, f21, rmm # perform operation
fadd.h f15, f11, f21, rne # perform operation
fadd.h f15, f11, f21, rtz # perform operation
fadd.h f15, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x29, 0x93b53b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fadd.h f29, f4, f7, dyn # perform operation
fadd.h f29, f4, f7, rdn # perform operation
fadd.h f29, f4, f7, rmm # perform operation
fadd.h f29, f4, f7, rne # perform operation
fadd.h f29, f4, f7, rtz # perform operation
fadd.h f29, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x8, 0xbf94ea8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fadd.h f8, f17, f10, dyn # perform operation
fadd.h f8, f17, f10, rdn # perform operation
fadd.h f8, f17, f10, rmm # perform operation
fadd.h f8, f17, f10, rne # perform operation
fadd.h f8, f17, f10, rtz # perform operation
fadd.h f8, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x7, 0xb9337fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fadd.h f7, f23, f22, dyn # perform operation
fadd.h f7, f23, f22, rdn # perform operation
fadd.h f7, f23, f22, rmm # perform operation
fadd.h f7, f23, f22, rne # perform operation
fadd.h f7, f23, f22, rtz # perform operation
fadd.h f7, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x24, 0xd2388278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fadd.h f24, f21, f11, dyn # perform operation
fadd.h f24, f21, f11, rdn # perform operation
fadd.h f24, f21, f11, rmm # perform operation
fadd.h f24, f21, f11, rne # perform operation
fadd.h f24, f21, f11, rtz # perform operation
fadd.h f24, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x22, 0xb86cf7ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fadd.h f22, f30, f2, dyn # perform operation
fadd.h f22, f30, f2, rdn # perform operation
fadd.h f22, f30, f2, rmm # perform operation
fadd.h f22, f30, f2, rne # perform operation
fadd.h f22, f30, f2, rtz # perform operation
fadd.h f22, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x20, 0x77c44325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f20, f14, f15, dyn # perform operation
fadd.h f20, f14, f15, rdn # perform operation
fadd.h f20, f14, f15, rmm # perform operation
fadd.h f20, f14, f15, rne # perform operation
fadd.h f20, f14, f15, rtz # perform operation
fadd.h f20, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x15, 0x7157d599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fadd.h f15, f29, f12, dyn # perform operation
fadd.h f15, f29, f12, rdn # perform operation
fadd.h f15, f29, f12, rmm # perform operation
fadd.h f15, f29, f12, rne # perform operation
fadd.h f15, f29, f12, rtz # perform operation
fadd.h f15, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x1, 0xc2d94f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fadd.h f1, f21, f11, dyn # perform operation
fadd.h f1, f21, f11, rdn # perform operation
fadd.h f1, f21, f11, rmm # perform operation
fadd.h f1, f21, f11, rne # perform operation
fadd.h f1, f21, f11, rtz # perform operation
fadd.h f1, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x25, 0x982a9abc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fadd.h f25, f27, f16, dyn # perform operation
fadd.h f25, f27, f16, rdn # perform operation
fadd.h f25, f27, f16, rmm # perform operation
fadd.h f25, f27, f16, rne # perform operation
fadd.h f25, f27, f16, rtz # perform operation
fadd.h f25, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x14, 0x11758e74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fadd.h f14, f20, f25, dyn # perform operation
fadd.h f14, f20, f25, rdn # perform operation
fadd.h f14, f20, f25, rmm # perform operation
fadd.h f14, f20, f25, rne # perform operation
fadd.h f14, f20, f25, rtz # perform operation
fadd.h f14, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x14, 0x94cab64f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fadd.h f14, f15, f23, dyn # perform operation
fadd.h f14, f15, f23, rdn # perform operation
fadd.h f14, f15, f23, rmm # perform operation
fadd.h f14, f15, f23, rne # perform operation
fadd.h f14, f15, f23, rtz # perform operation
fadd.h f14, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x2, 0x4ecd192b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fadd.h f2, f23, f16, dyn # perform operation
fadd.h f2, f23, f16, rdn # perform operation
fadd.h f2, f23, f16, rmm # perform operation
fadd.h f2, f23, f16, rne # perform operation
fadd.h f2, f23, f16, rtz # perform operation
fadd.h f2, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x1, 0xf8a20eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fadd.h f1, f10, f13, dyn # perform operation
fadd.h f1, f10, f13, rdn # perform operation
fadd.h f1, f10, f13, rmm # perform operation
fadd.h f1, f10, f13, rne # perform operation
fadd.h f1, f10, f13, rtz # perform operation
fadd.h f1, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x4, 0xf318b729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fadd.h f4, f3, f9, dyn # perform operation
fadd.h f4, f3, f9, rdn # perform operation
fadd.h f4, f3, f9, rmm # perform operation
fadd.h f4, f3, f9, rne # perform operation
fadd.h f4, f3, f9, rtz # perform operation
fadd.h f4, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x6, 0xd300b288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fadd.h f6, f16, f7, dyn # perform operation
fadd.h f6, f16, f7, rdn # perform operation
fadd.h f6, f16, f7, rmm # perform operation
fadd.h f6, f16, f7, rne # perform operation
fadd.h f6, f16, f7, rtz # perform operation
fadd.h f6, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x19, 0x1c4ef6e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fadd.h f19, f31, f12, dyn # perform operation
fadd.h f19, f31, f12, rdn # perform operation
fadd.h f19, f31, f12, rmm # perform operation
fadd.h f19, f31, f12, rne # perform operation
fadd.h f19, f31, f12, rtz # perform operation
fadd.h f19, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x11, 0x44ff3cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fadd.h f11, f9, f24, dyn # perform operation
fadd.h f11, f9, f24, rdn # perform operation
fadd.h f11, f9, f24, rmm # perform operation
fadd.h f11, f9, f24, rne # perform operation
fadd.h f11, f9, f24, rtz # perform operation
fadd.h f11, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x21, 0x1accd04b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fadd.h f21, f27, f30, dyn # perform operation
fadd.h f21, f27, f30, rdn # perform operation
fadd.h f21, f27, f30, rmm # perform operation
fadd.h f21, f27, f30, rne # perform operation
fadd.h f21, f27, f30, rtz # perform operation
fadd.h f21, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x28, 0x70ee1075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fadd.h f28, f8, f31, dyn # perform operation
fadd.h f28, f8, f31, rdn # perform operation
fadd.h f28, f8, f31, rmm # perform operation
fadd.h f28, f8, f31, rne # perform operation
fadd.h f28, f8, f31, rtz # perform operation
fadd.h f28, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x12, 0x6201b2a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fadd.h f12, f24, f11, dyn # perform operation
fadd.h f12, f24, f11, rdn # perform operation
fadd.h f12, f24, f11, rmm # perform operation
fadd.h f12, f24, f11, rne # perform operation
fadd.h f12, f24, f11, rtz # perform operation
fadd.h f12, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x1, 0x384c57a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fadd.h f1, f10, f20, dyn # perform operation
fadd.h f1, f10, f20, rdn # perform operation
fadd.h f1, f10, f20, rmm # perform operation
fadd.h f1, f10, f20, rne # perform operation
fadd.h f1, f10, f20, rtz # perform operation
fadd.h f1, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x2, 0x34e71079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fadd.h f2, f14, f17, dyn # perform operation
fadd.h f2, f14, f17, rdn # perform operation
fadd.h f2, f14, f17, rmm # perform operation
fadd.h f2, f14, f17, rne # perform operation
fadd.h f2, f14, f17, rtz # perform operation
fadd.h f2, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x4, 0xd4160642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fadd.h f4, f28, f11, dyn # perform operation
fadd.h f4, f28, f11, rdn # perform operation
fadd.h f4, f28, f11, rmm # perform operation
fadd.h f4, f28, f11, rne # perform operation
fadd.h f4, f28, f11, rtz # perform operation
fadd.h f4, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x9, 0x03e97a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fadd.h f9, f7, f30, dyn # perform operation
fadd.h f9, f7, f30, rdn # perform operation
fadd.h f9, f7, f30, rmm # perform operation
fadd.h f9, f7, f30, rne # perform operation
fadd.h f9, f7, f30, rtz # perform operation
fadd.h f9, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x4, 0xc30c57f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fadd.h f4, f30, f12, dyn # perform operation
fadd.h f4, f30, f12, rdn # perform operation
fadd.h f4, f30, f12, rmm # perform operation
fadd.h f4, f30, f12, rne # perform operation
fadd.h f4, f30, f12, rtz # perform operation
fadd.h f4, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x25, 0x1464b764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fadd.h f25, f18, f14, dyn # perform operation
fadd.h f25, f18, f14, rdn # perform operation
fadd.h f25, f18, f14, rmm # perform operation
fadd.h f25, f18, f14, rne # perform operation
fadd.h f25, f18, f14, rtz # perform operation
fadd.h f25, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x16, 0x738522f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fadd.h f16, f17, f6, dyn # perform operation
fadd.h f16, f17, f6, rdn # perform operation
fadd.h f16, f17, f6, rmm # perform operation
fadd.h f16, f17, f6, rne # perform operation
fadd.h f16, f17, f6, rtz # perform operation
fadd.h f16, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x17, 0x2be92d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fadd.h f17, f22, f20, dyn # perform operation
fadd.h f17, f22, f20, rdn # perform operation
fadd.h f17, f22, f20, rmm # perform operation
fadd.h f17, f22, f20, rne # perform operation
fadd.h f17, f22, f20, rtz # perform operation
fadd.h f17, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x14, 0xc620db6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fadd.h f14, f31, f9, dyn # perform operation
fadd.h f14, f31, f9, rdn # perform operation
fadd.h f14, f31, f9, rmm # perform operation
fadd.h f14, f31, f9, rne # perform operation
fadd.h f14, f31, f9, rtz # perform operation
fadd.h f14, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x13, 0x7d287916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fadd.h f13, f24, f31, dyn # perform operation
fadd.h f13, f24, f31, rdn # perform operation
fadd.h f13, f24, f31, rmm # perform operation
fadd.h f13, f24, f31, rne # perform operation
fadd.h f13, f24, f31, rtz # perform operation
fadd.h f13, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x19, 0x04ac2b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fadd.h f19, f20, f18, dyn # perform operation
fadd.h f19, f20, f18, rdn # perform operation
fadd.h f19, f20, f18, rmm # perform operation
fadd.h f19, f20, f18, rne # perform operation
fadd.h f19, f20, f18, rtz # perform operation
fadd.h f19, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x21, 0xe57de90f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fadd.h f21, f5, f25, dyn # perform operation
fadd.h f21, f5, f25, rdn # perform operation
fadd.h f21, f5, f25, rmm # perform operation
fadd.h f21, f5, f25, rne # perform operation
fadd.h f21, f5, f25, rtz # perform operation
fadd.h f21, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x13, 0x56d10d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fadd.h f13, f6, f24, dyn # perform operation
fadd.h f13, f6, f24, rdn # perform operation
fadd.h f13, f6, f24, rmm # perform operation
fadd.h f13, f6, f24, rne # perform operation
fadd.h f13, f6, f24, rtz # perform operation
fadd.h f13, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x10, 0x622eea42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fadd.h f10, f28, f6, dyn # perform operation
fadd.h f10, f28, f6, rdn # perform operation
fadd.h f10, f28, f6, rmm # perform operation
fadd.h f10, f28, f6, rne # perform operation
fadd.h f10, f28, f6, rtz # perform operation
fadd.h f10, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x25, 0xb8dfee9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fadd.h f25, f2, f20, dyn # perform operation
fadd.h f25, f2, f20, rdn # perform operation
fadd.h f25, f2, f20, rmm # perform operation
fadd.h f25, f2, f20, rne # perform operation
fadd.h f25, f2, f20, rtz # perform operation
fadd.h f25, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x23, 0x623843bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fadd.h f23, f21, f9, dyn # perform operation
fadd.h f23, f21, f9, rdn # perform operation
fadd.h f23, f21, f9, rmm # perform operation
fadd.h f23, f21, f9, rne # perform operation
fadd.h f23, f21, f9, rtz # perform operation
fadd.h f23, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x20, 0x850bc5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fadd.h f20, f7, f9, dyn # perform operation
fadd.h f20, f7, f9, rdn # perform operation
fadd.h f20, f7, f9, rmm # perform operation
fadd.h f20, f7, f9, rne # perform operation
fadd.h f20, f7, f9, rtz # perform operation
fadd.h f20, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x7, 0xbe5a492a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fadd.h f7, f26, f1, dyn # perform operation
fadd.h f7, f26, f1, rdn # perform operation
fadd.h f7, f26, f1, rmm # perform operation
fadd.h f7, f26, f1, rne # perform operation
fadd.h f7, f26, f1, rtz # perform operation
fadd.h f7, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x4, 0x26bf8496 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fadd.h f4, f3, f23, dyn # perform operation
fadd.h f4, f3, f23, rdn # perform operation
fadd.h f4, f3, f23, rmm # perform operation
fadd.h f4, f3, f23, rne # perform operation
fadd.h f4, f3, f23, rtz # perform operation
fadd.h f4, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x27, 0x278211ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fadd.h f27, f22, f16, dyn # perform operation
fadd.h f27, f22, f16, rdn # perform operation
fadd.h f27, f22, f16, rmm # perform operation
fadd.h f27, f22, f16, rne # perform operation
fadd.h f27, f22, f16, rtz # perform operation
fadd.h f27, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x24, 0x16db0f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fadd.h f24, f1, f17, dyn # perform operation
fadd.h f24, f1, f17, rdn # perform operation
fadd.h f24, f1, f17, rmm # perform operation
fadd.h f24, f1, f17, rne # perform operation
fadd.h f24, f1, f17, rtz # perform operation
fadd.h f24, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x17, 0xab7640b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fadd.h f17, f7, f10, dyn # perform operation
fadd.h f17, f7, f10, rdn # perform operation
fadd.h f17, f7, f10, rmm # perform operation
fadd.h f17, f7, f10, rne # perform operation
fadd.h f17, f7, f10, rtz # perform operation
fadd.h f17, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x11, 0x2b2d9ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fadd.h f11, f26, f17, dyn # perform operation
fadd.h f11, f26, f17, rdn # perform operation
fadd.h f11, f26, f17, rmm # perform operation
fadd.h f11, f26, f17, rne # perform operation
fadd.h f11, f26, f17, rtz # perform operation
fadd.h f11, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x11, 0x57387883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fadd.h f11, f4, f6, dyn # perform operation
fadd.h f11, f4, f6, rdn # perform operation
fadd.h f11, f4, f6, rmm # perform operation
fadd.h f11, f4, f6, rne # perform operation
fadd.h f11, f4, f6, rtz # perform operation
fadd.h f11, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x22, 0x891f5837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fadd.h f22, f30, f26, dyn # perform operation
fadd.h f22, f30, f26, rdn # perform operation
fadd.h f22, f30, f26, rmm # perform operation
fadd.h f22, f30, f26, rne # perform operation
fadd.h f22, f30, f26, rtz # perform operation
fadd.h f22, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x18, 0x04bdffc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fadd.h f18, f4, f23, dyn # perform operation
fadd.h f18, f4, f23, rdn # perform operation
fadd.h f18, f4, f23, rmm # perform operation
fadd.h f18, f4, f23, rne # perform operation
fadd.h f18, f4, f23, rtz # perform operation
fadd.h f18, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x16, 0x5b61877d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fadd.h f16, f12, f29, dyn # perform operation
fadd.h f16, f12, f29, rdn # perform operation
fadd.h f16, f12, f29, rmm # perform operation
fadd.h f16, f12, f29, rne # perform operation
fadd.h f16, f12, f29, rtz # perform operation
fadd.h f16, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x25, 0xeb9215f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fadd.h f25, f2, f9, dyn # perform operation
fadd.h f25, f2, f9, rdn # perform operation
fadd.h f25, f2, f9, rmm # perform operation
fadd.h f25, f2, f9, rne # perform operation
fadd.h f25, f2, f9, rtz # perform operation
fadd.h f25, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x5, 0x692460ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fadd.h f5, f8, f4, dyn # perform operation
fadd.h f5, f8, f4, rdn # perform operation
fadd.h f5, f8, f4, rmm # perform operation
fadd.h f5, f8, f4, rne # perform operation
fadd.h f5, f8, f4, rtz # perform operation
fadd.h f5, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x4, 0x14e5af62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fadd.h f4, f8, f3, dyn # perform operation
fadd.h f4, f8, f3, rdn # perform operation
fadd.h f4, f8, f3, rmm # perform operation
fadd.h f4, f8, f3, rne # perform operation
fadd.h f4, f8, f3, rtz # perform operation
fadd.h f4, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x6, 0xf4842e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f6, f1, f2, dyn # perform operation
fadd.h f6, f1, f2, rdn # perform operation
fadd.h f6, f1, f2, rmm # perform operation
fadd.h f6, f1, f2, rne # perform operation
fadd.h f6, f1, f2, rtz # perform operation
fadd.h f6, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x10, 0xe7afe1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fadd.h f10, f31, f25, dyn # perform operation
fadd.h f10, f31, f25, rdn # perform operation
fadd.h f10, f31, f25, rmm # perform operation
fadd.h f10, f31, f25, rne # perform operation
fadd.h f10, f31, f25, rtz # perform operation
fadd.h f10, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x7, 0xee134d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fadd.h f7, f13, f14, dyn # perform operation
fadd.h f7, f13, f14, rdn # perform operation
fadd.h f7, f13, f14, rmm # perform operation
fadd.h f7, f13, f14, rne # perform operation
fadd.h f7, f13, f14, rtz # perform operation
fadd.h f7, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x6, 0x7a569f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fadd.h f6, f8, f16, dyn # perform operation
fadd.h f6, f8, f16, rdn # perform operation
fadd.h f6, f8, f16, rmm # perform operation
fadd.h f6, f8, f16, rne # perform operation
fadd.h f6, f8, f16, rtz # perform operation
fadd.h f6, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x22, 0x6e7b8fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fadd.h f22, f8, f10, dyn # perform operation
fadd.h f22, f8, f10, rdn # perform operation
fadd.h f22, f8, f10, rmm # perform operation
fadd.h f22, f8, f10, rne # perform operation
fadd.h f22, f8, f10, rtz # perform operation
fadd.h f22, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x12, 0x5fb0bb8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fadd.h f12, f19, f2, dyn # perform operation
fadd.h f12, f19, f2, rdn # perform operation
fadd.h f12, f19, f2, rmm # perform operation
fadd.h f12, f19, f2, rne # perform operation
fadd.h f12, f19, f2, rtz # perform operation
fadd.h f12, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x5, 0xcabeda95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fadd.h f5, f15, f16, dyn # perform operation
fadd.h f5, f15, f16, rdn # perform operation
fadd.h f5, f15, f16, rmm # perform operation
fadd.h f5, f15, f16, rne # perform operation
fadd.h f5, f15, f16, rtz # perform operation
fadd.h f5, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x23, 0x4ca4e2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fadd.h f23, f19, f13, dyn # perform operation
fadd.h f23, f19, f13, rdn # perform operation
fadd.h f23, f19, f13, rmm # perform operation
fadd.h f23, f19, f13, rne # perform operation
fadd.h f23, f19, f13, rtz # perform operation
fadd.h f23, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x9, 0xc66927cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fadd.h f9, f25, f14, dyn # perform operation
fadd.h f9, f25, f14, rdn # perform operation
fadd.h f9, f25, f14, rmm # perform operation
fadd.h f9, f25, f14, rne # perform operation
fadd.h f9, f25, f14, rtz # perform operation
fadd.h f9, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x20, 0x39a77615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fadd.h f20, f28, f21, dyn # perform operation
fadd.h f20, f28, f21, rdn # perform operation
fadd.h f20, f28, f21, rmm # perform operation
fadd.h f20, f28, f21, rne # perform operation
fadd.h f20, f28, f21, rtz # perform operation
fadd.h f20, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x1, 0x592a9d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f1, f4, f15, dyn # perform operation
fadd.h f1, f4, f15, rdn # perform operation
fadd.h f1, f4, f15, rmm # perform operation
fadd.h f1, f4, f15, rne # perform operation
fadd.h f1, f4, f15, rtz # perform operation
fadd.h f1, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x15, 0x6031d94d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f15, f26, f13, dyn # perform operation
fadd.h f15, f26, f13, rdn # perform operation
fadd.h f15, f26, f13, rmm # perform operation
fadd.h f15, f26, f13, rne # perform operation
fadd.h f15, f26, f13, rtz # perform operation
fadd.h f15, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x7, 0xaeb385e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f7, f30, f3, dyn # perform operation
fadd.h f7, f30, f3, rdn # perform operation
fadd.h f7, f30, f3, rmm # perform operation
fadd.h f7, f30, f3, rne # perform operation
fadd.h f7, f30, f3, rtz # perform operation
fadd.h f7, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x29, 0x21304cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fadd.h f29, f10, f11, dyn # perform operation
fadd.h f29, f10, f11, rdn # perform operation
fadd.h f29, f10, f11, rmm # perform operation
fadd.h f29, f10, f11, rne # perform operation
fadd.h f29, f10, f11, rtz # perform operation
fadd.h f29, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x10, 0xe8d57dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fadd.h f10, f30, f11, dyn # perform operation
fadd.h f10, f30, f11, rdn # perform operation
fadd.h f10, f30, f11, rmm # perform operation
fadd.h f10, f30, f11, rne # perform operation
fadd.h f10, f30, f11, rtz # perform operation
fadd.h f10, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x5, 0xe41fc227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fadd.h f5, f27, f19, dyn # perform operation
fadd.h f5, f27, f19, rdn # perform operation
fadd.h f5, f27, f19, rmm # perform operation
fadd.h f5, f27, f19, rne # perform operation
fadd.h f5, f27, f19, rtz # perform operation
fadd.h f5, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x28, 0x8949a393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fadd.h f28, f7, f1, dyn # perform operation
fadd.h f28, f7, f1, rdn # perform operation
fadd.h f28, f7, f1, rmm # perform operation
fadd.h f28, f7, f1, rne # perform operation
fadd.h f28, f7, f1, rtz # perform operation
fadd.h f28, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x16, 0x5701c4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fadd.h f16, f6, f7, dyn # perform operation
fadd.h f16, f6, f7, rdn # perform operation
fadd.h f16, f6, f7, rmm # perform operation
fadd.h f16, f6, f7, rne # perform operation
fadd.h f16, f6, f7, rtz # perform operation
fadd.h f16, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x7, 0x449ab1c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fadd.h f7, f20, f10, dyn # perform operation
fadd.h f7, f20, f10, rdn # perform operation
fadd.h f7, f20, f10, rmm # perform operation
fadd.h f7, f20, f10, rne # perform operation
fadd.h f7, f20, f10, rtz # perform operation
fadd.h f7, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x7, 0x9a7d8031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fadd.h f7, f9, f24, dyn # perform operation
fadd.h f7, f9, f24, rdn # perform operation
fadd.h f7, f9, f24, rmm # perform operation
fadd.h f7, f9, f24, rne # perform operation
fadd.h f7, f9, f24, rtz # perform operation
fadd.h f7, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x28, 0x1f942da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fadd.h f28, f24, f2, dyn # perform operation
fadd.h f28, f24, f2, rdn # perform operation
fadd.h f28, f24, f2, rmm # perform operation
fadd.h f28, f24, f2, rne # perform operation
fadd.h f28, f24, f2, rtz # perform operation
fadd.h f28, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x6, 0xcbd1bf23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f6, f17, f19, dyn # perform operation
fadd.h f6, f17, f19, rdn # perform operation
fadd.h f6, f17, f19, rmm # perform operation
fadd.h f6, f17, f19, rne # perform operation
fadd.h f6, f17, f19, rtz # perform operation
fadd.h f6, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x2, 0xadd34b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fadd.h f2, f10, f7, dyn # perform operation
fadd.h f2, f10, f7, rdn # perform operation
fadd.h f2, f10, f7, rmm # perform operation
fadd.h f2, f10, f7, rne # perform operation
fadd.h f2, f10, f7, rtz # perform operation
fadd.h f2, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x9, 0x9fff7452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fadd.h f9, f14, f12, dyn # perform operation
fadd.h f9, f14, f12, rdn # perform operation
fadd.h f9, f14, f12, rmm # perform operation
fadd.h f9, f14, f12, rne # perform operation
fadd.h f9, f14, f12, rtz # perform operation
fadd.h f9, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x28, 0x950280ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fadd.h f28, f21, f8, dyn # perform operation
fadd.h f28, f21, f8, rdn # perform operation
fadd.h f28, f21, f8, rmm # perform operation
fadd.h f28, f21, f8, rne # perform operation
fadd.h f28, f21, f8, rtz # perform operation
fadd.h f28, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x30, 0x3a78ff59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fadd.h f30, f22, f13, dyn # perform operation
fadd.h f30, f22, f13, rdn # perform operation
fadd.h f30, f22, f13, rmm # perform operation
fadd.h f30, f22, f13, rne # perform operation
fadd.h f30, f22, f13, rtz # perform operation
fadd.h f30, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x25, 0x69e1b21e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fadd.h f25, f19, f14, dyn # perform operation
fadd.h f25, f19, f14, rdn # perform operation
fadd.h f25, f19, f14, rmm # perform operation
fadd.h f25, f19, f14, rne # perform operation
fadd.h f25, f19, f14, rtz # perform operation
fadd.h f25, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x28, 0x60c54ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fadd.h f28, f1, f29, dyn # perform operation
fadd.h f28, f1, f29, rdn # perform operation
fadd.h f28, f1, f29, rmm # perform operation
fadd.h f28, f1, f29, rne # perform operation
fadd.h f28, f1, f29, rtz # perform operation
fadd.h f28, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x8, 0x5e584afe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fadd.h f8, f3, f5, dyn # perform operation
fadd.h f8, f3, f5, rdn # perform operation
fadd.h f8, f3, f5, rmm # perform operation
fadd.h f8, f3, f5, rne # perform operation
fadd.h f8, f3, f5, rtz # perform operation
fadd.h f8, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x9, 0xa03ba314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fadd.h f9, f22, f3, dyn # perform operation
fadd.h f9, f22, f3, rdn # perform operation
fadd.h f9, f22, f3, rmm # perform operation
fadd.h f9, f22, f3, rne # perform operation
fadd.h f9, f22, f3, rtz # perform operation
fadd.h f9, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x8, 0x556cdbb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fadd.h f8, f17, f5, dyn # perform operation
fadd.h f8, f17, f5, rdn # perform operation
fadd.h f8, f17, f5, rmm # perform operation
fadd.h f8, f17, f5, rne # perform operation
fadd.h f8, f17, f5, rtz # perform operation
fadd.h f8, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x21, 0xb6834418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fadd.h f21, f14, f11, dyn # perform operation
fadd.h f21, f14, f11, rdn # perform operation
fadd.h f21, f14, f11, rmm # perform operation
fadd.h f21, f14, f11, rne # perform operation
fadd.h f21, f14, f11, rtz # perform operation
fadd.h f21, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x23, 0x7438bb07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fadd.h f23, f15, f6, dyn # perform operation
fadd.h f23, f15, f6, rdn # perform operation
fadd.h f23, f15, f6, rmm # perform operation
fadd.h f23, f15, f6, rne # perform operation
fadd.h f23, f15, f6, rtz # perform operation
fadd.h f23, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x4, 0xd53e11b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fadd.h f4, f29, f16, dyn # perform operation
fadd.h f4, f29, f16, rdn # perform operation
fadd.h f4, f29, f16, rmm # perform operation
fadd.h f4, f29, f16, rne # perform operation
fadd.h f4, f29, f16, rtz # perform operation
fadd.h f4, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x29, 0x259e203b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fadd.h f29, f20, f1, dyn # perform operation
fadd.h f29, f20, f1, rdn # perform operation
fadd.h f29, f20, f1, rmm # perform operation
fadd.h f29, f20, f1, rne # perform operation
fadd.h f29, f20, f1, rtz # perform operation
fadd.h f29, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x9, 0xd2be4cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fadd.h f9, f19, f26, dyn # perform operation
fadd.h f9, f19, f26, rdn # perform operation
fadd.h f9, f19, f26, rmm # perform operation
fadd.h f9, f19, f26, rne # perform operation
fadd.h f9, f19, f26, rtz # perform operation
fadd.h f9, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x3, 0xc3f8640d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fadd.h f3, f24, f9, dyn # perform operation
fadd.h f3, f24, f9, rdn # perform operation
fadd.h f3, f24, f9, rmm # perform operation
fadd.h f3, f24, f9, rne # perform operation
fadd.h f3, f24, f9, rtz # perform operation
fadd.h f3, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x11, 0xfbeb6941 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fadd.h f11, f22, f24, dyn # perform operation
fadd.h f11, f22, f24, rdn # perform operation
fadd.h f11, f22, f24, rmm # perform operation
fadd.h f11, f22, f24, rne # perform operation
fadd.h f11, f22, f24, rtz # perform operation
fadd.h f11, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x24, 0x76f6da87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fadd.h f24, f10, f6, dyn # perform operation
fadd.h f24, f10, f6, rdn # perform operation
fadd.h f24, f10, f6, rmm # perform operation
fadd.h f24, f10, f6, rne # perform operation
fadd.h f24, f10, f6, rtz # perform operation
fadd.h f24, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x19, 0x95de9a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fadd.h f19, f9, f27, dyn # perform operation
fadd.h f19, f9, f27, rdn # perform operation
fadd.h f19, f9, f27, rmm # perform operation
fadd.h f19, f9, f27, rne # perform operation
fadd.h f19, f9, f27, rtz # perform operation
fadd.h f19, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x11, 0x7d08d8df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fadd.h f11, f8, f30, dyn # perform operation
fadd.h f11, f8, f30, rdn # perform operation
fadd.h f11, f8, f30, rmm # perform operation
fadd.h f11, f8, f30, rne # perform operation
fadd.h f11, f8, f30, rtz # perform operation
fadd.h f11, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x12, 0xad1cf8f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f12, f31, f20, dyn # perform operation
fadd.h f12, f31, f20, rdn # perform operation
fadd.h f12, f31, f20, rmm # perform operation
fadd.h f12, f31, f20, rne # perform operation
fadd.h f12, f31, f20, rtz # perform operation
fadd.h f12, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x13, 0xf90d60fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fadd.h f13, f27, f6, dyn # perform operation
fadd.h f13, f27, f6, rdn # perform operation
fadd.h f13, f27, f6, rmm # perform operation
fadd.h f13, f27, f6, rne # perform operation
fadd.h f13, f27, f6, rtz # perform operation
fadd.h f13, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x11, 0x6ba00dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fadd.h f11, f7, f16, dyn # perform operation
fadd.h f11, f7, f16, rdn # perform operation
fadd.h f11, f7, f16, rmm # perform operation
fadd.h f11, f7, f16, rne # perform operation
fadd.h f11, f7, f16, rtz # perform operation
fadd.h f11, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x4, 0x101c97fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fadd.h f4, f28, f29, dyn # perform operation
fadd.h f4, f28, f29, rdn # perform operation
fadd.h f4, f28, f29, rmm # perform operation
fadd.h f4, f28, f29, rne # perform operation
fadd.h f4, f28, f29, rtz # perform operation
fadd.h f4, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x25, 0x72c42fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fadd.h f25, f8, f10, dyn # perform operation
fadd.h f25, f8, f10, rdn # perform operation
fadd.h f25, f8, f10, rmm # perform operation
fadd.h f25, f8, f10, rne # perform operation
fadd.h f25, f8, f10, rtz # perform operation
fadd.h f25, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x3, 0xe55a6319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fadd.h f3, f18, f16, dyn # perform operation
fadd.h f3, f18, f16, rdn # perform operation
fadd.h f3, f18, f16, rmm # perform operation
fadd.h f3, f18, f16, rne # perform operation
fadd.h f3, f18, f16, rtz # perform operation
fadd.h f3, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x28, 0x32101e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fadd.h f28, f3, f10, dyn # perform operation
fadd.h f28, f3, f10, rdn # perform operation
fadd.h f28, f3, f10, rmm # perform operation
fadd.h f28, f3, f10, rne # perform operation
fadd.h f28, f3, f10, rtz # perform operation
fadd.h f28, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x24, 0xf85155ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fadd.h f24, f6, f12, dyn # perform operation
fadd.h f24, f6, f12, rdn # perform operation
fadd.h f24, f6, f12, rmm # perform operation
fadd.h f24, f6, f12, rne # perform operation
fadd.h f24, f6, f12, rtz # perform operation
fadd.h f24, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x2, 0xe9726f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fadd.h f2, f8, f14, dyn # perform operation
fadd.h f2, f8, f14, rdn # perform operation
fadd.h f2, f8, f14, rmm # perform operation
fadd.h f2, f8, f14, rne # perform operation
fadd.h f2, f8, f14, rtz # perform operation
fadd.h f2, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x7, 0x0af01460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fadd.h f7, f19, f18, dyn # perform operation
fadd.h f7, f19, f18, rdn # perform operation
fadd.h f7, f19, f18, rmm # perform operation
fadd.h f7, f19, f18, rne # perform operation
fadd.h f7, f19, f18, rtz # perform operation
fadd.h f7, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x8, 0x76f32274 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fadd.h f8, f1, f11, dyn # perform operation
fadd.h f8, f1, f11, rdn # perform operation
fadd.h f8, f1, f11, rmm # perform operation
fadd.h f8, f1, f11, rne # perform operation
fadd.h f8, f1, f11, rtz # perform operation
fadd.h f8, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x16, 0x96cddf3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fadd.h f16, f18, f13, dyn # perform operation
fadd.h f16, f18, f13, rdn # perform operation
fadd.h f16, f18, f13, rmm # perform operation
fadd.h f16, f18, f13, rne # perform operation
fadd.h f16, f18, f13, rtz # perform operation
fadd.h f16, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x30, 0xed82a952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fadd.h f30, f16, f26, dyn # perform operation
fadd.h f30, f16, f26, rdn # perform operation
fadd.h f30, f16, f26, rmm # perform operation
fadd.h f30, f16, f26, rne # perform operation
fadd.h f30, f16, f26, rtz # perform operation
fadd.h f30, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x12, 0xf8c6b4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fadd.h f12, f14, f9, dyn # perform operation
fadd.h f12, f14, f9, rdn # perform operation
fadd.h f12, f14, f9, rmm # perform operation
fadd.h f12, f14, f9, rne # perform operation
fadd.h f12, f14, f9, rtz # perform operation
fadd.h f12, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x11, 0x2832b459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fadd.h f11, f9, f17, dyn # perform operation
fadd.h f11, f9, f17, rdn # perform operation
fadd.h f11, f9, f17, rmm # perform operation
fadd.h f11, f9, f17, rne # perform operation
fadd.h f11, f9, f17, rtz # perform operation
fadd.h f11, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x18, 0xffb77199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fadd.h f18, f4, f21, dyn # perform operation
fadd.h f18, f4, f21, rdn # perform operation
fadd.h f18, f4, f21, rmm # perform operation
fadd.h f18, f4, f21, rne # perform operation
fadd.h f18, f4, f21, rtz # perform operation
fadd.h f18, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x30, 0xc404c0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fadd.h f30, f16, f3, dyn # perform operation
fadd.h f30, f16, f3, rdn # perform operation
fadd.h f30, f16, f3, rmm # perform operation
fadd.h f30, f16, f3, rne # perform operation
fadd.h f30, f16, f3, rtz # perform operation
fadd.h f30, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x29, 0x136c6170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fadd.h f29, f26, f27, dyn # perform operation
fadd.h f29, f26, f27, rdn # perform operation
fadd.h f29, f26, f27, rmm # perform operation
fadd.h f29, f26, f27, rne # perform operation
fadd.h f29, f26, f27, rtz # perform operation
fadd.h f29, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x12, 0x1325ff7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fadd.h f12, f18, f13, dyn # perform operation
fadd.h f12, f18, f13, rdn # perform operation
fadd.h f12, f18, f13, rmm # perform operation
fadd.h f12, f18, f13, rne # perform operation
fadd.h f12, f18, f13, rtz # perform operation
fadd.h f12, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x27, 0xdcba4d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fadd.h f27, f11, f25, dyn # perform operation
fadd.h f27, f11, f25, rdn # perform operation
fadd.h f27, f11, f25, rmm # perform operation
fadd.h f27, f11, f25, rne # perform operation
fadd.h f27, f11, f25, rtz # perform operation
fadd.h f27, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x6, 0xca9147fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fadd.h f6, f30, f11, dyn # perform operation
fadd.h f6, f30, f11, rdn # perform operation
fadd.h f6, f30, f11, rmm # perform operation
fadd.h f6, f30, f11, rne # perform operation
fadd.h f6, f30, f11, rtz # perform operation
fadd.h f6, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x31, 0x68293f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fadd.h f31, f18, f23, dyn # perform operation
fadd.h f31, f18, f23, rdn # perform operation
fadd.h f31, f18, f23, rmm # perform operation
fadd.h f31, f18, f23, rne # perform operation
fadd.h f31, f18, f23, rtz # perform operation
fadd.h f31, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x7, 0x52fbd947 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fadd.h f7, f23, f9, dyn # perform operation
fadd.h f7, f23, f9, rdn # perform operation
fadd.h f7, f23, f9, rmm # perform operation
fadd.h f7, f23, f9, rne # perform operation
fadd.h f7, f23, f9, rtz # perform operation
fadd.h f7, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x13, 0xb07f3c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fadd.h f13, f1, f4, dyn # perform operation
fadd.h f13, f1, f4, rdn # perform operation
fadd.h f13, f1, f4, rmm # perform operation
fadd.h f13, f1, f4, rne # perform operation
fadd.h f13, f1, f4, rtz # perform operation
fadd.h f13, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x2, 0x42bb0a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fadd.h f2, f25, f26, dyn # perform operation
fadd.h f2, f25, f26, rdn # perform operation
fadd.h f2, f25, f26, rmm # perform operation
fadd.h f2, f25, f26, rne # perform operation
fadd.h f2, f25, f26, rtz # perform operation
fadd.h f2, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x10, 0xbf0b2556 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fadd.h f10, f22, f24, dyn # perform operation
fadd.h f10, f22, f24, rdn # perform operation
fadd.h f10, f22, f24, rmm # perform operation
fadd.h f10, f22, f24, rne # perform operation
fadd.h f10, f22, f24, rtz # perform operation
fadd.h f10, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x3, 0x75b52e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fadd.h f3, f19, f18, dyn # perform operation
fadd.h f3, f19, f18, rdn # perform operation
fadd.h f3, f19, f18, rmm # perform operation
fadd.h f3, f19, f18, rne # perform operation
fadd.h f3, f19, f18, rtz # perform operation
fadd.h f3, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x26, 0x4497960b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fadd.h f26, f23, f29, dyn # perform operation
fadd.h f26, f23, f29, rdn # perform operation
fadd.h f26, f23, f29, rmm # perform operation
fadd.h f26, f23, f29, rne # perform operation
fadd.h f26, f23, f29, rtz # perform operation
fadd.h f26, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x19, 0x38dd05bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fadd.h f19, f7, f14, dyn # perform operation
fadd.h f19, f7, f14, rdn # perform operation
fadd.h f19, f7, f14, rmm # perform operation
fadd.h f19, f7, f14, rne # perform operation
fadd.h f19, f7, f14, rtz # perform operation
fadd.h f19, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x20, 0xe9afe375 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fadd.h f20, f9, f2, dyn # perform operation
fadd.h f20, f9, f2, rdn # perform operation
fadd.h f20, f9, f2, rmm # perform operation
fadd.h f20, f9, f2, rne # perform operation
fadd.h f20, f9, f2, rtz # perform operation
fadd.h f20, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x15, 0xc008c9c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fadd.h f15, f3, f7, dyn # perform operation
fadd.h f15, f3, f7, rdn # perform operation
fadd.h f15, f3, f7, rmm # perform operation
fadd.h f15, f3, f7, rne # perform operation
fadd.h f15, f3, f7, rtz # perform operation
fadd.h f15, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x19, 0xa344e8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fadd.h f19, f22, f23, dyn # perform operation
fadd.h f19, f22, f23, rdn # perform operation
fadd.h f19, f22, f23, rmm # perform operation
fadd.h f19, f22, f23, rne # perform operation
fadd.h f19, f22, f23, rtz # perform operation
fadd.h f19, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x13, 0xadf813df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fadd.h f13, f21, f16, dyn # perform operation
fadd.h f13, f21, f16, rdn # perform operation
fadd.h f13, f21, f16, rmm # perform operation
fadd.h f13, f21, f16, rne # perform operation
fadd.h f13, f21, f16, rtz # perform operation
fadd.h f13, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x10, 0x84ebcc35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fadd.h f10, f20, f22, dyn # perform operation
fadd.h f10, f20, f22, rdn # perform operation
fadd.h f10, f20, f22, rmm # perform operation
fadd.h f10, f20, f22, rne # perform operation
fadd.h f10, f20, f22, rtz # perform operation
fadd.h f10, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x19, 0xc2f3360c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fadd.h f19, f4, f14, dyn # perform operation
fadd.h f19, f4, f14, rdn # perform operation
fadd.h f19, f4, f14, rmm # perform operation
fadd.h f19, f4, f14, rne # perform operation
fadd.h f19, f4, f14, rtz # perform operation
fadd.h f19, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x20, 0xacc2c47a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fadd.h f20, f13, f19, dyn # perform operation
fadd.h f20, f13, f19, rdn # perform operation
fadd.h f20, f13, f19, rmm # perform operation
fadd.h f20, f13, f19, rne # perform operation
fadd.h f20, f13, f19, rtz # perform operation
fadd.h f20, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x26, 0xf230bc45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fadd.h f26, f31, f3, dyn # perform operation
fadd.h f26, f31, f3, rdn # perform operation
fadd.h f26, f31, f3, rmm # perform operation
fadd.h f26, f31, f3, rne # perform operation
fadd.h f26, f31, f3, rtz # perform operation
fadd.h f26, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x18, 0xc6022414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fadd.h f18, f22, f25, dyn # perform operation
fadd.h f18, f22, f25, rdn # perform operation
fadd.h f18, f22, f25, rmm # perform operation
fadd.h f18, f22, f25, rne # perform operation
fadd.h f18, f22, f25, rtz # perform operation
fadd.h f18, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x2, 0xdcc48ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fadd.h f2, f17, f14, dyn # perform operation
fadd.h f2, f17, f14, rdn # perform operation
fadd.h f2, f17, f14, rmm # perform operation
fadd.h f2, f17, f14, rne # perform operation
fadd.h f2, f17, f14, rtz # perform operation
fadd.h f2, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x12, 0xe60f6403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fadd.h f12, f31, f17, dyn # perform operation
fadd.h f12, f31, f17, rdn # perform operation
fadd.h f12, f31, f17, rmm # perform operation
fadd.h f12, f31, f17, rne # perform operation
fadd.h f12, f31, f17, rtz # perform operation
fadd.h f12, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x5, 0x1add2c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fadd.h f5, f4, f11, dyn # perform operation
fadd.h f5, f4, f11, rdn # perform operation
fadd.h f5, f4, f11, rmm # perform operation
fadd.h f5, f4, f11, rne # perform operation
fadd.h f5, f4, f11, rtz # perform operation
fadd.h f5, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x17, 0x4f8ba16e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fadd.h f17, f18, f15, dyn # perform operation
fadd.h f17, f18, f15, rdn # perform operation
fadd.h f17, f18, f15, rmm # perform operation
fadd.h f17, f18, f15, rne # perform operation
fadd.h f17, f18, f15, rtz # perform operation
fadd.h f17, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x12, 0xb4c3867b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fadd.h f12, f14, f20, dyn # perform operation
fadd.h f12, f14, f20, rdn # perform operation
fadd.h f12, f14, f20, rmm # perform operation
fadd.h f12, f14, f20, rne # perform operation
fadd.h f12, f14, f20, rtz # perform operation
fadd.h f12, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x16, 0x24b6c4c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fadd.h f16, f24, f29, dyn # perform operation
fadd.h f16, f24, f29, rdn # perform operation
fadd.h f16, f24, f29, rmm # perform operation
fadd.h f16, f24, f29, rne # perform operation
fadd.h f16, f24, f29, rtz # perform operation
fadd.h f16, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x7, 0xa4e6911b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fadd.h f7, f2, f21, dyn # perform operation
fadd.h f7, f2, f21, rdn # perform operation
fadd.h f7, f2, f21, rmm # perform operation
fadd.h f7, f2, f21, rne # perform operation
fadd.h f7, f2, f21, rtz # perform operation
fadd.h f7, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x22, 0x1331c2d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fadd.h f22, f25, f5, dyn # perform operation
fadd.h f22, f25, f5, rdn # perform operation
fadd.h f22, f25, f5, rmm # perform operation
fadd.h f22, f25, f5, rne # perform operation
fadd.h f22, f25, f5, rtz # perform operation
fadd.h f22, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x8, 0xe39b2080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fadd.h f8, f17, f10, dyn # perform operation
fadd.h f8, f17, f10, rdn # perform operation
fadd.h f8, f17, f10, rmm # perform operation
fadd.h f8, f17, f10, rne # perform operation
fadd.h f8, f17, f10, rtz # perform operation
fadd.h f8, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x25, 0x165dbfce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fadd.h f25, f8, f28, dyn # perform operation
fadd.h f25, f8, f28, rdn # perform operation
fadd.h f25, f8, f28, rmm # perform operation
fadd.h f25, f8, f28, rne # perform operation
fadd.h f25, f8, f28, rtz # perform operation
fadd.h f25, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x12, 0x6a6be5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fadd.h f12, f17, f20, dyn # perform operation
fadd.h f12, f17, f20, rdn # perform operation
fadd.h f12, f17, f20, rmm # perform operation
fadd.h f12, f17, f20, rne # perform operation
fadd.h f12, f17, f20, rtz # perform operation
fadd.h f12, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x29, 0xd82b042a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fadd.h f29, f3, f14, dyn # perform operation
fadd.h f29, f3, f14, rdn # perform operation
fadd.h f29, f3, f14, rmm # perform operation
fadd.h f29, f3, f14, rne # perform operation
fadd.h f29, f3, f14, rtz # perform operation
fadd.h f29, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x11, 0x063c5b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fadd.h f11, f19, f27, dyn # perform operation
fadd.h f11, f19, f27, rdn # perform operation
fadd.h f11, f19, f27, rmm # perform operation
fadd.h f11, f19, f27, rne # perform operation
fadd.h f11, f19, f27, rtz # perform operation
fadd.h f11, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x12, 0x743be87d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fadd.h f12, f30, f9, dyn # perform operation
fadd.h f12, f30, f9, rdn # perform operation
fadd.h f12, f30, f9, rmm # perform operation
fadd.h f12, f30, f9, rne # perform operation
fadd.h f12, f30, f9, rtz # perform operation
fadd.h f12, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x5, 0xf9787518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fadd.h f5, f2, f27, dyn # perform operation
fadd.h f5, f2, f27, rdn # perform operation
fadd.h f5, f2, f27, rmm # perform operation
fadd.h f5, f2, f27, rne # perform operation
fadd.h f5, f2, f27, rtz # perform operation
fadd.h f5, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x22, 0x427f3581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fadd.h f22, f10, f13, dyn # perform operation
fadd.h f22, f10, f13, rdn # perform operation
fadd.h f22, f10, f13, rmm # perform operation
fadd.h f22, f10, f13, rne # perform operation
fadd.h f22, f10, f13, rtz # perform operation
fadd.h f22, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x7, 0x8e6abec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fadd.h f7, f9, f19, dyn # perform operation
fadd.h f7, f9, f19, rdn # perform operation
fadd.h f7, f9, f19, rmm # perform operation
fadd.h f7, f9, f19, rne # perform operation
fadd.h f7, f9, f19, rtz # perform operation
fadd.h f7, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x11, 0x08b5db38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fadd.h f11, f25, f2, dyn # perform operation
fadd.h f11, f25, f2, rdn # perform operation
fadd.h f11, f25, f2, rmm # perform operation
fadd.h f11, f25, f2, rne # perform operation
fadd.h f11, f25, f2, rtz # perform operation
fadd.h f11, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x22, 0x2f9ebbb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fadd.h f22, f4, f31, dyn # perform operation
fadd.h f22, f4, f31, rdn # perform operation
fadd.h f22, f4, f31, rmm # perform operation
fadd.h f22, f4, f31, rne # perform operation
fadd.h f22, f4, f31, rtz # perform operation
fadd.h f22, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x26, 0xf0c29ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fadd.h f26, f16, f21, dyn # perform operation
fadd.h f26, f16, f21, rdn # perform operation
fadd.h f26, f16, f21, rmm # perform operation
fadd.h f26, f16, f21, rne # perform operation
fadd.h f26, f16, f21, rtz # perform operation
fadd.h f26, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x9, 0x5605213b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fadd.h f9, f25, f20, dyn # perform operation
fadd.h f9, f25, f20, rdn # perform operation
fadd.h f9, f25, f20, rmm # perform operation
fadd.h f9, f25, f20, rne # perform operation
fadd.h f9, f25, f20, rtz # perform operation
fadd.h f9, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x10, 0x9aaedec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fadd.h f10, f16, f9, dyn # perform operation
fadd.h f10, f16, f9, rdn # perform operation
fadd.h f10, f16, f9, rmm # perform operation
fadd.h f10, f16, f9, rne # perform operation
fadd.h f10, f16, f9, rtz # perform operation
fadd.h f10, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x25, 0xd70c9c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fadd.h f25, f13, f2, dyn # perform operation
fadd.h f25, f13, f2, rdn # perform operation
fadd.h f25, f13, f2, rmm # perform operation
fadd.h f25, f13, f2, rne # perform operation
fadd.h f25, f13, f2, rtz # perform operation
fadd.h f25, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x8, 0xb38dfa9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fadd.h f8, f10, f9, dyn # perform operation
fadd.h f8, f10, f9, rdn # perform operation
fadd.h f8, f10, f9, rmm # perform operation
fadd.h f8, f10, f9, rne # perform operation
fadd.h f8, f10, f9, rtz # perform operation
fadd.h f8, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x29, 0x2527efe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fadd.h f29, f30, f13, dyn # perform operation
fadd.h f29, f30, f13, rdn # perform operation
fadd.h f29, f30, f13, rmm # perform operation
fadd.h f29, f30, f13, rne # perform operation
fadd.h f29, f30, f13, rtz # perform operation
fadd.h f29, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x5, 0xd5b522bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fadd.h f5, f18, f28, dyn # perform operation
fadd.h f5, f18, f28, rdn # perform operation
fadd.h f5, f18, f28, rmm # perform operation
fadd.h f5, f18, f28, rne # perform operation
fadd.h f5, f18, f28, rtz # perform operation
fadd.h f5, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x20, 0xae8566d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fadd.h f20, f7, f23, dyn # perform operation
fadd.h f20, f7, f23, rdn # perform operation
fadd.h f20, f7, f23, rmm # perform operation
fadd.h f20, f7, f23, rne # perform operation
fadd.h f20, f7, f23, rtz # perform operation
fadd.h f20, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x12, 0x18e0b667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fadd.h f12, f13, f15, dyn # perform operation
fadd.h f12, f13, f15, rdn # perform operation
fadd.h f12, f13, f15, rmm # perform operation
fadd.h f12, f13, f15, rne # perform operation
fadd.h f12, f13, f15, rtz # perform operation
fadd.h f12, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x14, 0x0387ea4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fadd.h f14, f5, f22, dyn # perform operation
fadd.h f14, f5, f22, rdn # perform operation
fadd.h f14, f5, f22, rmm # perform operation
fadd.h f14, f5, f22, rne # perform operation
fadd.h f14, f5, f22, rtz # perform operation
fadd.h f14, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x7, 0x45b21973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fadd.h f7, f16, f2, dyn # perform operation
fadd.h f7, f16, f2, rdn # perform operation
fadd.h f7, f16, f2, rmm # perform operation
fadd.h f7, f16, f2, rne # perform operation
fadd.h f7, f16, f2, rtz # perform operation
fadd.h f7, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x7, 0x7575c18a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fadd.h f7, f23, f25, dyn # perform operation
fadd.h f7, f23, f25, rdn # perform operation
fadd.h f7, f23, f25, rmm # perform operation
fadd.h f7, f23, f25, rne # perform operation
fadd.h f7, f23, f25, rtz # perform operation
fadd.h f7, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x23, 0x67c836de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fadd.h f23, f5, f13, dyn # perform operation
fadd.h f23, f5, f13, rdn # perform operation
fadd.h f23, f5, f13, rmm # perform operation
fadd.h f23, f5, f13, rne # perform operation
fadd.h f23, f5, f13, rtz # perform operation
fadd.h f23, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x30, 0xcf6cba0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fadd.h f30, f21, f6, dyn # perform operation
fadd.h f30, f21, f6, rdn # perform operation
fadd.h f30, f21, f6, rmm # perform operation
fadd.h f30, f21, f6, rne # perform operation
fadd.h f30, f21, f6, rtz # perform operation
fadd.h f30, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x27, 0x4d8311b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fadd.h f27, f3, f2, dyn # perform operation
fadd.h f27, f3, f2, rdn # perform operation
fadd.h f27, f3, f2, rmm # perform operation
fadd.h f27, f3, f2, rne # perform operation
fadd.h f27, f3, f2, rtz # perform operation
fadd.h f27, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x17, 0x0932834c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f17, f5, f15, dyn # perform operation
fadd.h f17, f5, f15, rdn # perform operation
fadd.h f17, f5, f15, rmm # perform operation
fadd.h f17, f5, f15, rne # perform operation
fadd.h f17, f5, f15, rtz # perform operation
fadd.h f17, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x24, 0x86a93db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f24, f5, f15, dyn # perform operation
fadd.h f24, f5, f15, rdn # perform operation
fadd.h f24, f5, f15, rmm # perform operation
fadd.h f24, f5, f15, rne # perform operation
fadd.h f24, f5, f15, rtz # perform operation
fadd.h f24, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x11, 0x90e04bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fadd.h f11, f14, f22, dyn # perform operation
fadd.h f11, f14, f22, rdn # perform operation
fadd.h f11, f14, f22, rmm # perform operation
fadd.h f11, f14, f22, rne # perform operation
fadd.h f11, f14, f22, rtz # perform operation
fadd.h f11, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x10, 0xb0acc050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f10, f5, f3, dyn # perform operation
fadd.h f10, f5, f3, rdn # perform operation
fadd.h f10, f5, f3, rmm # perform operation
fadd.h f10, f5, f3, rne # perform operation
fadd.h f10, f5, f3, rtz # perform operation
fadd.h f10, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x11, 0x672f174c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fadd.h f11, f15, f8, dyn # perform operation
fadd.h f11, f15, f8, rdn # perform operation
fadd.h f11, f15, f8, rmm # perform operation
fadd.h f11, f15, f8, rne # perform operation
fadd.h f11, f15, f8, rtz # perform operation
fadd.h f11, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x4, 0xc533ab81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fadd.h f4, f11, f18, dyn # perform operation
fadd.h f4, f11, f18, rdn # perform operation
fadd.h f4, f11, f18, rmm # perform operation
fadd.h f4, f11, f18, rne # perform operation
fadd.h f4, f11, f18, rtz # perform operation
fadd.h f4, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x8, 0x434f67e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fadd.h f8, f26, f14, dyn # perform operation
fadd.h f8, f26, f14, rdn # perform operation
fadd.h f8, f26, f14, rmm # perform operation
fadd.h f8, f26, f14, rne # perform operation
fadd.h f8, f26, f14, rtz # perform operation
fadd.h f8, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x21, 0xe269fa25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fadd.h f21, f1, f16, dyn # perform operation
fadd.h f21, f1, f16, rdn # perform operation
fadd.h f21, f1, f16, rmm # perform operation
fadd.h f21, f1, f16, rne # perform operation
fadd.h f21, f1, f16, rtz # perform operation
fadd.h f21, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x10, 0x26c0c5a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fadd.h f10, f6, f30, dyn # perform operation
fadd.h f10, f6, f30, rdn # perform operation
fadd.h f10, f6, f30, rmm # perform operation
fadd.h f10, f6, f30, rne # perform operation
fadd.h f10, f6, f30, rtz # perform operation
fadd.h f10, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x18, 0xe9d02b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fadd.h f18, f27, f22, dyn # perform operation
fadd.h f18, f27, f22, rdn # perform operation
fadd.h f18, f27, f22, rmm # perform operation
fadd.h f18, f27, f22, rne # perform operation
fadd.h f18, f27, f22, rtz # perform operation
fadd.h f18, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x28, 0xe565a68b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fadd.h f28, f4, f24, dyn # perform operation
fadd.h f28, f4, f24, rdn # perform operation
fadd.h f28, f4, f24, rmm # perform operation
fadd.h f28, f4, f24, rne # perform operation
fadd.h f28, f4, f24, rtz # perform operation
fadd.h f28, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x14, 0xe08b1236 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fadd.h f14, f12, f15, dyn # perform operation
fadd.h f14, f12, f15, rdn # perform operation
fadd.h f14, f12, f15, rmm # perform operation
fadd.h f14, f12, f15, rne # perform operation
fadd.h f14, f12, f15, rtz # perform operation
fadd.h f14, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x24, 0xafa647ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fadd.h f24, f1, f3, dyn # perform operation
fadd.h f24, f1, f3, rdn # perform operation
fadd.h f24, f1, f3, rmm # perform operation
fadd.h f24, f1, f3, rne # perform operation
fadd.h f24, f1, f3, rtz # perform operation
fadd.h f24, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x10, 0x7e1bdd7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fadd.h f10, f21, f28, dyn # perform operation
fadd.h f10, f21, f28, rdn # perform operation
fadd.h f10, f21, f28, rmm # perform operation
fadd.h f10, f21, f28, rne # perform operation
fadd.h f10, f21, f28, rtz # perform operation
fadd.h f10, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x7, 0x5d63067d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fadd.h f7, f8, f5, dyn # perform operation
fadd.h f7, f8, f5, rdn # perform operation
fadd.h f7, f8, f5, rmm # perform operation
fadd.h f7, f8, f5, rne # perform operation
fadd.h f7, f8, f5, rtz # perform operation
fadd.h f7, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x27, 0x204b44c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fadd.h f27, f15, f25, dyn # perform operation
fadd.h f27, f15, f25, rdn # perform operation
fadd.h f27, f15, f25, rmm # perform operation
fadd.h f27, f15, f25, rne # perform operation
fadd.h f27, f15, f25, rtz # perform operation
fadd.h f27, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x15, 0xf0a45455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fadd.h f15, f7, f23, dyn # perform operation
fadd.h f15, f7, f23, rdn # perform operation
fadd.h f15, f7, f23, rmm # perform operation
fadd.h f15, f7, f23, rne # perform operation
fadd.h f15, f7, f23, rtz # perform operation
fadd.h f15, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x2, 0xab1b8eec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fadd.h f2, f6, f25, dyn # perform operation
fadd.h f2, f6, f25, rdn # perform operation
fadd.h f2, f6, f25, rmm # perform operation
fadd.h f2, f6, f25, rne # perform operation
fadd.h f2, f6, f25, rtz # perform operation
fadd.h f2, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x25, 0x29fec921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fadd.h f25, f29, f3, dyn # perform operation
fadd.h f25, f29, f3, rdn # perform operation
fadd.h f25, f29, f3, rmm # perform operation
fadd.h f25, f29, f3, rne # perform operation
fadd.h f25, f29, f3, rtz # perform operation
fadd.h f25, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x7, 0x0e2f7384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fadd.h f7, f25, f29, dyn # perform operation
fadd.h f7, f25, f29, rdn # perform operation
fadd.h f7, f25, f29, rmm # perform operation
fadd.h f7, f25, f29, rne # perform operation
fadd.h f7, f25, f29, rtz # perform operation
fadd.h f7, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x29, 0x8de1c400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fadd.h f29, f22, f11, dyn # perform operation
fadd.h f29, f22, f11, rdn # perform operation
fadd.h f29, f22, f11, rmm # perform operation
fadd.h f29, f22, f11, rne # perform operation
fadd.h f29, f22, f11, rtz # perform operation
fadd.h f29, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x4, 0x45b7dafa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fadd.h f4, f25, f21, dyn # perform operation
fadd.h f4, f25, f21, rdn # perform operation
fadd.h f4, f25, f21, rmm # perform operation
fadd.h f4, f25, f21, rne # perform operation
fadd.h f4, f25, f21, rtz # perform operation
fadd.h f4, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x18, 0xe82925ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fadd.h f18, f8, f12, dyn # perform operation
fadd.h f18, f8, f12, rdn # perform operation
fadd.h f18, f8, f12, rmm # perform operation
fadd.h f18, f8, f12, rne # perform operation
fadd.h f18, f8, f12, rtz # perform operation
fadd.h f18, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x11, 0x5e38d10d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fadd.h f11, f10, f5, dyn # perform operation
fadd.h f11, f10, f5, rdn # perform operation
fadd.h f11, f10, f5, rmm # perform operation
fadd.h f11, f10, f5, rne # perform operation
fadd.h f11, f10, f5, rtz # perform operation
fadd.h f11, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x2, 0xeb1c05bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fadd.h f2, f10, f18, dyn # perform operation
fadd.h f2, f10, f18, rdn # perform operation
fadd.h f2, f10, f18, rmm # perform operation
fadd.h f2, f10, f18, rne # perform operation
fadd.h f2, f10, f18, rtz # perform operation
fadd.h f2, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x12, 0x0998bc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fadd.h f12, f27, f31, dyn # perform operation
fadd.h f12, f27, f31, rdn # perform operation
fadd.h f12, f27, f31, rmm # perform operation
fadd.h f12, f27, f31, rne # perform operation
fadd.h f12, f27, f31, rtz # perform operation
fadd.h f12, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x18, 0xd41e987d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fadd.h f18, f26, f10, dyn # perform operation
fadd.h f18, f26, f10, rdn # perform operation
fadd.h f18, f26, f10, rmm # perform operation
fadd.h f18, f26, f10, rne # perform operation
fadd.h f18, f26, f10, rtz # perform operation
fadd.h f18, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x29, 0x6ecadfd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fadd.h f29, f15, f16, dyn # perform operation
fadd.h f29, f15, f16, rdn # perform operation
fadd.h f29, f15, f16, rmm # perform operation
fadd.h f29, f15, f16, rne # perform operation
fadd.h f29, f15, f16, rtz # perform operation
fadd.h f29, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x30, 0x6f3e3628 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f30, f10, f13, dyn # perform operation
fadd.h f30, f10, f13, rdn # perform operation
fadd.h f30, f10, f13, rmm # perform operation
fadd.h f30, f10, f13, rne # perform operation
fadd.h f30, f10, f13, rtz # perform operation
fadd.h f30, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x7, 0xa2471ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fadd.h f7, f2, f21, dyn # perform operation
fadd.h f7, f2, f21, rdn # perform operation
fadd.h f7, f2, f21, rmm # perform operation
fadd.h f7, f2, f21, rne # perform operation
fadd.h f7, f2, f21, rtz # perform operation
fadd.h f7, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x4, 0xcc403b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fadd.h f4, f14, f9, dyn # perform operation
fadd.h f4, f14, f9, rdn # perform operation
fadd.h f4, f14, f9, rmm # perform operation
fadd.h f4, f14, f9, rne # perform operation
fadd.h f4, f14, f9, rtz # perform operation
fadd.h f4, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x17, 0x715a33c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fadd.h f17, f10, f16, dyn # perform operation
fadd.h f17, f10, f16, rdn # perform operation
fadd.h f17, f10, f16, rmm # perform operation
fadd.h f17, f10, f16, rne # perform operation
fadd.h f17, f10, f16, rtz # perform operation
fadd.h f17, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x5, 0xbbf578e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fadd.h f5, f31, f12, dyn # perform operation
fadd.h f5, f31, f12, rdn # perform operation
fadd.h f5, f31, f12, rmm # perform operation
fadd.h f5, f31, f12, rne # perform operation
fadd.h f5, f31, f12, rtz # perform operation
fadd.h f5, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x30, 0x2eb19a77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fadd.h f30, f14, f13, dyn # perform operation
fadd.h f30, f14, f13, rdn # perform operation
fadd.h f30, f14, f13, rmm # perform operation
fadd.h f30, f14, f13, rne # perform operation
fadd.h f30, f14, f13, rtz # perform operation
fadd.h f30, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x29, 0xe4ad578a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fadd.h f29, f30, f28, dyn # perform operation
fadd.h f29, f30, f28, rdn # perform operation
fadd.h f29, f30, f28, rmm # perform operation
fadd.h f29, f30, f28, rne # perform operation
fadd.h f29, f30, f28, rtz # perform operation
fadd.h f29, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x23, 0x7aa7ee7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fadd.h f23, f26, f24, dyn # perform operation
fadd.h f23, f26, f24, rdn # perform operation
fadd.h f23, f26, f24, rmm # perform operation
fadd.h f23, f26, f24, rne # perform operation
fadd.h f23, f26, f24, rtz # perform operation
fadd.h f23, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x17, 0x2f490be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fadd.h f17, f23, f22, dyn # perform operation
fadd.h f17, f23, f22, rdn # perform operation
fadd.h f17, f23, f22, rmm # perform operation
fadd.h f17, f23, f22, rne # perform operation
fadd.h f17, f23, f22, rtz # perform operation
fadd.h f17, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x20, 0x6638f642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fadd.h f20, f8, f18, dyn # perform operation
fadd.h f20, f8, f18, rdn # perform operation
fadd.h f20, f8, f18, rmm # perform operation
fadd.h f20, f8, f18, rne # perform operation
fadd.h f20, f8, f18, rtz # perform operation
fadd.h f20, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x6, 0x0fdde630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fadd.h f6, f3, f29, dyn # perform operation
fadd.h f6, f3, f29, rdn # perform operation
fadd.h f6, f3, f29, rmm # perform operation
fadd.h f6, f3, f29, rne # perform operation
fadd.h f6, f3, f29, rtz # perform operation
fadd.h f6, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x22, 0xebb2b708 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fadd.h f22, f13, f6, dyn # perform operation
fadd.h f22, f13, f6, rdn # perform operation
fadd.h f22, f13, f6, rmm # perform operation
fadd.h f22, f13, f6, rne # perform operation
fadd.h f22, f13, f6, rtz # perform operation
fadd.h f22, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x5, 0xb0c14585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fadd.h f5, f7, f22, dyn # perform operation
fadd.h f5, f7, f22, rdn # perform operation
fadd.h f5, f7, f22, rmm # perform operation
fadd.h f5, f7, f22, rne # perform operation
fadd.h f5, f7, f22, rtz # perform operation
fadd.h f5, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x3, 0x36b2aeca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fadd.h f3, f11, f20, dyn # perform operation
fadd.h f3, f11, f20, rdn # perform operation
fadd.h f3, f11, f20, rmm # perform operation
fadd.h f3, f11, f20, rne # perform operation
fadd.h f3, f11, f20, rtz # perform operation
fadd.h f3, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x9, 0x431504dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fadd.h f9, f3, f14, dyn # perform operation
fadd.h f9, f3, f14, rdn # perform operation
fadd.h f9, f3, f14, rmm # perform operation
fadd.h f9, f3, f14, rne # perform operation
fadd.h f9, f3, f14, rtz # perform operation
fadd.h f9, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x7, 0x9ccfc658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fadd.h f7, f13, f1, dyn # perform operation
fadd.h f7, f13, f1, rdn # perform operation
fadd.h f7, f13, f1, rmm # perform operation
fadd.h f7, f13, f1, rne # perform operation
fadd.h f7, f13, f1, rtz # perform operation
fadd.h f7, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x27, 0x52876f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fadd.h f27, f23, f29, dyn # perform operation
fadd.h f27, f23, f29, rdn # perform operation
fadd.h f27, f23, f29, rmm # perform operation
fadd.h f27, f23, f29, rne # perform operation
fadd.h f27, f23, f29, rtz # perform operation
fadd.h f27, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x6, 0x02544425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fadd.h f6, f2, f31, dyn # perform operation
fadd.h f6, f2, f31, rdn # perform operation
fadd.h f6, f2, f31, rmm # perform operation
fadd.h f6, f2, f31, rne # perform operation
fadd.h f6, f2, f31, rtz # perform operation
fadd.h f6, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x18, 0x7349b040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fadd.h f18, f22, f29, dyn # perform operation
fadd.h f18, f22, f29, rdn # perform operation
fadd.h f18, f22, f29, rmm # perform operation
fadd.h f18, f22, f29, rne # perform operation
fadd.h f18, f22, f29, rtz # perform operation
fadd.h f18, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x6, 0x082afcaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fadd.h f6, f16, f27, dyn # perform operation
fadd.h f6, f16, f27, rdn # perform operation
fadd.h f6, f16, f27, rmm # perform operation
fadd.h f6, f16, f27, rne # perform operation
fadd.h f6, f16, f27, rtz # perform operation
fadd.h f6, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x5, 0x60971110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fadd.h f5, f2, f17, dyn # perform operation
fadd.h f5, f2, f17, rdn # perform operation
fadd.h f5, f2, f17, rmm # perform operation
fadd.h f5, f2, f17, rne # perform operation
fadd.h f5, f2, f17, rtz # perform operation
fadd.h f5, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x16, 0x364e8d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fadd.h f16, f28, f17, dyn # perform operation
fadd.h f16, f28, f17, rdn # perform operation
fadd.h f16, f28, f17, rmm # perform operation
fadd.h f16, f28, f17, rne # perform operation
fadd.h f16, f28, f17, rtz # perform operation
fadd.h f16, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x12, 0x7d3914e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f12, f2, f15, dyn # perform operation
fadd.h f12, f2, f15, rdn # perform operation
fadd.h f12, f2, f15, rmm # perform operation
fadd.h f12, f2, f15, rne # perform operation
fadd.h f12, f2, f15, rtz # perform operation
fadd.h f12, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x25, 0x6f781fd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fadd.h f25, f17, f11, dyn # perform operation
fadd.h f25, f17, f11, rdn # perform operation
fadd.h f25, f17, f11, rmm # perform operation
fadd.h f25, f17, f11, rne # perform operation
fadd.h f25, f17, f11, rtz # perform operation
fadd.h f25, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x11, 0x4bc856b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fadd.h f11, f22, f25, dyn # perform operation
fadd.h f11, f22, f25, rdn # perform operation
fadd.h f11, f22, f25, rmm # perform operation
fadd.h f11, f22, f25, rne # perform operation
fadd.h f11, f22, f25, rtz # perform operation
fadd.h f11, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x1, 0xbe7dfcc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fadd.h f1, f18, f11, dyn # perform operation
fadd.h f1, f18, f11, rdn # perform operation
fadd.h f1, f18, f11, rmm # perform operation
fadd.h f1, f18, f11, rne # perform operation
fadd.h f1, f18, f11, rtz # perform operation
fadd.h f1, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x4, 0x3483bcf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fadd.h f4, f19, f14, dyn # perform operation
fadd.h f4, f19, f14, rdn # perform operation
fadd.h f4, f19, f14, rmm # perform operation
fadd.h f4, f19, f14, rne # perform operation
fadd.h f4, f19, f14, rtz # perform operation
fadd.h f4, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x9, 0x3ff66300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fadd.h f9, f21, f31, dyn # perform operation
fadd.h f9, f21, f31, rdn # perform operation
fadd.h f9, f21, f31, rmm # perform operation
fadd.h f9, f21, f31, rne # perform operation
fadd.h f9, f21, f31, rtz # perform operation
fadd.h f9, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x30, 0x00b8745c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fadd.h f30, f17, f18, dyn # perform operation
fadd.h f30, f17, f18, rdn # perform operation
fadd.h f30, f17, f18, rmm # perform operation
fadd.h f30, f17, f18, rne # perform operation
fadd.h f30, f17, f18, rtz # perform operation
fadd.h f30, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x25, 0xadb33734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fadd.h f25, f23, f12, dyn # perform operation
fadd.h f25, f23, f12, rdn # perform operation
fadd.h f25, f23, f12, rmm # perform operation
fadd.h f25, f23, f12, rne # perform operation
fadd.h f25, f23, f12, rtz # perform operation
fadd.h f25, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x17, 0x8e4422f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fadd.h f17, f1, f23, dyn # perform operation
fadd.h f17, f1, f23, rdn # perform operation
fadd.h f17, f1, f23, rmm # perform operation
fadd.h f17, f1, f23, rne # perform operation
fadd.h f17, f1, f23, rtz # perform operation
fadd.h f17, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x16, 0x8ad2ffb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fadd.h f16, f23, f26, dyn # perform operation
fadd.h f16, f23, f26, rdn # perform operation
fadd.h f16, f23, f26, rmm # perform operation
fadd.h f16, f23, f26, rne # perform operation
fadd.h f16, f23, f26, rtz # perform operation
fadd.h f16, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x24, 0x657fcb53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fadd.h f24, f31, f13, dyn # perform operation
fadd.h f24, f31, f13, rdn # perform operation
fadd.h f24, f31, f13, rmm # perform operation
fadd.h f24, f31, f13, rne # perform operation
fadd.h f24, f31, f13, rtz # perform operation
fadd.h f24, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x2, 0x9d6be838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fadd.h f2, f13, f21, dyn # perform operation
fadd.h f2, f13, f21, rdn # perform operation
fadd.h f2, f13, f21, rmm # perform operation
fadd.h f2, f13, f21, rne # perform operation
fadd.h f2, f13, f21, rtz # perform operation
fadd.h f2, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x31, 0xad98e627 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fadd.h f31, f29, f30, dyn # perform operation
fadd.h f31, f29, f30, rdn # perform operation
fadd.h f31, f29, f30, rmm # perform operation
fadd.h f31, f29, f30, rne # perform operation
fadd.h f31, f29, f30, rtz # perform operation
fadd.h f31, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x4, 0x0457929b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fadd.h f4, f16, f30, dyn # perform operation
fadd.h f4, f16, f30, rdn # perform operation
fadd.h f4, f16, f30, rmm # perform operation
fadd.h f4, f16, f30, rne # perform operation
fadd.h f4, f16, f30, rtz # perform operation
fadd.h f4, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x14, 0x375d1f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f14, f5, f31, dyn # perform operation
fadd.h f14, f5, f31, rdn # perform operation
fadd.h f14, f5, f31, rmm # perform operation
fadd.h f14, f5, f31, rne # perform operation
fadd.h f14, f5, f31, rtz # perform operation
fadd.h f14, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x10, 0x44ab3c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fadd.h f10, f7, f17, dyn # perform operation
fadd.h f10, f7, f17, rdn # perform operation
fadd.h f10, f7, f17, rmm # perform operation
fadd.h f10, f7, f17, rne # perform operation
fadd.h f10, f7, f17, rtz # perform operation
fadd.h f10, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x29, 0xd6b551ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fadd.h f29, f12, f25, dyn # perform operation
fadd.h f29, f12, f25, rdn # perform operation
fadd.h f29, f12, f25, rmm # perform operation
fadd.h f29, f12, f25, rne # perform operation
fadd.h f29, f12, f25, rtz # perform operation
fadd.h f29, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x31, 0xcb5bb2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fadd.h f31, f29, f12, dyn # perform operation
fadd.h f31, f29, f12, rdn # perform operation
fadd.h f31, f29, f12, rmm # perform operation
fadd.h f31, f29, f12, rne # perform operation
fadd.h f31, f29, f12, rtz # perform operation
fadd.h f31, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x3, 0xd0d35d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fadd.h f3, f7, f31, dyn # perform operation
fadd.h f3, f7, f31, rdn # perform operation
fadd.h f3, f7, f31, rmm # perform operation
fadd.h f3, f7, f31, rne # perform operation
fadd.h f3, f7, f31, rtz # perform operation
fadd.h f3, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x9, 0x6b5c7136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fadd.h f9, f2, f5, dyn # perform operation
fadd.h f9, f2, f5, rdn # perform operation
fadd.h f9, f2, f5, rmm # perform operation
fadd.h f9, f2, f5, rne # perform operation
fadd.h f9, f2, f5, rtz # perform operation
fadd.h f9, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x25, 0xd9c4360d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fadd.h f25, f16, f12, dyn # perform operation
fadd.h f25, f16, f12, rdn # perform operation
fadd.h f25, f16, f12, rmm # perform operation
fadd.h f25, f16, f12, rne # perform operation
fadd.h f25, f16, f12, rtz # perform operation
fadd.h f25, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x6, 0xa69e6c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fadd.h f6, f28, f23, dyn # perform operation
fadd.h f6, f28, f23, rdn # perform operation
fadd.h f6, f28, f23, rmm # perform operation
fadd.h f6, f28, f23, rne # perform operation
fadd.h f6, f28, f23, rtz # perform operation
fadd.h f6, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x17, 0x839626e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fadd.h f17, f16, f2, dyn # perform operation
fadd.h f17, f16, f2, rdn # perform operation
fadd.h f17, f16, f2, rmm # perform operation
fadd.h f17, f16, f2, rne # perform operation
fadd.h f17, f16, f2, rtz # perform operation
fadd.h f17, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x5, 0xf92e1324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fadd.h f5, f27, f7, dyn # perform operation
fadd.h f5, f27, f7, rdn # perform operation
fadd.h f5, f27, f7, rmm # perform operation
fadd.h f5, f27, f7, rne # perform operation
fadd.h f5, f27, f7, rtz # perform operation
fadd.h f5, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x30, 0xabc1bbc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fadd.h f30, f24, f17, dyn # perform operation
fadd.h f30, f24, f17, rdn # perform operation
fadd.h f30, f24, f17, rmm # perform operation
fadd.h f30, f24, f17, rne # perform operation
fadd.h f30, f24, f17, rtz # perform operation
fadd.h f30, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x21, 0xcbf46e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fadd.h f21, f22, f13, dyn # perform operation
fadd.h f21, f22, f13, rdn # perform operation
fadd.h f21, f22, f13, rmm # perform operation
fadd.h f21, f22, f13, rne # perform operation
fadd.h f21, f22, f13, rtz # perform operation
fadd.h f21, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x29, 0xb055b8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fadd.h f29, f18, f1, dyn # perform operation
fadd.h f29, f18, f1, rdn # perform operation
fadd.h f29, f18, f1, rmm # perform operation
fadd.h f29, f18, f1, rne # perform operation
fadd.h f29, f18, f1, rtz # perform operation
fadd.h f29, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x12, 0x2a35ec76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fadd.h f12, f13, f21, dyn # perform operation
fadd.h f12, f13, f21, rdn # perform operation
fadd.h f12, f13, f21, rmm # perform operation
fadd.h f12, f13, f21, rne # perform operation
fadd.h f12, f13, f21, rtz # perform operation
fadd.h f12, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x28, 0xcc8379a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fadd.h f28, f16, f12, dyn # perform operation
fadd.h f28, f16, f12, rdn # perform operation
fadd.h f28, f16, f12, rmm # perform operation
fadd.h f28, f16, f12, rne # perform operation
fadd.h f28, f16, f12, rtz # perform operation
fadd.h f28, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x24, 0xe82132c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fadd.h f24, f19, f9, dyn # perform operation
fadd.h f24, f19, f9, rdn # perform operation
fadd.h f24, f19, f9, rmm # perform operation
fadd.h f24, f19, f9, rne # perform operation
fadd.h f24, f19, f9, rtz # perform operation
fadd.h f24, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x3, 0x5c4ddde3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fadd.h f3, f27, f7, dyn # perform operation
fadd.h f3, f27, f7, rdn # perform operation
fadd.h f3, f27, f7, rmm # perform operation
fadd.h f3, f27, f7, rne # perform operation
fadd.h f3, f27, f7, rtz # perform operation
fadd.h f3, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x15, 0x9b56d551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fadd.h f15, f22, f2, dyn # perform operation
fadd.h f15, f22, f2, rdn # perform operation
fadd.h f15, f22, f2, rmm # perform operation
fadd.h f15, f22, f2, rne # perform operation
fadd.h f15, f22, f2, rtz # perform operation
fadd.h f15, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x19, 0xf65024dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fadd.h f19, f26, f24, dyn # perform operation
fadd.h f19, f26, f24, rdn # perform operation
fadd.h f19, f26, f24, rmm # perform operation
fadd.h f19, f26, f24, rne # perform operation
fadd.h f19, f26, f24, rtz # perform operation
fadd.h f19, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x1, 0xf5fad723 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fadd.h f1, f13, f6, dyn # perform operation
fadd.h f1, f13, f6, rdn # perform operation
fadd.h f1, f13, f6, rmm # perform operation
fadd.h f1, f13, f6, rne # perform operation
fadd.h f1, f13, f6, rtz # perform operation
fadd.h f1, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x29, 0x6a65dec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f29, f3, f20, dyn # perform operation
fadd.h f29, f3, f20, rdn # perform operation
fadd.h f29, f3, f20, rmm # perform operation
fadd.h f29, f3, f20, rne # perform operation
fadd.h f29, f3, f20, rtz # perform operation
fadd.h f29, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x2, 0x09166c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fadd.h f2, f25, f28, dyn # perform operation
fadd.h f2, f25, f28, rdn # perform operation
fadd.h f2, f25, f28, rmm # perform operation
fadd.h f2, f25, f28, rne # perform operation
fadd.h f2, f25, f28, rtz # perform operation
fadd.h f2, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x7, 0x2e5973e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fadd.h f7, f8, f3, dyn # perform operation
fadd.h f7, f8, f3, rdn # perform operation
fadd.h f7, f8, f3, rmm # perform operation
fadd.h f7, f8, f3, rne # perform operation
fadd.h f7, f8, f3, rtz # perform operation
fadd.h f7, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x28, 0xb6a5b973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fadd.h f28, f24, f8, dyn # perform operation
fadd.h f28, f24, f8, rdn # perform operation
fadd.h f28, f24, f8, rmm # perform operation
fadd.h f28, f24, f8, rne # perform operation
fadd.h f28, f24, f8, rtz # perform operation
fadd.h f28, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x10, 0x3ec38abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fadd.h f10, f18, f21, dyn # perform operation
fadd.h f10, f18, f21, rdn # perform operation
fadd.h f10, f18, f21, rmm # perform operation
fadd.h f10, f18, f21, rne # perform operation
fadd.h f10, f18, f21, rtz # perform operation
fadd.h f10, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x28, 0x93a7477b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fadd.h f28, f23, f15, dyn # perform operation
fadd.h f28, f23, f15, rdn # perform operation
fadd.h f28, f23, f15, rmm # perform operation
fadd.h f28, f23, f15, rne # perform operation
fadd.h f28, f23, f15, rtz # perform operation
fadd.h f28, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x8, 0x2b6c576e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fadd.h f8, f12, f1, dyn # perform operation
fadd.h f8, f12, f1, rdn # perform operation
fadd.h f8, f12, f1, rmm # perform operation
fadd.h f8, f12, f1, rne # perform operation
fadd.h f8, f12, f1, rtz # perform operation
fadd.h f8, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x13, 0x57fe2d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fadd.h f13, f29, f21, dyn # perform operation
fadd.h f13, f29, f21, rdn # perform operation
fadd.h f13, f29, f21, rmm # perform operation
fadd.h f13, f29, f21, rne # perform operation
fadd.h f13, f29, f21, rtz # perform operation
fadd.h f13, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x22, 0x55941691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fadd.h f22, f16, f12, dyn # perform operation
fadd.h f22, f16, f12, rdn # perform operation
fadd.h f22, f16, f12, rmm # perform operation
fadd.h f22, f16, f12, rne # perform operation
fadd.h f22, f16, f12, rtz # perform operation
fadd.h f22, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x9, 0x874c58a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fadd.h f9, f28, f5, dyn # perform operation
fadd.h f9, f28, f5, rdn # perform operation
fadd.h f9, f28, f5, rmm # perform operation
fadd.h f9, f28, f5, rne # perform operation
fadd.h f9, f28, f5, rtz # perform operation
fadd.h f9, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x20, 0xef635ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fadd.h f20, f1, f2, dyn # perform operation
fadd.h f20, f1, f2, rdn # perform operation
fadd.h f20, f1, f2, rmm # perform operation
fadd.h f20, f1, f2, rne # perform operation
fadd.h f20, f1, f2, rtz # perform operation
fadd.h f20, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x11, 0xfd31676e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fadd.h f11, f22, f8, dyn # perform operation
fadd.h f11, f22, f8, rdn # perform operation
fadd.h f11, f22, f8, rmm # perform operation
fadd.h f11, f22, f8, rne # perform operation
fadd.h f11, f22, f8, rtz # perform operation
fadd.h f11, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x24, 0xf5884a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fadd.h f24, f4, f15, dyn # perform operation
fadd.h f24, f4, f15, rdn # perform operation
fadd.h f24, f4, f15, rmm # perform operation
fadd.h f24, f4, f15, rne # perform operation
fadd.h f24, f4, f15, rtz # perform operation
fadd.h f24, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x13, 0x3f6a763e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f13, f18, f25, dyn # perform operation
fadd.h f13, f18, f25, rdn # perform operation
fadd.h f13, f18, f25, rmm # perform operation
fadd.h f13, f18, f25, rne # perform operation
fadd.h f13, f18, f25, rtz # perform operation
fadd.h f13, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x12, 0xc8f526bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f12, f25, f8, dyn # perform operation
fadd.h f12, f25, f8, rdn # perform operation
fadd.h f12, f25, f8, rmm # perform operation
fadd.h f12, f25, f8, rne # perform operation
fadd.h f12, f25, f8, rtz # perform operation
fadd.h f12, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x27, 0x539ca975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fadd.h f27, f11, f13, dyn # perform operation
fadd.h f27, f11, f13, rdn # perform operation
fadd.h f27, f11, f13, rmm # perform operation
fadd.h f27, f11, f13, rne # perform operation
fadd.h f27, f11, f13, rtz # perform operation
fadd.h f27, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x19, 0x6a16d47d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fadd.h f19, f15, f24, dyn # perform operation
fadd.h f19, f15, f24, rdn # perform operation
fadd.h f19, f15, f24, rmm # perform operation
fadd.h f19, f15, f24, rne # perform operation
fadd.h f19, f15, f24, rtz # perform operation
fadd.h f19, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x27, 0x122f4418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fadd.h f27, f19, f22, dyn # perform operation
fadd.h f27, f19, f22, rdn # perform operation
fadd.h f27, f19, f22, rmm # perform operation
fadd.h f27, f19, f22, rne # perform operation
fadd.h f27, f19, f22, rtz # perform operation
fadd.h f27, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x30, 0xd23fe31c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fadd.h f30, f16, f3, dyn # perform operation
fadd.h f30, f16, f3, rdn # perform operation
fadd.h f30, f16, f3, rmm # perform operation
fadd.h f30, f16, f3, rne # perform operation
fadd.h f30, f16, f3, rtz # perform operation
fadd.h f30, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x18, 0x1f2e4e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fadd.h f18, f12, f20, dyn # perform operation
fadd.h f18, f12, f20, rdn # perform operation
fadd.h f18, f12, f20, rmm # perform operation
fadd.h f18, f12, f20, rne # perform operation
fadd.h f18, f12, f20, rtz # perform operation
fadd.h f18, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x30, 0xd88a7b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fadd.h f30, f4, f17, dyn # perform operation
fadd.h f30, f4, f17, rdn # perform operation
fadd.h f30, f4, f17, rmm # perform operation
fadd.h f30, f4, f17, rne # perform operation
fadd.h f30, f4, f17, rtz # perform operation
fadd.h f30, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x14, 0xcc636241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fadd.h f14, f2, f20, dyn # perform operation
fadd.h f14, f2, f20, rdn # perform operation
fadd.h f14, f2, f20, rmm # perform operation
fadd.h f14, f2, f20, rne # perform operation
fadd.h f14, f2, f20, rtz # perform operation
fadd.h f14, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x11, 0x2025ea3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fadd.h f11, f13, f9, dyn # perform operation
fadd.h f11, f13, f9, rdn # perform operation
fadd.h f11, f13, f9, rmm # perform operation
fadd.h f11, f13, f9, rne # perform operation
fadd.h f11, f13, f9, rtz # perform operation
fadd.h f11, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x17, 0x73101287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fadd.h f17, f12, f28, dyn # perform operation
fadd.h f17, f12, f28, rdn # perform operation
fadd.h f17, f12, f28, rmm # perform operation
fadd.h f17, f12, f28, rne # perform operation
fadd.h f17, f12, f28, rtz # perform operation
fadd.h f17, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x13, 0x5c321897 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fadd.h f13, f2, f12, dyn # perform operation
fadd.h f13, f2, f12, rdn # perform operation
fadd.h f13, f2, f12, rmm # perform operation
fadd.h f13, f2, f12, rne # perform operation
fadd.h f13, f2, f12, rtz # perform operation
fadd.h f13, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x30, 0xa8eaac14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fadd.h f30, f13, f24, dyn # perform operation
fadd.h f30, f13, f24, rdn # perform operation
fadd.h f30, f13, f24, rmm # perform operation
fadd.h f30, f13, f24, rne # perform operation
fadd.h f30, f13, f24, rtz # perform operation
fadd.h f30, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x4, 0x675a2b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fadd.h f4, f18, f30, dyn # perform operation
fadd.h f4, f18, f30, rdn # perform operation
fadd.h f4, f18, f30, rmm # perform operation
fadd.h f4, f18, f30, rne # perform operation
fadd.h f4, f18, f30, rtz # perform operation
fadd.h f4, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x4, 0x50131fea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fadd.h f4, f19, f3, dyn # perform operation
fadd.h f4, f19, f3, rdn # perform operation
fadd.h f4, f19, f3, rmm # perform operation
fadd.h f4, f19, f3, rne # perform operation
fadd.h f4, f19, f3, rtz # perform operation
fadd.h f4, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x30, 0xb08c234a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fadd.h f30, f5, f8, dyn # perform operation
fadd.h f30, f5, f8, rdn # perform operation
fadd.h f30, f5, f8, rmm # perform operation
fadd.h f30, f5, f8, rne # perform operation
fadd.h f30, f5, f8, rtz # perform operation
fadd.h f30, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x9, 0x8794221e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fadd.h f9, f11, f13, dyn # perform operation
fadd.h f9, f11, f13, rdn # perform operation
fadd.h f9, f11, f13, rmm # perform operation
fadd.h f9, f11, f13, rne # perform operation
fadd.h f9, f11, f13, rtz # perform operation
fadd.h f9, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x18, 0x8dc36726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fadd.h f18, f13, f26, dyn # perform operation
fadd.h f18, f13, f26, rdn # perform operation
fadd.h f18, f13, f26, rmm # perform operation
fadd.h f18, f13, f26, rne # perform operation
fadd.h f18, f13, f26, rtz # perform operation
fadd.h f18, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x15, 0x1bba9533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f15, f27, f7, dyn # perform operation
fadd.h f15, f27, f7, rdn # perform operation
fadd.h f15, f27, f7, rmm # perform operation
fadd.h f15, f27, f7, rne # perform operation
fadd.h f15, f27, f7, rtz # perform operation
fadd.h f15, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x20, 0x83eb2bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fadd.h f20, f2, f26, dyn # perform operation
fadd.h f20, f2, f26, rdn # perform operation
fadd.h f20, f2, f26, rmm # perform operation
fadd.h f20, f2, f26, rne # perform operation
fadd.h f20, f2, f26, rtz # perform operation
fadd.h f20, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x19, 0x6af23608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fadd.h f19, f18, f8, dyn # perform operation
fadd.h f19, f18, f8, rdn # perform operation
fadd.h f19, f18, f8, rmm # perform operation
fadd.h f19, f18, f8, rne # perform operation
fadd.h f19, f18, f8, rtz # perform operation
fadd.h f19, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x7, 0xe22752ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fadd.h f7, f23, f14, dyn # perform operation
fadd.h f7, f23, f14, rdn # perform operation
fadd.h f7, f23, f14, rmm # perform operation
fadd.h f7, f23, f14, rne # perform operation
fadd.h f7, f23, f14, rtz # perform operation
fadd.h f7, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x18, 0xb3d161f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fadd.h f18, f22, f1, dyn # perform operation
fadd.h f18, f22, f1, rdn # perform operation
fadd.h f18, f22, f1, rmm # perform operation
fadd.h f18, f22, f1, rne # perform operation
fadd.h f18, f22, f1, rtz # perform operation
fadd.h f18, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x26, 0x1457019c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fadd.h f26, f7, f24, dyn # perform operation
fadd.h f26, f7, f24, rdn # perform operation
fadd.h f26, f7, f24, rmm # perform operation
fadd.h f26, f7, f24, rne # perform operation
fadd.h f26, f7, f24, rtz # perform operation
fadd.h f26, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x19, 0xcccad079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fadd.h f19, f26, f5, dyn # perform operation
fadd.h f19, f26, f5, rdn # perform operation
fadd.h f19, f26, f5, rmm # perform operation
fadd.h f19, f26, f5, rne # perform operation
fadd.h f19, f26, f5, rtz # perform operation
fadd.h f19, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x17, 0xb7293970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fadd.h f17, f20, f13, dyn # perform operation
fadd.h f17, f20, f13, rdn # perform operation
fadd.h f17, f20, f13, rmm # perform operation
fadd.h f17, f20, f13, rne # perform operation
fadd.h f17, f20, f13, rtz # perform operation
fadd.h f17, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x4, 0x9b0d35c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fadd.h f4, f13, f23, dyn # perform operation
fadd.h f4, f13, f23, rdn # perform operation
fadd.h f4, f13, f23, rmm # perform operation
fadd.h f4, f13, f23, rne # perform operation
fadd.h f4, f13, f23, rtz # perform operation
fadd.h f4, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x5, 0xfda63934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fadd.h f5, f11, f4, dyn # perform operation
fadd.h f5, f11, f4, rdn # perform operation
fadd.h f5, f11, f4, rmm # perform operation
fadd.h f5, f11, f4, rne # perform operation
fadd.h f5, f11, f4, rtz # perform operation
fadd.h f5, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x30, 0xd0eca7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fadd.h f30, f11, f8, dyn # perform operation
fadd.h f30, f11, f8, rdn # perform operation
fadd.h f30, f11, f8, rmm # perform operation
fadd.h f30, f11, f8, rne # perform operation
fadd.h f30, f11, f8, rtz # perform operation
fadd.h f30, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x6, 0xbcef5c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fadd.h f6, f13, f22, dyn # perform operation
fadd.h f6, f13, f22, rdn # perform operation
fadd.h f6, f13, f22, rmm # perform operation
fadd.h f6, f13, f22, rne # perform operation
fadd.h f6, f13, f22, rtz # perform operation
fadd.h f6, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x1, 0x7814dad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fadd.h f1, f3, f5, dyn # perform operation
fadd.h f1, f3, f5, rdn # perform operation
fadd.h f1, f3, f5, rmm # perform operation
fadd.h f1, f3, f5, rne # perform operation
fadd.h f1, f3, f5, rtz # perform operation
fadd.h f1, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x2, 0xc4a37688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f2, f11, f8, dyn # perform operation
fadd.h f2, f11, f8, rdn # perform operation
fadd.h f2, f11, f8, rmm # perform operation
fadd.h f2, f11, f8, rne # perform operation
fadd.h f2, f11, f8, rtz # perform operation
fadd.h f2, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x30, 0xeb13b5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fadd.h f30, f9, f4, dyn # perform operation
fadd.h f30, f9, f4, rdn # perform operation
fadd.h f30, f9, f4, rmm # perform operation
fadd.h f30, f9, f4, rne # perform operation
fadd.h f30, f9, f4, rtz # perform operation
fadd.h f30, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x27, 0x3fdffa57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fadd.h f27, f15, f28, dyn # perform operation
fadd.h f27, f15, f28, rdn # perform operation
fadd.h f27, f15, f28, rmm # perform operation
fadd.h f27, f15, f28, rne # perform operation
fadd.h f27, f15, f28, rtz # perform operation
fadd.h f27, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x22, 0x1817ac80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f22, f8, f15, dyn # perform operation
fadd.h f22, f8, f15, rdn # perform operation
fadd.h f22, f8, f15, rmm # perform operation
fadd.h f22, f8, f15, rne # perform operation
fadd.h f22, f8, f15, rtz # perform operation
fadd.h f22, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x28, 0x94c5552a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fadd.h f28, f21, f15, dyn # perform operation
fadd.h f28, f21, f15, rdn # perform operation
fadd.h f28, f21, f15, rmm # perform operation
fadd.h f28, f21, f15, rne # perform operation
fadd.h f28, f21, f15, rtz # perform operation
fadd.h f28, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x26, 0x92ed7b1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f26, f11, f3, dyn # perform operation
fadd.h f26, f11, f3, rdn # perform operation
fadd.h f26, f11, f3, rmm # perform operation
fadd.h f26, f11, f3, rne # perform operation
fadd.h f26, f11, f3, rtz # perform operation
fadd.h f26, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x29, 0xf5e5cb33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fadd.h f29, f3, f9, dyn # perform operation
fadd.h f29, f3, f9, rdn # perform operation
fadd.h f29, f3, f9, rmm # perform operation
fadd.h f29, f3, f9, rne # perform operation
fadd.h f29, f3, f9, rtz # perform operation
fadd.h f29, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x15, 0x39972bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fadd.h f15, f1, f19, dyn # perform operation
fadd.h f15, f1, f19, rdn # perform operation
fadd.h f15, f1, f19, rmm # perform operation
fadd.h f15, f1, f19, rne # perform operation
fadd.h f15, f1, f19, rtz # perform operation
fadd.h f15, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x30, 0x79f795d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fadd.h f30, f11, f22, dyn # perform operation
fadd.h f30, f11, f22, rdn # perform operation
fadd.h f30, f11, f22, rmm # perform operation
fadd.h f30, f11, f22, rne # perform operation
fadd.h f30, f11, f22, rtz # perform operation
fadd.h f30, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x31, 0xbcf607b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fadd.h f31, f22, f26, dyn # perform operation
fadd.h f31, f22, f26, rdn # perform operation
fadd.h f31, f22, f26, rmm # perform operation
fadd.h f31, f22, f26, rne # perform operation
fadd.h f31, f22, f26, rtz # perform operation
fadd.h f31, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x22, 0xf735c3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fadd.h f22, f11, f26, dyn # perform operation
fadd.h f22, f11, f26, rdn # perform operation
fadd.h f22, f11, f26, rmm # perform operation
fadd.h f22, f11, f26, rne # perform operation
fadd.h f22, f11, f26, rtz # perform operation
fadd.h f22, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x26, 0xb40057cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fadd.h f26, f17, f6, dyn # perform operation
fadd.h f26, f17, f6, rdn # perform operation
fadd.h f26, f17, f6, rmm # perform operation
fadd.h f26, f17, f6, rne # perform operation
fadd.h f26, f17, f6, rtz # perform operation
fadd.h f26, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x21, 0x10bbb06b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fadd.h f21, f27, f20, dyn # perform operation
fadd.h f21, f27, f20, rdn # perform operation
fadd.h f21, f27, f20, rmm # perform operation
fadd.h f21, f27, f20, rne # perform operation
fadd.h f21, f27, f20, rtz # perform operation
fadd.h f21, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x14, 0x468ace6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f14, f9, f7, dyn # perform operation
fadd.h f14, f9, f7, rdn # perform operation
fadd.h f14, f9, f7, rmm # perform operation
fadd.h f14, f9, f7, rne # perform operation
fadd.h f14, f9, f7, rtz # perform operation
fadd.h f14, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x23, 0x85ba6f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fadd.h f23, f21, f2, dyn # perform operation
fadd.h f23, f21, f2, rdn # perform operation
fadd.h f23, f21, f2, rmm # perform operation
fadd.h f23, f21, f2, rne # perform operation
fadd.h f23, f21, f2, rtz # perform operation
fadd.h f23, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x28, 0x481c7db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fadd.h f28, f21, f13, dyn # perform operation
fadd.h f28, f21, f13, rdn # perform operation
fadd.h f28, f21, f13, rmm # perform operation
fadd.h f28, f21, f13, rne # perform operation
fadd.h f28, f21, f13, rtz # perform operation
fadd.h f28, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x4, 0x21b110d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fadd.h f4, f5, f2, dyn # perform operation
fadd.h f4, f5, f2, rdn # perform operation
fadd.h f4, f5, f2, rmm # perform operation
fadd.h f4, f5, f2, rne # perform operation
fadd.h f4, f5, f2, rtz # perform operation
fadd.h f4, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x20, 0x32cda4af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fadd.h f20, f31, f18, dyn # perform operation
fadd.h f20, f31, f18, rdn # perform operation
fadd.h f20, f31, f18, rmm # perform operation
fadd.h f20, f31, f18, rne # perform operation
fadd.h f20, f31, f18, rtz # perform operation
fadd.h f20, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x20, 0xee60cfc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fadd.h f20, f22, f21, dyn # perform operation
fadd.h f20, f22, f21, rdn # perform operation
fadd.h f20, f22, f21, rmm # perform operation
fadd.h f20, f22, f21, rne # perform operation
fadd.h f20, f22, f21, rtz # perform operation
fadd.h f20, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x5, 0xd94f0901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fadd.h f5, f20, f25, dyn # perform operation
fadd.h f5, f20, f25, rdn # perform operation
fadd.h f5, f20, f25, rmm # perform operation
fadd.h f5, f20, f25, rne # perform operation
fadd.h f5, f20, f25, rtz # perform operation
fadd.h f5, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x30, 0x33356303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fadd.h f30, f12, f4, dyn # perform operation
fadd.h f30, f12, f4, rdn # perform operation
fadd.h f30, f12, f4, rmm # perform operation
fadd.h f30, f12, f4, rne # perform operation
fadd.h f30, f12, f4, rtz # perform operation
fadd.h f30, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x7, 0xb46df393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fadd.h f7, f29, f14, dyn # perform operation
fadd.h f7, f29, f14, rdn # perform operation
fadd.h f7, f29, f14, rmm # perform operation
fadd.h f7, f29, f14, rne # perform operation
fadd.h f7, f29, f14, rtz # perform operation
fadd.h f7, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x4, 0xa11d888a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fadd.h f4, f12, f20, dyn # perform operation
fadd.h f4, f12, f20, rdn # perform operation
fadd.h f4, f12, f20, rmm # perform operation
fadd.h f4, f12, f20, rne # perform operation
fadd.h f4, f12, f20, rtz # perform operation
fadd.h f4, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x4, 0xcf9bebb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fadd.h f4, f15, f22, dyn # perform operation
fadd.h f4, f15, f22, rdn # perform operation
fadd.h f4, f15, f22, rmm # perform operation
fadd.h f4, f15, f22, rne # perform operation
fadd.h f4, f15, f22, rtz # perform operation
fadd.h f4, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x11, 0x2c5e4372 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fadd.h f11, f17, f30, dyn # perform operation
fadd.h f11, f17, f30, rdn # perform operation
fadd.h f11, f17, f30, rmm # perform operation
fadd.h f11, f17, f30, rne # perform operation
fadd.h f11, f17, f30, rtz # perform operation
fadd.h f11, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x17, 0xae3cc5df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fadd.h f17, f10, f23, dyn # perform operation
fadd.h f17, f10, f23, rdn # perform operation
fadd.h f17, f10, f23, rmm # perform operation
fadd.h f17, f10, f23, rne # perform operation
fadd.h f17, f10, f23, rtz # perform operation
fadd.h f17, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x3, 0x163aacf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fadd.h f3, f25, f31, dyn # perform operation
fadd.h f3, f25, f31, rdn # perform operation
fadd.h f3, f25, f31, rmm # perform operation
fadd.h f3, f25, f31, rne # perform operation
fadd.h f3, f25, f31, rtz # perform operation
fadd.h f3, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x20, 0x4714e991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fadd.h f20, f3, f29, dyn # perform operation
fadd.h f20, f3, f29, rdn # perform operation
fadd.h f20, f3, f29, rmm # perform operation
fadd.h f20, f3, f29, rne # perform operation
fadd.h f20, f3, f29, rtz # perform operation
fadd.h f20, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x8, 0xc8b0e16b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fadd.h f8, f14, f7, dyn # perform operation
fadd.h f8, f14, f7, rdn # perform operation
fadd.h f8, f14, f7, rmm # perform operation
fadd.h f8, f14, f7, rne # perform operation
fadd.h f8, f14, f7, rtz # perform operation
fadd.h f8, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x22, 0x425a9b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fadd.h f22, f2, f9, dyn # perform operation
fadd.h f22, f2, f9, rdn # perform operation
fadd.h f22, f2, f9, rmm # perform operation
fadd.h f22, f2, f9, rne # perform operation
fadd.h f22, f2, f9, rtz # perform operation
fadd.h f22, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x12, 0x35ac1c35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fadd.h f12, f29, f24, dyn # perform operation
fadd.h f12, f29, f24, rdn # perform operation
fadd.h f12, f29, f24, rmm # perform operation
fadd.h f12, f29, f24, rne # perform operation
fadd.h f12, f29, f24, rtz # perform operation
fadd.h f12, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x11, 0xfb1b782b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f11, f5, f3, dyn # perform operation
fadd.h f11, f5, f3, rdn # perform operation
fadd.h f11, f5, f3, rmm # perform operation
fadd.h f11, f5, f3, rne # perform operation
fadd.h f11, f5, f3, rtz # perform operation
fadd.h f11, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x1, 0x7e1440b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fadd.h f1, f28, f4, dyn # perform operation
fadd.h f1, f28, f4, rdn # perform operation
fadd.h f1, f28, f4, rmm # perform operation
fadd.h f1, f28, f4, rne # perform operation
fadd.h f1, f28, f4, rtz # perform operation
fadd.h f1, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x6, 0xefcd55d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fadd.h f6, f19, f17, dyn # perform operation
fadd.h f6, f19, f17, rdn # perform operation
fadd.h f6, f19, f17, rmm # perform operation
fadd.h f6, f19, f17, rne # perform operation
fadd.h f6, f19, f17, rtz # perform operation
fadd.h f6, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x15, 0x981fcac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fadd.h f15, f18, f31, dyn # perform operation
fadd.h f15, f18, f31, rdn # perform operation
fadd.h f15, f18, f31, rmm # perform operation
fadd.h f15, f18, f31, rne # perform operation
fadd.h f15, f18, f31, rtz # perform operation
fadd.h f15, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x26, 0xd80bda64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fadd.h f26, f18, f2, dyn # perform operation
fadd.h f26, f18, f2, rdn # perform operation
fadd.h f26, f18, f2, rmm # perform operation
fadd.h f26, f18, f2, rne # perform operation
fadd.h f26, f18, f2, rtz # perform operation
fadd.h f26, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x11, 0xa09b823d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fadd.h f11, f12, f16, dyn # perform operation
fadd.h f11, f12, f16, rdn # perform operation
fadd.h f11, f12, f16, rmm # perform operation
fadd.h f11, f12, f16, rne # perform operation
fadd.h f11, f12, f16, rtz # perform operation
fadd.h f11, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x24, 0x2c6b438e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fadd.h f24, f28, f16, dyn # perform operation
fadd.h f24, f28, f16, rdn # perform operation
fadd.h f24, f28, f16, rmm # perform operation
fadd.h f24, f28, f16, rne # perform operation
fadd.h f24, f28, f16, rtz # perform operation
fadd.h f24, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x10, 0x1140d978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fadd.h f10, f17, f9, dyn # perform operation
fadd.h f10, f17, f9, rdn # perform operation
fadd.h f10, f17, f9, rmm # perform operation
fadd.h f10, f17, f9, rne # perform operation
fadd.h f10, f17, f9, rtz # perform operation
fadd.h f10, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x18, 0x3b8a33fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fadd.h f18, f9, f24, dyn # perform operation
fadd.h f18, f9, f24, rdn # perform operation
fadd.h f18, f9, f24, rmm # perform operation
fadd.h f18, f9, f24, rne # perform operation
fadd.h f18, f9, f24, rtz # perform operation
fadd.h f18, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x5, 0xd8734232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fadd.h f5, f6, f15, dyn # perform operation
fadd.h f5, f6, f15, rdn # perform operation
fadd.h f5, f6, f15, rmm # perform operation
fadd.h f5, f6, f15, rne # perform operation
fadd.h f5, f6, f15, rtz # perform operation
fadd.h f5, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x7, 0x42631527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fadd.h f7, f16, f15, dyn # perform operation
fadd.h f7, f16, f15, rdn # perform operation
fadd.h f7, f16, f15, rmm # perform operation
fadd.h f7, f16, f15, rne # perform operation
fadd.h f7, f16, f15, rtz # perform operation
fadd.h f7, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x26, 0xf44476f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fadd.h f26, f31, f20, dyn # perform operation
fadd.h f26, f31, f20, rdn # perform operation
fadd.h f26, f31, f20, rmm # perform operation
fadd.h f26, f31, f20, rne # perform operation
fadd.h f26, f31, f20, rtz # perform operation
fadd.h f26, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x30, 0xe93a2e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fadd.h f30, f23, f24, dyn # perform operation
fadd.h f30, f23, f24, rdn # perform operation
fadd.h f30, f23, f24, rmm # perform operation
fadd.h f30, f23, f24, rne # perform operation
fadd.h f30, f23, f24, rtz # perform operation
fadd.h f30, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x9, 0xdd02c50b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fadd.h f9, f24, f10, dyn # perform operation
fadd.h f9, f24, f10, rdn # perform operation
fadd.h f9, f24, f10, rmm # perform operation
fadd.h f9, f24, f10, rne # perform operation
fadd.h f9, f24, f10, rtz # perform operation
fadd.h f9, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x7, 0x5b9943de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fadd.h f7, f11, f18, dyn # perform operation
fadd.h f7, f11, f18, rdn # perform operation
fadd.h f7, f11, f18, rmm # perform operation
fadd.h f7, f11, f18, rne # perform operation
fadd.h f7, f11, f18, rtz # perform operation
fadd.h f7, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x29, 0xdd13ac5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fadd.h f29, f30, f5, dyn # perform operation
fadd.h f29, f30, f5, rdn # perform operation
fadd.h f29, f30, f5, rmm # perform operation
fadd.h f29, f30, f5, rne # perform operation
fadd.h f29, f30, f5, rtz # perform operation
fadd.h f29, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x9, 0x88093f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fadd.h f9, f22, f1, dyn # perform operation
fadd.h f9, f22, f1, rdn # perform operation
fadd.h f9, f22, f1, rmm # perform operation
fadd.h f9, f22, f1, rne # perform operation
fadd.h f9, f22, f1, rtz # perform operation
fadd.h f9, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x16, 0x0b9db14e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fadd.h f16, f13, f5, dyn # perform operation
fadd.h f16, f13, f5, rdn # perform operation
fadd.h f16, f13, f5, rmm # perform operation
fadd.h f16, f13, f5, rne # perform operation
fadd.h f16, f13, f5, rtz # perform operation
fadd.h f16, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x23, 0xd6743edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fadd.h f23, f3, f1, dyn # perform operation
fadd.h f23, f3, f1, rdn # perform operation
fadd.h f23, f3, f1, rmm # perform operation
fadd.h f23, f3, f1, rne # perform operation
fadd.h f23, f3, f1, rtz # perform operation
fadd.h f23, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x31, 0x52c10c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fadd.h f31, f20, f14, dyn # perform operation
fadd.h f31, f20, f14, rdn # perform operation
fadd.h f31, f20, f14, rmm # perform operation
fadd.h f31, f20, f14, rne # perform operation
fadd.h f31, f20, f14, rtz # perform operation
fadd.h f31, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x30, 0xace172e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fadd.h f30, f27, f10, dyn # perform operation
fadd.h f30, f27, f10, rdn # perform operation
fadd.h f30, f27, f10, rmm # perform operation
fadd.h f30, f27, f10, rne # perform operation
fadd.h f30, f27, f10, rtz # perform operation
fadd.h f30, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x2, 0xf558f9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fadd.h f2, f23, f26, dyn # perform operation
fadd.h f2, f23, f26, rdn # perform operation
fadd.h f2, f23, f26, rmm # perform operation
fadd.h f2, f23, f26, rne # perform operation
fadd.h f2, f23, f26, rtz # perform operation
fadd.h f2, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x21, 0xcc676af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fadd.h f21, f14, f19, dyn # perform operation
fadd.h f21, f14, f19, rdn # perform operation
fadd.h f21, f14, f19, rmm # perform operation
fadd.h f21, f14, f19, rne # perform operation
fadd.h f21, f14, f19, rtz # perform operation
fadd.h f21, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x3, 0x4ae0e979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fadd.h f3, f18, f28, dyn # perform operation
fadd.h f3, f18, f28, rdn # perform operation
fadd.h f3, f18, f28, rmm # perform operation
fadd.h f3, f18, f28, rne # perform operation
fadd.h f3, f18, f28, rtz # perform operation
fadd.h f3, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x23, 0x8f303110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fadd.h f23, f25, f3, dyn # perform operation
fadd.h f23, f25, f3, rdn # perform operation
fadd.h f23, f25, f3, rmm # perform operation
fadd.h f23, f25, f3, rne # perform operation
fadd.h f23, f25, f3, rtz # perform operation
fadd.h f23, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x4, 0xdb6ff928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fadd.h f4, f9, f27, dyn # perform operation
fadd.h f4, f9, f27, rdn # perform operation
fadd.h f4, f9, f27, rmm # perform operation
fadd.h f4, f9, f27, rne # perform operation
fadd.h f4, f9, f27, rtz # perform operation
fadd.h f4, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x14, 0xcbb9e3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fadd.h f14, f13, f21, dyn # perform operation
fadd.h f14, f13, f21, rdn # perform operation
fadd.h f14, f13, f21, rmm # perform operation
fadd.h f14, f13, f21, rne # perform operation
fadd.h f14, f13, f21, rtz # perform operation
fadd.h f14, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x21, 0xd9bba382 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fadd.h f21, f5, f20, dyn # perform operation
fadd.h f21, f5, f20, rdn # perform operation
fadd.h f21, f5, f20, rmm # perform operation
fadd.h f21, f5, f20, rne # perform operation
fadd.h f21, f5, f20, rtz # perform operation
fadd.h f21, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x16, 0xf15cf7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fadd.h f16, f6, f11, dyn # perform operation
fadd.h f16, f6, f11, rdn # perform operation
fadd.h f16, f6, f11, rmm # perform operation
fadd.h f16, f6, f11, rne # perform operation
fadd.h f16, f6, f11, rtz # perform operation
fadd.h f16, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x27, 0xf091d6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fadd.h f27, f30, f22, dyn # perform operation
fadd.h f27, f30, f22, rdn # perform operation
fadd.h f27, f30, f22, rmm # perform operation
fadd.h f27, f30, f22, rne # perform operation
fadd.h f27, f30, f22, rtz # perform operation
fadd.h f27, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x28, 0x064a05ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fadd.h f28, f31, f8, dyn # perform operation
fadd.h f28, f31, f8, rdn # perform operation
fadd.h f28, f31, f8, rmm # perform operation
fadd.h f28, f31, f8, rne # perform operation
fadd.h f28, f31, f8, rtz # perform operation
fadd.h f28, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x28, 0x1fee146d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fadd.h f28, f22, f7, dyn # perform operation
fadd.h f28, f22, f7, rdn # perform operation
fadd.h f28, f22, f7, rmm # perform operation
fadd.h f28, f22, f7, rne # perform operation
fadd.h f28, f22, f7, rtz # perform operation
fadd.h f28, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x16, 0x7ad21b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fadd.h f16, f11, f9, dyn # perform operation
fadd.h f16, f11, f9, rdn # perform operation
fadd.h f16, f11, f9, rmm # perform operation
fadd.h f16, f11, f9, rne # perform operation
fadd.h f16, f11, f9, rtz # perform operation
fadd.h f16, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x20, 0xe94fe538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fadd.h f20, f15, f1, dyn # perform operation
fadd.h f20, f15, f1, rdn # perform operation
fadd.h f20, f15, f1, rmm # perform operation
fadd.h f20, f15, f1, rne # perform operation
fadd.h f20, f15, f1, rtz # perform operation
fadd.h f20, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x8, 0x29d7e871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fadd.h f8, f22, f25, dyn # perform operation
fadd.h f8, f22, f25, rdn # perform operation
fadd.h f8, f22, f25, rmm # perform operation
fadd.h f8, f22, f25, rne # perform operation
fadd.h f8, f22, f25, rtz # perform operation
fadd.h f8, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x1, 0xe537809f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fadd.h f1, f19, f14, dyn # perform operation
fadd.h f1, f19, f14, rdn # perform operation
fadd.h f1, f19, f14, rmm # perform operation
fadd.h f1, f19, f14, rne # perform operation
fadd.h f1, f19, f14, rtz # perform operation
fadd.h f1, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x11, 0xd9c90192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fadd.h f11, f2, f16, dyn # perform operation
fadd.h f11, f2, f16, rdn # perform operation
fadd.h f11, f2, f16, rmm # perform operation
fadd.h f11, f2, f16, rne # perform operation
fadd.h f11, f2, f16, rtz # perform operation
fadd.h f11, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x1, 0x3f9591c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fadd.h f1, f29, f22, dyn # perform operation
fadd.h f1, f29, f22, rdn # perform operation
fadd.h f1, f29, f22, rmm # perform operation
fadd.h f1, f29, f22, rne # perform operation
fadd.h f1, f29, f22, rtz # perform operation
fadd.h f1, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x11, 0x2df857d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f11, f18, f29, dyn # perform operation
fadd.h f11, f18, f29, rdn # perform operation
fadd.h f11, f18, f29, rmm # perform operation
fadd.h f11, f18, f29, rne # perform operation
fadd.h f11, f18, f29, rtz # perform operation
fadd.h f11, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x28, 0x611cb349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fadd.h f28, f25, f10, dyn # perform operation
fadd.h f28, f25, f10, rdn # perform operation
fadd.h f28, f25, f10, rmm # perform operation
fadd.h f28, f25, f10, rne # perform operation
fadd.h f28, f25, f10, rtz # perform operation
fadd.h f28, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x1, 0xaf7ca06c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fadd.h f1, f9, f16, dyn # perform operation
fadd.h f1, f9, f16, rdn # perform operation
fadd.h f1, f9, f16, rmm # perform operation
fadd.h f1, f9, f16, rne # perform operation
fadd.h f1, f9, f16, rtz # perform operation
fadd.h f1, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x29, 0xe492bb1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fadd.h f29, f2, f27, dyn # perform operation
fadd.h f29, f2, f27, rdn # perform operation
fadd.h f29, f2, f27, rmm # perform operation
fadd.h f29, f2, f27, rne # perform operation
fadd.h f29, f2, f27, rtz # perform operation
fadd.h f29, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x7, 0x1aba4d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fadd.h f7, f1, f3, dyn # perform operation
fadd.h f7, f1, f3, rdn # perform operation
fadd.h f7, f1, f3, rmm # perform operation
fadd.h f7, f1, f3, rne # perform operation
fadd.h f7, f1, f3, rtz # perform operation
fadd.h f7, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x12, 0xe7965aff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fadd.h f12, f13, f2, dyn # perform operation
fadd.h f12, f13, f2, rdn # perform operation
fadd.h f12, f13, f2, rmm # perform operation
fadd.h f12, f13, f2, rne # perform operation
fadd.h f12, f13, f2, rtz # perform operation
fadd.h f12, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x23, 0x509c8c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fadd.h f23, f21, f11, dyn # perform operation
fadd.h f23, f21, f11, rdn # perform operation
fadd.h f23, f21, f11, rmm # perform operation
fadd.h f23, f21, f11, rne # perform operation
fadd.h f23, f21, f11, rtz # perform operation
fadd.h f23, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x26, 0xd5a84631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fadd.h f26, f9, f15, dyn # perform operation
fadd.h f26, f9, f15, rdn # perform operation
fadd.h f26, f9, f15, rmm # perform operation
fadd.h f26, f9, f15, rne # perform operation
fadd.h f26, f9, f15, rtz # perform operation
fadd.h f26, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x22, 0x260eab86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fadd.h f22, f8, f2, dyn # perform operation
fadd.h f22, f8, f2, rdn # perform operation
fadd.h f22, f8, f2, rmm # perform operation
fadd.h f22, f8, f2, rne # perform operation
fadd.h f22, f8, f2, rtz # perform operation
fadd.h f22, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x17, 0xec5726c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fadd.h f17, f4, f6, dyn # perform operation
fadd.h f17, f4, f6, rdn # perform operation
fadd.h f17, f4, f6, rmm # perform operation
fadd.h f17, f4, f6, rne # perform operation
fadd.h f17, f4, f6, rtz # perform operation
fadd.h f17, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x30, 0xf7ff680e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fadd.h f30, f11, f27, dyn # perform operation
fadd.h f30, f11, f27, rdn # perform operation
fadd.h f30, f11, f27, rmm # perform operation
fadd.h f30, f11, f27, rne # perform operation
fadd.h f30, f11, f27, rtz # perform operation
fadd.h f30, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x31, 0xaed096eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fadd.h f31, f4, f26, dyn # perform operation
fadd.h f31, f4, f26, rdn # perform operation
fadd.h f31, f4, f26, rmm # perform operation
fadd.h f31, f4, f26, rne # perform operation
fadd.h f31, f4, f26, rtz # perform operation
fadd.h f31, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x7, 0x8255c8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fadd.h f7, f11, f19, dyn # perform operation
fadd.h f7, f11, f19, rdn # perform operation
fadd.h f7, f11, f19, rmm # perform operation
fadd.h f7, f11, f19, rne # perform operation
fadd.h f7, f11, f19, rtz # perform operation
fadd.h f7, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x10, 0x7619742e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fadd.h f10, f25, f18, dyn # perform operation
fadd.h f10, f25, f18, rdn # perform operation
fadd.h f10, f25, f18, rmm # perform operation
fadd.h f10, f25, f18, rne # perform operation
fadd.h f10, f25, f18, rtz # perform operation
fadd.h f10, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x15, 0x297b1d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fadd.h f15, f11, f17, dyn # perform operation
fadd.h f15, f11, f17, rdn # perform operation
fadd.h f15, f11, f17, rmm # perform operation
fadd.h f15, f11, f17, rne # perform operation
fadd.h f15, f11, f17, rtz # perform operation
fadd.h f15, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x11, 0x5287924d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fadd.h f11, f16, f10, dyn # perform operation
fadd.h f11, f16, f10, rdn # perform operation
fadd.h f11, f16, f10, rmm # perform operation
fadd.h f11, f16, f10, rne # perform operation
fadd.h f11, f16, f10, rtz # perform operation
fadd.h f11, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x23, 0x2eccb0b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fadd.h f23, f4, f7, dyn # perform operation
fadd.h f23, f4, f7, rdn # perform operation
fadd.h f23, f4, f7, rmm # perform operation
fadd.h f23, f4, f7, rne # perform operation
fadd.h f23, f4, f7, rtz # perform operation
fadd.h f23, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x8, 0x53785af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f8, f11, f20, dyn # perform operation
fadd.h f8, f11, f20, rdn # perform operation
fadd.h f8, f11, f20, rmm # perform operation
fadd.h f8, f11, f20, rne # perform operation
fadd.h f8, f11, f20, rtz # perform operation
fadd.h f8, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x9, 0x71af5623 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fadd.h f9, f5, f6, dyn # perform operation
fadd.h f9, f5, f6, rdn # perform operation
fadd.h f9, f5, f6, rmm # perform operation
fadd.h f9, f5, f6, rne # perform operation
fadd.h f9, f5, f6, rtz # perform operation
fadd.h f9, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x20, 0xba747149 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f20, f19, f17, dyn # perform operation
fadd.h f20, f19, f17, rdn # perform operation
fadd.h f20, f19, f17, rmm # perform operation
fadd.h f20, f19, f17, rne # perform operation
fadd.h f20, f19, f17, rtz # perform operation
fadd.h f20, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x18, 0xbfd3a976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fadd.h f18, f2, f12, dyn # perform operation
fadd.h f18, f2, f12, rdn # perform operation
fadd.h f18, f2, f12, rmm # perform operation
fadd.h f18, f2, f12, rne # perform operation
fadd.h f18, f2, f12, rtz # perform operation
fadd.h f18, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x5, 0xc0eec74a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fadd.h f5, f21, f14, dyn # perform operation
fadd.h f5, f21, f14, rdn # perform operation
fadd.h f5, f21, f14, rmm # perform operation
fadd.h f5, f21, f14, rne # perform operation
fadd.h f5, f21, f14, rtz # perform operation
fadd.h f5, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x18, 0x052e0106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fadd.h f18, f6, f15, dyn # perform operation
fadd.h f18, f6, f15, rdn # perform operation
fadd.h f18, f6, f15, rmm # perform operation
fadd.h f18, f6, f15, rne # perform operation
fadd.h f18, f6, f15, rtz # perform operation
fadd.h f18, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x7, 0x36814486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fadd.h f7, f5, f18, dyn # perform operation
fadd.h f7, f5, f18, rdn # perform operation
fadd.h f7, f5, f18, rmm # perform operation
fadd.h f7, f5, f18, rne # perform operation
fadd.h f7, f5, f18, rtz # perform operation
fadd.h f7, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x23, 0xf3fe33ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fadd.h f23, f1, f31, dyn # perform operation
fadd.h f23, f1, f31, rdn # perform operation
fadd.h f23, f1, f31, rmm # perform operation
fadd.h f23, f1, f31, rne # perform operation
fadd.h f23, f1, f31, rtz # perform operation
fadd.h f23, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x8, 0xe85628fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fadd.h f8, f9, f10, dyn # perform operation
fadd.h f8, f9, f10, rdn # perform operation
fadd.h f8, f9, f10, rmm # perform operation
fadd.h f8, f9, f10, rne # perform operation
fadd.h f8, f9, f10, rtz # perform operation
fadd.h f8, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x27, 0x4a979ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fadd.h f27, f22, f23, dyn # perform operation
fadd.h f27, f22, f23, rdn # perform operation
fadd.h f27, f22, f23, rmm # perform operation
fadd.h f27, f22, f23, rne # perform operation
fadd.h f27, f22, f23, rtz # perform operation
fadd.h f27, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x16, 0x0b6abbca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fadd.h f16, f30, f27, dyn # perform operation
fadd.h f16, f30, f27, rdn # perform operation
fadd.h f16, f30, f27, rmm # perform operation
fadd.h f16, f30, f27, rne # perform operation
fadd.h f16, f30, f27, rtz # perform operation
fadd.h f16, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x15, 0x126a1e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fadd.h f15, f16, f28, dyn # perform operation
fadd.h f15, f16, f28, rdn # perform operation
fadd.h f15, f16, f28, rmm # perform operation
fadd.h f15, f16, f28, rne # perform operation
fadd.h f15, f16, f28, rtz # perform operation
fadd.h f15, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x19, 0x3b9a8276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fadd.h f19, f3, f15, dyn # perform operation
fadd.h f19, f3, f15, rdn # perform operation
fadd.h f19, f3, f15, rmm # perform operation
fadd.h f19, f3, f15, rne # perform operation
fadd.h f19, f3, f15, rtz # perform operation
fadd.h f19, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x19, 0x2696a84f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fadd.h f19, f25, f17, dyn # perform operation
fadd.h f19, f25, f17, rdn # perform operation
fadd.h f19, f25, f17, rmm # perform operation
fadd.h f19, f25, f17, rne # perform operation
fadd.h f19, f25, f17, rtz # perform operation
fadd.h f19, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x31, 0x728f1b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fadd.h f31, f19, f15, dyn # perform operation
fadd.h f31, f19, f15, rdn # perform operation
fadd.h f31, f19, f15, rmm # perform operation
fadd.h f31, f19, f15, rne # perform operation
fadd.h f31, f19, f15, rtz # perform operation
fadd.h f31, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x27, 0x68d1918c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fadd.h f27, f6, f8, dyn # perform operation
fadd.h f27, f6, f8, rdn # perform operation
fadd.h f27, f6, f8, rmm # perform operation
fadd.h f27, f6, f8, rne # perform operation
fadd.h f27, f6, f8, rtz # perform operation
fadd.h f27, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x11, 0xd1e7cb2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fadd.h f11, f26, f14, dyn # perform operation
fadd.h f11, f26, f14, rdn # perform operation
fadd.h f11, f26, f14, rmm # perform operation
fadd.h f11, f26, f14, rne # perform operation
fadd.h f11, f26, f14, rtz # perform operation
fadd.h f11, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x20, 0xe38ea1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fadd.h f20, f14, f23, dyn # perform operation
fadd.h f20, f14, f23, rdn # perform operation
fadd.h f20, f14, f23, rmm # perform operation
fadd.h f20, f14, f23, rne # perform operation
fadd.h f20, f14, f23, rtz # perform operation
fadd.h f20, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x25, 0x54854f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f25, f19, f15, dyn # perform operation
fadd.h f25, f19, f15, rdn # perform operation
fadd.h f25, f19, f15, rmm # perform operation
fadd.h f25, f19, f15, rne # perform operation
fadd.h f25, f19, f15, rtz # perform operation
fadd.h f25, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x25, 0x780b1945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fadd.h f25, f31, f29, dyn # perform operation
fadd.h f25, f31, f29, rdn # perform operation
fadd.h f25, f31, f29, rmm # perform operation
fadd.h f25, f31, f29, rne # perform operation
fadd.h f25, f31, f29, rtz # perform operation
fadd.h f25, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x10, 0x0aea26ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fadd.h f10, f7, f12, dyn # perform operation
fadd.h f10, f7, f12, rdn # perform operation
fadd.h f10, f7, f12, rmm # perform operation
fadd.h f10, f7, f12, rne # perform operation
fadd.h f10, f7, f12, rtz # perform operation
fadd.h f10, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x24, 0xb832dbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fadd.h f24, f25, f30, dyn # perform operation
fadd.h f24, f25, f30, rdn # perform operation
fadd.h f24, f25, f30, rmm # perform operation
fadd.h f24, f25, f30, rne # perform operation
fadd.h f24, f25, f30, rtz # perform operation
fadd.h f24, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x5, 0x799c86d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f5, f26, f13, dyn # perform operation
fadd.h f5, f26, f13, rdn # perform operation
fadd.h f5, f26, f13, rmm # perform operation
fadd.h f5, f26, f13, rne # perform operation
fadd.h f5, f26, f13, rtz # perform operation
fadd.h f5, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x30, 0x0b37b4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fadd.h f30, f21, f24, dyn # perform operation
fadd.h f30, f21, f24, rdn # perform operation
fadd.h f30, f21, f24, rmm # perform operation
fadd.h f30, f21, f24, rne # perform operation
fadd.h f30, f21, f24, rtz # perform operation
fadd.h f30, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x19, 0x57e4b96b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fadd.h f19, f13, f22, dyn # perform operation
fadd.h f19, f13, f22, rdn # perform operation
fadd.h f19, f13, f22, rmm # perform operation
fadd.h f19, f13, f22, rne # perform operation
fadd.h f19, f13, f22, rtz # perform operation
fadd.h f19, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x11, 0x8d6c489c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fadd.h f11, f10, f24, dyn # perform operation
fadd.h f11, f10, f24, rdn # perform operation
fadd.h f11, f10, f24, rmm # perform operation
fadd.h f11, f10, f24, rne # perform operation
fadd.h f11, f10, f24, rtz # perform operation
fadd.h f11, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x22, 0x0dcbaf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fadd.h f22, f7, f11, dyn # perform operation
fadd.h f22, f7, f11, rdn # perform operation
fadd.h f22, f7, f11, rmm # perform operation
fadd.h f22, f7, f11, rne # perform operation
fadd.h f22, f7, f11, rtz # perform operation
fadd.h f22, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x2, 0xae2fbf87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fadd.h f2, f14, f11, dyn # perform operation
fadd.h f2, f14, f11, rdn # perform operation
fadd.h f2, f14, f11, rmm # perform operation
fadd.h f2, f14, f11, rne # perform operation
fadd.h f2, f14, f11, rtz # perform operation
fadd.h f2, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x13, 0x8b9e7bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fadd.h f13, f28, f4, dyn # perform operation
fadd.h f13, f28, f4, rdn # perform operation
fadd.h f13, f28, f4, rmm # perform operation
fadd.h f13, f28, f4, rne # perform operation
fadd.h f13, f28, f4, rtz # perform operation
fadd.h f13, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x7, 0xb9c73dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fadd.h f7, f10, f13, dyn # perform operation
fadd.h f7, f10, f13, rdn # perform operation
fadd.h f7, f10, f13, rmm # perform operation
fadd.h f7, f10, f13, rne # perform operation
fadd.h f7, f10, f13, rtz # perform operation
fadd.h f7, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x10, 0x6f41d780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fadd.h f10, f29, f1, dyn # perform operation
fadd.h f10, f29, f1, rdn # perform operation
fadd.h f10, f29, f1, rmm # perform operation
fadd.h f10, f29, f1, rne # perform operation
fadd.h f10, f29, f1, rtz # perform operation
fadd.h f10, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x4, 0xa167dfa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fadd.h f4, f6, f17, dyn # perform operation
fadd.h f4, f6, f17, rdn # perform operation
fadd.h f4, f6, f17, rmm # perform operation
fadd.h f4, f6, f17, rne # perform operation
fadd.h f4, f6, f17, rtz # perform operation
fadd.h f4, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x26, 0x27d95936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fadd.h f26, f29, f25, dyn # perform operation
fadd.h f26, f29, f25, rdn # perform operation
fadd.h f26, f29, f25, rmm # perform operation
fadd.h f26, f29, f25, rne # perform operation
fadd.h f26, f29, f25, rtz # perform operation
fadd.h f26, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x25, 0xb77f9bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fadd.h f25, f30, f7, dyn # perform operation
fadd.h f25, f30, f7, rdn # perform operation
fadd.h f25, f30, f7, rmm # perform operation
fadd.h f25, f30, f7, rne # perform operation
fadd.h f25, f30, f7, rtz # perform operation
fadd.h f25, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x18, 0xdf3bedac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fadd.h f18, f20, f7, dyn # perform operation
fadd.h f18, f20, f7, rdn # perform operation
fadd.h f18, f20, f7, rmm # perform operation
fadd.h f18, f20, f7, rne # perform operation
fadd.h f18, f20, f7, rtz # perform operation
fadd.h f18, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x1, 0x0120105a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fadd.h f1, f28, f15, dyn # perform operation
fadd.h f1, f28, f15, rdn # perform operation
fadd.h f1, f28, f15, rmm # perform operation
fadd.h f1, f28, f15, rne # perform operation
fadd.h f1, f28, f15, rtz # perform operation
fadd.h f1, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x9, 0xd140e2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fadd.h f9, f20, f27, dyn # perform operation
fadd.h f9, f20, f27, rdn # perform operation
fadd.h f9, f20, f27, rmm # perform operation
fadd.h f9, f20, f27, rne # perform operation
fadd.h f9, f20, f27, rtz # perform operation
fadd.h f9, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x15, 0x12f83e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fadd.h f15, f11, f12, dyn # perform operation
fadd.h f15, f11, f12, rdn # perform operation
fadd.h f15, f11, f12, rmm # perform operation
fadd.h f15, f11, f12, rne # perform operation
fadd.h f15, f11, f12, rtz # perform operation
fadd.h f15, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x20, 0xe56627d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fadd.h f20, f28, f16, dyn # perform operation
fadd.h f20, f28, f16, rdn # perform operation
fadd.h f20, f28, f16, rmm # perform operation
fadd.h f20, f28, f16, rne # perform operation
fadd.h f20, f28, f16, rtz # perform operation
fadd.h f20, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x17, 0x0d701992 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f17, f15, f25, dyn # perform operation
fadd.h f17, f15, f25, rdn # perform operation
fadd.h f17, f15, f25, rmm # perform operation
fadd.h f17, f15, f25, rne # perform operation
fadd.h f17, f15, f25, rtz # perform operation
fadd.h f17, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x22, 0x82b07f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fadd.h f22, f18, f12, dyn # perform operation
fadd.h f22, f18, f12, rdn # perform operation
fadd.h f22, f18, f12, rmm # perform operation
fadd.h f22, f18, f12, rne # perform operation
fadd.h f22, f18, f12, rtz # perform operation
fadd.h f22, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x12, 0x981bc8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fadd.h f12, f24, f14, dyn # perform operation
fadd.h f12, f24, f14, rdn # perform operation
fadd.h f12, f24, f14, rmm # perform operation
fadd.h f12, f24, f14, rne # perform operation
fadd.h f12, f24, f14, rtz # perform operation
fadd.h f12, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x27, 0x593aa096 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fadd.h f27, f14, f4, dyn # perform operation
fadd.h f27, f14, f4, rdn # perform operation
fadd.h f27, f14, f4, rmm # perform operation
fadd.h f27, f14, f4, rne # perform operation
fadd.h f27, f14, f4, rtz # perform operation
fadd.h f27, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x19, 0x2886cfab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fadd.h f19, f31, f11, dyn # perform operation
fadd.h f19, f31, f11, rdn # perform operation
fadd.h f19, f31, f11, rmm # perform operation
fadd.h f19, f31, f11, rne # perform operation
fadd.h f19, f31, f11, rtz # perform operation
fadd.h f19, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x23, 0x8340ae40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fadd.h f23, f14, f29, dyn # perform operation
fadd.h f23, f14, f29, rdn # perform operation
fadd.h f23, f14, f29, rmm # perform operation
fadd.h f23, f14, f29, rne # perform operation
fadd.h f23, f14, f29, rtz # perform operation
fadd.h f23, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x19, 0xd15fb793 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fadd.h f19, f4, f11, dyn # perform operation
fadd.h f19, f4, f11, rdn # perform operation
fadd.h f19, f4, f11, rmm # perform operation
fadd.h f19, f4, f11, rne # perform operation
fadd.h f19, f4, f11, rtz # perform operation
fadd.h f19, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x29, 0x6a8eea03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fadd.h f29, f20, f31, dyn # perform operation
fadd.h f29, f20, f31, rdn # perform operation
fadd.h f29, f20, f31, rmm # perform operation
fadd.h f29, f20, f31, rne # perform operation
fadd.h f29, f20, f31, rtz # perform operation
fadd.h f29, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x31, 0xae656827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fadd.h f31, f12, f8, dyn # perform operation
fadd.h f31, f12, f8, rdn # perform operation
fadd.h f31, f12, f8, rmm # perform operation
fadd.h f31, f12, f8, rne # perform operation
fadd.h f31, f12, f8, rtz # perform operation
fadd.h f31, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x22, 0x327941ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fadd.h f22, f28, f5, dyn # perform operation
fadd.h f22, f28, f5, rdn # perform operation
fadd.h f22, f28, f5, rmm # perform operation
fadd.h f22, f28, f5, rne # perform operation
fadd.h f22, f28, f5, rtz # perform operation
fadd.h f22, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x3, 0xa42490f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fadd.h f3, f18, f23, dyn # perform operation
fadd.h f3, f18, f23, rdn # perform operation
fadd.h f3, f18, f23, rmm # perform operation
fadd.h f3, f18, f23, rne # perform operation
fadd.h f3, f18, f23, rtz # perform operation
fadd.h f3, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x25, 0xdfe845f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fadd.h f25, f12, f20, dyn # perform operation
fadd.h f25, f12, f20, rdn # perform operation
fadd.h f25, f12, f20, rmm # perform operation
fadd.h f25, f12, f20, rne # perform operation
fadd.h f25, f12, f20, rtz # perform operation
fadd.h f25, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x8, 0xa6002cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fadd.h f8, f7, f13, dyn # perform operation
fadd.h f8, f7, f13, rdn # perform operation
fadd.h f8, f7, f13, rmm # perform operation
fadd.h f8, f7, f13, rne # perform operation
fadd.h f8, f7, f13, rtz # perform operation
fadd.h f8, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x15, 0xbb0863a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fadd.h f15, f27, f30, dyn # perform operation
fadd.h f15, f27, f30, rdn # perform operation
fadd.h f15, f27, f30, rmm # perform operation
fadd.h f15, f27, f30, rne # perform operation
fadd.h f15, f27, f30, rtz # perform operation
fadd.h f15, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x23, 0xc0ee5d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fadd.h f23, f5, f17, dyn # perform operation
fadd.h f23, f5, f17, rdn # perform operation
fadd.h f23, f5, f17, rmm # perform operation
fadd.h f23, f5, f17, rne # perform operation
fadd.h f23, f5, f17, rtz # perform operation
fadd.h f23, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x11, 0x4404250e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fadd.h f11, f20, f10, dyn # perform operation
fadd.h f11, f20, f10, rdn # perform operation
fadd.h f11, f20, f10, rmm # perform operation
fadd.h f11, f20, f10, rne # perform operation
fadd.h f11, f20, f10, rtz # perform operation
fadd.h f11, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x23, 0x3f8b13c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fadd.h f23, f26, f3, dyn # perform operation
fadd.h f23, f26, f3, rdn # perform operation
fadd.h f23, f26, f3, rmm # perform operation
fadd.h f23, f26, f3, rne # perform operation
fadd.h f23, f26, f3, rtz # perform operation
fadd.h f23, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x7, 0xfd7e280e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fadd.h f7, f11, f24, dyn # perform operation
fadd.h f7, f11, f24, rdn # perform operation
fadd.h f7, f11, f24, rmm # perform operation
fadd.h f7, f11, f24, rne # perform operation
fadd.h f7, f11, f24, rtz # perform operation
fadd.h f7, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x2, 0x2050d2f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fadd.h f2, f24, f26, dyn # perform operation
fadd.h f2, f24, f26, rdn # perform operation
fadd.h f2, f24, f26, rmm # perform operation
fadd.h f2, f24, f26, rne # perform operation
fadd.h f2, f24, f26, rtz # perform operation
fadd.h f2, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x25, 0x3eb9f71e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fadd.h f25, f27, f9, dyn # perform operation
fadd.h f25, f27, f9, rdn # perform operation
fadd.h f25, f27, f9, rmm # perform operation
fadd.h f25, f27, f9, rne # perform operation
fadd.h f25, f27, f9, rtz # perform operation
fadd.h f25, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x11, 0x038f4dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fadd.h f11, f22, f19, dyn # perform operation
fadd.h f11, f22, f19, rdn # perform operation
fadd.h f11, f22, f19, rmm # perform operation
fadd.h f11, f22, f19, rne # perform operation
fadd.h f11, f22, f19, rtz # perform operation
fadd.h f11, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x6, 0x629a6e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fadd.h f6, f12, f1, dyn # perform operation
fadd.h f6, f12, f1, rdn # perform operation
fadd.h f6, f12, f1, rmm # perform operation
fadd.h f6, f12, f1, rne # perform operation
fadd.h f6, f12, f1, rtz # perform operation
fadd.h f6, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x3, 0xf509de3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fadd.h f3, f26, f12, dyn # perform operation
fadd.h f3, f26, f12, rdn # perform operation
fadd.h f3, f26, f12, rmm # perform operation
fadd.h f3, f26, f12, rne # perform operation
fadd.h f3, f26, f12, rtz # perform operation
fadd.h f3, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x26, 0x65b0dbef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fadd.h f26, f11, f19, dyn # perform operation
fadd.h f26, f11, f19, rdn # perform operation
fadd.h f26, f11, f19, rmm # perform operation
fadd.h f26, f11, f19, rne # perform operation
fadd.h f26, f11, f19, rtz # perform operation
fadd.h f26, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x1, 0x6add9105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fadd.h f1, f28, f7, dyn # perform operation
fadd.h f1, f28, f7, rdn # perform operation
fadd.h f1, f28, f7, rmm # perform operation
fadd.h f1, f28, f7, rne # perform operation
fadd.h f1, f28, f7, rtz # perform operation
fadd.h f1, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x18, 0x3b862367 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fadd.h f18, f19, f22, dyn # perform operation
fadd.h f18, f19, f22, rdn # perform operation
fadd.h f18, f19, f22, rmm # perform operation
fadd.h f18, f19, f22, rne # perform operation
fadd.h f18, f19, f22, rtz # perform operation
fadd.h f18, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x25, 0xff47f05d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fadd.h f25, f10, f30, dyn # perform operation
fadd.h f25, f10, f30, rdn # perform operation
fadd.h f25, f10, f30, rmm # perform operation
fadd.h f25, f10, f30, rne # perform operation
fadd.h f25, f10, f30, rtz # perform operation
fadd.h f25, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x25, 0xdf1a3a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fadd.h f25, f24, f16, dyn # perform operation
fadd.h f25, f24, f16, rdn # perform operation
fadd.h f25, f24, f16, rmm # perform operation
fadd.h f25, f24, f16, rne # perform operation
fadd.h f25, f24, f16, rtz # perform operation
fadd.h f25, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x23, 0x8017036b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fadd.h f23, f3, f9, dyn # perform operation
fadd.h f23, f3, f9, rdn # perform operation
fadd.h f23, f3, f9, rmm # perform operation
fadd.h f23, f3, f9, rne # perform operation
fadd.h f23, f3, f9, rtz # perform operation
fadd.h f23, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x31, 0x4acb21a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fadd.h f31, f7, f30, dyn # perform operation
fadd.h f31, f7, f30, rdn # perform operation
fadd.h f31, f7, f30, rmm # perform operation
fadd.h f31, f7, f30, rne # perform operation
fadd.h f31, f7, f30, rtz # perform operation
fadd.h f31, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x5, 0x5a70a59c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fadd.h f5, f12, f25, dyn # perform operation
fadd.h f5, f12, f25, rdn # perform operation
fadd.h f5, f12, f25, rmm # perform operation
fadd.h f5, f12, f25, rne # perform operation
fadd.h f5, f12, f25, rtz # perform operation
fadd.h f5, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x29, 0xa0ff8d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fadd.h f29, f21, f31, dyn # perform operation
fadd.h f29, f21, f31, rdn # perform operation
fadd.h f29, f21, f31, rmm # perform operation
fadd.h f29, f21, f31, rne # perform operation
fadd.h f29, f21, f31, rtz # perform operation
fadd.h f29, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x11, 0x84c87278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fadd.h f11, f7, f5, dyn # perform operation
fadd.h f11, f7, f5, rdn # perform operation
fadd.h f11, f7, f5, rmm # perform operation
fadd.h f11, f7, f5, rne # perform operation
fadd.h f11, f7, f5, rtz # perform operation
fadd.h f11, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x7, 0x10b37f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fadd.h f7, f21, f26, dyn # perform operation
fadd.h f7, f21, f26, rdn # perform operation
fadd.h f7, f21, f26, rmm # perform operation
fadd.h f7, f21, f26, rne # perform operation
fadd.h f7, f21, f26, rtz # perform operation
fadd.h f7, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x4, 0x30025b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fadd.h f4, f11, f7, dyn # perform operation
fadd.h f4, f11, f7, rdn # perform operation
fadd.h f4, f11, f7, rmm # perform operation
fadd.h f4, f11, f7, rne # perform operation
fadd.h f4, f11, f7, rtz # perform operation
fadd.h f4, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x2, 0x2dbadec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fadd.h f2, f11, f22, dyn # perform operation
fadd.h f2, f11, f22, rdn # perform operation
fadd.h f2, f11, f22, rmm # perform operation
fadd.h f2, f11, f22, rne # perform operation
fadd.h f2, f11, f22, rtz # perform operation
fadd.h f2, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x16, 0xe0de95cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fadd.h f16, f14, f26, dyn # perform operation
fadd.h f16, f14, f26, rdn # perform operation
fadd.h f16, f14, f26, rmm # perform operation
fadd.h f16, f14, f26, rne # perform operation
fadd.h f16, f14, f26, rtz # perform operation
fadd.h f16, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x24, 0x26fcefbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fadd.h f24, f7, f28, dyn # perform operation
fadd.h f24, f7, f28, rdn # perform operation
fadd.h f24, f7, f28, rmm # perform operation
fadd.h f24, f7, f28, rne # perform operation
fadd.h f24, f7, f28, rtz # perform operation
fadd.h f24, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x9, 0x3c7a7bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fadd.h f9, f31, f16, dyn # perform operation
fadd.h f9, f31, f16, rdn # perform operation
fadd.h f9, f31, f16, rmm # perform operation
fadd.h f9, f31, f16, rne # perform operation
fadd.h f9, f31, f16, rtz # perform operation
fadd.h f9, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x28, 0x6a57de57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fadd.h f28, f9, f3, dyn # perform operation
fadd.h f28, f9, f3, rdn # perform operation
fadd.h f28, f9, f3, rmm # perform operation
fadd.h f28, f9, f3, rne # perform operation
fadd.h f28, f9, f3, rtz # perform operation
fadd.h f28, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x6, 0xe7b9065d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fadd.h f6, f24, f30, dyn # perform operation
fadd.h f6, f24, f30, rdn # perform operation
fadd.h f6, f24, f30, rmm # perform operation
fadd.h f6, f24, f30, rne # perform operation
fadd.h f6, f24, f30, rtz # perform operation
fadd.h f6, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x13, 0xd6925e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fadd.h f13, f25, f18, dyn # perform operation
fadd.h f13, f25, f18, rdn # perform operation
fadd.h f13, f25, f18, rmm # perform operation
fadd.h f13, f25, f18, rne # perform operation
fadd.h f13, f25, f18, rtz # perform operation
fadd.h f13, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x3, 0x5d96d29e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fadd.h f3, f20, f19, dyn # perform operation
fadd.h f3, f20, f19, rdn # perform operation
fadd.h f3, f20, f19, rmm # perform operation
fadd.h f3, f20, f19, rne # perform operation
fadd.h f3, f20, f19, rtz # perform operation
fadd.h f3, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x4, 0x22cf7ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fadd.h f4, f24, f18, dyn # perform operation
fadd.h f4, f24, f18, rdn # perform operation
fadd.h f4, f24, f18, rmm # perform operation
fadd.h f4, f24, f18, rne # perform operation
fadd.h f4, f24, f18, rtz # perform operation
fadd.h f4, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x14, 0x4ff4c710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f14, f19, f7, dyn # perform operation
fadd.h f14, f19, f7, rdn # perform operation
fadd.h f14, f19, f7, rmm # perform operation
fadd.h f14, f19, f7, rne # perform operation
fadd.h f14, f19, f7, rtz # perform operation
fadd.h f14, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x23, 0x12620975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f23, f2, f31, dyn # perform operation
fadd.h f23, f2, f31, rdn # perform operation
fadd.h f23, f2, f31, rmm # perform operation
fadd.h f23, f2, f31, rne # perform operation
fadd.h f23, f2, f31, rtz # perform operation
fadd.h f23, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x12, 0x56df7216 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fadd.h f12, f6, f16, dyn # perform operation
fadd.h f12, f6, f16, rdn # perform operation
fadd.h f12, f6, f16, rmm # perform operation
fadd.h f12, f6, f16, rne # perform operation
fadd.h f12, f6, f16, rtz # perform operation
fadd.h f12, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x3, 0x0a589750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fadd.h f3, f27, f11, dyn # perform operation
fadd.h f3, f27, f11, rdn # perform operation
fadd.h f3, f27, f11, rmm # perform operation
fadd.h f3, f27, f11, rne # perform operation
fadd.h f3, f27, f11, rtz # perform operation
fadd.h f3, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x29, 0x8ecaced2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fadd.h f29, f17, f9, dyn # perform operation
fadd.h f29, f17, f9, rdn # perform operation
fadd.h f29, f17, f9, rmm # perform operation
fadd.h f29, f17, f9, rne # perform operation
fadd.h f29, f17, f9, rtz # perform operation
fadd.h f29, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x19, 0xbe0afd4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fadd.h f19, f30, f7, dyn # perform operation
fadd.h f19, f30, f7, rdn # perform operation
fadd.h f19, f30, f7, rmm # perform operation
fadd.h f19, f30, f7, rne # perform operation
fadd.h f19, f30, f7, rtz # perform operation
fadd.h f19, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x12, 0xa8defa27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fadd.h f12, f21, f17, dyn # perform operation
fadd.h f12, f21, f17, rdn # perform operation
fadd.h f12, f21, f17, rmm # perform operation
fadd.h f12, f21, f17, rne # perform operation
fadd.h f12, f21, f17, rtz # perform operation
fadd.h f12, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x2, 0xb4ae2a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fadd.h f2, f14, f22, dyn # perform operation
fadd.h f2, f14, f22, rdn # perform operation
fadd.h f2, f14, f22, rmm # perform operation
fadd.h f2, f14, f22, rne # perform operation
fadd.h f2, f14, f22, rtz # perform operation
fadd.h f2, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x7, 0xdc8ccd7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f7, f28, f25, dyn # perform operation
fadd.h f7, f28, f25, rdn # perform operation
fadd.h f7, f28, f25, rmm # perform operation
fadd.h f7, f28, f25, rne # perform operation
fadd.h f7, f28, f25, rtz # perform operation
fadd.h f7, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x9, 0xbefbd32b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fadd.h f9, f23, f20, dyn # perform operation
fadd.h f9, f23, f20, rdn # perform operation
fadd.h f9, f23, f20, rmm # perform operation
fadd.h f9, f23, f20, rne # perform operation
fadd.h f9, f23, f20, rtz # perform operation
fadd.h f9, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x2, 0xf1d24164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fadd.h f2, f19, f22, dyn # perform operation
fadd.h f2, f19, f22, rdn # perform operation
fadd.h f2, f19, f22, rmm # perform operation
fadd.h f2, f19, f22, rne # perform operation
fadd.h f2, f19, f22, rtz # perform operation
fadd.h f2, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x23, 0x7ec19594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fadd.h f23, f29, f6, dyn # perform operation
fadd.h f23, f29, f6, rdn # perform operation
fadd.h f23, f29, f6, rmm # perform operation
fadd.h f23, f29, f6, rne # perform operation
fadd.h f23, f29, f6, rtz # perform operation
fadd.h f23, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x4, 0xb6f2e30f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fadd.h f4, f24, f13, dyn # perform operation
fadd.h f4, f24, f13, rdn # perform operation
fadd.h f4, f24, f13, rmm # perform operation
fadd.h f4, f24, f13, rne # perform operation
fadd.h f4, f24, f13, rtz # perform operation
fadd.h f4, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x25, 0xf24e38da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fadd.h f25, f13, f17, dyn # perform operation
fadd.h f25, f13, f17, rdn # perform operation
fadd.h f25, f13, f17, rmm # perform operation
fadd.h f25, f13, f17, rne # perform operation
fadd.h f25, f13, f17, rtz # perform operation
fadd.h f25, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x13, 0xa6a43a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fadd.h f13, f24, f22, dyn # perform operation
fadd.h f13, f24, f22, rdn # perform operation
fadd.h f13, f24, f22, rmm # perform operation
fadd.h f13, f24, f22, rne # perform operation
fadd.h f13, f24, f22, rtz # perform operation
fadd.h f13, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x16, 0x73e460a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fadd.h f16, f23, f30, dyn # perform operation
fadd.h f16, f23, f30, rdn # perform operation
fadd.h f16, f23, f30, rmm # perform operation
fadd.h f16, f23, f30, rne # perform operation
fadd.h f16, f23, f30, rtz # perform operation
fadd.h f16, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x7, 0x070c7756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fadd.h f7, f16, f11, dyn # perform operation
fadd.h f7, f16, f11, rdn # perform operation
fadd.h f7, f16, f11, rmm # perform operation
fadd.h f7, f16, f11, rne # perform operation
fadd.h f7, f16, f11, rtz # perform operation
fadd.h f7, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x23, 0xb764fc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fadd.h f23, f22, f29, dyn # perform operation
fadd.h f23, f22, f29, rdn # perform operation
fadd.h f23, f22, f29, rmm # perform operation
fadd.h f23, f22, f29, rne # perform operation
fadd.h f23, f22, f29, rtz # perform operation
fadd.h f23, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x15, 0x38f24d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fadd.h f15, f8, f26, dyn # perform operation
fadd.h f15, f8, f26, rdn # perform operation
fadd.h f15, f8, f26, rmm # perform operation
fadd.h f15, f8, f26, rne # perform operation
fadd.h f15, f8, f26, rtz # perform operation
fadd.h f15, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x22, 0xa83004fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fadd.h f22, f16, f4, dyn # perform operation
fadd.h f22, f16, f4, rdn # perform operation
fadd.h f22, f16, f4, rmm # perform operation
fadd.h f22, f16, f4, rne # perform operation
fadd.h f22, f16, f4, rtz # perform operation
fadd.h f22, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x20, 0x3f6a2c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fadd.h f20, f13, f30, dyn # perform operation
fadd.h f20, f13, f30, rdn # perform operation
fadd.h f20, f13, f30, rmm # perform operation
fadd.h f20, f13, f30, rne # perform operation
fadd.h f20, f13, f30, rtz # perform operation
fadd.h f20, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x16, 0xd3ba75c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fadd.h f16, f14, f6, dyn # perform operation
fadd.h f16, f14, f6, rdn # perform operation
fadd.h f16, f14, f6, rmm # perform operation
fadd.h f16, f14, f6, rne # perform operation
fadd.h f16, f14, f6, rtz # perform operation
fadd.h f16, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x29, 0xeeb69cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fadd.h f29, f28, f3, dyn # perform operation
fadd.h f29, f28, f3, rdn # perform operation
fadd.h f29, f28, f3, rmm # perform operation
fadd.h f29, f28, f3, rne # perform operation
fadd.h f29, f28, f3, rtz # perform operation
fadd.h f29, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x15, 0x34d81ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fadd.h f15, f9, f3, dyn # perform operation
fadd.h f15, f9, f3, rdn # perform operation
fadd.h f15, f9, f3, rmm # perform operation
fadd.h f15, f9, f3, rne # perform operation
fadd.h f15, f9, f3, rtz # perform operation
fadd.h f15, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x19, 0x4067fad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fadd.h f19, f3, f17, dyn # perform operation
fadd.h f19, f3, f17, rdn # perform operation
fadd.h f19, f3, f17, rmm # perform operation
fadd.h f19, f3, f17, rne # perform operation
fadd.h f19, f3, f17, rtz # perform operation
fadd.h f19, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x2, 0x2c1a1eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fadd.h f2, f10, f17, dyn # perform operation
fadd.h f2, f10, f17, rdn # perform operation
fadd.h f2, f10, f17, rmm # perform operation
fadd.h f2, f10, f17, rne # perform operation
fadd.h f2, f10, f17, rtz # perform operation
fadd.h f2, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x22, 0x1fa9f9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fadd.h f22, f17, f25, dyn # perform operation
fadd.h f22, f17, f25, rdn # perform operation
fadd.h f22, f17, f25, rmm # perform operation
fadd.h f22, f17, f25, rne # perform operation
fadd.h f22, f17, f25, rtz # perform operation
fadd.h f22, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x1, 0x48c76e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f1, f4, f19, dyn # perform operation
fadd.h f1, f4, f19, rdn # perform operation
fadd.h f1, f4, f19, rmm # perform operation
fadd.h f1, f4, f19, rne # perform operation
fadd.h f1, f4, f19, rtz # perform operation
fadd.h f1, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x4, 0xe8c8d992 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fadd.h f4, f13, f24, dyn # perform operation
fadd.h f4, f13, f24, rdn # perform operation
fadd.h f4, f13, f24, rmm # perform operation
fadd.h f4, f13, f24, rne # perform operation
fadd.h f4, f13, f24, rtz # perform operation
fadd.h f4, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x26, 0x3320961f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fadd.h f26, f14, f7, dyn # perform operation
fadd.h f26, f14, f7, rdn # perform operation
fadd.h f26, f14, f7, rmm # perform operation
fadd.h f26, f14, f7, rne # perform operation
fadd.h f26, f14, f7, rtz # perform operation
fadd.h f26, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x24, 0x091e2785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fadd.h f24, f7, f17, dyn # perform operation
fadd.h f24, f7, f17, rdn # perform operation
fadd.h f24, f7, f17, rmm # perform operation
fadd.h f24, f7, f17, rne # perform operation
fadd.h f24, f7, f17, rtz # perform operation
fadd.h f24, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x17, 0x452fc8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fadd.h f17, f25, f28, dyn # perform operation
fadd.h f17, f25, f28, rdn # perform operation
fadd.h f17, f25, f28, rmm # perform operation
fadd.h f17, f25, f28, rne # perform operation
fadd.h f17, f25, f28, rtz # perform operation
fadd.h f17, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x18, 0x43c6bd01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fadd.h f18, f24, f5, dyn # perform operation
fadd.h f18, f24, f5, rdn # perform operation
fadd.h f18, f24, f5, rmm # perform operation
fadd.h f18, f24, f5, rne # perform operation
fadd.h f18, f24, f5, rtz # perform operation
fadd.h f18, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x21, 0x953a2190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fadd.h f21, f6, f27, dyn # perform operation
fadd.h f21, f6, f27, rdn # perform operation
fadd.h f21, f6, f27, rmm # perform operation
fadd.h f21, f6, f27, rne # perform operation
fadd.h f21, f6, f27, rtz # perform operation
fadd.h f21, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x24, 0x41329249 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fadd.h f24, f5, f6, dyn # perform operation
fadd.h f24, f5, f6, rdn # perform operation
fadd.h f24, f5, f6, rmm # perform operation
fadd.h f24, f5, f6, rne # perform operation
fadd.h f24, f5, f6, rtz # perform operation
fadd.h f24, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x29, 0x360fe6db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fadd.h f29, f6, f26, dyn # perform operation
fadd.h f29, f6, f26, rdn # perform operation
fadd.h f29, f6, f26, rmm # perform operation
fadd.h f29, f6, f26, rne # perform operation
fadd.h f29, f6, f26, rtz # perform operation
fadd.h f29, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x9, 0xe449a820 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fadd.h f9, f31, f29, dyn # perform operation
fadd.h f9, f31, f29, rdn # perform operation
fadd.h f9, f31, f29, rmm # perform operation
fadd.h f9, f31, f29, rne # perform operation
fadd.h f9, f31, f29, rtz # perform operation
fadd.h f9, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x24, 0x2dbad4ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fadd.h f24, f7, f9, dyn # perform operation
fadd.h f24, f7, f9, rdn # perform operation
fadd.h f24, f7, f9, rmm # perform operation
fadd.h f24, f7, f9, rne # perform operation
fadd.h f24, f7, f9, rtz # perform operation
fadd.h f24, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x6, 0x6fccd2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fadd.h f6, f28, f26, dyn # perform operation
fadd.h f6, f28, f26, rdn # perform operation
fadd.h f6, f28, f26, rmm # perform operation
fadd.h f6, f28, f26, rne # perform operation
fadd.h f6, f28, f26, rtz # perform operation
fadd.h f6, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x12, 0xa969ee9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fadd.h f12, f17, f19, dyn # perform operation
fadd.h f12, f17, f19, rdn # perform operation
fadd.h f12, f17, f19, rmm # perform operation
fadd.h f12, f17, f19, rne # perform operation
fadd.h f12, f17, f19, rtz # perform operation
fadd.h f12, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x10, 0xdb2035f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fadd.h f10, f29, f12, dyn # perform operation
fadd.h f10, f29, f12, rdn # perform operation
fadd.h f10, f29, f12, rmm # perform operation
fadd.h f10, f29, f12, rne # perform operation
fadd.h f10, f29, f12, rtz # perform operation
fadd.h f10, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x12, 0xdcd921fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fadd.h f12, f31, f1, dyn # perform operation
fadd.h f12, f31, f1, rdn # perform operation
fadd.h f12, f31, f1, rmm # perform operation
fadd.h f12, f31, f1, rne # perform operation
fadd.h f12, f31, f1, rtz # perform operation
fadd.h f12, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x22, 0xff7dde82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fadd.h f22, f23, f2, dyn # perform operation
fadd.h f22, f23, f2, rdn # perform operation
fadd.h f22, f23, f2, rmm # perform operation
fadd.h f22, f23, f2, rne # perform operation
fadd.h f22, f23, f2, rtz # perform operation
fadd.h f22, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x25, 0x03cdaad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fadd.h f25, f17, f1, dyn # perform operation
fadd.h f25, f17, f1, rdn # perform operation
fadd.h f25, f17, f1, rmm # perform operation
fadd.h f25, f17, f1, rne # perform operation
fadd.h f25, f17, f1, rtz # perform operation
fadd.h f25, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x15, 0xca1265ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fadd.h f15, f18, f20, dyn # perform operation
fadd.h f15, f18, f20, rdn # perform operation
fadd.h f15, f18, f20, rmm # perform operation
fadd.h f15, f18, f20, rne # perform operation
fadd.h f15, f18, f20, rtz # perform operation
fadd.h f15, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x12, 0x0ef12c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fadd.h f12, f9, f23, dyn # perform operation
fadd.h f12, f9, f23, rdn # perform operation
fadd.h f12, f9, f23, rmm # perform operation
fadd.h f12, f9, f23, rne # perform operation
fadd.h f12, f9, f23, rtz # perform operation
fadd.h f12, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x5, 0xf87458f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fadd.h f5, f22, f30, dyn # perform operation
fadd.h f5, f22, f30, rdn # perform operation
fadd.h f5, f22, f30, rmm # perform operation
fadd.h f5, f22, f30, rne # perform operation
fadd.h f5, f22, f30, rtz # perform operation
fadd.h f5, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x4, 0xb61b3ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fadd.h f4, f19, f3, dyn # perform operation
fadd.h f4, f19, f3, rdn # perform operation
fadd.h f4, f19, f3, rmm # perform operation
fadd.h f4, f19, f3, rne # perform operation
fadd.h f4, f19, f3, rtz # perform operation
fadd.h f4, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x9, 0x166ac828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fadd.h f9, f13, f17, dyn # perform operation
fadd.h f9, f13, f17, rdn # perform operation
fadd.h f9, f13, f17, rmm # perform operation
fadd.h f9, f13, f17, rne # perform operation
fadd.h f9, f13, f17, rtz # perform operation
fadd.h f9, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x24, 0x206cd635 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fadd.h f24, f30, f19, dyn # perform operation
fadd.h f24, f30, f19, rdn # perform operation
fadd.h f24, f30, f19, rmm # perform operation
fadd.h f24, f30, f19, rne # perform operation
fadd.h f24, f30, f19, rtz # perform operation
fadd.h f24, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x13, 0x5f24c29f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fadd.h f13, f1, f14, dyn # perform operation
fadd.h f13, f1, f14, rdn # perform operation
fadd.h f13, f1, f14, rmm # perform operation
fadd.h f13, f1, f14, rne # perform operation
fadd.h f13, f1, f14, rtz # perform operation
fadd.h f13, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x29, 0xf1bfd25f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fadd.h f29, f10, f11, dyn # perform operation
fadd.h f29, f10, f11, rdn # perform operation
fadd.h f29, f10, f11, rmm # perform operation
fadd.h f29, f10, f11, rne # perform operation
fadd.h f29, f10, f11, rtz # perform operation
fadd.h f29, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x31, 0x15d2fe82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fadd.h f31, f13, f17, dyn # perform operation
fadd.h f31, f13, f17, rdn # perform operation
fadd.h f31, f13, f17, rmm # perform operation
fadd.h f31, f13, f17, rne # perform operation
fadd.h f31, f13, f17, rtz # perform operation
fadd.h f31, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x23, 0x11ffe1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fadd.h f23, f10, f5, dyn # perform operation
fadd.h f23, f10, f5, rdn # perform operation
fadd.h f23, f10, f5, rmm # perform operation
fadd.h f23, f10, f5, rne # perform operation
fadd.h f23, f10, f5, rtz # perform operation
fadd.h f23, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x26, 0xf03e88bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fadd.h f26, f4, f21, dyn # perform operation
fadd.h f26, f4, f21, rdn # perform operation
fadd.h f26, f4, f21, rmm # perform operation
fadd.h f26, f4, f21, rne # perform operation
fadd.h f26, f4, f21, rtz # perform operation
fadd.h f26, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x9, 0xa67d7f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fadd.h f9, f25, f11, dyn # perform operation
fadd.h f9, f25, f11, rdn # perform operation
fadd.h f9, f25, f11, rmm # perform operation
fadd.h f9, f25, f11, rne # perform operation
fadd.h f9, f25, f11, rtz # perform operation
fadd.h f9, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x13, 0xb40c6ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fadd.h f13, f29, f30, dyn # perform operation
fadd.h f13, f29, f30, rdn # perform operation
fadd.h f13, f29, f30, rmm # perform operation
fadd.h f13, f29, f30, rne # perform operation
fadd.h f13, f29, f30, rtz # perform operation
fadd.h f13, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x2, 0x8f0218a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fadd.h f2, f9, f1, dyn # perform operation
fadd.h f2, f9, f1, rdn # perform operation
fadd.h f2, f9, f1, rmm # perform operation
fadd.h f2, f9, f1, rne # perform operation
fadd.h f2, f9, f1, rtz # perform operation
fadd.h f2, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x29, 0xc1fcd840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fadd.h f29, f26, f1, dyn # perform operation
fadd.h f29, f26, f1, rdn # perform operation
fadd.h f29, f26, f1, rmm # perform operation
fadd.h f29, f26, f1, rne # perform operation
fadd.h f29, f26, f1, rtz # perform operation
fadd.h f29, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x1, 0x1378f751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fadd.h f1, f3, f27, dyn # perform operation
fadd.h f1, f3, f27, rdn # perform operation
fadd.h f1, f3, f27, rmm # perform operation
fadd.h f1, f3, f27, rne # perform operation
fadd.h f1, f3, f27, rtz # perform operation
fadd.h f1, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x22, 0xe56d36d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f22, f31, f25, dyn # perform operation
fadd.h f22, f31, f25, rdn # perform operation
fadd.h f22, f31, f25, rmm # perform operation
fadd.h f22, f31, f25, rne # perform operation
fadd.h f22, f31, f25, rtz # perform operation
fadd.h f22, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x9, 0xd7525803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fadd.h f9, f10, f3, dyn # perform operation
fadd.h f9, f10, f3, rdn # perform operation
fadd.h f9, f10, f3, rmm # perform operation
fadd.h f9, f10, f3, rne # perform operation
fadd.h f9, f10, f3, rtz # perform operation
fadd.h f9, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x27, 0x6d46fcf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fadd.h f27, f1, f23, dyn # perform operation
fadd.h f27, f1, f23, rdn # perform operation
fadd.h f27, f1, f23, rmm # perform operation
fadd.h f27, f1, f23, rne # perform operation
fadd.h f27, f1, f23, rtz # perform operation
fadd.h f27, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x27, 0x5d061a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fadd.h f27, f28, f16, dyn # perform operation
fadd.h f27, f28, f16, rdn # perform operation
fadd.h f27, f28, f16, rmm # perform operation
fadd.h f27, f28, f16, rne # perform operation
fadd.h f27, f28, f16, rtz # perform operation
fadd.h f27, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x29, 0x1fc79e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fadd.h f29, f21, f19, dyn # perform operation
fadd.h f29, f21, f19, rdn # perform operation
fadd.h f29, f21, f19, rmm # perform operation
fadd.h f29, f21, f19, rne # perform operation
fadd.h f29, f21, f19, rtz # perform operation
fadd.h f29, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x31, 0xf7c0ec26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fadd.h f31, f19, f7, dyn # perform operation
fadd.h f31, f19, f7, rdn # perform operation
fadd.h f31, f19, f7, rmm # perform operation
fadd.h f31, f19, f7, rne # perform operation
fadd.h f31, f19, f7, rtz # perform operation
fadd.h f31, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x16, 0x9141ed70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fadd.h f16, f19, f6, dyn # perform operation
fadd.h f16, f19, f6, rdn # perform operation
fadd.h f16, f19, f6, rmm # perform operation
fadd.h f16, f19, f6, rne # perform operation
fadd.h f16, f19, f6, rtz # perform operation
fadd.h f16, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x3, 0x50343b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fadd.h f3, f7, f12, dyn # perform operation
fadd.h f3, f7, f12, rdn # perform operation
fadd.h f3, f7, f12, rmm # perform operation
fadd.h f3, f7, f12, rne # perform operation
fadd.h f3, f7, f12, rtz # perform operation
fadd.h f3, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x6, 0xb5f3da44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fadd.h f6, f25, f31, dyn # perform operation
fadd.h f6, f25, f31, rdn # perform operation
fadd.h f6, f25, f31, rmm # perform operation
fadd.h f6, f25, f31, rne # perform operation
fadd.h f6, f25, f31, rtz # perform operation
fadd.h f6, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x7, 0xf74fe0b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fadd.h f7, f26, f20, dyn # perform operation
fadd.h f7, f26, f20, rdn # perform operation
fadd.h f7, f26, f20, rmm # perform operation
fadd.h f7, f26, f20, rne # perform operation
fadd.h f7, f26, f20, rtz # perform operation
fadd.h f7, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x28, 0x11528b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fadd.h f28, f16, f17, dyn # perform operation
fadd.h f28, f16, f17, rdn # perform operation
fadd.h f28, f16, f17, rmm # perform operation
fadd.h f28, f16, f17, rne # perform operation
fadd.h f28, f16, f17, rtz # perform operation
fadd.h f28, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x9, 0x35073844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fadd.h f9, f21, f27, dyn # perform operation
fadd.h f9, f21, f27, rdn # perform operation
fadd.h f9, f21, f27, rmm # perform operation
fadd.h f9, f21, f27, rne # perform operation
fadd.h f9, f21, f27, rtz # perform operation
fadd.h f9, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x6, 0x0d89682f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fadd.h f6, f11, f29, dyn # perform operation
fadd.h f6, f11, f29, rdn # perform operation
fadd.h f6, f11, f29, rmm # perform operation
fadd.h f6, f11, f29, rne # perform operation
fadd.h f6, f11, f29, rtz # perform operation
fadd.h f6, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x12, 0xca6410a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fadd.h f12, f8, f5, dyn # perform operation
fadd.h f12, f8, f5, rdn # perform operation
fadd.h f12, f8, f5, rmm # perform operation
fadd.h f12, f8, f5, rne # perform operation
fadd.h f12, f8, f5, rtz # perform operation
fadd.h f12, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x30, 0xd2a79a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fadd.h f30, f19, f25, dyn # perform operation
fadd.h f30, f19, f25, rdn # perform operation
fadd.h f30, f19, f25, rmm # perform operation
fadd.h f30, f19, f25, rne # perform operation
fadd.h f30, f19, f25, rtz # perform operation
fadd.h f30, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x31, 0x0ecb573f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fadd.h f31, f16, f25, dyn # perform operation
fadd.h f31, f16, f25, rdn # perform operation
fadd.h f31, f16, f25, rmm # perform operation
fadd.h f31, f16, f25, rne # perform operation
fadd.h f31, f16, f25, rtz # perform operation
fadd.h f31, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x31, 0x8e4ff9c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fadd.h f31, f25, f22, dyn # perform operation
fadd.h f31, f25, f22, rdn # perform operation
fadd.h f31, f25, f22, rmm # perform operation
fadd.h f31, f25, f22, rne # perform operation
fadd.h f31, f25, f22, rtz # perform operation
fadd.h f31, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x17, 0x1dbf98ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fadd.h f17, f14, f2, dyn # perform operation
fadd.h f17, f14, f2, rdn # perform operation
fadd.h f17, f14, f2, rmm # perform operation
fadd.h f17, f14, f2, rne # perform operation
fadd.h f17, f14, f2, rtz # perform operation
fadd.h f17, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x24, 0x52654ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fadd.h f24, f26, f7, dyn # perform operation
fadd.h f24, f26, f7, rdn # perform operation
fadd.h f24, f26, f7, rmm # perform operation
fadd.h f24, f26, f7, rne # perform operation
fadd.h f24, f26, f7, rtz # perform operation
fadd.h f24, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x19, 0xbfc3c7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f19, f20, f31, dyn # perform operation
fadd.h f19, f20, f31, rdn # perform operation
fadd.h f19, f20, f31, rmm # perform operation
fadd.h f19, f20, f31, rne # perform operation
fadd.h f19, f20, f31, rtz # perform operation
fadd.h f19, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x30, 0x05a8d9a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fadd.h f30, f22, f2, dyn # perform operation
fadd.h f30, f22, f2, rdn # perform operation
fadd.h f30, f22, f2, rmm # perform operation
fadd.h f30, f22, f2, rne # perform operation
fadd.h f30, f22, f2, rtz # perform operation
fadd.h f30, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x16, 0xfb2afc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fadd.h f16, f2, f31, dyn # perform operation
fadd.h f16, f2, f31, rdn # perform operation
fadd.h f16, f2, f31, rmm # perform operation
fadd.h f16, f2, f31, rne # perform operation
fadd.h f16, f2, f31, rtz # perform operation
fadd.h f16, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x28, 0x56727c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fadd.h f28, f22, f21, dyn # perform operation
fadd.h f28, f22, f21, rdn # perform operation
fadd.h f28, f22, f21, rmm # perform operation
fadd.h f28, f22, f21, rne # perform operation
fadd.h f28, f22, f21, rtz # perform operation
fadd.h f28, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x10, 0x93e9a825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fadd.h f10, f19, f17, dyn # perform operation
fadd.h f10, f19, f17, rdn # perform operation
fadd.h f10, f19, f17, rmm # perform operation
fadd.h f10, f19, f17, rne # perform operation
fadd.h f10, f19, f17, rtz # perform operation
fadd.h f10, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x18, 0x540f1bef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fadd.h f18, f20, f11, dyn # perform operation
fadd.h f18, f20, f11, rdn # perform operation
fadd.h f18, f20, f11, rmm # perform operation
fadd.h f18, f20, f11, rne # perform operation
fadd.h f18, f20, f11, rtz # perform operation
fadd.h f18, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x2, 0xb5e80941 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fadd.h f2, f14, f4, dyn # perform operation
fadd.h f2, f14, f4, rdn # perform operation
fadd.h f2, f14, f4, rmm # perform operation
fadd.h f2, f14, f4, rne # perform operation
fadd.h f2, f14, f4, rtz # perform operation
fadd.h f2, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x23, 0x801f12cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fadd.h f23, f16, f10, dyn # perform operation
fadd.h f23, f16, f10, rdn # perform operation
fadd.h f23, f16, f10, rmm # perform operation
fadd.h f23, f16, f10, rne # perform operation
fadd.h f23, f16, f10, rtz # perform operation
fadd.h f23, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x18, 0x5dc9d2b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fadd.h f18, f30, f1, dyn # perform operation
fadd.h f18, f30, f1, rdn # perform operation
fadd.h f18, f30, f1, rmm # perform operation
fadd.h f18, f30, f1, rne # perform operation
fadd.h f18, f30, f1, rtz # perform operation
fadd.h f18, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x16, 0x5a135d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fadd.h f16, f8, f5, dyn # perform operation
fadd.h f16, f8, f5, rdn # perform operation
fadd.h f16, f8, f5, rmm # perform operation
fadd.h f16, f8, f5, rne # perform operation
fadd.h f16, f8, f5, rtz # perform operation
fadd.h f16, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x13, 0xaaf9dfce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fadd.h f13, f10, f25, dyn # perform operation
fadd.h f13, f10, f25, rdn # perform operation
fadd.h f13, f10, f25, rmm # perform operation
fadd.h f13, f10, f25, rne # perform operation
fadd.h f13, f10, f25, rtz # perform operation
fadd.h f13, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x9, 0xd5999eec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fadd.h f9, f13, f4, dyn # perform operation
fadd.h f9, f13, f4, rdn # perform operation
fadd.h f9, f13, f4, rmm # perform operation
fadd.h f9, f13, f4, rne # perform operation
fadd.h f9, f13, f4, rtz # perform operation
fadd.h f9, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x13, 0x91bc92d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fadd.h f13, f17, f30, dyn # perform operation
fadd.h f13, f17, f30, rdn # perform operation
fadd.h f13, f17, f30, rmm # perform operation
fadd.h f13, f17, f30, rne # perform operation
fadd.h f13, f17, f30, rtz # perform operation
fadd.h f13, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x16, 0xde681fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fadd.h f16, f13, f15, dyn # perform operation
fadd.h f16, f13, f15, rdn # perform operation
fadd.h f16, f13, f15, rmm # perform operation
fadd.h f16, f13, f15, rne # perform operation
fadd.h f16, f13, f15, rtz # perform operation
fadd.h f16, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x13, 0xb50ce671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fadd.h f13, f21, f25, dyn # perform operation
fadd.h f13, f21, f25, rdn # perform operation
fadd.h f13, f21, f25, rmm # perform operation
fadd.h f13, f21, f25, rne # perform operation
fadd.h f13, f21, f25, rtz # perform operation
fadd.h f13, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x12, 0xffed3572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fadd.h f12, f7, f24, dyn # perform operation
fadd.h f12, f7, f24, rdn # perform operation
fadd.h f12, f7, f24, rmm # perform operation
fadd.h f12, f7, f24, rne # perform operation
fadd.h f12, f7, f24, rtz # perform operation
fadd.h f12, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x9, 0x0a97dedb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f9, f27, f13, dyn # perform operation
fadd.h f9, f27, f13, rdn # perform operation
fadd.h f9, f27, f13, rmm # perform operation
fadd.h f9, f27, f13, rne # perform operation
fadd.h f9, f27, f13, rtz # perform operation
fadd.h f9, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x4, 0x2a410f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fadd.h f4, f19, f13, dyn # perform operation
fadd.h f4, f19, f13, rdn # perform operation
fadd.h f4, f19, f13, rmm # perform operation
fadd.h f4, f19, f13, rne # perform operation
fadd.h f4, f19, f13, rtz # perform operation
fadd.h f4, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x2, 0x78ec6b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fadd.h f2, f1, f7, dyn # perform operation
fadd.h f2, f1, f7, rdn # perform operation
fadd.h f2, f1, f7, rmm # perform operation
fadd.h f2, f1, f7, rne # perform operation
fadd.h f2, f1, f7, rtz # perform operation
fadd.h f2, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x9, 0xe6fb4e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fadd.h f9, f1, f12, dyn # perform operation
fadd.h f9, f1, f12, rdn # perform operation
fadd.h f9, f1, f12, rmm # perform operation
fadd.h f9, f1, f12, rne # perform operation
fadd.h f9, f1, f12, rtz # perform operation
fadd.h f9, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x20, 0xb6947317 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fadd.h f20, f3, f9, dyn # perform operation
fadd.h f20, f3, f9, rdn # perform operation
fadd.h f20, f3, f9, rmm # perform operation
fadd.h f20, f3, f9, rne # perform operation
fadd.h f20, f3, f9, rtz # perform operation
fadd.h f20, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x10, 0x24d15213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fadd.h f10, f21, f29, dyn # perform operation
fadd.h f10, f21, f29, rdn # perform operation
fadd.h f10, f21, f29, rmm # perform operation
fadd.h f10, f21, f29, rne # perform operation
fadd.h f10, f21, f29, rtz # perform operation
fadd.h f10, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x8, 0x27a1e570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fadd.h f8, f10, f1, dyn # perform operation
fadd.h f8, f10, f1, rdn # perform operation
fadd.h f8, f10, f1, rmm # perform operation
fadd.h f8, f10, f1, rne # perform operation
fadd.h f8, f10, f1, rtz # perform operation
fadd.h f8, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x23, 0xfcc31697 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fadd.h f23, f3, f27, dyn # perform operation
fadd.h f23, f3, f27, rdn # perform operation
fadd.h f23, f3, f27, rmm # perform operation
fadd.h f23, f3, f27, rne # perform operation
fadd.h f23, f3, f27, rtz # perform operation
fadd.h f23, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x3, 0xd5cd2be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fadd.h f3, f20, f23, dyn # perform operation
fadd.h f3, f20, f23, rdn # perform operation
fadd.h f3, f20, f23, rmm # perform operation
fadd.h f3, f20, f23, rne # perform operation
fadd.h f3, f20, f23, rtz # perform operation
fadd.h f3, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x5, 0xf2506349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fadd.h f5, f11, f10, dyn # perform operation
fadd.h f5, f11, f10, rdn # perform operation
fadd.h f5, f11, f10, rmm # perform operation
fadd.h f5, f11, f10, rne # perform operation
fadd.h f5, f11, f10, rtz # perform operation
fadd.h f5, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x3, 0xe2f24be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fadd.h f3, f14, f10, dyn # perform operation
fadd.h f3, f14, f10, rdn # perform operation
fadd.h f3, f14, f10, rmm # perform operation
fadd.h f3, f14, f10, rne # perform operation
fadd.h f3, f14, f10, rtz # perform operation
fadd.h f3, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x3, 0xee1a3074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fadd.h f3, f25, f1, dyn # perform operation
fadd.h f3, f25, f1, rdn # perform operation
fadd.h f3, f25, f1, rmm # perform operation
fadd.h f3, f25, f1, rne # perform operation
fadd.h f3, f25, f1, rtz # perform operation
fadd.h f3, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x29, 0xcfe50ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fadd.h f29, f4, f6, dyn # perform operation
fadd.h f29, f4, f6, rdn # perform operation
fadd.h f29, f4, f6, rmm # perform operation
fadd.h f29, f4, f6, rne # perform operation
fadd.h f29, f4, f6, rtz # perform operation
fadd.h f29, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x21, 0x9a794e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fadd.h f21, f8, f30, dyn # perform operation
fadd.h f21, f8, f30, rdn # perform operation
fadd.h f21, f8, f30, rmm # perform operation
fadd.h f21, f8, f30, rne # perform operation
fadd.h f21, f8, f30, rtz # perform operation
fadd.h f21, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x27, 0x5aad9953 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fadd.h f27, f30, f11, dyn # perform operation
fadd.h f27, f30, f11, rdn # perform operation
fadd.h f27, f30, f11, rmm # perform operation
fadd.h f27, f30, f11, rne # perform operation
fadd.h f27, f30, f11, rtz # perform operation
fadd.h f27, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x27, 0x9157420b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fadd.h f27, f31, f5, dyn # perform operation
fadd.h f27, f31, f5, rdn # perform operation
fadd.h f27, f31, f5, rmm # perform operation
fadd.h f27, f31, f5, rne # perform operation
fadd.h f27, f31, f5, rtz # perform operation
fadd.h f27, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x7, 0xa75b8cde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fadd.h f7, f25, f31, dyn # perform operation
fadd.h f7, f25, f31, rdn # perform operation
fadd.h f7, f25, f31, rmm # perform operation
fadd.h f7, f25, f31, rne # perform operation
fadd.h f7, f25, f31, rtz # perform operation
fadd.h f7, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x9, 0x9e4111ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f9, f8, f25, dyn # perform operation
fadd.h f9, f8, f25, rdn # perform operation
fadd.h f9, f8, f25, rmm # perform operation
fadd.h f9, f8, f25, rne # perform operation
fadd.h f9, f8, f25, rtz # perform operation
fadd.h f9, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x28, 0x6709c4c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fadd.h f28, f12, f4, dyn # perform operation
fadd.h f28, f12, f4, rdn # perform operation
fadd.h f28, f12, f4, rmm # perform operation
fadd.h f28, f12, f4, rne # perform operation
fadd.h f28, f12, f4, rtz # perform operation
fadd.h f28, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x15, 0xa55d8c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fadd.h f15, f8, f20, dyn # perform operation
fadd.h f15, f8, f20, rdn # perform operation
fadd.h f15, f8, f20, rmm # perform operation
fadd.h f15, f8, f20, rne # perform operation
fadd.h f15, f8, f20, rtz # perform operation
fadd.h f15, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x3, 0x2fca5f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fadd.h f3, f6, f11, dyn # perform operation
fadd.h f3, f6, f11, rdn # perform operation
fadd.h f3, f6, f11, rmm # perform operation
fadd.h f3, f6, f11, rne # perform operation
fadd.h f3, f6, f11, rtz # perform operation
fadd.h f3, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x13, 0xca2621dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fadd.h f13, f3, f12, dyn # perform operation
fadd.h f13, f3, f12, rdn # perform operation
fadd.h f13, f3, f12, rmm # perform operation
fadd.h f13, f3, f12, rne # perform operation
fadd.h f13, f3, f12, rtz # perform operation
fadd.h f13, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x9, 0x58ac0510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f9, f31, f8, dyn # perform operation
fadd.h f9, f31, f8, rdn # perform operation
fadd.h f9, f31, f8, rmm # perform operation
fadd.h f9, f31, f8, rne # perform operation
fadd.h f9, f31, f8, rtz # perform operation
fadd.h f9, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x24, 0x9b99053c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fadd.h f24, f20, f15, dyn # perform operation
fadd.h f24, f20, f15, rdn # perform operation
fadd.h f24, f20, f15, rmm # perform operation
fadd.h f24, f20, f15, rne # perform operation
fadd.h f24, f20, f15, rtz # perform operation
fadd.h f24, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x15, 0x02b81998 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fadd.h f15, f21, f25, dyn # perform operation
fadd.h f15, f21, f25, rdn # perform operation
fadd.h f15, f21, f25, rmm # perform operation
fadd.h f15, f21, f25, rne # perform operation
fadd.h f15, f21, f25, rtz # perform operation
fadd.h f15, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x30, 0x5894c895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fadd.h f30, f29, f28, dyn # perform operation
fadd.h f30, f29, f28, rdn # perform operation
fadd.h f30, f29, f28, rmm # perform operation
fadd.h f30, f29, f28, rne # perform operation
fadd.h f30, f29, f28, rtz # perform operation
fadd.h f30, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x29, 0x8e1268c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fadd.h f29, f15, f19, dyn # perform operation
fadd.h f29, f15, f19, rdn # perform operation
fadd.h f29, f15, f19, rmm # perform operation
fadd.h f29, f15, f19, rne # perform operation
fadd.h f29, f15, f19, rtz # perform operation
fadd.h f29, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x18, 0xc92353f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fadd.h f18, f13, f6, dyn # perform operation
fadd.h f18, f13, f6, rdn # perform operation
fadd.h f18, f13, f6, rmm # perform operation
fadd.h f18, f13, f6, rne # perform operation
fadd.h f18, f13, f6, rtz # perform operation
fadd.h f18, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x10, 0x5028d2c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fadd.h f10, f18, f28, dyn # perform operation
fadd.h f10, f18, f28, rdn # perform operation
fadd.h f10, f18, f28, rmm # perform operation
fadd.h f10, f18, f28, rne # perform operation
fadd.h f10, f18, f28, rtz # perform operation
fadd.h f10, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x27, 0x8741cd05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fadd.h f27, f20, f19, dyn # perform operation
fadd.h f27, f20, f19, rdn # perform operation
fadd.h f27, f20, f19, rmm # perform operation
fadd.h f27, f20, f19, rne # perform operation
fadd.h f27, f20, f19, rtz # perform operation
fadd.h f27, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x1, 0x7038ba1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fadd.h f1, f20, f27, dyn # perform operation
fadd.h f1, f20, f27, rdn # perform operation
fadd.h f1, f20, f27, rmm # perform operation
fadd.h f1, f20, f27, rne # perform operation
fadd.h f1, f20, f27, rtz # perform operation
fadd.h f1, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x18, 0xe4810322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fadd.h f18, f31, f21, dyn # perform operation
fadd.h f18, f31, f21, rdn # perform operation
fadd.h f18, f31, f21, rmm # perform operation
fadd.h f18, f31, f21, rne # perform operation
fadd.h f18, f31, f21, rtz # perform operation
fadd.h f18, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x2, 0xfc832637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fadd.h f2, f18, f6, dyn # perform operation
fadd.h f2, f18, f6, rdn # perform operation
fadd.h f2, f18, f6, rmm # perform operation
fadd.h f2, f18, f6, rne # perform operation
fadd.h f2, f18, f6, rtz # perform operation
fadd.h f2, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x26, 0x75b2b54f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fadd.h f26, f10, f8, dyn # perform operation
fadd.h f26, f10, f8, rdn # perform operation
fadd.h f26, f10, f8, rmm # perform operation
fadd.h f26, f10, f8, rne # perform operation
fadd.h f26, f10, f8, rtz # perform operation
fadd.h f26, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x14, 0x9d65fbcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fadd.h f14, f28, f8, dyn # perform operation
fadd.h f14, f28, f8, rdn # perform operation
fadd.h f14, f28, f8, rmm # perform operation
fadd.h f14, f28, f8, rne # perform operation
fadd.h f14, f28, f8, rtz # perform operation
fadd.h f14, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x21, 0x7f5b8405 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fadd.h f21, f5, f13, dyn # perform operation
fadd.h f21, f5, f13, rdn # perform operation
fadd.h f21, f5, f13, rmm # perform operation
fadd.h f21, f5, f13, rne # perform operation
fadd.h f21, f5, f13, rtz # perform operation
fadd.h f21, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x13, 0x8ae05f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fadd.h f13, f31, f28, dyn # perform operation
fadd.h f13, f31, f28, rdn # perform operation
fadd.h f13, f31, f28, rmm # perform operation
fadd.h f13, f31, f28, rne # perform operation
fadd.h f13, f31, f28, rtz # perform operation
fadd.h f13, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x10, 0x048a1e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fadd.h f10, f5, f7, dyn # perform operation
fadd.h f10, f5, f7, rdn # perform operation
fadd.h f10, f5, f7, rmm # perform operation
fadd.h f10, f5, f7, rne # perform operation
fadd.h f10, f5, f7, rtz # perform operation
fadd.h f10, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x2, 0x9fc7ec73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fadd.h f2, f19, f13, dyn # perform operation
fadd.h f2, f19, f13, rdn # perform operation
fadd.h f2, f19, f13, rmm # perform operation
fadd.h f2, f19, f13, rne # perform operation
fadd.h f2, f19, f13, rtz # perform operation
fadd.h f2, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x28, 0xd3d7175c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fadd.h f28, f29, f2, dyn # perform operation
fadd.h f28, f29, f2, rdn # perform operation
fadd.h f28, f29, f2, rmm # perform operation
fadd.h f28, f29, f2, rne # perform operation
fadd.h f28, f29, f2, rtz # perform operation
fadd.h f28, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x31, 0xef18172d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fadd.h f31, f3, f21, dyn # perform operation
fadd.h f31, f3, f21, rdn # perform operation
fadd.h f31, f3, f21, rmm # perform operation
fadd.h f31, f3, f21, rne # perform operation
fadd.h f31, f3, f21, rtz # perform operation
fadd.h f31, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x9, 0x271be99a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fadd.h f9, f8, f23, dyn # perform operation
fadd.h f9, f8, f23, rdn # perform operation
fadd.h f9, f8, f23, rmm # perform operation
fadd.h f9, f8, f23, rne # perform operation
fadd.h f9, f8, f23, rtz # perform operation
fadd.h f9, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x2, 0xd63f8c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fadd.h f2, f12, f16, dyn # perform operation
fadd.h f2, f12, f16, rdn # perform operation
fadd.h f2, f12, f16, rmm # perform operation
fadd.h f2, f12, f16, rne # perform operation
fadd.h f2, f12, f16, rtz # perform operation
fadd.h f2, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x2, 0x8461506d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f2, f11, f25, dyn # perform operation
fadd.h f2, f11, f25, rdn # perform operation
fadd.h f2, f11, f25, rmm # perform operation
fadd.h f2, f11, f25, rne # perform operation
fadd.h f2, f11, f25, rtz # perform operation
fadd.h f2, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x30, 0xd58f8d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f30, f22, f8, dyn # perform operation
fadd.h f30, f22, f8, rdn # perform operation
fadd.h f30, f22, f8, rmm # perform operation
fadd.h f30, f22, f8, rne # perform operation
fadd.h f30, f22, f8, rtz # perform operation
fadd.h f30, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x13, 0xd6c56242 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fadd.h f13, f17, f12, dyn # perform operation
fadd.h f13, f17, f12, rdn # perform operation
fadd.h f13, f17, f12, rmm # perform operation
fadd.h f13, f17, f12, rne # perform operation
fadd.h f13, f17, f12, rtz # perform operation
fadd.h f13, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f17, f12 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x7cf893b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbbfa512 # load x3 with value 0xcbbfa512
sw x3, 0(x2) # store 0xcbbfa512 in memory
flh f6, 0(x2) # load 0xcbbfa512 from memory into f6
li x3, 0x735f3517 # load x3 with value 0x735f3517
sw x3, 0(x2) # store 0x735f3517 in memory
flh f7, 0(x2) # load 0x735f3517 from memory into f7
fadd.h f0, f6, f7 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x368ef4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dd238dc # load x3 with value 0x5dd238dc
sw x3, 0(x2) # store 0x5dd238dc in memory
flh f29, 0(x2) # load 0x5dd238dc from memory into f29
li x3, 0xe802ac26 # load x3 with value 0xe802ac26
sw x3, 0(x2) # store 0xe802ac26 in memory
flh f2, 0(x2) # load 0xe802ac26 from memory into f2
fadd.h f1, f29, f2 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xd19e4cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe61c4b7d # load x3 with value 0xe61c4b7d
sw x3, 0(x2) # store 0xe61c4b7d in memory
flh f27, 0(x2) # load 0xe61c4b7d from memory into f27
li x3, 0x97ffc2da # load x3 with value 0x97ffc2da
sw x3, 0(x2) # store 0x97ffc2da in memory
flh f9, 0(x2) # load 0x97ffc2da from memory into f9
fadd.h f2, f27, f9 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x6878b737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0df685d5 # load x3 with value 0x0df685d5
sw x3, 0(x2) # store 0x0df685d5 in memory
flh f14, 0(x2) # load 0x0df685d5 from memory into f14
li x3, 0x1689160f # load x3 with value 0x1689160f
sw x3, 0(x2) # store 0x1689160f in memory
flh f3, 0(x2) # load 0x1689160f from memory into f3
fadd.h f3, f14, f3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xd33c6d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9676bb47 # load x3 with value 0x9676bb47
sw x3, 0(x2) # store 0x9676bb47 in memory
flh f4, 0(x2) # load 0x9676bb47 from memory into f4
li x3, 0x2dec50a2 # load x3 with value 0x2dec50a2
sw x3, 0(x2) # store 0x2dec50a2 in memory
flh f27, 0(x2) # load 0x2dec50a2 from memory into f27
fadd.h f4, f4, f27 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xf03c8f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6455bbd # load x3 with value 0xa6455bbd
sw x3, 0(x2) # store 0xa6455bbd in memory
flh f18, 0(x2) # load 0xa6455bbd from memory into f18
li x3, 0x10c2aeeb # load x3 with value 0x10c2aeeb
sw x3, 0(x2) # store 0x10c2aeeb in memory
flh f16, 0(x2) # load 0x10c2aeeb from memory into f16
fadd.h f5, f18, f16 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x94be2730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x311fa805 # load x3 with value 0x311fa805
sw x3, 0(x2) # store 0x311fa805 in memory
flh f17, 0(x2) # load 0x311fa805 from memory into f17
li x3, 0xc2cac75e # load x3 with value 0xc2cac75e
sw x3, 0(x2) # store 0xc2cac75e in memory
flh f18, 0(x2) # load 0xc2cac75e from memory into f18
fadd.h f6, f17, f18 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x4c9be347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5524b3e # load x3 with value 0xc5524b3e
sw x3, 0(x2) # store 0xc5524b3e in memory
flh f27, 0(x2) # load 0xc5524b3e from memory into f27
li x3, 0xebd87277 # load x3 with value 0xebd87277
sw x3, 0(x2) # store 0xebd87277 in memory
flh f23, 0(x2) # load 0xebd87277 from memory into f23
fadd.h f7, f27, f23 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xf12432fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x164a6939 # load x3 with value 0x164a6939
sw x3, 0(x2) # store 0x164a6939 in memory
flh f8, 0(x2) # load 0x164a6939 from memory into f8
li x3, 0x9d9fc3d8 # load x3 with value 0x9d9fc3d8
sw x3, 0(x2) # store 0x9d9fc3d8 in memory
flh f1, 0(x2) # load 0x9d9fc3d8 from memory into f1
fadd.h f8, f8, f1 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x2a34dabe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85635fa8 # load x3 with value 0x85635fa8
sw x3, 0(x2) # store 0x85635fa8 in memory
flh f21, 0(x2) # load 0x85635fa8 from memory into f21
li x3, 0xdf0ebea6 # load x3 with value 0xdf0ebea6
sw x3, 0(x2) # store 0xdf0ebea6 in memory
flh f15, 0(x2) # load 0xdf0ebea6 from memory into f15
fadd.h f9, f21, f15 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xcbd79945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1e7b31f # load x3 with value 0xe1e7b31f
sw x3, 0(x2) # store 0xe1e7b31f in memory
flh f16, 0(x2) # load 0xe1e7b31f from memory into f16
li x3, 0x8dd1de70 # load x3 with value 0x8dd1de70
sw x3, 0(x2) # store 0x8dd1de70 in memory
flh f17, 0(x2) # load 0x8dd1de70 from memory into f17
fadd.h f10, f16, f17 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x33629df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8073b283 # load x3 with value 0x8073b283
sw x3, 0(x2) # store 0x8073b283 in memory
flh f28, 0(x2) # load 0x8073b283 from memory into f28
li x3, 0xbccad9a1 # load x3 with value 0xbccad9a1
sw x3, 0(x2) # store 0xbccad9a1 in memory
flh f12, 0(x2) # load 0xbccad9a1 from memory into f12
fadd.h f11, f28, f12 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xd06a25f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3430b91 # load x3 with value 0xa3430b91
sw x3, 0(x2) # store 0xa3430b91 in memory
flh f2, 0(x2) # load 0xa3430b91 from memory into f2
li x3, 0x64961cd0 # load x3 with value 0x64961cd0
sw x3, 0(x2) # store 0x64961cd0 in memory
flh f30, 0(x2) # load 0x64961cd0 from memory into f30
fadd.h f12, f2, f30 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xb734eaa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88c99719 # load x3 with value 0x88c99719
sw x3, 0(x2) # store 0x88c99719 in memory
flh f13, 0(x2) # load 0x88c99719 from memory into f13
li x3, 0x08d592d1 # load x3 with value 0x08d592d1
sw x3, 0(x2) # store 0x08d592d1 in memory
flh f6, 0(x2) # load 0x08d592d1 from memory into f6
fadd.h f13, f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xfd3d1d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb300cc41 # load x3 with value 0xb300cc41
sw x3, 0(x2) # store 0xb300cc41 in memory
flh f5, 0(x2) # load 0xb300cc41 from memory into f5
li x3, 0x73c6bcdc # load x3 with value 0x73c6bcdc
sw x3, 0(x2) # store 0x73c6bcdc in memory
flh f20, 0(x2) # load 0x73c6bcdc from memory into f20
fadd.h f14, f5, f20 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xb15dd0dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a0caafb # load x3 with value 0x6a0caafb
sw x3, 0(x2) # store 0x6a0caafb in memory
flh f29, 0(x2) # load 0x6a0caafb from memory into f29
li x3, 0x43349b78 # load x3 with value 0x43349b78
sw x3, 0(x2) # store 0x43349b78 in memory
flh f18, 0(x2) # load 0x43349b78 from memory into f18
fadd.h f15, f29, f18 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xd4c30e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x762fd4e6 # load x3 with value 0x762fd4e6
sw x3, 0(x2) # store 0x762fd4e6 in memory
flh f12, 0(x2) # load 0x762fd4e6 from memory into f12
li x3, 0x4d4399f5 # load x3 with value 0x4d4399f5
sw x3, 0(x2) # store 0x4d4399f5 in memory
flh f15, 0(x2) # load 0x4d4399f5 from memory into f15
fadd.h f16, f12, f15 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xfb8efa47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa6b5d9e # load x3 with value 0xaa6b5d9e
sw x3, 0(x2) # store 0xaa6b5d9e in memory
flh f22, 0(x2) # load 0xaa6b5d9e from memory into f22
li x3, 0xc4d75ae3 # load x3 with value 0xc4d75ae3
sw x3, 0(x2) # store 0xc4d75ae3 in memory
flh f3, 0(x2) # load 0xc4d75ae3 from memory into f3
fadd.h f17, f22, f3 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xce9a877f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7f27b15 # load x3 with value 0xb7f27b15
sw x3, 0(x2) # store 0xb7f27b15 in memory
flh f4, 0(x2) # load 0xb7f27b15 from memory into f4
li x3, 0x20b48b45 # load x3 with value 0x20b48b45
sw x3, 0(x2) # store 0x20b48b45 in memory
flh f28, 0(x2) # load 0x20b48b45 from memory into f28
fadd.h f18, f4, f28 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x469a58c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbeff018 # load x3 with value 0xfbeff018
sw x3, 0(x2) # store 0xfbeff018 in memory
flh f10, 0(x2) # load 0xfbeff018 from memory into f10
li x3, 0xf29952d1 # load x3 with value 0xf29952d1
sw x3, 0(x2) # store 0xf29952d1 in memory
flh f17, 0(x2) # load 0xf29952d1 from memory into f17
fadd.h f19, f10, f17 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x214a3785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02d516e7 # load x3 with value 0x02d516e7
sw x3, 0(x2) # store 0x02d516e7 in memory
flh f19, 0(x2) # load 0x02d516e7 from memory into f19
li x3, 0x92684bd3 # load x3 with value 0x92684bd3
sw x3, 0(x2) # store 0x92684bd3 in memory
flh f13, 0(x2) # load 0x92684bd3 from memory into f13
fadd.h f20, f19, f13 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x44346e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeecea602 # load x3 with value 0xeecea602
sw x3, 0(x2) # store 0xeecea602 in memory
flh f9, 0(x2) # load 0xeecea602 from memory into f9
li x3, 0xcff40a8a # load x3 with value 0xcff40a8a
sw x3, 0(x2) # store 0xcff40a8a in memory
flh f13, 0(x2) # load 0xcff40a8a from memory into f13
fadd.h f21, f9, f13 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xcc40a679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20513ee6 # load x3 with value 0x20513ee6
sw x3, 0(x2) # store 0x20513ee6 in memory
flh f28, 0(x2) # load 0x20513ee6 from memory into f28
li x3, 0x6b683783 # load x3 with value 0x6b683783
sw x3, 0(x2) # store 0x6b683783 in memory
flh f11, 0(x2) # load 0x6b683783 from memory into f11
fadd.h f22, f28, f11 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x1d4b07b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60c221a2 # load x3 with value 0x60c221a2
sw x3, 0(x2) # store 0x60c221a2 in memory
flh f17, 0(x2) # load 0x60c221a2 from memory into f17
li x3, 0x5acae80e # load x3 with value 0x5acae80e
sw x3, 0(x2) # store 0x5acae80e in memory
flh f24, 0(x2) # load 0x5acae80e from memory into f24
fadd.h f23, f17, f24 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xa3848aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa81ed44c # load x3 with value 0xa81ed44c
sw x3, 0(x2) # store 0xa81ed44c in memory
flh f16, 0(x2) # load 0xa81ed44c from memory into f16
li x3, 0x33729495 # load x3 with value 0x33729495
sw x3, 0(x2) # store 0x33729495 in memory
flh f15, 0(x2) # load 0x33729495 from memory into f15
fadd.h f24, f16, f15 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x8982d029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e919b1c # load x3 with value 0x2e919b1c
sw x3, 0(x2) # store 0x2e919b1c in memory
flh f12, 0(x2) # load 0x2e919b1c from memory into f12
li x3, 0x14ffb516 # load x3 with value 0x14ffb516
sw x3, 0(x2) # store 0x14ffb516 in memory
flh f31, 0(x2) # load 0x14ffb516 from memory into f31
fadd.h f25, f12, f31 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xb02498ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2ad1445 # load x3 with value 0xe2ad1445
sw x3, 0(x2) # store 0xe2ad1445 in memory
flh f24, 0(x2) # load 0xe2ad1445 from memory into f24
li x3, 0x72972a44 # load x3 with value 0x72972a44
sw x3, 0(x2) # store 0x72972a44 in memory
flh f17, 0(x2) # load 0x72972a44 from memory into f17
fadd.h f26, f24, f17 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x44d6ff0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45f60a58 # load x3 with value 0x45f60a58
sw x3, 0(x2) # store 0x45f60a58 in memory
flh f13, 0(x2) # load 0x45f60a58 from memory into f13
li x3, 0x4199f335 # load x3 with value 0x4199f335
sw x3, 0(x2) # store 0x4199f335 in memory
flh f6, 0(x2) # load 0x4199f335 from memory into f6
fadd.h f27, f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x303fe9e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd25a124 # load x3 with value 0xdd25a124
sw x3, 0(x2) # store 0xdd25a124 in memory
flh f21, 0(x2) # load 0xdd25a124 from memory into f21
li x3, 0xeaa62cb0 # load x3 with value 0xeaa62cb0
sw x3, 0(x2) # store 0xeaa62cb0 in memory
flh f29, 0(x2) # load 0xeaa62cb0 from memory into f29
fadd.h f28, f21, f29 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xf7f8ef64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b979061 # load x3 with value 0x5b979061
sw x3, 0(x2) # store 0x5b979061 in memory
flh f17, 0(x2) # load 0x5b979061 from memory into f17
li x3, 0x400d5fef # load x3 with value 0x400d5fef
sw x3, 0(x2) # store 0x400d5fef in memory
flh f26, 0(x2) # load 0x400d5fef from memory into f26
fadd.h f29, f17, f26 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x3a249224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a629c32 # load x3 with value 0x6a629c32
sw x3, 0(x2) # store 0x6a629c32 in memory
flh f14, 0(x2) # load 0x6a629c32 from memory into f14
li x3, 0x3b616f9c # load x3 with value 0x3b616f9c
sw x3, 0(x2) # store 0x3b616f9c in memory
flh f20, 0(x2) # load 0x3b616f9c from memory into f20
fadd.h f30, f14, f20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x08194c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfedb1707 # load x3 with value 0xfedb1707
sw x3, 0(x2) # store 0xfedb1707 in memory
flh f14, 0(x2) # load 0xfedb1707 from memory into f14
li x3, 0xc5e72233 # load x3 with value 0xc5e72233
sw x3, 0(x2) # store 0xc5e72233 in memory
flh f2, 0(x2) # load 0xc5e72233 from memory into f2
fadd.h f31, f14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x10, 0x63b5e754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe00d3978 # load x3 with value 0xe00d3978
sw x3, 0(x2) # store 0xe00d3978 in memory
flh f0, 0(x2) # load 0xe00d3978 from memory into f0
li x3, 0x147f17c7 # load x3 with value 0x147f17c7
sw x3, 0(x2) # store 0x147f17c7 in memory
flh f14, 0(x2) # load 0x147f17c7 from memory into f14
fadd.h f10, f0, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0xa13ac7d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53d6fe21 # load x3 with value 0x53d6fe21
sw x3, 0(x2) # store 0x53d6fe21 in memory
flh f1, 0(x2) # load 0x53d6fe21 from memory into f1
li x3, 0xe6679d88 # load x3 with value 0xe6679d88
sw x3, 0(x2) # store 0xe6679d88 in memory
flh f10, 0(x2) # load 0xe6679d88 from memory into f10
fadd.h f28, f1, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x25, 0x60e25240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe96a9b1a # load x3 with value 0xe96a9b1a
sw x3, 0(x2) # store 0xe96a9b1a in memory
flh f2, 0(x2) # load 0xe96a9b1a from memory into f2
li x3, 0xeb12e39c # load x3 with value 0xeb12e39c
sw x3, 0(x2) # store 0xeb12e39c in memory
flh f28, 0(x2) # load 0xeb12e39c from memory into f28
fadd.h f25, f2, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x8, 0xc4291b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb43489e # load x3 with value 0xdb43489e
sw x3, 0(x2) # store 0xdb43489e in memory
flh f3, 0(x2) # load 0xdb43489e from memory into f3
li x3, 0x972d27f8 # load x3 with value 0x972d27f8
sw x3, 0(x2) # store 0x972d27f8 in memory
flh f31, 0(x2) # load 0x972d27f8 from memory into f31
fadd.h f8, f3, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x2, 0x5895d1a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba28a07e # load x3 with value 0xba28a07e
sw x3, 0(x2) # store 0xba28a07e in memory
flh f4, 0(x2) # load 0xba28a07e from memory into f4
li x3, 0xf07606ad # load x3 with value 0xf07606ad
sw x3, 0(x2) # store 0xf07606ad in memory
flh f31, 0(x2) # load 0xf07606ad from memory into f31
fadd.h f2, f4, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0xabdfc91f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27e763f8 # load x3 with value 0x27e763f8
sw x3, 0(x2) # store 0x27e763f8 in memory
flh f5, 0(x2) # load 0x27e763f8 from memory into f5
li x3, 0xfa649155 # load x3 with value 0xfa649155
sw x3, 0(x2) # store 0xfa649155 in memory
flh f4, 0(x2) # load 0xfa649155 from memory into f4
fadd.h f14, f5, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x30, 0x7da9372f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59aafbdf # load x3 with value 0x59aafbdf
sw x3, 0(x2) # store 0x59aafbdf in memory
flh f6, 0(x2) # load 0x59aafbdf from memory into f6
li x3, 0x8a14f3a2 # load x3 with value 0x8a14f3a2
sw x3, 0(x2) # store 0x8a14f3a2 in memory
flh f9, 0(x2) # load 0x8a14f3a2 from memory into f9
fadd.h f30, f6, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x21, 0x117eb1a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x979d4389 # load x3 with value 0x979d4389
sw x3, 0(x2) # store 0x979d4389 in memory
flh f7, 0(x2) # load 0x979d4389 from memory into f7
li x3, 0x1be2410f # load x3 with value 0x1be2410f
sw x3, 0(x2) # store 0x1be2410f in memory
flh f23, 0(x2) # load 0x1be2410f from memory into f23
fadd.h f21, f7, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x25, 0x8e83797d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4eb19f70 # load x3 with value 0x4eb19f70
sw x3, 0(x2) # store 0x4eb19f70 in memory
flh f8, 0(x2) # load 0x4eb19f70 from memory into f8
li x3, 0x7508b7e8 # load x3 with value 0x7508b7e8
sw x3, 0(x2) # store 0x7508b7e8 in memory
flh f16, 0(x2) # load 0x7508b7e8 from memory into f16
fadd.h f25, f8, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x1, 0x9d232574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedf01493 # load x3 with value 0xedf01493
sw x3, 0(x2) # store 0xedf01493 in memory
flh f9, 0(x2) # load 0xedf01493 from memory into f9
li x3, 0xa11b040f # load x3 with value 0xa11b040f
sw x3, 0(x2) # store 0xa11b040f in memory
flh f16, 0(x2) # load 0xa11b040f from memory into f16
fadd.h f1, f9, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x1, 0x48f61543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccef6514 # load x3 with value 0xccef6514
sw x3, 0(x2) # store 0xccef6514 in memory
flh f10, 0(x2) # load 0xccef6514 from memory into f10
li x3, 0x96429c35 # load x3 with value 0x96429c35
sw x3, 0(x2) # store 0x96429c35 in memory
flh f19, 0(x2) # load 0x96429c35 from memory into f19
fadd.h f1, f10, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x16, 0x6d8ad732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6d326d7 # load x3 with value 0xd6d326d7
sw x3, 0(x2) # store 0xd6d326d7 in memory
flh f11, 0(x2) # load 0xd6d326d7 from memory into f11
li x3, 0x675b391e # load x3 with value 0x675b391e
sw x3, 0(x2) # store 0x675b391e in memory
flh f29, 0(x2) # load 0x675b391e from memory into f29
fadd.h f16, f11, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x29, 0x852f1d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02a694e8 # load x3 with value 0x02a694e8
sw x3, 0(x2) # store 0x02a694e8 in memory
flh f12, 0(x2) # load 0x02a694e8 from memory into f12
li x3, 0x3e4ac57b # load x3 with value 0x3e4ac57b
sw x3, 0(x2) # store 0x3e4ac57b in memory
flh f5, 0(x2) # load 0x3e4ac57b from memory into f5
fadd.h f29, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x28, 0x7f8e5cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bee0793 # load x3 with value 0x7bee0793
sw x3, 0(x2) # store 0x7bee0793 in memory
flh f13, 0(x2) # load 0x7bee0793 from memory into f13
li x3, 0xc2296334 # load x3 with value 0xc2296334
sw x3, 0(x2) # store 0xc2296334 in memory
flh f1, 0(x2) # load 0xc2296334 from memory into f1
fadd.h f28, f13, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x12, 0x15183954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2056b69e # load x3 with value 0x2056b69e
sw x3, 0(x2) # store 0x2056b69e in memory
flh f14, 0(x2) # load 0x2056b69e from memory into f14
li x3, 0xdbfbbc9f # load x3 with value 0xdbfbbc9f
sw x3, 0(x2) # store 0xdbfbbc9f in memory
flh f28, 0(x2) # load 0xdbfbbc9f from memory into f28
fadd.h f12, f14, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x8, 0xc665b7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0471d136 # load x3 with value 0x0471d136
sw x3, 0(x2) # store 0x0471d136 in memory
flh f15, 0(x2) # load 0x0471d136 from memory into f15
li x3, 0xc1c2f9a8 # load x3 with value 0xc1c2f9a8
sw x3, 0(x2) # store 0xc1c2f9a8 in memory
flh f25, 0(x2) # load 0xc1c2f9a8 from memory into f25
fadd.h f8, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x24, 0x0e3e727c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1ae5e18 # load x3 with value 0xc1ae5e18
sw x3, 0(x2) # store 0xc1ae5e18 in memory
flh f16, 0(x2) # load 0xc1ae5e18 from memory into f16
li x3, 0xf7dc0784 # load x3 with value 0xf7dc0784
sw x3, 0(x2) # store 0xf7dc0784 in memory
flh f30, 0(x2) # load 0xf7dc0784 from memory into f30
fadd.h f24, f16, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x26, 0xe04a86dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6120a4a # load x3 with value 0xa6120a4a
sw x3, 0(x2) # store 0xa6120a4a in memory
flh f17, 0(x2) # load 0xa6120a4a from memory into f17
li x3, 0x81521eb8 # load x3 with value 0x81521eb8
sw x3, 0(x2) # store 0x81521eb8 in memory
flh f14, 0(x2) # load 0x81521eb8 from memory into f14
fadd.h f26, f17, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x1, 0xddb00f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf375758c # load x3 with value 0xf375758c
sw x3, 0(x2) # store 0xf375758c in memory
flh f18, 0(x2) # load 0xf375758c from memory into f18
li x3, 0x2a93e45c # load x3 with value 0x2a93e45c
sw x3, 0(x2) # store 0x2a93e45c in memory
flh f27, 0(x2) # load 0x2a93e45c from memory into f27
fadd.h f1, f18, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x10, 0x32cd51d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ac2a14f # load x3 with value 0x2ac2a14f
sw x3, 0(x2) # store 0x2ac2a14f in memory
flh f19, 0(x2) # load 0x2ac2a14f from memory into f19
li x3, 0x1cd73149 # load x3 with value 0x1cd73149
sw x3, 0(x2) # store 0x1cd73149 in memory
flh f18, 0(x2) # load 0x1cd73149 from memory into f18
fadd.h f10, f19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x10, 0x00bbf0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x989d53de # load x3 with value 0x989d53de
sw x3, 0(x2) # store 0x989d53de in memory
flh f20, 0(x2) # load 0x989d53de from memory into f20
li x3, 0x331f40cf # load x3 with value 0x331f40cf
sw x3, 0(x2) # store 0x331f40cf in memory
flh f19, 0(x2) # load 0x331f40cf from memory into f19
fadd.h f10, f20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x4, 0x44e26745 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda8dad5d # load x3 with value 0xda8dad5d
sw x3, 0(x2) # store 0xda8dad5d in memory
flh f21, 0(x2) # load 0xda8dad5d from memory into f21
li x3, 0x110b03e9 # load x3 with value 0x110b03e9
sw x3, 0(x2) # store 0x110b03e9 in memory
flh f26, 0(x2) # load 0x110b03e9 from memory into f26
fadd.h f4, f21, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x22, 0x63261167 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2481f9d # load x3 with value 0xd2481f9d
sw x3, 0(x2) # store 0xd2481f9d in memory
flh f22, 0(x2) # load 0xd2481f9d from memory into f22
li x3, 0x91f63228 # load x3 with value 0x91f63228
sw x3, 0(x2) # store 0x91f63228 in memory
flh f18, 0(x2) # load 0x91f63228 from memory into f18
fadd.h f22, f22, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x5, 0x366fc57e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0f8a753 # load x3 with value 0xf0f8a753
sw x3, 0(x2) # store 0xf0f8a753 in memory
flh f23, 0(x2) # load 0xf0f8a753 from memory into f23
li x3, 0xf0047e41 # load x3 with value 0xf0047e41
sw x3, 0(x2) # store 0xf0047e41 in memory
flh f11, 0(x2) # load 0xf0047e41 from memory into f11
fadd.h f5, f23, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x16, 0x8989cc26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fde290b # load x3 with value 0x0fde290b
sw x3, 0(x2) # store 0x0fde290b in memory
flh f24, 0(x2) # load 0x0fde290b from memory into f24
li x3, 0x65ec9aca # load x3 with value 0x65ec9aca
sw x3, 0(x2) # store 0x65ec9aca in memory
flh f6, 0(x2) # load 0x65ec9aca from memory into f6
fadd.h f16, f24, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x31, 0x93c669a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47f4801e # load x3 with value 0x47f4801e
sw x3, 0(x2) # store 0x47f4801e in memory
flh f25, 0(x2) # load 0x47f4801e from memory into f25
li x3, 0x3dbe3664 # load x3 with value 0x3dbe3664
sw x3, 0(x2) # store 0x3dbe3664 in memory
flh f24, 0(x2) # load 0x3dbe3664 from memory into f24
fadd.h f31, f25, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x26, 0xb020eaab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c3e84af # load x3 with value 0x8c3e84af
sw x3, 0(x2) # store 0x8c3e84af in memory
flh f26, 0(x2) # load 0x8c3e84af from memory into f26
li x3, 0x3519342d # load x3 with value 0x3519342d
sw x3, 0(x2) # store 0x3519342d in memory
flh f30, 0(x2) # load 0x3519342d from memory into f30
fadd.h f26, f26, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x16, 0xb1b42e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d65695d # load x3 with value 0x2d65695d
sw x3, 0(x2) # store 0x2d65695d in memory
flh f27, 0(x2) # load 0x2d65695d from memory into f27
li x3, 0x817128e8 # load x3 with value 0x817128e8
sw x3, 0(x2) # store 0x817128e8 in memory
flh f19, 0(x2) # load 0x817128e8 from memory into f19
fadd.h f16, f27, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x6, 0x9852c758 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd06adda4 # load x3 with value 0xd06adda4
sw x3, 0(x2) # store 0xd06adda4 in memory
flh f28, 0(x2) # load 0xd06adda4 from memory into f28
li x3, 0x31370f59 # load x3 with value 0x31370f59
sw x3, 0(x2) # store 0x31370f59 in memory
flh f19, 0(x2) # load 0x31370f59 from memory into f19
fadd.h f6, f28, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x21, 0xb77c8f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f0c3232 # load x3 with value 0x0f0c3232
sw x3, 0(x2) # store 0x0f0c3232 in memory
flh f29, 0(x2) # load 0x0f0c3232 from memory into f29
li x3, 0x382294b9 # load x3 with value 0x382294b9
sw x3, 0(x2) # store 0x382294b9 in memory
flh f8, 0(x2) # load 0x382294b9 from memory into f8
fadd.h f21, f29, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0xc432426f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x909badc0 # load x3 with value 0x909badc0
sw x3, 0(x2) # store 0x909badc0 in memory
flh f30, 0(x2) # load 0x909badc0 from memory into f30
li x3, 0x3e576042 # load x3 with value 0x3e576042
sw x3, 0(x2) # store 0x3e576042 in memory
flh f9, 0(x2) # load 0x3e576042 from memory into f9
fadd.h f19, f30, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x12, 0xda96d89b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0be614f6 # load x3 with value 0x0be614f6
sw x3, 0(x2) # store 0x0be614f6 in memory
flh f31, 0(x2) # load 0x0be614f6 from memory into f31
li x3, 0xb3988f7e # load x3 with value 0xb3988f7e
sw x3, 0(x2) # store 0xb3988f7e in memory
flh f24, 0(x2) # load 0xb3988f7e from memory into f24
fadd.h f12, f31, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x29, 0xd80a635b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41193a47 # load x3 with value 0x41193a47
sw x3, 0(x2) # store 0x41193a47 in memory
flh f17, 0(x2) # load 0x41193a47 from memory into f17
li x3, 0x89a59b72 # load x3 with value 0x89a59b72
sw x3, 0(x2) # store 0x89a59b72 in memory
flh f0, 0(x2) # load 0x89a59b72 from memory into f0
fadd.h f29, f17, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x26, 0xbb4d7c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c0455df # load x3 with value 0x2c0455df
sw x3, 0(x2) # store 0x2c0455df in memory
flh f23, 0(x2) # load 0x2c0455df from memory into f23
li x3, 0xe35d4257 # load x3 with value 0xe35d4257
sw x3, 0(x2) # store 0xe35d4257 in memory
flh f1, 0(x2) # load 0xe35d4257 from memory into f1
fadd.h f26, f23, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x21, 0x7eee1b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d912b38 # load x3 with value 0x1d912b38
sw x3, 0(x2) # store 0x1d912b38 in memory
flh f4, 0(x2) # load 0x1d912b38 from memory into f4
li x3, 0x7ec36e66 # load x3 with value 0x7ec36e66
sw x3, 0(x2) # store 0x7ec36e66 in memory
flh f2, 0(x2) # load 0x7ec36e66 from memory into f2
fadd.h f21, f4, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x24, 0xdcbe6bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcd21aa5 # load x3 with value 0xbcd21aa5
sw x3, 0(x2) # store 0xbcd21aa5 in memory
flh f1, 0(x2) # load 0xbcd21aa5 from memory into f1
li x3, 0xebce05b3 # load x3 with value 0xebce05b3
sw x3, 0(x2) # store 0xebce05b3 in memory
flh f3, 0(x2) # load 0xebce05b3 from memory into f3
fadd.h f24, f1, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x9, 0xa2a5f814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09b05973 # load x3 with value 0x09b05973
sw x3, 0(x2) # store 0x09b05973 in memory
flh f17, 0(x2) # load 0x09b05973 from memory into f17
li x3, 0xd778f496 # load x3 with value 0xd778f496
sw x3, 0(x2) # store 0xd778f496 in memory
flh f4, 0(x2) # load 0xd778f496 from memory into f4
fadd.h f9, f17, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x1, 0xb10d2421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x606f5d0c # load x3 with value 0x606f5d0c
sw x3, 0(x2) # store 0x606f5d0c in memory
flh f14, 0(x2) # load 0x606f5d0c from memory into f14
li x3, 0x8d46ed2d # load x3 with value 0x8d46ed2d
sw x3, 0(x2) # store 0x8d46ed2d in memory
flh f5, 0(x2) # load 0x8d46ed2d from memory into f5
fadd.h f1, f14, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x11, 0xe66980d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8ca09af # load x3 with value 0xf8ca09af
sw x3, 0(x2) # store 0xf8ca09af in memory
flh f18, 0(x2) # load 0xf8ca09af from memory into f18
li x3, 0x1995736b # load x3 with value 0x1995736b
sw x3, 0(x2) # store 0x1995736b in memory
flh f6, 0(x2) # load 0x1995736b from memory into f6
fadd.h f11, f18, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x10, 0xcf7facfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f8a6cc0 # load x3 with value 0x9f8a6cc0
sw x3, 0(x2) # store 0x9f8a6cc0 in memory
flh f20, 0(x2) # load 0x9f8a6cc0 from memory into f20
li x3, 0x49eebca6 # load x3 with value 0x49eebca6
sw x3, 0(x2) # store 0x49eebca6 in memory
flh f7, 0(x2) # load 0x49eebca6 from memory into f7
fadd.h f10, f20, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x7, 0x24a9b546 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x546bdf68 # load x3 with value 0x546bdf68
sw x3, 0(x2) # store 0x546bdf68 in memory
flh f29, 0(x2) # load 0x546bdf68 from memory into f29
li x3, 0x2c6c5c96 # load x3 with value 0x2c6c5c96
sw x3, 0(x2) # store 0x2c6c5c96 in memory
flh f8, 0(x2) # load 0x2c6c5c96 from memory into f8
fadd.h f7, f29, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x19, 0x9e232459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x306a0d51 # load x3 with value 0x306a0d51
sw x3, 0(x2) # store 0x306a0d51 in memory
flh f8, 0(x2) # load 0x306a0d51 from memory into f8
li x3, 0x86ac92de # load x3 with value 0x86ac92de
sw x3, 0(x2) # store 0x86ac92de in memory
flh f9, 0(x2) # load 0x86ac92de from memory into f9
fadd.h f19, f8, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x1, 0x89a21b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94e2cf3f # load x3 with value 0x94e2cf3f
sw x3, 0(x2) # store 0x94e2cf3f in memory
flh f9, 0(x2) # load 0x94e2cf3f from memory into f9
li x3, 0x57149df0 # load x3 with value 0x57149df0
sw x3, 0(x2) # store 0x57149df0 in memory
flh f10, 0(x2) # load 0x57149df0 from memory into f10
fadd.h f1, f9, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x18, 0xbff33e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53f750ac # load x3 with value 0x53f750ac
sw x3, 0(x2) # store 0x53f750ac in memory
flh f12, 0(x2) # load 0x53f750ac from memory into f12
li x3, 0x4f13e25c # load x3 with value 0x4f13e25c
sw x3, 0(x2) # store 0x4f13e25c in memory
flh f11, 0(x2) # load 0x4f13e25c from memory into f11
fadd.h f18, f12, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x2, 0x5d206e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b99d6d8 # load x3 with value 0x2b99d6d8
sw x3, 0(x2) # store 0x2b99d6d8 in memory
flh f20, 0(x2) # load 0x2b99d6d8 from memory into f20
li x3, 0x87293b8d # load x3 with value 0x87293b8d
sw x3, 0(x2) # store 0x87293b8d in memory
flh f12, 0(x2) # load 0x87293b8d from memory into f12
fadd.h f2, f20, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x12, 0x1e042c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x473e80e3 # load x3 with value 0x473e80e3
sw x3, 0(x2) # store 0x473e80e3 in memory
flh f23, 0(x2) # load 0x473e80e3 from memory into f23
li x3, 0xe6483e91 # load x3 with value 0xe6483e91
sw x3, 0(x2) # store 0xe6483e91 in memory
flh f13, 0(x2) # load 0xe6483e91 from memory into f13
fadd.h f12, f23, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x15, 0x9b7b3162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5a4374a # load x3 with value 0xc5a4374a
sw x3, 0(x2) # store 0xc5a4374a in memory
flh f19, 0(x2) # load 0xc5a4374a from memory into f19
li x3, 0xc39d6529 # load x3 with value 0xc39d6529
sw x3, 0(x2) # store 0xc39d6529 in memory
flh f14, 0(x2) # load 0xc39d6529 from memory into f14
fadd.h f15, f19, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x21, 0xbebc74dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa55d1582 # load x3 with value 0xa55d1582
sw x3, 0(x2) # store 0xa55d1582 in memory
flh f12, 0(x2) # load 0xa55d1582 from memory into f12
li x3, 0x637938d0 # load x3 with value 0x637938d0
sw x3, 0(x2) # store 0x637938d0 in memory
flh f15, 0(x2) # load 0x637938d0 from memory into f15
fadd.h f21, f12, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x19, 0x8965b863 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2db48335 # load x3 with value 0x2db48335
sw x3, 0(x2) # store 0x2db48335 in memory
flh f31, 0(x2) # load 0x2db48335 from memory into f31
li x3, 0x82c6cc7c # load x3 with value 0x82c6cc7c
sw x3, 0(x2) # store 0x82c6cc7c in memory
flh f16, 0(x2) # load 0x82c6cc7c from memory into f16
fadd.h f19, f31, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x12, 0x0aee0259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24bc3613 # load x3 with value 0x24bc3613
sw x3, 0(x2) # store 0x24bc3613 in memory
flh f9, 0(x2) # load 0x24bc3613 from memory into f9
li x3, 0xbbf455d1 # load x3 with value 0xbbf455d1
sw x3, 0(x2) # store 0xbbf455d1 in memory
flh f17, 0(x2) # load 0xbbf455d1 from memory into f17
fadd.h f12, f9, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x29, 0x0df02f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x176f0526 # load x3 with value 0x176f0526
sw x3, 0(x2) # store 0x176f0526 in memory
flh f23, 0(x2) # load 0x176f0526 from memory into f23
li x3, 0x07a707d3 # load x3 with value 0x07a707d3
sw x3, 0(x2) # store 0x07a707d3 in memory
flh f18, 0(x2) # load 0x07a707d3 from memory into f18
fadd.h f29, f23, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x17, 0x76370f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79408a4d # load x3 with value 0x79408a4d
sw x3, 0(x2) # store 0x79408a4d in memory
flh f31, 0(x2) # load 0x79408a4d from memory into f31
li x3, 0xe2f5df19 # load x3 with value 0xe2f5df19
sw x3, 0(x2) # store 0xe2f5df19 in memory
flh f19, 0(x2) # load 0xe2f5df19 from memory into f19
fadd.h f17, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x13, 0x46174655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7628f0f4 # load x3 with value 0x7628f0f4
sw x3, 0(x2) # store 0x7628f0f4 in memory
flh f30, 0(x2) # load 0x7628f0f4 from memory into f30
li x3, 0xc81b9532 # load x3 with value 0xc81b9532
sw x3, 0(x2) # store 0xc81b9532 in memory
flh f20, 0(x2) # load 0xc81b9532 from memory into f20
fadd.h f13, f30, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x1, 0x7a445bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f1be758 # load x3 with value 0x4f1be758
sw x3, 0(x2) # store 0x4f1be758 in memory
flh f4, 0(x2) # load 0x4f1be758 from memory into f4
li x3, 0x625cd300 # load x3 with value 0x625cd300
sw x3, 0(x2) # store 0x625cd300 in memory
flh f21, 0(x2) # load 0x625cd300 from memory into f21
fadd.h f1, f4, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x3, 0x70945f49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf17374fa # load x3 with value 0xf17374fa
sw x3, 0(x2) # store 0xf17374fa in memory
flh f20, 0(x2) # load 0xf17374fa from memory into f20
li x3, 0x7f8298a8 # load x3 with value 0x7f8298a8
sw x3, 0(x2) # store 0x7f8298a8 in memory
flh f22, 0(x2) # load 0x7f8298a8 from memory into f22
fadd.h f3, f20, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x19, 0x2a9b6070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdec0bf15 # load x3 with value 0xdec0bf15
sw x3, 0(x2) # store 0xdec0bf15 in memory
flh f1, 0(x2) # load 0xdec0bf15 from memory into f1
li x3, 0x566088dd # load x3 with value 0x566088dd
sw x3, 0(x2) # store 0x566088dd in memory
flh f23, 0(x2) # load 0x566088dd from memory into f23
fadd.h f19, f1, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x2, 0x8adea892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ac28474 # load x3 with value 0x2ac28474
sw x3, 0(x2) # store 0x2ac28474 in memory
flh f9, 0(x2) # load 0x2ac28474 from memory into f9
li x3, 0xd093e79d # load x3 with value 0xd093e79d
sw x3, 0(x2) # store 0xd093e79d in memory
flh f24, 0(x2) # load 0xd093e79d from memory into f24
fadd.h f2, f9, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x20, 0x22494715 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebc33d47 # load x3 with value 0xebc33d47
sw x3, 0(x2) # store 0xebc33d47 in memory
flh f10, 0(x2) # load 0xebc33d47 from memory into f10
li x3, 0x51d9b9fd # load x3 with value 0x51d9b9fd
sw x3, 0(x2) # store 0x51d9b9fd in memory
flh f25, 0(x2) # load 0x51d9b9fd from memory into f25
fadd.h f20, f10, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x29, 0x8b2ae43a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc1b0ea9 # load x3 with value 0xcc1b0ea9
sw x3, 0(x2) # store 0xcc1b0ea9 in memory
flh f22, 0(x2) # load 0xcc1b0ea9 from memory into f22
li x3, 0x2bf8e297 # load x3 with value 0x2bf8e297
sw x3, 0(x2) # store 0x2bf8e297 in memory
flh f26, 0(x2) # load 0x2bf8e297 from memory into f26
fadd.h f29, f22, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x18, 0x6645f755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x482652d0 # load x3 with value 0x482652d0
sw x3, 0(x2) # store 0x482652d0 in memory
flh f8, 0(x2) # load 0x482652d0 from memory into f8
li x3, 0x62f88637 # load x3 with value 0x62f88637
sw x3, 0(x2) # store 0x62f88637 in memory
flh f27, 0(x2) # load 0x62f88637 from memory into f27
fadd.h f18, f8, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x6, 0x3a051073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7abdf350 # load x3 with value 0x7abdf350
sw x3, 0(x2) # store 0x7abdf350 in memory
flh f18, 0(x2) # load 0x7abdf350 from memory into f18
li x3, 0x625498e8 # load x3 with value 0x625498e8
sw x3, 0(x2) # store 0x625498e8 in memory
flh f28, 0(x2) # load 0x625498e8 from memory into f28
fadd.h f6, f18, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x30, 0x2870a236 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x373e7e52 # load x3 with value 0x373e7e52
sw x3, 0(x2) # store 0x373e7e52 in memory
flh f24, 0(x2) # load 0x373e7e52 from memory into f24
li x3, 0xc369ba87 # load x3 with value 0xc369ba87
sw x3, 0(x2) # store 0xc369ba87 in memory
flh f29, 0(x2) # load 0xc369ba87 from memory into f29
fadd.h f30, f24, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x16, 0x9a8ab413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ed28a61 # load x3 with value 0x3ed28a61
sw x3, 0(x2) # store 0x3ed28a61 in memory
flh f3, 0(x2) # load 0x3ed28a61 from memory into f3
li x3, 0x249fc9eb # load x3 with value 0x249fc9eb
sw x3, 0(x2) # store 0x249fc9eb in memory
flh f30, 0(x2) # load 0x249fc9eb from memory into f30
fadd.h f16, f3, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x25, 0x09a518d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd0a8fd2 # load x3 with value 0xcd0a8fd2
sw x3, 0(x2) # store 0xcd0a8fd2 in memory
flh f10, 0(x2) # load 0xcd0a8fd2 from memory into f10
li x3, 0xf68c977d # load x3 with value 0xf68c977d
sw x3, 0(x2) # store 0xf68c977d in memory
flh f31, 0(x2) # load 0xf68c977d from memory into f31
fadd.h f25, f10, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
