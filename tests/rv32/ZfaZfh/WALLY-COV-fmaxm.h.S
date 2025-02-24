///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaZfh//WALLY-COV-fmaxm.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.142452
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
fmaxm.h f29, f24, f15 # perform first operation
fmaxm.h f18, f29, f20 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmaxm.h f4, f29, f24 # perform first operation
fmaxm.h f24, f31, f4 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmaxm.h f14, f10, f11 # perform first operation
fmaxm.h f14, f25, f5 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmaxm.h f10, f9, f17 # perform first operation
fmaxm.h f10, f26, f27 # perform second operation

# Testcase cmp_gpr_hazard war test
fmaxm.h f10, f14, f20 # perform first operation
fmaxm.h f14, f4, f27 # perform second operation

# Testcase cmp_gpr_hazard war test
fmaxm.h f2, f14, f28 # perform first operation
fmaxm.h f28, f3, f24 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x0c9f8e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6e60824 # load x3 with value 0xb6e60824
sw x3, 0(x2) # store 0xb6e60824 in memory
flh f0, 0(x2) # load 0xb6e60824 from memory into f0
li x3, 0x3fcc275f # load x3 with value 0x3fcc275f
sw x3, 0(x2) # store 0x3fcc275f in memory
flh f25, 0(x2) # load 0x3fcc275f from memory into f25
fmaxm.h f0, f0, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x986f723b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcfd5e73 # load x3 with value 0xdcfd5e73
sw x3, 0(x2) # store 0xdcfd5e73 in memory
flh f1, 0(x2) # load 0xdcfd5e73 from memory into f1
li x3, 0x75ebf7d2 # load x3 with value 0x75ebf7d2
sw x3, 0(x2) # store 0x75ebf7d2 in memory
flh f13, 0(x2) # load 0x75ebf7d2 from memory into f13
fmaxm.h f1, f1, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x1bbe47c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53780580 # load x3 with value 0x53780580
sw x3, 0(x2) # store 0x53780580 in memory
flh f2, 0(x2) # load 0x53780580 from memory into f2
li x3, 0x4ef2bf02 # load x3 with value 0x4ef2bf02
sw x3, 0(x2) # store 0x4ef2bf02 in memory
flh f20, 0(x2) # load 0x4ef2bf02 from memory into f20
fmaxm.h f2, f2, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xf7750a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ff16336 # load x3 with value 0x9ff16336
sw x3, 0(x2) # store 0x9ff16336 in memory
flh f3, 0(x2) # load 0x9ff16336 from memory into f3
li x3, 0xeefab222 # load x3 with value 0xeefab222
sw x3, 0(x2) # store 0xeefab222 in memory
flh f21, 0(x2) # load 0xeefab222 from memory into f21
fmaxm.h f3, f3, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x86829a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4374292 # load x3 with value 0xb4374292
sw x3, 0(x2) # store 0xb4374292 in memory
flh f4, 0(x2) # load 0xb4374292 from memory into f4
li x3, 0xaff3f8b0 # load x3 with value 0xaff3f8b0
sw x3, 0(x2) # store 0xaff3f8b0 in memory
flh f8, 0(x2) # load 0xaff3f8b0 from memory into f8
fmaxm.h f4, f4, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x3d972c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5339e55 # load x3 with value 0xb5339e55
sw x3, 0(x2) # store 0xb5339e55 in memory
flh f5, 0(x2) # load 0xb5339e55 from memory into f5
li x3, 0x6d492e22 # load x3 with value 0x6d492e22
sw x3, 0(x2) # store 0x6d492e22 in memory
flh f2, 0(x2) # load 0x6d492e22 from memory into f2
fmaxm.h f5, f5, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x0ba66a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf98f6915 # load x3 with value 0xf98f6915
sw x3, 0(x2) # store 0xf98f6915 in memory
flh f6, 0(x2) # load 0xf98f6915 from memory into f6
li x3, 0xee67b38c # load x3 with value 0xee67b38c
sw x3, 0(x2) # store 0xee67b38c in memory
flh f20, 0(x2) # load 0xee67b38c from memory into f20
fmaxm.h f6, f6, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x9bb8eeb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6750edd # load x3 with value 0xc6750edd
sw x3, 0(x2) # store 0xc6750edd in memory
flh f7, 0(x2) # load 0xc6750edd from memory into f7
li x3, 0x9eb4284d # load x3 with value 0x9eb4284d
sw x3, 0(x2) # store 0x9eb4284d in memory
flh f27, 0(x2) # load 0x9eb4284d from memory into f27
fmaxm.h f7, f7, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xd2cb435b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc70e54d # load x3 with value 0xcc70e54d
sw x3, 0(x2) # store 0xcc70e54d in memory
flh f8, 0(x2) # load 0xcc70e54d from memory into f8
li x3, 0x06ed5180 # load x3 with value 0x06ed5180
sw x3, 0(x2) # store 0x06ed5180 in memory
flh f19, 0(x2) # load 0x06ed5180 from memory into f19
fmaxm.h f8, f8, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x54280eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5aee0176 # load x3 with value 0x5aee0176
sw x3, 0(x2) # store 0x5aee0176 in memory
flh f9, 0(x2) # load 0x5aee0176 from memory into f9
li x3, 0xaed29914 # load x3 with value 0xaed29914
sw x3, 0(x2) # store 0xaed29914 in memory
flh f12, 0(x2) # load 0xaed29914 from memory into f12
fmaxm.h f9, f9, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xe0b1dd54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2162b4cf # load x3 with value 0x2162b4cf
sw x3, 0(x2) # store 0x2162b4cf in memory
flh f10, 0(x2) # load 0x2162b4cf from memory into f10
li x3, 0x3e69214c # load x3 with value 0x3e69214c
sw x3, 0(x2) # store 0x3e69214c in memory
flh f24, 0(x2) # load 0x3e69214c from memory into f24
fmaxm.h f10, f10, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x480977c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb214487a # load x3 with value 0xb214487a
sw x3, 0(x2) # store 0xb214487a in memory
flh f11, 0(x2) # load 0xb214487a from memory into f11
li x3, 0x4549996a # load x3 with value 0x4549996a
sw x3, 0(x2) # store 0x4549996a in memory
flh f10, 0(x2) # load 0x4549996a from memory into f10
fmaxm.h f11, f11, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xb89a719e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd166436 # load x3 with value 0xfd166436
sw x3, 0(x2) # store 0xfd166436 in memory
flh f12, 0(x2) # load 0xfd166436 from memory into f12
li x3, 0x813a74b4 # load x3 with value 0x813a74b4
sw x3, 0(x2) # store 0x813a74b4 in memory
flh f30, 0(x2) # load 0x813a74b4 from memory into f30
fmaxm.h f12, f12, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xabfd05b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0ccd2dd # load x3 with value 0xc0ccd2dd
sw x3, 0(x2) # store 0xc0ccd2dd in memory
flh f13, 0(x2) # load 0xc0ccd2dd from memory into f13
li x3, 0x5f017d9e # load x3 with value 0x5f017d9e
sw x3, 0(x2) # store 0x5f017d9e in memory
flh f6, 0(x2) # load 0x5f017d9e from memory into f6
fmaxm.h f13, f13, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xcf00803e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf920ba0f # load x3 with value 0xf920ba0f
sw x3, 0(x2) # store 0xf920ba0f in memory
flh f14, 0(x2) # load 0xf920ba0f from memory into f14
li x3, 0x79e2ddbc # load x3 with value 0x79e2ddbc
sw x3, 0(x2) # store 0x79e2ddbc in memory
flh f13, 0(x2) # load 0x79e2ddbc from memory into f13
fmaxm.h f14, f14, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x27ae65a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1931ad05 # load x3 with value 0x1931ad05
sw x3, 0(x2) # store 0x1931ad05 in memory
flh f15, 0(x2) # load 0x1931ad05 from memory into f15
li x3, 0xa2ec0827 # load x3 with value 0xa2ec0827
sw x3, 0(x2) # store 0xa2ec0827 in memory
flh f23, 0(x2) # load 0xa2ec0827 from memory into f23
fmaxm.h f15, f15, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x189a6092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1245f68 # load x3 with value 0xf1245f68
sw x3, 0(x2) # store 0xf1245f68 in memory
flh f16, 0(x2) # load 0xf1245f68 from memory into f16
li x3, 0xb60356b7 # load x3 with value 0xb60356b7
sw x3, 0(x2) # store 0xb60356b7 in memory
flh f15, 0(x2) # load 0xb60356b7 from memory into f15
fmaxm.h f16, f16, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x3eb6eeac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3195349d # load x3 with value 0x3195349d
sw x3, 0(x2) # store 0x3195349d in memory
flh f17, 0(x2) # load 0x3195349d from memory into f17
li x3, 0x52e9debb # load x3 with value 0x52e9debb
sw x3, 0(x2) # store 0x52e9debb in memory
flh f20, 0(x2) # load 0x52e9debb from memory into f20
fmaxm.h f17, f17, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x7feeb5ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77ecb2e7 # load x3 with value 0x77ecb2e7
sw x3, 0(x2) # store 0x77ecb2e7 in memory
flh f18, 0(x2) # load 0x77ecb2e7 from memory into f18
li x3, 0x86c4d574 # load x3 with value 0x86c4d574
sw x3, 0(x2) # store 0x86c4d574 in memory
flh f27, 0(x2) # load 0x86c4d574 from memory into f27
fmaxm.h f18, f18, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x9ff38116 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x876290a8 # load x3 with value 0x876290a8
sw x3, 0(x2) # store 0x876290a8 in memory
flh f19, 0(x2) # load 0x876290a8 from memory into f19
li x3, 0x7071f257 # load x3 with value 0x7071f257
sw x3, 0(x2) # store 0x7071f257 in memory
flh f15, 0(x2) # load 0x7071f257 from memory into f15
fmaxm.h f19, f19, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xc77ed05f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87a45b15 # load x3 with value 0x87a45b15
sw x3, 0(x2) # store 0x87a45b15 in memory
flh f20, 0(x2) # load 0x87a45b15 from memory into f20
li x3, 0xee329fa7 # load x3 with value 0xee329fa7
sw x3, 0(x2) # store 0xee329fa7 in memory
flh f3, 0(x2) # load 0xee329fa7 from memory into f3
fmaxm.h f20, f20, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xb2ff8883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a3c8eb4 # load x3 with value 0x0a3c8eb4
sw x3, 0(x2) # store 0x0a3c8eb4 in memory
flh f21, 0(x2) # load 0x0a3c8eb4 from memory into f21
li x3, 0x5a24cf54 # load x3 with value 0x5a24cf54
sw x3, 0(x2) # store 0x5a24cf54 in memory
flh f23, 0(x2) # load 0x5a24cf54 from memory into f23
fmaxm.h f21, f21, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xfcedc6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1e8b9d9 # load x3 with value 0xf1e8b9d9
sw x3, 0(x2) # store 0xf1e8b9d9 in memory
flh f22, 0(x2) # load 0xf1e8b9d9 from memory into f22
li x3, 0xc271dc2e # load x3 with value 0xc271dc2e
sw x3, 0(x2) # store 0xc271dc2e in memory
flh f17, 0(x2) # load 0xc271dc2e from memory into f17
fmaxm.h f22, f22, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x7a8ea019 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807ca1b0 # load x3 with value 0x807ca1b0
sw x3, 0(x2) # store 0x807ca1b0 in memory
flh f23, 0(x2) # load 0x807ca1b0 from memory into f23
li x3, 0x8cb4f28f # load x3 with value 0x8cb4f28f
sw x3, 0(x2) # store 0x8cb4f28f in memory
flh f10, 0(x2) # load 0x8cb4f28f from memory into f10
fmaxm.h f23, f23, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x8b5f9d29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa84dbec9 # load x3 with value 0xa84dbec9
sw x3, 0(x2) # store 0xa84dbec9 in memory
flh f24, 0(x2) # load 0xa84dbec9 from memory into f24
li x3, 0x668f6444 # load x3 with value 0x668f6444
sw x3, 0(x2) # store 0x668f6444 in memory
flh f27, 0(x2) # load 0x668f6444 from memory into f27
fmaxm.h f24, f24, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x2007650f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf023b055 # load x3 with value 0xf023b055
sw x3, 0(x2) # store 0xf023b055 in memory
flh f25, 0(x2) # load 0xf023b055 from memory into f25
li x3, 0x2ad96ef4 # load x3 with value 0x2ad96ef4
sw x3, 0(x2) # store 0x2ad96ef4 in memory
flh f7, 0(x2) # load 0x2ad96ef4 from memory into f7
fmaxm.h f25, f25, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xc1678bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d22aff5 # load x3 with value 0x0d22aff5
sw x3, 0(x2) # store 0x0d22aff5 in memory
flh f26, 0(x2) # load 0x0d22aff5 from memory into f26
li x3, 0x3a82c0a7 # load x3 with value 0x3a82c0a7
sw x3, 0(x2) # store 0x3a82c0a7 in memory
flh f2, 0(x2) # load 0x3a82c0a7 from memory into f2
fmaxm.h f26, f26, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xf642798d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a08042f # load x3 with value 0x2a08042f
sw x3, 0(x2) # store 0x2a08042f in memory
flh f27, 0(x2) # load 0x2a08042f from memory into f27
li x3, 0x6f81388e # load x3 with value 0x6f81388e
sw x3, 0(x2) # store 0x6f81388e in memory
flh f31, 0(x2) # load 0x6f81388e from memory into f31
fmaxm.h f27, f27, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xc60fd416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64f50bce # load x3 with value 0x64f50bce
sw x3, 0(x2) # store 0x64f50bce in memory
flh f28, 0(x2) # load 0x64f50bce from memory into f28
li x3, 0x3641a2db # load x3 with value 0x3641a2db
sw x3, 0(x2) # store 0x3641a2db in memory
flh f5, 0(x2) # load 0x3641a2db from memory into f5
fmaxm.h f28, f28, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x4525c709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf9af180 # load x3 with value 0xaf9af180
sw x3, 0(x2) # store 0xaf9af180 in memory
flh f29, 0(x2) # load 0xaf9af180 from memory into f29
li x3, 0x91e8a976 # load x3 with value 0x91e8a976
sw x3, 0(x2) # store 0x91e8a976 in memory
flh f21, 0(x2) # load 0x91e8a976 from memory into f21
fmaxm.h f29, f29, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x6c4b8bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7808222e # load x3 with value 0x7808222e
sw x3, 0(x2) # store 0x7808222e in memory
flh f30, 0(x2) # load 0x7808222e from memory into f30
li x3, 0xf66ba412 # load x3 with value 0xf66ba412
sw x3, 0(x2) # store 0xf66ba412 in memory
flh f22, 0(x2) # load 0xf66ba412 from memory into f22
fmaxm.h f30, f30, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xbd9dc456 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3626014 # load x3 with value 0xd3626014
sw x3, 0(x2) # store 0xd3626014 in memory
flh f31, 0(x2) # load 0xd3626014 from memory into f31
li x3, 0xd77be9b9 # load x3 with value 0xd77be9b9
sw x3, 0(x2) # store 0xd77be9b9 in memory
flh f13, 0(x2) # load 0xd77be9b9 from memory into f13
fmaxm.h f31, f31, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x66e7c14c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bbce05f # load x3 with value 0x8bbce05f
sw x3, 0(x2) # store 0x8bbce05f in memory
flh f28, 0(x2) # load 0x8bbce05f from memory into f28
li x3, 0xe52728aa # load x3 with value 0xe52728aa
sw x3, 0(x2) # store 0xe52728aa in memory
flh f0, 0(x2) # load 0xe52728aa from memory into f0
fmaxm.h f0, f28, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xd1c48936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee775c84 # load x3 with value 0xee775c84
sw x3, 0(x2) # store 0xee775c84 in memory
flh f25, 0(x2) # load 0xee775c84 from memory into f25
li x3, 0xff4f7a1b # load x3 with value 0xff4f7a1b
sw x3, 0(x2) # store 0xff4f7a1b in memory
flh f1, 0(x2) # load 0xff4f7a1b from memory into f1
fmaxm.h f1, f25, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x3deb10e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x446b0c1d # load x3 with value 0x446b0c1d
sw x3, 0(x2) # store 0x446b0c1d in memory
flh f2, 0(x2) # load 0x446b0c1d from memory into f2
li x3, 0x78937c44 # load x3 with value 0x78937c44
sw x3, 0(x2) # store 0x78937c44 in memory
flh f2, 0(x2) # load 0x78937c44 from memory into f2
fmaxm.h f2, f2, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x11949f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82115fad # load x3 with value 0x82115fad
sw x3, 0(x2) # store 0x82115fad in memory
flh f7, 0(x2) # load 0x82115fad from memory into f7
li x3, 0x88012474 # load x3 with value 0x88012474
sw x3, 0(x2) # store 0x88012474 in memory
flh f3, 0(x2) # load 0x88012474 from memory into f3
fmaxm.h f3, f7, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x72dec51e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fd68604 # load x3 with value 0x2fd68604
sw x3, 0(x2) # store 0x2fd68604 in memory
flh f27, 0(x2) # load 0x2fd68604 from memory into f27
li x3, 0x373e3f57 # load x3 with value 0x373e3f57
sw x3, 0(x2) # store 0x373e3f57 in memory
flh f4, 0(x2) # load 0x373e3f57 from memory into f4
fmaxm.h f4, f27, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xe605538c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35849b91 # load x3 with value 0x35849b91
sw x3, 0(x2) # store 0x35849b91 in memory
flh f30, 0(x2) # load 0x35849b91 from memory into f30
li x3, 0xec12636d # load x3 with value 0xec12636d
sw x3, 0(x2) # store 0xec12636d in memory
flh f5, 0(x2) # load 0xec12636d from memory into f5
fmaxm.h f5, f30, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xe6699221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e9bcce1 # load x3 with value 0x6e9bcce1
sw x3, 0(x2) # store 0x6e9bcce1 in memory
flh f8, 0(x2) # load 0x6e9bcce1 from memory into f8
li x3, 0x32771bc2 # load x3 with value 0x32771bc2
sw x3, 0(x2) # store 0x32771bc2 in memory
flh f6, 0(x2) # load 0x32771bc2 from memory into f6
fmaxm.h f6, f8, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xe61b1768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd36552b1 # load x3 with value 0xd36552b1
sw x3, 0(x2) # store 0xd36552b1 in memory
flh f23, 0(x2) # load 0xd36552b1 from memory into f23
li x3, 0xafe473ef # load x3 with value 0xafe473ef
sw x3, 0(x2) # store 0xafe473ef in memory
flh f7, 0(x2) # load 0xafe473ef from memory into f7
fmaxm.h f7, f23, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x09df7b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x413a863e # load x3 with value 0x413a863e
sw x3, 0(x2) # store 0x413a863e in memory
flh f7, 0(x2) # load 0x413a863e from memory into f7
li x3, 0x79cfe2c1 # load x3 with value 0x79cfe2c1
sw x3, 0(x2) # store 0x79cfe2c1 in memory
flh f8, 0(x2) # load 0x79cfe2c1 from memory into f8
fmaxm.h f8, f7, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x2db19354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d8fe6ad # load x3 with value 0x2d8fe6ad
sw x3, 0(x2) # store 0x2d8fe6ad in memory
flh f23, 0(x2) # load 0x2d8fe6ad from memory into f23
li x3, 0xd74f7aa0 # load x3 with value 0xd74f7aa0
sw x3, 0(x2) # store 0xd74f7aa0 in memory
flh f9, 0(x2) # load 0xd74f7aa0 from memory into f9
fmaxm.h f9, f23, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xa6c0c0f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5142a1ed # load x3 with value 0x5142a1ed
sw x3, 0(x2) # store 0x5142a1ed in memory
flh f14, 0(x2) # load 0x5142a1ed from memory into f14
li x3, 0x86c1811c # load x3 with value 0x86c1811c
sw x3, 0(x2) # store 0x86c1811c in memory
flh f10, 0(x2) # load 0x86c1811c from memory into f10
fmaxm.h f10, f14, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x7f751457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f989558 # load x3 with value 0x6f989558
sw x3, 0(x2) # store 0x6f989558 in memory
flh f20, 0(x2) # load 0x6f989558 from memory into f20
li x3, 0x88001bf0 # load x3 with value 0x88001bf0
sw x3, 0(x2) # store 0x88001bf0 in memory
flh f11, 0(x2) # load 0x88001bf0 from memory into f11
fmaxm.h f11, f20, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x0de62b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6eb95eb1 # load x3 with value 0x6eb95eb1
sw x3, 0(x2) # store 0x6eb95eb1 in memory
flh f8, 0(x2) # load 0x6eb95eb1 from memory into f8
li x3, 0xc4f064cc # load x3 with value 0xc4f064cc
sw x3, 0(x2) # store 0xc4f064cc in memory
flh f12, 0(x2) # load 0xc4f064cc from memory into f12
fmaxm.h f12, f8, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x573333e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60118ff2 # load x3 with value 0x60118ff2
sw x3, 0(x2) # store 0x60118ff2 in memory
flh f6, 0(x2) # load 0x60118ff2 from memory into f6
li x3, 0x803eb415 # load x3 with value 0x803eb415
sw x3, 0(x2) # store 0x803eb415 in memory
flh f13, 0(x2) # load 0x803eb415 from memory into f13
fmaxm.h f13, f6, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x626c902e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4746137b # load x3 with value 0x4746137b
sw x3, 0(x2) # store 0x4746137b in memory
flh f5, 0(x2) # load 0x4746137b from memory into f5
li x3, 0x14f7efb3 # load x3 with value 0x14f7efb3
sw x3, 0(x2) # store 0x14f7efb3 in memory
flh f14, 0(x2) # load 0x14f7efb3 from memory into f14
fmaxm.h f14, f5, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x933f4e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98278d25 # load x3 with value 0x98278d25
sw x3, 0(x2) # store 0x98278d25 in memory
flh f5, 0(x2) # load 0x98278d25 from memory into f5
li x3, 0xd17fdb62 # load x3 with value 0xd17fdb62
sw x3, 0(x2) # store 0xd17fdb62 in memory
flh f15, 0(x2) # load 0xd17fdb62 from memory into f15
fmaxm.h f15, f5, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x320c3f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d74c10e # load x3 with value 0x7d74c10e
sw x3, 0(x2) # store 0x7d74c10e in memory
flh f20, 0(x2) # load 0x7d74c10e from memory into f20
li x3, 0xa16c2285 # load x3 with value 0xa16c2285
sw x3, 0(x2) # store 0xa16c2285 in memory
flh f16, 0(x2) # load 0xa16c2285 from memory into f16
fmaxm.h f16, f20, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x54c1911b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x383e4889 # load x3 with value 0x383e4889
sw x3, 0(x2) # store 0x383e4889 in memory
flh f28, 0(x2) # load 0x383e4889 from memory into f28
li x3, 0x80dacce9 # load x3 with value 0x80dacce9
sw x3, 0(x2) # store 0x80dacce9 in memory
flh f17, 0(x2) # load 0x80dacce9 from memory into f17
fmaxm.h f17, f28, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x244c7ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48736404 # load x3 with value 0x48736404
sw x3, 0(x2) # store 0x48736404 in memory
flh f4, 0(x2) # load 0x48736404 from memory into f4
li x3, 0x3e0edd39 # load x3 with value 0x3e0edd39
sw x3, 0(x2) # store 0x3e0edd39 in memory
flh f18, 0(x2) # load 0x3e0edd39 from memory into f18
fmaxm.h f18, f4, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x9c2a1c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7e940fc # load x3 with value 0xe7e940fc
sw x3, 0(x2) # store 0xe7e940fc in memory
flh f16, 0(x2) # load 0xe7e940fc from memory into f16
li x3, 0xc7707a68 # load x3 with value 0xc7707a68
sw x3, 0(x2) # store 0xc7707a68 in memory
flh f19, 0(x2) # load 0xc7707a68 from memory into f19
fmaxm.h f19, f16, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xfe3bb383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6a730a7 # load x3 with value 0xd6a730a7
sw x3, 0(x2) # store 0xd6a730a7 in memory
flh f25, 0(x2) # load 0xd6a730a7 from memory into f25
li x3, 0x10fb5657 # load x3 with value 0x10fb5657
sw x3, 0(x2) # store 0x10fb5657 in memory
flh f20, 0(x2) # load 0x10fb5657 from memory into f20
fmaxm.h f20, f25, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x65b30a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe4390fa # load x3 with value 0xfe4390fa
sw x3, 0(x2) # store 0xfe4390fa in memory
flh f22, 0(x2) # load 0xfe4390fa from memory into f22
li x3, 0x6ab1a058 # load x3 with value 0x6ab1a058
sw x3, 0(x2) # store 0x6ab1a058 in memory
flh f21, 0(x2) # load 0x6ab1a058 from memory into f21
fmaxm.h f21, f22, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x8dc06dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc86ad053 # load x3 with value 0xc86ad053
sw x3, 0(x2) # store 0xc86ad053 in memory
flh f24, 0(x2) # load 0xc86ad053 from memory into f24
li x3, 0x2eac4af7 # load x3 with value 0x2eac4af7
sw x3, 0(x2) # store 0x2eac4af7 in memory
flh f22, 0(x2) # load 0x2eac4af7 from memory into f22
fmaxm.h f22, f24, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xf8dff0af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe486513d # load x3 with value 0xe486513d
sw x3, 0(x2) # store 0xe486513d in memory
flh f10, 0(x2) # load 0xe486513d from memory into f10
li x3, 0xb46d70e1 # load x3 with value 0xb46d70e1
sw x3, 0(x2) # store 0xb46d70e1 in memory
flh f23, 0(x2) # load 0xb46d70e1 from memory into f23
fmaxm.h f23, f10, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x5e26253b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4b3dcfb # load x3 with value 0xd4b3dcfb
sw x3, 0(x2) # store 0xd4b3dcfb in memory
flh f3, 0(x2) # load 0xd4b3dcfb from memory into f3
li x3, 0xe603592f # load x3 with value 0xe603592f
sw x3, 0(x2) # store 0xe603592f in memory
flh f24, 0(x2) # load 0xe603592f from memory into f24
fmaxm.h f24, f3, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x5f7e34e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x248640a4 # load x3 with value 0x248640a4
sw x3, 0(x2) # store 0x248640a4 in memory
flh f18, 0(x2) # load 0x248640a4 from memory into f18
li x3, 0x2b3a80fc # load x3 with value 0x2b3a80fc
sw x3, 0(x2) # store 0x2b3a80fc in memory
flh f25, 0(x2) # load 0x2b3a80fc from memory into f25
fmaxm.h f25, f18, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x93fd6bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefd8ef53 # load x3 with value 0xefd8ef53
sw x3, 0(x2) # store 0xefd8ef53 in memory
flh f7, 0(x2) # load 0xefd8ef53 from memory into f7
li x3, 0xbfcb6125 # load x3 with value 0xbfcb6125
sw x3, 0(x2) # store 0xbfcb6125 in memory
flh f26, 0(x2) # load 0xbfcb6125 from memory into f26
fmaxm.h f26, f7, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xddfe8425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4566955 # load x3 with value 0xb4566955
sw x3, 0(x2) # store 0xb4566955 in memory
flh f26, 0(x2) # load 0xb4566955 from memory into f26
li x3, 0x98f55650 # load x3 with value 0x98f55650
sw x3, 0(x2) # store 0x98f55650 in memory
flh f27, 0(x2) # load 0x98f55650 from memory into f27
fmaxm.h f27, f26, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xae8e40eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x739d1787 # load x3 with value 0x739d1787
sw x3, 0(x2) # store 0x739d1787 in memory
flh f20, 0(x2) # load 0x739d1787 from memory into f20
li x3, 0xc717734f # load x3 with value 0xc717734f
sw x3, 0(x2) # store 0xc717734f in memory
flh f28, 0(x2) # load 0xc717734f from memory into f28
fmaxm.h f28, f20, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x9cef30cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02de3285 # load x3 with value 0x02de3285
sw x3, 0(x2) # store 0x02de3285 in memory
flh f15, 0(x2) # load 0x02de3285 from memory into f15
li x3, 0x2f6cd49d # load x3 with value 0x2f6cd49d
sw x3, 0(x2) # store 0x2f6cd49d in memory
flh f29, 0(x2) # load 0x2f6cd49d from memory into f29
fmaxm.h f29, f15, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xf0e57776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x058df39a # load x3 with value 0x058df39a
sw x3, 0(x2) # store 0x058df39a in memory
flh f17, 0(x2) # load 0x058df39a from memory into f17
li x3, 0x813e4256 # load x3 with value 0x813e4256
sw x3, 0(x2) # store 0x813e4256 in memory
flh f30, 0(x2) # load 0x813e4256 from memory into f30
fmaxm.h f30, f17, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xde1a3a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97ab44d7 # load x3 with value 0x97ab44d7
sw x3, 0(x2) # store 0x97ab44d7 in memory
flh f13, 0(x2) # load 0x97ab44d7 from memory into f13
li x3, 0xf493459f # load x3 with value 0xf493459f
sw x3, 0(x2) # store 0xf493459f in memory
flh f31, 0(x2) # load 0xf493459f from memory into f31
fmaxm.h f31, f13, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x7, 0xc0938ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0xc37e34c4 # load x3 with value 0xc37e34c4
sw x3, 0(x2) # store 0xc37e34c4 in memory
flh f17, 0(x2) # load 0xc37e34c4 from memory into f17
fmaxm.h f7, f6, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x22, 0xdc4eb6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
li x3, 0x58a9c0a2 # load x3 with value 0x58a9c0a2
sw x3, 0(x2) # store 0x58a9c0a2 in memory
flh f30, 0(x2) # load 0x58a9c0a2 from memory into f30
fmaxm.h f22, f5, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x24, 0x825fed0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x7131d4bb # load x3 with value 0x7131d4bb
sw x3, 0(x2) # store 0x7131d4bb in memory
flh f21, 0(x2) # load 0x7131d4bb from memory into f21
fmaxm.h f24, f28, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x6, 0xa1bd7801 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0xd9647d27 # load x3 with value 0xd9647d27
sw x3, 0(x2) # store 0xd9647d27 in memory
flh f26, 0(x2) # load 0xd9647d27 from memory into f26
fmaxm.h f6, f21, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x21, 0xa40a2c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x1211cf62 # load x3 with value 0x1211cf62
sw x3, 0(x2) # store 0x1211cf62 in memory
flh f9, 0(x2) # load 0x1211cf62 from memory into f9
fmaxm.h f21, f27, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x31, 0xa969053d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x9b76af23 # load x3 with value 0x9b76af23
sw x3, 0(x2) # store 0x9b76af23 in memory
flh f18, 0(x2) # load 0x9b76af23 from memory into f18
fmaxm.h f31, f9, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x27, 0x74b4b5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x38de82f4 # load x3 with value 0x38de82f4
sw x3, 0(x2) # store 0x38de82f4 in memory
flh f11, 0(x2) # load 0x38de82f4 from memory into f11
fmaxm.h f27, f12, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x20, 0x13025df2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x978d373d # load x3 with value 0x978d373d
sw x3, 0(x2) # store 0x978d373d in memory
flh f13, 0(x2) # load 0x978d373d from memory into f13
fmaxm.h f20, f1, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x26, 0x48fa36a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
li x3, 0x0b8707a2 # load x3 with value 0x0b8707a2
sw x3, 0(x2) # store 0x0b8707a2 in memory
flh f23, 0(x2) # load 0x0b8707a2 from memory into f23
fmaxm.h f26, f5, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x14, 0xb0a8094b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0xdb60df37 # load x3 with value 0xdb60df37
sw x3, 0(x2) # store 0xdb60df37 in memory
flh f5, 0(x2) # load 0xdb60df37 from memory into f5
fmaxm.h f14, f17, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x22, 0x1fc3e498 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0xcfa8adc8 # load x3 with value 0xcfa8adc8
sw x3, 0(x2) # store 0xcfa8adc8 in memory
flh f4, 0(x2) # load 0xcfa8adc8 from memory into f4
fmaxm.h f22, f23, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x1, 0x6ff07cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0xfba5af9a # load x3 with value 0xfba5af9a
sw x3, 0(x2) # store 0xfba5af9a in memory
flh f14, 0(x2) # load 0xfba5af9a from memory into f14
fmaxm.h f1, f26, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x31, 0x041cdff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
li x3, 0x9701ef84 # load x3 with value 0x9701ef84
sw x3, 0(x2) # store 0x9701ef84 in memory
flh f7, 0(x2) # load 0x9701ef84 from memory into f7
fmaxm.h f31, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x24, 0x4277725b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x75b18c9b # load x3 with value 0x75b18c9b
sw x3, 0(x2) # store 0x75b18c9b in memory
flh f22, 0(x2) # load 0x75b18c9b from memory into f22
fmaxm.h f24, f15, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x12, 0xc44f27b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0xa797d983 # load x3 with value 0xa797d983
sw x3, 0(x2) # store 0xa797d983 in memory
flh f15, 0(x2) # load 0xa797d983 from memory into f15
fmaxm.h f12, f28, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x12, 0x8ec3477c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0xdb35accd # load x3 with value 0xdb35accd
sw x3, 0(x2) # store 0xdb35accd in memory
flh f22, 0(x2) # load 0xdb35accd from memory into f22
fmaxm.h f12, f27, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x24, 0x02376ded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0xe53033d8 # load x3 with value 0xe53033d8
sw x3, 0(x2) # store 0xe53033d8 in memory
flh f26, 0(x2) # load 0xe53033d8 from memory into f26
fmaxm.h f24, f9, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x21, 0x7c1d032a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x193c6de6 # load x3 with value 0x193c6de6
sw x3, 0(x2) # store 0x193c6de6 in memory
flh f13, 0(x2) # load 0x193c6de6 from memory into f13
fmaxm.h f21, f14, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x26, 0xf9a83bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x827b889d # load x3 with value 0x827b889d
sw x3, 0(x2) # store 0x827b889d in memory
flh f7, 0(x2) # load 0x827b889d from memory into f7
fmaxm.h f26, f20, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x21, 0x13f5f57b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x021bcedc # load x3 with value 0x021bcedc
sw x3, 0(x2) # store 0x021bcedc in memory
flh f14, 0(x2) # load 0x021bcedc from memory into f14
fmaxm.h f21, f19, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x1, 0x91f178fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0xa66b108d # load x3 with value 0xa66b108d
sw x3, 0(x2) # store 0xa66b108d in memory
flh f22, 0(x2) # load 0xa66b108d from memory into f22
fmaxm.h f1, f12, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x31, 0x2bc87af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x7abad588 # load x3 with value 0x7abad588
sw x3, 0(x2) # store 0x7abad588 in memory
flh f12, 0(x2) # load 0x7abad588 from memory into f12
fmaxm.h f31, f22, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x28, 0x1ac8bbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x6809d882 # load x3 with value 0x6809d882
sw x3, 0(x2) # store 0x6809d882 in memory
flh f21, 0(x2) # load 0x6809d882 from memory into f21
fmaxm.h f28, f20, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x16, 0xa596ba2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x8e88e641 # load x3 with value 0x8e88e641
sw x3, 0(x2) # store 0x8e88e641 in memory
flh f2, 0(x2) # load 0x8e88e641 from memory into f2
fmaxm.h f16, f5, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x18, 0xcdd7e198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x4d5b45bc # load x3 with value 0x4d5b45bc
sw x3, 0(x2) # store 0x4d5b45bc in memory
flh f9, 0(x2) # load 0x4d5b45bc from memory into f9
fmaxm.h f18, f24, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x29, 0x8aeb45b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
li x3, 0x3855d937 # load x3 with value 0x3855d937
sw x3, 0(x2) # store 0x3855d937 in memory
flh f8, 0(x2) # load 0x3855d937 from memory into f8
fmaxm.h f29, f25, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x3, 0xd9b35c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe46e7153 # load x3 with value 0xe46e7153
sw x3, 0(x2) # store 0xe46e7153 in memory
flh f10, 0(x2) # load 0xe46e7153 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmaxm.h f3, f10, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x18, 0x20300ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1af88b24 # load x3 with value 0x1af88b24
sw x3, 0(x2) # store 0x1af88b24 in memory
flh f5, 0(x2) # load 0x1af88b24 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fmaxm.h f18, f5, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x29, 0x5d1753ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ebeeec2 # load x3 with value 0x5ebeeec2
sw x3, 0(x2) # store 0x5ebeeec2 in memory
flh f5, 0(x2) # load 0x5ebeeec2 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmaxm.h f29, f5, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x31, 0x1ae1515e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e2dfac5 # load x3 with value 0x0e2dfac5
sw x3, 0(x2) # store 0x0e2dfac5 in memory
flh f22, 0(x2) # load 0x0e2dfac5 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fmaxm.h f31, f22, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x22, 0xb87aec6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3e73a4c # load x3 with value 0xf3e73a4c
sw x3, 0(x2) # store 0xf3e73a4c in memory
flh f16, 0(x2) # load 0xf3e73a4c from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmaxm.h f22, f16, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x29, 0x0995c270 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f4b6b5c # load x3 with value 0x4f4b6b5c
sw x3, 0(x2) # store 0x4f4b6b5c in memory
flh f27, 0(x2) # load 0x4f4b6b5c from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fmaxm.h f29, f27, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x15, 0x6bd43395 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x821107c9 # load x3 with value 0x821107c9
sw x3, 0(x2) # store 0x821107c9 in memory
flh f1, 0(x2) # load 0x821107c9 from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmaxm.h f15, f1, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x27, 0xea9ce16a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddd1df98 # load x3 with value 0xddd1df98
sw x3, 0(x2) # store 0xddd1df98 in memory
flh f9, 0(x2) # load 0xddd1df98 from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fmaxm.h f27, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x21, 0xd0d203de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4a7a59b # load x3 with value 0xd4a7a59b
sw x3, 0(x2) # store 0xd4a7a59b in memory
flh f9, 0(x2) # load 0xd4a7a59b from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmaxm.h f21, f9, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x2, 0xa88a2e40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77e43c20 # load x3 with value 0x77e43c20
sw x3, 0(x2) # store 0x77e43c20 in memory
flh f23, 0(x2) # load 0x77e43c20 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fmaxm.h f2, f23, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x21, 0x768fe954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe620bdb0 # load x3 with value 0xe620bdb0
sw x3, 0(x2) # store 0xe620bdb0 in memory
flh f7, 0(x2) # load 0xe620bdb0 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmaxm.h f21, f7, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x17, 0x9626ed17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65575eaa # load x3 with value 0x65575eaa
sw x3, 0(x2) # store 0x65575eaa in memory
flh f5, 0(x2) # load 0x65575eaa from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmaxm.h f17, f5, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x26, 0xf8bafc09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b3538a7 # load x3 with value 0x1b3538a7
sw x3, 0(x2) # store 0x1b3538a7 in memory
flh f2, 0(x2) # load 0x1b3538a7 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmaxm.h f26, f2, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x25, 0x088287a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbd67120 # load x3 with value 0xdbd67120
sw x3, 0(x2) # store 0xdbd67120 in memory
flh f19, 0(x2) # load 0xdbd67120 from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmaxm.h f25, f19, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x18, 0x423cafd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd699baad # load x3 with value 0xd699baad
sw x3, 0(x2) # store 0xd699baad in memory
flh f3, 0(x2) # load 0xd699baad from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fmaxm.h f18, f3, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x26, 0x02811720 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08c5222b # load x3 with value 0x08c5222b
sw x3, 0(x2) # store 0x08c5222b in memory
flh f31, 0(x2) # load 0x08c5222b from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmaxm.h f26, f31, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x29, 0xf89d2188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3cd1bac # load x3 with value 0xa3cd1bac
sw x3, 0(x2) # store 0xa3cd1bac in memory
flh f20, 0(x2) # load 0xa3cd1bac from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmaxm.h f29, f20, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x16, 0xd3730d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15afa92f # load x3 with value 0x15afa92f
sw x3, 0(x2) # store 0x15afa92f in memory
flh f4, 0(x2) # load 0x15afa92f from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmaxm.h f16, f4, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x23, 0x43a63eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9867ab14 # load x3 with value 0x9867ab14
sw x3, 0(x2) # store 0x9867ab14 in memory
flh f18, 0(x2) # load 0x9867ab14 from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fmaxm.h f23, f18, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x23, 0xd6b8c08b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fac4f58 # load x3 with value 0x1fac4f58
sw x3, 0(x2) # store 0x1fac4f58 in memory
flh f4, 0(x2) # load 0x1fac4f58 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmaxm.h f23, f4, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x20, 0xb9d29b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfecc60d2 # load x3 with value 0xfecc60d2
sw x3, 0(x2) # store 0xfecc60d2 in memory
flh f24, 0(x2) # load 0xfecc60d2 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fmaxm.h f20, f24, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x16, 0x43ed7d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4fc228b # load x3 with value 0xf4fc228b
sw x3, 0(x2) # store 0xf4fc228b in memory
flh f28, 0(x2) # load 0xf4fc228b from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fmaxm.h f16, f28, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x23, 0xbbc835a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16df764c # load x3 with value 0x16df764c
sw x3, 0(x2) # store 0x16df764c in memory
flh f30, 0(x2) # load 0x16df764c from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmaxm.h f23, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x6, 0xcf7a2e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f06a049 # load x3 with value 0x2f06a049
sw x3, 0(x2) # store 0x2f06a049 in memory
flh f3, 0(x2) # load 0x2f06a049 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmaxm.h f6, f3, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x20, 0x44a73556 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7a3d1b5 # load x3 with value 0xd7a3d1b5
sw x3, 0(x2) # store 0xd7a3d1b5 in memory
flh f23, 0(x2) # load 0xd7a3d1b5 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fmaxm.h f20, f23, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x4, 0xe357033f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f4bb9fe # load x3 with value 0x3f4bb9fe
sw x3, 0(x2) # store 0x3f4bb9fe in memory
flh f27, 0(x2) # load 0x3f4bb9fe from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmaxm.h f4, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x20, 0x8aa3ecea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmaxm.h f20, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x3, 0xb17fb093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fmaxm.h f3, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x4, 0x9cbc5fed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmaxm.h f4, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x11, 0xc07c8c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmaxm.h f11, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x6, 0xd2fa0f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fmaxm.h f6, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x22, 0xc193603d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmaxm.h f22, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x27, 0x849389dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmaxm.h f27, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x21, 0x7b9cb4f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fmaxm.h f21, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x15, 0x534e70d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmaxm.h f15, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x27, 0x3ecdbd58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fmaxm.h f27, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x31, 0x49a1bab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fmaxm.h f31, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x7, 0x41ff34fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmaxm.h f7, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x21, 0x7a7dab53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fmaxm.h f21, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x27, 0x922592d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmaxm.h f27, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x15, 0xb8be22aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmaxm.h f15, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x14, 0x66014887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
fmaxm.h f14, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x24, 0xba7334bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmaxm.h f24, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x13, 0x6596d235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmaxm.h f13, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x20, 0x1c0813d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmaxm.h f20, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x31, 0x7d543e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmaxm.h f31, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x7, 0x946e82ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmaxm.h f7, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x29, 0xe21cc06b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fmaxm.h f29, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x30, 0xb891b8d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmaxm.h f30, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x30, 0x111cba42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmaxm.h f30, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x1, 0xc6c09e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fmaxm.h f1, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x20, 0x0a323b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmaxm.h f20, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x15, 0x8ba83cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmaxm.h f15, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x13, 0x27c5eebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fmaxm.h f13, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x8, 0x8c5a5b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fmaxm.h f8, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x14, 0x8a0e4ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmaxm.h f14, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x1, 0xe6ae4c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fmaxm.h f1, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x30, 0x5f35bd00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmaxm.h f30, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x20, 0xe0529292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmaxm.h f20, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x22, 0x10823ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmaxm.h f22, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x16, 0xecea3838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fmaxm.h f16, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x3, 0x3e2a3197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmaxm.h f3, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x23, 0x2ddabdd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmaxm.h f23, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x13, 0x0342c527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmaxm.h f13, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x31, 0x3179ba88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmaxm.h f31, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x4, 0x9593ad5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fmaxm.h f4, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x15, 0xb1433e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fmaxm.h f15, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x30, 0x8548e85a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fmaxm.h f30, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x14, 0x79d1d782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fmaxm.h f14, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x26, 0xcc90f4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fmaxm.h f26, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x12, 0x1f746f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmaxm.h f12, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x1, 0x5a80e01f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmaxm.h f1, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x2, 0x586dd1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fmaxm.h f2, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x2, 0x9b3bb5b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmaxm.h f2, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x19, 0x6f201caf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fmaxm.h f19, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x23, 0x36574299 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fmaxm.h f23, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x23, 0xc76218fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmaxm.h f23, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x15, 0xe2c6d9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fmaxm.h f15, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x18, 0x6369a1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmaxm.h f18, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x15, 0xbfdff6ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmaxm.h f15, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x11, 0x4b8c3595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmaxm.h f11, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x29, 0xf6601d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmaxm.h f29, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x28, 0xcf0df9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fmaxm.h f28, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x5, 0x4bcc066d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmaxm.h f5, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x21, 0x8846714f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmaxm.h f21, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x11, 0x4eaf5ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmaxm.h f11, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x10, 0x813e00dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmaxm.h f10, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x10, 0x1b5282a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fmaxm.h f10, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x19, 0x277845f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fmaxm.h f19, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x17, 0x232f7c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmaxm.h f17, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x8, 0x5eaa572b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmaxm.h f8, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x6, 0x2dd5bcc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmaxm.h f6, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x12, 0xc42deeea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fmaxm.h f12, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x31, 0xb30bad09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fmaxm.h f31, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x21, 0xee81c382 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmaxm.h f21, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x19, 0xb0c562e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fmaxm.h f19, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x7, 0x63fd033b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmaxm.h f7, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x4, 0xeb6f5e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmaxm.h f4, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x20, 0x400bbfaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmaxm.h f20, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x6, 0x3dd666af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmaxm.h f6, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x1, 0x2688ba2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fmaxm.h f1, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x6, 0x8ef50fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fmaxm.h f6, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x20, 0x016cd332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmaxm.h f20, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x19, 0x2d79c3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fmaxm.h f19, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x1, 0x5843237e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmaxm.h f1, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x27, 0x43508a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fmaxm.h f27, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x15, 0x0e6a1549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fmaxm.h f15, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x14, 0x804dea8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fmaxm.h f14, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x15, 0x857a428a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fmaxm.h f15, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x9, 0x8bc64495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fmaxm.h f9, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x2, 0xec51e0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmaxm.h f2, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x3, 0x2d0c7c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmaxm.h f3, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x25, 0xe4de4ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmaxm.h f25, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x1, 0x29dd43f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmaxm.h f1, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x2, 0xee7df796 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fmaxm.h f2, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x17, 0xd6e5a083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fmaxm.h f17, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x10, 0x433ce5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fmaxm.h f10, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x29, 0xd15a3b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmaxm.h f29, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x13, 0x1b09fc80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fmaxm.h f13, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x28, 0xcc149a9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmaxm.h f28, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x12, 0x0a7aa3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fmaxm.h f12, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x23, 0x63cd346c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmaxm.h f23, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x3, 0xac7c72ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmaxm.h f3, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x7, 0x449f158d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fmaxm.h f7, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x7, 0x90308398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmaxm.h f7, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x16, 0x9cbcdcec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmaxm.h f16, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x9, 0x576a4756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmaxm.h f9, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x22, 0x0b85ae56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmaxm.h f22, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x21, 0xe3c660cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fmaxm.h f21, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x9, 0xbb57cc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fmaxm.h f9, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x25, 0x749398dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmaxm.h f25, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x19, 0x5e8c4649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fmaxm.h f19, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x28, 0x3d750f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmaxm.h f28, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x31, 0x1dca6311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fmaxm.h f31, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x5, 0x3f185dde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmaxm.h f5, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x7, 0x452b10eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmaxm.h f7, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x12, 0x250e6da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmaxm.h f12, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x19, 0x99439648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmaxm.h f19, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x25, 0x64172d75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmaxm.h f25, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x13, 0x9bbe10cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmaxm.h f13, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x28, 0x3ff276ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fmaxm.h f28, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x22, 0xa4869aab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmaxm.h f22, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x7, 0xf34b8e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmaxm.h f7, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x12, 0x446d0c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmaxm.h f12, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x19, 0x7e951068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fmaxm.h f19, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x3, 0x0d6c32a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fmaxm.h f3, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x15, 0x8de1556b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fmaxm.h f15, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x3, 0x4a7cc174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmaxm.h f3, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x8, 0xd121030f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmaxm.h f8, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x21, 0xff6efbb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmaxm.h f21, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x10, 0x7bfeb0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmaxm.h f10, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x24, 0x64d9ae21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmaxm.h f24, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x23, 0x664ee13b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmaxm.h f23, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x16, 0xa04721f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fmaxm.h f16, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x17, 0x78bee6f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fmaxm.h f17, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x26, 0x2de38dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fmaxm.h f26, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x13, 0x8057de97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fmaxm.h f13, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x3, 0x61ab52b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fmaxm.h f3, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x2, 0x8b6cd15c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fmaxm.h f2, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x13, 0xbfa79180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmaxm.h f13, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x26, 0xd60b0b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmaxm.h f26, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x15, 0x2927d3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmaxm.h f15, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x16, 0xf21add48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmaxm.h f16, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x23, 0x4bad7316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmaxm.h f23, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x21, 0x747f8036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmaxm.h f21, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x11, 0xa1285abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmaxm.h f11, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x12, 0x15700132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fmaxm.h f12, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x13, 0x6e85558e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmaxm.h f13, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x1, 0xf2d16b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmaxm.h f1, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x16, 0xa9978538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmaxm.h f16, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x2, 0xe8bd9fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmaxm.h f2, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x5, 0x72a73d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmaxm.h f5, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x3, 0x2b0cdab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmaxm.h f3, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x5, 0x7138a854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fmaxm.h f5, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x10, 0x040065e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmaxm.h f10, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x16, 0xed10a628 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmaxm.h f16, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x16, 0x5137ba1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmaxm.h f16, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x3, 0xc866fa82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmaxm.h f3, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x8, 0x65bc415d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fmaxm.h f8, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x10, 0xa0c2a2b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmaxm.h f10, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x28, 0x819997c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fmaxm.h f28, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x22, 0xcaba66c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fmaxm.h f22, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x30, 0xe0917741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmaxm.h f30, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x15, 0xaf788220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmaxm.h f15, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x3, 0xe58e6b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmaxm.h f3, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x9, 0xfef4e9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmaxm.h f9, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x31, 0x96f38fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmaxm.h f31, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x22, 0xc4ce66e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmaxm.h f22, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x19, 0x3dd3372f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmaxm.h f19, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x6, 0xf152e6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmaxm.h f6, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x28, 0x03652a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fmaxm.h f28, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x29, 0x55fba039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmaxm.h f29, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x19, 0xdaf9fef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmaxm.h f19, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x2, 0x447dc370 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmaxm.h f2, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x15, 0x34bbcdd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fmaxm.h f15, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x5, 0xbc590ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmaxm.h f5, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x30, 0x700b4604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmaxm.h f30, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x3, 0x9f608dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fmaxm.h f3, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x13, 0x78c004f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmaxm.h f13, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x19, 0x6b8b1d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmaxm.h f19, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x5, 0x6dc0d815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmaxm.h f5, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x24, 0x4dc2464c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmaxm.h f24, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x21, 0x69651633 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fmaxm.h f21, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x15, 0x2abf9b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmaxm.h f15, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x6, 0x51588628 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fmaxm.h f6, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x7, 0x058b7106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fmaxm.h f7, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x30, 0x4a1d73e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fmaxm.h f30, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x20, 0x80b0cbfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fmaxm.h f20, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x11, 0xd73aa294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fmaxm.h f11, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x21, 0x48aad5c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmaxm.h f21, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x30, 0x68af6ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmaxm.h f30, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x13, 0x1f319f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fmaxm.h f13, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x2, 0xbded09ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fmaxm.h f2, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x7, 0xd6400a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmaxm.h f7, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x12, 0x810103d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmaxm.h f12, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x2, 0x5232629c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fmaxm.h f2, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x20, 0xaff41b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmaxm.h f20, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x20, 0x99d896b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmaxm.h f20, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x15, 0x495e5e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmaxm.h f15, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x6, 0x7f64a484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmaxm.h f6, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x31, 0x8e6ca2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmaxm.h f31, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x9, 0x7c7c69ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmaxm.h f9, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x25, 0x93987f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fmaxm.h f25, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x31, 0x6881b655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fmaxm.h f31, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x10, 0x606055ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmaxm.h f10, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x18, 0xbc18129f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmaxm.h f18, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x9, 0x390eb053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fmaxm.h f9, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x11, 0xd7e8d886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fmaxm.h f11, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x19, 0xe8888696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fmaxm.h f19, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x19, 0x8cde7c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmaxm.h f19, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x9, 0x3252e9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fmaxm.h f9, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x10, 0x2e3052fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmaxm.h f10, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x2, 0x358aefbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmaxm.h f2, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x21, 0x1913f534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fmaxm.h f21, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x15, 0x6a4a97bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmaxm.h f15, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x21, 0xf9637844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmaxm.h f21, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x27, 0x2d516e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fmaxm.h f27, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x2, 0x500835d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fmaxm.h f2, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x31, 0x26e30925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fmaxm.h f31, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x13, 0x5453885e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmaxm.h f13, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x21, 0x207cbad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmaxm.h f21, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x29, 0xca49ea68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmaxm.h f29, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x23, 0xbc1e2dd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fmaxm.h f23, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x14, 0x3d441502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmaxm.h f14, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x23, 0x069be452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fmaxm.h f23, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x8, 0x8baac505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmaxm.h f8, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x18, 0xe1bf0cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fmaxm.h f18, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x26, 0xd3229a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmaxm.h f26, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x6, 0xe58e97ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmaxm.h f6, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x28, 0x07c62102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fmaxm.h f28, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x16, 0x28835b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fmaxm.h f16, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x9, 0xfb752617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmaxm.h f9, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x18, 0x14ab1110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmaxm.h f18, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x6, 0x58d9bfa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fmaxm.h f6, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x14, 0xbbc70e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fmaxm.h f14, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x13, 0xddd03469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmaxm.h f13, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x14, 0xe118ee4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmaxm.h f14, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x7, 0x43b52a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fmaxm.h f7, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x12, 0x3dc7746d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmaxm.h f12, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x25, 0x26d0ce40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmaxm.h f25, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x31, 0x98017610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fmaxm.h f31, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x1, 0x1ef6ea71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmaxm.h f1, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x4, 0x9f02949a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fmaxm.h f4, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x22, 0xb29d9066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmaxm.h f22, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x16, 0x9b7c8540 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmaxm.h f16, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x25, 0x76bb8448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fmaxm.h f25, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x9, 0x12647f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fmaxm.h f9, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x21, 0x7d09b861 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fmaxm.h f21, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x23, 0xe8581408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmaxm.h f23, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x12, 0xddc12de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fmaxm.h f12, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x16, 0x4dc689f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmaxm.h f16, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x11, 0x069d067c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmaxm.h f11, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x13, 0x424298e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmaxm.h f13, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x28, 0x5e26d98d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmaxm.h f28, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x22, 0x3c0d93c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmaxm.h f22, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x15, 0xdaff4c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fmaxm.h f15, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x26, 0x548c0886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fmaxm.h f26, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x16, 0x87ec1bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmaxm.h f16, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x24, 0xa436c5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fmaxm.h f24, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x28, 0xc8d8356e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fmaxm.h f28, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x7, 0xffce95cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fmaxm.h f7, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x30, 0xd3b91c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fmaxm.h f30, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x19, 0x9839ee21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fmaxm.h f19, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x23, 0x51eb1854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fmaxm.h f23, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x19, 0x662ecffe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fmaxm.h f19, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x18, 0x0b7300d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fmaxm.h f18, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x28, 0xa013c833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmaxm.h f28, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x4, 0x23d19548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fmaxm.h f4, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x1, 0xfcda5aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmaxm.h f1, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x9, 0x73fe3644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmaxm.h f9, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x9, 0x2c930f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fmaxm.h f9, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x26, 0x442a431a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
fmaxm.h f26, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x1, 0xec59cefe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fmaxm.h f1, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x3, 0x8c66e037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmaxm.h f3, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x22, 0x141865e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmaxm.h f22, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x12, 0x01ab42ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmaxm.h f12, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x26, 0x2edaf223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fmaxm.h f26, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x13, 0xc86557f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmaxm.h f13, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x27, 0x3f5bcafd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fmaxm.h f27, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x15, 0xbc1b9fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fmaxm.h f15, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x12, 0xc76c727f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fmaxm.h f12, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x10, 0x3cdcce81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmaxm.h f10, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x21, 0xd4687947 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmaxm.h f21, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x2, 0x71d10060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmaxm.h f2, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x4, 0x5a98b312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmaxm.h f4, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x26, 0x29367270 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmaxm.h f26, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x7, 0xca0880f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmaxm.h f7, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x30, 0x39788488 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fmaxm.h f30, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x26, 0xdf7f590d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fmaxm.h f26, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x28, 0x60c330ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmaxm.h f28, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x25, 0xb24f68ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fmaxm.h f25, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x22, 0x1a2b8928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmaxm.h f22, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x14, 0x564ac6ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmaxm.h f14, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x14, 0x2a8d6f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmaxm.h f14, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x14, 0x2706134d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fmaxm.h f14, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x6, 0x4363c905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmaxm.h f6, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x20, 0x92336cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmaxm.h f20, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x30, 0x2ac850f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmaxm.h f30, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x10, 0xb60639d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmaxm.h f10, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x17, 0x2b860289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fmaxm.h f17, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x4, 0xedd0d64c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fmaxm.h f4, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x3, 0x9f6dc057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fmaxm.h f3, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x20, 0xbcea5007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmaxm.h f20, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x1, 0xc1c792e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fmaxm.h f1, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x26, 0x5b3af497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmaxm.h f26, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x7, 0x67d7bc1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fmaxm.h f7, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x21, 0xfc769cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fmaxm.h f21, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x27, 0xe90bfeaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmaxm.h f27, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x17, 0xd497cd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmaxm.h f17, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x8, 0xba02b0d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmaxm.h f8, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x16, 0x000dd1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmaxm.h f16, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x27, 0xdca1523f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fmaxm.h f27, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x17, 0xdf5919e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fmaxm.h f17, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x2, 0x4b2b285e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmaxm.h f2, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x17, 0x4510e3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmaxm.h f17, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x20, 0x342123f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmaxm.h f20, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x7, 0x76a0d596 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fmaxm.h f7, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x7, 0x5c5efdce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmaxm.h f7, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x22, 0xae7a0368 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fmaxm.h f22, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x5, 0xa233f7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmaxm.h f5, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x20, 0x33f0e1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fmaxm.h f20, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x25, 0xe7a9f5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fmaxm.h f25, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x14, 0xf8eb4a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fmaxm.h f14, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x25, 0x5f6f9a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmaxm.h f25, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x30, 0xca3c4687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmaxm.h f30, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x3, 0x9774c653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmaxm.h f3, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x16, 0x35a9b7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fmaxm.h f16, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x16, 0xa743ede5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmaxm.h f16, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x15, 0x09b67ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmaxm.h f15, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x28, 0xa9547c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fmaxm.h f28, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x6, 0x0e7ea7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fmaxm.h f6, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x3, 0xb7157b43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fmaxm.h f3, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x19, 0x60fceb8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmaxm.h f19, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x8, 0xae198b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmaxm.h f8, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x17, 0x8134c484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmaxm.h f17, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x28, 0xf08b0e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fmaxm.h f28, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x4, 0xd217f139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmaxm.h f4, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x29, 0x118a87ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fmaxm.h f29, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x29, 0x30e5e651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmaxm.h f29, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x12, 0xbc18b941 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fmaxm.h f12, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x13, 0xf059e8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmaxm.h f13, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x24, 0xd2a069b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmaxm.h f24, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x20, 0x063eb18a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fmaxm.h f20, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x2, 0x04ea62d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fmaxm.h f2, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x17, 0xd9ce2f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmaxm.h f17, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x19, 0x328f3d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fmaxm.h f19, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x28, 0x69e7a7ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmaxm.h f28, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x9, 0x4086ff12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmaxm.h f9, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x30, 0x31fe08c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fmaxm.h f30, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x11, 0xed54bf6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fmaxm.h f11, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x31, 0x1209b4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmaxm.h f31, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x7, 0xb740d9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmaxm.h f7, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x8, 0x602f5bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmaxm.h f8, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x9, 0xd7dda197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmaxm.h f9, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x1, 0xe74b223c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmaxm.h f1, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x17, 0xb47ea470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmaxm.h f17, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x15, 0x1d880f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmaxm.h f15, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x27, 0x45f17acb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fmaxm.h f27, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x24, 0xc14966a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmaxm.h f24, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x27, 0x260c8c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fmaxm.h f27, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x21, 0xea8a0bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fmaxm.h f21, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x1, 0x10c7513a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmaxm.h f1, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x22, 0x02310538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fmaxm.h f22, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x12, 0xd68c29ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmaxm.h f12, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x26, 0x84eef06e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmaxm.h f26, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x24, 0xa0a75fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmaxm.h f24, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x14, 0x6871127c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fmaxm.h f14, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x16, 0xa3bb50d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmaxm.h f16, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x17, 0x3098625a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmaxm.h f17, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x3, 0xeb5923f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmaxm.h f3, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x6, 0x5ff15bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmaxm.h f6, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x22, 0xe0ee2b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmaxm.h f22, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x30, 0x624364f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmaxm.h f30, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x14, 0xc6d6dbc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmaxm.h f14, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x4, 0x47780cda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmaxm.h f4, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x15, 0xaba9710f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fmaxm.h f15, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x30, 0x3fbfa80b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmaxm.h f30, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x28, 0x27da1fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fmaxm.h f28, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x12, 0xac026d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmaxm.h f12, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x3, 0x21536513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fmaxm.h f3, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x13, 0xb80811c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fmaxm.h f13, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x18, 0x490bf33b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmaxm.h f18, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x2, 0xe2784cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fmaxm.h f2, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x5, 0xa509dc3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fmaxm.h f5, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x10, 0xdb11fdd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmaxm.h f10, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x19, 0xbe6fc9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmaxm.h f19, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x11, 0x1ee12fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmaxm.h f11, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x3, 0x6b3e8497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmaxm.h f3, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x16, 0xc95d3375 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmaxm.h f16, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x12, 0x3fe6a5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmaxm.h f12, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x14, 0x7c27f40f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fmaxm.h f14, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x25, 0x9c5dfc42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fmaxm.h f25, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x3, 0x9f3d3b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fmaxm.h f3, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x27, 0xda2af7d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmaxm.h f27, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x17, 0xca270653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmaxm.h f17, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x20, 0xad34e0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fmaxm.h f20, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x2, 0xad81400f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fmaxm.h f2, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x18, 0x38ba6a00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmaxm.h f18, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x28, 0x54f94cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmaxm.h f28, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x12, 0x3f3bf7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmaxm.h f12, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x31, 0xbfd10a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmaxm.h f31, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x4, 0x6c042ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmaxm.h f4, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x22, 0xdce58393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmaxm.h f22, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x18, 0xf3304582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmaxm.h f18, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x26, 0xb07c97ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmaxm.h f26, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x24, 0x4b066458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmaxm.h f24, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x19, 0x4f35635b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmaxm.h f19, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x12, 0x496e0fb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmaxm.h f12, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x9, 0x69cc4965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fmaxm.h f9, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x7, 0xe5314b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmaxm.h f7, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x14, 0x0418ad70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmaxm.h f14, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x2, 0x176c74c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fmaxm.h f2, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x4, 0xd6462b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmaxm.h f4, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x11, 0x889ee762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fmaxm.h f11, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x21, 0x203bcaab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fmaxm.h f21, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x1, 0xf3b0f0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmaxm.h f1, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x24, 0x0690a842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmaxm.h f24, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x25, 0xa41c0c75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmaxm.h f25, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x16, 0x3db0df72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fmaxm.h f16, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x10, 0x1e32cf94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmaxm.h f10, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x4, 0x47ecd4fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmaxm.h f4, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x6, 0xc8c5e2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fmaxm.h f6, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x17, 0xded831dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fmaxm.h f17, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x10, 0x05e744e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmaxm.h f10, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x1, 0x7c180cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmaxm.h f1, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x13, 0xf3d5b842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fmaxm.h f13, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x18, 0xda01bea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fmaxm.h f18, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x26, 0x3bd3fa9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
fmaxm.h f26, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x1, 0x8b28bfc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fmaxm.h f1, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x8, 0xbd3e83d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmaxm.h f8, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x20, 0x9f8c42c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmaxm.h f20, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x2, 0xb970167b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fmaxm.h f2, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x10, 0xa3fe70d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmaxm.h f10, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x5, 0x116f8dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmaxm.h f5, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x24, 0xad89658a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmaxm.h f24, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x2, 0x2cdd7d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fmaxm.h f2, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x20, 0x431a8b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fmaxm.h f20, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x17, 0xf0d8cef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fmaxm.h f17, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x27, 0x642ed0fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fmaxm.h f27, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x28, 0x4bc5a533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmaxm.h f28, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x5, 0x90762253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmaxm.h f5, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x5, 0x6352dad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmaxm.h f5, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x29, 0x99849af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fmaxm.h f29, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x1, 0x9273ccf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fmaxm.h f1, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x10, 0x23e6701b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmaxm.h f10, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x25, 0xace22f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmaxm.h f25, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x9, 0x0777fb1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmaxm.h f9, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x19, 0x7cfb0b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fmaxm.h f19, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x26, 0xc0b336a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmaxm.h f26, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x1, 0xa960c6fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmaxm.h f1, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x17, 0x57d5a41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmaxm.h f17, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x23, 0x85b54d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmaxm.h f23, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x22, 0xdd89a776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmaxm.h f22, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x27, 0x51c5d44e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmaxm.h f27, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x22, 0x16474882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fmaxm.h f22, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x20, 0xfe7316ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmaxm.h f20, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x1, 0x42ed4fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmaxm.h f1, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x16, 0x6771ea0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmaxm.h f16, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x26, 0xb41423ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmaxm.h f26, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x1, 0x0b6b0785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmaxm.h f1, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x2, 0xc61271ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fmaxm.h f2, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x15, 0x7e1f6067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmaxm.h f15, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x28, 0xa3a6193d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fmaxm.h f28, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x20, 0xb5a25ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fmaxm.h f20, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x26, 0xb6b62f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmaxm.h f26, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x12, 0x7e3ff7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmaxm.h f12, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x4, 0x83a22b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmaxm.h f4, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x19, 0xcb3eb53a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fmaxm.h f19, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x11, 0x260cb975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmaxm.h f11, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x22, 0x3d686326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fmaxm.h f22, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x6, 0xb5ce00b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmaxm.h f6, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x30, 0x50ad1771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmaxm.h f30, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x3, 0xb9fa4bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmaxm.h f3, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x24, 0x3b0e006c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fmaxm.h f24, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x7, 0xbb819d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fmaxm.h f7, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x21, 0x0b35702d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fmaxm.h f21, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x19, 0x682f9fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmaxm.h f19, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x23, 0x5e7d8b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmaxm.h f23, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x9, 0xf4e191d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmaxm.h f9, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x19, 0x0748382e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fmaxm.h f19, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x29, 0xba9d72b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fmaxm.h f29, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x13, 0xa1490f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fmaxm.h f13, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x11, 0xdbe4207a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmaxm.h f11, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x6, 0x8284fe1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmaxm.h f6, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x14, 0xf0bbcc61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmaxm.h f14, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x30, 0xb6116cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmaxm.h f30, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x28, 0xd16bd5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmaxm.h f28, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x27, 0x35c28ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fmaxm.h f27, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x19, 0x4e43e701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fmaxm.h f19, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x31, 0x1e43051c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fmaxm.h f31, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x29, 0xc12d9b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fmaxm.h f29, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x11, 0x287f4782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmaxm.h f11, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x26, 0xff83bd7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmaxm.h f26, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x5, 0xd511973e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fmaxm.h f5, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x10, 0xecdca587 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmaxm.h f10, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x9, 0xb5f4fba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmaxm.h f9, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x10, 0xc9a68741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmaxm.h f10, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x3, 0x93603bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fmaxm.h f3, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x12, 0xe3b30f68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fmaxm.h f12, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x13, 0x50b52c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmaxm.h f13, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x22, 0x7976623e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fmaxm.h f22, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x9, 0x4f88ca13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fmaxm.h f9, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x17, 0x27c44282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmaxm.h f17, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x9, 0x406a8e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmaxm.h f9, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x19, 0x2495f314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmaxm.h f19, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x15, 0xf1bcb9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmaxm.h f15, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x21, 0xba31187a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmaxm.h f21, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x29, 0xc94912e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmaxm.h f29, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x5, 0x8429f532 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fmaxm.h f5, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x9, 0xb54d21a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmaxm.h f9, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x14, 0x6b437f9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fmaxm.h f14, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x17, 0x056702ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmaxm.h f17, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x5, 0xb0abc53e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmaxm.h f5, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x25, 0x96aafb57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmaxm.h f25, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x11, 0x1b1e3ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fmaxm.h f11, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x7, 0xa4fa616d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmaxm.h f7, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x2, 0x03a99147 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmaxm.h f2, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x10, 0xf8abbd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmaxm.h f10, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x29, 0xef5c01d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fmaxm.h f29, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x11, 0x05ca2e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fmaxm.h f11, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x12, 0x9535c145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fmaxm.h f12, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x26, 0xe7faa3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmaxm.h f26, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x13, 0x4d5b4a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmaxm.h f13, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x11, 0x6c3378d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmaxm.h f11, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x28, 0x1632fef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmaxm.h f28, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x24, 0x6d61931c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmaxm.h f24, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x23, 0x747e2c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmaxm.h f23, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x5, 0x91482cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fmaxm.h f5, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x29, 0xc9f080e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmaxm.h f29, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x24, 0x7aee11a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmaxm.h f24, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x17, 0x9c720ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmaxm.h f17, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x14, 0xae876ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmaxm.h f14, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x21, 0x2c0dcd6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmaxm.h f21, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x8, 0x8eee70dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fmaxm.h f8, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x3, 0xc6618080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fmaxm.h f3, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x22, 0x8cabf681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmaxm.h f22, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x4, 0x1e8ab66e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fmaxm.h f4, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x6, 0xc8676f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmaxm.h f6, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x15, 0xf22b1d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmaxm.h f15, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x7, 0xf3785634 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fmaxm.h f7, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x3, 0x89d43f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fmaxm.h f3, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x25, 0xecd1532e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fmaxm.h f25, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x16, 0xb4b507e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmaxm.h f16, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x10, 0xc2f0b29c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmaxm.h f10, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x28, 0xf3c994b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmaxm.h f28, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x5, 0x960b2b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmaxm.h f5, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x5, 0x4de2e889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fmaxm.h f5, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x1, 0x43a0691d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fmaxm.h f1, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x14, 0x5c2e2a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmaxm.h f14, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x15, 0xd6232480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmaxm.h f15, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x12, 0xb3982d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fmaxm.h f12, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x5, 0xd3ca09fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmaxm.h f5, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x1, 0x5151e68d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fmaxm.h f1, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x7, 0xd4fa33c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmaxm.h f7, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x6, 0xabd97c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fmaxm.h f6, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x7, 0x15c36545 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fmaxm.h f7, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x8, 0x48b522a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmaxm.h f8, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x10, 0x3370c0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmaxm.h f10, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x5, 0x1cef3ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmaxm.h f5, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x13, 0x0986704e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmaxm.h f13, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x5, 0x27928346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmaxm.h f5, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x26, 0x60b03a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmaxm.h f26, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x5, 0x38fdcba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmaxm.h f5, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x5, 0x0cbd241f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmaxm.h f5, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x31, 0x287e4c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmaxm.h f31, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x11, 0x14bdd0aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fmaxm.h f11, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x17, 0x60a3522d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fmaxm.h f17, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x6, 0x8fb98983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmaxm.h f6, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x20, 0x4d0bb0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmaxm.h f20, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x30, 0x24c77b3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fmaxm.h f30, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x22, 0x2a5e10ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmaxm.h f22, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x10, 0xc1928e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmaxm.h f10, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x5, 0x10edbd6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fmaxm.h f5, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x13, 0x922e3891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmaxm.h f13, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x6, 0xfb6f08c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmaxm.h f6, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x29, 0x8500301c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmaxm.h f29, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x30, 0x539c6571 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmaxm.h f30, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x13, 0xcc944fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fmaxm.h f13, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x5, 0xf5ad3231 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmaxm.h f5, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x22, 0xe2cac7bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmaxm.h f22, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x2, 0x1ac6be4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fmaxm.h f2, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x31, 0x7e0879da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fmaxm.h f31, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x26, 0xccb31665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmaxm.h f26, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x7, 0x94bc760b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fmaxm.h f7, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x9, 0xe331751c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmaxm.h f9, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x11, 0x9922434e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmaxm.h f11, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x28, 0xc6ebcc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmaxm.h f28, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x19, 0xdb32a4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmaxm.h f19, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x6, 0x47f7c02b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmaxm.h f6, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x15, 0xdad54cef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmaxm.h f15, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x5, 0x5f2a7d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fmaxm.h f5, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x8, 0x951b069a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fmaxm.h f8, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x18, 0xc54e3bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmaxm.h f18, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x13, 0xc3211cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmaxm.h f13, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x15, 0x34347ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmaxm.h f15, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x4, 0x2fba506a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmaxm.h f4, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x21, 0xc827781c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmaxm.h f21, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x22, 0x781d926d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fmaxm.h f22, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x11, 0x4c56ab7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmaxm.h f11, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x23, 0x84df6642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fmaxm.h f23, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x19, 0xabc21cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fmaxm.h f19, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x3, 0x2e76e82f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmaxm.h f3, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x27, 0xb0ade5a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fmaxm.h f27, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x18, 0x4b93c0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmaxm.h f18, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x24, 0xfdae339b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmaxm.h f24, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x30, 0x1599fd97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmaxm.h f30, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x10, 0x501d3cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fmaxm.h f10, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x19, 0x2ee58766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fmaxm.h f19, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x15, 0xe59cede2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fmaxm.h f15, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x9, 0x3136dfe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmaxm.h f9, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x6, 0x8bd28c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmaxm.h f6, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x23, 0x073ace37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmaxm.h f23, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x17, 0x5a19662b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fmaxm.h f17, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x16, 0xc3f45542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmaxm.h f16, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x14, 0x4874a956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fmaxm.h f14, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x31, 0x89bfb0ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fmaxm.h f31, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x7, 0x94ef5170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmaxm.h f7, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x10, 0x511d64cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fmaxm.h f10, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x17, 0xad725273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmaxm.h f17, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x23, 0x15e1f95c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fmaxm.h f23, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x2, 0x1376d094 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fmaxm.h f2, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x26, 0x24e6bb50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fmaxm.h f26, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x26, 0xcce6c64a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmaxm.h f26, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x10, 0x308f4a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmaxm.h f10, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x27, 0x78e0a852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fmaxm.h f27, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x22, 0xf7df8aef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fmaxm.h f22, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x29, 0x6499f66b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmaxm.h f29, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x22, 0xa11e5459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmaxm.h f22, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x14, 0xdf6684ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmaxm.h f14, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x12, 0xbc476ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmaxm.h f12, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x29, 0xfbaa2b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmaxm.h f29, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x12, 0x7cd4b673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fmaxm.h f12, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x25, 0x7a6554a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fmaxm.h f25, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x28, 0xa7374f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmaxm.h f28, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x22, 0x09098dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fmaxm.h f22, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x24, 0xfe779902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmaxm.h f24, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x27, 0x9b9fc795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fmaxm.h f27, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x13, 0xacbee32e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fmaxm.h f13, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x31, 0x1022181f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmaxm.h f31, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x10, 0xa7202ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fmaxm.h f10, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x6, 0x91ed0e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fmaxm.h f6, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x3, 0x1ad827a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fmaxm.h f3, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x22, 0xc3c8209e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmaxm.h f22, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x10, 0xbd7a6444 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmaxm.h f10, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x31, 0x1362848c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fmaxm.h f31, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x29, 0xaef1d2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmaxm.h f29, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x19, 0x16fe6fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fmaxm.h f19, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x10, 0xffbdaad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmaxm.h f10, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x25, 0x274c6c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fmaxm.h f25, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x30, 0x91fa7687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fmaxm.h f30, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x11, 0x3557a49c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmaxm.h f11, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x29, 0xa89922ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmaxm.h f29, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x22, 0xde922449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmaxm.h f22, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x11, 0x79e31860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmaxm.h f11, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x29, 0x97743574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fmaxm.h f29, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x29, 0xb93e6df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fmaxm.h f29, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x26, 0xed6c932b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmaxm.h f26, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x11, 0x2a85d277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fmaxm.h f11, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x31, 0x94f3d16c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fmaxm.h f31, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x13, 0xdb1c5173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fmaxm.h f13, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x8, 0xa6cd0799 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmaxm.h f8, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x28, 0x57d0fed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fmaxm.h f28, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x15, 0xf02b5351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fmaxm.h f15, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x2, 0xe4fe0032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fmaxm.h f2, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x9, 0x35fbde6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fmaxm.h f9, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x1, 0xac4faab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmaxm.h f1, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x17, 0xfc569ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fmaxm.h f17, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x19, 0x6676f73b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fmaxm.h f19, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x18, 0xdc9ed43e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fmaxm.h f18, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x27, 0xf12bc116 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmaxm.h f27, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x14, 0x569e079a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmaxm.h f14, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x23, 0x22815e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fmaxm.h f23, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x9, 0x89266d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmaxm.h f9, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x13, 0xe77115f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmaxm.h f13, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x18, 0xc7142fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fmaxm.h f18, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x24, 0x5b17b3cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmaxm.h f24, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x8, 0x29899e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmaxm.h f8, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x28, 0x61737e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmaxm.h f28, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x14, 0xf034941e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmaxm.h f14, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x6, 0x5fe90393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fmaxm.h f6, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x25, 0xf40e2b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fmaxm.h f25, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x31, 0x0fe89945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fmaxm.h f31, f5, f12 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xd1e6adb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e7cf921 # load x3 with value 0x0e7cf921
sw x3, 0(x2) # store 0x0e7cf921 in memory
flh f12, 0(x2) # load 0x0e7cf921 from memory into f12
li x3, 0x001d2961 # load x3 with value 0x001d2961
sw x3, 0(x2) # store 0x001d2961 in memory
flh f7, 0(x2) # load 0x001d2961 from memory into f7
fmaxm.h f0, f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x58e998d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33e48182 # load x3 with value 0x33e48182
sw x3, 0(x2) # store 0x33e48182 in memory
flh f25, 0(x2) # load 0x33e48182 from memory into f25
li x3, 0x46aff729 # load x3 with value 0x46aff729
sw x3, 0(x2) # store 0x46aff729 in memory
flh f29, 0(x2) # load 0x46aff729 from memory into f29
fmaxm.h f1, f25, f29 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb73d973e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca894433 # load x3 with value 0xca894433
sw x3, 0(x2) # store 0xca894433 in memory
flh f9, 0(x2) # load 0xca894433 from memory into f9
li x3, 0x95537c65 # load x3 with value 0x95537c65
sw x3, 0(x2) # store 0x95537c65 in memory
flh f4, 0(x2) # load 0x95537c65 from memory into f4
fmaxm.h f2, f9, f4 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x94229590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb9eedfd # load x3 with value 0xdb9eedfd
sw x3, 0(x2) # store 0xdb9eedfd in memory
flh f3, 0(x2) # load 0xdb9eedfd from memory into f3
li x3, 0xa70c63fe # load x3 with value 0xa70c63fe
sw x3, 0(x2) # store 0xa70c63fe in memory
flh f9, 0(x2) # load 0xa70c63fe from memory into f9
fmaxm.h f3, f3, f9 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x6ae17697 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfd524e3 # load x3 with value 0xdfd524e3
sw x3, 0(x2) # store 0xdfd524e3 in memory
flh f28, 0(x2) # load 0xdfd524e3 from memory into f28
li x3, 0x4cf3a259 # load x3 with value 0x4cf3a259
sw x3, 0(x2) # store 0x4cf3a259 in memory
flh f10, 0(x2) # load 0x4cf3a259 from memory into f10
fmaxm.h f4, f28, f10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x191a5cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7acc078 # load x3 with value 0xa7acc078
sw x3, 0(x2) # store 0xa7acc078 in memory
flh f1, 0(x2) # load 0xa7acc078 from memory into f1
li x3, 0x5444c183 # load x3 with value 0x5444c183
sw x3, 0(x2) # store 0x5444c183 in memory
flh f4, 0(x2) # load 0x5444c183 from memory into f4
fmaxm.h f5, f1, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x726b7e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86f94d85 # load x3 with value 0x86f94d85
sw x3, 0(x2) # store 0x86f94d85 in memory
flh f5, 0(x2) # load 0x86f94d85 from memory into f5
li x3, 0xc5b2d093 # load x3 with value 0xc5b2d093
sw x3, 0(x2) # store 0xc5b2d093 in memory
flh f30, 0(x2) # load 0xc5b2d093 from memory into f30
fmaxm.h f6, f5, f30 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x149a63ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0cf747a # load x3 with value 0xd0cf747a
sw x3, 0(x2) # store 0xd0cf747a in memory
flh f2, 0(x2) # load 0xd0cf747a from memory into f2
li x3, 0x80d120bd # load x3 with value 0x80d120bd
sw x3, 0(x2) # store 0x80d120bd in memory
flh f30, 0(x2) # load 0x80d120bd from memory into f30
fmaxm.h f7, f2, f30 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x75e1e0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b62bf8a # load x3 with value 0x1b62bf8a
sw x3, 0(x2) # store 0x1b62bf8a in memory
flh f12, 0(x2) # load 0x1b62bf8a from memory into f12
li x3, 0x8c115a69 # load x3 with value 0x8c115a69
sw x3, 0(x2) # store 0x8c115a69 in memory
flh f21, 0(x2) # load 0x8c115a69 from memory into f21
fmaxm.h f8, f12, f21 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x8206b614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafc59ff6 # load x3 with value 0xafc59ff6
sw x3, 0(x2) # store 0xafc59ff6 in memory
flh f8, 0(x2) # load 0xafc59ff6 from memory into f8
li x3, 0x64466668 # load x3 with value 0x64466668
sw x3, 0(x2) # store 0x64466668 in memory
flh f13, 0(x2) # load 0x64466668 from memory into f13
fmaxm.h f9, f8, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc03e3b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43199ffc # load x3 with value 0x43199ffc
sw x3, 0(x2) # store 0x43199ffc in memory
flh f24, 0(x2) # load 0x43199ffc from memory into f24
li x3, 0x1fda8fab # load x3 with value 0x1fda8fab
sw x3, 0(x2) # store 0x1fda8fab in memory
flh f16, 0(x2) # load 0x1fda8fab from memory into f16
fmaxm.h f10, f24, f16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x1b09792e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d2bacbc # load x3 with value 0x9d2bacbc
sw x3, 0(x2) # store 0x9d2bacbc in memory
flh f1, 0(x2) # load 0x9d2bacbc from memory into f1
li x3, 0xd3f6ef1e # load x3 with value 0xd3f6ef1e
sw x3, 0(x2) # store 0xd3f6ef1e in memory
flh f2, 0(x2) # load 0xd3f6ef1e from memory into f2
fmaxm.h f11, f1, f2 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x30a90ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x362638b2 # load x3 with value 0x362638b2
sw x3, 0(x2) # store 0x362638b2 in memory
flh f20, 0(x2) # load 0x362638b2 from memory into f20
li x3, 0x8d429e73 # load x3 with value 0x8d429e73
sw x3, 0(x2) # store 0x8d429e73 in memory
flh f1, 0(x2) # load 0x8d429e73 from memory into f1
fmaxm.h f12, f20, f1 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x0bcb6925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38839583 # load x3 with value 0x38839583
sw x3, 0(x2) # store 0x38839583 in memory
flh f5, 0(x2) # load 0x38839583 from memory into f5
li x3, 0xc44e832c # load x3 with value 0xc44e832c
sw x3, 0(x2) # store 0xc44e832c in memory
flh f22, 0(x2) # load 0xc44e832c from memory into f22
fmaxm.h f13, f5, f22 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x3088428f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x804c31a3 # load x3 with value 0x804c31a3
sw x3, 0(x2) # store 0x804c31a3 in memory
flh f1, 0(x2) # load 0x804c31a3 from memory into f1
li x3, 0x0675b9fe # load x3 with value 0x0675b9fe
sw x3, 0(x2) # store 0x0675b9fe in memory
flh f11, 0(x2) # load 0x0675b9fe from memory into f11
fmaxm.h f14, f1, f11 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xfd5fafa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5c11f40 # load x3 with value 0xb5c11f40
sw x3, 0(x2) # store 0xb5c11f40 in memory
flh f19, 0(x2) # load 0xb5c11f40 from memory into f19
li x3, 0x1d527d82 # load x3 with value 0x1d527d82
sw x3, 0(x2) # store 0x1d527d82 in memory
flh f11, 0(x2) # load 0x1d527d82 from memory into f11
fmaxm.h f15, f19, f11 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2acb2b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba0c0dfd # load x3 with value 0xba0c0dfd
sw x3, 0(x2) # store 0xba0c0dfd in memory
flh f17, 0(x2) # load 0xba0c0dfd from memory into f17
li x3, 0x751e625d # load x3 with value 0x751e625d
sw x3, 0(x2) # store 0x751e625d in memory
flh f9, 0(x2) # load 0x751e625d from memory into f9
fmaxm.h f16, f17, f9 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x44eb2ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13081ed7 # load x3 with value 0x13081ed7
sw x3, 0(x2) # store 0x13081ed7 in memory
flh f13, 0(x2) # load 0x13081ed7 from memory into f13
li x3, 0x940e4be9 # load x3 with value 0x940e4be9
sw x3, 0(x2) # store 0x940e4be9 in memory
flh f2, 0(x2) # load 0x940e4be9 from memory into f2
fmaxm.h f17, f13, f2 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x1d30d237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb245001e # load x3 with value 0xb245001e
sw x3, 0(x2) # store 0xb245001e in memory
flh f10, 0(x2) # load 0xb245001e from memory into f10
li x3, 0xc708cbd3 # load x3 with value 0xc708cbd3
sw x3, 0(x2) # store 0xc708cbd3 in memory
flh f18, 0(x2) # load 0xc708cbd3 from memory into f18
fmaxm.h f18, f10, f18 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe64fbdbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb897749f # load x3 with value 0xb897749f
sw x3, 0(x2) # store 0xb897749f in memory
flh f1, 0(x2) # load 0xb897749f from memory into f1
li x3, 0xbec38e63 # load x3 with value 0xbec38e63
sw x3, 0(x2) # store 0xbec38e63 in memory
flh f29, 0(x2) # load 0xbec38e63 from memory into f29
fmaxm.h f19, f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x2182e4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f19b15c # load x3 with value 0x6f19b15c
sw x3, 0(x2) # store 0x6f19b15c in memory
flh f8, 0(x2) # load 0x6f19b15c from memory into f8
li x3, 0x1c166cf4 # load x3 with value 0x1c166cf4
sw x3, 0(x2) # store 0x1c166cf4 in memory
flh f27, 0(x2) # load 0x1c166cf4 from memory into f27
fmaxm.h f20, f8, f27 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x5abce8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5427455d # load x3 with value 0x5427455d
sw x3, 0(x2) # store 0x5427455d in memory
flh f28, 0(x2) # load 0x5427455d from memory into f28
li x3, 0xb9025bb3 # load x3 with value 0xb9025bb3
sw x3, 0(x2) # store 0xb9025bb3 in memory
flh f17, 0(x2) # load 0xb9025bb3 from memory into f17
fmaxm.h f21, f28, f17 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xab72e7df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77b5b3a9 # load x3 with value 0x77b5b3a9
sw x3, 0(x2) # store 0x77b5b3a9 in memory
flh f25, 0(x2) # load 0x77b5b3a9 from memory into f25
li x3, 0x0be04ade # load x3 with value 0x0be04ade
sw x3, 0(x2) # store 0x0be04ade in memory
flh f1, 0(x2) # load 0x0be04ade from memory into f1
fmaxm.h f22, f25, f1 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd3f8870f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x808c7bf7 # load x3 with value 0x808c7bf7
sw x3, 0(x2) # store 0x808c7bf7 in memory
flh f12, 0(x2) # load 0x808c7bf7 from memory into f12
li x3, 0xb3e67e5b # load x3 with value 0xb3e67e5b
sw x3, 0(x2) # store 0xb3e67e5b in memory
flh f18, 0(x2) # load 0xb3e67e5b from memory into f18
fmaxm.h f23, f12, f18 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xdac9482f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc21786b5 # load x3 with value 0xc21786b5
sw x3, 0(x2) # store 0xc21786b5 in memory
flh f9, 0(x2) # load 0xc21786b5 from memory into f9
li x3, 0xe14447f7 # load x3 with value 0xe14447f7
sw x3, 0(x2) # store 0xe14447f7 in memory
flh f24, 0(x2) # load 0xe14447f7 from memory into f24
fmaxm.h f24, f9, f24 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x2a532780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x963f4491 # load x3 with value 0x963f4491
sw x3, 0(x2) # store 0x963f4491 in memory
flh f11, 0(x2) # load 0x963f4491 from memory into f11
li x3, 0xcd4bdf03 # load x3 with value 0xcd4bdf03
sw x3, 0(x2) # store 0xcd4bdf03 in memory
flh f21, 0(x2) # load 0xcd4bdf03 from memory into f21
fmaxm.h f25, f11, f21 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xe2e2c5c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c0230a4 # load x3 with value 0x0c0230a4
sw x3, 0(x2) # store 0x0c0230a4 in memory
flh f24, 0(x2) # load 0x0c0230a4 from memory into f24
li x3, 0xc8cdd1bb # load x3 with value 0xc8cdd1bb
sw x3, 0(x2) # store 0xc8cdd1bb in memory
flh f10, 0(x2) # load 0xc8cdd1bb from memory into f10
fmaxm.h f26, f24, f10 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xe408fcb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85f61170 # load x3 with value 0x85f61170
sw x3, 0(x2) # store 0x85f61170 in memory
flh f9, 0(x2) # load 0x85f61170 from memory into f9
li x3, 0x5491cedf # load x3 with value 0x5491cedf
sw x3, 0(x2) # store 0x5491cedf in memory
flh f1, 0(x2) # load 0x5491cedf from memory into f1
fmaxm.h f27, f9, f1 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xbeb0c402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08bc3e10 # load x3 with value 0x08bc3e10
sw x3, 0(x2) # store 0x08bc3e10 in memory
flh f25, 0(x2) # load 0x08bc3e10 from memory into f25
li x3, 0x7af45f71 # load x3 with value 0x7af45f71
sw x3, 0(x2) # store 0x7af45f71 in memory
flh f8, 0(x2) # load 0x7af45f71 from memory into f8
fmaxm.h f28, f25, f8 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x4d0e8aae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5eab2d4b # load x3 with value 0x5eab2d4b
sw x3, 0(x2) # store 0x5eab2d4b in memory
flh f28, 0(x2) # load 0x5eab2d4b from memory into f28
li x3, 0xce770dc4 # load x3 with value 0xce770dc4
sw x3, 0(x2) # store 0xce770dc4 in memory
flh f31, 0(x2) # load 0xce770dc4 from memory into f31
fmaxm.h f29, f28, f31 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x5b6b4bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbda5c604 # load x3 with value 0xbda5c604
sw x3, 0(x2) # store 0xbda5c604 in memory
flh f29, 0(x2) # load 0xbda5c604 from memory into f29
li x3, 0x22c8aac3 # load x3 with value 0x22c8aac3
sw x3, 0(x2) # store 0x22c8aac3 in memory
flh f13, 0(x2) # load 0x22c8aac3 from memory into f13
fmaxm.h f30, f29, f13 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x98fd19fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccb518d9 # load x3 with value 0xccb518d9
sw x3, 0(x2) # store 0xccb518d9 in memory
flh f14, 0(x2) # load 0xccb518d9 from memory into f14
li x3, 0x5ade0d5b # load x3 with value 0x5ade0d5b
sw x3, 0(x2) # store 0x5ade0d5b in memory
flh f23, 0(x2) # load 0x5ade0d5b from memory into f23
fmaxm.h f31, f14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x17, 0xbd903ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35998a0b # load x3 with value 0x35998a0b
sw x3, 0(x2) # store 0x35998a0b in memory
flh f0, 0(x2) # load 0x35998a0b from memory into f0
li x3, 0x2ee7c8a2 # load x3 with value 0x2ee7c8a2
sw x3, 0(x2) # store 0x2ee7c8a2 in memory
flh f20, 0(x2) # load 0x2ee7c8a2 from memory into f20
fmaxm.h f17, f0, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x8, 0xf1187618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x882d019d # load x3 with value 0x882d019d
sw x3, 0(x2) # store 0x882d019d in memory
flh f1, 0(x2) # load 0x882d019d from memory into f1
li x3, 0xa6579a21 # load x3 with value 0xa6579a21
sw x3, 0(x2) # store 0xa6579a21 in memory
flh f5, 0(x2) # load 0xa6579a21 from memory into f5
fmaxm.h f8, f1, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x4, 0x91065f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00ecf292 # load x3 with value 0x00ecf292
sw x3, 0(x2) # store 0x00ecf292 in memory
flh f2, 0(x2) # load 0x00ecf292 from memory into f2
li x3, 0xa15d2997 # load x3 with value 0xa15d2997
sw x3, 0(x2) # store 0xa15d2997 in memory
flh f29, 0(x2) # load 0xa15d2997 from memory into f29
fmaxm.h f4, f2, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x17, 0xe861f23c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50cef065 # load x3 with value 0x50cef065
sw x3, 0(x2) # store 0x50cef065 in memory
flh f3, 0(x2) # load 0x50cef065 from memory into f3
li x3, 0x07753fde # load x3 with value 0x07753fde
sw x3, 0(x2) # store 0x07753fde in memory
flh f14, 0(x2) # load 0x07753fde from memory into f14
fmaxm.h f17, f3, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x6, 0x28484de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06a4c8a8 # load x3 with value 0x06a4c8a8
sw x3, 0(x2) # store 0x06a4c8a8 in memory
flh f4, 0(x2) # load 0x06a4c8a8 from memory into f4
li x3, 0x631774d8 # load x3 with value 0x631774d8
sw x3, 0(x2) # store 0x631774d8 in memory
flh f26, 0(x2) # load 0x631774d8 from memory into f26
fmaxm.h f6, f4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x6, 0x48dc65ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x213558e6 # load x3 with value 0x213558e6
sw x3, 0(x2) # store 0x213558e6 in memory
flh f5, 0(x2) # load 0x213558e6 from memory into f5
li x3, 0xe4060b10 # load x3 with value 0xe4060b10
sw x3, 0(x2) # store 0xe4060b10 in memory
flh f12, 0(x2) # load 0xe4060b10 from memory into f12
fmaxm.h f6, f5, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x4, 0x745d08c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5897d05d # load x3 with value 0x5897d05d
sw x3, 0(x2) # store 0x5897d05d in memory
flh f6, 0(x2) # load 0x5897d05d from memory into f6
li x3, 0x94267188 # load x3 with value 0x94267188
sw x3, 0(x2) # store 0x94267188 in memory
flh f10, 0(x2) # load 0x94267188 from memory into f10
fmaxm.h f4, f6, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x3, 0xf01861fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09385905 # load x3 with value 0x09385905
sw x3, 0(x2) # store 0x09385905 in memory
flh f7, 0(x2) # load 0x09385905 from memory into f7
li x3, 0xe94c3e38 # load x3 with value 0xe94c3e38
sw x3, 0(x2) # store 0xe94c3e38 in memory
flh f20, 0(x2) # load 0xe94c3e38 from memory into f20
fmaxm.h f3, f7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x30, 0xa990ef8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcabece40 # load x3 with value 0xcabece40
sw x3, 0(x2) # store 0xcabece40 in memory
flh f8, 0(x2) # load 0xcabece40 from memory into f8
li x3, 0x1419f308 # load x3 with value 0x1419f308
sw x3, 0(x2) # store 0x1419f308 in memory
flh f21, 0(x2) # load 0x1419f308 from memory into f21
fmaxm.h f30, f8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x16, 0x340dbde4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddb10e95 # load x3 with value 0xddb10e95
sw x3, 0(x2) # store 0xddb10e95 in memory
flh f9, 0(x2) # load 0xddb10e95 from memory into f9
li x3, 0x07bd8012 # load x3 with value 0x07bd8012
sw x3, 0(x2) # store 0x07bd8012 in memory
flh f20, 0(x2) # load 0x07bd8012 from memory into f20
fmaxm.h f16, f9, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x10, 0x54474826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7832cfb # load x3 with value 0xd7832cfb
sw x3, 0(x2) # store 0xd7832cfb in memory
flh f10, 0(x2) # load 0xd7832cfb from memory into f10
li x3, 0xabd61e37 # load x3 with value 0xabd61e37
sw x3, 0(x2) # store 0xabd61e37 in memory
flh f11, 0(x2) # load 0xabd61e37 from memory into f11
fmaxm.h f10, f10, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x19, 0xc36c16fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83db7dfb # load x3 with value 0x83db7dfb
sw x3, 0(x2) # store 0x83db7dfb in memory
flh f11, 0(x2) # load 0x83db7dfb from memory into f11
li x3, 0x6e7142fe # load x3 with value 0x6e7142fe
sw x3, 0(x2) # store 0x6e7142fe in memory
flh f17, 0(x2) # load 0x6e7142fe from memory into f17
fmaxm.h f19, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x13, 0x8da94fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09ff8d87 # load x3 with value 0x09ff8d87
sw x3, 0(x2) # store 0x09ff8d87 in memory
flh f12, 0(x2) # load 0x09ff8d87 from memory into f12
li x3, 0xda0b7f38 # load x3 with value 0xda0b7f38
sw x3, 0(x2) # store 0xda0b7f38 in memory
flh f7, 0(x2) # load 0xda0b7f38 from memory into f7
fmaxm.h f13, f12, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x23, 0xc09ed14b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69cf7c54 # load x3 with value 0x69cf7c54
sw x3, 0(x2) # store 0x69cf7c54 in memory
flh f13, 0(x2) # load 0x69cf7c54 from memory into f13
li x3, 0x6f74f7b1 # load x3 with value 0x6f74f7b1
sw x3, 0(x2) # store 0x6f74f7b1 in memory
flh f15, 0(x2) # load 0x6f74f7b1 from memory into f15
fmaxm.h f23, f13, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x13, 0x5cfc692e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7d8db49 # load x3 with value 0xe7d8db49
sw x3, 0(x2) # store 0xe7d8db49 in memory
flh f14, 0(x2) # load 0xe7d8db49 from memory into f14
li x3, 0x9ac198b6 # load x3 with value 0x9ac198b6
sw x3, 0(x2) # store 0x9ac198b6 in memory
flh f16, 0(x2) # load 0x9ac198b6 from memory into f16
fmaxm.h f13, f14, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x6, 0xe5bf11b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x808bfd5a # load x3 with value 0x808bfd5a
sw x3, 0(x2) # store 0x808bfd5a in memory
flh f15, 0(x2) # load 0x808bfd5a from memory into f15
li x3, 0xeb5264dd # load x3 with value 0xeb5264dd
sw x3, 0(x2) # store 0xeb5264dd in memory
flh f4, 0(x2) # load 0xeb5264dd from memory into f4
fmaxm.h f6, f15, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x29, 0xaca94849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8d1efa7 # load x3 with value 0xf8d1efa7
sw x3, 0(x2) # store 0xf8d1efa7 in memory
flh f16, 0(x2) # load 0xf8d1efa7 from memory into f16
li x3, 0xeb8718e5 # load x3 with value 0xeb8718e5
sw x3, 0(x2) # store 0xeb8718e5 in memory
flh f5, 0(x2) # load 0xeb8718e5 from memory into f5
fmaxm.h f29, f16, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x21, 0x799380b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b735e75 # load x3 with value 0x7b735e75
sw x3, 0(x2) # store 0x7b735e75 in memory
flh f17, 0(x2) # load 0x7b735e75 from memory into f17
li x3, 0x9206bc00 # load x3 with value 0x9206bc00
sw x3, 0(x2) # store 0x9206bc00 in memory
flh f6, 0(x2) # load 0x9206bc00 from memory into f6
fmaxm.h f21, f17, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x14, 0x01e6f193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4b10940 # load x3 with value 0xd4b10940
sw x3, 0(x2) # store 0xd4b10940 in memory
flh f18, 0(x2) # load 0xd4b10940 from memory into f18
li x3, 0x893e69a5 # load x3 with value 0x893e69a5
sw x3, 0(x2) # store 0x893e69a5 in memory
flh f7, 0(x2) # load 0x893e69a5 from memory into f7
fmaxm.h f14, f18, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x26, 0xf23cbe60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x597c383e # load x3 with value 0x597c383e
sw x3, 0(x2) # store 0x597c383e in memory
flh f19, 0(x2) # load 0x597c383e from memory into f19
li x3, 0x601bba04 # load x3 with value 0x601bba04
sw x3, 0(x2) # store 0x601bba04 in memory
flh f1, 0(x2) # load 0x601bba04 from memory into f1
fmaxm.h f26, f19, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x22, 0xcfc2c5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaa171e0 # load x3 with value 0xfaa171e0
sw x3, 0(x2) # store 0xfaa171e0 in memory
flh f20, 0(x2) # load 0xfaa171e0 from memory into f20
li x3, 0x20d0b601 # load x3 with value 0x20d0b601
sw x3, 0(x2) # store 0x20d0b601 in memory
flh f19, 0(x2) # load 0x20d0b601 from memory into f19
fmaxm.h f22, f20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x10, 0x6b9a2076 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4ff88e7 # load x3 with value 0xc4ff88e7
sw x3, 0(x2) # store 0xc4ff88e7 in memory
flh f21, 0(x2) # load 0xc4ff88e7 from memory into f21
li x3, 0x5d069329 # load x3 with value 0x5d069329
sw x3, 0(x2) # store 0x5d069329 in memory
flh f4, 0(x2) # load 0x5d069329 from memory into f4
fmaxm.h f10, f21, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x29, 0x0f0bab3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e3eac3c # load x3 with value 0x5e3eac3c
sw x3, 0(x2) # store 0x5e3eac3c in memory
flh f22, 0(x2) # load 0x5e3eac3c from memory into f22
li x3, 0xc767761c # load x3 with value 0xc767761c
sw x3, 0(x2) # store 0xc767761c in memory
flh f11, 0(x2) # load 0xc767761c from memory into f11
fmaxm.h f29, f22, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x7, 0x7e40c18d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfeee451d # load x3 with value 0xfeee451d
sw x3, 0(x2) # store 0xfeee451d in memory
flh f23, 0(x2) # load 0xfeee451d from memory into f23
li x3, 0xec1b874c # load x3 with value 0xec1b874c
sw x3, 0(x2) # store 0xec1b874c in memory
flh f19, 0(x2) # load 0xec1b874c from memory into f19
fmaxm.h f7, f23, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x21, 0xd275c885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe376482 # load x3 with value 0xfe376482
sw x3, 0(x2) # store 0xfe376482 in memory
flh f24, 0(x2) # load 0xfe376482 from memory into f24
li x3, 0x1911079a # load x3 with value 0x1911079a
sw x3, 0(x2) # store 0x1911079a in memory
flh f25, 0(x2) # load 0x1911079a from memory into f25
fmaxm.h f21, f24, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x6, 0x5674bd9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0c7753e # load x3 with value 0xc0c7753e
sw x3, 0(x2) # store 0xc0c7753e in memory
flh f25, 0(x2) # load 0xc0c7753e from memory into f25
li x3, 0x1a941af6 # load x3 with value 0x1a941af6
sw x3, 0(x2) # store 0x1a941af6 in memory
flh f26, 0(x2) # load 0x1a941af6 from memory into f26
fmaxm.h f6, f25, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x22, 0xb475e593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x859ea69b # load x3 with value 0x859ea69b
sw x3, 0(x2) # store 0x859ea69b in memory
flh f26, 0(x2) # load 0x859ea69b from memory into f26
li x3, 0x67ba26cc # load x3 with value 0x67ba26cc
sw x3, 0(x2) # store 0x67ba26cc in memory
flh f12, 0(x2) # load 0x67ba26cc from memory into f12
fmaxm.h f22, f26, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x29, 0x9fc88584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5aa1cd1f # load x3 with value 0x5aa1cd1f
sw x3, 0(x2) # store 0x5aa1cd1f in memory
flh f27, 0(x2) # load 0x5aa1cd1f from memory into f27
li x3, 0x2c132a29 # load x3 with value 0x2c132a29
sw x3, 0(x2) # store 0x2c132a29 in memory
flh f19, 0(x2) # load 0x2c132a29 from memory into f19
fmaxm.h f29, f27, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x7, 0xac8b4617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3731344 # load x3 with value 0xe3731344
sw x3, 0(x2) # store 0xe3731344 in memory
flh f28, 0(x2) # load 0xe3731344 from memory into f28
li x3, 0xb2f63cff # load x3 with value 0xb2f63cff
sw x3, 0(x2) # store 0xb2f63cff in memory
flh f14, 0(x2) # load 0xb2f63cff from memory into f14
fmaxm.h f7, f28, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x12, 0xbc855245 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2be3b369 # load x3 with value 0x2be3b369
sw x3, 0(x2) # store 0x2be3b369 in memory
flh f29, 0(x2) # load 0x2be3b369 from memory into f29
li x3, 0x1655bbe8 # load x3 with value 0x1655bbe8
sw x3, 0(x2) # store 0x1655bbe8 in memory
flh f26, 0(x2) # load 0x1655bbe8 from memory into f26
fmaxm.h f12, f29, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x9, 0x65964041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd92ab0f9 # load x3 with value 0xd92ab0f9
sw x3, 0(x2) # store 0xd92ab0f9 in memory
flh f30, 0(x2) # load 0xd92ab0f9 from memory into f30
li x3, 0x17174365 # load x3 with value 0x17174365
sw x3, 0(x2) # store 0x17174365 in memory
flh f27, 0(x2) # load 0x17174365 from memory into f27
fmaxm.h f9, f30, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x9, 0x56aa9e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23bf838f # load x3 with value 0x23bf838f
sw x3, 0(x2) # store 0x23bf838f in memory
flh f31, 0(x2) # load 0x23bf838f from memory into f31
li x3, 0xf440e8ed # load x3 with value 0xf440e8ed
sw x3, 0(x2) # store 0xf440e8ed in memory
flh f14, 0(x2) # load 0xf440e8ed from memory into f14
fmaxm.h f9, f31, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x7, 0xffa70f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09494685 # load x3 with value 0x09494685
sw x3, 0(x2) # store 0x09494685 in memory
flh f26, 0(x2) # load 0x09494685 from memory into f26
li x3, 0x2a0043a4 # load x3 with value 0x2a0043a4
sw x3, 0(x2) # store 0x2a0043a4 in memory
flh f0, 0(x2) # load 0x2a0043a4 from memory into f0
fmaxm.h f7, f26, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x11, 0xccc7023d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41375e8c # load x3 with value 0x41375e8c
sw x3, 0(x2) # store 0x41375e8c in memory
flh f21, 0(x2) # load 0x41375e8c from memory into f21
li x3, 0x4305a7b4 # load x3 with value 0x4305a7b4
sw x3, 0(x2) # store 0x4305a7b4 in memory
flh f1, 0(x2) # load 0x4305a7b4 from memory into f1
fmaxm.h f11, f21, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x6, 0xdbd6d872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51178974 # load x3 with value 0x51178974
sw x3, 0(x2) # store 0x51178974 in memory
flh f11, 0(x2) # load 0x51178974 from memory into f11
li x3, 0xbed72425 # load x3 with value 0xbed72425
sw x3, 0(x2) # store 0xbed72425 in memory
flh f2, 0(x2) # load 0xbed72425 from memory into f2
fmaxm.h f6, f11, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x20, 0x6c712741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e5ebf62 # load x3 with value 0x9e5ebf62
sw x3, 0(x2) # store 0x9e5ebf62 in memory
flh f2, 0(x2) # load 0x9e5ebf62 from memory into f2
li x3, 0x36fa9def # load x3 with value 0x36fa9def
sw x3, 0(x2) # store 0x36fa9def in memory
flh f3, 0(x2) # load 0x36fa9def from memory into f3
fmaxm.h f20, f2, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x27, 0xf90ab0be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f9c8bbe # load x3 with value 0x1f9c8bbe
sw x3, 0(x2) # store 0x1f9c8bbe in memory
flh f24, 0(x2) # load 0x1f9c8bbe from memory into f24
li x3, 0xcd852c82 # load x3 with value 0xcd852c82
sw x3, 0(x2) # store 0xcd852c82 in memory
flh f4, 0(x2) # load 0xcd852c82 from memory into f4
fmaxm.h f27, f24, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x7, 0x709d1ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x292c0266 # load x3 with value 0x292c0266
sw x3, 0(x2) # store 0x292c0266 in memory
flh f4, 0(x2) # load 0x292c0266 from memory into f4
li x3, 0xb2a7b6d7 # load x3 with value 0xb2a7b6d7
sw x3, 0(x2) # store 0xb2a7b6d7 in memory
flh f5, 0(x2) # load 0xb2a7b6d7 from memory into f5
fmaxm.h f7, f4, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x8, 0x6913c65f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0c319c7 # load x3 with value 0xb0c319c7
sw x3, 0(x2) # store 0xb0c319c7 in memory
flh f21, 0(x2) # load 0xb0c319c7 from memory into f21
li x3, 0xbd05a65b # load x3 with value 0xbd05a65b
sw x3, 0(x2) # store 0xbd05a65b in memory
flh f6, 0(x2) # load 0xbd05a65b from memory into f6
fmaxm.h f8, f21, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x24, 0x2829a4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bd0a7d3 # load x3 with value 0x8bd0a7d3
sw x3, 0(x2) # store 0x8bd0a7d3 in memory
flh f5, 0(x2) # load 0x8bd0a7d3 from memory into f5
li x3, 0xd1d076ca # load x3 with value 0xd1d076ca
sw x3, 0(x2) # store 0xd1d076ca in memory
flh f7, 0(x2) # load 0xd1d076ca from memory into f7
fmaxm.h f24, f5, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x26, 0x651114b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7418c4a # load x3 with value 0xc7418c4a
sw x3, 0(x2) # store 0xc7418c4a in memory
flh f1, 0(x2) # load 0xc7418c4a from memory into f1
li x3, 0xc89c7661 # load x3 with value 0xc89c7661
sw x3, 0(x2) # store 0xc89c7661 in memory
flh f8, 0(x2) # load 0xc89c7661 from memory into f8
fmaxm.h f26, f1, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x1, 0x60250e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa298e965 # load x3 with value 0xa298e965
sw x3, 0(x2) # store 0xa298e965 in memory
flh f29, 0(x2) # load 0xa298e965 from memory into f29
li x3, 0xc862282d # load x3 with value 0xc862282d
sw x3, 0(x2) # store 0xc862282d in memory
flh f9, 0(x2) # load 0xc862282d from memory into f9
fmaxm.h f1, f29, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x12, 0xe94c771f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e7c21c2 # load x3 with value 0x9e7c21c2
sw x3, 0(x2) # store 0x9e7c21c2 in memory
flh f23, 0(x2) # load 0x9e7c21c2 from memory into f23
li x3, 0x315a3dea # load x3 with value 0x315a3dea
sw x3, 0(x2) # store 0x315a3dea in memory
flh f10, 0(x2) # load 0x315a3dea from memory into f10
fmaxm.h f12, f23, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x12, 0xe6c2ccba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d4816d7 # load x3 with value 0x5d4816d7
sw x3, 0(x2) # store 0x5d4816d7 in memory
flh f8, 0(x2) # load 0x5d4816d7 from memory into f8
li x3, 0xd10ef1d2 # load x3 with value 0xd10ef1d2
sw x3, 0(x2) # store 0xd10ef1d2 in memory
flh f11, 0(x2) # load 0xd10ef1d2 from memory into f11
fmaxm.h f12, f8, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x20, 0xc732cbf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b017828 # load x3 with value 0x0b017828
sw x3, 0(x2) # store 0x0b017828 in memory
flh f13, 0(x2) # load 0x0b017828 from memory into f13
li x3, 0x7d28da64 # load x3 with value 0x7d28da64
sw x3, 0(x2) # store 0x7d28da64 in memory
flh f12, 0(x2) # load 0x7d28da64 from memory into f12
fmaxm.h f20, f13, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x5, 0x1dcb1916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x036150d7 # load x3 with value 0x036150d7
sw x3, 0(x2) # store 0x036150d7 in memory
flh f8, 0(x2) # load 0x036150d7 from memory into f8
li x3, 0x198e63ef # load x3 with value 0x198e63ef
sw x3, 0(x2) # store 0x198e63ef in memory
flh f13, 0(x2) # load 0x198e63ef from memory into f13
fmaxm.h f5, f8, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x17, 0x8f016f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe05081ce # load x3 with value 0xe05081ce
sw x3, 0(x2) # store 0xe05081ce in memory
flh f12, 0(x2) # load 0xe05081ce from memory into f12
li x3, 0xec0fdc59 # load x3 with value 0xec0fdc59
sw x3, 0(x2) # store 0xec0fdc59 in memory
flh f14, 0(x2) # load 0xec0fdc59 from memory into f14
fmaxm.h f17, f12, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x17, 0x3bc93690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fe4c1 # load x3 with value 0x800fe4c1
sw x3, 0(x2) # store 0x800fe4c1 in memory
flh f26, 0(x2) # load 0x800fe4c1 from memory into f26
li x3, 0x5f03b417 # load x3 with value 0x5f03b417
sw x3, 0(x2) # store 0x5f03b417 in memory
flh f15, 0(x2) # load 0x5f03b417 from memory into f15
fmaxm.h f17, f26, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x8, 0x82b8ba25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83729b0e # load x3 with value 0x83729b0e
sw x3, 0(x2) # store 0x83729b0e in memory
flh f12, 0(x2) # load 0x83729b0e from memory into f12
li x3, 0x69b92bd5 # load x3 with value 0x69b92bd5
sw x3, 0(x2) # store 0x69b92bd5 in memory
flh f16, 0(x2) # load 0x69b92bd5 from memory into f16
fmaxm.h f8, f12, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x4, 0x49e16307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedec50e9 # load x3 with value 0xedec50e9
sw x3, 0(x2) # store 0xedec50e9 in memory
flh f13, 0(x2) # load 0xedec50e9 from memory into f13
li x3, 0xda131184 # load x3 with value 0xda131184
sw x3, 0(x2) # store 0xda131184 in memory
flh f17, 0(x2) # load 0xda131184 from memory into f17
fmaxm.h f4, f13, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x12, 0x38184d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb0c49a3 # load x3 with value 0xfb0c49a3
sw x3, 0(x2) # store 0xfb0c49a3 in memory
flh f24, 0(x2) # load 0xfb0c49a3 from memory into f24
li x3, 0x1348d508 # load x3 with value 0x1348d508
sw x3, 0(x2) # store 0x1348d508 in memory
flh f18, 0(x2) # load 0x1348d508 from memory into f18
fmaxm.h f12, f24, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x6, 0xdb154eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1c98ae0 # load x3 with value 0xa1c98ae0
sw x3, 0(x2) # store 0xa1c98ae0 in memory
flh f21, 0(x2) # load 0xa1c98ae0 from memory into f21
li x3, 0xe7a601e1 # load x3 with value 0xe7a601e1
sw x3, 0(x2) # store 0xe7a601e1 in memory
flh f19, 0(x2) # load 0xe7a601e1 from memory into f19
fmaxm.h f6, f21, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x12, 0xbc4d4d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000c77c # load x3 with value 0x8000c77c
sw x3, 0(x2) # store 0x8000c77c in memory
flh f24, 0(x2) # load 0x8000c77c from memory into f24
li x3, 0xc48a3be3 # load x3 with value 0xc48a3be3
sw x3, 0(x2) # store 0xc48a3be3 in memory
flh f20, 0(x2) # load 0xc48a3be3 from memory into f20
fmaxm.h f12, f24, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x12, 0x851fd1a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46d9217a # load x3 with value 0x46d9217a
sw x3, 0(x2) # store 0x46d9217a in memory
flh f5, 0(x2) # load 0x46d9217a from memory into f5
li x3, 0x2e10b5bd # load x3 with value 0x2e10b5bd
sw x3, 0(x2) # store 0x2e10b5bd in memory
flh f21, 0(x2) # load 0x2e10b5bd from memory into f21
fmaxm.h f12, f5, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x27, 0xd2113b5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81ca0723 # load x3 with value 0x81ca0723
sw x3, 0(x2) # store 0x81ca0723 in memory
flh f23, 0(x2) # load 0x81ca0723 from memory into f23
li x3, 0x7a47f067 # load x3 with value 0x7a47f067
sw x3, 0(x2) # store 0x7a47f067 in memory
flh f22, 0(x2) # load 0x7a47f067 from memory into f22
fmaxm.h f27, f23, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x18, 0xdc1b04d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6620675 # load x3 with value 0xf6620675
sw x3, 0(x2) # store 0xf6620675 in memory
flh f11, 0(x2) # load 0xf6620675 from memory into f11
li x3, 0x60f52bb7 # load x3 with value 0x60f52bb7
sw x3, 0(x2) # store 0x60f52bb7 in memory
flh f23, 0(x2) # load 0x60f52bb7 from memory into f23
fmaxm.h f18, f11, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x6, 0x8bd9b5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa465d872 # load x3 with value 0xa465d872
sw x3, 0(x2) # store 0xa465d872 in memory
flh f15, 0(x2) # load 0xa465d872 from memory into f15
li x3, 0x48337781 # load x3 with value 0x48337781
sw x3, 0(x2) # store 0x48337781 in memory
flh f24, 0(x2) # load 0x48337781 from memory into f24
fmaxm.h f6, f15, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x10, 0xaf31ca0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e3bce70 # load x3 with value 0x3e3bce70
sw x3, 0(x2) # store 0x3e3bce70 in memory
flh f21, 0(x2) # load 0x3e3bce70 from memory into f21
li x3, 0x717e1ea9 # load x3 with value 0x717e1ea9
sw x3, 0(x2) # store 0x717e1ea9 in memory
flh f25, 0(x2) # load 0x717e1ea9 from memory into f25
fmaxm.h f10, f21, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x8, 0xfb26f8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22288ad6 # load x3 with value 0x22288ad6
sw x3, 0(x2) # store 0x22288ad6 in memory
flh f22, 0(x2) # load 0x22288ad6 from memory into f22
li x3, 0x2c055283 # load x3 with value 0x2c055283
sw x3, 0(x2) # store 0x2c055283 in memory
flh f26, 0(x2) # load 0x2c055283 from memory into f26
fmaxm.h f8, f22, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x9, 0x8aba51df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24e781d6 # load x3 with value 0x24e781d6
sw x3, 0(x2) # store 0x24e781d6 in memory
flh f21, 0(x2) # load 0x24e781d6 from memory into f21
li x3, 0xdf0d3aa6 # load x3 with value 0xdf0d3aa6
sw x3, 0(x2) # store 0xdf0d3aa6 in memory
flh f27, 0(x2) # load 0xdf0d3aa6 from memory into f27
fmaxm.h f9, f21, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x7, 0x5d93780b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x692d6235 # load x3 with value 0x692d6235
sw x3, 0(x2) # store 0x692d6235 in memory
flh f26, 0(x2) # load 0x692d6235 from memory into f26
li x3, 0xda3e6420 # load x3 with value 0xda3e6420
sw x3, 0(x2) # store 0xda3e6420 in memory
flh f28, 0(x2) # load 0xda3e6420 from memory into f28
fmaxm.h f7, f26, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x25, 0xe68a9af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7895c4a4 # load x3 with value 0x7895c4a4
sw x3, 0(x2) # store 0x7895c4a4 in memory
flh f18, 0(x2) # load 0x7895c4a4 from memory into f18
li x3, 0xe1e9c626 # load x3 with value 0xe1e9c626
sw x3, 0(x2) # store 0xe1e9c626 in memory
flh f29, 0(x2) # load 0xe1e9c626 from memory into f29
fmaxm.h f25, f18, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x21, 0x9bf22101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc37e37ba # load x3 with value 0xc37e37ba
sw x3, 0(x2) # store 0xc37e37ba in memory
flh f22, 0(x2) # load 0xc37e37ba from memory into f22
li x3, 0x71a977c1 # load x3 with value 0x71a977c1
sw x3, 0(x2) # store 0x71a977c1 in memory
flh f30, 0(x2) # load 0x71a977c1 from memory into f30
fmaxm.h f21, f22, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x29, 0xdb912871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05707f39 # load x3 with value 0x05707f39
sw x3, 0(x2) # store 0x05707f39 in memory
flh f10, 0(x2) # load 0x05707f39 from memory into f10
li x3, 0x0c1c4e50 # load x3 with value 0x0c1c4e50
sw x3, 0(x2) # store 0x0c1c4e50 in memory
flh f31, 0(x2) # load 0x0c1c4e50 from memory into f31
fmaxm.h f29, f10, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
