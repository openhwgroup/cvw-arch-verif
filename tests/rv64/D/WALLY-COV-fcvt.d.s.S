///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.d.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.500948
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
li x10, 0x6056c630cbf611b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
flw f17, 0(x2) # load 0x0000000000000000 from memory into f17
fcvt.d.s f10, f17 # perform operation
fcvt.d.s f10, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x25, 0x3e383d54af6eedd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080000000 # load x3 with value 0x0000000080000000
sd x3, 0(x2) # store 0x0000000080000000 in memory
flw f3, 0(x2) # load 0x0000000080000000 from memory into f3
fcvt.d.s f25, f3 # perform operation
fcvt.d.s f25, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x12, 0xb048b505acd044e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
flw f13, 0(x2) # load 0x000000003f800000 from memory into f13
fcvt.d.s f12, f13 # perform operation
fcvt.d.s f12, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x19, 0x981ab94a663e23bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bf800000 # load x3 with value 0x00000000bf800000
sd x3, 0(x2) # store 0x00000000bf800000 in memory
flw f21, 0(x2) # load 0x00000000bf800000 from memory into f21
fcvt.d.s f19, f21 # perform operation
fcvt.d.s f19, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x7, 0xb49bc2d234161b7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000003fc00000 # load x3 with value 0x000000003fc00000
sd x3, 0(x2) # store 0x000000003fc00000 in memory
flw f22, 0(x2) # load 0x000000003fc00000 from memory into f22
fcvt.d.s f7, f22 # perform operation
fcvt.d.s f7, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x24, 0xc73742d80474956f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bfc00000 # load x3 with value 0x00000000bfc00000
sd x3, 0(x2) # store 0x00000000bfc00000 in memory
flw f13, 0(x2) # load 0x00000000bfc00000 from memory into f13
fcvt.d.s f24, f13 # perform operation
fcvt.d.s f24, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x8, 0x25ea8a763a046edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000040000000 # load x3 with value 0x0000000040000000
sd x3, 0(x2) # store 0x0000000040000000 in memory
flw f15, 0(x2) # load 0x0000000040000000 from memory into f15
fcvt.d.s f8, f15 # perform operation
fcvt.d.s f8, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x11, 0x71b76d5217b88e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000c0000000 # load x3 with value 0x00000000c0000000
sd x3, 0(x2) # store 0x00000000c0000000 in memory
flw f10, 0(x2) # load 0x00000000c0000000 from memory into f10
fcvt.d.s f11, f10 # perform operation
fcvt.d.s f11, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x2, 0x8803e6adff4a2b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000800000 # load x3 with value 0x0000000000800000
sd x3, 0(x2) # store 0x0000000000800000 in memory
flw f31, 0(x2) # load 0x0000000000800000 from memory into f31
fcvt.d.s f2, f31 # perform operation
fcvt.d.s f2, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x4, 0x9688d296c0598ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080800000 # load x3 with value 0x0000000080800000
sd x3, 0(x2) # store 0x0000000080800000 in memory
flw f15, 0(x2) # load 0x0000000080800000 from memory into f15
fcvt.d.s f4, f15 # perform operation
fcvt.d.s f4, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x21, 0x768692fca902fb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007f7fffff # load x3 with value 0x000000007f7fffff
sd x3, 0(x2) # store 0x000000007f7fffff in memory
flw f19, 0(x2) # load 0x000000007f7fffff from memory into f19
fcvt.d.s f21, f19 # perform operation
fcvt.d.s f21, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x28, 0xd9a3eff81fb903d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ff7fffff # load x3 with value 0x00000000ff7fffff
sd x3, 0(x2) # store 0x00000000ff7fffff in memory
flw f6, 0(x2) # load 0x00000000ff7fffff from memory into f6
fcvt.d.s f28, f6 # perform operation
fcvt.d.s f28, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x25, 0x3ac56d2926fb6e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000007fffff # load x3 with value 0x00000000007fffff
sd x3, 0(x2) # store 0x00000000007fffff in memory
flw f13, 0(x2) # load 0x00000000007fffff from memory into f13
fcvt.d.s f25, f13 # perform operation
fcvt.d.s f25, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x13, 0x0d1d628a050af2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000807fffff # load x3 with value 0x00000000807fffff
sd x3, 0(x2) # store 0x00000000807fffff in memory
flw f23, 0(x2) # load 0x00000000807fffff from memory into f23
fcvt.d.s f13, f23 # perform operation
fcvt.d.s f13, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x7, 0x29781d974aaef837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000400000 # load x3 with value 0x0000000000400000
sd x3, 0(x2) # store 0x0000000000400000 in memory
flw f17, 0(x2) # load 0x0000000000400000 from memory into f17
fcvt.d.s f7, f17 # perform operation
fcvt.d.s f7, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x3, 0x7d494369e895f8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080400000 # load x3 with value 0x0000000080400000
sd x3, 0(x2) # store 0x0000000080400000 in memory
flw f18, 0(x2) # load 0x0000000080400000 from memory into f18
fcvt.d.s f3, f18 # perform operation
fcvt.d.s f3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x15, 0x011d38a6a6e2d6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
flw f11, 0(x2) # load 0x0000000000000001 from memory into f11
fcvt.d.s f15, f11 # perform operation
fcvt.d.s f15, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x2, 0x9aeb71cb168136eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080000001 # load x3 with value 0x0000000080000001
sd x3, 0(x2) # store 0x0000000080000001 in memory
flw f25, 0(x2) # load 0x0000000080000001 from memory into f25
fcvt.d.s f2, f25 # perform operation
fcvt.d.s f2, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x22, 0xa01811312acedbd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007f800000 # load x3 with value 0x000000007f800000
sd x3, 0(x2) # store 0x000000007f800000 in memory
flw f31, 0(x2) # load 0x000000007f800000 from memory into f31
fcvt.d.s f22, f31 # perform operation
fcvt.d.s f22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x6, 0xbc16abab08b43099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ff800000 # load x3 with value 0x00000000ff800000
sd x3, 0(x2) # store 0x00000000ff800000 in memory
flw f16, 0(x2) # load 0x00000000ff800000 from memory into f16
fcvt.d.s f6, f16 # perform operation
fcvt.d.s f6, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x14, 0x587b51a4f4f536bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007fc00000 # load x3 with value 0x000000007fc00000
sd x3, 0(x2) # store 0x000000007fc00000 in memory
flw f12, 0(x2) # load 0x000000007fc00000 from memory into f12
fcvt.d.s f14, f12 # perform operation
fcvt.d.s f14, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x20, 0xe1fda99a98f0247c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007fffffff # load x3 with value 0x000000007fffffff
sd x3, 0(x2) # store 0x000000007fffffff in memory
flw f5, 0(x2) # load 0x000000007fffffff from memory into f5
fcvt.d.s f20, f5 # perform operation
fcvt.d.s f20, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x28, 0x11a829cc9f3d8311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007f800001 # load x3 with value 0x000000007f800001
sd x3, 0(x2) # store 0x000000007f800001 in memory
flw f18, 0(x2) # load 0x000000007f800001 from memory into f18
fcvt.d.s f28, f18 # perform operation
fcvt.d.s f28, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x11, 0x459e26b19def8551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007fbfffff # load x3 with value 0x000000007fbfffff
sd x3, 0(x2) # store 0x000000007fbfffff in memory
flw f27, 0(x2) # load 0x000000007fbfffff from memory into f27
fcvt.d.s f11, f27 # perform operation
fcvt.d.s f11, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x31, 0xc8110cc4a68af674 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007ef8654f # load x3 with value 0x000000007ef8654f
sd x3, 0(x2) # store 0x000000007ef8654f in memory
flw f27, 0(x2) # load 0x000000007ef8654f from memory into f27
fcvt.d.s f31, f27 # perform operation
fcvt.d.s f31, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x28, 0x3e262356f6d015e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000813d9ab0 # load x3 with value 0x00000000813d9ab0
sd x3, 0(x2) # store 0x00000000813d9ab0 in memory
flw f14, 0(x2) # load 0x00000000813d9ab0 from memory into f14
fcvt.d.s f28, f14 # perform operation
fcvt.d.s f28, f14 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x1eaf7ce8d8f1f1c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93d832a3656c82fe # load x3 with value 0x93d832a3656c82fe
sd x3, 0(x2) # store 0x93d832a3656c82fe in memory
flw f20, 0(x2) # load 0x93d832a3656c82fe from memory into f20
fcvt.d.s f0, f20 # perform operation
fcvt.d.s f0, f20 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x65108123e7b977c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadcb6e918852699b # load x3 with value 0xadcb6e918852699b
sd x3, 0(x2) # store 0xadcb6e918852699b in memory
flw f28, 0(x2) # load 0xadcb6e918852699b from memory into f28
fcvt.d.s f1, f28 # perform operation
fcvt.d.s f1, f28 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x4c0fdb12cd58a038 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d8a0f1675ee10bb # load x3 with value 0x0d8a0f1675ee10bb
sd x3, 0(x2) # store 0x0d8a0f1675ee10bb in memory
flw f10, 0(x2) # load 0x0d8a0f1675ee10bb from memory into f10
fcvt.d.s f2, f10 # perform operation
fcvt.d.s f2, f10 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xc99ba28fbec12c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8228929428aa38b9 # load x3 with value 0x8228929428aa38b9
sd x3, 0(x2) # store 0x8228929428aa38b9 in memory
flw f12, 0(x2) # load 0x8228929428aa38b9 from memory into f12
fcvt.d.s f3, f12 # perform operation
fcvt.d.s f3, f12 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xfc2cefceac8f40b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a11b75e1b7f7c0b # load x3 with value 0x3a11b75e1b7f7c0b
sd x3, 0(x2) # store 0x3a11b75e1b7f7c0b in memory
flw f7, 0(x2) # load 0x3a11b75e1b7f7c0b from memory into f7
fcvt.d.s f4, f7 # perform operation
fcvt.d.s f4, f7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x48ce998031aafb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96b7f9ee1f224870 # load x3 with value 0x96b7f9ee1f224870
sd x3, 0(x2) # store 0x96b7f9ee1f224870 in memory
flw f15, 0(x2) # load 0x96b7f9ee1f224870 from memory into f15
fcvt.d.s f5, f15 # perform operation
fcvt.d.s f5, f15 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x8fff63fc5eb2f171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5a3b22a6b3672c5 # load x3 with value 0xb5a3b22a6b3672c5
sd x3, 0(x2) # store 0xb5a3b22a6b3672c5 in memory
flw f28, 0(x2) # load 0xb5a3b22a6b3672c5 from memory into f28
fcvt.d.s f6, f28 # perform operation
fcvt.d.s f6, f28 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd9c61fbad60a8f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe174e6c01eaf8115 # load x3 with value 0xe174e6c01eaf8115
sd x3, 0(x2) # store 0xe174e6c01eaf8115 in memory
flw f29, 0(x2) # load 0xe174e6c01eaf8115 from memory into f29
fcvt.d.s f7, f29 # perform operation
fcvt.d.s f7, f29 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xff2f7cc046996302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x911b1f99ef9c0690 # load x3 with value 0x911b1f99ef9c0690
sd x3, 0(x2) # store 0x911b1f99ef9c0690 in memory
flw f30, 0(x2) # load 0x911b1f99ef9c0690 from memory into f30
fcvt.d.s f8, f30 # perform operation
fcvt.d.s f8, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xf27f7033271121c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1503e5fa7d5a72f6 # load x3 with value 0x1503e5fa7d5a72f6
sd x3, 0(x2) # store 0x1503e5fa7d5a72f6 in memory
flw f21, 0(x2) # load 0x1503e5fa7d5a72f6 from memory into f21
fcvt.d.s f9, f21 # perform operation
fcvt.d.s f9, f21 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xa18d7e971e97b43b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd255e5f680e6c3a2 # load x3 with value 0xd255e5f680e6c3a2
sd x3, 0(x2) # store 0xd255e5f680e6c3a2 in memory
flw f29, 0(x2) # load 0xd255e5f680e6c3a2 from memory into f29
fcvt.d.s f10, f29 # perform operation
fcvt.d.s f10, f29 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x5373342ca18998cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d51f35847d1ecd5 # load x3 with value 0x7d51f35847d1ecd5
sd x3, 0(x2) # store 0x7d51f35847d1ecd5 in memory
flw f1, 0(x2) # load 0x7d51f35847d1ecd5 from memory into f1
fcvt.d.s f11, f1 # perform operation
fcvt.d.s f11, f1 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xf0494d1f8bb21f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1de5c4fc4d0ca1d # load x3 with value 0xd1de5c4fc4d0ca1d
sd x3, 0(x2) # store 0xd1de5c4fc4d0ca1d in memory
flw f3, 0(x2) # load 0xd1de5c4fc4d0ca1d from memory into f3
fcvt.d.s f12, f3 # perform operation
fcvt.d.s f12, f3 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x34971626c4f6d606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3a95e47365a29c6 # load x3 with value 0xe3a95e47365a29c6
sd x3, 0(x2) # store 0xe3a95e47365a29c6 in memory
flw f25, 0(x2) # load 0xe3a95e47365a29c6 from memory into f25
fcvt.d.s f13, f25 # perform operation
fcvt.d.s f13, f25 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x784ef61d26e869b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e6be5caaf1824ea # load x3 with value 0x4e6be5caaf1824ea
sd x3, 0(x2) # store 0x4e6be5caaf1824ea in memory
flw f3, 0(x2) # load 0x4e6be5caaf1824ea from memory into f3
fcvt.d.s f14, f3 # perform operation
fcvt.d.s f14, f3 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xac88dfe58083ebd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6e06f4599e6ceb4 # load x3 with value 0xb6e06f4599e6ceb4
sd x3, 0(x2) # store 0xb6e06f4599e6ceb4 in memory
flw f4, 0(x2) # load 0xb6e06f4599e6ceb4 from memory into f4
fcvt.d.s f15, f4 # perform operation
fcvt.d.s f15, f4 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x028744f208080dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cd3251a72e81e69 # load x3 with value 0x3cd3251a72e81e69
sd x3, 0(x2) # store 0x3cd3251a72e81e69 in memory
flw f20, 0(x2) # load 0x3cd3251a72e81e69 from memory into f20
fcvt.d.s f16, f20 # perform operation
fcvt.d.s f16, f20 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xafe61f78db303964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74dbec8685156233 # load x3 with value 0x74dbec8685156233
sd x3, 0(x2) # store 0x74dbec8685156233 in memory
flw f20, 0(x2) # load 0x74dbec8685156233 from memory into f20
fcvt.d.s f17, f20 # perform operation
fcvt.d.s f17, f20 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x0d2c97a44e46ac67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadf9ba5748721652 # load x3 with value 0xadf9ba5748721652
sd x3, 0(x2) # store 0xadf9ba5748721652 in memory
flw f4, 0(x2) # load 0xadf9ba5748721652 from memory into f4
fcvt.d.s f18, f4 # perform operation
fcvt.d.s f18, f4 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x97d3fb6093d9992a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa941f6b38f90d34 # load x3 with value 0xaa941f6b38f90d34
sd x3, 0(x2) # store 0xaa941f6b38f90d34 in memory
flw f15, 0(x2) # load 0xaa941f6b38f90d34 from memory into f15
fcvt.d.s f19, f15 # perform operation
fcvt.d.s f19, f15 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcbe962dbd3ab09c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9462d71acb01b39 # load x3 with value 0xf9462d71acb01b39
sd x3, 0(x2) # store 0xf9462d71acb01b39 in memory
flw f8, 0(x2) # load 0xf9462d71acb01b39 from memory into f8
fcvt.d.s f20, f8 # perform operation
fcvt.d.s f20, f8 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x821fecd0b14fa9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b91ed8b25f30037 # load x3 with value 0x4b91ed8b25f30037
sd x3, 0(x2) # store 0x4b91ed8b25f30037 in memory
flw f5, 0(x2) # load 0x4b91ed8b25f30037 from memory into f5
fcvt.d.s f21, f5 # perform operation
fcvt.d.s f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xe6c999b6d02144ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6239f6e32abffaee # load x3 with value 0x6239f6e32abffaee
sd x3, 0(x2) # store 0x6239f6e32abffaee in memory
flw f27, 0(x2) # load 0x6239f6e32abffaee from memory into f27
fcvt.d.s f22, f27 # perform operation
fcvt.d.s f22, f27 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x70f9d9e66d4fe161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2feb1cd0eb64d782 # load x3 with value 0x2feb1cd0eb64d782
sd x3, 0(x2) # store 0x2feb1cd0eb64d782 in memory
flw f27, 0(x2) # load 0x2feb1cd0eb64d782 from memory into f27
fcvt.d.s f23, f27 # perform operation
fcvt.d.s f23, f27 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x23eb85ff792697f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b238f0da674e035 # load x3 with value 0x0b238f0da674e035
sd x3, 0(x2) # store 0x0b238f0da674e035 in memory
flw f2, 0(x2) # load 0x0b238f0da674e035 from memory into f2
fcvt.d.s f24, f2 # perform operation
fcvt.d.s f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x77e2e416f784f9b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fa05b76df7de510 # load x3 with value 0x5fa05b76df7de510
sd x3, 0(x2) # store 0x5fa05b76df7de510 in memory
flw f22, 0(x2) # load 0x5fa05b76df7de510 from memory into f22
fcvt.d.s f25, f22 # perform operation
fcvt.d.s f25, f22 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xa0309e25b5eae23a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8923b6c794b1074c # load x3 with value 0x8923b6c794b1074c
sd x3, 0(x2) # store 0x8923b6c794b1074c in memory
flw f11, 0(x2) # load 0x8923b6c794b1074c from memory into f11
fcvt.d.s f26, f11 # perform operation
fcvt.d.s f26, f11 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x23e6c9dacb121789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2610364086c11bd6 # load x3 with value 0x2610364086c11bd6
sd x3, 0(x2) # store 0x2610364086c11bd6 in memory
flw f30, 0(x2) # load 0x2610364086c11bd6 from memory into f30
fcvt.d.s f27, f30 # perform operation
fcvt.d.s f27, f30 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x8ab303dd058337b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a9e84698472ad5f # load x3 with value 0x4a9e84698472ad5f
sd x3, 0(x2) # store 0x4a9e84698472ad5f in memory
flw f23, 0(x2) # load 0x4a9e84698472ad5f from memory into f23
fcvt.d.s f28, f23 # perform operation
fcvt.d.s f28, f23 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x25a21dce1426e709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c4385cb32c81033 # load x3 with value 0x1c4385cb32c81033
sd x3, 0(x2) # store 0x1c4385cb32c81033 in memory
flw f4, 0(x2) # load 0x1c4385cb32c81033 from memory into f4
fcvt.d.s f29, f4 # perform operation
fcvt.d.s f29, f4 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x47d08816e47ec60c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d47e44348c25a39 # load x3 with value 0x1d47e44348c25a39
sd x3, 0(x2) # store 0x1d47e44348c25a39 in memory
flw f21, 0(x2) # load 0x1d47e44348c25a39 from memory into f21
fcvt.d.s f30, f21 # perform operation
fcvt.d.s f30, f21 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x675e09a25970f04b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec8976733ba19b13 # load x3 with value 0xec8976733ba19b13
sd x3, 0(x2) # store 0xec8976733ba19b13 in memory
flw f12, 0(x2) # load 0xec8976733ba19b13 from memory into f12
fcvt.d.s f31, f12 # perform operation
fcvt.d.s f31, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0xb7d9cae803c7fead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40e8bda3ff9485ee # load x3 with value 0x40e8bda3ff9485ee
sd x3, 0(x2) # store 0x40e8bda3ff9485ee in memory
flw f0, 0(x2) # load 0x40e8bda3ff9485ee from memory into f0
fcvt.d.s f3, f0 # perform operation
fcvt.d.s f3, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x17, 0xa8f9383049ee7606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16532f59235ef78e # load x3 with value 0x16532f59235ef78e
sd x3, 0(x2) # store 0x16532f59235ef78e in memory
flw f1, 0(x2) # load 0x16532f59235ef78e from memory into f1
fcvt.d.s f17, f1 # perform operation
fcvt.d.s f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x25, 0xf6dd390839da197e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x317681c29b7d21a4 # load x3 with value 0x317681c29b7d21a4
sd x3, 0(x2) # store 0x317681c29b7d21a4 in memory
flw f2, 0(x2) # load 0x317681c29b7d21a4 from memory into f2
fcvt.d.s f25, f2 # perform operation
fcvt.d.s f25, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x6, 0x8b5a5ccc6b3392c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x039e1368fca4705c # load x3 with value 0x039e1368fca4705c
sd x3, 0(x2) # store 0x039e1368fca4705c in memory
flw f3, 0(x2) # load 0x039e1368fca4705c from memory into f3
fcvt.d.s f6, f3 # perform operation
fcvt.d.s f6, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x6, 0x88eada44750ffb9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x239d6e41d2ab100e # load x3 with value 0x239d6e41d2ab100e
sd x3, 0(x2) # store 0x239d6e41d2ab100e in memory
flw f4, 0(x2) # load 0x239d6e41d2ab100e from memory into f4
fcvt.d.s f6, f4 # perform operation
fcvt.d.s f6, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0x062c071a4c376ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53dadbf622611d9e # load x3 with value 0x53dadbf622611d9e
sd x3, 0(x2) # store 0x53dadbf622611d9e in memory
flw f5, 0(x2) # load 0x53dadbf622611d9e from memory into f5
fcvt.d.s f5, f5 # perform operation
fcvt.d.s f5, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x23, 0xb0edc23ef6c3c55b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb841ee48d7e37607 # load x3 with value 0xb841ee48d7e37607
sd x3, 0(x2) # store 0xb841ee48d7e37607 in memory
flw f6, 0(x2) # load 0xb841ee48d7e37607 from memory into f6
fcvt.d.s f23, f6 # perform operation
fcvt.d.s f23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x15, 0x43748bd3529df60d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa63ce607519a178 # load x3 with value 0xaa63ce607519a178
sd x3, 0(x2) # store 0xaa63ce607519a178 in memory
flw f7, 0(x2) # load 0xaa63ce607519a178 from memory into f7
fcvt.d.s f15, f7 # perform operation
fcvt.d.s f15, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x17, 0x017aa1372de62131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3e696ac689f6b88 # load x3 with value 0xb3e696ac689f6b88
sd x3, 0(x2) # store 0xb3e696ac689f6b88 in memory
flw f8, 0(x2) # load 0xb3e696ac689f6b88 from memory into f8
fcvt.d.s f17, f8 # perform operation
fcvt.d.s f17, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x9, 0xe186db98783e9aff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c7b1b124e73b97e # load x3 with value 0x8c7b1b124e73b97e
sd x3, 0(x2) # store 0x8c7b1b124e73b97e in memory
flw f9, 0(x2) # load 0x8c7b1b124e73b97e from memory into f9
fcvt.d.s f9, f9 # perform operation
fcvt.d.s f9, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x29, 0x0ddb24fcaf011cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd174b7002e4a397a # load x3 with value 0xd174b7002e4a397a
sd x3, 0(x2) # store 0xd174b7002e4a397a in memory
flw f10, 0(x2) # load 0xd174b7002e4a397a from memory into f10
fcvt.d.s f29, f10 # perform operation
fcvt.d.s f29, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x7, 0x371d2122004c7fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39e00b4490e5765b # load x3 with value 0x39e00b4490e5765b
sd x3, 0(x2) # store 0x39e00b4490e5765b in memory
flw f11, 0(x2) # load 0x39e00b4490e5765b from memory into f11
fcvt.d.s f7, f11 # perform operation
fcvt.d.s f7, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x24, 0x75da0260208c063f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45f6484ea3faac11 # load x3 with value 0x45f6484ea3faac11
sd x3, 0(x2) # store 0x45f6484ea3faac11 in memory
flw f12, 0(x2) # load 0x45f6484ea3faac11 from memory into f12
fcvt.d.s f24, f12 # perform operation
fcvt.d.s f24, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x17, 0x492098eea7cd0cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4dda10c2f27f3efa # load x3 with value 0x4dda10c2f27f3efa
sd x3, 0(x2) # store 0x4dda10c2f27f3efa in memory
flw f13, 0(x2) # load 0x4dda10c2f27f3efa from memory into f13
fcvt.d.s f17, f13 # perform operation
fcvt.d.s f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x14, 0x3be88b995f0667a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d2f9b3e5920e794 # load x3 with value 0x2d2f9b3e5920e794
sd x3, 0(x2) # store 0x2d2f9b3e5920e794 in memory
flw f14, 0(x2) # load 0x2d2f9b3e5920e794 from memory into f14
fcvt.d.s f14, f14 # perform operation
fcvt.d.s f14, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x26, 0x5afdd6f4dfee7855 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc9e96b8f10b3cf4 # load x3 with value 0xdc9e96b8f10b3cf4
sd x3, 0(x2) # store 0xdc9e96b8f10b3cf4 in memory
flw f15, 0(x2) # load 0xdc9e96b8f10b3cf4 from memory into f15
fcvt.d.s f26, f15 # perform operation
fcvt.d.s f26, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x21, 0x6aa0ce1c55e239b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfcf5333555530e03 # load x3 with value 0xfcf5333555530e03
sd x3, 0(x2) # store 0xfcf5333555530e03 in memory
flw f16, 0(x2) # load 0xfcf5333555530e03 from memory into f16
fcvt.d.s f21, f16 # perform operation
fcvt.d.s f21, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x5, 0x816c301a920cbb26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c38c480d4b88b88 # load x3 with value 0x5c38c480d4b88b88
sd x3, 0(x2) # store 0x5c38c480d4b88b88 in memory
flw f17, 0(x2) # load 0x5c38c480d4b88b88 from memory into f17
fcvt.d.s f5, f17 # perform operation
fcvt.d.s f5, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x6, 0x436db2739254fef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaa08599e9259786 # load x3 with value 0xbaa08599e9259786
sd x3, 0(x2) # store 0xbaa08599e9259786 in memory
flw f18, 0(x2) # load 0xbaa08599e9259786 from memory into f18
fcvt.d.s f6, f18 # perform operation
fcvt.d.s f6, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x30, 0x1296af9a60ed2cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e8bf51a7e916342 # load x3 with value 0x0e8bf51a7e916342
sd x3, 0(x2) # store 0x0e8bf51a7e916342 in memory
flw f19, 0(x2) # load 0x0e8bf51a7e916342 from memory into f19
fcvt.d.s f30, f19 # perform operation
fcvt.d.s f30, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x3, 0x9207928f7d760edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b41ce4042aa4ec5 # load x3 with value 0x9b41ce4042aa4ec5
sd x3, 0(x2) # store 0x9b41ce4042aa4ec5 in memory
flw f20, 0(x2) # load 0x9b41ce4042aa4ec5 from memory into f20
fcvt.d.s f3, f20 # perform operation
fcvt.d.s f3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x25, 0x75b0f04c2a3a83d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x700ca74f93a94eb2 # load x3 with value 0x700ca74f93a94eb2
sd x3, 0(x2) # store 0x700ca74f93a94eb2 in memory
flw f21, 0(x2) # load 0x700ca74f93a94eb2 from memory into f21
fcvt.d.s f25, f21 # perform operation
fcvt.d.s f25, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x24, 0x0efa3db588eb0cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x596147ac9aed311b # load x3 with value 0x596147ac9aed311b
sd x3, 0(x2) # store 0x596147ac9aed311b in memory
flw f22, 0(x2) # load 0x596147ac9aed311b from memory into f22
fcvt.d.s f24, f22 # perform operation
fcvt.d.s f24, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x19, 0xfb5ee203658bce60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5438d4302a9e140 # load x3 with value 0xe5438d4302a9e140
sd x3, 0(x2) # store 0xe5438d4302a9e140 in memory
flw f23, 0(x2) # load 0xe5438d4302a9e140 from memory into f23
fcvt.d.s f19, f23 # perform operation
fcvt.d.s f19, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x2, 0x392946b41f165cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ca7181568d5d07c # load x3 with value 0x5ca7181568d5d07c
sd x3, 0(x2) # store 0x5ca7181568d5d07c in memory
flw f24, 0(x2) # load 0x5ca7181568d5d07c from memory into f24
fcvt.d.s f2, f24 # perform operation
fcvt.d.s f2, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x11, 0xe3271baa9c42c3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fd19fc2a31f9cfd # load x3 with value 0x2fd19fc2a31f9cfd
sd x3, 0(x2) # store 0x2fd19fc2a31f9cfd in memory
flw f25, 0(x2) # load 0x2fd19fc2a31f9cfd from memory into f25
fcvt.d.s f11, f25 # perform operation
fcvt.d.s f11, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x11, 0x8cff3d3c2410ed22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd27ae4b14dff39f # load x3 with value 0xfd27ae4b14dff39f
sd x3, 0(x2) # store 0xfd27ae4b14dff39f in memory
flw f26, 0(x2) # load 0xfd27ae4b14dff39f from memory into f26
fcvt.d.s f11, f26 # perform operation
fcvt.d.s f11, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x5, 0xc831c573e37be459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cf740457f983d01 # load x3 with value 0x9cf740457f983d01
sd x3, 0(x2) # store 0x9cf740457f983d01 in memory
flw f27, 0(x2) # load 0x9cf740457f983d01 from memory into f27
fcvt.d.s f5, f27 # perform operation
fcvt.d.s f5, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x7, 0x41a59f095e879455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d3946543c537c8f # load x3 with value 0x9d3946543c537c8f
sd x3, 0(x2) # store 0x9d3946543c537c8f in memory
flw f28, 0(x2) # load 0x9d3946543c537c8f from memory into f28
fcvt.d.s f7, f28 # perform operation
fcvt.d.s f7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x23, 0x7bb31aa546cb898b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa32de46a37a218fd # load x3 with value 0xa32de46a37a218fd
sd x3, 0(x2) # store 0xa32de46a37a218fd in memory
flw f29, 0(x2) # load 0xa32de46a37a218fd from memory into f29
fcvt.d.s f23, f29 # perform operation
fcvt.d.s f23, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x21, 0xd3134fdf0a1f3755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x489ae4a7593950c4 # load x3 with value 0x489ae4a7593950c4
sd x3, 0(x2) # store 0x489ae4a7593950c4 in memory
flw f30, 0(x2) # load 0x489ae4a7593950c4 from memory into f30
fcvt.d.s f21, f30 # perform operation
fcvt.d.s f21, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x4, 0x4d2e4b0fae6b4d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x506b957a3d51c6e3 # load x3 with value 0x506b957a3d51c6e3
sd x3, 0(x2) # store 0x506b957a3d51c6e3 in memory
flw f31, 0(x2) # load 0x506b957a3d51c6e3 from memory into f31
fcvt.d.s f4, f31 # perform operation
fcvt.d.s f4, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
