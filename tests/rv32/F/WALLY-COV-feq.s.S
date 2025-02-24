///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-feq.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.165486
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
li x0, 0xe1b6f148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0751818 # load x3 with value 0xa0751818
sw x3, 0(x2) # store 0xa0751818 in memory
flw f16, 0(x2) # load 0xa0751818 from memory into f16
li x3, 0x6d99ba21 # load x3 with value 0x6d99ba21
sw x3, 0(x2) # store 0x6d99ba21 in memory
flw f5, 0(x2) # load 0x6d99ba21 from memory into f5
feq.s x0, f16, f5 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x8c52061c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadebe0ca # load x3 with value 0xadebe0ca
sw x3, 0(x2) # store 0xadebe0ca in memory
flw f16, 0(x2) # load 0xadebe0ca from memory into f16
li x3, 0x1f30b9a6 # load x3 with value 0x1f30b9a6
sw x3, 0(x2) # store 0x1f30b9a6 in memory
flw f4, 0(x2) # load 0x1f30b9a6 from memory into f4
feq.s x1, f16, f4 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc00b6d20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67e46d0c # load x3 with value 0x67e46d0c
sw x3, 0(x2) # store 0x67e46d0c in memory
flw f6, 0(x2) # load 0x67e46d0c from memory into f6
li x3, 0xc11a2d88 # load x3 with value 0xc11a2d88
sw x3, 0(x2) # store 0xc11a2d88 in memory
flw f16, 0(x2) # load 0xc11a2d88 from memory into f16
feq.s x2, f6, f16 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8ac06a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9a36a12 # load x3 with value 0xd9a36a12
sw x3, 0(x2) # store 0xd9a36a12 in memory
flw f6, 0(x2) # load 0xd9a36a12 from memory into f6
li x3, 0x22fa3473 # load x3 with value 0x22fa3473
sw x3, 0(x2) # store 0x22fa3473 in memory
flw f9, 0(x2) # load 0x22fa3473 from memory into f9
feq.s x3, f6, f9 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xd52d27ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14c30480 # load x3 with value 0x14c30480
sw x3, 0(x2) # store 0x14c30480 in memory
flw f17, 0(x2) # load 0x14c30480 from memory into f17
li x3, 0x4092241b # load x3 with value 0x4092241b
sw x3, 0(x2) # store 0x4092241b in memory
flw f15, 0(x2) # load 0x4092241b from memory into f15
feq.s x4, f17, f15 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7cffffce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf26efacf # load x3 with value 0xf26efacf
sw x3, 0(x2) # store 0xf26efacf in memory
flw f20, 0(x2) # load 0xf26efacf from memory into f20
li x3, 0xa3c6e067 # load x3 with value 0xa3c6e067
sw x3, 0(x2) # store 0xa3c6e067 in memory
flw f26, 0(x2) # load 0xa3c6e067 from memory into f26
feq.s x5, f20, f26 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x0a743dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c44031b # load x3 with value 0x4c44031b
sw x3, 0(x2) # store 0x4c44031b in memory
flw f14, 0(x2) # load 0x4c44031b from memory into f14
li x3, 0xd9f9eba6 # load x3 with value 0xd9f9eba6
sw x3, 0(x2) # store 0xd9f9eba6 in memory
flw f24, 0(x2) # load 0xd9f9eba6 from memory into f24
feq.s x6, f14, f24 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc5762ded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98149027 # load x3 with value 0x98149027
sw x3, 0(x2) # store 0x98149027 in memory
flw f9, 0(x2) # load 0x98149027 from memory into f9
li x3, 0x1fb2bb6b # load x3 with value 0x1fb2bb6b
sw x3, 0(x2) # store 0x1fb2bb6b in memory
flw f17, 0(x2) # load 0x1fb2bb6b from memory into f17
feq.s x7, f9, f17 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2b40159b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa3edf5b # load x3 with value 0xfa3edf5b
sw x3, 0(x2) # store 0xfa3edf5b in memory
flw f9, 0(x2) # load 0xfa3edf5b from memory into f9
li x3, 0x1ffa2759 # load x3 with value 0x1ffa2759
sw x3, 0(x2) # store 0x1ffa2759 in memory
flw f17, 0(x2) # load 0x1ffa2759 from memory into f17
feq.s x8, f9, f17 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xd41ea732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ab1597e # load x3 with value 0x2ab1597e
sw x3, 0(x2) # store 0x2ab1597e in memory
flw f16, 0(x2) # load 0x2ab1597e from memory into f16
li x3, 0x9d71a572 # load x3 with value 0x9d71a572
sw x3, 0(x2) # store 0x9d71a572 in memory
flw f29, 0(x2) # load 0x9d71a572 from memory into f29
feq.s x9, f16, f29 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf21963a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83e0a475 # load x3 with value 0x83e0a475
sw x3, 0(x2) # store 0x83e0a475 in memory
flw f20, 0(x2) # load 0x83e0a475 from memory into f20
li x3, 0x6b84be16 # load x3 with value 0x6b84be16
sw x3, 0(x2) # store 0x6b84be16 in memory
flw f19, 0(x2) # load 0x6b84be16 from memory into f19
feq.s x10, f20, f19 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9f2ec4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8ead381 # load x3 with value 0xb8ead381
sw x3, 0(x2) # store 0xb8ead381 in memory
flw f25, 0(x2) # load 0xb8ead381 from memory into f25
li x3, 0x7daed695 # load x3 with value 0x7daed695
sw x3, 0(x2) # store 0x7daed695 in memory
flw f27, 0(x2) # load 0x7daed695 from memory into f27
feq.s x11, f25, f27 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaef4105a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeda9b836 # load x3 with value 0xeda9b836
sw x3, 0(x2) # store 0xeda9b836 in memory
flw f9, 0(x2) # load 0xeda9b836 from memory into f9
li x3, 0xcd23ed0f # load x3 with value 0xcd23ed0f
sw x3, 0(x2) # store 0xcd23ed0f in memory
flw f2, 0(x2) # load 0xcd23ed0f from memory into f2
feq.s x12, f9, f2 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xec01e288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe886f29b # load x3 with value 0xe886f29b
sw x3, 0(x2) # store 0xe886f29b in memory
flw f31, 0(x2) # load 0xe886f29b from memory into f31
li x3, 0xe3386259 # load x3 with value 0xe3386259
sw x3, 0(x2) # store 0xe3386259 in memory
flw f6, 0(x2) # load 0xe3386259 from memory into f6
feq.s x13, f31, f6 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9fc4ab0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bcc813b # load x3 with value 0x4bcc813b
sw x3, 0(x2) # store 0x4bcc813b in memory
flw f15, 0(x2) # load 0x4bcc813b from memory into f15
li x3, 0x74429e1b # load x3 with value 0x74429e1b
sw x3, 0(x2) # store 0x74429e1b in memory
flw f17, 0(x2) # load 0x74429e1b from memory into f17
feq.s x14, f15, f17 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xacb30f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8cf519f # load x3 with value 0xb8cf519f
sw x3, 0(x2) # store 0xb8cf519f in memory
flw f8, 0(x2) # load 0xb8cf519f from memory into f8
li x3, 0x3f8e395a # load x3 with value 0x3f8e395a
sw x3, 0(x2) # store 0x3f8e395a in memory
flw f30, 0(x2) # load 0x3f8e395a from memory into f30
feq.s x15, f8, f30 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3d5627ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac199383 # load x3 with value 0xac199383
sw x3, 0(x2) # store 0xac199383 in memory
flw f13, 0(x2) # load 0xac199383 from memory into f13
li x3, 0x69dec8ca # load x3 with value 0x69dec8ca
sw x3, 0(x2) # store 0x69dec8ca in memory
flw f2, 0(x2) # load 0x69dec8ca from memory into f2
feq.s x16, f13, f2 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x86eb094e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c8c324b # load x3 with value 0x1c8c324b
sw x3, 0(x2) # store 0x1c8c324b in memory
flw f11, 0(x2) # load 0x1c8c324b from memory into f11
li x3, 0x7dc4d867 # load x3 with value 0x7dc4d867
sw x3, 0(x2) # store 0x7dc4d867 in memory
flw f23, 0(x2) # load 0x7dc4d867 from memory into f23
feq.s x17, f11, f23 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x37219004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8225986f # load x3 with value 0x8225986f
sw x3, 0(x2) # store 0x8225986f in memory
flw f14, 0(x2) # load 0x8225986f from memory into f14
li x3, 0xbfb30497 # load x3 with value 0xbfb30497
sw x3, 0(x2) # store 0xbfb30497 in memory
flw f17, 0(x2) # load 0xbfb30497 from memory into f17
feq.s x18, f14, f17 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8168fdf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x827b4049 # load x3 with value 0x827b4049
sw x3, 0(x2) # store 0x827b4049 in memory
flw f28, 0(x2) # load 0x827b4049 from memory into f28
li x3, 0x75df7fe4 # load x3 with value 0x75df7fe4
sw x3, 0(x2) # store 0x75df7fe4 in memory
flw f13, 0(x2) # load 0x75df7fe4 from memory into f13
feq.s x19, f28, f13 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x3e74903b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa02d06ca # load x3 with value 0xa02d06ca
sw x3, 0(x2) # store 0xa02d06ca in memory
flw f11, 0(x2) # load 0xa02d06ca from memory into f11
li x3, 0xb2c38a98 # load x3 with value 0xb2c38a98
sw x3, 0(x2) # store 0xb2c38a98 in memory
flw f13, 0(x2) # load 0xb2c38a98 from memory into f13
feq.s x20, f11, f13 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xfe2686be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2292a95d # load x3 with value 0x2292a95d
sw x3, 0(x2) # store 0x2292a95d in memory
flw f25, 0(x2) # load 0x2292a95d from memory into f25
li x3, 0x4c868d6e # load x3 with value 0x4c868d6e
sw x3, 0(x2) # store 0x4c868d6e in memory
flw f28, 0(x2) # load 0x4c868d6e from memory into f28
feq.s x21, f25, f28 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x2b008e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1e493f1 # load x3 with value 0xe1e493f1
sw x3, 0(x2) # store 0xe1e493f1 in memory
flw f1, 0(x2) # load 0xe1e493f1 from memory into f1
li x3, 0x8231b92b # load x3 with value 0x8231b92b
sw x3, 0(x2) # store 0x8231b92b in memory
flw f4, 0(x2) # load 0x8231b92b from memory into f4
feq.s x22, f1, f4 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x123215d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd00f9a1 # load x3 with value 0xbd00f9a1
sw x3, 0(x2) # store 0xbd00f9a1 in memory
flw f22, 0(x2) # load 0xbd00f9a1 from memory into f22
li x3, 0x52d4a699 # load x3 with value 0x52d4a699
sw x3, 0(x2) # store 0x52d4a699 in memory
flw f3, 0(x2) # load 0x52d4a699 from memory into f3
feq.s x23, f22, f3 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xccb2ee9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65ed52af # load x3 with value 0x65ed52af
sw x3, 0(x2) # store 0x65ed52af in memory
flw f18, 0(x2) # load 0x65ed52af from memory into f18
li x3, 0x46edbd5d # load x3 with value 0x46edbd5d
sw x3, 0(x2) # store 0x46edbd5d in memory
flw f11, 0(x2) # load 0x46edbd5d from memory into f11
feq.s x24, f18, f11 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3eff6ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ff7fd11 # load x3 with value 0x5ff7fd11
sw x3, 0(x2) # store 0x5ff7fd11 in memory
flw f3, 0(x2) # load 0x5ff7fd11 from memory into f3
li x3, 0x2e68ca87 # load x3 with value 0x2e68ca87
sw x3, 0(x2) # store 0x2e68ca87 in memory
flw f2, 0(x2) # load 0x2e68ca87 from memory into f2
feq.s x25, f3, f2 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd25332c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9967650c # load x3 with value 0x9967650c
sw x3, 0(x2) # store 0x9967650c in memory
flw f26, 0(x2) # load 0x9967650c from memory into f26
li x3, 0x63eb2085 # load x3 with value 0x63eb2085
sw x3, 0(x2) # store 0x63eb2085 in memory
flw f21, 0(x2) # load 0x63eb2085 from memory into f21
feq.s x26, f26, f21 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9e495913 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12e2f628 # load x3 with value 0x12e2f628
sw x3, 0(x2) # store 0x12e2f628 in memory
flw f21, 0(x2) # load 0x12e2f628 from memory into f21
li x3, 0xfcce6ab4 # load x3 with value 0xfcce6ab4
sw x3, 0(x2) # store 0xfcce6ab4 in memory
flw f7, 0(x2) # load 0xfcce6ab4 from memory into f7
feq.s x27, f21, f7 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x34b769c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bbdf593 # load x3 with value 0x4bbdf593
sw x3, 0(x2) # store 0x4bbdf593 in memory
flw f12, 0(x2) # load 0x4bbdf593 from memory into f12
li x3, 0xb2f39299 # load x3 with value 0xb2f39299
sw x3, 0(x2) # store 0xb2f39299 in memory
flw f22, 0(x2) # load 0xb2f39299 from memory into f22
feq.s x28, f12, f22 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x58a95f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x232c5dd8 # load x3 with value 0x232c5dd8
sw x3, 0(x2) # store 0x232c5dd8 in memory
flw f12, 0(x2) # load 0x232c5dd8 from memory into f12
li x3, 0xaf00de06 # load x3 with value 0xaf00de06
sw x3, 0(x2) # store 0xaf00de06 in memory
flw f14, 0(x2) # load 0xaf00de06 from memory into f14
feq.s x29, f12, f14 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x4f61f048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x222f2862 # load x3 with value 0x222f2862
sw x3, 0(x2) # store 0x222f2862 in memory
flw f10, 0(x2) # load 0x222f2862 from memory into f10
li x3, 0xf5451bb9 # load x3 with value 0xf5451bb9
sw x3, 0(x2) # store 0xf5451bb9 in memory
flw f15, 0(x2) # load 0xf5451bb9 from memory into f15
feq.s x30, f10, f15 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5b3c8074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x722abc41 # load x3 with value 0x722abc41
sw x3, 0(x2) # store 0x722abc41 in memory
flw f6, 0(x2) # load 0x722abc41 from memory into f6
li x3, 0xe4f5ef60 # load x3 with value 0xe4f5ef60
sw x3, 0(x2) # store 0xe4f5ef60 in memory
flw f28, 0(x2) # load 0xe4f5ef60 from memory into f28
feq.s x31, f6, f28 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x25, 0xd1926cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x34c0aa8d # load x3 with value 0x34c0aa8d
sw x3, 0(x2) # store 0x34c0aa8d in memory
flw f21, 0(x2) # load 0x34c0aa8d from memory into f21
feq.s x25, f23, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x11, 0x469f58ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x8379f53a # load x3 with value 0x8379f53a
sw x3, 0(x2) # store 0x8379f53a in memory
flw f16, 0(x2) # load 0x8379f53a from memory into f16
feq.s x11, f7, f16 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x4, 0xb49cb3f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x70fa9fd9 # load x3 with value 0x70fa9fd9
sw x3, 0(x2) # store 0x70fa9fd9 in memory
flw f13, 0(x2) # load 0x70fa9fd9 from memory into f13
feq.s x4, f6, f13 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x4, 0x0d9013cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x5bdd8174 # load x3 with value 0x5bdd8174
sw x3, 0(x2) # store 0x5bdd8174 in memory
flw f7, 0(x2) # load 0x5bdd8174 from memory into f7
feq.s x4, f17, f7 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x14, 0xa09fed51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x99c5b1f6 # load x3 with value 0x99c5b1f6
sw x3, 0(x2) # store 0x99c5b1f6 in memory
flw f12, 0(x2) # load 0x99c5b1f6 from memory into f12
feq.s x14, f6, f12 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x18, 0xd16cfa1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x7f0d4cbc # load x3 with value 0x7f0d4cbc
sw x3, 0(x2) # store 0x7f0d4cbc in memory
flw f14, 0(x2) # load 0x7f0d4cbc from memory into f14
feq.s x18, f31, f14 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x25, 0xb7657965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0xcd3574bd # load x3 with value 0xcd3574bd
sw x3, 0(x2) # store 0xcd3574bd in memory
flw f23, 0(x2) # load 0xcd3574bd from memory into f23
feq.s x25, f18, f23 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x27, 0x020ccff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x13359b43 # load x3 with value 0x13359b43
sw x3, 0(x2) # store 0x13359b43 in memory
flw f12, 0(x2) # load 0x13359b43 from memory into f12
feq.s x27, f26, f12 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x14, 0xe97522e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0xfe37cf20 # load x3 with value 0xfe37cf20
sw x3, 0(x2) # store 0xfe37cf20 in memory
flw f28, 0(x2) # load 0xfe37cf20 from memory into f28
feq.s x14, f4, f28 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x16, 0x066dd008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
li x3, 0x75c1f6b9 # load x3 with value 0x75c1f6b9
sw x3, 0(x2) # store 0x75c1f6b9 in memory
flw f17, 0(x2) # load 0x75c1f6b9 from memory into f17
feq.s x16, f29, f17 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x7, 0x689be238 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x306de6b4 # load x3 with value 0x306de6b4
sw x3, 0(x2) # store 0x306de6b4 in memory
flw f21, 0(x2) # load 0x306de6b4 from memory into f21
feq.s x7, f20, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x12, 0x1167625b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x2d2a8f0d # load x3 with value 0x2d2a8f0d
sw x3, 0(x2) # store 0x2d2a8f0d in memory
flw f22, 0(x2) # load 0x2d2a8f0d from memory into f22
feq.s x12, f29, f22 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x14, 0x6bb207a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x535fc59d # load x3 with value 0x535fc59d
sw x3, 0(x2) # store 0x535fc59d in memory
flw f9, 0(x2) # load 0x535fc59d from memory into f9
feq.s x14, f8, f9 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x2, 0xdcbc7d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0xf57f29a9 # load x3 with value 0xf57f29a9
sw x3, 0(x2) # store 0xf57f29a9 in memory
flw f31, 0(x2) # load 0xf57f29a9 from memory into f31
feq.s x2, f25, f31 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x1, 0x447e967c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0x2dd03535 # load x3 with value 0x2dd03535
sw x3, 0(x2) # store 0x2dd03535 in memory
flw f30, 0(x2) # load 0x2dd03535 from memory into f30
feq.s x1, f11, f30 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x3, 0xb41af9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0xcccc6186 # load x3 with value 0xcccc6186
sw x3, 0(x2) # store 0xcccc6186 in memory
flw f21, 0(x2) # load 0xcccc6186 from memory into f21
feq.s x3, f7, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x4, 0x7353b6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0xe3e9fccf # load x3 with value 0xe3e9fccf
sw x3, 0(x2) # store 0xe3e9fccf in memory
flw f1, 0(x2) # load 0xe3e9fccf from memory into f1
feq.s x4, f17, f1 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x15, 0xba17a0cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0xa38f5870 # load x3 with value 0xa38f5870
sw x3, 0(x2) # store 0xa38f5870 in memory
flw f6, 0(x2) # load 0xa38f5870 from memory into f6
feq.s x15, f1, f6 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x9, 0xe5f47d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x8bff2358 # load x3 with value 0x8bff2358
sw x3, 0(x2) # store 0x8bff2358 in memory
flw f30, 0(x2) # load 0x8bff2358 from memory into f30
feq.s x9, f3, f30 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x20, 0xcd63a585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x54b757ba # load x3 with value 0x54b757ba
sw x3, 0(x2) # store 0x54b757ba in memory
flw f14, 0(x2) # load 0x54b757ba from memory into f14
feq.s x20, f6, f14 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x9, 0x4ceca588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x0b820f59 # load x3 with value 0x0b820f59
sw x3, 0(x2) # store 0x0b820f59 in memory
flw f22, 0(x2) # load 0x0b820f59 from memory into f22
feq.s x9, f17, f22 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x29, 0xac516cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x4d9bb42c # load x3 with value 0x4d9bb42c
sw x3, 0(x2) # store 0x4d9bb42c in memory
flw f10, 0(x2) # load 0x4d9bb42c from memory into f10
feq.s x29, f3, f10 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x24, 0x05f0272c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x73b1366e # load x3 with value 0x73b1366e
sw x3, 0(x2) # store 0x73b1366e in memory
flw f25, 0(x2) # load 0x73b1366e from memory into f25
feq.s x24, f5, f25 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x24, 0x70dfd6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0xfbbd15f6 # load x3 with value 0xfbbd15f6
sw x3, 0(x2) # store 0xfbbd15f6 in memory
flw f8, 0(x2) # load 0xfbbd15f6 from memory into f8
feq.s x24, f11, f8 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x8, 0xf59d9826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0xf4a15321 # load x3 with value 0xf4a15321
sw x3, 0(x2) # store 0xf4a15321 in memory
flw f7, 0(x2) # load 0xf4a15321 from memory into f7
feq.s x8, f13, f7 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x26, 0x9db1a7f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x5d921d2e # load x3 with value 0x5d921d2e
sw x3, 0(x2) # store 0x5d921d2e in memory
flw f8, 0(x2) # load 0x5d921d2e from memory into f8
feq.s x26, f29, f8 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x22, 0x5f6881dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9065b31 # load x3 with value 0xc9065b31
sw x3, 0(x2) # store 0xc9065b31 in memory
flw f7, 0(x2) # load 0xc9065b31 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
feq.s x22, f7, f15 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x20, 0x89dfad94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39b95b35 # load x3 with value 0x39b95b35
sw x3, 0(x2) # store 0x39b95b35 in memory
flw f13, 0(x2) # load 0x39b95b35 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
feq.s x20, f13, f8 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x27, 0x7da2e7d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ced903f # load x3 with value 0x7ced903f
sw x3, 0(x2) # store 0x7ced903f in memory
flw f4, 0(x2) # load 0x7ced903f from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
feq.s x27, f4, f23 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x15, 0x217f6af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1eb5566 # load x3 with value 0xe1eb5566
sw x3, 0(x2) # store 0xe1eb5566 in memory
flw f17, 0(x2) # load 0xe1eb5566 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
feq.s x15, f17, f13 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x14, 0x7d122454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x396d6077 # load x3 with value 0x396d6077
sw x3, 0(x2) # store 0x396d6077 in memory
flw f6, 0(x2) # load 0x396d6077 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
feq.s x14, f6, f27 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x18, 0xdcbdcf5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc93da586 # load x3 with value 0xc93da586
sw x3, 0(x2) # store 0xc93da586 in memory
flw f24, 0(x2) # load 0xc93da586 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
feq.s x18, f24, f11 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x12, 0x44865554 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f14665f # load x3 with value 0x3f14665f
sw x3, 0(x2) # store 0x3f14665f in memory
flw f29, 0(x2) # load 0x3f14665f from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
feq.s x12, f29, f8 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x8, 0xe5a6ec4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeed7b7f8 # load x3 with value 0xeed7b7f8
sw x3, 0(x2) # store 0xeed7b7f8 in memory
flw f22, 0(x2) # load 0xeed7b7f8 from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
feq.s x8, f22, f16 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x4, 0x1b46cb67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60322756 # load x3 with value 0x60322756
sw x3, 0(x2) # store 0x60322756 in memory
flw f18, 0(x2) # load 0x60322756 from memory into f18
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
feq.s x4, f18, f13 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x13, 0x0412afde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33d71b54 # load x3 with value 0x33d71b54
sw x3, 0(x2) # store 0x33d71b54 in memory
flw f20, 0(x2) # load 0x33d71b54 from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
feq.s x13, f20, f14 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x9, 0x3baa8e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5d4089d # load x3 with value 0xd5d4089d
sw x3, 0(x2) # store 0xd5d4089d in memory
flw f29, 0(x2) # load 0xd5d4089d from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
feq.s x9, f29, f24 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x11, 0x8ad001d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c3a2a99 # load x3 with value 0x7c3a2a99
sw x3, 0(x2) # store 0x7c3a2a99 in memory
flw f13, 0(x2) # load 0x7c3a2a99 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
feq.s x11, f13, f31 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x29, 0xf7682422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6436cbb2 # load x3 with value 0x6436cbb2
sw x3, 0(x2) # store 0x6436cbb2 in memory
flw f16, 0(x2) # load 0x6436cbb2 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
feq.s x29, f16, f12 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x14, 0xe8e5da1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab43b405 # load x3 with value 0xab43b405
sw x3, 0(x2) # store 0xab43b405 in memory
flw f27, 0(x2) # load 0xab43b405 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
feq.s x14, f27, f6 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x25, 0x8a047a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bd60bb7 # load x3 with value 0x9bd60bb7
sw x3, 0(x2) # store 0x9bd60bb7 in memory
flw f7, 0(x2) # load 0x9bd60bb7 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
feq.s x25, f7, f30 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x25, 0xac5845d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31424357 # load x3 with value 0x31424357
sw x3, 0(x2) # store 0x31424357 in memory
flw f20, 0(x2) # load 0x31424357 from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
feq.s x25, f20, f22 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x6, 0x07b3efde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b257856 # load x3 with value 0x5b257856
sw x3, 0(x2) # store 0x5b257856 in memory
flw f11, 0(x2) # load 0x5b257856 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
feq.s x6, f11, f27 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x6, 0x5ad0d64a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x247c1175 # load x3 with value 0x247c1175
sw x3, 0(x2) # store 0x247c1175 in memory
flw f3, 0(x2) # load 0x247c1175 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
feq.s x6, f3, f1 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x6, 0x9cda0f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfad1860b # load x3 with value 0xfad1860b
sw x3, 0(x2) # store 0xfad1860b in memory
flw f27, 0(x2) # load 0xfad1860b from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
feq.s x6, f27, f12 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x11, 0x432882d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bfe0e39 # load x3 with value 0x4bfe0e39
sw x3, 0(x2) # store 0x4bfe0e39 in memory
flw f25, 0(x2) # load 0x4bfe0e39 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
feq.s x11, f25, f17 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x30, 0xcdb8b4ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x771ac0ef # load x3 with value 0x771ac0ef
sw x3, 0(x2) # store 0x771ac0ef in memory
flw f25, 0(x2) # load 0x771ac0ef from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
feq.s x30, f25, f3 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x29, 0x3f703a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49f2cd27 # load x3 with value 0x49f2cd27
sw x3, 0(x2) # store 0x49f2cd27 in memory
flw f26, 0(x2) # load 0x49f2cd27 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
feq.s x29, f26, f5 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x1, 0x8deb0a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9969fa6f # load x3 with value 0x9969fa6f
sw x3, 0(x2) # store 0x9969fa6f in memory
flw f6, 0(x2) # load 0x9969fa6f from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
feq.s x1, f6, f4 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x30, 0x6b895c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1c33272 # load x3 with value 0xd1c33272
sw x3, 0(x2) # store 0xd1c33272 in memory
flw f27, 0(x2) # load 0xd1c33272 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
feq.s x30, f27, f18 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x28, 0x066793a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0983630 # load x3 with value 0xd0983630
sw x3, 0(x2) # store 0xd0983630 in memory
flw f4, 0(x2) # load 0xd0983630 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
feq.s x28, f4, f8 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x7, 0x9fbba726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x198b5b37 # load x3 with value 0x198b5b37
sw x3, 0(x2) # store 0x198b5b37 in memory
flw f22, 0(x2) # load 0x198b5b37 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
feq.s x7, f22, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x9, 0xe7c10cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
feq.s x9, f14, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x28, 0xfe1546dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
feq.s x28, f12, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x2, 0x13dca631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
feq.s x2, f20, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x3, 0x4ae7ceea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
feq.s x3, f2, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x12, 0x004bcf75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
feq.s x12, f9, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x4, 0x7e6a507d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
feq.s x4, f25, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x15, 0x770384af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
feq.s x15, f12, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x18, 0x21bde3ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
feq.s x18, f14, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x25, 0xfa1d6d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
feq.s x25, f16, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x16, 0xf5ff334e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
feq.s x16, f26, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x17, 0xb95a540a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
feq.s x17, f16, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x3, 0xeaaefd7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
feq.s x3, f13, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x22, 0xde6e96b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
feq.s x22, f8, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x25, 0xe5d8922d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
feq.s x25, f2, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x18, 0x6e6d9238 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
feq.s x18, f22, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x6, 0x426056df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
feq.s x6, f7, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x15, 0xe9e68923 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
feq.s x15, f24, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x14, 0x0d48d30a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
feq.s x14, f23, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x19, 0x1e9d3403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
feq.s x19, f14, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x4, 0x1e260734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
feq.s x4, f19, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x20, 0x14e35a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
feq.s x20, f3, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x4, 0xa9ecffe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
feq.s x4, f24, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x25, 0x8d5104d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
feq.s x25, f19, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x17, 0x3ffdc40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
feq.s x17, f11, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x4, 0xb7a5c4f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
feq.s x4, f31, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x2, 0xad469414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
feq.s x2, f21, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x22, 0xe5c6523c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
feq.s x22, f1, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x3, 0x5b1bdb68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
feq.s x3, f5, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x17, 0x21d7a685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
feq.s x17, f5, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x29, 0x52462982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
feq.s x29, f18, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x8, 0xebf9dc50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
feq.s x8, f24, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x1, 0x78fbe31f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
feq.s x1, f8, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x2, 0xc9559717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
feq.s x2, f14, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x13, 0x7360b66d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
feq.s x13, f4, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x2, 0xb9a8dede # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
feq.s x2, f20, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x18, 0x261f4e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
feq.s x18, f16, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x30, 0x43c390cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
feq.s x30, f18, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x22, 0x3e00c03c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
feq.s x22, f5, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x8, 0xf6d8359d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
feq.s x8, f16, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x6, 0xe7601884 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
feq.s x6, f15, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x28, 0xc15bfd43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
feq.s x28, f30, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x24, 0x4ee6122c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
feq.s x24, f9, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x4, 0x8912b177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
feq.s x4, f30, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x1, 0xa229f702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
feq.s x1, f2, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x19, 0x7d467800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
feq.s x19, f18, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x30, 0x87537ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
feq.s x30, f15, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x8, 0x7591e303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
feq.s x8, f25, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x27, 0x7b142c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
feq.s x27, f15, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x10, 0x4eeb50cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
feq.s x10, f26, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x7, 0x4aa5db11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
feq.s x7, f3, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x23, 0x7d5bdb74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
feq.s x23, f31, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x6, 0x67a88c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
feq.s x6, f8, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x26, 0x92b68083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
feq.s x26, f2, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x6, 0xaf3e1877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
feq.s x6, f15, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x9, 0x9b968728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
feq.s x9, f24, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x24, 0x1ce0e776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
feq.s x24, f11, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x18, 0xb4f360e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
feq.s x18, f5, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x18, 0x4914d4be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
feq.s x18, f27, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x16, 0x0c522b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
feq.s x16, f11, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x13, 0xc22fcac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
feq.s x13, f2, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x25, 0x879537da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
feq.s x25, f20, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x5, 0x65250c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
feq.s x5, f31, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x26, 0x61802791 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
feq.s x26, f2, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x31, 0x0bf5b5e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
feq.s x31, f7, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x27, 0x5ef01b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
feq.s x27, f15, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x9, 0x04263823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
feq.s x9, f22, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x22, 0xff3385d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
feq.s x22, f7, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x13, 0x02430e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
feq.s x13, f2, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x27, 0x666f30a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
feq.s x27, f3, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x16, 0xa7dc1701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
feq.s x16, f14, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x1, 0xdb668dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
feq.s x1, f12, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x4, 0xb9ba6def # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
feq.s x4, f3, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x14, 0x945bbe72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
feq.s x14, f21, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x20, 0x844ee3e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
feq.s x20, f27, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x26, 0xd6d67430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
feq.s x26, f27, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x20, 0x212d2d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
feq.s x20, f27, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x27, 0x262d9862 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
feq.s x27, f6, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x10, 0xacb3f4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
feq.s x10, f13, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x13, 0x9e8e2600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
feq.s x13, f20, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x2, 0xfea422fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
feq.s x2, f13, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x19, 0x438afae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
feq.s x19, f4, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x26, 0xb666fb39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
feq.s x26, f10, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x3, 0xe6bbb993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
feq.s x3, f24, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x31, 0x957d5401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
feq.s x31, f14, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x20, 0xd7be108d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
feq.s x20, f23, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x11, 0xbfdd6ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
feq.s x11, f26, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x28, 0x0cb64fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
feq.s x28, f8, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x14, 0x4f262b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
feq.s x14, f9, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x4, 0x3fd7e0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
feq.s x4, f21, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x24, 0xbc914955 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
feq.s x24, f15, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x20, 0xff56d6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
feq.s x20, f4, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x12, 0xd8f8a6db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
feq.s x12, f3, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x18, 0x747bc09c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
feq.s x18, f8, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x29, 0x0fdd55c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
feq.s x29, f3, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x27, 0xf67ff16c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
feq.s x27, f10, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x2, 0xa7ad2d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
feq.s x2, f11, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x3, 0x2e5590c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
feq.s x3, f21, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x18, 0x6efbbac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
feq.s x18, f29, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x29, 0x424cda3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
feq.s x29, f25, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x27, 0x995f3bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
feq.s x27, f31, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x31, 0x90d41ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
feq.s x31, f12, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x11, 0x84333478 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
feq.s x11, f14, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x29, 0x4aee8fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
feq.s x29, f8, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x3, 0x40cc6676 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
feq.s x3, f1, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x18, 0x30f1d8b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
feq.s x18, f23, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x19, 0x29b64ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
feq.s x19, f6, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x21, 0xd7474360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
feq.s x21, f15, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x22, 0xaf4ea633 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
feq.s x22, f8, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x28, 0xa9a5d9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
feq.s x28, f15, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x19, 0x910725fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
feq.s x19, f6, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x31, 0xcd65dfbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
feq.s x31, f23, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x29, 0xde47934b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
feq.s x29, f18, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x23, 0xe5fb20b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
feq.s x23, f28, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x20, 0x23760ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
feq.s x20, f12, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x24, 0xea988902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
feq.s x24, f14, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x27, 0xff40b44a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
feq.s x27, f8, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x23, 0xd0e76264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
feq.s x23, f17, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x7, 0x2db6cf51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
feq.s x7, f6, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x27, 0x703bfec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
feq.s x27, f30, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x25, 0xf19400c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
feq.s x25, f15, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x27, 0xadf1906d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
feq.s x27, f28, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x1, 0xbaa61a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
feq.s x1, f13, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x11, 0xa03f335d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
feq.s x11, f24, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x13, 0x08f57b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
feq.s x13, f25, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x30, 0xe555a345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
feq.s x30, f13, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x21, 0xafb9318f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
feq.s x21, f5, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x21, 0xb01a2db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
feq.s x21, f20, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x23, 0x6fc98d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
feq.s x23, f15, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x10, 0x52f6933e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
feq.s x10, f21, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x8, 0x32330b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
feq.s x8, f26, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x21, 0x9a8dba36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
feq.s x21, f12, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x10, 0xa05ec544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
feq.s x10, f16, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x28, 0x8440e780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
feq.s x28, f15, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x26, 0x36ef6004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
feq.s x26, f23, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x6, 0x658df50e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
feq.s x6, f20, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x31, 0xa49cb663 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
feq.s x31, f17, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x29, 0xf8976892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
feq.s x29, f31, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x30, 0x109cfdab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
feq.s x30, f16, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x18, 0x5555b1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
feq.s x18, f27, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x14, 0xd26dd477 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
feq.s x14, f13, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x10, 0xbc92cdd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
feq.s x10, f8, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x13, 0xb1f5b7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
feq.s x13, f14, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x1, 0x9fa181f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
feq.s x1, f16, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x30, 0x35897276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
feq.s x30, f9, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x24, 0x5a1d2ded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
feq.s x24, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x6, 0xf1220aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
feq.s x6, f24, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x22, 0x016eef97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
feq.s x22, f26, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x2, 0x1deadc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
feq.s x2, f9, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x13, 0x6af8adf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
feq.s x13, f30, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x28, 0xc9aafa4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
feq.s x28, f18, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x11, 0xb58f129f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
feq.s x11, f15, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x30, 0x39299010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
feq.s x30, f9, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x14, 0x5b0d8468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
feq.s x14, f29, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x10, 0x021fbfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
feq.s x10, f6, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x13, 0x62297995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
feq.s x13, f2, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x2, 0x0b7019ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
feq.s x2, f26, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x21, 0x99504657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
feq.s x21, f10, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x13, 0x358b3e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
feq.s x13, f11, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x15, 0x32ad18d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
feq.s x15, f1, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x8, 0x7a8d7b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
feq.s x8, f16, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x22, 0x33a48e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
feq.s x22, f2, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x12, 0xd1c484bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
feq.s x12, f2, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x21, 0xafcd29fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
feq.s x21, f27, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x15, 0x443a13ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
feq.s x15, f23, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x24, 0xbbb2b746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
feq.s x24, f21, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x9, 0x95fea7de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
feq.s x9, f31, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x26, 0x7050e454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
feq.s x26, f28, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x25, 0x2e3f45bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
feq.s x25, f16, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x24, 0x5ba5af03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
feq.s x24, f26, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x26, 0xf14ad7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
feq.s x26, f4, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x15, 0xaa73616a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
feq.s x15, f28, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x16, 0x47433842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
feq.s x16, f8, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x20, 0x87b3e43a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
feq.s x20, f2, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x28, 0xc72fd1a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
feq.s x28, f13, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x26, 0xb2a19d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
feq.s x26, f28, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x15, 0x3274d5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
feq.s x15, f27, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x8, 0xb002eb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
feq.s x8, f9, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x10, 0x35683c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
feq.s x10, f17, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x16, 0xa95374c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
feq.s x16, f21, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x8, 0xc87c9dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
feq.s x8, f21, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x19, 0x1b268f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
feq.s x19, f7, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x19, 0x835503e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
feq.s x19, f16, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x7, 0x1375d31d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
feq.s x7, f14, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x9, 0x300141a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
feq.s x9, f7, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x5, 0x943e4482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
feq.s x5, f3, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x24, 0xc28e6bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
feq.s x24, f6, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x20, 0x412205a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
feq.s x20, f1, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x17, 0x27a3a41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
feq.s x17, f12, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x5, 0x5d1ef1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
feq.s x5, f24, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x30, 0xc86962f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
feq.s x30, f16, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x20, 0xc3350b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
feq.s x20, f2, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x23, 0x7af800fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
feq.s x23, f8, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x31, 0x40867410 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
feq.s x31, f3, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x23, 0xdb4b2041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
feq.s x23, f11, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x26, 0xea74dd69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
feq.s x26, f17, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x11, 0x8c6afc8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
feq.s x11, f28, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x19, 0xf53527da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
feq.s x19, f15, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x26, 0xa878d0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
feq.s x26, f20, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x12, 0xd7524eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
feq.s x12, f21, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x20, 0xdcd16825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
feq.s x20, f31, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x1, 0xd9cee0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
feq.s x1, f7, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x28, 0xd44cf908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
feq.s x28, f22, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x26, 0xc39b501c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
feq.s x26, f28, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x23, 0x471cba19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
feq.s x23, f22, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x23, 0x047af63d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
feq.s x23, f11, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x19, 0x6b24581e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
feq.s x19, f16, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x18, 0x67e32b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
feq.s x18, f14, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x2, 0x9f8f7e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
feq.s x2, f27, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x1, 0x4aeea388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
feq.s x1, f7, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x22, 0x578f340a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
feq.s x22, f19, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x16, 0x15afeaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
feq.s x16, f11, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x29, 0x6817cf31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
feq.s x29, f15, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x8, 0x92524b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
feq.s x8, f15, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x15, 0xace7b536 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
feq.s x15, f2, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x20, 0xa3f23af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
feq.s x20, f8, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x8, 0x0a98b6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
feq.s x8, f10, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x19, 0x12f9a727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
feq.s x19, f31, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x13, 0x6ea9df82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
feq.s x13, f24, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x23, 0x3dcc8730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
feq.s x23, f10, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x31, 0x619fbb16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
feq.s x31, f6, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x6, 0x479f6ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
feq.s x6, f21, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x9, 0xff05d006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
feq.s x9, f20, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x16, 0x64205056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
feq.s x16, f18, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x10, 0x53e60e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
feq.s x10, f4, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x19, 0x4ad19b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
feq.s x19, f20, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x26, 0x5c21f1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
feq.s x26, f15, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x7, 0xbb160be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
feq.s x7, f19, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x30, 0xd8b89908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
feq.s x30, f23, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x27, 0x4ad833b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
feq.s x27, f2, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x18, 0x12422d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
feq.s x18, f26, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x16, 0xed1ce1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
feq.s x16, f26, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x28, 0xade6721e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
feq.s x28, f26, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x23, 0x405253c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
feq.s x23, f13, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x29, 0x42874f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
feq.s x29, f2, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x13, 0x6078492b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
feq.s x13, f14, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x2, 0xd69da28b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
feq.s x2, f5, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x1, 0xbebc9d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
feq.s x1, f10, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x4, 0xd5b1652d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
feq.s x4, f8, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x31, 0xc55d79b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
feq.s x31, f21, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x13, 0x25006b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
feq.s x13, f15, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x6, 0xd5d3c68c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
feq.s x6, f23, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x12, 0x17ec8d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
feq.s x12, f7, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x26, 0xcc1063db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
feq.s x26, f31, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x2, 0x2ef6ca28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
feq.s x2, f17, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x30, 0xda512e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
feq.s x30, f29, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x25, 0xb998a161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
feq.s x25, f18, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x26, 0xcc6b3a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
feq.s x26, f14, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x3, 0xc68c2cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
feq.s x3, f18, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x1, 0xc5313286 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
feq.s x1, f11, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x29, 0x84bb4995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
feq.s x29, f24, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x30, 0xab5d8173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
feq.s x30, f5, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x31, 0xb62f9fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
feq.s x31, f14, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x16, 0x397e4bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
feq.s x16, f21, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x18, 0x2a3eac20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
feq.s x18, f28, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x27, 0xf785922b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
feq.s x27, f19, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x11, 0x6a76077e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
feq.s x11, f17, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x1, 0x9a8c4da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
feq.s x1, f29, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x8, 0x8bff9beb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
feq.s x8, f15, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x15, 0xec5f3ad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
feq.s x15, f21, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x26, 0x734f20fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
feq.s x26, f2, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x15, 0x160b6869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
feq.s x15, f18, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x3, 0x5f2dc1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
feq.s x3, f27, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x28, 0xb077c5de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
feq.s x28, f30, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x14, 0x4f6fa1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
feq.s x14, f6, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x9, 0x83e89069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
feq.s x9, f14, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x16, 0xee88b16f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
feq.s x16, f3, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x3, 0x3070c0dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
feq.s x3, f29, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x27, 0x955e18ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
feq.s x27, f9, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x22, 0x123de322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
feq.s x22, f28, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x24, 0x709ae659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
feq.s x24, f25, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x4, 0xec50f207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
feq.s x4, f20, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x8, 0xa89c75b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
feq.s x8, f23, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x25, 0xebe1c115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
feq.s x25, f18, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x6, 0x1734512c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
feq.s x6, f11, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x1, 0x6c165d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
feq.s x1, f17, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x29, 0xa7cf1a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
feq.s x29, f31, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x8, 0x045de531 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
feq.s x8, f18, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x11, 0xe46b74b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
feq.s x11, f30, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x28, 0x77fc3e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
feq.s x28, f29, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x19, 0xe6766bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
feq.s x19, f21, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x27, 0x29bed7ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
feq.s x27, f11, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x4, 0x049fa929 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
feq.s x4, f21, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x20, 0x7656ef95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
feq.s x20, f2, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x1, 0xec41e409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
feq.s x1, f24, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x12, 0xd20f8a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
feq.s x12, f30, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x5, 0x3034222d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
feq.s x5, f7, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x7, 0xa3419817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
feq.s x7, f10, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x14, 0x47d819de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
feq.s x14, f18, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x4, 0xa826a055 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
feq.s x4, f31, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x9, 0x56bb505e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
feq.s x9, f12, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x16, 0xa20a51cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
feq.s x16, f17, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x11, 0x2a009fef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
feq.s x11, f13, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x4, 0x840ae27e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
feq.s x4, f1, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x18, 0x846d503d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
feq.s x18, f28, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x17, 0x99cc7e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
feq.s x17, f28, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x19, 0xa3d9d5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
feq.s x19, f2, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x2, 0xcdc0350a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
feq.s x2, f16, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x30, 0xde8abca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
feq.s x30, f25, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x16, 0x6d746e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
feq.s x16, f31, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x18, 0x8332ab8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
feq.s x18, f23, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x25, 0x59fa678b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
feq.s x25, f11, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x28, 0xef9dfbb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
feq.s x28, f17, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x10, 0x58625e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
feq.s x10, f25, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x4, 0xd0c6f51f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
feq.s x4, f25, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x2, 0xdaead950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
feq.s x2, f15, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x3, 0x55fd7131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
feq.s x3, f7, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x30, 0xd794359f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
feq.s x30, f3, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x15, 0xa3c37425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
feq.s x15, f11, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x15, 0xf5323569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
feq.s x15, f6, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x27, 0x009e8adb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
feq.s x27, f31, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x30, 0xdff17281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
feq.s x30, f12, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x13, 0x1df884a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
feq.s x13, f27, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x18, 0xd12b2529 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
feq.s x18, f14, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x5, 0x01a05726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
feq.s x5, f10, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x25, 0xbb8aed03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
feq.s x25, f20, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x29, 0xae9ae5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
feq.s x29, f6, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x24, 0x97344da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
feq.s x24, f9, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x8, 0xc6225016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
feq.s x8, f20, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x10, 0xe57a4cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
feq.s x10, f5, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x4, 0xb2190867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
feq.s x4, f10, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x4, 0xc6188537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
feq.s x4, f19, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x4, 0xb31ef856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
feq.s x4, f29, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x23, 0xb7750a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
feq.s x23, f10, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x12, 0xd631c6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
feq.s x12, f22, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x3, 0x16d53677 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
feq.s x3, f17, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x10, 0x899118a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
feq.s x10, f29, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x1, 0xe25bbd57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
feq.s x1, f25, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x10, 0x4affd92c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
feq.s x10, f21, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x3, 0xff9f6723 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
feq.s x3, f15, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x1, 0x60858036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
feq.s x1, f22, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x31, 0x04044835 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
feq.s x31, f17, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x20, 0x78202c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
feq.s x20, f26, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x16, 0xb8d429d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
feq.s x16, f24, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x28, 0x1dee3fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
feq.s x28, f19, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x24, 0x731f75aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
feq.s x24, f26, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x8, 0x852e56e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
feq.s x8, f2, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x1, 0xcf98eef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
feq.s x1, f7, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x1, 0x5aac10fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
feq.s x1, f16, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x29, 0xf028ce34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
feq.s x29, f12, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x4, 0x4e2ec189 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
feq.s x4, f30, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x28, 0xeedbc4d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
feq.s x28, f11, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x24, 0xebe704be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
feq.s x24, f27, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x27, 0x75593527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
feq.s x27, f30, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x30, 0x7b4ec5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
feq.s x30, f21, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x2, 0xc70f9a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
feq.s x2, f29, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x17, 0xff1456c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
feq.s x17, f9, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x13, 0x8edb4f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
feq.s x13, f4, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x20, 0xde7a9c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
feq.s x20, f26, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x7, 0xf255acbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
feq.s x7, f21, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x22, 0x737c37c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
feq.s x22, f11, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x18, 0xe85b07f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
feq.s x18, f6, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x13, 0x34561031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
feq.s x13, f24, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x17, 0xd8741666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
feq.s x17, f11, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x4, 0x529c0ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
feq.s x4, f20, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x23, 0xd83fe15f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
feq.s x23, f8, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x1, 0x57b5c2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
feq.s x1, f28, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x15, 0x0bbb8b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
feq.s x15, f24, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x6, 0xaba1b918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
feq.s x6, f9, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x25, 0xff1983b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
feq.s x25, f15, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x4, 0x892ecafd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
feq.s x4, f28, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x7, 0x826406ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
feq.s x7, f16, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x16, 0x075e16ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
feq.s x16, f22, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x29, 0x1bfd93b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
feq.s x29, f26, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x25, 0x104e36bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
feq.s x25, f15, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x23, 0x464e468e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
feq.s x23, f31, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x29, 0x3c070e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
feq.s x29, f4, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x18, 0x880d015e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
feq.s x18, f4, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x31, 0x26e50f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
feq.s x31, f5, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x2, 0x1ee61872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
feq.s x2, f3, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x10, 0xe512c4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
feq.s x10, f15, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x17, 0xc0003830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
feq.s x17, f15, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x24, 0x598018fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
feq.s x24, f13, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x19, 0xfd3ba603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
feq.s x19, f16, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x27, 0x4d247cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
feq.s x27, f26, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x7, 0x2267c149 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
feq.s x7, f24, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x29, 0x26b0fc17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
feq.s x29, f3, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x20, 0xac50c125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
feq.s x20, f22, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x6, 0x3bbf215e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
feq.s x6, f11, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x11, 0x120d20cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
feq.s x11, f28, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x28, 0xb45f6a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
feq.s x28, f23, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x8, 0xc60c0229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
feq.s x8, f31, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x23, 0x01058cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
feq.s x23, f21, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x16, 0x35d1e931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
feq.s x16, f15, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x19, 0x69f350a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
feq.s x19, f12, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x20, 0xcae8c429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
feq.s x20, f14, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x2, 0x718ad0ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
feq.s x2, f16, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x2, 0xda85a194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
feq.s x2, f31, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x1, 0xaf8d88f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
feq.s x1, f26, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x26, 0x78cc61c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
feq.s x26, f2, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x19, 0xb30d117b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
feq.s x19, f9, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x27, 0x4cdd0738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
feq.s x27, f11, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x21, 0x075491d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
feq.s x21, f14, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x18, 0x186d6467 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
feq.s x18, f21, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x26, 0x3c5ff8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
feq.s x26, f7, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x10, 0x9f2af131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
feq.s x10, f16, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x30, 0xbc99a9c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
feq.s x30, f13, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x1, 0x0de3c61f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
feq.s x1, f2, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x27, 0xd85dc426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
feq.s x27, f19, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x18, 0xcf8f7d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
feq.s x18, f5, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x15, 0x897e0ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
feq.s x15, f22, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x11, 0x52d11b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
feq.s x11, f17, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x30, 0xe063a9e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
feq.s x30, f8, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x14, 0x5e0975ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
feq.s x14, f21, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x16, 0x7cf237e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
feq.s x16, f11, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x28, 0x456f2a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
feq.s x28, f30, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x7, 0x6000859e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
feq.s x7, f18, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x31, 0xaba471e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
feq.s x31, f14, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x19, 0xc7871733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
feq.s x19, f10, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x29, 0x661c8fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
feq.s x29, f11, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x28, 0x00af6524 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
feq.s x28, f1, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x22, 0x3a50ed82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
feq.s x22, f20, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x14, 0x63abbd59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
feq.s x14, f27, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x14, 0xd2d31537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
feq.s x14, f9, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x19, 0x34fa6700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
feq.s x19, f21, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x12, 0x3213066a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
feq.s x12, f20, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x29, 0x4d74cee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
feq.s x29, f17, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x9, 0x65e2d9db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
feq.s x9, f18, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x6, 0x63bd3492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
feq.s x6, f12, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x4, 0x94545199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
feq.s x4, f8, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x27, 0xce1b67bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
feq.s x27, f19, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x24, 0xfca1bee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
feq.s x24, f20, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x16, 0xe05ed454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
feq.s x16, f6, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x23, 0x51c125f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
feq.s x23, f1, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x6, 0xeec1101f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
feq.s x6, f26, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x11, 0x9cc1075d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
feq.s x11, f12, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x28, 0x8bc2b20c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
feq.s x28, f18, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x16, 0xdeecc58a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
feq.s x16, f6, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x17, 0xf37c5898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
feq.s x17, f22, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x19, 0x8d47cc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
feq.s x19, f22, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x30, 0x86c64a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
feq.s x30, f25, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x1, 0x95996c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
feq.s x1, f18, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x19, 0x209a3420 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
feq.s x19, f3, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x12, 0xa87a3177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
feq.s x12, f15, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x5, 0x9abd91ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
feq.s x5, f3, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x14, 0x9e3d220f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
feq.s x14, f16, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x1, 0x2af108e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
feq.s x1, f19, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x6, 0xc6613932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
feq.s x6, f25, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x22, 0xffd0054e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
feq.s x22, f18, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x23, 0x3a13f82f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
feq.s x23, f19, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x23, 0xba5e1102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
feq.s x23, f14, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x14, 0xf962926c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
feq.s x14, f9, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x25, 0xf83e4ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
feq.s x25, f27, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x29, 0x8fa0744c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
feq.s x29, f22, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x25, 0x96d4bf49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
feq.s x25, f14, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x1, 0x0d8406cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
feq.s x1, f2, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x1, 0xeba82867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
feq.s x1, f28, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x11, 0x12713be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
feq.s x11, f20, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x17, 0x8470ca88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
feq.s x17, f20, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x16, 0xa302ff28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
feq.s x16, f27, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x29, 0xa143dcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
feq.s x29, f1, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x22, 0x4f0fbfc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
feq.s x22, f31, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x20, 0x92f65e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
feq.s x20, f7, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x14, 0x0ef92f09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
feq.s x14, f15, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x29, 0xd7dfd1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
feq.s x29, f9, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x25, 0x46db80f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
feq.s x25, f1, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x15, 0xf1d38c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
feq.s x15, f20, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x12, 0xb2f85572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
feq.s x12, f18, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x8, 0x3dd9020e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
feq.s x8, f12, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x27, 0xcc6d2d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
feq.s x27, f7, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x23, 0x94d1d9c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
feq.s x23, f3, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x24, 0x85f568ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
feq.s x24, f27, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x11, 0xeef30f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
feq.s x11, f13, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x4, 0xa7f5d130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
feq.s x4, f10, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x10, 0xf9052ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
feq.s x10, f27, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x7, 0x6d53e88d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
feq.s x7, f27, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x3, 0x94302e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
feq.s x3, f16, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x1, 0xb5642ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
feq.s x1, f16, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x25, 0x3deb98d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
feq.s x25, f21, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x9, 0x89001c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
feq.s x9, f15, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x9, 0x9ec6d773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
feq.s x9, f30, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x12, 0xdeb12650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
feq.s x12, f28, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x14, 0x58e92102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
feq.s x14, f6, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x2, 0x95fec308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
feq.s x2, f6, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x9, 0xf5d354f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
feq.s x9, f23, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x28, 0xe2682998 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
feq.s x28, f13, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x10, 0x4bcc48eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
feq.s x10, f23, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x24, 0x8025d9b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
feq.s x24, f14, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x10, 0x514be6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
feq.s x10, f12, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x11, 0xc5622bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
feq.s x11, f23, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x28, 0xb19b8546 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
feq.s x28, f29, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x27, 0x399b8b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
feq.s x27, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x23, 0x067d25e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
feq.s x23, f12, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x26, 0x1a950924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
feq.s x26, f10, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x30, 0xd80d9a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
feq.s x30, f1, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x14, 0x4c3846f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
feq.s x14, f20, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x13, 0x523155fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
feq.s x13, f5, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x5, 0x4ee84d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
feq.s x5, f7, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x1, 0x0fd2a881 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
feq.s x1, f30, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x26, 0x6af41e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
feq.s x26, f25, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x2, 0x94f9c28a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
feq.s x2, f18, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x7, 0xdbbe0917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
feq.s x7, f19, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x31, 0x450d69b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
feq.s x31, f27, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x5, 0x1a531d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
feq.s x5, f7, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x6, 0x42181ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
feq.s x6, f15, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x19, 0x32e35bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
feq.s x19, f10, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x14, 0x624c261c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
feq.s x14, f24, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x17, 0x419dd144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
feq.s x17, f19, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x7, 0x46ab9953 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
feq.s x7, f20, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x4, 0x3425e51d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
feq.s x4, f19, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x7, 0x95b71e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
feq.s x7, f3, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x14, 0xf4a4dc7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
feq.s x14, f6, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x14, 0x7ae5fd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
feq.s x14, f29, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x29, 0xc05bf19a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
feq.s x29, f7, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x5, 0xa98dc945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
feq.s x5, f30, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x24, 0xc2c81325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
feq.s x24, f9, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x3, 0x63ef6a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
feq.s x3, f4, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x25, 0x13cc34b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
feq.s x25, f1, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x25, 0x807683b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
feq.s x25, f21, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x2, 0xd9e4cc57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
feq.s x2, f20, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x7, 0x85aaac0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
feq.s x7, f26, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x1, 0xfdd99949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
feq.s x1, f3, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x19, 0x6458a5db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
feq.s x19, f30, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x9, 0x7c7230e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
feq.s x9, f19, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x15, 0xdc94817b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
feq.s x15, f26, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x21, 0xb0b9e1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
feq.s x21, f1, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x14, 0x3720facd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
feq.s x14, f30, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x17, 0x7c8cd193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
feq.s x17, f13, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x14, 0x629952e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
feq.s x14, f17, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x8, 0x1ae66cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
feq.s x8, f19, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x16, 0x2da9e413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
feq.s x16, f31, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x26, 0x797180b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
feq.s x26, f15, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x17, 0xf17fc9bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
feq.s x17, f31, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x2, 0xe628da87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
feq.s x2, f13, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x25, 0x6cac8fab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
feq.s x25, f21, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x17, 0x6edd2a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
feq.s x17, f7, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x8, 0xafd465e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
feq.s x8, f7, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x25, 0x93bd7dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
feq.s x25, f30, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x4, 0xd933ea8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
feq.s x4, f25, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x1, 0x8a05078a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
feq.s x1, f23, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x18, 0xee650539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
feq.s x18, f7, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x15, 0x9c09a563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
feq.s x15, f30, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x12, 0x8c70b9a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
feq.s x12, f2, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x6, 0x6d25855d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
feq.s x6, f23, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x9, 0x3ae9a43c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
feq.s x9, f24, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x31, 0x0b84888c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
feq.s x31, f8, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x5, 0x888dd8b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
feq.s x5, f30, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x19, 0x0a2269ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
feq.s x19, f8, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x14, 0x51c506f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
feq.s x14, f11, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x20, 0x840d36d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
feq.s x20, f2, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x29, 0x928f44fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
feq.s x29, f4, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x17, 0xd503e2ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
feq.s x17, f10, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x4, 0xd9a09d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
feq.s x4, f15, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x14, 0xdd9f9739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
feq.s x14, f6, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x16, 0x44918462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
feq.s x16, f27, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x13, 0xaf86ed3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
feq.s x13, f18, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x28, 0x3a50e2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
feq.s x28, f25, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x27, 0x719328cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
feq.s x27, f29, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x23, 0xafe81beb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
feq.s x23, f12, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x11, 0x16e4b115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
feq.s x11, f6, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x17, 0xba147e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
feq.s x17, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x8, 0x5f04b5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
feq.s x8, f12, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x26, 0x6408e97a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
feq.s x26, f8, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x1, 0xb2f75396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
feq.s x1, f31, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x23, 0xfe57b832 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
feq.s x23, f5, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x28, 0xd36b45c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
feq.s x28, f19, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x28, 0xf1bc15ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
feq.s x28, f17, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x23, 0x12a0aa67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
feq.s x23, f22, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x10, 0xa0f1e3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
feq.s x10, f1, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x7, 0xbc383f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
feq.s x7, f23, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x11, 0x46b60982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
feq.s x11, f31, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x13, 0xa3fbbd95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
feq.s x13, f30, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x23, 0x91bd82dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
feq.s x23, f6, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x21, 0x0eb56926 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
feq.s x21, f27, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x30, 0x0c5feb52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
feq.s x30, f25, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x20, 0x2ce46f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
feq.s x20, f6, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x27, 0x7ba1141b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
feq.s x27, f26, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x27, 0xb43fa232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
feq.s x27, f13, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x16, 0x6b1a57a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
feq.s x16, f7, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x16, 0xf467cec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
feq.s x16, f10, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x8, 0xfc530a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
feq.s x8, f21, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x8, 0x3fd74747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
feq.s x8, f14, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x7, 0xfc4fb696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
feq.s x7, f8, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x27, 0x473b449b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
feq.s x27, f29, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x10, 0xe9e95343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
feq.s x10, f4, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x23, 0x940b76d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
feq.s x23, f27, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x6, 0x38d890da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
feq.s x6, f1, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x16, 0x577a0dac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
feq.s x16, f14, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x11, 0x0b51a155 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
feq.s x11, f3, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x19, 0xb38c823c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
feq.s x19, f21, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x4, 0x9d1b9902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
feq.s x4, f13, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x13, 0x1ee8a9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
feq.s x13, f31, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x22, 0x5c0c02ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
feq.s x22, f3, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x23, 0x6bacf886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
feq.s x23, f2, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x31, 0x13efae49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
feq.s x31, f24, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x15, 0x2fa0ffc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
feq.s x15, f8, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x31, 0x4d7f62cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
feq.s x31, f25, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x27, 0x8b34c36b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
feq.s x27, f22, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x24, 0xf50ff982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
feq.s x24, f14, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x4, 0x164d0e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
feq.s x4, f29, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x3, 0x59ea8a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
feq.s x3, f16, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x14, 0x2242b0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
feq.s x14, f16, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x18, 0xfed543be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
feq.s x18, f11, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x18, 0x43b85739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
feq.s x18, f3, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x5, 0x12270480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
feq.s x5, f11, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x12, 0x12696a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
feq.s x12, f26, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x27, 0xa1ac7449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
feq.s x27, f31, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x31, 0x811e56ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
feq.s x31, f1, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x20, 0x1eb502b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
feq.s x20, f19, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x8, 0x940d2afb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
feq.s x8, f15, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x11, 0x293c0893 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
feq.s x11, f9, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x27, 0x98281281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
feq.s x27, f14, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x30, 0x5eed87e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
feq.s x30, f2, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x14, 0x07ffd6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
feq.s x14, f8, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x14, 0x0a2b898a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
feq.s x14, f15, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x11, 0x6c25906c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
feq.s x11, f27, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x7, 0xc6bbd00d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
feq.s x7, f11, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x10, 0x5474a1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
feq.s x10, f14, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x30, 0x479400c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
feq.s x30, f24, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x20, 0x3f59ef46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
feq.s x20, f12, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x28, 0x7621e737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
feq.s x28, f4, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x29, 0xad19b9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
feq.s x29, f2, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x11, 0xb92be74e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
feq.s x11, f15, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x16, 0xc37f7032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
feq.s x16, f22, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x4, 0xafbb0f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
feq.s x4, f27, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x1, 0xaef17b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
feq.s x1, f27, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x3, 0xef31285d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
feq.s x3, f22, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x28, 0xb0f305f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
feq.s x28, f19, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x19, 0xb3fb5b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
feq.s x19, f13, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x24, 0x971b767f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
feq.s x24, f20, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x23, 0xfa51d0fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
feq.s x23, f10, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x19, 0x092ed10b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
feq.s x19, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x5, 0x86dedfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
feq.s x5, f3, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x9, 0xa62b6c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
feq.s x9, f8, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x18, 0x5b5fc413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
feq.s x18, f13, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x2, 0xbf2b718e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
feq.s x2, f3, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x1, 0x0f796d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
feq.s x1, f2, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x11, 0x1de0eba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
feq.s x11, f23, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x18, 0x1ac34973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
feq.s x18, f12, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x8, 0x45d45f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
feq.s x8, f16, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x23, 0x576fb2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
feq.s x23, f19, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x5, 0x400982ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
feq.s x5, f16, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x24, 0xcce9280d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
feq.s x24, f8, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x11, 0xe5a384db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
feq.s x11, f16, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x21, 0x57bc7b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
feq.s x21, f1, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x2, 0x41456990 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
feq.s x2, f5, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x1, 0xb7922fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
feq.s x1, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x3, 0xf17422d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
feq.s x3, f31, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x4, 0xa1c3af45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
feq.s x4, f10, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x18, 0xbd2caf71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
feq.s x18, f26, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x20, 0x4ce5814e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
feq.s x20, f8, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x8, 0xe7cf6a7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
feq.s x8, f17, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x20, 0x8d105380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
feq.s x20, f28, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x16, 0xc76ecf8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
feq.s x16, f20, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x12, 0x36d48844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
feq.s x12, f3, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x19, 0x74bd4073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
feq.s x19, f3, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x24, 0x13167cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
feq.s x24, f13, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x25, 0x01c63b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
feq.s x25, f5, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x31, 0x5a636434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
feq.s x31, f14, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x24, 0x8cc07210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
feq.s x24, f12, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x30, 0xada4cdfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
feq.s x30, f8, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x6, 0x2ec32f67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
feq.s x6, f26, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x16, 0x8f2b1a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
feq.s x16, f8, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x22, 0xa0fd8478 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
feq.s x22, f14, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x29, 0x9cb64fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
feq.s x29, f23, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x30, 0x892fb15a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
feq.s x30, f24, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x1, 0xcea9d66d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
feq.s x1, f22, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x16, 0x8a2796cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
feq.s x16, f25, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x19, 0xeeb7c345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
feq.s x19, f3, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x24, 0x78e740d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
feq.s x24, f10, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x7, 0x512d5d82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
feq.s x7, f29, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x31, 0xb6dfde22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
feq.s x31, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x16, 0xfb68346c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
feq.s x16, f7, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x6, 0xe1607f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
feq.s x6, f21, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x20, 0x9c416f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
feq.s x20, f28, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x7, 0x8d7d7cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
feq.s x7, f14, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x29, 0x55f454c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
feq.s x29, f17, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x9, 0x6cd90cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
feq.s x9, f31, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x15, 0x09de96b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
feq.s x15, f1, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x16, 0x1b26998a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
feq.s x16, f4, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x25, 0x92cef110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
feq.s x25, f4, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x30, 0x91729a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
feq.s x30, f12, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x6, 0x472c1604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
feq.s x6, f29, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x30, 0xcc853e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
feq.s x30, f9, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x25, 0xab7af10a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
feq.s x25, f13, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x20, 0x6607f7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
feq.s x20, f5, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x2, 0x422e5219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
feq.s x2, f9, f10 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f0)
li x16, 0xeb7a7ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5f0f1dc # load x3 with value 0xe5f0f1dc
sw x3, 0(x2) # store 0xe5f0f1dc in memory
flw f0, 0(x2) # load 0xe5f0f1dc from memory into f0
li x3, 0xabbd82c3 # load x3 with value 0xabbd82c3
sw x3, 0(x2) # store 0xabbd82c3 in memory
flw f22, 0(x2) # load 0xabbd82c3 from memory into f22
feq.s x16, f0, f22 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x7ad0d1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b23e512 # load x3 with value 0x1b23e512
sw x3, 0(x2) # store 0x1b23e512 in memory
flw f1, 0(x2) # load 0x1b23e512 from memory into f1
li x3, 0x374c21d4 # load x3 with value 0x374c21d4
sw x3, 0(x2) # store 0x374c21d4 in memory
flw f31, 0(x2) # load 0x374c21d4 from memory into f31
feq.s x15, f1, f31 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f2)
li x24, 0x72fdc5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4764344 # load x3 with value 0xd4764344
sw x3, 0(x2) # store 0xd4764344 in memory
flw f2, 0(x2) # load 0xd4764344 from memory into f2
li x3, 0x557d69eb # load x3 with value 0x557d69eb
sw x3, 0(x2) # store 0x557d69eb in memory
flw f16, 0(x2) # load 0x557d69eb from memory into f16
feq.s x24, f2, f16 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f3)
li x29, 0xa5e40f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fee7144 # load x3 with value 0x6fee7144
sw x3, 0(x2) # store 0x6fee7144 in memory
flw f3, 0(x2) # load 0x6fee7144 from memory into f3
li x3, 0x7efa2f8b # load x3 with value 0x7efa2f8b
sw x3, 0(x2) # store 0x7efa2f8b in memory
flw f18, 0(x2) # load 0x7efa2f8b from memory into f18
feq.s x29, f3, f18 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f4)
li x10, 0x4926220c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb879b8e2 # load x3 with value 0xb879b8e2
sw x3, 0(x2) # store 0xb879b8e2 in memory
flw f4, 0(x2) # load 0xb879b8e2 from memory into f4
li x3, 0xa334f1b2 # load x3 with value 0xa334f1b2
sw x3, 0(x2) # store 0xa334f1b2 in memory
flw f30, 0(x2) # load 0xa334f1b2 from memory into f30
feq.s x10, f4, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f5)
li x24, 0xceff9c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d4c88d0 # load x3 with value 0x7d4c88d0
sw x3, 0(x2) # store 0x7d4c88d0 in memory
flw f5, 0(x2) # load 0x7d4c88d0 from memory into f5
li x3, 0x67b703a6 # load x3 with value 0x67b703a6
sw x3, 0(x2) # store 0x67b703a6 in memory
flw f27, 0(x2) # load 0x67b703a6 from memory into f27
feq.s x24, f5, f27 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f6)
li x16, 0xacd5a5ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x344fee14 # load x3 with value 0x344fee14
sw x3, 0(x2) # store 0x344fee14 in memory
flw f6, 0(x2) # load 0x344fee14 from memory into f6
li x3, 0x2b370668 # load x3 with value 0x2b370668
sw x3, 0(x2) # store 0x2b370668 in memory
flw f1, 0(x2) # load 0x2b370668 from memory into f1
feq.s x16, f6, f1 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f7)
li x16, 0x81380eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7ce531 # load x3 with value 0xff7ce531
sw x3, 0(x2) # store 0xff7ce531 in memory
flw f7, 0(x2) # load 0xff7ce531 from memory into f7
li x3, 0xa7883781 # load x3 with value 0xa7883781
sw x3, 0(x2) # store 0xa7883781 in memory
flw f5, 0(x2) # load 0xa7883781 from memory into f5
feq.s x16, f7, f5 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f8)
li x5, 0x4889b875 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x115e5401 # load x3 with value 0x115e5401
sw x3, 0(x2) # store 0x115e5401 in memory
flw f8, 0(x2) # load 0x115e5401 from memory into f8
li x3, 0x7c224a77 # load x3 with value 0x7c224a77
sw x3, 0(x2) # store 0x7c224a77 in memory
flw f25, 0(x2) # load 0x7c224a77 from memory into f25
feq.s x5, f8, f25 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f9)
li x11, 0x4ccfe3b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e899841 # load x3 with value 0x2e899841
sw x3, 0(x2) # store 0x2e899841 in memory
flw f9, 0(x2) # load 0x2e899841 from memory into f9
li x3, 0x09b6486f # load x3 with value 0x09b6486f
sw x3, 0(x2) # store 0x09b6486f in memory
flw f2, 0(x2) # load 0x09b6486f from memory into f2
feq.s x11, f9, f2 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f10)
li x27, 0x6da6cfe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a2ce26a # load x3 with value 0x7a2ce26a
sw x3, 0(x2) # store 0x7a2ce26a in memory
flw f10, 0(x2) # load 0x7a2ce26a from memory into f10
li x3, 0x6eda9a94 # load x3 with value 0x6eda9a94
sw x3, 0(x2) # store 0x6eda9a94 in memory
flw f2, 0(x2) # load 0x6eda9a94 from memory into f2
feq.s x27, f10, f2 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f11)
li x25, 0xda6922d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae074065 # load x3 with value 0xae074065
sw x3, 0(x2) # store 0xae074065 in memory
flw f11, 0(x2) # load 0xae074065 from memory into f11
li x3, 0x342cb040 # load x3 with value 0x342cb040
sw x3, 0(x2) # store 0x342cb040 in memory
flw f15, 0(x2) # load 0x342cb040 from memory into f15
feq.s x25, f11, f15 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f12)
li x23, 0x272b4c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa27ea29 # load x3 with value 0xfa27ea29
sw x3, 0(x2) # store 0xfa27ea29 in memory
flw f12, 0(x2) # load 0xfa27ea29 from memory into f12
li x3, 0x520365b0 # load x3 with value 0x520365b0
sw x3, 0(x2) # store 0x520365b0 in memory
flw f13, 0(x2) # load 0x520365b0 from memory into f13
feq.s x23, f12, f13 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f13)
li x6, 0x026c76f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7765154 # load x3 with value 0xc7765154
sw x3, 0(x2) # store 0xc7765154 in memory
flw f13, 0(x2) # load 0xc7765154 from memory into f13
li x3, 0xd41deecc # load x3 with value 0xd41deecc
sw x3, 0(x2) # store 0xd41deecc in memory
flw f31, 0(x2) # load 0xd41deecc from memory into f31
feq.s x6, f13, f31 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f14)
li x13, 0x649f2d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5121a46c # load x3 with value 0x5121a46c
sw x3, 0(x2) # store 0x5121a46c in memory
flw f14, 0(x2) # load 0x5121a46c from memory into f14
li x3, 0x601795c3 # load x3 with value 0x601795c3
sw x3, 0(x2) # store 0x601795c3 in memory
flw f7, 0(x2) # load 0x601795c3 from memory into f7
feq.s x13, f14, f7 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f15)
li x10, 0xcab9d697 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb52a8ec # load x3 with value 0xdb52a8ec
sw x3, 0(x2) # store 0xdb52a8ec in memory
flw f15, 0(x2) # load 0xdb52a8ec from memory into f15
li x3, 0x74d99076 # load x3 with value 0x74d99076
sw x3, 0(x2) # store 0x74d99076 in memory
flw f25, 0(x2) # load 0x74d99076 from memory into f25
feq.s x10, f15, f25 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f16)
li x4, 0xd66b3044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bc48f16 # load x3 with value 0x5bc48f16
sw x3, 0(x2) # store 0x5bc48f16 in memory
flw f16, 0(x2) # load 0x5bc48f16 from memory into f16
li x3, 0xefc2d1ff # load x3 with value 0xefc2d1ff
sw x3, 0(x2) # store 0xefc2d1ff in memory
flw f17, 0(x2) # load 0xefc2d1ff from memory into f17
feq.s x4, f16, f17 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f17)
li x2, 0x05bb9b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f5d95af # load x3 with value 0x7f5d95af
sw x3, 0(x2) # store 0x7f5d95af in memory
flw f17, 0(x2) # load 0x7f5d95af from memory into f17
li x3, 0x1163cee5 # load x3 with value 0x1163cee5
sw x3, 0(x2) # store 0x1163cee5 in memory
flw f8, 0(x2) # load 0x1163cee5 from memory into f8
feq.s x2, f17, f8 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f18)
li x11, 0xce844cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c784c4d # load x3 with value 0x5c784c4d
sw x3, 0(x2) # store 0x5c784c4d in memory
flw f18, 0(x2) # load 0x5c784c4d from memory into f18
li x3, 0xc6395348 # load x3 with value 0xc6395348
sw x3, 0(x2) # store 0xc6395348 in memory
flw f5, 0(x2) # load 0xc6395348 from memory into f5
feq.s x11, f18, f5 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f19)
li x15, 0x70343090 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x217069d7 # load x3 with value 0x217069d7
sw x3, 0(x2) # store 0x217069d7 in memory
flw f19, 0(x2) # load 0x217069d7 from memory into f19
li x3, 0xfed1ab0d # load x3 with value 0xfed1ab0d
sw x3, 0(x2) # store 0xfed1ab0d in memory
flw f25, 0(x2) # load 0xfed1ab0d from memory into f25
feq.s x15, f19, f25 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f20)
li x20, 0xdda6f4c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13054adf # load x3 with value 0x13054adf
sw x3, 0(x2) # store 0x13054adf in memory
flw f20, 0(x2) # load 0x13054adf from memory into f20
li x3, 0xa21667e8 # load x3 with value 0xa21667e8
sw x3, 0(x2) # store 0xa21667e8 in memory
flw f30, 0(x2) # load 0xa21667e8 from memory into f30
feq.s x20, f20, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f21)
li x12, 0x67111b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2083a4a # load x3 with value 0xb2083a4a
sw x3, 0(x2) # store 0xb2083a4a in memory
flw f21, 0(x2) # load 0xb2083a4a from memory into f21
li x3, 0x81cc3483 # load x3 with value 0x81cc3483
sw x3, 0(x2) # store 0x81cc3483 in memory
flw f20, 0(x2) # load 0x81cc3483 from memory into f20
feq.s x12, f21, f20 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f22)
li x27, 0x3f0c293b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cccce43 # load x3 with value 0x6cccce43
sw x3, 0(x2) # store 0x6cccce43 in memory
flw f22, 0(x2) # load 0x6cccce43 from memory into f22
li x3, 0xbdc2ab62 # load x3 with value 0xbdc2ab62
sw x3, 0(x2) # store 0xbdc2ab62 in memory
flw f25, 0(x2) # load 0xbdc2ab62 from memory into f25
feq.s x27, f22, f25 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0x984dcab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63e98565 # load x3 with value 0x63e98565
sw x3, 0(x2) # store 0x63e98565 in memory
flw f23, 0(x2) # load 0x63e98565 from memory into f23
li x3, 0x510a822b # load x3 with value 0x510a822b
sw x3, 0(x2) # store 0x510a822b in memory
flw f19, 0(x2) # load 0x510a822b from memory into f19
feq.s x30, f23, f19 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f24)
li x12, 0x2da97f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x210cb262 # load x3 with value 0x210cb262
sw x3, 0(x2) # store 0x210cb262 in memory
flw f24, 0(x2) # load 0x210cb262 from memory into f24
li x3, 0x322a3b98 # load x3 with value 0x322a3b98
sw x3, 0(x2) # store 0x322a3b98 in memory
flw f19, 0(x2) # load 0x322a3b98 from memory into f19
feq.s x12, f24, f19 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f25)
li x2, 0x97e106f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1b126d3 # load x3 with value 0xa1b126d3
sw x3, 0(x2) # store 0xa1b126d3 in memory
flw f25, 0(x2) # load 0xa1b126d3 from memory into f25
li x3, 0xd9224aee # load x3 with value 0xd9224aee
sw x3, 0(x2) # store 0xd9224aee in memory
flw f7, 0(x2) # load 0xd9224aee from memory into f7
feq.s x2, f25, f7 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f26)
li x22, 0x915b0c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3d7c317 # load x3 with value 0xb3d7c317
sw x3, 0(x2) # store 0xb3d7c317 in memory
flw f26, 0(x2) # load 0xb3d7c317 from memory into f26
li x3, 0x88f13c1e # load x3 with value 0x88f13c1e
sw x3, 0(x2) # store 0x88f13c1e in memory
flw f5, 0(x2) # load 0x88f13c1e from memory into f5
feq.s x22, f26, f5 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f27)
li x8, 0x12db99f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x851a2dd8 # load x3 with value 0x851a2dd8
sw x3, 0(x2) # store 0x851a2dd8 in memory
flw f27, 0(x2) # load 0x851a2dd8 from memory into f27
li x3, 0x163579ac # load x3 with value 0x163579ac
sw x3, 0(x2) # store 0x163579ac in memory
flw f17, 0(x2) # load 0x163579ac from memory into f17
feq.s x8, f27, f17 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f28)
li x23, 0xd53dfcd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5b9d9d4 # load x3 with value 0xd5b9d9d4
sw x3, 0(x2) # store 0xd5b9d9d4 in memory
flw f28, 0(x2) # load 0xd5b9d9d4 from memory into f28
li x3, 0x35f6f762 # load x3 with value 0x35f6f762
sw x3, 0(x2) # store 0x35f6f762 in memory
flw f24, 0(x2) # load 0x35f6f762 from memory into f24
feq.s x23, f28, f24 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f29)
li x26, 0x4e77b3cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a39f8f6 # load x3 with value 0x5a39f8f6
sw x3, 0(x2) # store 0x5a39f8f6 in memory
flw f29, 0(x2) # load 0x5a39f8f6 from memory into f29
li x3, 0x70fc58db # load x3 with value 0x70fc58db
sw x3, 0(x2) # store 0x70fc58db in memory
flw f8, 0(x2) # load 0x70fc58db from memory into f8
feq.s x26, f29, f8 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f30)
li x11, 0xc8616e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0b435e3 # load x3 with value 0xb0b435e3
sw x3, 0(x2) # store 0xb0b435e3 in memory
flw f30, 0(x2) # load 0xb0b435e3 from memory into f30
li x3, 0x97023b84 # load x3 with value 0x97023b84
sw x3, 0(x2) # store 0x97023b84 in memory
flw f4, 0(x2) # load 0x97023b84 from memory into f4
feq.s x11, f30, f4 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f31)
li x2, 0x5b9d644c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84c6f35d # load x3 with value 0x84c6f35d
sw x3, 0(x2) # store 0x84c6f35d in memory
flw f31, 0(x2) # load 0x84c6f35d from memory into f31
li x3, 0x3117c795 # load x3 with value 0x3117c795
sw x3, 0(x2) # store 0x3117c795 in memory
flw f3, 0(x2) # load 0x3117c795 from memory into f3
feq.s x2, f31, f3 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f0)
li x21, 0xcccf791f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe23e9d5 # load x3 with value 0xbe23e9d5
sw x3, 0(x2) # store 0xbe23e9d5 in memory
flw f23, 0(x2) # load 0xbe23e9d5 from memory into f23
li x3, 0xdd97fa08 # load x3 with value 0xdd97fa08
sw x3, 0(x2) # store 0xdd97fa08 in memory
flw f0, 0(x2) # load 0xdd97fa08 from memory into f0
feq.s x21, f23, f0 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f1)
li x26, 0x75997e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d05e3af # load x3 with value 0x4d05e3af
sw x3, 0(x2) # store 0x4d05e3af in memory
flw f22, 0(x2) # load 0x4d05e3af from memory into f22
li x3, 0xc29f5243 # load x3 with value 0xc29f5243
sw x3, 0(x2) # store 0xc29f5243 in memory
flw f1, 0(x2) # load 0xc29f5243 from memory into f1
feq.s x26, f22, f1 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f2)
li x14, 0x4ac55cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35d38a7c # load x3 with value 0x35d38a7c
sw x3, 0(x2) # store 0x35d38a7c in memory
flw f26, 0(x2) # load 0x35d38a7c from memory into f26
li x3, 0xa94d0160 # load x3 with value 0xa94d0160
sw x3, 0(x2) # store 0xa94d0160 in memory
flw f2, 0(x2) # load 0xa94d0160 from memory into f2
feq.s x14, f26, f2 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f3)
li x2, 0xf063c018 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x450bacd4 # load x3 with value 0x450bacd4
sw x3, 0(x2) # store 0x450bacd4 in memory
flw f22, 0(x2) # load 0x450bacd4 from memory into f22
li x3, 0x6ad561fb # load x3 with value 0x6ad561fb
sw x3, 0(x2) # store 0x6ad561fb in memory
flw f3, 0(x2) # load 0x6ad561fb from memory into f3
feq.s x2, f22, f3 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f4)
li x10, 0xd3957718 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46e09f8e # load x3 with value 0x46e09f8e
sw x3, 0(x2) # store 0x46e09f8e in memory
flw f11, 0(x2) # load 0x46e09f8e from memory into f11
li x3, 0xc4c0271e # load x3 with value 0xc4c0271e
sw x3, 0(x2) # store 0xc4c0271e in memory
flw f4, 0(x2) # load 0xc4c0271e from memory into f4
feq.s x10, f11, f4 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f5)
li x18, 0x34e6af70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x882b1060 # load x3 with value 0x882b1060
sw x3, 0(x2) # store 0x882b1060 in memory
flw f11, 0(x2) # load 0x882b1060 from memory into f11
li x3, 0x0f8a9d9a # load x3 with value 0x0f8a9d9a
sw x3, 0(x2) # store 0x0f8a9d9a in memory
flw f5, 0(x2) # load 0x0f8a9d9a from memory into f5
feq.s x18, f11, f5 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f6)
li x17, 0x896fa11a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49137e94 # load x3 with value 0x49137e94
sw x3, 0(x2) # store 0x49137e94 in memory
flw f7, 0(x2) # load 0x49137e94 from memory into f7
li x3, 0x8b417d9e # load x3 with value 0x8b417d9e
sw x3, 0(x2) # store 0x8b417d9e in memory
flw f6, 0(x2) # load 0x8b417d9e from memory into f6
feq.s x17, f7, f6 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f7)
li x8, 0xa31f4235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ee920a0 # load x3 with value 0x0ee920a0
sw x3, 0(x2) # store 0x0ee920a0 in memory
flw f22, 0(x2) # load 0x0ee920a0 from memory into f22
li x3, 0x5b0f4db9 # load x3 with value 0x5b0f4db9
sw x3, 0(x2) # store 0x5b0f4db9 in memory
flw f7, 0(x2) # load 0x5b0f4db9 from memory into f7
feq.s x8, f22, f7 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f8)
li x7, 0x756ff7be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9760b4e # load x3 with value 0xb9760b4e
sw x3, 0(x2) # store 0xb9760b4e in memory
flw f20, 0(x2) # load 0xb9760b4e from memory into f20
li x3, 0x6ee77398 # load x3 with value 0x6ee77398
sw x3, 0(x2) # store 0x6ee77398 in memory
flw f8, 0(x2) # load 0x6ee77398 from memory into f8
feq.s x7, f20, f8 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f9)
li x28, 0xfe1fe36a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x641efdcc # load x3 with value 0x641efdcc
sw x3, 0(x2) # store 0x641efdcc in memory
flw f26, 0(x2) # load 0x641efdcc from memory into f26
li x3, 0xd2d0964a # load x3 with value 0xd2d0964a
sw x3, 0(x2) # store 0xd2d0964a in memory
flw f9, 0(x2) # load 0xd2d0964a from memory into f9
feq.s x28, f26, f9 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f10)
li x16, 0x8e23cb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0a0f18b # load x3 with value 0xa0a0f18b
sw x3, 0(x2) # store 0xa0a0f18b in memory
flw f18, 0(x2) # load 0xa0a0f18b from memory into f18
li x3, 0x87a229ad # load x3 with value 0x87a229ad
sw x3, 0(x2) # store 0x87a229ad in memory
flw f10, 0(x2) # load 0x87a229ad from memory into f10
feq.s x16, f18, f10 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f11)
li x24, 0x82ff266d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0af86cc5 # load x3 with value 0x0af86cc5
sw x3, 0(x2) # store 0x0af86cc5 in memory
flw f7, 0(x2) # load 0x0af86cc5 from memory into f7
li x3, 0x9eba98c3 # load x3 with value 0x9eba98c3
sw x3, 0(x2) # store 0x9eba98c3 in memory
flw f11, 0(x2) # load 0x9eba98c3 from memory into f11
feq.s x24, f7, f11 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f12)
li x30, 0x4d940b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe413b8f0 # load x3 with value 0xe413b8f0
sw x3, 0(x2) # store 0xe413b8f0 in memory
flw f22, 0(x2) # load 0xe413b8f0 from memory into f22
li x3, 0xcaf7300d # load x3 with value 0xcaf7300d
sw x3, 0(x2) # store 0xcaf7300d in memory
flw f12, 0(x2) # load 0xcaf7300d from memory into f12
feq.s x30, f22, f12 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f13)
li x9, 0x9d73ae32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41fc250f # load x3 with value 0x41fc250f
sw x3, 0(x2) # store 0x41fc250f in memory
flw f7, 0(x2) # load 0x41fc250f from memory into f7
li x3, 0xa4f346bf # load x3 with value 0xa4f346bf
sw x3, 0(x2) # store 0xa4f346bf in memory
flw f13, 0(x2) # load 0xa4f346bf from memory into f13
feq.s x9, f7, f13 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f14)
li x3, 0x17eca1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8da314c9 # load x3 with value 0x8da314c9
sw x3, 0(x2) # store 0x8da314c9 in memory
flw f13, 0(x2) # load 0x8da314c9 from memory into f13
li x3, 0xdb427ea1 # load x3 with value 0xdb427ea1
sw x3, 0(x2) # store 0xdb427ea1 in memory
flw f14, 0(x2) # load 0xdb427ea1 from memory into f14
feq.s x3, f13, f14 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f15)
li x7, 0x03e20391 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb404047a # load x3 with value 0xb404047a
sw x3, 0(x2) # store 0xb404047a in memory
flw f21, 0(x2) # load 0xb404047a from memory into f21
li x3, 0x4b541eb9 # load x3 with value 0x4b541eb9
sw x3, 0(x2) # store 0x4b541eb9 in memory
flw f15, 0(x2) # load 0x4b541eb9 from memory into f15
feq.s x7, f21, f15 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f16)
li x13, 0x280be466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4613f6f9 # load x3 with value 0x4613f6f9
sw x3, 0(x2) # store 0x4613f6f9 in memory
flw f31, 0(x2) # load 0x4613f6f9 from memory into f31
li x3, 0xf0b4b668 # load x3 with value 0xf0b4b668
sw x3, 0(x2) # store 0xf0b4b668 in memory
flw f16, 0(x2) # load 0xf0b4b668 from memory into f16
feq.s x13, f31, f16 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f17)
li x20, 0xfb26b60b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x980fe6e0 # load x3 with value 0x980fe6e0
sw x3, 0(x2) # store 0x980fe6e0 in memory
flw f3, 0(x2) # load 0x980fe6e0 from memory into f3
li x3, 0x1a0dca22 # load x3 with value 0x1a0dca22
sw x3, 0(x2) # store 0x1a0dca22 in memory
flw f17, 0(x2) # load 0x1a0dca22 from memory into f17
feq.s x20, f3, f17 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f18)
li x2, 0xf28cc691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca2c1425 # load x3 with value 0xca2c1425
sw x3, 0(x2) # store 0xca2c1425 in memory
flw f31, 0(x2) # load 0xca2c1425 from memory into f31
li x3, 0x05e7e006 # load x3 with value 0x05e7e006
sw x3, 0(x2) # store 0x05e7e006 in memory
flw f18, 0(x2) # load 0x05e7e006 from memory into f18
feq.s x2, f31, f18 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f19)
li x18, 0xe020cc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f5fcbc4 # load x3 with value 0x5f5fcbc4
sw x3, 0(x2) # store 0x5f5fcbc4 in memory
flw f15, 0(x2) # load 0x5f5fcbc4 from memory into f15
li x3, 0x63e79690 # load x3 with value 0x63e79690
sw x3, 0(x2) # store 0x63e79690 in memory
flw f19, 0(x2) # load 0x63e79690 from memory into f19
feq.s x18, f15, f19 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f20)
li x14, 0x164a476b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81c2a591 # load x3 with value 0x81c2a591
sw x3, 0(x2) # store 0x81c2a591 in memory
flw f15, 0(x2) # load 0x81c2a591 from memory into f15
li x3, 0xaa06f02a # load x3 with value 0xaa06f02a
sw x3, 0(x2) # store 0xaa06f02a in memory
flw f20, 0(x2) # load 0xaa06f02a from memory into f20
feq.s x14, f15, f20 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f21)
li x6, 0x93dbe773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2517d255 # load x3 with value 0x2517d255
sw x3, 0(x2) # store 0x2517d255 in memory
flw f23, 0(x2) # load 0x2517d255 from memory into f23
li x3, 0xf6bb3a80 # load x3 with value 0xf6bb3a80
sw x3, 0(x2) # store 0xf6bb3a80 in memory
flw f21, 0(x2) # load 0xf6bb3a80 from memory into f21
feq.s x6, f23, f21 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f22)
li x18, 0xc7e216bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf29b9634 # load x3 with value 0xf29b9634
sw x3, 0(x2) # store 0xf29b9634 in memory
flw f8, 0(x2) # load 0xf29b9634 from memory into f8
li x3, 0x1c4be1b1 # load x3 with value 0x1c4be1b1
sw x3, 0(x2) # store 0x1c4be1b1 in memory
flw f22, 0(x2) # load 0x1c4be1b1 from memory into f22
feq.s x18, f8, f22 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f23)
li x4, 0xe3efcb2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6ed341a # load x3 with value 0xa6ed341a
sw x3, 0(x2) # store 0xa6ed341a in memory
flw f13, 0(x2) # load 0xa6ed341a from memory into f13
li x3, 0x77f7619f # load x3 with value 0x77f7619f
sw x3, 0(x2) # store 0x77f7619f in memory
flw f23, 0(x2) # load 0x77f7619f from memory into f23
feq.s x4, f13, f23 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f24)
li x2, 0x6d1565bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99678b69 # load x3 with value 0x99678b69
sw x3, 0(x2) # store 0x99678b69 in memory
flw f20, 0(x2) # load 0x99678b69 from memory into f20
li x3, 0x1500e469 # load x3 with value 0x1500e469
sw x3, 0(x2) # store 0x1500e469 in memory
flw f24, 0(x2) # load 0x1500e469 from memory into f24
feq.s x2, f20, f24 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f25)
li x31, 0xaa511d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ed05b32 # load x3 with value 0x8ed05b32
sw x3, 0(x2) # store 0x8ed05b32 in memory
flw f23, 0(x2) # load 0x8ed05b32 from memory into f23
li x3, 0x81cad701 # load x3 with value 0x81cad701
sw x3, 0(x2) # store 0x81cad701 in memory
flw f25, 0(x2) # load 0x81cad701 from memory into f25
feq.s x31, f23, f25 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f26)
li x13, 0xb973586d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95b2dfb9 # load x3 with value 0x95b2dfb9
sw x3, 0(x2) # store 0x95b2dfb9 in memory
flw f30, 0(x2) # load 0x95b2dfb9 from memory into f30
li x3, 0x676286c7 # load x3 with value 0x676286c7
sw x3, 0(x2) # store 0x676286c7 in memory
flw f26, 0(x2) # load 0x676286c7 from memory into f26
feq.s x13, f30, f26 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f27)
li x5, 0x890e8fea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3726208 # load x3 with value 0xc3726208
sw x3, 0(x2) # store 0xc3726208 in memory
flw f8, 0(x2) # load 0xc3726208 from memory into f8
li x3, 0x25919724 # load x3 with value 0x25919724
sw x3, 0(x2) # store 0x25919724 in memory
flw f27, 0(x2) # load 0x25919724 from memory into f27
feq.s x5, f8, f27 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f28)
li x14, 0xdf551961 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x752f8ee1 # load x3 with value 0x752f8ee1
sw x3, 0(x2) # store 0x752f8ee1 in memory
flw f3, 0(x2) # load 0x752f8ee1 from memory into f3
li x3, 0x2e283a18 # load x3 with value 0x2e283a18
sw x3, 0(x2) # store 0x2e283a18 in memory
flw f28, 0(x2) # load 0x2e283a18 from memory into f28
feq.s x14, f3, f28 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f29)
li x9, 0x385ae29f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9dda25b # load x3 with value 0xc9dda25b
sw x3, 0(x2) # store 0xc9dda25b in memory
flw f16, 0(x2) # load 0xc9dda25b from memory into f16
li x3, 0xe28df18d # load x3 with value 0xe28df18d
sw x3, 0(x2) # store 0xe28df18d in memory
flw f29, 0(x2) # load 0xe28df18d from memory into f29
feq.s x9, f16, f29 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f30)
li x31, 0x4a0bb0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b4f1cef # load x3 with value 0x4b4f1cef
sw x3, 0(x2) # store 0x4b4f1cef in memory
flw f28, 0(x2) # load 0x4b4f1cef from memory into f28
li x3, 0xd708a449 # load x3 with value 0xd708a449
sw x3, 0(x2) # store 0xd708a449 in memory
flw f30, 0(x2) # load 0xd708a449 from memory into f30
feq.s x31, f28, f30 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f31)
li x1, 0x943a0287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x058e857f # load x3 with value 0x058e857f
sw x3, 0(x2) # store 0x058e857f in memory
flw f8, 0(x2) # load 0x058e857f from memory into f8
li x3, 0xc05d4dea # load x3 with value 0xc05d4dea
sw x3, 0(x2) # store 0xc05d4dea in memory
flw f31, 0(x2) # load 0xc05d4dea from memory into f31
feq.s x1, f8, f31 # perform fcomp-type op

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
