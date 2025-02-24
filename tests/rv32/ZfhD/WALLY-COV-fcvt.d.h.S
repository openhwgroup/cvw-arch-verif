///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfhD//WALLY-COV-fcvt.d.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.034608
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
li x1, 0x4df85198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sw x3, 0(x2) # store 0x0000000000000000 in memory
flh f11, 0(x2) # load 0x0000000000000000 from memory into f11
fcvt.d.h f1, f11 # perform operation
fcvt.d.h f1, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x30, 0x1f44e73c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008000 # load x3 with value 0x0000000000008000
sw x3, 0(x2) # store 0x0000000000008000 in memory
flh f27, 0(x2) # load 0x0000000000008000 from memory into f27
fcvt.d.h f30, f27 # perform operation
fcvt.d.h f30, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x28, 0x2263e8fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000003c00 # load x3 with value 0x0000000000003c00
sw x3, 0(x2) # store 0x0000000000003c00 in memory
flh f21, 0(x2) # load 0x0000000000003c00 from memory into f21
fcvt.d.h f28, f21 # perform operation
fcvt.d.h f28, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x1, 0xc6b0e799 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000bc00 # load x3 with value 0x000000000000bc00
sw x3, 0(x2) # store 0x000000000000bc00 in memory
flh f13, 0(x2) # load 0x000000000000bc00 from memory into f13
fcvt.d.h f1, f13 # perform operation
fcvt.d.h f1, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x6, 0x087b050e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000003e00 # load x3 with value 0x0000000000003e00
sw x3, 0(x2) # store 0x0000000000003e00 in memory
flh f16, 0(x2) # load 0x0000000000003e00 from memory into f16
fcvt.d.h f6, f16 # perform operation
fcvt.d.h f6, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x5, 0x927cd5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000be00 # load x3 with value 0x000000000000be00
sw x3, 0(x2) # store 0x000000000000be00 in memory
flh f4, 0(x2) # load 0x000000000000be00 from memory into f4
fcvt.d.h f5, f4 # perform operation
fcvt.d.h f5, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x15, 0x11f49f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000004000 # load x3 with value 0x0000000000004000
sw x3, 0(x2) # store 0x0000000000004000 in memory
flh f2, 0(x2) # load 0x0000000000004000 from memory into f2
fcvt.d.h f15, f2 # perform operation
fcvt.d.h f15, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x11, 0xafd94347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000c000 # load x3 with value 0x000000000000c000
sw x3, 0(x2) # store 0x000000000000c000 in memory
flh f29, 0(x2) # load 0x000000000000c000 from memory into f29
fcvt.d.h f11, f29 # perform operation
fcvt.d.h f11, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x14, 0x2d06cd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000400 # load x3 with value 0x0000000000000400
sw x3, 0(x2) # store 0x0000000000000400 in memory
flh f5, 0(x2) # load 0x0000000000000400 from memory into f5
fcvt.d.h f14, f5 # perform operation
fcvt.d.h f14, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x30, 0x45e97470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008400 # load x3 with value 0x0000000000008400
sw x3, 0(x2) # store 0x0000000000008400 in memory
flh f1, 0(x2) # load 0x0000000000008400 from memory into f1
fcvt.d.h f30, f1 # perform operation
fcvt.d.h f30, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x4, 0x5f198a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007bff # load x3 with value 0x0000000000007bff
sw x3, 0(x2) # store 0x0000000000007bff in memory
flh f11, 0(x2) # load 0x0000000000007bff from memory into f11
fcvt.d.h f4, f11 # perform operation
fcvt.d.h f4, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x31, 0x5c6a65ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000fbff # load x3 with value 0x000000000000fbff
sw x3, 0(x2) # store 0x000000000000fbff in memory
flh f12, 0(x2) # load 0x000000000000fbff from memory into f12
fcvt.d.h f31, f12 # perform operation
fcvt.d.h f31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x19, 0x4aeeb32b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000000003ff # load x3 with value 0x00000000000003ff
sw x3, 0(x2) # store 0x00000000000003ff in memory
flh f31, 0(x2) # load 0x00000000000003ff from memory into f31
fcvt.d.h f19, f31 # perform operation
fcvt.d.h f19, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x10, 0x35df9ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000000083ff # load x3 with value 0x00000000000083ff
sw x3, 0(x2) # store 0x00000000000083ff in memory
flh f28, 0(x2) # load 0x00000000000083ff from memory into f28
fcvt.d.h f10, f28 # perform operation
fcvt.d.h f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x24, 0xeccf06d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000200 # load x3 with value 0x0000000000000200
sw x3, 0(x2) # store 0x0000000000000200 in memory
flh f31, 0(x2) # load 0x0000000000000200 from memory into f31
fcvt.d.h f24, f31 # perform operation
fcvt.d.h f24, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x16, 0x8da7f118 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008200 # load x3 with value 0x0000000000008200
sw x3, 0(x2) # store 0x0000000000008200 in memory
flh f11, 0(x2) # load 0x0000000000008200 from memory into f11
fcvt.d.h f16, f11 # perform operation
fcvt.d.h f16, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x17, 0xe7ca8660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sw x3, 0(x2) # store 0x0000000000000001 in memory
flh f9, 0(x2) # load 0x0000000000000001 from memory into f9
fcvt.d.h f17, f9 # perform operation
fcvt.d.h f17, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x13, 0x63e39e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000008001 # load x3 with value 0x0000000000008001
sw x3, 0(x2) # store 0x0000000000008001 in memory
flh f23, 0(x2) # load 0x0000000000008001 from memory into f23
fcvt.d.h f13, f23 # perform operation
fcvt.d.h f13, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x14, 0x012e05db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007c00 # load x3 with value 0x0000000000007c00
sw x3, 0(x2) # store 0x0000000000007c00 in memory
flh f7, 0(x2) # load 0x0000000000007c00 from memory into f7
fcvt.d.h f14, f7 # perform operation
fcvt.d.h f14, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x5, 0x1c642fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000fc00 # load x3 with value 0x000000000000fc00
sw x3, 0(x2) # store 0x000000000000fc00 in memory
flh f25, 0(x2) # load 0x000000000000fc00 from memory into f25
fcvt.d.h f5, f25 # perform operation
fcvt.d.h f5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x9, 0xcf882299 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007e00 # load x3 with value 0x0000000000007e00
sw x3, 0(x2) # store 0x0000000000007e00 in memory
flh f30, 0(x2) # load 0x0000000000007e00 from memory into f30
fcvt.d.h f9, f30 # perform operation
fcvt.d.h f9, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x5, 0xd16ee98f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007fff # load x3 with value 0x0000000000007fff
sw x3, 0(x2) # store 0x0000000000007fff in memory
flh f1, 0(x2) # load 0x0000000000007fff from memory into f1
fcvt.d.h f5, f1 # perform operation
fcvt.d.h f5, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x16, 0x076e2851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007c01 # load x3 with value 0x0000000000007c01
sw x3, 0(x2) # store 0x0000000000007c01 in memory
flh f13, 0(x2) # load 0x0000000000007c01 from memory into f13
fcvt.d.h f16, f13 # perform operation
fcvt.d.h f16, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x21, 0x39fbb800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000007dff # load x3 with value 0x0000000000007dff
sw x3, 0(x2) # store 0x0000000000007dff in memory
flh f4, 0(x2) # load 0x0000000000007dff from memory into f4
fcvt.d.h f21, f4 # perform operation
fcvt.d.h f21, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x29, 0x3a308f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000000058b4 # load x3 with value 0x00000000000058b4
sw x3, 0(x2) # store 0x00000000000058b4 in memory
flh f3, 0(x2) # load 0x00000000000058b4 from memory into f3
fcvt.d.h f29, f3 # perform operation
fcvt.d.h f29, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x24, 0xa94f9099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000000c93a # load x3 with value 0x000000000000c93a
sw x3, 0(x2) # store 0x000000000000c93a in memory
flh f10, 0(x2) # load 0x000000000000c93a from memory into f10
fcvt.d.h f24, f10 # perform operation
fcvt.d.h f24, f10 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x310e15f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000370ee754 # load x3 with value 0x00000000370ee754
sw x3, 0(x2) # store 0x00000000370ee754 in memory
flh f22, 0(x2) # load 0x00000000370ee754 from memory into f22
fcvt.d.h f0, f22 # perform operation
fcvt.d.h f0, f22 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xcac71d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000f1360a93 # load x3 with value 0x00000000f1360a93
sw x3, 0(x2) # store 0x00000000f1360a93 in memory
flh f19, 0(x2) # load 0x00000000f1360a93 from memory into f19
fcvt.d.h f1, f19 # perform operation
fcvt.d.h f1, f19 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x7a4f60f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000094f48754 # load x3 with value 0x0000000094f48754
sw x3, 0(x2) # store 0x0000000094f48754 in memory
flh f6, 0(x2) # load 0x0000000094f48754 from memory into f6
fcvt.d.h f2, f6 # perform operation
fcvt.d.h f2, f6 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x6494ab3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000b33e956b # load x3 with value 0x00000000b33e956b
sw x3, 0(x2) # store 0x00000000b33e956b in memory
flh f26, 0(x2) # load 0x00000000b33e956b from memory into f26
fcvt.d.h f3, f26 # perform operation
fcvt.d.h f3, f26 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x06d55aec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000004173a484 # load x3 with value 0x000000004173a484
sw x3, 0(x2) # store 0x000000004173a484 in memory
flh f25, 0(x2) # load 0x000000004173a484 from memory into f25
fcvt.d.h f4, f25 # perform operation
fcvt.d.h f4, f25 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xd51f302d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000dc2ea3d4 # load x3 with value 0x00000000dc2ea3d4
sw x3, 0(x2) # store 0x00000000dc2ea3d4 in memory
flh f14, 0(x2) # load 0x00000000dc2ea3d4 from memory into f14
fcvt.d.h f5, f14 # perform operation
fcvt.d.h f5, f14 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x2b01165b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000077681fb8 # load x3 with value 0x0000000077681fb8
sw x3, 0(x2) # store 0x0000000077681fb8 in memory
flh f2, 0(x2) # load 0x0000000077681fb8 from memory into f2
fcvt.d.h f6, f2 # perform operation
fcvt.d.h f6, f2 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xbb3d569a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000228d2ec8 # load x3 with value 0x00000000228d2ec8
sw x3, 0(x2) # store 0x00000000228d2ec8 in memory
flh f26, 0(x2) # load 0x00000000228d2ec8 from memory into f26
fcvt.d.h f7, f26 # perform operation
fcvt.d.h f7, f26 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xd4d67f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000a6f8e085 # load x3 with value 0x00000000a6f8e085
sw x3, 0(x2) # store 0x00000000a6f8e085 in memory
flh f3, 0(x2) # load 0x00000000a6f8e085 from memory into f3
fcvt.d.h f8, f3 # perform operation
fcvt.d.h f8, f3 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xa920a7ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000444ce2b # load x3 with value 0x000000000444ce2b
sw x3, 0(x2) # store 0x000000000444ce2b in memory
flh f23, 0(x2) # load 0x000000000444ce2b from memory into f23
fcvt.d.h f9, f23 # perform operation
fcvt.d.h f9, f23 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x7c7ab576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000bb59f25 # load x3 with value 0x000000000bb59f25
sw x3, 0(x2) # store 0x000000000bb59f25 in memory
flh f28, 0(x2) # load 0x000000000bb59f25 from memory into f28
fcvt.d.h f10, f28 # perform operation
fcvt.d.h f10, f28 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x095d97c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000c662c54d # load x3 with value 0x00000000c662c54d
sw x3, 0(x2) # store 0x00000000c662c54d in memory
flh f26, 0(x2) # load 0x00000000c662c54d from memory into f26
fcvt.d.h f11, f26 # perform operation
fcvt.d.h f11, f26 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x9c15a06c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000009c17c05a # load x3 with value 0x000000009c17c05a
sw x3, 0(x2) # store 0x000000009c17c05a in memory
flh f30, 0(x2) # load 0x000000009c17c05a from memory into f30
fcvt.d.h f12, f30 # perform operation
fcvt.d.h f12, f30 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xe6807356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bb6196bf # load x3 with value 0x00000000bb6196bf
sw x3, 0(x2) # store 0x00000000bb6196bf in memory
flh f14, 0(x2) # load 0x00000000bb6196bf from memory into f14
fcvt.d.h f13, f14 # perform operation
fcvt.d.h f13, f14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x45017e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000006bf3e2b9 # load x3 with value 0x000000006bf3e2b9
sw x3, 0(x2) # store 0x000000006bf3e2b9 in memory
flh f30, 0(x2) # load 0x000000006bf3e2b9 from memory into f30
fcvt.d.h f14, f30 # perform operation
fcvt.d.h f14, f30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x489b4047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000001f35f8d # load x3 with value 0x0000000001f35f8d
sw x3, 0(x2) # store 0x0000000001f35f8d in memory
flh f12, 0(x2) # load 0x0000000001f35f8d from memory into f12
fcvt.d.h f15, f12 # perform operation
fcvt.d.h f15, f12 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x691b4f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000008c6a95dd # load x3 with value 0x000000008c6a95dd
sw x3, 0(x2) # store 0x000000008c6a95dd in memory
flh f16, 0(x2) # load 0x000000008c6a95dd from memory into f16
fcvt.d.h f16, f16 # perform operation
fcvt.d.h f16, f16 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x293a9d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000009395afbe # load x3 with value 0x000000009395afbe
sw x3, 0(x2) # store 0x000000009395afbe in memory
flh f21, 0(x2) # load 0x000000009395afbe from memory into f21
fcvt.d.h f17, f21 # perform operation
fcvt.d.h f17, f21 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x3094556e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000089fd2c86 # load x3 with value 0x0000000089fd2c86
sw x3, 0(x2) # store 0x0000000089fd2c86 in memory
flh f8, 0(x2) # load 0x0000000089fd2c86 from memory into f8
fcvt.d.h f18, f8 # perform operation
fcvt.d.h f18, f8 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x2924d4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000c91cc16 # load x3 with value 0x000000000c91cc16
sw x3, 0(x2) # store 0x000000000c91cc16 in memory
flh f19, 0(x2) # load 0x000000000c91cc16 from memory into f19
fcvt.d.h f19, f19 # perform operation
fcvt.d.h f19, f19 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x39561434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000005c1f9a5f # load x3 with value 0x000000005c1f9a5f
sw x3, 0(x2) # store 0x000000005c1f9a5f in memory
flh f15, 0(x2) # load 0x000000005c1f9a5f from memory into f15
fcvt.d.h f20, f15 # perform operation
fcvt.d.h f20, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x61f8ec3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000114df503 # load x3 with value 0x00000000114df503
sw x3, 0(x2) # store 0x00000000114df503 in memory
flh f13, 0(x2) # load 0x00000000114df503 from memory into f13
fcvt.d.h f21, f13 # perform operation
fcvt.d.h f21, f13 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x05ac0dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000001fae063d # load x3 with value 0x000000001fae063d
sw x3, 0(x2) # store 0x000000001fae063d in memory
flh f2, 0(x2) # load 0x000000001fae063d from memory into f2
fcvt.d.h f22, f2 # perform operation
fcvt.d.h f22, f2 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x0c761600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bd7014ad # load x3 with value 0x00000000bd7014ad
sw x3, 0(x2) # store 0x00000000bd7014ad in memory
flh f5, 0(x2) # load 0x00000000bd7014ad from memory into f5
fcvt.d.h f23, f5 # perform operation
fcvt.d.h f23, f5 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x4ba763e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000087f0cf85 # load x3 with value 0x0000000087f0cf85
sw x3, 0(x2) # store 0x0000000087f0cf85 in memory
flh f13, 0(x2) # load 0x0000000087f0cf85 from memory into f13
fcvt.d.h f24, f13 # perform operation
fcvt.d.h f24, f13 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xac81d380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000d90e84df # load x3 with value 0x00000000d90e84df
sw x3, 0(x2) # store 0x00000000d90e84df in memory
flh f13, 0(x2) # load 0x00000000d90e84df from memory into f13
fcvt.d.h f25, f13 # perform operation
fcvt.d.h f25, f13 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x93ce3892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000046f97c55 # load x3 with value 0x0000000046f97c55
sw x3, 0(x2) # store 0x0000000046f97c55 in memory
flh f3, 0(x2) # load 0x0000000046f97c55 from memory into f3
fcvt.d.h f26, f3 # perform operation
fcvt.d.h f26, f3 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xc1841443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ba07635e # load x3 with value 0x00000000ba07635e
sw x3, 0(x2) # store 0x00000000ba07635e in memory
flh f20, 0(x2) # load 0x00000000ba07635e from memory into f20
fcvt.d.h f27, f20 # perform operation
fcvt.d.h f27, f20 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x980f2764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000dd84f055 # load x3 with value 0x00000000dd84f055
sw x3, 0(x2) # store 0x00000000dd84f055 in memory
flh f26, 0(x2) # load 0x00000000dd84f055 from memory into f26
fcvt.d.h f28, f26 # perform operation
fcvt.d.h f28, f26 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xcc0b69ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000009da3380f # load x3 with value 0x000000009da3380f
sw x3, 0(x2) # store 0x000000009da3380f in memory
flh f9, 0(x2) # load 0x000000009da3380f from memory into f9
fcvt.d.h f29, f9 # perform operation
fcvt.d.h f29, f9 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x861350dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000e025b7b1 # load x3 with value 0x00000000e025b7b1
sw x3, 0(x2) # store 0x00000000e025b7b1 in memory
flh f6, 0(x2) # load 0x00000000e025b7b1 from memory into f6
fcvt.d.h f30, f6 # perform operation
fcvt.d.h f30, f6 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xd318b796 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000ff5712 # load x3 with value 0x0000000000ff5712
sw x3, 0(x2) # store 0x0000000000ff5712 in memory
flh f16, 0(x2) # load 0x0000000000ff5712 from memory into f16
fcvt.d.h f31, f16 # perform operation
fcvt.d.h f31, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x2, 0xc421a82f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000a6bb58d6 # load x3 with value 0x00000000a6bb58d6
sw x3, 0(x2) # store 0x00000000a6bb58d6 in memory
flh f0, 0(x2) # load 0x00000000a6bb58d6 from memory into f0
fcvt.d.h f2, f0 # perform operation
fcvt.d.h f2, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x31, 0xd1486918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000006367ecf5 # load x3 with value 0x000000006367ecf5
sw x3, 0(x2) # store 0x000000006367ecf5 in memory
flh f1, 0(x2) # load 0x000000006367ecf5 from memory into f1
fcvt.d.h f31, f1 # perform operation
fcvt.d.h f31, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x17, 0x71d0abf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000002105b5eb # load x3 with value 0x000000002105b5eb
sw x3, 0(x2) # store 0x000000002105b5eb in memory
flh f2, 0(x2) # load 0x000000002105b5eb from memory into f2
fcvt.d.h f17, f2 # perform operation
fcvt.d.h f17, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x18, 0x48f7d70b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000712c089d # load x3 with value 0x00000000712c089d
sw x3, 0(x2) # store 0x00000000712c089d in memory
flh f3, 0(x2) # load 0x00000000712c089d from memory into f3
fcvt.d.h f18, f3 # perform operation
fcvt.d.h f18, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x20, 0x022f3e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000074fbc525 # load x3 with value 0x0000000074fbc525
sw x3, 0(x2) # store 0x0000000074fbc525 in memory
flh f4, 0(x2) # load 0x0000000074fbc525 from memory into f4
fcvt.d.h f20, f4 # perform operation
fcvt.d.h f20, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x3, 0xc51f0c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000004bfada06 # load x3 with value 0x000000004bfada06
sw x3, 0(x2) # store 0x000000004bfada06 in memory
flh f5, 0(x2) # load 0x000000004bfada06 from memory into f5
fcvt.d.h f3, f5 # perform operation
fcvt.d.h f3, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0x8364e4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000047328491 # load x3 with value 0x0000000047328491
sw x3, 0(x2) # store 0x0000000047328491 in memory
flh f6, 0(x2) # load 0x0000000047328491 from memory into f6
fcvt.d.h f12, f6 # perform operation
fcvt.d.h f12, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x19, 0x7bedabb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ba20e84a # load x3 with value 0x00000000ba20e84a
sw x3, 0(x2) # store 0x00000000ba20e84a in memory
flh f7, 0(x2) # load 0x00000000ba20e84a from memory into f7
fcvt.d.h f19, f7 # perform operation
fcvt.d.h f19, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x9, 0xd04a05e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000006841318a # load x3 with value 0x000000006841318a
sw x3, 0(x2) # store 0x000000006841318a in memory
flh f8, 0(x2) # load 0x000000006841318a from memory into f8
fcvt.d.h f9, f8 # perform operation
fcvt.d.h f9, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x12, 0x3c3a7e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000da657b9f # load x3 with value 0x00000000da657b9f
sw x3, 0(x2) # store 0x00000000da657b9f in memory
flh f9, 0(x2) # load 0x00000000da657b9f from memory into f9
fcvt.d.h f12, f9 # perform operation
fcvt.d.h f12, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x12, 0x52daf719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000f0582d3 # load x3 with value 0x000000000f0582d3
sw x3, 0(x2) # store 0x000000000f0582d3 in memory
flh f10, 0(x2) # load 0x000000000f0582d3 from memory into f10
fcvt.d.h f12, f10 # perform operation
fcvt.d.h f12, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x28, 0x18199cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ff151138 # load x3 with value 0x00000000ff151138
sw x3, 0(x2) # store 0x00000000ff151138 in memory
flh f11, 0(x2) # load 0x00000000ff151138 from memory into f11
fcvt.d.h f28, f11 # perform operation
fcvt.d.h f28, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x17, 0x0533fd9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000059982196 # load x3 with value 0x0000000059982196
sw x3, 0(x2) # store 0x0000000059982196 in memory
flh f12, 0(x2) # load 0x0000000059982196 from memory into f12
fcvt.d.h f17, f12 # perform operation
fcvt.d.h f17, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x29, 0x8d5ae629 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000008f3b4232 # load x3 with value 0x000000008f3b4232
sw x3, 0(x2) # store 0x000000008f3b4232 in memory
flh f13, 0(x2) # load 0x000000008f3b4232 from memory into f13
fcvt.d.h f29, f13 # perform operation
fcvt.d.h f29, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x30, 0x82a6fbf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000ae6abc9 # load x3 with value 0x000000000ae6abc9
sw x3, 0(x2) # store 0x000000000ae6abc9 in memory
flh f14, 0(x2) # load 0x000000000ae6abc9 from memory into f14
fcvt.d.h f30, f14 # perform operation
fcvt.d.h f30, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0xf2f4e984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000002d108739 # load x3 with value 0x000000002d108739
sw x3, 0(x2) # store 0x000000002d108739 in memory
flh f15, 0(x2) # load 0x000000002d108739 from memory into f15
fcvt.d.h f7, f15 # perform operation
fcvt.d.h f7, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x8, 0x876406dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000084c3e9f5 # load x3 with value 0x0000000084c3e9f5
sw x3, 0(x2) # store 0x0000000084c3e9f5 in memory
flh f16, 0(x2) # load 0x0000000084c3e9f5 from memory into f16
fcvt.d.h f8, f16 # perform operation
fcvt.d.h f8, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x7, 0xf757fa59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000090cd44b2 # load x3 with value 0x0000000090cd44b2
sw x3, 0(x2) # store 0x0000000090cd44b2 in memory
flh f17, 0(x2) # load 0x0000000090cd44b2 from memory into f17
fcvt.d.h f7, f17 # perform operation
fcvt.d.h f7, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x14, 0x80932d81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000c920966d # load x3 with value 0x00000000c920966d
sw x3, 0(x2) # store 0x00000000c920966d in memory
flh f18, 0(x2) # load 0x00000000c920966d from memory into f18
fcvt.d.h f14, f18 # perform operation
fcvt.d.h f14, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x12, 0x36e63793 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007cd3e77e # load x3 with value 0x000000007cd3e77e
sw x3, 0(x2) # store 0x000000007cd3e77e in memory
flh f19, 0(x2) # load 0x000000007cd3e77e from memory into f19
fcvt.d.h f12, f19 # perform operation
fcvt.d.h f12, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x6, 0xa7bd915b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000049cd2ac4 # load x3 with value 0x0000000049cd2ac4
sw x3, 0(x2) # store 0x0000000049cd2ac4 in memory
flh f20, 0(x2) # load 0x0000000049cd2ac4 from memory into f20
fcvt.d.h f6, f20 # perform operation
fcvt.d.h f6, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x25, 0x262c8361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000736213cb # load x3 with value 0x00000000736213cb
sw x3, 0(x2) # store 0x00000000736213cb in memory
flh f21, 0(x2) # load 0x00000000736213cb from memory into f21
fcvt.d.h f25, f21 # perform operation
fcvt.d.h f25, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x20, 0x8e67c3e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000cf14a818 # load x3 with value 0x00000000cf14a818
sw x3, 0(x2) # store 0x00000000cf14a818 in memory
flh f22, 0(x2) # load 0x00000000cf14a818 from memory into f22
fcvt.d.h f20, f22 # perform operation
fcvt.d.h f20, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x13, 0x50730eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000014c51b02 # load x3 with value 0x0000000014c51b02
sw x3, 0(x2) # store 0x0000000014c51b02 in memory
flh f23, 0(x2) # load 0x0000000014c51b02 from memory into f23
fcvt.d.h f13, f23 # perform operation
fcvt.d.h f13, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x8, 0xba0c6dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000b8408106 # load x3 with value 0x00000000b8408106
sw x3, 0(x2) # store 0x00000000b8408106 in memory
flh f24, 0(x2) # load 0x00000000b8408106 from memory into f24
fcvt.d.h f8, f24 # perform operation
fcvt.d.h f8, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x5, 0xa23abd63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000001ffbccbb # load x3 with value 0x000000001ffbccbb
sw x3, 0(x2) # store 0x000000001ffbccbb in memory
flh f25, 0(x2) # load 0x000000001ffbccbb from memory into f25
fcvt.d.h f5, f25 # perform operation
fcvt.d.h f5, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x23, 0xa0316211 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000f5f10ba2 # load x3 with value 0x00000000f5f10ba2
sw x3, 0(x2) # store 0x00000000f5f10ba2 in memory
flh f26, 0(x2) # load 0x00000000f5f10ba2 from memory into f26
fcvt.d.h f23, f26 # perform operation
fcvt.d.h f23, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x23, 0x211aa866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000881e0c13 # load x3 with value 0x00000000881e0c13
sw x3, 0(x2) # store 0x00000000881e0c13 in memory
flh f27, 0(x2) # load 0x00000000881e0c13 from memory into f27
fcvt.d.h f23, f27 # perform operation
fcvt.d.h f23, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x14, 0xbbc8ae1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000009e4fdfc1 # load x3 with value 0x000000009e4fdfc1
sw x3, 0(x2) # store 0x000000009e4fdfc1 in memory
flh f28, 0(x2) # load 0x000000009e4fdfc1 from memory into f28
fcvt.d.h f14, f28 # perform operation
fcvt.d.h f14, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x18, 0x29038b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000008e35f914 # load x3 with value 0x000000008e35f914
sw x3, 0(x2) # store 0x000000008e35f914 in memory
flh f29, 0(x2) # load 0x000000008e35f914 from memory into f29
fcvt.d.h f18, f29 # perform operation
fcvt.d.h f18, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x25, 0x3a9c31cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000039c918ac # load x3 with value 0x0000000039c918ac
sw x3, 0(x2) # store 0x0000000039c918ac in memory
flh f30, 0(x2) # load 0x0000000039c918ac from memory into f30
fcvt.d.h f25, f30 # perform operation
fcvt.d.h f25, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x8, 0x947855ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000008e9212ee # load x3 with value 0x000000008e9212ee
sw x3, 0(x2) # store 0x000000008e9212ee in memory
flh f31, 0(x2) # load 0x000000008e9212ee from memory into f31
fcvt.d.h f8, f31 # perform operation
fcvt.d.h f8, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
