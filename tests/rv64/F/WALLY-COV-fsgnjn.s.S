///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fsgnjn.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.841289
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
li x19, 0x5f98f81805315c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0xe1594367dde638b # load x3 with value 0xe1594367dde638b
sw x3, 0(x2) # store 0xe1594367dde638b in memory
flw f16, 0(x2) # load 0xe1594367dde638b from memory into f16
fsgnjn.s f19, f25, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x22, 0xc39c544b17f1a96e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
li x3, 0xc8ba6dd209d49e18 # load x3 with value 0xc8ba6dd209d49e18
sw x3, 0(x2) # store 0xc8ba6dd209d49e18 in memory
flw f27, 0(x2) # load 0xc8ba6dd209d49e18 from memory into f27
fsgnjn.s f22, f11, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x21, 0x4f5ddf013cf53e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x3693ed22ddfd1334 # load x3 with value 0x3693ed22ddfd1334
sw x3, 0(x2) # store 0x3693ed22ddfd1334 in memory
flw f10, 0(x2) # load 0x3693ed22ddfd1334 from memory into f10
fsgnjn.s f21, f3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x20, 0x4f165f95132ec60e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0xe0dd9799a13da288 # load x3 with value 0xe0dd9799a13da288
sw x3, 0(x2) # store 0xe0dd9799a13da288 in memory
flw f17, 0(x2) # load 0xe0dd9799a13da288 from memory into f17
fsgnjn.s f20, f7, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x16, 0xeca54699b323831e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0xb630df8fb34abca0 # load x3 with value 0xb630df8fb34abca0
sw x3, 0(x2) # store 0xb630df8fb34abca0 in memory
flw f8, 0(x2) # load 0xb630df8fb34abca0 from memory into f8
fsgnjn.s f16, f26, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x26, 0x0422e4aad5a56a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x89a0283a0d43f9eb # load x3 with value 0x89a0283a0d43f9eb
sw x3, 0(x2) # store 0x89a0283a0d43f9eb in memory
flw f22, 0(x2) # load 0x89a0283a0d43f9eb from memory into f22
fsgnjn.s f26, f30, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x4, 0xcd2cac94cc74457a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x1fa035463bb6ee5 # load x3 with value 0x1fa035463bb6ee5
sw x3, 0(x2) # store 0x1fa035463bb6ee5 in memory
flw f8, 0(x2) # load 0x1fa035463bb6ee5 from memory into f8
fsgnjn.s f4, f10, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x5, 0xd7d42aa981ed65c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x1b6aab442acda690 # load x3 with value 0x1b6aab442acda690
sw x3, 0(x2) # store 0x1b6aab442acda690 in memory
flw f27, 0(x2) # load 0x1b6aab442acda690 from memory into f27
fsgnjn.s f5, f21, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x23, 0x44d03f0446c6fc2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
li x3, 0x325e47def4bd8924 # load x3 with value 0x325e47def4bd8924
sw x3, 0(x2) # store 0x325e47def4bd8924 in memory
flw f7, 0(x2) # load 0x325e47def4bd8924 from memory into f7
fsgnjn.s f23, f28, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x19, 0x36f6e6819c685c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x561f832d2d564924 # load x3 with value 0x561f832d2d564924
sw x3, 0(x2) # store 0x561f832d2d564924 in memory
flw f12, 0(x2) # load 0x561f832d2d564924 from memory into f12
fsgnjn.s f19, f18, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x14, 0xf34337f83bdd11de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x720192f50c97b9b6 # load x3 with value 0x720192f50c97b9b6
sw x3, 0(x2) # store 0x720192f50c97b9b6 in memory
flw f6, 0(x2) # load 0x720192f50c97b9b6 from memory into f6
fsgnjn.s f14, f19, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x27, 0x3ffbff3cb8f15a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x87012d82bd99b817 # load x3 with value 0x87012d82bd99b817
sw x3, 0(x2) # store 0x87012d82bd99b817 in memory
flw f19, 0(x2) # load 0x87012d82bd99b817 from memory into f19
fsgnjn.s f27, f10, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x9, 0x302c47e43a453152 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x37b183ddf9971f37 # load x3 with value 0x37b183ddf9971f37
sw x3, 0(x2) # store 0x37b183ddf9971f37 in memory
flw f15, 0(x2) # load 0x37b183ddf9971f37 from memory into f15
fsgnjn.s f9, f2, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x19, 0x3ea2e61a4028b064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x5ac0160a63d81708 # load x3 with value 0x5ac0160a63d81708
sw x3, 0(x2) # store 0x5ac0160a63d81708 in memory
flw f16, 0(x2) # load 0x5ac0160a63d81708 from memory into f16
fsgnjn.s f19, f27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x4, 0x9761e34310d7715e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
li x3, 0x8ee88139cac41f30 # load x3 with value 0x8ee88139cac41f30
sw x3, 0(x2) # store 0x8ee88139cac41f30 in memory
flw f26, 0(x2) # load 0x8ee88139cac41f30 from memory into f26
fsgnjn.s f4, f6, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x20, 0xb52ecca6f8585eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
li x3, 0xa19fde6364756fb8 # load x3 with value 0xa19fde6364756fb8
sw x3, 0(x2) # store 0xa19fde6364756fb8 in memory
flw f9, 0(x2) # load 0xa19fde6364756fb8 from memory into f9
fsgnjn.s f20, f2, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x7, 0x5b10aed0347e0e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x5dce4c034d92a414 # load x3 with value 0x5dce4c034d92a414
sw x3, 0(x2) # store 0x5dce4c034d92a414 in memory
flw f5, 0(x2) # load 0x5dce4c034d92a414 from memory into f5
fsgnjn.s f7, f8, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x21, 0xb8ba3f1078469109 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0xd7bfce3e1044852e # load x3 with value 0xd7bfce3e1044852e
sw x3, 0(x2) # store 0xd7bfce3e1044852e in memory
flw f25, 0(x2) # load 0xd7bfce3e1044852e from memory into f25
fsgnjn.s f21, f9, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x28, 0x08f9ff3017a523ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
li x3, 0x81e2db864c548e2e # load x3 with value 0x81e2db864c548e2e
sw x3, 0(x2) # store 0x81e2db864c548e2e in memory
flw f31, 0(x2) # load 0x81e2db864c548e2e from memory into f31
fsgnjn.s f28, f24, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x8, 0xddc642b020443756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x890886df4ea6a960 # load x3 with value 0x890886df4ea6a960
sw x3, 0(x2) # store 0x890886df4ea6a960 in memory
flw f11, 0(x2) # load 0x890886df4ea6a960 from memory into f11
fsgnjn.s f8, f9, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x22, 0xa56c66333d150ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0xd54bfac3e8205c58 # load x3 with value 0xd54bfac3e8205c58
sw x3, 0(x2) # store 0xd54bfac3e8205c58 in memory
flw f24, 0(x2) # load 0xd54bfac3e8205c58 from memory into f24
fsgnjn.s f22, f20, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x8, 0x6c0a0bd3994f0530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x52ebc200f78fbb0d # load x3 with value 0x52ebc200f78fbb0d
sw x3, 0(x2) # store 0x52ebc200f78fbb0d in memory
flw f24, 0(x2) # load 0x52ebc200f78fbb0d from memory into f24
fsgnjn.s f8, f30, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x20, 0x04c15c56825d8476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x6d271ea08c28aeaa # load x3 with value 0x6d271ea08c28aeaa
sw x3, 0(x2) # store 0x6d271ea08c28aeaa in memory
flw f3, 0(x2) # load 0x6d271ea08c28aeaa from memory into f3
fsgnjn.s f20, f5, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x12, 0xa5a353ca8bae9138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x24936b0d1281291d # load x3 with value 0x24936b0d1281291d
sw x3, 0(x2) # store 0x24936b0d1281291d in memory
flw f16, 0(x2) # load 0x24936b0d1281291d from memory into f16
fsgnjn.s f12, f20, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x14, 0x3a8d66200456c382 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0x7bdbf9c2377c4429 # load x3 with value 0x7bdbf9c2377c4429
sw x3, 0(x2) # store 0x7bdbf9c2377c4429 in memory
flw f20, 0(x2) # load 0x7bdbf9c2377c4429 from memory into f20
fsgnjn.s f14, f2, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x2, 0xccc1942f698f1dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0xa8a3bdd97a6ca287 # load x3 with value 0xa8a3bdd97a6ca287
sw x3, 0(x2) # store 0xa8a3bdd97a6ca287 in memory
flw f8, 0(x2) # load 0xa8a3bdd97a6ca287 from memory into f8
fsgnjn.s f2, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x12, 0x84582f5070177bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x826638794893f3e2 # load x3 with value 0x826638794893f3e2
sw x3, 0(x2) # store 0x826638794893f3e2 in memory
flw f18, 0(x2) # load 0x826638794893f3e2 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fsgnjn.s f12, f18, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x31, 0x3d995d95dfbcee1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2deacd88fe501f9d # load x3 with value 0x2deacd88fe501f9d
sw x3, 0(x2) # store 0x2deacd88fe501f9d in memory
flw f2, 0(x2) # load 0x2deacd88fe501f9d from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fsgnjn.s f31, f2, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x15, 0x55a910739677c4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9128ed5584eba46f # load x3 with value 0x9128ed5584eba46f
sw x3, 0(x2) # store 0x9128ed5584eba46f in memory
flw f3, 0(x2) # load 0x9128ed5584eba46f from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fsgnjn.s f15, f3, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x29, 0xa8e07bebbbe0383b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd08d2e61657e96e8 # load x3 with value 0xd08d2e61657e96e8
sw x3, 0(x2) # store 0xd08d2e61657e96e8 in memory
flw f28, 0(x2) # load 0xd08d2e61657e96e8 from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fsgnjn.s f29, f28, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x7, 0x1b09323a9576d81b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafb494fe45a55033 # load x3 with value 0xafb494fe45a55033
sw x3, 0(x2) # store 0xafb494fe45a55033 in memory
flw f26, 0(x2) # load 0xafb494fe45a55033 from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fsgnjn.s f7, f26, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x18, 0xf54ad867e99e376b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90cabc9a98f07597 # load x3 with value 0x90cabc9a98f07597
sw x3, 0(x2) # store 0x90cabc9a98f07597 in memory
flw f2, 0(x2) # load 0x90cabc9a98f07597 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fsgnjn.s f18, f2, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x7, 0xb2b02c456fc0024d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb409baeb066aa6e4 # load x3 with value 0xb409baeb066aa6e4
sw x3, 0(x2) # store 0xb409baeb066aa6e4 in memory
flw f19, 0(x2) # load 0xb409baeb066aa6e4 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fsgnjn.s f7, f19, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x15, 0xe7e480e61e1792fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0b285ede8b9f285 # load x3 with value 0xf0b285ede8b9f285
sw x3, 0(x2) # store 0xf0b285ede8b9f285 in memory
flw f3, 0(x2) # load 0xf0b285ede8b9f285 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fsgnjn.s f15, f3, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x6, 0xd6ba3a340d08b79c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56cf6b9c794053f5 # load x3 with value 0x56cf6b9c794053f5
sw x3, 0(x2) # store 0x56cf6b9c794053f5 in memory
flw f11, 0(x2) # load 0x56cf6b9c794053f5 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fsgnjn.s f6, f11, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x27, 0x9b3ac4c0e6a56b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x722f913e73a8008c # load x3 with value 0x722f913e73a8008c
sw x3, 0(x2) # store 0x722f913e73a8008c in memory
flw f13, 0(x2) # load 0x722f913e73a8008c from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fsgnjn.s f27, f13, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x19, 0x00513e24159c032a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3ff00d9fc7074e1 # load x3 with value 0xc3ff00d9fc7074e1
sw x3, 0(x2) # store 0xc3ff00d9fc7074e1 in memory
flw f30, 0(x2) # load 0xc3ff00d9fc7074e1 from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fsgnjn.s f19, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x24, 0x4401977c972a2468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30502c83fe3628eb # load x3 with value 0x30502c83fe3628eb
sw x3, 0(x2) # store 0x30502c83fe3628eb in memory
flw f20, 0(x2) # load 0x30502c83fe3628eb from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fsgnjn.s f24, f20, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x9, 0x101ec2b7b430045e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90205314e11ec64b # load x3 with value 0x90205314e11ec64b
sw x3, 0(x2) # store 0x90205314e11ec64b in memory
flw f20, 0(x2) # load 0x90205314e11ec64b from memory into f20
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fsgnjn.s f9, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x4, 0x260663756ca9a45f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6138fe5612d8b37a # load x3 with value 0x6138fe5612d8b37a
sw x3, 0(x2) # store 0x6138fe5612d8b37a in memory
flw f16, 0(x2) # load 0x6138fe5612d8b37a from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fsgnjn.s f4, f16, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x10, 0x2d165157ea32d450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6dcdb26791c70d44 # load x3 with value 0x6dcdb26791c70d44
sw x3, 0(x2) # store 0x6dcdb26791c70d44 in memory
flw f3, 0(x2) # load 0x6dcdb26791c70d44 from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fsgnjn.s f10, f3, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x11, 0x972e8cca2a90e612 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2664d5b37e250be1 # load x3 with value 0x2664d5b37e250be1
sw x3, 0(x2) # store 0x2664d5b37e250be1 in memory
flw f10, 0(x2) # load 0x2664d5b37e250be1 from memory into f10
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fsgnjn.s f11, f10, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x8, 0x0e9b3d6f00cb28c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8787229738c48894 # load x3 with value 0x8787229738c48894
sw x3, 0(x2) # store 0x8787229738c48894 in memory
flw f29, 0(x2) # load 0x8787229738c48894 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fsgnjn.s f8, f29, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x4, 0xa84c99a4c4adc075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d14e8a245fec8b8 # load x3 with value 0x3d14e8a245fec8b8
sw x3, 0(x2) # store 0x3d14e8a245fec8b8 in memory
flw f25, 0(x2) # load 0x3d14e8a245fec8b8 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fsgnjn.s f4, f25, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x26, 0x9635d4db7b17bbee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x559cdab8ad2c8d91 # load x3 with value 0x559cdab8ad2c8d91
sw x3, 0(x2) # store 0x559cdab8ad2c8d91 in memory
flw f16, 0(x2) # load 0x559cdab8ad2c8d91 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fsgnjn.s f26, f16, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x14, 0xb80988a752bccda2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x101c9bec7c2359a9 # load x3 with value 0x101c9bec7c2359a9
sw x3, 0(x2) # store 0x101c9bec7c2359a9 in memory
flw f26, 0(x2) # load 0x101c9bec7c2359a9 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fsgnjn.s f14, f26, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x20, 0xd2ce323cf620fbf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93ec236e023ab91b # load x3 with value 0x93ec236e023ab91b
sw x3, 0(x2) # store 0x93ec236e023ab91b in memory
flw f30, 0(x2) # load 0x93ec236e023ab91b from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fsgnjn.s f20, f30, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x22, 0x875f5fa28d51cd96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20ed98ac971df868 # load x3 with value 0x20ed98ac971df868
sw x3, 0(x2) # store 0x20ed98ac971df868 in memory
flw f3, 0(x2) # load 0x20ed98ac971df868 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fsgnjn.s f22, f3, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x3, 0x1f2584408dc2d624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24b8e49c57e90409 # load x3 with value 0x24b8e49c57e90409
sw x3, 0(x2) # store 0x24b8e49c57e90409 in memory
flw f6, 0(x2) # load 0x24b8e49c57e90409 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fsgnjn.s f3, f6, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x29, 0x0cc06ed7e2c7ed94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19e76dcb104e96e # load x3 with value 0x19e76dcb104e96e
sw x3, 0(x2) # store 0x19e76dcb104e96e in memory
flw f4, 0(x2) # load 0x19e76dcb104e96e from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fsgnjn.s f29, f4, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x18, 0x03a9f11d53fb1ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2539da84df77f6e9 # load x3 with value 0x2539da84df77f6e9
sw x3, 0(x2) # store 0x2539da84df77f6e9 in memory
flw f14, 0(x2) # load 0x2539da84df77f6e9 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fsgnjn.s f18, f14, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x4, 0x8bad85027a3132f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1303471c726994b # load x3 with value 0xd1303471c726994b
sw x3, 0(x2) # store 0xd1303471c726994b in memory
flw f28, 0(x2) # load 0xd1303471c726994b from memory into f28
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsgnjn.s f4, f28, f13 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xdeaa150ce6a126df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c8602fea2e69c17 # load x3 with value 0x2c8602fea2e69c17
sw x3, 0(x2) # store 0x2c8602fea2e69c17 in memory
flw f18, 0(x2) # load 0x2c8602fea2e69c17 from memory into f18
li x3, 0x35570bb39d87b30 # load x3 with value 0x35570bb39d87b30
sw x3, 0(x2) # store 0x35570bb39d87b30 in memory
flw f14, 0(x2) # load 0x35570bb39d87b30 from memory into f14
fsgnjn.s f0, f18, f14 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x627390e2a6ea2712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74374d6335e11c33 # load x3 with value 0x74374d6335e11c33
sw x3, 0(x2) # store 0x74374d6335e11c33 in memory
flw f29, 0(x2) # load 0x74374d6335e11c33 from memory into f29
li x3, 0x49c5873c0552b08d # load x3 with value 0x49c5873c0552b08d
sw x3, 0(x2) # store 0x49c5873c0552b08d in memory
flw f18, 0(x2) # load 0x49c5873c0552b08d from memory into f18
fsgnjn.s f1, f29, f18 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x60d132f2d1ac0c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f6505c9a06eee1c # load x3 with value 0x2f6505c9a06eee1c
sw x3, 0(x2) # store 0x2f6505c9a06eee1c in memory
flw f14, 0(x2) # load 0x2f6505c9a06eee1c from memory into f14
li x3, 0x8fe48c5d0eff28f9 # load x3 with value 0x8fe48c5d0eff28f9
sw x3, 0(x2) # store 0x8fe48c5d0eff28f9 in memory
flw f19, 0(x2) # load 0x8fe48c5d0eff28f9 from memory into f19
fsgnjn.s f2, f14, f19 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x7ff0ae5eacc01d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8380a1d1889635bb # load x3 with value 0x8380a1d1889635bb
sw x3, 0(x2) # store 0x8380a1d1889635bb in memory
flw f25, 0(x2) # load 0x8380a1d1889635bb from memory into f25
li x3, 0xa80bbb99f8dd31b3 # load x3 with value 0xa80bbb99f8dd31b3
sw x3, 0(x2) # store 0xa80bbb99f8dd31b3 in memory
flw f12, 0(x2) # load 0xa80bbb99f8dd31b3 from memory into f12
fsgnjn.s f3, f25, f12 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x983bb0bcf592a6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0a9186910d78525 # load x3 with value 0xa0a9186910d78525
sw x3, 0(x2) # store 0xa0a9186910d78525 in memory
flw f18, 0(x2) # load 0xa0a9186910d78525 from memory into f18
li x3, 0xf9599c7f887751a8 # load x3 with value 0xf9599c7f887751a8
sw x3, 0(x2) # store 0xf9599c7f887751a8 in memory
flw f9, 0(x2) # load 0xf9599c7f887751a8 from memory into f9
fsgnjn.s f4, f18, f9 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xcb05bb0760c24e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a1d0b2f96942ed2 # load x3 with value 0x1a1d0b2f96942ed2
sw x3, 0(x2) # store 0x1a1d0b2f96942ed2 in memory
flw f25, 0(x2) # load 0x1a1d0b2f96942ed2 from memory into f25
li x3, 0xd70a08aa2aa325b9 # load x3 with value 0xd70a08aa2aa325b9
sw x3, 0(x2) # store 0xd70a08aa2aa325b9 in memory
flw f5, 0(x2) # load 0xd70a08aa2aa325b9 from memory into f5
fsgnjn.s f5, f25, f5 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xe7281f043e44e443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb6589df2ec147cc # load x3 with value 0xcb6589df2ec147cc
sw x3, 0(x2) # store 0xcb6589df2ec147cc in memory
flw f22, 0(x2) # load 0xcb6589df2ec147cc from memory into f22
li x3, 0x3fcd7dc5ab39ce11 # load x3 with value 0x3fcd7dc5ab39ce11
sw x3, 0(x2) # store 0x3fcd7dc5ab39ce11 in memory
flw f27, 0(x2) # load 0x3fcd7dc5ab39ce11 from memory into f27
fsgnjn.s f6, f22, f27 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x9997a714ed5e907c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49f43ddd190cb764 # load x3 with value 0x49f43ddd190cb764
sw x3, 0(x2) # store 0x49f43ddd190cb764 in memory
flw f20, 0(x2) # load 0x49f43ddd190cb764 from memory into f20
li x3, 0x6abf46efc4f29aa0 # load x3 with value 0x6abf46efc4f29aa0
sw x3, 0(x2) # store 0x6abf46efc4f29aa0 in memory
flw f26, 0(x2) # load 0x6abf46efc4f29aa0 from memory into f26
fsgnjn.s f7, f20, f26 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x17df1af46ffe22d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f45c2db8e60a301 # load x3 with value 0x8f45c2db8e60a301
sw x3, 0(x2) # store 0x8f45c2db8e60a301 in memory
flw f18, 0(x2) # load 0x8f45c2db8e60a301 from memory into f18
li x3, 0xfb70326e789b175a # load x3 with value 0xfb70326e789b175a
sw x3, 0(x2) # store 0xfb70326e789b175a in memory
flw f5, 0(x2) # load 0xfb70326e789b175a from memory into f5
fsgnjn.s f8, f18, f5 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x38fb14c11f791bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x394f022357dfe24f # load x3 with value 0x394f022357dfe24f
sw x3, 0(x2) # store 0x394f022357dfe24f in memory
flw f12, 0(x2) # load 0x394f022357dfe24f from memory into f12
li x3, 0x39298adaf8aba2a8 # load x3 with value 0x39298adaf8aba2a8
sw x3, 0(x2) # store 0x39298adaf8aba2a8 in memory
flw f19, 0(x2) # load 0x39298adaf8aba2a8 from memory into f19
fsgnjn.s f9, f12, f19 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x6a07257ea7672502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacb1b089cd558b24 # load x3 with value 0xacb1b089cd558b24
sw x3, 0(x2) # store 0xacb1b089cd558b24 in memory
flw f6, 0(x2) # load 0xacb1b089cd558b24 from memory into f6
li x3, 0x6feaf3638042ef89 # load x3 with value 0x6feaf3638042ef89
sw x3, 0(x2) # store 0x6feaf3638042ef89 in memory
flw f2, 0(x2) # load 0x6feaf3638042ef89 from memory into f2
fsgnjn.s f10, f6, f2 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xd79ab8f007da39e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb66c44efce8245ed # load x3 with value 0xb66c44efce8245ed
sw x3, 0(x2) # store 0xb66c44efce8245ed in memory
flw f14, 0(x2) # load 0xb66c44efce8245ed from memory into f14
li x3, 0x75f52f350953b06f # load x3 with value 0x75f52f350953b06f
sw x3, 0(x2) # store 0x75f52f350953b06f in memory
flw f5, 0(x2) # load 0x75f52f350953b06f from memory into f5
fsgnjn.s f11, f14, f5 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x6d24af032473f866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12337a3bede9dccc # load x3 with value 0x12337a3bede9dccc
sw x3, 0(x2) # store 0x12337a3bede9dccc in memory
flw f31, 0(x2) # load 0x12337a3bede9dccc from memory into f31
li x3, 0xd3cb1956d5484f9f # load x3 with value 0xd3cb1956d5484f9f
sw x3, 0(x2) # store 0xd3cb1956d5484f9f in memory
flw f27, 0(x2) # load 0xd3cb1956d5484f9f from memory into f27
fsgnjn.s f12, f31, f27 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x39f2524b0861a424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x364e6b6bdd64952c # load x3 with value 0x364e6b6bdd64952c
sw x3, 0(x2) # store 0x364e6b6bdd64952c in memory
flw f20, 0(x2) # load 0x364e6b6bdd64952c from memory into f20
li x3, 0xdb5feda0dcf04afb # load x3 with value 0xdb5feda0dcf04afb
sw x3, 0(x2) # store 0xdb5feda0dcf04afb in memory
flw f25, 0(x2) # load 0xdb5feda0dcf04afb from memory into f25
fsgnjn.s f13, f20, f25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x6ce460bd66b81dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5633789e143ebc5 # load x3 with value 0xe5633789e143ebc5
sw x3, 0(x2) # store 0xe5633789e143ebc5 in memory
flw f13, 0(x2) # load 0xe5633789e143ebc5 from memory into f13
li x3, 0xe4fef1ea2ed815c5 # load x3 with value 0xe4fef1ea2ed815c5
sw x3, 0(x2) # store 0xe4fef1ea2ed815c5 in memory
flw f30, 0(x2) # load 0xe4fef1ea2ed815c5 from memory into f30
fsgnjn.s f14, f13, f30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x7902a56c338e0643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe630bd33fa62111 # load x3 with value 0xe630bd33fa62111
sw x3, 0(x2) # store 0xe630bd33fa62111 in memory
flw f15, 0(x2) # load 0xe630bd33fa62111 from memory into f15
li x3, 0x727363dbf03638a5 # load x3 with value 0x727363dbf03638a5
sw x3, 0(x2) # store 0x727363dbf03638a5 in memory
flw f26, 0(x2) # load 0x727363dbf03638a5 from memory into f26
fsgnjn.s f15, f15, f26 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x0d580849a9e39069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdc4ffd31d5c5714 # load x3 with value 0xfdc4ffd31d5c5714
sw x3, 0(x2) # store 0xfdc4ffd31d5c5714 in memory
flw f1, 0(x2) # load 0xfdc4ffd31d5c5714 from memory into f1
li x3, 0x562a6854c7419cb8 # load x3 with value 0x562a6854c7419cb8
sw x3, 0(x2) # store 0x562a6854c7419cb8 in memory
flw f21, 0(x2) # load 0x562a6854c7419cb8 from memory into f21
fsgnjn.s f16, f1, f21 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x82a16b3a0fe26248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd05c7e87a598baf5 # load x3 with value 0xd05c7e87a598baf5
sw x3, 0(x2) # store 0xd05c7e87a598baf5 in memory
flw f20, 0(x2) # load 0xd05c7e87a598baf5 from memory into f20
li x3, 0xdc37f49174f0fb # load x3 with value 0xdc37f49174f0fb
sw x3, 0(x2) # store 0xdc37f49174f0fb in memory
flw f28, 0(x2) # load 0xdc37f49174f0fb from memory into f28
fsgnjn.s f17, f20, f28 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xb50f0f8679406992 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6ff66a3f8c4c30e # load x3 with value 0xd6ff66a3f8c4c30e
sw x3, 0(x2) # store 0xd6ff66a3f8c4c30e in memory
flw f10, 0(x2) # load 0xd6ff66a3f8c4c30e from memory into f10
li x3, 0x1e0abe4afd678532 # load x3 with value 0x1e0abe4afd678532
sw x3, 0(x2) # store 0x1e0abe4afd678532 in memory
flw f19, 0(x2) # load 0x1e0abe4afd678532 from memory into f19
fsgnjn.s f18, f10, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x00e25b7adbbf8f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d99ed5a808bde64 # load x3 with value 0x4d99ed5a808bde64
sw x3, 0(x2) # store 0x4d99ed5a808bde64 in memory
flw f5, 0(x2) # load 0x4d99ed5a808bde64 from memory into f5
li x3, 0x7ea9c5d55c8e36d9 # load x3 with value 0x7ea9c5d55c8e36d9
sw x3, 0(x2) # store 0x7ea9c5d55c8e36d9 in memory
flw f13, 0(x2) # load 0x7ea9c5d55c8e36d9 from memory into f13
fsgnjn.s f19, f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x4324ede2de2781b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9db294d68ac21b08 # load x3 with value 0x9db294d68ac21b08
sw x3, 0(x2) # store 0x9db294d68ac21b08 in memory
flw f8, 0(x2) # load 0x9db294d68ac21b08 from memory into f8
li x3, 0xce5911d48a776895 # load x3 with value 0xce5911d48a776895
sw x3, 0(x2) # store 0xce5911d48a776895 in memory
flw f9, 0(x2) # load 0xce5911d48a776895 from memory into f9
fsgnjn.s f20, f8, f9 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x071ef6af33b80d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x798a9358f4cedaa3 # load x3 with value 0x798a9358f4cedaa3
sw x3, 0(x2) # store 0x798a9358f4cedaa3 in memory
flw f18, 0(x2) # load 0x798a9358f4cedaa3 from memory into f18
li x3, 0xd2cf98822fd4a932 # load x3 with value 0xd2cf98822fd4a932
sw x3, 0(x2) # store 0xd2cf98822fd4a932 in memory
flw f31, 0(x2) # load 0xd2cf98822fd4a932 from memory into f31
fsgnjn.s f21, f18, f31 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xe0d123d96003430f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeeba7d9acd4d6145 # load x3 with value 0xeeba7d9acd4d6145
sw x3, 0(x2) # store 0xeeba7d9acd4d6145 in memory
flw f24, 0(x2) # load 0xeeba7d9acd4d6145 from memory into f24
li x3, 0xbf294e7188d7f4e7 # load x3 with value 0xbf294e7188d7f4e7
sw x3, 0(x2) # store 0xbf294e7188d7f4e7 in memory
flw f2, 0(x2) # load 0xbf294e7188d7f4e7 from memory into f2
fsgnjn.s f22, f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd32740f65f13eb22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48048c603bbfb87e # load x3 with value 0x48048c603bbfb87e
sw x3, 0(x2) # store 0x48048c603bbfb87e in memory
flw f30, 0(x2) # load 0x48048c603bbfb87e from memory into f30
li x3, 0x891ed20992271c08 # load x3 with value 0x891ed20992271c08
sw x3, 0(x2) # store 0x891ed20992271c08 in memory
flw f11, 0(x2) # load 0x891ed20992271c08 from memory into f11
fsgnjn.s f23, f30, f11 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xeb90e6273f0befb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x306ae6614a456aa8 # load x3 with value 0x306ae6614a456aa8
sw x3, 0(x2) # store 0x306ae6614a456aa8 in memory
flw f17, 0(x2) # load 0x306ae6614a456aa8 from memory into f17
li x3, 0xa7fb5fc41a4564c8 # load x3 with value 0xa7fb5fc41a4564c8
sw x3, 0(x2) # store 0xa7fb5fc41a4564c8 in memory
flw f29, 0(x2) # load 0xa7fb5fc41a4564c8 from memory into f29
fsgnjn.s f24, f17, f29 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x842d96b80c8213cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b7da2d13e951488 # load x3 with value 0x4b7da2d13e951488
sw x3, 0(x2) # store 0x4b7da2d13e951488 in memory
flw f18, 0(x2) # load 0x4b7da2d13e951488 from memory into f18
li x3, 0x3441c6238b80b354 # load x3 with value 0x3441c6238b80b354
sw x3, 0(x2) # store 0x3441c6238b80b354 in memory
flw f30, 0(x2) # load 0x3441c6238b80b354 from memory into f30
fsgnjn.s f25, f18, f30 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x0e697d28a807b76d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x873782f9ab048743 # load x3 with value 0x873782f9ab048743
sw x3, 0(x2) # store 0x873782f9ab048743 in memory
flw f20, 0(x2) # load 0x873782f9ab048743 from memory into f20
li x3, 0x8dab53cb4dbd60e9 # load x3 with value 0x8dab53cb4dbd60e9
sw x3, 0(x2) # store 0x8dab53cb4dbd60e9 in memory
flw f27, 0(x2) # load 0x8dab53cb4dbd60e9 from memory into f27
fsgnjn.s f26, f20, f27 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x9e4f83528b794076 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x491d981f9676eb85 # load x3 with value 0x491d981f9676eb85
sw x3, 0(x2) # store 0x491d981f9676eb85 in memory
flw f17, 0(x2) # load 0x491d981f9676eb85 from memory into f17
li x3, 0x767243d76d404915 # load x3 with value 0x767243d76d404915
sw x3, 0(x2) # store 0x767243d76d404915 in memory
flw f13, 0(x2) # load 0x767243d76d404915 from memory into f13
fsgnjn.s f27, f17, f13 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x2d622290aee9e952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf53944835a4fd1d # load x3 with value 0xcf53944835a4fd1d
sw x3, 0(x2) # store 0xcf53944835a4fd1d in memory
flw f9, 0(x2) # load 0xcf53944835a4fd1d from memory into f9
li x3, 0x57d1325b3e60b884 # load x3 with value 0x57d1325b3e60b884
sw x3, 0(x2) # store 0x57d1325b3e60b884 in memory
flw f21, 0(x2) # load 0x57d1325b3e60b884 from memory into f21
fsgnjn.s f28, f9, f21 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x565a0704443c99a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18e13a74c440661f # load x3 with value 0x18e13a74c440661f
sw x3, 0(x2) # store 0x18e13a74c440661f in memory
flw f2, 0(x2) # load 0x18e13a74c440661f from memory into f2
li x3, 0xfc00c2a8aa18eea8 # load x3 with value 0xfc00c2a8aa18eea8
sw x3, 0(x2) # store 0xfc00c2a8aa18eea8 in memory
flw f8, 0(x2) # load 0xfc00c2a8aa18eea8 from memory into f8
fsgnjn.s f29, f2, f8 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf7c875f633d30ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9751a5d886c1f8be # load x3 with value 0x9751a5d886c1f8be
sw x3, 0(x2) # store 0x9751a5d886c1f8be in memory
flw f20, 0(x2) # load 0x9751a5d886c1f8be from memory into f20
li x3, 0xe60966d0d1387dae # load x3 with value 0xe60966d0d1387dae
sw x3, 0(x2) # store 0xe60966d0d1387dae in memory
flw f1, 0(x2) # load 0xe60966d0d1387dae from memory into f1
fsgnjn.s f30, f20, f1 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x8abce5d1c6b44a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb961fb8761002260 # load x3 with value 0xb961fb8761002260
sw x3, 0(x2) # store 0xb961fb8761002260 in memory
flw f28, 0(x2) # load 0xb961fb8761002260 from memory into f28
li x3, 0x3beabd88457d94e7 # load x3 with value 0x3beabd88457d94e7
sw x3, 0(x2) # store 0x3beabd88457d94e7 in memory
flw f24, 0(x2) # load 0x3beabd88457d94e7 from memory into f24
fsgnjn.s f31, f28, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x1, 0x2b378452c9a504e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f745f8b80a333fd # load x3 with value 0x9f745f8b80a333fd
sw x3, 0(x2) # store 0x9f745f8b80a333fd in memory
flw f0, 0(x2) # load 0x9f745f8b80a333fd from memory into f0
li x3, 0x1ee399d9bbe86a23 # load x3 with value 0x1ee399d9bbe86a23
sw x3, 0(x2) # store 0x1ee399d9bbe86a23 in memory
flw f13, 0(x2) # load 0x1ee399d9bbe86a23 from memory into f13
fsgnjn.s f1, f0, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x29, 0x8d8d8f90d58ee5b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf84a25b21c456bac # load x3 with value 0xf84a25b21c456bac
sw x3, 0(x2) # store 0xf84a25b21c456bac in memory
flw f1, 0(x2) # load 0xf84a25b21c456bac from memory into f1
li x3, 0x3bfe74d224eac934 # load x3 with value 0x3bfe74d224eac934
sw x3, 0(x2) # store 0x3bfe74d224eac934 in memory
flw f7, 0(x2) # load 0x3bfe74d224eac934 from memory into f7
fsgnjn.s f29, f1, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x5, 0xb33572b3f009f1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd8f83029402833d # load x3 with value 0xcd8f83029402833d
sw x3, 0(x2) # store 0xcd8f83029402833d in memory
flw f2, 0(x2) # load 0xcd8f83029402833d from memory into f2
li x3, 0x686f974f6dd62c9d # load x3 with value 0x686f974f6dd62c9d
sw x3, 0(x2) # store 0x686f974f6dd62c9d in memory
flw f9, 0(x2) # load 0x686f974f6dd62c9d from memory into f9
fsgnjn.s f5, f2, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x14, 0x7c8967fb956389e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2c804c0e86a79f5 # load x3 with value 0xe2c804c0e86a79f5
sw x3, 0(x2) # store 0xe2c804c0e86a79f5 in memory
flw f3, 0(x2) # load 0xe2c804c0e86a79f5 from memory into f3
li x3, 0x3f2e25601650941f # load x3 with value 0x3f2e25601650941f
sw x3, 0(x2) # store 0x3f2e25601650941f in memory
flw f9, 0(x2) # load 0x3f2e25601650941f from memory into f9
fsgnjn.s f14, f3, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x17, 0x0eb656208617d1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc84a27ddd8e4fe1c # load x3 with value 0xc84a27ddd8e4fe1c
sw x3, 0(x2) # store 0xc84a27ddd8e4fe1c in memory
flw f4, 0(x2) # load 0xc84a27ddd8e4fe1c from memory into f4
li x3, 0xd22143a5bf3cff59 # load x3 with value 0xd22143a5bf3cff59
sw x3, 0(x2) # store 0xd22143a5bf3cff59 in memory
flw f27, 0(x2) # load 0xd22143a5bf3cff59 from memory into f27
fsgnjn.s f17, f4, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x10, 0x9b97fc15f4803bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc025d66f0970e968 # load x3 with value 0xc025d66f0970e968
sw x3, 0(x2) # store 0xc025d66f0970e968 in memory
flw f5, 0(x2) # load 0xc025d66f0970e968 from memory into f5
li x3, 0x61839ca20d61f9d1 # load x3 with value 0x61839ca20d61f9d1
sw x3, 0(x2) # store 0x61839ca20d61f9d1 in memory
flw f18, 0(x2) # load 0x61839ca20d61f9d1 from memory into f18
fsgnjn.s f10, f5, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x2, 0x24a5063374b38ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa9ccc3590bf9fd6 # load x3 with value 0xfa9ccc3590bf9fd6
sw x3, 0(x2) # store 0xfa9ccc3590bf9fd6 in memory
flw f6, 0(x2) # load 0xfa9ccc3590bf9fd6 from memory into f6
li x3, 0x6360f8eba4a2a8fd # load x3 with value 0x6360f8eba4a2a8fd
sw x3, 0(x2) # store 0x6360f8eba4a2a8fd in memory
flw f19, 0(x2) # load 0x6360f8eba4a2a8fd from memory into f19
fsgnjn.s f2, f6, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x26, 0x61f73bb41dc9c5a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36ab976bd0059a6a # load x3 with value 0x36ab976bd0059a6a
sw x3, 0(x2) # store 0x36ab976bd0059a6a in memory
flw f7, 0(x2) # load 0x36ab976bd0059a6a from memory into f7
li x3, 0xa35c45519b4283a9 # load x3 with value 0xa35c45519b4283a9
sw x3, 0(x2) # store 0xa35c45519b4283a9 in memory
flw f17, 0(x2) # load 0xa35c45519b4283a9 from memory into f17
fsgnjn.s f26, f7, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x8, 0x114c439c6b004c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4be693d2f1c2b457 # load x3 with value 0x4be693d2f1c2b457
sw x3, 0(x2) # store 0x4be693d2f1c2b457 in memory
flw f8, 0(x2) # load 0x4be693d2f1c2b457 from memory into f8
li x3, 0x9312d25c54839d85 # load x3 with value 0x9312d25c54839d85
sw x3, 0(x2) # store 0x9312d25c54839d85 in memory
flw f29, 0(x2) # load 0x9312d25c54839d85 from memory into f29
fsgnjn.s f8, f8, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x22, 0x13dc2f18656c1966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe9465618ee09f48 # load x3 with value 0xbe9465618ee09f48
sw x3, 0(x2) # store 0xbe9465618ee09f48 in memory
flw f9, 0(x2) # load 0xbe9465618ee09f48 from memory into f9
li x3, 0xf898cfc6d57f676c # load x3 with value 0xf898cfc6d57f676c
sw x3, 0(x2) # store 0xf898cfc6d57f676c in memory
flw f20, 0(x2) # load 0xf898cfc6d57f676c from memory into f20
fsgnjn.s f22, f9, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x28, 0xda966229662c00c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74dca26269996190 # load x3 with value 0x74dca26269996190
sw x3, 0(x2) # store 0x74dca26269996190 in memory
flw f10, 0(x2) # load 0x74dca26269996190 from memory into f10
li x3, 0xa7a4c840b9b5f992 # load x3 with value 0xa7a4c840b9b5f992
sw x3, 0(x2) # store 0xa7a4c840b9b5f992 in memory
flw f15, 0(x2) # load 0xa7a4c840b9b5f992 from memory into f15
fsgnjn.s f28, f10, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x23, 0x49c9d72244154827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e936087feb3e308 # load x3 with value 0x7e936087feb3e308
sw x3, 0(x2) # store 0x7e936087feb3e308 in memory
flw f11, 0(x2) # load 0x7e936087feb3e308 from memory into f11
li x3, 0xc01e36dae7c2aeb6 # load x3 with value 0xc01e36dae7c2aeb6
sw x3, 0(x2) # store 0xc01e36dae7c2aeb6 in memory
flw f24, 0(x2) # load 0xc01e36dae7c2aeb6 from memory into f24
fsgnjn.s f23, f11, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x27, 0x045fd3e365c01e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2021c7e6afc60ee5 # load x3 with value 0x2021c7e6afc60ee5
sw x3, 0(x2) # store 0x2021c7e6afc60ee5 in memory
flw f12, 0(x2) # load 0x2021c7e6afc60ee5 from memory into f12
li x3, 0xa82f67d7caf4d222 # load x3 with value 0xa82f67d7caf4d222
sw x3, 0(x2) # store 0xa82f67d7caf4d222 in memory
flw f22, 0(x2) # load 0xa82f67d7caf4d222 from memory into f22
fsgnjn.s f27, f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x15, 0x779d98573cf7c8fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4317e3e4f1f7b637 # load x3 with value 0x4317e3e4f1f7b637
sw x3, 0(x2) # store 0x4317e3e4f1f7b637 in memory
flw f13, 0(x2) # load 0x4317e3e4f1f7b637 from memory into f13
li x3, 0x4daf9b65071b16de # load x3 with value 0x4daf9b65071b16de
sw x3, 0(x2) # store 0x4daf9b65071b16de in memory
flw f12, 0(x2) # load 0x4daf9b65071b16de from memory into f12
fsgnjn.s f15, f13, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x26, 0x04a9b56339d134e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3e378e3dbd673eb # load x3 with value 0xa3e378e3dbd673eb
sw x3, 0(x2) # store 0xa3e378e3dbd673eb in memory
flw f14, 0(x2) # load 0xa3e378e3dbd673eb from memory into f14
li x3, 0x795d7fbd0b0577bc # load x3 with value 0x795d7fbd0b0577bc
sw x3, 0(x2) # store 0x795d7fbd0b0577bc in memory
flw f3, 0(x2) # load 0x795d7fbd0b0577bc from memory into f3
fsgnjn.s f26, f14, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x2, 0x7075b28a55ee5065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54c42ce4bd8a87a1 # load x3 with value 0x54c42ce4bd8a87a1
sw x3, 0(x2) # store 0x54c42ce4bd8a87a1 in memory
flw f15, 0(x2) # load 0x54c42ce4bd8a87a1 from memory into f15
li x3, 0xf2e405b2df3bcf0b # load x3 with value 0xf2e405b2df3bcf0b
sw x3, 0(x2) # store 0xf2e405b2df3bcf0b in memory
flw f7, 0(x2) # load 0xf2e405b2df3bcf0b from memory into f7
fsgnjn.s f2, f15, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x26, 0x41e798bd17d229de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d93ab96d7f50213 # load x3 with value 0x6d93ab96d7f50213
sw x3, 0(x2) # store 0x6d93ab96d7f50213 in memory
flw f16, 0(x2) # load 0x6d93ab96d7f50213 from memory into f16
li x3, 0xb023baa3c0504ca4 # load x3 with value 0xb023baa3c0504ca4
sw x3, 0(x2) # store 0xb023baa3c0504ca4 in memory
flw f12, 0(x2) # load 0xb023baa3c0504ca4 from memory into f12
fsgnjn.s f26, f16, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x8, 0x8039f03a714c2d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe62fad6130c52f7 # load x3 with value 0xe62fad6130c52f7
sw x3, 0(x2) # store 0xe62fad6130c52f7 in memory
flw f17, 0(x2) # load 0xe62fad6130c52f7 from memory into f17
li x3, 0xcfbb6ae0cd6f27d # load x3 with value 0xcfbb6ae0cd6f27d
sw x3, 0(x2) # store 0xcfbb6ae0cd6f27d in memory
flw f16, 0(x2) # load 0xcfbb6ae0cd6f27d from memory into f16
fsgnjn.s f8, f17, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x22, 0xb984fd9061212346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf0ee816d90f1132 # load x3 with value 0xcf0ee816d90f1132
sw x3, 0(x2) # store 0xcf0ee816d90f1132 in memory
flw f18, 0(x2) # load 0xcf0ee816d90f1132 from memory into f18
li x3, 0xc6c49fb4841f4624 # load x3 with value 0xc6c49fb4841f4624
sw x3, 0(x2) # store 0xc6c49fb4841f4624 in memory
flw f8, 0(x2) # load 0xc6c49fb4841f4624 from memory into f8
fsgnjn.s f22, f18, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x24, 0xf5c5ae14bd797b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82ae621b85c27a0f # load x3 with value 0x82ae621b85c27a0f
sw x3, 0(x2) # store 0x82ae621b85c27a0f in memory
flw f19, 0(x2) # load 0x82ae621b85c27a0f from memory into f19
li x3, 0x5bacf70029099700 # load x3 with value 0x5bacf70029099700
sw x3, 0(x2) # store 0x5bacf70029099700 in memory
flw f5, 0(x2) # load 0x5bacf70029099700 from memory into f5
fsgnjn.s f24, f19, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x12, 0x111d17fdd4333252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb225730cb142ae41 # load x3 with value 0xb225730cb142ae41
sw x3, 0(x2) # store 0xb225730cb142ae41 in memory
flw f20, 0(x2) # load 0xb225730cb142ae41 from memory into f20
li x3, 0x89763bc62d1cd705 # load x3 with value 0x89763bc62d1cd705
sw x3, 0(x2) # store 0x89763bc62d1cd705 in memory
flw f1, 0(x2) # load 0x89763bc62d1cd705 from memory into f1
fsgnjn.s f12, f20, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x12, 0xd544f6973416a7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebbedd0d6f72fd15 # load x3 with value 0xebbedd0d6f72fd15
sw x3, 0(x2) # store 0xebbedd0d6f72fd15 in memory
flw f21, 0(x2) # load 0xebbedd0d6f72fd15 from memory into f21
li x3, 0x7bb60fe22072d30f # load x3 with value 0x7bb60fe22072d30f
sw x3, 0(x2) # store 0x7bb60fe22072d30f in memory
flw f20, 0(x2) # load 0x7bb60fe22072d30f from memory into f20
fsgnjn.s f12, f21, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x24, 0xbf0b669e8ae565a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35d1aedb52388175 # load x3 with value 0x35d1aedb52388175
sw x3, 0(x2) # store 0x35d1aedb52388175 in memory
flw f22, 0(x2) # load 0x35d1aedb52388175 from memory into f22
li x3, 0xc8e0dcbd45601c99 # load x3 with value 0xc8e0dcbd45601c99
sw x3, 0(x2) # store 0xc8e0dcbd45601c99 in memory
flw f2, 0(x2) # load 0xc8e0dcbd45601c99 from memory into f2
fsgnjn.s f24, f22, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x20, 0x435c7a4894b2caff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb192e0f599f49ba0 # load x3 with value 0xb192e0f599f49ba0
sw x3, 0(x2) # store 0xb192e0f599f49ba0 in memory
flw f23, 0(x2) # load 0xb192e0f599f49ba0 from memory into f23
li x3, 0xec76b21a42b63605 # load x3 with value 0xec76b21a42b63605
sw x3, 0(x2) # store 0xec76b21a42b63605 in memory
flw f24, 0(x2) # load 0xec76b21a42b63605 from memory into f24
fsgnjn.s f20, f23, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x28, 0x6ac14a602bc4819e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f3b1f5b130558bc # load x3 with value 0x1f3b1f5b130558bc
sw x3, 0(x2) # store 0x1f3b1f5b130558bc in memory
flw f24, 0(x2) # load 0x1f3b1f5b130558bc from memory into f24
li x3, 0x1caced8d6b589692 # load x3 with value 0x1caced8d6b589692
sw x3, 0(x2) # store 0x1caced8d6b589692 in memory
flw f7, 0(x2) # load 0x1caced8d6b589692 from memory into f7
fsgnjn.s f28, f24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x26, 0x12fe7b44253b7ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca892fc900aeb74f # load x3 with value 0xca892fc900aeb74f
sw x3, 0(x2) # store 0xca892fc900aeb74f in memory
flw f25, 0(x2) # load 0xca892fc900aeb74f from memory into f25
li x3, 0xd79569bb0aaf72f4 # load x3 with value 0xd79569bb0aaf72f4
sw x3, 0(x2) # store 0xd79569bb0aaf72f4 in memory
flw f5, 0(x2) # load 0xd79569bb0aaf72f4 from memory into f5
fsgnjn.s f26, f25, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x30, 0xc6bcb431c48536d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca0f46d8baacb504 # load x3 with value 0xca0f46d8baacb504
sw x3, 0(x2) # store 0xca0f46d8baacb504 in memory
flw f26, 0(x2) # load 0xca0f46d8baacb504 from memory into f26
li x3, 0x56e6a8e8a2e17a97 # load x3 with value 0x56e6a8e8a2e17a97
sw x3, 0(x2) # store 0x56e6a8e8a2e17a97 in memory
flw f17, 0(x2) # load 0x56e6a8e8a2e17a97 from memory into f17
fsgnjn.s f30, f26, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x16, 0xe63b8fa81a9002b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x472b5ed599cf1f5a # load x3 with value 0x472b5ed599cf1f5a
sw x3, 0(x2) # store 0x472b5ed599cf1f5a in memory
flw f27, 0(x2) # load 0x472b5ed599cf1f5a from memory into f27
li x3, 0x84d1d7797dbd2580 # load x3 with value 0x84d1d7797dbd2580
sw x3, 0(x2) # store 0x84d1d7797dbd2580 in memory
flw f14, 0(x2) # load 0x84d1d7797dbd2580 from memory into f14
fsgnjn.s f16, f27, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x15, 0xd23b14b38938f736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcf326c69ecb6c51 # load x3 with value 0xdcf326c69ecb6c51
sw x3, 0(x2) # store 0xdcf326c69ecb6c51 in memory
flw f28, 0(x2) # load 0xdcf326c69ecb6c51 from memory into f28
li x3, 0x85feaa6ad122ec24 # load x3 with value 0x85feaa6ad122ec24
sw x3, 0(x2) # store 0x85feaa6ad122ec24 in memory
flw f8, 0(x2) # load 0x85feaa6ad122ec24 from memory into f8
fsgnjn.s f15, f28, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x4, 0x4709a7ecfd07af7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3405f111aeaa055a # load x3 with value 0x3405f111aeaa055a
sw x3, 0(x2) # store 0x3405f111aeaa055a in memory
flw f29, 0(x2) # load 0x3405f111aeaa055a from memory into f29
li x3, 0xfecee04593d4f12b # load x3 with value 0xfecee04593d4f12b
sw x3, 0(x2) # store 0xfecee04593d4f12b in memory
flw f15, 0(x2) # load 0xfecee04593d4f12b from memory into f15
fsgnjn.s f4, f29, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x17, 0xf2e9f88c6582f883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe94f28e8adacf652 # load x3 with value 0xe94f28e8adacf652
sw x3, 0(x2) # store 0xe94f28e8adacf652 in memory
flw f30, 0(x2) # load 0xe94f28e8adacf652 from memory into f30
li x3, 0xe06ecbba419a7e04 # load x3 with value 0xe06ecbba419a7e04
sw x3, 0(x2) # store 0xe06ecbba419a7e04 in memory
flw f15, 0(x2) # load 0xe06ecbba419a7e04 from memory into f15
fsgnjn.s f17, f30, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x22, 0x321cd2cea73ddc97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73dec7dc99129340 # load x3 with value 0x73dec7dc99129340
sw x3, 0(x2) # store 0x73dec7dc99129340 in memory
flw f31, 0(x2) # load 0x73dec7dc99129340 from memory into f31
li x3, 0xc0068d3dbd94dcd4 # load x3 with value 0xc0068d3dbd94dcd4
sw x3, 0(x2) # store 0xc0068d3dbd94dcd4 in memory
flw f5, 0(x2) # load 0xc0068d3dbd94dcd4 from memory into f5
fsgnjn.s f22, f31, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x23, 0x454e9c23d0491042 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x478b4a4c1d919d8 # load x3 with value 0x478b4a4c1d919d8
sw x3, 0(x2) # store 0x478b4a4c1d919d8 in memory
flw f13, 0(x2) # load 0x478b4a4c1d919d8 from memory into f13
li x3, 0x661de2d9af82e8d2 # load x3 with value 0x661de2d9af82e8d2
sw x3, 0(x2) # store 0x661de2d9af82e8d2 in memory
flw f0, 0(x2) # load 0x661de2d9af82e8d2 from memory into f0
fsgnjn.s f23, f13, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x12, 0xfc3ec796687aed4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc36dc6b68010fb6e # load x3 with value 0xc36dc6b68010fb6e
sw x3, 0(x2) # store 0xc36dc6b68010fb6e in memory
flw f24, 0(x2) # load 0xc36dc6b68010fb6e from memory into f24
li x3, 0xfff79c5e82b6388d # load x3 with value 0xfff79c5e82b6388d
sw x3, 0(x2) # store 0xfff79c5e82b6388d in memory
flw f1, 0(x2) # load 0xfff79c5e82b6388d from memory into f1
fsgnjn.s f12, f24, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x28, 0xb426895ad0c87223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62ac77d5f3d43b06 # load x3 with value 0x62ac77d5f3d43b06
sw x3, 0(x2) # store 0x62ac77d5f3d43b06 in memory
flw f4, 0(x2) # load 0x62ac77d5f3d43b06 from memory into f4
li x3, 0x9bed8a6233d795db # load x3 with value 0x9bed8a6233d795db
sw x3, 0(x2) # store 0x9bed8a6233d795db in memory
flw f2, 0(x2) # load 0x9bed8a6233d795db from memory into f2
fsgnjn.s f28, f4, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x7, 0x01162809444fdd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63bf0263379ecc9e # load x3 with value 0x63bf0263379ecc9e
sw x3, 0(x2) # store 0x63bf0263379ecc9e in memory
flw f15, 0(x2) # load 0x63bf0263379ecc9e from memory into f15
li x3, 0x7a989fd1c24f809 # load x3 with value 0x7a989fd1c24f809
sw x3, 0(x2) # store 0x7a989fd1c24f809 in memory
flw f3, 0(x2) # load 0x7a989fd1c24f809 from memory into f3
fsgnjn.s f7, f15, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x20, 0xceb4665e6cb33ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ca3a3d15f507520 # load x3 with value 0x3ca3a3d15f507520
sw x3, 0(x2) # store 0x3ca3a3d15f507520 in memory
flw f22, 0(x2) # load 0x3ca3a3d15f507520 from memory into f22
li x3, 0xf76aa9df65fb48ad # load x3 with value 0xf76aa9df65fb48ad
sw x3, 0(x2) # store 0xf76aa9df65fb48ad in memory
flw f4, 0(x2) # load 0xf76aa9df65fb48ad from memory into f4
fsgnjn.s f20, f22, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x16, 0x541705e94ca749fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78be4da46b47c352 # load x3 with value 0x78be4da46b47c352
sw x3, 0(x2) # store 0x78be4da46b47c352 in memory
flw f24, 0(x2) # load 0x78be4da46b47c352 from memory into f24
li x3, 0xfb11a8f53de62cab # load x3 with value 0xfb11a8f53de62cab
sw x3, 0(x2) # store 0xfb11a8f53de62cab in memory
flw f5, 0(x2) # load 0xfb11a8f53de62cab from memory into f5
fsgnjn.s f16, f24, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x8, 0xb47d2087b5efe1be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9133b410c2a4662 # load x3 with value 0xc9133b410c2a4662
sw x3, 0(x2) # store 0xc9133b410c2a4662 in memory
flw f16, 0(x2) # load 0xc9133b410c2a4662 from memory into f16
li x3, 0x292938d8be3e2a81 # load x3 with value 0x292938d8be3e2a81
sw x3, 0(x2) # store 0x292938d8be3e2a81 in memory
flw f6, 0(x2) # load 0x292938d8be3e2a81 from memory into f6
fsgnjn.s f8, f16, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x21, 0x02646caf05fe8f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf423b44376cd60d6 # load x3 with value 0xf423b44376cd60d6
sw x3, 0(x2) # store 0xf423b44376cd60d6 in memory
flw f11, 0(x2) # load 0xf423b44376cd60d6 from memory into f11
li x3, 0x89fa2203db53c95b # load x3 with value 0x89fa2203db53c95b
sw x3, 0(x2) # store 0x89fa2203db53c95b in memory
flw f7, 0(x2) # load 0x89fa2203db53c95b from memory into f7
fsgnjn.s f21, f11, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x30, 0xafd9a41d073ed423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb229745d2ad62ce0 # load x3 with value 0xb229745d2ad62ce0
sw x3, 0(x2) # store 0xb229745d2ad62ce0 in memory
flw f10, 0(x2) # load 0xb229745d2ad62ce0 from memory into f10
li x3, 0xfb27959d8e3c0f54 # load x3 with value 0xfb27959d8e3c0f54
sw x3, 0(x2) # store 0xfb27959d8e3c0f54 in memory
flw f8, 0(x2) # load 0xfb27959d8e3c0f54 from memory into f8
fsgnjn.s f30, f10, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0x90da901387794946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bf0b911e094e80d # load x3 with value 0x6bf0b911e094e80d
sw x3, 0(x2) # store 0x6bf0b911e094e80d in memory
flw f11, 0(x2) # load 0x6bf0b911e094e80d from memory into f11
li x3, 0x7a87c938307a8db4 # load x3 with value 0x7a87c938307a8db4
sw x3, 0(x2) # store 0x7a87c938307a8db4 in memory
flw f9, 0(x2) # load 0x7a87c938307a8db4 from memory into f9
fsgnjn.s f9, f11, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x26, 0x0ebe18a7196c5755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x277eb68e38096a5b # load x3 with value 0x277eb68e38096a5b
sw x3, 0(x2) # store 0x277eb68e38096a5b in memory
flw f18, 0(x2) # load 0x277eb68e38096a5b from memory into f18
li x3, 0x9769f015989742ab # load x3 with value 0x9769f015989742ab
sw x3, 0(x2) # store 0x9769f015989742ab in memory
flw f10, 0(x2) # load 0x9769f015989742ab from memory into f10
fsgnjn.s f26, f18, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x5, 0xba298fa8b5621733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x491c31431d2b6357 # load x3 with value 0x491c31431d2b6357
sw x3, 0(x2) # store 0x491c31431d2b6357 in memory
flw f7, 0(x2) # load 0x491c31431d2b6357 from memory into f7
li x3, 0x3867a44149becff7 # load x3 with value 0x3867a44149becff7
sw x3, 0(x2) # store 0x3867a44149becff7 in memory
flw f11, 0(x2) # load 0x3867a44149becff7 from memory into f11
fsgnjn.s f5, f7, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x9, 0xda3c6eab69d7b32c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadd62253313888cc # load x3 with value 0xadd62253313888cc
sw x3, 0(x2) # store 0xadd62253313888cc in memory
flw f23, 0(x2) # load 0xadd62253313888cc from memory into f23
li x3, 0xd9c48521ee59c048 # load x3 with value 0xd9c48521ee59c048
sw x3, 0(x2) # store 0xd9c48521ee59c048 in memory
flw f12, 0(x2) # load 0xd9c48521ee59c048 from memory into f12
fsgnjn.s f9, f23, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x24, 0xff6586ea3fc3f119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8990c2e48fb4114 # load x3 with value 0xb8990c2e48fb4114
sw x3, 0(x2) # store 0xb8990c2e48fb4114 in memory
flw f2, 0(x2) # load 0xb8990c2e48fb4114 from memory into f2
li x3, 0x5f5f8e7d94a47fdb # load x3 with value 0x5f5f8e7d94a47fdb
sw x3, 0(x2) # store 0x5f5f8e7d94a47fdb in memory
flw f13, 0(x2) # load 0x5f5f8e7d94a47fdb from memory into f13
fsgnjn.s f24, f2, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x21, 0xb961d141cdb9fa67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeba372ca614c4d44 # load x3 with value 0xeba372ca614c4d44
sw x3, 0(x2) # store 0xeba372ca614c4d44 in memory
flw f24, 0(x2) # load 0xeba372ca614c4d44 from memory into f24
li x3, 0x85e21cce0761a978 # load x3 with value 0x85e21cce0761a978
sw x3, 0(x2) # store 0x85e21cce0761a978 in memory
flw f14, 0(x2) # load 0x85e21cce0761a978 from memory into f14
fsgnjn.s f21, f24, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x3, 0x1296ca05eb6ac633 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b83658827da0cb6 # load x3 with value 0x7b83658827da0cb6
sw x3, 0(x2) # store 0x7b83658827da0cb6 in memory
flw f31, 0(x2) # load 0x7b83658827da0cb6 from memory into f31
li x3, 0x7d24bbdd108a1b86 # load x3 with value 0x7d24bbdd108a1b86
sw x3, 0(x2) # store 0x7d24bbdd108a1b86 in memory
flw f15, 0(x2) # load 0x7d24bbdd108a1b86 from memory into f15
fsgnjn.s f3, f31, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x28, 0x019ce541b87bcde9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ccb7c7bc934e7d1 # load x3 with value 0x6ccb7c7bc934e7d1
sw x3, 0(x2) # store 0x6ccb7c7bc934e7d1 in memory
flw f31, 0(x2) # load 0x6ccb7c7bc934e7d1 from memory into f31
li x3, 0x4441d717df6c4d8 # load x3 with value 0x4441d717df6c4d8
sw x3, 0(x2) # store 0x4441d717df6c4d8 in memory
flw f16, 0(x2) # load 0x4441d717df6c4d8 from memory into f16
fsgnjn.s f28, f31, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x22, 0xf79edf8d56a75fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52af694354631ec3 # load x3 with value 0x52af694354631ec3
sw x3, 0(x2) # store 0x52af694354631ec3 in memory
flw f23, 0(x2) # load 0x52af694354631ec3 from memory into f23
li x3, 0xef3932217b890987 # load x3 with value 0xef3932217b890987
sw x3, 0(x2) # store 0xef3932217b890987 in memory
flw f17, 0(x2) # load 0xef3932217b890987 from memory into f17
fsgnjn.s f22, f23, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x22, 0x1720bc897cb2beef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3694cbd6ce247200 # load x3 with value 0x3694cbd6ce247200
sw x3, 0(x2) # store 0x3694cbd6ce247200 in memory
flw f29, 0(x2) # load 0x3694cbd6ce247200 from memory into f29
li x3, 0xbaea4e4a31935519 # load x3 with value 0xbaea4e4a31935519
sw x3, 0(x2) # store 0xbaea4e4a31935519 in memory
flw f18, 0(x2) # load 0xbaea4e4a31935519 from memory into f18
fsgnjn.s f22, f29, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x24, 0xaccf322af87f98bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83a9a8483184eb1f # load x3 with value 0x83a9a8483184eb1f
sw x3, 0(x2) # store 0x83a9a8483184eb1f in memory
flw f17, 0(x2) # load 0x83a9a8483184eb1f from memory into f17
li x3, 0x3385f9ce5fad594c # load x3 with value 0x3385f9ce5fad594c
sw x3, 0(x2) # store 0x3385f9ce5fad594c in memory
flw f19, 0(x2) # load 0x3385f9ce5fad594c from memory into f19
fsgnjn.s f24, f17, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x6, 0x9672e3fc053b9729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe8d3a00721a8a2b # load x3 with value 0xbe8d3a00721a8a2b
sw x3, 0(x2) # store 0xbe8d3a00721a8a2b in memory
flw f1, 0(x2) # load 0xbe8d3a00721a8a2b from memory into f1
li x3, 0xab185b78bf086d44 # load x3 with value 0xab185b78bf086d44
sw x3, 0(x2) # store 0xab185b78bf086d44 in memory
flw f20, 0(x2) # load 0xab185b78bf086d44 from memory into f20
fsgnjn.s f6, f1, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x1, 0x84ed575e550447dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc178ab6b47a12d6e # load x3 with value 0xc178ab6b47a12d6e
sw x3, 0(x2) # store 0xc178ab6b47a12d6e in memory
flw f12, 0(x2) # load 0xc178ab6b47a12d6e from memory into f12
li x3, 0x8afcb24c95f98334 # load x3 with value 0x8afcb24c95f98334
sw x3, 0(x2) # store 0x8afcb24c95f98334 in memory
flw f21, 0(x2) # load 0x8afcb24c95f98334 from memory into f21
fsgnjn.s f1, f12, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x17, 0xc3c92e827e00f5f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e4b8fe555696f54 # load x3 with value 0x1e4b8fe555696f54
sw x3, 0(x2) # store 0x1e4b8fe555696f54 in memory
flw f27, 0(x2) # load 0x1e4b8fe555696f54 from memory into f27
li x3, 0xe2c5b6d8e9ff75b9 # load x3 with value 0xe2c5b6d8e9ff75b9
sw x3, 0(x2) # store 0xe2c5b6d8e9ff75b9 in memory
flw f22, 0(x2) # load 0xe2c5b6d8e9ff75b9 from memory into f22
fsgnjn.s f17, f27, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x22, 0x54353483772fb569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8720f93d2f9c4b31 # load x3 with value 0x8720f93d2f9c4b31
sw x3, 0(x2) # store 0x8720f93d2f9c4b31 in memory
flw f29, 0(x2) # load 0x8720f93d2f9c4b31 from memory into f29
li x3, 0xdd6937ff9cf8c9f6 # load x3 with value 0xdd6937ff9cf8c9f6
sw x3, 0(x2) # store 0xdd6937ff9cf8c9f6 in memory
flw f23, 0(x2) # load 0xdd6937ff9cf8c9f6 from memory into f23
fsgnjn.s f22, f29, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x25, 0xef451d871d2aee0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51d92999783425c # load x3 with value 0x51d92999783425c
sw x3, 0(x2) # store 0x51d92999783425c in memory
flw f10, 0(x2) # load 0x51d92999783425c from memory into f10
li x3, 0x66df4a1906e7fc12 # load x3 with value 0x66df4a1906e7fc12
sw x3, 0(x2) # store 0x66df4a1906e7fc12 in memory
flw f24, 0(x2) # load 0x66df4a1906e7fc12 from memory into f24
fsgnjn.s f25, f10, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x12, 0x6148e0b86d0f3b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d989b178dadbd39 # load x3 with value 0x1d989b178dadbd39
sw x3, 0(x2) # store 0x1d989b178dadbd39 in memory
flw f16, 0(x2) # load 0x1d989b178dadbd39 from memory into f16
li x3, 0xd4269d06803542a0 # load x3 with value 0xd4269d06803542a0
sw x3, 0(x2) # store 0xd4269d06803542a0 in memory
flw f25, 0(x2) # load 0xd4269d06803542a0 from memory into f25
fsgnjn.s f12, f16, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x19, 0x546349993be8d7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa85f5f8a0dac380 # load x3 with value 0xfa85f5f8a0dac380
sw x3, 0(x2) # store 0xfa85f5f8a0dac380 in memory
flw f21, 0(x2) # load 0xfa85f5f8a0dac380 from memory into f21
li x3, 0x5971de7e51362b39 # load x3 with value 0x5971de7e51362b39
sw x3, 0(x2) # store 0x5971de7e51362b39 in memory
flw f26, 0(x2) # load 0x5971de7e51362b39 from memory into f26
fsgnjn.s f19, f21, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x22, 0x17ff86ebff098b1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf670eba6585d9d5b # load x3 with value 0xf670eba6585d9d5b
sw x3, 0(x2) # store 0xf670eba6585d9d5b in memory
flw f31, 0(x2) # load 0xf670eba6585d9d5b from memory into f31
li x3, 0x7c73ea68aca83fb3 # load x3 with value 0x7c73ea68aca83fb3
sw x3, 0(x2) # store 0x7c73ea68aca83fb3 in memory
flw f27, 0(x2) # load 0x7c73ea68aca83fb3 from memory into f27
fsgnjn.s f22, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0x300c79d30a0215fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f008b3942abb498 # load x3 with value 0x9f008b3942abb498
sw x3, 0(x2) # store 0x9f008b3942abb498 in memory
flw f7, 0(x2) # load 0x9f008b3942abb498 from memory into f7
li x3, 0x8051366b6972b18f # load x3 with value 0x8051366b6972b18f
sw x3, 0(x2) # store 0x8051366b6972b18f in memory
flw f28, 0(x2) # load 0x8051366b6972b18f from memory into f28
fsgnjn.s f28, f7, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x13, 0x30e5fd0a889cdf5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x364b2a907a9d0f23 # load x3 with value 0x364b2a907a9d0f23
sw x3, 0(x2) # store 0x364b2a907a9d0f23 in memory
flw f2, 0(x2) # load 0x364b2a907a9d0f23 from memory into f2
li x3, 0x8f201ef3bff1309a # load x3 with value 0x8f201ef3bff1309a
sw x3, 0(x2) # store 0x8f201ef3bff1309a in memory
flw f29, 0(x2) # load 0x8f201ef3bff1309a from memory into f29
fsgnjn.s f13, f2, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x28, 0xb691ed8cfa6b581e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5000541f528b2aa # load x3 with value 0xf5000541f528b2aa
sw x3, 0(x2) # store 0xf5000541f528b2aa in memory
flw f21, 0(x2) # load 0xf5000541f528b2aa from memory into f21
li x3, 0x561322155d7ff9cb # load x3 with value 0x561322155d7ff9cb
sw x3, 0(x2) # store 0x561322155d7ff9cb in memory
flw f30, 0(x2) # load 0x561322155d7ff9cb from memory into f30
fsgnjn.s f28, f21, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x4, 0xe29f0400137bc541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaac5cf2157d38358 # load x3 with value 0xaac5cf2157d38358
sw x3, 0(x2) # store 0xaac5cf2157d38358 in memory
flw f14, 0(x2) # load 0xaac5cf2157d38358 from memory into f14
li x3, 0xb4868e5cf689d054 # load x3 with value 0xb4868e5cf689d054
sw x3, 0(x2) # store 0xb4868e5cf689d054 in memory
flw f31, 0(x2) # load 0xb4868e5cf689d054 from memory into f31
fsgnjn.s f4, f14, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
