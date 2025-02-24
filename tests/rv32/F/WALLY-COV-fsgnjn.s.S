///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fsgnjn.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.375914
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
li x18, 0x2696874b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x9b094fa7 # load x3 with value 0x9b094fa7
sw x3, 0(x2) # store 0x9b094fa7 in memory
flw f11, 0(x2) # load 0x9b094fa7 from memory into f11
fsgnjn.s f18, f24, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x8, 0x4ae0cf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
li x3, 0xdbfc1b2d # load x3 with value 0xdbfc1b2d
sw x3, 0(x2) # store 0xdbfc1b2d in memory
flw f14, 0(x2) # load 0xdbfc1b2d from memory into f14
fsgnjn.s f8, f6, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x1, 0x99ff9887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
li x3, 0x64addcb0 # load x3 with value 0x64addcb0
sw x3, 0(x2) # store 0x64addcb0 in memory
flw f8, 0(x2) # load 0x64addcb0 from memory into f8
fsgnjn.s f1, f20, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x4, 0xf65f28f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
li x3, 0x39479cdb # load x3 with value 0x39479cdb
sw x3, 0(x2) # store 0x39479cdb in memory
flw f20, 0(x2) # load 0x39479cdb from memory into f20
fsgnjn.s f4, f22, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x29, 0x7eb51249 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0xcd817f9e # load x3 with value 0xcd817f9e
sw x3, 0(x2) # store 0xcd817f9e in memory
flw f26, 0(x2) # load 0xcd817f9e from memory into f26
fsgnjn.s f29, f15, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x20, 0xebc14727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0x175db4c3 # load x3 with value 0x175db4c3
sw x3, 0(x2) # store 0x175db4c3 in memory
flw f30, 0(x2) # load 0x175db4c3 from memory into f30
fsgnjn.s f20, f7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x19, 0x6e3f5ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x8f215d55 # load x3 with value 0x8f215d55
sw x3, 0(x2) # store 0x8f215d55 in memory
flw f17, 0(x2) # load 0x8f215d55 from memory into f17
fsgnjn.s f19, f5, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x25, 0xd5ba6a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
li x3, 0x0df9db9e # load x3 with value 0x0df9db9e
sw x3, 0(x2) # store 0x0df9db9e in memory
flw f17, 0(x2) # load 0x0df9db9e from memory into f17
fsgnjn.s f25, f6, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x14, 0x751c4d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0x1d0de528 # load x3 with value 0x1d0de528
sw x3, 0(x2) # store 0x1d0de528 in memory
flw f15, 0(x2) # load 0x1d0de528 from memory into f15
fsgnjn.s f14, f3, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x23, 0x7610cc99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0xc1d7a491 # load x3 with value 0xc1d7a491
sw x3, 0(x2) # store 0xc1d7a491 in memory
flw f4, 0(x2) # load 0xc1d7a491 from memory into f4
fsgnjn.s f23, f8, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x28, 0x3e3afdee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0xf2e38807 # load x3 with value 0xf2e38807
sw x3, 0(x2) # store 0xf2e38807 in memory
flw f6, 0(x2) # load 0xf2e38807 from memory into f6
fsgnjn.s f28, f15, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x29, 0x6a1de1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0xe43d422d # load x3 with value 0xe43d422d
sw x3, 0(x2) # store 0xe43d422d in memory
flw f5, 0(x2) # load 0xe43d422d from memory into f5
fsgnjn.s f29, f23, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x30, 0x2f12c6a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
li x3, 0xea49fa03 # load x3 with value 0xea49fa03
sw x3, 0(x2) # store 0xea49fa03 in memory
flw f16, 0(x2) # load 0xea49fa03 from memory into f16
fsgnjn.s f30, f13, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x12, 0x9de2fd8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0x979b36a8 # load x3 with value 0x979b36a8
sw x3, 0(x2) # store 0x979b36a8 in memory
flw f22, 0(x2) # load 0x979b36a8 from memory into f22
fsgnjn.s f12, f2, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x5, 0x3eeecc5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0xd97eee5c # load x3 with value 0xd97eee5c
sw x3, 0(x2) # store 0xd97eee5c in memory
flw f23, 0(x2) # load 0xd97eee5c from memory into f23
fsgnjn.s f5, f31, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x25, 0x67480e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0x9ae81d8d # load x3 with value 0x9ae81d8d
sw x3, 0(x2) # store 0x9ae81d8d in memory
flw f29, 0(x2) # load 0x9ae81d8d from memory into f29
fsgnjn.s f25, f28, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x16, 0x7572d645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x62f33ad1 # load x3 with value 0x62f33ad1
sw x3, 0(x2) # store 0x62f33ad1 in memory
flw f29, 0(x2) # load 0x62f33ad1 from memory into f29
fsgnjn.s f16, f13, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x14, 0xff9aa7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x58158330 # load x3 with value 0x58158330
sw x3, 0(x2) # store 0x58158330 in memory
flw f7, 0(x2) # load 0x58158330 from memory into f7
fsgnjn.s f14, f10, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x20, 0x43f36205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x812773a9 # load x3 with value 0x812773a9
sw x3, 0(x2) # store 0x812773a9 in memory
flw f14, 0(x2) # load 0x812773a9 from memory into f14
fsgnjn.s f20, f9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x16, 0xebace865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x425aed47 # load x3 with value 0x425aed47
sw x3, 0(x2) # store 0x425aed47 in memory
flw f21, 0(x2) # load 0x425aed47 from memory into f21
fsgnjn.s f16, f13, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x2, 0x822dd3c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0xee61d16a # load x3 with value 0xee61d16a
sw x3, 0(x2) # store 0xee61d16a in memory
flw f13, 0(x2) # load 0xee61d16a from memory into f13
fsgnjn.s f2, f6, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x12, 0x7d6ffea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0xeced0068 # load x3 with value 0xeced0068
sw x3, 0(x2) # store 0xeced0068 in memory
flw f11, 0(x2) # load 0xeced0068 from memory into f11
fsgnjn.s f12, f21, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x16, 0xa8af1fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x0ae73924 # load x3 with value 0x0ae73924
sw x3, 0(x2) # store 0x0ae73924 in memory
flw f30, 0(x2) # load 0x0ae73924 from memory into f30
fsgnjn.s f16, f7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x24, 0x2c7c7f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x2abd328b # load x3 with value 0x2abd328b
sw x3, 0(x2) # store 0x2abd328b in memory
flw f13, 0(x2) # load 0x2abd328b from memory into f13
fsgnjn.s f24, f6, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x27, 0x6005ee39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x26fc311c # load x3 with value 0x26fc311c
sw x3, 0(x2) # store 0x26fc311c in memory
flw f30, 0(x2) # load 0x26fc311c from memory into f30
fsgnjn.s f27, f24, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x10, 0x2773ccb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0x5a2b12e4 # load x3 with value 0x5a2b12e4
sw x3, 0(x2) # store 0x5a2b12e4 in memory
flw f6, 0(x2) # load 0x5a2b12e4 from memory into f6
fsgnjn.s f10, f7, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x22, 0x159b5cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x872770ec # load x3 with value 0x872770ec
sw x3, 0(x2) # store 0x872770ec in memory
flw f23, 0(x2) # load 0x872770ec from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsgnjn.s f22, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x4, 0x85701e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97e555c2 # load x3 with value 0x97e555c2
sw x3, 0(x2) # store 0x97e555c2 in memory
flw f22, 0(x2) # load 0x97e555c2 from memory into f22
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fsgnjn.s f4, f22, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x21, 0x2815f4ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7e19927 # load x3 with value 0xc7e19927
sw x3, 0(x2) # store 0xc7e19927 in memory
flw f17, 0(x2) # load 0xc7e19927 from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fsgnjn.s f21, f17, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x1, 0x39773a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f0c69f8 # load x3 with value 0x3f0c69f8
sw x3, 0(x2) # store 0x3f0c69f8 in memory
flw f4, 0(x2) # load 0x3f0c69f8 from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsgnjn.s f1, f4, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x22, 0xc7fba2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee236f28 # load x3 with value 0xee236f28
sw x3, 0(x2) # store 0xee236f28 in memory
flw f25, 0(x2) # load 0xee236f28 from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fsgnjn.s f22, f25, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x27, 0x14ebb066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90b10d6f # load x3 with value 0x90b10d6f
sw x3, 0(x2) # store 0x90b10d6f in memory
flw f9, 0(x2) # load 0x90b10d6f from memory into f9
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fsgnjn.s f27, f9, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x29, 0xe9c6149d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8dd41a68 # load x3 with value 0x8dd41a68
sw x3, 0(x2) # store 0x8dd41a68 in memory
flw f7, 0(x2) # load 0x8dd41a68 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fsgnjn.s f29, f7, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x25, 0xdfe7f8a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25bdf108 # load x3 with value 0x25bdf108
sw x3, 0(x2) # store 0x25bdf108 in memory
flw f14, 0(x2) # load 0x25bdf108 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fsgnjn.s f25, f14, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x29, 0x0667a395 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x934712a0 # load x3 with value 0x934712a0
sw x3, 0(x2) # store 0x934712a0 in memory
flw f26, 0(x2) # load 0x934712a0 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fsgnjn.s f29, f26, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x19, 0x95919acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89e0a738 # load x3 with value 0x89e0a738
sw x3, 0(x2) # store 0x89e0a738 in memory
flw f1, 0(x2) # load 0x89e0a738 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fsgnjn.s f19, f1, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x1, 0xc3ad4765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ce8e785 # load x3 with value 0x0ce8e785
sw x3, 0(x2) # store 0x0ce8e785 in memory
flw f16, 0(x2) # load 0x0ce8e785 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
fsgnjn.s f1, f16, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x14, 0xe4a7b465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ed7145b # load x3 with value 0x6ed7145b
sw x3, 0(x2) # store 0x6ed7145b in memory
flw f4, 0(x2) # load 0x6ed7145b from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fsgnjn.s f14, f4, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x20, 0x89a785e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b2255e9 # load x3 with value 0x4b2255e9
sw x3, 0(x2) # store 0x4b2255e9 in memory
flw f22, 0(x2) # load 0x4b2255e9 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fsgnjn.s f20, f22, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x25, 0xb2ca3636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a3b5544 # load x3 with value 0x9a3b5544
sw x3, 0(x2) # store 0x9a3b5544 in memory
flw f24, 0(x2) # load 0x9a3b5544 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fsgnjn.s f25, f24, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x25, 0x07085ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00e43ceb # load x3 with value 0x00e43ceb
sw x3, 0(x2) # store 0x00e43ceb in memory
flw f18, 0(x2) # load 0x00e43ceb from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fsgnjn.s f25, f18, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x28, 0xe240dfae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1685dd6a # load x3 with value 0x1685dd6a
sw x3, 0(x2) # store 0x1685dd6a in memory
flw f4, 0(x2) # load 0x1685dd6a from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fsgnjn.s f28, f4, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x10, 0x459a5183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c8d2a79 # load x3 with value 0x2c8d2a79
sw x3, 0(x2) # store 0x2c8d2a79 in memory
flw f1, 0(x2) # load 0x2c8d2a79 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fsgnjn.s f10, f1, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x14, 0xef098d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f9f7db9 # load x3 with value 0x7f9f7db9
sw x3, 0(x2) # store 0x7f9f7db9 in memory
flw f11, 0(x2) # load 0x7f9f7db9 from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fsgnjn.s f14, f11, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x26, 0x09d9ed3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e836e15 # load x3 with value 0x8e836e15
sw x3, 0(x2) # store 0x8e836e15 in memory
flw f21, 0(x2) # load 0x8e836e15 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fsgnjn.s f26, f21, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x7, 0x0a378825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d9409cd # load x3 with value 0x5d9409cd
sw x3, 0(x2) # store 0x5d9409cd in memory
flw f8, 0(x2) # load 0x5d9409cd from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsgnjn.s f7, f8, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x1, 0x7c294f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6315a206 # load x3 with value 0x6315a206
sw x3, 0(x2) # store 0x6315a206 in memory
flw f8, 0(x2) # load 0x6315a206 from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fsgnjn.s f1, f8, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x8, 0x586fef93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x528e8af4 # load x3 with value 0x528e8af4
sw x3, 0(x2) # store 0x528e8af4 in memory
flw f6, 0(x2) # load 0x528e8af4 from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fsgnjn.s f8, f6, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x30, 0xcedb05c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1dcbe31 # load x3 with value 0xc1dcbe31
sw x3, 0(x2) # store 0xc1dcbe31 in memory
flw f2, 0(x2) # load 0xc1dcbe31 from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fsgnjn.s f30, f2, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x9, 0x894531aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07e9ca83 # load x3 with value 0x07e9ca83
sw x3, 0(x2) # store 0x07e9ca83 in memory
flw f28, 0(x2) # load 0x07e9ca83 from memory into f28
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fsgnjn.s f9, f28, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x27, 0x63e6f2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35269d8f # load x3 with value 0x35269d8f
sw x3, 0(x2) # store 0x35269d8f in memory
flw f25, 0(x2) # load 0x35269d8f from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fsgnjn.s f27, f25, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x30, 0x3adbd5ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5e2ff49 # load x3 with value 0xc5e2ff49
sw x3, 0(x2) # store 0xc5e2ff49 in memory
flw f25, 0(x2) # load 0xc5e2ff49 from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fsgnjn.s f30, f25, f22 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x5eb83d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e8a2c9e # load x3 with value 0x4e8a2c9e
sw x3, 0(x2) # store 0x4e8a2c9e in memory
flw f25, 0(x2) # load 0x4e8a2c9e from memory into f25
li x3, 0x1c4d9c00 # load x3 with value 0x1c4d9c00
sw x3, 0(x2) # store 0x1c4d9c00 in memory
flw f16, 0(x2) # load 0x1c4d9c00 from memory into f16
fsgnjn.s f0, f25, f16 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x170e43b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd0c0b69 # load x3 with value 0xdd0c0b69
sw x3, 0(x2) # store 0xdd0c0b69 in memory
flw f3, 0(x2) # load 0xdd0c0b69 from memory into f3
li x3, 0x38124e76 # load x3 with value 0x38124e76
sw x3, 0(x2) # store 0x38124e76 in memory
flw f20, 0(x2) # load 0x38124e76 from memory into f20
fsgnjn.s f1, f3, f20 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xaef0900b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a6e8741 # load x3 with value 0x6a6e8741
sw x3, 0(x2) # store 0x6a6e8741 in memory
flw f2, 0(x2) # load 0x6a6e8741 from memory into f2
li x3, 0x56f7d68a # load x3 with value 0x56f7d68a
sw x3, 0(x2) # store 0x56f7d68a in memory
flw f8, 0(x2) # load 0x56f7d68a from memory into f8
fsgnjn.s f2, f2, f8 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xef5c9f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0633dd97 # load x3 with value 0x0633dd97
sw x3, 0(x2) # store 0x0633dd97 in memory
flw f29, 0(x2) # load 0x0633dd97 from memory into f29
li x3, 0x32d9a26c # load x3 with value 0x32d9a26c
sw x3, 0(x2) # store 0x32d9a26c in memory
flw f14, 0(x2) # load 0x32d9a26c from memory into f14
fsgnjn.s f3, f29, f14 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x42a0a0ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a15c31f # load x3 with value 0x2a15c31f
sw x3, 0(x2) # store 0x2a15c31f in memory
flw f22, 0(x2) # load 0x2a15c31f from memory into f22
li x3, 0x33ec6ab5 # load x3 with value 0x33ec6ab5
sw x3, 0(x2) # store 0x33ec6ab5 in memory
flw f7, 0(x2) # load 0x33ec6ab5 from memory into f7
fsgnjn.s f4, f22, f7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x7a3b06b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99e58040 # load x3 with value 0x99e58040
sw x3, 0(x2) # store 0x99e58040 in memory
flw f21, 0(x2) # load 0x99e58040 from memory into f21
li x3, 0xa7fedc84 # load x3 with value 0xa7fedc84
sw x3, 0(x2) # store 0xa7fedc84 in memory
flw f26, 0(x2) # load 0xa7fedc84 from memory into f26
fsgnjn.s f5, f21, f26 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x5807ce75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17e43729 # load x3 with value 0x17e43729
sw x3, 0(x2) # store 0x17e43729 in memory
flw f31, 0(x2) # load 0x17e43729 from memory into f31
li x3, 0x4199914c # load x3 with value 0x4199914c
sw x3, 0(x2) # store 0x4199914c in memory
flw f4, 0(x2) # load 0x4199914c from memory into f4
fsgnjn.s f6, f31, f4 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x3a8a448c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65c318bd # load x3 with value 0x65c318bd
sw x3, 0(x2) # store 0x65c318bd in memory
flw f4, 0(x2) # load 0x65c318bd from memory into f4
li x3, 0xa3ca8996 # load x3 with value 0xa3ca8996
sw x3, 0(x2) # store 0xa3ca8996 in memory
flw f16, 0(x2) # load 0xa3ca8996 from memory into f16
fsgnjn.s f7, f4, f16 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x1f9aeb64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e57a2a8 # load x3 with value 0x2e57a2a8
sw x3, 0(x2) # store 0x2e57a2a8 in memory
flw f14, 0(x2) # load 0x2e57a2a8 from memory into f14
li x3, 0xbdc4810c # load x3 with value 0xbdc4810c
sw x3, 0(x2) # store 0xbdc4810c in memory
flw f16, 0(x2) # load 0xbdc4810c from memory into f16
fsgnjn.s f8, f14, f16 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xeaa025e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd14102c4 # load x3 with value 0xd14102c4
sw x3, 0(x2) # store 0xd14102c4 in memory
flw f30, 0(x2) # load 0xd14102c4 from memory into f30
li x3, 0x7f5efaa3 # load x3 with value 0x7f5efaa3
sw x3, 0(x2) # store 0x7f5efaa3 in memory
flw f19, 0(x2) # load 0x7f5efaa3 from memory into f19
fsgnjn.s f9, f30, f19 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xb73d78f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x555ad650 # load x3 with value 0x555ad650
sw x3, 0(x2) # store 0x555ad650 in memory
flw f16, 0(x2) # load 0x555ad650 from memory into f16
li x3, 0x3244e8d8 # load x3 with value 0x3244e8d8
sw x3, 0(x2) # store 0x3244e8d8 in memory
flw f31, 0(x2) # load 0x3244e8d8 from memory into f31
fsgnjn.s f10, f16, f31 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x2c4eb7dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31c3a22e # load x3 with value 0x31c3a22e
sw x3, 0(x2) # store 0x31c3a22e in memory
flw f2, 0(x2) # load 0x31c3a22e from memory into f2
li x3, 0x6a1e7a52 # load x3 with value 0x6a1e7a52
sw x3, 0(x2) # store 0x6a1e7a52 in memory
flw f22, 0(x2) # load 0x6a1e7a52 from memory into f22
fsgnjn.s f11, f2, f22 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x4222f2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d3a8cce # load x3 with value 0x5d3a8cce
sw x3, 0(x2) # store 0x5d3a8cce in memory
flw f31, 0(x2) # load 0x5d3a8cce from memory into f31
li x3, 0x72ed8f26 # load x3 with value 0x72ed8f26
sw x3, 0(x2) # store 0x72ed8f26 in memory
flw f14, 0(x2) # load 0x72ed8f26 from memory into f14
fsgnjn.s f12, f31, f14 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc5cf25bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43916d52 # load x3 with value 0x43916d52
sw x3, 0(x2) # store 0x43916d52 in memory
flw f8, 0(x2) # load 0x43916d52 from memory into f8
li x3, 0xa40fb2c1 # load x3 with value 0xa40fb2c1
sw x3, 0(x2) # store 0xa40fb2c1 in memory
flw f29, 0(x2) # load 0xa40fb2c1 from memory into f29
fsgnjn.s f13, f8, f29 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x40a8f7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf60b0a8 # load x3 with value 0xdf60b0a8
sw x3, 0(x2) # store 0xdf60b0a8 in memory
flw f24, 0(x2) # load 0xdf60b0a8 from memory into f24
li x3, 0xbe50cbe8 # load x3 with value 0xbe50cbe8
sw x3, 0(x2) # store 0xbe50cbe8 in memory
flw f8, 0(x2) # load 0xbe50cbe8 from memory into f8
fsgnjn.s f14, f24, f8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xaeced610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ca82d0f # load x3 with value 0x0ca82d0f
sw x3, 0(x2) # store 0x0ca82d0f in memory
flw f2, 0(x2) # load 0x0ca82d0f from memory into f2
li x3, 0x971aa6b6 # load x3 with value 0x971aa6b6
sw x3, 0(x2) # store 0x971aa6b6 in memory
flw f1, 0(x2) # load 0x971aa6b6 from memory into f1
fsgnjn.s f15, f2, f1 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xfe24cb12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66feb38b # load x3 with value 0x66feb38b
sw x3, 0(x2) # store 0x66feb38b in memory
flw f25, 0(x2) # load 0x66feb38b from memory into f25
li x3, 0x62133f54 # load x3 with value 0x62133f54
sw x3, 0(x2) # store 0x62133f54 in memory
flw f14, 0(x2) # load 0x62133f54 from memory into f14
fsgnjn.s f16, f25, f14 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x4636db9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb19727a # load x3 with value 0xdb19727a
sw x3, 0(x2) # store 0xdb19727a in memory
flw f23, 0(x2) # load 0xdb19727a from memory into f23
li x3, 0x96d5a9eb # load x3 with value 0x96d5a9eb
sw x3, 0(x2) # store 0x96d5a9eb in memory
flw f18, 0(x2) # load 0x96d5a9eb from memory into f18
fsgnjn.s f17, f23, f18 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xcc8eb47c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeca037d3 # load x3 with value 0xeca037d3
sw x3, 0(x2) # store 0xeca037d3 in memory
flw f21, 0(x2) # load 0xeca037d3 from memory into f21
li x3, 0x58b373e9 # load x3 with value 0x58b373e9
sw x3, 0(x2) # store 0x58b373e9 in memory
flw f6, 0(x2) # load 0x58b373e9 from memory into f6
fsgnjn.s f18, f21, f6 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x85b8fa95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb3c1bcc # load x3 with value 0xfb3c1bcc
sw x3, 0(x2) # store 0xfb3c1bcc in memory
flw f11, 0(x2) # load 0xfb3c1bcc from memory into f11
li x3, 0x9673d931 # load x3 with value 0x9673d931
sw x3, 0(x2) # store 0x9673d931 in memory
flw f28, 0(x2) # load 0x9673d931 from memory into f28
fsgnjn.s f19, f11, f28 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x68b9dd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c373dff # load x3 with value 0x3c373dff
sw x3, 0(x2) # store 0x3c373dff in memory
flw f31, 0(x2) # load 0x3c373dff from memory into f31
li x3, 0x4a7a62cf # load x3 with value 0x4a7a62cf
sw x3, 0(x2) # store 0x4a7a62cf in memory
flw f1, 0(x2) # load 0x4a7a62cf from memory into f1
fsgnjn.s f20, f31, f1 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xda6d3555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x125790af # load x3 with value 0x125790af
sw x3, 0(x2) # store 0x125790af in memory
flw f23, 0(x2) # load 0x125790af from memory into f23
li x3, 0xaa2856b1 # load x3 with value 0xaa2856b1
sw x3, 0(x2) # store 0xaa2856b1 in memory
flw f3, 0(x2) # load 0xaa2856b1 from memory into f3
fsgnjn.s f21, f23, f3 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x245f5170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1015120f # load x3 with value 0x1015120f
sw x3, 0(x2) # store 0x1015120f in memory
flw f25, 0(x2) # load 0x1015120f from memory into f25
li x3, 0x12c6866d # load x3 with value 0x12c6866d
sw x3, 0(x2) # store 0x12c6866d in memory
flw f21, 0(x2) # load 0x12c6866d from memory into f21
fsgnjn.s f22, f25, f21 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x4f07135d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1900c5d1 # load x3 with value 0x1900c5d1
sw x3, 0(x2) # store 0x1900c5d1 in memory
flw f22, 0(x2) # load 0x1900c5d1 from memory into f22
li x3, 0x57b32e1d # load x3 with value 0x57b32e1d
sw x3, 0(x2) # store 0x57b32e1d in memory
flw f28, 0(x2) # load 0x57b32e1d from memory into f28
fsgnjn.s f23, f22, f28 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x6ed2575a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0202bfc2 # load x3 with value 0x0202bfc2
sw x3, 0(x2) # store 0x0202bfc2 in memory
flw f27, 0(x2) # load 0x0202bfc2 from memory into f27
li x3, 0xc5657d40 # load x3 with value 0xc5657d40
sw x3, 0(x2) # store 0xc5657d40 in memory
flw f16, 0(x2) # load 0xc5657d40 from memory into f16
fsgnjn.s f24, f27, f16 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xaacac7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5a61a69 # load x3 with value 0xf5a61a69
sw x3, 0(x2) # store 0xf5a61a69 in memory
flw f6, 0(x2) # load 0xf5a61a69 from memory into f6
li x3, 0x43d901f0 # load x3 with value 0x43d901f0
sw x3, 0(x2) # store 0x43d901f0 in memory
flw f1, 0(x2) # load 0x43d901f0 from memory into f1
fsgnjn.s f25, f6, f1 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x4886108f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a60d6dd # load x3 with value 0x2a60d6dd
sw x3, 0(x2) # store 0x2a60d6dd in memory
flw f1, 0(x2) # load 0x2a60d6dd from memory into f1
li x3, 0x47b0a68b # load x3 with value 0x47b0a68b
sw x3, 0(x2) # store 0x47b0a68b in memory
flw f5, 0(x2) # load 0x47b0a68b from memory into f5
fsgnjn.s f26, f1, f5 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xc849dde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4aac7387 # load x3 with value 0x4aac7387
sw x3, 0(x2) # store 0x4aac7387 in memory
flw f24, 0(x2) # load 0x4aac7387 from memory into f24
li x3, 0xf53b2816 # load x3 with value 0xf53b2816
sw x3, 0(x2) # store 0xf53b2816 in memory
flw f23, 0(x2) # load 0xf53b2816 from memory into f23
fsgnjn.s f27, f24, f23 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x4fdc6d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9da4ee1e # load x3 with value 0x9da4ee1e
sw x3, 0(x2) # store 0x9da4ee1e in memory
flw f10, 0(x2) # load 0x9da4ee1e from memory into f10
li x3, 0x58fecd0a # load x3 with value 0x58fecd0a
sw x3, 0(x2) # store 0x58fecd0a in memory
flw f5, 0(x2) # load 0x58fecd0a from memory into f5
fsgnjn.s f28, f10, f5 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xe2cac2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde84ff3e # load x3 with value 0xde84ff3e
sw x3, 0(x2) # store 0xde84ff3e in memory
flw f21, 0(x2) # load 0xde84ff3e from memory into f21
li x3, 0x272fb6db # load x3 with value 0x272fb6db
sw x3, 0(x2) # store 0x272fb6db in memory
flw f2, 0(x2) # load 0x272fb6db from memory into f2
fsgnjn.s f29, f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x93520c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa63cc8c7 # load x3 with value 0xa63cc8c7
sw x3, 0(x2) # store 0xa63cc8c7 in memory
flw f1, 0(x2) # load 0xa63cc8c7 from memory into f1
li x3, 0xf4639692 # load x3 with value 0xf4639692
sw x3, 0(x2) # store 0xf4639692 in memory
flw f29, 0(x2) # load 0xf4639692 from memory into f29
fsgnjn.s f30, f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x0a7281ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72a7948e # load x3 with value 0x72a7948e
sw x3, 0(x2) # store 0x72a7948e in memory
flw f28, 0(x2) # load 0x72a7948e from memory into f28
li x3, 0x30be6941 # load x3 with value 0x30be6941
sw x3, 0(x2) # store 0x30be6941 in memory
flw f3, 0(x2) # load 0x30be6941 from memory into f3
fsgnjn.s f31, f28, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x17, 0x7caa1472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f03c15c # load x3 with value 0x6f03c15c
sw x3, 0(x2) # store 0x6f03c15c in memory
flw f0, 0(x2) # load 0x6f03c15c from memory into f0
li x3, 0xb67c6c07 # load x3 with value 0xb67c6c07
sw x3, 0(x2) # store 0xb67c6c07 in memory
flw f3, 0(x2) # load 0xb67c6c07 from memory into f3
fsgnjn.s f17, f0, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0x9d14cdf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd56e15d5 # load x3 with value 0xd56e15d5
sw x3, 0(x2) # store 0xd56e15d5 in memory
flw f1, 0(x2) # load 0xd56e15d5 from memory into f1
li x3, 0x01f9c597 # load x3 with value 0x01f9c597
sw x3, 0(x2) # store 0x01f9c597 in memory
flw f19, 0(x2) # load 0x01f9c597 from memory into f19
fsgnjn.s f28, f1, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x1, 0x87816b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59452ab3 # load x3 with value 0x59452ab3
sw x3, 0(x2) # store 0x59452ab3 in memory
flw f2, 0(x2) # load 0x59452ab3 from memory into f2
li x3, 0xf5eaeb37 # load x3 with value 0xf5eaeb37
sw x3, 0(x2) # store 0xf5eaeb37 in memory
flw f15, 0(x2) # load 0xf5eaeb37 from memory into f15
fsgnjn.s f1, f2, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x2, 0xca9c8fac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33db1de2 # load x3 with value 0x33db1de2
sw x3, 0(x2) # store 0x33db1de2 in memory
flw f3, 0(x2) # load 0x33db1de2 from memory into f3
li x3, 0x5e3c1bce # load x3 with value 0x5e3c1bce
sw x3, 0(x2) # store 0x5e3c1bce in memory
flw f27, 0(x2) # load 0x5e3c1bce from memory into f27
fsgnjn.s f2, f3, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0x9970e9c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05c1d244 # load x3 with value 0x05c1d244
sw x3, 0(x2) # store 0x05c1d244 in memory
flw f4, 0(x2) # load 0x05c1d244 from memory into f4
li x3, 0x3ae86629 # load x3 with value 0x3ae86629
sw x3, 0(x2) # store 0x3ae86629 in memory
flw f2, 0(x2) # load 0x3ae86629 from memory into f2
fsgnjn.s f25, f4, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x20, 0xc3e4d81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec14a2e9 # load x3 with value 0xec14a2e9
sw x3, 0(x2) # store 0xec14a2e9 in memory
flw f5, 0(x2) # load 0xec14a2e9 from memory into f5
li x3, 0x2552a4f4 # load x3 with value 0x2552a4f4
sw x3, 0(x2) # store 0x2552a4f4 in memory
flw f4, 0(x2) # load 0x2552a4f4 from memory into f4
fsgnjn.s f20, f5, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x5, 0x55260501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1e4c3e6 # load x3 with value 0xf1e4c3e6
sw x3, 0(x2) # store 0xf1e4c3e6 in memory
flw f6, 0(x2) # load 0xf1e4c3e6 from memory into f6
li x3, 0x392890b3 # load x3 with value 0x392890b3
sw x3, 0(x2) # store 0x392890b3 in memory
flw f16, 0(x2) # load 0x392890b3 from memory into f16
fsgnjn.s f5, f6, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x12, 0x11bedbfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72887438 # load x3 with value 0x72887438
sw x3, 0(x2) # store 0x72887438 in memory
flw f7, 0(x2) # load 0x72887438 from memory into f7
li x3, 0x1ed4699f # load x3 with value 0x1ed4699f
sw x3, 0(x2) # store 0x1ed4699f in memory
flw f23, 0(x2) # load 0x1ed4699f from memory into f23
fsgnjn.s f12, f7, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x19, 0x027d2efd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1406085f # load x3 with value 0x1406085f
sw x3, 0(x2) # store 0x1406085f in memory
flw f8, 0(x2) # load 0x1406085f from memory into f8
li x3, 0x6b76da23 # load x3 with value 0x6b76da23
sw x3, 0(x2) # store 0x6b76da23 in memory
flw f31, 0(x2) # load 0x6b76da23 from memory into f31
fsgnjn.s f19, f8, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x5, 0x8f39d108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe6fbf45 # load x3 with value 0xfe6fbf45
sw x3, 0(x2) # store 0xfe6fbf45 in memory
flw f9, 0(x2) # load 0xfe6fbf45 from memory into f9
li x3, 0xba67c7f4 # load x3 with value 0xba67c7f4
sw x3, 0(x2) # store 0xba67c7f4 in memory
flw f8, 0(x2) # load 0xba67c7f4 from memory into f8
fsgnjn.s f5, f9, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x2, 0xa05590ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3255983c # load x3 with value 0x3255983c
sw x3, 0(x2) # store 0x3255983c in memory
flw f10, 0(x2) # load 0x3255983c from memory into f10
li x3, 0xe5a38945 # load x3 with value 0xe5a38945
sw x3, 0(x2) # store 0xe5a38945 in memory
flw f25, 0(x2) # load 0xe5a38945 from memory into f25
fsgnjn.s f2, f10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x29, 0x427c5b5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b0c0e33 # load x3 with value 0x8b0c0e33
sw x3, 0(x2) # store 0x8b0c0e33 in memory
flw f11, 0(x2) # load 0x8b0c0e33 from memory into f11
li x3, 0xc1c7051a # load x3 with value 0xc1c7051a
sw x3, 0(x2) # store 0xc1c7051a in memory
flw f22, 0(x2) # load 0xc1c7051a from memory into f22
fsgnjn.s f29, f11, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x6, 0x7f0dce63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a812e08 # load x3 with value 0x6a812e08
sw x3, 0(x2) # store 0x6a812e08 in memory
flw f12, 0(x2) # load 0x6a812e08 from memory into f12
li x3, 0xc850aa42 # load x3 with value 0xc850aa42
sw x3, 0(x2) # store 0xc850aa42 in memory
flw f17, 0(x2) # load 0xc850aa42 from memory into f17
fsgnjn.s f6, f12, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x26, 0x9ae7ff34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9e4f3c2 # load x3 with value 0xf9e4f3c2
sw x3, 0(x2) # store 0xf9e4f3c2 in memory
flw f13, 0(x2) # load 0xf9e4f3c2 from memory into f13
li x3, 0x85e39d96 # load x3 with value 0x85e39d96
sw x3, 0(x2) # store 0x85e39d96 in memory
flw f6, 0(x2) # load 0x85e39d96 from memory into f6
fsgnjn.s f26, f13, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x1, 0x2a7dfdbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf12d8d5 # load x3 with value 0xdf12d8d5
sw x3, 0(x2) # store 0xdf12d8d5 in memory
flw f14, 0(x2) # load 0xdf12d8d5 from memory into f14
li x3, 0x1023111d # load x3 with value 0x1023111d
sw x3, 0(x2) # store 0x1023111d in memory
flw f9, 0(x2) # load 0x1023111d from memory into f9
fsgnjn.s f1, f14, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x8, 0x6b22611c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cf51da8 # load x3 with value 0x4cf51da8
sw x3, 0(x2) # store 0x4cf51da8 in memory
flw f15, 0(x2) # load 0x4cf51da8 from memory into f15
li x3, 0x358f719c # load x3 with value 0x358f719c
sw x3, 0(x2) # store 0x358f719c in memory
flw f1, 0(x2) # load 0x358f719c from memory into f1
fsgnjn.s f8, f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x22, 0xad2b7ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1b7b5b7 # load x3 with value 0xa1b7b5b7
sw x3, 0(x2) # store 0xa1b7b5b7 in memory
flw f16, 0(x2) # load 0xa1b7b5b7 from memory into f16
li x3, 0x18034ac7 # load x3 with value 0x18034ac7
sw x3, 0(x2) # store 0x18034ac7 in memory
flw f29, 0(x2) # load 0x18034ac7 from memory into f29
fsgnjn.s f22, f16, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x20, 0x800a1339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38e244d9 # load x3 with value 0x38e244d9
sw x3, 0(x2) # store 0x38e244d9 in memory
flw f17, 0(x2) # load 0x38e244d9 from memory into f17
li x3, 0xa84619c8 # load x3 with value 0xa84619c8
sw x3, 0(x2) # store 0xa84619c8 in memory
flw f25, 0(x2) # load 0xa84619c8 from memory into f25
fsgnjn.s f20, f17, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0xf4515edf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d5c98f4 # load x3 with value 0x0d5c98f4
sw x3, 0(x2) # store 0x0d5c98f4 in memory
flw f18, 0(x2) # load 0x0d5c98f4 from memory into f18
li x3, 0x75be8bc1 # load x3 with value 0x75be8bc1
sw x3, 0(x2) # store 0x75be8bc1 in memory
flw f12, 0(x2) # load 0x75be8bc1 from memory into f12
fsgnjn.s f31, f18, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x2, 0xe6edf7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cfe3ff0 # load x3 with value 0x9cfe3ff0
sw x3, 0(x2) # store 0x9cfe3ff0 in memory
flw f19, 0(x2) # load 0x9cfe3ff0 from memory into f19
li x3, 0x706b3114 # load x3 with value 0x706b3114
sw x3, 0(x2) # store 0x706b3114 in memory
flw f8, 0(x2) # load 0x706b3114 from memory into f8
fsgnjn.s f2, f19, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x15, 0xf9dc0e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dac711f # load x3 with value 0x5dac711f
sw x3, 0(x2) # store 0x5dac711f in memory
flw f20, 0(x2) # load 0x5dac711f from memory into f20
li x3, 0x4f211d35 # load x3 with value 0x4f211d35
sw x3, 0(x2) # store 0x4f211d35 in memory
flw f5, 0(x2) # load 0x4f211d35 from memory into f5
fsgnjn.s f15, f20, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x28, 0x32545101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a2194a1 # load x3 with value 0x0a2194a1
sw x3, 0(x2) # store 0x0a2194a1 in memory
flw f21, 0(x2) # load 0x0a2194a1 from memory into f21
li x3, 0xb1767b22 # load x3 with value 0xb1767b22
sw x3, 0(x2) # store 0xb1767b22 in memory
flw f25, 0(x2) # load 0xb1767b22 from memory into f25
fsgnjn.s f28, f21, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x5, 0x12ef0889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde0d6772 # load x3 with value 0xde0d6772
sw x3, 0(x2) # store 0xde0d6772 in memory
flw f22, 0(x2) # load 0xde0d6772 from memory into f22
li x3, 0x012414b0 # load x3 with value 0x012414b0
sw x3, 0(x2) # store 0x012414b0 in memory
flw f29, 0(x2) # load 0x012414b0 from memory into f29
fsgnjn.s f5, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x27, 0x503363ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dfb0b8d # load x3 with value 0x5dfb0b8d
sw x3, 0(x2) # store 0x5dfb0b8d in memory
flw f23, 0(x2) # load 0x5dfb0b8d from memory into f23
li x3, 0x2985146a # load x3 with value 0x2985146a
sw x3, 0(x2) # store 0x2985146a in memory
flw f7, 0(x2) # load 0x2985146a from memory into f7
fsgnjn.s f27, f23, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x19, 0x896d6d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x561539f2 # load x3 with value 0x561539f2
sw x3, 0(x2) # store 0x561539f2 in memory
flw f24, 0(x2) # load 0x561539f2 from memory into f24
li x3, 0x0673b29c # load x3 with value 0x0673b29c
sw x3, 0(x2) # store 0x0673b29c in memory
flw f20, 0(x2) # load 0x0673b29c from memory into f20
fsgnjn.s f19, f24, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0x7a5fac7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f57a09c # load x3 with value 0x2f57a09c
sw x3, 0(x2) # store 0x2f57a09c in memory
flw f25, 0(x2) # load 0x2f57a09c from memory into f25
li x3, 0x86c080c1 # load x3 with value 0x86c080c1
sw x3, 0(x2) # store 0x86c080c1 in memory
flw f22, 0(x2) # load 0x86c080c1 from memory into f22
fsgnjn.s f18, f25, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x19, 0xe14552e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b3317d7 # load x3 with value 0x6b3317d7
sw x3, 0(x2) # store 0x6b3317d7 in memory
flw f26, 0(x2) # load 0x6b3317d7 from memory into f26
li x3, 0xef6dedc4 # load x3 with value 0xef6dedc4
sw x3, 0(x2) # store 0xef6dedc4 in memory
flw f9, 0(x2) # load 0xef6dedc4 from memory into f9
fsgnjn.s f19, f26, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x4, 0xd04e2b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56f63ae0 # load x3 with value 0x56f63ae0
sw x3, 0(x2) # store 0x56f63ae0 in memory
flw f27, 0(x2) # load 0x56f63ae0 from memory into f27
li x3, 0xe9223054 # load x3 with value 0xe9223054
sw x3, 0(x2) # store 0xe9223054 in memory
flw f2, 0(x2) # load 0xe9223054 from memory into f2
fsgnjn.s f4, f27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x28, 0x9bc6dac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae930ecc # load x3 with value 0xae930ecc
sw x3, 0(x2) # store 0xae930ecc in memory
flw f28, 0(x2) # load 0xae930ecc from memory into f28
li x3, 0x589edd6f # load x3 with value 0x589edd6f
sw x3, 0(x2) # store 0x589edd6f in memory
flw f29, 0(x2) # load 0x589edd6f from memory into f29
fsgnjn.s f28, f28, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x18, 0xf9d71618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7dc186d # load x3 with value 0xa7dc186d
sw x3, 0(x2) # store 0xa7dc186d in memory
flw f29, 0(x2) # load 0xa7dc186d from memory into f29
li x3, 0xfc64b7ca # load x3 with value 0xfc64b7ca
sw x3, 0(x2) # store 0xfc64b7ca in memory
flw f2, 0(x2) # load 0xfc64b7ca from memory into f2
fsgnjn.s f18, f29, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0x29828f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefa808b0 # load x3 with value 0xefa808b0
sw x3, 0(x2) # store 0xefa808b0 in memory
flw f30, 0(x2) # load 0xefa808b0 from memory into f30
li x3, 0x761293b5 # load x3 with value 0x761293b5
sw x3, 0(x2) # store 0x761293b5 in memory
flw f8, 0(x2) # load 0x761293b5 from memory into f8
fsgnjn.s f19, f30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x5, 0x76eb45d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf142560e # load x3 with value 0xf142560e
sw x3, 0(x2) # store 0xf142560e in memory
flw f31, 0(x2) # load 0xf142560e from memory into f31
li x3, 0x7be32ac1 # load x3 with value 0x7be32ac1
sw x3, 0(x2) # store 0x7be32ac1 in memory
flw f4, 0(x2) # load 0x7be32ac1 from memory into f4
fsgnjn.s f5, f31, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x13, 0x9737f308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaad05c3e # load x3 with value 0xaad05c3e
sw x3, 0(x2) # store 0xaad05c3e in memory
flw f29, 0(x2) # load 0xaad05c3e from memory into f29
li x3, 0x062cb10c # load x3 with value 0x062cb10c
sw x3, 0(x2) # store 0x062cb10c in memory
flw f0, 0(x2) # load 0x062cb10c from memory into f0
fsgnjn.s f13, f29, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x8, 0x22112483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc18590d # load x3 with value 0xbc18590d
sw x3, 0(x2) # store 0xbc18590d in memory
flw f27, 0(x2) # load 0xbc18590d from memory into f27
li x3, 0x4e914757 # load x3 with value 0x4e914757
sw x3, 0(x2) # store 0x4e914757 in memory
flw f1, 0(x2) # load 0x4e914757 from memory into f1
fsgnjn.s f8, f27, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x24, 0x532de73b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c64f482 # load x3 with value 0x3c64f482
sw x3, 0(x2) # store 0x3c64f482 in memory
flw f11, 0(x2) # load 0x3c64f482 from memory into f11
li x3, 0xfa4ba9c4 # load x3 with value 0xfa4ba9c4
sw x3, 0(x2) # store 0xfa4ba9c4 in memory
flw f2, 0(x2) # load 0xfa4ba9c4 from memory into f2
fsgnjn.s f24, f11, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x6, 0x34285430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x636d93f3 # load x3 with value 0x636d93f3
sw x3, 0(x2) # store 0x636d93f3 in memory
flw f30, 0(x2) # load 0x636d93f3 from memory into f30
li x3, 0xe4b4258a # load x3 with value 0xe4b4258a
sw x3, 0(x2) # store 0xe4b4258a in memory
flw f3, 0(x2) # load 0xe4b4258a from memory into f3
fsgnjn.s f6, f30, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x21, 0xa4e9c2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9de8d314 # load x3 with value 0x9de8d314
sw x3, 0(x2) # store 0x9de8d314 in memory
flw f22, 0(x2) # load 0x9de8d314 from memory into f22
li x3, 0xc7316cc4 # load x3 with value 0xc7316cc4
sw x3, 0(x2) # store 0xc7316cc4 in memory
flw f4, 0(x2) # load 0xc7316cc4 from memory into f4
fsgnjn.s f21, f22, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x15, 0xdb74cf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c1b807d # load x3 with value 0x1c1b807d
sw x3, 0(x2) # store 0x1c1b807d in memory
flw f8, 0(x2) # load 0x1c1b807d from memory into f8
li x3, 0x51a99663 # load x3 with value 0x51a99663
sw x3, 0(x2) # store 0x51a99663 in memory
flw f5, 0(x2) # load 0x51a99663 from memory into f5
fsgnjn.s f15, f8, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x10, 0xe07a83b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x348d88bc # load x3 with value 0x348d88bc
sw x3, 0(x2) # store 0x348d88bc in memory
flw f23, 0(x2) # load 0x348d88bc from memory into f23
li x3, 0xd5eee393 # load x3 with value 0xd5eee393
sw x3, 0(x2) # store 0xd5eee393 in memory
flw f6, 0(x2) # load 0xd5eee393 from memory into f6
fsgnjn.s f10, f23, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x23, 0xd63cdcee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x893de967 # load x3 with value 0x893de967
sw x3, 0(x2) # store 0x893de967 in memory
flw f22, 0(x2) # load 0x893de967 from memory into f22
li x3, 0xc479170d # load x3 with value 0xc479170d
sw x3, 0(x2) # store 0xc479170d in memory
flw f7, 0(x2) # load 0xc479170d from memory into f7
fsgnjn.s f23, f22, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x21, 0x805bae0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23fa2b3d # load x3 with value 0x23fa2b3d
sw x3, 0(x2) # store 0x23fa2b3d in memory
flw f3, 0(x2) # load 0x23fa2b3d from memory into f3
li x3, 0x6d131304 # load x3 with value 0x6d131304
sw x3, 0(x2) # store 0x6d131304 in memory
flw f8, 0(x2) # load 0x6d131304 from memory into f8
fsgnjn.s f21, f3, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x29, 0x95c97360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84f712f7 # load x3 with value 0x84f712f7
sw x3, 0(x2) # store 0x84f712f7 in memory
flw f20, 0(x2) # load 0x84f712f7 from memory into f20
li x3, 0x31e702c7 # load x3 with value 0x31e702c7
sw x3, 0(x2) # store 0x31e702c7 in memory
flw f9, 0(x2) # load 0x31e702c7 from memory into f9
fsgnjn.s f29, f20, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0x0e203b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59513975 # load x3 with value 0x59513975
sw x3, 0(x2) # store 0x59513975 in memory
flw f11, 0(x2) # load 0x59513975 from memory into f11
li x3, 0x79a27ff1 # load x3 with value 0x79a27ff1
sw x3, 0(x2) # store 0x79a27ff1 in memory
flw f10, 0(x2) # load 0x79a27ff1 from memory into f10
fsgnjn.s f10, f11, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x9, 0xe4b49e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x779e6f1c # load x3 with value 0x779e6f1c
sw x3, 0(x2) # store 0x779e6f1c in memory
flw f13, 0(x2) # load 0x779e6f1c from memory into f13
li x3, 0xce44d4e3 # load x3 with value 0xce44d4e3
sw x3, 0(x2) # store 0xce44d4e3 in memory
flw f11, 0(x2) # load 0xce44d4e3 from memory into f11
fsgnjn.s f9, f13, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x31, 0x3b9fbe8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a47ab94 # load x3 with value 0x1a47ab94
sw x3, 0(x2) # store 0x1a47ab94 in memory
flw f19, 0(x2) # load 0x1a47ab94 from memory into f19
li x3, 0x6dea731e # load x3 with value 0x6dea731e
sw x3, 0(x2) # store 0x6dea731e in memory
flw f12, 0(x2) # load 0x6dea731e from memory into f12
fsgnjn.s f31, f19, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x30, 0x08f0334e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75e679a8 # load x3 with value 0x75e679a8
sw x3, 0(x2) # store 0x75e679a8 in memory
flw f24, 0(x2) # load 0x75e679a8 from memory into f24
li x3, 0xa89c2dd3 # load x3 with value 0xa89c2dd3
sw x3, 0(x2) # store 0xa89c2dd3 in memory
flw f13, 0(x2) # load 0xa89c2dd3 from memory into f13
fsgnjn.s f30, f24, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x2, 0x4835f505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fd286f3 # load x3 with value 0x9fd286f3
sw x3, 0(x2) # store 0x9fd286f3 in memory
flw f6, 0(x2) # load 0x9fd286f3 from memory into f6
li x3, 0x0664081e # load x3 with value 0x0664081e
sw x3, 0(x2) # store 0x0664081e in memory
flw f14, 0(x2) # load 0x0664081e from memory into f14
fsgnjn.s f2, f6, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x31, 0x375b0761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee3d598e # load x3 with value 0xee3d598e
sw x3, 0(x2) # store 0xee3d598e in memory
flw f27, 0(x2) # load 0xee3d598e from memory into f27
li x3, 0x1258712e # load x3 with value 0x1258712e
sw x3, 0(x2) # store 0x1258712e in memory
flw f15, 0(x2) # load 0x1258712e from memory into f15
fsgnjn.s f31, f27, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x6, 0xa7d04ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb72b418c # load x3 with value 0xb72b418c
sw x3, 0(x2) # store 0xb72b418c in memory
flw f10, 0(x2) # load 0xb72b418c from memory into f10
li x3, 0x8f0afb04 # load x3 with value 0x8f0afb04
sw x3, 0(x2) # store 0x8f0afb04 in memory
flw f16, 0(x2) # load 0x8f0afb04 from memory into f16
fsgnjn.s f6, f10, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x28, 0x819ea688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x965b87c9 # load x3 with value 0x965b87c9
sw x3, 0(x2) # store 0x965b87c9 in memory
flw f30, 0(x2) # load 0x965b87c9 from memory into f30
li x3, 0xa3bc129b # load x3 with value 0xa3bc129b
sw x3, 0(x2) # store 0xa3bc129b in memory
flw f17, 0(x2) # load 0xa3bc129b from memory into f17
fsgnjn.s f28, f30, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x31, 0xcbf94a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb058bbc # load x3 with value 0xbb058bbc
sw x3, 0(x2) # store 0xbb058bbc in memory
flw f6, 0(x2) # load 0xbb058bbc from memory into f6
li x3, 0xff4dd22c # load x3 with value 0xff4dd22c
sw x3, 0(x2) # store 0xff4dd22c in memory
flw f18, 0(x2) # load 0xff4dd22c from memory into f18
fsgnjn.s f31, f6, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x18, 0x8a92937d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf08aca7e # load x3 with value 0xf08aca7e
sw x3, 0(x2) # store 0xf08aca7e in memory
flw f17, 0(x2) # load 0xf08aca7e from memory into f17
li x3, 0x67bec810 # load x3 with value 0x67bec810
sw x3, 0(x2) # store 0x67bec810 in memory
flw f19, 0(x2) # load 0x67bec810 from memory into f19
fsgnjn.s f18, f17, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x11, 0x9ade07eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90ceaf97 # load x3 with value 0x90ceaf97
sw x3, 0(x2) # store 0x90ceaf97 in memory
flw f23, 0(x2) # load 0x90ceaf97 from memory into f23
li x3, 0x99c17cf6 # load x3 with value 0x99c17cf6
sw x3, 0(x2) # store 0x99c17cf6 in memory
flw f20, 0(x2) # load 0x99c17cf6 from memory into f20
fsgnjn.s f11, f23, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x20, 0xb4b4eaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefe4eace # load x3 with value 0xefe4eace
sw x3, 0(x2) # store 0xefe4eace in memory
flw f3, 0(x2) # load 0xefe4eace from memory into f3
li x3, 0x2609c1d4 # load x3 with value 0x2609c1d4
sw x3, 0(x2) # store 0x2609c1d4 in memory
flw f21, 0(x2) # load 0x2609c1d4 from memory into f21
fsgnjn.s f20, f3, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x7, 0x40f2f09f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb2707df # load x3 with value 0xdb2707df
sw x3, 0(x2) # store 0xdb2707df in memory
flw f26, 0(x2) # load 0xdb2707df from memory into f26
li x3, 0xad82528c # load x3 with value 0xad82528c
sw x3, 0(x2) # store 0xad82528c in memory
flw f22, 0(x2) # load 0xad82528c from memory into f22
fsgnjn.s f7, f26, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x29, 0xc38f4904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd40f063 # load x3 with value 0xdd40f063
sw x3, 0(x2) # store 0xdd40f063 in memory
flw f5, 0(x2) # load 0xdd40f063 from memory into f5
li x3, 0x18b91562 # load x3 with value 0x18b91562
sw x3, 0(x2) # store 0x18b91562 in memory
flw f23, 0(x2) # load 0x18b91562 from memory into f23
fsgnjn.s f29, f5, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x24, 0x3f4aa3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6665adcd # load x3 with value 0x6665adcd
sw x3, 0(x2) # store 0x6665adcd in memory
flw f28, 0(x2) # load 0x6665adcd from memory into f28
li x3, 0x061dde43 # load x3 with value 0x061dde43
sw x3, 0(x2) # store 0x061dde43 in memory
flw f24, 0(x2) # load 0x061dde43 from memory into f24
fsgnjn.s f24, f28, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x7, 0x04662e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dcedb6a # load x3 with value 0x3dcedb6a
sw x3, 0(x2) # store 0x3dcedb6a in memory
flw f2, 0(x2) # load 0x3dcedb6a from memory into f2
li x3, 0x6242e867 # load x3 with value 0x6242e867
sw x3, 0(x2) # store 0x6242e867 in memory
flw f25, 0(x2) # load 0x6242e867 from memory into f25
fsgnjn.s f7, f2, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x2, 0xfb23e148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e323e03 # load x3 with value 0x5e323e03
sw x3, 0(x2) # store 0x5e323e03 in memory
flw f21, 0(x2) # load 0x5e323e03 from memory into f21
li x3, 0x42c83e6a # load x3 with value 0x42c83e6a
sw x3, 0(x2) # store 0x42c83e6a in memory
flw f26, 0(x2) # load 0x42c83e6a from memory into f26
fsgnjn.s f2, f21, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x25, 0xe6456423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1db0e4fc # load x3 with value 0x1db0e4fc
sw x3, 0(x2) # store 0x1db0e4fc in memory
flw f8, 0(x2) # load 0x1db0e4fc from memory into f8
li x3, 0x9bb0900f # load x3 with value 0x9bb0900f
sw x3, 0(x2) # store 0x9bb0900f in memory
flw f27, 0(x2) # load 0x9bb0900f from memory into f27
fsgnjn.s f25, f8, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x15, 0x7a715d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd981c7b9 # load x3 with value 0xd981c7b9
sw x3, 0(x2) # store 0xd981c7b9 in memory
flw f22, 0(x2) # load 0xd981c7b9 from memory into f22
li x3, 0xfc438333 # load x3 with value 0xfc438333
sw x3, 0(x2) # store 0xfc438333 in memory
flw f28, 0(x2) # load 0xfc438333 from memory into f28
fsgnjn.s f15, f22, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x16, 0xedf9b4cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e50b8c3 # load x3 with value 0x3e50b8c3
sw x3, 0(x2) # store 0x3e50b8c3 in memory
flw f6, 0(x2) # load 0x3e50b8c3 from memory into f6
li x3, 0xd0ce81ab # load x3 with value 0xd0ce81ab
sw x3, 0(x2) # store 0xd0ce81ab in memory
flw f29, 0(x2) # load 0xd0ce81ab from memory into f29
fsgnjn.s f16, f6, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x15, 0x49a8def6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47ee4f68 # load x3 with value 0x47ee4f68
sw x3, 0(x2) # store 0x47ee4f68 in memory
flw f23, 0(x2) # load 0x47ee4f68 from memory into f23
li x3, 0x3a65f355 # load x3 with value 0x3a65f355
sw x3, 0(x2) # store 0x3a65f355 in memory
flw f30, 0(x2) # load 0x3a65f355 from memory into f30
fsgnjn.s f15, f23, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x1, 0x57f9caaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x526013a6 # load x3 with value 0x526013a6
sw x3, 0(x2) # store 0x526013a6 in memory
flw f8, 0(x2) # load 0x526013a6 from memory into f8
li x3, 0x666720a8 # load x3 with value 0x666720a8
sw x3, 0(x2) # store 0x666720a8 in memory
flw f31, 0(x2) # load 0x666720a8 from memory into f31
fsgnjn.s f1, f8, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
