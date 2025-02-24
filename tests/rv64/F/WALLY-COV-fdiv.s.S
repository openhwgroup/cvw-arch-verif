///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fdiv.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.713849
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
fdiv.s f3, f1, f18 # perform first operation
fdiv.s f20, f3, f2 # perform second operation

# Testcase cmp_gpr_hazard raw test
fdiv.s f1, f5, f25 # perform first operation
fdiv.s f20, f3, f1 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.s f3, f4, f29 # perform first operation
fdiv.s f3, f24, f25 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.s f14, f2, f20 # perform first operation
fdiv.s f14, f10, f21 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.s f5, f2, f4 # perform first operation
fdiv.s f2, f3, f19 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.s f3, f14, f25 # perform first operation
fdiv.s f25, f31, f19 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x4b39bbeba21193a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8200d27050f38a84 # load x3 with value 0x8200d27050f38a84
sw x3, 0(x2) # store 0x8200d27050f38a84 in memory
flw f0, 0(x2) # load 0x8200d27050f38a84 from memory into f0
li x3, 0xd4cf8d22b5f5c915 # load x3 with value 0xd4cf8d22b5f5c915
sw x3, 0(x2) # store 0xd4cf8d22b5f5c915 in memory
flw f8, 0(x2) # load 0xd4cf8d22b5f5c915 from memory into f8
fdiv.s f0, f0, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x18748a25ae451310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8967e59b7fe6f750 # load x3 with value 0x8967e59b7fe6f750
sw x3, 0(x2) # store 0x8967e59b7fe6f750 in memory
flw f1, 0(x2) # load 0x8967e59b7fe6f750 from memory into f1
li x3, 0xe973e411a35d8ef7 # load x3 with value 0xe973e411a35d8ef7
sw x3, 0(x2) # store 0xe973e411a35d8ef7 in memory
flw f12, 0(x2) # load 0xe973e411a35d8ef7 from memory into f12
fdiv.s f1, f1, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x8daa603efb19a342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe17ebaa149638c48 # load x3 with value 0xe17ebaa149638c48
sw x3, 0(x2) # store 0xe17ebaa149638c48 in memory
flw f2, 0(x2) # load 0xe17ebaa149638c48 from memory into f2
li x3, 0xf72332db7316cd58 # load x3 with value 0xf72332db7316cd58
sw x3, 0(x2) # store 0xf72332db7316cd58 in memory
flw f15, 0(x2) # load 0xf72332db7316cd58 from memory into f15
fdiv.s f2, f2, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x05e4a98f5f8dfb18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3af742b495177b37 # load x3 with value 0x3af742b495177b37
sw x3, 0(x2) # store 0x3af742b495177b37 in memory
flw f3, 0(x2) # load 0x3af742b495177b37 from memory into f3
li x3, 0x853c0c6a902fd909 # load x3 with value 0x853c0c6a902fd909
sw x3, 0(x2) # store 0x853c0c6a902fd909 in memory
flw f20, 0(x2) # load 0x853c0c6a902fd909 from memory into f20
fdiv.s f3, f3, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xe10b0f9c149f77ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bbb304d4b865641 # load x3 with value 0x5bbb304d4b865641
sw x3, 0(x2) # store 0x5bbb304d4b865641 in memory
flw f4, 0(x2) # load 0x5bbb304d4b865641 from memory into f4
li x3, 0x4f79a7cde1edbd1b # load x3 with value 0x4f79a7cde1edbd1b
sw x3, 0(x2) # store 0x4f79a7cde1edbd1b in memory
flw f10, 0(x2) # load 0x4f79a7cde1edbd1b from memory into f10
fdiv.s f4, f4, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x2856a3a51383cd5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6c3605caf70e2e9 # load x3 with value 0xa6c3605caf70e2e9
sw x3, 0(x2) # store 0xa6c3605caf70e2e9 in memory
flw f5, 0(x2) # load 0xa6c3605caf70e2e9 from memory into f5
li x3, 0xfa560b6a51ca3713 # load x3 with value 0xfa560b6a51ca3713
sw x3, 0(x2) # store 0xfa560b6a51ca3713 in memory
flw f18, 0(x2) # load 0xfa560b6a51ca3713 from memory into f18
fdiv.s f5, f5, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x8aac8b45a0053040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8041a4d1a9a5292e # load x3 with value 0x8041a4d1a9a5292e
sw x3, 0(x2) # store 0x8041a4d1a9a5292e in memory
flw f6, 0(x2) # load 0x8041a4d1a9a5292e from memory into f6
li x3, 0x511ed153b79f9ceb # load x3 with value 0x511ed153b79f9ceb
sw x3, 0(x2) # store 0x511ed153b79f9ceb in memory
flw f9, 0(x2) # load 0x511ed153b79f9ceb from memory into f9
fdiv.s f6, f6, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xfbe58c44789a7524 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf3dbf65ed76c425 # load x3 with value 0xbf3dbf65ed76c425
sw x3, 0(x2) # store 0xbf3dbf65ed76c425 in memory
flw f7, 0(x2) # load 0xbf3dbf65ed76c425 from memory into f7
li x3, 0x7af55f7bd713591d # load x3 with value 0x7af55f7bd713591d
sw x3, 0(x2) # store 0x7af55f7bd713591d in memory
flw f14, 0(x2) # load 0x7af55f7bd713591d from memory into f14
fdiv.s f7, f7, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x01cbabd99c2d6cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4a724caaa061030 # load x3 with value 0xb4a724caaa061030
sw x3, 0(x2) # store 0xb4a724caaa061030 in memory
flw f8, 0(x2) # load 0xb4a724caaa061030 from memory into f8
li x3, 0x1c43a21d3f729a81 # load x3 with value 0x1c43a21d3f729a81
sw x3, 0(x2) # store 0x1c43a21d3f729a81 in memory
flw f29, 0(x2) # load 0x1c43a21d3f729a81 from memory into f29
fdiv.s f8, f8, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xffb2fe6c2eee1640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41d9378f11c1a75e # load x3 with value 0x41d9378f11c1a75e
sw x3, 0(x2) # store 0x41d9378f11c1a75e in memory
flw f9, 0(x2) # load 0x41d9378f11c1a75e from memory into f9
li x3, 0x3c2925ac13404842 # load x3 with value 0x3c2925ac13404842
sw x3, 0(x2) # store 0x3c2925ac13404842 in memory
flw f21, 0(x2) # load 0x3c2925ac13404842 from memory into f21
fdiv.s f9, f9, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xf23a18a800c91bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26e62ecd543b1540 # load x3 with value 0x26e62ecd543b1540
sw x3, 0(x2) # store 0x26e62ecd543b1540 in memory
flw f10, 0(x2) # load 0x26e62ecd543b1540 from memory into f10
li x3, 0x2361d99d5517329d # load x3 with value 0x2361d99d5517329d
sw x3, 0(x2) # store 0x2361d99d5517329d in memory
flw f23, 0(x2) # load 0x2361d99d5517329d from memory into f23
fdiv.s f10, f10, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xe119972ef42d6bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x914f3c90c7f77274 # load x3 with value 0x914f3c90c7f77274
sw x3, 0(x2) # store 0x914f3c90c7f77274 in memory
flw f11, 0(x2) # load 0x914f3c90c7f77274 from memory into f11
li x3, 0x50606cc6f8073383 # load x3 with value 0x50606cc6f8073383
sw x3, 0(x2) # store 0x50606cc6f8073383 in memory
flw f24, 0(x2) # load 0x50606cc6f8073383 from memory into f24
fdiv.s f11, f11, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x3b21ede6ba19d202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfff671394009a80 # load x3 with value 0xdfff671394009a80
sw x3, 0(x2) # store 0xdfff671394009a80 in memory
flw f12, 0(x2) # load 0xdfff671394009a80 from memory into f12
li x3, 0x7dcdbfd3b221c7a5 # load x3 with value 0x7dcdbfd3b221c7a5
sw x3, 0(x2) # store 0x7dcdbfd3b221c7a5 in memory
flw f24, 0(x2) # load 0x7dcdbfd3b221c7a5 from memory into f24
fdiv.s f12, f12, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x37d33511f7995dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61bc0be6dd0155d0 # load x3 with value 0x61bc0be6dd0155d0
sw x3, 0(x2) # store 0x61bc0be6dd0155d0 in memory
flw f13, 0(x2) # load 0x61bc0be6dd0155d0 from memory into f13
li x3, 0x5b45e04a6467dd14 # load x3 with value 0x5b45e04a6467dd14
sw x3, 0(x2) # store 0x5b45e04a6467dd14 in memory
flw f9, 0(x2) # load 0x5b45e04a6467dd14 from memory into f9
fdiv.s f13, f13, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x892867c5baf261fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50a6bb514576ae2e # load x3 with value 0x50a6bb514576ae2e
sw x3, 0(x2) # store 0x50a6bb514576ae2e in memory
flw f14, 0(x2) # load 0x50a6bb514576ae2e from memory into f14
li x3, 0x263b7b75f133d5d1 # load x3 with value 0x263b7b75f133d5d1
sw x3, 0(x2) # store 0x263b7b75f133d5d1 in memory
flw f13, 0(x2) # load 0x263b7b75f133d5d1 from memory into f13
fdiv.s f14, f14, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xf60858d5308eae45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x665f0e13f6c7e66b # load x3 with value 0x665f0e13f6c7e66b
sw x3, 0(x2) # store 0x665f0e13f6c7e66b in memory
flw f15, 0(x2) # load 0x665f0e13f6c7e66b from memory into f15
li x3, 0xc37cdeef453c3245 # load x3 with value 0xc37cdeef453c3245
sw x3, 0(x2) # store 0xc37cdeef453c3245 in memory
flw f24, 0(x2) # load 0xc37cdeef453c3245 from memory into f24
fdiv.s f15, f15, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x9076a64a45cfce6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c12ffdb81a871b2 # load x3 with value 0x7c12ffdb81a871b2
sw x3, 0(x2) # store 0x7c12ffdb81a871b2 in memory
flw f16, 0(x2) # load 0x7c12ffdb81a871b2 from memory into f16
li x3, 0xadae8ebfcbb17a80 # load x3 with value 0xadae8ebfcbb17a80
sw x3, 0(x2) # store 0xadae8ebfcbb17a80 in memory
flw f16, 0(x2) # load 0xadae8ebfcbb17a80 from memory into f16
fdiv.s f16, f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xbae0709dfe58a2c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe523f9bf8b552d3 # load x3 with value 0xbe523f9bf8b552d3
sw x3, 0(x2) # store 0xbe523f9bf8b552d3 in memory
flw f17, 0(x2) # load 0xbe523f9bf8b552d3 from memory into f17
li x3, 0x5c61eafdfe0d5429 # load x3 with value 0x5c61eafdfe0d5429
sw x3, 0(x2) # store 0x5c61eafdfe0d5429 in memory
flw f12, 0(x2) # load 0x5c61eafdfe0d5429 from memory into f12
fdiv.s f17, f17, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x9f3a10e3db557737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c2bebbf191d7d26 # load x3 with value 0x9c2bebbf191d7d26
sw x3, 0(x2) # store 0x9c2bebbf191d7d26 in memory
flw f18, 0(x2) # load 0x9c2bebbf191d7d26 from memory into f18
li x3, 0xc391fd9d7a9efe6f # load x3 with value 0xc391fd9d7a9efe6f
sw x3, 0(x2) # store 0xc391fd9d7a9efe6f in memory
flw f22, 0(x2) # load 0xc391fd9d7a9efe6f from memory into f22
fdiv.s f18, f18, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xafa304c7a2997cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21c82676dcf8fa62 # load x3 with value 0x21c82676dcf8fa62
sw x3, 0(x2) # store 0x21c82676dcf8fa62 in memory
flw f19, 0(x2) # load 0x21c82676dcf8fa62 from memory into f19
li x3, 0x1b165885c18c1a5d # load x3 with value 0x1b165885c18c1a5d
sw x3, 0(x2) # store 0x1b165885c18c1a5d in memory
flw f26, 0(x2) # load 0x1b165885c18c1a5d from memory into f26
fdiv.s f19, f19, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xd02c53a846176b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fb909f1864d4b08 # load x3 with value 0x8fb909f1864d4b08
sw x3, 0(x2) # store 0x8fb909f1864d4b08 in memory
flw f20, 0(x2) # load 0x8fb909f1864d4b08 from memory into f20
li x3, 0xa227831f193f1ec1 # load x3 with value 0xa227831f193f1ec1
sw x3, 0(x2) # store 0xa227831f193f1ec1 in memory
flw f27, 0(x2) # load 0xa227831f193f1ec1 from memory into f27
fdiv.s f20, f20, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x648e547c2c20c19b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf5f76ee0616c5eb # load x3 with value 0xdf5f76ee0616c5eb
sw x3, 0(x2) # store 0xdf5f76ee0616c5eb in memory
flw f21, 0(x2) # load 0xdf5f76ee0616c5eb from memory into f21
li x3, 0x9797d689e11057b7 # load x3 with value 0x9797d689e11057b7
sw x3, 0(x2) # store 0x9797d689e11057b7 in memory
flw f28, 0(x2) # load 0x9797d689e11057b7 from memory into f28
fdiv.s f21, f21, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x0f835af20bd41329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9661623f6e7aec5 # load x3 with value 0x9661623f6e7aec5
sw x3, 0(x2) # store 0x9661623f6e7aec5 in memory
flw f22, 0(x2) # load 0x9661623f6e7aec5 from memory into f22
li x3, 0x1cee9b67df86373 # load x3 with value 0x1cee9b67df86373
sw x3, 0(x2) # store 0x1cee9b67df86373 in memory
flw f23, 0(x2) # load 0x1cee9b67df86373 from memory into f23
fdiv.s f22, f22, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x3fd6992d9bea87f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc485b89660bdecad # load x3 with value 0xc485b89660bdecad
sw x3, 0(x2) # store 0xc485b89660bdecad in memory
flw f23, 0(x2) # load 0xc485b89660bdecad from memory into f23
li x3, 0x2846a810bcd8dca0 # load x3 with value 0x2846a810bcd8dca0
sw x3, 0(x2) # store 0x2846a810bcd8dca0 in memory
flw f20, 0(x2) # load 0x2846a810bcd8dca0 from memory into f20
fdiv.s f23, f23, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xf2d4849206585f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x493ece04ec829e79 # load x3 with value 0x493ece04ec829e79
sw x3, 0(x2) # store 0x493ece04ec829e79 in memory
flw f24, 0(x2) # load 0x493ece04ec829e79 from memory into f24
li x3, 0x59bd41d2ff019231 # load x3 with value 0x59bd41d2ff019231
sw x3, 0(x2) # store 0x59bd41d2ff019231 in memory
flw f22, 0(x2) # load 0x59bd41d2ff019231 from memory into f22
fdiv.s f24, f24, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xa97ebc90c816317c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x326610de9ca7429a # load x3 with value 0x326610de9ca7429a
sw x3, 0(x2) # store 0x326610de9ca7429a in memory
flw f25, 0(x2) # load 0x326610de9ca7429a from memory into f25
li x3, 0x974bd1a3b76506ad # load x3 with value 0x974bd1a3b76506ad
sw x3, 0(x2) # store 0x974bd1a3b76506ad in memory
flw f30, 0(x2) # load 0x974bd1a3b76506ad from memory into f30
fdiv.s f25, f25, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x24079b676292754f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc16863adbbaf9cfb # load x3 with value 0xc16863adbbaf9cfb
sw x3, 0(x2) # store 0xc16863adbbaf9cfb in memory
flw f26, 0(x2) # load 0xc16863adbbaf9cfb from memory into f26
li x3, 0x88c6dfcc11117355 # load x3 with value 0x88c6dfcc11117355
sw x3, 0(x2) # store 0x88c6dfcc11117355 in memory
flw f4, 0(x2) # load 0x88c6dfcc11117355 from memory into f4
fdiv.s f26, f26, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x64760075872fbead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc20d288c1089f6dd # load x3 with value 0xc20d288c1089f6dd
sw x3, 0(x2) # store 0xc20d288c1089f6dd in memory
flw f27, 0(x2) # load 0xc20d288c1089f6dd from memory into f27
li x3, 0xff68dd7e7161ca43 # load x3 with value 0xff68dd7e7161ca43
sw x3, 0(x2) # store 0xff68dd7e7161ca43 in memory
flw f10, 0(x2) # load 0xff68dd7e7161ca43 from memory into f10
fdiv.s f27, f27, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x59f4c77df38dcc63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef1f88cff42b54ed # load x3 with value 0xef1f88cff42b54ed
sw x3, 0(x2) # store 0xef1f88cff42b54ed in memory
flw f28, 0(x2) # load 0xef1f88cff42b54ed from memory into f28
li x3, 0xe26b277bf01566a8 # load x3 with value 0xe26b277bf01566a8
sw x3, 0(x2) # store 0xe26b277bf01566a8 in memory
flw f26, 0(x2) # load 0xe26b277bf01566a8 from memory into f26
fdiv.s f28, f28, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x0837021c392f27da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c101c01bfd76857 # load x3 with value 0x5c101c01bfd76857
sw x3, 0(x2) # store 0x5c101c01bfd76857 in memory
flw f29, 0(x2) # load 0x5c101c01bfd76857 from memory into f29
li x3, 0x5bd77cc989db0cbb # load x3 with value 0x5bd77cc989db0cbb
sw x3, 0(x2) # store 0x5bd77cc989db0cbb in memory
flw f17, 0(x2) # load 0x5bd77cc989db0cbb from memory into f17
fdiv.s f29, f29, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x8a88755cc2fcf12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3a0a49be1d87ccc # load x3 with value 0xe3a0a49be1d87ccc
sw x3, 0(x2) # store 0xe3a0a49be1d87ccc in memory
flw f30, 0(x2) # load 0xe3a0a49be1d87ccc from memory into f30
li x3, 0x24303b82e62e8d49 # load x3 with value 0x24303b82e62e8d49
sw x3, 0(x2) # store 0x24303b82e62e8d49 in memory
flw f17, 0(x2) # load 0x24303b82e62e8d49 from memory into f17
fdiv.s f30, f30, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x06551b7677fa8c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d57e06c3a52e40e # load x3 with value 0x5d57e06c3a52e40e
sw x3, 0(x2) # store 0x5d57e06c3a52e40e in memory
flw f31, 0(x2) # load 0x5d57e06c3a52e40e from memory into f31
li x3, 0xf57187b29aa542fa # load x3 with value 0xf57187b29aa542fa
sw x3, 0(x2) # store 0xf57187b29aa542fa in memory
flw f7, 0(x2) # load 0xf57187b29aa542fa from memory into f7
fdiv.s f31, f31, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x9fd66b2074a74cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73369b5ac7287ed3 # load x3 with value 0x73369b5ac7287ed3
sw x3, 0(x2) # store 0x73369b5ac7287ed3 in memory
flw f6, 0(x2) # load 0x73369b5ac7287ed3 from memory into f6
li x3, 0xc8747ab7afd45833 # load x3 with value 0xc8747ab7afd45833
sw x3, 0(x2) # store 0xc8747ab7afd45833 in memory
flw f0, 0(x2) # load 0xc8747ab7afd45833 from memory into f0
fdiv.s f0, f6, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x4041304be94e63f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5db3dbf927de54ed # load x3 with value 0x5db3dbf927de54ed
sw x3, 0(x2) # store 0x5db3dbf927de54ed in memory
flw f2, 0(x2) # load 0x5db3dbf927de54ed from memory into f2
li x3, 0xaeb3592c4e3f09d2 # load x3 with value 0xaeb3592c4e3f09d2
sw x3, 0(x2) # store 0xaeb3592c4e3f09d2 in memory
flw f1, 0(x2) # load 0xaeb3592c4e3f09d2 from memory into f1
fdiv.s f1, f2, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x632bbfa4beccbf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9891895808e814de # load x3 with value 0x9891895808e814de
sw x3, 0(x2) # store 0x9891895808e814de in memory
flw f8, 0(x2) # load 0x9891895808e814de from memory into f8
li x3, 0x52a186aa2a3e0f7e # load x3 with value 0x52a186aa2a3e0f7e
sw x3, 0(x2) # store 0x52a186aa2a3e0f7e in memory
flw f2, 0(x2) # load 0x52a186aa2a3e0f7e from memory into f2
fdiv.s f2, f8, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x18437deda0a52c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77678f3f9de7cb8d # load x3 with value 0x77678f3f9de7cb8d
sw x3, 0(x2) # store 0x77678f3f9de7cb8d in memory
flw f8, 0(x2) # load 0x77678f3f9de7cb8d from memory into f8
li x3, 0x3a632390e680944a # load x3 with value 0x3a632390e680944a
sw x3, 0(x2) # store 0x3a632390e680944a in memory
flw f3, 0(x2) # load 0x3a632390e680944a from memory into f3
fdiv.s f3, f8, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xb35fc7ea3c6c7352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb1fcd7a299dd57b # load x3 with value 0xbb1fcd7a299dd57b
sw x3, 0(x2) # store 0xbb1fcd7a299dd57b in memory
flw f12, 0(x2) # load 0xbb1fcd7a299dd57b from memory into f12
li x3, 0xc624e82cd5d5ee97 # load x3 with value 0xc624e82cd5d5ee97
sw x3, 0(x2) # store 0xc624e82cd5d5ee97 in memory
flw f4, 0(x2) # load 0xc624e82cd5d5ee97 from memory into f4
fdiv.s f4, f12, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x350896402e7fb055 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d8b8ec70a05af46 # load x3 with value 0x8d8b8ec70a05af46
sw x3, 0(x2) # store 0x8d8b8ec70a05af46 in memory
flw f16, 0(x2) # load 0x8d8b8ec70a05af46 from memory into f16
li x3, 0xe42df0185b90a4e6 # load x3 with value 0xe42df0185b90a4e6
sw x3, 0(x2) # store 0xe42df0185b90a4e6 in memory
flw f5, 0(x2) # load 0xe42df0185b90a4e6 from memory into f5
fdiv.s f5, f16, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x7a2766631656d5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd4019e0fa7f7364 # load x3 with value 0xfd4019e0fa7f7364
sw x3, 0(x2) # store 0xfd4019e0fa7f7364 in memory
flw f10, 0(x2) # load 0xfd4019e0fa7f7364 from memory into f10
li x3, 0x1fce6cd5f83b1f5d # load x3 with value 0x1fce6cd5f83b1f5d
sw x3, 0(x2) # store 0x1fce6cd5f83b1f5d in memory
flw f6, 0(x2) # load 0x1fce6cd5f83b1f5d from memory into f6
fdiv.s f6, f10, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x68027e69f5c5fbbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfae631ee5f386448 # load x3 with value 0xfae631ee5f386448
sw x3, 0(x2) # store 0xfae631ee5f386448 in memory
flw f30, 0(x2) # load 0xfae631ee5f386448 from memory into f30
li x3, 0xc6f560c5f826636b # load x3 with value 0xc6f560c5f826636b
sw x3, 0(x2) # store 0xc6f560c5f826636b in memory
flw f7, 0(x2) # load 0xc6f560c5f826636b from memory into f7
fdiv.s f7, f30, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x9ad7673f1d7b0aca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e2fef3cd15b1517 # load x3 with value 0x8e2fef3cd15b1517
sw x3, 0(x2) # store 0x8e2fef3cd15b1517 in memory
flw f23, 0(x2) # load 0x8e2fef3cd15b1517 from memory into f23
li x3, 0xcc134f242f9979ab # load x3 with value 0xcc134f242f9979ab
sw x3, 0(x2) # store 0xcc134f242f9979ab in memory
flw f8, 0(x2) # load 0xcc134f242f9979ab from memory into f8
fdiv.s f8, f23, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x71aa62e290a3a54c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x628c341cee53f64a # load x3 with value 0x628c341cee53f64a
sw x3, 0(x2) # store 0x628c341cee53f64a in memory
flw f18, 0(x2) # load 0x628c341cee53f64a from memory into f18
li x3, 0x629dccf1079c9a53 # load x3 with value 0x629dccf1079c9a53
sw x3, 0(x2) # store 0x629dccf1079c9a53 in memory
flw f9, 0(x2) # load 0x629dccf1079c9a53 from memory into f9
fdiv.s f9, f18, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xadd53f20e7a06911 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f591f20e51e1660 # load x3 with value 0x4f591f20e51e1660
sw x3, 0(x2) # store 0x4f591f20e51e1660 in memory
flw f12, 0(x2) # load 0x4f591f20e51e1660 from memory into f12
li x3, 0x39608cdfd1d027bf # load x3 with value 0x39608cdfd1d027bf
sw x3, 0(x2) # store 0x39608cdfd1d027bf in memory
flw f10, 0(x2) # load 0x39608cdfd1d027bf from memory into f10
fdiv.s f10, f12, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x7160d4c0a219fcee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1089ccd26d420acf # load x3 with value 0x1089ccd26d420acf
sw x3, 0(x2) # store 0x1089ccd26d420acf in memory
flw f26, 0(x2) # load 0x1089ccd26d420acf from memory into f26
li x3, 0xf65364ace18bde5b # load x3 with value 0xf65364ace18bde5b
sw x3, 0(x2) # store 0xf65364ace18bde5b in memory
flw f11, 0(x2) # load 0xf65364ace18bde5b from memory into f11
fdiv.s f11, f26, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x7347393169ddbd85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11f49292d2b637bb # load x3 with value 0x11f49292d2b637bb
sw x3, 0(x2) # store 0x11f49292d2b637bb in memory
flw f29, 0(x2) # load 0x11f49292d2b637bb from memory into f29
li x3, 0x495b3a07415f4a14 # load x3 with value 0x495b3a07415f4a14
sw x3, 0(x2) # store 0x495b3a07415f4a14 in memory
flw f12, 0(x2) # load 0x495b3a07415f4a14 from memory into f12
fdiv.s f12, f29, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x90ec381a375605c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x683b3ee2bc36d1d2 # load x3 with value 0x683b3ee2bc36d1d2
sw x3, 0(x2) # store 0x683b3ee2bc36d1d2 in memory
flw f15, 0(x2) # load 0x683b3ee2bc36d1d2 from memory into f15
li x3, 0x68f9dc880e86eb9 # load x3 with value 0x68f9dc880e86eb9
sw x3, 0(x2) # store 0x68f9dc880e86eb9 in memory
flw f13, 0(x2) # load 0x68f9dc880e86eb9 from memory into f13
fdiv.s f13, f15, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xb83ba9b8c06cf4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2e73ee44085cbb7 # load x3 with value 0xb2e73ee44085cbb7
sw x3, 0(x2) # store 0xb2e73ee44085cbb7 in memory
flw f13, 0(x2) # load 0xb2e73ee44085cbb7 from memory into f13
li x3, 0xf09f8041e3ebec1d # load x3 with value 0xf09f8041e3ebec1d
sw x3, 0(x2) # store 0xf09f8041e3ebec1d in memory
flw f14, 0(x2) # load 0xf09f8041e3ebec1d from memory into f14
fdiv.s f14, f13, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x6075f77200fb8830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cd62fed5bb433b2 # load x3 with value 0x3cd62fed5bb433b2
sw x3, 0(x2) # store 0x3cd62fed5bb433b2 in memory
flw f21, 0(x2) # load 0x3cd62fed5bb433b2 from memory into f21
li x3, 0xa4b641995defc457 # load x3 with value 0xa4b641995defc457
sw x3, 0(x2) # store 0xa4b641995defc457 in memory
flw f15, 0(x2) # load 0xa4b641995defc457 from memory into f15
fdiv.s f15, f21, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xc1b91496f2b7930a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafece644d7d27161 # load x3 with value 0xafece644d7d27161
sw x3, 0(x2) # store 0xafece644d7d27161 in memory
flw f7, 0(x2) # load 0xafece644d7d27161 from memory into f7
li x3, 0xdc464acfc7a1aaf8 # load x3 with value 0xdc464acfc7a1aaf8
sw x3, 0(x2) # store 0xdc464acfc7a1aaf8 in memory
flw f16, 0(x2) # load 0xdc464acfc7a1aaf8 from memory into f16
fdiv.s f16, f7, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xf923fa3c3120bd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf591cf1ed74746b0 # load x3 with value 0xf591cf1ed74746b0
sw x3, 0(x2) # store 0xf591cf1ed74746b0 in memory
flw f8, 0(x2) # load 0xf591cf1ed74746b0 from memory into f8
li x3, 0x26ae3073a14ae868 # load x3 with value 0x26ae3073a14ae868
sw x3, 0(x2) # store 0x26ae3073a14ae868 in memory
flw f17, 0(x2) # load 0x26ae3073a14ae868 from memory into f17
fdiv.s f17, f8, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xea3d5ed7e9dfd85a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73c13dde2d5e693 # load x3 with value 0x73c13dde2d5e693
sw x3, 0(x2) # store 0x73c13dde2d5e693 in memory
flw f17, 0(x2) # load 0x73c13dde2d5e693 from memory into f17
li x3, 0xd98d7acb58997821 # load x3 with value 0xd98d7acb58997821
sw x3, 0(x2) # store 0xd98d7acb58997821 in memory
flw f18, 0(x2) # load 0xd98d7acb58997821 from memory into f18
fdiv.s f18, f17, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x9b4f99bec24f8a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44770448c9e1ecf6 # load x3 with value 0x44770448c9e1ecf6
sw x3, 0(x2) # store 0x44770448c9e1ecf6 in memory
flw f19, 0(x2) # load 0x44770448c9e1ecf6 from memory into f19
li x3, 0x4e4f4e6887db16e8 # load x3 with value 0x4e4f4e6887db16e8
sw x3, 0(x2) # store 0x4e4f4e6887db16e8 in memory
flw f19, 0(x2) # load 0x4e4f4e6887db16e8 from memory into f19
fdiv.s f19, f19, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xa4d340c5c6b23245 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1e14419ed1c2632 # load x3 with value 0xf1e14419ed1c2632
sw x3, 0(x2) # store 0xf1e14419ed1c2632 in memory
flw f17, 0(x2) # load 0xf1e14419ed1c2632 from memory into f17
li x3, 0x79de3f5f7a7aaaa9 # load x3 with value 0x79de3f5f7a7aaaa9
sw x3, 0(x2) # store 0x79de3f5f7a7aaaa9 in memory
flw f20, 0(x2) # load 0x79de3f5f7a7aaaa9 from memory into f20
fdiv.s f20, f17, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x184b3e9d3051f842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x237833d7c79e2d53 # load x3 with value 0x237833d7c79e2d53
sw x3, 0(x2) # store 0x237833d7c79e2d53 in memory
flw f11, 0(x2) # load 0x237833d7c79e2d53 from memory into f11
li x3, 0x174e6f0bdc209cf1 # load x3 with value 0x174e6f0bdc209cf1
sw x3, 0(x2) # store 0x174e6f0bdc209cf1 in memory
flw f21, 0(x2) # load 0x174e6f0bdc209cf1 from memory into f21
fdiv.s f21, f11, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xb5071674b72c2ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd489f5fbf38c435 # load x3 with value 0xfd489f5fbf38c435
sw x3, 0(x2) # store 0xfd489f5fbf38c435 in memory
flw f31, 0(x2) # load 0xfd489f5fbf38c435 from memory into f31
li x3, 0xa2d77d2647b83175 # load x3 with value 0xa2d77d2647b83175
sw x3, 0(x2) # store 0xa2d77d2647b83175 in memory
flw f22, 0(x2) # load 0xa2d77d2647b83175 from memory into f22
fdiv.s f22, f31, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x416898e43afe0f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cf0bd9c44d7b5ff # load x3 with value 0x9cf0bd9c44d7b5ff
sw x3, 0(x2) # store 0x9cf0bd9c44d7b5ff in memory
flw f16, 0(x2) # load 0x9cf0bd9c44d7b5ff from memory into f16
li x3, 0xda4eba74b3dd4803 # load x3 with value 0xda4eba74b3dd4803
sw x3, 0(x2) # store 0xda4eba74b3dd4803 in memory
flw f23, 0(x2) # load 0xda4eba74b3dd4803 from memory into f23
fdiv.s f23, f16, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xf30269f496370215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c0d147831d4735b # load x3 with value 0x9c0d147831d4735b
sw x3, 0(x2) # store 0x9c0d147831d4735b in memory
flw f23, 0(x2) # load 0x9c0d147831d4735b from memory into f23
li x3, 0x44cedcf6090f2a46 # load x3 with value 0x44cedcf6090f2a46
sw x3, 0(x2) # store 0x44cedcf6090f2a46 in memory
flw f24, 0(x2) # load 0x44cedcf6090f2a46 from memory into f24
fdiv.s f24, f23, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x96d22e8de5400d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc68b7c9546214d50 # load x3 with value 0xc68b7c9546214d50
sw x3, 0(x2) # store 0xc68b7c9546214d50 in memory
flw f12, 0(x2) # load 0xc68b7c9546214d50 from memory into f12
li x3, 0xbe2b012dbfe1905e # load x3 with value 0xbe2b012dbfe1905e
sw x3, 0(x2) # store 0xbe2b012dbfe1905e in memory
flw f25, 0(x2) # load 0xbe2b012dbfe1905e from memory into f25
fdiv.s f25, f12, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x175069f12a6d1169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96d41683765aa6b7 # load x3 with value 0x96d41683765aa6b7
sw x3, 0(x2) # store 0x96d41683765aa6b7 in memory
flw f31, 0(x2) # load 0x96d41683765aa6b7 from memory into f31
li x3, 0xb9b708b2a88415e8 # load x3 with value 0xb9b708b2a88415e8
sw x3, 0(x2) # store 0xb9b708b2a88415e8 in memory
flw f26, 0(x2) # load 0xb9b708b2a88415e8 from memory into f26
fdiv.s f26, f31, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xc5d165c6fe716b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe406005bf5c661c7 # load x3 with value 0xe406005bf5c661c7
sw x3, 0(x2) # store 0xe406005bf5c661c7 in memory
flw f13, 0(x2) # load 0xe406005bf5c661c7 from memory into f13
li x3, 0x9521a5255ad0f6d1 # load x3 with value 0x9521a5255ad0f6d1
sw x3, 0(x2) # store 0x9521a5255ad0f6d1 in memory
flw f27, 0(x2) # load 0x9521a5255ad0f6d1 from memory into f27
fdiv.s f27, f13, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x1137a3bd0ab95e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76a8962d1da1f269 # load x3 with value 0x76a8962d1da1f269
sw x3, 0(x2) # store 0x76a8962d1da1f269 in memory
flw f3, 0(x2) # load 0x76a8962d1da1f269 from memory into f3
li x3, 0x68dac936a1a81649 # load x3 with value 0x68dac936a1a81649
sw x3, 0(x2) # store 0x68dac936a1a81649 in memory
flw f28, 0(x2) # load 0x68dac936a1a81649 from memory into f28
fdiv.s f28, f3, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x71d9c5ce11ca8fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36def668a1222640 # load x3 with value 0x36def668a1222640
sw x3, 0(x2) # store 0x36def668a1222640 in memory
flw f28, 0(x2) # load 0x36def668a1222640 from memory into f28
li x3, 0xf40703605a454c41 # load x3 with value 0xf40703605a454c41
sw x3, 0(x2) # store 0xf40703605a454c41 in memory
flw f29, 0(x2) # load 0xf40703605a454c41 from memory into f29
fdiv.s f29, f28, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xcb0905a2f142822d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85d3263667cd1eea # load x3 with value 0x85d3263667cd1eea
sw x3, 0(x2) # store 0x85d3263667cd1eea in memory
flw f17, 0(x2) # load 0x85d3263667cd1eea from memory into f17
li x3, 0x32c8f6b1a29572be # load x3 with value 0x32c8f6b1a29572be
sw x3, 0(x2) # store 0x32c8f6b1a29572be in memory
flw f30, 0(x2) # load 0x32c8f6b1a29572be from memory into f30
fdiv.s f30, f17, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xf2ef2b438ac3c655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8a7dd9cd5a31276 # load x3 with value 0xa8a7dd9cd5a31276
sw x3, 0(x2) # store 0xa8a7dd9cd5a31276 in memory
flw f19, 0(x2) # load 0xa8a7dd9cd5a31276 from memory into f19
li x3, 0x731e03478da2ef26 # load x3 with value 0x731e03478da2ef26
sw x3, 0(x2) # store 0x731e03478da2ef26 in memory
flw f31, 0(x2) # load 0x731e03478da2ef26 from memory into f31
fdiv.s f31, f19, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x26, 0xf5a21fd79cb453fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0xc2f273b7a4769584 # load x3 with value 0xc2f273b7a4769584
sw x3, 0(x2) # store 0xc2f273b7a4769584 in memory
flw f9, 0(x2) # load 0xc2f273b7a4769584 from memory into f9
fdiv.s f26, f12, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x10, 0x3a3c36d1db5f3cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
li x3, 0x304314fc721da424 # load x3 with value 0x304314fc721da424
sw x3, 0(x2) # store 0x304314fc721da424 in memory
flw f4, 0(x2) # load 0x304314fc721da424 from memory into f4
fdiv.s f10, f28, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x30, 0x417140f2df3b4838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0xa4599e9dde90e817 # load x3 with value 0xa4599e9dde90e817
sw x3, 0(x2) # store 0xa4599e9dde90e817 in memory
flw f23, 0(x2) # load 0xa4599e9dde90e817 from memory into f23
fdiv.s f30, f28, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x24, 0xdd179a6c10974831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0xa1933df4059db025 # load x3 with value 0xa1933df4059db025
sw x3, 0(x2) # store 0xa1933df4059db025 in memory
flw f11, 0(x2) # load 0xa1933df4059db025 from memory into f11
fdiv.s f24, f29, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x21, 0x86eb71675c7dd6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0xf3a1e86c5335309c # load x3 with value 0xf3a1e86c5335309c
sw x3, 0(x2) # store 0xf3a1e86c5335309c in memory
flw f13, 0(x2) # load 0xf3a1e86c5335309c from memory into f13
fdiv.s f21, f29, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x24, 0xd767c0fe6792ea38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0xb1228075df7018f6 # load x3 with value 0xb1228075df7018f6
sw x3, 0(x2) # store 0xb1228075df7018f6 in memory
flw f20, 0(x2) # load 0xb1228075df7018f6 from memory into f20
fdiv.s f24, f3, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x23, 0x6389376a019f1255 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
li x3, 0x9a20eaba3bdd8125 # load x3 with value 0x9a20eaba3bdd8125
sw x3, 0(x2) # store 0x9a20eaba3bdd8125 in memory
flw f31, 0(x2) # load 0x9a20eaba3bdd8125 from memory into f31
fdiv.s f23, f3, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x17, 0xc3063a4f0c303824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x72c3f0e5214d8a48 # load x3 with value 0x72c3f0e5214d8a48
sw x3, 0(x2) # store 0x72c3f0e5214d8a48 in memory
flw f14, 0(x2) # load 0x72c3f0e5214d8a48 from memory into f14
fdiv.s f17, f1, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x20, 0x60a7bdead7f25565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0x4a91d3dca4ffd931 # load x3 with value 0x4a91d3dca4ffd931
sw x3, 0(x2) # store 0x4a91d3dca4ffd931 in memory
flw f4, 0(x2) # load 0x4a91d3dca4ffd931 from memory into f4
fdiv.s f20, f6, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x8, 0x20d6025b955b7bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x5a23d4e12449a8bd # load x3 with value 0x5a23d4e12449a8bd
sw x3, 0(x2) # store 0x5a23d4e12449a8bd in memory
flw f7, 0(x2) # load 0x5a23d4e12449a8bd from memory into f7
fdiv.s f8, f11, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x13, 0xe7cd94e3ab5c5e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0x38bbbd68dc140d41 # load x3 with value 0x38bbbd68dc140d41
sw x3, 0(x2) # store 0x38bbbd68dc140d41 in memory
flw f3, 0(x2) # load 0x38bbbd68dc140d41 from memory into f3
fdiv.s f13, f4, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x28, 0xb9955f55cee2fd57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0xaef31d2be498686e # load x3 with value 0xaef31d2be498686e
sw x3, 0(x2) # store 0xaef31d2be498686e in memory
flw f27, 0(x2) # load 0xaef31d2be498686e from memory into f27
fdiv.s f28, f11, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x31, 0x3d5c9c16d7a10e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x6008265814129e96 # load x3 with value 0x6008265814129e96
sw x3, 0(x2) # store 0x6008265814129e96 in memory
flw f26, 0(x2) # load 0x6008265814129e96 from memory into f26
fdiv.s f31, f25, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x17, 0xa377c07791d07d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x57b75cff497282ff # load x3 with value 0x57b75cff497282ff
sw x3, 0(x2) # store 0x57b75cff497282ff in memory
flw f5, 0(x2) # load 0x57b75cff497282ff from memory into f5
fdiv.s f17, f27, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x16, 0x69dc08cdc9a9df5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x9835e1f6690c0afb # load x3 with value 0x9835e1f6690c0afb
sw x3, 0(x2) # store 0x9835e1f6690c0afb in memory
flw f25, 0(x2) # load 0x9835e1f6690c0afb from memory into f25
fdiv.s f16, f27, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x24, 0xe73c76b2f9823af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
li x3, 0xf2d4264bb62e2862 # load x3 with value 0xf2d4264bb62e2862
sw x3, 0(x2) # store 0xf2d4264bb62e2862 in memory
flw f22, 0(x2) # load 0xf2d4264bb62e2862 from memory into f22
fdiv.s f24, f26, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x26, 0x46415f6a28281ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x51e54c9966c93701 # load x3 with value 0x51e54c9966c93701
sw x3, 0(x2) # store 0x51e54c9966c93701 in memory
flw f9, 0(x2) # load 0x51e54c9966c93701 from memory into f9
fdiv.s f26, f21, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x23, 0x7cc1b06c56d978f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x3a46141289edafdc # load x3 with value 0x3a46141289edafdc
sw x3, 0(x2) # store 0x3a46141289edafdc in memory
flw f4, 0(x2) # load 0x3a46141289edafdc from memory into f4
fdiv.s f23, f6, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x20, 0x05e5b89f1b895051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0xa63ab65b7d038432 # load x3 with value 0xa63ab65b7d038432
sw x3, 0(x2) # store 0xa63ab65b7d038432 in memory
flw f21, 0(x2) # load 0xa63ab65b7d038432 from memory into f21
fdiv.s f20, f5, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x17, 0xd325b139a45df3e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
li x3, 0x74c9d7162d1c1697 # load x3 with value 0x74c9d7162d1c1697
sw x3, 0(x2) # store 0x74c9d7162d1c1697 in memory
flw f2, 0(x2) # load 0x74c9d7162d1c1697 from memory into f2
fdiv.s f17, f4, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x26, 0xa8a3dc533008407d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x66f1cf50bf7ac22f # load x3 with value 0x66f1cf50bf7ac22f
sw x3, 0(x2) # store 0x66f1cf50bf7ac22f in memory
flw f30, 0(x2) # load 0x66f1cf50bf7ac22f from memory into f30
fdiv.s f26, f10, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x19, 0x134632d6074cfc88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x72712d2b234d3d98 # load x3 with value 0x72712d2b234d3d98
sw x3, 0(x2) # store 0x72712d2b234d3d98 in memory
flw f28, 0(x2) # load 0x72712d2b234d3d98 from memory into f28
fdiv.s f19, f13, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x27, 0x85cb68f348786565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0xa4e6fa6d24d033f # load x3 with value 0xa4e6fa6d24d033f
sw x3, 0(x2) # store 0xa4e6fa6d24d033f in memory
flw f21, 0(x2) # load 0xa4e6fa6d24d033f from memory into f21
fdiv.s f27, f5, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x4, 0xc61cfeb169b760c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
li x3, 0x513b68344e2331d7 # load x3 with value 0x513b68344e2331d7
sw x3, 0(x2) # store 0x513b68344e2331d7 in memory
flw f26, 0(x2) # load 0x513b68344e2331d7 from memory into f26
fdiv.s f4, f14, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x1, 0xcb930da7c84e4e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
li x3, 0xe3aff99bd4715ea # load x3 with value 0xe3aff99bd4715ea
sw x3, 0(x2) # store 0xe3aff99bd4715ea in memory
flw f22, 0(x2) # load 0xe3aff99bd4715ea from memory into f22
fdiv.s f1, f18, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x13, 0x830203cfc310a816 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0x350b6af8dbc36f6e # load x3 with value 0x350b6af8dbc36f6e
sw x3, 0(x2) # store 0x350b6af8dbc36f6e in memory
flw f1, 0(x2) # load 0x350b6af8dbc36f6e from memory into f1
fdiv.s f13, f14, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x18, 0xbaae25b63b421e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2955768d91b90c6a # load x3 with value 0x2955768d91b90c6a
sw x3, 0(x2) # store 0x2955768d91b90c6a in memory
flw f13, 0(x2) # load 0x2955768d91b90c6a from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.s f18, f13, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x1, 0x436f3e7b1f320333 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b589906fe8bf7b7 # load x3 with value 0x5b589906fe8bf7b7
sw x3, 0(x2) # store 0x5b589906fe8bf7b7 in memory
flw f28, 0(x2) # load 0x5b589906fe8bf7b7 from memory into f28
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fdiv.s f1, f28, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x7, 0x224b55aa084f5787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9b345b60367f5b1 # load x3 with value 0xb9b345b60367f5b1
sw x3, 0(x2) # store 0xb9b345b60367f5b1 in memory
flw f13, 0(x2) # load 0xb9b345b60367f5b1 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fdiv.s f7, f13, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x20, 0x532b444e971e8a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x557aa6a108355a74 # load x3 with value 0x557aa6a108355a74
sw x3, 0(x2) # store 0x557aa6a108355a74 in memory
flw f13, 0(x2) # load 0x557aa6a108355a74 from memory into f13
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fdiv.s f20, f13, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x29, 0x58c59f42bbd23fea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x376c270ef7630fd0 # load x3 with value 0x376c270ef7630fd0
sw x3, 0(x2) # store 0x376c270ef7630fd0 in memory
flw f23, 0(x2) # load 0x376c270ef7630fd0 from memory into f23
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fdiv.s f29, f23, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x12, 0x2e0704ab24e13815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c3796bc2a413 # load x3 with value 0x5c3796bc2a413
sw x3, 0(x2) # store 0x5c3796bc2a413 in memory
flw f27, 0(x2) # load 0x5c3796bc2a413 from memory into f27
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fdiv.s f12, f27, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x18, 0xd0439b9e005f1812 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bb368fe4b1f7b22 # load x3 with value 0x5bb368fe4b1f7b22
sw x3, 0(x2) # store 0x5bb368fe4b1f7b22 in memory
flw f22, 0(x2) # load 0x5bb368fe4b1f7b22 from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fdiv.s f18, f22, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x27, 0x5238b51d0533c01b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf75ed8d0fbb4a0bd # load x3 with value 0xf75ed8d0fbb4a0bd
sw x3, 0(x2) # store 0xf75ed8d0fbb4a0bd in memory
flw f24, 0(x2) # load 0xf75ed8d0fbb4a0bd from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fdiv.s f27, f24, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x23, 0xaed6048837479592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0be1bb0c33e928c # load x3 with value 0xa0be1bb0c33e928c
sw x3, 0(x2) # store 0xa0be1bb0c33e928c in memory
flw f6, 0(x2) # load 0xa0be1bb0c33e928c from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fdiv.s f23, f6, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x17, 0x1342c214f827b72d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde40d3c1d40c6a6d # load x3 with value 0xde40d3c1d40c6a6d
sw x3, 0(x2) # store 0xde40d3c1d40c6a6d in memory
flw f4, 0(x2) # load 0xde40d3c1d40c6a6d from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fdiv.s f17, f4, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x18, 0x72ee194bff0e929d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe101644d9197591b # load x3 with value 0xe101644d9197591b
sw x3, 0(x2) # store 0xe101644d9197591b in memory
flw f20, 0(x2) # load 0xe101644d9197591b from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fdiv.s f18, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x24, 0xca9c2f94b2d4ce77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdc0f73dcdba1daf # load x3 with value 0xcdc0f73dcdba1daf
sw x3, 0(x2) # store 0xcdc0f73dcdba1daf in memory
flw f12, 0(x2) # load 0xcdc0f73dcdba1daf from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fdiv.s f24, f12, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x14, 0x947aa8f95a70c9de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a9c4f01a39efc3c # load x3 with value 0x5a9c4f01a39efc3c
sw x3, 0(x2) # store 0x5a9c4f01a39efc3c in memory
flw f17, 0(x2) # load 0x5a9c4f01a39efc3c from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fdiv.s f14, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x31, 0x2d093161d25028df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x527d40e6954a460a # load x3 with value 0x527d40e6954a460a
sw x3, 0(x2) # store 0x527d40e6954a460a in memory
flw f20, 0(x2) # load 0x527d40e6954a460a from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fdiv.s f31, f20, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x29, 0xc20c32cc9a109f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78822152b23144b4 # load x3 with value 0x78822152b23144b4
sw x3, 0(x2) # store 0x78822152b23144b4 in memory
flw f15, 0(x2) # load 0x78822152b23144b4 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fdiv.s f29, f15, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x22, 0x69e4c97ede87c261 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdded3607a283287 # load x3 with value 0xbdded3607a283287
sw x3, 0(x2) # store 0xbdded3607a283287 in memory
flw f31, 0(x2) # load 0xbdded3607a283287 from memory into f31
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fdiv.s f22, f31, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x29, 0xdec2e19e9a03e64a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc555ed5ae2456bbb # load x3 with value 0xc555ed5ae2456bbb
sw x3, 0(x2) # store 0xc555ed5ae2456bbb in memory
flw f20, 0(x2) # load 0xc555ed5ae2456bbb from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f29, f20, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x19, 0x028a7a6fb971d4d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3649ef1cf5af184b # load x3 with value 0x3649ef1cf5af184b
sw x3, 0(x2) # store 0x3649ef1cf5af184b in memory
flw f16, 0(x2) # load 0x3649ef1cf5af184b from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fdiv.s f19, f16, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x25, 0xafceead1a5d282a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3534f48dc5a87d19 # load x3 with value 0x3534f48dc5a87d19
sw x3, 0(x2) # store 0x3534f48dc5a87d19 in memory
flw f11, 0(x2) # load 0x3534f48dc5a87d19 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fdiv.s f25, f11, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x1, 0x738709f583b024ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6cf91ee725b17b4 # load x3 with value 0xb6cf91ee725b17b4
sw x3, 0(x2) # store 0xb6cf91ee725b17b4 in memory
flw f18, 0(x2) # load 0xb6cf91ee725b17b4 from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fdiv.s f1, f18, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x2, 0xdfe6bdbfda34bb86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38120df9f2311128 # load x3 with value 0x38120df9f2311128
sw x3, 0(x2) # store 0x38120df9f2311128 in memory
flw f16, 0(x2) # load 0x38120df9f2311128 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fdiv.s f2, f16, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x4, 0x554c5b77d1188f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6aa739c963e0cd6 # load x3 with value 0xf6aa739c963e0cd6
sw x3, 0(x2) # store 0xf6aa739c963e0cd6 in memory
flw f28, 0(x2) # load 0xf6aa739c963e0cd6 from memory into f28
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f4, f28, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x23, 0xa4578dcf49e885e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5f856e36d89a02b # load x3 with value 0xd5f856e36d89a02b
sw x3, 0(x2) # store 0xd5f856e36d89a02b in memory
flw f13, 0(x2) # load 0xd5f856e36d89a02b from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fdiv.s f23, f13, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x16, 0xcfbd005808de79a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8851b1992618f469 # load x3 with value 0x8851b1992618f469
sw x3, 0(x2) # store 0x8851b1992618f469 in memory
flw f5, 0(x2) # load 0x8851b1992618f469 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fdiv.s f16, f5, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x10, 0x12c4f6443abbbbc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7add38eb8cd0b73a # load x3 with value 0x7add38eb8cd0b73a
sw x3, 0(x2) # store 0x7add38eb8cd0b73a in memory
flw f12, 0(x2) # load 0x7add38eb8cd0b73a from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fdiv.s f10, f12, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x15, 0x62709be2bf2dd4bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47c3802c1c099719 # load x3 with value 0x47c3802c1c099719
sw x3, 0(x2) # store 0x47c3802c1c099719 in memory
flw f28, 0(x2) # load 0x47c3802c1c099719 from memory into f28
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fdiv.s f15, f28, f27 # perform operation

# Testcase cp_frm
li x4, 0x17ab6a73884e766b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e537575d5a85f0e # load x3 with value 0x9e537575d5a85f0e
sw x3, 0(x2) # store 0x9e537575d5a85f0e in memory
flw f11, 0(x2) # load 0x9e537575d5a85f0e from memory into f11
li x3, 0xe095efa0a664f450 # load x3 with value 0xe095efa0a664f450
sw x3, 0(x2) # store 0xe095efa0a664f450 in memory
flw f31, 0(x2) # load 0xe095efa0a664f450 from memory into f31
fdiv.s f4, f11, f31, dyn # perform operation
fdiv.s f4, f11, f31, rdn # perform operation
fdiv.s f4, f11, f31, rmm # perform operation
fdiv.s f4, f11, f31, rne # perform operation
fdiv.s f4, f11, f31, rtz # perform operation
fdiv.s f4, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x18, 0x63f93490a6ab4ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fdiv.s f18, f31, f24, dyn # perform operation
fdiv.s f18, f31, f24, rdn # perform operation
fdiv.s f18, f31, f24, rmm # perform operation
fdiv.s f18, f31, f24, rne # perform operation
fdiv.s f18, f31, f24, rtz # perform operation
fdiv.s f18, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x10, 0xa1a209fca2f7134e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fdiv.s f10, f17, f1, dyn # perform operation
fdiv.s f10, f17, f1, rdn # perform operation
fdiv.s f10, f17, f1, rmm # perform operation
fdiv.s f10, f17, f1, rne # perform operation
fdiv.s f10, f17, f1, rtz # perform operation
fdiv.s f10, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x12, 0xfaf28e79775bf850 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fdiv.s f12, f30, f8, dyn # perform operation
fdiv.s f12, f30, f8, rdn # perform operation
fdiv.s f12, f30, f8, rmm # perform operation
fdiv.s f12, f30, f8, rne # perform operation
fdiv.s f12, f30, f8, rtz # perform operation
fdiv.s f12, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x15, 0xce0cbade3343cf16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fdiv.s f15, f19, f17, dyn # perform operation
fdiv.s f15, f19, f17, rdn # perform operation
fdiv.s f15, f19, f17, rmm # perform operation
fdiv.s f15, f19, f17, rne # perform operation
fdiv.s f15, f19, f17, rtz # perform operation
fdiv.s f15, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x28, 0x958b9074a4c93d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fdiv.s f28, f23, f29, dyn # perform operation
fdiv.s f28, f23, f29, rdn # perform operation
fdiv.s f28, f23, f29, rmm # perform operation
fdiv.s f28, f23, f29, rne # perform operation
fdiv.s f28, f23, f29, rtz # perform operation
fdiv.s f28, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x9, 0x3dc428de874be77e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fdiv.s f9, f6, f24, dyn # perform operation
fdiv.s f9, f6, f24, rdn # perform operation
fdiv.s f9, f6, f24, rmm # perform operation
fdiv.s f9, f6, f24, rne # perform operation
fdiv.s f9, f6, f24, rtz # perform operation
fdiv.s f9, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x26, 0x24613e9c83dd8e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fdiv.s f26, f5, f22, dyn # perform operation
fdiv.s f26, f5, f22, rdn # perform operation
fdiv.s f26, f5, f22, rmm # perform operation
fdiv.s f26, f5, f22, rne # perform operation
fdiv.s f26, f5, f22, rtz # perform operation
fdiv.s f26, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x23, 0x303fea6b89698dda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fdiv.s f23, f15, f6, dyn # perform operation
fdiv.s f23, f15, f6, rdn # perform operation
fdiv.s f23, f15, f6, rmm # perform operation
fdiv.s f23, f15, f6, rne # perform operation
fdiv.s f23, f15, f6, rtz # perform operation
fdiv.s f23, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x31, 0x10e4a923a8e60053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fdiv.s f31, f21, f24, dyn # perform operation
fdiv.s f31, f21, f24, rdn # perform operation
fdiv.s f31, f21, f24, rmm # perform operation
fdiv.s f31, f21, f24, rne # perform operation
fdiv.s f31, f21, f24, rtz # perform operation
fdiv.s f31, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x1, 0x7710f89707e558fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fdiv.s f1, f29, f14, dyn # perform operation
fdiv.s f1, f29, f14, rdn # perform operation
fdiv.s f1, f29, f14, rmm # perform operation
fdiv.s f1, f29, f14, rne # perform operation
fdiv.s f1, f29, f14, rtz # perform operation
fdiv.s f1, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x23, 0xa7253a522f0d078f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fdiv.s f23, f6, f13, dyn # perform operation
fdiv.s f23, f6, f13, rdn # perform operation
fdiv.s f23, f6, f13, rmm # perform operation
fdiv.s f23, f6, f13, rne # perform operation
fdiv.s f23, f6, f13, rtz # perform operation
fdiv.s f23, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x13, 0x629bf913aca9191e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fdiv.s f13, f23, f3, dyn # perform operation
fdiv.s f13, f23, f3, rdn # perform operation
fdiv.s f13, f23, f3, rmm # perform operation
fdiv.s f13, f23, f3, rne # perform operation
fdiv.s f13, f23, f3, rtz # perform operation
fdiv.s f13, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x1, 0x5ddf78b135e986c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fdiv.s f1, f19, f2, dyn # perform operation
fdiv.s f1, f19, f2, rdn # perform operation
fdiv.s f1, f19, f2, rmm # perform operation
fdiv.s f1, f19, f2, rne # perform operation
fdiv.s f1, f19, f2, rtz # perform operation
fdiv.s f1, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x21, 0x803843604b6e9101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fdiv.s f21, f22, f15, dyn # perform operation
fdiv.s f21, f22, f15, rdn # perform operation
fdiv.s f21, f22, f15, rmm # perform operation
fdiv.s f21, f22, f15, rne # perform operation
fdiv.s f21, f22, f15, rtz # perform operation
fdiv.s f21, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x28, 0x7628bdda2bd0e90e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fdiv.s f28, f19, f20, dyn # perform operation
fdiv.s f28, f19, f20, rdn # perform operation
fdiv.s f28, f19, f20, rmm # perform operation
fdiv.s f28, f19, f20, rne # perform operation
fdiv.s f28, f19, f20, rtz # perform operation
fdiv.s f28, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x7, 0x6b4562d0977c5bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fdiv.s f7, f22, f11, dyn # perform operation
fdiv.s f7, f22, f11, rdn # perform operation
fdiv.s f7, f22, f11, rmm # perform operation
fdiv.s f7, f22, f11, rne # perform operation
fdiv.s f7, f22, f11, rtz # perform operation
fdiv.s f7, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x25, 0x4c98e4f2417fbbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fdiv.s f25, f26, f30, dyn # perform operation
fdiv.s f25, f26, f30, rdn # perform operation
fdiv.s f25, f26, f30, rmm # perform operation
fdiv.s f25, f26, f30, rne # perform operation
fdiv.s f25, f26, f30, rtz # perform operation
fdiv.s f25, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x4, 0x5ec744b3990249e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fdiv.s f4, f6, f23, dyn # perform operation
fdiv.s f4, f6, f23, rdn # perform operation
fdiv.s f4, f6, f23, rmm # perform operation
fdiv.s f4, f6, f23, rne # perform operation
fdiv.s f4, f6, f23, rtz # perform operation
fdiv.s f4, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x23, 0xa8321d84d507d4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fdiv.s f23, f15, f3, dyn # perform operation
fdiv.s f23, f15, f3, rdn # perform operation
fdiv.s f23, f15, f3, rmm # perform operation
fdiv.s f23, f15, f3, rne # perform operation
fdiv.s f23, f15, f3, rtz # perform operation
fdiv.s f23, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x23, 0x57f44e89e7279c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fdiv.s f23, f9, f12, dyn # perform operation
fdiv.s f23, f9, f12, rdn # perform operation
fdiv.s f23, f9, f12, rmm # perform operation
fdiv.s f23, f9, f12, rne # perform operation
fdiv.s f23, f9, f12, rtz # perform operation
fdiv.s f23, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x10, 0xf51df54d37cbe605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fdiv.s f10, f18, f2, dyn # perform operation
fdiv.s f10, f18, f2, rdn # perform operation
fdiv.s f10, f18, f2, rmm # perform operation
fdiv.s f10, f18, f2, rne # perform operation
fdiv.s f10, f18, f2, rtz # perform operation
fdiv.s f10, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x31, 0xe8d6704459af7d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fdiv.s f31, f21, f22, dyn # perform operation
fdiv.s f31, f21, f22, rdn # perform operation
fdiv.s f31, f21, f22, rmm # perform operation
fdiv.s f31, f21, f22, rne # perform operation
fdiv.s f31, f21, f22, rtz # perform operation
fdiv.s f31, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x2, 0x0fadbff4a89d0e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fdiv.s f2, f23, f14, dyn # perform operation
fdiv.s f2, f23, f14, rdn # perform operation
fdiv.s f2, f23, f14, rmm # perform operation
fdiv.s f2, f23, f14, rne # perform operation
fdiv.s f2, f23, f14, rtz # perform operation
fdiv.s f2, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x14, 0xf0f48221fc65a611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fdiv.s f14, f18, f4, dyn # perform operation
fdiv.s f14, f18, f4, rdn # perform operation
fdiv.s f14, f18, f4, rmm # perform operation
fdiv.s f14, f18, f4, rne # perform operation
fdiv.s f14, f18, f4, rtz # perform operation
fdiv.s f14, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x6, 0xda14c400604dbf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fdiv.s f6, f20, f12, dyn # perform operation
fdiv.s f6, f20, f12, rdn # perform operation
fdiv.s f6, f20, f12, rmm # perform operation
fdiv.s f6, f20, f12, rne # perform operation
fdiv.s f6, f20, f12, rtz # perform operation
fdiv.s f6, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x4, 0xd38a3d93caab0d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fdiv.s f4, f13, f17, dyn # perform operation
fdiv.s f4, f13, f17, rdn # perform operation
fdiv.s f4, f13, f17, rmm # perform operation
fdiv.s f4, f13, f17, rne # perform operation
fdiv.s f4, f13, f17, rtz # perform operation
fdiv.s f4, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x23, 0x83aad916aa622016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fdiv.s f23, f19, f27, dyn # perform operation
fdiv.s f23, f19, f27, rdn # perform operation
fdiv.s f23, f19, f27, rmm # perform operation
fdiv.s f23, f19, f27, rne # perform operation
fdiv.s f23, f19, f27, rtz # perform operation
fdiv.s f23, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x6, 0x7dc0f16810a8f40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fdiv.s f6, f5, f9, dyn # perform operation
fdiv.s f6, f5, f9, rdn # perform operation
fdiv.s f6, f5, f9, rmm # perform operation
fdiv.s f6, f5, f9, rne # perform operation
fdiv.s f6, f5, f9, rtz # perform operation
fdiv.s f6, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x4, 0x6e96ec69ddd15afb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fdiv.s f4, f3, f10, dyn # perform operation
fdiv.s f4, f3, f10, rdn # perform operation
fdiv.s f4, f3, f10, rmm # perform operation
fdiv.s f4, f3, f10, rne # perform operation
fdiv.s f4, f3, f10, rtz # perform operation
fdiv.s f4, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x11, 0x1d2b0ec9dbf5c429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fdiv.s f11, f28, f21, dyn # perform operation
fdiv.s f11, f28, f21, rdn # perform operation
fdiv.s f11, f28, f21, rmm # perform operation
fdiv.s f11, f28, f21, rne # perform operation
fdiv.s f11, f28, f21, rtz # perform operation
fdiv.s f11, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x28, 0xa3779e994260a844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fdiv.s f28, f14, f23, dyn # perform operation
fdiv.s f28, f14, f23, rdn # perform operation
fdiv.s f28, f14, f23, rmm # perform operation
fdiv.s f28, f14, f23, rne # perform operation
fdiv.s f28, f14, f23, rtz # perform operation
fdiv.s f28, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x21, 0x5ef6f00118adc9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fdiv.s f21, f29, f28, dyn # perform operation
fdiv.s f21, f29, f28, rdn # perform operation
fdiv.s f21, f29, f28, rmm # perform operation
fdiv.s f21, f29, f28, rne # perform operation
fdiv.s f21, f29, f28, rtz # perform operation
fdiv.s f21, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x28, 0x1438837085367b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fdiv.s f28, f23, f29, dyn # perform operation
fdiv.s f28, f23, f29, rdn # perform operation
fdiv.s f28, f23, f29, rmm # perform operation
fdiv.s f28, f23, f29, rne # perform operation
fdiv.s f28, f23, f29, rtz # perform operation
fdiv.s f28, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x8, 0xf3456487e91a2ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fdiv.s f8, f24, f18, dyn # perform operation
fdiv.s f8, f24, f18, rdn # perform operation
fdiv.s f8, f24, f18, rmm # perform operation
fdiv.s f8, f24, f18, rne # perform operation
fdiv.s f8, f24, f18, rtz # perform operation
fdiv.s f8, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x20, 0x504fdbf30b65155c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fdiv.s f20, f15, f6, dyn # perform operation
fdiv.s f20, f15, f6, rdn # perform operation
fdiv.s f20, f15, f6, rmm # perform operation
fdiv.s f20, f15, f6, rne # perform operation
fdiv.s f20, f15, f6, rtz # perform operation
fdiv.s f20, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x21, 0x416e310c7390d74c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fdiv.s f21, f1, f25, dyn # perform operation
fdiv.s f21, f1, f25, rdn # perform operation
fdiv.s f21, f1, f25, rmm # perform operation
fdiv.s f21, f1, f25, rne # perform operation
fdiv.s f21, f1, f25, rtz # perform operation
fdiv.s f21, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x31, 0x57903a0452d4309e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
fdiv.s f31, f16, f28, dyn # perform operation
fdiv.s f31, f16, f28, rdn # perform operation
fdiv.s f31, f16, f28, rmm # perform operation
fdiv.s f31, f16, f28, rne # perform operation
fdiv.s f31, f16, f28, rtz # perform operation
fdiv.s f31, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x29, 0xb7b8f00b17f615a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fdiv.s f29, f20, f22, dyn # perform operation
fdiv.s f29, f20, f22, rdn # perform operation
fdiv.s f29, f20, f22, rmm # perform operation
fdiv.s f29, f20, f22, rne # perform operation
fdiv.s f29, f20, f22, rtz # perform operation
fdiv.s f29, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x27, 0xd9d9e973fbb44360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fdiv.s f27, f16, f28, dyn # perform operation
fdiv.s f27, f16, f28, rdn # perform operation
fdiv.s f27, f16, f28, rmm # perform operation
fdiv.s f27, f16, f28, rne # perform operation
fdiv.s f27, f16, f28, rtz # perform operation
fdiv.s f27, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x31, 0x5e27f99dbfdba2e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f31, f25, f19, dyn # perform operation
fdiv.s f31, f25, f19, rdn # perform operation
fdiv.s f31, f25, f19, rmm # perform operation
fdiv.s f31, f25, f19, rne # perform operation
fdiv.s f31, f25, f19, rtz # perform operation
fdiv.s f31, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x28, 0xe097ff8a9cc868bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f28, f26, f23, dyn # perform operation
fdiv.s f28, f26, f23, rdn # perform operation
fdiv.s f28, f26, f23, rmm # perform operation
fdiv.s f28, f26, f23, rne # perform operation
fdiv.s f28, f26, f23, rtz # perform operation
fdiv.s f28, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x30, 0x835f4d56ac9849c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fdiv.s f30, f17, f20, dyn # perform operation
fdiv.s f30, f17, f20, rdn # perform operation
fdiv.s f30, f17, f20, rmm # perform operation
fdiv.s f30, f17, f20, rne # perform operation
fdiv.s f30, f17, f20, rtz # perform operation
fdiv.s f30, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x24, 0xdae574e9f58839ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.s f24, f29, f27, dyn # perform operation
fdiv.s f24, f29, f27, rdn # perform operation
fdiv.s f24, f29, f27, rmm # perform operation
fdiv.s f24, f29, f27, rne # perform operation
fdiv.s f24, f29, f27, rtz # perform operation
fdiv.s f24, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x24, 0xfd37080c0b59c490 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fdiv.s f24, f1, f11, dyn # perform operation
fdiv.s f24, f1, f11, rdn # perform operation
fdiv.s f24, f1, f11, rmm # perform operation
fdiv.s f24, f1, f11, rne # perform operation
fdiv.s f24, f1, f11, rtz # perform operation
fdiv.s f24, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x14, 0x6380ea823c9147d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fdiv.s f14, f4, f9, dyn # perform operation
fdiv.s f14, f4, f9, rdn # perform operation
fdiv.s f14, f4, f9, rmm # perform operation
fdiv.s f14, f4, f9, rne # perform operation
fdiv.s f14, f4, f9, rtz # perform operation
fdiv.s f14, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x22, 0xeed1097ed3a56c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fdiv.s f22, f2, f21, dyn # perform operation
fdiv.s f22, f2, f21, rdn # perform operation
fdiv.s f22, f2, f21, rmm # perform operation
fdiv.s f22, f2, f21, rne # perform operation
fdiv.s f22, f2, f21, rtz # perform operation
fdiv.s f22, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x23, 0x721c36fdc25c2549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fdiv.s f23, f17, f31, dyn # perform operation
fdiv.s f23, f17, f31, rdn # perform operation
fdiv.s f23, f17, f31, rmm # perform operation
fdiv.s f23, f17, f31, rne # perform operation
fdiv.s f23, f17, f31, rtz # perform operation
fdiv.s f23, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x28, 0x0ad078d058703bba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fdiv.s f28, f13, f26, dyn # perform operation
fdiv.s f28, f13, f26, rdn # perform operation
fdiv.s f28, f13, f26, rmm # perform operation
fdiv.s f28, f13, f26, rne # perform operation
fdiv.s f28, f13, f26, rtz # perform operation
fdiv.s f28, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x18, 0x06bbd8dde194e529 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fdiv.s f18, f22, f12, dyn # perform operation
fdiv.s f18, f22, f12, rdn # perform operation
fdiv.s f18, f22, f12, rmm # perform operation
fdiv.s f18, f22, f12, rne # perform operation
fdiv.s f18, f22, f12, rtz # perform operation
fdiv.s f18, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x8, 0x051490e254c76b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f8, f1, f11, dyn # perform operation
fdiv.s f8, f1, f11, rdn # perform operation
fdiv.s f8, f1, f11, rmm # perform operation
fdiv.s f8, f1, f11, rne # perform operation
fdiv.s f8, f1, f11, rtz # perform operation
fdiv.s f8, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x12, 0xaf1257bb58221b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fdiv.s f12, f9, f5, dyn # perform operation
fdiv.s f12, f9, f5, rdn # perform operation
fdiv.s f12, f9, f5, rmm # perform operation
fdiv.s f12, f9, f5, rne # perform operation
fdiv.s f12, f9, f5, rtz # perform operation
fdiv.s f12, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x21, 0x2f2b48a04fbeedf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fdiv.s f21, f22, f9, dyn # perform operation
fdiv.s f21, f22, f9, rdn # perform operation
fdiv.s f21, f22, f9, rmm # perform operation
fdiv.s f21, f22, f9, rne # perform operation
fdiv.s f21, f22, f9, rtz # perform operation
fdiv.s f21, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x16, 0x2709cc85c21284ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.s f16, f6, f28, dyn # perform operation
fdiv.s f16, f6, f28, rdn # perform operation
fdiv.s f16, f6, f28, rmm # perform operation
fdiv.s f16, f6, f28, rne # perform operation
fdiv.s f16, f6, f28, rtz # perform operation
fdiv.s f16, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x26, 0x3c618cb051edca2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fdiv.s f26, f30, f20, dyn # perform operation
fdiv.s f26, f30, f20, rdn # perform operation
fdiv.s f26, f30, f20, rmm # perform operation
fdiv.s f26, f30, f20, rne # perform operation
fdiv.s f26, f30, f20, rtz # perform operation
fdiv.s f26, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x23, 0x18c58ca31909b535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fdiv.s f23, f24, f2, dyn # perform operation
fdiv.s f23, f24, f2, rdn # perform operation
fdiv.s f23, f24, f2, rmm # perform operation
fdiv.s f23, f24, f2, rne # perform operation
fdiv.s f23, f24, f2, rtz # perform operation
fdiv.s f23, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x7, 0x2986c9812bb094c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fdiv.s f7, f25, f30, dyn # perform operation
fdiv.s f7, f25, f30, rdn # perform operation
fdiv.s f7, f25, f30, rmm # perform operation
fdiv.s f7, f25, f30, rne # perform operation
fdiv.s f7, f25, f30, rtz # perform operation
fdiv.s f7, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x26, 0x94c80a972540424f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fdiv.s f26, f11, f5, dyn # perform operation
fdiv.s f26, f11, f5, rdn # perform operation
fdiv.s f26, f11, f5, rmm # perform operation
fdiv.s f26, f11, f5, rne # perform operation
fdiv.s f26, f11, f5, rtz # perform operation
fdiv.s f26, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x27, 0xaf251e9a59e81f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fdiv.s f27, f24, f26, dyn # perform operation
fdiv.s f27, f24, f26, rdn # perform operation
fdiv.s f27, f24, f26, rmm # perform operation
fdiv.s f27, f24, f26, rne # perform operation
fdiv.s f27, f24, f26, rtz # perform operation
fdiv.s f27, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x22, 0x39315e46d3795ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fdiv.s f22, f7, f5, dyn # perform operation
fdiv.s f22, f7, f5, rdn # perform operation
fdiv.s f22, f7, f5, rmm # perform operation
fdiv.s f22, f7, f5, rne # perform operation
fdiv.s f22, f7, f5, rtz # perform operation
fdiv.s f22, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x11, 0xd59439747324e547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fdiv.s f11, f13, f21, dyn # perform operation
fdiv.s f11, f13, f21, rdn # perform operation
fdiv.s f11, f13, f21, rmm # perform operation
fdiv.s f11, f13, f21, rne # perform operation
fdiv.s f11, f13, f21, rtz # perform operation
fdiv.s f11, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x13, 0x45518a62fe5ae6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fdiv.s f13, f31, f6, dyn # perform operation
fdiv.s f13, f31, f6, rdn # perform operation
fdiv.s f13, f31, f6, rmm # perform operation
fdiv.s f13, f31, f6, rne # perform operation
fdiv.s f13, f31, f6, rtz # perform operation
fdiv.s f13, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x28, 0x897fc315ea11a6f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fdiv.s f28, f5, f20, dyn # perform operation
fdiv.s f28, f5, f20, rdn # perform operation
fdiv.s f28, f5, f20, rmm # perform operation
fdiv.s f28, f5, f20, rne # perform operation
fdiv.s f28, f5, f20, rtz # perform operation
fdiv.s f28, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x18, 0x5078e9c18b86d85d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f18, f21, f20, dyn # perform operation
fdiv.s f18, f21, f20, rdn # perform operation
fdiv.s f18, f21, f20, rmm # perform operation
fdiv.s f18, f21, f20, rne # perform operation
fdiv.s f18, f21, f20, rtz # perform operation
fdiv.s f18, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x26, 0x106aa3f7ce3c0654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fdiv.s f26, f17, f16, dyn # perform operation
fdiv.s f26, f17, f16, rdn # perform operation
fdiv.s f26, f17, f16, rmm # perform operation
fdiv.s f26, f17, f16, rne # perform operation
fdiv.s f26, f17, f16, rtz # perform operation
fdiv.s f26, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x11, 0xadb50dc538c2beae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fdiv.s f11, f26, f27, dyn # perform operation
fdiv.s f11, f26, f27, rdn # perform operation
fdiv.s f11, f26, f27, rmm # perform operation
fdiv.s f11, f26, f27, rne # perform operation
fdiv.s f11, f26, f27, rtz # perform operation
fdiv.s f11, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x18, 0xb4be00e20850c3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fdiv.s f18, f12, f28, dyn # perform operation
fdiv.s f18, f12, f28, rdn # perform operation
fdiv.s f18, f12, f28, rmm # perform operation
fdiv.s f18, f12, f28, rne # perform operation
fdiv.s f18, f12, f28, rtz # perform operation
fdiv.s f18, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x12, 0xf6836cf79f490cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fdiv.s f12, f4, f20, dyn # perform operation
fdiv.s f12, f4, f20, rdn # perform operation
fdiv.s f12, f4, f20, rmm # perform operation
fdiv.s f12, f4, f20, rne # perform operation
fdiv.s f12, f4, f20, rtz # perform operation
fdiv.s f12, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x30, 0x86acefdbfa49fddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fdiv.s f30, f15, f6, dyn # perform operation
fdiv.s f30, f15, f6, rdn # perform operation
fdiv.s f30, f15, f6, rmm # perform operation
fdiv.s f30, f15, f6, rne # perform operation
fdiv.s f30, f15, f6, rtz # perform operation
fdiv.s f30, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x13, 0xce42b3ab757f78a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fdiv.s f13, f29, f1, dyn # perform operation
fdiv.s f13, f29, f1, rdn # perform operation
fdiv.s f13, f29, f1, rmm # perform operation
fdiv.s f13, f29, f1, rne # perform operation
fdiv.s f13, f29, f1, rtz # perform operation
fdiv.s f13, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x11, 0x3bab196ee8891452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fdiv.s f11, f26, f1, dyn # perform operation
fdiv.s f11, f26, f1, rdn # perform operation
fdiv.s f11, f26, f1, rmm # perform operation
fdiv.s f11, f26, f1, rne # perform operation
fdiv.s f11, f26, f1, rtz # perform operation
fdiv.s f11, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x4, 0x4d097b16bb6b7347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f4, f19, f11, dyn # perform operation
fdiv.s f4, f19, f11, rdn # perform operation
fdiv.s f4, f19, f11, rmm # perform operation
fdiv.s f4, f19, f11, rne # perform operation
fdiv.s f4, f19, f11, rtz # perform operation
fdiv.s f4, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x9, 0xb7f4390d000b8d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fdiv.s f9, f23, f22, dyn # perform operation
fdiv.s f9, f23, f22, rdn # perform operation
fdiv.s f9, f23, f22, rmm # perform operation
fdiv.s f9, f23, f22, rne # perform operation
fdiv.s f9, f23, f22, rtz # perform operation
fdiv.s f9, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x29, 0x15efd34063470ced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fdiv.s f29, f2, f14, dyn # perform operation
fdiv.s f29, f2, f14, rdn # perform operation
fdiv.s f29, f2, f14, rmm # perform operation
fdiv.s f29, f2, f14, rne # perform operation
fdiv.s f29, f2, f14, rtz # perform operation
fdiv.s f29, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x29, 0xd44fcd831d62b648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fdiv.s f29, f12, f6, dyn # perform operation
fdiv.s f29, f12, f6, rdn # perform operation
fdiv.s f29, f12, f6, rmm # perform operation
fdiv.s f29, f12, f6, rne # perform operation
fdiv.s f29, f12, f6, rtz # perform operation
fdiv.s f29, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x31, 0x86c017df5d56642d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f31, f21, f27, dyn # perform operation
fdiv.s f31, f21, f27, rdn # perform operation
fdiv.s f31, f21, f27, rmm # perform operation
fdiv.s f31, f21, f27, rne # perform operation
fdiv.s f31, f21, f27, rtz # perform operation
fdiv.s f31, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x7, 0x8fce57c2e1e2cab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fdiv.s f7, f4, f18, dyn # perform operation
fdiv.s f7, f4, f18, rdn # perform operation
fdiv.s f7, f4, f18, rmm # perform operation
fdiv.s f7, f4, f18, rne # perform operation
fdiv.s f7, f4, f18, rtz # perform operation
fdiv.s f7, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x29, 0xb316bdb88e38442d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fdiv.s f29, f27, f22, dyn # perform operation
fdiv.s f29, f27, f22, rdn # perform operation
fdiv.s f29, f27, f22, rmm # perform operation
fdiv.s f29, f27, f22, rne # perform operation
fdiv.s f29, f27, f22, rtz # perform operation
fdiv.s f29, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x23, 0xeb9abcafa3681b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fdiv.s f23, f16, f28, dyn # perform operation
fdiv.s f23, f16, f28, rdn # perform operation
fdiv.s f23, f16, f28, rmm # perform operation
fdiv.s f23, f16, f28, rne # perform operation
fdiv.s f23, f16, f28, rtz # perform operation
fdiv.s f23, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x23, 0xd948da426e0b70ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fdiv.s f23, f9, f25, dyn # perform operation
fdiv.s f23, f9, f25, rdn # perform operation
fdiv.s f23, f9, f25, rmm # perform operation
fdiv.s f23, f9, f25, rne # perform operation
fdiv.s f23, f9, f25, rtz # perform operation
fdiv.s f23, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x15, 0x670a2bbefbbe639c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fdiv.s f15, f30, f1, dyn # perform operation
fdiv.s f15, f30, f1, rdn # perform operation
fdiv.s f15, f30, f1, rmm # perform operation
fdiv.s f15, f30, f1, rne # perform operation
fdiv.s f15, f30, f1, rtz # perform operation
fdiv.s f15, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x16, 0x7e376adc50c8ebbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fdiv.s f16, f29, f1, dyn # perform operation
fdiv.s f16, f29, f1, rdn # perform operation
fdiv.s f16, f29, f1, rmm # perform operation
fdiv.s f16, f29, f1, rne # perform operation
fdiv.s f16, f29, f1, rtz # perform operation
fdiv.s f16, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x7, 0xb7ba795258c9230b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fdiv.s f7, f14, f23, dyn # perform operation
fdiv.s f7, f14, f23, rdn # perform operation
fdiv.s f7, f14, f23, rmm # perform operation
fdiv.s f7, f14, f23, rne # perform operation
fdiv.s f7, f14, f23, rtz # perform operation
fdiv.s f7, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x29, 0x098f2b060e8ad04a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fdiv.s f29, f22, f8, dyn # perform operation
fdiv.s f29, f22, f8, rdn # perform operation
fdiv.s f29, f22, f8, rmm # perform operation
fdiv.s f29, f22, f8, rne # perform operation
fdiv.s f29, f22, f8, rtz # perform operation
fdiv.s f29, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x22, 0xa2a7c88d121c3025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fdiv.s f22, f1, f23, dyn # perform operation
fdiv.s f22, f1, f23, rdn # perform operation
fdiv.s f22, f1, f23, rmm # perform operation
fdiv.s f22, f1, f23, rne # perform operation
fdiv.s f22, f1, f23, rtz # perform operation
fdiv.s f22, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x22, 0x6829e0221861014e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fdiv.s f22, f9, f1, dyn # perform operation
fdiv.s f22, f9, f1, rdn # perform operation
fdiv.s f22, f9, f1, rmm # perform operation
fdiv.s f22, f9, f1, rne # perform operation
fdiv.s f22, f9, f1, rtz # perform operation
fdiv.s f22, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x28, 0x7dc7bb1525b8f466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fdiv.s f28, f3, f23, dyn # perform operation
fdiv.s f28, f3, f23, rdn # perform operation
fdiv.s f28, f3, f23, rmm # perform operation
fdiv.s f28, f3, f23, rne # perform operation
fdiv.s f28, f3, f23, rtz # perform operation
fdiv.s f28, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x8, 0x4c69bc8633c37d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fdiv.s f8, f1, f6, dyn # perform operation
fdiv.s f8, f1, f6, rdn # perform operation
fdiv.s f8, f1, f6, rmm # perform operation
fdiv.s f8, f1, f6, rne # perform operation
fdiv.s f8, f1, f6, rtz # perform operation
fdiv.s f8, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x29, 0xd03293ef3e49b79c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fdiv.s f29, f15, f20, dyn # perform operation
fdiv.s f29, f15, f20, rdn # perform operation
fdiv.s f29, f15, f20, rmm # perform operation
fdiv.s f29, f15, f20, rne # perform operation
fdiv.s f29, f15, f20, rtz # perform operation
fdiv.s f29, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x7, 0x86fa53144d1e4dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fdiv.s f7, f17, f5, dyn # perform operation
fdiv.s f7, f17, f5, rdn # perform operation
fdiv.s f7, f17, f5, rmm # perform operation
fdiv.s f7, f17, f5, rne # perform operation
fdiv.s f7, f17, f5, rtz # perform operation
fdiv.s f7, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x1, 0xcee3447e523ad5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fdiv.s f1, f8, f29, dyn # perform operation
fdiv.s f1, f8, f29, rdn # perform operation
fdiv.s f1, f8, f29, rmm # perform operation
fdiv.s f1, f8, f29, rne # perform operation
fdiv.s f1, f8, f29, rtz # perform operation
fdiv.s f1, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x28, 0xa98b9d5ad6d6f3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fdiv.s f28, f29, f20, dyn # perform operation
fdiv.s f28, f29, f20, rdn # perform operation
fdiv.s f28, f29, f20, rmm # perform operation
fdiv.s f28, f29, f20, rne # perform operation
fdiv.s f28, f29, f20, rtz # perform operation
fdiv.s f28, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x16, 0x9c3d1967c910cc79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fdiv.s f16, f25, f27, dyn # perform operation
fdiv.s f16, f25, f27, rdn # perform operation
fdiv.s f16, f25, f27, rmm # perform operation
fdiv.s f16, f25, f27, rne # perform operation
fdiv.s f16, f25, f27, rtz # perform operation
fdiv.s f16, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x25, 0x5f189cf51d4f9b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fdiv.s f25, f29, f2, dyn # perform operation
fdiv.s f25, f29, f2, rdn # perform operation
fdiv.s f25, f29, f2, rmm # perform operation
fdiv.s f25, f29, f2, rne # perform operation
fdiv.s f25, f29, f2, rtz # perform operation
fdiv.s f25, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x3, 0x504964dd163387d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fdiv.s f3, f21, f13, dyn # perform operation
fdiv.s f3, f21, f13, rdn # perform operation
fdiv.s f3, f21, f13, rmm # perform operation
fdiv.s f3, f21, f13, rne # perform operation
fdiv.s f3, f21, f13, rtz # perform operation
fdiv.s f3, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x12, 0xc443486bddd9146e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fdiv.s f12, f16, f9, dyn # perform operation
fdiv.s f12, f16, f9, rdn # perform operation
fdiv.s f12, f16, f9, rmm # perform operation
fdiv.s f12, f16, f9, rne # perform operation
fdiv.s f12, f16, f9, rtz # perform operation
fdiv.s f12, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x22, 0x64dcdbf880c8d9b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fdiv.s f22, f16, f8, dyn # perform operation
fdiv.s f22, f16, f8, rdn # perform operation
fdiv.s f22, f16, f8, rmm # perform operation
fdiv.s f22, f16, f8, rne # perform operation
fdiv.s f22, f16, f8, rtz # perform operation
fdiv.s f22, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x27, 0x2c2444e496a71fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fdiv.s f27, f21, f30, dyn # perform operation
fdiv.s f27, f21, f30, rdn # perform operation
fdiv.s f27, f21, f30, rmm # perform operation
fdiv.s f27, f21, f30, rne # perform operation
fdiv.s f27, f21, f30, rtz # perform operation
fdiv.s f27, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x20, 0x2ed25d4539d2fd62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fdiv.s f20, f17, f8, dyn # perform operation
fdiv.s f20, f17, f8, rdn # perform operation
fdiv.s f20, f17, f8, rmm # perform operation
fdiv.s f20, f17, f8, rne # perform operation
fdiv.s f20, f17, f8, rtz # perform operation
fdiv.s f20, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x9, 0x8a4509d6847185a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fdiv.s f9, f1, f2, dyn # perform operation
fdiv.s f9, f1, f2, rdn # perform operation
fdiv.s f9, f1, f2, rmm # perform operation
fdiv.s f9, f1, f2, rne # perform operation
fdiv.s f9, f1, f2, rtz # perform operation
fdiv.s f9, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x11, 0x343a282768cb7bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fdiv.s f11, f28, f24, dyn # perform operation
fdiv.s f11, f28, f24, rdn # perform operation
fdiv.s f11, f28, f24, rmm # perform operation
fdiv.s f11, f28, f24, rne # perform operation
fdiv.s f11, f28, f24, rtz # perform operation
fdiv.s f11, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x12, 0x99bdec0eae4053d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fdiv.s f12, f10, f7, dyn # perform operation
fdiv.s f12, f10, f7, rdn # perform operation
fdiv.s f12, f10, f7, rmm # perform operation
fdiv.s f12, f10, f7, rne # perform operation
fdiv.s f12, f10, f7, rtz # perform operation
fdiv.s f12, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x24, 0x98e22cc6681bc514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fdiv.s f24, f27, f8, dyn # perform operation
fdiv.s f24, f27, f8, rdn # perform operation
fdiv.s f24, f27, f8, rmm # perform operation
fdiv.s f24, f27, f8, rne # perform operation
fdiv.s f24, f27, f8, rtz # perform operation
fdiv.s f24, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x31, 0xc2560b1ba19335b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fdiv.s f31, f22, f14, dyn # perform operation
fdiv.s f31, f22, f14, rdn # perform operation
fdiv.s f31, f22, f14, rmm # perform operation
fdiv.s f31, f22, f14, rne # perform operation
fdiv.s f31, f22, f14, rtz # perform operation
fdiv.s f31, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x25, 0xc817ebb853b60050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fdiv.s f25, f23, f12, dyn # perform operation
fdiv.s f25, f23, f12, rdn # perform operation
fdiv.s f25, f23, f12, rmm # perform operation
fdiv.s f25, f23, f12, rne # perform operation
fdiv.s f25, f23, f12, rtz # perform operation
fdiv.s f25, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x27, 0x40d9a997bb03f060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.s f27, f8, f9, dyn # perform operation
fdiv.s f27, f8, f9, rdn # perform operation
fdiv.s f27, f8, f9, rmm # perform operation
fdiv.s f27, f8, f9, rne # perform operation
fdiv.s f27, f8, f9, rtz # perform operation
fdiv.s f27, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x21, 0xb33517ae49218aae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fdiv.s f21, f11, f27, dyn # perform operation
fdiv.s f21, f11, f27, rdn # perform operation
fdiv.s f21, f11, f27, rmm # perform operation
fdiv.s f21, f11, f27, rne # perform operation
fdiv.s f21, f11, f27, rtz # perform operation
fdiv.s f21, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x15, 0x09ff271b831e2481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fdiv.s f15, f9, f3, dyn # perform operation
fdiv.s f15, f9, f3, rdn # perform operation
fdiv.s f15, f9, f3, rmm # perform operation
fdiv.s f15, f9, f3, rne # perform operation
fdiv.s f15, f9, f3, rtz # perform operation
fdiv.s f15, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x8, 0x19b3d56973d66823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fdiv.s f8, f14, f6, dyn # perform operation
fdiv.s f8, f14, f6, rdn # perform operation
fdiv.s f8, f14, f6, rmm # perform operation
fdiv.s f8, f14, f6, rne # perform operation
fdiv.s f8, f14, f6, rtz # perform operation
fdiv.s f8, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x1, 0x3f1e74b450114d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fdiv.s f1, f9, f22, dyn # perform operation
fdiv.s f1, f9, f22, rdn # perform operation
fdiv.s f1, f9, f22, rmm # perform operation
fdiv.s f1, f9, f22, rne # perform operation
fdiv.s f1, f9, f22, rtz # perform operation
fdiv.s f1, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x11, 0xcfdefa4b12e516c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fdiv.s f11, f28, f10, dyn # perform operation
fdiv.s f11, f28, f10, rdn # perform operation
fdiv.s f11, f28, f10, rmm # perform operation
fdiv.s f11, f28, f10, rne # perform operation
fdiv.s f11, f28, f10, rtz # perform operation
fdiv.s f11, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x11, 0x9dbc3d861c824b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fdiv.s f11, f31, f2, dyn # perform operation
fdiv.s f11, f31, f2, rdn # perform operation
fdiv.s f11, f31, f2, rmm # perform operation
fdiv.s f11, f31, f2, rne # perform operation
fdiv.s f11, f31, f2, rtz # perform operation
fdiv.s f11, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x31, 0x0020de314bb4f61f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fdiv.s f31, f25, f11, dyn # perform operation
fdiv.s f31, f25, f11, rdn # perform operation
fdiv.s f31, f25, f11, rmm # perform operation
fdiv.s f31, f25, f11, rne # perform operation
fdiv.s f31, f25, f11, rtz # perform operation
fdiv.s f31, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x24, 0xed075843a808ae9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fdiv.s f24, f27, f20, dyn # perform operation
fdiv.s f24, f27, f20, rdn # perform operation
fdiv.s f24, f27, f20, rmm # perform operation
fdiv.s f24, f27, f20, rne # perform operation
fdiv.s f24, f27, f20, rtz # perform operation
fdiv.s f24, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x26, 0x1fb158781014ab11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fdiv.s f26, f15, f21, dyn # perform operation
fdiv.s f26, f15, f21, rdn # perform operation
fdiv.s f26, f15, f21, rmm # perform operation
fdiv.s f26, f15, f21, rne # perform operation
fdiv.s f26, f15, f21, rtz # perform operation
fdiv.s f26, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x13, 0xd141b7d6e22c827a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fdiv.s f13, f23, f30, dyn # perform operation
fdiv.s f13, f23, f30, rdn # perform operation
fdiv.s f13, f23, f30, rmm # perform operation
fdiv.s f13, f23, f30, rne # perform operation
fdiv.s f13, f23, f30, rtz # perform operation
fdiv.s f13, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x19, 0x80ac87746714b4ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fdiv.s f19, f9, f31, dyn # perform operation
fdiv.s f19, f9, f31, rdn # perform operation
fdiv.s f19, f9, f31, rmm # perform operation
fdiv.s f19, f9, f31, rne # perform operation
fdiv.s f19, f9, f31, rtz # perform operation
fdiv.s f19, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x16, 0x349f50c044dcf773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fdiv.s f16, f14, f31, dyn # perform operation
fdiv.s f16, f14, f31, rdn # perform operation
fdiv.s f16, f14, f31, rmm # perform operation
fdiv.s f16, f14, f31, rne # perform operation
fdiv.s f16, f14, f31, rtz # perform operation
fdiv.s f16, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x1, 0x37223e5401d58a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fdiv.s f1, f23, f18, dyn # perform operation
fdiv.s f1, f23, f18, rdn # perform operation
fdiv.s f1, f23, f18, rmm # perform operation
fdiv.s f1, f23, f18, rne # perform operation
fdiv.s f1, f23, f18, rtz # perform operation
fdiv.s f1, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x7, 0x157982e78d1083c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fdiv.s f7, f17, f1, dyn # perform operation
fdiv.s f7, f17, f1, rdn # perform operation
fdiv.s f7, f17, f1, rmm # perform operation
fdiv.s f7, f17, f1, rne # perform operation
fdiv.s f7, f17, f1, rtz # perform operation
fdiv.s f7, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x28, 0x6c8031f9508bb674 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fdiv.s f28, f12, f3, dyn # perform operation
fdiv.s f28, f12, f3, rdn # perform operation
fdiv.s f28, f12, f3, rmm # perform operation
fdiv.s f28, f12, f3, rne # perform operation
fdiv.s f28, f12, f3, rtz # perform operation
fdiv.s f28, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x22, 0x0271823675582d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fdiv.s f22, f25, f29, dyn # perform operation
fdiv.s f22, f25, f29, rdn # perform operation
fdiv.s f22, f25, f29, rmm # perform operation
fdiv.s f22, f25, f29, rne # perform operation
fdiv.s f22, f25, f29, rtz # perform operation
fdiv.s f22, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x26, 0xe8bccef8fca7f98c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fdiv.s f26, f29, f25, dyn # perform operation
fdiv.s f26, f29, f25, rdn # perform operation
fdiv.s f26, f29, f25, rmm # perform operation
fdiv.s f26, f29, f25, rne # perform operation
fdiv.s f26, f29, f25, rtz # perform operation
fdiv.s f26, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x26, 0xb0569f1812144c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fdiv.s f26, f30, f21, dyn # perform operation
fdiv.s f26, f30, f21, rdn # perform operation
fdiv.s f26, f30, f21, rmm # perform operation
fdiv.s f26, f30, f21, rne # perform operation
fdiv.s f26, f30, f21, rtz # perform operation
fdiv.s f26, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x26, 0xfcb9b9b0da966373 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fdiv.s f26, f4, f30, dyn # perform operation
fdiv.s f26, f4, f30, rdn # perform operation
fdiv.s f26, f4, f30, rmm # perform operation
fdiv.s f26, f4, f30, rne # perform operation
fdiv.s f26, f4, f30, rtz # perform operation
fdiv.s f26, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x28, 0x37fa22169478bf8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fdiv.s f28, f30, f10, dyn # perform operation
fdiv.s f28, f30, f10, rdn # perform operation
fdiv.s f28, f30, f10, rmm # perform operation
fdiv.s f28, f30, f10, rne # perform operation
fdiv.s f28, f30, f10, rtz # perform operation
fdiv.s f28, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x18, 0xf916ba93ee036645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fdiv.s f18, f8, f14, dyn # perform operation
fdiv.s f18, f8, f14, rdn # perform operation
fdiv.s f18, f8, f14, rmm # perform operation
fdiv.s f18, f8, f14, rne # perform operation
fdiv.s f18, f8, f14, rtz # perform operation
fdiv.s f18, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x13, 0xa713f0fbb60a4ced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f13, f4, f11, dyn # perform operation
fdiv.s f13, f4, f11, rdn # perform operation
fdiv.s f13, f4, f11, rmm # perform operation
fdiv.s f13, f4, f11, rne # perform operation
fdiv.s f13, f4, f11, rtz # perform operation
fdiv.s f13, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x28, 0x3edac6a5cb23bbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fdiv.s f28, f24, f31, dyn # perform operation
fdiv.s f28, f24, f31, rdn # perform operation
fdiv.s f28, f24, f31, rmm # perform operation
fdiv.s f28, f24, f31, rne # perform operation
fdiv.s f28, f24, f31, rtz # perform operation
fdiv.s f28, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x14, 0xde1d6ec6d2eb4c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fdiv.s f14, f5, f24, dyn # perform operation
fdiv.s f14, f5, f24, rdn # perform operation
fdiv.s f14, f5, f24, rmm # perform operation
fdiv.s f14, f5, f24, rne # perform operation
fdiv.s f14, f5, f24, rtz # perform operation
fdiv.s f14, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x23, 0x9977d7223eded086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fdiv.s f23, f13, f25, dyn # perform operation
fdiv.s f23, f13, f25, rdn # perform operation
fdiv.s f23, f13, f25, rmm # perform operation
fdiv.s f23, f13, f25, rne # perform operation
fdiv.s f23, f13, f25, rtz # perform operation
fdiv.s f23, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x5, 0x975d2cd4883c14a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fdiv.s f5, f16, f25, dyn # perform operation
fdiv.s f5, f16, f25, rdn # perform operation
fdiv.s f5, f16, f25, rmm # perform operation
fdiv.s f5, f16, f25, rne # perform operation
fdiv.s f5, f16, f25, rtz # perform operation
fdiv.s f5, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x27, 0x4de517d83d9ddd78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fdiv.s f27, f11, f28, dyn # perform operation
fdiv.s f27, f11, f28, rdn # perform operation
fdiv.s f27, f11, f28, rmm # perform operation
fdiv.s f27, f11, f28, rne # perform operation
fdiv.s f27, f11, f28, rtz # perform operation
fdiv.s f27, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x31, 0x6c90543ebee7270c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fdiv.s f31, f18, f12, dyn # perform operation
fdiv.s f31, f18, f12, rdn # perform operation
fdiv.s f31, f18, f12, rmm # perform operation
fdiv.s f31, f18, f12, rne # perform operation
fdiv.s f31, f18, f12, rtz # perform operation
fdiv.s f31, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x16, 0x7fe95cec1f6b3908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fdiv.s f16, f8, f24, dyn # perform operation
fdiv.s f16, f8, f24, rdn # perform operation
fdiv.s f16, f8, f24, rmm # perform operation
fdiv.s f16, f8, f24, rne # perform operation
fdiv.s f16, f8, f24, rtz # perform operation
fdiv.s f16, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x18, 0x78815c78a13fbb9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fdiv.s f18, f2, f11, dyn # perform operation
fdiv.s f18, f2, f11, rdn # perform operation
fdiv.s f18, f2, f11, rmm # perform operation
fdiv.s f18, f2, f11, rne # perform operation
fdiv.s f18, f2, f11, rtz # perform operation
fdiv.s f18, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x24, 0xd18b4de75b666124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fdiv.s f24, f10, f20, dyn # perform operation
fdiv.s f24, f10, f20, rdn # perform operation
fdiv.s f24, f10, f20, rmm # perform operation
fdiv.s f24, f10, f20, rne # perform operation
fdiv.s f24, f10, f20, rtz # perform operation
fdiv.s f24, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x1, 0xe01ed28fe3172373 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fdiv.s f1, f14, f23, dyn # perform operation
fdiv.s f1, f14, f23, rdn # perform operation
fdiv.s f1, f14, f23, rmm # perform operation
fdiv.s f1, f14, f23, rne # perform operation
fdiv.s f1, f14, f23, rtz # perform operation
fdiv.s f1, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x19, 0xa3e66fdefc7e97ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fdiv.s f19, f1, f28, dyn # perform operation
fdiv.s f19, f1, f28, rdn # perform operation
fdiv.s f19, f1, f28, rmm # perform operation
fdiv.s f19, f1, f28, rne # perform operation
fdiv.s f19, f1, f28, rtz # perform operation
fdiv.s f19, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x5, 0x945fe0291eca59c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fdiv.s f5, f12, f10, dyn # perform operation
fdiv.s f5, f12, f10, rdn # perform operation
fdiv.s f5, f12, f10, rmm # perform operation
fdiv.s f5, f12, f10, rne # perform operation
fdiv.s f5, f12, f10, rtz # perform operation
fdiv.s f5, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x1, 0xc81747f3026b335e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fdiv.s f1, f25, f29, dyn # perform operation
fdiv.s f1, f25, f29, rdn # perform operation
fdiv.s f1, f25, f29, rmm # perform operation
fdiv.s f1, f25, f29, rne # perform operation
fdiv.s f1, f25, f29, rtz # perform operation
fdiv.s f1, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x10, 0x105a24ca7a2931a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fdiv.s f10, f26, f9, dyn # perform operation
fdiv.s f10, f26, f9, rdn # perform operation
fdiv.s f10, f26, f9, rmm # perform operation
fdiv.s f10, f26, f9, rne # perform operation
fdiv.s f10, f26, f9, rtz # perform operation
fdiv.s f10, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x18, 0xd792b8baf92fa01c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fdiv.s f18, f19, f14, dyn # perform operation
fdiv.s f18, f19, f14, rdn # perform operation
fdiv.s f18, f19, f14, rmm # perform operation
fdiv.s f18, f19, f14, rne # perform operation
fdiv.s f18, f19, f14, rtz # perform operation
fdiv.s f18, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x2, 0x089d240d6d3551a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fdiv.s f2, f21, f12, dyn # perform operation
fdiv.s f2, f21, f12, rdn # perform operation
fdiv.s f2, f21, f12, rmm # perform operation
fdiv.s f2, f21, f12, rne # perform operation
fdiv.s f2, f21, f12, rtz # perform operation
fdiv.s f2, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x19, 0x55bcf0427e1c1983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fdiv.s f19, f14, f20, dyn # perform operation
fdiv.s f19, f14, f20, rdn # perform operation
fdiv.s f19, f14, f20, rmm # perform operation
fdiv.s f19, f14, f20, rne # perform operation
fdiv.s f19, f14, f20, rtz # perform operation
fdiv.s f19, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x26, 0x68acbb2592ca4b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fdiv.s f26, f17, f22, dyn # perform operation
fdiv.s f26, f17, f22, rdn # perform operation
fdiv.s f26, f17, f22, rmm # perform operation
fdiv.s f26, f17, f22, rne # perform operation
fdiv.s f26, f17, f22, rtz # perform operation
fdiv.s f26, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x3, 0x76ed694664b7eb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fdiv.s f3, f27, f26, dyn # perform operation
fdiv.s f3, f27, f26, rdn # perform operation
fdiv.s f3, f27, f26, rmm # perform operation
fdiv.s f3, f27, f26, rne # perform operation
fdiv.s f3, f27, f26, rtz # perform operation
fdiv.s f3, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x13, 0x1fbed0536e2423de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fdiv.s f13, f24, f5, dyn # perform operation
fdiv.s f13, f24, f5, rdn # perform operation
fdiv.s f13, f24, f5, rmm # perform operation
fdiv.s f13, f24, f5, rne # perform operation
fdiv.s f13, f24, f5, rtz # perform operation
fdiv.s f13, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x17, 0x0d78c27edb0f9de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fdiv.s f17, f27, f10, dyn # perform operation
fdiv.s f17, f27, f10, rdn # perform operation
fdiv.s f17, f27, f10, rmm # perform operation
fdiv.s f17, f27, f10, rne # perform operation
fdiv.s f17, f27, f10, rtz # perform operation
fdiv.s f17, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x18, 0x0716c9529b820fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fdiv.s f18, f21, f31, dyn # perform operation
fdiv.s f18, f21, f31, rdn # perform operation
fdiv.s f18, f21, f31, rmm # perform operation
fdiv.s f18, f21, f31, rne # perform operation
fdiv.s f18, f21, f31, rtz # perform operation
fdiv.s f18, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x28, 0x9ec42c0246727a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fdiv.s f28, f26, f21, dyn # perform operation
fdiv.s f28, f26, f21, rdn # perform operation
fdiv.s f28, f26, f21, rmm # perform operation
fdiv.s f28, f26, f21, rne # perform operation
fdiv.s f28, f26, f21, rtz # perform operation
fdiv.s f28, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x4, 0xf9fe6fab405777e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fdiv.s f4, f14, f26, dyn # perform operation
fdiv.s f4, f14, f26, rdn # perform operation
fdiv.s f4, f14, f26, rmm # perform operation
fdiv.s f4, f14, f26, rne # perform operation
fdiv.s f4, f14, f26, rtz # perform operation
fdiv.s f4, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x8, 0x81bfc1b2b755e056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f8, f10, f12, dyn # perform operation
fdiv.s f8, f10, f12, rdn # perform operation
fdiv.s f8, f10, f12, rmm # perform operation
fdiv.s f8, f10, f12, rne # perform operation
fdiv.s f8, f10, f12, rtz # perform operation
fdiv.s f8, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x13, 0x54d413eee350df13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f13, f15, f11, dyn # perform operation
fdiv.s f13, f15, f11, rdn # perform operation
fdiv.s f13, f15, f11, rmm # perform operation
fdiv.s f13, f15, f11, rne # perform operation
fdiv.s f13, f15, f11, rtz # perform operation
fdiv.s f13, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x17, 0x6252ad4e7a5a7b5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fdiv.s f17, f1, f13, dyn # perform operation
fdiv.s f17, f1, f13, rdn # perform operation
fdiv.s f17, f1, f13, rmm # perform operation
fdiv.s f17, f1, f13, rne # perform operation
fdiv.s f17, f1, f13, rtz # perform operation
fdiv.s f17, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x24, 0x9786f7c825d99a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fdiv.s f24, f3, f9, dyn # perform operation
fdiv.s f24, f3, f9, rdn # perform operation
fdiv.s f24, f3, f9, rmm # perform operation
fdiv.s f24, f3, f9, rne # perform operation
fdiv.s f24, f3, f9, rtz # perform operation
fdiv.s f24, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x8, 0x170c5417240f7505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fdiv.s f8, f26, f17, dyn # perform operation
fdiv.s f8, f26, f17, rdn # perform operation
fdiv.s f8, f26, f17, rmm # perform operation
fdiv.s f8, f26, f17, rne # perform operation
fdiv.s f8, f26, f17, rtz # perform operation
fdiv.s f8, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x7, 0x5eb7ab764b2d12e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fdiv.s f7, f31, f18, dyn # perform operation
fdiv.s f7, f31, f18, rdn # perform operation
fdiv.s f7, f31, f18, rmm # perform operation
fdiv.s f7, f31, f18, rne # perform operation
fdiv.s f7, f31, f18, rtz # perform operation
fdiv.s f7, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x20, 0xa505d316e3cf480d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fdiv.s f20, f15, f18, dyn # perform operation
fdiv.s f20, f15, f18, rdn # perform operation
fdiv.s f20, f15, f18, rmm # perform operation
fdiv.s f20, f15, f18, rne # perform operation
fdiv.s f20, f15, f18, rtz # perform operation
fdiv.s f20, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x30, 0xf3e0d78e43c3de2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fdiv.s f30, f8, f31, dyn # perform operation
fdiv.s f30, f8, f31, rdn # perform operation
fdiv.s f30, f8, f31, rmm # perform operation
fdiv.s f30, f8, f31, rne # perform operation
fdiv.s f30, f8, f31, rtz # perform operation
fdiv.s f30, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x23, 0x5f96c2e1b1636d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fdiv.s f23, f19, f2, dyn # perform operation
fdiv.s f23, f19, f2, rdn # perform operation
fdiv.s f23, f19, f2, rmm # perform operation
fdiv.s f23, f19, f2, rne # perform operation
fdiv.s f23, f19, f2, rtz # perform operation
fdiv.s f23, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x21, 0x08879c543e6cf9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fdiv.s f21, f29, f10, dyn # perform operation
fdiv.s f21, f29, f10, rdn # perform operation
fdiv.s f21, f29, f10, rmm # perform operation
fdiv.s f21, f29, f10, rne # perform operation
fdiv.s f21, f29, f10, rtz # perform operation
fdiv.s f21, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x24, 0x93e61615a85ef7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fdiv.s f24, f5, f31, dyn # perform operation
fdiv.s f24, f5, f31, rdn # perform operation
fdiv.s f24, f5, f31, rmm # perform operation
fdiv.s f24, f5, f31, rne # perform operation
fdiv.s f24, f5, f31, rtz # perform operation
fdiv.s f24, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x29, 0x0a68acef1176f42a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fdiv.s f29, f30, f17, dyn # perform operation
fdiv.s f29, f30, f17, rdn # perform operation
fdiv.s f29, f30, f17, rmm # perform operation
fdiv.s f29, f30, f17, rne # perform operation
fdiv.s f29, f30, f17, rtz # perform operation
fdiv.s f29, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x17, 0x15f4f7648d71671b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fdiv.s f17, f23, f21, dyn # perform operation
fdiv.s f17, f23, f21, rdn # perform operation
fdiv.s f17, f23, f21, rmm # perform operation
fdiv.s f17, f23, f21, rne # perform operation
fdiv.s f17, f23, f21, rtz # perform operation
fdiv.s f17, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x11, 0x045f1351d0d3773d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fdiv.s f11, f16, f10, dyn # perform operation
fdiv.s f11, f16, f10, rdn # perform operation
fdiv.s f11, f16, f10, rmm # perform operation
fdiv.s f11, f16, f10, rne # perform operation
fdiv.s f11, f16, f10, rtz # perform operation
fdiv.s f11, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x17, 0xe6cee5a1c244b143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fdiv.s f17, f30, f9, dyn # perform operation
fdiv.s f17, f30, f9, rdn # perform operation
fdiv.s f17, f30, f9, rmm # perform operation
fdiv.s f17, f30, f9, rne # perform operation
fdiv.s f17, f30, f9, rtz # perform operation
fdiv.s f17, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x8, 0xd625ffda3e0934f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
fdiv.s f8, f7, f4, dyn # perform operation
fdiv.s f8, f7, f4, rdn # perform operation
fdiv.s f8, f7, f4, rmm # perform operation
fdiv.s f8, f7, f4, rne # perform operation
fdiv.s f8, f7, f4, rtz # perform operation
fdiv.s f8, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x11, 0x8b949b705c751b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fdiv.s f11, f4, f5, dyn # perform operation
fdiv.s f11, f4, f5, rdn # perform operation
fdiv.s f11, f4, f5, rmm # perform operation
fdiv.s f11, f4, f5, rne # perform operation
fdiv.s f11, f4, f5, rtz # perform operation
fdiv.s f11, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x11, 0xd4d53d829e115073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fdiv.s f11, f12, f30, dyn # perform operation
fdiv.s f11, f12, f30, rdn # perform operation
fdiv.s f11, f12, f30, rmm # perform operation
fdiv.s f11, f12, f30, rne # perform operation
fdiv.s f11, f12, f30, rtz # perform operation
fdiv.s f11, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x28, 0xfb1df553bda5fb4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fdiv.s f28, f11, f21, dyn # perform operation
fdiv.s f28, f11, f21, rdn # perform operation
fdiv.s f28, f11, f21, rmm # perform operation
fdiv.s f28, f11, f21, rne # perform operation
fdiv.s f28, f11, f21, rtz # perform operation
fdiv.s f28, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x27, 0xb4835f2a7fa316e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fdiv.s f27, f1, f4, dyn # perform operation
fdiv.s f27, f1, f4, rdn # perform operation
fdiv.s f27, f1, f4, rmm # perform operation
fdiv.s f27, f1, f4, rne # perform operation
fdiv.s f27, f1, f4, rtz # perform operation
fdiv.s f27, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x11, 0x326bc53488e5586b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fdiv.s f11, f4, f24, dyn # perform operation
fdiv.s f11, f4, f24, rdn # perform operation
fdiv.s f11, f4, f24, rmm # perform operation
fdiv.s f11, f4, f24, rne # perform operation
fdiv.s f11, f4, f24, rtz # perform operation
fdiv.s f11, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x3, 0xa78d0d8ea7f6326b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.s f3, f18, f14, dyn # perform operation
fdiv.s f3, f18, f14, rdn # perform operation
fdiv.s f3, f18, f14, rmm # perform operation
fdiv.s f3, f18, f14, rne # perform operation
fdiv.s f3, f18, f14, rtz # perform operation
fdiv.s f3, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x7, 0xe80c79a2a6df41c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fdiv.s f7, f28, f15, dyn # perform operation
fdiv.s f7, f28, f15, rdn # perform operation
fdiv.s f7, f28, f15, rmm # perform operation
fdiv.s f7, f28, f15, rne # perform operation
fdiv.s f7, f28, f15, rtz # perform operation
fdiv.s f7, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x13, 0x8d15a330c0fefbbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fdiv.s f13, f15, f26, dyn # perform operation
fdiv.s f13, f15, f26, rdn # perform operation
fdiv.s f13, f15, f26, rmm # perform operation
fdiv.s f13, f15, f26, rne # perform operation
fdiv.s f13, f15, f26, rtz # perform operation
fdiv.s f13, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x4, 0xd084bf041d625e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fdiv.s f4, f23, f24, dyn # perform operation
fdiv.s f4, f23, f24, rdn # perform operation
fdiv.s f4, f23, f24, rmm # perform operation
fdiv.s f4, f23, f24, rne # perform operation
fdiv.s f4, f23, f24, rtz # perform operation
fdiv.s f4, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x28, 0x6ac1e5078b722ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fdiv.s f28, f14, f30, dyn # perform operation
fdiv.s f28, f14, f30, rdn # perform operation
fdiv.s f28, f14, f30, rmm # perform operation
fdiv.s f28, f14, f30, rne # perform operation
fdiv.s f28, f14, f30, rtz # perform operation
fdiv.s f28, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x2, 0x20c8c0db43a8983d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fdiv.s f2, f4, f26, dyn # perform operation
fdiv.s f2, f4, f26, rdn # perform operation
fdiv.s f2, f4, f26, rmm # perform operation
fdiv.s f2, f4, f26, rne # perform operation
fdiv.s f2, f4, f26, rtz # perform operation
fdiv.s f2, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x19, 0x63b195b6c943b446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fdiv.s f19, f14, f12, dyn # perform operation
fdiv.s f19, f14, f12, rdn # perform operation
fdiv.s f19, f14, f12, rmm # perform operation
fdiv.s f19, f14, f12, rne # perform operation
fdiv.s f19, f14, f12, rtz # perform operation
fdiv.s f19, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x20, 0xbf30c5f49d538d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fdiv.s f20, f24, f23, dyn # perform operation
fdiv.s f20, f24, f23, rdn # perform operation
fdiv.s f20, f24, f23, rmm # perform operation
fdiv.s f20, f24, f23, rne # perform operation
fdiv.s f20, f24, f23, rtz # perform operation
fdiv.s f20, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x21, 0xd5fb94dfe66fbdfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fdiv.s f21, f4, f30, dyn # perform operation
fdiv.s f21, f4, f30, rdn # perform operation
fdiv.s f21, f4, f30, rmm # perform operation
fdiv.s f21, f4, f30, rne # perform operation
fdiv.s f21, f4, f30, rtz # perform operation
fdiv.s f21, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x21, 0xdb71db68d334fe0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fdiv.s f21, f9, f23, dyn # perform operation
fdiv.s f21, f9, f23, rdn # perform operation
fdiv.s f21, f9, f23, rmm # perform operation
fdiv.s f21, f9, f23, rne # perform operation
fdiv.s f21, f9, f23, rtz # perform operation
fdiv.s f21, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x16, 0x3ca7dc84038007bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fdiv.s f16, f5, f18, dyn # perform operation
fdiv.s f16, f5, f18, rdn # perform operation
fdiv.s f16, f5, f18, rmm # perform operation
fdiv.s f16, f5, f18, rne # perform operation
fdiv.s f16, f5, f18, rtz # perform operation
fdiv.s f16, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x6, 0x010218c882f5cab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fdiv.s f6, f23, f21, dyn # perform operation
fdiv.s f6, f23, f21, rdn # perform operation
fdiv.s f6, f23, f21, rmm # perform operation
fdiv.s f6, f23, f21, rne # perform operation
fdiv.s f6, f23, f21, rtz # perform operation
fdiv.s f6, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x3, 0x86740d41acb94445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fdiv.s f3, f22, f2, dyn # perform operation
fdiv.s f3, f22, f2, rdn # perform operation
fdiv.s f3, f22, f2, rmm # perform operation
fdiv.s f3, f22, f2, rne # perform operation
fdiv.s f3, f22, f2, rtz # perform operation
fdiv.s f3, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x18, 0x046025dea509838c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fdiv.s f18, f10, f28, dyn # perform operation
fdiv.s f18, f10, f28, rdn # perform operation
fdiv.s f18, f10, f28, rmm # perform operation
fdiv.s f18, f10, f28, rne # perform operation
fdiv.s f18, f10, f28, rtz # perform operation
fdiv.s f18, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x12, 0xaf8d2ce1a4e73cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fdiv.s f12, f24, f22, dyn # perform operation
fdiv.s f12, f24, f22, rdn # perform operation
fdiv.s f12, f24, f22, rmm # perform operation
fdiv.s f12, f24, f22, rne # perform operation
fdiv.s f12, f24, f22, rtz # perform operation
fdiv.s f12, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x1, 0x01ddbfff98dafaed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fdiv.s f1, f3, f17, dyn # perform operation
fdiv.s f1, f3, f17, rdn # perform operation
fdiv.s f1, f3, f17, rmm # perform operation
fdiv.s f1, f3, f17, rne # perform operation
fdiv.s f1, f3, f17, rtz # perform operation
fdiv.s f1, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x14, 0xf3e42d3e7148224b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fdiv.s f14, f25, f1, dyn # perform operation
fdiv.s f14, f25, f1, rdn # perform operation
fdiv.s f14, f25, f1, rmm # perform operation
fdiv.s f14, f25, f1, rne # perform operation
fdiv.s f14, f25, f1, rtz # perform operation
fdiv.s f14, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x19, 0xf591124c6f68ce05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fdiv.s f19, f28, f30, dyn # perform operation
fdiv.s f19, f28, f30, rdn # perform operation
fdiv.s f19, f28, f30, rmm # perform operation
fdiv.s f19, f28, f30, rne # perform operation
fdiv.s f19, f28, f30, rtz # perform operation
fdiv.s f19, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x10, 0x10d04bb1d0d9e161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fdiv.s f10, f3, f25, dyn # perform operation
fdiv.s f10, f3, f25, rdn # perform operation
fdiv.s f10, f3, f25, rmm # perform operation
fdiv.s f10, f3, f25, rne # perform operation
fdiv.s f10, f3, f25, rtz # perform operation
fdiv.s f10, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x26, 0x1901c4dfed0c568c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fdiv.s f26, f1, f22, dyn # perform operation
fdiv.s f26, f1, f22, rdn # perform operation
fdiv.s f26, f1, f22, rmm # perform operation
fdiv.s f26, f1, f22, rne # perform operation
fdiv.s f26, f1, f22, rtz # perform operation
fdiv.s f26, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x5, 0xe95de35d7a00095e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fdiv.s f5, f1, f13, dyn # perform operation
fdiv.s f5, f1, f13, rdn # perform operation
fdiv.s f5, f1, f13, rmm # perform operation
fdiv.s f5, f1, f13, rne # perform operation
fdiv.s f5, f1, f13, rtz # perform operation
fdiv.s f5, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x8, 0xf5f9c5f7354a54f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fdiv.s f8, f21, f29, dyn # perform operation
fdiv.s f8, f21, f29, rdn # perform operation
fdiv.s f8, f21, f29, rmm # perform operation
fdiv.s f8, f21, f29, rne # perform operation
fdiv.s f8, f21, f29, rtz # perform operation
fdiv.s f8, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x14, 0xd7247148b427f207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fdiv.s f14, f2, f13, dyn # perform operation
fdiv.s f14, f2, f13, rdn # perform operation
fdiv.s f14, f2, f13, rmm # perform operation
fdiv.s f14, f2, f13, rne # perform operation
fdiv.s f14, f2, f13, rtz # perform operation
fdiv.s f14, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x31, 0xca4bdbb28bd28baf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fdiv.s f31, f24, f17, dyn # perform operation
fdiv.s f31, f24, f17, rdn # perform operation
fdiv.s f31, f24, f17, rmm # perform operation
fdiv.s f31, f24, f17, rne # perform operation
fdiv.s f31, f24, f17, rtz # perform operation
fdiv.s f31, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x30, 0x328a575ff3bab4de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fdiv.s f30, f7, f16, dyn # perform operation
fdiv.s f30, f7, f16, rdn # perform operation
fdiv.s f30, f7, f16, rmm # perform operation
fdiv.s f30, f7, f16, rne # perform operation
fdiv.s f30, f7, f16, rtz # perform operation
fdiv.s f30, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x26, 0x28c744f2fd5313ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fdiv.s f26, f30, f8, dyn # perform operation
fdiv.s f26, f30, f8, rdn # perform operation
fdiv.s f26, f30, f8, rmm # perform operation
fdiv.s f26, f30, f8, rne # perform operation
fdiv.s f26, f30, f8, rtz # perform operation
fdiv.s f26, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x25, 0xd02695bce25a44a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.s f25, f19, f13, dyn # perform operation
fdiv.s f25, f19, f13, rdn # perform operation
fdiv.s f25, f19, f13, rmm # perform operation
fdiv.s f25, f19, f13, rne # perform operation
fdiv.s f25, f19, f13, rtz # perform operation
fdiv.s f25, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x14, 0x0590ebadab6cd501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fdiv.s f14, f27, f1, dyn # perform operation
fdiv.s f14, f27, f1, rdn # perform operation
fdiv.s f14, f27, f1, rmm # perform operation
fdiv.s f14, f27, f1, rne # perform operation
fdiv.s f14, f27, f1, rtz # perform operation
fdiv.s f14, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x12, 0x0f79ea7d841795f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fdiv.s f12, f25, f2, dyn # perform operation
fdiv.s f12, f25, f2, rdn # perform operation
fdiv.s f12, f25, f2, rmm # perform operation
fdiv.s f12, f25, f2, rne # perform operation
fdiv.s f12, f25, f2, rtz # perform operation
fdiv.s f12, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x4, 0x804f39cc2a621f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fdiv.s f4, f15, f29, dyn # perform operation
fdiv.s f4, f15, f29, rdn # perform operation
fdiv.s f4, f15, f29, rmm # perform operation
fdiv.s f4, f15, f29, rne # perform operation
fdiv.s f4, f15, f29, rtz # perform operation
fdiv.s f4, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x20, 0xd1be0d86caa38c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fdiv.s f20, f29, f26, dyn # perform operation
fdiv.s f20, f29, f26, rdn # perform operation
fdiv.s f20, f29, f26, rmm # perform operation
fdiv.s f20, f29, f26, rne # perform operation
fdiv.s f20, f29, f26, rtz # perform operation
fdiv.s f20, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x23, 0x90b3c1d56b0cef65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fdiv.s f23, f12, f30, dyn # perform operation
fdiv.s f23, f12, f30, rdn # perform operation
fdiv.s f23, f12, f30, rmm # perform operation
fdiv.s f23, f12, f30, rne # perform operation
fdiv.s f23, f12, f30, rtz # perform operation
fdiv.s f23, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x6, 0xf70cecbd3ed3413c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f6, f5, f11, dyn # perform operation
fdiv.s f6, f5, f11, rdn # perform operation
fdiv.s f6, f5, f11, rmm # perform operation
fdiv.s f6, f5, f11, rne # perform operation
fdiv.s f6, f5, f11, rtz # perform operation
fdiv.s f6, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x16, 0x41ac5fde3a8902ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fdiv.s f16, f18, f27, dyn # perform operation
fdiv.s f16, f18, f27, rdn # perform operation
fdiv.s f16, f18, f27, rmm # perform operation
fdiv.s f16, f18, f27, rne # perform operation
fdiv.s f16, f18, f27, rtz # perform operation
fdiv.s f16, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x9, 0x002636f71f0dd7af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fdiv.s f9, f5, f24, dyn # perform operation
fdiv.s f9, f5, f24, rdn # perform operation
fdiv.s f9, f5, f24, rmm # perform operation
fdiv.s f9, f5, f24, rne # perform operation
fdiv.s f9, f5, f24, rtz # perform operation
fdiv.s f9, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x16, 0x98500ca84d3e827f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fdiv.s f16, f7, f11, dyn # perform operation
fdiv.s f16, f7, f11, rdn # perform operation
fdiv.s f16, f7, f11, rmm # perform operation
fdiv.s f16, f7, f11, rne # perform operation
fdiv.s f16, f7, f11, rtz # perform operation
fdiv.s f16, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x5, 0x05640ce19af3195b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.s f5, f30, f8, dyn # perform operation
fdiv.s f5, f30, f8, rdn # perform operation
fdiv.s f5, f30, f8, rmm # perform operation
fdiv.s f5, f30, f8, rne # perform operation
fdiv.s f5, f30, f8, rtz # perform operation
fdiv.s f5, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x28, 0x01a44a401a0df3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fdiv.s f28, f1, f10, dyn # perform operation
fdiv.s f28, f1, f10, rdn # perform operation
fdiv.s f28, f1, f10, rmm # perform operation
fdiv.s f28, f1, f10, rne # perform operation
fdiv.s f28, f1, f10, rtz # perform operation
fdiv.s f28, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x5, 0x13c08042960306b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fdiv.s f5, f6, f1, dyn # perform operation
fdiv.s f5, f6, f1, rdn # perform operation
fdiv.s f5, f6, f1, rmm # perform operation
fdiv.s f5, f6, f1, rne # perform operation
fdiv.s f5, f6, f1, rtz # perform operation
fdiv.s f5, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x24, 0xe9818c4e2518168b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fdiv.s f24, f3, f22, dyn # perform operation
fdiv.s f24, f3, f22, rdn # perform operation
fdiv.s f24, f3, f22, rmm # perform operation
fdiv.s f24, f3, f22, rne # perform operation
fdiv.s f24, f3, f22, rtz # perform operation
fdiv.s f24, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x2, 0x0afeb5e7cdaef0b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fdiv.s f2, f15, f8, dyn # perform operation
fdiv.s f2, f15, f8, rdn # perform operation
fdiv.s f2, f15, f8, rmm # perform operation
fdiv.s f2, f15, f8, rne # perform operation
fdiv.s f2, f15, f8, rtz # perform operation
fdiv.s f2, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x25, 0x8bc12e06fb8eea10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fdiv.s f25, f24, f29, dyn # perform operation
fdiv.s f25, f24, f29, rdn # perform operation
fdiv.s f25, f24, f29, rmm # perform operation
fdiv.s f25, f24, f29, rne # perform operation
fdiv.s f25, f24, f29, rtz # perform operation
fdiv.s f25, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x3, 0x72410baf6933cec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fdiv.s f3, f13, f12, dyn # perform operation
fdiv.s f3, f13, f12, rdn # perform operation
fdiv.s f3, f13, f12, rmm # perform operation
fdiv.s f3, f13, f12, rne # perform operation
fdiv.s f3, f13, f12, rtz # perform operation
fdiv.s f3, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x27, 0x2230c09c9df75fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fdiv.s f27, f20, f25, dyn # perform operation
fdiv.s f27, f20, f25, rdn # perform operation
fdiv.s f27, f20, f25, rmm # perform operation
fdiv.s f27, f20, f25, rne # perform operation
fdiv.s f27, f20, f25, rtz # perform operation
fdiv.s f27, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x24, 0x78d3dd8f24bb3b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fdiv.s f24, f21, f6, dyn # perform operation
fdiv.s f24, f21, f6, rdn # perform operation
fdiv.s f24, f21, f6, rmm # perform operation
fdiv.s f24, f21, f6, rne # perform operation
fdiv.s f24, f21, f6, rtz # perform operation
fdiv.s f24, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x31, 0x9b3e6366111a8a2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fdiv.s f31, f19, f11, dyn # perform operation
fdiv.s f31, f19, f11, rdn # perform operation
fdiv.s f31, f19, f11, rmm # perform operation
fdiv.s f31, f19, f11, rne # perform operation
fdiv.s f31, f19, f11, rtz # perform operation
fdiv.s f31, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x14, 0xf16bd2bf4ff1a951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fdiv.s f14, f1, f6, dyn # perform operation
fdiv.s f14, f1, f6, rdn # perform operation
fdiv.s f14, f1, f6, rmm # perform operation
fdiv.s f14, f1, f6, rne # perform operation
fdiv.s f14, f1, f6, rtz # perform operation
fdiv.s f14, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x5, 0x81c3e273e17c0e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fdiv.s f5, f25, f30, dyn # perform operation
fdiv.s f5, f25, f30, rdn # perform operation
fdiv.s f5, f25, f30, rmm # perform operation
fdiv.s f5, f25, f30, rne # perform operation
fdiv.s f5, f25, f30, rtz # perform operation
fdiv.s f5, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x11, 0x7e55302c92251f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fdiv.s f11, f6, f18, dyn # perform operation
fdiv.s f11, f6, f18, rdn # perform operation
fdiv.s f11, f6, f18, rmm # perform operation
fdiv.s f11, f6, f18, rne # perform operation
fdiv.s f11, f6, f18, rtz # perform operation
fdiv.s f11, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x12, 0xe6b124975ed51b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fdiv.s f12, f28, f10, dyn # perform operation
fdiv.s f12, f28, f10, rdn # perform operation
fdiv.s f12, f28, f10, rmm # perform operation
fdiv.s f12, f28, f10, rne # perform operation
fdiv.s f12, f28, f10, rtz # perform operation
fdiv.s f12, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x23, 0x6ab3bda4ad80b2f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fdiv.s f23, f27, f26, dyn # perform operation
fdiv.s f23, f27, f26, rdn # perform operation
fdiv.s f23, f27, f26, rmm # perform operation
fdiv.s f23, f27, f26, rne # perform operation
fdiv.s f23, f27, f26, rtz # perform operation
fdiv.s f23, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x24, 0x814125ffd699f163 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fdiv.s f24, f30, f27, dyn # perform operation
fdiv.s f24, f30, f27, rdn # perform operation
fdiv.s f24, f30, f27, rmm # perform operation
fdiv.s f24, f30, f27, rne # perform operation
fdiv.s f24, f30, f27, rtz # perform operation
fdiv.s f24, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x13, 0x259c0de5b28efb91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fdiv.s f13, f12, f4, dyn # perform operation
fdiv.s f13, f12, f4, rdn # perform operation
fdiv.s f13, f12, f4, rmm # perform operation
fdiv.s f13, f12, f4, rne # perform operation
fdiv.s f13, f12, f4, rtz # perform operation
fdiv.s f13, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x1, 0xcbffa8ab38c856f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fdiv.s f1, f21, f22, dyn # perform operation
fdiv.s f1, f21, f22, rdn # perform operation
fdiv.s f1, f21, f22, rmm # perform operation
fdiv.s f1, f21, f22, rne # perform operation
fdiv.s f1, f21, f22, rtz # perform operation
fdiv.s f1, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x4, 0x88bed1518c898f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fdiv.s f4, f9, f26, dyn # perform operation
fdiv.s f4, f9, f26, rdn # perform operation
fdiv.s f4, f9, f26, rmm # perform operation
fdiv.s f4, f9, f26, rne # perform operation
fdiv.s f4, f9, f26, rtz # perform operation
fdiv.s f4, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x7, 0x6648b39dd4c1d12c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fdiv.s f7, f16, f28, dyn # perform operation
fdiv.s f7, f16, f28, rdn # perform operation
fdiv.s f7, f16, f28, rmm # perform operation
fdiv.s f7, f16, f28, rne # perform operation
fdiv.s f7, f16, f28, rtz # perform operation
fdiv.s f7, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x31, 0x4beebd590721c658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f31, f1, f18, dyn # perform operation
fdiv.s f31, f1, f18, rdn # perform operation
fdiv.s f31, f1, f18, rmm # perform operation
fdiv.s f31, f1, f18, rne # perform operation
fdiv.s f31, f1, f18, rtz # perform operation
fdiv.s f31, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x11, 0xcfd15ae9f9e7ddeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fdiv.s f11, f22, f31, dyn # perform operation
fdiv.s f11, f22, f31, rdn # perform operation
fdiv.s f11, f22, f31, rmm # perform operation
fdiv.s f11, f22, f31, rne # perform operation
fdiv.s f11, f22, f31, rtz # perform operation
fdiv.s f11, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x23, 0xece68f8c33908168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fdiv.s f23, f22, f13, dyn # perform operation
fdiv.s f23, f22, f13, rdn # perform operation
fdiv.s f23, f22, f13, rmm # perform operation
fdiv.s f23, f22, f13, rne # perform operation
fdiv.s f23, f22, f13, rtz # perform operation
fdiv.s f23, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x12, 0x53b55fd86ffab3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fdiv.s f12, f8, f16, dyn # perform operation
fdiv.s f12, f8, f16, rdn # perform operation
fdiv.s f12, f8, f16, rmm # perform operation
fdiv.s f12, f8, f16, rne # perform operation
fdiv.s f12, f8, f16, rtz # perform operation
fdiv.s f12, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x14, 0x48a472d7dbe8f388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fdiv.s f14, f30, f5, dyn # perform operation
fdiv.s f14, f30, f5, rdn # perform operation
fdiv.s f14, f30, f5, rmm # perform operation
fdiv.s f14, f30, f5, rne # perform operation
fdiv.s f14, f30, f5, rtz # perform operation
fdiv.s f14, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x2, 0xffbb527ca7f28324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fdiv.s f2, f20, f11, dyn # perform operation
fdiv.s f2, f20, f11, rdn # perform operation
fdiv.s f2, f20, f11, rmm # perform operation
fdiv.s f2, f20, f11, rne # perform operation
fdiv.s f2, f20, f11, rtz # perform operation
fdiv.s f2, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x14, 0xfbc68caaa4a2ff66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fdiv.s f14, f30, f3, dyn # perform operation
fdiv.s f14, f30, f3, rdn # perform operation
fdiv.s f14, f30, f3, rmm # perform operation
fdiv.s f14, f30, f3, rne # perform operation
fdiv.s f14, f30, f3, rtz # perform operation
fdiv.s f14, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x9, 0xf24154b4652978d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fdiv.s f9, f5, f30, dyn # perform operation
fdiv.s f9, f5, f30, rdn # perform operation
fdiv.s f9, f5, f30, rmm # perform operation
fdiv.s f9, f5, f30, rne # perform operation
fdiv.s f9, f5, f30, rtz # perform operation
fdiv.s f9, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x6, 0xa05b447c68d0e126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fdiv.s f6, f11, f24, dyn # perform operation
fdiv.s f6, f11, f24, rdn # perform operation
fdiv.s f6, f11, f24, rmm # perform operation
fdiv.s f6, f11, f24, rne # perform operation
fdiv.s f6, f11, f24, rtz # perform operation
fdiv.s f6, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x11, 0x8a39a7a532875707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fdiv.s f11, f19, f27, dyn # perform operation
fdiv.s f11, f19, f27, rdn # perform operation
fdiv.s f11, f19, f27, rmm # perform operation
fdiv.s f11, f19, f27, rne # perform operation
fdiv.s f11, f19, f27, rtz # perform operation
fdiv.s f11, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x5, 0xbff3ead663745925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fdiv.s f5, f7, f17, dyn # perform operation
fdiv.s f5, f7, f17, rdn # perform operation
fdiv.s f5, f7, f17, rmm # perform operation
fdiv.s f5, f7, f17, rne # perform operation
fdiv.s f5, f7, f17, rtz # perform operation
fdiv.s f5, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x16, 0x505be48d17e11f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f16, f1, f25, dyn # perform operation
fdiv.s f16, f1, f25, rdn # perform operation
fdiv.s f16, f1, f25, rmm # perform operation
fdiv.s f16, f1, f25, rne # perform operation
fdiv.s f16, f1, f25, rtz # perform operation
fdiv.s f16, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x7, 0xa581d80805ee56ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fdiv.s f7, f11, f10, dyn # perform operation
fdiv.s f7, f11, f10, rdn # perform operation
fdiv.s f7, f11, f10, rmm # perform operation
fdiv.s f7, f11, f10, rne # perform operation
fdiv.s f7, f11, f10, rtz # perform operation
fdiv.s f7, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x10, 0xa90040533179751a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fdiv.s f10, f13, f9, dyn # perform operation
fdiv.s f10, f13, f9, rdn # perform operation
fdiv.s f10, f13, f9, rmm # perform operation
fdiv.s f10, f13, f9, rne # perform operation
fdiv.s f10, f13, f9, rtz # perform operation
fdiv.s f10, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x25, 0x562108c526463e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fdiv.s f25, f13, f24, dyn # perform operation
fdiv.s f25, f13, f24, rdn # perform operation
fdiv.s f25, f13, f24, rmm # perform operation
fdiv.s f25, f13, f24, rne # perform operation
fdiv.s f25, f13, f24, rtz # perform operation
fdiv.s f25, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x10, 0xfea4c5615c7de026 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fdiv.s f10, f6, f2, dyn # perform operation
fdiv.s f10, f6, f2, rdn # perform operation
fdiv.s f10, f6, f2, rmm # perform operation
fdiv.s f10, f6, f2, rne # perform operation
fdiv.s f10, f6, f2, rtz # perform operation
fdiv.s f10, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x5, 0x10c5fd04ac31f02b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fdiv.s f5, f8, f11, dyn # perform operation
fdiv.s f5, f8, f11, rdn # perform operation
fdiv.s f5, f8, f11, rmm # perform operation
fdiv.s f5, f8, f11, rne # perform operation
fdiv.s f5, f8, f11, rtz # perform operation
fdiv.s f5, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x29, 0x52d2e6171ed5a4b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fdiv.s f29, f14, f3, dyn # perform operation
fdiv.s f29, f14, f3, rdn # perform operation
fdiv.s f29, f14, f3, rmm # perform operation
fdiv.s f29, f14, f3, rne # perform operation
fdiv.s f29, f14, f3, rtz # perform operation
fdiv.s f29, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x15, 0x18dcae3496a7e3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f15, f23, f29, dyn # perform operation
fdiv.s f15, f23, f29, rdn # perform operation
fdiv.s f15, f23, f29, rmm # perform operation
fdiv.s f15, f23, f29, rne # perform operation
fdiv.s f15, f23, f29, rtz # perform operation
fdiv.s f15, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x20, 0xa4a6b6d6a07c6587 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fdiv.s f20, f2, f28, dyn # perform operation
fdiv.s f20, f2, f28, rdn # perform operation
fdiv.s f20, f2, f28, rmm # perform operation
fdiv.s f20, f2, f28, rne # perform operation
fdiv.s f20, f2, f28, rtz # perform operation
fdiv.s f20, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x16, 0x3e5c2f5eb20af994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fdiv.s f16, f2, f30, dyn # perform operation
fdiv.s f16, f2, f30, rdn # perform operation
fdiv.s f16, f2, f30, rmm # perform operation
fdiv.s f16, f2, f30, rne # perform operation
fdiv.s f16, f2, f30, rtz # perform operation
fdiv.s f16, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x9, 0x5ddaa4001218825c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fdiv.s f9, f7, f5, dyn # perform operation
fdiv.s f9, f7, f5, rdn # perform operation
fdiv.s f9, f7, f5, rmm # perform operation
fdiv.s f9, f7, f5, rne # perform operation
fdiv.s f9, f7, f5, rtz # perform operation
fdiv.s f9, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x4, 0xbb0a5c7f15044e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.s f4, f14, f27, dyn # perform operation
fdiv.s f4, f14, f27, rdn # perform operation
fdiv.s f4, f14, f27, rmm # perform operation
fdiv.s f4, f14, f27, rne # perform operation
fdiv.s f4, f14, f27, rtz # perform operation
fdiv.s f4, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x29, 0xd98cb37a4a1da8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fdiv.s f29, f28, f13, dyn # perform operation
fdiv.s f29, f28, f13, rdn # perform operation
fdiv.s f29, f28, f13, rmm # perform operation
fdiv.s f29, f28, f13, rne # perform operation
fdiv.s f29, f28, f13, rtz # perform operation
fdiv.s f29, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x8, 0xf2610693781114a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fdiv.s f8, f16, f13, dyn # perform operation
fdiv.s f8, f16, f13, rdn # perform operation
fdiv.s f8, f16, f13, rmm # perform operation
fdiv.s f8, f16, f13, rne # perform operation
fdiv.s f8, f16, f13, rtz # perform operation
fdiv.s f8, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x7, 0x069f3a034772a4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fdiv.s f7, f19, f14, dyn # perform operation
fdiv.s f7, f19, f14, rdn # perform operation
fdiv.s f7, f19, f14, rmm # perform operation
fdiv.s f7, f19, f14, rne # perform operation
fdiv.s f7, f19, f14, rtz # perform operation
fdiv.s f7, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x13, 0x3cf262655b02c5a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fdiv.s f13, f28, f22, dyn # perform operation
fdiv.s f13, f28, f22, rdn # perform operation
fdiv.s f13, f28, f22, rmm # perform operation
fdiv.s f13, f28, f22, rne # perform operation
fdiv.s f13, f28, f22, rtz # perform operation
fdiv.s f13, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x18, 0xf07c4e73b8907a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fdiv.s f18, f12, f6, dyn # perform operation
fdiv.s f18, f12, f6, rdn # perform operation
fdiv.s f18, f12, f6, rmm # perform operation
fdiv.s f18, f12, f6, rne # perform operation
fdiv.s f18, f12, f6, rtz # perform operation
fdiv.s f18, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x27, 0x84475fd40b68d092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fdiv.s f27, f14, f2, dyn # perform operation
fdiv.s f27, f14, f2, rdn # perform operation
fdiv.s f27, f14, f2, rmm # perform operation
fdiv.s f27, f14, f2, rne # perform operation
fdiv.s f27, f14, f2, rtz # perform operation
fdiv.s f27, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x13, 0xc279cb0954767991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fdiv.s f13, f12, f2, dyn # perform operation
fdiv.s f13, f12, f2, rdn # perform operation
fdiv.s f13, f12, f2, rmm # perform operation
fdiv.s f13, f12, f2, rne # perform operation
fdiv.s f13, f12, f2, rtz # perform operation
fdiv.s f13, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x15, 0x4da686f89ee06007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fdiv.s f15, f11, f2, dyn # perform operation
fdiv.s f15, f11, f2, rdn # perform operation
fdiv.s f15, f11, f2, rmm # perform operation
fdiv.s f15, f11, f2, rne # perform operation
fdiv.s f15, f11, f2, rtz # perform operation
fdiv.s f15, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x30, 0x852a0a8f8d5f9d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fdiv.s f30, f11, f5, dyn # perform operation
fdiv.s f30, f11, f5, rdn # perform operation
fdiv.s f30, f11, f5, rmm # perform operation
fdiv.s f30, f11, f5, rne # perform operation
fdiv.s f30, f11, f5, rtz # perform operation
fdiv.s f30, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x31, 0x5a3be97164352b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f31, f27, f29, dyn # perform operation
fdiv.s f31, f27, f29, rdn # perform operation
fdiv.s f31, f27, f29, rmm # perform operation
fdiv.s f31, f27, f29, rne # perform operation
fdiv.s f31, f27, f29, rtz # perform operation
fdiv.s f31, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x8, 0x22bf774c86ac7a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fdiv.s f8, f29, f23, dyn # perform operation
fdiv.s f8, f29, f23, rdn # perform operation
fdiv.s f8, f29, f23, rmm # perform operation
fdiv.s f8, f29, f23, rne # perform operation
fdiv.s f8, f29, f23, rtz # perform operation
fdiv.s f8, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x8, 0xdcf51a552e76e78b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fdiv.s f8, f20, f29, dyn # perform operation
fdiv.s f8, f20, f29, rdn # perform operation
fdiv.s f8, f20, f29, rmm # perform operation
fdiv.s f8, f20, f29, rne # perform operation
fdiv.s f8, f20, f29, rtz # perform operation
fdiv.s f8, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x19, 0x2818d63db29a2da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fdiv.s f19, f26, f9, dyn # perform operation
fdiv.s f19, f26, f9, rdn # perform operation
fdiv.s f19, f26, f9, rmm # perform operation
fdiv.s f19, f26, f9, rne # perform operation
fdiv.s f19, f26, f9, rtz # perform operation
fdiv.s f19, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x14, 0x25b06c9a56e6d8e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fdiv.s f14, f29, f31, dyn # perform operation
fdiv.s f14, f29, f31, rdn # perform operation
fdiv.s f14, f29, f31, rmm # perform operation
fdiv.s f14, f29, f31, rne # perform operation
fdiv.s f14, f29, f31, rtz # perform operation
fdiv.s f14, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x1, 0x6befdcead2573ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fdiv.s f1, f11, f31, dyn # perform operation
fdiv.s f1, f11, f31, rdn # perform operation
fdiv.s f1, f11, f31, rmm # perform operation
fdiv.s f1, f11, f31, rne # perform operation
fdiv.s f1, f11, f31, rtz # perform operation
fdiv.s f1, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x16, 0x56d6be91c53d9f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fdiv.s f16, f10, f20, dyn # perform operation
fdiv.s f16, f10, f20, rdn # perform operation
fdiv.s f16, f10, f20, rmm # perform operation
fdiv.s f16, f10, f20, rne # perform operation
fdiv.s f16, f10, f20, rtz # perform operation
fdiv.s f16, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x27, 0x5c70ee341053cfd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fdiv.s f27, f6, f17, dyn # perform operation
fdiv.s f27, f6, f17, rdn # perform operation
fdiv.s f27, f6, f17, rmm # perform operation
fdiv.s f27, f6, f17, rne # perform operation
fdiv.s f27, f6, f17, rtz # perform operation
fdiv.s f27, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x23, 0xb4c12e0edbe4ba3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fdiv.s f23, f17, f3, dyn # perform operation
fdiv.s f23, f17, f3, rdn # perform operation
fdiv.s f23, f17, f3, rmm # perform operation
fdiv.s f23, f17, f3, rne # perform operation
fdiv.s f23, f17, f3, rtz # perform operation
fdiv.s f23, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x1, 0xd93a3b425a1255a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fdiv.s f1, f18, f5, dyn # perform operation
fdiv.s f1, f18, f5, rdn # perform operation
fdiv.s f1, f18, f5, rmm # perform operation
fdiv.s f1, f18, f5, rne # perform operation
fdiv.s f1, f18, f5, rtz # perform operation
fdiv.s f1, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x20, 0xfa0cd87a1679f218 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fdiv.s f20, f26, f15, dyn # perform operation
fdiv.s f20, f26, f15, rdn # perform operation
fdiv.s f20, f26, f15, rmm # perform operation
fdiv.s f20, f26, f15, rne # perform operation
fdiv.s f20, f26, f15, rtz # perform operation
fdiv.s f20, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x7, 0xac5cbe2931369fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fdiv.s f7, f24, f5, dyn # perform operation
fdiv.s f7, f24, f5, rdn # perform operation
fdiv.s f7, f24, f5, rmm # perform operation
fdiv.s f7, f24, f5, rne # perform operation
fdiv.s f7, f24, f5, rtz # perform operation
fdiv.s f7, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x12, 0xaf2e0928126c7da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fdiv.s f12, f16, f17, dyn # perform operation
fdiv.s f12, f16, f17, rdn # perform operation
fdiv.s f12, f16, f17, rmm # perform operation
fdiv.s f12, f16, f17, rne # perform operation
fdiv.s f12, f16, f17, rtz # perform operation
fdiv.s f12, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x17, 0xd9424ac4b905d8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fdiv.s f17, f28, f12, dyn # perform operation
fdiv.s f17, f28, f12, rdn # perform operation
fdiv.s f17, f28, f12, rmm # perform operation
fdiv.s f17, f28, f12, rne # perform operation
fdiv.s f17, f28, f12, rtz # perform operation
fdiv.s f17, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x3, 0xb0b78dd71c85c4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fdiv.s f3, f8, f6, dyn # perform operation
fdiv.s f3, f8, f6, rdn # perform operation
fdiv.s f3, f8, f6, rmm # perform operation
fdiv.s f3, f8, f6, rne # perform operation
fdiv.s f3, f8, f6, rtz # perform operation
fdiv.s f3, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x16, 0xa3d3f3b93390a12c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fdiv.s f16, f12, f9, dyn # perform operation
fdiv.s f16, f12, f9, rdn # perform operation
fdiv.s f16, f12, f9, rmm # perform operation
fdiv.s f16, f12, f9, rne # perform operation
fdiv.s f16, f12, f9, rtz # perform operation
fdiv.s f16, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x25, 0x7a906165e9f3adbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f25, f24, f22, dyn # perform operation
fdiv.s f25, f24, f22, rdn # perform operation
fdiv.s f25, f24, f22, rmm # perform operation
fdiv.s f25, f24, f22, rne # perform operation
fdiv.s f25, f24, f22, rtz # perform operation
fdiv.s f25, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x18, 0x06c4f4aa7b5ae6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fdiv.s f18, f6, f30, dyn # perform operation
fdiv.s f18, f6, f30, rdn # perform operation
fdiv.s f18, f6, f30, rmm # perform operation
fdiv.s f18, f6, f30, rne # perform operation
fdiv.s f18, f6, f30, rtz # perform operation
fdiv.s f18, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x18, 0x7867303f1c4242cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fdiv.s f18, f20, f6, dyn # perform operation
fdiv.s f18, f20, f6, rdn # perform operation
fdiv.s f18, f20, f6, rmm # perform operation
fdiv.s f18, f20, f6, rne # perform operation
fdiv.s f18, f20, f6, rtz # perform operation
fdiv.s f18, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x29, 0xfc3a3424bc7a4191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fdiv.s f29, f21, f19, dyn # perform operation
fdiv.s f29, f21, f19, rdn # perform operation
fdiv.s f29, f21, f19, rmm # perform operation
fdiv.s f29, f21, f19, rne # perform operation
fdiv.s f29, f21, f19, rtz # perform operation
fdiv.s f29, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x18, 0x2b39cde1184d9d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fdiv.s f18, f26, f20, dyn # perform operation
fdiv.s f18, f26, f20, rdn # perform operation
fdiv.s f18, f26, f20, rmm # perform operation
fdiv.s f18, f26, f20, rne # perform operation
fdiv.s f18, f26, f20, rtz # perform operation
fdiv.s f18, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x1, 0xcb6cad6d1a260ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f1, f25, f15, dyn # perform operation
fdiv.s f1, f25, f15, rdn # perform operation
fdiv.s f1, f25, f15, rmm # perform operation
fdiv.s f1, f25, f15, rne # perform operation
fdiv.s f1, f25, f15, rtz # perform operation
fdiv.s f1, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x23, 0x7a64ab05041b4b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fdiv.s f23, f16, f17, dyn # perform operation
fdiv.s f23, f16, f17, rdn # perform operation
fdiv.s f23, f16, f17, rmm # perform operation
fdiv.s f23, f16, f17, rne # perform operation
fdiv.s f23, f16, f17, rtz # perform operation
fdiv.s f23, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x29, 0x2b4b850a5c3e322f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fdiv.s f29, f23, f13, dyn # perform operation
fdiv.s f29, f23, f13, rdn # perform operation
fdiv.s f29, f23, f13, rmm # perform operation
fdiv.s f29, f23, f13, rne # perform operation
fdiv.s f29, f23, f13, rtz # perform operation
fdiv.s f29, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x17, 0x57705b0946afc93a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fdiv.s f17, f14, f2, dyn # perform operation
fdiv.s f17, f14, f2, rdn # perform operation
fdiv.s f17, f14, f2, rmm # perform operation
fdiv.s f17, f14, f2, rne # perform operation
fdiv.s f17, f14, f2, rtz # perform operation
fdiv.s f17, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x24, 0xcb0e4be7c0956577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fdiv.s f24, f1, f8, dyn # perform operation
fdiv.s f24, f1, f8, rdn # perform operation
fdiv.s f24, f1, f8, rmm # perform operation
fdiv.s f24, f1, f8, rne # perform operation
fdiv.s f24, f1, f8, rtz # perform operation
fdiv.s f24, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x29, 0xdee4433cb48b3444 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fdiv.s f29, f5, f10, dyn # perform operation
fdiv.s f29, f5, f10, rdn # perform operation
fdiv.s f29, f5, f10, rmm # perform operation
fdiv.s f29, f5, f10, rne # perform operation
fdiv.s f29, f5, f10, rtz # perform operation
fdiv.s f29, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x18, 0xe6688cdd13fad902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fdiv.s f18, f3, f25, dyn # perform operation
fdiv.s f18, f3, f25, rdn # perform operation
fdiv.s f18, f3, f25, rmm # perform operation
fdiv.s f18, f3, f25, rne # perform operation
fdiv.s f18, f3, f25, rtz # perform operation
fdiv.s f18, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x22, 0x6cacf6163f614394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fdiv.s f22, f6, f28, dyn # perform operation
fdiv.s f22, f6, f28, rdn # perform operation
fdiv.s f22, f6, f28, rmm # perform operation
fdiv.s f22, f6, f28, rne # perform operation
fdiv.s f22, f6, f28, rtz # perform operation
fdiv.s f22, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x14, 0x5791c606c5e63706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fdiv.s f14, f13, f10, dyn # perform operation
fdiv.s f14, f13, f10, rdn # perform operation
fdiv.s f14, f13, f10, rmm # perform operation
fdiv.s f14, f13, f10, rne # perform operation
fdiv.s f14, f13, f10, rtz # perform operation
fdiv.s f14, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x15, 0x305d5dc692376452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fdiv.s f15, f27, f13, dyn # perform operation
fdiv.s f15, f27, f13, rdn # perform operation
fdiv.s f15, f27, f13, rmm # perform operation
fdiv.s f15, f27, f13, rne # perform operation
fdiv.s f15, f27, f13, rtz # perform operation
fdiv.s f15, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x16, 0xd30b207cef475ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fdiv.s f16, f9, f21, dyn # perform operation
fdiv.s f16, f9, f21, rdn # perform operation
fdiv.s f16, f9, f21, rmm # perform operation
fdiv.s f16, f9, f21, rne # perform operation
fdiv.s f16, f9, f21, rtz # perform operation
fdiv.s f16, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x19, 0x255026e98bb7a0da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fdiv.s f19, f3, f22, dyn # perform operation
fdiv.s f19, f3, f22, rdn # perform operation
fdiv.s f19, f3, f22, rmm # perform operation
fdiv.s f19, f3, f22, rne # perform operation
fdiv.s f19, f3, f22, rtz # perform operation
fdiv.s f19, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x21, 0xa51ebffc5f5b4179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fdiv.s f21, f27, f3, dyn # perform operation
fdiv.s f21, f27, f3, rdn # perform operation
fdiv.s f21, f27, f3, rmm # perform operation
fdiv.s f21, f27, f3, rne # perform operation
fdiv.s f21, f27, f3, rtz # perform operation
fdiv.s f21, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x20, 0x771a10e16d512c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fdiv.s f20, f12, f8, dyn # perform operation
fdiv.s f20, f12, f8, rdn # perform operation
fdiv.s f20, f12, f8, rmm # perform operation
fdiv.s f20, f12, f8, rne # perform operation
fdiv.s f20, f12, f8, rtz # perform operation
fdiv.s f20, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x20, 0x127f97d1dad26ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fdiv.s f20, f24, f1, dyn # perform operation
fdiv.s f20, f24, f1, rdn # perform operation
fdiv.s f20, f24, f1, rmm # perform operation
fdiv.s f20, f24, f1, rne # perform operation
fdiv.s f20, f24, f1, rtz # perform operation
fdiv.s f20, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x15, 0x3784758dad7c91c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fdiv.s f15, f3, f25, dyn # perform operation
fdiv.s f15, f3, f25, rdn # perform operation
fdiv.s f15, f3, f25, rmm # perform operation
fdiv.s f15, f3, f25, rne # perform operation
fdiv.s f15, f3, f25, rtz # perform operation
fdiv.s f15, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x22, 0x3a42c01cb855035d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fdiv.s f22, f13, f20, dyn # perform operation
fdiv.s f22, f13, f20, rdn # perform operation
fdiv.s f22, f13, f20, rmm # perform operation
fdiv.s f22, f13, f20, rne # perform operation
fdiv.s f22, f13, f20, rtz # perform operation
fdiv.s f22, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x5, 0x331d316f4b5feb9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fdiv.s f5, f22, f23, dyn # perform operation
fdiv.s f5, f22, f23, rdn # perform operation
fdiv.s f5, f22, f23, rmm # perform operation
fdiv.s f5, f22, f23, rne # perform operation
fdiv.s f5, f22, f23, rtz # perform operation
fdiv.s f5, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x29, 0xc1436fe410990c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fdiv.s f29, f23, f4, dyn # perform operation
fdiv.s f29, f23, f4, rdn # perform operation
fdiv.s f29, f23, f4, rmm # perform operation
fdiv.s f29, f23, f4, rne # perform operation
fdiv.s f29, f23, f4, rtz # perform operation
fdiv.s f29, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x26, 0x7a4556a953aee28c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fdiv.s f26, f22, f19, dyn # perform operation
fdiv.s f26, f22, f19, rdn # perform operation
fdiv.s f26, f22, f19, rmm # perform operation
fdiv.s f26, f22, f19, rne # perform operation
fdiv.s f26, f22, f19, rtz # perform operation
fdiv.s f26, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x4, 0xd4189be89523941b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fdiv.s f4, f14, f5, dyn # perform operation
fdiv.s f4, f14, f5, rdn # perform operation
fdiv.s f4, f14, f5, rmm # perform operation
fdiv.s f4, f14, f5, rne # perform operation
fdiv.s f4, f14, f5, rtz # perform operation
fdiv.s f4, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x10, 0x58c1c13c77cd5f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fdiv.s f10, f15, f7, dyn # perform operation
fdiv.s f10, f15, f7, rdn # perform operation
fdiv.s f10, f15, f7, rmm # perform operation
fdiv.s f10, f15, f7, rne # perform operation
fdiv.s f10, f15, f7, rtz # perform operation
fdiv.s f10, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x16, 0x484efd4c45c8b74a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fdiv.s f16, f8, f24, dyn # perform operation
fdiv.s f16, f8, f24, rdn # perform operation
fdiv.s f16, f8, f24, rmm # perform operation
fdiv.s f16, f8, f24, rne # perform operation
fdiv.s f16, f8, f24, rtz # perform operation
fdiv.s f16, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x5, 0xbd087873da947240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fdiv.s f5, f22, f17, dyn # perform operation
fdiv.s f5, f22, f17, rdn # perform operation
fdiv.s f5, f22, f17, rmm # perform operation
fdiv.s f5, f22, f17, rne # perform operation
fdiv.s f5, f22, f17, rtz # perform operation
fdiv.s f5, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x11, 0x385f2d2516e1d4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fdiv.s f11, f9, f29, dyn # perform operation
fdiv.s f11, f9, f29, rdn # perform operation
fdiv.s f11, f9, f29, rmm # perform operation
fdiv.s f11, f9, f29, rne # perform operation
fdiv.s f11, f9, f29, rtz # perform operation
fdiv.s f11, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x3, 0xbf911d8ff85acb54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fdiv.s f3, f15, f28, dyn # perform operation
fdiv.s f3, f15, f28, rdn # perform operation
fdiv.s f3, f15, f28, rmm # perform operation
fdiv.s f3, f15, f28, rne # perform operation
fdiv.s f3, f15, f28, rtz # perform operation
fdiv.s f3, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x22, 0x408cb9c2d7eb9d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fdiv.s f22, f1, f5, dyn # perform operation
fdiv.s f22, f1, f5, rdn # perform operation
fdiv.s f22, f1, f5, rmm # perform operation
fdiv.s f22, f1, f5, rne # perform operation
fdiv.s f22, f1, f5, rtz # perform operation
fdiv.s f22, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x1, 0x51b4c3baecfb2eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fdiv.s f1, f12, f30, dyn # perform operation
fdiv.s f1, f12, f30, rdn # perform operation
fdiv.s f1, f12, f30, rmm # perform operation
fdiv.s f1, f12, f30, rne # perform operation
fdiv.s f1, f12, f30, rtz # perform operation
fdiv.s f1, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x18, 0xa99018e5e4526106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fdiv.s f18, f10, f6, dyn # perform operation
fdiv.s f18, f10, f6, rdn # perform operation
fdiv.s f18, f10, f6, rmm # perform operation
fdiv.s f18, f10, f6, rne # perform operation
fdiv.s f18, f10, f6, rtz # perform operation
fdiv.s f18, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x27, 0x11b94b2aa48e1625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fdiv.s f27, f5, f31, dyn # perform operation
fdiv.s f27, f5, f31, rdn # perform operation
fdiv.s f27, f5, f31, rmm # perform operation
fdiv.s f27, f5, f31, rne # perform operation
fdiv.s f27, f5, f31, rtz # perform operation
fdiv.s f27, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x15, 0xb87f9ee7c6193fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fdiv.s f15, f21, f19, dyn # perform operation
fdiv.s f15, f21, f19, rdn # perform operation
fdiv.s f15, f21, f19, rmm # perform operation
fdiv.s f15, f21, f19, rne # perform operation
fdiv.s f15, f21, f19, rtz # perform operation
fdiv.s f15, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x27, 0xd702fcc9aabd2f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.s f27, f30, f2, dyn # perform operation
fdiv.s f27, f30, f2, rdn # perform operation
fdiv.s f27, f30, f2, rmm # perform operation
fdiv.s f27, f30, f2, rne # perform operation
fdiv.s f27, f30, f2, rtz # perform operation
fdiv.s f27, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x25, 0xd9d180b3838a7b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fdiv.s f25, f26, f22, dyn # perform operation
fdiv.s f25, f26, f22, rdn # perform operation
fdiv.s f25, f26, f22, rmm # perform operation
fdiv.s f25, f26, f22, rne # perform operation
fdiv.s f25, f26, f22, rtz # perform operation
fdiv.s f25, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x23, 0x85d784a5d2df4fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fdiv.s f23, f5, f6, dyn # perform operation
fdiv.s f23, f5, f6, rdn # perform operation
fdiv.s f23, f5, f6, rmm # perform operation
fdiv.s f23, f5, f6, rne # perform operation
fdiv.s f23, f5, f6, rtz # perform operation
fdiv.s f23, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x21, 0xa1a9c6023e6f69c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fdiv.s f21, f16, f11, dyn # perform operation
fdiv.s f21, f16, f11, rdn # perform operation
fdiv.s f21, f16, f11, rmm # perform operation
fdiv.s f21, f16, f11, rne # perform operation
fdiv.s f21, f16, f11, rtz # perform operation
fdiv.s f21, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x29, 0xb523363d90026298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fdiv.s f29, f18, f10, dyn # perform operation
fdiv.s f29, f18, f10, rdn # perform operation
fdiv.s f29, f18, f10, rmm # perform operation
fdiv.s f29, f18, f10, rne # perform operation
fdiv.s f29, f18, f10, rtz # perform operation
fdiv.s f29, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x13, 0xf75ddbb7a483b487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fdiv.s f13, f15, f3, dyn # perform operation
fdiv.s f13, f15, f3, rdn # perform operation
fdiv.s f13, f15, f3, rmm # perform operation
fdiv.s f13, f15, f3, rne # perform operation
fdiv.s f13, f15, f3, rtz # perform operation
fdiv.s f13, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x31, 0x78858346f3441207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f31, f26, f16, dyn # perform operation
fdiv.s f31, f26, f16, rdn # perform operation
fdiv.s f31, f26, f16, rmm # perform operation
fdiv.s f31, f26, f16, rne # perform operation
fdiv.s f31, f26, f16, rtz # perform operation
fdiv.s f31, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x15, 0xfff4023e68785adf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fdiv.s f15, f21, f24, dyn # perform operation
fdiv.s f15, f21, f24, rdn # perform operation
fdiv.s f15, f21, f24, rmm # perform operation
fdiv.s f15, f21, f24, rne # perform operation
fdiv.s f15, f21, f24, rtz # perform operation
fdiv.s f15, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x1, 0x891c92c782922cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fdiv.s f1, f2, f18, dyn # perform operation
fdiv.s f1, f2, f18, rdn # perform operation
fdiv.s f1, f2, f18, rmm # perform operation
fdiv.s f1, f2, f18, rne # perform operation
fdiv.s f1, f2, f18, rtz # perform operation
fdiv.s f1, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x19, 0x8a09e464c2eb3198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fdiv.s f19, f15, f30, dyn # perform operation
fdiv.s f19, f15, f30, rdn # perform operation
fdiv.s f19, f15, f30, rmm # perform operation
fdiv.s f19, f15, f30, rne # perform operation
fdiv.s f19, f15, f30, rtz # perform operation
fdiv.s f19, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x20, 0xc917d90406d04fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
fdiv.s f20, f28, f4, dyn # perform operation
fdiv.s f20, f28, f4, rdn # perform operation
fdiv.s f20, f28, f4, rmm # perform operation
fdiv.s f20, f28, f4, rne # perform operation
fdiv.s f20, f28, f4, rtz # perform operation
fdiv.s f20, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x22, 0xc13a8372a46f2dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fdiv.s f22, f14, f30, dyn # perform operation
fdiv.s f22, f14, f30, rdn # perform operation
fdiv.s f22, f14, f30, rmm # perform operation
fdiv.s f22, f14, f30, rne # perform operation
fdiv.s f22, f14, f30, rtz # perform operation
fdiv.s f22, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x16, 0x16b8997155c0fc33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fdiv.s f16, f12, f4, dyn # perform operation
fdiv.s f16, f12, f4, rdn # perform operation
fdiv.s f16, f12, f4, rmm # perform operation
fdiv.s f16, f12, f4, rne # perform operation
fdiv.s f16, f12, f4, rtz # perform operation
fdiv.s f16, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x26, 0x092fecb257d363a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fdiv.s f26, f21, f8, dyn # perform operation
fdiv.s f26, f21, f8, rdn # perform operation
fdiv.s f26, f21, f8, rmm # perform operation
fdiv.s f26, f21, f8, rne # perform operation
fdiv.s f26, f21, f8, rtz # perform operation
fdiv.s f26, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x10, 0x4f69e059243b1008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f10, f2, f5, dyn # perform operation
fdiv.s f10, f2, f5, rdn # perform operation
fdiv.s f10, f2, f5, rmm # perform operation
fdiv.s f10, f2, f5, rne # perform operation
fdiv.s f10, f2, f5, rtz # perform operation
fdiv.s f10, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x24, 0x540db870943f18b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fdiv.s f24, f2, f10, dyn # perform operation
fdiv.s f24, f2, f10, rdn # perform operation
fdiv.s f24, f2, f10, rmm # perform operation
fdiv.s f24, f2, f10, rne # perform operation
fdiv.s f24, f2, f10, rtz # perform operation
fdiv.s f24, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x30, 0x8de5e524fec15c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fdiv.s f30, f8, f11, dyn # perform operation
fdiv.s f30, f8, f11, rdn # perform operation
fdiv.s f30, f8, f11, rmm # perform operation
fdiv.s f30, f8, f11, rne # perform operation
fdiv.s f30, f8, f11, rtz # perform operation
fdiv.s f30, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x30, 0x313b2853ac340627 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fdiv.s f30, f3, f9, dyn # perform operation
fdiv.s f30, f3, f9, rdn # perform operation
fdiv.s f30, f3, f9, rmm # perform operation
fdiv.s f30, f3, f9, rne # perform operation
fdiv.s f30, f3, f9, rtz # perform operation
fdiv.s f30, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x30, 0x6eeeb91bfecd780e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fdiv.s f30, f10, f7, dyn # perform operation
fdiv.s f30, f10, f7, rdn # perform operation
fdiv.s f30, f10, f7, rmm # perform operation
fdiv.s f30, f10, f7, rne # perform operation
fdiv.s f30, f10, f7, rtz # perform operation
fdiv.s f30, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x28, 0xfe30351cb333132c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fdiv.s f28, f3, f13, dyn # perform operation
fdiv.s f28, f3, f13, rdn # perform operation
fdiv.s f28, f3, f13, rmm # perform operation
fdiv.s f28, f3, f13, rne # perform operation
fdiv.s f28, f3, f13, rtz # perform operation
fdiv.s f28, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x16, 0x07d9324dfc4e1fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fdiv.s f16, f12, f3, dyn # perform operation
fdiv.s f16, f12, f3, rdn # perform operation
fdiv.s f16, f12, f3, rmm # perform operation
fdiv.s f16, f12, f3, rne # perform operation
fdiv.s f16, f12, f3, rtz # perform operation
fdiv.s f16, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x4, 0x1d384c435f5d4527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f4, f10, f15, dyn # perform operation
fdiv.s f4, f10, f15, rdn # perform operation
fdiv.s f4, f10, f15, rmm # perform operation
fdiv.s f4, f10, f15, rne # perform operation
fdiv.s f4, f10, f15, rtz # perform operation
fdiv.s f4, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x20, 0xa709c212e58e7489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fdiv.s f20, f15, f2, dyn # perform operation
fdiv.s f20, f15, f2, rdn # perform operation
fdiv.s f20, f15, f2, rmm # perform operation
fdiv.s f20, f15, f2, rne # perform operation
fdiv.s f20, f15, f2, rtz # perform operation
fdiv.s f20, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x31, 0x6436b9c22a678354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fdiv.s f31, f7, f18, dyn # perform operation
fdiv.s f31, f7, f18, rdn # perform operation
fdiv.s f31, f7, f18, rmm # perform operation
fdiv.s f31, f7, f18, rne # perform operation
fdiv.s f31, f7, f18, rtz # perform operation
fdiv.s f31, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x29, 0x0841ab0bbc4c79e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fdiv.s f29, f16, f17, dyn # perform operation
fdiv.s f29, f16, f17, rdn # perform operation
fdiv.s f29, f16, f17, rmm # perform operation
fdiv.s f29, f16, f17, rne # perform operation
fdiv.s f29, f16, f17, rtz # perform operation
fdiv.s f29, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x2, 0x11b51a8aa861a997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fdiv.s f2, f7, f22, dyn # perform operation
fdiv.s f2, f7, f22, rdn # perform operation
fdiv.s f2, f7, f22, rmm # perform operation
fdiv.s f2, f7, f22, rne # perform operation
fdiv.s f2, f7, f22, rtz # perform operation
fdiv.s f2, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x20, 0x4afcbbf0eec45739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.s f20, f6, f7, dyn # perform operation
fdiv.s f20, f6, f7, rdn # perform operation
fdiv.s f20, f6, f7, rmm # perform operation
fdiv.s f20, f6, f7, rne # perform operation
fdiv.s f20, f6, f7, rtz # perform operation
fdiv.s f20, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x7, 0x9a03cd58d893ac88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fdiv.s f7, f27, f19, dyn # perform operation
fdiv.s f7, f27, f19, rdn # perform operation
fdiv.s f7, f27, f19, rmm # perform operation
fdiv.s f7, f27, f19, rne # perform operation
fdiv.s f7, f27, f19, rtz # perform operation
fdiv.s f7, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x19, 0xf7421ee2906d2150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fdiv.s f19, f4, f18, dyn # perform operation
fdiv.s f19, f4, f18, rdn # perform operation
fdiv.s f19, f4, f18, rmm # perform operation
fdiv.s f19, f4, f18, rne # perform operation
fdiv.s f19, f4, f18, rtz # perform operation
fdiv.s f19, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x22, 0x7aa8a4120bc1801a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fdiv.s f22, f9, f18, dyn # perform operation
fdiv.s f22, f9, f18, rdn # perform operation
fdiv.s f22, f9, f18, rmm # perform operation
fdiv.s f22, f9, f18, rne # perform operation
fdiv.s f22, f9, f18, rtz # perform operation
fdiv.s f22, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x16, 0xe022d39fcc058378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fdiv.s f16, f4, f15, dyn # perform operation
fdiv.s f16, f4, f15, rdn # perform operation
fdiv.s f16, f4, f15, rmm # perform operation
fdiv.s f16, f4, f15, rne # perform operation
fdiv.s f16, f4, f15, rtz # perform operation
fdiv.s f16, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x4, 0xfe0d326dc344da24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fdiv.s f4, f18, f21, dyn # perform operation
fdiv.s f4, f18, f21, rdn # perform operation
fdiv.s f4, f18, f21, rmm # perform operation
fdiv.s f4, f18, f21, rne # perform operation
fdiv.s f4, f18, f21, rtz # perform operation
fdiv.s f4, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x1, 0xf7f0b837019410ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fdiv.s f1, f3, f23, dyn # perform operation
fdiv.s f1, f3, f23, rdn # perform operation
fdiv.s f1, f3, f23, rmm # perform operation
fdiv.s f1, f3, f23, rne # perform operation
fdiv.s f1, f3, f23, rtz # perform operation
fdiv.s f1, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x28, 0x1070f55abf04f0be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fdiv.s f28, f20, f6, dyn # perform operation
fdiv.s f28, f20, f6, rdn # perform operation
fdiv.s f28, f20, f6, rmm # perform operation
fdiv.s f28, f20, f6, rne # perform operation
fdiv.s f28, f20, f6, rtz # perform operation
fdiv.s f28, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x25, 0xa93d6a77c512ac88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fdiv.s f25, f17, f22, dyn # perform operation
fdiv.s f25, f17, f22, rdn # perform operation
fdiv.s f25, f17, f22, rmm # perform operation
fdiv.s f25, f17, f22, rne # perform operation
fdiv.s f25, f17, f22, rtz # perform operation
fdiv.s f25, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x7, 0xa4548efc88192939 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fdiv.s f7, f1, f11, dyn # perform operation
fdiv.s f7, f1, f11, rdn # perform operation
fdiv.s f7, f1, f11, rmm # perform operation
fdiv.s f7, f1, f11, rne # perform operation
fdiv.s f7, f1, f11, rtz # perform operation
fdiv.s f7, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x6, 0xe28e4463628c7b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fdiv.s f6, f10, f12, dyn # perform operation
fdiv.s f6, f10, f12, rdn # perform operation
fdiv.s f6, f10, f12, rmm # perform operation
fdiv.s f6, f10, f12, rne # perform operation
fdiv.s f6, f10, f12, rtz # perform operation
fdiv.s f6, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x10, 0xf517ab146dc45e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fdiv.s f10, f13, f9, dyn # perform operation
fdiv.s f10, f13, f9, rdn # perform operation
fdiv.s f10, f13, f9, rmm # perform operation
fdiv.s f10, f13, f9, rne # perform operation
fdiv.s f10, f13, f9, rtz # perform operation
fdiv.s f10, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x20, 0x9070790c63dc3ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fdiv.s f20, f21, f23, dyn # perform operation
fdiv.s f20, f21, f23, rdn # perform operation
fdiv.s f20, f21, f23, rmm # perform operation
fdiv.s f20, f21, f23, rne # perform operation
fdiv.s f20, f21, f23, rtz # perform operation
fdiv.s f20, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x25, 0xec793d3c68ffc020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fdiv.s f25, f15, f23, dyn # perform operation
fdiv.s f25, f15, f23, rdn # perform operation
fdiv.s f25, f15, f23, rmm # perform operation
fdiv.s f25, f15, f23, rne # perform operation
fdiv.s f25, f15, f23, rtz # perform operation
fdiv.s f25, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x28, 0xc35f4687b89760c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fdiv.s f28, f5, f9, dyn # perform operation
fdiv.s f28, f5, f9, rdn # perform operation
fdiv.s f28, f5, f9, rmm # perform operation
fdiv.s f28, f5, f9, rne # perform operation
fdiv.s f28, f5, f9, rtz # perform operation
fdiv.s f28, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x15, 0xd24503b62940ab51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fdiv.s f15, f26, f25, dyn # perform operation
fdiv.s f15, f26, f25, rdn # perform operation
fdiv.s f15, f26, f25, rmm # perform operation
fdiv.s f15, f26, f25, rne # perform operation
fdiv.s f15, f26, f25, rtz # perform operation
fdiv.s f15, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x28, 0xcac392feef60735a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.s f28, f14, f13, dyn # perform operation
fdiv.s f28, f14, f13, rdn # perform operation
fdiv.s f28, f14, f13, rmm # perform operation
fdiv.s f28, f14, f13, rne # perform operation
fdiv.s f28, f14, f13, rtz # perform operation
fdiv.s f28, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x24, 0x131a6112b60043c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fdiv.s f24, f12, f6, dyn # perform operation
fdiv.s f24, f12, f6, rdn # perform operation
fdiv.s f24, f12, f6, rmm # perform operation
fdiv.s f24, f12, f6, rne # perform operation
fdiv.s f24, f12, f6, rtz # perform operation
fdiv.s f24, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x11, 0xad5dcf9aeabb1137 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fdiv.s f11, f31, f28, dyn # perform operation
fdiv.s f11, f31, f28, rdn # perform operation
fdiv.s f11, f31, f28, rmm # perform operation
fdiv.s f11, f31, f28, rne # perform operation
fdiv.s f11, f31, f28, rtz # perform operation
fdiv.s f11, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x2, 0x9a06b5ee2eb14800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fdiv.s f2, f5, f3, dyn # perform operation
fdiv.s f2, f5, f3, rdn # perform operation
fdiv.s f2, f5, f3, rmm # perform operation
fdiv.s f2, f5, f3, rne # perform operation
fdiv.s f2, f5, f3, rtz # perform operation
fdiv.s f2, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x25, 0xcadd697fbcca9fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fdiv.s f25, f19, f15, dyn # perform operation
fdiv.s f25, f19, f15, rdn # perform operation
fdiv.s f25, f19, f15, rmm # perform operation
fdiv.s f25, f19, f15, rne # perform operation
fdiv.s f25, f19, f15, rtz # perform operation
fdiv.s f25, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x12, 0x6158a511959c813a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fdiv.s f12, f17, f10, dyn # perform operation
fdiv.s f12, f17, f10, rdn # perform operation
fdiv.s f12, f17, f10, rmm # perform operation
fdiv.s f12, f17, f10, rne # perform operation
fdiv.s f12, f17, f10, rtz # perform operation
fdiv.s f12, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x15, 0x11518fd44c1b4c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fdiv.s f15, f26, f23, dyn # perform operation
fdiv.s f15, f26, f23, rdn # perform operation
fdiv.s f15, f26, f23, rmm # perform operation
fdiv.s f15, f26, f23, rne # perform operation
fdiv.s f15, f26, f23, rtz # perform operation
fdiv.s f15, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x19, 0xe752f63a1ad9e4d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fdiv.s f19, f3, f8, dyn # perform operation
fdiv.s f19, f3, f8, rdn # perform operation
fdiv.s f19, f3, f8, rmm # perform operation
fdiv.s f19, f3, f8, rne # perform operation
fdiv.s f19, f3, f8, rtz # perform operation
fdiv.s f19, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x19, 0x9b72f71d4fe729e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fdiv.s f19, f20, f29, dyn # perform operation
fdiv.s f19, f20, f29, rdn # perform operation
fdiv.s f19, f20, f29, rmm # perform operation
fdiv.s f19, f20, f29, rne # perform operation
fdiv.s f19, f20, f29, rtz # perform operation
fdiv.s f19, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x22, 0xb34e60aa189ffe52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fdiv.s f22, f18, f26, dyn # perform operation
fdiv.s f22, f18, f26, rdn # perform operation
fdiv.s f22, f18, f26, rmm # perform operation
fdiv.s f22, f18, f26, rne # perform operation
fdiv.s f22, f18, f26, rtz # perform operation
fdiv.s f22, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x8, 0xa2eb828d5954af9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fdiv.s f8, f21, f13, dyn # perform operation
fdiv.s f8, f21, f13, rdn # perform operation
fdiv.s f8, f21, f13, rmm # perform operation
fdiv.s f8, f21, f13, rne # perform operation
fdiv.s f8, f21, f13, rtz # perform operation
fdiv.s f8, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x2, 0x98eccfb35d0d229a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fdiv.s f2, f29, f27, dyn # perform operation
fdiv.s f2, f29, f27, rdn # perform operation
fdiv.s f2, f29, f27, rmm # perform operation
fdiv.s f2, f29, f27, rne # perform operation
fdiv.s f2, f29, f27, rtz # perform operation
fdiv.s f2, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x26, 0xb974d8685642335d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fdiv.s f26, f13, f28, dyn # perform operation
fdiv.s f26, f13, f28, rdn # perform operation
fdiv.s f26, f13, f28, rmm # perform operation
fdiv.s f26, f13, f28, rne # perform operation
fdiv.s f26, f13, f28, rtz # perform operation
fdiv.s f26, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x12, 0x0e66b73629ed6707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fdiv.s f12, f3, f2, dyn # perform operation
fdiv.s f12, f3, f2, rdn # perform operation
fdiv.s f12, f3, f2, rmm # perform operation
fdiv.s f12, f3, f2, rne # perform operation
fdiv.s f12, f3, f2, rtz # perform operation
fdiv.s f12, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x13, 0x1965aee6728266d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fdiv.s f13, f7, f21, dyn # perform operation
fdiv.s f13, f7, f21, rdn # perform operation
fdiv.s f13, f7, f21, rmm # perform operation
fdiv.s f13, f7, f21, rne # perform operation
fdiv.s f13, f7, f21, rtz # perform operation
fdiv.s f13, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x7, 0xccf275493a702230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fdiv.s f7, f2, f6, dyn # perform operation
fdiv.s f7, f2, f6, rdn # perform operation
fdiv.s f7, f2, f6, rmm # perform operation
fdiv.s f7, f2, f6, rne # perform operation
fdiv.s f7, f2, f6, rtz # perform operation
fdiv.s f7, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x30, 0xeff3532e8bfd27b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fdiv.s f30, f24, f18, dyn # perform operation
fdiv.s f30, f24, f18, rdn # perform operation
fdiv.s f30, f24, f18, rmm # perform operation
fdiv.s f30, f24, f18, rne # perform operation
fdiv.s f30, f24, f18, rtz # perform operation
fdiv.s f30, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x30, 0x62141e046928a1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fdiv.s f30, f14, f24, dyn # perform operation
fdiv.s f30, f14, f24, rdn # perform operation
fdiv.s f30, f14, f24, rmm # perform operation
fdiv.s f30, f14, f24, rne # perform operation
fdiv.s f30, f14, f24, rtz # perform operation
fdiv.s f30, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x1, 0x96a1ec84840014d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fdiv.s f1, f22, f25, dyn # perform operation
fdiv.s f1, f22, f25, rdn # perform operation
fdiv.s f1, f22, f25, rmm # perform operation
fdiv.s f1, f22, f25, rne # perform operation
fdiv.s f1, f22, f25, rtz # perform operation
fdiv.s f1, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x10, 0x9749826e58433102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fdiv.s f10, f30, f25, dyn # perform operation
fdiv.s f10, f30, f25, rdn # perform operation
fdiv.s f10, f30, f25, rmm # perform operation
fdiv.s f10, f30, f25, rne # perform operation
fdiv.s f10, f30, f25, rtz # perform operation
fdiv.s f10, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x3, 0xf37011823548f2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fdiv.s f3, f29, f21, dyn # perform operation
fdiv.s f3, f29, f21, rdn # perform operation
fdiv.s f3, f29, f21, rmm # perform operation
fdiv.s f3, f29, f21, rne # perform operation
fdiv.s f3, f29, f21, rtz # perform operation
fdiv.s f3, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x30, 0x3ca0e4565ab93a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fdiv.s f30, f14, f3, dyn # perform operation
fdiv.s f30, f14, f3, rdn # perform operation
fdiv.s f30, f14, f3, rmm # perform operation
fdiv.s f30, f14, f3, rne # perform operation
fdiv.s f30, f14, f3, rtz # perform operation
fdiv.s f30, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x24, 0x515526c9629bcc7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fdiv.s f24, f27, f6, dyn # perform operation
fdiv.s f24, f27, f6, rdn # perform operation
fdiv.s f24, f27, f6, rmm # perform operation
fdiv.s f24, f27, f6, rne # perform operation
fdiv.s f24, f27, f6, rtz # perform operation
fdiv.s f24, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x10, 0x3eb4574ae65be710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fdiv.s f10, f27, f3, dyn # perform operation
fdiv.s f10, f27, f3, rdn # perform operation
fdiv.s f10, f27, f3, rmm # perform operation
fdiv.s f10, f27, f3, rne # perform operation
fdiv.s f10, f27, f3, rtz # perform operation
fdiv.s f10, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x29, 0xe4b3d0a0079727b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fdiv.s f29, f18, f28, dyn # perform operation
fdiv.s f29, f18, f28, rdn # perform operation
fdiv.s f29, f18, f28, rmm # perform operation
fdiv.s f29, f18, f28, rne # perform operation
fdiv.s f29, f18, f28, rtz # perform operation
fdiv.s f29, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x10, 0xc5e91210310c90fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fdiv.s f10, f13, f21, dyn # perform operation
fdiv.s f10, f13, f21, rdn # perform operation
fdiv.s f10, f13, f21, rmm # perform operation
fdiv.s f10, f13, f21, rne # perform operation
fdiv.s f10, f13, f21, rtz # perform operation
fdiv.s f10, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x8, 0xb856ecf1e05ef7be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fdiv.s f8, f27, f29, dyn # perform operation
fdiv.s f8, f27, f29, rdn # perform operation
fdiv.s f8, f27, f29, rmm # perform operation
fdiv.s f8, f27, f29, rne # perform operation
fdiv.s f8, f27, f29, rtz # perform operation
fdiv.s f8, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x29, 0xe7a53fe39d76ee89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fdiv.s f29, f6, f10, dyn # perform operation
fdiv.s f29, f6, f10, rdn # perform operation
fdiv.s f29, f6, f10, rmm # perform operation
fdiv.s f29, f6, f10, rne # perform operation
fdiv.s f29, f6, f10, rtz # perform operation
fdiv.s f29, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x5, 0x093cfdea5784ebb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fdiv.s f5, f2, f30, dyn # perform operation
fdiv.s f5, f2, f30, rdn # perform operation
fdiv.s f5, f2, f30, rmm # perform operation
fdiv.s f5, f2, f30, rne # perform operation
fdiv.s f5, f2, f30, rtz # perform operation
fdiv.s f5, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x20, 0xa1873b388a2eac27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fdiv.s f20, f8, f12, dyn # perform operation
fdiv.s f20, f8, f12, rdn # perform operation
fdiv.s f20, f8, f12, rmm # perform operation
fdiv.s f20, f8, f12, rne # perform operation
fdiv.s f20, f8, f12, rtz # perform operation
fdiv.s f20, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x23, 0xc8a98827ddce8347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fdiv.s f23, f9, f5, dyn # perform operation
fdiv.s f23, f9, f5, rdn # perform operation
fdiv.s f23, f9, f5, rmm # perform operation
fdiv.s f23, f9, f5, rne # perform operation
fdiv.s f23, f9, f5, rtz # perform operation
fdiv.s f23, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x13, 0x81c981738171000b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f13, f10, f12, dyn # perform operation
fdiv.s f13, f10, f12, rdn # perform operation
fdiv.s f13, f10, f12, rmm # perform operation
fdiv.s f13, f10, f12, rne # perform operation
fdiv.s f13, f10, f12, rtz # perform operation
fdiv.s f13, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x27, 0x899ef4eb1986a8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fdiv.s f27, f17, f21, dyn # perform operation
fdiv.s f27, f17, f21, rdn # perform operation
fdiv.s f27, f17, f21, rmm # perform operation
fdiv.s f27, f17, f21, rne # perform operation
fdiv.s f27, f17, f21, rtz # perform operation
fdiv.s f27, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x9, 0x7546cbe409a12b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fdiv.s f9, f18, f3, dyn # perform operation
fdiv.s f9, f18, f3, rdn # perform operation
fdiv.s f9, f18, f3, rmm # perform operation
fdiv.s f9, f18, f3, rne # perform operation
fdiv.s f9, f18, f3, rtz # perform operation
fdiv.s f9, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x24, 0xa45e4fa7c5796b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fdiv.s f24, f7, f27, dyn # perform operation
fdiv.s f24, f7, f27, rdn # perform operation
fdiv.s f24, f7, f27, rmm # perform operation
fdiv.s f24, f7, f27, rne # perform operation
fdiv.s f24, f7, f27, rtz # perform operation
fdiv.s f24, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x6, 0xfd51a4d51cd4f6dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fdiv.s f6, f7, f9, dyn # perform operation
fdiv.s f6, f7, f9, rdn # perform operation
fdiv.s f6, f7, f9, rmm # perform operation
fdiv.s f6, f7, f9, rne # perform operation
fdiv.s f6, f7, f9, rtz # perform operation
fdiv.s f6, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x9, 0x2e3a923a25a15cbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.s f9, f28, f14, dyn # perform operation
fdiv.s f9, f28, f14, rdn # perform operation
fdiv.s f9, f28, f14, rmm # perform operation
fdiv.s f9, f28, f14, rne # perform operation
fdiv.s f9, f28, f14, rtz # perform operation
fdiv.s f9, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x7, 0xd80aa7924ae36968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fdiv.s f7, f17, f24, dyn # perform operation
fdiv.s f7, f17, f24, rdn # perform operation
fdiv.s f7, f17, f24, rmm # perform operation
fdiv.s f7, f17, f24, rne # perform operation
fdiv.s f7, f17, f24, rtz # perform operation
fdiv.s f7, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x11, 0x688b40fad9ec5f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fdiv.s f11, f24, f28, dyn # perform operation
fdiv.s f11, f24, f28, rdn # perform operation
fdiv.s f11, f24, f28, rmm # perform operation
fdiv.s f11, f24, f28, rne # perform operation
fdiv.s f11, f24, f28, rtz # perform operation
fdiv.s f11, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x14, 0xeed8917b435a035f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fdiv.s f14, f20, f21, dyn # perform operation
fdiv.s f14, f20, f21, rdn # perform operation
fdiv.s f14, f20, f21, rmm # perform operation
fdiv.s f14, f20, f21, rne # perform operation
fdiv.s f14, f20, f21, rtz # perform operation
fdiv.s f14, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x11, 0x0e748f6c834a7600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fdiv.s f11, f4, f21, dyn # perform operation
fdiv.s f11, f4, f21, rdn # perform operation
fdiv.s f11, f4, f21, rmm # perform operation
fdiv.s f11, f4, f21, rne # perform operation
fdiv.s f11, f4, f21, rtz # perform operation
fdiv.s f11, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x19, 0x6930a512c6b58b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fdiv.s f19, f3, f29, dyn # perform operation
fdiv.s f19, f3, f29, rdn # perform operation
fdiv.s f19, f3, f29, rmm # perform operation
fdiv.s f19, f3, f29, rne # perform operation
fdiv.s f19, f3, f29, rtz # perform operation
fdiv.s f19, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x24, 0x3e0481aa059abb96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fdiv.s f24, f31, f27, dyn # perform operation
fdiv.s f24, f31, f27, rdn # perform operation
fdiv.s f24, f31, f27, rmm # perform operation
fdiv.s f24, f31, f27, rne # perform operation
fdiv.s f24, f31, f27, rtz # perform operation
fdiv.s f24, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x22, 0x671edd95aeb9fa02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fdiv.s f22, f19, f7, dyn # perform operation
fdiv.s f22, f19, f7, rdn # perform operation
fdiv.s f22, f19, f7, rmm # perform operation
fdiv.s f22, f19, f7, rne # perform operation
fdiv.s f22, f19, f7, rtz # perform operation
fdiv.s f22, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x15, 0x5adee1cc16f6dcb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fdiv.s f15, f5, f4, dyn # perform operation
fdiv.s f15, f5, f4, rdn # perform operation
fdiv.s f15, f5, f4, rmm # perform operation
fdiv.s f15, f5, f4, rne # perform operation
fdiv.s f15, f5, f4, rtz # perform operation
fdiv.s f15, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x28, 0x6cc2bed5a7d4532b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fdiv.s f28, f31, f23, dyn # perform operation
fdiv.s f28, f31, f23, rdn # perform operation
fdiv.s f28, f31, f23, rmm # perform operation
fdiv.s f28, f31, f23, rne # perform operation
fdiv.s f28, f31, f23, rtz # perform operation
fdiv.s f28, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x28, 0x87bf1721510a6cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fdiv.s f28, f29, f6, dyn # perform operation
fdiv.s f28, f29, f6, rdn # perform operation
fdiv.s f28, f29, f6, rmm # perform operation
fdiv.s f28, f29, f6, rne # perform operation
fdiv.s f28, f29, f6, rtz # perform operation
fdiv.s f28, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x17, 0x2c5a54f10e1f612d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fdiv.s f17, f18, f28, dyn # perform operation
fdiv.s f17, f18, f28, rdn # perform operation
fdiv.s f17, f18, f28, rmm # perform operation
fdiv.s f17, f18, f28, rne # perform operation
fdiv.s f17, f18, f28, rtz # perform operation
fdiv.s f17, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x24, 0xe9c1b6d09fedc69f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f24, f6, f29, dyn # perform operation
fdiv.s f24, f6, f29, rdn # perform operation
fdiv.s f24, f6, f29, rmm # perform operation
fdiv.s f24, f6, f29, rne # perform operation
fdiv.s f24, f6, f29, rtz # perform operation
fdiv.s f24, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x8, 0x2379c241198b2cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fdiv.s f8, f13, f25, dyn # perform operation
fdiv.s f8, f13, f25, rdn # perform operation
fdiv.s f8, f13, f25, rmm # perform operation
fdiv.s f8, f13, f25, rne # perform operation
fdiv.s f8, f13, f25, rtz # perform operation
fdiv.s f8, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x29, 0x0886ed32f9a31bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fdiv.s f29, f14, f2, dyn # perform operation
fdiv.s f29, f14, f2, rdn # perform operation
fdiv.s f29, f14, f2, rmm # perform operation
fdiv.s f29, f14, f2, rne # perform operation
fdiv.s f29, f14, f2, rtz # perform operation
fdiv.s f29, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x21, 0xbdcbc49c6d26313d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fdiv.s f21, f23, f30, dyn # perform operation
fdiv.s f21, f23, f30, rdn # perform operation
fdiv.s f21, f23, f30, rmm # perform operation
fdiv.s f21, f23, f30, rne # perform operation
fdiv.s f21, f23, f30, rtz # perform operation
fdiv.s f21, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x1, 0x87c2ab85d58544eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f1, f8, f15, dyn # perform operation
fdiv.s f1, f8, f15, rdn # perform operation
fdiv.s f1, f8, f15, rmm # perform operation
fdiv.s f1, f8, f15, rne # perform operation
fdiv.s f1, f8, f15, rtz # perform operation
fdiv.s f1, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x20, 0x8b239dc28a542031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fdiv.s f20, f2, f16, dyn # perform operation
fdiv.s f20, f2, f16, rdn # perform operation
fdiv.s f20, f2, f16, rmm # perform operation
fdiv.s f20, f2, f16, rne # perform operation
fdiv.s f20, f2, f16, rtz # perform operation
fdiv.s f20, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x18, 0xbe67515db61f1ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f18, f3, f11, dyn # perform operation
fdiv.s f18, f3, f11, rdn # perform operation
fdiv.s f18, f3, f11, rmm # perform operation
fdiv.s f18, f3, f11, rne # perform operation
fdiv.s f18, f3, f11, rtz # perform operation
fdiv.s f18, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x7, 0x69ff0ea513d40ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fdiv.s f7, f27, f16, dyn # perform operation
fdiv.s f7, f27, f16, rdn # perform operation
fdiv.s f7, f27, f16, rmm # perform operation
fdiv.s f7, f27, f16, rne # perform operation
fdiv.s f7, f27, f16, rtz # perform operation
fdiv.s f7, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x31, 0xc931e47296438fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fdiv.s f31, f8, f15, dyn # perform operation
fdiv.s f31, f8, f15, rdn # perform operation
fdiv.s f31, f8, f15, rmm # perform operation
fdiv.s f31, f8, f15, rne # perform operation
fdiv.s f31, f8, f15, rtz # perform operation
fdiv.s f31, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x3, 0x1d249da675d498ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fdiv.s f3, f18, f21, dyn # perform operation
fdiv.s f3, f18, f21, rdn # perform operation
fdiv.s f3, f18, f21, rmm # perform operation
fdiv.s f3, f18, f21, rne # perform operation
fdiv.s f3, f18, f21, rtz # perform operation
fdiv.s f3, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x26, 0x1ae09c496caa2590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fdiv.s f26, f5, f18, dyn # perform operation
fdiv.s f26, f5, f18, rdn # perform operation
fdiv.s f26, f5, f18, rmm # perform operation
fdiv.s f26, f5, f18, rne # perform operation
fdiv.s f26, f5, f18, rtz # perform operation
fdiv.s f26, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x24, 0x8d85120b25a9398a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fdiv.s f24, f31, f16, dyn # perform operation
fdiv.s f24, f31, f16, rdn # perform operation
fdiv.s f24, f31, f16, rmm # perform operation
fdiv.s f24, f31, f16, rne # perform operation
fdiv.s f24, f31, f16, rtz # perform operation
fdiv.s f24, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x17, 0xeaf31cbd8d566d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fdiv.s f17, f6, f28, dyn # perform operation
fdiv.s f17, f6, f28, rdn # perform operation
fdiv.s f17, f6, f28, rmm # perform operation
fdiv.s f17, f6, f28, rne # perform operation
fdiv.s f17, f6, f28, rtz # perform operation
fdiv.s f17, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x28, 0xaa9859311704a8d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fdiv.s f28, f4, f29, dyn # perform operation
fdiv.s f28, f4, f29, rdn # perform operation
fdiv.s f28, f4, f29, rmm # perform operation
fdiv.s f28, f4, f29, rne # perform operation
fdiv.s f28, f4, f29, rtz # perform operation
fdiv.s f28, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x10, 0x0d3e9f032f459b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.s f10, f1, f2, dyn # perform operation
fdiv.s f10, f1, f2, rdn # perform operation
fdiv.s f10, f1, f2, rmm # perform operation
fdiv.s f10, f1, f2, rne # perform operation
fdiv.s f10, f1, f2, rtz # perform operation
fdiv.s f10, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x6, 0x116b445404e3242a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fdiv.s f6, f29, f28, dyn # perform operation
fdiv.s f6, f29, f28, rdn # perform operation
fdiv.s f6, f29, f28, rmm # perform operation
fdiv.s f6, f29, f28, rne # perform operation
fdiv.s f6, f29, f28, rtz # perform operation
fdiv.s f6, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x11, 0x0a1e293afc95b8af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fdiv.s f11, f26, f18, dyn # perform operation
fdiv.s f11, f26, f18, rdn # perform operation
fdiv.s f11, f26, f18, rmm # perform operation
fdiv.s f11, f26, f18, rne # perform operation
fdiv.s f11, f26, f18, rtz # perform operation
fdiv.s f11, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x23, 0x63bfa57d7664118f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fdiv.s f23, f17, f8, dyn # perform operation
fdiv.s f23, f17, f8, rdn # perform operation
fdiv.s f23, f17, f8, rmm # perform operation
fdiv.s f23, f17, f8, rne # perform operation
fdiv.s f23, f17, f8, rtz # perform operation
fdiv.s f23, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x9, 0x7aef37c300225e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fdiv.s f9, f2, f24, dyn # perform operation
fdiv.s f9, f2, f24, rdn # perform operation
fdiv.s f9, f2, f24, rmm # perform operation
fdiv.s f9, f2, f24, rne # perform operation
fdiv.s f9, f2, f24, rtz # perform operation
fdiv.s f9, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x30, 0xf87c76a3f2f401e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fdiv.s f30, f20, f14, dyn # perform operation
fdiv.s f30, f20, f14, rdn # perform operation
fdiv.s f30, f20, f14, rmm # perform operation
fdiv.s f30, f20, f14, rne # perform operation
fdiv.s f30, f20, f14, rtz # perform operation
fdiv.s f30, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x21, 0xa407f060b2e5856e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fdiv.s f21, f25, f12, dyn # perform operation
fdiv.s f21, f25, f12, rdn # perform operation
fdiv.s f21, f25, f12, rmm # perform operation
fdiv.s f21, f25, f12, rne # perform operation
fdiv.s f21, f25, f12, rtz # perform operation
fdiv.s f21, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x29, 0x07a742ab74f3f6ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fdiv.s f29, f11, f19, dyn # perform operation
fdiv.s f29, f11, f19, rdn # perform operation
fdiv.s f29, f11, f19, rmm # perform operation
fdiv.s f29, f11, f19, rne # perform operation
fdiv.s f29, f11, f19, rtz # perform operation
fdiv.s f29, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x5, 0xbc4eeed5aca6c06c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fdiv.s f5, f1, f19, dyn # perform operation
fdiv.s f5, f1, f19, rdn # perform operation
fdiv.s f5, f1, f19, rmm # perform operation
fdiv.s f5, f1, f19, rne # perform operation
fdiv.s f5, f1, f19, rtz # perform operation
fdiv.s f5, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x17, 0x4457e2370a0de8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fdiv.s f17, f12, f8, dyn # perform operation
fdiv.s f17, f12, f8, rdn # perform operation
fdiv.s f17, f12, f8, rmm # perform operation
fdiv.s f17, f12, f8, rne # perform operation
fdiv.s f17, f12, f8, rtz # perform operation
fdiv.s f17, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x29, 0x00ec97aea0408264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fdiv.s f29, f16, f18, dyn # perform operation
fdiv.s f29, f16, f18, rdn # perform operation
fdiv.s f29, f16, f18, rmm # perform operation
fdiv.s f29, f16, f18, rne # perform operation
fdiv.s f29, f16, f18, rtz # perform operation
fdiv.s f29, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x20, 0x256c2161683e99e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fdiv.s f20, f19, f16, dyn # perform operation
fdiv.s f20, f19, f16, rdn # perform operation
fdiv.s f20, f19, f16, rmm # perform operation
fdiv.s f20, f19, f16, rne # perform operation
fdiv.s f20, f19, f16, rtz # perform operation
fdiv.s f20, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x3, 0xb7ebb111284644e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fdiv.s f3, f14, f6, dyn # perform operation
fdiv.s f3, f14, f6, rdn # perform operation
fdiv.s f3, f14, f6, rmm # perform operation
fdiv.s f3, f14, f6, rne # perform operation
fdiv.s f3, f14, f6, rtz # perform operation
fdiv.s f3, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x1, 0xa05280e6934208a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fdiv.s f1, f29, f4, dyn # perform operation
fdiv.s f1, f29, f4, rdn # perform operation
fdiv.s f1, f29, f4, rmm # perform operation
fdiv.s f1, f29, f4, rne # perform operation
fdiv.s f1, f29, f4, rtz # perform operation
fdiv.s f1, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x11, 0xbadd47def6219206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fdiv.s f11, f14, f2, dyn # perform operation
fdiv.s f11, f14, f2, rdn # perform operation
fdiv.s f11, f14, f2, rmm # perform operation
fdiv.s f11, f14, f2, rne # perform operation
fdiv.s f11, f14, f2, rtz # perform operation
fdiv.s f11, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x24, 0xcb76ce59d85f2c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fdiv.s f24, f17, f20, dyn # perform operation
fdiv.s f24, f17, f20, rdn # perform operation
fdiv.s f24, f17, f20, rmm # perform operation
fdiv.s f24, f17, f20, rne # perform operation
fdiv.s f24, f17, f20, rtz # perform operation
fdiv.s f24, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x23, 0xc93b50023478b1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fdiv.s f23, f10, f30, dyn # perform operation
fdiv.s f23, f10, f30, rdn # perform operation
fdiv.s f23, f10, f30, rmm # perform operation
fdiv.s f23, f10, f30, rne # perform operation
fdiv.s f23, f10, f30, rtz # perform operation
fdiv.s f23, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x17, 0x2f45f772ae7b2e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fdiv.s f17, f31, f26, dyn # perform operation
fdiv.s f17, f31, f26, rdn # perform operation
fdiv.s f17, f31, f26, rmm # perform operation
fdiv.s f17, f31, f26, rne # perform operation
fdiv.s f17, f31, f26, rtz # perform operation
fdiv.s f17, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x4, 0x8e9ba9c8c9178173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fdiv.s f4, f19, f10, dyn # perform operation
fdiv.s f4, f19, f10, rdn # perform operation
fdiv.s f4, f19, f10, rmm # perform operation
fdiv.s f4, f19, f10, rne # perform operation
fdiv.s f4, f19, f10, rtz # perform operation
fdiv.s f4, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x16, 0xe47587e8b2a588c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fdiv.s f16, f10, f18, dyn # perform operation
fdiv.s f16, f10, f18, rdn # perform operation
fdiv.s f16, f10, f18, rmm # perform operation
fdiv.s f16, f10, f18, rne # perform operation
fdiv.s f16, f10, f18, rtz # perform operation
fdiv.s f16, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x2, 0x77d283baccff2b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fdiv.s f2, f6, f4, dyn # perform operation
fdiv.s f2, f6, f4, rdn # perform operation
fdiv.s f2, f6, f4, rmm # perform operation
fdiv.s f2, f6, f4, rne # perform operation
fdiv.s f2, f6, f4, rtz # perform operation
fdiv.s f2, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x7, 0xcce3ca8670252228 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fdiv.s f7, f3, f21, dyn # perform operation
fdiv.s f7, f3, f21, rdn # perform operation
fdiv.s f7, f3, f21, rmm # perform operation
fdiv.s f7, f3, f21, rne # perform operation
fdiv.s f7, f3, f21, rtz # perform operation
fdiv.s f7, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x4, 0xdc0ef1d23ae6f931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fdiv.s f4, f18, f2, dyn # perform operation
fdiv.s f4, f18, f2, rdn # perform operation
fdiv.s f4, f18, f2, rmm # perform operation
fdiv.s f4, f18, f2, rne # perform operation
fdiv.s f4, f18, f2, rtz # perform operation
fdiv.s f4, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x31, 0x9388020917adfeb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fdiv.s f31, f11, f30, dyn # perform operation
fdiv.s f31, f11, f30, rdn # perform operation
fdiv.s f31, f11, f30, rmm # perform operation
fdiv.s f31, f11, f30, rne # perform operation
fdiv.s f31, f11, f30, rtz # perform operation
fdiv.s f31, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x21, 0x7dabc90a7eb6905a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fdiv.s f21, f3, f12, dyn # perform operation
fdiv.s f21, f3, f12, rdn # perform operation
fdiv.s f21, f3, f12, rmm # perform operation
fdiv.s f21, f3, f12, rne # perform operation
fdiv.s f21, f3, f12, rtz # perform operation
fdiv.s f21, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x21, 0x76a06a0bdff65731 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fdiv.s f21, f4, f23, dyn # perform operation
fdiv.s f21, f4, f23, rdn # perform operation
fdiv.s f21, f4, f23, rmm # perform operation
fdiv.s f21, f4, f23, rne # perform operation
fdiv.s f21, f4, f23, rtz # perform operation
fdiv.s f21, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x30, 0x533607b279461707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fdiv.s f30, f21, f16, dyn # perform operation
fdiv.s f30, f21, f16, rdn # perform operation
fdiv.s f30, f21, f16, rmm # perform operation
fdiv.s f30, f21, f16, rne # perform operation
fdiv.s f30, f21, f16, rtz # perform operation
fdiv.s f30, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x22, 0x1110a023233ce7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fdiv.s f22, f30, f23, dyn # perform operation
fdiv.s f22, f30, f23, rdn # perform operation
fdiv.s f22, f30, f23, rmm # perform operation
fdiv.s f22, f30, f23, rne # perform operation
fdiv.s f22, f30, f23, rtz # perform operation
fdiv.s f22, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x23, 0x4b4063210b54b33d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fdiv.s f23, f5, f28, dyn # perform operation
fdiv.s f23, f5, f28, rdn # perform operation
fdiv.s f23, f5, f28, rmm # perform operation
fdiv.s f23, f5, f28, rne # perform operation
fdiv.s f23, f5, f28, rtz # perform operation
fdiv.s f23, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x31, 0x17b65fc24125fb64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fdiv.s f31, f30, f26, dyn # perform operation
fdiv.s f31, f30, f26, rdn # perform operation
fdiv.s f31, f30, f26, rmm # perform operation
fdiv.s f31, f30, f26, rne # perform operation
fdiv.s f31, f30, f26, rtz # perform operation
fdiv.s f31, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x10, 0x2c124164c9143861 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fdiv.s f10, f17, f21, dyn # perform operation
fdiv.s f10, f17, f21, rdn # perform operation
fdiv.s f10, f17, f21, rmm # perform operation
fdiv.s f10, f17, f21, rne # perform operation
fdiv.s f10, f17, f21, rtz # perform operation
fdiv.s f10, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x25, 0x18ceeabf65949d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fdiv.s f25, f14, f29, dyn # perform operation
fdiv.s f25, f14, f29, rdn # perform operation
fdiv.s f25, f14, f29, rmm # perform operation
fdiv.s f25, f14, f29, rne # perform operation
fdiv.s f25, f14, f29, rtz # perform operation
fdiv.s f25, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x21, 0x78ba0a939e85e50d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fdiv.s f21, f12, f27, dyn # perform operation
fdiv.s f21, f12, f27, rdn # perform operation
fdiv.s f21, f12, f27, rmm # perform operation
fdiv.s f21, f12, f27, rne # perform operation
fdiv.s f21, f12, f27, rtz # perform operation
fdiv.s f21, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x25, 0xf3c1b03da3b61c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fdiv.s f25, f2, f24, dyn # perform operation
fdiv.s f25, f2, f24, rdn # perform operation
fdiv.s f25, f2, f24, rmm # perform operation
fdiv.s f25, f2, f24, rne # perform operation
fdiv.s f25, f2, f24, rtz # perform operation
fdiv.s f25, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x30, 0x87dcb008610b6f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fdiv.s f30, f5, f23, dyn # perform operation
fdiv.s f30, f5, f23, rdn # perform operation
fdiv.s f30, f5, f23, rmm # perform operation
fdiv.s f30, f5, f23, rne # perform operation
fdiv.s f30, f5, f23, rtz # perform operation
fdiv.s f30, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x15, 0xe0c55538712ca598 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fdiv.s f15, f12, f18, dyn # perform operation
fdiv.s f15, f12, f18, rdn # perform operation
fdiv.s f15, f12, f18, rmm # perform operation
fdiv.s f15, f12, f18, rne # perform operation
fdiv.s f15, f12, f18, rtz # perform operation
fdiv.s f15, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x12, 0x76968512b7957fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f12, f4, f20, dyn # perform operation
fdiv.s f12, f4, f20, rdn # perform operation
fdiv.s f12, f4, f20, rmm # perform operation
fdiv.s f12, f4, f20, rne # perform operation
fdiv.s f12, f4, f20, rtz # perform operation
fdiv.s f12, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x22, 0x048cb566eb4bad82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fdiv.s f22, f26, f21, dyn # perform operation
fdiv.s f22, f26, f21, rdn # perform operation
fdiv.s f22, f26, f21, rmm # perform operation
fdiv.s f22, f26, f21, rne # perform operation
fdiv.s f22, f26, f21, rtz # perform operation
fdiv.s f22, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x9, 0x43eea82427d798ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fdiv.s f9, f30, f2, dyn # perform operation
fdiv.s f9, f30, f2, rdn # perform operation
fdiv.s f9, f30, f2, rmm # perform operation
fdiv.s f9, f30, f2, rne # perform operation
fdiv.s f9, f30, f2, rtz # perform operation
fdiv.s f9, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x6, 0xe68564ff70d34287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fdiv.s f6, f1, f17, dyn # perform operation
fdiv.s f6, f1, f17, rdn # perform operation
fdiv.s f6, f1, f17, rmm # perform operation
fdiv.s f6, f1, f17, rne # perform operation
fdiv.s f6, f1, f17, rtz # perform operation
fdiv.s f6, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x7, 0xb33881b060260c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fdiv.s f7, f24, f9, dyn # perform operation
fdiv.s f7, f24, f9, rdn # perform operation
fdiv.s f7, f24, f9, rmm # perform operation
fdiv.s f7, f24, f9, rne # perform operation
fdiv.s f7, f24, f9, rtz # perform operation
fdiv.s f7, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x8, 0x53303b47dae2bfbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fdiv.s f8, f17, f7, dyn # perform operation
fdiv.s f8, f17, f7, rdn # perform operation
fdiv.s f8, f17, f7, rmm # perform operation
fdiv.s f8, f17, f7, rne # perform operation
fdiv.s f8, f17, f7, rtz # perform operation
fdiv.s f8, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x22, 0x1ef550040eb86c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.s f22, f31, f21, dyn # perform operation
fdiv.s f22, f31, f21, rdn # perform operation
fdiv.s f22, f31, f21, rmm # perform operation
fdiv.s f22, f31, f21, rne # perform operation
fdiv.s f22, f31, f21, rtz # perform operation
fdiv.s f22, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x26, 0x5298663c811d64a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fdiv.s f26, f14, f9, dyn # perform operation
fdiv.s f26, f14, f9, rdn # perform operation
fdiv.s f26, f14, f9, rmm # perform operation
fdiv.s f26, f14, f9, rne # perform operation
fdiv.s f26, f14, f9, rtz # perform operation
fdiv.s f26, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x21, 0x5e2e47526b929c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fdiv.s f21, f8, f7, dyn # perform operation
fdiv.s f21, f8, f7, rdn # perform operation
fdiv.s f21, f8, f7, rmm # perform operation
fdiv.s f21, f8, f7, rne # perform operation
fdiv.s f21, f8, f7, rtz # perform operation
fdiv.s f21, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x14, 0xcb56c381632bb011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fdiv.s f14, f13, f27, dyn # perform operation
fdiv.s f14, f13, f27, rdn # perform operation
fdiv.s f14, f13, f27, rmm # perform operation
fdiv.s f14, f13, f27, rne # perform operation
fdiv.s f14, f13, f27, rtz # perform operation
fdiv.s f14, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x25, 0xa181d75ca95c4625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fdiv.s f25, f31, f12, dyn # perform operation
fdiv.s f25, f31, f12, rdn # perform operation
fdiv.s f25, f31, f12, rmm # perform operation
fdiv.s f25, f31, f12, rne # perform operation
fdiv.s f25, f31, f12, rtz # perform operation
fdiv.s f25, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x22, 0xb5516b36e09d210b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fdiv.s f22, f20, f4, dyn # perform operation
fdiv.s f22, f20, f4, rdn # perform operation
fdiv.s f22, f20, f4, rmm # perform operation
fdiv.s f22, f20, f4, rne # perform operation
fdiv.s f22, f20, f4, rtz # perform operation
fdiv.s f22, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x27, 0xd2cb75b3dd1f50ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f27, f10, f19, dyn # perform operation
fdiv.s f27, f10, f19, rdn # perform operation
fdiv.s f27, f10, f19, rmm # perform operation
fdiv.s f27, f10, f19, rne # perform operation
fdiv.s f27, f10, f19, rtz # perform operation
fdiv.s f27, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x11, 0x294471fc50ba6c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fdiv.s f11, f9, f8, dyn # perform operation
fdiv.s f11, f9, f8, rdn # perform operation
fdiv.s f11, f9, f8, rmm # perform operation
fdiv.s f11, f9, f8, rne # perform operation
fdiv.s f11, f9, f8, rtz # perform operation
fdiv.s f11, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x23, 0x67a4e4c1c892bfc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fdiv.s f23, f14, f13, dyn # perform operation
fdiv.s f23, f14, f13, rdn # perform operation
fdiv.s f23, f14, f13, rmm # perform operation
fdiv.s f23, f14, f13, rne # perform operation
fdiv.s f23, f14, f13, rtz # perform operation
fdiv.s f23, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x28, 0xafd880f23d63ce24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fdiv.s f28, f13, f2, dyn # perform operation
fdiv.s f28, f13, f2, rdn # perform operation
fdiv.s f28, f13, f2, rmm # perform operation
fdiv.s f28, f13, f2, rne # perform operation
fdiv.s f28, f13, f2, rtz # perform operation
fdiv.s f28, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x3, 0x2b7d4eab465d84eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.s f3, f2, f12, dyn # perform operation
fdiv.s f3, f2, f12, rdn # perform operation
fdiv.s f3, f2, f12, rmm # perform operation
fdiv.s f3, f2, f12, rne # perform operation
fdiv.s f3, f2, f12, rtz # perform operation
fdiv.s f3, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x14, 0x60185acc48f6bd9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fdiv.s f14, f1, f23, dyn # perform operation
fdiv.s f14, f1, f23, rdn # perform operation
fdiv.s f14, f1, f23, rmm # perform operation
fdiv.s f14, f1, f23, rne # perform operation
fdiv.s f14, f1, f23, rtz # perform operation
fdiv.s f14, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x13, 0x3ba964cfa4549921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fdiv.s f13, f1, f20, dyn # perform operation
fdiv.s f13, f1, f20, rdn # perform operation
fdiv.s f13, f1, f20, rmm # perform operation
fdiv.s f13, f1, f20, rne # perform operation
fdiv.s f13, f1, f20, rtz # perform operation
fdiv.s f13, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x30, 0x606b023d2ff3f6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fdiv.s f30, f4, f26, dyn # perform operation
fdiv.s f30, f4, f26, rdn # perform operation
fdiv.s f30, f4, f26, rmm # perform operation
fdiv.s f30, f4, f26, rne # perform operation
fdiv.s f30, f4, f26, rtz # perform operation
fdiv.s f30, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x15, 0x9cee86cb9bc6e280 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fdiv.s f15, f11, f26, dyn # perform operation
fdiv.s f15, f11, f26, rdn # perform operation
fdiv.s f15, f11, f26, rmm # perform operation
fdiv.s f15, f11, f26, rne # perform operation
fdiv.s f15, f11, f26, rtz # perform operation
fdiv.s f15, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x4, 0x3b056658413d4485 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fdiv.s f4, f10, f9, dyn # perform operation
fdiv.s f4, f10, f9, rdn # perform operation
fdiv.s f4, f10, f9, rmm # perform operation
fdiv.s f4, f10, f9, rne # perform operation
fdiv.s f4, f10, f9, rtz # perform operation
fdiv.s f4, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x4, 0xe6c25725def94ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fdiv.s f4, f13, f26, dyn # perform operation
fdiv.s f4, f13, f26, rdn # perform operation
fdiv.s f4, f13, f26, rmm # perform operation
fdiv.s f4, f13, f26, rne # perform operation
fdiv.s f4, f13, f26, rtz # perform operation
fdiv.s f4, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x4, 0x77faf055a65ab050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fdiv.s f4, f16, f26, dyn # perform operation
fdiv.s f4, f16, f26, rdn # perform operation
fdiv.s f4, f16, f26, rmm # perform operation
fdiv.s f4, f16, f26, rne # perform operation
fdiv.s f4, f16, f26, rtz # perform operation
fdiv.s f4, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x22, 0xcdc1d3d04a0abc48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fdiv.s f22, f12, f25, dyn # perform operation
fdiv.s f22, f12, f25, rdn # perform operation
fdiv.s f22, f12, f25, rmm # perform operation
fdiv.s f22, f12, f25, rne # perform operation
fdiv.s f22, f12, f25, rtz # perform operation
fdiv.s f22, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x20, 0x699a2569be32cf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fdiv.s f20, f19, f4, dyn # perform operation
fdiv.s f20, f19, f4, rdn # perform operation
fdiv.s f20, f19, f4, rmm # perform operation
fdiv.s f20, f19, f4, rne # perform operation
fdiv.s f20, f19, f4, rtz # perform operation
fdiv.s f20, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x13, 0x5f0cdbc6fafe932b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fdiv.s f13, f21, f18, dyn # perform operation
fdiv.s f13, f21, f18, rdn # perform operation
fdiv.s f13, f21, f18, rmm # perform operation
fdiv.s f13, f21, f18, rne # perform operation
fdiv.s f13, f21, f18, rtz # perform operation
fdiv.s f13, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x5, 0x6a195e8bbea16478 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fdiv.s f5, f21, f30, dyn # perform operation
fdiv.s f5, f21, f30, rdn # perform operation
fdiv.s f5, f21, f30, rmm # perform operation
fdiv.s f5, f21, f30, rne # perform operation
fdiv.s f5, f21, f30, rtz # perform operation
fdiv.s f5, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x21, 0x89e9adb1067a20d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f21, f17, f29, dyn # perform operation
fdiv.s f21, f17, f29, rdn # perform operation
fdiv.s f21, f17, f29, rmm # perform operation
fdiv.s f21, f17, f29, rne # perform operation
fdiv.s f21, f17, f29, rtz # perform operation
fdiv.s f21, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x19, 0xbdac1cdb70734976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fdiv.s f19, f11, f22, dyn # perform operation
fdiv.s f19, f11, f22, rdn # perform operation
fdiv.s f19, f11, f22, rmm # perform operation
fdiv.s f19, f11, f22, rne # perform operation
fdiv.s f19, f11, f22, rtz # perform operation
fdiv.s f19, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x8, 0x6e561a860db476ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fdiv.s f8, f23, f29, dyn # perform operation
fdiv.s f8, f23, f29, rdn # perform operation
fdiv.s f8, f23, f29, rmm # perform operation
fdiv.s f8, f23, f29, rne # perform operation
fdiv.s f8, f23, f29, rtz # perform operation
fdiv.s f8, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x18, 0xe0076475ccf95fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fdiv.s f18, f4, f20, dyn # perform operation
fdiv.s f18, f4, f20, rdn # perform operation
fdiv.s f18, f4, f20, rmm # perform operation
fdiv.s f18, f4, f20, rne # perform operation
fdiv.s f18, f4, f20, rtz # perform operation
fdiv.s f18, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x8, 0x8bccd533399d6a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.s f8, f11, f27, dyn # perform operation
fdiv.s f8, f11, f27, rdn # perform operation
fdiv.s f8, f11, f27, rmm # perform operation
fdiv.s f8, f11, f27, rne # perform operation
fdiv.s f8, f11, f27, rtz # perform operation
fdiv.s f8, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x17, 0x1d4565ce8295f226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fdiv.s f17, f19, f31, dyn # perform operation
fdiv.s f17, f19, f31, rdn # perform operation
fdiv.s f17, f19, f31, rmm # perform operation
fdiv.s f17, f19, f31, rne # perform operation
fdiv.s f17, f19, f31, rtz # perform operation
fdiv.s f17, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x27, 0x9829a9f6f6ac18be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fdiv.s f27, f4, f19, dyn # perform operation
fdiv.s f27, f4, f19, rdn # perform operation
fdiv.s f27, f4, f19, rmm # perform operation
fdiv.s f27, f4, f19, rne # perform operation
fdiv.s f27, f4, f19, rtz # perform operation
fdiv.s f27, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x11, 0x46e360e032f57093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fdiv.s f11, f23, f26, dyn # perform operation
fdiv.s f11, f23, f26, rdn # perform operation
fdiv.s f11, f23, f26, rmm # perform operation
fdiv.s f11, f23, f26, rne # perform operation
fdiv.s f11, f23, f26, rtz # perform operation
fdiv.s f11, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x13, 0x59675cb9b1b582d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fdiv.s f13, f3, f12, dyn # perform operation
fdiv.s f13, f3, f12, rdn # perform operation
fdiv.s f13, f3, f12, rmm # perform operation
fdiv.s f13, f3, f12, rne # perform operation
fdiv.s f13, f3, f12, rtz # perform operation
fdiv.s f13, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x12, 0x4e3297a240ca9660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fdiv.s f12, f30, f3, dyn # perform operation
fdiv.s f12, f30, f3, rdn # perform operation
fdiv.s f12, f30, f3, rmm # perform operation
fdiv.s f12, f30, f3, rne # perform operation
fdiv.s f12, f30, f3, rtz # perform operation
fdiv.s f12, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x4, 0x5a734c1d170a1565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fdiv.s f4, f12, f23, dyn # perform operation
fdiv.s f4, f12, f23, rdn # perform operation
fdiv.s f4, f12, f23, rmm # perform operation
fdiv.s f4, f12, f23, rne # perform operation
fdiv.s f4, f12, f23, rtz # perform operation
fdiv.s f4, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x31, 0x714a71f8c04b3433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f31, f8, f11, dyn # perform operation
fdiv.s f31, f8, f11, rdn # perform operation
fdiv.s f31, f8, f11, rmm # perform operation
fdiv.s f31, f8, f11, rne # perform operation
fdiv.s f31, f8, f11, rtz # perform operation
fdiv.s f31, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x16, 0xfaddc0c848a64bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fdiv.s f16, f13, f9, dyn # perform operation
fdiv.s f16, f13, f9, rdn # perform operation
fdiv.s f16, f13, f9, rmm # perform operation
fdiv.s f16, f13, f9, rne # perform operation
fdiv.s f16, f13, f9, rtz # perform operation
fdiv.s f16, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x28, 0xab9127664699b405 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fdiv.s f28, f23, f24, dyn # perform operation
fdiv.s f28, f23, f24, rdn # perform operation
fdiv.s f28, f23, f24, rmm # perform operation
fdiv.s f28, f23, f24, rne # perform operation
fdiv.s f28, f23, f24, rtz # perform operation
fdiv.s f28, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x3, 0xb83ef8b655f65bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f3, f14, f29, dyn # perform operation
fdiv.s f3, f14, f29, rdn # perform operation
fdiv.s f3, f14, f29, rmm # perform operation
fdiv.s f3, f14, f29, rne # perform operation
fdiv.s f3, f14, f29, rtz # perform operation
fdiv.s f3, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x6, 0xed7e2b9b1dbed0d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fdiv.s f6, f15, f9, dyn # perform operation
fdiv.s f6, f15, f9, rdn # perform operation
fdiv.s f6, f15, f9, rmm # perform operation
fdiv.s f6, f15, f9, rne # perform operation
fdiv.s f6, f15, f9, rtz # perform operation
fdiv.s f6, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x21, 0x87c8c2bbcba00186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fdiv.s f21, f16, f25, dyn # perform operation
fdiv.s f21, f16, f25, rdn # perform operation
fdiv.s f21, f16, f25, rmm # perform operation
fdiv.s f21, f16, f25, rne # perform operation
fdiv.s f21, f16, f25, rtz # perform operation
fdiv.s f21, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x24, 0xc31a69a082ce46e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fdiv.s f24, f1, f2, dyn # perform operation
fdiv.s f24, f1, f2, rdn # perform operation
fdiv.s f24, f1, f2, rmm # perform operation
fdiv.s f24, f1, f2, rne # perform operation
fdiv.s f24, f1, f2, rtz # perform operation
fdiv.s f24, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x29, 0x8346dbeeb75d6c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fdiv.s f29, f1, f30, dyn # perform operation
fdiv.s f29, f1, f30, rdn # perform operation
fdiv.s f29, f1, f30, rmm # perform operation
fdiv.s f29, f1, f30, rne # perform operation
fdiv.s f29, f1, f30, rtz # perform operation
fdiv.s f29, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x12, 0x0cabf683433ec354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f12, f28, f25, dyn # perform operation
fdiv.s f12, f28, f25, rdn # perform operation
fdiv.s f12, f28, f25, rmm # perform operation
fdiv.s f12, f28, f25, rne # perform operation
fdiv.s f12, f28, f25, rtz # perform operation
fdiv.s f12, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x20, 0x12d05cc70d86d60f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fdiv.s f20, f31, f27, dyn # perform operation
fdiv.s f20, f31, f27, rdn # perform operation
fdiv.s f20, f31, f27, rmm # perform operation
fdiv.s f20, f31, f27, rne # perform operation
fdiv.s f20, f31, f27, rtz # perform operation
fdiv.s f20, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x19, 0x30f32d077d6a595f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fdiv.s f19, f26, f8, dyn # perform operation
fdiv.s f19, f26, f8, rdn # perform operation
fdiv.s f19, f26, f8, rmm # perform operation
fdiv.s f19, f26, f8, rne # perform operation
fdiv.s f19, f26, f8, rtz # perform operation
fdiv.s f19, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x3, 0x675bf4fe48f52bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fdiv.s f3, f5, f22, dyn # perform operation
fdiv.s f3, f5, f22, rdn # perform operation
fdiv.s f3, f5, f22, rmm # perform operation
fdiv.s f3, f5, f22, rne # perform operation
fdiv.s f3, f5, f22, rtz # perform operation
fdiv.s f3, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x5, 0x842803142b19611f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fdiv.s f5, f21, f20, dyn # perform operation
fdiv.s f5, f21, f20, rdn # perform operation
fdiv.s f5, f21, f20, rmm # perform operation
fdiv.s f5, f21, f20, rne # perform operation
fdiv.s f5, f21, f20, rtz # perform operation
fdiv.s f5, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x12, 0x92b93f99c7473d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fdiv.s f12, f30, f25, dyn # perform operation
fdiv.s f12, f30, f25, rdn # perform operation
fdiv.s f12, f30, f25, rmm # perform operation
fdiv.s f12, f30, f25, rne # perform operation
fdiv.s f12, f30, f25, rtz # perform operation
fdiv.s f12, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x27, 0xdc6c8d64be316db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fdiv.s f27, f31, f7, dyn # perform operation
fdiv.s f27, f31, f7, rdn # perform operation
fdiv.s f27, f31, f7, rmm # perform operation
fdiv.s f27, f31, f7, rne # perform operation
fdiv.s f27, f31, f7, rtz # perform operation
fdiv.s f27, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x21, 0xb85b69fadd5b3497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f21, f10, f26, dyn # perform operation
fdiv.s f21, f10, f26, rdn # perform operation
fdiv.s f21, f10, f26, rmm # perform operation
fdiv.s f21, f10, f26, rne # perform operation
fdiv.s f21, f10, f26, rtz # perform operation
fdiv.s f21, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x15, 0xbdbbd75c9a3bce0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fdiv.s f15, f21, f2, dyn # perform operation
fdiv.s f15, f21, f2, rdn # perform operation
fdiv.s f15, f21, f2, rmm # perform operation
fdiv.s f15, f21, f2, rne # perform operation
fdiv.s f15, f21, f2, rtz # perform operation
fdiv.s f15, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x13, 0xc4ebc6c43f2e0b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f13, f15, f5, dyn # perform operation
fdiv.s f13, f15, f5, rdn # perform operation
fdiv.s f13, f15, f5, rmm # perform operation
fdiv.s f13, f15, f5, rne # perform operation
fdiv.s f13, f15, f5, rtz # perform operation
fdiv.s f13, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x28, 0x5937e649a27dc640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fdiv.s f28, f17, f23, dyn # perform operation
fdiv.s f28, f17, f23, rdn # perform operation
fdiv.s f28, f17, f23, rmm # perform operation
fdiv.s f28, f17, f23, rne # perform operation
fdiv.s f28, f17, f23, rtz # perform operation
fdiv.s f28, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x8, 0x850899dc4e48fb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.s f8, f21, f27, dyn # perform operation
fdiv.s f8, f21, f27, rdn # perform operation
fdiv.s f8, f21, f27, rmm # perform operation
fdiv.s f8, f21, f27, rne # perform operation
fdiv.s f8, f21, f27, rtz # perform operation
fdiv.s f8, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x30, 0x49b316a6bf0c40a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fdiv.s f30, f25, f13, dyn # perform operation
fdiv.s f30, f25, f13, rdn # perform operation
fdiv.s f30, f25, f13, rmm # perform operation
fdiv.s f30, f25, f13, rne # perform operation
fdiv.s f30, f25, f13, rtz # perform operation
fdiv.s f30, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x31, 0xb4d9b1166679e68f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fdiv.s f31, f18, f25, dyn # perform operation
fdiv.s f31, f18, f25, rdn # perform operation
fdiv.s f31, f18, f25, rmm # perform operation
fdiv.s f31, f18, f25, rne # perform operation
fdiv.s f31, f18, f25, rtz # perform operation
fdiv.s f31, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x2, 0x8d3100d38143f9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fdiv.s f2, f7, f18, dyn # perform operation
fdiv.s f2, f7, f18, rdn # perform operation
fdiv.s f2, f7, f18, rmm # perform operation
fdiv.s f2, f7, f18, rne # perform operation
fdiv.s f2, f7, f18, rtz # perform operation
fdiv.s f2, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x20, 0xc2bf353569007bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fdiv.s f20, f22, f7, dyn # perform operation
fdiv.s f20, f22, f7, rdn # perform operation
fdiv.s f20, f22, f7, rmm # perform operation
fdiv.s f20, f22, f7, rne # perform operation
fdiv.s f20, f22, f7, rtz # perform operation
fdiv.s f20, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x4, 0xa9b80d5438ed9460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fdiv.s f4, f10, f8, dyn # perform operation
fdiv.s f4, f10, f8, rdn # perform operation
fdiv.s f4, f10, f8, rmm # perform operation
fdiv.s f4, f10, f8, rne # perform operation
fdiv.s f4, f10, f8, rtz # perform operation
fdiv.s f4, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x8, 0xc2eb0466ed70417d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fdiv.s f8, f22, f4, dyn # perform operation
fdiv.s f8, f22, f4, rdn # perform operation
fdiv.s f8, f22, f4, rmm # perform operation
fdiv.s f8, f22, f4, rne # perform operation
fdiv.s f8, f22, f4, rtz # perform operation
fdiv.s f8, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x4, 0x1fe4f945fed9fa04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fdiv.s f4, f2, f24, dyn # perform operation
fdiv.s f4, f2, f24, rdn # perform operation
fdiv.s f4, f2, f24, rmm # perform operation
fdiv.s f4, f2, f24, rne # perform operation
fdiv.s f4, f2, f24, rtz # perform operation
fdiv.s f4, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x17, 0x568372aaf12da15a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fdiv.s f17, f1, f19, dyn # perform operation
fdiv.s f17, f1, f19, rdn # perform operation
fdiv.s f17, f1, f19, rmm # perform operation
fdiv.s f17, f1, f19, rne # perform operation
fdiv.s f17, f1, f19, rtz # perform operation
fdiv.s f17, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x10, 0x419e538944ced94d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fdiv.s f10, f29, f14, dyn # perform operation
fdiv.s f10, f29, f14, rdn # perform operation
fdiv.s f10, f29, f14, rmm # perform operation
fdiv.s f10, f29, f14, rne # perform operation
fdiv.s f10, f29, f14, rtz # perform operation
fdiv.s f10, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x4, 0x2dbd16659180f2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fdiv.s f4, f8, f1, dyn # perform operation
fdiv.s f4, f8, f1, rdn # perform operation
fdiv.s f4, f8, f1, rmm # perform operation
fdiv.s f4, f8, f1, rne # perform operation
fdiv.s f4, f8, f1, rtz # perform operation
fdiv.s f4, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x6, 0xc7095e730d7267b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f6, f21, f31, dyn # perform operation
fdiv.s f6, f21, f31, rdn # perform operation
fdiv.s f6, f21, f31, rmm # perform operation
fdiv.s f6, f21, f31, rne # perform operation
fdiv.s f6, f21, f31, rtz # perform operation
fdiv.s f6, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x19, 0x18ee564875380743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fdiv.s f19, f6, f31, dyn # perform operation
fdiv.s f19, f6, f31, rdn # perform operation
fdiv.s f19, f6, f31, rmm # perform operation
fdiv.s f19, f6, f31, rne # perform operation
fdiv.s f19, f6, f31, rtz # perform operation
fdiv.s f19, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x19, 0x85d0643fd3c9d67c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fdiv.s f19, f10, f17, dyn # perform operation
fdiv.s f19, f10, f17, rdn # perform operation
fdiv.s f19, f10, f17, rmm # perform operation
fdiv.s f19, f10, f17, rne # perform operation
fdiv.s f19, f10, f17, rtz # perform operation
fdiv.s f19, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x14, 0x61f39e9c7e13135a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fdiv.s f14, f17, f22, dyn # perform operation
fdiv.s f14, f17, f22, rdn # perform operation
fdiv.s f14, f17, f22, rmm # perform operation
fdiv.s f14, f17, f22, rne # perform operation
fdiv.s f14, f17, f22, rtz # perform operation
fdiv.s f14, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x27, 0x420f10b6bc47f675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fdiv.s f27, f2, f19, dyn # perform operation
fdiv.s f27, f2, f19, rdn # perform operation
fdiv.s f27, f2, f19, rmm # perform operation
fdiv.s f27, f2, f19, rne # perform operation
fdiv.s f27, f2, f19, rtz # perform operation
fdiv.s f27, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x31, 0x78a8e316cb2e47ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fdiv.s f31, f18, f2, dyn # perform operation
fdiv.s f31, f18, f2, rdn # perform operation
fdiv.s f31, f18, f2, rmm # perform operation
fdiv.s f31, f18, f2, rne # perform operation
fdiv.s f31, f18, f2, rtz # perform operation
fdiv.s f31, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x24, 0x00996c0eb9036f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fdiv.s f24, f26, f25, dyn # perform operation
fdiv.s f24, f26, f25, rdn # perform operation
fdiv.s f24, f26, f25, rmm # perform operation
fdiv.s f24, f26, f25, rne # perform operation
fdiv.s f24, f26, f25, rtz # perform operation
fdiv.s f24, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x8, 0x94f2485c2adc4894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fdiv.s f8, f22, f27, dyn # perform operation
fdiv.s f8, f22, f27, rdn # perform operation
fdiv.s f8, f22, f27, rmm # perform operation
fdiv.s f8, f22, f27, rne # perform operation
fdiv.s f8, f22, f27, rtz # perform operation
fdiv.s f8, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x16, 0xa311511d5dca8ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fdiv.s f16, f30, f26, dyn # perform operation
fdiv.s f16, f30, f26, rdn # perform operation
fdiv.s f16, f30, f26, rmm # perform operation
fdiv.s f16, f30, f26, rne # perform operation
fdiv.s f16, f30, f26, rtz # perform operation
fdiv.s f16, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x17, 0x4bb1443218bc2e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fdiv.s f17, f21, f15, dyn # perform operation
fdiv.s f17, f21, f15, rdn # perform operation
fdiv.s f17, f21, f15, rmm # perform operation
fdiv.s f17, f21, f15, rne # perform operation
fdiv.s f17, f21, f15, rtz # perform operation
fdiv.s f17, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x31, 0xd07ef40952d634f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fdiv.s f31, f12, f1, dyn # perform operation
fdiv.s f31, f12, f1, rdn # perform operation
fdiv.s f31, f12, f1, rmm # perform operation
fdiv.s f31, f12, f1, rne # perform operation
fdiv.s f31, f12, f1, rtz # perform operation
fdiv.s f31, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x24, 0xef4e58b84f510967 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fdiv.s f24, f1, f8, dyn # perform operation
fdiv.s f24, f1, f8, rdn # perform operation
fdiv.s f24, f1, f8, rmm # perform operation
fdiv.s f24, f1, f8, rne # perform operation
fdiv.s f24, f1, f8, rtz # perform operation
fdiv.s f24, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x5, 0x9e1b6df5394f89a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fdiv.s f5, f11, f23, dyn # perform operation
fdiv.s f5, f11, f23, rdn # perform operation
fdiv.s f5, f11, f23, rmm # perform operation
fdiv.s f5, f11, f23, rne # perform operation
fdiv.s f5, f11, f23, rtz # perform operation
fdiv.s f5, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x21, 0x24bf888c5c333e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fdiv.s f21, f14, f17, dyn # perform operation
fdiv.s f21, f14, f17, rdn # perform operation
fdiv.s f21, f14, f17, rmm # perform operation
fdiv.s f21, f14, f17, rne # perform operation
fdiv.s f21, f14, f17, rtz # perform operation
fdiv.s f21, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x19, 0xc52271d7db9bb54a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fdiv.s f19, f24, f12, dyn # perform operation
fdiv.s f19, f24, f12, rdn # perform operation
fdiv.s f19, f24, f12, rmm # perform operation
fdiv.s f19, f24, f12, rne # perform operation
fdiv.s f19, f24, f12, rtz # perform operation
fdiv.s f19, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x12, 0x700a3778c320d38e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fdiv.s f12, f17, f19, dyn # perform operation
fdiv.s f12, f17, f19, rdn # perform operation
fdiv.s f12, f17, f19, rmm # perform operation
fdiv.s f12, f17, f19, rne # perform operation
fdiv.s f12, f17, f19, rtz # perform operation
fdiv.s f12, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x13, 0xdd2aae3d9764b7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fdiv.s f13, f14, f16, dyn # perform operation
fdiv.s f13, f14, f16, rdn # perform operation
fdiv.s f13, f14, f16, rmm # perform operation
fdiv.s f13, f14, f16, rne # perform operation
fdiv.s f13, f14, f16, rtz # perform operation
fdiv.s f13, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x2, 0x5e770ae7c785e7cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fdiv.s f2, f3, f25, dyn # perform operation
fdiv.s f2, f3, f25, rdn # perform operation
fdiv.s f2, f3, f25, rmm # perform operation
fdiv.s f2, f3, f25, rne # perform operation
fdiv.s f2, f3, f25, rtz # perform operation
fdiv.s f2, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x28, 0xca8d365f4689b4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fdiv.s f28, f6, f19, dyn # perform operation
fdiv.s f28, f6, f19, rdn # perform operation
fdiv.s f28, f6, f19, rmm # perform operation
fdiv.s f28, f6, f19, rne # perform operation
fdiv.s f28, f6, f19, rtz # perform operation
fdiv.s f28, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x13, 0xd21464b1ab6ee48a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fdiv.s f13, f12, f22, dyn # perform operation
fdiv.s f13, f12, f22, rdn # perform operation
fdiv.s f13, f12, f22, rmm # perform operation
fdiv.s f13, f12, f22, rne # perform operation
fdiv.s f13, f12, f22, rtz # perform operation
fdiv.s f13, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x4, 0x75abe7966dd6f64b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f4, f10, f12, dyn # perform operation
fdiv.s f4, f10, f12, rdn # perform operation
fdiv.s f4, f10, f12, rmm # perform operation
fdiv.s f4, f10, f12, rne # perform operation
fdiv.s f4, f10, f12, rtz # perform operation
fdiv.s f4, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x8, 0xa1afd87926b65ead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f8, f6, f27, dyn # perform operation
fdiv.s f8, f6, f27, rdn # perform operation
fdiv.s f8, f6, f27, rmm # perform operation
fdiv.s f8, f6, f27, rne # perform operation
fdiv.s f8, f6, f27, rtz # perform operation
fdiv.s f8, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x2, 0x45d8420c8e582ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fdiv.s f2, f15, f19, dyn # perform operation
fdiv.s f2, f15, f19, rdn # perform operation
fdiv.s f2, f15, f19, rmm # perform operation
fdiv.s f2, f15, f19, rne # perform operation
fdiv.s f2, f15, f19, rtz # perform operation
fdiv.s f2, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x14, 0x8166e82455fdd073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fdiv.s f14, f22, f30, dyn # perform operation
fdiv.s f14, f22, f30, rdn # perform operation
fdiv.s f14, f22, f30, rmm # perform operation
fdiv.s f14, f22, f30, rne # perform operation
fdiv.s f14, f22, f30, rtz # perform operation
fdiv.s f14, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x7, 0xe66abe18076b2323 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fdiv.s f7, f27, f29, dyn # perform operation
fdiv.s f7, f27, f29, rdn # perform operation
fdiv.s f7, f27, f29, rmm # perform operation
fdiv.s f7, f27, f29, rne # perform operation
fdiv.s f7, f27, f29, rtz # perform operation
fdiv.s f7, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x26, 0x6837a130c7f5d223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.s f26, f7, f12, dyn # perform operation
fdiv.s f26, f7, f12, rdn # perform operation
fdiv.s f26, f7, f12, rmm # perform operation
fdiv.s f26, f7, f12, rne # perform operation
fdiv.s f26, f7, f12, rtz # perform operation
fdiv.s f26, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x19, 0xc3a6f698e21680d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fdiv.s f19, f26, f12, dyn # perform operation
fdiv.s f19, f26, f12, rdn # perform operation
fdiv.s f19, f26, f12, rmm # perform operation
fdiv.s f19, f26, f12, rne # perform operation
fdiv.s f19, f26, f12, rtz # perform operation
fdiv.s f19, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x20, 0x4e426d01018221a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fdiv.s f20, f30, f22, dyn # perform operation
fdiv.s f20, f30, f22, rdn # perform operation
fdiv.s f20, f30, f22, rmm # perform operation
fdiv.s f20, f30, f22, rne # perform operation
fdiv.s f20, f30, f22, rtz # perform operation
fdiv.s f20, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x25, 0x012d6edcecb4c012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fdiv.s f25, f13, f22, dyn # perform operation
fdiv.s f25, f13, f22, rdn # perform operation
fdiv.s f25, f13, f22, rmm # perform operation
fdiv.s f25, f13, f22, rne # perform operation
fdiv.s f25, f13, f22, rtz # perform operation
fdiv.s f25, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x10, 0x127048c78516d521 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fdiv.s f10, f11, f13, dyn # perform operation
fdiv.s f10, f11, f13, rdn # perform operation
fdiv.s f10, f11, f13, rmm # perform operation
fdiv.s f10, f11, f13, rne # perform operation
fdiv.s f10, f11, f13, rtz # perform operation
fdiv.s f10, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x1, 0x162457d930e4f2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fdiv.s f1, f26, f31, dyn # perform operation
fdiv.s f1, f26, f31, rdn # perform operation
fdiv.s f1, f26, f31, rmm # perform operation
fdiv.s f1, f26, f31, rne # perform operation
fdiv.s f1, f26, f31, rtz # perform operation
fdiv.s f1, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x8, 0xe5750421c3069bda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fdiv.s f8, f3, f1, dyn # perform operation
fdiv.s f8, f3, f1, rdn # perform operation
fdiv.s f8, f3, f1, rmm # perform operation
fdiv.s f8, f3, f1, rne # perform operation
fdiv.s f8, f3, f1, rtz # perform operation
fdiv.s f8, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x18, 0xbcd1a72d4e4bed3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fdiv.s f18, f23, f31, dyn # perform operation
fdiv.s f18, f23, f31, rdn # perform operation
fdiv.s f18, f23, f31, rmm # perform operation
fdiv.s f18, f23, f31, rne # perform operation
fdiv.s f18, f23, f31, rtz # perform operation
fdiv.s f18, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x5, 0x975b6ee445420ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fdiv.s f5, f12, f8, dyn # perform operation
fdiv.s f5, f12, f8, rdn # perform operation
fdiv.s f5, f12, f8, rmm # perform operation
fdiv.s f5, f12, f8, rne # perform operation
fdiv.s f5, f12, f8, rtz # perform operation
fdiv.s f5, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x18, 0xe5ca458b24345282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fdiv.s f18, f10, f6, dyn # perform operation
fdiv.s f18, f10, f6, rdn # perform operation
fdiv.s f18, f10, f6, rmm # perform operation
fdiv.s f18, f10, f6, rne # perform operation
fdiv.s f18, f10, f6, rtz # perform operation
fdiv.s f18, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x15, 0xf3cbcc9247572652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fdiv.s f15, f14, f8, dyn # perform operation
fdiv.s f15, f14, f8, rdn # perform operation
fdiv.s f15, f14, f8, rmm # perform operation
fdiv.s f15, f14, f8, rne # perform operation
fdiv.s f15, f14, f8, rtz # perform operation
fdiv.s f15, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x11, 0x041053a6b41d7c14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fdiv.s f11, f22, f7, dyn # perform operation
fdiv.s f11, f22, f7, rdn # perform operation
fdiv.s f11, f22, f7, rmm # perform operation
fdiv.s f11, f22, f7, rne # perform operation
fdiv.s f11, f22, f7, rtz # perform operation
fdiv.s f11, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x1, 0xf69a6d0b3fdcfcfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f1, f2, f26, dyn # perform operation
fdiv.s f1, f2, f26, rdn # perform operation
fdiv.s f1, f2, f26, rmm # perform operation
fdiv.s f1, f2, f26, rne # perform operation
fdiv.s f1, f2, f26, rtz # perform operation
fdiv.s f1, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x30, 0xd31289b0530423ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fdiv.s f30, f11, f17, dyn # perform operation
fdiv.s f30, f11, f17, rdn # perform operation
fdiv.s f30, f11, f17, rmm # perform operation
fdiv.s f30, f11, f17, rne # perform operation
fdiv.s f30, f11, f17, rtz # perform operation
fdiv.s f30, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x11, 0xe095fe7487ff2769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fdiv.s f11, f31, f18, dyn # perform operation
fdiv.s f11, f31, f18, rdn # perform operation
fdiv.s f11, f31, f18, rmm # perform operation
fdiv.s f11, f31, f18, rne # perform operation
fdiv.s f11, f31, f18, rtz # perform operation
fdiv.s f11, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x4, 0xb1e236cf2eb8e794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fdiv.s f4, f15, f26, dyn # perform operation
fdiv.s f4, f15, f26, rdn # perform operation
fdiv.s f4, f15, f26, rmm # perform operation
fdiv.s f4, f15, f26, rne # perform operation
fdiv.s f4, f15, f26, rtz # perform operation
fdiv.s f4, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x20, 0x70afcd1b4366f230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.s f20, f13, f8, dyn # perform operation
fdiv.s f20, f13, f8, rdn # perform operation
fdiv.s f20, f13, f8, rmm # perform operation
fdiv.s f20, f13, f8, rne # perform operation
fdiv.s f20, f13, f8, rtz # perform operation
fdiv.s f20, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x21, 0x19cb4ee33ad3f9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fdiv.s f21, f7, f3, dyn # perform operation
fdiv.s f21, f7, f3, rdn # perform operation
fdiv.s f21, f7, f3, rmm # perform operation
fdiv.s f21, f7, f3, rne # perform operation
fdiv.s f21, f7, f3, rtz # perform operation
fdiv.s f21, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x15, 0x1607f06b114f3dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fdiv.s f15, f26, f8, dyn # perform operation
fdiv.s f15, f26, f8, rdn # perform operation
fdiv.s f15, f26, f8, rmm # perform operation
fdiv.s f15, f26, f8, rne # perform operation
fdiv.s f15, f26, f8, rtz # perform operation
fdiv.s f15, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x9, 0xb850f771929b6322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fdiv.s f9, f30, f11, dyn # perform operation
fdiv.s f9, f30, f11, rdn # perform operation
fdiv.s f9, f30, f11, rmm # perform operation
fdiv.s f9, f30, f11, rne # perform operation
fdiv.s f9, f30, f11, rtz # perform operation
fdiv.s f9, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x21, 0x33740264dc5dc017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f21, f30, f18, dyn # perform operation
fdiv.s f21, f30, f18, rdn # perform operation
fdiv.s f21, f30, f18, rmm # perform operation
fdiv.s f21, f30, f18, rne # perform operation
fdiv.s f21, f30, f18, rtz # perform operation
fdiv.s f21, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x21, 0x542a274ff0a84234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fdiv.s f21, f2, f14, dyn # perform operation
fdiv.s f21, f2, f14, rdn # perform operation
fdiv.s f21, f2, f14, rmm # perform operation
fdiv.s f21, f2, f14, rne # perform operation
fdiv.s f21, f2, f14, rtz # perform operation
fdiv.s f21, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x3, 0x1708afcddeba0882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fdiv.s f3, f11, f22, dyn # perform operation
fdiv.s f3, f11, f22, rdn # perform operation
fdiv.s f3, f11, f22, rmm # perform operation
fdiv.s f3, f11, f22, rne # perform operation
fdiv.s f3, f11, f22, rtz # perform operation
fdiv.s f3, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x23, 0x6b474dd929c11fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fdiv.s f23, f30, f14, dyn # perform operation
fdiv.s f23, f30, f14, rdn # perform operation
fdiv.s f23, f30, f14, rmm # perform operation
fdiv.s f23, f30, f14, rne # perform operation
fdiv.s f23, f30, f14, rtz # perform operation
fdiv.s f23, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x7, 0x9d6876e711920c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fdiv.s f7, f14, f23, dyn # perform operation
fdiv.s f7, f14, f23, rdn # perform operation
fdiv.s f7, f14, f23, rmm # perform operation
fdiv.s f7, f14, f23, rne # perform operation
fdiv.s f7, f14, f23, rtz # perform operation
fdiv.s f7, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x20, 0x50e3ce7dc0d43555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fdiv.s f20, f18, f27, dyn # perform operation
fdiv.s f20, f18, f27, rdn # perform operation
fdiv.s f20, f18, f27, rmm # perform operation
fdiv.s f20, f18, f27, rne # perform operation
fdiv.s f20, f18, f27, rtz # perform operation
fdiv.s f20, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x1, 0x93f56dd968a06974 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
fdiv.s f1, f29, f23, dyn # perform operation
fdiv.s f1, f29, f23, rdn # perform operation
fdiv.s f1, f29, f23, rmm # perform operation
fdiv.s f1, f29, f23, rne # perform operation
fdiv.s f1, f29, f23, rtz # perform operation
fdiv.s f1, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x20, 0x8e736ee23d0deb31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fdiv.s f20, f4, f16, dyn # perform operation
fdiv.s f20, f4, f16, rdn # perform operation
fdiv.s f20, f4, f16, rmm # perform operation
fdiv.s f20, f4, f16, rne # perform operation
fdiv.s f20, f4, f16, rtz # perform operation
fdiv.s f20, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x8, 0xb4e492ebb7d123db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fdiv.s f8, f7, f22, dyn # perform operation
fdiv.s f8, f7, f22, rdn # perform operation
fdiv.s f8, f7, f22, rmm # perform operation
fdiv.s f8, f7, f22, rne # perform operation
fdiv.s f8, f7, f22, rtz # perform operation
fdiv.s f8, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x12, 0x40a1621135ee2dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fdiv.s f12, f5, f23, dyn # perform operation
fdiv.s f12, f5, f23, rdn # perform operation
fdiv.s f12, f5, f23, rmm # perform operation
fdiv.s f12, f5, f23, rne # perform operation
fdiv.s f12, f5, f23, rtz # perform operation
fdiv.s f12, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x6, 0x74cc31c68786e720 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fdiv.s f6, f3, f16, dyn # perform operation
fdiv.s f6, f3, f16, rdn # perform operation
fdiv.s f6, f3, f16, rmm # perform operation
fdiv.s f6, f3, f16, rne # perform operation
fdiv.s f6, f3, f16, rtz # perform operation
fdiv.s f6, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x19, 0xbfcc0be24880ec7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fdiv.s f19, f10, f16, dyn # perform operation
fdiv.s f19, f10, f16, rdn # perform operation
fdiv.s f19, f10, f16, rmm # perform operation
fdiv.s f19, f10, f16, rne # perform operation
fdiv.s f19, f10, f16, rtz # perform operation
fdiv.s f19, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x19, 0xa3ca7ec2f58bc62f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fdiv.s f19, f1, f10, dyn # perform operation
fdiv.s f19, f1, f10, rdn # perform operation
fdiv.s f19, f1, f10, rmm # perform operation
fdiv.s f19, f1, f10, rne # perform operation
fdiv.s f19, f1, f10, rtz # perform operation
fdiv.s f19, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x15, 0x0ba063bc6463c3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fdiv.s f15, f30, f29, dyn # perform operation
fdiv.s f15, f30, f29, rdn # perform operation
fdiv.s f15, f30, f29, rmm # perform operation
fdiv.s f15, f30, f29, rne # perform operation
fdiv.s f15, f30, f29, rtz # perform operation
fdiv.s f15, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x3, 0x160e801fa9d5bcb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fdiv.s f3, f21, f31, dyn # perform operation
fdiv.s f3, f21, f31, rdn # perform operation
fdiv.s f3, f21, f31, rmm # perform operation
fdiv.s f3, f21, f31, rne # perform operation
fdiv.s f3, f21, f31, rtz # perform operation
fdiv.s f3, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x4, 0x346597e9eaf14987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fdiv.s f4, f12, f30, dyn # perform operation
fdiv.s f4, f12, f30, rdn # perform operation
fdiv.s f4, f12, f30, rmm # perform operation
fdiv.s f4, f12, f30, rne # perform operation
fdiv.s f4, f12, f30, rtz # perform operation
fdiv.s f4, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x14, 0xb4f037a4f670e500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fdiv.s f14, f30, f1, dyn # perform operation
fdiv.s f14, f30, f1, rdn # perform operation
fdiv.s f14, f30, f1, rmm # perform operation
fdiv.s f14, f30, f1, rne # perform operation
fdiv.s f14, f30, f1, rtz # perform operation
fdiv.s f14, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x15, 0x2a8412ad6dcc53ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fdiv.s f15, f19, f17, dyn # perform operation
fdiv.s f15, f19, f17, rdn # perform operation
fdiv.s f15, f19, f17, rmm # perform operation
fdiv.s f15, f19, f17, rne # perform operation
fdiv.s f15, f19, f17, rtz # perform operation
fdiv.s f15, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x31, 0x4c391897b4350316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f31, f10, f29, dyn # perform operation
fdiv.s f31, f10, f29, rdn # perform operation
fdiv.s f31, f10, f29, rmm # perform operation
fdiv.s f31, f10, f29, rne # perform operation
fdiv.s f31, f10, f29, rtz # perform operation
fdiv.s f31, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x4, 0xcee2fc9bd92043a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fdiv.s f4, f21, f11, dyn # perform operation
fdiv.s f4, f21, f11, rdn # perform operation
fdiv.s f4, f21, f11, rmm # perform operation
fdiv.s f4, f21, f11, rne # perform operation
fdiv.s f4, f21, f11, rtz # perform operation
fdiv.s f4, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x25, 0x4b9c72cc67084fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fdiv.s f25, f2, f21, dyn # perform operation
fdiv.s f25, f2, f21, rdn # perform operation
fdiv.s f25, f2, f21, rmm # perform operation
fdiv.s f25, f2, f21, rne # perform operation
fdiv.s f25, f2, f21, rtz # perform operation
fdiv.s f25, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x2, 0x02aa43a12fe7bb7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fdiv.s f2, f1, f30, dyn # perform operation
fdiv.s f2, f1, f30, rdn # perform operation
fdiv.s f2, f1, f30, rmm # perform operation
fdiv.s f2, f1, f30, rne # perform operation
fdiv.s f2, f1, f30, rtz # perform operation
fdiv.s f2, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x15, 0x1c7cb64007a997b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.s f15, f8, f3, dyn # perform operation
fdiv.s f15, f8, f3, rdn # perform operation
fdiv.s f15, f8, f3, rmm # perform operation
fdiv.s f15, f8, f3, rne # perform operation
fdiv.s f15, f8, f3, rtz # perform operation
fdiv.s f15, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x25, 0xdb8af64c065e9661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fdiv.s f25, f31, f7, dyn # perform operation
fdiv.s f25, f31, f7, rdn # perform operation
fdiv.s f25, f31, f7, rmm # perform operation
fdiv.s f25, f31, f7, rne # perform operation
fdiv.s f25, f31, f7, rtz # perform operation
fdiv.s f25, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x24, 0x6f1d2dfd19df9051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fdiv.s f24, f3, f14, dyn # perform operation
fdiv.s f24, f3, f14, rdn # perform operation
fdiv.s f24, f3, f14, rmm # perform operation
fdiv.s f24, f3, f14, rne # perform operation
fdiv.s f24, f3, f14, rtz # perform operation
fdiv.s f24, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x20, 0x98625001af99633d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fdiv.s f20, f12, f5, dyn # perform operation
fdiv.s f20, f12, f5, rdn # perform operation
fdiv.s f20, f12, f5, rmm # perform operation
fdiv.s f20, f12, f5, rne # perform operation
fdiv.s f20, f12, f5, rtz # perform operation
fdiv.s f20, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x27, 0xe2f5eeb1d979b6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fdiv.s f27, f6, f24, dyn # perform operation
fdiv.s f27, f6, f24, rdn # perform operation
fdiv.s f27, f6, f24, rmm # perform operation
fdiv.s f27, f6, f24, rne # perform operation
fdiv.s f27, f6, f24, rtz # perform operation
fdiv.s f27, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x23, 0x4c03750b80ee1b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fdiv.s f23, f5, f2, dyn # perform operation
fdiv.s f23, f5, f2, rdn # perform operation
fdiv.s f23, f5, f2, rmm # perform operation
fdiv.s f23, f5, f2, rne # perform operation
fdiv.s f23, f5, f2, rtz # perform operation
fdiv.s f23, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x25, 0xc1524e1046e324ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fdiv.s f25, f17, f26, dyn # perform operation
fdiv.s f25, f17, f26, rdn # perform operation
fdiv.s f25, f17, f26, rmm # perform operation
fdiv.s f25, f17, f26, rne # perform operation
fdiv.s f25, f17, f26, rtz # perform operation
fdiv.s f25, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x31, 0x811b0e1429c84e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fdiv.s f31, f13, f14, dyn # perform operation
fdiv.s f31, f13, f14, rdn # perform operation
fdiv.s f31, f13, f14, rmm # perform operation
fdiv.s f31, f13, f14, rne # perform operation
fdiv.s f31, f13, f14, rtz # perform operation
fdiv.s f31, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x26, 0x5ff9bb7bcfa1e6d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fdiv.s f26, f23, f2, dyn # perform operation
fdiv.s f26, f23, f2, rdn # perform operation
fdiv.s f26, f23, f2, rmm # perform operation
fdiv.s f26, f23, f2, rne # perform operation
fdiv.s f26, f23, f2, rtz # perform operation
fdiv.s f26, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x3, 0x0a845b873c424985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fdiv.s f3, f16, f23, dyn # perform operation
fdiv.s f3, f16, f23, rdn # perform operation
fdiv.s f3, f16, f23, rmm # perform operation
fdiv.s f3, f16, f23, rne # perform operation
fdiv.s f3, f16, f23, rtz # perform operation
fdiv.s f3, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x12, 0xf0c7ff7f047224c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fdiv.s f12, f8, f22, dyn # perform operation
fdiv.s f12, f8, f22, rdn # perform operation
fdiv.s f12, f8, f22, rmm # perform operation
fdiv.s f12, f8, f22, rne # perform operation
fdiv.s f12, f8, f22, rtz # perform operation
fdiv.s f12, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x30, 0x27f02d77bc0ca18d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fdiv.s f30, f6, f4, dyn # perform operation
fdiv.s f30, f6, f4, rdn # perform operation
fdiv.s f30, f6, f4, rmm # perform operation
fdiv.s f30, f6, f4, rne # perform operation
fdiv.s f30, f6, f4, rtz # perform operation
fdiv.s f30, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x12, 0x4f7aa609094eff48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fdiv.s f12, f20, f26, dyn # perform operation
fdiv.s f12, f20, f26, rdn # perform operation
fdiv.s f12, f20, f26, rmm # perform operation
fdiv.s f12, f20, f26, rne # perform operation
fdiv.s f12, f20, f26, rtz # perform operation
fdiv.s f12, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x19, 0xae50fa169b060c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fdiv.s f19, f9, f2, dyn # perform operation
fdiv.s f19, f9, f2, rdn # perform operation
fdiv.s f19, f9, f2, rmm # perform operation
fdiv.s f19, f9, f2, rne # perform operation
fdiv.s f19, f9, f2, rtz # perform operation
fdiv.s f19, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x20, 0xe634788153ded615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fdiv.s f20, f7, f31, dyn # perform operation
fdiv.s f20, f7, f31, rdn # perform operation
fdiv.s f20, f7, f31, rmm # perform operation
fdiv.s f20, f7, f31, rne # perform operation
fdiv.s f20, f7, f31, rtz # perform operation
fdiv.s f20, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x29, 0x2ddc8dfed0676252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fdiv.s f29, f1, f27, dyn # perform operation
fdiv.s f29, f1, f27, rdn # perform operation
fdiv.s f29, f1, f27, rmm # perform operation
fdiv.s f29, f1, f27, rne # perform operation
fdiv.s f29, f1, f27, rtz # perform operation
fdiv.s f29, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x27, 0xed415bf9e3f652b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fdiv.s f27, f22, f26, dyn # perform operation
fdiv.s f27, f22, f26, rdn # perform operation
fdiv.s f27, f22, f26, rmm # perform operation
fdiv.s f27, f22, f26, rne # perform operation
fdiv.s f27, f22, f26, rtz # perform operation
fdiv.s f27, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x17, 0xee1c1297acc408fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fdiv.s f17, f23, f28, dyn # perform operation
fdiv.s f17, f23, f28, rdn # perform operation
fdiv.s f17, f23, f28, rmm # perform operation
fdiv.s f17, f23, f28, rne # perform operation
fdiv.s f17, f23, f28, rtz # perform operation
fdiv.s f17, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x1, 0xda2b2bc9dd785787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fdiv.s f1, f27, f4, dyn # perform operation
fdiv.s f1, f27, f4, rdn # perform operation
fdiv.s f1, f27, f4, rmm # perform operation
fdiv.s f1, f27, f4, rne # perform operation
fdiv.s f1, f27, f4, rtz # perform operation
fdiv.s f1, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x22, 0x78897fa8d4bde7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fdiv.s f22, f15, f2, dyn # perform operation
fdiv.s f22, f15, f2, rdn # perform operation
fdiv.s f22, f15, f2, rmm # perform operation
fdiv.s f22, f15, f2, rne # perform operation
fdiv.s f22, f15, f2, rtz # perform operation
fdiv.s f22, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x9, 0xe1dfe033026eef90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fdiv.s f9, f5, f3, dyn # perform operation
fdiv.s f9, f5, f3, rdn # perform operation
fdiv.s f9, f5, f3, rmm # perform operation
fdiv.s f9, f5, f3, rne # perform operation
fdiv.s f9, f5, f3, rtz # perform operation
fdiv.s f9, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x19, 0x08ef05a3a713412e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fdiv.s f19, f29, f31, dyn # perform operation
fdiv.s f19, f29, f31, rdn # perform operation
fdiv.s f19, f29, f31, rmm # perform operation
fdiv.s f19, f29, f31, rne # perform operation
fdiv.s f19, f29, f31, rtz # perform operation
fdiv.s f19, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x4, 0xe00190b9e8673ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fdiv.s f4, f23, f8, dyn # perform operation
fdiv.s f4, f23, f8, rdn # perform operation
fdiv.s f4, f23, f8, rmm # perform operation
fdiv.s f4, f23, f8, rne # perform operation
fdiv.s f4, f23, f8, rtz # perform operation
fdiv.s f4, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x25, 0x1e730471fcba26fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fdiv.s f25, f2, f24, dyn # perform operation
fdiv.s f25, f2, f24, rdn # perform operation
fdiv.s f25, f2, f24, rmm # perform operation
fdiv.s f25, f2, f24, rne # perform operation
fdiv.s f25, f2, f24, rtz # perform operation
fdiv.s f25, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x3, 0xaa55e391484b0e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fdiv.s f3, f16, f9, dyn # perform operation
fdiv.s f3, f16, f9, rdn # perform operation
fdiv.s f3, f16, f9, rmm # perform operation
fdiv.s f3, f16, f9, rne # perform operation
fdiv.s f3, f16, f9, rtz # perform operation
fdiv.s f3, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x27, 0xf104800b6c30aa8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fdiv.s f27, f24, f20, dyn # perform operation
fdiv.s f27, f24, f20, rdn # perform operation
fdiv.s f27, f24, f20, rmm # perform operation
fdiv.s f27, f24, f20, rne # perform operation
fdiv.s f27, f24, f20, rtz # perform operation
fdiv.s f27, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x15, 0x9e8bf8df67f190a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fdiv.s f15, f27, f25, dyn # perform operation
fdiv.s f15, f27, f25, rdn # perform operation
fdiv.s f15, f27, f25, rmm # perform operation
fdiv.s f15, f27, f25, rne # perform operation
fdiv.s f15, f27, f25, rtz # perform operation
fdiv.s f15, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x27, 0xcab0de3a45a7ab4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fdiv.s f27, f18, f31, dyn # perform operation
fdiv.s f27, f18, f31, rdn # perform operation
fdiv.s f27, f18, f31, rmm # perform operation
fdiv.s f27, f18, f31, rne # perform operation
fdiv.s f27, f18, f31, rtz # perform operation
fdiv.s f27, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x16, 0xf2d86255d4a58e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fdiv.s f16, f18, f23, dyn # perform operation
fdiv.s f16, f18, f23, rdn # perform operation
fdiv.s f16, f18, f23, rmm # perform operation
fdiv.s f16, f18, f23, rne # perform operation
fdiv.s f16, f18, f23, rtz # perform operation
fdiv.s f16, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x13, 0x2efd7b7b15b92e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fdiv.s f13, f8, f12, dyn # perform operation
fdiv.s f13, f8, f12, rdn # perform operation
fdiv.s f13, f8, f12, rmm # perform operation
fdiv.s f13, f8, f12, rne # perform operation
fdiv.s f13, f8, f12, rtz # perform operation
fdiv.s f13, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x25, 0xbab88c386bf3351d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fdiv.s f25, f11, f31, dyn # perform operation
fdiv.s f25, f11, f31, rdn # perform operation
fdiv.s f25, f11, f31, rmm # perform operation
fdiv.s f25, f11, f31, rne # perform operation
fdiv.s f25, f11, f31, rtz # perform operation
fdiv.s f25, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x30, 0x43b0049bb49b9d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fdiv.s f30, f26, f21, dyn # perform operation
fdiv.s f30, f26, f21, rdn # perform operation
fdiv.s f30, f26, f21, rmm # perform operation
fdiv.s f30, f26, f21, rne # perform operation
fdiv.s f30, f26, f21, rtz # perform operation
fdiv.s f30, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x1, 0xc134ce7352aeddf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fdiv.s f1, f16, f14, dyn # perform operation
fdiv.s f1, f16, f14, rdn # perform operation
fdiv.s f1, f16, f14, rmm # perform operation
fdiv.s f1, f16, f14, rne # perform operation
fdiv.s f1, f16, f14, rtz # perform operation
fdiv.s f1, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x17, 0x88239c8a8d0fbad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fdiv.s f17, f15, f22, dyn # perform operation
fdiv.s f17, f15, f22, rdn # perform operation
fdiv.s f17, f15, f22, rmm # perform operation
fdiv.s f17, f15, f22, rne # perform operation
fdiv.s f17, f15, f22, rtz # perform operation
fdiv.s f17, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x13, 0xe508cc8ad3e3665d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fdiv.s f13, f8, f20, dyn # perform operation
fdiv.s f13, f8, f20, rdn # perform operation
fdiv.s f13, f8, f20, rmm # perform operation
fdiv.s f13, f8, f20, rne # perform operation
fdiv.s f13, f8, f20, rtz # perform operation
fdiv.s f13, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x17, 0x60823dd688eda5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fdiv.s f17, f31, f25, dyn # perform operation
fdiv.s f17, f31, f25, rdn # perform operation
fdiv.s f17, f31, f25, rmm # perform operation
fdiv.s f17, f31, f25, rne # perform operation
fdiv.s f17, f31, f25, rtz # perform operation
fdiv.s f17, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x3, 0xb6f2aae1bf3beacf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fdiv.s f3, f8, f16, dyn # perform operation
fdiv.s f3, f8, f16, rdn # perform operation
fdiv.s f3, f8, f16, rmm # perform operation
fdiv.s f3, f8, f16, rne # perform operation
fdiv.s f3, f8, f16, rtz # perform operation
fdiv.s f3, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x12, 0xe34cdc0b1fd87485 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fdiv.s f12, f21, f29, dyn # perform operation
fdiv.s f12, f21, f29, rdn # perform operation
fdiv.s f12, f21, f29, rmm # perform operation
fdiv.s f12, f21, f29, rne # perform operation
fdiv.s f12, f21, f29, rtz # perform operation
fdiv.s f12, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x16, 0x2df1887bab1c89c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fdiv.s f16, f11, f5, dyn # perform operation
fdiv.s f16, f11, f5, rdn # perform operation
fdiv.s f16, f11, f5, rmm # perform operation
fdiv.s f16, f11, f5, rne # perform operation
fdiv.s f16, f11, f5, rtz # perform operation
fdiv.s f16, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x27, 0x9887f9e0ba746313 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fdiv.s f27, f3, f31, dyn # perform operation
fdiv.s f27, f3, f31, rdn # perform operation
fdiv.s f27, f3, f31, rmm # perform operation
fdiv.s f27, f3, f31, rne # perform operation
fdiv.s f27, f3, f31, rtz # perform operation
fdiv.s f27, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x8, 0xf8a280d80d3f4ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fdiv.s f8, f17, f27, dyn # perform operation
fdiv.s f8, f17, f27, rdn # perform operation
fdiv.s f8, f17, f27, rmm # perform operation
fdiv.s f8, f17, f27, rne # perform operation
fdiv.s f8, f17, f27, rtz # perform operation
fdiv.s f8, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x29, 0xa3a2c0703c3a2b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fdiv.s f29, f30, f25, dyn # perform operation
fdiv.s f29, f30, f25, rdn # perform operation
fdiv.s f29, f30, f25, rmm # perform operation
fdiv.s f29, f30, f25, rne # perform operation
fdiv.s f29, f30, f25, rtz # perform operation
fdiv.s f29, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x24, 0x732ac272fe130830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fdiv.s f24, f16, f8, dyn # perform operation
fdiv.s f24, f16, f8, rdn # perform operation
fdiv.s f24, f16, f8, rmm # perform operation
fdiv.s f24, f16, f8, rne # perform operation
fdiv.s f24, f16, f8, rtz # perform operation
fdiv.s f24, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x14, 0x256de72ad924dd39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fdiv.s f14, f6, f4, dyn # perform operation
fdiv.s f14, f6, f4, rdn # perform operation
fdiv.s f14, f6, f4, rmm # perform operation
fdiv.s f14, f6, f4, rne # perform operation
fdiv.s f14, f6, f4, rtz # perform operation
fdiv.s f14, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x11, 0x7029f2f693015767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fdiv.s f11, f31, f16, dyn # perform operation
fdiv.s f11, f31, f16, rdn # perform operation
fdiv.s f11, f31, f16, rmm # perform operation
fdiv.s f11, f31, f16, rne # perform operation
fdiv.s f11, f31, f16, rtz # perform operation
fdiv.s f11, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x11, 0x06bbfa70fdc045c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fdiv.s f11, f24, f27, dyn # perform operation
fdiv.s f11, f24, f27, rdn # perform operation
fdiv.s f11, f24, f27, rmm # perform operation
fdiv.s f11, f24, f27, rne # perform operation
fdiv.s f11, f24, f27, rtz # perform operation
fdiv.s f11, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x27, 0x232525fa72efba85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fdiv.s f27, f13, f31, dyn # perform operation
fdiv.s f27, f13, f31, rdn # perform operation
fdiv.s f27, f13, f31, rmm # perform operation
fdiv.s f27, f13, f31, rne # perform operation
fdiv.s f27, f13, f31, rtz # perform operation
fdiv.s f27, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x5, 0x4c24fb03b9a7ca05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fdiv.s f5, f20, f26, dyn # perform operation
fdiv.s f5, f20, f26, rdn # perform operation
fdiv.s f5, f20, f26, rmm # perform operation
fdiv.s f5, f20, f26, rne # perform operation
fdiv.s f5, f20, f26, rtz # perform operation
fdiv.s f5, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x21, 0x8b3b6ccb790c2822 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fdiv.s f21, f10, f28, dyn # perform operation
fdiv.s f21, f10, f28, rdn # perform operation
fdiv.s f21, f10, f28, rmm # perform operation
fdiv.s f21, f10, f28, rne # perform operation
fdiv.s f21, f10, f28, rtz # perform operation
fdiv.s f21, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x9, 0xc2069310944948f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fdiv.s f9, f24, f22, dyn # perform operation
fdiv.s f9, f24, f22, rdn # perform operation
fdiv.s f9, f24, f22, rmm # perform operation
fdiv.s f9, f24, f22, rne # perform operation
fdiv.s f9, f24, f22, rtz # perform operation
fdiv.s f9, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x9, 0x852ba3d51ba059ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fdiv.s f9, f3, f26, dyn # perform operation
fdiv.s f9, f3, f26, rdn # perform operation
fdiv.s f9, f3, f26, rmm # perform operation
fdiv.s f9, f3, f26, rne # perform operation
fdiv.s f9, f3, f26, rtz # perform operation
fdiv.s f9, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x11, 0x0c39e94be292c9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fdiv.s f11, f14, f4, dyn # perform operation
fdiv.s f11, f14, f4, rdn # perform operation
fdiv.s f11, f14, f4, rmm # perform operation
fdiv.s f11, f14, f4, rne # perform operation
fdiv.s f11, f14, f4, rtz # perform operation
fdiv.s f11, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x5, 0xafc251a5c2426f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fdiv.s f5, f16, f17, dyn # perform operation
fdiv.s f5, f16, f17, rdn # perform operation
fdiv.s f5, f16, f17, rmm # perform operation
fdiv.s f5, f16, f17, rne # perform operation
fdiv.s f5, f16, f17, rtz # perform operation
fdiv.s f5, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x25, 0xc23627aed97ac383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fdiv.s f25, f8, f23, dyn # perform operation
fdiv.s f25, f8, f23, rdn # perform operation
fdiv.s f25, f8, f23, rmm # perform operation
fdiv.s f25, f8, f23, rne # perform operation
fdiv.s f25, f8, f23, rtz # perform operation
fdiv.s f25, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x18, 0xea966bfb415dfb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fdiv.s f18, f12, f30, dyn # perform operation
fdiv.s f18, f12, f30, rdn # perform operation
fdiv.s f18, f12, f30, rmm # perform operation
fdiv.s f18, f12, f30, rne # perform operation
fdiv.s f18, f12, f30, rtz # perform operation
fdiv.s f18, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x4, 0x854cf6fd0707774d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fdiv.s f4, f13, f29, dyn # perform operation
fdiv.s f4, f13, f29, rdn # perform operation
fdiv.s f4, f13, f29, rmm # perform operation
fdiv.s f4, f13, f29, rne # perform operation
fdiv.s f4, f13, f29, rtz # perform operation
fdiv.s f4, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x31, 0x014e8434e63f9c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fdiv.s f31, f11, f9, dyn # perform operation
fdiv.s f31, f11, f9, rdn # perform operation
fdiv.s f31, f11, f9, rmm # perform operation
fdiv.s f31, f11, f9, rne # perform operation
fdiv.s f31, f11, f9, rtz # perform operation
fdiv.s f31, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x21, 0x40b3ee2c2799ce49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fdiv.s f21, f6, f14, dyn # perform operation
fdiv.s f21, f6, f14, rdn # perform operation
fdiv.s f21, f6, f14, rmm # perform operation
fdiv.s f21, f6, f14, rne # perform operation
fdiv.s f21, f6, f14, rtz # perform operation
fdiv.s f21, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x21, 0xb7516ff099a21169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fdiv.s f21, f27, f7, dyn # perform operation
fdiv.s f21, f27, f7, rdn # perform operation
fdiv.s f21, f27, f7, rmm # perform operation
fdiv.s f21, f27, f7, rne # perform operation
fdiv.s f21, f27, f7, rtz # perform operation
fdiv.s f21, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x1, 0x294b82e62b703307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fdiv.s f1, f8, f14, dyn # perform operation
fdiv.s f1, f8, f14, rdn # perform operation
fdiv.s f1, f8, f14, rmm # perform operation
fdiv.s f1, f8, f14, rne # perform operation
fdiv.s f1, f8, f14, rtz # perform operation
fdiv.s f1, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x5, 0x667da000aecb09e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fdiv.s f5, f2, f14, dyn # perform operation
fdiv.s f5, f2, f14, rdn # perform operation
fdiv.s f5, f2, f14, rmm # perform operation
fdiv.s f5, f2, f14, rne # perform operation
fdiv.s f5, f2, f14, rtz # perform operation
fdiv.s f5, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x21, 0x27a4a0d343b3fa8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fdiv.s f21, f9, f16, dyn # perform operation
fdiv.s f21, f9, f16, rdn # perform operation
fdiv.s f21, f9, f16, rmm # perform operation
fdiv.s f21, f9, f16, rne # perform operation
fdiv.s f21, f9, f16, rtz # perform operation
fdiv.s f21, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x24, 0x23620cea79043631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.s f24, f26, f28, dyn # perform operation
fdiv.s f24, f26, f28, rdn # perform operation
fdiv.s f24, f26, f28, rmm # perform operation
fdiv.s f24, f26, f28, rne # perform operation
fdiv.s f24, f26, f28, rtz # perform operation
fdiv.s f24, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x15, 0x3ffc3090b3bdfb8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fdiv.s f15, f23, f3, dyn # perform operation
fdiv.s f15, f23, f3, rdn # perform operation
fdiv.s f15, f23, f3, rmm # perform operation
fdiv.s f15, f23, f3, rne # perform operation
fdiv.s f15, f23, f3, rtz # perform operation
fdiv.s f15, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x31, 0xee9bde02461196df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fdiv.s f31, f8, f4, dyn # perform operation
fdiv.s f31, f8, f4, rdn # perform operation
fdiv.s f31, f8, f4, rmm # perform operation
fdiv.s f31, f8, f4, rne # perform operation
fdiv.s f31, f8, f4, rtz # perform operation
fdiv.s f31, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x24, 0xbf13260107025acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fdiv.s f24, f16, f1, dyn # perform operation
fdiv.s f24, f16, f1, rdn # perform operation
fdiv.s f24, f16, f1, rmm # perform operation
fdiv.s f24, f16, f1, rne # perform operation
fdiv.s f24, f16, f1, rtz # perform operation
fdiv.s f24, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x16, 0xa610e0935b01b9e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fdiv.s f16, f27, f5, dyn # perform operation
fdiv.s f16, f27, f5, rdn # perform operation
fdiv.s f16, f27, f5, rmm # perform operation
fdiv.s f16, f27, f5, rne # perform operation
fdiv.s f16, f27, f5, rtz # perform operation
fdiv.s f16, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x8, 0xf4866c864a8bc56f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fdiv.s f8, f25, f2, dyn # perform operation
fdiv.s f8, f25, f2, rdn # perform operation
fdiv.s f8, f25, f2, rmm # perform operation
fdiv.s f8, f25, f2, rne # perform operation
fdiv.s f8, f25, f2, rtz # perform operation
fdiv.s f8, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x21, 0x246362656dd779e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fdiv.s f21, f22, f9, dyn # perform operation
fdiv.s f21, f22, f9, rdn # perform operation
fdiv.s f21, f22, f9, rmm # perform operation
fdiv.s f21, f22, f9, rne # perform operation
fdiv.s f21, f22, f9, rtz # perform operation
fdiv.s f21, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x17, 0xd04fa0328d6b1cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fdiv.s f17, f10, f13, dyn # perform operation
fdiv.s f17, f10, f13, rdn # perform operation
fdiv.s f17, f10, f13, rmm # perform operation
fdiv.s f17, f10, f13, rne # perform operation
fdiv.s f17, f10, f13, rtz # perform operation
fdiv.s f17, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x28, 0x7d3c6318d2ac879a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fdiv.s f28, f12, f26, dyn # perform operation
fdiv.s f28, f12, f26, rdn # perform operation
fdiv.s f28, f12, f26, rmm # perform operation
fdiv.s f28, f12, f26, rne # perform operation
fdiv.s f28, f12, f26, rtz # perform operation
fdiv.s f28, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x6, 0x04a0248685641200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fdiv.s f6, f29, f13, dyn # perform operation
fdiv.s f6, f29, f13, rdn # perform operation
fdiv.s f6, f29, f13, rmm # perform operation
fdiv.s f6, f29, f13, rne # perform operation
fdiv.s f6, f29, f13, rtz # perform operation
fdiv.s f6, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x19, 0x3466c9b266d3b134 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fdiv.s f19, f6, f17, dyn # perform operation
fdiv.s f19, f6, f17, rdn # perform operation
fdiv.s f19, f6, f17, rmm # perform operation
fdiv.s f19, f6, f17, rne # perform operation
fdiv.s f19, f6, f17, rtz # perform operation
fdiv.s f19, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x19, 0xa13461304aca48fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fdiv.s f19, f23, f16, dyn # perform operation
fdiv.s f19, f23, f16, rdn # perform operation
fdiv.s f19, f23, f16, rmm # perform operation
fdiv.s f19, f23, f16, rne # perform operation
fdiv.s f19, f23, f16, rtz # perform operation
fdiv.s f19, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x23, 0x4b8b81b184c9fa4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f23, f2, f26, dyn # perform operation
fdiv.s f23, f2, f26, rdn # perform operation
fdiv.s f23, f2, f26, rmm # perform operation
fdiv.s f23, f2, f26, rne # perform operation
fdiv.s f23, f2, f26, rtz # perform operation
fdiv.s f23, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x7, 0x785b3505bd96ce91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fdiv.s f7, f19, f18, dyn # perform operation
fdiv.s f7, f19, f18, rdn # perform operation
fdiv.s f7, f19, f18, rmm # perform operation
fdiv.s f7, f19, f18, rne # perform operation
fdiv.s f7, f19, f18, rtz # perform operation
fdiv.s f7, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x10, 0x9090a53a23459cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fdiv.s f10, f8, f6, dyn # perform operation
fdiv.s f10, f8, f6, rdn # perform operation
fdiv.s f10, f8, f6, rmm # perform operation
fdiv.s f10, f8, f6, rne # perform operation
fdiv.s f10, f8, f6, rtz # perform operation
fdiv.s f10, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x15, 0x3c1c4e3abe3ce53f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fdiv.s f15, f7, f4, dyn # perform operation
fdiv.s f15, f7, f4, rdn # perform operation
fdiv.s f15, f7, f4, rmm # perform operation
fdiv.s f15, f7, f4, rne # perform operation
fdiv.s f15, f7, f4, rtz # perform operation
fdiv.s f15, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x19, 0xa461fc35b2d3eb62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fdiv.s f19, f28, f30, dyn # perform operation
fdiv.s f19, f28, f30, rdn # perform operation
fdiv.s f19, f28, f30, rmm # perform operation
fdiv.s f19, f28, f30, rne # perform operation
fdiv.s f19, f28, f30, rtz # perform operation
fdiv.s f19, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x26, 0x1247fa442fd91e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fdiv.s f26, f30, f15, dyn # perform operation
fdiv.s f26, f30, f15, rdn # perform operation
fdiv.s f26, f30, f15, rmm # perform operation
fdiv.s f26, f30, f15, rne # perform operation
fdiv.s f26, f30, f15, rtz # perform operation
fdiv.s f26, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x26, 0x956254423cc4c81a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fdiv.s f26, f29, f15, dyn # perform operation
fdiv.s f26, f29, f15, rdn # perform operation
fdiv.s f26, f29, f15, rmm # perform operation
fdiv.s f26, f29, f15, rne # perform operation
fdiv.s f26, f29, f15, rtz # perform operation
fdiv.s f26, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x15, 0xc5341de18554a23c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fdiv.s f15, f13, f5, dyn # perform operation
fdiv.s f15, f13, f5, rdn # perform operation
fdiv.s f15, f13, f5, rmm # perform operation
fdiv.s f15, f13, f5, rne # perform operation
fdiv.s f15, f13, f5, rtz # perform operation
fdiv.s f15, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x18, 0xadf9194e61a35c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fdiv.s f18, f30, f7, dyn # perform operation
fdiv.s f18, f30, f7, rdn # perform operation
fdiv.s f18, f30, f7, rmm # perform operation
fdiv.s f18, f30, f7, rne # perform operation
fdiv.s f18, f30, f7, rtz # perform operation
fdiv.s f18, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x14, 0x76bbffa61cba6577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f14, f4, f15, dyn # perform operation
fdiv.s f14, f4, f15, rdn # perform operation
fdiv.s f14, f4, f15, rmm # perform operation
fdiv.s f14, f4, f15, rne # perform operation
fdiv.s f14, f4, f15, rtz # perform operation
fdiv.s f14, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x9, 0xee9de75dcd2ae4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f9, f29, f27, dyn # perform operation
fdiv.s f9, f29, f27, rdn # perform operation
fdiv.s f9, f29, f27, rmm # perform operation
fdiv.s f9, f29, f27, rne # perform operation
fdiv.s f9, f29, f27, rtz # perform operation
fdiv.s f9, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x22, 0x1161ff3404732ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fdiv.s f22, f30, f17, dyn # perform operation
fdiv.s f22, f30, f17, rdn # perform operation
fdiv.s f22, f30, f17, rmm # perform operation
fdiv.s f22, f30, f17, rne # perform operation
fdiv.s f22, f30, f17, rtz # perform operation
fdiv.s f22, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x7, 0xe3b132f0264b4e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fdiv.s f7, f8, f11, dyn # perform operation
fdiv.s f7, f8, f11, rdn # perform operation
fdiv.s f7, f8, f11, rmm # perform operation
fdiv.s f7, f8, f11, rne # perform operation
fdiv.s f7, f8, f11, rtz # perform operation
fdiv.s f7, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x20, 0xbbdaacfddc0cd558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fdiv.s f20, f4, f18, dyn # perform operation
fdiv.s f20, f4, f18, rdn # perform operation
fdiv.s f20, f4, f18, rmm # perform operation
fdiv.s f20, f4, f18, rne # perform operation
fdiv.s f20, f4, f18, rtz # perform operation
fdiv.s f20, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f4, f18 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xc04c469f46f706b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f7aadbdba4d156a # load x3 with value 0x3f7aadbdba4d156a
sw x3, 0(x2) # store 0x3f7aadbdba4d156a in memory
flw f9, 0(x2) # load 0x3f7aadbdba4d156a from memory into f9
li x3, 0x54a3ac6644ccec3a # load x3 with value 0x54a3ac6644ccec3a
sw x3, 0(x2) # store 0x54a3ac6644ccec3a in memory
flw f4, 0(x2) # load 0x54a3ac6644ccec3a from memory into f4
fdiv.s f0, f9, f4 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x69ca80c40842de45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x136d00be88291a43 # load x3 with value 0x136d00be88291a43
sw x3, 0(x2) # store 0x136d00be88291a43 in memory
flw f6, 0(x2) # load 0x136d00be88291a43 from memory into f6
li x3, 0xe43e99766dd9e402 # load x3 with value 0xe43e99766dd9e402
sw x3, 0(x2) # store 0xe43e99766dd9e402 in memory
flw f8, 0(x2) # load 0xe43e99766dd9e402 from memory into f8
fdiv.s f1, f6, f8 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x095818a682b976f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33a9c4d3c01255ad # load x3 with value 0x33a9c4d3c01255ad
sw x3, 0(x2) # store 0x33a9c4d3c01255ad in memory
flw f24, 0(x2) # load 0x33a9c4d3c01255ad from memory into f24
li x3, 0x7f07c4c819585bda # load x3 with value 0x7f07c4c819585bda
sw x3, 0(x2) # store 0x7f07c4c819585bda in memory
flw f12, 0(x2) # load 0x7f07c4c819585bda from memory into f12
fdiv.s f2, f24, f12 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x99de3365f315ba54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5d58a43e92fa4d0 # load x3 with value 0xf5d58a43e92fa4d0
sw x3, 0(x2) # store 0xf5d58a43e92fa4d0 in memory
flw f24, 0(x2) # load 0xf5d58a43e92fa4d0 from memory into f24
li x3, 0x8a9dd527b9cf0f1f # load x3 with value 0x8a9dd527b9cf0f1f
sw x3, 0(x2) # store 0x8a9dd527b9cf0f1f in memory
flw f19, 0(x2) # load 0x8a9dd527b9cf0f1f from memory into f19
fdiv.s f3, f24, f19 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xbe4cf7fd8d2abaab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccb1f86b8035440a # load x3 with value 0xccb1f86b8035440a
sw x3, 0(x2) # store 0xccb1f86b8035440a in memory
flw f24, 0(x2) # load 0xccb1f86b8035440a from memory into f24
li x3, 0x9e2b49a9b4f19706 # load x3 with value 0x9e2b49a9b4f19706
sw x3, 0(x2) # store 0x9e2b49a9b4f19706 in memory
flw f4, 0(x2) # load 0x9e2b49a9b4f19706 from memory into f4
fdiv.s f4, f24, f4 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x839e961a5bd62e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84bd8020e1b6f002 # load x3 with value 0x84bd8020e1b6f002
sw x3, 0(x2) # store 0x84bd8020e1b6f002 in memory
flw f23, 0(x2) # load 0x84bd8020e1b6f002 from memory into f23
li x3, 0x49d1d4a529619a49 # load x3 with value 0x49d1d4a529619a49
sw x3, 0(x2) # store 0x49d1d4a529619a49 in memory
flw f17, 0(x2) # load 0x49d1d4a529619a49 from memory into f17
fdiv.s f5, f23, f17 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x7cc753b39899f767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa67ae837ae905625 # load x3 with value 0xa67ae837ae905625
sw x3, 0(x2) # store 0xa67ae837ae905625 in memory
flw f14, 0(x2) # load 0xa67ae837ae905625 from memory into f14
li x3, 0xb51dd5b3d814244e # load x3 with value 0xb51dd5b3d814244e
sw x3, 0(x2) # store 0xb51dd5b3d814244e in memory
flw f24, 0(x2) # load 0xb51dd5b3d814244e from memory into f24
fdiv.s f6, f14, f24 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xcb8f77f43d294ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8958bbfa302752cc # load x3 with value 0x8958bbfa302752cc
sw x3, 0(x2) # store 0x8958bbfa302752cc in memory
flw f8, 0(x2) # load 0x8958bbfa302752cc from memory into f8
li x3, 0xfe89ac93a1bd941d # load x3 with value 0xfe89ac93a1bd941d
sw x3, 0(x2) # store 0xfe89ac93a1bd941d in memory
flw f13, 0(x2) # load 0xfe89ac93a1bd941d from memory into f13
fdiv.s f7, f8, f13 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x76aa9260cb757f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dd64f7fc2feb0d6 # load x3 with value 0x5dd64f7fc2feb0d6
sw x3, 0(x2) # store 0x5dd64f7fc2feb0d6 in memory
flw f31, 0(x2) # load 0x5dd64f7fc2feb0d6 from memory into f31
li x3, 0x69f69fcc563d9ee5 # load x3 with value 0x69f69fcc563d9ee5
sw x3, 0(x2) # store 0x69f69fcc563d9ee5 in memory
flw f26, 0(x2) # load 0x69f69fcc563d9ee5 from memory into f26
fdiv.s f8, f31, f26 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x3bcc0d9651030bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x436f0fa786a1bca8 # load x3 with value 0x436f0fa786a1bca8
sw x3, 0(x2) # store 0x436f0fa786a1bca8 in memory
flw f19, 0(x2) # load 0x436f0fa786a1bca8 from memory into f19
li x3, 0x5ca3c169898a3aef # load x3 with value 0x5ca3c169898a3aef
sw x3, 0(x2) # store 0x5ca3c169898a3aef in memory
flw f31, 0(x2) # load 0x5ca3c169898a3aef from memory into f31
fdiv.s f9, f19, f31 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x186e51fde6dc11d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa78e9ffee4144eba # load x3 with value 0xa78e9ffee4144eba
sw x3, 0(x2) # store 0xa78e9ffee4144eba in memory
flw f20, 0(x2) # load 0xa78e9ffee4144eba from memory into f20
li x3, 0x9ec0e96eb80f3e74 # load x3 with value 0x9ec0e96eb80f3e74
sw x3, 0(x2) # store 0x9ec0e96eb80f3e74 in memory
flw f22, 0(x2) # load 0x9ec0e96eb80f3e74 from memory into f22
fdiv.s f10, f20, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x544ff696500a9b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60d6984e35b94092 # load x3 with value 0x60d6984e35b94092
sw x3, 0(x2) # store 0x60d6984e35b94092 in memory
flw f27, 0(x2) # load 0x60d6984e35b94092 from memory into f27
li x3, 0xf2dddc30dba94576 # load x3 with value 0xf2dddc30dba94576
sw x3, 0(x2) # store 0xf2dddc30dba94576 in memory
flw f15, 0(x2) # load 0xf2dddc30dba94576 from memory into f15
fdiv.s f11, f27, f15 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xd04d913169f81801 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1ae7f5a6a27789f # load x3 with value 0xf1ae7f5a6a27789f
sw x3, 0(x2) # store 0xf1ae7f5a6a27789f in memory
flw f15, 0(x2) # load 0xf1ae7f5a6a27789f from memory into f15
li x3, 0x95147f55e58698d4 # load x3 with value 0x95147f55e58698d4
sw x3, 0(x2) # store 0x95147f55e58698d4 in memory
flw f17, 0(x2) # load 0x95147f55e58698d4 from memory into f17
fdiv.s f12, f15, f17 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x195916cf3448e1cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5f83257f878c295 # load x3 with value 0xf5f83257f878c295
sw x3, 0(x2) # store 0xf5f83257f878c295 in memory
flw f2, 0(x2) # load 0xf5f83257f878c295 from memory into f2
li x3, 0xd6483803798ada60 # load x3 with value 0xd6483803798ada60
sw x3, 0(x2) # store 0xd6483803798ada60 in memory
flw f13, 0(x2) # load 0xd6483803798ada60 from memory into f13
fdiv.s f13, f2, f13 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x166bd89a42093ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76f12e6539710adc # load x3 with value 0x76f12e6539710adc
sw x3, 0(x2) # store 0x76f12e6539710adc in memory
flw f27, 0(x2) # load 0x76f12e6539710adc from memory into f27
li x3, 0x299fa159fba58204 # load x3 with value 0x299fa159fba58204
sw x3, 0(x2) # store 0x299fa159fba58204 in memory
flw f11, 0(x2) # load 0x299fa159fba58204 from memory into f11
fdiv.s f14, f27, f11 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x8857c08fcef88ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7382cc5d36985c99 # load x3 with value 0x7382cc5d36985c99
sw x3, 0(x2) # store 0x7382cc5d36985c99 in memory
flw f11, 0(x2) # load 0x7382cc5d36985c99 from memory into f11
li x3, 0x9e681fc9eb5883d2 # load x3 with value 0x9e681fc9eb5883d2
sw x3, 0(x2) # store 0x9e681fc9eb5883d2 in memory
flw f6, 0(x2) # load 0x9e681fc9eb5883d2 from memory into f6
fdiv.s f15, f11, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xcb7c436f0cf1fd3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98158cdf6ce91252 # load x3 with value 0x98158cdf6ce91252
sw x3, 0(x2) # store 0x98158cdf6ce91252 in memory
flw f8, 0(x2) # load 0x98158cdf6ce91252 from memory into f8
li x3, 0x502106b3c07dce21 # load x3 with value 0x502106b3c07dce21
sw x3, 0(x2) # store 0x502106b3c07dce21 in memory
flw f30, 0(x2) # load 0x502106b3c07dce21 from memory into f30
fdiv.s f16, f8, f30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xd62cbeb9d0082ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813e1550357fd618 # load x3 with value 0x813e1550357fd618
sw x3, 0(x2) # store 0x813e1550357fd618 in memory
flw f2, 0(x2) # load 0x813e1550357fd618 from memory into f2
li x3, 0x7f13dbed358de1d1 # load x3 with value 0x7f13dbed358de1d1
sw x3, 0(x2) # store 0x7f13dbed358de1d1 in memory
flw f7, 0(x2) # load 0x7f13dbed358de1d1 from memory into f7
fdiv.s f17, f2, f7 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x937ac8a43d653893 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfb504b48d8c7a5e # load x3 with value 0xdfb504b48d8c7a5e
sw x3, 0(x2) # store 0xdfb504b48d8c7a5e in memory
flw f4, 0(x2) # load 0xdfb504b48d8c7a5e from memory into f4
li x3, 0xfa43c4e2acd7cca4 # load x3 with value 0xfa43c4e2acd7cca4
sw x3, 0(x2) # store 0xfa43c4e2acd7cca4 in memory
flw f31, 0(x2) # load 0xfa43c4e2acd7cca4 from memory into f31
fdiv.s f18, f4, f31 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x57fd76f8e22feff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac23adfcab3b1945 # load x3 with value 0xac23adfcab3b1945
sw x3, 0(x2) # store 0xac23adfcab3b1945 in memory
flw f18, 0(x2) # load 0xac23adfcab3b1945 from memory into f18
li x3, 0x171b0b428532433c # load x3 with value 0x171b0b428532433c
sw x3, 0(x2) # store 0x171b0b428532433c in memory
flw f1, 0(x2) # load 0x171b0b428532433c from memory into f1
fdiv.s f19, f18, f1 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcf04e42ce5082e74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf10ef3892a8ff4f7 # load x3 with value 0xf10ef3892a8ff4f7
sw x3, 0(x2) # store 0xf10ef3892a8ff4f7 in memory
flw f15, 0(x2) # load 0xf10ef3892a8ff4f7 from memory into f15
li x3, 0x38bbbe06519baf2f # load x3 with value 0x38bbbe06519baf2f
sw x3, 0(x2) # store 0x38bbbe06519baf2f in memory
flw f13, 0(x2) # load 0x38bbbe06519baf2f from memory into f13
fdiv.s f20, f15, f13 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x944e750cda0b1e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc00e0d786e18a444 # load x3 with value 0xc00e0d786e18a444
sw x3, 0(x2) # store 0xc00e0d786e18a444 in memory
flw f13, 0(x2) # load 0xc00e0d786e18a444 from memory into f13
li x3, 0xd31b9748b7838151 # load x3 with value 0xd31b9748b7838151
sw x3, 0(x2) # store 0xd31b9748b7838151 in memory
flw f17, 0(x2) # load 0xd31b9748b7838151 from memory into f17
fdiv.s f21, f13, f17 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xcb667d7b20833fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c6e41985d80356f # load x3 with value 0x2c6e41985d80356f
sw x3, 0(x2) # store 0x2c6e41985d80356f in memory
flw f11, 0(x2) # load 0x2c6e41985d80356f from memory into f11
li x3, 0x201bfdcd907b6391 # load x3 with value 0x201bfdcd907b6391
sw x3, 0(x2) # store 0x201bfdcd907b6391 in memory
flw f29, 0(x2) # load 0x201bfdcd907b6391 from memory into f29
fdiv.s f22, f11, f29 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x8e3f872e80018bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb3aa62f9c0500fc # load x3 with value 0xdb3aa62f9c0500fc
sw x3, 0(x2) # store 0xdb3aa62f9c0500fc in memory
flw f19, 0(x2) # load 0xdb3aa62f9c0500fc from memory into f19
li x3, 0xbd429dfe41fa7474 # load x3 with value 0xbd429dfe41fa7474
sw x3, 0(x2) # store 0xbd429dfe41fa7474 in memory
flw f26, 0(x2) # load 0xbd429dfe41fa7474 from memory into f26
fdiv.s f23, f19, f26 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xadf1271fe7d1a7e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f9fa6f2cd5e8058 # load x3 with value 0x4f9fa6f2cd5e8058
sw x3, 0(x2) # store 0x4f9fa6f2cd5e8058 in memory
flw f16, 0(x2) # load 0x4f9fa6f2cd5e8058 from memory into f16
li x3, 0x6fa600ee7dbebf96 # load x3 with value 0x6fa600ee7dbebf96
sw x3, 0(x2) # store 0x6fa600ee7dbebf96 in memory
flw f23, 0(x2) # load 0x6fa600ee7dbebf96 from memory into f23
fdiv.s f24, f16, f23 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xc715745924444c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x517f473ef6faa57e # load x3 with value 0x517f473ef6faa57e
sw x3, 0(x2) # store 0x517f473ef6faa57e in memory
flw f6, 0(x2) # load 0x517f473ef6faa57e from memory into f6
li x3, 0xbc6b1ad0c72b9176 # load x3 with value 0xbc6b1ad0c72b9176
sw x3, 0(x2) # store 0xbc6b1ad0c72b9176 in memory
flw f2, 0(x2) # load 0xbc6b1ad0c72b9176 from memory into f2
fdiv.s f25, f6, f2 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xe5ba6c7318a043fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x980e0cc931a69e7c # load x3 with value 0x980e0cc931a69e7c
sw x3, 0(x2) # store 0x980e0cc931a69e7c in memory
flw f7, 0(x2) # load 0x980e0cc931a69e7c from memory into f7
li x3, 0x8092717bbd4a37de # load x3 with value 0x8092717bbd4a37de
sw x3, 0(x2) # store 0x8092717bbd4a37de in memory
flw f12, 0(x2) # load 0x8092717bbd4a37de from memory into f12
fdiv.s f26, f7, f12 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x91e90bfa5bd483b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb837b619167aa8b0 # load x3 with value 0xb837b619167aa8b0
sw x3, 0(x2) # store 0xb837b619167aa8b0 in memory
flw f29, 0(x2) # load 0xb837b619167aa8b0 from memory into f29
li x3, 0x436d3670c8015c08 # load x3 with value 0x436d3670c8015c08
sw x3, 0(x2) # store 0x436d3670c8015c08 in memory
flw f27, 0(x2) # load 0x436d3670c8015c08 from memory into f27
fdiv.s f27, f29, f27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x2eb7129004e48c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15173289757c9fd6 # load x3 with value 0x15173289757c9fd6
sw x3, 0(x2) # store 0x15173289757c9fd6 in memory
flw f4, 0(x2) # load 0x15173289757c9fd6 from memory into f4
li x3, 0x84084f8897f12345 # load x3 with value 0x84084f8897f12345
sw x3, 0(x2) # store 0x84084f8897f12345 in memory
flw f14, 0(x2) # load 0x84084f8897f12345 from memory into f14
fdiv.s f28, f4, f14 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x84ca97dfab3123be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x647725f14f8631bc # load x3 with value 0x647725f14f8631bc
sw x3, 0(x2) # store 0x647725f14f8631bc in memory
flw f28, 0(x2) # load 0x647725f14f8631bc from memory into f28
li x3, 0x2ff69c0961ce92f2 # load x3 with value 0x2ff69c0961ce92f2
sw x3, 0(x2) # store 0x2ff69c0961ce92f2 in memory
flw f2, 0(x2) # load 0x2ff69c0961ce92f2 from memory into f2
fdiv.s f29, f28, f2 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x5d2a365ea8f0a00f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8984cad24958b8c6 # load x3 with value 0x8984cad24958b8c6
sw x3, 0(x2) # store 0x8984cad24958b8c6 in memory
flw f18, 0(x2) # load 0x8984cad24958b8c6 from memory into f18
li x3, 0x21600254702ae9ff # load x3 with value 0x21600254702ae9ff
sw x3, 0(x2) # store 0x21600254702ae9ff in memory
flw f10, 0(x2) # load 0x21600254702ae9ff from memory into f10
fdiv.s f30, f18, f10 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xaa7bb8a10571c782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f81e3408db83ee1 # load x3 with value 0x8f81e3408db83ee1
sw x3, 0(x2) # store 0x8f81e3408db83ee1 in memory
flw f5, 0(x2) # load 0x8f81e3408db83ee1 from memory into f5
li x3, 0x8b702f2b72333e8 # load x3 with value 0x8b702f2b72333e8
sw x3, 0(x2) # store 0x8b702f2b72333e8 in memory
flw f3, 0(x2) # load 0x8b702f2b72333e8 from memory into f3
fdiv.s f31, f5, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x14, 0x63fd344ac025d0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d91c1bfd68fc90f # load x3 with value 0x2d91c1bfd68fc90f
sw x3, 0(x2) # store 0x2d91c1bfd68fc90f in memory
flw f0, 0(x2) # load 0x2d91c1bfd68fc90f from memory into f0
li x3, 0x7fe2e77407e87e70 # load x3 with value 0x7fe2e77407e87e70
sw x3, 0(x2) # store 0x7fe2e77407e87e70 in memory
flw f27, 0(x2) # load 0x7fe2e77407e87e70 from memory into f27
fdiv.s f14, f0, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x2, 0x58eeab7b9c64a473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87048a39fc7763ca # load x3 with value 0x87048a39fc7763ca
sw x3, 0(x2) # store 0x87048a39fc7763ca in memory
flw f1, 0(x2) # load 0x87048a39fc7763ca from memory into f1
li x3, 0xf1cd383112da5e39 # load x3 with value 0xf1cd383112da5e39
sw x3, 0(x2) # store 0xf1cd383112da5e39 in memory
flw f11, 0(x2) # load 0xf1cd383112da5e39 from memory into f11
fdiv.s f2, f1, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x22, 0x12d7bc6b4107df06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd385bd6b7a67929f # load x3 with value 0xd385bd6b7a67929f
sw x3, 0(x2) # store 0xd385bd6b7a67929f in memory
flw f2, 0(x2) # load 0xd385bd6b7a67929f from memory into f2
li x3, 0xab4a72c137037d8d # load x3 with value 0xab4a72c137037d8d
sw x3, 0(x2) # store 0xab4a72c137037d8d in memory
flw f18, 0(x2) # load 0xab4a72c137037d8d from memory into f18
fdiv.s f22, f2, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x2, 0xebefd6dabdc23008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45bf29205b38451 # load x3 with value 0x45bf29205b38451
sw x3, 0(x2) # store 0x45bf29205b38451 in memory
flw f3, 0(x2) # load 0x45bf29205b38451 from memory into f3
li x3, 0x7f926bb1c01efaae # load x3 with value 0x7f926bb1c01efaae
sw x3, 0(x2) # store 0x7f926bb1c01efaae in memory
flw f7, 0(x2) # load 0x7f926bb1c01efaae from memory into f7
fdiv.s f2, f3, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0xdbb28e455cd5c3bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0f7866464437a67 # load x3 with value 0xd0f7866464437a67
sw x3, 0(x2) # store 0xd0f7866464437a67 in memory
flw f4, 0(x2) # load 0xd0f7866464437a67 from memory into f4
li x3, 0x25efe06493b7e934 # load x3 with value 0x25efe06493b7e934
sw x3, 0(x2) # store 0x25efe06493b7e934 in memory
flw f8, 0(x2) # load 0x25efe06493b7e934 from memory into f8
fdiv.s f15, f4, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x13, 0x4406d3de3ea92da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c0537eabe7a9a44 # load x3 with value 0x7c0537eabe7a9a44
sw x3, 0(x2) # store 0x7c0537eabe7a9a44 in memory
flw f5, 0(x2) # load 0x7c0537eabe7a9a44 from memory into f5
li x3, 0x5fc6f305b93eab15 # load x3 with value 0x5fc6f305b93eab15
sw x3, 0(x2) # store 0x5fc6f305b93eab15 in memory
flw f11, 0(x2) # load 0x5fc6f305b93eab15 from memory into f11
fdiv.s f13, f5, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x5, 0x70b3d8af04822bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x760753820ffc4e42 # load x3 with value 0x760753820ffc4e42
sw x3, 0(x2) # store 0x760753820ffc4e42 in memory
flw f6, 0(x2) # load 0x760753820ffc4e42 from memory into f6
li x3, 0x50766933c1f38cc0 # load x3 with value 0x50766933c1f38cc0
sw x3, 0(x2) # store 0x50766933c1f38cc0 in memory
flw f20, 0(x2) # load 0x50766933c1f38cc0 from memory into f20
fdiv.s f5, f6, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x7, 0x61e44834cf2894ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8b5e3ca0294c72d # load x3 with value 0xa8b5e3ca0294c72d
sw x3, 0(x2) # store 0xa8b5e3ca0294c72d in memory
flw f7, 0(x2) # load 0xa8b5e3ca0294c72d from memory into f7
li x3, 0xc9aac4984a22cd20 # load x3 with value 0xc9aac4984a22cd20
sw x3, 0(x2) # store 0xc9aac4984a22cd20 in memory
flw f5, 0(x2) # load 0xc9aac4984a22cd20 from memory into f5
fdiv.s f7, f7, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0x39c4199aa9e8a10b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfee50822f05a668 # load x3 with value 0xbfee50822f05a668
sw x3, 0(x2) # store 0xbfee50822f05a668 in memory
flw f8, 0(x2) # load 0xbfee50822f05a668 from memory into f8
li x3, 0xaaab4bf3dc256e7a # load x3 with value 0xaaab4bf3dc256e7a
sw x3, 0(x2) # store 0xaaab4bf3dc256e7a in memory
flw f26, 0(x2) # load 0xaaab4bf3dc256e7a from memory into f26
fdiv.s f18, f8, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x5, 0xc8f24fb29c1ef2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1ce8e11fd08005e # load x3 with value 0xc1ce8e11fd08005e
sw x3, 0(x2) # store 0xc1ce8e11fd08005e in memory
flw f9, 0(x2) # load 0xc1ce8e11fd08005e from memory into f9
li x3, 0x6f6db924165657ba # load x3 with value 0x6f6db924165657ba
sw x3, 0(x2) # store 0x6f6db924165657ba in memory
flw f11, 0(x2) # load 0x6f6db924165657ba from memory into f11
fdiv.s f5, f9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x15, 0xa4d9342ec57c7186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf26693b0621ef724 # load x3 with value 0xf26693b0621ef724
sw x3, 0(x2) # store 0xf26693b0621ef724 in memory
flw f10, 0(x2) # load 0xf26693b0621ef724 from memory into f10
li x3, 0x375b889654ad4a38 # load x3 with value 0x375b889654ad4a38
sw x3, 0(x2) # store 0x375b889654ad4a38 in memory
flw f3, 0(x2) # load 0x375b889654ad4a38 from memory into f3
fdiv.s f15, f10, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x7, 0x992db6f5abf36bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2d93df6d1c2a679 # load x3 with value 0xe2d93df6d1c2a679
sw x3, 0(x2) # store 0xe2d93df6d1c2a679 in memory
flw f11, 0(x2) # load 0xe2d93df6d1c2a679 from memory into f11
li x3, 0xe52937a3b73021e6 # load x3 with value 0xe52937a3b73021e6
sw x3, 0(x2) # store 0xe52937a3b73021e6 in memory
flw f17, 0(x2) # load 0xe52937a3b73021e6 from memory into f17
fdiv.s f7, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x4, 0x86cf2f99bc04d08a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cfc575e5d893230 # load x3 with value 0x5cfc575e5d893230
sw x3, 0(x2) # store 0x5cfc575e5d893230 in memory
flw f12, 0(x2) # load 0x5cfc575e5d893230 from memory into f12
li x3, 0x93aac45c35b1f6fd # load x3 with value 0x93aac45c35b1f6fd
sw x3, 0(x2) # store 0x93aac45c35b1f6fd in memory
flw f22, 0(x2) # load 0x93aac45c35b1f6fd from memory into f22
fdiv.s f4, f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x27, 0xba19536ec6d0db32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91413330125588b9 # load x3 with value 0x91413330125588b9
sw x3, 0(x2) # store 0x91413330125588b9 in memory
flw f13, 0(x2) # load 0x91413330125588b9 from memory into f13
li x3, 0x54bb82ccae9692a8 # load x3 with value 0x54bb82ccae9692a8
sw x3, 0(x2) # store 0x54bb82ccae9692a8 in memory
flw f17, 0(x2) # load 0x54bb82ccae9692a8 from memory into f17
fdiv.s f27, f13, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x29, 0x516103d66d2b7e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89311db466af4d0f # load x3 with value 0x89311db466af4d0f
sw x3, 0(x2) # store 0x89311db466af4d0f in memory
flw f14, 0(x2) # load 0x89311db466af4d0f from memory into f14
li x3, 0xee71e09c09eac328 # load x3 with value 0xee71e09c09eac328
sw x3, 0(x2) # store 0xee71e09c09eac328 in memory
flw f1, 0(x2) # load 0xee71e09c09eac328 from memory into f1
fdiv.s f29, f14, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x17, 0xd30ad2dd2b068a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x456e8883944149c5 # load x3 with value 0x456e8883944149c5
sw x3, 0(x2) # store 0x456e8883944149c5 in memory
flw f15, 0(x2) # load 0x456e8883944149c5 from memory into f15
li x3, 0xd0669341aa6499c1 # load x3 with value 0xd0669341aa6499c1
sw x3, 0(x2) # store 0xd0669341aa6499c1 in memory
flw f2, 0(x2) # load 0xd0669341aa6499c1 from memory into f2
fdiv.s f17, f15, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x1, 0xb0858a6e4a7bab8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3b21a620e8f5025 # load x3 with value 0xd3b21a620e8f5025
sw x3, 0(x2) # store 0xd3b21a620e8f5025 in memory
flw f16, 0(x2) # load 0xd3b21a620e8f5025 from memory into f16
li x3, 0xdc7b150de8f2c1d4 # load x3 with value 0xdc7b150de8f2c1d4
sw x3, 0(x2) # store 0xdc7b150de8f2c1d4 in memory
flw f9, 0(x2) # load 0xdc7b150de8f2c1d4 from memory into f9
fdiv.s f1, f16, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x1, 0xb6c2e3af1df07d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ccd3702513f9b09 # load x3 with value 0x1ccd3702513f9b09
sw x3, 0(x2) # store 0x1ccd3702513f9b09 in memory
flw f17, 0(x2) # load 0x1ccd3702513f9b09 from memory into f17
li x3, 0xba13f8d2d7302c7d # load x3 with value 0xba13f8d2d7302c7d
sw x3, 0(x2) # store 0xba13f8d2d7302c7d in memory
flw f12, 0(x2) # load 0xba13f8d2d7302c7d from memory into f12
fdiv.s f1, f17, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x12, 0x3774e3bbd4827181 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6a0b8d13bdb82e9 # load x3 with value 0xa6a0b8d13bdb82e9
sw x3, 0(x2) # store 0xa6a0b8d13bdb82e9 in memory
flw f18, 0(x2) # load 0xa6a0b8d13bdb82e9 from memory into f18
li x3, 0x51a3f6f984dd16d0 # load x3 with value 0x51a3f6f984dd16d0
sw x3, 0(x2) # store 0x51a3f6f984dd16d0 in memory
flw f4, 0(x2) # load 0x51a3f6f984dd16d0 from memory into f4
fdiv.s f12, f18, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x4, 0x69920c0073bf270d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x920e2d76c53ccb99 # load x3 with value 0x920e2d76c53ccb99
sw x3, 0(x2) # store 0x920e2d76c53ccb99 in memory
flw f19, 0(x2) # load 0x920e2d76c53ccb99 from memory into f19
li x3, 0x5016edf4db3c2d06 # load x3 with value 0x5016edf4db3c2d06
sw x3, 0(x2) # store 0x5016edf4db3c2d06 in memory
flw f15, 0(x2) # load 0x5016edf4db3c2d06 from memory into f15
fdiv.s f4, f19, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x6, 0xb98d7c09bde9538f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1985144fe47fd1c # load x3 with value 0xb1985144fe47fd1c
sw x3, 0(x2) # store 0xb1985144fe47fd1c in memory
flw f20, 0(x2) # load 0xb1985144fe47fd1c from memory into f20
li x3, 0xaaf0061f66dd1563 # load x3 with value 0xaaf0061f66dd1563
sw x3, 0(x2) # store 0xaaf0061f66dd1563 in memory
flw f8, 0(x2) # load 0xaaf0061f66dd1563 from memory into f8
fdiv.s f6, f20, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x1, 0xcf51eb612fac4fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e0aedeabb345417 # load x3 with value 0x3e0aedeabb345417
sw x3, 0(x2) # store 0x3e0aedeabb345417 in memory
flw f21, 0(x2) # load 0x3e0aedeabb345417 from memory into f21
li x3, 0x909ddaa3b0f175a4 # load x3 with value 0x909ddaa3b0f175a4
sw x3, 0(x2) # store 0x909ddaa3b0f175a4 in memory
flw f6, 0(x2) # load 0x909ddaa3b0f175a4 from memory into f6
fdiv.s f1, f21, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x1, 0x56dc61f774bac651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbd1c976d380c549 # load x3 with value 0xdbd1c976d380c549
sw x3, 0(x2) # store 0xdbd1c976d380c549 in memory
flw f22, 0(x2) # load 0xdbd1c976d380c549 from memory into f22
li x3, 0xdcb4fa42929e22a7 # load x3 with value 0xdcb4fa42929e22a7
sw x3, 0(x2) # store 0xdcb4fa42929e22a7 in memory
flw f11, 0(x2) # load 0xdcb4fa42929e22a7 from memory into f11
fdiv.s f1, f22, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x21, 0xd3a84dd06b05bdc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x116912085724c88d # load x3 with value 0x116912085724c88d
sw x3, 0(x2) # store 0x116912085724c88d in memory
flw f23, 0(x2) # load 0x116912085724c88d from memory into f23
li x3, 0xb8c65eb788fa393f # load x3 with value 0xb8c65eb788fa393f
sw x3, 0(x2) # store 0xb8c65eb788fa393f in memory
flw f6, 0(x2) # load 0xb8c65eb788fa393f from memory into f6
fdiv.s f21, f23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x10, 0x19f9821c1a443865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc52649a1e60d30aa # load x3 with value 0xc52649a1e60d30aa
sw x3, 0(x2) # store 0xc52649a1e60d30aa in memory
flw f24, 0(x2) # load 0xc52649a1e60d30aa from memory into f24
li x3, 0x383797b8156a36ec # load x3 with value 0x383797b8156a36ec
sw x3, 0(x2) # store 0x383797b8156a36ec in memory
flw f13, 0(x2) # load 0x383797b8156a36ec from memory into f13
fdiv.s f10, f24, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x19, 0x230b2e893c57e15e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf423b602657b5338 # load x3 with value 0xf423b602657b5338
sw x3, 0(x2) # store 0xf423b602657b5338 in memory
flw f25, 0(x2) # load 0xf423b602657b5338 from memory into f25
li x3, 0x985375d04d1ab091 # load x3 with value 0x985375d04d1ab091
sw x3, 0(x2) # store 0x985375d04d1ab091 in memory
flw f22, 0(x2) # load 0x985375d04d1ab091 from memory into f22
fdiv.s f19, f25, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x6, 0xec60f7a4838ba19f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb0318017d9a060e # load x3 with value 0xbb0318017d9a060e
sw x3, 0(x2) # store 0xbb0318017d9a060e in memory
flw f26, 0(x2) # load 0xbb0318017d9a060e from memory into f26
li x3, 0xfd493b7ac54b22c1 # load x3 with value 0xfd493b7ac54b22c1
sw x3, 0(x2) # store 0xfd493b7ac54b22c1 in memory
flw f24, 0(x2) # load 0xfd493b7ac54b22c1 from memory into f24
fdiv.s f6, f26, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x19, 0x61475193a9603ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf66c34f68a0a7ddb # load x3 with value 0xf66c34f68a0a7ddb
sw x3, 0(x2) # store 0xf66c34f68a0a7ddb in memory
flw f27, 0(x2) # load 0xf66c34f68a0a7ddb from memory into f27
li x3, 0x2d585a6f0cba7890 # load x3 with value 0x2d585a6f0cba7890
sw x3, 0(x2) # store 0x2d585a6f0cba7890 in memory
flw f2, 0(x2) # load 0x2d585a6f0cba7890 from memory into f2
fdiv.s f19, f27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x13, 0x70f7283530e4b4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ed217f25dc8733c # load x3 with value 0x3ed217f25dc8733c
sw x3, 0(x2) # store 0x3ed217f25dc8733c in memory
flw f28, 0(x2) # load 0x3ed217f25dc8733c from memory into f28
li x3, 0xa1ae1130fd743d80 # load x3 with value 0xa1ae1130fd743d80
sw x3, 0(x2) # store 0xa1ae1130fd743d80 in memory
flw f18, 0(x2) # load 0xa1ae1130fd743d80 from memory into f18
fdiv.s f13, f28, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x3, 0xecff2919c41e3748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadaeca253008bdf3 # load x3 with value 0xadaeca253008bdf3
sw x3, 0(x2) # store 0xadaeca253008bdf3 in memory
flw f29, 0(x2) # load 0xadaeca253008bdf3 from memory into f29
li x3, 0xd539b655f2e3f2d6 # load x3 with value 0xd539b655f2e3f2d6
sw x3, 0(x2) # store 0xd539b655f2e3f2d6 in memory
flw f22, 0(x2) # load 0xd539b655f2e3f2d6 from memory into f22
fdiv.s f3, f29, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x10, 0xbb6d880bb430478b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb1f154fa8d0ae0c # load x3 with value 0xeb1f154fa8d0ae0c
sw x3, 0(x2) # store 0xeb1f154fa8d0ae0c in memory
flw f30, 0(x2) # load 0xeb1f154fa8d0ae0c from memory into f30
li x3, 0x9b748811f7975495 # load x3 with value 0x9b748811f7975495
sw x3, 0(x2) # store 0x9b748811f7975495 in memory
flw f7, 0(x2) # load 0x9b748811f7975495 from memory into f7
fdiv.s f10, f30, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x10, 0xfa9bdeb4d6e4a4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x266f6220e44794e2 # load x3 with value 0x266f6220e44794e2
sw x3, 0(x2) # store 0x266f6220e44794e2 in memory
flw f31, 0(x2) # load 0x266f6220e44794e2 from memory into f31
li x3, 0x792b2a3222c7b721 # load x3 with value 0x792b2a3222c7b721
sw x3, 0(x2) # store 0x792b2a3222c7b721 in memory
flw f26, 0(x2) # load 0x792b2a3222c7b721 from memory into f26
fdiv.s f10, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x30, 0x35b9d36253f6ffde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x168ff2d8b96a0f44 # load x3 with value 0x168ff2d8b96a0f44
sw x3, 0(x2) # store 0x168ff2d8b96a0f44 in memory
flw f12, 0(x2) # load 0x168ff2d8b96a0f44 from memory into f12
li x3, 0x7a6f3103ee700881 # load x3 with value 0x7a6f3103ee700881
sw x3, 0(x2) # store 0x7a6f3103ee700881 in memory
flw f0, 0(x2) # load 0x7a6f3103ee700881 from memory into f0
fdiv.s f30, f12, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x29, 0xa49ace0c016ddba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa23a1e7d90c94c08 # load x3 with value 0xa23a1e7d90c94c08
sw x3, 0(x2) # store 0xa23a1e7d90c94c08 in memory
flw f6, 0(x2) # load 0xa23a1e7d90c94c08 from memory into f6
li x3, 0x8e8d6d75a7299412 # load x3 with value 0x8e8d6d75a7299412
sw x3, 0(x2) # store 0x8e8d6d75a7299412 in memory
flw f1, 0(x2) # load 0x8e8d6d75a7299412 from memory into f1
fdiv.s f29, f6, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x12, 0x44df22b8bf55273c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55f262c5dfc579ce # load x3 with value 0x55f262c5dfc579ce
sw x3, 0(x2) # store 0x55f262c5dfc579ce in memory
flw f31, 0(x2) # load 0x55f262c5dfc579ce from memory into f31
li x3, 0x47dba7a688fd3303 # load x3 with value 0x47dba7a688fd3303
sw x3, 0(x2) # store 0x47dba7a688fd3303 in memory
flw f2, 0(x2) # load 0x47dba7a688fd3303 from memory into f2
fdiv.s f12, f31, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x11, 0xfeb3b97dbe53e1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8e2356c8c37de45 # load x3 with value 0xf8e2356c8c37de45
sw x3, 0(x2) # store 0xf8e2356c8c37de45 in memory
flw f25, 0(x2) # load 0xf8e2356c8c37de45 from memory into f25
li x3, 0x49097a89e7cd7fcb # load x3 with value 0x49097a89e7cd7fcb
sw x3, 0(x2) # store 0x49097a89e7cd7fcb in memory
flw f3, 0(x2) # load 0x49097a89e7cd7fcb from memory into f3
fdiv.s f11, f25, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x12, 0x5176ea11c7d68b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71fc4f1a828f2746 # load x3 with value 0x71fc4f1a828f2746
sw x3, 0(x2) # store 0x71fc4f1a828f2746 in memory
flw f30, 0(x2) # load 0x71fc4f1a828f2746 from memory into f30
li x3, 0xb191790fca29584a # load x3 with value 0xb191790fca29584a
sw x3, 0(x2) # store 0xb191790fca29584a in memory
flw f4, 0(x2) # load 0xb191790fca29584a from memory into f4
fdiv.s f12, f30, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x22, 0x8b888e5128aa3fae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf34d163aea80f3b # load x3 with value 0xf34d163aea80f3b
sw x3, 0(x2) # store 0xf34d163aea80f3b in memory
flw f30, 0(x2) # load 0xf34d163aea80f3b from memory into f30
li x3, 0x6a46550002c6e3fd # load x3 with value 0x6a46550002c6e3fd
sw x3, 0(x2) # store 0x6a46550002c6e3fd in memory
flw f5, 0(x2) # load 0x6a46550002c6e3fd from memory into f5
fdiv.s f22, f30, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x22, 0x821edb799ffbdce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcac8988bed519bc2 # load x3 with value 0xcac8988bed519bc2
sw x3, 0(x2) # store 0xcac8988bed519bc2 in memory
flw f9, 0(x2) # load 0xcac8988bed519bc2 from memory into f9
li x3, 0x484cf145baefb1e4 # load x3 with value 0x484cf145baefb1e4
sw x3, 0(x2) # store 0x484cf145baefb1e4 in memory
flw f6, 0(x2) # load 0x484cf145baefb1e4 from memory into f6
fdiv.s f22, f9, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x20, 0x6ad4472c3610906f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2c0e72732e01429 # load x3 with value 0xa2c0e72732e01429
sw x3, 0(x2) # store 0xa2c0e72732e01429 in memory
flw f3, 0(x2) # load 0xa2c0e72732e01429 from memory into f3
li x3, 0xe60c6f1c4aa66a69 # load x3 with value 0xe60c6f1c4aa66a69
sw x3, 0(x2) # store 0xe60c6f1c4aa66a69 in memory
flw f7, 0(x2) # load 0xe60c6f1c4aa66a69 from memory into f7
fdiv.s f20, f3, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x14, 0xc770c9b62a7e0181 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bb1fbb8820a0e89 # load x3 with value 0x3bb1fbb8820a0e89
sw x3, 0(x2) # store 0x3bb1fbb8820a0e89 in memory
flw f10, 0(x2) # load 0x3bb1fbb8820a0e89 from memory into f10
li x3, 0xf4231d840949e600 # load x3 with value 0xf4231d840949e600
sw x3, 0(x2) # store 0xf4231d840949e600 in memory
flw f8, 0(x2) # load 0xf4231d840949e600 from memory into f8
fdiv.s f14, f10, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x22, 0x3573156f7e0ebde0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48c32ca03a95ae53 # load x3 with value 0x48c32ca03a95ae53
sw x3, 0(x2) # store 0x48c32ca03a95ae53 in memory
flw f21, 0(x2) # load 0x48c32ca03a95ae53 from memory into f21
li x3, 0xa9f37266493a6792 # load x3 with value 0xa9f37266493a6792
sw x3, 0(x2) # store 0xa9f37266493a6792 in memory
flw f9, 0(x2) # load 0xa9f37266493a6792 from memory into f9
fdiv.s f22, f21, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x8, 0x900bf3b92d66e4e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b0d3f91c4933a4 # load x3 with value 0x4b0d3f91c4933a4
sw x3, 0(x2) # store 0x4b0d3f91c4933a4 in memory
flw f26, 0(x2) # load 0x4b0d3f91c4933a4 from memory into f26
li x3, 0x220b2a2cd424852b # load x3 with value 0x220b2a2cd424852b
sw x3, 0(x2) # store 0x220b2a2cd424852b in memory
flw f10, 0(x2) # load 0x220b2a2cd424852b from memory into f10
fdiv.s f8, f26, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x22, 0x1583e6dd889845a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x232a9fad0881086b # load x3 with value 0x232a9fad0881086b
sw x3, 0(x2) # store 0x232a9fad0881086b in memory
flw f16, 0(x2) # load 0x232a9fad0881086b from memory into f16
li x3, 0xbe3bec6749d0d173 # load x3 with value 0xbe3bec6749d0d173
sw x3, 0(x2) # store 0xbe3bec6749d0d173 in memory
flw f11, 0(x2) # load 0xbe3bec6749d0d173 from memory into f11
fdiv.s f22, f16, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x23, 0x11c926231eb8ac13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x349cdda55d635915 # load x3 with value 0x349cdda55d635915
sw x3, 0(x2) # store 0x349cdda55d635915 in memory
flw f6, 0(x2) # load 0x349cdda55d635915 from memory into f6
li x3, 0xeb9bf6e1389d1269 # load x3 with value 0xeb9bf6e1389d1269
sw x3, 0(x2) # store 0xeb9bf6e1389d1269 in memory
flw f12, 0(x2) # load 0xeb9bf6e1389d1269 from memory into f12
fdiv.s f23, f6, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x16, 0x738be480b03d6cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a16ebcd15086444 # load x3 with value 0x1a16ebcd15086444
sw x3, 0(x2) # store 0x1a16ebcd15086444 in memory
flw f31, 0(x2) # load 0x1a16ebcd15086444 from memory into f31
li x3, 0x209f8dc2496e6b22 # load x3 with value 0x209f8dc2496e6b22
sw x3, 0(x2) # store 0x209f8dc2496e6b22 in memory
flw f13, 0(x2) # load 0x209f8dc2496e6b22 from memory into f13
fdiv.s f16, f31, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x22, 0x6c7b39d8b5532dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x475ba04296db1578 # load x3 with value 0x475ba04296db1578
sw x3, 0(x2) # store 0x475ba04296db1578 in memory
flw f13, 0(x2) # load 0x475ba04296db1578 from memory into f13
li x3, 0xf83eaa598f35bf96 # load x3 with value 0xf83eaa598f35bf96
sw x3, 0(x2) # store 0xf83eaa598f35bf96 in memory
flw f14, 0(x2) # load 0xf83eaa598f35bf96 from memory into f14
fdiv.s f22, f13, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x19, 0xd0dae9f099f1b41b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee2aff0a04e3813f # load x3 with value 0xee2aff0a04e3813f
sw x3, 0(x2) # store 0xee2aff0a04e3813f in memory
flw f6, 0(x2) # load 0xee2aff0a04e3813f from memory into f6
li x3, 0x7d6cd3b9b07830a0 # load x3 with value 0x7d6cd3b9b07830a0
sw x3, 0(x2) # store 0x7d6cd3b9b07830a0 in memory
flw f15, 0(x2) # load 0x7d6cd3b9b07830a0 from memory into f15
fdiv.s f19, f6, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x2, 0xc73d58b9ce4fd50a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x595772345deff607 # load x3 with value 0x595772345deff607
sw x3, 0(x2) # store 0x595772345deff607 in memory
flw f4, 0(x2) # load 0x595772345deff607 from memory into f4
li x3, 0xb1b255b34a9017ad # load x3 with value 0xb1b255b34a9017ad
sw x3, 0(x2) # store 0xb1b255b34a9017ad in memory
flw f16, 0(x2) # load 0xb1b255b34a9017ad from memory into f16
fdiv.s f2, f4, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x18, 0x402643d6e3304d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fbf16588536233d # load x3 with value 0x9fbf16588536233d
sw x3, 0(x2) # store 0x9fbf16588536233d in memory
flw f20, 0(x2) # load 0x9fbf16588536233d from memory into f20
li x3, 0x9d0307ef2c35bf84 # load x3 with value 0x9d0307ef2c35bf84
sw x3, 0(x2) # store 0x9d0307ef2c35bf84 in memory
flw f17, 0(x2) # load 0x9d0307ef2c35bf84 from memory into f17
fdiv.s f18, f20, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x25, 0xb08cf4b10282457e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3b016aa3f5e70d7 # load x3 with value 0xc3b016aa3f5e70d7
sw x3, 0(x2) # store 0xc3b016aa3f5e70d7 in memory
flw f11, 0(x2) # load 0xc3b016aa3f5e70d7 from memory into f11
li x3, 0x3218f9c641cecab1 # load x3 with value 0x3218f9c641cecab1
sw x3, 0(x2) # store 0x3218f9c641cecab1 in memory
flw f18, 0(x2) # load 0x3218f9c641cecab1 from memory into f18
fdiv.s f25, f11, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x11, 0xc348c0d3b581f426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1528c4611ace38 # load x3 with value 0xa1528c4611ace38
sw x3, 0(x2) # store 0xa1528c4611ace38 in memory
flw f1, 0(x2) # load 0xa1528c4611ace38 from memory into f1
li x3, 0x8f07f12819f4f24a # load x3 with value 0x8f07f12819f4f24a
sw x3, 0(x2) # store 0x8f07f12819f4f24a in memory
flw f19, 0(x2) # load 0x8f07f12819f4f24a from memory into f19
fdiv.s f11, f1, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x30, 0xd99a5a04458a8e27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d5306e39e5e9dbf # load x3 with value 0x1d5306e39e5e9dbf
sw x3, 0(x2) # store 0x1d5306e39e5e9dbf in memory
flw f12, 0(x2) # load 0x1d5306e39e5e9dbf from memory into f12
li x3, 0xef50c7cd01edb0c3 # load x3 with value 0xef50c7cd01edb0c3
sw x3, 0(x2) # store 0xef50c7cd01edb0c3 in memory
flw f20, 0(x2) # load 0xef50c7cd01edb0c3 from memory into f20
fdiv.s f30, f12, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0x964e31e8646c03cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83e7dae586f7584e # load x3 with value 0x83e7dae586f7584e
sw x3, 0(x2) # store 0x83e7dae586f7584e in memory
flw f25, 0(x2) # load 0x83e7dae586f7584e from memory into f25
li x3, 0x6807994b7d51f325 # load x3 with value 0x6807994b7d51f325
sw x3, 0(x2) # store 0x6807994b7d51f325 in memory
flw f21, 0(x2) # load 0x6807994b7d51f325 from memory into f21
fdiv.s f21, f25, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x8, 0xa4abb4c3b3992046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x326347aee5079252 # load x3 with value 0x326347aee5079252
sw x3, 0(x2) # store 0x326347aee5079252 in memory
flw f31, 0(x2) # load 0x326347aee5079252 from memory into f31
li x3, 0x457e15abd49130ac # load x3 with value 0x457e15abd49130ac
sw x3, 0(x2) # store 0x457e15abd49130ac in memory
flw f22, 0(x2) # load 0x457e15abd49130ac from memory into f22
fdiv.s f8, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x29, 0x240475ef3752521d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79557848336d6b74 # load x3 with value 0x79557848336d6b74
sw x3, 0(x2) # store 0x79557848336d6b74 in memory
flw f24, 0(x2) # load 0x79557848336d6b74 from memory into f24
li x3, 0x6d4b7193e883e508 # load x3 with value 0x6d4b7193e883e508
sw x3, 0(x2) # store 0x6d4b7193e883e508 in memory
flw f23, 0(x2) # load 0x6d4b7193e883e508 from memory into f23
fdiv.s f29, f24, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x4, 0x0ddda3cd3f9fbb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x751158bed9ad10fc # load x3 with value 0x751158bed9ad10fc
sw x3, 0(x2) # store 0x751158bed9ad10fc in memory
flw f17, 0(x2) # load 0x751158bed9ad10fc from memory into f17
li x3, 0x22a9ab2ed4e46d7b # load x3 with value 0x22a9ab2ed4e46d7b
sw x3, 0(x2) # store 0x22a9ab2ed4e46d7b in memory
flw f24, 0(x2) # load 0x22a9ab2ed4e46d7b from memory into f24
fdiv.s f4, f17, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x9, 0xd1c09c8f12a6c9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb233a6e216d8bea8 # load x3 with value 0xb233a6e216d8bea8
sw x3, 0(x2) # store 0xb233a6e216d8bea8 in memory
flw f24, 0(x2) # load 0xb233a6e216d8bea8 from memory into f24
li x3, 0xfdb136900b22ec5c # load x3 with value 0xfdb136900b22ec5c
sw x3, 0(x2) # store 0xfdb136900b22ec5c in memory
flw f25, 0(x2) # load 0xfdb136900b22ec5c from memory into f25
fdiv.s f9, f24, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x3, 0xd005ed505e176a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30ab9ff2d3d4a574 # load x3 with value 0x30ab9ff2d3d4a574
sw x3, 0(x2) # store 0x30ab9ff2d3d4a574 in memory
flw f2, 0(x2) # load 0x30ab9ff2d3d4a574 from memory into f2
li x3, 0x9606c0712040b582 # load x3 with value 0x9606c0712040b582
sw x3, 0(x2) # store 0x9606c0712040b582 in memory
flw f26, 0(x2) # load 0x9606c0712040b582 from memory into f26
fdiv.s f3, f2, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x27, 0x4ffb719a57f3c8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb963af46d099add # load x3 with value 0xb963af46d099add
sw x3, 0(x2) # store 0xb963af46d099add in memory
flw f5, 0(x2) # load 0xb963af46d099add from memory into f5
li x3, 0x9ab1b75ef135c332 # load x3 with value 0x9ab1b75ef135c332
sw x3, 0(x2) # store 0x9ab1b75ef135c332 in memory
flw f27, 0(x2) # load 0x9ab1b75ef135c332 from memory into f27
fdiv.s f27, f5, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x23, 0xee0599b3a317ae59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52fe9c67b9cd7a07 # load x3 with value 0x52fe9c67b9cd7a07
sw x3, 0(x2) # store 0x52fe9c67b9cd7a07 in memory
flw f7, 0(x2) # load 0x52fe9c67b9cd7a07 from memory into f7
li x3, 0x93e2c5bf64e604b # load x3 with value 0x93e2c5bf64e604b
sw x3, 0(x2) # store 0x93e2c5bf64e604b in memory
flw f28, 0(x2) # load 0x93e2c5bf64e604b from memory into f28
fdiv.s f23, f7, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x14, 0x722f36587f219a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb003a7b15984fc6c # load x3 with value 0xb003a7b15984fc6c
sw x3, 0(x2) # store 0xb003a7b15984fc6c in memory
flw f18, 0(x2) # load 0xb003a7b15984fc6c from memory into f18
li x3, 0x74ce6283436560b2 # load x3 with value 0x74ce6283436560b2
sw x3, 0(x2) # store 0x74ce6283436560b2 in memory
flw f29, 0(x2) # load 0x74ce6283436560b2 from memory into f29
fdiv.s f14, f18, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x31, 0x98599681a8014c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd75b38e88943cde5 # load x3 with value 0xd75b38e88943cde5
sw x3, 0(x2) # store 0xd75b38e88943cde5 in memory
flw f10, 0(x2) # load 0xd75b38e88943cde5 from memory into f10
li x3, 0x99896d3fadee73b7 # load x3 with value 0x99896d3fadee73b7
sw x3, 0(x2) # store 0x99896d3fadee73b7 in memory
flw f30, 0(x2) # load 0x99896d3fadee73b7 from memory into f30
fdiv.s f31, f10, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x6, 0x358685f4b1e3ab7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x762186f11ab4aea5 # load x3 with value 0x762186f11ab4aea5
sw x3, 0(x2) # store 0x762186f11ab4aea5 in memory
flw f2, 0(x2) # load 0x762186f11ab4aea5 from memory into f2
li x3, 0x75de5aca87b33ea5 # load x3 with value 0x75de5aca87b33ea5
sw x3, 0(x2) # store 0x75de5aca87b33ea5 in memory
flw f31, 0(x2) # load 0x75de5aca87b33ea5 from memory into f31
fdiv.s f6, f2, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
