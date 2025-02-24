///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fsgnjx.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.762145
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
li x5, 0xb06528b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xaf156316 # load x3 with value 0xaf156316
sw x3, 0(x2) # store 0xaf156316 in memory
flh f16, 0(x2) # load 0xaf156316 from memory into f16
fsgnjx.h f5, f31, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x1, 0x3fd3637d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x5ebe00c5 # load x3 with value 0x5ebe00c5
sw x3, 0(x2) # store 0x5ebe00c5 in memory
flh f21, 0(x2) # load 0x5ebe00c5 from memory into f21
fsgnjx.h f1, f29, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x5, 0x72d11683 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x14ffb3c7 # load x3 with value 0x14ffb3c7
sw x3, 0(x2) # store 0x14ffb3c7 in memory
flh f19, 0(x2) # load 0x14ffb3c7 from memory into f19
fsgnjx.h f5, f24, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x23, 0x2cab8b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0xd3227fdf # load x3 with value 0xd3227fdf
sw x3, 0(x2) # store 0xd3227fdf in memory
flh f6, 0(x2) # load 0xd3227fdf from memory into f6
fsgnjx.h f23, f7, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x13, 0x729c74eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0xe2a7179f # load x3 with value 0xe2a7179f
sw x3, 0(x2) # store 0xe2a7179f in memory
flh f16, 0(x2) # load 0xe2a7179f from memory into f16
fsgnjx.h f13, f30, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x18, 0x00a27515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x3757a007 # load x3 with value 0x3757a007
sw x3, 0(x2) # store 0x3757a007 in memory
flh f27, 0(x2) # load 0x3757a007 from memory into f27
fsgnjx.h f18, f25, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x2, 0x33b28ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x86eb9c2b # load x3 with value 0x86eb9c2b
sw x3, 0(x2) # store 0x86eb9c2b in memory
flh f23, 0(x2) # load 0x86eb9c2b from memory into f23
fsgnjx.h f2, f30, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x21, 0xa6a604eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x288e21e1 # load x3 with value 0x288e21e1
sw x3, 0(x2) # store 0x288e21e1 in memory
flh f28, 0(x2) # load 0x288e21e1 from memory into f28
fsgnjx.h f21, f6, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x13, 0xb0ce68f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x62d6e2e8 # load x3 with value 0x62d6e2e8
sw x3, 0(x2) # store 0x62d6e2e8 in memory
flh f9, 0(x2) # load 0x62d6e2e8 from memory into f9
fsgnjx.h f13, f29, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x3, 0x7418716e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x036e753c # load x3 with value 0x036e753c
sw x3, 0(x2) # store 0x036e753c in memory
flh f15, 0(x2) # load 0x036e753c from memory into f15
fsgnjx.h f3, f21, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x26, 0xc78b78fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x8eb29866 # load x3 with value 0x8eb29866
sw x3, 0(x2) # store 0x8eb29866 in memory
flh f2, 0(x2) # load 0x8eb29866 from memory into f2
fsgnjx.h f26, f25, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x10, 0x1a482bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x9d8d9aad # load x3 with value 0x9d8d9aad
sw x3, 0(x2) # store 0x9d8d9aad in memory
flh f1, 0(x2) # load 0x9d8d9aad from memory into f1
fsgnjx.h f10, f28, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x14, 0x24f7ac5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x5d4cbb4d # load x3 with value 0x5d4cbb4d
sw x3, 0(x2) # store 0x5d4cbb4d in memory
flh f18, 0(x2) # load 0x5d4cbb4d from memory into f18
fsgnjx.h f14, f28, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x25, 0x03439dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0xf62c1c2b # load x3 with value 0xf62c1c2b
sw x3, 0(x2) # store 0xf62c1c2b in memory
flh f26, 0(x2) # load 0xf62c1c2b from memory into f26
fsgnjx.h f25, f30, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x10, 0x9a9e1243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0xef786f7e # load x3 with value 0xef786f7e
sw x3, 0(x2) # store 0xef786f7e in memory
flh f23, 0(x2) # load 0xef786f7e from memory into f23
fsgnjx.h f10, f16, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x5, 0xe7f84d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
li x3, 0x738c145b # load x3 with value 0x738c145b
sw x3, 0(x2) # store 0x738c145b in memory
flh f4, 0(x2) # load 0x738c145b from memory into f4
fsgnjx.h f5, f6, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x27, 0xb317f96b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0xdd2ae131 # load x3 with value 0xdd2ae131
sw x3, 0(x2) # store 0xdd2ae131 in memory
flh f22, 0(x2) # load 0xdd2ae131 from memory into f22
fsgnjx.h f27, f12, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x8, 0x40c1aba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x7173b273 # load x3 with value 0x7173b273
sw x3, 0(x2) # store 0x7173b273 in memory
flh f1, 0(x2) # load 0x7173b273 from memory into f1
fsgnjx.h f8, f12, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x12, 0xecfad128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x87209e57 # load x3 with value 0x87209e57
sw x3, 0(x2) # store 0x87209e57 in memory
flh f27, 0(x2) # load 0x87209e57 from memory into f27
fsgnjx.h f12, f22, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x13, 0x5fcbbe5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x59ffc6f7 # load x3 with value 0x59ffc6f7
sw x3, 0(x2) # store 0x59ffc6f7 in memory
flh f5, 0(x2) # load 0x59ffc6f7 from memory into f5
fsgnjx.h f13, f27, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x9, 0xe26f52ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x8b7c212f # load x3 with value 0x8b7c212f
sw x3, 0(x2) # store 0x8b7c212f in memory
flh f21, 0(x2) # load 0x8b7c212f from memory into f21
fsgnjx.h f9, f31, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x26, 0x88903192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x22ede17f # load x3 with value 0x22ede17f
sw x3, 0(x2) # store 0x22ede17f in memory
flh f31, 0(x2) # load 0x22ede17f from memory into f31
fsgnjx.h f26, f3, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x21, 0xe4eba4ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0xa4d2f265 # load x3 with value 0xa4d2f265
sw x3, 0(x2) # store 0xa4d2f265 in memory
flh f26, 0(x2) # load 0xa4d2f265 from memory into f26
fsgnjx.h f21, f18, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x31, 0x28c47642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0xaddfafd8 # load x3 with value 0xaddfafd8
sw x3, 0(x2) # store 0xaddfafd8 in memory
flh f7, 0(x2) # load 0xaddfafd8 from memory into f7
fsgnjx.h f31, f3, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x26, 0xceacd794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x38906a49 # load x3 with value 0x38906a49
sw x3, 0(x2) # store 0x38906a49 in memory
flh f7, 0(x2) # load 0x38906a49 from memory into f7
fsgnjx.h f26, f15, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x2, 0x0c5dea48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0xd7390722 # load x3 with value 0xd7390722
sw x3, 0(x2) # store 0xd7390722 in memory
flh f9, 0(x2) # load 0xd7390722 from memory into f9
fsgnjx.h f2, f17, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x3, 0xe330ad5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d4e1daf # load x3 with value 0x6d4e1daf
sw x3, 0(x2) # store 0x6d4e1daf in memory
flh f12, 0(x2) # load 0x6d4e1daf from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fsgnjx.h f3, f12, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x5, 0x86a1f8da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e0ea7a2 # load x3 with value 0x4e0ea7a2
sw x3, 0(x2) # store 0x4e0ea7a2 in memory
flh f20, 0(x2) # load 0x4e0ea7a2 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fsgnjx.h f5, f20, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x21, 0x25144c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10541d3d # load x3 with value 0x10541d3d
sw x3, 0(x2) # store 0x10541d3d in memory
flh f25, 0(x2) # load 0x10541d3d from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fsgnjx.h f21, f25, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x21, 0x7bbc3d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa04cff7 # load x3 with value 0xaa04cff7
sw x3, 0(x2) # store 0xaa04cff7 in memory
flh f19, 0(x2) # load 0xaa04cff7 from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fsgnjx.h f21, f19, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x1, 0x1dbcdd89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53390ff2 # load x3 with value 0x53390ff2
sw x3, 0(x2) # store 0x53390ff2 in memory
flh f16, 0(x2) # load 0x53390ff2 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fsgnjx.h f1, f16, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x29, 0x878ffbfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8bd6689 # load x3 with value 0xa8bd6689
sw x3, 0(x2) # store 0xa8bd6689 in memory
flh f19, 0(x2) # load 0xa8bd6689 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fsgnjx.h f29, f19, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x25, 0xd5bcee16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8df7cdee # load x3 with value 0x8df7cdee
sw x3, 0(x2) # store 0x8df7cdee in memory
flh f16, 0(x2) # load 0x8df7cdee from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fsgnjx.h f25, f16, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x23, 0x377e4a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97af18d6 # load x3 with value 0x97af18d6
sw x3, 0(x2) # store 0x97af18d6 in memory
flh f10, 0(x2) # load 0x97af18d6 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fsgnjx.h f23, f10, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x28, 0x6eb17da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3828fbd7 # load x3 with value 0x3828fbd7
sw x3, 0(x2) # store 0x3828fbd7 in memory
flh f13, 0(x2) # load 0x3828fbd7 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fsgnjx.h f28, f13, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x13, 0x29c68e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e700a83 # load x3 with value 0x7e700a83
sw x3, 0(x2) # store 0x7e700a83 in memory
flh f9, 0(x2) # load 0x7e700a83 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fsgnjx.h f13, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x4, 0xfab5eaae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99fd2921 # load x3 with value 0x99fd2921
sw x3, 0(x2) # store 0x99fd2921 in memory
flh f5, 0(x2) # load 0x99fd2921 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fsgnjx.h f4, f5, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x19, 0x0f11df1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4a3989c # load x3 with value 0xb4a3989c
sw x3, 0(x2) # store 0xb4a3989c in memory
flh f22, 0(x2) # load 0xb4a3989c from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fsgnjx.h f19, f22, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x23, 0xc9d91c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e303a7a # load x3 with value 0x0e303a7a
sw x3, 0(x2) # store 0x0e303a7a in memory
flh f22, 0(x2) # load 0x0e303a7a from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fsgnjx.h f23, f22, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x7, 0x708446f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcdd562b # load x3 with value 0xbcdd562b
sw x3, 0(x2) # store 0xbcdd562b in memory
flh f15, 0(x2) # load 0xbcdd562b from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fsgnjx.h f7, f15, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x7, 0x98452f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff2b5c3 # load x3 with value 0xfff2b5c3
sw x3, 0(x2) # store 0xfff2b5c3 in memory
flh f29, 0(x2) # load 0xfff2b5c3 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fsgnjx.h f7, f29, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x3, 0x3a9e400d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a40ba54 # load x3 with value 0x8a40ba54
sw x3, 0(x2) # store 0x8a40ba54 in memory
flh f13, 0(x2) # load 0x8a40ba54 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fsgnjx.h f3, f13, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x11, 0x345efd39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7aa5509 # load x3 with value 0xc7aa5509
sw x3, 0(x2) # store 0xc7aa5509 in memory
flh f28, 0(x2) # load 0xc7aa5509 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fsgnjx.h f11, f28, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x16, 0xdb798de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce95670b # load x3 with value 0xce95670b
sw x3, 0(x2) # store 0xce95670b in memory
flh f12, 0(x2) # load 0xce95670b from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fsgnjx.h f16, f12, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x30, 0x3ab394ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3eb50627 # load x3 with value 0x3eb50627
sw x3, 0(x2) # store 0x3eb50627 in memory
flh f4, 0(x2) # load 0x3eb50627 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fsgnjx.h f30, f4, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x15, 0xe9f6b5b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x830a59dc # load x3 with value 0x830a59dc
sw x3, 0(x2) # store 0x830a59dc in memory
flh f27, 0(x2) # load 0x830a59dc from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fsgnjx.h f15, f27, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x17, 0xbef6d541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb032a933 # load x3 with value 0xb032a933
sw x3, 0(x2) # store 0xb032a933 in memory
flh f16, 0(x2) # load 0xb032a933 from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsgnjx.h f17, f16, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x8, 0x57c14f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04014d75 # load x3 with value 0x04014d75
sw x3, 0(x2) # store 0x04014d75 in memory
flh f21, 0(x2) # load 0x04014d75 from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fsgnjx.h f8, f21, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x1, 0xda32652c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99bfdb88 # load x3 with value 0x99bfdb88
sw x3, 0(x2) # store 0x99bfdb88 in memory
flh f21, 0(x2) # load 0x99bfdb88 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fsgnjx.h f1, f21, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x4, 0xe31086d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabda0397 # load x3 with value 0xabda0397
sw x3, 0(x2) # store 0xabda0397 in memory
flh f1, 0(x2) # load 0xabda0397 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fsgnjx.h f4, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x25, 0x30eb31d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4e1387a # load x3 with value 0xb4e1387a
sw x3, 0(x2) # store 0xb4e1387a in memory
flh f27, 0(x2) # load 0xb4e1387a from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fsgnjx.h f25, f27, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x11, 0xd93860dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb9bb99d # load x3 with value 0xeb9bb99d
sw x3, 0(x2) # store 0xeb9bb99d in memory
flh f28, 0(x2) # load 0xeb9bb99d from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fsgnjx.h f11, f28, f3 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x99efdb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65e0e167 # load x3 with value 0x65e0e167
sw x3, 0(x2) # store 0x65e0e167 in memory
flh f12, 0(x2) # load 0x65e0e167 from memory into f12
li x3, 0x1cdbdf11 # load x3 with value 0x1cdbdf11
sw x3, 0(x2) # store 0x1cdbdf11 in memory
flh f22, 0(x2) # load 0x1cdbdf11 from memory into f22
fsgnjx.h f0, f12, f22 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xf39a146c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad2a4204 # load x3 with value 0xad2a4204
sw x3, 0(x2) # store 0xad2a4204 in memory
flh f5, 0(x2) # load 0xad2a4204 from memory into f5
li x3, 0x59822a43 # load x3 with value 0x59822a43
sw x3, 0(x2) # store 0x59822a43 in memory
flh f7, 0(x2) # load 0x59822a43 from memory into f7
fsgnjx.h f1, f5, f7 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x66eea2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f2cfbb0 # load x3 with value 0x3f2cfbb0
sw x3, 0(x2) # store 0x3f2cfbb0 in memory
flh f23, 0(x2) # load 0x3f2cfbb0 from memory into f23
li x3, 0x08c1b675 # load x3 with value 0x08c1b675
sw x3, 0(x2) # store 0x08c1b675 in memory
flh f20, 0(x2) # load 0x08c1b675 from memory into f20
fsgnjx.h f2, f23, f20 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x148f7af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5dc56bc # load x3 with value 0xf5dc56bc
sw x3, 0(x2) # store 0xf5dc56bc in memory
flh f24, 0(x2) # load 0xf5dc56bc from memory into f24
li x3, 0x7cceccad # load x3 with value 0x7cceccad
sw x3, 0(x2) # store 0x7cceccad in memory
flh f17, 0(x2) # load 0x7cceccad from memory into f17
fsgnjx.h f3, f24, f17 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xe1bb7577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e450bd9 # load x3 with value 0x9e450bd9
sw x3, 0(x2) # store 0x9e450bd9 in memory
flh f22, 0(x2) # load 0x9e450bd9 from memory into f22
li x3, 0xcc68f648 # load x3 with value 0xcc68f648
sw x3, 0(x2) # store 0xcc68f648 in memory
flh f1, 0(x2) # load 0xcc68f648 from memory into f1
fsgnjx.h f4, f22, f1 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x97b0c377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf57a9d9a # load x3 with value 0xf57a9d9a
sw x3, 0(x2) # store 0xf57a9d9a in memory
flh f2, 0(x2) # load 0xf57a9d9a from memory into f2
li x3, 0x9df8b244 # load x3 with value 0x9df8b244
sw x3, 0(x2) # store 0x9df8b244 in memory
flh f29, 0(x2) # load 0x9df8b244 from memory into f29
fsgnjx.h f5, f2, f29 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x3fa8c16a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd2c0e36 # load x3 with value 0xdd2c0e36
sw x3, 0(x2) # store 0xdd2c0e36 in memory
flh f10, 0(x2) # load 0xdd2c0e36 from memory into f10
li x3, 0x0de7b3df # load x3 with value 0x0de7b3df
sw x3, 0(x2) # store 0x0de7b3df in memory
flh f3, 0(x2) # load 0x0de7b3df from memory into f3
fsgnjx.h f6, f10, f3 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x0c9f7d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33ca0a29 # load x3 with value 0x33ca0a29
sw x3, 0(x2) # store 0x33ca0a29 in memory
flh f4, 0(x2) # load 0x33ca0a29 from memory into f4
li x3, 0x1089c017 # load x3 with value 0x1089c017
sw x3, 0(x2) # store 0x1089c017 in memory
flh f30, 0(x2) # load 0x1089c017 from memory into f30
fsgnjx.h f7, f4, f30 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xa30d1307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3764d3b # load x3 with value 0xb3764d3b
sw x3, 0(x2) # store 0xb3764d3b in memory
flh f16, 0(x2) # load 0xb3764d3b from memory into f16
li x3, 0xa54bf2ba # load x3 with value 0xa54bf2ba
sw x3, 0(x2) # store 0xa54bf2ba in memory
flh f24, 0(x2) # load 0xa54bf2ba from memory into f24
fsgnjx.h f8, f16, f24 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x6d97d856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc7455b2 # load x3 with value 0xbc7455b2
sw x3, 0(x2) # store 0xbc7455b2 in memory
flh f22, 0(x2) # load 0xbc7455b2 from memory into f22
li x3, 0x0c1d9b95 # load x3 with value 0x0c1d9b95
sw x3, 0(x2) # store 0x0c1d9b95 in memory
flh f24, 0(x2) # load 0x0c1d9b95 from memory into f24
fsgnjx.h f9, f22, f24 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x0638aaad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x181f9f4f # load x3 with value 0x181f9f4f
sw x3, 0(x2) # store 0x181f9f4f in memory
flh f12, 0(x2) # load 0x181f9f4f from memory into f12
li x3, 0xcf36a478 # load x3 with value 0xcf36a478
sw x3, 0(x2) # store 0xcf36a478 in memory
flh f30, 0(x2) # load 0xcf36a478 from memory into f30
fsgnjx.h f10, f12, f30 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xe7fb136b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5dea215 # load x3 with value 0xa5dea215
sw x3, 0(x2) # store 0xa5dea215 in memory
flh f17, 0(x2) # load 0xa5dea215 from memory into f17
li x3, 0x72b2832b # load x3 with value 0x72b2832b
sw x3, 0(x2) # store 0x72b2832b in memory
flh f25, 0(x2) # load 0x72b2832b from memory into f25
fsgnjx.h f11, f17, f25 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc4211aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4616956 # load x3 with value 0xa4616956
sw x3, 0(x2) # store 0xa4616956 in memory
flh f19, 0(x2) # load 0xa4616956 from memory into f19
li x3, 0x108ee75f # load x3 with value 0x108ee75f
sw x3, 0(x2) # store 0x108ee75f in memory
flh f16, 0(x2) # load 0x108ee75f from memory into f16
fsgnjx.h f12, f19, f16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xe5af6e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a2f5240 # load x3 with value 0x8a2f5240
sw x3, 0(x2) # store 0x8a2f5240 in memory
flh f1, 0(x2) # load 0x8a2f5240 from memory into f1
li x3, 0xc6eccbb8 # load x3 with value 0xc6eccbb8
sw x3, 0(x2) # store 0xc6eccbb8 in memory
flh f30, 0(x2) # load 0xc6eccbb8 from memory into f30
fsgnjx.h f13, f1, f30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x8b4817e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x218cc428 # load x3 with value 0x218cc428
sw x3, 0(x2) # store 0x218cc428 in memory
flh f18, 0(x2) # load 0x218cc428 from memory into f18
li x3, 0x8451435c # load x3 with value 0x8451435c
sw x3, 0(x2) # store 0x8451435c in memory
flh f5, 0(x2) # load 0x8451435c from memory into f5
fsgnjx.h f14, f18, f5 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x66f1e2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x501a28ba # load x3 with value 0x501a28ba
sw x3, 0(x2) # store 0x501a28ba in memory
flh f28, 0(x2) # load 0x501a28ba from memory into f28
li x3, 0x3399e4ee # load x3 with value 0x3399e4ee
sw x3, 0(x2) # store 0x3399e4ee in memory
flh f6, 0(x2) # load 0x3399e4ee from memory into f6
fsgnjx.h f15, f28, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xddf276b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x635cd491 # load x3 with value 0x635cd491
sw x3, 0(x2) # store 0x635cd491 in memory
flh f20, 0(x2) # load 0x635cd491 from memory into f20
li x3, 0xfdcbf06d # load x3 with value 0xfdcbf06d
sw x3, 0(x2) # store 0xfdcbf06d in memory
flh f15, 0(x2) # load 0xfdcbf06d from memory into f15
fsgnjx.h f16, f20, f15 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xefc9aefb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x032a3c62 # load x3 with value 0x032a3c62
sw x3, 0(x2) # store 0x032a3c62 in memory
flh f13, 0(x2) # load 0x032a3c62 from memory into f13
li x3, 0x9c105489 # load x3 with value 0x9c105489
sw x3, 0(x2) # store 0x9c105489 in memory
flh f2, 0(x2) # load 0x9c105489 from memory into f2
fsgnjx.h f17, f13, f2 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x021cdc6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbd29fe7 # load x3 with value 0xdbd29fe7
sw x3, 0(x2) # store 0xdbd29fe7 in memory
flh f24, 0(x2) # load 0xdbd29fe7 from memory into f24
li x3, 0x5347540c # load x3 with value 0x5347540c
sw x3, 0(x2) # store 0x5347540c in memory
flh f23, 0(x2) # load 0x5347540c from memory into f23
fsgnjx.h f18, f24, f23 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xb5ca0202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98cf7759 # load x3 with value 0x98cf7759
sw x3, 0(x2) # store 0x98cf7759 in memory
flh f22, 0(x2) # load 0x98cf7759 from memory into f22
li x3, 0xf8508ece # load x3 with value 0xf8508ece
sw x3, 0(x2) # store 0xf8508ece in memory
flh f9, 0(x2) # load 0xf8508ece from memory into f9
fsgnjx.h f19, f22, f9 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xb83d81b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc39dad02 # load x3 with value 0xc39dad02
sw x3, 0(x2) # store 0xc39dad02 in memory
flh f6, 0(x2) # load 0xc39dad02 from memory into f6
li x3, 0x49e597ec # load x3 with value 0x49e597ec
sw x3, 0(x2) # store 0x49e597ec in memory
flh f17, 0(x2) # load 0x49e597ec from memory into f17
fsgnjx.h f20, f6, f17 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x05a3339a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ba86fc4 # load x3 with value 0x1ba86fc4
sw x3, 0(x2) # store 0x1ba86fc4 in memory
flh f18, 0(x2) # load 0x1ba86fc4 from memory into f18
li x3, 0x8aba48f8 # load x3 with value 0x8aba48f8
sw x3, 0(x2) # store 0x8aba48f8 in memory
flh f26, 0(x2) # load 0x8aba48f8 from memory into f26
fsgnjx.h f21, f18, f26 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8c92501f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8472e67a # load x3 with value 0x8472e67a
sw x3, 0(x2) # store 0x8472e67a in memory
flh f1, 0(x2) # load 0x8472e67a from memory into f1
li x3, 0xb8a0acd0 # load x3 with value 0xb8a0acd0
sw x3, 0(x2) # store 0xb8a0acd0 in memory
flh f20, 0(x2) # load 0xb8a0acd0 from memory into f20
fsgnjx.h f22, f1, f20 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x2d64ae81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47ce0521 # load x3 with value 0x47ce0521
sw x3, 0(x2) # store 0x47ce0521 in memory
flh f14, 0(x2) # load 0x47ce0521 from memory into f14
li x3, 0x45194615 # load x3 with value 0x45194615
sw x3, 0(x2) # store 0x45194615 in memory
flh f23, 0(x2) # load 0x45194615 from memory into f23
fsgnjx.h f23, f14, f23 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x1c198a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec1af66f # load x3 with value 0xec1af66f
sw x3, 0(x2) # store 0xec1af66f in memory
flh f26, 0(x2) # load 0xec1af66f from memory into f26
li x3, 0xcd735a4d # load x3 with value 0xcd735a4d
sw x3, 0(x2) # store 0xcd735a4d in memory
flh f2, 0(x2) # load 0xcd735a4d from memory into f2
fsgnjx.h f24, f26, f2 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x3690775a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6db7be8 # load x3 with value 0xb6db7be8
sw x3, 0(x2) # store 0xb6db7be8 in memory
flh f20, 0(x2) # load 0xb6db7be8 from memory into f20
li x3, 0xe687e327 # load x3 with value 0xe687e327
sw x3, 0(x2) # store 0xe687e327 in memory
flh f21, 0(x2) # load 0xe687e327 from memory into f21
fsgnjx.h f25, f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x080e275c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2496e093 # load x3 with value 0x2496e093
sw x3, 0(x2) # store 0x2496e093 in memory
flh f31, 0(x2) # load 0x2496e093 from memory into f31
li x3, 0x397a3b41 # load x3 with value 0x397a3b41
sw x3, 0(x2) # store 0x397a3b41 in memory
flh f29, 0(x2) # load 0x397a3b41 from memory into f29
fsgnjx.h f26, f31, f29 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x768db1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x346c0bc3 # load x3 with value 0x346c0bc3
sw x3, 0(x2) # store 0x346c0bc3 in memory
flh f17, 0(x2) # load 0x346c0bc3 from memory into f17
li x3, 0x08b6650c # load x3 with value 0x08b6650c
sw x3, 0(x2) # store 0x08b6650c in memory
flh f3, 0(x2) # load 0x08b6650c from memory into f3
fsgnjx.h f27, f17, f3 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x1541ba8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c134645 # load x3 with value 0x4c134645
sw x3, 0(x2) # store 0x4c134645 in memory
flh f16, 0(x2) # load 0x4c134645 from memory into f16
li x3, 0x14c91231 # load x3 with value 0x14c91231
sw x3, 0(x2) # store 0x14c91231 in memory
flh f2, 0(x2) # load 0x14c91231 from memory into f2
fsgnjx.h f28, f16, f2 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x9c53d41a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa534d1b2 # load x3 with value 0xa534d1b2
sw x3, 0(x2) # store 0xa534d1b2 in memory
flh f17, 0(x2) # load 0xa534d1b2 from memory into f17
li x3, 0x441fe339 # load x3 with value 0x441fe339
sw x3, 0(x2) # store 0x441fe339 in memory
flh f10, 0(x2) # load 0x441fe339 from memory into f10
fsgnjx.h f29, f17, f10 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x2c9efd91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d49686d # load x3 with value 0x0d49686d
sw x3, 0(x2) # store 0x0d49686d in memory
flh f15, 0(x2) # load 0x0d49686d from memory into f15
li x3, 0x56662c04 # load x3 with value 0x56662c04
sw x3, 0(x2) # store 0x56662c04 in memory
flh f24, 0(x2) # load 0x56662c04 from memory into f24
fsgnjx.h f30, f15, f24 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xb64a18b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b636699 # load x3 with value 0x4b636699
sw x3, 0(x2) # store 0x4b636699 in memory
flh f4, 0(x2) # load 0x4b636699 from memory into f4
li x3, 0x163125f0 # load x3 with value 0x163125f0
sw x3, 0(x2) # store 0x163125f0 in memory
flh f16, 0(x2) # load 0x163125f0 from memory into f16
fsgnjx.h f31, f4, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x18, 0x12083157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b2925d8 # load x3 with value 0x3b2925d8
sw x3, 0(x2) # store 0x3b2925d8 in memory
flh f0, 0(x2) # load 0x3b2925d8 from memory into f0
li x3, 0x3f83be97 # load x3 with value 0x3f83be97
sw x3, 0(x2) # store 0x3f83be97 in memory
flh f15, 0(x2) # load 0x3f83be97 from memory into f15
fsgnjx.h f18, f0, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x26, 0xd6f16158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57ec021c # load x3 with value 0x57ec021c
sw x3, 0(x2) # store 0x57ec021c in memory
flh f1, 0(x2) # load 0x57ec021c from memory into f1
li x3, 0xeb7f1409 # load x3 with value 0xeb7f1409
sw x3, 0(x2) # store 0xeb7f1409 in memory
flh f12, 0(x2) # load 0xeb7f1409 from memory into f12
fsgnjx.h f26, f1, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x27, 0xecc924c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0970506 # load x3 with value 0xb0970506
sw x3, 0(x2) # store 0xb0970506 in memory
flh f2, 0(x2) # load 0xb0970506 from memory into f2
li x3, 0x723ab937 # load x3 with value 0x723ab937
sw x3, 0(x2) # store 0x723ab937 in memory
flh f9, 0(x2) # load 0x723ab937 from memory into f9
fsgnjx.h f27, f2, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x3, 0xbf921290 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70031345 # load x3 with value 0x70031345
sw x3, 0(x2) # store 0x70031345 in memory
flh f3, 0(x2) # load 0x70031345 from memory into f3
li x3, 0x4c2a7f60 # load x3 with value 0x4c2a7f60
sw x3, 0(x2) # store 0x4c2a7f60 in memory
flh f15, 0(x2) # load 0x4c2a7f60 from memory into f15
fsgnjx.h f3, f3, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x11, 0x6dd14b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda0ee54d # load x3 with value 0xda0ee54d
sw x3, 0(x2) # store 0xda0ee54d in memory
flh f4, 0(x2) # load 0xda0ee54d from memory into f4
li x3, 0x523abaa9 # load x3 with value 0x523abaa9
sw x3, 0(x2) # store 0x523abaa9 in memory
flh f28, 0(x2) # load 0x523abaa9 from memory into f28
fsgnjx.h f11, f4, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x10, 0x61bba09a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb521105b # load x3 with value 0xb521105b
sw x3, 0(x2) # store 0xb521105b in memory
flh f5, 0(x2) # load 0xb521105b from memory into f5
li x3, 0x5eca3b9a # load x3 with value 0x5eca3b9a
sw x3, 0(x2) # store 0x5eca3b9a in memory
flh f19, 0(x2) # load 0x5eca3b9a from memory into f19
fsgnjx.h f10, f5, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x19, 0x20534448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ce5149d # load x3 with value 0x8ce5149d
sw x3, 0(x2) # store 0x8ce5149d in memory
flh f6, 0(x2) # load 0x8ce5149d from memory into f6
li x3, 0xe0a84430 # load x3 with value 0xe0a84430
sw x3, 0(x2) # store 0xe0a84430 in memory
flh f4, 0(x2) # load 0xe0a84430 from memory into f4
fsgnjx.h f19, f6, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x5, 0xa267516a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea50b919 # load x3 with value 0xea50b919
sw x3, 0(x2) # store 0xea50b919 in memory
flh f7, 0(x2) # load 0xea50b919 from memory into f7
li x3, 0xbe71044b # load x3 with value 0xbe71044b
sw x3, 0(x2) # store 0xbe71044b in memory
flh f29, 0(x2) # load 0xbe71044b from memory into f29
fsgnjx.h f5, f7, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x10, 0x8d7f7de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9691343 # load x3 with value 0xf9691343
sw x3, 0(x2) # store 0xf9691343 in memory
flh f8, 0(x2) # load 0xf9691343 from memory into f8
li x3, 0xc2d92b82 # load x3 with value 0xc2d92b82
sw x3, 0(x2) # store 0xc2d92b82 in memory
flh f25, 0(x2) # load 0xc2d92b82 from memory into f25
fsgnjx.h f10, f8, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x12, 0x2696a133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6e809ab # load x3 with value 0xd6e809ab
sw x3, 0(x2) # store 0xd6e809ab in memory
flh f9, 0(x2) # load 0xd6e809ab from memory into f9
li x3, 0x3d6a8150 # load x3 with value 0x3d6a8150
sw x3, 0(x2) # store 0x3d6a8150 in memory
flh f20, 0(x2) # load 0x3d6a8150 from memory into f20
fsgnjx.h f12, f9, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x22, 0xc7fa08cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6159af7a # load x3 with value 0x6159af7a
sw x3, 0(x2) # store 0x6159af7a in memory
flh f10, 0(x2) # load 0x6159af7a from memory into f10
li x3, 0x5c7f4bd4 # load x3 with value 0x5c7f4bd4
sw x3, 0(x2) # store 0x5c7f4bd4 in memory
flh f27, 0(x2) # load 0x5c7f4bd4 from memory into f27
fsgnjx.h f22, f10, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x17, 0x6dff6446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84c56727 # load x3 with value 0x84c56727
sw x3, 0(x2) # store 0x84c56727 in memory
flh f11, 0(x2) # load 0x84c56727 from memory into f11
li x3, 0x0fef8212 # load x3 with value 0x0fef8212
sw x3, 0(x2) # store 0x0fef8212 in memory
flh f13, 0(x2) # load 0x0fef8212 from memory into f13
fsgnjx.h f17, f11, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x3, 0x75034acf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3abc22fa # load x3 with value 0x3abc22fa
sw x3, 0(x2) # store 0x3abc22fa in memory
flh f12, 0(x2) # load 0x3abc22fa from memory into f12
li x3, 0x7864407d # load x3 with value 0x7864407d
sw x3, 0(x2) # store 0x7864407d in memory
flh f20, 0(x2) # load 0x7864407d from memory into f20
fsgnjx.h f3, f12, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x5, 0xc3807c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46055372 # load x3 with value 0x46055372
sw x3, 0(x2) # store 0x46055372 in memory
flh f13, 0(x2) # load 0x46055372 from memory into f13
li x3, 0x8e63e940 # load x3 with value 0x8e63e940
sw x3, 0(x2) # store 0x8e63e940 in memory
flh f8, 0(x2) # load 0x8e63e940 from memory into f8
fsgnjx.h f5, f13, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0xd5f5cb36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b92bfff # load x3 with value 0x0b92bfff
sw x3, 0(x2) # store 0x0b92bfff in memory
flh f14, 0(x2) # load 0x0b92bfff from memory into f14
li x3, 0x145f89ef # load x3 with value 0x145f89ef
sw x3, 0(x2) # store 0x145f89ef in memory
flh f13, 0(x2) # load 0x145f89ef from memory into f13
fsgnjx.h f18, f14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x13, 0x40b044cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa858f79d # load x3 with value 0xa858f79d
sw x3, 0(x2) # store 0xa858f79d in memory
flh f15, 0(x2) # load 0xa858f79d from memory into f15
li x3, 0xec21d2a9 # load x3 with value 0xec21d2a9
sw x3, 0(x2) # store 0xec21d2a9 in memory
flh f27, 0(x2) # load 0xec21d2a9 from memory into f27
fsgnjx.h f13, f15, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x23, 0x139ae49b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87137ad7 # load x3 with value 0x87137ad7
sw x3, 0(x2) # store 0x87137ad7 in memory
flh f16, 0(x2) # load 0x87137ad7 from memory into f16
li x3, 0x88826e1b # load x3 with value 0x88826e1b
sw x3, 0(x2) # store 0x88826e1b in memory
flh f25, 0(x2) # load 0x88826e1b from memory into f25
fsgnjx.h f23, f16, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x6, 0x2ff942ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe79449e0 # load x3 with value 0xe79449e0
sw x3, 0(x2) # store 0xe79449e0 in memory
flh f17, 0(x2) # load 0xe79449e0 from memory into f17
li x3, 0x9f7afadc # load x3 with value 0x9f7afadc
sw x3, 0(x2) # store 0x9f7afadc in memory
flh f1, 0(x2) # load 0x9f7afadc from memory into f1
fsgnjx.h f6, f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x26, 0xb33dc5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd7af41f # load x3 with value 0xcd7af41f
sw x3, 0(x2) # store 0xcd7af41f in memory
flh f18, 0(x2) # load 0xcd7af41f from memory into f18
li x3, 0xdfefadd0 # load x3 with value 0xdfefadd0
sw x3, 0(x2) # store 0xdfefadd0 in memory
flh f9, 0(x2) # load 0xdfefadd0 from memory into f9
fsgnjx.h f26, f18, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x25, 0x9665e50e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x801d1193 # load x3 with value 0x801d1193
sw x3, 0(x2) # store 0x801d1193 in memory
flh f19, 0(x2) # load 0x801d1193 from memory into f19
li x3, 0xba2c679e # load x3 with value 0xba2c679e
sw x3, 0(x2) # store 0xba2c679e in memory
flh f10, 0(x2) # load 0xba2c679e from memory into f10
fsgnjx.h f25, f19, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x18, 0x6f1e807f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8641d51e # load x3 with value 0x8641d51e
sw x3, 0(x2) # store 0x8641d51e in memory
flh f20, 0(x2) # load 0x8641d51e from memory into f20
li x3, 0xebcc0bb2 # load x3 with value 0xebcc0bb2
sw x3, 0(x2) # store 0xebcc0bb2 in memory
flh f23, 0(x2) # load 0xebcc0bb2 from memory into f23
fsgnjx.h f18, f20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x22, 0x89d436bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b00e183 # load x3 with value 0x4b00e183
sw x3, 0(x2) # store 0x4b00e183 in memory
flh f21, 0(x2) # load 0x4b00e183 from memory into f21
li x3, 0xf5e6c22c # load x3 with value 0xf5e6c22c
sw x3, 0(x2) # store 0xf5e6c22c in memory
flh f30, 0(x2) # load 0xf5e6c22c from memory into f30
fsgnjx.h f22, f21, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x6, 0x1d02a688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5576eee9 # load x3 with value 0x5576eee9
sw x3, 0(x2) # store 0x5576eee9 in memory
flh f22, 0(x2) # load 0x5576eee9 from memory into f22
li x3, 0xfae23d57 # load x3 with value 0xfae23d57
sw x3, 0(x2) # store 0xfae23d57 in memory
flh f20, 0(x2) # load 0xfae23d57 from memory into f20
fsgnjx.h f6, f22, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x14, 0x1f739ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16810732 # load x3 with value 0x16810732
sw x3, 0(x2) # store 0x16810732 in memory
flh f23, 0(x2) # load 0x16810732 from memory into f23
li x3, 0xef85e969 # load x3 with value 0xef85e969
sw x3, 0(x2) # store 0xef85e969 in memory
flh f24, 0(x2) # load 0xef85e969 from memory into f24
fsgnjx.h f14, f23, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x15, 0xf3db5ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa3973f6 # load x3 with value 0xaa3973f6
sw x3, 0(x2) # store 0xaa3973f6 in memory
flh f24, 0(x2) # load 0xaa3973f6 from memory into f24
li x3, 0xf6e15f1c # load x3 with value 0xf6e15f1c
sw x3, 0(x2) # store 0xf6e15f1c in memory
flh f5, 0(x2) # load 0xf6e15f1c from memory into f5
fsgnjx.h f15, f24, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x19, 0x788f1f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5d3a67a # load x3 with value 0xb5d3a67a
sw x3, 0(x2) # store 0xb5d3a67a in memory
flh f25, 0(x2) # load 0xb5d3a67a from memory into f25
li x3, 0x2a16f657 # load x3 with value 0x2a16f657
sw x3, 0(x2) # store 0x2a16f657 in memory
flh f20, 0(x2) # load 0x2a16f657 from memory into f20
fsgnjx.h f19, f25, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x3, 0x08e95335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61398f60 # load x3 with value 0x61398f60
sw x3, 0(x2) # store 0x61398f60 in memory
flh f26, 0(x2) # load 0x61398f60 from memory into f26
li x3, 0x001a7b8f # load x3 with value 0x001a7b8f
sw x3, 0(x2) # store 0x001a7b8f in memory
flh f4, 0(x2) # load 0x001a7b8f from memory into f4
fsgnjx.h f3, f26, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x29, 0x2d2b6d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf030ba59 # load x3 with value 0xf030ba59
sw x3, 0(x2) # store 0xf030ba59 in memory
flh f27, 0(x2) # load 0xf030ba59 from memory into f27
li x3, 0xb3527fa1 # load x3 with value 0xb3527fa1
sw x3, 0(x2) # store 0xb3527fa1 in memory
flh f4, 0(x2) # load 0xb3527fa1 from memory into f4
fsgnjx.h f29, f27, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x13, 0x7239faca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2099d92a # load x3 with value 0x2099d92a
sw x3, 0(x2) # store 0x2099d92a in memory
flh f28, 0(x2) # load 0x2099d92a from memory into f28
li x3, 0x8325e0f0 # load x3 with value 0x8325e0f0
sw x3, 0(x2) # store 0x8325e0f0 in memory
flh f14, 0(x2) # load 0x8325e0f0 from memory into f14
fsgnjx.h f13, f28, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x21, 0x0fc62bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x602ed663 # load x3 with value 0x602ed663
sw x3, 0(x2) # store 0x602ed663 in memory
flh f29, 0(x2) # load 0x602ed663 from memory into f29
li x3, 0xb7a1d60a # load x3 with value 0xb7a1d60a
sw x3, 0(x2) # store 0xb7a1d60a in memory
flh f11, 0(x2) # load 0xb7a1d60a from memory into f11
fsgnjx.h f21, f29, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x6, 0xa7346e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7184ea0 # load x3 with value 0xb7184ea0
sw x3, 0(x2) # store 0xb7184ea0 in memory
flh f30, 0(x2) # load 0xb7184ea0 from memory into f30
li x3, 0xf8b6b1d3 # load x3 with value 0xf8b6b1d3
sw x3, 0(x2) # store 0xf8b6b1d3 in memory
flh f16, 0(x2) # load 0xf8b6b1d3 from memory into f16
fsgnjx.h f6, f30, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x15, 0x56da863e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ee9720a # load x3 with value 0x4ee9720a
sw x3, 0(x2) # store 0x4ee9720a in memory
flh f31, 0(x2) # load 0x4ee9720a from memory into f31
li x3, 0xbdd2ad42 # load x3 with value 0xbdd2ad42
sw x3, 0(x2) # store 0xbdd2ad42 in memory
flh f13, 0(x2) # load 0xbdd2ad42 from memory into f13
fsgnjx.h f15, f31, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x30, 0x1e7142d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86d75fd1 # load x3 with value 0x86d75fd1
sw x3, 0(x2) # store 0x86d75fd1 in memory
flh f24, 0(x2) # load 0x86d75fd1 from memory into f24
li x3, 0x08dc4ca3 # load x3 with value 0x08dc4ca3
sw x3, 0(x2) # store 0x08dc4ca3 in memory
flh f0, 0(x2) # load 0x08dc4ca3 from memory into f0
fsgnjx.h f30, f24, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x24, 0x11c193da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0457971 # load x3 with value 0xe0457971
sw x3, 0(x2) # store 0xe0457971 in memory
flh f19, 0(x2) # load 0xe0457971 from memory into f19
li x3, 0xc3e75b95 # load x3 with value 0xc3e75b95
sw x3, 0(x2) # store 0xc3e75b95 in memory
flh f1, 0(x2) # load 0xc3e75b95 from memory into f1
fsgnjx.h f24, f19, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x4, 0xc9f5fef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d238421 # load x3 with value 0x3d238421
sw x3, 0(x2) # store 0x3d238421 in memory
flh f19, 0(x2) # load 0x3d238421 from memory into f19
li x3, 0x9c2d0976 # load x3 with value 0x9c2d0976
sw x3, 0(x2) # store 0x9c2d0976 in memory
flh f2, 0(x2) # load 0x9c2d0976 from memory into f2
fsgnjx.h f4, f19, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x7, 0xd3145f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a5dfd48 # load x3 with value 0x2a5dfd48
sw x3, 0(x2) # store 0x2a5dfd48 in memory
flh f27, 0(x2) # load 0x2a5dfd48 from memory into f27
li x3, 0x886c6e70 # load x3 with value 0x886c6e70
sw x3, 0(x2) # store 0x886c6e70 in memory
flh f3, 0(x2) # load 0x886c6e70 from memory into f3
fsgnjx.h f7, f27, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x30, 0x16175a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26b1d5d5 # load x3 with value 0x26b1d5d5
sw x3, 0(x2) # store 0x26b1d5d5 in memory
flh f16, 0(x2) # load 0x26b1d5d5 from memory into f16
li x3, 0x507c0352 # load x3 with value 0x507c0352
sw x3, 0(x2) # store 0x507c0352 in memory
flh f4, 0(x2) # load 0x507c0352 from memory into f4
fsgnjx.h f30, f16, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x2, 0x641b46c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1487324 # load x3 with value 0xa1487324
sw x3, 0(x2) # store 0xa1487324 in memory
flh f10, 0(x2) # load 0xa1487324 from memory into f10
li x3, 0x1127391e # load x3 with value 0x1127391e
sw x3, 0(x2) # store 0x1127391e in memory
flh f5, 0(x2) # load 0x1127391e from memory into f5
fsgnjx.h f2, f10, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x4, 0xdd525e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x183dd622 # load x3 with value 0x183dd622
sw x3, 0(x2) # store 0x183dd622 in memory
flh f18, 0(x2) # load 0x183dd622 from memory into f18
li x3, 0x45f7bf9b # load x3 with value 0x45f7bf9b
sw x3, 0(x2) # store 0x45f7bf9b in memory
flh f6, 0(x2) # load 0x45f7bf9b from memory into f6
fsgnjx.h f4, f18, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x24, 0x0f278779 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bb48986 # load x3 with value 0x2bb48986
sw x3, 0(x2) # store 0x2bb48986 in memory
flh f30, 0(x2) # load 0x2bb48986 from memory into f30
li x3, 0xd637b99d # load x3 with value 0xd637b99d
sw x3, 0(x2) # store 0xd637b99d in memory
flh f7, 0(x2) # load 0xd637b99d from memory into f7
fsgnjx.h f24, f30, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x14, 0x8c876730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92ec9f0d # load x3 with value 0x92ec9f0d
sw x3, 0(x2) # store 0x92ec9f0d in memory
flh f10, 0(x2) # load 0x92ec9f0d from memory into f10
li x3, 0x618a7cdc # load x3 with value 0x618a7cdc
sw x3, 0(x2) # store 0x618a7cdc in memory
flh f8, 0(x2) # load 0x618a7cdc from memory into f8
fsgnjx.h f14, f10, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x29, 0x1c64bca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x039be4e6 # load x3 with value 0x039be4e6
sw x3, 0(x2) # store 0x039be4e6 in memory
flh f25, 0(x2) # load 0x039be4e6 from memory into f25
li x3, 0xd9a81ae0 # load x3 with value 0xd9a81ae0
sw x3, 0(x2) # store 0xd9a81ae0 in memory
flh f9, 0(x2) # load 0xd9a81ae0 from memory into f9
fsgnjx.h f29, f25, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x8, 0x96b4636a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf45b4d22 # load x3 with value 0xf45b4d22
sw x3, 0(x2) # store 0xf45b4d22 in memory
flh f7, 0(x2) # load 0xf45b4d22 from memory into f7
li x3, 0xeded30cd # load x3 with value 0xeded30cd
sw x3, 0(x2) # store 0xeded30cd in memory
flh f10, 0(x2) # load 0xeded30cd from memory into f10
fsgnjx.h f8, f7, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x8, 0x77ce8e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfde77eb # load x3 with value 0xdfde77eb
sw x3, 0(x2) # store 0xdfde77eb in memory
flh f25, 0(x2) # load 0xdfde77eb from memory into f25
li x3, 0xfd88accb # load x3 with value 0xfd88accb
sw x3, 0(x2) # store 0xfd88accb in memory
flh f11, 0(x2) # load 0xfd88accb from memory into f11
fsgnjx.h f8, f25, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x8, 0x10160ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c54cb05 # load x3 with value 0x8c54cb05
sw x3, 0(x2) # store 0x8c54cb05 in memory
flh f17, 0(x2) # load 0x8c54cb05 from memory into f17
li x3, 0x238dc2c2 # load x3 with value 0x238dc2c2
sw x3, 0(x2) # store 0x238dc2c2 in memory
flh f12, 0(x2) # load 0x238dc2c2 from memory into f12
fsgnjx.h f8, f17, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x14, 0xef8a0f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8122852a # load x3 with value 0x8122852a
sw x3, 0(x2) # store 0x8122852a in memory
flh f2, 0(x2) # load 0x8122852a from memory into f2
li x3, 0x31eb83d3 # load x3 with value 0x31eb83d3
sw x3, 0(x2) # store 0x31eb83d3 in memory
flh f13, 0(x2) # load 0x31eb83d3 from memory into f13
fsgnjx.h f14, f2, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x17, 0xa00fbb38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd4426ab # load x3 with value 0xdd4426ab
sw x3, 0(x2) # store 0xdd4426ab in memory
flh f5, 0(x2) # load 0xdd4426ab from memory into f5
li x3, 0xe08ac269 # load x3 with value 0xe08ac269
sw x3, 0(x2) # store 0xe08ac269 in memory
flh f14, 0(x2) # load 0xe08ac269 from memory into f14
fsgnjx.h f17, f5, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x24, 0x80c96489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x587b4c41 # load x3 with value 0x587b4c41
sw x3, 0(x2) # store 0x587b4c41 in memory
flh f19, 0(x2) # load 0x587b4c41 from memory into f19
li x3, 0x45c92a19 # load x3 with value 0x45c92a19
sw x3, 0(x2) # store 0x45c92a19 in memory
flh f15, 0(x2) # load 0x45c92a19 from memory into f15
fsgnjx.h f24, f19, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x24, 0x5358ecbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fbc51c8 # load x3 with value 0x3fbc51c8
sw x3, 0(x2) # store 0x3fbc51c8 in memory
flh f21, 0(x2) # load 0x3fbc51c8 from memory into f21
li x3, 0x2a366f61 # load x3 with value 0x2a366f61
sw x3, 0(x2) # store 0x2a366f61 in memory
flh f16, 0(x2) # load 0x2a366f61 from memory into f16
fsgnjx.h f24, f21, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x2, 0x6fe2d91d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3677457f # load x3 with value 0x3677457f
sw x3, 0(x2) # store 0x3677457f in memory
flh f12, 0(x2) # load 0x3677457f from memory into f12
li x3, 0xac5a779c # load x3 with value 0xac5a779c
sw x3, 0(x2) # store 0xac5a779c in memory
flh f17, 0(x2) # load 0xac5a779c from memory into f17
fsgnjx.h f2, f12, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x17, 0x369c055d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdac2ca01 # load x3 with value 0xdac2ca01
sw x3, 0(x2) # store 0xdac2ca01 in memory
flh f19, 0(x2) # load 0xdac2ca01 from memory into f19
li x3, 0xb4166004 # load x3 with value 0xb4166004
sw x3, 0(x2) # store 0xb4166004 in memory
flh f18, 0(x2) # load 0xb4166004 from memory into f18
fsgnjx.h f17, f19, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x21, 0x6e5e6c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6dbf320e # load x3 with value 0x6dbf320e
sw x3, 0(x2) # store 0x6dbf320e in memory
flh f25, 0(x2) # load 0x6dbf320e from memory into f25
li x3, 0x316932e7 # load x3 with value 0x316932e7
sw x3, 0(x2) # store 0x316932e7 in memory
flh f19, 0(x2) # load 0x316932e7 from memory into f19
fsgnjx.h f21, f25, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x23, 0x64a28977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x724c6234 # load x3 with value 0x724c6234
sw x3, 0(x2) # store 0x724c6234 in memory
flh f18, 0(x2) # load 0x724c6234 from memory into f18
li x3, 0x538d0a53 # load x3 with value 0x538d0a53
sw x3, 0(x2) # store 0x538d0a53 in memory
flh f20, 0(x2) # load 0x538d0a53 from memory into f20
fsgnjx.h f23, f18, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x11, 0x9bc45975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xceafcc2b # load x3 with value 0xceafcc2b
sw x3, 0(x2) # store 0xceafcc2b in memory
flh f27, 0(x2) # load 0xceafcc2b from memory into f27
li x3, 0xfb37342b # load x3 with value 0xfb37342b
sw x3, 0(x2) # store 0xfb37342b in memory
flh f21, 0(x2) # load 0xfb37342b from memory into f21
fsgnjx.h f11, f27, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x7, 0x5da26579 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d431ff7 # load x3 with value 0x3d431ff7
sw x3, 0(x2) # store 0x3d431ff7 in memory
flh f9, 0(x2) # load 0x3d431ff7 from memory into f9
li x3, 0x3eedec38 # load x3 with value 0x3eedec38
sw x3, 0(x2) # store 0x3eedec38 in memory
flh f22, 0(x2) # load 0x3eedec38 from memory into f22
fsgnjx.h f7, f9, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x27, 0xb3bea086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdf9b799 # load x3 with value 0xfdf9b799
sw x3, 0(x2) # store 0xfdf9b799 in memory
flh f6, 0(x2) # load 0xfdf9b799 from memory into f6
li x3, 0x43c32678 # load x3 with value 0x43c32678
sw x3, 0(x2) # store 0x43c32678 in memory
flh f23, 0(x2) # load 0x43c32678 from memory into f23
fsgnjx.h f27, f6, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x23, 0xfe1e1463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x235c0b13 # load x3 with value 0x235c0b13
sw x3, 0(x2) # store 0x235c0b13 in memory
flh f6, 0(x2) # load 0x235c0b13 from memory into f6
li x3, 0x9b0f97be # load x3 with value 0x9b0f97be
sw x3, 0(x2) # store 0x9b0f97be in memory
flh f24, 0(x2) # load 0x9b0f97be from memory into f24
fsgnjx.h f23, f6, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x31, 0x0ebd6570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52fa363a # load x3 with value 0x52fa363a
sw x3, 0(x2) # store 0x52fa363a in memory
flh f9, 0(x2) # load 0x52fa363a from memory into f9
li x3, 0x1c0c2539 # load x3 with value 0x1c0c2539
sw x3, 0(x2) # store 0x1c0c2539 in memory
flh f25, 0(x2) # load 0x1c0c2539 from memory into f25
fsgnjx.h f31, f9, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x4, 0x978c8490 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f04007d # load x3 with value 0x0f04007d
sw x3, 0(x2) # store 0x0f04007d in memory
flh f12, 0(x2) # load 0x0f04007d from memory into f12
li x3, 0xdf3074f9 # load x3 with value 0xdf3074f9
sw x3, 0(x2) # store 0xdf3074f9 in memory
flh f26, 0(x2) # load 0xdf3074f9 from memory into f26
fsgnjx.h f4, f12, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x30, 0xa37ac35b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5ad8e80 # load x3 with value 0xd5ad8e80
sw x3, 0(x2) # store 0xd5ad8e80 in memory
flh f2, 0(x2) # load 0xd5ad8e80 from memory into f2
li x3, 0x0def2c5e # load x3 with value 0x0def2c5e
sw x3, 0(x2) # store 0x0def2c5e in memory
flh f27, 0(x2) # load 0x0def2c5e from memory into f27
fsgnjx.h f30, f2, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0x47ee9a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ce8cdda # load x3 with value 0x1ce8cdda
sw x3, 0(x2) # store 0x1ce8cdda in memory
flh f15, 0(x2) # load 0x1ce8cdda from memory into f15
li x3, 0xbd9fbe0c # load x3 with value 0xbd9fbe0c
sw x3, 0(x2) # store 0xbd9fbe0c in memory
flh f28, 0(x2) # load 0xbd9fbe0c from memory into f28
fsgnjx.h f28, f15, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x17, 0xa05a1833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56ca2b11 # load x3 with value 0x56ca2b11
sw x3, 0(x2) # store 0x56ca2b11 in memory
flh f30, 0(x2) # load 0x56ca2b11 from memory into f30
li x3, 0x0731de36 # load x3 with value 0x0731de36
sw x3, 0(x2) # store 0x0731de36 in memory
flh f29, 0(x2) # load 0x0731de36 from memory into f29
fsgnjx.h f17, f30, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x3, 0xac8e4ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a149499 # load x3 with value 0x5a149499
sw x3, 0(x2) # store 0x5a149499 in memory
flh f21, 0(x2) # load 0x5a149499 from memory into f21
li x3, 0x677e9714 # load x3 with value 0x677e9714
sw x3, 0(x2) # store 0x677e9714 in memory
flh f30, 0(x2) # load 0x677e9714 from memory into f30
fsgnjx.h f3, f21, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x13, 0x054934b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20c3cd77 # load x3 with value 0x20c3cd77
sw x3, 0(x2) # store 0x20c3cd77 in memory
flh f7, 0(x2) # load 0x20c3cd77 from memory into f7
li x3, 0x2250ee99 # load x3 with value 0x2250ee99
sw x3, 0(x2) # store 0x2250ee99 in memory
flh f31, 0(x2) # load 0x2250ee99 from memory into f31
fsgnjx.h f13, f7, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
