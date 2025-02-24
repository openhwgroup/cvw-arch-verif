///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fcvt.s.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.539859
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
li x7, 0xd68fada6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fcvt.s.h f7, f13 # perform operation
fcvt.s.h f7, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x13, 0xbaeda7a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fcvt.s.h f13, f4 # perform operation
fcvt.s.h f13, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x14, 0x66552d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fcvt.s.h f14, f2 # perform operation
fcvt.s.h f14, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x11, 0xd6d488a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fcvt.s.h f11, f23 # perform operation
fcvt.s.h f11, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x24, 0x4f73afb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fcvt.s.h f24, f17 # perform operation
fcvt.s.h f24, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x14, 0xb5faf4cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fcvt.s.h f14, f28 # perform operation
fcvt.s.h f14, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x13, 0xa0d9ef8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fcvt.s.h f13, f17 # perform operation
fcvt.s.h f13, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x19, 0x789156ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fcvt.s.h f19, f8 # perform operation
fcvt.s.h f19, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x22, 0x569d817a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fcvt.s.h f22, f13 # perform operation
fcvt.s.h f22, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x9, 0x150875bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fcvt.s.h f9, f29 # perform operation
fcvt.s.h f9, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x22, 0x65057c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fcvt.s.h f22, f30 # perform operation
fcvt.s.h f22, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x31, 0x8c1d24c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fcvt.s.h f31, f21 # perform operation
fcvt.s.h f31, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x21, 0xa2a7b401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fcvt.s.h f21, f9 # perform operation
fcvt.s.h f21, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x13, 0xc3fd2b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fcvt.s.h f13, f23 # perform operation
fcvt.s.h f13, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x8, 0x67d4080e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fcvt.s.h f8, f9 # perform operation
fcvt.s.h f8, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x23, 0x4271132b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fcvt.s.h f23, f12 # perform operation
fcvt.s.h f23, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x24, 0x3bb795ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fcvt.s.h f24, f1 # perform operation
fcvt.s.h f24, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x13, 0x581b55b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fcvt.s.h f13, f7 # perform operation
fcvt.s.h f13, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x28, 0xcea98956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fcvt.s.h f28, f2 # perform operation
fcvt.s.h f28, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x14, 0xde0d1dab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fcvt.s.h f14, f22 # perform operation
fcvt.s.h f14, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x30, 0x29bd11d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fcvt.s.h f30, f10 # perform operation
fcvt.s.h f30, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x19, 0xb09e65f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fcvt.s.h f19, f20 # perform operation
fcvt.s.h f19, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x10, 0xcc338ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fcvt.s.h f10, f28 # perform operation
fcvt.s.h f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x13, 0x79556164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fcvt.s.h f13, f28 # perform operation
fcvt.s.h f13, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x14, 0x06e518f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fcvt.s.h f14, f13 # perform operation
fcvt.s.h f14, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x19, 0xd516bcae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fcvt.s.h f19, f14 # perform operation
fcvt.s.h f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x50fdd07b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb59b09d7 # load x3 with value 0xb59b09d7
sw x3, 0(x2) # store 0xb59b09d7 in memory
flh f13, 0(x2) # load 0xb59b09d7 from memory into f13
fcvt.s.h f0, f13 # perform operation
fcvt.s.h f0, f13 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x0bfaa880 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35094b47 # load x3 with value 0x35094b47
sw x3, 0(x2) # store 0x35094b47 in memory
flh f28, 0(x2) # load 0x35094b47 from memory into f28
fcvt.s.h f1, f28 # perform operation
fcvt.s.h f1, f28 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x805ea3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd23fbacf # load x3 with value 0xd23fbacf
sw x3, 0(x2) # store 0xd23fbacf in memory
flh f10, 0(x2) # load 0xd23fbacf from memory into f10
fcvt.s.h f2, f10 # perform operation
fcvt.s.h f2, f10 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xbdb6b30c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16ef5a1a # load x3 with value 0x16ef5a1a
sw x3, 0(x2) # store 0x16ef5a1a in memory
flh f6, 0(x2) # load 0x16ef5a1a from memory into f6
fcvt.s.h f3, f6 # perform operation
fcvt.s.h f3, f6 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xf6aa4a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc9b26ac # load x3 with value 0xfc9b26ac
sw x3, 0(x2) # store 0xfc9b26ac in memory
flh f20, 0(x2) # load 0xfc9b26ac from memory into f20
fcvt.s.h f4, f20 # perform operation
fcvt.s.h f4, f20 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xb78062be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd86d6332 # load x3 with value 0xd86d6332
sw x3, 0(x2) # store 0xd86d6332 in memory
flh f29, 0(x2) # load 0xd86d6332 from memory into f29
fcvt.s.h f5, f29 # perform operation
fcvt.s.h f5, f29 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x28527f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0731a118 # load x3 with value 0x0731a118
sw x3, 0(x2) # store 0x0731a118 in memory
flh f31, 0(x2) # load 0x0731a118 from memory into f31
fcvt.s.h f6, f31 # perform operation
fcvt.s.h f6, f31 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x38f06ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a32a851 # load x3 with value 0x2a32a851
sw x3, 0(x2) # store 0x2a32a851 in memory
flh f17, 0(x2) # load 0x2a32a851 from memory into f17
fcvt.s.h f7, f17 # perform operation
fcvt.s.h f7, f17 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x63e0f8ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbc9b307 # load x3 with value 0xcbc9b307
sw x3, 0(x2) # store 0xcbc9b307 in memory
flh f6, 0(x2) # load 0xcbc9b307 from memory into f6
fcvt.s.h f8, f6 # perform operation
fcvt.s.h f8, f6 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x764f8da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a26c30f # load x3 with value 0x2a26c30f
sw x3, 0(x2) # store 0x2a26c30f in memory
flh f22, 0(x2) # load 0x2a26c30f from memory into f22
fcvt.s.h f9, f22 # perform operation
fcvt.s.h f9, f22 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x36cdeaed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd541f1d2 # load x3 with value 0xd541f1d2
sw x3, 0(x2) # store 0xd541f1d2 in memory
flh f4, 0(x2) # load 0xd541f1d2 from memory into f4
fcvt.s.h f10, f4 # perform operation
fcvt.s.h f10, f4 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x9f9b6d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d8600e9 # load x3 with value 0x4d8600e9
sw x3, 0(x2) # store 0x4d8600e9 in memory
flh f20, 0(x2) # load 0x4d8600e9 from memory into f20
fcvt.s.h f11, f20 # perform operation
fcvt.s.h f11, f20 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x8d762295 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3405ef7a # load x3 with value 0x3405ef7a
sw x3, 0(x2) # store 0x3405ef7a in memory
flh f21, 0(x2) # load 0x3405ef7a from memory into f21
fcvt.s.h f12, f21 # perform operation
fcvt.s.h f12, f21 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x6641333d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0908bbf8 # load x3 with value 0x0908bbf8
sw x3, 0(x2) # store 0x0908bbf8 in memory
flh f17, 0(x2) # load 0x0908bbf8 from memory into f17
fcvt.s.h f13, f17 # perform operation
fcvt.s.h f13, f17 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x38e7c2f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9815265 # load x3 with value 0xc9815265
sw x3, 0(x2) # store 0xc9815265 in memory
flh f10, 0(x2) # load 0xc9815265 from memory into f10
fcvt.s.h f14, f10 # perform operation
fcvt.s.h f14, f10 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xa12a8d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60be6dea # load x3 with value 0x60be6dea
sw x3, 0(x2) # store 0x60be6dea in memory
flh f31, 0(x2) # load 0x60be6dea from memory into f31
fcvt.s.h f15, f31 # perform operation
fcvt.s.h f15, f31 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x7f52994f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9612b10 # load x3 with value 0xc9612b10
sw x3, 0(x2) # store 0xc9612b10 in memory
flh f7, 0(x2) # load 0xc9612b10 from memory into f7
fcvt.s.h f16, f7 # perform operation
fcvt.s.h f16, f7 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x7f33b62d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8b45b05 # load x3 with value 0xd8b45b05
sw x3, 0(x2) # store 0xd8b45b05 in memory
flh f9, 0(x2) # load 0xd8b45b05 from memory into f9
fcvt.s.h f17, f9 # perform operation
fcvt.s.h f17, f9 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x5360094c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf84da7c5 # load x3 with value 0xf84da7c5
sw x3, 0(x2) # store 0xf84da7c5 in memory
flh f2, 0(x2) # load 0xf84da7c5 from memory into f2
fcvt.s.h f18, f2 # perform operation
fcvt.s.h f18, f2 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x62a44b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac7d4afc # load x3 with value 0xac7d4afc
sw x3, 0(x2) # store 0xac7d4afc in memory
flh f19, 0(x2) # load 0xac7d4afc from memory into f19
fcvt.s.h f19, f19 # perform operation
fcvt.s.h f19, f19 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xab8aa3dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a7c2ed6 # load x3 with value 0x8a7c2ed6
sw x3, 0(x2) # store 0x8a7c2ed6 in memory
flh f2, 0(x2) # load 0x8a7c2ed6 from memory into f2
fcvt.s.h f20, f2 # perform operation
fcvt.s.h f20, f2 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x1516fa5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51bb6dd9 # load x3 with value 0x51bb6dd9
sw x3, 0(x2) # store 0x51bb6dd9 in memory
flh f5, 0(x2) # load 0x51bb6dd9 from memory into f5
fcvt.s.h f21, f5 # perform operation
fcvt.s.h f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xd8870207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e548a26 # load x3 with value 0x0e548a26
sw x3, 0(x2) # store 0x0e548a26 in memory
flh f29, 0(x2) # load 0x0e548a26 from memory into f29
fcvt.s.h f22, f29 # perform operation
fcvt.s.h f22, f29 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xbccf3b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x373edeae # load x3 with value 0x373edeae
sw x3, 0(x2) # store 0x373edeae in memory
flh f1, 0(x2) # load 0x373edeae from memory into f1
fcvt.s.h f23, f1 # perform operation
fcvt.s.h f23, f1 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x193bf4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa67bcc3f # load x3 with value 0xa67bcc3f
sw x3, 0(x2) # store 0xa67bcc3f in memory
flh f3, 0(x2) # load 0xa67bcc3f from memory into f3
fcvt.s.h f24, f3 # perform operation
fcvt.s.h f24, f3 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xd05d8695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17e22614 # load x3 with value 0x17e22614
sw x3, 0(x2) # store 0x17e22614 in memory
flh f13, 0(x2) # load 0x17e22614 from memory into f13
fcvt.s.h f25, f13 # perform operation
fcvt.s.h f25, f13 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x93488935 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e382f75 # load x3 with value 0x1e382f75
sw x3, 0(x2) # store 0x1e382f75 in memory
flh f9, 0(x2) # load 0x1e382f75 from memory into f9
fcvt.s.h f26, f9 # perform operation
fcvt.s.h f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xfaceaeb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1501e311 # load x3 with value 0x1501e311
sw x3, 0(x2) # store 0x1501e311 in memory
flh f17, 0(x2) # load 0x1501e311 from memory into f17
fcvt.s.h f27, f17 # perform operation
fcvt.s.h f27, f17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x086d0a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f9d46db # load x3 with value 0x9f9d46db
sw x3, 0(x2) # store 0x9f9d46db in memory
flh f12, 0(x2) # load 0x9f9d46db from memory into f12
fcvt.s.h f28, f12 # perform operation
fcvt.s.h f28, f12 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x9d6cd363 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f6a5fbf # load x3 with value 0x9f6a5fbf
sw x3, 0(x2) # store 0x9f6a5fbf in memory
flh f1, 0(x2) # load 0x9f6a5fbf from memory into f1
fcvt.s.h f29, f1 # perform operation
fcvt.s.h f29, f1 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xba1420fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96d8b846 # load x3 with value 0x96d8b846
sw x3, 0(x2) # store 0x96d8b846 in memory
flh f25, 0(x2) # load 0x96d8b846 from memory into f25
fcvt.s.h f30, f25 # perform operation
fcvt.s.h f30, f25 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x67f2c00f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7696900d # load x3 with value 0x7696900d
sw x3, 0(x2) # store 0x7696900d in memory
flh f16, 0(x2) # load 0x7696900d from memory into f16
fcvt.s.h f31, f16 # perform operation
fcvt.s.h f31, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x25, 0xf952854f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x502d64e9 # load x3 with value 0x502d64e9
sw x3, 0(x2) # store 0x502d64e9 in memory
flh f0, 0(x2) # load 0x502d64e9 from memory into f0
fcvt.s.h f25, f0 # perform operation
fcvt.s.h f25, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x1, 0xa5d9fef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab95cf5e # load x3 with value 0xab95cf5e
sw x3, 0(x2) # store 0xab95cf5e in memory
flh f1, 0(x2) # load 0xab95cf5e from memory into f1
fcvt.s.h f1, f1 # perform operation
fcvt.s.h f1, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x8, 0xce81f59f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf0f0a46 # load x3 with value 0xbf0f0a46
sw x3, 0(x2) # store 0xbf0f0a46 in memory
flh f2, 0(x2) # load 0xbf0f0a46 from memory into f2
fcvt.s.h f8, f2 # perform operation
fcvt.s.h f8, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x3, 0x56d89b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f0c07f9 # load x3 with value 0x8f0c07f9
sw x3, 0(x2) # store 0x8f0c07f9 in memory
flh f3, 0(x2) # load 0x8f0c07f9 from memory into f3
fcvt.s.h f3, f3 # perform operation
fcvt.s.h f3, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x20, 0x9ff59b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97fd4cb9 # load x3 with value 0x97fd4cb9
sw x3, 0(x2) # store 0x97fd4cb9 in memory
flh f4, 0(x2) # load 0x97fd4cb9 from memory into f4
fcvt.s.h f20, f4 # perform operation
fcvt.s.h f20, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x16, 0xc26efac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x943a7053 # load x3 with value 0x943a7053
sw x3, 0(x2) # store 0x943a7053 in memory
flh f5, 0(x2) # load 0x943a7053 from memory into f5
fcvt.s.h f16, f5 # perform operation
fcvt.s.h f16, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x26, 0xd3dd8b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60214d66 # load x3 with value 0x60214d66
sw x3, 0(x2) # store 0x60214d66 in memory
flh f6, 0(x2) # load 0x60214d66 from memory into f6
fcvt.s.h f26, f6 # perform operation
fcvt.s.h f26, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x24, 0x09d706e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xada432c3 # load x3 with value 0xada432c3
sw x3, 0(x2) # store 0xada432c3 in memory
flh f7, 0(x2) # load 0xada432c3 from memory into f7
fcvt.s.h f24, f7 # perform operation
fcvt.s.h f24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x2, 0x45c324b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61a8cf2a # load x3 with value 0x61a8cf2a
sw x3, 0(x2) # store 0x61a8cf2a in memory
flh f8, 0(x2) # load 0x61a8cf2a from memory into f8
fcvt.s.h f2, f8 # perform operation
fcvt.s.h f2, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x16, 0x33e73a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8f441f9 # load x3 with value 0xa8f441f9
sw x3, 0(x2) # store 0xa8f441f9 in memory
flh f9, 0(x2) # load 0xa8f441f9 from memory into f9
fcvt.s.h f16, f9 # perform operation
fcvt.s.h f16, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x20, 0x51cc045f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55ca6db2 # load x3 with value 0x55ca6db2
sw x3, 0(x2) # store 0x55ca6db2 in memory
flh f10, 0(x2) # load 0x55ca6db2 from memory into f10
fcvt.s.h f20, f10 # perform operation
fcvt.s.h f20, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x29, 0x3dbab18e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ee75a7d # load x3 with value 0x0ee75a7d
sw x3, 0(x2) # store 0x0ee75a7d in memory
flh f11, 0(x2) # load 0x0ee75a7d from memory into f11
fcvt.s.h f29, f11 # perform operation
fcvt.s.h f29, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x5, 0x95620884 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b4b2b50 # load x3 with value 0x5b4b2b50
sw x3, 0(x2) # store 0x5b4b2b50 in memory
flh f12, 0(x2) # load 0x5b4b2b50 from memory into f12
fcvt.s.h f5, f12 # perform operation
fcvt.s.h f5, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x17, 0xd0fb213a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf45a329a # load x3 with value 0xf45a329a
sw x3, 0(x2) # store 0xf45a329a in memory
flh f13, 0(x2) # load 0xf45a329a from memory into f13
fcvt.s.h f17, f13 # perform operation
fcvt.s.h f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x13, 0x55a0fa90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13cd568b # load x3 with value 0x13cd568b
sw x3, 0(x2) # store 0x13cd568b in memory
flh f14, 0(x2) # load 0x13cd568b from memory into f14
fcvt.s.h f13, f14 # perform operation
fcvt.s.h f13, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x15, 0x1b971879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb57441b9 # load x3 with value 0xb57441b9
sw x3, 0(x2) # store 0xb57441b9 in memory
flh f15, 0(x2) # load 0xb57441b9 from memory into f15
fcvt.s.h f15, f15 # perform operation
fcvt.s.h f15, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x16, 0x2b2aebe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x214c1587 # load x3 with value 0x214c1587
sw x3, 0(x2) # store 0x214c1587 in memory
flh f16, 0(x2) # load 0x214c1587 from memory into f16
fcvt.s.h f16, f16 # perform operation
fcvt.s.h f16, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x31, 0x849dc09c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22c765ab # load x3 with value 0x22c765ab
sw x3, 0(x2) # store 0x22c765ab in memory
flh f17, 0(x2) # load 0x22c765ab from memory into f17
fcvt.s.h f31, f17 # perform operation
fcvt.s.h f31, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x4, 0xe8c79fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f75cc03 # load x3 with value 0x3f75cc03
sw x3, 0(x2) # store 0x3f75cc03 in memory
flh f18, 0(x2) # load 0x3f75cc03 from memory into f18
fcvt.s.h f4, f18 # perform operation
fcvt.s.h f4, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x4, 0x6d396e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedb2dd89 # load x3 with value 0xedb2dd89
sw x3, 0(x2) # store 0xedb2dd89 in memory
flh f19, 0(x2) # load 0xedb2dd89 from memory into f19
fcvt.s.h f4, f19 # perform operation
fcvt.s.h f4, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x22, 0x8e644c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa86007fd # load x3 with value 0xa86007fd
sw x3, 0(x2) # store 0xa86007fd in memory
flh f20, 0(x2) # load 0xa86007fd from memory into f20
fcvt.s.h f22, f20 # perform operation
fcvt.s.h f22, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x23, 0x81b49dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x310cc63a # load x3 with value 0x310cc63a
sw x3, 0(x2) # store 0x310cc63a in memory
flh f21, 0(x2) # load 0x310cc63a from memory into f21
fcvt.s.h f23, f21 # perform operation
fcvt.s.h f23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x5, 0xb3d0e92b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46510a1e # load x3 with value 0x46510a1e
sw x3, 0(x2) # store 0x46510a1e in memory
flh f22, 0(x2) # load 0x46510a1e from memory into f22
fcvt.s.h f5, f22 # perform operation
fcvt.s.h f5, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x12, 0xf622755a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3f8ebef # load x3 with value 0xc3f8ebef
sw x3, 0(x2) # store 0xc3f8ebef in memory
flh f23, 0(x2) # load 0xc3f8ebef from memory into f23
fcvt.s.h f12, f23 # perform operation
fcvt.s.h f12, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x16, 0xbde734a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e5a7bef # load x3 with value 0x1e5a7bef
sw x3, 0(x2) # store 0x1e5a7bef in memory
flh f24, 0(x2) # load 0x1e5a7bef from memory into f24
fcvt.s.h f16, f24 # perform operation
fcvt.s.h f16, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0x1d0e41b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd797599d # load x3 with value 0xd797599d
sw x3, 0(x2) # store 0xd797599d in memory
flh f25, 0(x2) # load 0xd797599d from memory into f25
fcvt.s.h f18, f25 # perform operation
fcvt.s.h f18, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x27, 0x370dbf9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfac38a2a # load x3 with value 0xfac38a2a
sw x3, 0(x2) # store 0xfac38a2a in memory
flh f26, 0(x2) # load 0xfac38a2a from memory into f26
fcvt.s.h f27, f26 # perform operation
fcvt.s.h f27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x7, 0x9ed4e66f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x893825b2 # load x3 with value 0x893825b2
sw x3, 0(x2) # store 0x893825b2 in memory
flh f27, 0(x2) # load 0x893825b2 from memory into f27
fcvt.s.h f7, f27 # perform operation
fcvt.s.h f7, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x10, 0x68f2e3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7157be2 # load x3 with value 0xe7157be2
sw x3, 0(x2) # store 0xe7157be2 in memory
flh f28, 0(x2) # load 0xe7157be2 from memory into f28
fcvt.s.h f10, f28 # perform operation
fcvt.s.h f10, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x16, 0xb968b205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5114c43f # load x3 with value 0x5114c43f
sw x3, 0(x2) # store 0x5114c43f in memory
flh f29, 0(x2) # load 0x5114c43f from memory into f29
fcvt.s.h f16, f29 # perform operation
fcvt.s.h f16, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0x796b561b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa1ade98 # load x3 with value 0xaa1ade98
sw x3, 0(x2) # store 0xaa1ade98 in memory
flh f30, 0(x2) # load 0xaa1ade98 from memory into f30
fcvt.s.h f14, f30 # perform operation
fcvt.s.h f14, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x30, 0xd758e477 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc12dd267 # load x3 with value 0xc12dd267
sw x3, 0(x2) # store 0xc12dd267 in memory
flh f31, 0(x2) # load 0xc12dd267 from memory into f31
fcvt.s.h f30, f31 # perform operation
fcvt.s.h f30, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
