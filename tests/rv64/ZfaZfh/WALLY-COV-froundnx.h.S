///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaZfh//WALLY-COV-froundnx.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:24.110029
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
froundnx.h f6, f14 # perform first operation
froundnx.h f18, f6 # perform second operation

# Testcase cmp_gpr_hazard raw test
froundnx.h f20, f3 # perform first operation
froundnx.h f2, f5 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.h f4, f7 # perform first operation
froundnx.h f4, f11 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.h f9, f18 # perform first operation
froundnx.h f9, f2 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.h f2, f22 # perform first operation
froundnx.h f22, f25 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.h f16, f28 # perform first operation
froundnx.h f11, f4 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x67aba09fd0af3c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e40087d29d89ddf # load x3 with value 0x5e40087d29d89ddf
sw x3, 0(x2) # store 0x5e40087d29d89ddf in memory
flh f0, 0(x2) # load 0x5e40087d29d89ddf from memory into f0
froundnx.h f0, f0 # perform operation
froundnx.h f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x273d8a84e61355c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc56ee920c98ef93 # load x3 with value 0xfc56ee920c98ef93
sw x3, 0(x2) # store 0xfc56ee920c98ef93 in memory
flh f1, 0(x2) # load 0xfc56ee920c98ef93 from memory into f1
froundnx.h f1, f1 # perform operation
froundnx.h f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x85786d976cce025e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31ad5423b682a645 # load x3 with value 0x31ad5423b682a645
sw x3, 0(x2) # store 0x31ad5423b682a645 in memory
flh f2, 0(x2) # load 0x31ad5423b682a645 from memory into f2
froundnx.h f2, f2 # perform operation
froundnx.h f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x047055fc0d270834 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb496b1ff9ca38772 # load x3 with value 0xb496b1ff9ca38772
sw x3, 0(x2) # store 0xb496b1ff9ca38772 in memory
flh f3, 0(x2) # load 0xb496b1ff9ca38772 from memory into f3
froundnx.h f3, f3 # perform operation
froundnx.h f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x23ff4e56e219af9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2c0f24f7a726d08 # load x3 with value 0xc2c0f24f7a726d08
sw x3, 0(x2) # store 0xc2c0f24f7a726d08 in memory
flh f4, 0(x2) # load 0xc2c0f24f7a726d08 from memory into f4
froundnx.h f4, f4 # perform operation
froundnx.h f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x5b2b45081ebad744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b318f81507897b5 # load x3 with value 0x6b318f81507897b5
sw x3, 0(x2) # store 0x6b318f81507897b5 in memory
flh f5, 0(x2) # load 0x6b318f81507897b5 from memory into f5
froundnx.h f5, f5 # perform operation
froundnx.h f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xd0d1c375b3439c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c0776c8f140841b # load x3 with value 0x6c0776c8f140841b
sw x3, 0(x2) # store 0x6c0776c8f140841b in memory
flh f6, 0(x2) # load 0x6c0776c8f140841b from memory into f6
froundnx.h f6, f6 # perform operation
froundnx.h f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x503da3338b92e1f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadffe68ffa0e96f9 # load x3 with value 0xadffe68ffa0e96f9
sw x3, 0(x2) # store 0xadffe68ffa0e96f9 in memory
flh f7, 0(x2) # load 0xadffe68ffa0e96f9 from memory into f7
froundnx.h f7, f7 # perform operation
froundnx.h f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xd773bc9c3887100d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59ee9f1f65662c43 # load x3 with value 0x59ee9f1f65662c43
sw x3, 0(x2) # store 0x59ee9f1f65662c43 in memory
flh f8, 0(x2) # load 0x59ee9f1f65662c43 from memory into f8
froundnx.h f8, f8 # perform operation
froundnx.h f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xd9a5e0eb542c04ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99d5a77d47431e6b # load x3 with value 0x99d5a77d47431e6b
sw x3, 0(x2) # store 0x99d5a77d47431e6b in memory
flh f9, 0(x2) # load 0x99d5a77d47431e6b from memory into f9
froundnx.h f9, f9 # perform operation
froundnx.h f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x8626e1c625109ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee78aa0a2d123c66 # load x3 with value 0xee78aa0a2d123c66
sw x3, 0(x2) # store 0xee78aa0a2d123c66 in memory
flh f10, 0(x2) # load 0xee78aa0a2d123c66 from memory into f10
froundnx.h f10, f10 # perform operation
froundnx.h f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x654736accefa90d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3b17f1855513c30 # load x3 with value 0xf3b17f1855513c30
sw x3, 0(x2) # store 0xf3b17f1855513c30 in memory
flh f11, 0(x2) # load 0xf3b17f1855513c30 from memory into f11
froundnx.h f11, f11 # perform operation
froundnx.h f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xac31c7f6d8c54cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x470dadd86e20b3de # load x3 with value 0x470dadd86e20b3de
sw x3, 0(x2) # store 0x470dadd86e20b3de in memory
flh f12, 0(x2) # load 0x470dadd86e20b3de from memory into f12
froundnx.h f12, f12 # perform operation
froundnx.h f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xfc711088e92c01ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf73f09a7721e0fad # load x3 with value 0xf73f09a7721e0fad
sw x3, 0(x2) # store 0xf73f09a7721e0fad in memory
flh f13, 0(x2) # load 0xf73f09a7721e0fad from memory into f13
froundnx.h f13, f13 # perform operation
froundnx.h f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x575d171c8d7497c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4083dc4d89571435 # load x3 with value 0x4083dc4d89571435
sw x3, 0(x2) # store 0x4083dc4d89571435 in memory
flh f14, 0(x2) # load 0x4083dc4d89571435 from memory into f14
froundnx.h f14, f14 # perform operation
froundnx.h f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x249f8104a20f4ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6debdf63874651d9 # load x3 with value 0x6debdf63874651d9
sw x3, 0(x2) # store 0x6debdf63874651d9 in memory
flh f15, 0(x2) # load 0x6debdf63874651d9 from memory into f15
froundnx.h f15, f15 # perform operation
froundnx.h f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x0df784c139f91584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84a7743709f294a1 # load x3 with value 0x84a7743709f294a1
sw x3, 0(x2) # store 0x84a7743709f294a1 in memory
flh f16, 0(x2) # load 0x84a7743709f294a1 from memory into f16
froundnx.h f16, f16 # perform operation
froundnx.h f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x844e0a2d81eae76f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71b12877c53f785c # load x3 with value 0x71b12877c53f785c
sw x3, 0(x2) # store 0x71b12877c53f785c in memory
flh f17, 0(x2) # load 0x71b12877c53f785c from memory into f17
froundnx.h f17, f17 # perform operation
froundnx.h f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x95b520efa87f51e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2082f3aa6e4c97ff # load x3 with value 0x2082f3aa6e4c97ff
sw x3, 0(x2) # store 0x2082f3aa6e4c97ff in memory
flh f18, 0(x2) # load 0x2082f3aa6e4c97ff from memory into f18
froundnx.h f18, f18 # perform operation
froundnx.h f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x7489e6170c2c8585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6f6e4a9308be1df # load x3 with value 0xd6f6e4a9308be1df
sw x3, 0(x2) # store 0xd6f6e4a9308be1df in memory
flh f19, 0(x2) # load 0xd6f6e4a9308be1df from memory into f19
froundnx.h f19, f19 # perform operation
froundnx.h f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x012873dccdf53acb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee61162a11a8621 # load x3 with value 0xee61162a11a8621
sw x3, 0(x2) # store 0xee61162a11a8621 in memory
flh f20, 0(x2) # load 0xee61162a11a8621 from memory into f20
froundnx.h f20, f20 # perform operation
froundnx.h f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xd05f4514316bb671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf44032c3c6773b9 # load x3 with value 0xaf44032c3c6773b9
sw x3, 0(x2) # store 0xaf44032c3c6773b9 in memory
flh f21, 0(x2) # load 0xaf44032c3c6773b9 from memory into f21
froundnx.h f21, f21 # perform operation
froundnx.h f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x1955ae20f391c1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x525b3c0d61e2cd98 # load x3 with value 0x525b3c0d61e2cd98
sw x3, 0(x2) # store 0x525b3c0d61e2cd98 in memory
flh f22, 0(x2) # load 0x525b3c0d61e2cd98 from memory into f22
froundnx.h f22, f22 # perform operation
froundnx.h f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x886ee80c8d877622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9c756f54983e686 # load x3 with value 0xc9c756f54983e686
sw x3, 0(x2) # store 0xc9c756f54983e686 in memory
flh f23, 0(x2) # load 0xc9c756f54983e686 from memory into f23
froundnx.h f23, f23 # perform operation
froundnx.h f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xe04ee8782dd077af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeec6621b77d92415 # load x3 with value 0xeec6621b77d92415
sw x3, 0(x2) # store 0xeec6621b77d92415 in memory
flh f24, 0(x2) # load 0xeec6621b77d92415 from memory into f24
froundnx.h f24, f24 # perform operation
froundnx.h f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x1b62801960c70da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd989de060a7d5298 # load x3 with value 0xd989de060a7d5298
sw x3, 0(x2) # store 0xd989de060a7d5298 in memory
flh f25, 0(x2) # load 0xd989de060a7d5298 from memory into f25
froundnx.h f25, f25 # perform operation
froundnx.h f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x7a0fc905bafe68e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee21874c5d79d42f # load x3 with value 0xee21874c5d79d42f
sw x3, 0(x2) # store 0xee21874c5d79d42f in memory
flh f26, 0(x2) # load 0xee21874c5d79d42f from memory into f26
froundnx.h f26, f26 # perform operation
froundnx.h f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x445dd8a08370c946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c64512a392e2d15 # load x3 with value 0x2c64512a392e2d15
sw x3, 0(x2) # store 0x2c64512a392e2d15 in memory
flh f27, 0(x2) # load 0x2c64512a392e2d15 from memory into f27
froundnx.h f27, f27 # perform operation
froundnx.h f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x36a2a6b0fa2f05f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x793d466c6d974af6 # load x3 with value 0x793d466c6d974af6
sw x3, 0(x2) # store 0x793d466c6d974af6 in memory
flh f28, 0(x2) # load 0x793d466c6d974af6 from memory into f28
froundnx.h f28, f28 # perform operation
froundnx.h f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x8a8efaf2d99ec562 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7f901a52a77ed30 # load x3 with value 0xc7f901a52a77ed30
sw x3, 0(x2) # store 0xc7f901a52a77ed30 in memory
flh f29, 0(x2) # load 0xc7f901a52a77ed30 from memory into f29
froundnx.h f29, f29 # perform operation
froundnx.h f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xc4839ef86baed2c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x753c68ff4f0c811e # load x3 with value 0x753c68ff4f0c811e
sw x3, 0(x2) # store 0x753c68ff4f0c811e in memory
flh f30, 0(x2) # load 0x753c68ff4f0c811e from memory into f30
froundnx.h f30, f30 # perform operation
froundnx.h f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xce74e72ea2215596 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x395d60ae9db9a176 # load x3 with value 0x395d60ae9db9a176
sw x3, 0(x2) # store 0x395d60ae9db9a176 in memory
flh f31, 0(x2) # load 0x395d60ae9db9a176 from memory into f31
froundnx.h f31, f31 # perform operation
froundnx.h f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x330e38dabe0bc5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfad848681bcab984 # load x3 with value 0xfad848681bcab984
sw x3, 0(x2) # store 0xfad848681bcab984 in memory
flh f28, 0(x2) # load 0xfad848681bcab984 from memory into f28
froundnx.h f0, f28 # perform operation
froundnx.h f0, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xd2272f6815b249b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4eed4f1eb9e7197 # load x3 with value 0xe4eed4f1eb9e7197
sw x3, 0(x2) # store 0xe4eed4f1eb9e7197 in memory
flh f28, 0(x2) # load 0xe4eed4f1eb9e7197 from memory into f28
froundnx.h f1, f28 # perform operation
froundnx.h f1, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x491cf60a53dca4cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62a5306d3445eefe # load x3 with value 0x62a5306d3445eefe
sw x3, 0(x2) # store 0x62a5306d3445eefe in memory
flh f26, 0(x2) # load 0x62a5306d3445eefe from memory into f26
froundnx.h f2, f26 # perform operation
froundnx.h f2, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xa77ba8aa4b1fbc67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11a1da2e714d2b17 # load x3 with value 0x11a1da2e714d2b17
sw x3, 0(x2) # store 0x11a1da2e714d2b17 in memory
flh f30, 0(x2) # load 0x11a1da2e714d2b17 from memory into f30
froundnx.h f3, f30 # perform operation
froundnx.h f3, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x163a7d103397c754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98867c3856eee086 # load x3 with value 0x98867c3856eee086
sw x3, 0(x2) # store 0x98867c3856eee086 in memory
flh f16, 0(x2) # load 0x98867c3856eee086 from memory into f16
froundnx.h f4, f16 # perform operation
froundnx.h f4, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x2de6b2ad35b26230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bd1135fd2a3e45f # load x3 with value 0x7bd1135fd2a3e45f
sw x3, 0(x2) # store 0x7bd1135fd2a3e45f in memory
flh f21, 0(x2) # load 0x7bd1135fd2a3e45f from memory into f21
froundnx.h f5, f21 # perform operation
froundnx.h f5, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x42208d7d11632369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xead12047b789aa94 # load x3 with value 0xead12047b789aa94
sw x3, 0(x2) # store 0xead12047b789aa94 in memory
flh f23, 0(x2) # load 0xead12047b789aa94 from memory into f23
froundnx.h f6, f23 # perform operation
froundnx.h f6, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x8d288a8e09b7e189 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1dfd318239fa3a34 # load x3 with value 0x1dfd318239fa3a34
sw x3, 0(x2) # store 0x1dfd318239fa3a34 in memory
flh f7, 0(x2) # load 0x1dfd318239fa3a34 from memory into f7
froundnx.h f7, f7 # perform operation
froundnx.h f7, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x3f4092be3825f49b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc34e0f720310f7f7 # load x3 with value 0xc34e0f720310f7f7
sw x3, 0(x2) # store 0xc34e0f720310f7f7 in memory
flh f16, 0(x2) # load 0xc34e0f720310f7f7 from memory into f16
froundnx.h f8, f16 # perform operation
froundnx.h f8, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x7ecd7f29fa313ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b4b7f78f99a8fa0 # load x3 with value 0x1b4b7f78f99a8fa0
sw x3, 0(x2) # store 0x1b4b7f78f99a8fa0 in memory
flh f9, 0(x2) # load 0x1b4b7f78f99a8fa0 from memory into f9
froundnx.h f9, f9 # perform operation
froundnx.h f9, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xce673a986b07c71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50cb83c643ccb36c # load x3 with value 0x50cb83c643ccb36c
sw x3, 0(x2) # store 0x50cb83c643ccb36c in memory
flh f14, 0(x2) # load 0x50cb83c643ccb36c from memory into f14
froundnx.h f10, f14 # perform operation
froundnx.h f10, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xca1a6234e779d192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9408554d4991aff # load x3 with value 0xa9408554d4991aff
sw x3, 0(x2) # store 0xa9408554d4991aff in memory
flh f6, 0(x2) # load 0xa9408554d4991aff from memory into f6
froundnx.h f11, f6 # perform operation
froundnx.h f11, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x5be74063551c349b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74aa7bc10655d283 # load x3 with value 0x74aa7bc10655d283
sw x3, 0(x2) # store 0x74aa7bc10655d283 in memory
flh f12, 0(x2) # load 0x74aa7bc10655d283 from memory into f12
froundnx.h f12, f12 # perform operation
froundnx.h f12, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x729a9644c3edcc73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc59455415b2b2a05 # load x3 with value 0xc59455415b2b2a05
sw x3, 0(x2) # store 0xc59455415b2b2a05 in memory
flh f17, 0(x2) # load 0xc59455415b2b2a05 from memory into f17
froundnx.h f13, f17 # perform operation
froundnx.h f13, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xdf7952b9e11785bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1456522202035502 # load x3 with value 0x1456522202035502
sw x3, 0(x2) # store 0x1456522202035502 in memory
flh f13, 0(x2) # load 0x1456522202035502 from memory into f13
froundnx.h f14, f13 # perform operation
froundnx.h f14, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x8ae527585a8784b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3bff964840b6d6d # load x3 with value 0xd3bff964840b6d6d
sw x3, 0(x2) # store 0xd3bff964840b6d6d in memory
flh f28, 0(x2) # load 0xd3bff964840b6d6d from memory into f28
froundnx.h f15, f28 # perform operation
froundnx.h f15, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xcedce1df57d99f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f0f0eb50261458e # load x3 with value 0x1f0f0eb50261458e
sw x3, 0(x2) # store 0x1f0f0eb50261458e in memory
flh f16, 0(x2) # load 0x1f0f0eb50261458e from memory into f16
froundnx.h f16, f16 # perform operation
froundnx.h f16, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xfd3320b406f2e171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x228f2bb72ea910c6 # load x3 with value 0x228f2bb72ea910c6
sw x3, 0(x2) # store 0x228f2bb72ea910c6 in memory
flh f29, 0(x2) # load 0x228f2bb72ea910c6 from memory into f29
froundnx.h f17, f29 # perform operation
froundnx.h f17, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x781fd8cf6de09525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccce28aab83103e7 # load x3 with value 0xccce28aab83103e7
sw x3, 0(x2) # store 0xccce28aab83103e7 in memory
flh f28, 0(x2) # load 0xccce28aab83103e7 from memory into f28
froundnx.h f18, f28 # perform operation
froundnx.h f18, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xff11eb43b2ebb6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3106ad87d1b481e # load x3 with value 0xf3106ad87d1b481e
sw x3, 0(x2) # store 0xf3106ad87d1b481e in memory
flh f1, 0(x2) # load 0xf3106ad87d1b481e from memory into f1
froundnx.h f19, f1 # perform operation
froundnx.h f19, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x8c948a4f427fe7d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6347e668dfd2c98e # load x3 with value 0x6347e668dfd2c98e
sw x3, 0(x2) # store 0x6347e668dfd2c98e in memory
flh f6, 0(x2) # load 0x6347e668dfd2c98e from memory into f6
froundnx.h f20, f6 # perform operation
froundnx.h f20, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xe79224a1f7bf3bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf44f2cbe895a7f13 # load x3 with value 0xf44f2cbe895a7f13
sw x3, 0(x2) # store 0xf44f2cbe895a7f13 in memory
flh f8, 0(x2) # load 0xf44f2cbe895a7f13 from memory into f8
froundnx.h f21, f8 # perform operation
froundnx.h f21, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xdea29d53a63d402e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35379ee54d00c9aa # load x3 with value 0x35379ee54d00c9aa
sw x3, 0(x2) # store 0x35379ee54d00c9aa in memory
flh f16, 0(x2) # load 0x35379ee54d00c9aa from memory into f16
froundnx.h f22, f16 # perform operation
froundnx.h f22, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xd362458843704d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25a6e8284c81adce # load x3 with value 0x25a6e8284c81adce
sw x3, 0(x2) # store 0x25a6e8284c81adce in memory
flh f31, 0(x2) # load 0x25a6e8284c81adce from memory into f31
froundnx.h f23, f31 # perform operation
froundnx.h f23, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x26884477d809c24d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62143adb1d2f77c9 # load x3 with value 0x62143adb1d2f77c9
sw x3, 0(x2) # store 0x62143adb1d2f77c9 in memory
flh f15, 0(x2) # load 0x62143adb1d2f77c9 from memory into f15
froundnx.h f24, f15 # perform operation
froundnx.h f24, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x1c835a4302958784 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78132cc6f3bc0a34 # load x3 with value 0x78132cc6f3bc0a34
sw x3, 0(x2) # store 0x78132cc6f3bc0a34 in memory
flh f6, 0(x2) # load 0x78132cc6f3bc0a34 from memory into f6
froundnx.h f25, f6 # perform operation
froundnx.h f25, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xff6da976efed720b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0a4a1206645f692 # load x3 with value 0xc0a4a1206645f692
sw x3, 0(x2) # store 0xc0a4a1206645f692 in memory
flh f31, 0(x2) # load 0xc0a4a1206645f692 from memory into f31
froundnx.h f26, f31 # perform operation
froundnx.h f26, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xa342f1574bd47b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde52b037fff54120 # load x3 with value 0xde52b037fff54120
sw x3, 0(x2) # store 0xde52b037fff54120 in memory
flh f7, 0(x2) # load 0xde52b037fff54120 from memory into f7
froundnx.h f27, f7 # perform operation
froundnx.h f27, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x5d316fb4f250c226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x271dd505a7db4814 # load x3 with value 0x271dd505a7db4814
sw x3, 0(x2) # store 0x271dd505a7db4814 in memory
flh f3, 0(x2) # load 0x271dd505a7db4814 from memory into f3
froundnx.h f28, f3 # perform operation
froundnx.h f28, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x9c5a9b41241838f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5400830cbd336fc6 # load x3 with value 0x5400830cbd336fc6
sw x3, 0(x2) # store 0x5400830cbd336fc6 in memory
flh f2, 0(x2) # load 0x5400830cbd336fc6 from memory into f2
froundnx.h f29, f2 # perform operation
froundnx.h f29, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x4c4a255a09834bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95193b3585dc5b73 # load x3 with value 0x95193b3585dc5b73
sw x3, 0(x2) # store 0x95193b3585dc5b73 in memory
flh f15, 0(x2) # load 0x95193b3585dc5b73 from memory into f15
froundnx.h f30, f15 # perform operation
froundnx.h f30, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x686d12907ef14e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe45a36896195f601 # load x3 with value 0xe45a36896195f601
sw x3, 0(x2) # store 0xe45a36896195f601 in memory
flh f13, 0(x2) # load 0xe45a36896195f601 from memory into f13
froundnx.h f31, f13 # perform operation
froundnx.h f31, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x26, 0xe3cecaff42a10c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
froundnx.h f26, f27 # perform operation
froundnx.h f26, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x18, 0x6197cfdbf5ccafc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
froundnx.h f18, f26 # perform operation
froundnx.h f18, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x21, 0x6e09550c8eb0f79a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
froundnx.h f21, f14 # perform operation
froundnx.h f21, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x21, 0xa75da477ac14f759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
froundnx.h f21, f14 # perform operation
froundnx.h f21, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x21, 0x833799a09d9f2c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
froundnx.h f21, f1 # perform operation
froundnx.h f21, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x1, 0xfb4a52326585019c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
froundnx.h f1, f8 # perform operation
froundnx.h f1, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x29, 0x5216ac658f008d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
froundnx.h f29, f23 # perform operation
froundnx.h f29, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x11, 0xc46d51c7d26dbf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
froundnx.h f11, f18 # perform operation
froundnx.h f11, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x31, 0xba45796e545a213d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
froundnx.h f31, f21 # perform operation
froundnx.h f31, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x31, 0x71cafa245cec361d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
froundnx.h f31, f30 # perform operation
froundnx.h f31, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x24, 0x37077cd3e7277e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
froundnx.h f24, f4 # perform operation
froundnx.h f24, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x15, 0xccb5a09312143bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
froundnx.h f15, f22 # perform operation
froundnx.h f15, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x2, 0xab3bfce25a9e04c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
froundnx.h f2, f15 # perform operation
froundnx.h f2, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x22, 0x3b884839574d3e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
froundnx.h f22, f26 # perform operation
froundnx.h f22, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x11, 0xe5f2aa1c1e3acaf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
froundnx.h f11, f22 # perform operation
froundnx.h f11, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x18, 0xe5f51d63ba04253c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
froundnx.h f18, f15 # perform operation
froundnx.h f18, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x11, 0xe98bc4a36772d077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
froundnx.h f11, f24 # perform operation
froundnx.h f11, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x31, 0x91268e3c637de5d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
froundnx.h f31, f9 # perform operation
froundnx.h f31, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x15, 0x10ae7379986d742c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
froundnx.h f15, f2 # perform operation
froundnx.h f15, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x4, 0x95bbbc66a0471293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
froundnx.h f4, f18 # perform operation
froundnx.h f4, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x16, 0xe80f0175809af38c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
froundnx.h f16, f4 # perform operation
froundnx.h f16, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x20, 0x478361bdc0a1dd33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
froundnx.h f20, f21 # perform operation
froundnx.h f20, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x17, 0x10fce5b367d1ffc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
froundnx.h f17, f14 # perform operation
froundnx.h f17, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x15, 0xb446a42e66e5ee5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
froundnx.h f15, f23 # perform operation
froundnx.h f15, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x30, 0x79f11ac551084573 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
froundnx.h f30, f29 # perform operation
froundnx.h f30, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x26, 0xfe227c110f6310a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
froundnx.h f26, f15 # perform operation
froundnx.h f26, f15 # perform operation

# Testcase cp_frm
li x1, 0xbe93b5ca676596bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4708b3acb7fe8172 # load x3 with value 0x4708b3acb7fe8172
sw x3, 0(x2) # store 0x4708b3acb7fe8172 in memory
flh f29, 0(x2) # load 0x4708b3acb7fe8172 from memory into f29
froundnx.h f1, f29 # perform operation
froundnx.h f1, f29, dyn # perform operation
froundnx.h f1, f29, rdn # perform operation
froundnx.h f1, f29, rmm # perform operation
froundnx.h f1, f29, rne # perform operation
froundnx.h f1, f29, rtz # perform operation
froundnx.h f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.h f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.h f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.h f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.h f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.h f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xa321553416013435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fda85c242bf5136 # load x3 with value 0x3fda85c242bf5136
sw x3, 0(x2) # store 0x3fda85c242bf5136 in memory
flh f18, 0(x2) # load 0x3fda85c242bf5136 from memory into f18
froundnx.h f0, f18 # perform operation
froundnx.h f0, f18 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xc7613c4446c8dff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ecf4cd0d175d563 # load x3 with value 0x5ecf4cd0d175d563
sw x3, 0(x2) # store 0x5ecf4cd0d175d563 in memory
flh f3, 0(x2) # load 0x5ecf4cd0d175d563 from memory into f3
froundnx.h f1, f3 # perform operation
froundnx.h f1, f3 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x6cadd873dd001f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35256c91a19dd46e # load x3 with value 0x35256c91a19dd46e
sw x3, 0(x2) # store 0x35256c91a19dd46e in memory
flh f31, 0(x2) # load 0x35256c91a19dd46e from memory into f31
froundnx.h f2, f31 # perform operation
froundnx.h f2, f31 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x924e1fd4574f6ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeae365c40c05ad37 # load x3 with value 0xeae365c40c05ad37
sw x3, 0(x2) # store 0xeae365c40c05ad37 in memory
flh f23, 0(x2) # load 0xeae365c40c05ad37 from memory into f23
froundnx.h f3, f23 # perform operation
froundnx.h f3, f23 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x41e7b2e640ef2fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89ea218247ead027 # load x3 with value 0x89ea218247ead027
sw x3, 0(x2) # store 0x89ea218247ead027 in memory
flh f4, 0(x2) # load 0x89ea218247ead027 from memory into f4
froundnx.h f4, f4 # perform operation
froundnx.h f4, f4 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x606bed4c7e075b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84cd92799a6fc38b # load x3 with value 0x84cd92799a6fc38b
sw x3, 0(x2) # store 0x84cd92799a6fc38b in memory
flh f13, 0(x2) # load 0x84cd92799a6fc38b from memory into f13
froundnx.h f5, f13 # perform operation
froundnx.h f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x5f75bc034672546f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x448effecd051655e # load x3 with value 0x448effecd051655e
sw x3, 0(x2) # store 0x448effecd051655e in memory
flh f29, 0(x2) # load 0x448effecd051655e from memory into f29
froundnx.h f6, f29 # perform operation
froundnx.h f6, f29 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x3fe0ea4b73985a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x417c626a2398297a # load x3 with value 0x417c626a2398297a
sw x3, 0(x2) # store 0x417c626a2398297a in memory
flh f9, 0(x2) # load 0x417c626a2398297a from memory into f9
froundnx.h f7, f9 # perform operation
froundnx.h f7, f9 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x3db3a281dc8efd98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb036cd4616d2760 # load x3 with value 0xb036cd4616d2760
sw x3, 0(x2) # store 0xb036cd4616d2760 in memory
flh f30, 0(x2) # load 0xb036cd4616d2760 from memory into f30
froundnx.h f8, f30 # perform operation
froundnx.h f8, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x1a84cafcd994aad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2ee3646bd8b7463 # load x3 with value 0xe2ee3646bd8b7463
sw x3, 0(x2) # store 0xe2ee3646bd8b7463 in memory
flh f13, 0(x2) # load 0xe2ee3646bd8b7463 from memory into f13
froundnx.h f9, f13 # perform operation
froundnx.h f9, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xebd6951f27dc26b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20b0c6d3d42d53a0 # load x3 with value 0x20b0c6d3d42d53a0
sw x3, 0(x2) # store 0x20b0c6d3d42d53a0 in memory
flh f7, 0(x2) # load 0x20b0c6d3d42d53a0 from memory into f7
froundnx.h f10, f7 # perform operation
froundnx.h f10, f7 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xc1946c5cb6c060d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c707e3cc64c3854 # load x3 with value 0x2c707e3cc64c3854
sw x3, 0(x2) # store 0x2c707e3cc64c3854 in memory
flh f14, 0(x2) # load 0x2c707e3cc64c3854 from memory into f14
froundnx.h f11, f14 # perform operation
froundnx.h f11, f14 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x84639a28335065b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2482996f2dabd6f1 # load x3 with value 0x2482996f2dabd6f1
sw x3, 0(x2) # store 0x2482996f2dabd6f1 in memory
flh f9, 0(x2) # load 0x2482996f2dabd6f1 from memory into f9
froundnx.h f12, f9 # perform operation
froundnx.h f12, f9 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x044dca90e93db89a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63280ff2c96841da # load x3 with value 0x63280ff2c96841da
sw x3, 0(x2) # store 0x63280ff2c96841da in memory
flh f28, 0(x2) # load 0x63280ff2c96841da from memory into f28
froundnx.h f13, f28 # perform operation
froundnx.h f13, f28 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xa91d65ad2b9b10d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6858fd0032bfa5c # load x3 with value 0xf6858fd0032bfa5c
sw x3, 0(x2) # store 0xf6858fd0032bfa5c in memory
flh f22, 0(x2) # load 0xf6858fd0032bfa5c from memory into f22
froundnx.h f14, f22 # perform operation
froundnx.h f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x951786aeb75317ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddf3288543852c7a # load x3 with value 0xddf3288543852c7a
sw x3, 0(x2) # store 0xddf3288543852c7a in memory
flh f24, 0(x2) # load 0xddf3288543852c7a from memory into f24
froundnx.h f15, f24 # perform operation
froundnx.h f15, f24 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x221da76755b5aa53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0e772a6e0041347 # load x3 with value 0xb0e772a6e0041347
sw x3, 0(x2) # store 0xb0e772a6e0041347 in memory
flh f2, 0(x2) # load 0xb0e772a6e0041347 from memory into f2
froundnx.h f16, f2 # perform operation
froundnx.h f16, f2 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xee1baef3b658566b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10af98eb30febc0a # load x3 with value 0x10af98eb30febc0a
sw x3, 0(x2) # store 0x10af98eb30febc0a in memory
flh f23, 0(x2) # load 0x10af98eb30febc0a from memory into f23
froundnx.h f17, f23 # perform operation
froundnx.h f17, f23 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x20e9e2ea6e98810b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca1d0a32a7aa1e9c # load x3 with value 0xca1d0a32a7aa1e9c
sw x3, 0(x2) # store 0xca1d0a32a7aa1e9c in memory
flh f21, 0(x2) # load 0xca1d0a32a7aa1e9c from memory into f21
froundnx.h f18, f21 # perform operation
froundnx.h f18, f21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x6e93b94415c007ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9edb6cf1e87bb78 # load x3 with value 0xf9edb6cf1e87bb78
sw x3, 0(x2) # store 0xf9edb6cf1e87bb78 in memory
flh f24, 0(x2) # load 0xf9edb6cf1e87bb78 from memory into f24
froundnx.h f19, f24 # perform operation
froundnx.h f19, f24 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x10ab023d4efa3cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4ed19b8f91ebda6 # load x3 with value 0xa4ed19b8f91ebda6
sw x3, 0(x2) # store 0xa4ed19b8f91ebda6 in memory
flh f17, 0(x2) # load 0xa4ed19b8f91ebda6 from memory into f17
froundnx.h f20, f17 # perform operation
froundnx.h f20, f17 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xb82b829c5658d420 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5038be237ad5ec5 # load x3 with value 0xb5038be237ad5ec5
sw x3, 0(x2) # store 0xb5038be237ad5ec5 in memory
flh f14, 0(x2) # load 0xb5038be237ad5ec5 from memory into f14
froundnx.h f21, f14 # perform operation
froundnx.h f21, f14 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x6e40f1d67a14d872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x786b50c58f0a6ffd # load x3 with value 0x786b50c58f0a6ffd
sw x3, 0(x2) # store 0x786b50c58f0a6ffd in memory
flh f5, 0(x2) # load 0x786b50c58f0a6ffd from memory into f5
froundnx.h f22, f5 # perform operation
froundnx.h f22, f5 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x674b5d2e653cd1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15af785deb447ad7 # load x3 with value 0x15af785deb447ad7
sw x3, 0(x2) # store 0x15af785deb447ad7 in memory
flh f23, 0(x2) # load 0x15af785deb447ad7 from memory into f23
froundnx.h f23, f23 # perform operation
froundnx.h f23, f23 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x763eb6d150766b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c8ba598300ae153 # load x3 with value 0x2c8ba598300ae153
sw x3, 0(x2) # store 0x2c8ba598300ae153 in memory
flh f31, 0(x2) # load 0x2c8ba598300ae153 from memory into f31
froundnx.h f24, f31 # perform operation
froundnx.h f24, f31 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xcd108abe388ad499 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf391ce9e1d72027 # load x3 with value 0xbf391ce9e1d72027
sw x3, 0(x2) # store 0xbf391ce9e1d72027 in memory
flh f5, 0(x2) # load 0xbf391ce9e1d72027 from memory into f5
froundnx.h f25, f5 # perform operation
froundnx.h f25, f5 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x673f0b1c8884368c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dc65ace5c89e282 # load x3 with value 0x5dc65ace5c89e282
sw x3, 0(x2) # store 0x5dc65ace5c89e282 in memory
flh f5, 0(x2) # load 0x5dc65ace5c89e282 from memory into f5
froundnx.h f26, f5 # perform operation
froundnx.h f26, f5 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x63edaed34af3b611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13d79033d6e8f3e0 # load x3 with value 0x13d79033d6e8f3e0
sw x3, 0(x2) # store 0x13d79033d6e8f3e0 in memory
flh f9, 0(x2) # load 0x13d79033d6e8f3e0 from memory into f9
froundnx.h f27, f9 # perform operation
froundnx.h f27, f9 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xb4d5b58cc25fc4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47f682ec76c378f8 # load x3 with value 0x47f682ec76c378f8
sw x3, 0(x2) # store 0x47f682ec76c378f8 in memory
flh f7, 0(x2) # load 0x47f682ec76c378f8 from memory into f7
froundnx.h f28, f7 # perform operation
froundnx.h f28, f7 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x976c4f0af18f2421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x728532a22bc02a19 # load x3 with value 0x728532a22bc02a19
sw x3, 0(x2) # store 0x728532a22bc02a19 in memory
flh f6, 0(x2) # load 0x728532a22bc02a19 from memory into f6
froundnx.h f29, f6 # perform operation
froundnx.h f29, f6 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x98af07741a68a266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3b635e81ec6f40c # load x3 with value 0xb3b635e81ec6f40c
sw x3, 0(x2) # store 0xb3b635e81ec6f40c in memory
flh f30, 0(x2) # load 0xb3b635e81ec6f40c from memory into f30
froundnx.h f30, f30 # perform operation
froundnx.h f30, f30 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xdb467841bad77e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x462d5b333f999d86 # load x3 with value 0x462d5b333f999d86
sw x3, 0(x2) # store 0x462d5b333f999d86 in memory
flh f30, 0(x2) # load 0x462d5b333f999d86 from memory into f30
froundnx.h f31, f30 # perform operation
froundnx.h f31, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x29, 0xfe5f44ef8c902689 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e5017f40d319d12 # load x3 with value 0x3e5017f40d319d12
sw x3, 0(x2) # store 0x3e5017f40d319d12 in memory
flh f0, 0(x2) # load 0x3e5017f40d319d12 from memory into f0
froundnx.h f29, f0 # perform operation
froundnx.h f29, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x26, 0xbab859e9f48ffa8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x958c0f49bd572f33 # load x3 with value 0x958c0f49bd572f33
sw x3, 0(x2) # store 0x958c0f49bd572f33 in memory
flh f1, 0(x2) # load 0x958c0f49bd572f33 from memory into f1
froundnx.h f26, f1 # perform operation
froundnx.h f26, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x31, 0xa296bc3aa5bcafa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dbe640085f0ef3b # load x3 with value 0x9dbe640085f0ef3b
sw x3, 0(x2) # store 0x9dbe640085f0ef3b in memory
flh f2, 0(x2) # load 0x9dbe640085f0ef3b from memory into f2
froundnx.h f31, f2 # perform operation
froundnx.h f31, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x16, 0x142e8eee69db4787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f14a95cc31d57b1 # load x3 with value 0x5f14a95cc31d57b1
sw x3, 0(x2) # store 0x5f14a95cc31d57b1 in memory
flh f3, 0(x2) # load 0x5f14a95cc31d57b1 from memory into f3
froundnx.h f16, f3 # perform operation
froundnx.h f16, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0x155efdf4f9137e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1fc9b7d4e2a8a43 # load x3 with value 0xa1fc9b7d4e2a8a43
sw x3, 0(x2) # store 0xa1fc9b7d4e2a8a43 in memory
flh f4, 0(x2) # load 0xa1fc9b7d4e2a8a43 from memory into f4
froundnx.h f25, f4 # perform operation
froundnx.h f25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0x5c51cd9fdaf5c722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc65654b96b048744 # load x3 with value 0xc65654b96b048744
sw x3, 0(x2) # store 0xc65654b96b048744 in memory
flh f5, 0(x2) # load 0xc65654b96b048744 from memory into f5
froundnx.h f5, f5 # perform operation
froundnx.h f5, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x25, 0x23c93efced13dd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x734ede9cc632e5c1 # load x3 with value 0x734ede9cc632e5c1
sw x3, 0(x2) # store 0x734ede9cc632e5c1 in memory
flh f6, 0(x2) # load 0x734ede9cc632e5c1 from memory into f6
froundnx.h f25, f6 # perform operation
froundnx.h f25, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x27, 0x9ef8c7dbc240bbf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a35b8030e962c96 # load x3 with value 0x6a35b8030e962c96
sw x3, 0(x2) # store 0x6a35b8030e962c96 in memory
flh f7, 0(x2) # load 0x6a35b8030e962c96 from memory into f7
froundnx.h f27, f7 # perform operation
froundnx.h f27, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x29, 0xb31b10afe69a1197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf934a3f6e84c383a # load x3 with value 0xf934a3f6e84c383a
sw x3, 0(x2) # store 0xf934a3f6e84c383a in memory
flh f8, 0(x2) # load 0xf934a3f6e84c383a from memory into f8
froundnx.h f29, f8 # perform operation
froundnx.h f29, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x9, 0x7e264d8afae858fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x824e2d543a99d3fe # load x3 with value 0x824e2d543a99d3fe
sw x3, 0(x2) # store 0x824e2d543a99d3fe in memory
flh f9, 0(x2) # load 0x824e2d543a99d3fe from memory into f9
froundnx.h f9, f9 # perform operation
froundnx.h f9, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x4, 0x314a1d1dc7e5e89e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd091f00682beac5e # load x3 with value 0xd091f00682beac5e
sw x3, 0(x2) # store 0xd091f00682beac5e in memory
flh f10, 0(x2) # load 0xd091f00682beac5e from memory into f10
froundnx.h f4, f10 # perform operation
froundnx.h f4, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x17, 0xf2fd6f2a891a3f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93243a22d600cbf7 # load x3 with value 0x93243a22d600cbf7
sw x3, 0(x2) # store 0x93243a22d600cbf7 in memory
flh f11, 0(x2) # load 0x93243a22d600cbf7 from memory into f11
froundnx.h f17, f11 # perform operation
froundnx.h f17, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x11, 0x7d8239de66500e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8bbca5f4821a85f # load x3 with value 0xa8bbca5f4821a85f
sw x3, 0(x2) # store 0xa8bbca5f4821a85f in memory
flh f12, 0(x2) # load 0xa8bbca5f4821a85f from memory into f12
froundnx.h f11, f12 # perform operation
froundnx.h f11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x5, 0x296e2818a28e048f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5885d258dce56ab0 # load x3 with value 0x5885d258dce56ab0
sw x3, 0(x2) # store 0x5885d258dce56ab0 in memory
flh f13, 0(x2) # load 0x5885d258dce56ab0 from memory into f13
froundnx.h f5, f13 # perform operation
froundnx.h f5, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x5, 0x00ab7f276f81c558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41090cbab523083c # load x3 with value 0x41090cbab523083c
sw x3, 0(x2) # store 0x41090cbab523083c in memory
flh f14, 0(x2) # load 0x41090cbab523083c from memory into f14
froundnx.h f5, f14 # perform operation
froundnx.h f5, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x8, 0xddaa46ef66bf4d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba1959103ada1361 # load x3 with value 0xba1959103ada1361
sw x3, 0(x2) # store 0xba1959103ada1361 in memory
flh f15, 0(x2) # load 0xba1959103ada1361 from memory into f15
froundnx.h f8, f15 # perform operation
froundnx.h f8, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x11, 0x5eb174500dab3646 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x418a704bee5a614d # load x3 with value 0x418a704bee5a614d
sw x3, 0(x2) # store 0x418a704bee5a614d in memory
flh f16, 0(x2) # load 0x418a704bee5a614d from memory into f16
froundnx.h f11, f16 # perform operation
froundnx.h f11, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x10, 0x3c93987a66c5c028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb19bb74ebb1c739a # load x3 with value 0xb19bb74ebb1c739a
sw x3, 0(x2) # store 0xb19bb74ebb1c739a in memory
flh f17, 0(x2) # load 0xb19bb74ebb1c739a from memory into f17
froundnx.h f10, f17 # perform operation
froundnx.h f10, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x28, 0xc82f708b1f2d4f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab7d59da83a2751b # load x3 with value 0xab7d59da83a2751b
sw x3, 0(x2) # store 0xab7d59da83a2751b in memory
flh f18, 0(x2) # load 0xab7d59da83a2751b from memory into f18
froundnx.h f28, f18 # perform operation
froundnx.h f28, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x29, 0x1fe248f1bf313934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30e9091eb974b574 # load x3 with value 0x30e9091eb974b574
sw x3, 0(x2) # store 0x30e9091eb974b574 in memory
flh f19, 0(x2) # load 0x30e9091eb974b574 from memory into f19
froundnx.h f29, f19 # perform operation
froundnx.h f29, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0x8f6e2a46a91c6730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd87ab48da80a51c6 # load x3 with value 0xd87ab48da80a51c6
sw x3, 0(x2) # store 0xd87ab48da80a51c6 in memory
flh f20, 0(x2) # load 0xd87ab48da80a51c6 from memory into f20
froundnx.h f2, f20 # perform operation
froundnx.h f2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x13, 0xf75719ec0707e194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67c6f409c449141c # load x3 with value 0x67c6f409c449141c
sw x3, 0(x2) # store 0x67c6f409c449141c in memory
flh f21, 0(x2) # load 0x67c6f409c449141c from memory into f21
froundnx.h f13, f21 # perform operation
froundnx.h f13, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x30, 0x07405ebdffb0a703 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7900e59d8dee0411 # load x3 with value 0x7900e59d8dee0411
sw x3, 0(x2) # store 0x7900e59d8dee0411 in memory
flh f22, 0(x2) # load 0x7900e59d8dee0411 from memory into f22
froundnx.h f30, f22 # perform operation
froundnx.h f30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x29, 0xe8b14cd038d9be88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8034530af3bac7e8 # load x3 with value 0x8034530af3bac7e8
sw x3, 0(x2) # store 0x8034530af3bac7e8 in memory
flh f23, 0(x2) # load 0x8034530af3bac7e8 from memory into f23
froundnx.h f29, f23 # perform operation
froundnx.h f29, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x28, 0xddd52a5f823b7e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9ce9f5a64a86273 # load x3 with value 0xa9ce9f5a64a86273
sw x3, 0(x2) # store 0xa9ce9f5a64a86273 in memory
flh f24, 0(x2) # load 0xa9ce9f5a64a86273 from memory into f24
froundnx.h f28, f24 # perform operation
froundnx.h f28, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x19, 0xfb5ae888eee097fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1938985605ab586 # load x3 with value 0xe1938985605ab586
sw x3, 0(x2) # store 0xe1938985605ab586 in memory
flh f25, 0(x2) # load 0xe1938985605ab586 from memory into f25
froundnx.h f19, f25 # perform operation
froundnx.h f19, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x8, 0x6efda4b1d321a676 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf552c77fcd1160bb # load x3 with value 0xf552c77fcd1160bb
sw x3, 0(x2) # store 0xf552c77fcd1160bb in memory
flh f26, 0(x2) # load 0xf552c77fcd1160bb from memory into f26
froundnx.h f8, f26 # perform operation
froundnx.h f8, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x26, 0x72505392314d82dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6b442aadea36010 # load x3 with value 0xf6b442aadea36010
sw x3, 0(x2) # store 0xf6b442aadea36010 in memory
flh f27, 0(x2) # load 0xf6b442aadea36010 from memory into f27
froundnx.h f26, f27 # perform operation
froundnx.h f26, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x21, 0xe4256a3b12a3920d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5ca9282184d1458 # load x3 with value 0xe5ca9282184d1458
sw x3, 0(x2) # store 0xe5ca9282184d1458 in memory
flh f28, 0(x2) # load 0xe5ca9282184d1458 from memory into f28
froundnx.h f21, f28 # perform operation
froundnx.h f21, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x22, 0x954dac956745cee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc650733bb7c5ee25 # load x3 with value 0xc650733bb7c5ee25
sw x3, 0(x2) # store 0xc650733bb7c5ee25 in memory
flh f29, 0(x2) # load 0xc650733bb7c5ee25 from memory into f29
froundnx.h f22, f29 # perform operation
froundnx.h f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x6, 0xe0c0e31b11a9f3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9390e045c3f7cc46 # load x3 with value 0x9390e045c3f7cc46
sw x3, 0(x2) # store 0x9390e045c3f7cc46 in memory
flh f30, 0(x2) # load 0x9390e045c3f7cc46 from memory into f30
froundnx.h f6, f30 # perform operation
froundnx.h f6, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x22, 0x1b131420c900afa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f993553c9162088 # load x3 with value 0x1f993553c9162088
sw x3, 0(x2) # store 0x1f993553c9162088 in memory
flh f31, 0(x2) # load 0x1f993553c9162088 from memory into f31
froundnx.h f22, f31 # perform operation
froundnx.h f22, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
