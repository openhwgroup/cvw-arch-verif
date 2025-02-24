///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaZfh//WALLY-COV-fround.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.155525
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_gpr_hazard raw test

# Testcase cmp_gpr_hazard raw test

# Testcase cmp_gpr_hazard waw test

# Testcase cmp_gpr_hazard waw test

# Testcase cmp_gpr_hazard war test

# Testcase cmp_gpr_hazard war test

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xe83ff8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xff243d40 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xbc3f4775 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x9307ed90 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x1750b19d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xf6b5b093 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xa3c36bfc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x080aabd3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x9a1758ba # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xa16c2cff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x433aae9c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xc2fed759 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xd046e0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x2bdc0304 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xf89758b7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x6f7bb6c9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x04f189e0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x184420de # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xabf8ad99 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x4be9536e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xdc21063e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x3496bdfc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x5289be46 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xdae82e96 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x67d5a9af # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x740ad4d5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x9b6f7bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x85f19f2d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xd41b26b6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xde4fe91b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x5e079fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x5a886e9d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x032b6252 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x4de8c5a1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x5319db0b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x054d281c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x3a730814 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x6f0cf63c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x6c6df92d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xe9054c82 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x25292e5c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x53458d9f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xa6d6375b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xe82f58c8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xd61d98da # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xbe33376a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xad9cd535 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x4ca0b7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x278b7929 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x2250dbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x1b4d08dd # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xbff564c6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xc5cbb178 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x46080435 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xf049ba4b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x4cde1041 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x8c831ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x161b002b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x29f09fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xc9960753 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xd518e23f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x35159221 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xa496ecd6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x28e08e2b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x12, 0x7d2ca3c2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x21, 0x6b437d70 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x25, 0xc99aa5e6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x5, 0x0f9b5c74 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x6, 0xc41cb799 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x6, 0x2b737b68 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x12, 0x858d7df3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x15, 0x2658c0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x12, 0x496b082f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x25, 0x6955f340 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x22, 0xd00fe377 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x20, 0x6fad31fc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x29, 0x1b2a11df # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x18, 0xf1745296 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x3, 0xbd6544d1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x8, 0x3ff4c003 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x20, 0xd5710bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x28, 0x008dc442 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x16, 0xb751076d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x19, 0x673d69d2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x6, 0xaed5d78b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x17, 0xe3d0fdf8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x25, 0xcac8afe7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x4, 0x01ce50a5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x26, 0xc2cbbfd0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x4, 0xf43abaae # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_frm
li x3, 0x3ba9a66a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x330ef3a1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x2e3f840a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x0f74e592 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x63008106 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xef417151 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x4519910d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x784a5659 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x90e5ba35 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xac13857e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x6be66c88 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x8b9e786f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x61d06feb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x737227b7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xba88234e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xac8a5929 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x511eab33 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2acee83b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xae0251f2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xc554961e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xbf2ba6bf # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x3f2d65b8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xdcd79996 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x530ad1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x50524d9d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x16578397 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x44d91cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x3f1d3d9a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x269d44d4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x8369abbd # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x10dbbc01 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x75a414f2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x96b0d5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f0)
li x12, 0x5a3c83ab # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f1)
li x7, 0x10fad4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f2)
li x2, 0x85cc291e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f3)
li x5, 0x53714e74 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f4)
li x19, 0x692753e9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f5)
li x28, 0xc9e4835b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f6)
li x28, 0x106fa630 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f7)
li x11, 0x5cb5e34d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f8)
li x10, 0xb62cb790 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f9)
li x16, 0xd67d674b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f10)
li x22, 0xf14224f4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f11)
li x21, 0x5b3aa152 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f12)
li x31, 0xefe40fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f13)
li x24, 0xb1058b90 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f14)
li x24, 0xf8d5135d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f15)
li x27, 0x05904ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f16)
li x8, 0x2e407066 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f17)
li x4, 0xff2d5703 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f18)
li x21, 0x8da30793 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f19)
li x21, 0x5f029e1a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f20)
li x30, 0xb73568c7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f21)
li x10, 0xa5567f3b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f22)
li x15, 0x3b0336e8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f23)
li x9, 0xa5e1191b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f24)
li x17, 0xac09ff07 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f25)
li x13, 0xe2c53f04 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f26)
li x22, 0xe31c9687 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f27)
li x10, 0x160ceb1d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f28)
li x4, 0x15448df3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f29)
li x24, 0xa4b12a09 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f30)
li x23, 0xcf870cfd # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f31)
li x16, 0x86c8f27b # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
