///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fsgnj.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.757740
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
li x26, 0xf1f4683a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x40c3f61d # load x3 with value 0x40c3f61d
sw x3, 0(x2) # store 0x40c3f61d in memory
flh f14, 0(x2) # load 0x40c3f61d from memory into f14
fsgnj.h f26, f20, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x29, 0xf438c266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x58935a0e # load x3 with value 0x58935a0e
sw x3, 0(x2) # store 0x58935a0e in memory
flh f4, 0(x2) # load 0x58935a0e from memory into f4
fsgnj.h f29, f6, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x9, 0x8552900b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x2cffc488 # load x3 with value 0x2cffc488
sw x3, 0(x2) # store 0x2cffc488 in memory
flh f26, 0(x2) # load 0x2cffc488 from memory into f26
fsgnj.h f9, f14, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x7, 0xf1b24480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x5ed19ba6 # load x3 with value 0x5ed19ba6
sw x3, 0(x2) # store 0x5ed19ba6 in memory
flh f10, 0(x2) # load 0x5ed19ba6 from memory into f10
fsgnj.h f7, f14, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x31, 0x17c3e4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x2baf3f0d # load x3 with value 0x2baf3f0d
sw x3, 0(x2) # store 0x2baf3f0d in memory
flh f11, 0(x2) # load 0x2baf3f0d from memory into f11
fsgnj.h f31, f1, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x8, 0xe15cb279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x993606fe # load x3 with value 0x993606fe
sw x3, 0(x2) # store 0x993606fe in memory
flh f25, 0(x2) # load 0x993606fe from memory into f25
fsgnj.h f8, f6, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x24, 0xb52b1660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x8da57538 # load x3 with value 0x8da57538
sw x3, 0(x2) # store 0x8da57538 in memory
flh f21, 0(x2) # load 0x8da57538 from memory into f21
fsgnj.h f24, f9, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x3, 0x5273d97a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x63947f5a # load x3 with value 0x63947f5a
sw x3, 0(x2) # store 0x63947f5a in memory
flh f30, 0(x2) # load 0x63947f5a from memory into f30
fsgnj.h f3, f7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x28, 0xed5e4679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x9fe12179 # load x3 with value 0x9fe12179
sw x3, 0(x2) # store 0x9fe12179 in memory
flh f23, 0(x2) # load 0x9fe12179 from memory into f23
fsgnj.h f28, f27, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x26, 0x1e38d231 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x7f9b1d48 # load x3 with value 0x7f9b1d48
sw x3, 0(x2) # store 0x7f9b1d48 in memory
flh f10, 0(x2) # load 0x7f9b1d48 from memory into f10
fsgnj.h f26, f28, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x4, 0x66fcde32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x97942190 # load x3 with value 0x97942190
sw x3, 0(x2) # store 0x97942190 in memory
flh f28, 0(x2) # load 0x97942190 from memory into f28
fsgnj.h f4, f17, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x30, 0x9618e266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x04d81df0 # load x3 with value 0x04d81df0
sw x3, 0(x2) # store 0x04d81df0 in memory
flh f18, 0(x2) # load 0x04d81df0 from memory into f18
fsgnj.h f30, f27, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x12, 0xb8057cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
li x3, 0xb201a267 # load x3 with value 0xb201a267
sw x3, 0(x2) # store 0xb201a267 in memory
flh f7, 0(x2) # load 0xb201a267 from memory into f7
fsgnj.h f12, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x26, 0x48f2b960 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x18043054 # load x3 with value 0x18043054
sw x3, 0(x2) # store 0x18043054 in memory
flh f20, 0(x2) # load 0x18043054 from memory into f20
fsgnj.h f26, f27, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x22, 0x70681803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0xf7552f5f # load x3 with value 0xf7552f5f
sw x3, 0(x2) # store 0xf7552f5f in memory
flh f20, 0(x2) # load 0xf7552f5f from memory into f20
fsgnj.h f22, f3, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x8, 0x90f76c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x537d6076 # load x3 with value 0x537d6076
sw x3, 0(x2) # store 0x537d6076 in memory
flh f4, 0(x2) # load 0x537d6076 from memory into f4
fsgnj.h f8, f28, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0x53b5a853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0xf325daf1 # load x3 with value 0xf325daf1
sw x3, 0(x2) # store 0xf325daf1 in memory
flh f16, 0(x2) # load 0xf325daf1 from memory into f16
fsgnj.h f1, f27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x19, 0xc5df1bd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x49bd80a9 # load x3 with value 0x49bd80a9
sw x3, 0(x2) # store 0x49bd80a9 in memory
flh f28, 0(x2) # load 0x49bd80a9 from memory into f28
fsgnj.h f19, f27, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x27, 0x38a7372e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x871f16b1 # load x3 with value 0x871f16b1
sw x3, 0(x2) # store 0x871f16b1 in memory
flh f12, 0(x2) # load 0x871f16b1 from memory into f12
fsgnj.h f27, f8, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x15, 0x8de51bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x2b95c349 # load x3 with value 0x2b95c349
sw x3, 0(x2) # store 0x2b95c349 in memory
flh f4, 0(x2) # load 0x2b95c349 from memory into f4
fsgnj.h f15, f22, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x19, 0x4b4c5637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0xe23cd027 # load x3 with value 0xe23cd027
sw x3, 0(x2) # store 0xe23cd027 in memory
flh f3, 0(x2) # load 0xe23cd027 from memory into f3
fsgnj.h f19, f27, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x28, 0x72caa901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x94f2ad82 # load x3 with value 0x94f2ad82
sw x3, 0(x2) # store 0x94f2ad82 in memory
flh f26, 0(x2) # load 0x94f2ad82 from memory into f26
fsgnj.h f28, f3, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x15, 0x50373bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x5446198b # load x3 with value 0x5446198b
sw x3, 0(x2) # store 0x5446198b in memory
flh f25, 0(x2) # load 0x5446198b from memory into f25
fsgnj.h f15, f22, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x10, 0x2e92d170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x89aad372 # load x3 with value 0x89aad372
sw x3, 0(x2) # store 0x89aad372 in memory
flh f5, 0(x2) # load 0x89aad372 from memory into f5
fsgnj.h f10, f9, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x16, 0x67362390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x20d55157 # load x3 with value 0x20d55157
sw x3, 0(x2) # store 0x20d55157 in memory
flh f15, 0(x2) # load 0x20d55157 from memory into f15
fsgnj.h f16, f24, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x3, 0x719b0ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0xd1ea7634 # load x3 with value 0xd1ea7634
sw x3, 0(x2) # store 0xd1ea7634 in memory
flh f18, 0(x2) # load 0xd1ea7634 from memory into f18
fsgnj.h f3, f16, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x28, 0x4e0fa12a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcf5713a # load x3 with value 0xdcf5713a
sw x3, 0(x2) # store 0xdcf5713a in memory
flh f13, 0(x2) # load 0xdcf5713a from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fsgnj.h f28, f13, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x6, 0x730e6bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68d9bebb # load x3 with value 0x68d9bebb
sw x3, 0(x2) # store 0x68d9bebb in memory
flh f18, 0(x2) # load 0x68d9bebb from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fsgnj.h f6, f18, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x25, 0x25a583ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80c34926 # load x3 with value 0x80c34926
sw x3, 0(x2) # store 0x80c34926 in memory
flh f27, 0(x2) # load 0x80c34926 from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fsgnj.h f25, f27, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x22, 0xbf69c7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec9c2e4a # load x3 with value 0xec9c2e4a
sw x3, 0(x2) # store 0xec9c2e4a in memory
flh f9, 0(x2) # load 0xec9c2e4a from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fsgnj.h f22, f9, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x2, 0xbc851cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac9c9874 # load x3 with value 0xac9c9874
sw x3, 0(x2) # store 0xac9c9874 in memory
flh f26, 0(x2) # load 0xac9c9874 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fsgnj.h f2, f26, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x24, 0x3d10e837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x638a1a64 # load x3 with value 0x638a1a64
sw x3, 0(x2) # store 0x638a1a64 in memory
flh f23, 0(x2) # load 0x638a1a64 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fsgnj.h f24, f23, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x16, 0x71b9fe65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34cc2819 # load x3 with value 0x34cc2819
sw x3, 0(x2) # store 0x34cc2819 in memory
flh f14, 0(x2) # load 0x34cc2819 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsgnj.h f16, f14, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x29, 0xd111134d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc62e78c7 # load x3 with value 0xc62e78c7
sw x3, 0(x2) # store 0xc62e78c7 in memory
flh f21, 0(x2) # load 0xc62e78c7 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fsgnj.h f29, f21, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x16, 0x18a4ed1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2201fa2a # load x3 with value 0x2201fa2a
sw x3, 0(x2) # store 0x2201fa2a in memory
flh f23, 0(x2) # load 0x2201fa2a from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fsgnj.h f16, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x29, 0x77e53271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14c9f083 # load x3 with value 0x14c9f083
sw x3, 0(x2) # store 0x14c9f083 in memory
flh f5, 0(x2) # load 0x14c9f083 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fsgnj.h f29, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x27, 0xdbcdf136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70da19c5 # load x3 with value 0x70da19c5
sw x3, 0(x2) # store 0x70da19c5 in memory
flh f23, 0(x2) # load 0x70da19c5 from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fsgnj.h f27, f23, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x5, 0x1a7267a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac9123b8 # load x3 with value 0xac9123b8
sw x3, 0(x2) # store 0xac9123b8 in memory
flh f4, 0(x2) # load 0xac9123b8 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fsgnj.h f5, f4, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x6, 0xf3831330 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0473bb6 # load x3 with value 0xa0473bb6
sw x3, 0(x2) # store 0xa0473bb6 in memory
flh f2, 0(x2) # load 0xa0473bb6 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsgnj.h f6, f2, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x5, 0x55aa1dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb70dfd76 # load x3 with value 0xb70dfd76
sw x3, 0(x2) # store 0xb70dfd76 in memory
flh f4, 0(x2) # load 0xb70dfd76 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fsgnj.h f5, f4, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x10, 0x28c9d885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71ce8af3 # load x3 with value 0x71ce8af3
sw x3, 0(x2) # store 0x71ce8af3 in memory
flh f3, 0(x2) # load 0x71ce8af3 from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fsgnj.h f10, f3, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x23, 0xb26439a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2167467f # load x3 with value 0x2167467f
sw x3, 0(x2) # store 0x2167467f in memory
flh f21, 0(x2) # load 0x2167467f from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fsgnj.h f23, f21, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x6, 0xead01bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3d0565c # load x3 with value 0xb3d0565c
sw x3, 0(x2) # store 0xb3d0565c in memory
flh f11, 0(x2) # load 0xb3d0565c from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fsgnj.h f6, f11, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x20, 0x2fac9fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffe5d370 # load x3 with value 0xffe5d370
sw x3, 0(x2) # store 0xffe5d370 in memory
flh f14, 0(x2) # load 0xffe5d370 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fsgnj.h f20, f14, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x22, 0xab017534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x137d7a9a # load x3 with value 0x137d7a9a
sw x3, 0(x2) # store 0x137d7a9a in memory
flh f27, 0(x2) # load 0x137d7a9a from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fsgnj.h f22, f27, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x10, 0xd54864fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3e2e82f # load x3 with value 0xd3e2e82f
sw x3, 0(x2) # store 0xd3e2e82f in memory
flh f24, 0(x2) # load 0xd3e2e82f from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsgnj.h f10, f24, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x6, 0x94dfd5bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd87a8126 # load x3 with value 0xd87a8126
sw x3, 0(x2) # store 0xd87a8126 in memory
flh f26, 0(x2) # load 0xd87a8126 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fsgnj.h f6, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x12, 0x8fda341b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b0660e8 # load x3 with value 0x9b0660e8
sw x3, 0(x2) # store 0x9b0660e8 in memory
flh f3, 0(x2) # load 0x9b0660e8 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fsgnj.h f12, f3, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x18, 0x220b45ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44293b0b # load x3 with value 0x44293b0b
sw x3, 0(x2) # store 0x44293b0b in memory
flh f26, 0(x2) # load 0x44293b0b from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsgnj.h f18, f26, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x15, 0xcb154938 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2582f969 # load x3 with value 0x2582f969
sw x3, 0(x2) # store 0x2582f969 in memory
flh f5, 0(x2) # load 0x2582f969 from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fsgnj.h f15, f5, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x3, 0xa786bbb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x824f5392 # load x3 with value 0x824f5392
sw x3, 0(x2) # store 0x824f5392 in memory
flh f29, 0(x2) # load 0x824f5392 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fsgnj.h f3, f29, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x8, 0xfbdfdd45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcce315ad # load x3 with value 0xcce315ad
sw x3, 0(x2) # store 0xcce315ad in memory
flh f17, 0(x2) # load 0xcce315ad from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fsgnj.h f8, f17, f5 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xe6a984f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf780e919 # load x3 with value 0xf780e919
sw x3, 0(x2) # store 0xf780e919 in memory
flh f14, 0(x2) # load 0xf780e919 from memory into f14
li x3, 0xc0336576 # load x3 with value 0xc0336576
sw x3, 0(x2) # store 0xc0336576 in memory
flh f29, 0(x2) # load 0xc0336576 from memory into f29
fsgnj.h f0, f14, f29 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xfab47506 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc40e0deb # load x3 with value 0xc40e0deb
sw x3, 0(x2) # store 0xc40e0deb in memory
flh f22, 0(x2) # load 0xc40e0deb from memory into f22
li x3, 0x1f82d57d # load x3 with value 0x1f82d57d
sw x3, 0(x2) # store 0x1f82d57d in memory
flh f30, 0(x2) # load 0x1f82d57d from memory into f30
fsgnj.h f1, f22, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x285024c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10353e46 # load x3 with value 0x10353e46
sw x3, 0(x2) # store 0x10353e46 in memory
flh f2, 0(x2) # load 0x10353e46 from memory into f2
li x3, 0x7a00a86e # load x3 with value 0x7a00a86e
sw x3, 0(x2) # store 0x7a00a86e in memory
flh f25, 0(x2) # load 0x7a00a86e from memory into f25
fsgnj.h f2, f2, f25 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xd1374b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde6008e0 # load x3 with value 0xde6008e0
sw x3, 0(x2) # store 0xde6008e0 in memory
flh f29, 0(x2) # load 0xde6008e0 from memory into f29
li x3, 0x10bbc5df # load x3 with value 0x10bbc5df
sw x3, 0(x2) # store 0x10bbc5df in memory
flh f3, 0(x2) # load 0x10bbc5df from memory into f3
fsgnj.h f3, f29, f3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x2d62649f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4dbb2db # load x3 with value 0xc4dbb2db
sw x3, 0(x2) # store 0xc4dbb2db in memory
flh f9, 0(x2) # load 0xc4dbb2db from memory into f9
li x3, 0x3ffacabd # load x3 with value 0x3ffacabd
sw x3, 0(x2) # store 0x3ffacabd in memory
flh f3, 0(x2) # load 0x3ffacabd from memory into f3
fsgnj.h f4, f9, f3 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x8ce47ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fe6a732 # load x3 with value 0x7fe6a732
sw x3, 0(x2) # store 0x7fe6a732 in memory
flh f5, 0(x2) # load 0x7fe6a732 from memory into f5
li x3, 0x0b53bff7 # load x3 with value 0x0b53bff7
sw x3, 0(x2) # store 0x0b53bff7 in memory
flh f22, 0(x2) # load 0x0b53bff7 from memory into f22
fsgnj.h f5, f5, f22 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x7e767ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x845a13d3 # load x3 with value 0x845a13d3
sw x3, 0(x2) # store 0x845a13d3 in memory
flh f15, 0(x2) # load 0x845a13d3 from memory into f15
li x3, 0xce558ba8 # load x3 with value 0xce558ba8
sw x3, 0(x2) # store 0xce558ba8 in memory
flh f2, 0(x2) # load 0xce558ba8 from memory into f2
fsgnj.h f6, f15, f2 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x59eed50a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc41f16ed # load x3 with value 0xc41f16ed
sw x3, 0(x2) # store 0xc41f16ed in memory
flh f24, 0(x2) # load 0xc41f16ed from memory into f24
li x3, 0xbc11b86a # load x3 with value 0xbc11b86a
sw x3, 0(x2) # store 0xbc11b86a in memory
flh f12, 0(x2) # load 0xbc11b86a from memory into f12
fsgnj.h f7, f24, f12 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xa5e5f8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd6a3f72 # load x3 with value 0xcd6a3f72
sw x3, 0(x2) # store 0xcd6a3f72 in memory
flh f17, 0(x2) # load 0xcd6a3f72 from memory into f17
li x3, 0xdbe2aebe # load x3 with value 0xdbe2aebe
sw x3, 0(x2) # store 0xdbe2aebe in memory
flh f5, 0(x2) # load 0xdbe2aebe from memory into f5
fsgnj.h f8, f17, f5 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x9587d9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d7eb6d6 # load x3 with value 0x3d7eb6d6
sw x3, 0(x2) # store 0x3d7eb6d6 in memory
flh f30, 0(x2) # load 0x3d7eb6d6 from memory into f30
li x3, 0xe470d878 # load x3 with value 0xe470d878
sw x3, 0(x2) # store 0xe470d878 in memory
flh f16, 0(x2) # load 0xe470d878 from memory into f16
fsgnj.h f9, f30, f16 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x6dc121cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59dc11b8 # load x3 with value 0x59dc11b8
sw x3, 0(x2) # store 0x59dc11b8 in memory
flh f31, 0(x2) # load 0x59dc11b8 from memory into f31
li x3, 0x21d8b736 # load x3 with value 0x21d8b736
sw x3, 0(x2) # store 0x21d8b736 in memory
flh f8, 0(x2) # load 0x21d8b736 from memory into f8
fsgnj.h f10, f31, f8 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x8e1d8abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8ffc410 # load x3 with value 0xc8ffc410
sw x3, 0(x2) # store 0xc8ffc410 in memory
flh f9, 0(x2) # load 0xc8ffc410 from memory into f9
li x3, 0xf563d333 # load x3 with value 0xf563d333
sw x3, 0(x2) # store 0xf563d333 in memory
flh f13, 0(x2) # load 0xf563d333 from memory into f13
fsgnj.h f11, f9, f13 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x2d2d3a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96311dbc # load x3 with value 0x96311dbc
sw x3, 0(x2) # store 0x96311dbc in memory
flh f29, 0(x2) # load 0x96311dbc from memory into f29
li x3, 0x5dc22a82 # load x3 with value 0x5dc22a82
sw x3, 0(x2) # store 0x5dc22a82 in memory
flh f12, 0(x2) # load 0x5dc22a82 from memory into f12
fsgnj.h f12, f29, f12 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x275b57f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d83f37c # load x3 with value 0x5d83f37c
sw x3, 0(x2) # store 0x5d83f37c in memory
flh f10, 0(x2) # load 0x5d83f37c from memory into f10
li x3, 0xc0114873 # load x3 with value 0xc0114873
sw x3, 0(x2) # store 0xc0114873 in memory
flh f20, 0(x2) # load 0xc0114873 from memory into f20
fsgnj.h f13, f10, f20 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xf438a065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47465f1e # load x3 with value 0x47465f1e
sw x3, 0(x2) # store 0x47465f1e in memory
flh f23, 0(x2) # load 0x47465f1e from memory into f23
li x3, 0x1fc26c65 # load x3 with value 0x1fc26c65
sw x3, 0(x2) # store 0x1fc26c65 in memory
flh f7, 0(x2) # load 0x1fc26c65 from memory into f7
fsgnj.h f14, f23, f7 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xfe93da32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e959bb3 # load x3 with value 0x3e959bb3
sw x3, 0(x2) # store 0x3e959bb3 in memory
flh f4, 0(x2) # load 0x3e959bb3 from memory into f4
li x3, 0x76413fed # load x3 with value 0x76413fed
sw x3, 0(x2) # store 0x76413fed in memory
flh f11, 0(x2) # load 0x76413fed from memory into f11
fsgnj.h f15, f4, f11 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x16f3add7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5349e9f # load x3 with value 0xd5349e9f
sw x3, 0(x2) # store 0xd5349e9f in memory
flh f8, 0(x2) # load 0xd5349e9f from memory into f8
li x3, 0xdd1626ce # load x3 with value 0xdd1626ce
sw x3, 0(x2) # store 0xdd1626ce in memory
flh f7, 0(x2) # load 0xdd1626ce from memory into f7
fsgnj.h f16, f8, f7 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x7336e9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a17e2e2 # load x3 with value 0x2a17e2e2
sw x3, 0(x2) # store 0x2a17e2e2 in memory
flh f28, 0(x2) # load 0x2a17e2e2 from memory into f28
li x3, 0xb8e53af9 # load x3 with value 0xb8e53af9
sw x3, 0(x2) # store 0xb8e53af9 in memory
flh f18, 0(x2) # load 0xb8e53af9 from memory into f18
fsgnj.h f17, f28, f18 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xfb695664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3329275b # load x3 with value 0x3329275b
sw x3, 0(x2) # store 0x3329275b in memory
flh f20, 0(x2) # load 0x3329275b from memory into f20
li x3, 0xcabfa76f # load x3 with value 0xcabfa76f
sw x3, 0(x2) # store 0xcabfa76f in memory
flh f22, 0(x2) # load 0xcabfa76f from memory into f22
fsgnj.h f18, f20, f22 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x416ace63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9185878 # load x3 with value 0xc9185878
sw x3, 0(x2) # store 0xc9185878 in memory
flh f27, 0(x2) # load 0xc9185878 from memory into f27
li x3, 0x80ff1b79 # load x3 with value 0x80ff1b79
sw x3, 0(x2) # store 0x80ff1b79 in memory
flh f18, 0(x2) # load 0x80ff1b79 from memory into f18
fsgnj.h f19, f27, f18 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x38d1bb4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe00bb480 # load x3 with value 0xe00bb480
sw x3, 0(x2) # store 0xe00bb480 in memory
flh f29, 0(x2) # load 0xe00bb480 from memory into f29
li x3, 0x69694ecf # load x3 with value 0x69694ecf
sw x3, 0(x2) # store 0x69694ecf in memory
flh f18, 0(x2) # load 0x69694ecf from memory into f18
fsgnj.h f20, f29, f18 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x8b15a2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57216da5 # load x3 with value 0x57216da5
sw x3, 0(x2) # store 0x57216da5 in memory
flh f28, 0(x2) # load 0x57216da5 from memory into f28
li x3, 0xdea60e1f # load x3 with value 0xdea60e1f
sw x3, 0(x2) # store 0xdea60e1f in memory
flh f15, 0(x2) # load 0xdea60e1f from memory into f15
fsgnj.h f21, f28, f15 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x971be293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc740048 # load x3 with value 0xcc740048
sw x3, 0(x2) # store 0xcc740048 in memory
flh f20, 0(x2) # load 0xcc740048 from memory into f20
li x3, 0xe4f9f439 # load x3 with value 0xe4f9f439
sw x3, 0(x2) # store 0xe4f9f439 in memory
flh f28, 0(x2) # load 0xe4f9f439 from memory into f28
fsgnj.h f22, f20, f28 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x6ae09821 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4843c82c # load x3 with value 0x4843c82c
sw x3, 0(x2) # store 0x4843c82c in memory
flh f15, 0(x2) # load 0x4843c82c from memory into f15
li x3, 0x08b873de # load x3 with value 0x08b873de
sw x3, 0(x2) # store 0x08b873de in memory
flh f25, 0(x2) # load 0x08b873de from memory into f25
fsgnj.h f23, f15, f25 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x11562586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b96e459 # load x3 with value 0x8b96e459
sw x3, 0(x2) # store 0x8b96e459 in memory
flh f11, 0(x2) # load 0x8b96e459 from memory into f11
li x3, 0xf4f22fb7 # load x3 with value 0xf4f22fb7
sw x3, 0(x2) # store 0xf4f22fb7 in memory
flh f19, 0(x2) # load 0xf4f22fb7 from memory into f19
fsgnj.h f24, f11, f19 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x74f811b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71750199 # load x3 with value 0x71750199
sw x3, 0(x2) # store 0x71750199 in memory
flh f25, 0(x2) # load 0x71750199 from memory into f25
li x3, 0xdded8fef # load x3 with value 0xdded8fef
sw x3, 0(x2) # store 0xdded8fef in memory
flh f14, 0(x2) # load 0xdded8fef from memory into f14
fsgnj.h f25, f25, f14 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xd1ff5ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fb866dd # load x3 with value 0x7fb866dd
sw x3, 0(x2) # store 0x7fb866dd in memory
flh f20, 0(x2) # load 0x7fb866dd from memory into f20
li x3, 0x24cd19d8 # load x3 with value 0x24cd19d8
sw x3, 0(x2) # store 0x24cd19d8 in memory
flh f10, 0(x2) # load 0x24cd19d8 from memory into f10
fsgnj.h f26, f20, f10 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x9f61e97c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ead9932 # load x3 with value 0x2ead9932
sw x3, 0(x2) # store 0x2ead9932 in memory
flh f20, 0(x2) # load 0x2ead9932 from memory into f20
li x3, 0x478d94f3 # load x3 with value 0x478d94f3
sw x3, 0(x2) # store 0x478d94f3 in memory
flh f11, 0(x2) # load 0x478d94f3 from memory into f11
fsgnj.h f27, f20, f11 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xc650f64f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd55696d3 # load x3 with value 0xd55696d3
sw x3, 0(x2) # store 0xd55696d3 in memory
flh f31, 0(x2) # load 0xd55696d3 from memory into f31
li x3, 0x8f39ce2d # load x3 with value 0x8f39ce2d
sw x3, 0(x2) # store 0x8f39ce2d in memory
flh f15, 0(x2) # load 0x8f39ce2d from memory into f15
fsgnj.h f28, f31, f15 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xed415cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bc6566a # load x3 with value 0x1bc6566a
sw x3, 0(x2) # store 0x1bc6566a in memory
flh f23, 0(x2) # load 0x1bc6566a from memory into f23
li x3, 0x4e98e888 # load x3 with value 0x4e98e888
sw x3, 0(x2) # store 0x4e98e888 in memory
flh f2, 0(x2) # load 0x4e98e888 from memory into f2
fsgnj.h f29, f23, f2 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x7cc3621f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e35910e # load x3 with value 0x8e35910e
sw x3, 0(x2) # store 0x8e35910e in memory
flh f18, 0(x2) # load 0x8e35910e from memory into f18
li x3, 0x988d59f0 # load x3 with value 0x988d59f0
sw x3, 0(x2) # store 0x988d59f0 in memory
flh f10, 0(x2) # load 0x988d59f0 from memory into f10
fsgnj.h f30, f18, f10 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x4a05476a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ab0465f # load x3 with value 0x1ab0465f
sw x3, 0(x2) # store 0x1ab0465f in memory
flh f12, 0(x2) # load 0x1ab0465f from memory into f12
li x3, 0x7c33ebfc # load x3 with value 0x7c33ebfc
sw x3, 0(x2) # store 0x7c33ebfc in memory
flh f25, 0(x2) # load 0x7c33ebfc from memory into f25
fsgnj.h f31, f12, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x9, 0x2fdac756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf71a9382 # load x3 with value 0xf71a9382
sw x3, 0(x2) # store 0xf71a9382 in memory
flh f0, 0(x2) # load 0xf71a9382 from memory into f0
li x3, 0xee650695 # load x3 with value 0xee650695
sw x3, 0(x2) # store 0xee650695 in memory
flh f17, 0(x2) # load 0xee650695 from memory into f17
fsgnj.h f9, f0, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x21, 0x8379fc0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a365501 # load x3 with value 0x6a365501
sw x3, 0(x2) # store 0x6a365501 in memory
flh f1, 0(x2) # load 0x6a365501 from memory into f1
li x3, 0xfba25653 # load x3 with value 0xfba25653
sw x3, 0(x2) # store 0xfba25653 in memory
flh f18, 0(x2) # load 0xfba25653 from memory into f18
fsgnj.h f21, f1, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x9, 0x02714914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60212f48 # load x3 with value 0x60212f48
sw x3, 0(x2) # store 0x60212f48 in memory
flh f2, 0(x2) # load 0x60212f48 from memory into f2
li x3, 0xe7c26dbf # load x3 with value 0xe7c26dbf
sw x3, 0(x2) # store 0xe7c26dbf in memory
flh f24, 0(x2) # load 0xe7c26dbf from memory into f24
fsgnj.h f9, f2, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x15, 0x7e96cb2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48eb6283 # load x3 with value 0x48eb6283
sw x3, 0(x2) # store 0x48eb6283 in memory
flh f3, 0(x2) # load 0x48eb6283 from memory into f3
li x3, 0x5c04a823 # load x3 with value 0x5c04a823
sw x3, 0(x2) # store 0x5c04a823 in memory
flh f10, 0(x2) # load 0x5c04a823 from memory into f10
fsgnj.h f15, f3, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x8, 0xc9f1186d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a74393d # load x3 with value 0x5a74393d
sw x3, 0(x2) # store 0x5a74393d in memory
flh f4, 0(x2) # load 0x5a74393d from memory into f4
li x3, 0x6cb61645 # load x3 with value 0x6cb61645
sw x3, 0(x2) # store 0x6cb61645 in memory
flh f12, 0(x2) # load 0x6cb61645 from memory into f12
fsgnj.h f8, f4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0xdd8593be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20ea45ad # load x3 with value 0x20ea45ad
sw x3, 0(x2) # store 0x20ea45ad in memory
flh f5, 0(x2) # load 0x20ea45ad from memory into f5
li x3, 0xe5e8ea13 # load x3 with value 0xe5e8ea13
sw x3, 0(x2) # store 0xe5e8ea13 in memory
flh f21, 0(x2) # load 0xe5e8ea13 from memory into f21
fsgnj.h f5, f5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x18, 0xa8d0551d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7e25a1a # load x3 with value 0xe7e25a1a
sw x3, 0(x2) # store 0xe7e25a1a in memory
flh f6, 0(x2) # load 0xe7e25a1a from memory into f6
li x3, 0xb7533bb6 # load x3 with value 0xb7533bb6
sw x3, 0(x2) # store 0xb7533bb6 in memory
flh f3, 0(x2) # load 0xb7533bb6 from memory into f3
fsgnj.h f18, f6, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x17, 0xdd34bb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce990e85 # load x3 with value 0xce990e85
sw x3, 0(x2) # store 0xce990e85 in memory
flh f7, 0(x2) # load 0xce990e85 from memory into f7
li x3, 0xf241ffdf # load x3 with value 0xf241ffdf
sw x3, 0(x2) # store 0xf241ffdf in memory
flh f12, 0(x2) # load 0xf241ffdf from memory into f12
fsgnj.h f17, f7, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x9, 0xefdd33e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3927f148 # load x3 with value 0x3927f148
sw x3, 0(x2) # store 0x3927f148 in memory
flh f8, 0(x2) # load 0x3927f148 from memory into f8
li x3, 0x776a1ec3 # load x3 with value 0x776a1ec3
sw x3, 0(x2) # store 0x776a1ec3 in memory
flh f7, 0(x2) # load 0x776a1ec3 from memory into f7
fsgnj.h f9, f8, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x22, 0xac1df24b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb3599f1 # load x3 with value 0xdb3599f1
sw x3, 0(x2) # store 0xdb3599f1 in memory
flh f9, 0(x2) # load 0xdb3599f1 from memory into f9
li x3, 0xfad28722 # load x3 with value 0xfad28722
sw x3, 0(x2) # store 0xfad28722 in memory
flh f6, 0(x2) # load 0xfad28722 from memory into f6
fsgnj.h f22, f9, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x24, 0xd8d098ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02966e8d # load x3 with value 0x02966e8d
sw x3, 0(x2) # store 0x02966e8d in memory
flh f10, 0(x2) # load 0x02966e8d from memory into f10
li x3, 0x091f1f17 # load x3 with value 0x091f1f17
sw x3, 0(x2) # store 0x091f1f17 in memory
flh f11, 0(x2) # load 0x091f1f17 from memory into f11
fsgnj.h f24, f10, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x20, 0x5e6d98f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9de650f # load x3 with value 0xf9de650f
sw x3, 0(x2) # store 0xf9de650f in memory
flh f11, 0(x2) # load 0xf9de650f from memory into f11
li x3, 0xa541e6ec # load x3 with value 0xa541e6ec
sw x3, 0(x2) # store 0xa541e6ec in memory
flh f27, 0(x2) # load 0xa541e6ec from memory into f27
fsgnj.h f20, f11, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x30, 0xc8ba0922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13e2e8c0 # load x3 with value 0x13e2e8c0
sw x3, 0(x2) # store 0x13e2e8c0 in memory
flh f12, 0(x2) # load 0x13e2e8c0 from memory into f12
li x3, 0xb288ac2b # load x3 with value 0xb288ac2b
sw x3, 0(x2) # store 0xb288ac2b in memory
flh f7, 0(x2) # load 0xb288ac2b from memory into f7
fsgnj.h f30, f12, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x5, 0xf5d7274e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42d6a772 # load x3 with value 0x42d6a772
sw x3, 0(x2) # store 0x42d6a772 in memory
flh f13, 0(x2) # load 0x42d6a772 from memory into f13
li x3, 0x52534eb9 # load x3 with value 0x52534eb9
sw x3, 0(x2) # store 0x52534eb9 in memory
flh f15, 0(x2) # load 0x52534eb9 from memory into f15
fsgnj.h f5, f13, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x4, 0x848b2541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1fcaac8 # load x3 with value 0xc1fcaac8
sw x3, 0(x2) # store 0xc1fcaac8 in memory
flh f14, 0(x2) # load 0xc1fcaac8 from memory into f14
li x3, 0xdf7720d0 # load x3 with value 0xdf7720d0
sw x3, 0(x2) # store 0xdf7720d0 in memory
flh f16, 0(x2) # load 0xdf7720d0 from memory into f16
fsgnj.h f4, f14, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x2, 0x5a28f7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8de54e4c # load x3 with value 0x8de54e4c
sw x3, 0(x2) # store 0x8de54e4c in memory
flh f15, 0(x2) # load 0x8de54e4c from memory into f15
li x3, 0x77ca5b5d # load x3 with value 0x77ca5b5d
sw x3, 0(x2) # store 0x77ca5b5d in memory
flh f17, 0(x2) # load 0x77ca5b5d from memory into f17
fsgnj.h f2, f15, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x19, 0x59def53f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7097e4a # load x3 with value 0xf7097e4a
sw x3, 0(x2) # store 0xf7097e4a in memory
flh f16, 0(x2) # load 0xf7097e4a from memory into f16
li x3, 0x96068656 # load x3 with value 0x96068656
sw x3, 0(x2) # store 0x96068656 in memory
flh f6, 0(x2) # load 0x96068656 from memory into f6
fsgnj.h f19, f16, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x27, 0xbac34ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c09ba90 # load x3 with value 0x8c09ba90
sw x3, 0(x2) # store 0x8c09ba90 in memory
flh f17, 0(x2) # load 0x8c09ba90 from memory into f17
li x3, 0xa7844b61 # load x3 with value 0xa7844b61
sw x3, 0(x2) # store 0xa7844b61 in memory
flh f6, 0(x2) # load 0xa7844b61 from memory into f6
fsgnj.h f27, f17, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x13, 0x88ebe717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2e6fc6e # load x3 with value 0xf2e6fc6e
sw x3, 0(x2) # store 0xf2e6fc6e in memory
flh f18, 0(x2) # load 0xf2e6fc6e from memory into f18
li x3, 0x2748093b # load x3 with value 0x2748093b
sw x3, 0(x2) # store 0x2748093b in memory
flh f12, 0(x2) # load 0x2748093b from memory into f12
fsgnj.h f13, f18, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x21, 0xbc3599c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7257ecbb # load x3 with value 0x7257ecbb
sw x3, 0(x2) # store 0x7257ecbb in memory
flh f19, 0(x2) # load 0x7257ecbb from memory into f19
li x3, 0xa087c135 # load x3 with value 0xa087c135
sw x3, 0(x2) # store 0xa087c135 in memory
flh f2, 0(x2) # load 0xa087c135 from memory into f2
fsgnj.h f21, f19, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x4, 0x414dcb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60f29866 # load x3 with value 0x60f29866
sw x3, 0(x2) # store 0x60f29866 in memory
flh f20, 0(x2) # load 0x60f29866 from memory into f20
li x3, 0xec70ce7c # load x3 with value 0xec70ce7c
sw x3, 0(x2) # store 0xec70ce7c in memory
flh f1, 0(x2) # load 0xec70ce7c from memory into f1
fsgnj.h f4, f20, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x9, 0xf37de778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e157d55 # load x3 with value 0x6e157d55
sw x3, 0(x2) # store 0x6e157d55 in memory
flh f21, 0(x2) # load 0x6e157d55 from memory into f21
li x3, 0xa10523d4 # load x3 with value 0xa10523d4
sw x3, 0(x2) # store 0xa10523d4 in memory
flh f28, 0(x2) # load 0xa10523d4 from memory into f28
fsgnj.h f9, f21, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x4, 0xc61101f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaa49cdd # load x3 with value 0xfaa49cdd
sw x3, 0(x2) # store 0xfaa49cdd in memory
flh f22, 0(x2) # load 0xfaa49cdd from memory into f22
li x3, 0xe4273866 # load x3 with value 0xe4273866
sw x3, 0(x2) # store 0xe4273866 in memory
flh f31, 0(x2) # load 0xe4273866 from memory into f31
fsgnj.h f4, f22, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x20, 0x63218f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0dcc9d74 # load x3 with value 0x0dcc9d74
sw x3, 0(x2) # store 0x0dcc9d74 in memory
flh f23, 0(x2) # load 0x0dcc9d74 from memory into f23
li x3, 0x26202942 # load x3 with value 0x26202942
sw x3, 0(x2) # store 0x26202942 in memory
flh f28, 0(x2) # load 0x26202942 from memory into f28
fsgnj.h f20, f23, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x6, 0xa6be412d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a8983be # load x3 with value 0x2a8983be
sw x3, 0(x2) # store 0x2a8983be in memory
flh f24, 0(x2) # load 0x2a8983be from memory into f24
li x3, 0xc8efb1a3 # load x3 with value 0xc8efb1a3
sw x3, 0(x2) # store 0xc8efb1a3 in memory
flh f29, 0(x2) # load 0xc8efb1a3 from memory into f29
fsgnj.h f6, f24, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x6, 0xd98a2d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc15e2f8 # load x3 with value 0xdc15e2f8
sw x3, 0(x2) # store 0xdc15e2f8 in memory
flh f25, 0(x2) # load 0xdc15e2f8 from memory into f25
li x3, 0x6e0f1a63 # load x3 with value 0x6e0f1a63
sw x3, 0(x2) # store 0x6e0f1a63 in memory
flh f15, 0(x2) # load 0x6e0f1a63 from memory into f15
fsgnj.h f6, f25, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x12, 0x6bb6d26e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0294b2e # load x3 with value 0xc0294b2e
sw x3, 0(x2) # store 0xc0294b2e in memory
flh f26, 0(x2) # load 0xc0294b2e from memory into f26
li x3, 0xd0217937 # load x3 with value 0xd0217937
sw x3, 0(x2) # store 0xd0217937 in memory
flh f22, 0(x2) # load 0xd0217937 from memory into f22
fsgnj.h f12, f26, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x29, 0xf0443f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7aa2aee7 # load x3 with value 0x7aa2aee7
sw x3, 0(x2) # store 0x7aa2aee7 in memory
flh f27, 0(x2) # load 0x7aa2aee7 from memory into f27
li x3, 0x3ea675df # load x3 with value 0x3ea675df
sw x3, 0(x2) # store 0x3ea675df in memory
flh f2, 0(x2) # load 0x3ea675df from memory into f2
fsgnj.h f29, f27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x30, 0x49560a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x631d7c49 # load x3 with value 0x631d7c49
sw x3, 0(x2) # store 0x631d7c49 in memory
flh f28, 0(x2) # load 0x631d7c49 from memory into f28
li x3, 0xb245af81 # load x3 with value 0xb245af81
sw x3, 0(x2) # store 0xb245af81 in memory
flh f21, 0(x2) # load 0xb245af81 from memory into f21
fsgnj.h f30, f28, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x20, 0xc5a568c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x349c8e1b # load x3 with value 0x349c8e1b
sw x3, 0(x2) # store 0x349c8e1b in memory
flh f29, 0(x2) # load 0x349c8e1b from memory into f29
li x3, 0xed2642b0 # load x3 with value 0xed2642b0
sw x3, 0(x2) # store 0xed2642b0 in memory
flh f3, 0(x2) # load 0xed2642b0 from memory into f3
fsgnj.h f20, f29, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x26, 0xcd8356b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cca154f # load x3 with value 0x7cca154f
sw x3, 0(x2) # store 0x7cca154f in memory
flh f30, 0(x2) # load 0x7cca154f from memory into f30
li x3, 0x5ec4e62e # load x3 with value 0x5ec4e62e
sw x3, 0(x2) # store 0x5ec4e62e in memory
flh f22, 0(x2) # load 0x5ec4e62e from memory into f22
fsgnj.h f26, f30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x14, 0x1378f008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76c49a48 # load x3 with value 0x76c49a48
sw x3, 0(x2) # store 0x76c49a48 in memory
flh f31, 0(x2) # load 0x76c49a48 from memory into f31
li x3, 0x9d973909 # load x3 with value 0x9d973909
sw x3, 0(x2) # store 0x9d973909 in memory
flh f10, 0(x2) # load 0x9d973909 from memory into f10
fsgnj.h f14, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x18, 0x6edbe5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc1746dc # load x3 with value 0xbc1746dc
sw x3, 0(x2) # store 0xbc1746dc in memory
flh f20, 0(x2) # load 0xbc1746dc from memory into f20
li x3, 0x2f7877cf # load x3 with value 0x2f7877cf
sw x3, 0(x2) # store 0x2f7877cf in memory
flh f0, 0(x2) # load 0x2f7877cf from memory into f0
fsgnj.h f18, f20, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x10, 0xfe8eb9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7c8fca8 # load x3 with value 0xb7c8fca8
sw x3, 0(x2) # store 0xb7c8fca8 in memory
flh f7, 0(x2) # load 0xb7c8fca8 from memory into f7
li x3, 0xf276b4b4 # load x3 with value 0xf276b4b4
sw x3, 0(x2) # store 0xf276b4b4 in memory
flh f1, 0(x2) # load 0xf276b4b4 from memory into f1
fsgnj.h f10, f7, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x14, 0x620a4958 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d9c0f2f # load x3 with value 0x9d9c0f2f
sw x3, 0(x2) # store 0x9d9c0f2f in memory
flh f8, 0(x2) # load 0x9d9c0f2f from memory into f8
li x3, 0x160c477a # load x3 with value 0x160c477a
sw x3, 0(x2) # store 0x160c477a in memory
flh f2, 0(x2) # load 0x160c477a from memory into f2
fsgnj.h f14, f8, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x26, 0xef6163f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd44afc6 # load x3 with value 0xdd44afc6
sw x3, 0(x2) # store 0xdd44afc6 in memory
flh f17, 0(x2) # load 0xdd44afc6 from memory into f17
li x3, 0x78d0276d # load x3 with value 0x78d0276d
sw x3, 0(x2) # store 0x78d0276d in memory
flh f3, 0(x2) # load 0x78d0276d from memory into f3
fsgnj.h f26, f17, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x20, 0x36f71809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x718f8531 # load x3 with value 0x718f8531
sw x3, 0(x2) # store 0x718f8531 in memory
flh f9, 0(x2) # load 0x718f8531 from memory into f9
li x3, 0xffaae756 # load x3 with value 0xffaae756
sw x3, 0(x2) # store 0xffaae756 in memory
flh f4, 0(x2) # load 0xffaae756 from memory into f4
fsgnj.h f20, f9, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x1, 0xb2292410 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x826fefad # load x3 with value 0x826fefad
sw x3, 0(x2) # store 0x826fefad in memory
flh f23, 0(x2) # load 0x826fefad from memory into f23
li x3, 0x6e9b18e3 # load x3 with value 0x6e9b18e3
sw x3, 0(x2) # store 0x6e9b18e3 in memory
flh f5, 0(x2) # load 0x6e9b18e3 from memory into f5
fsgnj.h f1, f23, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x11, 0x3de62057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x761d72b6 # load x3 with value 0x761d72b6
sw x3, 0(x2) # store 0x761d72b6 in memory
flh f2, 0(x2) # load 0x761d72b6 from memory into f2
li x3, 0x1eaf6593 # load x3 with value 0x1eaf6593
sw x3, 0(x2) # store 0x1eaf6593 in memory
flh f6, 0(x2) # load 0x1eaf6593 from memory into f6
fsgnj.h f11, f2, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x18, 0x730ee168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43aa4d1f # load x3 with value 0x43aa4d1f
sw x3, 0(x2) # store 0x43aa4d1f in memory
flh f12, 0(x2) # load 0x43aa4d1f from memory into f12
li x3, 0x1fda42d3 # load x3 with value 0x1fda42d3
sw x3, 0(x2) # store 0x1fda42d3 in memory
flh f7, 0(x2) # load 0x1fda42d3 from memory into f7
fsgnj.h f18, f12, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x22, 0x2fd25df2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeea2b324 # load x3 with value 0xeea2b324
sw x3, 0(x2) # store 0xeea2b324 in memory
flh f7, 0(x2) # load 0xeea2b324 from memory into f7
li x3, 0x732caf1c # load x3 with value 0x732caf1c
sw x3, 0(x2) # store 0x732caf1c in memory
flh f8, 0(x2) # load 0x732caf1c from memory into f8
fsgnj.h f22, f7, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x1, 0x7db12cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf75d589e # load x3 with value 0xf75d589e
sw x3, 0(x2) # store 0xf75d589e in memory
flh f2, 0(x2) # load 0xf75d589e from memory into f2
li x3, 0x86af267d # load x3 with value 0x86af267d
sw x3, 0(x2) # store 0x86af267d in memory
flh f9, 0(x2) # load 0x86af267d from memory into f9
fsgnj.h f1, f2, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x21, 0xec199b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ef86f2b # load x3 with value 0x0ef86f2b
sw x3, 0(x2) # store 0x0ef86f2b in memory
flh f20, 0(x2) # load 0x0ef86f2b from memory into f20
li x3, 0x5bbfde73 # load x3 with value 0x5bbfde73
sw x3, 0(x2) # store 0x5bbfde73 in memory
flh f10, 0(x2) # load 0x5bbfde73 from memory into f10
fsgnj.h f21, f20, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x22, 0x87dc4644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6584b739 # load x3 with value 0x6584b739
sw x3, 0(x2) # store 0x6584b739 in memory
flh f10, 0(x2) # load 0x6584b739 from memory into f10
li x3, 0x3f2abdca # load x3 with value 0x3f2abdca
sw x3, 0(x2) # store 0x3f2abdca in memory
flh f11, 0(x2) # load 0x3f2abdca from memory into f11
fsgnj.h f22, f10, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x23, 0x15d34935 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa4d4d12 # load x3 with value 0xaa4d4d12
sw x3, 0(x2) # store 0xaa4d4d12 in memory
flh f11, 0(x2) # load 0xaa4d4d12 from memory into f11
li x3, 0xecc25f72 # load x3 with value 0xecc25f72
sw x3, 0(x2) # store 0xecc25f72 in memory
flh f12, 0(x2) # load 0xecc25f72 from memory into f12
fsgnj.h f23, f11, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x22, 0x28017372 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7945df79 # load x3 with value 0x7945df79
sw x3, 0(x2) # store 0x7945df79 in memory
flh f3, 0(x2) # load 0x7945df79 from memory into f3
li x3, 0x7b800a01 # load x3 with value 0x7b800a01
sw x3, 0(x2) # store 0x7b800a01 in memory
flh f13, 0(x2) # load 0x7b800a01 from memory into f13
fsgnj.h f22, f3, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x18, 0x48f54cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7bc7070 # load x3 with value 0xa7bc7070
sw x3, 0(x2) # store 0xa7bc7070 in memory
flh f5, 0(x2) # load 0xa7bc7070 from memory into f5
li x3, 0x50da43d0 # load x3 with value 0x50da43d0
sw x3, 0(x2) # store 0x50da43d0 in memory
flh f14, 0(x2) # load 0x50da43d0 from memory into f14
fsgnj.h f18, f5, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x16, 0xab3f6fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb04e3cd # load x3 with value 0xcb04e3cd
sw x3, 0(x2) # store 0xcb04e3cd in memory
flh f25, 0(x2) # load 0xcb04e3cd from memory into f25
li x3, 0xc992adca # load x3 with value 0xc992adca
sw x3, 0(x2) # store 0xc992adca in memory
flh f15, 0(x2) # load 0xc992adca from memory into f15
fsgnj.h f16, f25, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x22, 0x60de21ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60757e50 # load x3 with value 0x60757e50
sw x3, 0(x2) # store 0x60757e50 in memory
flh f1, 0(x2) # load 0x60757e50 from memory into f1
li x3, 0xc1dfa174 # load x3 with value 0xc1dfa174
sw x3, 0(x2) # store 0xc1dfa174 in memory
flh f16, 0(x2) # load 0xc1dfa174 from memory into f16
fsgnj.h f22, f1, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x18, 0x771a8399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4cb3d4a # load x3 with value 0xc4cb3d4a
sw x3, 0(x2) # store 0xc4cb3d4a in memory
flh f11, 0(x2) # load 0xc4cb3d4a from memory into f11
li x3, 0x0996344f # load x3 with value 0x0996344f
sw x3, 0(x2) # store 0x0996344f in memory
flh f17, 0(x2) # load 0x0996344f from memory into f17
fsgnj.h f18, f11, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x12, 0xb68b4243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43d3d6f0 # load x3 with value 0x43d3d6f0
sw x3, 0(x2) # store 0x43d3d6f0 in memory
flh f3, 0(x2) # load 0x43d3d6f0 from memory into f3
li x3, 0x595e50e4 # load x3 with value 0x595e50e4
sw x3, 0(x2) # store 0x595e50e4 in memory
flh f18, 0(x2) # load 0x595e50e4 from memory into f18
fsgnj.h f12, f3, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x29, 0xf7c1f579 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb71e846 # load x3 with value 0xeb71e846
sw x3, 0(x2) # store 0xeb71e846 in memory
flh f13, 0(x2) # load 0xeb71e846 from memory into f13
li x3, 0x4fe27267 # load x3 with value 0x4fe27267
sw x3, 0(x2) # store 0x4fe27267 in memory
flh f19, 0(x2) # load 0x4fe27267 from memory into f19
fsgnj.h f29, f13, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x9, 0xcc15f754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37d6e979 # load x3 with value 0x37d6e979
sw x3, 0(x2) # store 0x37d6e979 in memory
flh f21, 0(x2) # load 0x37d6e979 from memory into f21
li x3, 0x5b4ffab6 # load x3 with value 0x5b4ffab6
sw x3, 0(x2) # store 0x5b4ffab6 in memory
flh f20, 0(x2) # load 0x5b4ffab6 from memory into f20
fsgnj.h f9, f21, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x12, 0x3d3e0551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd101cef3 # load x3 with value 0xd101cef3
sw x3, 0(x2) # store 0xd101cef3 in memory
flh f4, 0(x2) # load 0xd101cef3 from memory into f4
li x3, 0xf9d74250 # load x3 with value 0xf9d74250
sw x3, 0(x2) # store 0xf9d74250 in memory
flh f21, 0(x2) # load 0xf9d74250 from memory into f21
fsgnj.h f12, f4, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x2, 0x3b140cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5b47bbe # load x3 with value 0xc5b47bbe
sw x3, 0(x2) # store 0xc5b47bbe in memory
flh f26, 0(x2) # load 0xc5b47bbe from memory into f26
li x3, 0x8bdff370 # load x3 with value 0x8bdff370
sw x3, 0(x2) # store 0x8bdff370 in memory
flh f22, 0(x2) # load 0x8bdff370 from memory into f22
fsgnj.h f2, f26, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x16, 0x73cf8f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe31cf54c # load x3 with value 0xe31cf54c
sw x3, 0(x2) # store 0xe31cf54c in memory
flh f17, 0(x2) # load 0xe31cf54c from memory into f17
li x3, 0x24292999 # load x3 with value 0x24292999
sw x3, 0(x2) # store 0x24292999 in memory
flh f23, 0(x2) # load 0x24292999 from memory into f23
fsgnj.h f16, f17, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x29, 0xc15119b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x288c4e7b # load x3 with value 0x288c4e7b
sw x3, 0(x2) # store 0x288c4e7b in memory
flh f18, 0(x2) # load 0x288c4e7b from memory into f18
li x3, 0x2a163da6 # load x3 with value 0x2a163da6
sw x3, 0(x2) # store 0x2a163da6 in memory
flh f24, 0(x2) # load 0x2a163da6 from memory into f24
fsgnj.h f29, f18, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x28, 0xcd4bec72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4fd106c # load x3 with value 0xa4fd106c
sw x3, 0(x2) # store 0xa4fd106c in memory
flh f12, 0(x2) # load 0xa4fd106c from memory into f12
li x3, 0x6de6d472 # load x3 with value 0x6de6d472
sw x3, 0(x2) # store 0x6de6d472 in memory
flh f25, 0(x2) # load 0x6de6d472 from memory into f25
fsgnj.h f28, f12, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x7, 0xc290de10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9aae257d # load x3 with value 0x9aae257d
sw x3, 0(x2) # store 0x9aae257d in memory
flh f21, 0(x2) # load 0x9aae257d from memory into f21
li x3, 0xc25099d8 # load x3 with value 0xc25099d8
sw x3, 0(x2) # store 0xc25099d8 in memory
flh f26, 0(x2) # load 0xc25099d8 from memory into f26
fsgnj.h f7, f21, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x11, 0x444484be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x304a26cd # load x3 with value 0x304a26cd
sw x3, 0(x2) # store 0x304a26cd in memory
flh f30, 0(x2) # load 0x304a26cd from memory into f30
li x3, 0xe43e3845 # load x3 with value 0xe43e3845
sw x3, 0(x2) # store 0xe43e3845 in memory
flh f27, 0(x2) # load 0xe43e3845 from memory into f27
fsgnj.h f11, f30, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x22, 0xa3b6b368 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa17bd4f4 # load x3 with value 0xa17bd4f4
sw x3, 0(x2) # store 0xa17bd4f4 in memory
flh f9, 0(x2) # load 0xa17bd4f4 from memory into f9
li x3, 0x739bf2f3 # load x3 with value 0x739bf2f3
sw x3, 0(x2) # store 0x739bf2f3 in memory
flh f28, 0(x2) # load 0x739bf2f3 from memory into f28
fsgnj.h f22, f9, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x19, 0xa5e4a5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f2c0679 # load x3 with value 0x2f2c0679
sw x3, 0(x2) # store 0x2f2c0679 in memory
flh f9, 0(x2) # load 0x2f2c0679 from memory into f9
li x3, 0x32f7b413 # load x3 with value 0x32f7b413
sw x3, 0(x2) # store 0x32f7b413 in memory
flh f29, 0(x2) # load 0x32f7b413 from memory into f29
fsgnj.h f19, f9, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x2, 0xbf509fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d2832b9 # load x3 with value 0x1d2832b9
sw x3, 0(x2) # store 0x1d2832b9 in memory
flh f29, 0(x2) # load 0x1d2832b9 from memory into f29
li x3, 0x3075c9b9 # load x3 with value 0x3075c9b9
sw x3, 0(x2) # store 0x3075c9b9 in memory
flh f30, 0(x2) # load 0x3075c9b9 from memory into f30
fsgnj.h f2, f29, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x17, 0x69300fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca471015 # load x3 with value 0xca471015
sw x3, 0(x2) # store 0xca471015 in memory
flh f25, 0(x2) # load 0xca471015 from memory into f25
li x3, 0x3c6eb65e # load x3 with value 0x3c6eb65e
sw x3, 0(x2) # store 0x3c6eb65e in memory
flh f31, 0(x2) # load 0x3c6eb65e from memory into f31
fsgnj.h f17, f25, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
