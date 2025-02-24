///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fclass.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.534530
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


# Testcase cp_rd (Test destination rd = x0)
li x0, 0xa0c1d585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x177b9f80 # load x3 with value 0x177b9f80
sw x3, 0(x2) # store 0x177b9f80 in memory
flh f13, 0(x2) # load 0x177b9f80 from memory into f13
fclass.h x0, f13 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x37fc27af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8c186fd # load x3 with value 0xf8c186fd
sw x3, 0(x2) # store 0xf8c186fd in memory
flh f2, 0(x2) # load 0xf8c186fd from memory into f2
fclass.h x1, f2 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe8b0bafb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x834f0b23 # load x3 with value 0x834f0b23
sw x3, 0(x2) # store 0x834f0b23 in memory
flh f27, 0(x2) # load 0x834f0b23 from memory into f27
fclass.h x2, f27 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x0dbe24e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ff6d782 # load x3 with value 0x6ff6d782
sw x3, 0(x2) # store 0x6ff6d782 in memory
flh f15, 0(x2) # load 0x6ff6d782 from memory into f15
fclass.h x3, f15 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x58b1e80d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3802d998 # load x3 with value 0x3802d998
sw x3, 0(x2) # store 0x3802d998 in memory
flh f3, 0(x2) # load 0x3802d998 from memory into f3
fclass.h x4, f3 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xb702847c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff1cb768 # load x3 with value 0xff1cb768
sw x3, 0(x2) # store 0xff1cb768 in memory
flh f31, 0(x2) # load 0xff1cb768 from memory into f31
fclass.h x5, f31 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4dc65283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd9aa185 # load x3 with value 0xcd9aa185
sw x3, 0(x2) # store 0xcd9aa185 in memory
flh f27, 0(x2) # load 0xcd9aa185 from memory into f27
fclass.h x6, f27 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe8504c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9d5a3b7 # load x3 with value 0xb9d5a3b7
sw x3, 0(x2) # store 0xb9d5a3b7 in memory
flh f10, 0(x2) # load 0xb9d5a3b7 from memory into f10
fclass.h x7, f10 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xac435d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1ef5c6a # load x3 with value 0xb1ef5c6a
sw x3, 0(x2) # store 0xb1ef5c6a in memory
flh f20, 0(x2) # load 0xb1ef5c6a from memory into f20
fclass.h x8, f20 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x72e948f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39d22838 # load x3 with value 0x39d22838
sw x3, 0(x2) # store 0x39d22838 in memory
flh f25, 0(x2) # load 0x39d22838 from memory into f25
fclass.h x9, f25 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xa0e10384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33bb11c9 # load x3 with value 0x33bb11c9
sw x3, 0(x2) # store 0x33bb11c9 in memory
flh f9, 0(x2) # load 0x33bb11c9 from memory into f9
fclass.h x10, f9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x07d2baa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6fe8e48 # load x3 with value 0xb6fe8e48
sw x3, 0(x2) # store 0xb6fe8e48 in memory
flh f16, 0(x2) # load 0xb6fe8e48 from memory into f16
fclass.h x11, f16 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x407afa28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x730e9e36 # load x3 with value 0x730e9e36
sw x3, 0(x2) # store 0x730e9e36 in memory
flh f11, 0(x2) # load 0x730e9e36 from memory into f11
fclass.h x12, f11 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf538d7ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd1c60c7 # load x3 with value 0xbd1c60c7
sw x3, 0(x2) # store 0xbd1c60c7 in memory
flh f8, 0(x2) # load 0xbd1c60c7 from memory into f8
fclass.h x13, f8 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x11f71fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f184ec3 # load x3 with value 0x1f184ec3
sw x3, 0(x2) # store 0x1f184ec3 in memory
flh f25, 0(x2) # load 0x1f184ec3 from memory into f25
fclass.h x14, f25 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4efb567d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cbb2cd2 # load x3 with value 0x6cbb2cd2
sw x3, 0(x2) # store 0x6cbb2cd2 in memory
flh f27, 0(x2) # load 0x6cbb2cd2 from memory into f27
fclass.h x15, f27 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3105ac21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fc85c15 # load x3 with value 0x9fc85c15
sw x3, 0(x2) # store 0x9fc85c15 in memory
flh f27, 0(x2) # load 0x9fc85c15 from memory into f27
fclass.h x16, f27 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x281f45fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cf56811 # load x3 with value 0x8cf56811
sw x3, 0(x2) # store 0x8cf56811 in memory
flh f22, 0(x2) # load 0x8cf56811 from memory into f22
fclass.h x17, f22 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x24792f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde9e5078 # load x3 with value 0xde9e5078
sw x3, 0(x2) # store 0xde9e5078 in memory
flh f31, 0(x2) # load 0xde9e5078 from memory into f31
fclass.h x18, f31 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xb1f33691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbcf5119 # load x3 with value 0xdbcf5119
sw x3, 0(x2) # store 0xdbcf5119 in memory
flh f12, 0(x2) # load 0xdbcf5119 from memory into f12
fclass.h x19, f12 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x8397bebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x166dd54f # load x3 with value 0x166dd54f
sw x3, 0(x2) # store 0x166dd54f in memory
flh f1, 0(x2) # load 0x166dd54f from memory into f1
fclass.h x20, f1 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x93315a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x651c188b # load x3 with value 0x651c188b
sw x3, 0(x2) # store 0x651c188b in memory
flh f6, 0(x2) # load 0x651c188b from memory into f6
fclass.h x21, f6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xfa9cdd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed6a4964 # load x3 with value 0xed6a4964
sw x3, 0(x2) # store 0xed6a4964 in memory
flh f25, 0(x2) # load 0xed6a4964 from memory into f25
fclass.h x22, f25 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x4feb36b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9b33433 # load x3 with value 0xd9b33433
sw x3, 0(x2) # store 0xd9b33433 in memory
flh f30, 0(x2) # load 0xd9b33433 from memory into f30
fclass.h x23, f30 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x1e533680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfb72b44 # load x3 with value 0xcfb72b44
sw x3, 0(x2) # store 0xcfb72b44 in memory
flh f18, 0(x2) # load 0xcfb72b44 from memory into f18
fclass.h x24, f18 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x4fa682c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b83d137 # load x3 with value 0x3b83d137
sw x3, 0(x2) # store 0x3b83d137 in memory
flh f21, 0(x2) # load 0x3b83d137 from memory into f21
fclass.h x25, f21 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xab125b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc58facb3 # load x3 with value 0xc58facb3
sw x3, 0(x2) # store 0xc58facb3 in memory
flh f22, 0(x2) # load 0xc58facb3 from memory into f22
fclass.h x26, f22 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x561fa523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdba80421 # load x3 with value 0xdba80421
sw x3, 0(x2) # store 0xdba80421 in memory
flh f15, 0(x2) # load 0xdba80421 from memory into f15
fclass.h x27, f15 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x5578ab7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbadd2cd1 # load x3 with value 0xbadd2cd1
sw x3, 0(x2) # store 0xbadd2cd1 in memory
flh f22, 0(x2) # load 0xbadd2cd1 from memory into f22
fclass.h x28, f22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xc094e54d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5af624c0 # load x3 with value 0x5af624c0
sw x3, 0(x2) # store 0x5af624c0 in memory
flh f30, 0(x2) # load 0x5af624c0 from memory into f30
fclass.h x29, f30 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x65a60f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a546716 # load x3 with value 0x4a546716
sw x3, 0(x2) # store 0x4a546716 in memory
flh f3, 0(x2) # load 0x4a546716 from memory into f3
fclass.h x30, f3 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2770afe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03749251 # load x3 with value 0x03749251
sw x3, 0(x2) # store 0x03749251 in memory
flh f16, 0(x2) # load 0x03749251 from memory into f16
fclass.h x31, f16 # perform operation

# Testcase cmp_gpr_hazard raw test
fclass.h x3, f29 # perform first operation
fclass.h x17, f3 # perform second operation

# Testcase cmp_gpr_hazard raw test
fclass.h x19, f29 # perform first operation
fclass.h x27, f7 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.h x28, f13 # perform first operation
fclass.h x28, f6 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.h x25, f17 # perform first operation
fclass.h x25, f11 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.h x5, f30 # perform first operation
fclass.h x30, f27 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.h x15, f10 # perform first operation
fclass.h x19, f19 # perform second operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x26, 0xa744aae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fclass.h x26, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x2, 0x550b52aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fclass.h x2, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x13, 0x39cec3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fclass.h x13, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x6, 0x3a7e1557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fclass.h x6, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x1, 0x736c19fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fclass.h x1, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x4, 0xaa15f004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fclass.h x4, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x21, 0x349f66b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fclass.h x21, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x8, 0xabfd9436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fclass.h x8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x29, 0x862273f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fclass.h x29, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x21, 0x915c4dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fclass.h x21, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x21, 0x198a454a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fclass.h x21, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x16, 0x240d1d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fclass.h x16, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x29, 0xc6e2e970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fclass.h x29, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x26, 0x2965904f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fclass.h x26, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x7, 0xb88e930e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fclass.h x7, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x24, 0x7f563469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fclass.h x24, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x13, 0xa093389b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fclass.h x13, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x22, 0x240d05e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fclass.h x22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x31, 0x620dfaa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fclass.h x31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x6, 0x16289023 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fclass.h x6, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x12, 0x579d5b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fclass.h x12, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x11, 0x2d3e2d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fclass.h x11, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x2, 0xbc947508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fclass.h x2, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x12, 0x93062aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fclass.h x12, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x4, 0xcd15e71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fclass.h x4, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x11, 0x044c1dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fclass.h x11, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x29, 0xd7115d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26cea9dc # load x3 with value 0x26cea9dc
sw x3, 0(x2) # store 0x26cea9dc in memory
flh f0, 0(x2) # load 0x26cea9dc from memory into f0
fclass.h x29, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x2, 0xb325b130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3551e30 # load x3 with value 0xb3551e30
sw x3, 0(x2) # store 0xb3551e30 in memory
flh f1, 0(x2) # load 0xb3551e30 from memory into f1
fclass.h x2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x4, 0x5a4fa6a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa745dbe8 # load x3 with value 0xa745dbe8
sw x3, 0(x2) # store 0xa745dbe8 in memory
flh f2, 0(x2) # load 0xa745dbe8 from memory into f2
fclass.h x4, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x16, 0x5c24ebef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc248d916 # load x3 with value 0xc248d916
sw x3, 0(x2) # store 0xc248d916 in memory
flh f3, 0(x2) # load 0xc248d916 from memory into f3
fclass.h x16, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x16, 0xf97dc9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe589bfe5 # load x3 with value 0xe589bfe5
sw x3, 0(x2) # store 0xe589bfe5 in memory
flh f4, 0(x2) # load 0xe589bfe5 from memory into f4
fclass.h x16, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x7, 0x8f456d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa885daf8 # load x3 with value 0xa885daf8
sw x3, 0(x2) # store 0xa885daf8 in memory
flh f5, 0(x2) # load 0xa885daf8 from memory into f5
fclass.h x7, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x29, 0x7332ecb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf78a7e6 # load x3 with value 0xcf78a7e6
sw x3, 0(x2) # store 0xcf78a7e6 in memory
flh f6, 0(x2) # load 0xcf78a7e6 from memory into f6
fclass.h x29, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x20, 0x113bb052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc494154 # load x3 with value 0xcc494154
sw x3, 0(x2) # store 0xcc494154 in memory
flh f7, 0(x2) # load 0xcc494154 from memory into f7
fclass.h x20, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x21, 0x92a26a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04275749 # load x3 with value 0x04275749
sw x3, 0(x2) # store 0x04275749 in memory
flh f8, 0(x2) # load 0x04275749 from memory into f8
fclass.h x21, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x19, 0x8e260da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ef343e2 # load x3 with value 0x2ef343e2
sw x3, 0(x2) # store 0x2ef343e2 in memory
flh f9, 0(x2) # load 0x2ef343e2 from memory into f9
fclass.h x19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x3, 0x4f78e748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa526c0c # load x3 with value 0xfa526c0c
sw x3, 0(x2) # store 0xfa526c0c in memory
flh f10, 0(x2) # load 0xfa526c0c from memory into f10
fclass.h x3, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x19, 0x2a6eebb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ead2024 # load x3 with value 0x4ead2024
sw x3, 0(x2) # store 0x4ead2024 in memory
flh f11, 0(x2) # load 0x4ead2024 from memory into f11
fclass.h x19, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x9, 0x1f3ac858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cdcf162 # load x3 with value 0x9cdcf162
sw x3, 0(x2) # store 0x9cdcf162 in memory
flh f12, 0(x2) # load 0x9cdcf162 from memory into f12
fclass.h x9, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x26, 0x4134ef9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a2af6f5 # load x3 with value 0x4a2af6f5
sw x3, 0(x2) # store 0x4a2af6f5 in memory
flh f13, 0(x2) # load 0x4a2af6f5 from memory into f13
fclass.h x26, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x25, 0xa39c5e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4bf448b # load x3 with value 0xb4bf448b
sw x3, 0(x2) # store 0xb4bf448b in memory
flh f14, 0(x2) # load 0xb4bf448b from memory into f14
fclass.h x25, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x28, 0xa9a086cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c5da7f6 # load x3 with value 0x4c5da7f6
sw x3, 0(x2) # store 0x4c5da7f6 in memory
flh f15, 0(x2) # load 0x4c5da7f6 from memory into f15
fclass.h x28, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x1, 0x72438283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x966b0fc2 # load x3 with value 0x966b0fc2
sw x3, 0(x2) # store 0x966b0fc2 in memory
flh f16, 0(x2) # load 0x966b0fc2 from memory into f16
fclass.h x1, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x8, 0x3d7cb135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb13126f7 # load x3 with value 0xb13126f7
sw x3, 0(x2) # store 0xb13126f7 in memory
flh f17, 0(x2) # load 0xb13126f7 from memory into f17
fclass.h x8, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x16, 0x033416e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4eb4ea4 # load x3 with value 0xa4eb4ea4
sw x3, 0(x2) # store 0xa4eb4ea4 in memory
flh f18, 0(x2) # load 0xa4eb4ea4 from memory into f18
fclass.h x16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x23, 0x69270cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c9f4aac # load x3 with value 0x0c9f4aac
sw x3, 0(x2) # store 0x0c9f4aac in memory
flh f19, 0(x2) # load 0x0c9f4aac from memory into f19
fclass.h x23, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x11, 0x04ee6637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc9ade03 # load x3 with value 0xfc9ade03
sw x3, 0(x2) # store 0xfc9ade03 in memory
flh f20, 0(x2) # load 0xfc9ade03 from memory into f20
fclass.h x11, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x31, 0x6ac2a7cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x490da117 # load x3 with value 0x490da117
sw x3, 0(x2) # store 0x490da117 in memory
flh f21, 0(x2) # load 0x490da117 from memory into f21
fclass.h x31, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x29, 0x1fa09d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe278932 # load x3 with value 0xfe278932
sw x3, 0(x2) # store 0xfe278932 in memory
flh f22, 0(x2) # load 0xfe278932 from memory into f22
fclass.h x29, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x8, 0xe901f415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdacfc95 # load x3 with value 0xfdacfc95
sw x3, 0(x2) # store 0xfdacfc95 in memory
flh f23, 0(x2) # load 0xfdacfc95 from memory into f23
fclass.h x8, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x28, 0x7e741cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe72a4c62 # load x3 with value 0xe72a4c62
sw x3, 0(x2) # store 0xe72a4c62 in memory
flh f24, 0(x2) # load 0xe72a4c62 from memory into f24
fclass.h x28, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x11, 0x04ee03c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x509e9e00 # load x3 with value 0x509e9e00
sw x3, 0(x2) # store 0x509e9e00 in memory
flh f25, 0(x2) # load 0x509e9e00 from memory into f25
fclass.h x11, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x5, 0x7d54b9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x533c90b3 # load x3 with value 0x533c90b3
sw x3, 0(x2) # store 0x533c90b3 in memory
flh f26, 0(x2) # load 0x533c90b3 from memory into f26
fclass.h x5, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x5, 0xad588724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9c48e0f # load x3 with value 0xf9c48e0f
sw x3, 0(x2) # store 0xf9c48e0f in memory
flh f27, 0(x2) # load 0xf9c48e0f from memory into f27
fclass.h x5, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x14, 0x1d619c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3763635d # load x3 with value 0x3763635d
sw x3, 0(x2) # store 0x3763635d in memory
flh f28, 0(x2) # load 0x3763635d from memory into f28
fclass.h x14, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x21, 0xdacad8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x778fc832 # load x3 with value 0x778fc832
sw x3, 0(x2) # store 0x778fc832 in memory
flh f29, 0(x2) # load 0x778fc832 from memory into f29
fclass.h x21, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x22, 0xea234e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2efcacbc # load x3 with value 0x2efcacbc
sw x3, 0(x2) # store 0x2efcacbc in memory
flh f30, 0(x2) # load 0x2efcacbc from memory into f30
fclass.h x22, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x19, 0xd2db5009 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5e838da # load x3 with value 0xa5e838da
sw x3, 0(x2) # store 0xa5e838da in memory
flh f31, 0(x2) # load 0xa5e838da from memory into f31
fclass.h x19, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
