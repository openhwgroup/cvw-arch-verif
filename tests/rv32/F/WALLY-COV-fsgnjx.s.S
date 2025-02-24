///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fsgnjx.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.378085
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
li x4, 0x7c37bc09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0xe3f7e083 # load x3 with value 0xe3f7e083
sw x3, 0(x2) # store 0xe3f7e083 in memory
flw f11, 0(x2) # load 0xe3f7e083 from memory into f11
fsgnjx.s f4, f17, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x29, 0x051afd1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0x76525103 # load x3 with value 0x76525103
sw x3, 0(x2) # store 0x76525103 in memory
flw f2, 0(x2) # load 0x76525103 from memory into f2
fsgnjx.s f29, f9, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x12, 0x58095629 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x452f216e # load x3 with value 0x452f216e
sw x3, 0(x2) # store 0x452f216e in memory
flw f11, 0(x2) # load 0x452f216e from memory into f11
fsgnjx.s f12, f7, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x2, 0x3b90178f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x9c761c43 # load x3 with value 0x9c761c43
sw x3, 0(x2) # store 0x9c761c43 in memory
flw f22, 0(x2) # load 0x9c761c43 from memory into f22
fsgnjx.s f2, f25, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x10, 0x1908a329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0xf7ddf043 # load x3 with value 0xf7ddf043
sw x3, 0(x2) # store 0xf7ddf043 in memory
flw f11, 0(x2) # load 0xf7ddf043 from memory into f11
fsgnjx.s f10, f4, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x15, 0xd0849f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x0004da9c # load x3 with value 0x0004da9c
sw x3, 0(x2) # store 0x0004da9c in memory
flw f13, 0(x2) # load 0x0004da9c from memory into f13
fsgnjx.s f15, f12, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x30, 0xe37325b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x47158e4b # load x3 with value 0x47158e4b
sw x3, 0(x2) # store 0x47158e4b in memory
flw f18, 0(x2) # load 0x47158e4b from memory into f18
fsgnjx.s f30, f8, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x11, 0xa84a6011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0xf6e5b7c6 # load x3 with value 0xf6e5b7c6
sw x3, 0(x2) # store 0xf6e5b7c6 in memory
flw f19, 0(x2) # load 0xf6e5b7c6 from memory into f19
fsgnjx.s f11, f5, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x31, 0x1532d00a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x6a62ece3 # load x3 with value 0x6a62ece3
sw x3, 0(x2) # store 0x6a62ece3 in memory
flw f6, 0(x2) # load 0x6a62ece3 from memory into f6
fsgnjx.s f31, f9, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x30, 0x18bd87a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x1b9613a7 # load x3 with value 0x1b9613a7
sw x3, 0(x2) # store 0x1b9613a7 in memory
flw f26, 0(x2) # load 0x1b9613a7 from memory into f26
fsgnjx.s f30, f10, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x13, 0xb1f406c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0x992510bb # load x3 with value 0x992510bb
sw x3, 0(x2) # store 0x992510bb in memory
flw f23, 0(x2) # load 0x992510bb from memory into f23
fsgnjx.s f13, f15, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x13, 0xbaef3824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0x62633184 # load x3 with value 0x62633184
sw x3, 0(x2) # store 0x62633184 in memory
flw f7, 0(x2) # load 0x62633184 from memory into f7
fsgnjx.s f13, f20, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x23, 0x1b039f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x4bff38e2 # load x3 with value 0x4bff38e2
sw x3, 0(x2) # store 0x4bff38e2 in memory
flw f20, 0(x2) # load 0x4bff38e2 from memory into f20
fsgnjx.s f23, f25, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x15, 0x5655ffc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x56633f7a # load x3 with value 0x56633f7a
sw x3, 0(x2) # store 0x56633f7a in memory
flw f29, 0(x2) # load 0x56633f7a from memory into f29
fsgnjx.s f15, f12, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x24, 0x1f054662 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0xd9fee852 # load x3 with value 0xd9fee852
sw x3, 0(x2) # store 0xd9fee852 in memory
flw f13, 0(x2) # load 0xd9fee852 from memory into f13
fsgnjx.s f24, f18, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x14, 0x35f312f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0x4c9ebe57 # load x3 with value 0x4c9ebe57
sw x3, 0(x2) # store 0x4c9ebe57 in memory
flw f1, 0(x2) # load 0x4c9ebe57 from memory into f1
fsgnjx.s f14, f20, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x29, 0x36fd193c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0xb04d38b1 # load x3 with value 0xb04d38b1
sw x3, 0(x2) # store 0xb04d38b1 in memory
flw f28, 0(x2) # load 0xb04d38b1 from memory into f28
fsgnjx.s f29, f7, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x17, 0xb0d34326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x88028bad # load x3 with value 0x88028bad
sw x3, 0(x2) # store 0x88028bad in memory
flw f30, 0(x2) # load 0x88028bad from memory into f30
fsgnjx.s f17, f7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x29, 0xc8b056e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x189ab232 # load x3 with value 0x189ab232
sw x3, 0(x2) # store 0x189ab232 in memory
flw f25, 0(x2) # load 0x189ab232 from memory into f25
fsgnjx.s f29, f12, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x5, 0x8d12d4c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
li x3, 0xce4130d4 # load x3 with value 0xce4130d4
sw x3, 0(x2) # store 0xce4130d4 in memory
flw f18, 0(x2) # load 0xce4130d4 from memory into f18
fsgnjx.s f5, f16, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x18, 0x1a35413a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x5b727b06 # load x3 with value 0x5b727b06
sw x3, 0(x2) # store 0x5b727b06 in memory
flw f10, 0(x2) # load 0x5b727b06 from memory into f10
fsgnjx.s f18, f21, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x9, 0xd344e83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0xce5cbc2a # load x3 with value 0xce5cbc2a
sw x3, 0(x2) # store 0xce5cbc2a in memory
flw f7, 0(x2) # load 0xce5cbc2a from memory into f7
fsgnjx.s f9, f6, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x17, 0x28e123ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0xb4a8e699 # load x3 with value 0xb4a8e699
sw x3, 0(x2) # store 0xb4a8e699 in memory
flw f31, 0(x2) # load 0xb4a8e699 from memory into f31
fsgnjx.s f17, f12, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x2, 0x1e49f042 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0xdafd9627 # load x3 with value 0xdafd9627
sw x3, 0(x2) # store 0xdafd9627 in memory
flw f8, 0(x2) # load 0xdafd9627 from memory into f8
fsgnjx.s f2, f21, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x12, 0x5cb9e0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x53c20fcf # load x3 with value 0x53c20fcf
sw x3, 0(x2) # store 0x53c20fcf in memory
flw f7, 0(x2) # load 0x53c20fcf from memory into f7
fsgnjx.s f12, f19, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x8, 0xa3a2351a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0x103fd4b4 # load x3 with value 0x103fd4b4
sw x3, 0(x2) # store 0x103fd4b4 in memory
flw f15, 0(x2) # load 0x103fd4b4 from memory into f15
fsgnjx.s f8, f16, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x13, 0xad5d3d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23267e3f # load x3 with value 0x23267e3f
sw x3, 0(x2) # store 0x23267e3f in memory
flw f18, 0(x2) # load 0x23267e3f from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsgnjx.s f13, f18, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x27, 0x4e4e46fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19b6bf07 # load x3 with value 0x19b6bf07
sw x3, 0(x2) # store 0x19b6bf07 in memory
flw f19, 0(x2) # load 0x19b6bf07 from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fsgnjx.s f27, f19, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x10, 0xf20f30d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46e77730 # load x3 with value 0x46e77730
sw x3, 0(x2) # store 0x46e77730 in memory
flw f14, 0(x2) # load 0x46e77730 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fsgnjx.s f10, f14, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x5, 0xeb545c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4794322 # load x3 with value 0xf4794322
sw x3, 0(x2) # store 0xf4794322 in memory
flw f17, 0(x2) # load 0xf4794322 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsgnjx.s f5, f17, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x29, 0x9d9580ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68212d64 # load x3 with value 0x68212d64
sw x3, 0(x2) # store 0x68212d64 in memory
flw f25, 0(x2) # load 0x68212d64 from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fsgnjx.s f29, f25, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x19, 0x4b4ab275 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a1ce484 # load x3 with value 0x9a1ce484
sw x3, 0(x2) # store 0x9a1ce484 in memory
flw f1, 0(x2) # load 0x9a1ce484 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fsgnjx.s f19, f1, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x21, 0x28a010ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd15d98c5 # load x3 with value 0xd15d98c5
sw x3, 0(x2) # store 0xd15d98c5 in memory
flw f9, 0(x2) # load 0xd15d98c5 from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fsgnjx.s f21, f9, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x3, 0xf20ed39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe80e609d # load x3 with value 0xe80e609d
sw x3, 0(x2) # store 0xe80e609d in memory
flw f14, 0(x2) # load 0xe80e609d from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsgnjx.s f3, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x21, 0xcb120e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35e0f80f # load x3 with value 0x35e0f80f
sw x3, 0(x2) # store 0x35e0f80f in memory
flw f2, 0(x2) # load 0x35e0f80f from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsgnjx.s f21, f2, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x9, 0x30b079ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x724ac5d4 # load x3 with value 0x724ac5d4
sw x3, 0(x2) # store 0x724ac5d4 in memory
flw f1, 0(x2) # load 0x724ac5d4 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fsgnjx.s f9, f1, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x4, 0xb531cc71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8db16c0 # load x3 with value 0xc8db16c0
sw x3, 0(x2) # store 0xc8db16c0 in memory
flw f12, 0(x2) # load 0xc8db16c0 from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fsgnjx.s f4, f12, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x13, 0xa1bf6d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b9ccb7a # load x3 with value 0x8b9ccb7a
sw x3, 0(x2) # store 0x8b9ccb7a in memory
flw f30, 0(x2) # load 0x8b9ccb7a from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fsgnjx.s f13, f30, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x11, 0x7531bd4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf75cbbf4 # load x3 with value 0xf75cbbf4
sw x3, 0(x2) # store 0xf75cbbf4 in memory
flw f27, 0(x2) # load 0xf75cbbf4 from memory into f27
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fsgnjx.s f11, f27, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x24, 0xd23ffc8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90f66b63 # load x3 with value 0x90f66b63
sw x3, 0(x2) # store 0x90f66b63 in memory
flw f17, 0(x2) # load 0x90f66b63 from memory into f17
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fsgnjx.s f24, f17, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x8, 0xda14778e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c71e1f1 # load x3 with value 0x3c71e1f1
sw x3, 0(x2) # store 0x3c71e1f1 in memory
flw f28, 0(x2) # load 0x3c71e1f1 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fsgnjx.s f8, f28, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x2, 0x6dfc2461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e3b04a9 # load x3 with value 0x0e3b04a9
sw x3, 0(x2) # store 0x0e3b04a9 in memory
flw f12, 0(x2) # load 0x0e3b04a9 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fsgnjx.s f2, f12, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x30, 0xb945c538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a7cb132 # load x3 with value 0x5a7cb132
sw x3, 0(x2) # store 0x5a7cb132 in memory
flw f19, 0(x2) # load 0x5a7cb132 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fsgnjx.s f30, f19, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x16, 0x695b88ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab8bd33b # load x3 with value 0xab8bd33b
sw x3, 0(x2) # store 0xab8bd33b in memory
flw f5, 0(x2) # load 0xab8bd33b from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fsgnjx.s f16, f5, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x23, 0xe085d7f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x867e240d # load x3 with value 0x867e240d
sw x3, 0(x2) # store 0x867e240d in memory
flw f19, 0(x2) # load 0x867e240d from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fsgnjx.s f23, f19, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x22, 0x39466c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4e395d9 # load x3 with value 0xc4e395d9
sw x3, 0(x2) # store 0xc4e395d9 in memory
flw f13, 0(x2) # load 0xc4e395d9 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fsgnjx.s f22, f13, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x7, 0xf48feefc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46bd9e18 # load x3 with value 0x46bd9e18
sw x3, 0(x2) # store 0x46bd9e18 in memory
flw f1, 0(x2) # load 0x46bd9e18 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fsgnjx.s f7, f1, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x1, 0x57d020f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d098a55 # load x3 with value 0x6d098a55
sw x3, 0(x2) # store 0x6d098a55 in memory
flw f15, 0(x2) # load 0x6d098a55 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fsgnjx.s f1, f15, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x9, 0x6d1ba932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69270100 # load x3 with value 0x69270100
sw x3, 0(x2) # store 0x69270100 in memory
flw f21, 0(x2) # load 0x69270100 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fsgnjx.s f9, f21, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x19, 0xa11edbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0164986 # load x3 with value 0xa0164986
sw x3, 0(x2) # store 0xa0164986 in memory
flw f17, 0(x2) # load 0xa0164986 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fsgnjx.s f19, f17, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x18, 0xb821f9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ad405a4 # load x3 with value 0x5ad405a4
sw x3, 0(x2) # store 0x5ad405a4 in memory
flw f16, 0(x2) # load 0x5ad405a4 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fsgnjx.s f18, f16, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x8, 0x23505cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa52071cf # load x3 with value 0xa52071cf
sw x3, 0(x2) # store 0xa52071cf in memory
flw f30, 0(x2) # load 0xa52071cf from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fsgnjx.s f8, f30, f10 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xe6c3ced5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96b6f5b4 # load x3 with value 0x96b6f5b4
sw x3, 0(x2) # store 0x96b6f5b4 in memory
flw f14, 0(x2) # load 0x96b6f5b4 from memory into f14
li x3, 0x166d4983 # load x3 with value 0x166d4983
sw x3, 0(x2) # store 0x166d4983 in memory
flw f5, 0(x2) # load 0x166d4983 from memory into f5
fsgnjx.s f0, f14, f5 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xae88e84f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde429303 # load x3 with value 0xde429303
sw x3, 0(x2) # store 0xde429303 in memory
flw f7, 0(x2) # load 0xde429303 from memory into f7
li x3, 0xdad29250 # load x3 with value 0xdad29250
sw x3, 0(x2) # store 0xdad29250 in memory
flw f12, 0(x2) # load 0xdad29250 from memory into f12
fsgnjx.s f1, f7, f12 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x2f3c727e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc236ce71 # load x3 with value 0xc236ce71
sw x3, 0(x2) # store 0xc236ce71 in memory
flw f19, 0(x2) # load 0xc236ce71 from memory into f19
li x3, 0x52336a03 # load x3 with value 0x52336a03
sw x3, 0(x2) # store 0x52336a03 in memory
flw f4, 0(x2) # load 0x52336a03 from memory into f4
fsgnjx.s f2, f19, f4 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x7a250543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd186b493 # load x3 with value 0xd186b493
sw x3, 0(x2) # store 0xd186b493 in memory
flw f13, 0(x2) # load 0xd186b493 from memory into f13
li x3, 0x4b327b26 # load x3 with value 0x4b327b26
sw x3, 0(x2) # store 0x4b327b26 in memory
flw f23, 0(x2) # load 0x4b327b26 from memory into f23
fsgnjx.s f3, f13, f23 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xee8b3de3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81870176 # load x3 with value 0x81870176
sw x3, 0(x2) # store 0x81870176 in memory
flw f4, 0(x2) # load 0x81870176 from memory into f4
li x3, 0xa407dac2 # load x3 with value 0xa407dac2
sw x3, 0(x2) # store 0xa407dac2 in memory
flw f10, 0(x2) # load 0xa407dac2 from memory into f10
fsgnjx.s f4, f4, f10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xbdf4eb55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd6d541f # load x3 with value 0xfd6d541f
sw x3, 0(x2) # store 0xfd6d541f in memory
flw f3, 0(x2) # load 0xfd6d541f from memory into f3
li x3, 0x4f3029cc # load x3 with value 0x4f3029cc
sw x3, 0(x2) # store 0x4f3029cc in memory
flw f23, 0(x2) # load 0x4f3029cc from memory into f23
fsgnjx.s f5, f3, f23 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x1a1b52ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2242a0c7 # load x3 with value 0x2242a0c7
sw x3, 0(x2) # store 0x2242a0c7 in memory
flw f3, 0(x2) # load 0x2242a0c7 from memory into f3
li x3, 0xe9a2d19b # load x3 with value 0xe9a2d19b
sw x3, 0(x2) # store 0xe9a2d19b in memory
flw f6, 0(x2) # load 0xe9a2d19b from memory into f6
fsgnjx.s f6, f3, f6 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xaeb592dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x310bed6e # load x3 with value 0x310bed6e
sw x3, 0(x2) # store 0x310bed6e in memory
flw f24, 0(x2) # load 0x310bed6e from memory into f24
li x3, 0x817d185b # load x3 with value 0x817d185b
sw x3, 0(x2) # store 0x817d185b in memory
flw f1, 0(x2) # load 0x817d185b from memory into f1
fsgnjx.s f7, f24, f1 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x581d0ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3148e7d5 # load x3 with value 0x3148e7d5
sw x3, 0(x2) # store 0x3148e7d5 in memory
flw f5, 0(x2) # load 0x3148e7d5 from memory into f5
li x3, 0xed6716f4 # load x3 with value 0xed6716f4
sw x3, 0(x2) # store 0xed6716f4 in memory
flw f21, 0(x2) # load 0xed6716f4 from memory into f21
fsgnjx.s f8, f5, f21 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xcd28ed1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef0f0352 # load x3 with value 0xef0f0352
sw x3, 0(x2) # store 0xef0f0352 in memory
flw f11, 0(x2) # load 0xef0f0352 from memory into f11
li x3, 0x0b67a43f # load x3 with value 0x0b67a43f
sw x3, 0(x2) # store 0x0b67a43f in memory
flw f23, 0(x2) # load 0x0b67a43f from memory into f23
fsgnjx.s f9, f11, f23 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x41e452e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf27e9949 # load x3 with value 0xf27e9949
sw x3, 0(x2) # store 0xf27e9949 in memory
flw f24, 0(x2) # load 0xf27e9949 from memory into f24
li x3, 0x2ae07668 # load x3 with value 0x2ae07668
sw x3, 0(x2) # store 0x2ae07668 in memory
flw f22, 0(x2) # load 0x2ae07668 from memory into f22
fsgnjx.s f10, f24, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x95d64798 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0492e4d9 # load x3 with value 0x0492e4d9
sw x3, 0(x2) # store 0x0492e4d9 in memory
flw f9, 0(x2) # load 0x0492e4d9 from memory into f9
li x3, 0x230c6412 # load x3 with value 0x230c6412
sw x3, 0(x2) # store 0x230c6412 in memory
flw f17, 0(x2) # load 0x230c6412 from memory into f17
fsgnjx.s f11, f9, f17 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x371f17fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fc4685f # load x3 with value 0x8fc4685f
sw x3, 0(x2) # store 0x8fc4685f in memory
flw f10, 0(x2) # load 0x8fc4685f from memory into f10
li x3, 0x766e03c6 # load x3 with value 0x766e03c6
sw x3, 0(x2) # store 0x766e03c6 in memory
flw f19, 0(x2) # load 0x766e03c6 from memory into f19
fsgnjx.s f12, f10, f19 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xb7b3ac61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd986e34 # load x3 with value 0xbd986e34
sw x3, 0(x2) # store 0xbd986e34 in memory
flw f11, 0(x2) # load 0xbd986e34 from memory into f11
li x3, 0xdadd5e33 # load x3 with value 0xdadd5e33
sw x3, 0(x2) # store 0xdadd5e33 in memory
flw f9, 0(x2) # load 0xdadd5e33 from memory into f9
fsgnjx.s f13, f11, f9 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x19f501a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5db2efb1 # load x3 with value 0x5db2efb1
sw x3, 0(x2) # store 0x5db2efb1 in memory
flw f8, 0(x2) # load 0x5db2efb1 from memory into f8
li x3, 0xa83ad1a8 # load x3 with value 0xa83ad1a8
sw x3, 0(x2) # store 0xa83ad1a8 in memory
flw f4, 0(x2) # load 0xa83ad1a8 from memory into f4
fsgnjx.s f14, f8, f4 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x2ea91124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x509581be # load x3 with value 0x509581be
sw x3, 0(x2) # store 0x509581be in memory
flw f12, 0(x2) # load 0x509581be from memory into f12
li x3, 0xdb9ead44 # load x3 with value 0xdb9ead44
sw x3, 0(x2) # store 0xdb9ead44 in memory
flw f31, 0(x2) # load 0xdb9ead44 from memory into f31
fsgnjx.s f15, f12, f31 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xe92f55cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1756c5a # load x3 with value 0xf1756c5a
sw x3, 0(x2) # store 0xf1756c5a in memory
flw f15, 0(x2) # load 0xf1756c5a from memory into f15
li x3, 0xa0ca1abe # load x3 with value 0xa0ca1abe
sw x3, 0(x2) # store 0xa0ca1abe in memory
flw f8, 0(x2) # load 0xa0ca1abe from memory into f8
fsgnjx.s f16, f15, f8 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x3f9dd40c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1f56db9 # load x3 with value 0xc1f56db9
sw x3, 0(x2) # store 0xc1f56db9 in memory
flw f5, 0(x2) # load 0xc1f56db9 from memory into f5
li x3, 0x0e126ebf # load x3 with value 0x0e126ebf
sw x3, 0(x2) # store 0x0e126ebf in memory
flw f7, 0(x2) # load 0x0e126ebf from memory into f7
fsgnjx.s f17, f5, f7 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xe7598ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fe5c883 # load x3 with value 0x7fe5c883
sw x3, 0(x2) # store 0x7fe5c883 in memory
flw f22, 0(x2) # load 0x7fe5c883 from memory into f22
li x3, 0xd66e2315 # load x3 with value 0xd66e2315
sw x3, 0(x2) # store 0xd66e2315 in memory
flw f30, 0(x2) # load 0xd66e2315 from memory into f30
fsgnjx.s f18, f22, f30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xefa4ccd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35747efa # load x3 with value 0x35747efa
sw x3, 0(x2) # store 0x35747efa in memory
flw f13, 0(x2) # load 0x35747efa from memory into f13
li x3, 0x726c8a24 # load x3 with value 0x726c8a24
sw x3, 0(x2) # store 0x726c8a24 in memory
flw f30, 0(x2) # load 0x726c8a24 from memory into f30
fsgnjx.s f19, f13, f30 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x6ab72c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa406a63c # load x3 with value 0xa406a63c
sw x3, 0(x2) # store 0xa406a63c in memory
flw f1, 0(x2) # load 0xa406a63c from memory into f1
li x3, 0x1254d3f9 # load x3 with value 0x1254d3f9
sw x3, 0(x2) # store 0x1254d3f9 in memory
flw f25, 0(x2) # load 0x1254d3f9 from memory into f25
fsgnjx.s f20, f1, f25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x04811d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58d81c3d # load x3 with value 0x58d81c3d
sw x3, 0(x2) # store 0x58d81c3d in memory
flw f31, 0(x2) # load 0x58d81c3d from memory into f31
li x3, 0x0881e209 # load x3 with value 0x0881e209
sw x3, 0(x2) # store 0x0881e209 in memory
flw f10, 0(x2) # load 0x0881e209 from memory into f10
fsgnjx.s f21, f31, f10 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xafde5eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c163798 # load x3 with value 0x5c163798
sw x3, 0(x2) # store 0x5c163798 in memory
flw f22, 0(x2) # load 0x5c163798 from memory into f22
li x3, 0x93c7e4ff # load x3 with value 0x93c7e4ff
sw x3, 0(x2) # store 0x93c7e4ff in memory
flw f13, 0(x2) # load 0x93c7e4ff from memory into f13
fsgnjx.s f22, f22, f13 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x0d89e20f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x837649c4 # load x3 with value 0x837649c4
sw x3, 0(x2) # store 0x837649c4 in memory
flw f2, 0(x2) # load 0x837649c4 from memory into f2
li x3, 0x768aa9a4 # load x3 with value 0x768aa9a4
sw x3, 0(x2) # store 0x768aa9a4 in memory
flw f13, 0(x2) # load 0x768aa9a4 from memory into f13
fsgnjx.s f23, f2, f13 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xc800bb62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06600694 # load x3 with value 0x06600694
sw x3, 0(x2) # store 0x06600694 in memory
flw f24, 0(x2) # load 0x06600694 from memory into f24
li x3, 0x14a030d8 # load x3 with value 0x14a030d8
sw x3, 0(x2) # store 0x14a030d8 in memory
flw f2, 0(x2) # load 0x14a030d8 from memory into f2
fsgnjx.s f24, f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x0fa373cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x782b63d8 # load x3 with value 0x782b63d8
sw x3, 0(x2) # store 0x782b63d8 in memory
flw f8, 0(x2) # load 0x782b63d8 from memory into f8
li x3, 0xb70d94e9 # load x3 with value 0xb70d94e9
sw x3, 0(x2) # store 0xb70d94e9 in memory
flw f29, 0(x2) # load 0xb70d94e9 from memory into f29
fsgnjx.s f25, f8, f29 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x37b0d77c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84d6466b # load x3 with value 0x84d6466b
sw x3, 0(x2) # store 0x84d6466b in memory
flw f3, 0(x2) # load 0x84d6466b from memory into f3
li x3, 0xb07b1595 # load x3 with value 0xb07b1595
sw x3, 0(x2) # store 0xb07b1595 in memory
flw f30, 0(x2) # load 0xb07b1595 from memory into f30
fsgnjx.s f26, f3, f30 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xe0b3c483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61c47e21 # load x3 with value 0x61c47e21
sw x3, 0(x2) # store 0x61c47e21 in memory
flw f29, 0(x2) # load 0x61c47e21 from memory into f29
li x3, 0xc0a94e58 # load x3 with value 0xc0a94e58
sw x3, 0(x2) # store 0xc0a94e58 in memory
flw f16, 0(x2) # load 0xc0a94e58 from memory into f16
fsgnjx.s f27, f29, f16 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x377abeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa07eaada # load x3 with value 0xa07eaada
sw x3, 0(x2) # store 0xa07eaada in memory
flw f18, 0(x2) # load 0xa07eaada from memory into f18
li x3, 0xf3813711 # load x3 with value 0xf3813711
sw x3, 0(x2) # store 0xf3813711 in memory
flw f27, 0(x2) # load 0xf3813711 from memory into f27
fsgnjx.s f28, f18, f27 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x561ae397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55261187 # load x3 with value 0x55261187
sw x3, 0(x2) # store 0x55261187 in memory
flw f25, 0(x2) # load 0x55261187 from memory into f25
li x3, 0xc8c6bc89 # load x3 with value 0xc8c6bc89
sw x3, 0(x2) # store 0xc8c6bc89 in memory
flw f9, 0(x2) # load 0xc8c6bc89 from memory into f9
fsgnjx.s f29, f25, f9 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x5fa8779a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5681157 # load x3 with value 0xc5681157
sw x3, 0(x2) # store 0xc5681157 in memory
flw f24, 0(x2) # load 0xc5681157 from memory into f24
li x3, 0x74765cb3 # load x3 with value 0x74765cb3
sw x3, 0(x2) # store 0x74765cb3 in memory
flw f14, 0(x2) # load 0x74765cb3 from memory into f14
fsgnjx.s f30, f24, f14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xe73a73ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcfe287e # load x3 with value 0xbcfe287e
sw x3, 0(x2) # store 0xbcfe287e in memory
flw f7, 0(x2) # load 0xbcfe287e from memory into f7
li x3, 0x9f066b77 # load x3 with value 0x9f066b77
sw x3, 0(x2) # store 0x9f066b77 in memory
flw f5, 0(x2) # load 0x9f066b77 from memory into f5
fsgnjx.s f31, f7, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x27, 0xe7b9484e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a844ee4 # load x3 with value 0x7a844ee4
sw x3, 0(x2) # store 0x7a844ee4 in memory
flw f0, 0(x2) # load 0x7a844ee4 from memory into f0
li x3, 0xbf22ff3b # load x3 with value 0xbf22ff3b
sw x3, 0(x2) # store 0xbf22ff3b in memory
flw f4, 0(x2) # load 0xbf22ff3b from memory into f4
fsgnjx.s f27, f0, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x25, 0xa4e7963d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d680a75 # load x3 with value 0x3d680a75
sw x3, 0(x2) # store 0x3d680a75 in memory
flw f1, 0(x2) # load 0x3d680a75 from memory into f1
li x3, 0x40afa8f7 # load x3 with value 0x40afa8f7
sw x3, 0(x2) # store 0x40afa8f7 in memory
flw f23, 0(x2) # load 0x40afa8f7 from memory into f23
fsgnjx.s f25, f1, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x3, 0x4fa08fae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb354842f # load x3 with value 0xb354842f
sw x3, 0(x2) # store 0xb354842f in memory
flw f2, 0(x2) # load 0xb354842f from memory into f2
li x3, 0x667c93d3 # load x3 with value 0x667c93d3
sw x3, 0(x2) # store 0x667c93d3 in memory
flw f1, 0(x2) # load 0x667c93d3 from memory into f1
fsgnjx.s f3, f2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x17, 0xb1484e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb6c7cfb # load x3 with value 0xcb6c7cfb
sw x3, 0(x2) # store 0xcb6c7cfb in memory
flw f3, 0(x2) # load 0xcb6c7cfb from memory into f3
li x3, 0x4a71df97 # load x3 with value 0x4a71df97
sw x3, 0(x2) # store 0x4a71df97 in memory
flw f27, 0(x2) # load 0x4a71df97 from memory into f27
fsgnjx.s f17, f3, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x11, 0xd2db9399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0cd8e79 # load x3 with value 0xd0cd8e79
sw x3, 0(x2) # store 0xd0cd8e79 in memory
flw f4, 0(x2) # load 0xd0cd8e79 from memory into f4
li x3, 0xaab63cae # load x3 with value 0xaab63cae
sw x3, 0(x2) # store 0xaab63cae in memory
flw f24, 0(x2) # load 0xaab63cae from memory into f24
fsgnjx.s f11, f4, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0xa31fa1a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa94d7641 # load x3 with value 0xa94d7641
sw x3, 0(x2) # store 0xa94d7641 in memory
flw f5, 0(x2) # load 0xa94d7641 from memory into f5
li x3, 0xd38012e8 # load x3 with value 0xd38012e8
sw x3, 0(x2) # store 0xd38012e8 in memory
flw f11, 0(x2) # load 0xd38012e8 from memory into f11
fsgnjx.s f14, f5, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0xcd5e0939 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5848a13d # load x3 with value 0x5848a13d
sw x3, 0(x2) # store 0x5848a13d in memory
flw f6, 0(x2) # load 0x5848a13d from memory into f6
li x3, 0x5af75126 # load x3 with value 0x5af75126
sw x3, 0(x2) # store 0x5af75126 in memory
flw f17, 0(x2) # load 0x5af75126 from memory into f17
fsgnjx.s f12, f6, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x21, 0x2993135b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e420e47 # load x3 with value 0x7e420e47
sw x3, 0(x2) # store 0x7e420e47 in memory
flw f7, 0(x2) # load 0x7e420e47 from memory into f7
li x3, 0x916add9d # load x3 with value 0x916add9d
sw x3, 0(x2) # store 0x916add9d in memory
flw f20, 0(x2) # load 0x916add9d from memory into f20
fsgnjx.s f21, f7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x22, 0x61475bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc38a7f17 # load x3 with value 0xc38a7f17
sw x3, 0(x2) # store 0xc38a7f17 in memory
flw f8, 0(x2) # load 0xc38a7f17 from memory into f8
li x3, 0xcb715cc5 # load x3 with value 0xcb715cc5
sw x3, 0(x2) # store 0xcb715cc5 in memory
flw f26, 0(x2) # load 0xcb715cc5 from memory into f26
fsgnjx.s f22, f8, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x16, 0xe54fbc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7ef0175 # load x3 with value 0xa7ef0175
sw x3, 0(x2) # store 0xa7ef0175 in memory
flw f9, 0(x2) # load 0xa7ef0175 from memory into f9
li x3, 0xbbb42681 # load x3 with value 0xbbb42681
sw x3, 0(x2) # store 0xbbb42681 in memory
flw f11, 0(x2) # load 0xbbb42681 from memory into f11
fsgnjx.s f16, f9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x26, 0x5d53aec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb278b49 # load x3 with value 0xbb278b49
sw x3, 0(x2) # store 0xbb278b49 in memory
flw f10, 0(x2) # load 0xbb278b49 from memory into f10
li x3, 0xbed414e4 # load x3 with value 0xbed414e4
sw x3, 0(x2) # store 0xbed414e4 in memory
flw f19, 0(x2) # load 0xbed414e4 from memory into f19
fsgnjx.s f26, f10, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x30, 0x3899d538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81b55f1d # load x3 with value 0x81b55f1d
sw x3, 0(x2) # store 0x81b55f1d in memory
flw f11, 0(x2) # load 0x81b55f1d from memory into f11
li x3, 0xc3ec1fbe # load x3 with value 0xc3ec1fbe
sw x3, 0(x2) # store 0xc3ec1fbe in memory
flw f26, 0(x2) # load 0xc3ec1fbe from memory into f26
fsgnjx.s f30, f11, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x15, 0xa04fc69e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81dfccd5 # load x3 with value 0x81dfccd5
sw x3, 0(x2) # store 0x81dfccd5 in memory
flw f12, 0(x2) # load 0x81dfccd5 from memory into f12
li x3, 0x333ea9bd # load x3 with value 0x333ea9bd
sw x3, 0(x2) # store 0x333ea9bd in memory
flw f10, 0(x2) # load 0x333ea9bd from memory into f10
fsgnjx.s f15, f12, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x19, 0xee84f33a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1576cd1 # load x3 with value 0xe1576cd1
sw x3, 0(x2) # store 0xe1576cd1 in memory
flw f13, 0(x2) # load 0xe1576cd1 from memory into f13
li x3, 0x8f944956 # load x3 with value 0x8f944956
sw x3, 0(x2) # store 0x8f944956 in memory
flw f14, 0(x2) # load 0x8f944956 from memory into f14
fsgnjx.s f19, f13, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x2, 0x28804ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30eb6858 # load x3 with value 0x30eb6858
sw x3, 0(x2) # store 0x30eb6858 in memory
flw f14, 0(x2) # load 0x30eb6858 from memory into f14
li x3, 0xb2643f61 # load x3 with value 0xb2643f61
sw x3, 0(x2) # store 0xb2643f61 in memory
flw f11, 0(x2) # load 0xb2643f61 from memory into f11
fsgnjx.s f2, f14, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x6, 0xfc9086b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7153337e # load x3 with value 0x7153337e
sw x3, 0(x2) # store 0x7153337e in memory
flw f15, 0(x2) # load 0x7153337e from memory into f15
li x3, 0x80e8605e # load x3 with value 0x80e8605e
sw x3, 0(x2) # store 0x80e8605e in memory
flw f22, 0(x2) # load 0x80e8605e from memory into f22
fsgnjx.s f6, f15, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x18, 0x175ebe18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e57dbc0 # load x3 with value 0x3e57dbc0
sw x3, 0(x2) # store 0x3e57dbc0 in memory
flw f16, 0(x2) # load 0x3e57dbc0 from memory into f16
li x3, 0xb7e6e5fe # load x3 with value 0xb7e6e5fe
sw x3, 0(x2) # store 0xb7e6e5fe in memory
flw f4, 0(x2) # load 0xb7e6e5fe from memory into f4
fsgnjx.s f18, f16, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x13, 0xb7e8a3ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24763b31 # load x3 with value 0x24763b31
sw x3, 0(x2) # store 0x24763b31 in memory
flw f17, 0(x2) # load 0x24763b31 from memory into f17
li x3, 0x2229e195 # load x3 with value 0x2229e195
sw x3, 0(x2) # store 0x2229e195 in memory
flw f1, 0(x2) # load 0x2229e195 from memory into f1
fsgnjx.s f13, f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x26, 0x0db991fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c3f0c26 # load x3 with value 0x9c3f0c26
sw x3, 0(x2) # store 0x9c3f0c26 in memory
flw f18, 0(x2) # load 0x9c3f0c26 from memory into f18
li x3, 0x035e0442 # load x3 with value 0x035e0442
sw x3, 0(x2) # store 0x035e0442 in memory
flw f28, 0(x2) # load 0x035e0442 from memory into f28
fsgnjx.s f26, f18, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x3, 0x11f6986b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e6ddb33 # load x3 with value 0x1e6ddb33
sw x3, 0(x2) # store 0x1e6ddb33 in memory
flw f19, 0(x2) # load 0x1e6ddb33 from memory into f19
li x3, 0xba453e5b # load x3 with value 0xba453e5b
sw x3, 0(x2) # store 0xba453e5b in memory
flw f14, 0(x2) # load 0xba453e5b from memory into f14
fsgnjx.s f3, f19, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x4, 0x2c5c3408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1244e511 # load x3 with value 0x1244e511
sw x3, 0(x2) # store 0x1244e511 in memory
flw f20, 0(x2) # load 0x1244e511 from memory into f20
li x3, 0xe37b8843 # load x3 with value 0xe37b8843
sw x3, 0(x2) # store 0xe37b8843 in memory
flw f5, 0(x2) # load 0xe37b8843 from memory into f5
fsgnjx.s f4, f20, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x17, 0x47894397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7dd848ac # load x3 with value 0x7dd848ac
sw x3, 0(x2) # store 0x7dd848ac in memory
flw f21, 0(x2) # load 0x7dd848ac from memory into f21
li x3, 0x8e1bd7c0 # load x3 with value 0x8e1bd7c0
sw x3, 0(x2) # store 0x8e1bd7c0 in memory
flw f24, 0(x2) # load 0x8e1bd7c0 from memory into f24
fsgnjx.s f17, f21, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x24, 0x5f9b7fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5f1db9f # load x3 with value 0xa5f1db9f
sw x3, 0(x2) # store 0xa5f1db9f in memory
flw f22, 0(x2) # load 0xa5f1db9f from memory into f22
li x3, 0xe145dcee # load x3 with value 0xe145dcee
sw x3, 0(x2) # store 0xe145dcee in memory
flw f12, 0(x2) # load 0xe145dcee from memory into f12
fsgnjx.s f24, f22, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x12, 0x1ea552fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ec4990b # load x3 with value 0x5ec4990b
sw x3, 0(x2) # store 0x5ec4990b in memory
flw f23, 0(x2) # load 0x5ec4990b from memory into f23
li x3, 0x527910c0 # load x3 with value 0x527910c0
sw x3, 0(x2) # store 0x527910c0 in memory
flw f20, 0(x2) # load 0x527910c0 from memory into f20
fsgnjx.s f12, f23, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x14, 0xc692879d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec448cbd # load x3 with value 0xec448cbd
sw x3, 0(x2) # store 0xec448cbd in memory
flw f24, 0(x2) # load 0xec448cbd from memory into f24
li x3, 0xe7aba502 # load x3 with value 0xe7aba502
sw x3, 0(x2) # store 0xe7aba502 in memory
flw f21, 0(x2) # load 0xe7aba502 from memory into f21
fsgnjx.s f14, f24, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0x34e28555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b2488c4 # load x3 with value 0x1b2488c4
sw x3, 0(x2) # store 0x1b2488c4 in memory
flw f25, 0(x2) # load 0x1b2488c4 from memory into f25
li x3, 0x638b2cfe # load x3 with value 0x638b2cfe
sw x3, 0(x2) # store 0x638b2cfe in memory
flw f16, 0(x2) # load 0x638b2cfe from memory into f16
fsgnjx.s f18, f25, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x28, 0xe8b29846 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb76126a # load x3 with value 0xdb76126a
sw x3, 0(x2) # store 0xdb76126a in memory
flw f26, 0(x2) # load 0xdb76126a from memory into f26
li x3, 0x109ecdd4 # load x3 with value 0x109ecdd4
sw x3, 0(x2) # store 0x109ecdd4 in memory
flw f3, 0(x2) # load 0x109ecdd4 from memory into f3
fsgnjx.s f28, f26, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x16, 0xb4094347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x366c70d2 # load x3 with value 0x366c70d2
sw x3, 0(x2) # store 0x366c70d2 in memory
flw f27, 0(x2) # load 0x366c70d2 from memory into f27
li x3, 0xc2e21b65 # load x3 with value 0xc2e21b65
sw x3, 0(x2) # store 0xc2e21b65 in memory
flw f11, 0(x2) # load 0xc2e21b65 from memory into f11
fsgnjx.s f16, f27, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x3, 0x72bf4779 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa54d0333 # load x3 with value 0xa54d0333
sw x3, 0(x2) # store 0xa54d0333 in memory
flw f28, 0(x2) # load 0xa54d0333 from memory into f28
li x3, 0x71d93276 # load x3 with value 0x71d93276
sw x3, 0(x2) # store 0x71d93276 in memory
flw f30, 0(x2) # load 0x71d93276 from memory into f30
fsgnjx.s f3, f28, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x3, 0xcdead14c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbe42e34 # load x3 with value 0xfbe42e34
sw x3, 0(x2) # store 0xfbe42e34 in memory
flw f29, 0(x2) # load 0xfbe42e34 from memory into f29
li x3, 0x17c89ef0 # load x3 with value 0x17c89ef0
sw x3, 0(x2) # store 0x17c89ef0 in memory
flw f23, 0(x2) # load 0x17c89ef0 from memory into f23
fsgnjx.s f3, f29, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x27, 0x8398284f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e98b009 # load x3 with value 0x2e98b009
sw x3, 0(x2) # store 0x2e98b009 in memory
flw f30, 0(x2) # load 0x2e98b009 from memory into f30
li x3, 0x69a88683 # load x3 with value 0x69a88683
sw x3, 0(x2) # store 0x69a88683 in memory
flw f23, 0(x2) # load 0x69a88683 from memory into f23
fsgnjx.s f27, f30, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x27, 0x2d274ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a12b3a6 # load x3 with value 0x3a12b3a6
sw x3, 0(x2) # store 0x3a12b3a6 in memory
flw f31, 0(x2) # load 0x3a12b3a6 from memory into f31
li x3, 0x7651b147 # load x3 with value 0x7651b147
sw x3, 0(x2) # store 0x7651b147 in memory
flw f9, 0(x2) # load 0x7651b147 from memory into f9
fsgnjx.s f27, f31, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x14, 0x81054e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x155962da # load x3 with value 0x155962da
sw x3, 0(x2) # store 0x155962da in memory
flw f5, 0(x2) # load 0x155962da from memory into f5
li x3, 0xa5071eba # load x3 with value 0xa5071eba
sw x3, 0(x2) # store 0xa5071eba in memory
flw f0, 0(x2) # load 0xa5071eba from memory into f0
fsgnjx.s f14, f5, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x10, 0xea4cda95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe504795e # load x3 with value 0xe504795e
sw x3, 0(x2) # store 0xe504795e in memory
flw f18, 0(x2) # load 0xe504795e from memory into f18
li x3, 0xebdf8db6 # load x3 with value 0xebdf8db6
sw x3, 0(x2) # store 0xebdf8db6 in memory
flw f1, 0(x2) # load 0xebdf8db6 from memory into f1
fsgnjx.s f10, f18, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x9, 0xad52e09e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1026966e # load x3 with value 0x1026966e
sw x3, 0(x2) # store 0x1026966e in memory
flw f13, 0(x2) # load 0x1026966e from memory into f13
li x3, 0x05014477 # load x3 with value 0x05014477
sw x3, 0(x2) # store 0x05014477 in memory
flw f2, 0(x2) # load 0x05014477 from memory into f2
fsgnjx.s f9, f13, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x20, 0xd63b1795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34d9bce2 # load x3 with value 0x34d9bce2
sw x3, 0(x2) # store 0x34d9bce2 in memory
flw f2, 0(x2) # load 0x34d9bce2 from memory into f2
li x3, 0x8819d241 # load x3 with value 0x8819d241
sw x3, 0(x2) # store 0x8819d241 in memory
flw f3, 0(x2) # load 0x8819d241 from memory into f3
fsgnjx.s f20, f2, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x30, 0x95af07ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb46691db # load x3 with value 0xb46691db
sw x3, 0(x2) # store 0xb46691db in memory
flw f26, 0(x2) # load 0xb46691db from memory into f26
li x3, 0x71d185e8 # load x3 with value 0x71d185e8
sw x3, 0(x2) # store 0x71d185e8 in memory
flw f4, 0(x2) # load 0x71d185e8 from memory into f4
fsgnjx.s f30, f26, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x31, 0x30e63a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4819d613 # load x3 with value 0x4819d613
sw x3, 0(x2) # store 0x4819d613 in memory
flw f30, 0(x2) # load 0x4819d613 from memory into f30
li x3, 0xe0f42f5b # load x3 with value 0xe0f42f5b
sw x3, 0(x2) # store 0xe0f42f5b in memory
flw f5, 0(x2) # load 0xe0f42f5b from memory into f5
fsgnjx.s f31, f30, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x15, 0x1a4407cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47799386 # load x3 with value 0x47799386
sw x3, 0(x2) # store 0x47799386 in memory
flw f7, 0(x2) # load 0x47799386 from memory into f7
li x3, 0xeb79e2d1 # load x3 with value 0xeb79e2d1
sw x3, 0(x2) # store 0xeb79e2d1 in memory
flw f6, 0(x2) # load 0xeb79e2d1 from memory into f6
fsgnjx.s f15, f7, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x10, 0xf0aa7750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e14fdac # load x3 with value 0x8e14fdac
sw x3, 0(x2) # store 0x8e14fdac in memory
flw f8, 0(x2) # load 0x8e14fdac from memory into f8
li x3, 0xd5a178ef # load x3 with value 0xd5a178ef
sw x3, 0(x2) # store 0xd5a178ef in memory
flw f7, 0(x2) # load 0xd5a178ef from memory into f7
fsgnjx.s f10, f8, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x3, 0x0c8c7ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff3ce8b7 # load x3 with value 0xff3ce8b7
sw x3, 0(x2) # store 0xff3ce8b7 in memory
flw f27, 0(x2) # load 0xff3ce8b7 from memory into f27
li x3, 0x86959274 # load x3 with value 0x86959274
sw x3, 0(x2) # store 0x86959274 in memory
flw f8, 0(x2) # load 0x86959274 from memory into f8
fsgnjx.s f3, f27, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x13, 0x4662c7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a447580 # load x3 with value 0x9a447580
sw x3, 0(x2) # store 0x9a447580 in memory
flw f5, 0(x2) # load 0x9a447580 from memory into f5
li x3, 0x87f4451e # load x3 with value 0x87f4451e
sw x3, 0(x2) # store 0x87f4451e in memory
flw f9, 0(x2) # load 0x87f4451e from memory into f9
fsgnjx.s f13, f5, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x15, 0xd3b92e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd690b709 # load x3 with value 0xd690b709
sw x3, 0(x2) # store 0xd690b709 in memory
flw f8, 0(x2) # load 0xd690b709 from memory into f8
li x3, 0x471084f0 # load x3 with value 0x471084f0
sw x3, 0(x2) # store 0x471084f0 in memory
flw f10, 0(x2) # load 0x471084f0 from memory into f10
fsgnjx.s f15, f8, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x26, 0x278d54c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b597b8c # load x3 with value 0x4b597b8c
sw x3, 0(x2) # store 0x4b597b8c in memory
flw f30, 0(x2) # load 0x4b597b8c from memory into f30
li x3, 0xb3cd301d # load x3 with value 0xb3cd301d
sw x3, 0(x2) # store 0xb3cd301d in memory
flw f11, 0(x2) # load 0xb3cd301d from memory into f11
fsgnjx.s f26, f30, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x19, 0x0106ad86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x376032a4 # load x3 with value 0x376032a4
sw x3, 0(x2) # store 0x376032a4 in memory
flw f1, 0(x2) # load 0x376032a4 from memory into f1
li x3, 0xaec1561b # load x3 with value 0xaec1561b
sw x3, 0(x2) # store 0xaec1561b in memory
flw f12, 0(x2) # load 0xaec1561b from memory into f12
fsgnjx.s f19, f1, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x21, 0xcdf4a67d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61febd1b # load x3 with value 0x61febd1b
sw x3, 0(x2) # store 0x61febd1b in memory
flw f24, 0(x2) # load 0x61febd1b from memory into f24
li x3, 0x2f991f34 # load x3 with value 0x2f991f34
sw x3, 0(x2) # store 0x2f991f34 in memory
flw f13, 0(x2) # load 0x2f991f34 from memory into f13
fsgnjx.s f21, f24, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0x32c149df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2793ab6f # load x3 with value 0x2793ab6f
sw x3, 0(x2) # store 0x2793ab6f in memory
flw f2, 0(x2) # load 0x2793ab6f from memory into f2
li x3, 0x47e4f7c5 # load x3 with value 0x47e4f7c5
sw x3, 0(x2) # store 0x47e4f7c5 in memory
flw f14, 0(x2) # load 0x47e4f7c5 from memory into f14
fsgnjx.s f14, f2, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x27, 0xd3c6f549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ec9dd9e # load x3 with value 0x8ec9dd9e
sw x3, 0(x2) # store 0x8ec9dd9e in memory
flw f5, 0(x2) # load 0x8ec9dd9e from memory into f5
li x3, 0xd4cfe8bd # load x3 with value 0xd4cfe8bd
sw x3, 0(x2) # store 0xd4cfe8bd in memory
flw f15, 0(x2) # load 0xd4cfe8bd from memory into f15
fsgnjx.s f27, f5, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x9, 0xd80ea1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb5f555b # load x3 with value 0xbb5f555b
sw x3, 0(x2) # store 0xbb5f555b in memory
flw f31, 0(x2) # load 0xbb5f555b from memory into f31
li x3, 0x36dbdadb # load x3 with value 0x36dbdadb
sw x3, 0(x2) # store 0x36dbdadb in memory
flw f16, 0(x2) # load 0x36dbdadb from memory into f16
fsgnjx.s f9, f31, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x20, 0x6c296da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62899376 # load x3 with value 0x62899376
sw x3, 0(x2) # store 0x62899376 in memory
flw f19, 0(x2) # load 0x62899376 from memory into f19
li x3, 0xb82c78b5 # load x3 with value 0xb82c78b5
sw x3, 0(x2) # store 0xb82c78b5 in memory
flw f17, 0(x2) # load 0xb82c78b5 from memory into f17
fsgnjx.s f20, f19, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x21, 0x676dab2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78d15f24 # load x3 with value 0x78d15f24
sw x3, 0(x2) # store 0x78d15f24 in memory
flw f6, 0(x2) # load 0x78d15f24 from memory into f6
li x3, 0x548c74c5 # load x3 with value 0x548c74c5
sw x3, 0(x2) # store 0x548c74c5 in memory
flw f18, 0(x2) # load 0x548c74c5 from memory into f18
fsgnjx.s f21, f6, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x29, 0x38e60ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c5c8e45 # load x3 with value 0x2c5c8e45
sw x3, 0(x2) # store 0x2c5c8e45 in memory
flw f30, 0(x2) # load 0x2c5c8e45 from memory into f30
li x3, 0x92679197 # load x3 with value 0x92679197
sw x3, 0(x2) # store 0x92679197 in memory
flw f19, 0(x2) # load 0x92679197 from memory into f19
fsgnjx.s f29, f30, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x1, 0x6b10abed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07d2f0b0 # load x3 with value 0x07d2f0b0
sw x3, 0(x2) # store 0x07d2f0b0 in memory
flw f14, 0(x2) # load 0x07d2f0b0 from memory into f14
li x3, 0x6a288444 # load x3 with value 0x6a288444
sw x3, 0(x2) # store 0x6a288444 in memory
flw f20, 0(x2) # load 0x6a288444 from memory into f20
fsgnjx.s f1, f14, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x22, 0x9c445419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c8ce19f # load x3 with value 0x2c8ce19f
sw x3, 0(x2) # store 0x2c8ce19f in memory
flw f19, 0(x2) # load 0x2c8ce19f from memory into f19
li x3, 0x343e0a2b # load x3 with value 0x343e0a2b
sw x3, 0(x2) # store 0x343e0a2b in memory
flw f21, 0(x2) # load 0x343e0a2b from memory into f21
fsgnjx.s f22, f19, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x26, 0x54b01ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f480920 # load x3 with value 0x1f480920
sw x3, 0(x2) # store 0x1f480920 in memory
flw f24, 0(x2) # load 0x1f480920 from memory into f24
li x3, 0xb194d38c # load x3 with value 0xb194d38c
sw x3, 0(x2) # store 0xb194d38c in memory
flw f22, 0(x2) # load 0xb194d38c from memory into f22
fsgnjx.s f26, f24, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x9, 0xc62443f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x490b0ec9 # load x3 with value 0x490b0ec9
sw x3, 0(x2) # store 0x490b0ec9 in memory
flw f26, 0(x2) # load 0x490b0ec9 from memory into f26
li x3, 0x463bb170 # load x3 with value 0x463bb170
sw x3, 0(x2) # store 0x463bb170 in memory
flw f23, 0(x2) # load 0x463bb170 from memory into f23
fsgnjx.s f9, f26, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x19, 0xa616d5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff6f3eb8 # load x3 with value 0xff6f3eb8
sw x3, 0(x2) # store 0xff6f3eb8 in memory
flw f27, 0(x2) # load 0xff6f3eb8 from memory into f27
li x3, 0xabb4c8e0 # load x3 with value 0xabb4c8e0
sw x3, 0(x2) # store 0xabb4c8e0 in memory
flw f24, 0(x2) # load 0xabb4c8e0 from memory into f24
fsgnjx.s f19, f27, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x14, 0x9385bdc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02796fc9 # load x3 with value 0x02796fc9
sw x3, 0(x2) # store 0x02796fc9 in memory
flw f8, 0(x2) # load 0x02796fc9 from memory into f8
li x3, 0xb0cd77d7 # load x3 with value 0xb0cd77d7
sw x3, 0(x2) # store 0xb0cd77d7 in memory
flw f25, 0(x2) # load 0xb0cd77d7 from memory into f25
fsgnjx.s f14, f8, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x2, 0x8d07ebc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f2061f5 # load x3 with value 0x8f2061f5
sw x3, 0(x2) # store 0x8f2061f5 in memory
flw f1, 0(x2) # load 0x8f2061f5 from memory into f1
li x3, 0xf285f5af # load x3 with value 0xf285f5af
sw x3, 0(x2) # store 0xf285f5af in memory
flw f26, 0(x2) # load 0xf285f5af from memory into f26
fsgnjx.s f2, f1, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x12, 0x53b03132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe97c364d # load x3 with value 0xe97c364d
sw x3, 0(x2) # store 0xe97c364d in memory
flw f28, 0(x2) # load 0xe97c364d from memory into f28
li x3, 0x82974202 # load x3 with value 0x82974202
sw x3, 0(x2) # store 0x82974202 in memory
flw f27, 0(x2) # load 0x82974202 from memory into f27
fsgnjx.s f12, f28, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x29, 0xe0ba8e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1920607e # load x3 with value 0x1920607e
sw x3, 0(x2) # store 0x1920607e in memory
flw f24, 0(x2) # load 0x1920607e from memory into f24
li x3, 0x41455711 # load x3 with value 0x41455711
sw x3, 0(x2) # store 0x41455711 in memory
flw f28, 0(x2) # load 0x41455711 from memory into f28
fsgnjx.s f29, f24, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x19, 0x376a423d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64959abc # load x3 with value 0x64959abc
sw x3, 0(x2) # store 0x64959abc in memory
flw f12, 0(x2) # load 0x64959abc from memory into f12
li x3, 0x8bc4cea3 # load x3 with value 0x8bc4cea3
sw x3, 0(x2) # store 0x8bc4cea3 in memory
flw f29, 0(x2) # load 0x8bc4cea3 from memory into f29
fsgnjx.s f19, f12, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x31, 0xd748f034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe12a2fbb # load x3 with value 0xe12a2fbb
sw x3, 0(x2) # store 0xe12a2fbb in memory
flw f11, 0(x2) # load 0xe12a2fbb from memory into f11
li x3, 0x65d2eb1f # load x3 with value 0x65d2eb1f
sw x3, 0(x2) # store 0x65d2eb1f in memory
flw f30, 0(x2) # load 0x65d2eb1f from memory into f30
fsgnjx.s f31, f11, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x30, 0xf8acdbbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3077120 # load x3 with value 0xd3077120
sw x3, 0(x2) # store 0xd3077120 in memory
flw f2, 0(x2) # load 0xd3077120 from memory into f2
li x3, 0x56081fe9 # load x3 with value 0x56081fe9
sw x3, 0(x2) # store 0x56081fe9 in memory
flw f31, 0(x2) # load 0x56081fe9 from memory into f31
fsgnjx.s f30, f2, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
