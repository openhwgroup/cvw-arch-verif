///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fsqrt.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.765861
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
fsqrt.h f8, f1 # perform first operation
fsqrt.h f12, f8 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsqrt.h f6, f9 # perform first operation
fsqrt.h f14, f12 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.h f4, f2 # perform first operation
fsqrt.h f4, f22 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.h f16, f5 # perform first operation
fsqrt.h f16, f30 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.h f16, f12 # perform first operation
fsqrt.h f12, f3 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.h f4, f30 # perform first operation
fsqrt.h f15, f29 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xcdd51f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0334ec0 # load x3 with value 0xd0334ec0
sw x3, 0(x2) # store 0xd0334ec0 in memory
flh f0, 0(x2) # load 0xd0334ec0 from memory into f0
fsqrt.h f0, f0 # perform operation
fsqrt.h f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xfd989b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ac06642 # load x3 with value 0x6ac06642
sw x3, 0(x2) # store 0x6ac06642 in memory
flh f1, 0(x2) # load 0x6ac06642 from memory into f1
fsqrt.h f1, f1 # perform operation
fsqrt.h f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xf6a7a81b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf998364 # load x3 with value 0xaf998364
sw x3, 0(x2) # store 0xaf998364 in memory
flh f2, 0(x2) # load 0xaf998364 from memory into f2
fsqrt.h f2, f2 # perform operation
fsqrt.h f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xe45d928f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21e40d6d # load x3 with value 0x21e40d6d
sw x3, 0(x2) # store 0x21e40d6d in memory
flh f3, 0(x2) # load 0x21e40d6d from memory into f3
fsqrt.h f3, f3 # perform operation
fsqrt.h f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x2360b210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f0074ae # load x3 with value 0x2f0074ae
sw x3, 0(x2) # store 0x2f0074ae in memory
flh f4, 0(x2) # load 0x2f0074ae from memory into f4
fsqrt.h f4, f4 # perform operation
fsqrt.h f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x3c74c8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x061e7270 # load x3 with value 0x061e7270
sw x3, 0(x2) # store 0x061e7270 in memory
flh f5, 0(x2) # load 0x061e7270 from memory into f5
fsqrt.h f5, f5 # perform operation
fsqrt.h f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xab4dcee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe20f5ec0 # load x3 with value 0xe20f5ec0
sw x3, 0(x2) # store 0xe20f5ec0 in memory
flh f6, 0(x2) # load 0xe20f5ec0 from memory into f6
fsqrt.h f6, f6 # perform operation
fsqrt.h f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xef2de7de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8c271be # load x3 with value 0xa8c271be
sw x3, 0(x2) # store 0xa8c271be in memory
flh f7, 0(x2) # load 0xa8c271be from memory into f7
fsqrt.h f7, f7 # perform operation
fsqrt.h f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x8c3fdc83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7c9bdeb # load x3 with value 0xc7c9bdeb
sw x3, 0(x2) # store 0xc7c9bdeb in memory
flh f8, 0(x2) # load 0xc7c9bdeb from memory into f8
fsqrt.h f8, f8 # perform operation
fsqrt.h f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x3dd7faee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b59d567 # load x3 with value 0x8b59d567
sw x3, 0(x2) # store 0x8b59d567 in memory
flh f9, 0(x2) # load 0x8b59d567 from memory into f9
fsqrt.h f9, f9 # perform operation
fsqrt.h f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x93a1e157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x584b62fe # load x3 with value 0x584b62fe
sw x3, 0(x2) # store 0x584b62fe in memory
flh f10, 0(x2) # load 0x584b62fe from memory into f10
fsqrt.h f10, f10 # perform operation
fsqrt.h f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x7a3266aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x367d53be # load x3 with value 0x367d53be
sw x3, 0(x2) # store 0x367d53be in memory
flh f11, 0(x2) # load 0x367d53be from memory into f11
fsqrt.h f11, f11 # perform operation
fsqrt.h f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x55e0d3be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb590ee1a # load x3 with value 0xb590ee1a
sw x3, 0(x2) # store 0xb590ee1a in memory
flh f12, 0(x2) # load 0xb590ee1a from memory into f12
fsqrt.h f12, f12 # perform operation
fsqrt.h f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x77b87b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b808842 # load x3 with value 0x3b808842
sw x3, 0(x2) # store 0x3b808842 in memory
flh f13, 0(x2) # load 0x3b808842 from memory into f13
fsqrt.h f13, f13 # perform operation
fsqrt.h f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xd2424976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ae83793 # load x3 with value 0x3ae83793
sw x3, 0(x2) # store 0x3ae83793 in memory
flh f14, 0(x2) # load 0x3ae83793 from memory into f14
fsqrt.h f14, f14 # perform operation
fsqrt.h f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x9bf2f9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46ab42dd # load x3 with value 0x46ab42dd
sw x3, 0(x2) # store 0x46ab42dd in memory
flh f15, 0(x2) # load 0x46ab42dd from memory into f15
fsqrt.h f15, f15 # perform operation
fsqrt.h f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x1d90bb4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c356d27 # load x3 with value 0x7c356d27
sw x3, 0(x2) # store 0x7c356d27 in memory
flh f16, 0(x2) # load 0x7c356d27 from memory into f16
fsqrt.h f16, f16 # perform operation
fsqrt.h f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x6f171231 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe744d1b9 # load x3 with value 0xe744d1b9
sw x3, 0(x2) # store 0xe744d1b9 in memory
flh f17, 0(x2) # load 0xe744d1b9 from memory into f17
fsqrt.h f17, f17 # perform operation
fsqrt.h f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xe09fea58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe80cc30e # load x3 with value 0xe80cc30e
sw x3, 0(x2) # store 0xe80cc30e in memory
flh f18, 0(x2) # load 0xe80cc30e from memory into f18
fsqrt.h f18, f18 # perform operation
fsqrt.h f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xbfcd3add # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0cf5089 # load x3 with value 0xd0cf5089
sw x3, 0(x2) # store 0xd0cf5089 in memory
flh f19, 0(x2) # load 0xd0cf5089 from memory into f19
fsqrt.h f19, f19 # perform operation
fsqrt.h f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xce6bdd57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a935a91 # load x3 with value 0x6a935a91
sw x3, 0(x2) # store 0x6a935a91 in memory
flh f20, 0(x2) # load 0x6a935a91 from memory into f20
fsqrt.h f20, f20 # perform operation
fsqrt.h f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x24966c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc354d75d # load x3 with value 0xc354d75d
sw x3, 0(x2) # store 0xc354d75d in memory
flh f21, 0(x2) # load 0xc354d75d from memory into f21
fsqrt.h f21, f21 # perform operation
fsqrt.h f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xd8b1a4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e91b639 # load x3 with value 0x3e91b639
sw x3, 0(x2) # store 0x3e91b639 in memory
flh f22, 0(x2) # load 0x3e91b639 from memory into f22
fsqrt.h f22, f22 # perform operation
fsqrt.h f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x22ca1bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46b348cf # load x3 with value 0x46b348cf
sw x3, 0(x2) # store 0x46b348cf in memory
flh f23, 0(x2) # load 0x46b348cf from memory into f23
fsqrt.h f23, f23 # perform operation
fsqrt.h f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xfe4d06f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x426e12d9 # load x3 with value 0x426e12d9
sw x3, 0(x2) # store 0x426e12d9 in memory
flh f24, 0(x2) # load 0x426e12d9 from memory into f24
fsqrt.h f24, f24 # perform operation
fsqrt.h f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xdde74f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e55509e # load x3 with value 0x1e55509e
sw x3, 0(x2) # store 0x1e55509e in memory
flh f25, 0(x2) # load 0x1e55509e from memory into f25
fsqrt.h f25, f25 # perform operation
fsqrt.h f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x41da1fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81445059 # load x3 with value 0x81445059
sw x3, 0(x2) # store 0x81445059 in memory
flh f26, 0(x2) # load 0x81445059 from memory into f26
fsqrt.h f26, f26 # perform operation
fsqrt.h f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x5d31d852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c8b1861 # load x3 with value 0x4c8b1861
sw x3, 0(x2) # store 0x4c8b1861 in memory
flh f27, 0(x2) # load 0x4c8b1861 from memory into f27
fsqrt.h f27, f27 # perform operation
fsqrt.h f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xd542653e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde53e313 # load x3 with value 0xde53e313
sw x3, 0(x2) # store 0xde53e313 in memory
flh f28, 0(x2) # load 0xde53e313 from memory into f28
fsqrt.h f28, f28 # perform operation
fsqrt.h f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xeb4f319f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f61aa18 # load x3 with value 0x5f61aa18
sw x3, 0(x2) # store 0x5f61aa18 in memory
flh f29, 0(x2) # load 0x5f61aa18 from memory into f29
fsqrt.h f29, f29 # perform operation
fsqrt.h f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x7687a3e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb765def1 # load x3 with value 0xb765def1
sw x3, 0(x2) # store 0xb765def1 in memory
flh f30, 0(x2) # load 0xb765def1 from memory into f30
fsqrt.h f30, f30 # perform operation
fsqrt.h f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xf48997c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd20b1940 # load x3 with value 0xd20b1940
sw x3, 0(x2) # store 0xd20b1940 in memory
flh f31, 0(x2) # load 0xd20b1940 from memory into f31
fsqrt.h f31, f31 # perform operation
fsqrt.h f31, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x7, 0xa5e6aeea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fsqrt.h f7, f1 # perform operation
fsqrt.h f7, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x31, 0x40813cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fsqrt.h f31, f7 # perform operation
fsqrt.h f31, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x28, 0x80bbc3be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fsqrt.h f28, f13 # perform operation
fsqrt.h f28, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x24, 0xe9903f46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fsqrt.h f24, f18 # perform operation
fsqrt.h f24, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x28, 0x8a6e91de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsqrt.h f28, f9 # perform operation
fsqrt.h f28, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x30, 0x88affcc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fsqrt.h f30, f10 # perform operation
fsqrt.h f30, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x17, 0x5eb664a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fsqrt.h f17, f11 # perform operation
fsqrt.h f17, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x3, 0xd7718443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fsqrt.h f3, f10 # perform operation
fsqrt.h f3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x31, 0xe732b7d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fsqrt.h f31, f8 # perform operation
fsqrt.h f31, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x2, 0x9c2c756a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fsqrt.h f2, f28 # perform operation
fsqrt.h f2, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x29, 0xa2a3ce2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fsqrt.h f29, f18 # perform operation
fsqrt.h f29, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x10, 0x66bab33f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fsqrt.h f10, f28 # perform operation
fsqrt.h f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x17, 0x5432c904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsqrt.h f17, f14 # perform operation
fsqrt.h f17, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x7, 0x1b6cacbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fsqrt.h f7, f29 # perform operation
fsqrt.h f7, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x8, 0x2c2630cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fsqrt.h f8, f14 # perform operation
fsqrt.h f8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x11, 0x0daac78b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fsqrt.h f11, f9 # perform operation
fsqrt.h f11, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x26, 0x134db964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fsqrt.h f26, f5 # perform operation
fsqrt.h f26, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x20, 0xcaa2cc47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fsqrt.h f20, f13 # perform operation
fsqrt.h f20, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x16, 0x71554407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fsqrt.h f16, f5 # perform operation
fsqrt.h f16, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x28, 0xf7683345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fsqrt.h f28, f16 # perform operation
fsqrt.h f28, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x15, 0x960f2c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fsqrt.h f15, f17 # perform operation
fsqrt.h f15, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x9, 0x8e182d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fsqrt.h f9, f28 # perform operation
fsqrt.h f9, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x19, 0x65e9643d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fsqrt.h f19, f6 # perform operation
fsqrt.h f19, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x9, 0x473995a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsqrt.h f9, f10 # perform operation
fsqrt.h f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x9, 0x0aa383cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fsqrt.h f9, f14 # perform operation
fsqrt.h f9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x22, 0x313056d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fsqrt.h f22, f9 # perform operation
fsqrt.h f22, f9 # perform operation

# Testcase cp_frm
li x29, 0xe6454248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45f0bc77 # load x3 with value 0x45f0bc77
sw x3, 0(x2) # store 0x45f0bc77 in memory
flh f20, 0(x2) # load 0x45f0bc77 from memory into f20
fsqrt.h f29, f20 # perform operation
fsqrt.h f29, f20, dyn # perform operation
fsqrt.h f29, f20, rdn # perform operation
fsqrt.h f29, f20, rmm # perform operation
fsqrt.h f29, f20, rne # perform operation
fsqrt.h f29, f20, rtz # perform operation
fsqrt.h f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.h f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.h f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.h f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.h f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.h f29, f20 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x9bd00fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19dd3996 # load x3 with value 0x19dd3996
sw x3, 0(x2) # store 0x19dd3996 in memory
flh f25, 0(x2) # load 0x19dd3996 from memory into f25
fsqrt.h f0, f25 # perform operation
fsqrt.h f0, f25 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xcf76b99a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8187d251 # load x3 with value 0x8187d251
sw x3, 0(x2) # store 0x8187d251 in memory
flh f28, 0(x2) # load 0x8187d251 from memory into f28
fsqrt.h f1, f28 # perform operation
fsqrt.h f1, f28 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x9544a12f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84fe1848 # load x3 with value 0x84fe1848
sw x3, 0(x2) # store 0x84fe1848 in memory
flh f30, 0(x2) # load 0x84fe1848 from memory into f30
fsqrt.h f2, f30 # perform operation
fsqrt.h f2, f30 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x183f456e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd571275 # load x3 with value 0xcd571275
sw x3, 0(x2) # store 0xcd571275 in memory
flh f4, 0(x2) # load 0xcd571275 from memory into f4
fsqrt.h f3, f4 # perform operation
fsqrt.h f3, f4 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xb5019b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fa3b4c9 # load x3 with value 0x8fa3b4c9
sw x3, 0(x2) # store 0x8fa3b4c9 in memory
flh f12, 0(x2) # load 0x8fa3b4c9 from memory into f12
fsqrt.h f4, f12 # perform operation
fsqrt.h f4, f12 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xe7b2224f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabf7cfe8 # load x3 with value 0xabf7cfe8
sw x3, 0(x2) # store 0xabf7cfe8 in memory
flh f8, 0(x2) # load 0xabf7cfe8 from memory into f8
fsqrt.h f5, f8 # perform operation
fsqrt.h f5, f8 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x9fe347a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc31d30b9 # load x3 with value 0xc31d30b9
sw x3, 0(x2) # store 0xc31d30b9 in memory
flh f10, 0(x2) # load 0xc31d30b9 from memory into f10
fsqrt.h f6, f10 # perform operation
fsqrt.h f6, f10 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xc0edb054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef1a6854 # load x3 with value 0xef1a6854
sw x3, 0(x2) # store 0xef1a6854 in memory
flh f11, 0(x2) # load 0xef1a6854 from memory into f11
fsqrt.h f7, f11 # perform operation
fsqrt.h f7, f11 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x9dcb0186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83b1df21 # load x3 with value 0x83b1df21
sw x3, 0(x2) # store 0x83b1df21 in memory
flh f20, 0(x2) # load 0x83b1df21 from memory into f20
fsqrt.h f8, f20 # perform operation
fsqrt.h f8, f20 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x5d411e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc2d6649 # load x3 with value 0xdc2d6649
sw x3, 0(x2) # store 0xdc2d6649 in memory
flh f7, 0(x2) # load 0xdc2d6649 from memory into f7
fsqrt.h f9, f7 # perform operation
fsqrt.h f9, f7 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xf97fc033 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x924b1945 # load x3 with value 0x924b1945
sw x3, 0(x2) # store 0x924b1945 in memory
flh f9, 0(x2) # load 0x924b1945 from memory into f9
fsqrt.h f10, f9 # perform operation
fsqrt.h f10, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x55c41f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7c8fc0c # load x3 with value 0xe7c8fc0c
sw x3, 0(x2) # store 0xe7c8fc0c in memory
flh f8, 0(x2) # load 0xe7c8fc0c from memory into f8
fsqrt.h f11, f8 # perform operation
fsqrt.h f11, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x7133e494 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3804cda9 # load x3 with value 0x3804cda9
sw x3, 0(x2) # store 0x3804cda9 in memory
flh f26, 0(x2) # load 0x3804cda9 from memory into f26
fsqrt.h f12, f26 # perform operation
fsqrt.h f12, f26 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x1634c6de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0b21039 # load x3 with value 0xa0b21039
sw x3, 0(x2) # store 0xa0b21039 in memory
flh f6, 0(x2) # load 0xa0b21039 from memory into f6
fsqrt.h f13, f6 # perform operation
fsqrt.h f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x6a8f543c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32a81391 # load x3 with value 0x32a81391
sw x3, 0(x2) # store 0x32a81391 in memory
flh f13, 0(x2) # load 0x32a81391 from memory into f13
fsqrt.h f14, f13 # perform operation
fsqrt.h f14, f13 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4fe67171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd1cbac2 # load x3 with value 0xfd1cbac2
sw x3, 0(x2) # store 0xfd1cbac2 in memory
flh f27, 0(x2) # load 0xfd1cbac2 from memory into f27
fsqrt.h f15, f27 # perform operation
fsqrt.h f15, f27 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x70b4e15f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8ee9dd6 # load x3 with value 0xd8ee9dd6
sw x3, 0(x2) # store 0xd8ee9dd6 in memory
flh f22, 0(x2) # load 0xd8ee9dd6 from memory into f22
fsqrt.h f16, f22 # perform operation
fsqrt.h f16, f22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x3cc3d581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7e1ee03 # load x3 with value 0xc7e1ee03
sw x3, 0(x2) # store 0xc7e1ee03 in memory
flh f15, 0(x2) # load 0xc7e1ee03 from memory into f15
fsqrt.h f17, f15 # perform operation
fsqrt.h f17, f15 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xb8a023f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9981419b # load x3 with value 0x9981419b
sw x3, 0(x2) # store 0x9981419b in memory
flh f9, 0(x2) # load 0x9981419b from memory into f9
fsqrt.h f18, f9 # perform operation
fsqrt.h f18, f9 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x61ca9c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e6ba1f9 # load x3 with value 0x0e6ba1f9
sw x3, 0(x2) # store 0x0e6ba1f9 in memory
flh f26, 0(x2) # load 0x0e6ba1f9 from memory into f26
fsqrt.h f19, f26 # perform operation
fsqrt.h f19, f26 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x9c02e3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03612b70 # load x3 with value 0x03612b70
sw x3, 0(x2) # store 0x03612b70 in memory
flh f1, 0(x2) # load 0x03612b70 from memory into f1
fsqrt.h f20, f1 # perform operation
fsqrt.h f20, f1 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x6a9a0643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49b948e7 # load x3 with value 0x49b948e7
sw x3, 0(x2) # store 0x49b948e7 in memory
flh f14, 0(x2) # load 0x49b948e7 from memory into f14
fsqrt.h f21, f14 # perform operation
fsqrt.h f21, f14 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8cde49e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0290ef16 # load x3 with value 0x0290ef16
sw x3, 0(x2) # store 0x0290ef16 in memory
flh f4, 0(x2) # load 0x0290ef16 from memory into f4
fsqrt.h f22, f4 # perform operation
fsqrt.h f22, f4 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x1b96750f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c5bc7cb # load x3 with value 0x9c5bc7cb
sw x3, 0(x2) # store 0x9c5bc7cb in memory
flh f9, 0(x2) # load 0x9c5bc7cb from memory into f9
fsqrt.h f23, f9 # perform operation
fsqrt.h f23, f9 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x9ca0a09b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0bc9374 # load x3 with value 0xf0bc9374
sw x3, 0(x2) # store 0xf0bc9374 in memory
flh f24, 0(x2) # load 0xf0bc9374 from memory into f24
fsqrt.h f24, f24 # perform operation
fsqrt.h f24, f24 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x0f744d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10a1c695 # load x3 with value 0x10a1c695
sw x3, 0(x2) # store 0x10a1c695 in memory
flh f9, 0(x2) # load 0x10a1c695 from memory into f9
fsqrt.h f25, f9 # perform operation
fsqrt.h f25, f9 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x0524d906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcaad322 # load x3 with value 0xdcaad322
sw x3, 0(x2) # store 0xdcaad322 in memory
flh f29, 0(x2) # load 0xdcaad322 from memory into f29
fsqrt.h f26, f29 # perform operation
fsqrt.h f26, f29 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x87cc5b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4133f7f0 # load x3 with value 0x4133f7f0
sw x3, 0(x2) # store 0x4133f7f0 in memory
flh f6, 0(x2) # load 0x4133f7f0 from memory into f6
fsqrt.h f27, f6 # perform operation
fsqrt.h f27, f6 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x6bb4e99e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x911345db # load x3 with value 0x911345db
sw x3, 0(x2) # store 0x911345db in memory
flh f6, 0(x2) # load 0x911345db from memory into f6
fsqrt.h f28, f6 # perform operation
fsqrt.h f28, f6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x8ab96748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91e83cfc # load x3 with value 0x91e83cfc
sw x3, 0(x2) # store 0x91e83cfc in memory
flh f9, 0(x2) # load 0x91e83cfc from memory into f9
fsqrt.h f29, f9 # perform operation
fsqrt.h f29, f9 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x72ab1b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x370747ab # load x3 with value 0x370747ab
sw x3, 0(x2) # store 0x370747ab in memory
flh f11, 0(x2) # load 0x370747ab from memory into f11
fsqrt.h f30, f11 # perform operation
fsqrt.h f30, f11 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xe63bf4be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79d8b8af # load x3 with value 0x79d8b8af
sw x3, 0(x2) # store 0x79d8b8af in memory
flh f30, 0(x2) # load 0x79d8b8af from memory into f30
fsqrt.h f31, f30 # perform operation
fsqrt.h f31, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x31, 0xb270a724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40a59e32 # load x3 with value 0x40a59e32
sw x3, 0(x2) # store 0x40a59e32 in memory
flh f0, 0(x2) # load 0x40a59e32 from memory into f0
fsqrt.h f31, f0 # perform operation
fsqrt.h f31, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x4, 0xe437503e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45a93f3a # load x3 with value 0x45a93f3a
sw x3, 0(x2) # store 0x45a93f3a in memory
flh f1, 0(x2) # load 0x45a93f3a from memory into f1
fsqrt.h f4, f1 # perform operation
fsqrt.h f4, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x9, 0xe12a9d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7199645 # load x3 with value 0xb7199645
sw x3, 0(x2) # store 0xb7199645 in memory
flh f2, 0(x2) # load 0xb7199645 from memory into f2
fsqrt.h f9, f2 # perform operation
fsqrt.h f9, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x30, 0x7d4ef004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ce05d05 # load x3 with value 0x6ce05d05
sw x3, 0(x2) # store 0x6ce05d05 in memory
flh f3, 0(x2) # load 0x6ce05d05 from memory into f3
fsqrt.h f30, f3 # perform operation
fsqrt.h f30, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x20, 0x04f37730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b57b98c # load x3 with value 0x7b57b98c
sw x3, 0(x2) # store 0x7b57b98c in memory
flh f4, 0(x2) # load 0x7b57b98c from memory into f4
fsqrt.h f20, f4 # perform operation
fsqrt.h f20, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x8, 0xc3536e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x311d81e5 # load x3 with value 0x311d81e5
sw x3, 0(x2) # store 0x311d81e5 in memory
flh f5, 0(x2) # load 0x311d81e5 from memory into f5
fsqrt.h f8, f5 # perform operation
fsqrt.h f8, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x13, 0x6f1f678a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5be56139 # load x3 with value 0x5be56139
sw x3, 0(x2) # store 0x5be56139 in memory
flh f6, 0(x2) # load 0x5be56139 from memory into f6
fsqrt.h f13, f6 # perform operation
fsqrt.h f13, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x12, 0xb85316cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe929c664 # load x3 with value 0xe929c664
sw x3, 0(x2) # store 0xe929c664 in memory
flh f7, 0(x2) # load 0xe929c664 from memory into f7
fsqrt.h f12, f7 # perform operation
fsqrt.h f12, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x31, 0xb1e0cb44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e457454 # load x3 with value 0x6e457454
sw x3, 0(x2) # store 0x6e457454 in memory
flh f8, 0(x2) # load 0x6e457454 from memory into f8
fsqrt.h f31, f8 # perform operation
fsqrt.h f31, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x25, 0x5506feec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x981409ed # load x3 with value 0x981409ed
sw x3, 0(x2) # store 0x981409ed in memory
flh f9, 0(x2) # load 0x981409ed from memory into f9
fsqrt.h f25, f9 # perform operation
fsqrt.h f25, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x31, 0xfe550de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21ca878d # load x3 with value 0x21ca878d
sw x3, 0(x2) # store 0x21ca878d in memory
flh f10, 0(x2) # load 0x21ca878d from memory into f10
fsqrt.h f31, f10 # perform operation
fsqrt.h f31, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x22, 0x3774ac4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x634b3119 # load x3 with value 0x634b3119
sw x3, 0(x2) # store 0x634b3119 in memory
flh f11, 0(x2) # load 0x634b3119 from memory into f11
fsqrt.h f22, f11 # perform operation
fsqrt.h f22, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x31, 0x6bdc6d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8003c999 # load x3 with value 0x8003c999
sw x3, 0(x2) # store 0x8003c999 in memory
flh f12, 0(x2) # load 0x8003c999 from memory into f12
fsqrt.h f31, f12 # perform operation
fsqrt.h f31, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x6, 0xd5aee1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca9147e8 # load x3 with value 0xca9147e8
sw x3, 0(x2) # store 0xca9147e8 in memory
flh f13, 0(x2) # load 0xca9147e8 from memory into f13
fsqrt.h f6, f13 # perform operation
fsqrt.h f6, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x21, 0xe2eb884a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3ef232a # load x3 with value 0xb3ef232a
sw x3, 0(x2) # store 0xb3ef232a in memory
flh f14, 0(x2) # load 0xb3ef232a from memory into f14
fsqrt.h f21, f14 # perform operation
fsqrt.h f21, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x1, 0x2c916bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x745e8525 # load x3 with value 0x745e8525
sw x3, 0(x2) # store 0x745e8525 in memory
flh f15, 0(x2) # load 0x745e8525 from memory into f15
fsqrt.h f1, f15 # perform operation
fsqrt.h f1, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x19, 0x85d45add # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x653b7e48 # load x3 with value 0x653b7e48
sw x3, 0(x2) # store 0x653b7e48 in memory
flh f16, 0(x2) # load 0x653b7e48 from memory into f16
fsqrt.h f19, f16 # perform operation
fsqrt.h f19, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x13, 0xec935771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf38f1b1c # load x3 with value 0xf38f1b1c
sw x3, 0(x2) # store 0xf38f1b1c in memory
flh f17, 0(x2) # load 0xf38f1b1c from memory into f17
fsqrt.h f13, f17 # perform operation
fsqrt.h f13, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x10, 0xa5c63582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89537aac # load x3 with value 0x89537aac
sw x3, 0(x2) # store 0x89537aac in memory
flh f18, 0(x2) # load 0x89537aac from memory into f18
fsqrt.h f10, f18 # perform operation
fsqrt.h f10, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x10, 0x75a4442f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcff2fd26 # load x3 with value 0xcff2fd26
sw x3, 0(x2) # store 0xcff2fd26 in memory
flh f19, 0(x2) # load 0xcff2fd26 from memory into f19
fsqrt.h f10, f19 # perform operation
fsqrt.h f10, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x13, 0xf0954729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe120209d # load x3 with value 0xe120209d
sw x3, 0(x2) # store 0xe120209d in memory
flh f20, 0(x2) # load 0xe120209d from memory into f20
fsqrt.h f13, f20 # perform operation
fsqrt.h f13, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x29, 0xbf85eaba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf7f65a5 # load x3 with value 0xbf7f65a5
sw x3, 0(x2) # store 0xbf7f65a5 in memory
flh f21, 0(x2) # load 0xbf7f65a5 from memory into f21
fsqrt.h f29, f21 # perform operation
fsqrt.h f29, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x14, 0xec8a3d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8b57b6c # load x3 with value 0xa8b57b6c
sw x3, 0(x2) # store 0xa8b57b6c in memory
flh f22, 0(x2) # load 0xa8b57b6c from memory into f22
fsqrt.h f14, f22 # perform operation
fsqrt.h f14, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x20, 0x37c71a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x135b2a55 # load x3 with value 0x135b2a55
sw x3, 0(x2) # store 0x135b2a55 in memory
flh f23, 0(x2) # load 0x135b2a55 from memory into f23
fsqrt.h f20, f23 # perform operation
fsqrt.h f20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x24, 0x0c1a5149 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c784f38 # load x3 with value 0x0c784f38
sw x3, 0(x2) # store 0x0c784f38 in memory
flh f24, 0(x2) # load 0x0c784f38 from memory into f24
fsqrt.h f24, f24 # perform operation
fsqrt.h f24, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x1, 0x03aa845b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x254f7594 # load x3 with value 0x254f7594
sw x3, 0(x2) # store 0x254f7594 in memory
flh f25, 0(x2) # load 0x254f7594 from memory into f25
fsqrt.h f1, f25 # perform operation
fsqrt.h f1, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x16, 0x9c7fa8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadb8d3f8 # load x3 with value 0xadb8d3f8
sw x3, 0(x2) # store 0xadb8d3f8 in memory
flh f26, 0(x2) # load 0xadb8d3f8 from memory into f26
fsqrt.h f16, f26 # perform operation
fsqrt.h f16, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x27, 0x09d96a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2421de5d # load x3 with value 0x2421de5d
sw x3, 0(x2) # store 0x2421de5d in memory
flh f27, 0(x2) # load 0x2421de5d from memory into f27
fsqrt.h f27, f27 # perform operation
fsqrt.h f27, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x20, 0xedf6504f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa817cd21 # load x3 with value 0xa817cd21
sw x3, 0(x2) # store 0xa817cd21 in memory
flh f28, 0(x2) # load 0xa817cd21 from memory into f28
fsqrt.h f20, f28 # perform operation
fsqrt.h f20, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x14, 0xa5c48cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe950444e # load x3 with value 0xe950444e
sw x3, 0(x2) # store 0xe950444e in memory
flh f29, 0(x2) # load 0xe950444e from memory into f29
fsqrt.h f14, f29 # perform operation
fsqrt.h f14, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x11, 0x9b350a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb21958f1 # load x3 with value 0xb21958f1
sw x3, 0(x2) # store 0xb21958f1 in memory
flh f30, 0(x2) # load 0xb21958f1 from memory into f30
fsqrt.h f11, f30 # perform operation
fsqrt.h f11, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x15, 0xd3f0a050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb77418e # load x3 with value 0xeb77418e
sw x3, 0(x2) # store 0xeb77418e in memory
flh f31, 0(x2) # load 0xeb77418e from memory into f31
fsqrt.h f15, f31 # perform operation
fsqrt.h f15, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
