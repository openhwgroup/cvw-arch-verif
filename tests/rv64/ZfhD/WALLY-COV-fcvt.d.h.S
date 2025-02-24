///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfhD//WALLY-COV-fcvt.d.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.820662
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
li x15, 0x50bc856e5d8426a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
flh f18, 0(x2) # load 0x0000000000000000 from memory into f18
fcvt.d.h f15, f18 # perform operation
fcvt.d.h f15, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x21, 0x75f6d7b796c525f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008000 # load x3 with value 0x0000000000008000
sd x3, 0(x2) # store 0x0000000000008000 in memory
flh f6, 0(x2) # load 0x0000000000008000 from memory into f6
fcvt.d.h f21, f6 # perform operation
fcvt.d.h f21, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x21, 0xc01b6d7469485057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000003c00 # load x3 with value 0x0000000000003c00
sd x3, 0(x2) # store 0x0000000000003c00 in memory
flh f9, 0(x2) # load 0x0000000000003c00 from memory into f9
fcvt.d.h f21, f9 # perform operation
fcvt.d.h f21, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x8, 0x59760e632784d1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000bc00 # load x3 with value 0x000000000000bc00
sd x3, 0(x2) # store 0x000000000000bc00 in memory
flh f7, 0(x2) # load 0x000000000000bc00 from memory into f7
fcvt.d.h f8, f7 # perform operation
fcvt.d.h f8, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x7, 0xe23893ae7fbe283c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000003e00 # load x3 with value 0x0000000000003e00
sd x3, 0(x2) # store 0x0000000000003e00 in memory
flh f13, 0(x2) # load 0x0000000000003e00 from memory into f13
fcvt.d.h f7, f13 # perform operation
fcvt.d.h f7, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x8, 0xd96b7c986811c1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000be00 # load x3 with value 0x000000000000be00
sd x3, 0(x2) # store 0x000000000000be00 in memory
flh f1, 0(x2) # load 0x000000000000be00 from memory into f1
fcvt.d.h f8, f1 # perform operation
fcvt.d.h f8, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x8, 0x858dc4b48925ae99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000004000 # load x3 with value 0x0000000000004000
sd x3, 0(x2) # store 0x0000000000004000 in memory
flh f26, 0(x2) # load 0x0000000000004000 from memory into f26
fcvt.d.h f8, f26 # perform operation
fcvt.d.h f8, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x1, 0x29c46a4b44590d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000c000 # load x3 with value 0x000000000000c000
sd x3, 0(x2) # store 0x000000000000c000 in memory
flh f22, 0(x2) # load 0x000000000000c000 from memory into f22
fcvt.d.h f1, f22 # perform operation
fcvt.d.h f1, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x27, 0x6de31702afcd0b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000400 # load x3 with value 0x0000000000000400
sd x3, 0(x2) # store 0x0000000000000400 in memory
flh f8, 0(x2) # load 0x0000000000000400 from memory into f8
fcvt.d.h f27, f8 # perform operation
fcvt.d.h f27, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x26, 0xeb69e2e7cf37cd4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008400 # load x3 with value 0x0000000000008400
sd x3, 0(x2) # store 0x0000000000008400 in memory
flh f12, 0(x2) # load 0x0000000000008400 from memory into f12
fcvt.d.h f26, f12 # perform operation
fcvt.d.h f26, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x25, 0xb768ed04e197e395 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007bff # load x3 with value 0x0000000000007bff
sd x3, 0(x2) # store 0x0000000000007bff in memory
flh f4, 0(x2) # load 0x0000000000007bff from memory into f4
fcvt.d.h f25, f4 # perform operation
fcvt.d.h f25, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x14, 0xf9dd4759bafc5cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000fbff # load x3 with value 0x000000000000fbff
sd x3, 0(x2) # store 0x000000000000fbff in memory
flh f6, 0(x2) # load 0x000000000000fbff from memory into f6
fcvt.d.h f14, f6 # perform operation
fcvt.d.h f14, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x15, 0x8663da3d03f8d999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000000003ff # load x3 with value 0x00000000000003ff
sd x3, 0(x2) # store 0x00000000000003ff in memory
flh f29, 0(x2) # load 0x00000000000003ff from memory into f29
fcvt.d.h f15, f29 # perform operation
fcvt.d.h f15, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x18, 0x1e50d6ead66eb9a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000000083ff # load x3 with value 0x00000000000083ff
sd x3, 0(x2) # store 0x00000000000083ff in memory
flh f13, 0(x2) # load 0x00000000000083ff from memory into f13
fcvt.d.h f18, f13 # perform operation
fcvt.d.h f18, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x16, 0x9569ece7f817b539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000200 # load x3 with value 0x0000000000000200
sd x3, 0(x2) # store 0x0000000000000200 in memory
flh f29, 0(x2) # load 0x0000000000000200 from memory into f29
fcvt.d.h f16, f29 # perform operation
fcvt.d.h f16, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x14, 0xd908057defc643c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008200 # load x3 with value 0x0000000000008200
sd x3, 0(x2) # store 0x0000000000008200 in memory
flh f11, 0(x2) # load 0x0000000000008200 from memory into f11
fcvt.d.h f14, f11 # perform operation
fcvt.d.h f14, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x10, 0xa4c12888ec45b329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
flh f14, 0(x2) # load 0x0000000000000001 from memory into f14
fcvt.d.h f10, f14 # perform operation
fcvt.d.h f10, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x2, 0x2e8a11fb219577a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008001 # load x3 with value 0x0000000000008001
sd x3, 0(x2) # store 0x0000000000008001 in memory
flh f17, 0(x2) # load 0x0000000000008001 from memory into f17
fcvt.d.h f2, f17 # perform operation
fcvt.d.h f2, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x12, 0x020b097fe6677531 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007c00 # load x3 with value 0x0000000000007c00
sd x3, 0(x2) # store 0x0000000000007c00 in memory
flh f19, 0(x2) # load 0x0000000000007c00 from memory into f19
fcvt.d.h f12, f19 # perform operation
fcvt.d.h f12, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x22, 0x0ec6064ed24ac808 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000fc00 # load x3 with value 0x000000000000fc00
sd x3, 0(x2) # store 0x000000000000fc00 in memory
flh f19, 0(x2) # load 0x000000000000fc00 from memory into f19
fcvt.d.h f22, f19 # perform operation
fcvt.d.h f22, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x16, 0x7068c8bfa7f3f776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007e00 # load x3 with value 0x0000000000007e00
sd x3, 0(x2) # store 0x0000000000007e00 in memory
flh f18, 0(x2) # load 0x0000000000007e00 from memory into f18
fcvt.d.h f16, f18 # perform operation
fcvt.d.h f16, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x4, 0x7ef3abb1f6cfa210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007fff # load x3 with value 0x0000000000007fff
sd x3, 0(x2) # store 0x0000000000007fff in memory
flh f15, 0(x2) # load 0x0000000000007fff from memory into f15
fcvt.d.h f4, f15 # perform operation
fcvt.d.h f4, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x27, 0xe6a5609f200d0bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007c01 # load x3 with value 0x0000000000007c01
sd x3, 0(x2) # store 0x0000000000007c01 in memory
flh f10, 0(x2) # load 0x0000000000007c01 from memory into f10
fcvt.d.h f27, f10 # perform operation
fcvt.d.h f27, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x7, 0x7864ebf9c521e4b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007dff # load x3 with value 0x0000000000007dff
sd x3, 0(x2) # store 0x0000000000007dff in memory
flh f13, 0(x2) # load 0x0000000000007dff from memory into f13
fcvt.d.h f7, f13 # perform operation
fcvt.d.h f7, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x11, 0x939f3adb89d7bebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000000058b4 # load x3 with value 0x00000000000058b4
sd x3, 0(x2) # store 0x00000000000058b4 in memory
flh f24, 0(x2) # load 0x00000000000058b4 from memory into f24
fcvt.d.h f11, f24 # perform operation
fcvt.d.h f11, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x3, 0x38ede9125f721753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000c93a # load x3 with value 0x000000000000c93a
sd x3, 0(x2) # store 0x000000000000c93a in memory
flh f13, 0(x2) # load 0x000000000000c93a from memory into f13
fcvt.d.h f3, f13 # perform operation
fcvt.d.h f3, f13 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x804b294af5eaf11f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb565e02c234b95f # load x3 with value 0xcb565e02c234b95f
sd x3, 0(x2) # store 0xcb565e02c234b95f in memory
flh f7, 0(x2) # load 0xcb565e02c234b95f from memory into f7
fcvt.d.h f0, f7 # perform operation
fcvt.d.h f0, f7 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x6c7e1a24784ba4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x699d3eca5365a185 # load x3 with value 0x699d3eca5365a185
sd x3, 0(x2) # store 0x699d3eca5365a185 in memory
flh f23, 0(x2) # load 0x699d3eca5365a185 from memory into f23
fcvt.d.h f1, f23 # perform operation
fcvt.d.h f1, f23 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x4027b40317b1b463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25778779dd6c77ed # load x3 with value 0x25778779dd6c77ed
sd x3, 0(x2) # store 0x25778779dd6c77ed in memory
flh f18, 0(x2) # load 0x25778779dd6c77ed from memory into f18
fcvt.d.h f2, f18 # perform operation
fcvt.d.h f2, f18 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x84828494ad376daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x929d7de0cb101237 # load x3 with value 0x929d7de0cb101237
sd x3, 0(x2) # store 0x929d7de0cb101237 in memory
flh f26, 0(x2) # load 0x929d7de0cb101237 from memory into f26
fcvt.d.h f3, f26 # perform operation
fcvt.d.h f3, f26 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x3475ce8104092a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab024a6554e2fa8a # load x3 with value 0xab024a6554e2fa8a
sd x3, 0(x2) # store 0xab024a6554e2fa8a in memory
flh f24, 0(x2) # load 0xab024a6554e2fa8a from memory into f24
fcvt.d.h f4, f24 # perform operation
fcvt.d.h f4, f24 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xf29b77d2d932ea9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa555425a364f839 # load x3 with value 0xaa555425a364f839
sd x3, 0(x2) # store 0xaa555425a364f839 in memory
flh f19, 0(x2) # load 0xaa555425a364f839 from memory into f19
fcvt.d.h f5, f19 # perform operation
fcvt.d.h f5, f19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x57fa0c8bfe923563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b0e7db4f92ba985 # load x3 with value 0x5b0e7db4f92ba985
sd x3, 0(x2) # store 0x5b0e7db4f92ba985 in memory
flh f23, 0(x2) # load 0x5b0e7db4f92ba985 from memory into f23
fcvt.d.h f6, f23 # perform operation
fcvt.d.h f6, f23 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x4c3b837e803db579 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1f31be3b8a9ad17 # load x3 with value 0xf1f31be3b8a9ad17
sd x3, 0(x2) # store 0xf1f31be3b8a9ad17 in memory
flh f19, 0(x2) # load 0xf1f31be3b8a9ad17 from memory into f19
fcvt.d.h f7, f19 # perform operation
fcvt.d.h f7, f19 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x72164ca98d8f5c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x415d7e3eefcfc484 # load x3 with value 0x415d7e3eefcfc484
sd x3, 0(x2) # store 0x415d7e3eefcfc484 in memory
flh f8, 0(x2) # load 0x415d7e3eefcfc484 from memory into f8
fcvt.d.h f8, f8 # perform operation
fcvt.d.h f8, f8 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xab80bfd222595040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a6093e1c5fd2041 # load x3 with value 0x4a6093e1c5fd2041
sd x3, 0(x2) # store 0x4a6093e1c5fd2041 in memory
flh f25, 0(x2) # load 0x4a6093e1c5fd2041 from memory into f25
fcvt.d.h f9, f25 # perform operation
fcvt.d.h f9, f25 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xfd74da79d9befb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x147e55bdde05ed33 # load x3 with value 0x147e55bdde05ed33
sd x3, 0(x2) # store 0x147e55bdde05ed33 in memory
flh f22, 0(x2) # load 0x147e55bdde05ed33 from memory into f22
fcvt.d.h f10, f22 # perform operation
fcvt.d.h f10, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xe969be4b131d764a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d7b98ca2a45b165 # load x3 with value 0x5d7b98ca2a45b165
sd x3, 0(x2) # store 0x5d7b98ca2a45b165 in memory
flh f6, 0(x2) # load 0x5d7b98ca2a45b165 from memory into f6
fcvt.d.h f11, f6 # perform operation
fcvt.d.h f11, f6 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x5a94dd284385fe5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5752ab4b2734da2 # load x3 with value 0xf5752ab4b2734da2
sd x3, 0(x2) # store 0xf5752ab4b2734da2 in memory
flh f13, 0(x2) # load 0xf5752ab4b2734da2 from memory into f13
fcvt.d.h f12, f13 # perform operation
fcvt.d.h f12, f13 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x9cb92661ce31778f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e890db3e19fd5df # load x3 with value 0x7e890db3e19fd5df
sd x3, 0(x2) # store 0x7e890db3e19fd5df in memory
flh f15, 0(x2) # load 0x7e890db3e19fd5df from memory into f15
fcvt.d.h f13, f15 # perform operation
fcvt.d.h f13, f15 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xdde94cdaa7369953 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f617c13a50f280e # load x3 with value 0x3f617c13a50f280e
sd x3, 0(x2) # store 0x3f617c13a50f280e in memory
flh f1, 0(x2) # load 0x3f617c13a50f280e from memory into f1
fcvt.d.h f14, f1 # perform operation
fcvt.d.h f14, f1 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x6c9afdce656d4aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3c6f7ea403bcb07 # load x3 with value 0xe3c6f7ea403bcb07
sd x3, 0(x2) # store 0xe3c6f7ea403bcb07 in memory
flh f24, 0(x2) # load 0xe3c6f7ea403bcb07 from memory into f24
fcvt.d.h f15, f24 # perform operation
fcvt.d.h f15, f24 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x5fcd005db91e9af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1b866a4029c977e # load x3 with value 0xe1b866a4029c977e
sd x3, 0(x2) # store 0xe1b866a4029c977e in memory
flh f2, 0(x2) # load 0xe1b866a4029c977e from memory into f2
fcvt.d.h f16, f2 # perform operation
fcvt.d.h f16, f2 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xa4bf8bbaeaed912a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7087fd2c3bda924 # load x3 with value 0xe7087fd2c3bda924
sd x3, 0(x2) # store 0xe7087fd2c3bda924 in memory
flh f18, 0(x2) # load 0xe7087fd2c3bda924 from memory into f18
fcvt.d.h f17, f18 # perform operation
fcvt.d.h f17, f18 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xfd551838ff966a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b41ee193fe1f16d # load x3 with value 0x7b41ee193fe1f16d
sd x3, 0(x2) # store 0x7b41ee193fe1f16d in memory
flh f8, 0(x2) # load 0x7b41ee193fe1f16d from memory into f8
fcvt.d.h f18, f8 # perform operation
fcvt.d.h f18, f8 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xa5e8da012c97d60b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb54691901b9feb6 # load x3 with value 0xbb54691901b9feb6
sd x3, 0(x2) # store 0xbb54691901b9feb6 in memory
flh f10, 0(x2) # load 0xbb54691901b9feb6 from memory into f10
fcvt.d.h f19, f10 # perform operation
fcvt.d.h f19, f10 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x4716a8d1fcba0d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbc92ee1fe72934b # load x3 with value 0xdbc92ee1fe72934b
sd x3, 0(x2) # store 0xdbc92ee1fe72934b in memory
flh f4, 0(x2) # load 0xdbc92ee1fe72934b from memory into f4
fcvt.d.h f20, f4 # perform operation
fcvt.d.h f20, f4 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xe278cc887a9dc6af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8066951cea0f1e09 # load x3 with value 0x8066951cea0f1e09
sd x3, 0(x2) # store 0x8066951cea0f1e09 in memory
flh f28, 0(x2) # load 0x8066951cea0f1e09 from memory into f28
fcvt.d.h f21, f28 # perform operation
fcvt.d.h f21, f28 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x95e7dff72468db59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a7ba14e3d0e8f50 # load x3 with value 0x1a7ba14e3d0e8f50
sd x3, 0(x2) # store 0x1a7ba14e3d0e8f50 in memory
flh f27, 0(x2) # load 0x1a7ba14e3d0e8f50 from memory into f27
fcvt.d.h f22, f27 # perform operation
fcvt.d.h f22, f27 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x36f4a8b00bbeb2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97990a7ea6de52f8 # load x3 with value 0x97990a7ea6de52f8
sd x3, 0(x2) # store 0x97990a7ea6de52f8 in memory
flh f27, 0(x2) # load 0x97990a7ea6de52f8 from memory into f27
fcvt.d.h f23, f27 # perform operation
fcvt.d.h f23, f27 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xe635d164aa1932e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x286bbd312ae7dbc5 # load x3 with value 0x286bbd312ae7dbc5
sd x3, 0(x2) # store 0x286bbd312ae7dbc5 in memory
flh f4, 0(x2) # load 0x286bbd312ae7dbc5 from memory into f4
fcvt.d.h f24, f4 # perform operation
fcvt.d.h f24, f4 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x121cd5e621ded4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1167bdddba3b03ab # load x3 with value 0x1167bdddba3b03ab
sd x3, 0(x2) # store 0x1167bdddba3b03ab in memory
flh f24, 0(x2) # load 0x1167bdddba3b03ab from memory into f24
fcvt.d.h f25, f24 # perform operation
fcvt.d.h f25, f24 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xa87115a4735c1d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6005be95e9bde1c7 # load x3 with value 0x6005be95e9bde1c7
sd x3, 0(x2) # store 0x6005be95e9bde1c7 in memory
flh f9, 0(x2) # load 0x6005be95e9bde1c7 from memory into f9
fcvt.d.h f26, f9 # perform operation
fcvt.d.h f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x20a4e1edc012a016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d46e76ce16f3d32 # load x3 with value 0x5d46e76ce16f3d32
sd x3, 0(x2) # store 0x5d46e76ce16f3d32 in memory
flh f19, 0(x2) # load 0x5d46e76ce16f3d32 from memory into f19
fcvt.d.h f27, f19 # perform operation
fcvt.d.h f27, f19 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x93e8d735ef0b3bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1380ab1f96999d3 # load x3 with value 0xa1380ab1f96999d3
sd x3, 0(x2) # store 0xa1380ab1f96999d3 in memory
flh f6, 0(x2) # load 0xa1380ab1f96999d3 from memory into f6
fcvt.d.h f28, f6 # perform operation
fcvt.d.h f28, f6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x9a78479b964861d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7269c739e06368b4 # load x3 with value 0x7269c739e06368b4
sd x3, 0(x2) # store 0x7269c739e06368b4 in memory
flh f30, 0(x2) # load 0x7269c739e06368b4 from memory into f30
fcvt.d.h f29, f30 # perform operation
fcvt.d.h f29, f30 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb151a4375d619a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0fabe185d85cc02 # load x3 with value 0xc0fabe185d85cc02
sd x3, 0(x2) # store 0xc0fabe185d85cc02 in memory
flh f1, 0(x2) # load 0xc0fabe185d85cc02 from memory into f1
fcvt.d.h f30, f1 # perform operation
fcvt.d.h f30, f1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xbec74b9478dc8216 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4aa77ac0ecf0b42 # load x3 with value 0xa4aa77ac0ecf0b42
sd x3, 0(x2) # store 0xa4aa77ac0ecf0b42 in memory
flh f14, 0(x2) # load 0xa4aa77ac0ecf0b42 from memory into f14
fcvt.d.h f31, f14 # perform operation
fcvt.d.h f31, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x21, 0x169e2cc7487c2e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5371c109b9791f0 # load x3 with value 0xd5371c109b9791f0
sd x3, 0(x2) # store 0xd5371c109b9791f0 in memory
flh f0, 0(x2) # load 0xd5371c109b9791f0 from memory into f0
fcvt.d.h f21, f0 # perform operation
fcvt.d.h f21, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x19, 0x27d17c51d455ab41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4785971d3567fefd # load x3 with value 0x4785971d3567fefd
sd x3, 0(x2) # store 0x4785971d3567fefd in memory
flh f1, 0(x2) # load 0x4785971d3567fefd from memory into f1
fcvt.d.h f19, f1 # perform operation
fcvt.d.h f19, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0x1dd3ff31ee73c7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84458291c8cac187 # load x3 with value 0x84458291c8cac187
sd x3, 0(x2) # store 0x84458291c8cac187 in memory
flh f2, 0(x2) # load 0x84458291c8cac187 from memory into f2
fcvt.d.h f18, f2 # perform operation
fcvt.d.h f18, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x7, 0x94457ad7d4d226b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9386e885e3767a5f # load x3 with value 0x9386e885e3767a5f
sd x3, 0(x2) # store 0x9386e885e3767a5f in memory
flh f3, 0(x2) # load 0x9386e885e3767a5f from memory into f3
fcvt.d.h f7, f3 # perform operation
fcvt.d.h f7, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x16, 0xd0481839a6bb1a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16f81762c00c270c # load x3 with value 0x16f81762c00c270c
sd x3, 0(x2) # store 0x16f81762c00c270c in memory
flh f4, 0(x2) # load 0x16f81762c00c270c from memory into f4
fcvt.d.h f16, f4 # perform operation
fcvt.d.h f16, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x30, 0xa27de6d841668ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf41ce152b6b96e49 # load x3 with value 0xf41ce152b6b96e49
sd x3, 0(x2) # store 0xf41ce152b6b96e49 in memory
flh f5, 0(x2) # load 0xf41ce152b6b96e49 from memory into f5
fcvt.d.h f30, f5 # perform operation
fcvt.d.h f30, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0xa6ec635971d69227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ac85470b3fa718e # load x3 with value 0x0ac85470b3fa718e
sd x3, 0(x2) # store 0x0ac85470b3fa718e in memory
flh f6, 0(x2) # load 0x0ac85470b3fa718e from memory into f6
fcvt.d.h f12, f6 # perform operation
fcvt.d.h f12, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x27, 0x51859b2a4a0451f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88103e0d633d17f7 # load x3 with value 0x88103e0d633d17f7
sd x3, 0(x2) # store 0x88103e0d633d17f7 in memory
flh f7, 0(x2) # load 0x88103e0d633d17f7 from memory into f7
fcvt.d.h f27, f7 # perform operation
fcvt.d.h f27, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x22, 0xab4b702fa1911cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x550a1aac86df029a # load x3 with value 0x550a1aac86df029a
sd x3, 0(x2) # store 0x550a1aac86df029a in memory
flh f8, 0(x2) # load 0x550a1aac86df029a from memory into f8
fcvt.d.h f22, f8 # perform operation
fcvt.d.h f22, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x24, 0xceea4c1976604855 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6131f7e38a16b39 # load x3 with value 0xd6131f7e38a16b39
sd x3, 0(x2) # store 0xd6131f7e38a16b39 in memory
flh f9, 0(x2) # load 0xd6131f7e38a16b39 from memory into f9
fcvt.d.h f24, f9 # perform operation
fcvt.d.h f24, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x18, 0xffa29870489f24e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a05eb87589312f0 # load x3 with value 0x8a05eb87589312f0
sd x3, 0(x2) # store 0x8a05eb87589312f0 in memory
flh f10, 0(x2) # load 0x8a05eb87589312f0 from memory into f10
fcvt.d.h f18, f10 # perform operation
fcvt.d.h f18, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x11, 0xa44355c5456605b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeff9d07051d38eae # load x3 with value 0xeff9d07051d38eae
sd x3, 0(x2) # store 0xeff9d07051d38eae in memory
flh f11, 0(x2) # load 0xeff9d07051d38eae from memory into f11
fcvt.d.h f11, f11 # perform operation
fcvt.d.h f11, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x24, 0x12d8a93227072c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4a3568e39f9979f # load x3 with value 0xb4a3568e39f9979f
sd x3, 0(x2) # store 0xb4a3568e39f9979f in memory
flh f12, 0(x2) # load 0xb4a3568e39f9979f from memory into f12
fcvt.d.h f24, f12 # perform operation
fcvt.d.h f24, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x5, 0xe99f59d304eddf78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x945fd1be23063332 # load x3 with value 0x945fd1be23063332
sd x3, 0(x2) # store 0x945fd1be23063332 in memory
flh f13, 0(x2) # load 0x945fd1be23063332 from memory into f13
fcvt.d.h f5, f13 # perform operation
fcvt.d.h f5, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0xd42fac20c08dbeba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1caf7617d5de2fde # load x3 with value 0x1caf7617d5de2fde
sd x3, 0(x2) # store 0x1caf7617d5de2fde in memory
flh f14, 0(x2) # load 0x1caf7617d5de2fde from memory into f14
fcvt.d.h f18, f14 # perform operation
fcvt.d.h f18, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0x78f33391f393ac58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd795b12d059463bc # load x3 with value 0xd795b12d059463bc
sd x3, 0(x2) # store 0xd795b12d059463bc in memory
flh f15, 0(x2) # load 0xd795b12d059463bc from memory into f15
fcvt.d.h f12, f15 # perform operation
fcvt.d.h f12, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x7, 0xfb4dfae71188e542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda762e411ef57510 # load x3 with value 0xda762e411ef57510
sd x3, 0(x2) # store 0xda762e411ef57510 in memory
flh f16, 0(x2) # load 0xda762e411ef57510 from memory into f16
fcvt.d.h f7, f16 # perform operation
fcvt.d.h f7, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x28, 0x0acb3041a43bc24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab1ad0b7369ba89d # load x3 with value 0xab1ad0b7369ba89d
sd x3, 0(x2) # store 0xab1ad0b7369ba89d in memory
flh f17, 0(x2) # load 0xab1ad0b7369ba89d from memory into f17
fcvt.d.h f28, f17 # perform operation
fcvt.d.h f28, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x10, 0x53584ac4ba01e849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42e425ccdf9f82b6 # load x3 with value 0x42e425ccdf9f82b6
sd x3, 0(x2) # store 0x42e425ccdf9f82b6 in memory
flh f18, 0(x2) # load 0x42e425ccdf9f82b6 from memory into f18
fcvt.d.h f10, f18 # perform operation
fcvt.d.h f10, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x14, 0x9908cc73cee787db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e2707a88e887f32 # load x3 with value 0x8e2707a88e887f32
sd x3, 0(x2) # store 0x8e2707a88e887f32 in memory
flh f19, 0(x2) # load 0x8e2707a88e887f32 from memory into f19
fcvt.d.h f14, f19 # perform operation
fcvt.d.h f14, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x5, 0x4efe4a9d5bcc7e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77bb36100a742b32 # load x3 with value 0x77bb36100a742b32
sd x3, 0(x2) # store 0x77bb36100a742b32 in memory
flh f20, 0(x2) # load 0x77bb36100a742b32 from memory into f20
fcvt.d.h f5, f20 # perform operation
fcvt.d.h f5, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x27, 0x39f4804bdafd693e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4753299cb1cdbb3a # load x3 with value 0x4753299cb1cdbb3a
sd x3, 0(x2) # store 0x4753299cb1cdbb3a in memory
flh f21, 0(x2) # load 0x4753299cb1cdbb3a from memory into f21
fcvt.d.h f27, f21 # perform operation
fcvt.d.h f27, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x22, 0xbb6f846b9b51f2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadbc9467209201df # load x3 with value 0xadbc9467209201df
sd x3, 0(x2) # store 0xadbc9467209201df in memory
flh f22, 0(x2) # load 0xadbc9467209201df from memory into f22
fcvt.d.h f22, f22 # perform operation
fcvt.d.h f22, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x6, 0x1bafdc2fb863e2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5db76a8ea20d531f # load x3 with value 0x5db76a8ea20d531f
sd x3, 0(x2) # store 0x5db76a8ea20d531f in memory
flh f23, 0(x2) # load 0x5db76a8ea20d531f from memory into f23
fcvt.d.h f6, f23 # perform operation
fcvt.d.h f6, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x23, 0x5704cbef3bc5dce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d524698cedb0063 # load x3 with value 0x7d524698cedb0063
sd x3, 0(x2) # store 0x7d524698cedb0063 in memory
flh f24, 0(x2) # load 0x7d524698cedb0063 from memory into f24
fcvt.d.h f23, f24 # perform operation
fcvt.d.h f23, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x20, 0x908538ad0a2b993f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed93df2f000499e3 # load x3 with value 0xed93df2f000499e3
sd x3, 0(x2) # store 0xed93df2f000499e3 in memory
flh f25, 0(x2) # load 0xed93df2f000499e3 from memory into f25
fcvt.d.h f20, f25 # perform operation
fcvt.d.h f20, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x4, 0x17fdfca5b8511833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf62704630a1c560 # load x3 with value 0xdf62704630a1c560
sd x3, 0(x2) # store 0xdf62704630a1c560 in memory
flh f26, 0(x2) # load 0xdf62704630a1c560 from memory into f26
fcvt.d.h f4, f26 # perform operation
fcvt.d.h f4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x8, 0x6230be5b366e0ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03853d8f48299274 # load x3 with value 0x03853d8f48299274
sd x3, 0(x2) # store 0x03853d8f48299274 in memory
flh f27, 0(x2) # load 0x03853d8f48299274 from memory into f27
fcvt.d.h f8, f27 # perform operation
fcvt.d.h f8, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x29, 0x8ef7241ca7ddd1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0738c7a9c016cad # load x3 with value 0xb0738c7a9c016cad
sd x3, 0(x2) # store 0xb0738c7a9c016cad in memory
flh f28, 0(x2) # load 0xb0738c7a9c016cad from memory into f28
fcvt.d.h f29, f28 # perform operation
fcvt.d.h f29, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x1, 0xaec7756fb66f9c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d1f995284017c35 # load x3 with value 0x9d1f995284017c35
sd x3, 0(x2) # store 0x9d1f995284017c35 in memory
flh f29, 0(x2) # load 0x9d1f995284017c35 from memory into f29
fcvt.d.h f1, f29 # perform operation
fcvt.d.h f1, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0x689c8cf41b01c487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9997efbb68c1efbb # load x3 with value 0x9997efbb68c1efbb
sd x3, 0(x2) # store 0x9997efbb68c1efbb in memory
flh f30, 0(x2) # load 0x9997efbb68c1efbb from memory into f30
fcvt.d.h f19, f30 # perform operation
fcvt.d.h f19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x23, 0x3ada4d3be71dbc7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0910d6b95359524f # load x3 with value 0x0910d6b95359524f
sd x3, 0(x2) # store 0x0910d6b95359524f in memory
flh f31, 0(x2) # load 0x0910d6b95359524f from memory into f31
fcvt.d.h f23, f31 # perform operation
fcvt.d.h f23, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
